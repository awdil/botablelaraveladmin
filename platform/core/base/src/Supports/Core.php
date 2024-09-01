<?php

namespace Botble\Base\Supports;

use Botble\Base\Events\SystemUpdateCachesCleared;
use Botble\Base\Events\SystemUpdateCachesClearing;
use Botble\Base\Events\SystemUpdateDBMigrated;
use Botble\Base\Events\SystemUpdateDBMigrating;
use Botble\Base\Events\SystemUpdatePublished;
use Botble\Base\Exceptions\MissingZipExtensionException;
use Botble\Base\Facades\BaseHelper;
use Botble\Base\Services\ClearCacheService;
use Botble\Base\Supports\ValueObjects\CoreProduct;
use Botble\Setting\Facades\Setting;
use Carbon\Carbon;
use Exception;
use Illuminate\Contracts\Cache\Repository as CacheRepository;
use Illuminate\Contracts\Filesystem\FileNotFoundException;
use Illuminate\Filesystem\Filesystem;
use Illuminate\Http\Client\ConnectionException;
use Illuminate\Http\Client\Response;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\ServiceProvider as IlluminateServiceProvider;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;
use League\Flysystem\UnableToWriteFile;
use Throwable;
use ZipArchive;

/**
 * DO NOT MODIFY THIS FILE.
 *
 * @readonly
 */
final class Core
{
    private string $basePath;

    private string $coreDataFilePath;

    private string $licenseFilePath;

    private string $productId;

    private string $productSource;

    private string $version = '1.0.0';

    private string $minimumPhpVersion = '8.1.0';

    private string $licenseUrl = '';

    private string $licenseKey = 'CAF4B17F6D3F656125F9';

    private string $cacheLicenseKeyName = '45d0da541764682476f833028d945a46270ba404';

    private string $skipLicenseReminderFilePath;

    private int $verificationPeriod = 1;

    public function __construct(
        private readonly CacheRepository $cache,
        private readonly Filesystem $files
    ) {
        $this->basePath = base_path();
        $this->licenseFilePath = storage_path('.license');
        $this->coreDataFilePath = core_path('core.json');
        $this->skipLicenseReminderFilePath = storage_path('framework/license-reminder-latest-time.txt');
    }

    public static function make(): self
    {
        return app(self::class);
    }

    

    
    

    

    
    public function minimumPhpVersion(): string
    {
        return $this->minimumPhpVersion;
    }


    

    
    public function publishPackagesAssets(): void
    {
        $this->publishAssets(package_path());

        $this->publishAssets(base_path('vendor'));

        SystemUpdatePublished::dispatch();
    }

    public function cleanCaches(): void
    {
        try {
            SystemUpdateCachesClearing::dispatch();

            ClearCacheService::make()->purgeAll();

            SystemUpdateCachesCleared::dispatch();
        } catch (Throwable $exception) {
            $this->logError($exception);
        }
    }

    public function cleanUp(): void
    {
        $this->cleanCaches();
    }

    public function logError(Exception|Throwable $exception): void
    {
        BaseHelper::logError($exception);
    }

    private function publishPaths(): array
    {
        return IlluminateServiceProvider::pathsToPublish(null, 'cms-public');
    }

    public function publishAssets(string $path): void
    {
        foreach ($this->publishPaths() as $from => $to) {
            if (! Str::contains($from, $path)) {
                continue;
            }

            try {
                $this->files->ensureDirectoryExists(dirname($to));
                $this->files->copyDirectory($from, $to);
            } catch (Throwable $exception) {
                $this->logError($exception);
            }
        }
    }

    public function runMigrationFiles(): void
    {
        SystemUpdateDBMigrating::dispatch();

        $migrator = app('migrator');

        rescue(fn () => $migrator->run(database_path('migrations')));

        $paths = [
            core_path(),
            package_path(),
        ];

        foreach ($paths as $path) {
            foreach (BaseHelper::scanFolder($path) as $module) {
                $modulePath = BaseHelper::joinPaths([$path, $module]);

                if (! $this->files->isDirectory($modulePath)) {
                    continue;
                }

                $moduleMigrationPath = BaseHelper::joinPaths([$modulePath, 'database', 'migrations']);

                if ($this->files->isDirectory($moduleMigrationPath)) {
                    $migrator->run($moduleMigrationPath);
                }
            }
        }

        SystemUpdateDBMigrated::dispatch();
    }

    private function validateUpdateFile(string $filePath): void
    {
        if (! class_exists('ZipArchive', false)) {
            throw new MissingZipExtensionException();
        }

        $zip = new ZipArchive();

        if ($zip->open($filePath)) {
            if ($zip->getFromName('.env')) {
                throw ValidationException::withMessages([
                    'file' => 'The update file contains a .env file. Please remove it and try again.',
                ]);
            }

            /**
             * @var array{
             *     productId: string,
             *     source: string,
             *     apiUrl: string,
             *     apiKey: string,
             *     version: string,
             *     minimumPhpVersion?: string,
             * }|null $content
             */
            $content = json_decode($zip->getFromName('platform/core/core.json'), true);

            if (! $content) {
                throw ValidationException::withMessages([
                    'file' => 'The update file is invalid. Please contact us for support.',
                ]);
            }

            $validator = Validator::make($content, [
                'productId' => ['required', 'string'],
                'source' => ['required', 'string'],
                'apiUrl' => ['required', 'url'],
                'apiKey' => ['required', 'string'],
                'version' => ['required', 'string'],
                'marketplaceUrl' => ['required', 'url'],
                'marketplaceToken' => ['required', 'string'],
                'minimumPhpVersion' => ['nullable', 'string'],
            ])->stopOnFirstFailure();

            if ($validator->passes()) {
                if ($content['productId'] !== $this->productId) {
                    $zip->close();

                    throw ValidationException::withMessages(
                        ['productId' => 'The product ID of the update does not match the product ID of your website.']
                    );
                }

                if (version_compare($content['version'], $this->version, '<')) {
                    $zip->close();

                    throw ValidationException::withMessages(
                        ['version' => 'The version of the update is lower than the current version.']
                    );
                }

                if (
                    isset($content['minimumPhpVersion']) &&
                    version_compare($content['minimumPhpVersion'], phpversion(), '>')
                ) {
                    $zip->close();

                    throw ValidationException::withMessages(
                        [
                            'minimumPhpVersion' => sprintf(
                                'The minimum PHP version required (v%s) for the update is higher than the current PHP version.',
                                $content['minimumPhpVersion']
                            ),
                        ]
                    );
                }
            } else {
                $zip->close();

                throw ValidationException::withMessages($validator->errors()->toArray());
            }
        }

        $zip->close();
    }

    

    


    public function getCoreFileData(): array
    {
        try {
            return json_decode($this->files->get($this->coreDataFilePath), true) ?: [];
        } catch (FileNotFoundException) {
            return [];
        }
    }

    

   

    private function getClientIpAddress(): string
    {
        return Helper::getIpFromThirdParty();
    }

    

    private function parseProductUpdateResponse(Response $response): CoreProduct|false
    {
        $data = $response->json();

        if ($response->ok() && Arr::get($data, 'status')) {
            return new CoreProduct(
                Arr::get($data, 'update_id'),
                Arr::get($data, 'version'),
                Carbon::createFromFormat('Y-m-d', Arr::get($data, 'release_date')),
                trim((string) Arr::get($data, 'summary')),
                trim((string) Arr::get($data, 'changelog')),
                (bool) Arr::get($data, 'has_sql')
            );
        }

        return false;
    }

    private function getUpdatedFilePath(string $version): string
    {
        return $this->basePath . DIRECTORY_SEPARATOR . 'update_main_' . str_replace('.', '_', $version) . '.zip';
    }


}
