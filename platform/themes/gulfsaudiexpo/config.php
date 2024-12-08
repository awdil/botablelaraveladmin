<?php

use Botble\Base\Facades\BaseHelper;
use Botble\Shortcode\View\View;
use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these event can be overridden by package config.
    |
    */

    'events' => [
        'beforeRenderTheme' => function (Theme $theme) {
            // You may use this event to set up your assets.

            $version = get_cms_version();

            // Add RTL styles if RTL is enabled
            if (BaseHelper::isRtlEnabled()) {
                $theme
                    ->asset()
                    ->usePath()
                    ->add('rtl-css', 'css/rtl.css', [], [], $version);
            }

            // Add new CSS files
            $theme
                ->asset()
                ->usePath()
                ->add('fpy0fva-css', 'css/fpy0fva.css', [], [], $version);

            $theme
                ->asset()
                ->usePath()
                ->add('saudimachineryexpo-style-css', 'css/saudimachineryexpo-style.css', [], [], $version);

            $theme
                ->asset()
                ->usePath()
                ->add('all-min-css', 'css/all.min.css', [], [], $version);

            $theme
                ->asset()
                ->usePath()
                ->add('base-css', 'css/base.css', [], [], $version);

            $theme
                ->asset()
                ->usePath()
                ->add('style-css', 'css/style.css', [], [], $version);

            $theme
                ->asset()
                ->usePath()
                ->add('main-css', 'css/main.css', [], [], $version);

            $theme
                ->asset()
                ->usePath()
                ->add('vendor-css', 'css/vendor.css', [], [], $version);

            $theme
                ->asset()
                ->usePath()
                ->add('additional-style-css', 'css/additional_style.css', [], [], $version);

            $theme
                ->asset()
                ->usePath()
                ->add('plyr-css', 'css/plyr.css', [], [], $version);


            // Add additional JS files
            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('lazyload-js', 'js/lazyload.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('insight-old-js', 'js/insight.old.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('gtag-js', 'js/gtag.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('insight-js', 'js/insight.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('gtm-js', 'js/gtm.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('scarab-js', 'js/scarab-v2.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('fbevents-js', 'js/fbevents.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('front-scripts-js', 'js/front-scripts.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('wp-emoji-release-js', 'js/wp-emoji-release.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('core-js', 'js/core.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('main-js', 'js/main.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('utm-tracker-js', 'js/utm_tracker.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('speaker-manual-js', 'js/speaker_manual.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('ajax-scripts-js', 'js/ajax_scripts.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('smush-lazy-load-js', 'js/smush-lazy-load.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('dmg-privacy-form-js', 'js/dmg_privacy_form.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('wp-polyfill-inert-js', 'js/wp-polyfill-inert.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('regenerator-runtime-js', 'js/regenerator-runtime.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('wp-polyfill-js', 'js/wp-polyfill.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('dom-ready-js', 'js/dom-ready.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('hooks-js', 'js/hooks.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('i18n-js', 'js/i18n.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('a11y-js', 'js/a11y.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('gform-json-js', 'js/jquery.json.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('gravityforms-js', 'js/gravityforms.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('gform-placeholder-js', 'js/placeholders.jquery.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('gform-utils-js', 'js/utils.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('gform-vendors-js', 'js/vendor-theme.min.js', [], [], $version);

            $theme
                ->asset()
                ->container('footer')
                ->usePath()
                ->add('scripts-theme-js', 'js/scripts-theme.min.js', [], [], $version);

            // Shortcodes
            if (function_exists('shortcode')) {
                $theme->composer(
                    ['page', 'post', 'category', 'tag', 'gallery'],
                    function (View $view) {
                        $view->withShortcodes();
                    }
                );
            }
        },
    ],
];


