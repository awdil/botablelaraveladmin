-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2024 at 09:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bootableadminlaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'U23N5iKWrFZUCikAdYZQCtnPdTr8K19m', 1, '2024-07-27 06:11:22', '2024-07-27 06:11:22', '2024-07-27 06:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `description` varchar(400) NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT 1,
  `tablet_image` varchar(255) DEFAULT NULL,
  `mobile_image` varchar(255) DEFAULT NULL,
  `ads_type` varchar(191) DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`, `open_in_new_tab`, `tablet_image`, `mobile_image`, `ads_type`, `google_adsense_slot_id`) VALUES
(1, 'Header', '2029-07-27 00:00:00', 'header', '67UZCWGZPH5P', 'banners/1.jpg', '/', 0, 1, 'published', '2024-07-27 06:11:23', '2024-07-27 06:11:23', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads_translations`
--

CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ads_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) NOT NULL,
  `request` longtext DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(8, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'Ulises Grady', 'info', '2024-09-01 13:33:59', '2024-09-01 13:33:59'),
(9, 1, 'user', '{\"_method\":\"PUT\",\"first_name\":\"Ulises\",\"last_name\":\"Grady\",\"email\":\"admin@roadservice.com\"}', 'has updated his profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Ulises Grady', 'primary', '2024-09-01 14:05:03', '2024-09-01 14:05:03'),
(10, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Ulises Grady', 'info', '2024-09-01 14:05:12', '2024-09-01 14:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `description`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Geovany Balistreri DDS', 'shaylee.marquardt@example.net', 'Maxime dolores veniam nihil autem commodi ratione. Rerum repellat fugiat nihil ducimus eum et dolorum. Non et repellat labore eum recusandae maxime saepe. Cumque eaque quo similique minus fugit.', 'authors/1.jpg', 'published', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(2, 'Demario Carroll', 'perry.zulauf@example.net', 'Aut esse quaerat numquam quia. Eum rerum qui mollitia velit.', 'authors/2.jpg', 'published', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(3, 'Lempi Heidenreich', 'yaufderhar@example.com', 'Culpa maxime ipsam molestiae blanditiis necessitatibus nihil. Excepturi quidem nulla quod. Quod error inventore quisquam vitae harum et.', 'authors/3.jpg', 'published', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(4, 'Jaren Towne', 'perry29@example.org', 'Quo dolor adipisci consequuntur quo adipisci porro. Architecto vel rem laboriosam id. Mollitia nulla error itaque dolor aut.', 'authors/4.jpg', 'published', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(5, 'Mrs. Gerda Mosciski', 'karson.sawayn@example.org', 'Deleniti id quo occaecati qui enim est quia voluptatem. Laboriosam enim corporis tempora provident repudiandae sunt. Qui voluptas voluptas et et nisi velit.', 'authors/5.jpg', 'published', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(6, 'Freeda Haag DVM', 'leffler.arianna@example.net', 'Architecto rem ut mollitia qui. Iste similique consequuntur aperiam reprehenderit iure sapiente sed.', 'authors/6.jpg', 'published', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(7, 'Rodrick Schulist', 'elmo59@example.org', 'Excepturi non sint dicta qui. Suscipit aut esse dolores nisi. Cupiditate dolor aut et. Dolorem aspernatur reprehenderit officia voluptate. Qui quia magnam ad sequi incidunt ut.', 'authors/7.jpg', 'published', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(8, 'Kayleigh Lebsack', 'raphaelle.skiles@example.com', 'Blanditiis qui est vero veritatis similique iusto. Voluptatibus voluptatem laudantium velit minima. Repudiandae quisquam vitae aut aut excepturi. Est quasi consequuntur in magni.', 'authors/8.jpg', 'published', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9, 'Isabel Stroman III', 'oschneider@example.net', 'Id quis perspiciatis voluptatem aut aut. Saepe natus perferendis veritatis temporibus quos. Laborum sint autem aut.', 'authors/9.jpg', 'published', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(10, 'Rebecca VonRueden', 'barry.bogan@example.net', 'Vel et quis ut ut quo voluptas nobis. Ut dolore nesciunt molestiae ut at soluta numquam.', 'authors/10.jpg', 'published', '2024-07-27 06:11:23', '2024-07-27 06:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `is_featured`, `order`, `is_default`, `created_at`, `updated_at`) VALUES
(6, 'Discovery', 0, 'Discovery description', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2017-12-12 18:31:08', '2017-12-12 18:31:08'),
(7, 'Hot & Cool', 0, 'Hot and cool category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2017-12-12 18:31:44', '2017-12-12 18:31:44'),
(8, 'Other sports', 0, 'Other sports category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2017-12-12 18:32:03', '2017-12-12 18:32:03'),
(9, 'Video', 0, 'Video category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2017-12-12 18:32:17', '2017-12-12 18:32:17'),
(10, 'Football', 0, 'Football category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2017-12-12 18:32:35', '2017-12-12 18:32:35'),
(21, 'Sport', 0, 'Sport category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2017-12-14 18:15:47', '2017-12-14 18:15:47'),
(22, 'Fashion', 0, 'Fashion category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2017-12-14 18:16:38', '2017-12-14 18:16:38'),
(23, 'Life', 0, 'Life category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2017-12-14 18:16:52', '2017-12-15 20:22:00'),
(24, 'Beautify', 0, 'Beautify category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2017-12-14 18:17:41', '2017-12-14 18:17:41'),
(25, 'Love', 0, 'Love category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2017-12-14 18:17:55', '2017-12-14 18:17:55'),
(26, 'Behind the scenes', 0, 'Behind the scenes category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2017-12-14 18:18:36', '2017-12-14 18:18:36'),
(27, 'Economy', 0, 'Economy category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2017-12-14 18:19:45', '2017-12-14 18:19:45'),
(28, 'Law', 0, 'Law category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2017-12-14 18:20:10', '2017-12-14 18:20:10'),
(29, 'Business', 0, 'Business category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2017-12-14 18:20:40', '2017-12-14 18:20:40'),
(30, 'Entertainment', 0, 'Entertainment category', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2017-12-14 18:21:09', '2017-12-14 18:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `content` text NOT NULL,
  `custom_fields` text DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `content`, `custom_fields`, `subject`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Sang Nguyen', 'sangit7b@gmail.com', '0988606928', 'Ho Chi Minh', 'This is the first contact.', NULL, NULL, '2017-12-15 23:07:04', '2017-12-15 23:07:04', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields`
--

CREATE TABLE `contact_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields_translations`
--

CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `placeholder` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options`
--

CREATE TABLE `contact_custom_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options_translations`
--

CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_posts_recent', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(2, 'widget_analytics_general', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(3, 'widget_analytics_page', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(4, 'widget_analytics_browser', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(5, 'widget_analytics_referrer', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(6, 'widget_audit_logs', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(7, 'widget_request_errors', '2017-12-12 17:33:39', '2017-12-12 17:33:39'),
(8, 'widget_total_plugins', '2019-03-11 19:33:53', '2019-03-11 19:33:53'),
(9, 'widget_total_pages', '2019-03-11 19:33:53', '2019-03-11 19:33:53'),
(10, 'widget_total_users', '2019-03-11 19:33:53', '2019-03-11 19:33:53'),
(11, 'widget_total_themes', '2019-03-11 19:33:53', '2019-03-11 19:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 2, 0, 1, '2017-12-14 18:11:58', '2017-12-14 18:11:58'),
(2, NULL, 1, 1, 1, 1, '2017-12-14 18:11:58', '2018-05-02 21:00:19'),
(3, NULL, 1, 3, 2, 1, '2017-12-14 18:11:58', '2018-05-02 21:00:19'),
(4, NULL, 1, 4, 3, 1, '2017-12-14 18:11:58', '2018-05-02 21:00:19'),
(5, NULL, 1, 5, 4, 1, '2017-12-14 18:11:58', '2018-05-02 21:00:19'),
(6, NULL, 1, 6, 5, 1, '2017-12-14 18:11:58', '2018-05-02 21:00:19'),
(7, NULL, 1, 7, 6, 1, '2017-12-14 18:11:58', '2017-12-14 18:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `status`, `is_featured`, `order`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Perfect', 'Sit est aut ut rerum. Voluptas eum consequuntur libero sed. Quia atque quos et.', 'published', 1, 0, 'galleries/1.jpg', 1, '2024-07-27 06:11:22', '2024-07-27 06:11:22'),
(2, 'New Day', 'Autem quia aut atque molestiae. Saepe ad minima voluptas nihil. Atque eum dolorem voluptatibus recusandae iusto hic itaque rerum.', 'published', 1, 0, 'galleries/2.jpg', 1, '2024-07-27 06:11:22', '2024-07-27 06:11:22'),
(3, 'Happy Day', 'Est aut aut ut nam nobis ratione. Quo dolore laudantium sit qui. Ab enim cumque a impedit explicabo unde minima.', 'published', 1, 0, 'galleries/3.jpg', 1, '2024-07-27 06:11:22', '2024-07-27 06:11:22'),
(4, 'Nature', 'Et sit pariatur eos ut. Et esse sit dolore minima sapiente eos vitae voluptas. Est dolore reprehenderit error voluptas perspiciatis repudiandae.', 'published', 1, 0, 'galleries/4.jpg', 1, '2024-07-27 06:11:22', '2024-07-27 06:11:22'),
(5, 'Morning', 'Sed et rerum corrupti accusantium quis. Doloribus aperiam omnis quos sit et assumenda ipsa.', 'published', 1, 0, 'galleries/5.jpg', 1, '2024-07-27 06:11:22', '2024-07-27 06:11:22'),
(6, 'Photography', 'Iste facilis ut quo quod. Aut rerum rerum eveniet totam corrupti omnis. Accusamus hic nihil rerum possimus. Tempora qui odio sit in expedita autem.', 'published', 1, 0, 'galleries/6.jpg', 1, '2024-07-27 06:11:22', '2024-07-27 06:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_translations`
--

CREATE TABLE `galleries_translations` (
  `lang_code` varchar(191) NOT NULL,
  `galleries_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `reference_id`, `images`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 1, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptas non autem sequi. Ab asperiores cumque omnis asperiores rem. Hic qui praesentium ipsum quia recusandae voluptas facere.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sapiente doloribus labore voluptatum non. Cupiditate veniam et quisquam cupiditate facilis. Eius est qui qui in qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quae eum autem perspiciatis iure. Culpa iusto et numquam quis et sit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Exercitationem dolorum dolorem qui sunt at. Et consequatur voluptate fuga eveniet. Repellendus ex dolor commodi autem voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Recusandae dolorem quidem similique praesentium vitae vel dolore. Ratione enim recusandae sed aut. Totam et est et maxime culpa explicabo tempore.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Beatae magni qui iure. Unde quibusdam voluptatibus recusandae unde et veritatis quia. Voluptatem praesentium earum odio quia.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut est voluptas accusantium ea excepturi inventore vitae. Sed recusandae temporibus quam. Quisquam dolorem et suscipit nihil dolore deleniti quos.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Consectetur quas vel corrupti. Aut eos ut ea in. Modi molestiae culpa voluptas aut quis unde.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Neque et sequi quia at non qui. Id in architecto quia sunt nihil culpa. Dolor et distinctio at vero suscipit.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Officia ut minus soluta numquam et consectetur suscipit. Adipisci reprehenderit rem aut.\"}]', 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22'),
(2, 2, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptas non autem sequi. Ab asperiores cumque omnis asperiores rem. Hic qui praesentium ipsum quia recusandae voluptas facere.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sapiente doloribus labore voluptatum non. Cupiditate veniam et quisquam cupiditate facilis. Eius est qui qui in qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quae eum autem perspiciatis iure. Culpa iusto et numquam quis et sit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Exercitationem dolorum dolorem qui sunt at. Et consequatur voluptate fuga eveniet. Repellendus ex dolor commodi autem voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Recusandae dolorem quidem similique praesentium vitae vel dolore. Ratione enim recusandae sed aut. Totam et est et maxime culpa explicabo tempore.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Beatae magni qui iure. Unde quibusdam voluptatibus recusandae unde et veritatis quia. Voluptatem praesentium earum odio quia.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut est voluptas accusantium ea excepturi inventore vitae. Sed recusandae temporibus quam. Quisquam dolorem et suscipit nihil dolore deleniti quos.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Consectetur quas vel corrupti. Aut eos ut ea in. Modi molestiae culpa voluptas aut quis unde.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Neque et sequi quia at non qui. Id in architecto quia sunt nihil culpa. Dolor et distinctio at vero suscipit.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Officia ut minus soluta numquam et consectetur suscipit. Adipisci reprehenderit rem aut.\"}]', 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22'),
(3, 3, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptas non autem sequi. Ab asperiores cumque omnis asperiores rem. Hic qui praesentium ipsum quia recusandae voluptas facere.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sapiente doloribus labore voluptatum non. Cupiditate veniam et quisquam cupiditate facilis. Eius est qui qui in qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quae eum autem perspiciatis iure. Culpa iusto et numquam quis et sit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Exercitationem dolorum dolorem qui sunt at. Et consequatur voluptate fuga eveniet. Repellendus ex dolor commodi autem voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Recusandae dolorem quidem similique praesentium vitae vel dolore. Ratione enim recusandae sed aut. Totam et est et maxime culpa explicabo tempore.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Beatae magni qui iure. Unde quibusdam voluptatibus recusandae unde et veritatis quia. Voluptatem praesentium earum odio quia.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut est voluptas accusantium ea excepturi inventore vitae. Sed recusandae temporibus quam. Quisquam dolorem et suscipit nihil dolore deleniti quos.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Consectetur quas vel corrupti. Aut eos ut ea in. Modi molestiae culpa voluptas aut quis unde.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Neque et sequi quia at non qui. Id in architecto quia sunt nihil culpa. Dolor et distinctio at vero suscipit.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Officia ut minus soluta numquam et consectetur suscipit. Adipisci reprehenderit rem aut.\"}]', 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22'),
(4, 4, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptas non autem sequi. Ab asperiores cumque omnis asperiores rem. Hic qui praesentium ipsum quia recusandae voluptas facere.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sapiente doloribus labore voluptatum non. Cupiditate veniam et quisquam cupiditate facilis. Eius est qui qui in qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quae eum autem perspiciatis iure. Culpa iusto et numquam quis et sit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Exercitationem dolorum dolorem qui sunt at. Et consequatur voluptate fuga eveniet. Repellendus ex dolor commodi autem voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Recusandae dolorem quidem similique praesentium vitae vel dolore. Ratione enim recusandae sed aut. Totam et est et maxime culpa explicabo tempore.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Beatae magni qui iure. Unde quibusdam voluptatibus recusandae unde et veritatis quia. Voluptatem praesentium earum odio quia.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut est voluptas accusantium ea excepturi inventore vitae. Sed recusandae temporibus quam. Quisquam dolorem et suscipit nihil dolore deleniti quos.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Consectetur quas vel corrupti. Aut eos ut ea in. Modi molestiae culpa voluptas aut quis unde.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Neque et sequi quia at non qui. Id in architecto quia sunt nihil culpa. Dolor et distinctio at vero suscipit.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Officia ut minus soluta numquam et consectetur suscipit. Adipisci reprehenderit rem aut.\"}]', 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22'),
(5, 5, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptas non autem sequi. Ab asperiores cumque omnis asperiores rem. Hic qui praesentium ipsum quia recusandae voluptas facere.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sapiente doloribus labore voluptatum non. Cupiditate veniam et quisquam cupiditate facilis. Eius est qui qui in qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quae eum autem perspiciatis iure. Culpa iusto et numquam quis et sit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Exercitationem dolorum dolorem qui sunt at. Et consequatur voluptate fuga eveniet. Repellendus ex dolor commodi autem voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Recusandae dolorem quidem similique praesentium vitae vel dolore. Ratione enim recusandae sed aut. Totam et est et maxime culpa explicabo tempore.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Beatae magni qui iure. Unde quibusdam voluptatibus recusandae unde et veritatis quia. Voluptatem praesentium earum odio quia.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut est voluptas accusantium ea excepturi inventore vitae. Sed recusandae temporibus quam. Quisquam dolorem et suscipit nihil dolore deleniti quos.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Consectetur quas vel corrupti. Aut eos ut ea in. Modi molestiae culpa voluptas aut quis unde.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Neque et sequi quia at non qui. Id in architecto quia sunt nihil culpa. Dolor et distinctio at vero suscipit.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Officia ut minus soluta numquam et consectetur suscipit. Adipisci reprehenderit rem aut.\"}]', 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22'),
(6, 6, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Voluptas non autem sequi. Ab asperiores cumque omnis asperiores rem. Hic qui praesentium ipsum quia recusandae voluptas facere.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sapiente doloribus labore voluptatum non. Cupiditate veniam et quisquam cupiditate facilis. Eius est qui qui in qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quae eum autem perspiciatis iure. Culpa iusto et numquam quis et sit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Exercitationem dolorum dolorem qui sunt at. Et consequatur voluptate fuga eveniet. Repellendus ex dolor commodi autem voluptas.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Recusandae dolorem quidem similique praesentium vitae vel dolore. Ratione enim recusandae sed aut. Totam et est et maxime culpa explicabo tempore.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Beatae magni qui iure. Unde quibusdam voluptatibus recusandae unde et veritatis quia. Voluptatem praesentium earum odio quia.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut est voluptas accusantium ea excepturi inventore vitae. Sed recusandae temporibus quam. Quisquam dolorem et suscipit nihil dolore deleniti quos.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Consectetur quas vel corrupti. Aut eos ut ea in. Modi molestiae culpa voluptas aut quis unde.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Neque et sequi quia at non qui. Id in architecto quia sunt nihil culpa. Dolor et distinctio at vero suscipit.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Officia ut minus soluta numquam et consectetur suscipit. Adipisci reprehenderit rem aut.\"}]', 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta_translations`
--

CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(191) NOT NULL,
  `gallery_meta_id` int(11) NOT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` varchar(20) DEFAULT NULL,
  `reference_type` varchar(120) NOT NULL,
  `lang_meta_origin` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `reference_id`, `lang_meta_code`, `reference_type`, `lang_meta_origin`) VALUES
(1, 1, 'en_US', 'Botble\\Menu\\Models\\MenuLocation', '0ee20208cea7c521db159160ed44999a'),
(2, 1, 'en_US', 'Botble\\Menu\\Models\\Menu', '887d12ab1a4ecd146d10a191177948a9'),
(3, 2, 'en_US', 'Botble\\Menu\\Models\\MenuLocation', '3a3d4b017d7e95fb0cd13d08165190f7'),
(4, 2, 'en_US', 'Botble\\Menu\\Models\\Menu', '3a2005d34ca057480b179fe7f80071bb'),
(5, 3, 'en_US', 'Botble\\Menu\\Models\\MenuLocation', '2d954a0d48827c949fead6ddac5d74a1'),
(6, 3, 'en_US', 'Botble\\Menu\\Models\\Menu', '9daa5e9ace0abc48a84f2c5ac38bc7d7'),
(7, 4, 'en_US', 'Botble\\Menu\\Models\\Menu', '2e871d18895f23653a318a888701ed62');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `visibility`) VALUES
(8720, 0, '1', '1', 1044, 'image/jpeg', 2279, 'ads/1.jpg', '[]', '2023-10-25 19:09:33', '2023-10-25 19:09:33', NULL, 'public'),
(8721, 0, '2', '2', 1044, 'image/jpeg', 4605, 'ads/2.jpg', '[]', '2023-10-25 19:09:33', '2023-10-25 19:09:33', NULL, 'public'),
(8734, 0, 'avatar', 'avatar', 1047, 'image/jpeg', 9730, 'users/avatar.jpg', '[]', '2023-10-25 19:09:34', '2023-10-25 19:09:34', NULL, 'public'),
(16600, 0, '1', '1', 1668, 'image/jpeg', 9803, 'galleries/1.jpg', '[]', '2024-07-27 06:11:21', '2024-07-27 06:11:21', NULL, 'public'),
(16601, 0, '10', '10', 1668, 'image/jpeg', 9803, 'galleries/10.jpg', '[]', '2024-07-27 06:11:21', '2024-07-27 06:11:21', NULL, 'public'),
(16602, 0, '2', '2', 1668, 'image/jpeg', 9803, 'galleries/2.jpg', '[]', '2024-07-27 06:11:21', '2024-07-27 06:11:21', NULL, 'public'),
(16603, 0, '3', '3', 1668, 'image/jpeg', 9803, 'galleries/3.jpg', '[]', '2024-07-27 06:11:21', '2024-07-27 06:11:21', NULL, 'public'),
(16604, 0, '4', '4', 1668, 'image/jpeg', 9803, 'galleries/4.jpg', '[]', '2024-07-27 06:11:21', '2024-07-27 06:11:21', NULL, 'public'),
(16605, 0, '5', '5', 1668, 'image/jpeg', 9803, 'galleries/5.jpg', '[]', '2024-07-27 06:11:21', '2024-07-27 06:11:21', NULL, 'public'),
(16606, 0, '6', '6', 1668, 'image/jpeg', 9803, 'galleries/6.jpg', '[]', '2024-07-27 06:11:21', '2024-07-27 06:11:21', NULL, 'public'),
(16607, 0, '7', '7', 1668, 'image/jpeg', 9803, 'galleries/7.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16608, 0, '8', '8', 1668, 'image/jpeg', 9803, 'galleries/8.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16609, 0, '9', '9', 1668, 'image/jpeg', 9803, 'galleries/9.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16610, 0, '1', '1', 1669, 'image/jpeg', 9803, 'authors/1.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16611, 0, '10', '10', 1669, 'image/jpeg', 9803, 'authors/10.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16612, 0, '2', '2', 1669, 'image/jpeg', 9803, 'authors/2.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16613, 0, '3', '3', 1669, 'image/jpeg', 9803, 'authors/3.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16614, 0, '4', '4', 1669, 'image/jpeg', 9803, 'authors/4.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16615, 0, '5', '5', 1669, 'image/jpeg', 9803, 'authors/5.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16616, 0, '6', '6', 1669, 'image/jpeg', 9803, 'authors/6.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16617, 0, '7', '7', 1669, 'image/jpeg', 9803, 'authors/7.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16618, 0, '8', '8', 1669, 'image/jpeg', 9803, 'authors/8.jpg', '[]', '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL, 'public'),
(16619, 0, '9', '9', 1669, 'image/jpeg', 9803, 'authors/9.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16620, 0, '1', '1', 1670, 'image/jpeg', 15557, 'banners/1.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16621, 0, '2', '2', 1670, 'image/jpeg', 14139, 'banners/2.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16622, 0, '1', '1', 1671, 'image/jpeg', 9803, 'news/1.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16623, 0, '10', '10', 1671, 'image/jpeg', 9803, 'news/10.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16624, 0, '11', '11', 1671, 'image/jpeg', 9803, 'news/11.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16625, 0, '12', '12', 1671, 'image/jpeg', 9803, 'news/12.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16626, 0, '13', '13', 1671, 'image/jpeg', 9803, 'news/13.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16627, 0, '14', '14', 1671, 'image/jpeg', 9803, 'news/14.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16628, 0, '15', '15', 1671, 'image/jpeg', 9803, 'news/15.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16629, 0, '16', '16', 1671, 'image/jpeg', 9803, 'news/16.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16630, 0, '17', '17', 1671, 'image/jpeg', 9803, 'news/17.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16631, 0, '18', '18', 1671, 'image/jpeg', 9803, 'news/18.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16632, 0, '19', '19', 1671, 'image/jpeg', 9803, 'news/19.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16633, 0, '2', '2', 1671, 'image/jpeg', 9803, 'news/2.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16634, 0, '20', '20', 1671, 'image/jpeg', 9803, 'news/20.jpg', '[]', '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL, 'public'),
(16635, 0, '21', '21', 1671, 'image/jpeg', 9803, 'news/21.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16636, 0, '22', '22', 1671, 'image/jpeg', 9803, 'news/22.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16637, 0, '23', '23', 1671, 'image/jpeg', 9803, 'news/23.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16638, 0, '24', '24', 1671, 'image/jpeg', 9803, 'news/24.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16639, 0, '25', '25', 1671, 'image/jpeg', 9803, 'news/25.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16640, 0, '26', '26', 1671, 'image/jpeg', 9803, 'news/26.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16641, 0, '27', '27', 1671, 'image/jpeg', 9803, 'news/27.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16642, 0, '28', '28', 1671, 'image/jpeg', 9803, 'news/28.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16643, 0, '29', '29', 1671, 'image/jpeg', 9803, 'news/29.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16644, 0, '3', '3', 1671, 'image/jpeg', 9803, 'news/3.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16645, 0, '30', '30', 1671, 'image/jpeg', 9803, 'news/30.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16646, 0, '31', '31', 1671, 'image/jpeg', 9803, 'news/31.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16647, 0, '32', '32', 1671, 'image/jpeg', 9803, 'news/32.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16648, 0, '33', '33', 1671, 'image/jpeg', 9803, 'news/33.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16649, 0, '34', '34', 1671, 'image/jpeg', 9803, 'news/34.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16650, 0, '35', '35', 1671, 'image/jpeg', 9803, 'news/35.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16651, 0, '36', '36', 1671, 'image/jpeg', 9803, 'news/36.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16652, 0, '37', '37', 1671, 'image/jpeg', 9803, 'news/37.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16653, 0, '38', '38', 1671, 'image/jpeg', 9803, 'news/38.jpg', '[]', '2024-07-27 06:11:24', '2024-07-27 06:11:24', NULL, 'public'),
(16654, 0, '39', '39', 1671, 'image/jpeg', 9803, 'news/39.jpg', '[]', '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL, 'public'),
(16655, 0, '4', '4', 1671, 'image/jpeg', 9803, 'news/4.jpg', '[]', '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL, 'public'),
(16656, 0, '40', '40', 1671, 'image/jpeg', 9803, 'news/40.jpg', '[]', '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL, 'public'),
(16657, 0, '41', '41', 1671, 'image/jpeg', 9803, 'news/41.jpg', '[]', '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL, 'public'),
(16658, 0, '5', '5', 1671, 'image/jpeg', 9803, 'news/5.jpg', '[]', '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL, 'public'),
(16659, 0, '6', '6', 1671, 'image/jpeg', 9803, 'news/6.jpg', '[]', '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL, 'public'),
(16660, 0, '7', '7', 1671, 'image/jpeg', 9803, 'news/7.jpg', '[]', '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL, 'public'),
(16661, 0, '8', '8', 1671, 'image/jpeg', 9803, 'news/8.jpg', '[]', '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL, 'public'),
(16662, 0, '9', '9', 1671, 'image/jpeg', 9803, 'news/9.jpg', '[]', '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL, 'public'),
(16663, 0, '1', '1', 1672, 'image/jpeg', 312228, 'sliders/1.jpg', '[]', '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL, 'public'),
(16664, 0, '2', '2', 1672, 'image/jpeg', 85613, 'sliders/2.jpg', '[]', '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL, 'public'),
(16665, 1, '9282fa0f-8e38-4594-befe-c0a8dd00045e', '9282fa0f-8e38-4594-befe-c0a8dd00045e', 1047, 'image/png', 66308, 'users/9282fa0f-8e38-4594-befe-c0a8dd00045e.png', '[]', '2024-09-01 14:04:19', '2024-09-01 14:04:19', NULL, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `color`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1044, 0, 'ads', NULL, 'ads', 0, '2023-10-25 19:09:33', '2023-10-25 19:09:33', NULL),
(1047, 0, 'users', NULL, 'users', 0, '2023-10-25 19:09:34', '2023-10-25 19:09:34', NULL),
(1668, 0, 'galleries', NULL, 'galleries', 0, '2024-07-27 06:11:21', '2024-07-27 06:11:21', NULL),
(1669, 0, 'authors', NULL, 'authors', 0, '2024-07-27 06:11:22', '2024-07-27 06:11:22', NULL),
(1670, 0, 'banners', NULL, 'banners', 0, '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL),
(1671, 0, 'news', NULL, 'news', 0, '2024-07-27 06:11:23', '2024-07-27 06:11:23', NULL),
(1672, 0, 'sliders', NULL, 'sliders', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(2, 'Second menu', 'second-menu', 'published', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(3, 'Header menu', 'header-menu', 'published', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(4, 'Featured categories', 'featured-categories', 'published', '2024-07-27 06:11:25', '2024-07-27 06:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(2, 2, 'second-menu', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(3, 3, 'header-menu', '2024-07-27 06:11:25', '2024-07-27 06:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT 0,
  `reference_type` varchar(255) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `icon_font` varchar(191) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 29, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Business', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(2, 1, 0, 27, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Economy', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(3, 1, 0, 28, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Law', NULL, '_self', 1, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(4, 1, 3, 26, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Behind the scenes', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(5, 1, 0, 6, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Discovery', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(6, 1, 0, 30, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Entertainment', NULL, '_self', 1, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(7, 1, 6, 10, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Football', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(8, 1, 6, 22, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Fashion', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(9, 1, 0, 7, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Hot & Cool', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(10, 1, 0, 23, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Life', NULL, '_self', 1, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(11, 1, 10, 24, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Beautify', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(12, 1, 0, 21, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Sport', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(13, 1, 0, 3, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'About us', NULL, '_self', 1, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(14, 1, 13, 4, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Contact', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(15, 1, 13, 2, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Introduction', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(16, 2, 0, 24, 'Botble\\Blog\\Models\\Category', NULL, NULL, 1, 'Beautify', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(17, 2, 0, 25, 'Botble\\Blog\\Models\\Category', NULL, NULL, 1, 'Love', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(18, 2, 0, 8, 'Botble\\Blog\\Models\\Category', NULL, NULL, 1, 'Other sports', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(19, 3, 0, 2, 'Botble\\Page\\Models\\Page', NULL, NULL, 2, 'Introduction', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(20, 3, 0, 3, 'Botble\\Page\\Models\\Page', NULL, NULL, 2, 'About us', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(21, 3, 0, 4, 'Botble\\Page\\Models\\Page', NULL, NULL, 2, 'Contact', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(22, 4, 0, 6, 'Botble\\Blog\\Models\\Category', NULL, NULL, 3, 'Discovery', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(23, 4, 0, 10, 'Botble\\Blog\\Models\\Category', NULL, NULL, 3, 'Football', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(24, 4, 0, 7, 'Botble\\Blog\\Models\\Category', NULL, NULL, 3, 'Hot & Cool', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(25, 4, 0, 8, 'Botble\\Blog\\Models\\Category', NULL, NULL, 3, 'Other sports', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(26, 4, 0, 9, 'Botble\\Blog\\Models\\Category', NULL, NULL, 3, 'Video', NULL, '_self', 0, '2024-07-27 06:11:25', '2024-07-27 06:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `reference_id`, `meta_key`, `meta_value`, `reference_type`, `created_at`, `updated_at`) VALUES
(7, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-12 18:26:20', '2017-12-12 18:26:20'),
(8, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-12 18:27:12', '2017-12-12 18:27:12'),
(9, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-12 18:27:30', '2017-12-12 18:27:30'),
(10, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-12 18:28:00', '2017-12-12 18:28:00'),
(11, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-12 18:28:24', '2017-12-12 18:28:24'),
(12, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-12 18:31:08', '2017-12-12 18:31:08'),
(13, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-12 18:31:44', '2017-12-12 18:31:44'),
(14, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-12 18:32:03', '2017-12-12 18:32:03'),
(15, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-12 18:32:17', '2017-12-12 18:32:17'),
(16, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-12 18:32:35', '2017-12-12 18:32:35'),
(17, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-13 18:02:26', '2019-10-25 18:38:45'),
(18, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:12:29', '2017-12-14 18:12:29'),
(19, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:12:43', '2017-12-14 18:12:43'),
(20, 13, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:12:58', '2017-12-14 18:12:58'),
(21, 14, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:13:15', '2017-12-14 18:13:15'),
(22, 15, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:13:48', '2017-12-14 18:13:48'),
(23, 16, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:14:09', '2017-12-14 18:14:09'),
(24, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:14:39', '2017-12-14 18:14:39'),
(25, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:14:54', '2017-12-14 18:14:54'),
(26, 19, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:15:18', '2017-12-14 18:15:18'),
(27, 20, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:15:31', '2017-12-14 18:15:31'),
(28, 21, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:15:48', '2017-12-14 18:15:48'),
(29, 22, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:16:38', '2017-12-14 18:16:38'),
(30, 23, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:16:52', '2017-12-14 18:16:52'),
(31, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:17:41', '2017-12-14 18:17:41'),
(32, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:17:55', '2017-12-14 18:17:55'),
(33, 26, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:18:36', '2017-12-14 18:18:36'),
(34, 27, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:19:45', '2017-12-14 18:19:45'),
(35, 28, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:20:10', '2017-12-14 18:20:10'),
(36, 29, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:20:40', '2017-12-14 18:20:40'),
(37, 30, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2017-12-14 18:21:09', '2017-12-14 18:21:09'),
(38, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 08:55:08', '2019-10-25 18:43:25'),
(39, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 08:56:38', '2019-10-25 18:43:17'),
(40, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 09:02:02', '2019-10-25 18:43:07'),
(41, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 09:03:39', '2019-10-25 18:42:59'),
(42, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 09:22:36', '2019-10-25 18:42:52'),
(43, 6, 'video_link', '[\"https:\\/\\/www.youtube.com\\/embed\\/09R8_2nJtjg\"]', 'Botble\\Blog\\Models\\Post', '2017-12-15 09:38:55', '2017-12-15 09:38:55'),
(44, 7, 'video_link', '[\"https:\\/\\/www.youtube.com\\/embed\\/09R8_2nJtjg\"]', 'Botble\\Blog\\Models\\Post', '2017-12-15 09:42:29', '2017-12-15 09:42:29'),
(45, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 09:42:29', '2019-10-25 18:42:43'),
(46, 8, 'video_link', '[\"https:\\/\\/www.youtube.com\\/embed\\/09R8_2nJtjg\"]', 'Botble\\Blog\\Models\\Post', '2017-12-15 09:44:10', '2017-12-15 09:44:10'),
(47, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 09:44:10', '2019-10-25 18:40:08'),
(48, 9, 'video_link', '[\"https:\\/\\/www.youtube.com\\/embed\\/aJOTlE1K90k\"]', 'Botble\\Blog\\Models\\Post', '2017-12-15 09:45:34', '2017-12-22 08:59:46'),
(49, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 09:45:34', '2019-10-25 18:39:56'),
(50, 10, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(51, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:47:40', '2019-10-25 18:39:45'),
(52, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(53, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(54, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(55, 11, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:48:59', '2017-12-15 17:48:59'),
(56, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:48:59', '2019-10-25 18:39:35'),
(57, 12, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:50:05', '2017-12-15 17:50:05'),
(58, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:50:05', '2019-10-25 18:46:15'),
(59, 13, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:51:00', '2017-12-15 17:51:00'),
(60, 13, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:51:00', '2019-10-25 18:46:04'),
(61, 14, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:52:32', '2017-12-15 17:52:32'),
(62, 14, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:52:32', '2019-10-25 18:45:02'),
(63, 15, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:55:22', '2017-12-15 17:55:22'),
(64, 15, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:55:22', '2019-10-25 18:44:53'),
(65, 16, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:56:27', '2017-12-15 17:56:27'),
(66, 16, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:56:27', '2019-10-25 18:44:45'),
(67, 17, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:57:25', '2017-12-15 17:57:25'),
(68, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:57:25', '2019-10-25 18:44:36'),
(69, 18, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:58:24', '2017-12-15 17:58:24'),
(70, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:58:24', '2019-10-25 18:44:28'),
(71, 19, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:59:23', '2017-12-15 17:59:23'),
(72, 19, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 17:59:23', '2019-10-25 18:44:19'),
(73, 20, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:00:51', '2017-12-15 18:00:51'),
(74, 20, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:00:51', '2019-10-25 18:44:10'),
(75, 21, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:02:05', '2017-12-15 18:02:05'),
(76, 21, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:02:05', '2019-10-25 18:44:03'),
(77, 22, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:03:27', '2017-12-15 18:03:27'),
(78, 22, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:03:27', '2019-10-25 18:49:04'),
(79, 23, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:06:16', '2017-12-15 18:06:16'),
(80, 23, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:06:16', '2019-10-25 18:48:54'),
(81, 24, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:07:36', '2017-12-15 18:07:36'),
(82, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:07:36', '2019-10-25 18:48:29'),
(83, 25, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:08:31', '2017-12-15 18:08:31'),
(84, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:08:31', '2019-10-25 18:48:18'),
(85, 26, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:11:26', '2017-12-15 18:11:26'),
(86, 26, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:11:26', '2019-10-25 18:48:08'),
(87, 27, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:12:24', '2017-12-15 18:12:24'),
(88, 27, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:12:24', '2019-10-25 18:47:57'),
(89, 28, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:13:09', '2017-12-15 18:13:09'),
(90, 28, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:13:10', '2019-10-25 18:47:45'),
(91, 29, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:14:26', '2017-12-15 18:14:26'),
(92, 29, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:14:26', '2019-10-25 18:47:36'),
(93, 30, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:15:21', '2017-12-15 18:15:21'),
(94, 30, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:15:21', '2019-10-25 18:47:06'),
(95, 31, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:16:22', '2017-12-15 18:16:22'),
(96, 31, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:16:22', '2019-10-25 18:46:53'),
(97, 32, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:17:08', '2017-12-15 18:17:08'),
(98, 32, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:17:08', '2019-10-25 18:49:41'),
(99, 33, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:18:03', '2017-12-15 18:18:03'),
(100, 33, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:18:03', '2019-10-25 18:50:41'),
(101, 34, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:19:00', '2017-12-15 18:19:00'),
(102, 34, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:19:00', '2019-10-25 18:50:33'),
(103, 35, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:20:12', '2017-12-15 18:20:12'),
(104, 35, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:20:12', '2019-10-25 18:50:25'),
(105, 36, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:21:34', '2017-12-15 18:21:34'),
(106, 36, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:21:34', '2019-10-25 18:50:17'),
(107, 37, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:22:27', '2017-12-15 18:22:27'),
(108, 37, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:22:27', '2019-10-25 18:49:58'),
(109, 38, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:23:29', '2017-12-15 18:23:29'),
(110, 38, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:23:29', '2019-10-25 18:49:48'),
(111, 39, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:24:19', '2017-12-15 18:24:19'),
(112, 39, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 18:24:19', '2019-09-13 17:31:23'),
(113, 40, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:14:35', '2017-12-15 19:14:35'),
(114, 40, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:14:35', '2019-10-25 18:36:57'),
(115, 41, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:16:11', '2017-12-15 19:16:11'),
(116, 41, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:16:11', '2019-10-25 18:36:41'),
(117, 42, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:21:49', '2017-12-15 19:21:49'),
(118, 42, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:21:49', '2019-10-25 18:36:27'),
(119, 43, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:23:12', '2017-12-15 19:23:12'),
(120, 43, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:23:12', '2019-10-25 18:36:15'),
(121, 44, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:24:24', '2017-12-15 19:24:24'),
(122, 44, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:24:24', '2019-10-25 18:35:59'),
(123, 45, 'video_link', '[\"https:\\/\\/www.youtube.com\\/watch?v=JrdfCVff2KE\"]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:31:57', '2017-12-22 09:05:36'),
(124, 45, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:31:57', '2019-10-25 18:35:47'),
(125, 46, 'video_link', '[\"https:\\/\\/www.youtube.com\\/embed\\/aJOTlE1K90k\"]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:38:45', '2017-12-22 09:00:06'),
(126, 46, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:38:45', '2019-10-25 18:35:32'),
(127, 47, 'video_link', '[\"https:\\/\\/www.youtube.com\\/embed\\/aJOTlE1K90k\"]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:41:12', '2017-12-22 09:00:37'),
(128, 47, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:41:12', '2019-10-25 18:35:14'),
(129, 48, 'video_link', '[\"https:\\/\\/www.youtube.com\\/embed\\/aJOTlE1K90k\"]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:43:20', '2017-12-22 09:00:52'),
(130, 48, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:43:20', '2019-10-25 18:34:58'),
(131, 49, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:47:36', '2017-12-15 19:47:36'),
(132, 49, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:47:36', '2019-10-25 18:34:29'),
(133, 50, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:48:29', '2017-12-15 19:48:29'),
(134, 50, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:48:29', '2019-10-25 18:34:15'),
(135, 51, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:49:55', '2017-12-15 19:49:55'),
(136, 51, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:49:55', '2019-10-25 18:33:57'),
(137, 52, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:50:54', '2017-12-15 19:50:54'),
(138, 52, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:50:54', '2019-10-25 18:33:44'),
(139, 53, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:53:37', '2017-12-15 19:53:37'),
(140, 53, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:53:37', '2019-10-25 18:33:33'),
(141, 54, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:54:52', '2017-12-15 19:54:52'),
(142, 54, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:54:52', '2019-10-25 18:33:21'),
(143, 55, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:56:19', '2017-12-15 19:56:19'),
(144, 55, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:56:19', '2019-10-25 18:33:09'),
(145, 56, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:57:04', '2017-12-15 19:57:04'),
(146, 56, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:57:04', '2019-10-25 18:32:57'),
(147, 57, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:57:41', '2017-12-15 19:57:41'),
(148, 57, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:57:41', '2019-10-25 18:32:44'),
(149, 58, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:58:18', '2017-12-15 19:58:18'),
(150, 58, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:58:18', '2019-10-25 18:32:30'),
(151, 59, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:59:28', '2017-12-15 19:59:28'),
(152, 59, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 19:59:28', '2019-10-25 18:32:10'),
(153, 60, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:02:49', '2017-12-15 20:02:49'),
(154, 60, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:02:49', '2019-10-25 18:31:49'),
(155, 61, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:04:42', '2017-12-15 20:04:42'),
(156, 61, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:04:43', '2019-10-25 18:31:10'),
(157, 62, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:07:22', '2017-12-15 20:07:22'),
(158, 62, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:07:22', '2019-10-25 18:30:55'),
(159, 63, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:08:12', '2017-12-15 20:08:12'),
(160, 63, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:08:12', '2019-10-25 18:30:40'),
(161, 64, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:12:05', '2017-12-15 20:12:05'),
(162, 64, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:12:05', '2019-10-25 18:30:26'),
(163, 65, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:13:58', '2017-12-15 20:13:58'),
(164, 65, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:13:58', '2019-10-25 18:30:11'),
(165, 66, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:15:24', '2017-12-15 20:15:24'),
(166, 66, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:15:24', '2019-10-25 18:29:56'),
(167, 67, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:16:04', '2017-12-15 20:16:04'),
(168, 67, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:16:04', '2019-10-25 18:29:42'),
(169, 68, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:17:31', '2017-12-15 20:17:31'),
(170, 68, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:17:31', '2019-10-25 18:29:28'),
(171, 69, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:18:28', '2017-12-15 20:18:28'),
(172, 69, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:18:28', '2019-10-25 18:29:14'),
(173, 70, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:19:12', '2017-12-15 20:19:12'),
(174, 70, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:19:12', '2019-10-25 18:29:01'),
(175, 71, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:19:52', '2017-12-15 20:19:52'),
(176, 71, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:19:52', '2019-10-25 18:28:38'),
(177, 72, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:20:33', '2017-12-15 20:20:33'),
(178, 72, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:20:33', '2019-10-25 18:28:25'),
(179, 73, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:21:12', '2017-12-15 20:21:12'),
(180, 73, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:21:12', '2019-10-25 18:28:06'),
(181, 74, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:23:19', '2017-12-15 20:23:19'),
(182, 74, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:23:19', '2019-10-25 18:27:46'),
(183, 75, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:24:18', '2017-12-15 20:24:18'),
(184, 75, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:24:18', '2019-10-25 18:27:21'),
(185, 76, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:24:52', '2017-12-15 20:24:52'),
(186, 76, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:24:52', '2019-10-25 18:27:07'),
(187, 77, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:25:38', '2017-12-15 20:25:38'),
(188, 77, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:25:38', '2019-10-25 18:26:42'),
(189, 78, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:26:27', '2017-12-15 20:26:27'),
(190, 78, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-15 20:26:27', '2019-09-13 17:31:42'),
(191, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2017-12-15 22:18:36', '2017-12-15 22:18:36'),
(192, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2017-12-15 22:18:36', '2017-12-15 22:18:36'),
(193, 79, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-16 17:53:53', '2017-12-16 17:53:53'),
(194, 79, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-16 17:53:53', '2019-09-13 17:29:39'),
(195, 80, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-16 17:56:23', '2017-12-16 17:56:23'),
(196, 80, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-16 17:56:23', '2019-09-13 17:30:13'),
(197, 81, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-18 18:43:36', '2017-12-18 18:43:36'),
(198, 81, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-18 18:43:36', '2019-09-13 17:30:25'),
(199, 82, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2017-12-18 18:44:57', '2017-12-18 18:44:57'),
(200, 82, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2017-12-18 18:44:57', '2019-09-13 17:29:19'),
(213, 1, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2019-10-25 18:38:45', '2019-10-25 18:38:45'),
(214, 5, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2019-10-25 18:42:59', '2019-10-25 18:42:59'),
(215, 4, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2019-10-25 18:43:07', '2019-10-25 18:43:07'),
(216, 3, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2019-10-25 18:43:17', '2019-10-25 18:43:17'),
(217, 2, 'video_link', '[null]', 'Botble\\Blog\\Models\\Post', '2019-10-25 18:43:25', '2019-10-25 18:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2016_06_10_230148_create_acl_tables', 1),
(10, '2016_06_14_230857_create_menus_table', 1),
(11, '2016_06_28_221418_create_pages_table', 1),
(12, '2016_10_05_074239_create_setting_table', 1),
(13, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(14, '2016_12_16_084601_create_widgets_table', 1),
(15, '2017_05_09_070343_create_media_tables', 1),
(16, '2017_11_03_070450_create_slug_table', 1),
(17, '2018_11_03_054815_create_menu_locations_table', 1),
(18, '2018_11_07_151241_update_column_status_for_pages_table', 1),
(19, '2018_11_07_151701_update_column_status_for_menus_table', 1),
(20, '2018_11_24_013406_rename_column_featured_in_pages_table', 1),
(21, '2015_06_29_025744_create_audit_history', 2),
(22, '2015_06_18_033822_create_blog_table', 3),
(23, '2018_11_07_051340_change_status_column_for_blog', 3),
(24, '2018_11_07_154204_remove_unused_column_in_blog_table', 3),
(25, '2018_11_24_012701_rename_column_featured_in_blog_tables', 3),
(26, '2016_06_17_091537_create_contacts_table', 4),
(27, '2018_11_08_001804_update_column_status_in_contacts_table', 4),
(28, '2016_10_13_150201_create_galleries_table', 5),
(29, '2018_11_08_005616_update_status_column_in_galleries_table', 5),
(30, '2018_11_24_012823_rename_column_featured_in_galleries_table', 5),
(31, '2016_10_03_032336_create_languages_table', 6),
(32, '2016_05_28_112028_create_system_request_logs_table', 7),
(33, '2017_07_11_140018_create_simple_slider_table', 8),
(34, '2018_11_08_053147_update_column_status_in_simple_sliders_table', 8),
(35, '2013_04_09_062329_create_revisions_table', 9),
(36, '2019_01_05_054643_create_jobs_table', 9),
(37, '2019_01_20_071422_add_author_type_to_posts_table', 9),
(38, '2019_02_23_064533_create_contact_replies_table', 9),
(39, '2019_03_14_082019_update_blog_table_name', 10),
(40, '2019_04_06_103857_update_profile_image_column_in_users_table', 11),
(41, '2019_05_27_133842_change_column_status_menus_table', 12),
(42, '2019_05_27_134005_change_column_status_pages_table', 12),
(43, '2019_05_27_134410_change_column_status_posts_table', 12),
(44, '2019_05_27_134446_change_column_status_categories_table', 12),
(45, '2019_05_27_134724_change_column_status_tags_table', 12),
(46, '2019_05_27_134802_change_column_status_galleries_table', 12),
(47, '2019_05_27_134934_change_column_status_simple_siders_table', 12),
(48, '2019_06_24_025057_make_some_columns_nullable_in_media_tables', 13),
(49, '2019_07_11_143550_rename_audit_history_table', 14),
(50, '2019_07_15_042406_change_site_title_from_settings_to_theme_options', 14),
(51, '2019_08_13_033145_remove_unused_columns_in_users_table', 15),
(52, '2019_09_07_030654_update_menu_nodes_table', 15),
(53, '2019_09_07_035526_update_menu_node_reference_type_for_category', 15),
(54, '2019_09_07_045041_update_slugs_table', 15),
(55, '2019_09_07_050058_update_slug_reference_for_blog', 15),
(56, '2019_09_07_050253_update_slug_reference_for_gallery', 15),
(57, '2019_09_07_050405_update_slug_reference_for_page', 15),
(58, '2019_09_07_154718_update_lang_meta_table', 15),
(59, '2019_09_07_155716_update_language_meta_for_blog', 15),
(60, '2019_09_07_155917_update_language_meta_for_gallery', 15),
(61, '2019_09_08_014859_update_meta_boxes_table', 15),
(62, '2019_09_08_015552_update_meta_box_data_for_blog', 15),
(63, '2019_09_08_015629_update_meta_box_data_for_page', 15),
(64, '2019_09_08_032534_update_gallery_meta_table', 15),
(65, '2019_09_12_073711_update_media_url', 16),
(66, '2019_10_20_002256_remove_parent_id_in_pages_table', 17),
(67, '2019_10_20_002342_remove_parent_id_in_tags_table', 17),
(68, '2019_08_19_000000_create_failed_jobs_table', 18),
(69, '2019_09_12_073711_update_media_url_for_current_data', 18),
(70, '2020_03_28_020724_make_column_user_id_nullable_table_revisions', 19),
(71, '2016_10_07_193005_create_translations_table', 20),
(72, '2020_06_21_035242_update_table_simple_slider_items_nullable', 21),
(73, '2020_10_18_134416_fix_audit_logs_table', 22),
(74, '2019_01_05_053554_create_jobs_table', 23),
(75, '2021_02_16_092633_remove_default_value_for_author_type', 24),
(76, '2020_11_18_150916_ads_create_ads_table', 25),
(77, '2020_11_18_150921_author_create_author_table', 25),
(78, '2021_07_18_101839_fix_old_theme_options', 26),
(79, '2021_10_25_021023_fix-priority-load-for-language-advanced', 27),
(80, '2021_12_03_030600_create_blog_translations', 27),
(81, '2021_12_03_075608_create_page_translations', 27),
(82, '2021_12_03_082953_create_gallery_translations', 27),
(83, '2022_04_19_113923_add_index_to_table_posts', 28),
(84, '2022_04_20_100851_add_index_to_media_table', 28),
(85, '2022_04_20_101046_add_index_to_menu_table', 28),
(86, '2022_04_30_034048_create_gallery_meta_translations_table', 29),
(87, '2021_12_02_035301_add_ads_translations_table', 30),
(88, '2019_12_14_000001_create_personal_access_tokens_table', 31),
(89, '2022_07_10_034813_move_lang_folder_to_root', 31),
(90, '2022_08_04_051940_add_missing_column_expires_at', 31),
(91, '2022_10_14_024629_drop_column_is_featured', 32),
(92, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 33),
(93, '2022_12_02_093615_update_slug_index_columns', 34),
(94, '2022_09_01_000001_create_admin_notifications_tables', 35),
(95, '2023_01_30_024431_add_alt_to_media_table', 36),
(96, '2014_10_12_100000_create_password_reset_tokens_table', 37),
(97, '2023_02_16_042611_drop_table_password_resets', 37),
(98, '2023_04_17_062645_add_open_in_new_tab', 38),
(99, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 38),
(100, '2023_05_10_075124_drop_column_id_in_role_users_table', 38),
(101, '2015_08_15_122343_create_notes_table', 39),
(102, '2023_05_22_040819_fix-homepage-shortcode', 39),
(103, '2023_07_06_011444_create_slug_translations_table', 40),
(104, '2023_08_21_090810_make_page_content_nullable', 41),
(105, '2023_08_29_074620_make_column_author_id_nullable', 42),
(106, '2023_08_29_075308_make_column_user_id_nullable', 42),
(107, '2023_09_14_021936_update_index_for_slugs_table', 43),
(108, '2023_09_14_022423_add_index_for_language_table', 43),
(109, '2023_11_07_023805_add_tablet_mobile_image', 44),
(110, '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', 44),
(111, '2023_11_13_032036_remove_facebook_plugin', 44),
(112, '2023_11_14_033417_change_request_column_in_table_audit_histories', 44),
(113, '2023_12_06_100448_change_random_hash_for_media', 45),
(114, '2023_12_07_095130_add_color_column_to_media_folders_table', 45),
(115, '2023_12_12_105220_drop_translations_table', 45),
(116, '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', 45),
(117, '2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table', 45),
(118, '2024_03_25_000001_update_captcha_settings_for_contact', 45),
(119, '2024_04_01_043317_add_google_adsense_slot_id_to_ads_table', 45),
(120, '2024_04_04_110758_update_value_column_in_user_meta_table', 45),
(121, '2024_04_19_063914_create_custom_fields_table', 45),
(122, '2024_04_27_100730_improve_analytics_setting', 45),
(123, '2024_05_12_091229_add_column_visibility_to_table_media_files', 46),
(124, '2024_05_16_100000_change_random_hash_for_media', 47),
(125, '2024_07_07_091316_fix_column_url_in_menu_nodes_table', 48),
(126, '2024_07_12_100000_change_random_hash_for_media', 49);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'HuCFGz7sjcqMVIgaGZMnDTlzVZJhnedWgecCT4KV', 'http://localhost', 1, 0, 0, '2018-03-20 20:51:59', '2018-03-20 20:51:59'),
(2, NULL, 'Laravel Password Grant Client', 'Ku95ztrwl0JCST2Ey8OadCpklT1zitQQobtv7cyD', 'http://localhost', 0, 1, 0, '2018-03-20 20:51:59', '2018-03-20 20:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-20 20:51:59', '2018-03-20 20:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `user_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `status`, `user_id`, `image`, `template`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[featured-posts limit=\"5\"][/featured-posts]</div><div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[category-posts][/category-posts]</div><div>[all-galleries][/all-galleries]</div>', 'published', 1, NULL, 'homepage', NULL, '2024-07-27 06:11:21', '2024-07-27 06:11:21'),
(2, 'Introduction', 'Recusandae perspiciatis autem quisquam qui ut. Non praesentium repellendus corporis aperiam cupiditate velit dolorem. Ut sed minus dolor tenetur commodi nihil error. Quidem corporis id quo maxime. Incidunt est sunt iure maxime. Natus sunt impedit iure. Suscipit sunt voluptatem fuga ipsam neque. In quo veniam corporis vel. Modi qui sint alias earum molestiae saepe. Veritatis et possimus aspernatur commodi. Totam totam aut ut sed harum ut autem maxime. Iusto nemo qui aperiam soluta voluptatem eos enim. Pariatur aliquam et aut sit impedit est ratione officiis. Et ipsa aut est sunt beatae. Doloribus doloremque aut ut deleniti et quaerat excepturi. Laudantium saepe et delectus repudiandae. Dolores modi dolorem molestias maxime amet. Debitis aut illo repudiandae et. Praesentium aut voluptas magni voluptatum provident ex. Aut veniam et quaerat non atque doloremque architecto quam.', 'published', 1, NULL, NULL, NULL, '2024-07-27 06:11:21', '2024-07-27 06:11:21'),
(3, 'About us', 'Veritatis ab eaque pariatur nam. Placeat aspernatur repudiandae rerum molestias quia porro voluptates maxime. Et illo perspiciatis quia deleniti cum qui qui. Commodi quia aut id itaque. Reiciendis cum neque sit. Necessitatibus et officia in reiciendis accusamus. Quibusdam aliquid ut vero quia necessitatibus aut. Ipsam molestiae voluptas id delectus. Quia ea et qui voluptatem. Quis vel doloremque ex qui dolorem cum. Hic ex praesentium molestias libero ab. Minima omnis incidunt dignissimos occaecati iusto autem. Eveniet ea commodi est suscipit repellat nam inventore. Porro amet odio doloremque iusto. Repudiandae quos necessitatibus qui qui a in dolorem. Ratione ea ut ut natus architecto aut repellat. Ea similique qui explicabo in. Vero eveniet ut ipsa dolores accusamus. Omnis omnis dolorem quisquam in quidem rerum. Et voluptate voluptate neque saepe. Nostrum fugiat et consequatur. Dolor ipsa omnis dolor quo laudantium. Dolorem voluptatem est aut qui autem repellendus quia officiis.', 'published', 1, NULL, NULL, NULL, '2024-07-27 06:11:21', '2024-07-27 06:11:21'),
(4, 'Contact', '<p>430 Arlo Via\nMarinaborough, AR 01303</p><p>408-700-5417 (4 lines) - 1-678-212-3851</p><p>+1.717.365.0370</p><p>rrunte@stanton.com&nbsp;&nbsp;</p><div>[contact-form][/contact-form]</div>', 'published', 1, NULL, NULL, NULL, '2024-07-27 06:11:21', '2024-07-27 06:11:21'),
(5, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 'published', 1, NULL, NULL, NULL, '2024-07-27 06:11:21', '2024-07-27 06:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(40, 'Found in Translation: Local Publisher Brings Alive the Story of a Somali Olympian and Refugee for Macedonian Readers', 'The graphic novel \"An Olympic Dream\" -- a biography of a runner who perished while trying to cross the Mediterranean Sea as a refugee -- was published in Macedonia', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 4, 'Botble\\Author\\Models\\Author', 1, 'news/1.jpg', 2, NULL, '2017-12-15 19:14:35', '2024-07-27 06:11:23'),
(41, 'In Egypt, Both Sexual Harassment and Child Marriages Continue to Plague the Country', '\"Sexual harassment is a major problem in Egypt. Studies show that large majorities of women have been subjected to it [...] And the problem is deeply rooted.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 5, 'Botble\\Author\\Models\\Author', 1, 'news/2.jpg', 1, NULL, '2017-12-15 19:16:11', '2024-07-27 06:11:23'),
(42, 'Twitter Japan is Not a Safe Space for Minority Users', '\"Of respondents who reported they found it unpleasant when coming across discriminatory articles online (as described above), 19.8% said they would refrain from using the Internet.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 1, 'Botble\\Author\\Models\\Author', 1, 'news/3.jpg', 3, NULL, '2017-12-15 19:21:49', '2024-07-27 06:11:23'),
(43, 'A Legislator in Taiwan Risks a Recall for Supporting Same-Sex Marriage', 'Some in the Presbyterian Church in Taiwan are campaigning to recall a legislator because he supports same-sex marriage, generating a furious debate and calls for reform.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 7, 'Botble\\Author\\Models\\Author', 1, 'news/4.jpg', 3, NULL, '2017-12-15 19:23:12', '2024-07-27 06:11:23'),
(44, 'Concerns over United States President Trump\'s Latest Controversial Foreign Policies Loom Large in Africa', '\"This is not a very diplomatic strategy. Then again, it is coming from a man whose vision and politics are limited by his lack of awareness about the outside world.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 6, 'Botble\\Author\\Models\\Author', 1, 'news/5.jpg', 5, NULL, '2017-12-15 19:24:24', '2024-07-27 06:11:23'),
(45, 'UNESCO Protects Balkan Grandma March Day Custom As Cultural Heritage', 'Cultural heritage activists in South-eastern Europe celebrate UNESCO\'s recognition of the Balkan Grandma March Day custom of wearing red and white wool ornaments.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 10, 'Botble\\Author\\Models\\Author', 0, 'news/6.jpg', 2, 'video', '2017-12-15 19:31:57', '2024-07-27 06:11:23'),
(46, 'Petition to Free the Eritrean Man Unjustly Arrested in Italy for Mistaken Identity', 'The Italian authorities appear to have gotten the wrong man; will they acknowledge it? The hunt for the mastermind of Mediterranean human trafficking takes a strange turn.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 3, 'Botble\\Author\\Models\\Author', 0, 'news/7.jpg', 1, 'video', '2017-12-15 19:38:45', '2024-07-27 06:11:23'),
(47, 'Refugees in Lebanon Are Still Being Scapegoated in the Media and in Academia', '\"How can one claim that these people are here to receive aid from international organizations, when many are, in fact, not receiving any?\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 8, 'Botble\\Author\\Models\\Author', 0, 'news/8.jpg', 1, 'video', '2017-12-15 19:41:11', '2024-07-27 06:11:23'),
(48, 'A ‘Detainee of All Eras\': The Prominent Case of Egyptian Activist Alaa Abdelfattah', '\"His trial is an attempt to silence criticism of a judiciary that has itself become a source of human rights violations.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 4, 'Botble\\Author\\Models\\Author', 0, 'news/9.jpg', 1, 'video', '2017-12-15 19:43:20', '2024-07-27 06:11:23'),
(49, 'The Ahwazis of Iran Face Death Sentences after False Accusations of Opposing the Government', 'An Iranian court sentenced two Ahwazi Arab men to death and gave six others three to 25 years for the crimes of alleged membership in non-existent opposition groups.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 10, 'Botble\\Author\\Models\\Author', 0, 'news/10.jpg', 2, NULL, '2017-12-15 19:47:36', '2024-07-27 06:11:23'),
(50, '‘Recalcitrant’ Activist Charged by Singapore Police for Organizing ‘Illegal Assemblies’', '\"We do not understand why the State is pursuing the seven charges against Jolovan Wham for events which were all peaceful and non-violent.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 1, 'Botble\\Author\\Models\\Author', 0, 'news/11.jpg', 1, NULL, '2017-12-15 19:48:29', '2024-07-27 06:11:23'),
(51, 'Right To Information Requests in Sri Lanka Reveals Process for Blocking Websites', 'Information released by the Telecom Regulatory Commission revealed that from 2015 onward 13 websites had been blocked, including a number of websites publishing political news, and a few pornographic sites.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 9, 'Botble\\Author\\Models\\Author', 0, 'news/12.jpg', 1, NULL, '2017-12-15 19:49:55', '2024-07-27 06:11:23'),
(52, 'The Cat in the… Pot? Cuddly Felines Nap in Japanese Cookware', 'Cats sleeping in clay cooking pots are all the rage in Japan right now. Apparently, they are so popular that stores have started selling pots made exclusively for cats.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 9, 'Botble\\Author\\Models\\Author', 0, 'news/13.jpg', 1, NULL, '2017-12-15 19:50:54', '2024-07-27 06:11:23'),
(53, 'Indonesian President Jokowi Leads Citizens in Condemning Donald Trump\'s Jerusalem Declaration', '\"Trump is dragging the USA and the world to the frontline of religious extremism.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 7, 'Botble\\Author\\Models\\Author', 0, 'news/14.jpg', 1, NULL, '2017-12-15 19:53:37', '2024-07-27 06:11:23'),
(54, 'A Local Newspaper\'s Full-Page Feature on Nuclear Radiation Survival Stirs Panic in China', '\"The whole page feature on nuclear radiation precaution is believed to be a reaction to the risk of warfare in the Korean peninsula.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 5, 'Botble\\Author\\Models\\Author', 0, 'news/15.jpg', 1, NULL, '2017-12-15 19:54:52', '2024-07-27 06:11:23');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(55, 'The Fall of Chinese Internet Czar Lu Wei', 'If Lu Wei\'s censorship measures were viewed as selective, Chinese netizens will now find themselves facing a more \"comprehensive\" online content control system.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 10, 'Botble\\Author\\Models\\Author', 0, 'news/16.jpg', 1, NULL, '2017-12-15 19:56:19', '2024-07-26 08:02:11'),
(56, 'Syrian and Lebanese: On the Conflict of Identities', '\"Being half-Lebanese, half-Syrian is like being a child whose parents are separated and both hate you because each half of you reminds them of the other....\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 5, 'Botble\\Author\\Models\\Author', 0, 'news/17.jpg', 1, NULL, '2017-12-15 19:57:04', '2024-07-27 06:11:23'),
(57, 'Transgender Woman\'s Murder in Trinidad & Tobago Highlights Ostracism Faced by LGBTQ Community', '\"This wonderful human being, who cared so much for others, died for no reason .. other than perhaps, being different.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 10, 'Botble\\Author\\Models\\Author', 0, 'news/18.jpg', 1, NULL, '2017-12-15 19:57:41', '2024-07-27 06:11:23'),
(58, 'Victoria Becomes the First Australian State to Pass Voluntary Assisted Dying Legislation', 'As Victoria becomes the first Australian state to legalise euthanasia, the country remains divided over what is being called a new, progressive trend in Australian politics.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 2, 'Botble\\Author\\Models\\Author', 0, 'news/19.jpg', 1, NULL, '2017-12-15 19:58:18', '2024-07-27 06:11:23'),
(59, 'Victoria Becomes the First Australian State to Pass Voluntary Assisted Dying Legislation', 'As Victoria becomes the first Australian state to legalise euthanasia, the country remains divided over what is being called a new, progressive trend in Australian politics.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 10, 'Botble\\Author\\Models\\Author', 0, 'news/20.jpg', 1, NULL, '2017-12-15 19:59:28', '2024-07-27 06:11:23'),
(60, 'Palestinians Aren\'t Surprised by US Jerusalem Move As World Already ‘Ignores Their Existence’', '\"A nation built on ethnic cleansing, colonialism and white supremacy has always supported colonialism and ethnic cleansing in Palestine.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 5, 'Botble\\Author\\Models\\Author', 0, 'news/21.jpg', 1, NULL, '2017-12-15 20:02:49', '2024-07-27 06:11:23'),
(61, 'Painting a New Story: Sohrai Art in Jharkhand', '\"What is special about the art form is that it is only made by women and passed on by women.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 2, 'Botble\\Author\\Models\\Author', 0, 'news/22.jpg', 1, NULL, '2017-12-15 20:04:42', '2024-07-27 06:11:23'),
(62, 'The Conviction of Another Dancehall Star Fails to Shock Crime-Weary Jamaicans', 'Following the incarceration of Vybz Kartel, Ninja Man is the second major dancehall artist in recent times to be convicted of murder in crime-weary Jamaica.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 8, 'Botble\\Author\\Models\\Author', 0, 'news/23.jpg', 1, NULL, '2017-12-15 20:07:22', '2024-07-26 08:02:11'),
(63, 'Harsh Prison Terms for Video Journalist and Blogger as Vietnam Cracks Down on Free Expression', '“Repressing citizen journalists is not only a violation of human rights but also a major impediment to Vietnam’s aspirations to become a tech and innovation hub.”', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 9, 'Botble\\Author\\Models\\Author', 0, 'news/24.jpg', 2, NULL, '2017-12-15 20:08:12', '2024-07-26 08:02:11'),
(64, 'What Future for the ‘Wikipedia Seagull’ on Kazakhstan\'s Brand New Banknotes?', 'A seagull appearing on the 500 tenge note was claimed by a Swiss photographer, but officials have not acknowledged copyright infringement.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 2, 'Botble\\Author\\Models\\Author', 0, 'news/25.jpg', 1, NULL, '2017-12-15 20:12:05', '2024-07-27 06:11:23'),
(65, 'Jailed Bahraini Rights Defender Nabeel Rajab Faces Additional Fifteen Years in Prison', 'Rajab is in prison for his human rights-related activities and for freely expressing his opinions.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 7, 'Botble\\Author\\Models\\Author', 0, 'news/26.jpg', 1, NULL, '2017-12-15 20:13:58', '2024-07-27 06:11:23'),
(66, 'Ashraf Ghani Gets Thumbs Down After ‘Anti-Women’ Headscarf Gaffe', 'After an outcry, Afghanistan\'s president apologised for the remark.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 7, 'Botble\\Author\\Models\\Author', 0, 'news/27.jpg', 1, NULL, '2017-12-15 20:15:24', '2024-07-27 06:11:23'),
(67, 'The Health of Thousands of Filipino Children Could Be at Risk, Thanks to Sanofi’s Dengue Vaccine', '\"Why just now...How about the thousands of children who were already given the vaccine?\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 3, 'Botble\\Author\\Models\\Author', 0, 'news/28.jpg', 2, NULL, '2017-12-15 20:16:04', '2024-07-26 08:02:11'),
(68, 'Kyrgyz Children\'s Author Remakes Old Fables, Drives New Narratives', '“There are no fairytale weddings in my stories and no handsome prince. None of my characters are especially waiting for him, either.”', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 3, 'Botble\\Author\\Models\\Author', 0, 'news/29.jpg', 1, NULL, '2017-12-15 20:17:31', '2024-07-26 08:02:11'),
(69, 'Animal Carcasses, Tires, and Medical Waste: A New Report Highlights Health Risks of Lebanon\'s Trash Crisis', '\"When they burn we can’t breathe […] We’ve had to go to the hospital because of this.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 8, 'Botble\\Author\\Models\\Author', 0, 'news/30.jpg', 1, NULL, '2017-12-15 20:18:28', '2024-07-27 06:11:23');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(70, 'Russian Atomic Regulator\'s Foray into Meme-Making Fails to Quench Rumors of Nuclear Leaks', '\"No one is chastising Ruthemium, or even Ruthenium-106. They’re chastising Rosatom for contradictory information and for jokes like this instead of a serious investigation into the accident.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 7, 'Botble\\Author\\Models\\Author', 0, 'news/31.jpg', 1, NULL, '2017-12-15 20:19:12', '2024-07-26 08:02:11'),
(71, 'In China, Skepticism Surrounding Police Investigation of Kindergarten Child Abuse Is Censored', '\"In a matter of a few minutes, thousands of questions popped up...Then in a matter of a few seconds, all the comments vanished and the comment function was closed.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 7, 'Botble\\Author\\Models\\Author', 0, 'news/32.jpg', 1, NULL, '2017-12-15 20:19:52', '2024-07-27 06:11:23'),
(72, 'Russians Are Unimpressed With the 2018 Presidential Election Logo (and Have Ideas for Improvement)', 'So far, the logo challenge has been the most exciting part of the campaign where Putin is expected to run and win even by his most vocal opponents.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 5, 'Botble\\Author\\Models\\Author', 0, 'news/33.jpg', 1, NULL, '2017-12-15 20:20:33', '2024-07-27 06:11:23'),
(73, 'Weaving Objects of Loss and Memory With Hayv Kahraman', 'Kahraman’s new work is a masterful exploration of the issues of identity, personal struggle, and human consciousness.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 10, 'Botble\\Author\\Models\\Author', 0, 'news/34.jpg', 2, NULL, '2017-12-15 20:21:12', '2024-07-27 06:11:23'),
(74, 'This Brazilian Doctor Says Science Has Evolved, but Stigma Against HIV Remains', '\"The voices of people living with HIV are neglected by the media, which often portrays them as victims, or examples not to be followed, under the auspices of promoting prevention\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 9, 'Botble\\Author\\Models\\Author', 0, 'news/35.jpg', 1, NULL, '2017-12-15 20:23:19', '2024-07-25 04:54:57'),
(75, 'Scrutiny and Doubt Over Rape Victim\'s Testimony Sparks Outrage in Spain', '\"Not content with raping us, men also have to tell us how to behave before, during and after the rape.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 3, 'Botble\\Author\\Models\\Author', 0, 'news/36.jpg', 2, NULL, '2017-12-15 20:24:18', '2024-07-27 06:11:23'),
(76, 'After Authorities Evict Beijing\'s ‘Low-End’ Residents, Chinese Ask: Where Is the Humanity?', 'Just as rural migrant workers were forced out of their dwellings into the streets, Beijing’s temperature fell to below 0 degrees Celsius at night.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 2, 'Botble\\Author\\Models\\Author', 0, 'news/37.jpg', 1, NULL, '2017-12-15 20:24:52', '2024-07-27 06:11:23'),
(77, 'Found in Translation: Local Publisher Brings Alive the Story of a Somali Olympian and Refugee for Macedonian Readers', 'The graphic novel \"An Olympic Dream\" -- a biography of a runner who perished while trying to cross the Mediterranean Sea as a refugee -- was published in Macedonia in', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 9, 'Botble\\Author\\Models\\Author', 0, 'news/38.jpg', 1, NULL, '2017-12-15 20:25:38', '2024-07-27 06:11:23'),
(78, 'In Egypt, Both Sexual Harassment and Child Marriages Continue to Plague the Country', '\"Sexual harassment is a major problem in Egypt. Studies show that large majorities of women have been subjected to it [...] And the problem is deeply rooted.\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 8, 'Botble\\Author\\Models\\Author', 0, 'news/39.jpg', 4, NULL, '2017-12-15 20:26:27', '2024-07-27 06:11:23'),
(81, 'The Hypocrisy of the Philippines National Police Human Rights Mobile App', '\"The ‘Know Your Rights’ app is a perfect example of hypocrisy because the only application that is known to the PNP is the application of torture...\"', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 10, 'Botble\\Author\\Models\\Author', 0, 'news/40.jpg', 3, NULL, '2017-12-18 18:43:36', '2024-07-27 06:11:23'),
(82, 'Initiatives for Environmental Activism Take Off in Cuba', 'The Center for Education and Promotion for Sustainable Development is a commitment to participatory environmental management and political ecology in Cuba.', '<p>People avoid mentioning Christ when referring to the historical milestone by speaking before Christ and by Christ. But in English: Before Chirst, After Chirst - before Christ, after Christ - people are afraid of the history of Christianity. This is the sharing of John&#39;s fathers during the regular Mass of medical students&#39; Catholic community at 19:15, May 11, 2017 at the Temple of Gierado, Thai Ha parish.</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>At the beginning of his sermon he speaks of one of the greatest difficulties in the Church in general and of the believer in particular, that of faith in God. I</p>\r\n\r\n<p>t is the crisis of faith that causes war, causing hatred and death. Trust does not only affect the individual but the whole world. Today, God has shown us that faith is the beginning, the key for man to stand in the midst of the hundred challenges. Two readings date from history, Lord Giesu predicts who will submit the master.</p>\r\n\r\n<p>He chose not to choose the wrong one, but he made clear in the Gospel that the Scriptures must be fulfilled: &quot;The one who raised his hand and took a plate with him lifted up his heel.&quot; In the first reading, Paul speaks of David to fulfill what the Bible says, so that the Jewish brothers recognize the prophecy through history as Lord Giesu.</p>\r\n\r\n<p>In order to have faith in man, Lord Giesu has begun in a long history program. Old Testament history correctly announces what happened to Jesus Christ. A French philosopher said: &quot;Christianity has a solid foundation of faith that is history, but Christianity forgets this important point and today goes to theology.&quot;</p>\r\n\r\n<p><input alt=\"\" src=\"http://huydev.net/new/wp-content/uploads/2017/05/SaiGon-HDGMVN-01.jpg\" type=\"image\" /></p>\r\n\r\n<p>Father recalled: Christianity is deeply rooted, stretched and fulfilled in the history of the Bible through people, places, and places. Looking back on history, social holidays, holidays ... are related to Christianity and come from Christianity.</p>\r\n\r\n<p>He speaks of the fact that the apparition of Fatima appeared 100 years ago as a historical event of time, space, character, and message that are not selfish or paranoid. Our beliefs must be based on history rather than ambiguity. Looking back on the past we know that faith was cremated early on from God.</p>\r\n\r\n<p>The Apostles stood on a polite scale to demonstrate the human faith in the divine Giave. Many people today know history but do not know who Kito is because they are avoiding the Lord Giesu. Giesu goes into history to show man what life is and what God is and prophecies to strengthen man&#39;s faith.</p>', 'published', 6, 'Botble\\Author\\Models\\Author', 0, 'news/41.jpg', 3, NULL, '2017-12-18 18:44:57', '2024-07-27 06:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(131, 21, 82),
(134, 23, 81),
(136, 23, 78),
(137, 23, 77),
(138, 23, 76),
(139, 23, 75),
(141, 23, 74),
(142, 10, 73),
(143, 10, 72),
(144, 10, 71),
(145, 10, 70),
(146, 10, 69),
(147, 10, 68),
(148, 9, 67),
(149, 9, 66),
(150, 9, 65),
(151, 8, 64),
(152, 8, 63),
(153, 8, 62),
(154, 8, 61),
(155, 8, 60),
(156, 8, 59),
(157, 7, 58),
(158, 7, 57),
(159, 7, 56),
(160, 7, 55),
(161, 7, 54),
(162, 7, 53),
(163, 6, 52),
(164, 6, 51),
(165, 6, 50),
(166, 6, 49),
(167, 9, 48),
(168, 24, 47),
(169, 9, 46),
(170, 9, 45),
(171, 22, 45),
(172, 30, 44),
(173, 29, 43),
(174, 29, 42),
(175, 6, 41),
(176, 23, 41),
(177, 6, 40);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(4, 4, 40),
(5, 5, 40);

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE `request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(255) DEFAULT NULL,
  `referrer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(34, 404, 'http://127.0.0.1:8000/sw.js', 38, '[1]', NULL, '2024-09-01 13:21:09', '2024-09-01 14:05:22'),
(35, 404, 'http://127.0.0.1:8000/admin/unlicensed?redirect_url=http%3A%2F%2F127.0.0.1%3A8000%2Fadmin', 1, NULL, NULL, '2024-09-01 13:36:10', '2024-09-01 13:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(2, 'Botble\\Blog\\Models\\Post', 79, 1, 'image', 'news/slider.jpg', 'news/b945fefb-242e-4110-8f1a-d307d552c7e4.jpg', '2019-09-13 17:29:39', '2019-09-13 17:29:39'),
(3, 'Botble\\Blog\\Models\\Post', 80, 1, 'image', 'news/slider2.jpg', 'news/cc862858-6b9a-461f-bf1d-44ccf61ad38a.jpg', '2019-09-13 17:30:13', '2019-09-13 17:30:13'),
(5, 'Botble\\Blog\\Models\\Post', 39, 1, 'image', 'news/photo-3-1513331298468.jpg', 'news/772e973b-21c6-43f2-8351-0e5f2ad0318e.jpg', '2019-09-13 17:31:23', '2019-09-13 17:31:23'),
(45, 'Botble\\Blog\\Models\\Post', 1, 1, 'image', 'news/5.jpg', 'news/f268e846-9e0c-4d82-8864-b1a6453b5e9b.jpg', '2019-10-25 18:38:45', '2019-10-25 18:38:45'),
(46, 'Botble\\Blog\\Models\\Post', 11, 1, 'image', 'news/thap-gio-1513330173503.jpg', 'news/3f142d09-da0b-4975-8713-4248000d3d69.jpg', '2019-10-25 18:39:35', '2019-10-25 18:39:35'),
(47, 'Botble\\Blog\\Models\\Post', 10, 1, 'image', 'news/photo-0-1513383421929.jpg', 'news/2f99e800-a51f-46d9-a573-5c8ff42f8e2c.jpg', '2019-10-25 18:39:45', '2019-10-25 18:39:45'),
(48, 'Botble\\Blog\\Models\\Post', 9, 1, 'image', 'news/104891350-rtr3kh141910x1000-1513307430794.jpg', 'news/f268e846-9e0c-4d82-8864-b1a6453b5e9b.jpg', '2019-10-25 18:39:56', '2019-10-25 18:39:56'),
(49, 'Botble\\Blog\\Models\\Post', 8, 1, 'image', 'news/q-1513240612690.jpg', 'news/cd3cd533-5d1a-41c6-be8b-56151bd967d5.jpg', '2019-10-25 18:40:08', '2019-10-25 18:40:08'),
(50, 'Botble\\Blog\\Models\\Post', 7, 1, 'image', 'news/bangkok-thailand-tour-package-for-3-days-and-2-nights-1513319289889.jpg', 'news/65fb79e9-4829-4a3b-b65c-d18969c73c48.jpg', '2019-10-25 18:42:42', '2019-10-25 18:42:42'),
(51, 'Botble\\Blog\\Models\\Post', 6, 1, 'image', 'news/bull-bear-1463022336507-1513307271081.jpg', 'news/b945fefb-242e-4110-8f1a-d307d552c7e4.jpg', '2019-10-25 18:42:52', '2019-10-25 18:42:52'),
(52, 'Botble\\Blog\\Models\\Post', 5, 1, 'image', 'news/9aloly-1513328247406.jpg', 'news/183d2958-33a0-475f-b929-496a6fb07b1e.jpg', '2019-10-25 18:42:59', '2019-10-25 18:42:59'),
(53, 'Botble\\Blog\\Models\\Post', 4, 1, 'image', 'news/airline-1513269064189.jpg', 'news/2f99e800-a51f-46d9-a573-5c8ff42f8e2c.jpg', '2019-10-25 18:43:07', '2019-10-25 18:43:07'),
(54, 'Botble\\Blog\\Models\\Post', 3, 1, 'image', 'news/anh-cndd-1-1513331207815.JPG', 'news/140bceaa-cfd9-4b3b-84a2-79db4b2971ed.jpg', '2019-10-25 18:43:17', '2019-10-25 18:43:17'),
(55, 'Botble\\Blog\\Models\\Post', 2, 1, 'image', 'news/maivang-1513330039630.jpg', 'news/da28be4b-570f-400a-a95b-770225246782.jpg', '2019-10-25 18:43:25', '2019-10-25 18:43:25'),
(56, 'Botble\\Blog\\Models\\Post', 21, 1, 'image', 'news/photo1513162521415-1513162521415-1513312586786-1513321516974.jpg', 'news/30ae445b-580f-4f5a-b8e5-7d49214451bc.jpg', '2019-10-25 18:44:02', '2019-10-25 18:44:02'),
(57, 'Botble\\Blog\\Models\\Post', 20, 1, 'image', 'news/keyboard-warrior-600x370-1513155889229-crop-1513155899084-1513215915731.jpg', 'news/cc862858-6b9a-461f-bf1d-44ccf61ad38a.jpg', '2019-10-25 18:44:10', '2019-10-25 18:44:10'),
(58, 'Botble\\Blog\\Models\\Post', 19, 1, 'image', 'news/1-1513305032857.jpg', 'news/55776554-d137-45f6-b88b-f27a0962a97f.jpg', '2019-10-25 18:44:19', '2019-10-25 18:44:19'),
(59, 'Botble\\Blog\\Models\\Post', 18, 1, 'image', 'news/photo1513306925790-1513306925790-1513327991182.jpg', 'news/985233aa-fc01-490c-8dcf-6a54d186292b.jpg', '2019-10-25 18:44:28', '2019-10-25 18:44:28'),
(60, 'Botble\\Blog\\Models\\Post', 17, 1, 'image', 'news/1-1512841515091.jpg', 'news/aa62b952-f93d-499f-973a-29189f2f3c29.jpg', '2019-10-25 18:44:36', '2019-10-25 18:44:36'),
(61, 'Botble\\Blog\\Models\\Post', 16, 1, 'image', 'news/53be6633586c2cd9b574b1fdc650f9fe63acaf0c-1513155444116-crop-1513155447709-1513211052336.jpg', 'news/772e973b-21c6-43f2-8351-0e5f2ad0318e.jpg', '2019-10-25 18:44:45', '2019-10-25 18:44:45'),
(62, 'Botble\\Blog\\Models\\Post', 15, 1, 'image', 'news/photo1513234481857-1513234481857-1513235080107-1513321733011.jpg', 'news/79390942-39f0-4b56-9014-6a667ec4c30b.jpg', '2019-10-25 18:44:53', '2019-10-25 18:44:53'),
(63, 'Botble\\Blog\\Models\\Post', 14, 1, 'image', 'news/photo1512903434174-1512903434174-1513218036140.jpg', 'news/4e93edb4-d07c-40f1-b9b0-f9482a6e83b7.jpg', '2019-10-25 18:45:02', '2019-10-25 18:45:02'),
(64, 'Botble\\Blog\\Models\\Post', 13, 1, 'image', 'news/sieubanxslf-1513344943127.jpg', 'news/c55816fc-63a0-4a14-b30d-a0a179301521.jpg', '2019-10-25 18:46:04', '2019-10-25 18:46:04'),
(65, 'Botble\\Blog\\Models\\Post', 12, 1, 'image', 'news/a7-1513309579034.jpg', 'news/243e4893-8d1c-4712-8673-c5344bd0e32f.jpg', '2019-10-25 18:46:15', '2019-10-25 18:46:15'),
(66, 'Botble\\Blog\\Models\\Post', 31, 1, 'image', 'news/photo1513242715273-1513242715273-1513245181024.jpg', 'news/ce14f5dd-0ab8-4186-a181-51b2d216f26a.jpg', '2019-10-25 18:46:53', '2019-10-25 18:46:53'),
(67, 'Botble\\Blog\\Models\\Post', 30, 1, 'image', 'news/1-crop-1513239638970-crop-1513241174547-1513304368398.jpg', 'news/0f1b387e-6e88-48bc-9c7d-ea78c7ddce21.jpg', '2019-10-25 18:47:06', '2019-10-25 18:47:06'),
(68, 'Botble\\Blog\\Models\\Post', 29, 1, 'image', 'news/flood-moral-story-motivation-676x284-1513073783656.jpg', 'news/cd8d8c05-a1d8-461d-a1fa-8165ccd0f745.jpg', '2019-10-25 18:47:36', '2019-10-25 18:47:36'),
(69, 'Botble\\Blog\\Models\\Post', 28, 1, 'image', 'news/image-1513135196294.jpg', 'news/7762c3b2-9b83-41a2-9179-46812bf91211.jpg', '2019-10-25 18:47:45', '2019-10-25 18:47:45'),
(70, 'Botble\\Blog\\Models\\Post', 27, 1, 'image', 'news/photo1513237730170-1513237730171-1513305347556.jpg', 'news/816be9ec-8bba-41fc-89e2-2fb45715936d.jpg', '2019-10-25 18:47:57', '2019-10-25 18:47:57'),
(71, 'Botble\\Blog\\Models\\Post', 26, 1, 'image', 'news/photo1513149641528-1513149641528-1513211532897.jpg', 'news/5c56faba-ff10-45db-bfe6-c623e6903eae.jpg', '2019-10-25 18:48:08', '2019-10-25 18:48:08'),
(72, 'Botble\\Blog\\Models\\Post', 25, 1, 'image', 'news/photo1513153032081-1513153032081-1513234528418.jpg', 'news/4b975e74-75ac-4b98-9ae0-0292c725f2cd.JPG', '2019-10-25 18:48:17', '2019-10-25 18:48:17'),
(73, 'Botble\\Blog\\Models\\Post', 24, 1, 'image', 'news/photo-4-1513071198577.jpg', 'news/1aa9d1a0-4b5f-4b86-b04c-8f61af20040c.jpg', '2019-10-25 18:48:29', '2019-10-25 18:48:29'),
(74, 'Botble\\Blog\\Models\\Post', 23, 1, 'image', 'news/1-1513244376908-crop-1513244386438-1513307989962.jpg', 'news/f09959ce-b2b3-441a-a74a-d5748853ecb4.jpg', '2019-10-25 18:48:54', '2019-10-25 18:48:54'),
(75, 'Botble\\Blog\\Models\\Post', 22, 1, 'image', 'news/design-thinking-business-success-1513237770696-crop-1513237787457-1513238383014.jpg', 'news/3c1d4932-0c3e-4505-b2e6-1b3c95d52317.jpg', '2019-10-25 18:49:04', '2019-10-25 18:49:04'),
(76, 'Botble\\Blog\\Models\\Post', 32, 1, 'image', 'news/photo1513260327465-1513260327466-1513304033550.jpg', 'news/dec37993-b6a6-45ca-b0d3-fc5236bd0b2f.jpg', '2019-10-25 18:49:41', '2019-10-25 18:49:41'),
(77, 'Botble\\Blog\\Models\\Post', 38, 1, 'image', 'news/howtostart750x348-1513336577023.jpg', 'news/d4740a45-5df8-4572-a664-883d5d3e7a11.jpg', '2019-10-25 18:49:48', '2019-10-25 18:49:48'),
(78, 'Botble\\Blog\\Models\\Post', 37, 1, 'image', 'news/2copypsov-1513383877882-1.jpg', 'news/ce56a1b8-d794-40b4-8a5d-9e296e7f1d82.jpg', '2019-10-25 18:49:58', '2019-10-25 18:49:58'),
(79, 'Botble\\Blog\\Models\\Post', 36, 1, 'image', 'news/cho-va-nhan-1513183414909.jpg', 'news/1a393f32-f4ca-4669-a842-167091b077ee.jpg', '2019-10-25 18:50:17', '2019-10-25 18:50:17'),
(80, 'Botble\\Blog\\Models\\Post', 35, 1, 'image', 'news/photo1513161216143-1513161216143-1513245588651.jpg', 'news/e031f8f8-2718-418d-b48e-2bbc62967988.jpg', '2019-10-25 18:50:25', '2019-10-25 18:50:25'),
(81, 'Botble\\Blog\\Models\\Post', 34, 1, 'image', 'news/hop-bao-cong-bo-luat-1513233096066-22-38-1025-1822-crop-1513233126758-1513238795115.jpg', 'news/8b174039-011e-4479-a5c6-1b477312079f.jpg', '2019-10-25 18:50:33', '2019-10-25 18:50:33'),
(82, 'Botble\\Blog\\Models\\Post', 33, 1, 'image', 'news/ap663991123816-1512965310455-158-0-717-1063-crop-1512965540738-1513223645767.jpg', 'news/47577df9-01e7-4d38-a3b4-cb755992f2a3.jpg', '2019-10-25 18:50:41', '2019-10-25 18:50:41'),
(83, 'Botble\\Blog\\Models\\Post', 1, NULL, 'author_id', '1', '2', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(84, 'Botble\\Blog\\Models\\Post', 1, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(85, 'Botble\\Blog\\Models\\Post', 2, NULL, 'author_id', '1', '3', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(86, 'Botble\\Blog\\Models\\Post', 2, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(87, 'Botble\\Blog\\Models\\Post', 3, NULL, 'author_id', '1', '5', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(88, 'Botble\\Blog\\Models\\Post', 3, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(89, 'Botble\\Blog\\Models\\Post', 4, NULL, 'author_id', '1', '4', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(90, 'Botble\\Blog\\Models\\Post', 4, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(91, 'Botble\\Blog\\Models\\Post', 5, NULL, 'author_id', '1', '10', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(92, 'Botble\\Blog\\Models\\Post', 5, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(93, 'Botble\\Blog\\Models\\Post', 6, NULL, 'author_id', '1', '3', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(94, 'Botble\\Blog\\Models\\Post', 6, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(95, 'Botble\\Blog\\Models\\Post', 7, NULL, 'author_id', '1', '3', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(96, 'Botble\\Blog\\Models\\Post', 7, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(97, 'Botble\\Blog\\Models\\Post', 8, NULL, 'author_id', '1', '8', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(98, 'Botble\\Blog\\Models\\Post', 8, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(99, 'Botble\\Blog\\Models\\Post', 9, NULL, 'author_id', '1', '8', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(100, 'Botble\\Blog\\Models\\Post', 9, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(101, 'Botble\\Blog\\Models\\Post', 10, NULL, 'author_id', '1', '2', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(102, 'Botble\\Blog\\Models\\Post', 10, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(103, 'Botble\\Blog\\Models\\Post', 11, NULL, 'author_id', '1', '6', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(104, 'Botble\\Blog\\Models\\Post', 11, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(105, 'Botble\\Blog\\Models\\Post', 12, NULL, 'author_id', '1', '5', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(106, 'Botble\\Blog\\Models\\Post', 12, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(107, 'Botble\\Blog\\Models\\Post', 13, NULL, 'author_id', '1', '6', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(108, 'Botble\\Blog\\Models\\Post', 13, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(109, 'Botble\\Blog\\Models\\Post', 14, NULL, 'author_id', '1', '10', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(110, 'Botble\\Blog\\Models\\Post', 14, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(111, 'Botble\\Blog\\Models\\Post', 15, NULL, 'author_id', '1', '6', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(112, 'Botble\\Blog\\Models\\Post', 15, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(113, 'Botble\\Blog\\Models\\Post', 16, NULL, 'author_id', '1', '5', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(114, 'Botble\\Blog\\Models\\Post', 16, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(115, 'Botble\\Blog\\Models\\Post', 17, NULL, 'author_id', '1', '5', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(116, 'Botble\\Blog\\Models\\Post', 17, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(117, 'Botble\\Blog\\Models\\Post', 18, NULL, 'author_id', '1', '6', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(118, 'Botble\\Blog\\Models\\Post', 18, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(119, 'Botble\\Blog\\Models\\Post', 19, NULL, 'author_id', '1', '4', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(120, 'Botble\\Blog\\Models\\Post', 19, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(121, 'Botble\\Blog\\Models\\Post', 20, NULL, 'author_id', '1', '3', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(122, 'Botble\\Blog\\Models\\Post', 20, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(123, 'Botble\\Blog\\Models\\Post', 21, NULL, 'author_id', '1', '7', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(124, 'Botble\\Blog\\Models\\Post', 21, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(125, 'Botble\\Blog\\Models\\Post', 22, NULL, 'author_id', '1', '5', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(126, 'Botble\\Blog\\Models\\Post', 22, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(127, 'Botble\\Blog\\Models\\Post', 23, NULL, 'author_id', '1', '8', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(128, 'Botble\\Blog\\Models\\Post', 23, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(129, 'Botble\\Blog\\Models\\Post', 24, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(130, 'Botble\\Blog\\Models\\Post', 25, NULL, 'author_id', '1', '7', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(131, 'Botble\\Blog\\Models\\Post', 25, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(132, 'Botble\\Blog\\Models\\Post', 26, NULL, 'author_id', '1', '3', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(133, 'Botble\\Blog\\Models\\Post', 26, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(134, 'Botble\\Blog\\Models\\Post', 27, NULL, 'author_id', '1', '9', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(135, 'Botble\\Blog\\Models\\Post', 27, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(136, 'Botble\\Blog\\Models\\Post', 28, NULL, 'author_id', '1', '3', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(137, 'Botble\\Blog\\Models\\Post', 28, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(138, 'Botble\\Blog\\Models\\Post', 29, NULL, 'author_id', '1', '10', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(139, 'Botble\\Blog\\Models\\Post', 29, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(140, 'Botble\\Blog\\Models\\Post', 30, NULL, 'author_id', '1', '10', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(141, 'Botble\\Blog\\Models\\Post', 30, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(142, 'Botble\\Blog\\Models\\Post', 31, NULL, 'author_id', '1', '9', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(143, 'Botble\\Blog\\Models\\Post', 31, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(144, 'Botble\\Blog\\Models\\Post', 32, NULL, 'author_id', '1', '2', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(145, 'Botble\\Blog\\Models\\Post', 32, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(146, 'Botble\\Blog\\Models\\Post', 33, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(147, 'Botble\\Blog\\Models\\Post', 34, NULL, 'author_id', '1', '4', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(148, 'Botble\\Blog\\Models\\Post', 34, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(149, 'Botble\\Blog\\Models\\Post', 35, NULL, 'author_id', '1', '2', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(150, 'Botble\\Blog\\Models\\Post', 35, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(151, 'Botble\\Blog\\Models\\Post', 36, NULL, 'author_id', '1', '9', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(152, 'Botble\\Blog\\Models\\Post', 36, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(153, 'Botble\\Blog\\Models\\Post', 37, NULL, 'author_id', '1', '9', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(154, 'Botble\\Blog\\Models\\Post', 37, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(155, 'Botble\\Blog\\Models\\Post', 38, NULL, 'author_id', '1', '5', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(156, 'Botble\\Blog\\Models\\Post', 38, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(157, 'Botble\\Blog\\Models\\Post', 39, NULL, 'author_id', '1', '6', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(158, 'Botble\\Blog\\Models\\Post', 39, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(232, 'Botble\\Blog\\Models\\Post', 79, NULL, 'author_id', '1', '6', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(233, 'Botble\\Blog\\Models\\Post', 79, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(234, 'Botble\\Blog\\Models\\Post', 80, NULL, 'author_id', '1', '7', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(235, 'Botble\\Blog\\Models\\Post', 80, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Author\\Models\\Author', '2021-04-07 04:20:23', '2021-04-07 04:20:23'),
(240, 'Botble\\Blog\\Models\\Post', 1, NULL, 'author_id', '2', '5', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(241, 'Botble\\Blog\\Models\\Post', 3, NULL, 'author_id', '5', '9', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(242, 'Botble\\Blog\\Models\\Post', 5, NULL, 'author_id', '10', '3', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(243, 'Botble\\Blog\\Models\\Post', 6, NULL, 'author_id', '3', '1', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(244, 'Botble\\Blog\\Models\\Post', 7, NULL, 'author_id', '3', '10', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(245, 'Botble\\Blog\\Models\\Post', 8, NULL, 'author_id', '8', '6', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(246, 'Botble\\Blog\\Models\\Post', 10, NULL, 'author_id', '2', '5', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(247, 'Botble\\Blog\\Models\\Post', 11, NULL, 'author_id', '6', '5', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(248, 'Botble\\Blog\\Models\\Post', 12, NULL, 'author_id', '5', '6', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(249, 'Botble\\Blog\\Models\\Post', 13, NULL, 'author_id', '6', '5', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(250, 'Botble\\Blog\\Models\\Post', 14, NULL, 'author_id', '10', '1', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(251, 'Botble\\Blog\\Models\\Post', 15, NULL, 'author_id', '6', '10', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(252, 'Botble\\Blog\\Models\\Post', 16, NULL, 'author_id', '5', '8', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(253, 'Botble\\Blog\\Models\\Post', 17, NULL, 'author_id', '5', '10', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(254, 'Botble\\Blog\\Models\\Post', 18, NULL, 'author_id', '6', '4', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(255, 'Botble\\Blog\\Models\\Post', 19, NULL, 'author_id', '4', '3', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(256, 'Botble\\Blog\\Models\\Post', 20, NULL, 'author_id', '3', '9', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(257, 'Botble\\Blog\\Models\\Post', 21, NULL, 'author_id', '7', '2', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(258, 'Botble\\Blog\\Models\\Post', 23, NULL, 'author_id', '8', '9', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(259, 'Botble\\Blog\\Models\\Post', 24, NULL, 'author_id', '1', '2', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(260, 'Botble\\Blog\\Models\\Post', 26, NULL, 'author_id', '3', '6', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(261, 'Botble\\Blog\\Models\\Post', 27, NULL, 'author_id', '9', '7', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(262, 'Botble\\Blog\\Models\\Post', 28, NULL, 'author_id', '3', '5', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(263, 'Botble\\Blog\\Models\\Post', 29, NULL, 'author_id', '10', '2', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(264, 'Botble\\Blog\\Models\\Post', 30, NULL, 'author_id', '10', '4', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(265, 'Botble\\Blog\\Models\\Post', 31, NULL, 'author_id', '9', '1', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(266, 'Botble\\Blog\\Models\\Post', 32, NULL, 'author_id', '2', '10', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(267, 'Botble\\Blog\\Models\\Post', 34, NULL, 'author_id', '4', '10', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(268, 'Botble\\Blog\\Models\\Post', 35, NULL, 'author_id', '2', '6', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(269, 'Botble\\Blog\\Models\\Post', 36, NULL, 'author_id', '9', '8', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(270, 'Botble\\Blog\\Models\\Post', 37, NULL, 'author_id', '9', '2', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(271, 'Botble\\Blog\\Models\\Post', 38, NULL, 'author_id', '5', '8', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(272, 'Botble\\Blog\\Models\\Post', 39, NULL, 'author_id', '6', '1', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(308, 'Botble\\Blog\\Models\\Post', 79, NULL, 'author_id', '6', '3', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(309, 'Botble\\Blog\\Models\\Post', 80, NULL, 'author_id', '7', '3', '2021-05-28 20:27:22', '2021-05-28 20:27:22'),
(312, 'Botble\\Blog\\Models\\Post', 1, NULL, 'author_id', '5', '6', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(313, 'Botble\\Blog\\Models\\Post', 3, NULL, 'author_id', '9', '3', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(314, 'Botble\\Blog\\Models\\Post', 4, NULL, 'author_id', '4', '1', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(315, 'Botble\\Blog\\Models\\Post', 5, NULL, 'author_id', '3', '2', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(316, 'Botble\\Blog\\Models\\Post', 6, NULL, 'author_id', '1', '6', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(317, 'Botble\\Blog\\Models\\Post', 8, NULL, 'author_id', '6', '7', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(318, 'Botble\\Blog\\Models\\Post', 11, NULL, 'author_id', '5', '8', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(319, 'Botble\\Blog\\Models\\Post', 12, NULL, 'author_id', '6', '3', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(320, 'Botble\\Blog\\Models\\Post', 13, NULL, 'author_id', '5', '1', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(321, 'Botble\\Blog\\Models\\Post', 14, NULL, 'author_id', '1', '9', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(322, 'Botble\\Blog\\Models\\Post', 15, NULL, 'author_id', '10', '5', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(323, 'Botble\\Blog\\Models\\Post', 16, NULL, 'author_id', '8', '9', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(324, 'Botble\\Blog\\Models\\Post', 17, NULL, 'author_id', '10', '7', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(325, 'Botble\\Blog\\Models\\Post', 18, NULL, 'author_id', '4', '10', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(326, 'Botble\\Blog\\Models\\Post', 19, NULL, 'author_id', '3', '6', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(327, 'Botble\\Blog\\Models\\Post', 20, NULL, 'author_id', '9', '10', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(328, 'Botble\\Blog\\Models\\Post', 21, NULL, 'author_id', '2', '1', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(329, 'Botble\\Blog\\Models\\Post', 22, NULL, 'author_id', '5', '10', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(330, 'Botble\\Blog\\Models\\Post', 23, NULL, 'author_id', '9', '10', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(331, 'Botble\\Blog\\Models\\Post', 24, NULL, 'author_id', '2', '4', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(332, 'Botble\\Blog\\Models\\Post', 26, NULL, 'author_id', '6', '1', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(333, 'Botble\\Blog\\Models\\Post', 27, NULL, 'author_id', '7', '5', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(334, 'Botble\\Blog\\Models\\Post', 28, NULL, 'author_id', '5', '7', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(335, 'Botble\\Blog\\Models\\Post', 29, NULL, 'author_id', '2', '4', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(336, 'Botble\\Blog\\Models\\Post', 30, NULL, 'author_id', '4', '5', '2021-07-04 06:34:19', '2021-07-04 06:34:19'),
(337, 'Botble\\Blog\\Models\\Post', 31, NULL, 'author_id', '1', '9', '2021-07-04 06:34:20', '2021-07-04 06:34:20'),
(338, 'Botble\\Blog\\Models\\Post', 32, NULL, 'author_id', '10', '3', '2021-07-04 06:34:20', '2021-07-04 06:34:20'),
(339, 'Botble\\Blog\\Models\\Post', 33, NULL, 'author_id', '1', '9', '2021-07-04 06:34:20', '2021-07-04 06:34:20'),
(340, 'Botble\\Blog\\Models\\Post', 34, NULL, 'author_id', '10', '9', '2021-07-04 06:34:20', '2021-07-04 06:34:20'),
(341, 'Botble\\Blog\\Models\\Post', 35, NULL, 'author_id', '6', '5', '2021-07-04 06:34:20', '2021-07-04 06:34:20'),
(342, 'Botble\\Blog\\Models\\Post', 36, NULL, 'author_id', '8', '3', '2021-07-04 06:34:20', '2021-07-04 06:34:20'),
(343, 'Botble\\Blog\\Models\\Post', 37, NULL, 'author_id', '2', '9', '2021-07-04 06:34:20', '2021-07-04 06:34:20'),
(344, 'Botble\\Blog\\Models\\Post', 38, NULL, 'author_id', '8', '10', '2021-07-04 06:34:20', '2021-07-04 06:34:20'),
(382, 'Botble\\Blog\\Models\\Post', 79, NULL, 'author_id', '3', '5', '2021-07-04 06:34:20', '2021-07-04 06:34:20'),
(383, 'Botble\\Blog\\Models\\Post', 80, NULL, 'author_id', '3', '7', '2021-07-04 06:34:20', '2021-07-04 06:34:20'),
(386, 'Botble\\Blog\\Models\\Post', 1, NULL, 'image', 'news/f268e846-9e0c-4d82-8864-b1a6453b5e9b.jpg', 'news/1.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(387, 'Botble\\Blog\\Models\\Post', 2, NULL, 'image', 'news/da28be4b-570f-400a-a95b-770225246782.jpg', 'news/2.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(388, 'Botble\\Blog\\Models\\Post', 3, NULL, 'image', 'news/140bceaa-cfd9-4b3b-84a2-79db4b2971ed.jpg', 'news/3.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(389, 'Botble\\Blog\\Models\\Post', 4, NULL, 'image', 'news/2f99e800-a51f-46d9-a573-5c8ff42f8e2c.jpg', 'news/4.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(390, 'Botble\\Blog\\Models\\Post', 5, NULL, 'image', 'news/183d2958-33a0-475f-b929-496a6fb07b1e.jpg', 'news/5.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(391, 'Botble\\Blog\\Models\\Post', 6, NULL, 'image', 'news/b945fefb-242e-4110-8f1a-d307d552c7e4.jpg', 'news/6.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(392, 'Botble\\Blog\\Models\\Post', 7, NULL, 'image', 'news/65fb79e9-4829-4a3b-b65c-d18969c73c48.jpg', 'news/7.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(393, 'Botble\\Blog\\Models\\Post', 8, NULL, 'image', 'news/cd3cd533-5d1a-41c6-be8b-56151bd967d5.jpg', 'news/8.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(394, 'Botble\\Blog\\Models\\Post', 9, NULL, 'image', 'news/f268e846-9e0c-4d82-8864-b1a6453b5e9b.jpg', 'news/9.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(395, 'Botble\\Blog\\Models\\Post', 10, NULL, 'image', 'news/2f99e800-a51f-46d9-a573-5c8ff42f8e2c.jpg', 'news/10.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(396, 'Botble\\Blog\\Models\\Post', 11, NULL, 'image', 'news/3f142d09-da0b-4975-8713-4248000d3d69.jpg', 'news/11.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(397, 'Botble\\Blog\\Models\\Post', 12, NULL, 'image', 'news/243e4893-8d1c-4712-8673-c5344bd0e32f.jpg', 'news/12.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(398, 'Botble\\Blog\\Models\\Post', 13, NULL, 'image', 'news/c55816fc-63a0-4a14-b30d-a0a179301521.jpg', 'news/13.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(399, 'Botble\\Blog\\Models\\Post', 14, NULL, 'image', 'news/4e93edb4-d07c-40f1-b9b0-f9482a6e83b7.jpg', 'news/14.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(400, 'Botble\\Blog\\Models\\Post', 15, NULL, 'image', 'news/79390942-39f0-4b56-9014-6a667ec4c30b.jpg', 'news/15.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(401, 'Botble\\Blog\\Models\\Post', 16, NULL, 'image', 'news/772e973b-21c6-43f2-8351-0e5f2ad0318e.jpg', 'news/16.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(402, 'Botble\\Blog\\Models\\Post', 17, NULL, 'image', 'news/aa62b952-f93d-499f-973a-29189f2f3c29.jpg', 'news/17.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(403, 'Botble\\Blog\\Models\\Post', 18, NULL, 'image', 'news/985233aa-fc01-490c-8dcf-6a54d186292b.jpg', 'news/18.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(404, 'Botble\\Blog\\Models\\Post', 19, NULL, 'image', 'news/55776554-d137-45f6-b88b-f27a0962a97f.jpg', 'news/19.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(405, 'Botble\\Blog\\Models\\Post', 20, NULL, 'image', 'news/cc862858-6b9a-461f-bf1d-44ccf61ad38a.jpg', 'news/20.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(406, 'Botble\\Blog\\Models\\Post', 21, NULL, 'image', 'news/30ae445b-580f-4f5a-b8e5-7d49214451bc.jpg', 'news/21.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(407, 'Botble\\Blog\\Models\\Post', 22, NULL, 'image', 'news/3c1d4932-0c3e-4505-b2e6-1b3c95d52317.jpg', 'news/22.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(408, 'Botble\\Blog\\Models\\Post', 23, NULL, 'image', 'news/f09959ce-b2b3-441a-a74a-d5748853ecb4.jpg', 'news/23.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(409, 'Botble\\Blog\\Models\\Post', 24, NULL, 'image', 'news/1aa9d1a0-4b5f-4b86-b04c-8f61af20040c.jpg', 'news/24.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(410, 'Botble\\Blog\\Models\\Post', 25, NULL, 'image', 'news/4b975e74-75ac-4b98-9ae0-0292c725f2cd.JPG', 'news/25.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(411, 'Botble\\Blog\\Models\\Post', 26, NULL, 'image', 'news/5c56faba-ff10-45db-bfe6-c623e6903eae.jpg', 'news/26.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(412, 'Botble\\Blog\\Models\\Post', 27, NULL, 'image', 'news/816be9ec-8bba-41fc-89e2-2fb45715936d.jpg', 'news/27.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(413, 'Botble\\Blog\\Models\\Post', 28, NULL, 'image', 'news/7762c3b2-9b83-41a2-9179-46812bf91211.jpg', 'news/28.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(414, 'Botble\\Blog\\Models\\Post', 29, NULL, 'image', 'news/cd8d8c05-a1d8-461d-a1fa-8165ccd0f745.jpg', 'news/29.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(415, 'Botble\\Blog\\Models\\Post', 30, NULL, 'image', 'news/0f1b387e-6e88-48bc-9c7d-ea78c7ddce21.jpg', 'news/30.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(416, 'Botble\\Blog\\Models\\Post', 31, NULL, 'image', 'news/ce14f5dd-0ab8-4186-a181-51b2d216f26a.jpg', 'news/31.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(417, 'Botble\\Blog\\Models\\Post', 32, NULL, 'image', 'news/dec37993-b6a6-45ca-b0d3-fc5236bd0b2f.jpg', 'news/32.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(418, 'Botble\\Blog\\Models\\Post', 33, NULL, 'image', 'news/47577df9-01e7-4d38-a3b4-cb755992f2a3.jpg', 'news/33.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(419, 'Botble\\Blog\\Models\\Post', 34, NULL, 'image', 'news/8b174039-011e-4479-a5c6-1b477312079f.jpg', 'news/34.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(420, 'Botble\\Blog\\Models\\Post', 35, NULL, 'image', 'news/e031f8f8-2718-418d-b48e-2bbc62967988.jpg', 'news/35.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(421, 'Botble\\Blog\\Models\\Post', 36, NULL, 'image', 'news/1a393f32-f4ca-4669-a842-167091b077ee.jpg', 'news/36.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(422, 'Botble\\Blog\\Models\\Post', 37, NULL, 'image', 'news/ce56a1b8-d794-40b4-8a5d-9e296e7f1d82.jpg', 'news/37.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(423, 'Botble\\Blog\\Models\\Post', 38, NULL, 'image', 'news/d4740a45-5df8-4572-a664-883d5d3e7a11.jpg', 'news/38.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(424, 'Botble\\Blog\\Models\\Post', 39, NULL, 'image', 'news/772e973b-21c6-43f2-8351-0e5f2ad0318e.jpg', 'news/39.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(464, 'Botble\\Blog\\Models\\Post', 79, NULL, 'image', 'news/b945fefb-242e-4110-8f1a-d307d552c7e4.jpg', 'news/39.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(465, 'Botble\\Blog\\Models\\Post', 80, NULL, 'image', 'news/cc862858-6b9a-461f-bf1d-44ccf61ad38a.jpg', 'news/40.jpg', '2021-07-04 06:34:43', '2021-07-04 06:34:43'),
(468, 'Botble\\Blog\\Models\\Post', 1, NULL, 'author_id', '6', '9', '2021-12-04 05:14:50', '2021-12-04 05:14:50'),
(469, 'Botble\\Blog\\Models\\Post', 2, NULL, 'author_id', '3', '2', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(470, 'Botble\\Blog\\Models\\Post', 3, NULL, 'author_id', '3', '1', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(471, 'Botble\\Blog\\Models\\Post', 4, NULL, 'author_id', '1', '9', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(472, 'Botble\\Blog\\Models\\Post', 5, NULL, 'author_id', '2', '9', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(473, 'Botble\\Blog\\Models\\Post', 6, NULL, 'author_id', '6', '4', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(474, 'Botble\\Blog\\Models\\Post', 7, NULL, 'author_id', '10', '9', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(475, 'Botble\\Blog\\Models\\Post', 8, NULL, 'author_id', '7', '3', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(476, 'Botble\\Blog\\Models\\Post', 9, NULL, 'author_id', '8', '2', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(477, 'Botble\\Blog\\Models\\Post', 10, NULL, 'author_id', '5', '6', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(478, 'Botble\\Blog\\Models\\Post', 11, NULL, 'author_id', '8', '3', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(479, 'Botble\\Blog\\Models\\Post', 12, NULL, 'author_id', '3', '1', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(480, 'Botble\\Blog\\Models\\Post', 13, NULL, 'author_id', '1', '3', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(481, 'Botble\\Blog\\Models\\Post', 14, NULL, 'author_id', '9', '1', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(482, 'Botble\\Blog\\Models\\Post', 15, NULL, 'author_id', '5', '3', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(483, 'Botble\\Blog\\Models\\Post', 16, NULL, 'author_id', '9', '3', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(484, 'Botble\\Blog\\Models\\Post', 17, NULL, 'author_id', '7', '9', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(485, 'Botble\\Blog\\Models\\Post', 18, NULL, 'author_id', '10', '2', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(486, 'Botble\\Blog\\Models\\Post', 19, NULL, 'author_id', '6', '7', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(487, 'Botble\\Blog\\Models\\Post', 20, NULL, 'author_id', '10', '5', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(488, 'Botble\\Blog\\Models\\Post', 21, NULL, 'author_id', '1', '7', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(489, 'Botble\\Blog\\Models\\Post', 22, NULL, 'author_id', '10', '9', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(490, 'Botble\\Blog\\Models\\Post', 23, NULL, 'author_id', '10', '1', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(491, 'Botble\\Blog\\Models\\Post', 24, NULL, 'author_id', '4', '5', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(492, 'Botble\\Blog\\Models\\Post', 25, NULL, 'author_id', '7', '5', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(493, 'Botble\\Blog\\Models\\Post', 27, NULL, 'author_id', '5', '4', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(494, 'Botble\\Blog\\Models\\Post', 28, NULL, 'author_id', '7', '10', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(495, 'Botble\\Blog\\Models\\Post', 29, NULL, 'author_id', '4', '2', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(496, 'Botble\\Blog\\Models\\Post', 30, NULL, 'author_id', '5', '3', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(497, 'Botble\\Blog\\Models\\Post', 31, NULL, 'author_id', '9', '6', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(498, 'Botble\\Blog\\Models\\Post', 32, NULL, 'author_id', '3', '2', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(499, 'Botble\\Blog\\Models\\Post', 33, NULL, 'author_id', '9', '7', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(500, 'Botble\\Blog\\Models\\Post', 34, NULL, 'author_id', '9', '4', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(501, 'Botble\\Blog\\Models\\Post', 35, NULL, 'author_id', '5', '8', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(502, 'Botble\\Blog\\Models\\Post', 38, NULL, 'author_id', '10', '8', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(503, 'Botble\\Blog\\Models\\Post', 39, NULL, 'author_id', '1', '2', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(535, 'Botble\\Blog\\Models\\Post', 80, NULL, 'author_id', '7', '8', '2021-12-04 05:14:51', '2021-12-04 05:14:51'),
(8339, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '2', '10', '2024-04-29 02:00:42', '2024-04-29 02:00:42'),
(8345, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '5', '3', '2024-04-29 02:00:42', '2024-04-29 02:00:42'),
(8359, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '2', '3', '2024-04-29 02:00:42', '2024-04-29 02:00:42'),
(8363, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '2', '6', '2024-04-29 02:00:42', '2024-04-29 02:00:42'),
(8370, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '9', '10', '2024-04-29 02:00:42', '2024-04-29 02:00:42'),
(8374, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '1', '8', '2024-05-01 21:02:35', '2024-05-01 21:02:35'),
(8377, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '10', '4', '2024-05-01 21:02:35', '2024-05-01 21:02:35'),
(8382, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '2', '4', '2024-05-01 21:02:35', '2024-05-01 21:02:35'),
(8383, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '3', '4', '2024-05-01 21:02:35', '2024-05-01 21:02:35'),
(8393, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '8', '3', '2024-05-01 21:02:35', '2024-05-01 21:02:35'),
(8397, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '3', '4', '2024-05-01 21:02:35', '2024-05-01 21:02:35'),
(8398, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '1', '8', '2024-05-01 21:02:35', '2024-05-01 21:02:35'),
(8401, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '6', '10', '2024-05-01 21:02:35', '2024-05-01 21:02:35'),
(8406, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '10', '5', '2024-05-01 21:02:35', '2024-05-01 21:02:35'),
(8409, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '10', '9', '2024-05-01 21:02:35', '2024-05-01 21:02:35'),
(8410, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '2', '1', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8414, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '8', '4', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8415, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '8', '2', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8416, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '7', '6', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8421, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '4', '10', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8422, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '4', '9', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8423, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '3', '8', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8427, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '3', '10', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8430, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '10', '3', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8431, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '3', '8', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8435, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '4', '5', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8436, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '8', '3', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8437, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '9', '4', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8439, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '10', '5', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8444, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '9', '2', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8445, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '5', '8', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8447, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '9', '3', '2024-05-10 03:05:27', '2024-05-10 03:05:27'),
(8448, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '1', '6', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8451, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '4', '7', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8452, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '2', '5', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8453, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '6', '3', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8454, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '4', '10', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8455, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '10', '3', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8457, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '6', '10', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8458, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '2', '6', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8459, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '9', '1', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8460, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '8', '6', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8464, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '4', '3', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8465, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '5', '9', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8466, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '4', '10', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8467, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '3', '6', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8469, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '8', '1', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8471, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '5', '6', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8472, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '4', '7', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8474, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '5', '1', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8477, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '7', '5', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8479, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '2', '7', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8480, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '8', '10', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8481, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '6', '8', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8482, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '3', '4', '2024-05-13 01:11:11', '2024-05-13 01:11:11'),
(8483, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '6', '2', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8485, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '3', '7', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8486, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '2', '7', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8487, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '7', '4', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8488, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '5', '8', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8489, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '3', '5', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8490, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '10', '7', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8491, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '3', '5', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8493, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '10', '6', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8494, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '6', '5', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8495, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '10', '1', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8496, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '1', '7', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8497, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '6', '10', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8498, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '6', '1', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8499, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '2', '5', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8500, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '8', '6', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8501, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '10', '6', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8502, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '9', '2', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8503, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '10', '9', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8504, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '6', '3', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8505, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '8', '1', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8506, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '2', '6', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8507, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '1', '2', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8509, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '6', '7', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8510, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '3', '7', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8511, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '7', '8', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8512, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '7', '9', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8513, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '1', '4', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8515, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '9', '8', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8516, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '5', '8', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8517, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '6', '3', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8518, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '7', '1', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8519, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '10', '9', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8520, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '8', '5', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8521, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '4', '3', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8522, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '3', '6', '2024-05-13 21:20:55', '2024-05-13 21:20:55'),
(8523, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '2', '10', '2024-05-14 02:17:16', '2024-05-14 02:17:16'),
(8524, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '3', '7', '2024-05-14 02:17:16', '2024-05-14 02:17:16'),
(8525, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '7', '5', '2024-05-14 02:17:16', '2024-05-14 02:17:16'),
(8526, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '7', '9', '2024-05-14 02:17:16', '2024-05-14 02:17:16'),
(8527, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '8', '9', '2024-05-14 02:17:16', '2024-05-14 02:17:16'),
(8528, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '5', '3', '2024-05-14 02:17:16', '2024-05-14 02:17:16'),
(8529, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '7', '1', '2024-05-14 02:17:16', '2024-05-14 02:17:16'),
(8530, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '5', '2', '2024-05-14 02:17:16', '2024-05-14 02:17:16'),
(8531, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '2', '3', '2024-05-14 02:17:16', '2024-05-14 02:17:16');
INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(8532, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '6', '7', '2024-05-14 02:17:16', '2024-05-14 02:17:16'),
(8533, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '5', '8', '2024-05-14 02:17:16', '2024-05-14 02:17:16'),
(8534, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '1', '2', '2024-05-14 02:17:16', '2024-05-14 02:17:16'),
(8535, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '7', '1', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8536, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '10', '9', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8537, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '1', '2', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8538, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '5', '8', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8539, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '6', '10', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8540, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '3', '8', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8541, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '6', '4', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8542, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '2', '5', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8543, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '9', '3', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8544, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '3', '9', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8545, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '1', '6', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8546, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '6', '1', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8547, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '2', '3', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8548, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '5', '3', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8549, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '7', '3', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8550, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '8', '9', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8551, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '9', '3', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8552, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '4', '1', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8553, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '6', '8', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8554, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '8', '4', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8555, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '8', '6', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8556, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '3', '7', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8557, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '5', '6', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8558, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '3', '1', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8559, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '6', '3', '2024-05-14 02:17:17', '2024-05-14 02:17:17'),
(8560, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '7', '1', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8561, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '5', '9', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8562, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '9', '7', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8563, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '9', '8', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8564, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '3', '1', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8565, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '1', '4', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8566, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '2', '5', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8567, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '3', '10', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8568, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '7', '8', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8569, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '8', '3', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8570, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '2', '8', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8571, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '1', '7', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8572, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '2', '1', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8573, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '8', '6', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8574, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '10', '5', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8575, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '4', '6', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8576, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '5', '7', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8577, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '3', '4', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8578, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '9', '1', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8579, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '6', '8', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8580, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '1', '9', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8581, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '3', '1', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8582, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '3', '10', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8583, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '7', '2', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8584, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '3', '5', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8585, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '9', '5', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8586, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '3', '2', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8587, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '1', '5', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8588, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '8', '2', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8589, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '4', '3', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8590, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '6', '4', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8591, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '7', '2', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8592, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '1', '8', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8593, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '9', '1', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8594, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '6', '8', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8595, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '1', '3', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8596, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '3', '9', '2024-05-14 02:29:18', '2024-05-14 02:29:18'),
(8597, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '10', '4', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8598, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '1', '7', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8599, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '9', '5', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8600, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '7', '10', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8601, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '4', '5', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8602, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '8', '3', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8603, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '1', '9', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8604, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '4', '6', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8605, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '10', '2', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8606, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '3', '10', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8607, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '8', '6', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8608, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '7', '2', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8609, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '9', '8', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8610, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '1', '2', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8611, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '6', '4', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8612, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '5', '7', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8613, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '8', '1', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8614, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '6', '5', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8615, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '7', '6', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8616, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '4', '7', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8617, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '1', '3', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8618, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '8', '4', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8619, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '9', '8', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8620, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '1', '7', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8621, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '10', '4', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8622, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '2', '7', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8623, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '5', '6', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8624, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '5', '7', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8625, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '2', '8', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8626, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '2', '1', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8627, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '4', '9', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8628, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '2', '5', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8629, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '8', '9', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8630, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '1', '5', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8631, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '3', '2', '2024-05-22 23:38:24', '2024-05-22 23:38:24'),
(8632, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '4', '9', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8633, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '7', '10', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8634, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '5', '3', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8635, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '10', '3', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8636, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '5', '9', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8637, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '3', '2', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8638, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '9', '10', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8639, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '6', '1', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8640, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '5', '8', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8641, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '2', '4', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8642, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '8', '7', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8643, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '10', '1', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8644, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '6', '3', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8645, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '2', '7', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8646, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '8', '1', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8647, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '2', '1', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8648, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '4', '1', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8649, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '7', '4', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8650, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '1', '3', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8651, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '5', '4', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8652, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '6', '8', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8653, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '7', '8', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8654, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '3', '1', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8655, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '4', '3', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8656, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '8', '9', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8657, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '7', '1', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8658, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '4', '2', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8659, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '7', '8', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8660, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '6', '4', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8661, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '7', '10', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8662, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '8', '3', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8663, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '5', '10', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8664, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '1', '8', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8665, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '3', '7', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8666, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '9', '1', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8667, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '5', '9', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8668, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '9', '3', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8669, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '5', '3', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8670, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '8', '9', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8671, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '9', '1', '2024-05-24 01:14:03', '2024-05-24 01:14:03'),
(8672, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '9', '4', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8673, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '10', '3', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8674, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '3', '6', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8675, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '3', '6', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8676, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '9', '1', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8677, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '2', '5', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8678, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '10', '7', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8679, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '1', '2', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8680, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '8', '10', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8681, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '4', '3', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8682, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '7', '2', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8683, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '1', '2', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8684, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '1', '4', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8685, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '1', '8', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8686, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '1', '3', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8687, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '4', '2', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8688, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '3', '8', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8689, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '4', '8', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8690, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '8', '9', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8691, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '8', '4', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8692, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '1', '3', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8693, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '9', '3', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8694, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '2', '1', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8695, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '8', '10', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8696, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '4', '9', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8697, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '3', '10', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8698, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '8', '1', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8699, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '7', '9', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8700, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '1', '3', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8701, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '9', '6', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8702, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '3', '1', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8703, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '3', '8', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8704, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '9', '7', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8705, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '2', '7', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8706, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '1', '7', '2024-05-24 03:49:28', '2024-05-24 03:49:28'),
(8707, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '4', '5', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8708, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '3', '5', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8709, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '6', '2', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8710, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '6', '9', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8711, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '1', '7', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8712, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '5', '6', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8713, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '2', '8', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8714, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '10', '5', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8715, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '3', '1', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8716, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '2', '7', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8717, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '2', '10', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8718, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '7', '3', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8719, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '4', '1', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8720, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '8', '4', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8721, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '3', '1', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8722, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '2', '5', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8723, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '8', '4', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8724, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '8', '1', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8725, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '9', '3', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8726, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '4', '10', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8727, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '3', '1', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8728, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '3', '1', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8729, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '1', '2', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8730, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '1', '6', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8731, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '10', '4', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8732, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '9', '8', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8733, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '10', '5', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8734, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '10', '7', '2024-05-27 00:54:54', '2024-05-27 00:54:54'),
(8735, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '10', '4', '2024-05-27 00:54:55', '2024-05-27 00:54:55'),
(8736, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '1', '3', '2024-05-27 00:54:55', '2024-05-27 00:54:55'),
(8737, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '9', '10', '2024-05-27 00:54:55', '2024-05-27 00:54:55'),
(8738, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '3', '8', '2024-05-27 00:54:55', '2024-05-27 00:54:55'),
(8739, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '6', '3', '2024-05-27 00:54:55', '2024-05-27 00:54:55'),
(8740, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '8', '1', '2024-05-27 00:54:55', '2024-05-27 00:54:55'),
(8741, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '7', '4', '2024-05-27 00:54:55', '2024-05-27 00:54:55'),
(8742, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '7', '3', '2024-05-27 00:54:55', '2024-05-27 00:54:55'),
(8743, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '5', '2', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8744, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '5', '4', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8745, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '2', '10', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8746, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '9', '4', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8747, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '6', '3', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8748, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '7', '3', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8749, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '8', '7', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8750, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '5', '2', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8751, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '1', '5', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8752, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '7', '5', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8753, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '10', '5', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8754, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '3', '7', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8755, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '3', '1', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8756, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '4', '6', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8757, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '1', '8', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8758, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '5', '3', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8759, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '4', '10', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8760, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '3', '10', '2024-05-27 02:18:12', '2024-05-27 02:18:12'),
(8761, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '1', '6', '2024-05-27 02:18:13', '2024-05-27 02:18:13'),
(8762, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '3', '1', '2024-05-27 02:18:13', '2024-05-27 02:18:13'),
(8763, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '1', '10', '2024-05-27 02:18:13', '2024-05-27 02:18:13'),
(8764, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '2', '3', '2024-05-27 02:18:13', '2024-05-27 02:18:13'),
(8765, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '6', '5', '2024-05-27 02:18:13', '2024-05-27 02:18:13'),
(8766, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '8', '2', '2024-05-27 02:18:13', '2024-05-27 02:18:13'),
(8767, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '5', '6', '2024-05-27 02:18:13', '2024-05-27 02:18:13'),
(8768, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '7', '5', '2024-05-27 02:18:13', '2024-05-27 02:18:13'),
(8769, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '4', '3', '2024-05-27 02:18:13', '2024-05-27 02:18:13'),
(8770, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '3', '4', '2024-05-27 02:18:13', '2024-05-27 02:18:13'),
(8771, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '10', '4', '2024-05-27 02:18:13', '2024-05-27 02:18:13'),
(8772, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '8', '10', '2024-05-27 02:18:14', '2024-05-27 02:18:14'),
(8773, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '3', '4', '2024-05-27 02:18:14', '2024-05-27 02:18:14'),
(8774, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '1', '2', '2024-05-27 02:18:14', '2024-05-27 02:18:14'),
(8775, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '1', '7', '2024-05-27 02:18:15', '2024-05-27 02:18:15'),
(8776, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '3', '7', '2024-05-27 02:18:15', '2024-05-27 02:18:15'),
(8777, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '7', '9', '2024-05-27 02:18:15', '2024-05-27 02:18:15'),
(8778, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '2', '3', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8779, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '4', '5', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8780, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '10', '5', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8781, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '4', '9', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8782, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '7', '3', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8783, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '3', '4', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8784, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '3', '2', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8785, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '7', '2', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8786, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '2', '1', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8787, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '5', '10', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8788, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '5', '3', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8789, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '7', '4', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8790, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '1', '6', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8791, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '1', '6', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8792, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '6', '10', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8793, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '8', '3', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8794, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '3', '8', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8795, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '10', '3', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8796, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '1', '9', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8797, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '10', '3', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8798, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '10', '3', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8799, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '6', '10', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8800, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '1', '10', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8801, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '10', '7', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8802, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '3', '4', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8803, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '5', '2', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8804, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '4', '10', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8805, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '6', '3', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8806, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '5', '7', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8807, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '3', '7', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8808, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '4', '6', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8809, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '4', '2', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8810, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '10', '9', '2024-05-27 21:29:36', '2024-05-27 21:29:36'),
(8811, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '4', '2', '2024-05-27 21:29:37', '2024-05-27 21:29:37'),
(8812, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '2', '8', '2024-05-27 21:29:37', '2024-05-27 21:29:37'),
(8813, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '4', '8', '2024-05-27 21:29:37', '2024-05-27 21:29:37'),
(8814, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '7', '2', '2024-05-27 21:29:37', '2024-05-27 21:29:37'),
(8815, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '9', '6', '2024-05-27 21:29:37', '2024-05-27 21:29:37'),
(8816, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '5', '3', '2024-05-28 03:00:02', '2024-05-28 03:00:02'),
(8817, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '5', '10', '2024-05-28 03:00:02', '2024-05-28 03:00:02'),
(8818, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '9', '1', '2024-05-28 03:00:02', '2024-05-28 03:00:02'),
(8819, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '3', '4', '2024-05-28 03:00:02', '2024-05-28 03:00:02'),
(8820, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '1', '3', '2024-05-28 03:00:02', '2024-05-28 03:00:02'),
(8821, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '10', '1', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8822, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '3', '8', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8823, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '5', '7', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8824, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '4', '1', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8825, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '6', '4', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8826, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '6', '2', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8827, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '10', '6', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8828, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '3', '4', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8829, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '8', '6', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8830, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '3', '10', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8831, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '9', '4', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8832, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '3', '9', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8833, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '10', '9', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8834, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '10', '6', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8835, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '7', '8', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8836, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '4', '3', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8837, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '2', '8', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8838, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '3', '2', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8839, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '7', '6', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8840, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '7', '3', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8841, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '6', '1', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8842, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '2', '9', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8843, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '9', '4', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8844, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '2', '7', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8845, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '7', '3', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8846, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '8', '2', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8847, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '6', '3', '2024-05-28 03:00:03', '2024-05-28 03:00:03'),
(8848, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '3', '10', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8849, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '3', '7', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8850, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '10', '4', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8851, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '1', '7', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8852, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '4', '6', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8853, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '2', '9', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8854, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '2', '5', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8855, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '3', '4', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8856, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '1', '8', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8857, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '7', '3', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8858, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '1', '6', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8859, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '2', '4', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8860, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '6', '1', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8861, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '4', '8', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8862, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '6', '3', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8863, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '10', '9', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8864, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '4', '10', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8865, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '3', '6', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8866, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '9', '1', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8867, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '9', '3', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8868, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '6', '4', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8869, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '8', '1', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8870, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '3', '8', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8871, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '8', '2', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8872, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '10', '5', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8873, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '2', '1', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8874, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '2', '3', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8875, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '6', '3', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8876, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '3', '9', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8877, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '1', '8', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8878, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '9', '7', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8879, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '4', '7', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8880, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '7', '8', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8881, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '8', '3', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8882, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '3', '5', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8883, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '2', '4', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8884, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '2', '7', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8885, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '3', '5', '2024-05-28 08:03:06', '2024-05-28 08:03:06'),
(8886, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '10', '3', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8887, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '7', '5', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8888, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '4', '2', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8889, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '7', '10', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8890, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '6', '4', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8891, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '4', '10', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8892, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '5', '1', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8893, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '4', '10', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8894, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '8', '4', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8895, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '8', '3', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8896, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '6', '7', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8897, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '4', '9', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8898, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '1', '9', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8899, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '8', '4', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8900, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '3', '4', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8901, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '9', '1', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8902, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '10', '6', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8903, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '6', '2', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8904, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '1', '4', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8905, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '3', '5', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8906, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '4', '1', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8907, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '1', '5', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8908, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '8', '1', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8909, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '2', '10', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8910, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '5', '6', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8911, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '1', '10', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8912, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '3', '8', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8913, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '3', '5', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8914, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '8', '2', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8915, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '7', '8', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8916, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '7', '6', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8917, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '8', '2', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8918, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '3', '6', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8919, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '5', '8', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8920, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '4', '1', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8921, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '7', '8', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8922, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '5', '10', '2024-05-28 08:33:44', '2024-05-28 08:33:44'),
(8923, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '3', '4', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8924, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '5', '1', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8925, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '2', '9', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8926, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '4', '10', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8927, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '10', '5', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8928, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '9', '1', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8929, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '1', '6', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8930, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '10', '2', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8931, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '4', '10', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8932, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '3', '2', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8933, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '3', '2', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8934, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '7', '8', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8935, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '4', '10', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8936, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '9', '5', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8937, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '4', '10', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8938, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '4', '5', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8939, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '1', '6', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8940, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '6', '10', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8941, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '2', '3', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8942, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '4', '9', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8943, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '5', '6', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8944, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '1', '10', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8945, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '5', '10', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8946, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '1', '3', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8947, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '10', '1', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8948, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '6', '8', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8949, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '10', '6', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8950, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '8', '1', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8951, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '5', '3', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8952, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '9', '2', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8953, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '2', '6', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8954, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '8', '5', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8955, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '6', '10', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8956, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '2', '4', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8957, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '6', '3', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8958, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '8', '5', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8959, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '1', '5', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8960, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '8', '10', '2024-05-29 21:29:17', '2024-05-29 21:29:17'),
(8961, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '4', '7', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8962, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '1', '10', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8963, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '9', '8', '2024-06-19 17:44:07', '2024-06-19 17:44:07');
INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(8964, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '10', '3', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8965, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '10', '7', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8966, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '5', '6', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8967, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '1', '7', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8968, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '6', '9', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8969, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '2', '8', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8970, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '10', '6', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8971, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '2', '10', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8972, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '2', '8', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8973, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '8', '6', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8974, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '10', '7', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8975, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '9', '5', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8976, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '5', '9', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8977, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '10', '7', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8978, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '5', '6', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8979, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '6', '2', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8980, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '10', '4', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8981, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '3', '5', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8982, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '9', '1', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8983, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '6', '3', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8984, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '10', '6', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8985, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '10', '2', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8986, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '3', '9', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8987, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '1', '3', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8988, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '8', '2', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8989, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '6', '10', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8990, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '3', '2', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8991, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '6', '7', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8992, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '5', '1', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8993, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '10', '2', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8994, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '4', '1', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8995, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '3', '1', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8996, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '5', '6', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8997, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '5', '3', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8998, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '10', '2', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(8999, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '10', '8', '2024-06-19 17:44:07', '2024-06-19 17:44:07'),
(9000, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '7', '3', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9001, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '10', '8', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9002, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '8', '4', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9003, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '3', '10', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9004, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '7', '5', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9005, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '6', '3', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9006, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '7', '9', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9007, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '8', '6', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9008, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '6', '10', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9009, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '10', '1', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9010, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '8', '9', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9011, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '6', '3', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9012, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '7', '5', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9013, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '5', '2', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9014, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '9', '4', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9015, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '7', '6', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9016, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '6', '1', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9017, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '2', '8', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9018, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '4', '7', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9019, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '5', '4', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9020, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '1', '7', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9021, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '3', '7', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9022, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '6', '7', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9023, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '2', '1', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9024, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '9', '8', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9025, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '3', '4', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9026, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '2', '8', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9027, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '10', '9', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9028, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '1', '2', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9029, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '2', '7', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9030, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '2', '5', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9031, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '7', '2', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9032, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '1', '2', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9033, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '2', '10', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9034, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '1', '7', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9035, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '1', '4', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9036, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '6', '3', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9037, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '3', '7', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9038, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '2', '6', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9039, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '8', '7', '2024-07-10 19:57:27', '2024-07-10 19:57:27'),
(9040, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '3', '10', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9041, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '8', '2', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9042, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '4', '9', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9043, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '10', '2', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9044, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '5', '6', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9045, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '3', '10', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9046, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '9', '8', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9047, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '10', '8', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9048, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '1', '2', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9049, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '9', '6', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9050, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '3', '7', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9051, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '5', '2', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9052, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '2', '5', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9053, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '4', '7', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9054, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '6', '7', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9055, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '1', '8', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9056, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '8', '9', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9057, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '7', '3', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9058, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '4', '10', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9059, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '7', '2', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9060, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '7', '1', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9061, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '7', '4', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9062, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '1', '5', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9063, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '8', '1', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9064, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '4', '7', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9065, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '8', '5', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9066, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '9', '6', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9067, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '2', '8', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9068, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '7', '9', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9069, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '5', '6', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9070, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '2', '8', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9071, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '2', '7', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9072, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '10', '1', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9073, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '4', '6', '2024-07-10 23:10:41', '2024-07-10 23:10:41'),
(9074, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '3', '8', '2024-07-10 23:10:42', '2024-07-10 23:10:42'),
(9075, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '7', '9', '2024-07-10 23:10:42', '2024-07-10 23:10:42'),
(9076, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '6', '8', '2024-07-10 23:10:42', '2024-07-10 23:10:42'),
(9077, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '7', '4', '2024-07-10 23:10:42', '2024-07-10 23:10:42'),
(9078, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '2', '10', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9079, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '9', '1', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9080, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '2', '9', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9081, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '6', '9', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9082, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '10', '6', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9083, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '8', '10', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9084, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '9', '5', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9085, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '6', '5', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9086, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '8', '9', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9087, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '2', '8', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9088, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '6', '10', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9089, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '7', '2', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9090, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '5', '3', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9091, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '7', '2', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9092, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '7', '2', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9093, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '8', '9', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9094, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '9', '3', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9095, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '3', '1', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9096, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '10', '6', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9097, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '2', '10', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9098, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '4', '10', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9099, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '1', '5', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9100, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '7', '10', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9101, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '5', '8', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9102, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '6', '3', '2024-07-13 08:48:22', '2024-07-13 08:48:22'),
(9103, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '9', '5', '2024-07-13 08:48:23', '2024-07-13 08:48:23'),
(9104, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '6', '10', '2024-07-13 08:48:23', '2024-07-13 08:48:23'),
(9105, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '8', '3', '2024-07-13 08:48:23', '2024-07-13 08:48:23'),
(9106, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '7', '10', '2024-07-13 08:48:23', '2024-07-13 08:48:23'),
(9107, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '1', '5', '2024-07-13 08:48:23', '2024-07-13 08:48:23'),
(9108, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '7', '4', '2024-07-13 08:48:23', '2024-07-13 08:48:23'),
(9109, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '6', '8', '2024-07-13 08:48:23', '2024-07-13 08:48:23'),
(9110, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '9', '8', '2024-07-13 08:48:23', '2024-07-13 08:48:23'),
(9111, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '8', '10', '2024-07-13 08:48:23', '2024-07-13 08:48:23'),
(9112, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '4', '10', '2024-07-13 08:48:23', '2024-07-13 08:48:23'),
(9113, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '10', '5', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9114, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '10', '6', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9115, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '1', '6', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9116, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '9', '4', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9117, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '9', '6', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9118, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '10', '3', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9119, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '5', '6', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9120, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '9', '6', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9121, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '8', '10', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9122, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '10', '4', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9123, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '2', '1', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9124, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '3', '9', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9125, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '2', '1', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9126, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '2', '7', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9127, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '9', '2', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9128, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '3', '5', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9129, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '1', '5', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9130, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '6', '2', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9131, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '10', '4', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9132, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '5', '1', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9133, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '10', '4', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9134, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '3', '7', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9135, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '8', '1', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9136, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '5', '9', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9137, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '10', '3', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9138, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '3', '5', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9139, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '10', '1', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9140, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '5', '6', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9141, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '4', '6', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9142, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '8', '5', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9143, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '8', '4', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9144, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '8', '9', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9145, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '10', '3', '2024-07-24 16:36:12', '2024-07-24 16:36:12'),
(9146, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '5', '6', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9147, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '6', '3', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9148, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '6', '7', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9149, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '4', '3', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9150, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '6', '10', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9151, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '6', '3', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9152, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '3', '6', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9153, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '5', '2', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9154, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '6', '10', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9155, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '6', '1', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9156, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '10', '9', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9157, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '4', '8', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9158, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '2', '4', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9159, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '9', '7', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9160, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '1', '8', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9161, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '7', '8', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9162, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '5', '7', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9163, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '2', '6', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9164, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '10', '9', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9165, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '1', '10', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9166, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '4', '3', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9167, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '1', '9', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9168, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '5', '2', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9169, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '4', '5', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9170, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '8', '2', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9171, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '7', '1', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9172, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '1', '6', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9173, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '9', '10', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9174, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '3', '2', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9175, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '5', '4', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9176, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '1', '8', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9177, 'Botble\\Blog\\Models\\Post', 74, NULL, 'author_id', '6', '9', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9178, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '6', '10', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9179, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '5', '6', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9180, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '4', '7', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9181, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '9', '3', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9182, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '3', '8', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9183, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '10', '6', '2024-07-25 04:54:57', '2024-07-25 04:54:57'),
(9184, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '6', '10', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9185, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '3', '10', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9186, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '3', '8', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9187, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '3', '2', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9188, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '6', '2', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9189, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '2', '10', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9190, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '10', '6', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9191, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '1', '8', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9192, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '9', '8', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9193, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '8', '10', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9194, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '4', '7', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9195, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '1', '6', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9196, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '7', '6', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9197, 'Botble\\Blog\\Models\\Post', 55, NULL, 'author_id', '8', '10', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9198, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '2', '6', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9199, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '7', '3', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9200, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '5', '6', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9201, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '9', '7', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9202, 'Botble\\Blog\\Models\\Post', 62, NULL, 'author_id', '10', '8', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9203, 'Botble\\Blog\\Models\\Post', 63, NULL, 'author_id', '3', '9', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9204, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '9', '4', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9205, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '2', '6', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9206, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '5', '4', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9207, 'Botble\\Blog\\Models\\Post', 67, NULL, 'author_id', '2', '3', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9208, 'Botble\\Blog\\Models\\Post', 68, NULL, 'author_id', '1', '3', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9209, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '6', '2', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9210, 'Botble\\Blog\\Models\\Post', 70, NULL, 'author_id', '10', '7', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9211, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '4', '7', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9212, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '8', '4', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9213, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '10', '1', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9214, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '6', '3', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9215, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '3', '9', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9216, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '8', '1', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9217, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '6', '10', '2024-07-26 08:02:11', '2024-07-26 08:02:11'),
(9218, 'Botble\\Blog\\Models\\Post', 40, NULL, 'author_id', '10', '4', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9219, 'Botble\\Blog\\Models\\Post', 41, NULL, 'author_id', '10', '5', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9220, 'Botble\\Blog\\Models\\Post', 42, NULL, 'author_id', '7', '1', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9221, 'Botble\\Blog\\Models\\Post', 43, NULL, 'author_id', '8', '7', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9222, 'Botble\\Blog\\Models\\Post', 44, NULL, 'author_id', '10', '6', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9223, 'Botble\\Blog\\Models\\Post', 45, NULL, 'author_id', '2', '10', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9224, 'Botble\\Blog\\Models\\Post', 46, NULL, 'author_id', '2', '3', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9225, 'Botble\\Blog\\Models\\Post', 47, NULL, 'author_id', '10', '8', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9226, 'Botble\\Blog\\Models\\Post', 48, NULL, 'author_id', '6', '4', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9227, 'Botble\\Blog\\Models\\Post', 49, NULL, 'author_id', '8', '10', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9228, 'Botble\\Blog\\Models\\Post', 50, NULL, 'author_id', '8', '1', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9229, 'Botble\\Blog\\Models\\Post', 51, NULL, 'author_id', '10', '9', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9230, 'Botble\\Blog\\Models\\Post', 52, NULL, 'author_id', '7', '9', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9231, 'Botble\\Blog\\Models\\Post', 53, NULL, 'author_id', '6', '7', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9232, 'Botble\\Blog\\Models\\Post', 54, NULL, 'author_id', '6', '5', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9233, 'Botble\\Blog\\Models\\Post', 56, NULL, 'author_id', '8', '5', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9234, 'Botble\\Blog\\Models\\Post', 57, NULL, 'author_id', '6', '10', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9235, 'Botble\\Blog\\Models\\Post', 58, NULL, 'author_id', '3', '2', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9236, 'Botble\\Blog\\Models\\Post', 59, NULL, 'author_id', '6', '10', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9237, 'Botble\\Blog\\Models\\Post', 60, NULL, 'author_id', '6', '5', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9238, 'Botble\\Blog\\Models\\Post', 61, NULL, 'author_id', '7', '2', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9239, 'Botble\\Blog\\Models\\Post', 64, NULL, 'author_id', '4', '2', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9240, 'Botble\\Blog\\Models\\Post', 65, NULL, 'author_id', '6', '7', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9241, 'Botble\\Blog\\Models\\Post', 66, NULL, 'author_id', '4', '7', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9242, 'Botble\\Blog\\Models\\Post', 69, NULL, 'author_id', '2', '8', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9243, 'Botble\\Blog\\Models\\Post', 71, NULL, 'author_id', '2', '7', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9244, 'Botble\\Blog\\Models\\Post', 72, NULL, 'author_id', '7', '5', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9245, 'Botble\\Blog\\Models\\Post', 73, NULL, 'author_id', '4', '10', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9246, 'Botble\\Blog\\Models\\Post', 75, NULL, 'author_id', '1', '3', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9247, 'Botble\\Blog\\Models\\Post', 76, NULL, 'author_id', '3', '2', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9248, 'Botble\\Blog\\Models\\Post', 77, NULL, 'author_id', '7', '9', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9249, 'Botble\\Blog\\Models\\Post', 78, NULL, 'author_id', '9', '8', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9250, 'Botble\\Blog\\Models\\Post', 81, NULL, 'author_id', '1', '10', '2024-07-27 06:11:23', '2024-07-27 06:11:23'),
(9251, 'Botble\\Blog\\Models\\Post', 82, NULL, 'author_id', '10', '6', '2024-07-27 06:11:23', '2024-07-27 06:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"author.index\":true,\"author.create\":true,\"author.edit\":true,\"author.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}', 'Admin users role', 1, 1, 1, '2024-07-27 06:11:22', '2024-07-27 06:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(211, 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"author\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"gallery\",\"note\",\"request-log\",\"rss-feed\",\"simple-slider\",\"translation\"]', NULL, '2024-07-27 06:11:25'),
(1451, 'language_hide_default', '1', NULL, '2024-07-27 06:11:25'),
(1452, 'language_switcher_display', 'dropdown', NULL, '2024-07-27 06:11:25'),
(1453, 'language_display', 'all', NULL, '2024-07-27 06:11:25'),
(1454, 'language_hide_languages', '[]', NULL, '2024-07-27 06:11:25'),
(1804, 'theme', 'lara-mag', NULL, '2024-07-27 06:11:25'),
(1805, 'show_admin_bar', '1', NULL, '2024-07-27 06:11:25'),
(1920, 'media_random_hash', 'c689b57a45a59c13f18daa63550d7a71', NULL, '2024-07-27 06:11:25'),
(2318, 'enable_recaptcha_botble_contact_forms_fronts_contact_form', '1', NULL, '2024-05-28 08:03:11'),
(2438, 'analytics_dashboard_widgets', '0', NULL, '2024-05-28 08:03:11'),
(2453, 'enable_recaptcha_botble_contact_forms_fronts_contact_form', '1', '2024-05-01 21:03:36', '2024-05-28 08:03:11'),
(2454, 'analytics_dashboard_widgets', '0', '2024-05-01 21:03:36', '2024-05-28 08:03:11'),
(2609, 'theme-lara-mag-site_title', 'LaraMag - Laravel News / Magazine Multilingual System', NULL, NULL),
(2610, 'theme-lara-mag-seo_description', ' Laravel News / Magazine Multilingual System', NULL, NULL),
(2611, 'theme-lara-mag-copyright', '©2024 Your Company. All right reserved.', NULL, NULL),
(2612, 'theme-lara-mag-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(2613, 'theme-lara-mag-cookie_consent_learn_more_url', '/cookie-policy', NULL, NULL),
(2614, 'theme-lara-mag-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(2615, 'theme-lara-mag-homepage_id', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Homepage sliders', 'home-slider', 'Sliders are shown on homepage', 'published', '2018-04-10 20:13:39', '2018-04-10 20:13:39'),
(3, 'Homepage sliders', 'home-slider', 'Sliders are shown on homepage', 'published', '2023-06-23 02:56:38', '2023-06-23 02:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `title`, `image`, `link`, `description`, `simple_slider_id`, `order`, `created_at`, `updated_at`) VALUES
(3, 'The Hypocrisy of the Philippines National Police Human Rights Mobile App', 'sliders/1.jpg', 'https://lara-mag.botble.com/the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', '\"The ‘Know Your Rights’ app is a perfect example of hypocrisy because the only application that is known to the PNP is the application of torture...\"', 2, 0, '2017-12-18 18:43:32', '2023-06-23 02:59:03'),
(4, 'Initiatives for Environmental Activism Take Off in Cuba', 'sliders/2.jpg', 'https://lara-mag.botble.com/initiatives-for-environmental-activism-take-off-in-cuba', 'The Center for Education and Promotion for Sustainable Development is a commitment to participatory environmental management and political ecology in Cuba.', 2, 0, '2017-12-18 18:44:33', '2021-07-04 06:34:45'),
(5, 'The Hypocrisy of the Philippines National Police Human Rights Mobile App', 'sliders/2.jpg', 'https://lara-mag.botble.com/the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', '\"The ‘Know Your Rights’ app is a perfect example of hypocrisy because the only application that is known to the PNP is the application of torture...\"', 3, 0, '2023-06-23 02:57:25', '2023-06-23 02:59:03'),
(6, 'Initiatives for Environmental Activism Take Off in Cuba', 'sliders/2.jpg', 'https://lara-mag.botble.com/initiatives-for-environmental-activism-take-off-in-cuba', 'The Center for Education and Promotion for Sustainable Development is a commitment to participatory environmental management and political ecology in Cuba.', 3, 0, '2023-06-23 02:57:55', '2023-06-23 02:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prefix` varchar(120) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `created_at`, `updated_at`, `prefix`) VALUES
(1, '1513128272', 1, 'menu', '2017-12-12 17:33:59', '2017-12-12 18:24:32', ''),
(5, '1513128288', 2, 'menu', '2017-12-12 18:14:04', '2017-12-12 18:24:48', ''),
(9, 'kham-pha', 1, 'Botble\\Blog\\Models\\Category', '2017-12-12 18:26:20', '2020-11-27 03:20:23', ''),
(10, 'la-cool', 2, 'Botble\\Blog\\Models\\Category', '2017-12-12 18:27:12', '2020-11-27 03:20:23', ''),
(11, 'the-thao-khac', 3, 'Botble\\Blog\\Models\\Category', '2017-12-12 18:27:30', '2020-11-27 03:20:23', ''),
(12, 'chuyen-muc-video', 4, 'Botble\\Blog\\Models\\Category', '2017-12-12 18:28:00', '2020-11-27 03:20:23', ''),
(13, 'bong-da', 5, 'Botble\\Blog\\Models\\Category', '2017-12-12 18:28:24', '2020-11-27 03:20:23', ''),
(14, '1513128846', 3, 'menu', '2017-12-12 18:29:01', '2017-12-12 18:34:06', ''),
(15, '1513128838', 4, 'menu', '2017-12-12 18:29:22', '2017-12-12 18:33:58', ''),
(16, 'discovery', 6, 'Botble\\Blog\\Models\\Category', '2017-12-12 18:31:08', '2020-11-27 03:20:23', ''),
(17, 'hot-cool', 7, 'Botble\\Blog\\Models\\Category', '2017-12-12 18:31:44', '2020-11-27 03:20:23', ''),
(18, 'other-sports', 8, 'Botble\\Blog\\Models\\Category', '2017-12-12 18:32:03', '2020-11-27 03:20:23', ''),
(19, 'video', 9, 'Botble\\Blog\\Models\\Category', '2017-12-12 18:32:17', '2020-11-27 03:20:23', ''),
(20, 'football', 10, 'Botble\\Blog\\Models\\Category', '2017-12-12 18:32:35', '2020-11-27 03:20:23', ''),
(21, '1513212884', 5, 'menu', '2017-12-13 17:54:17', '2017-12-13 17:54:44', ''),
(23, 'nghi-pham-khai-sat-hai-da-man-nam-thanh-nien-roi-vut-xuong-song-de-danh-lac-huong-cong-an', 1, 'Botble\\Blog\\Models\\Post', '2017-12-13 18:02:26', '2020-11-27 03:21:00', ''),
(25, '1513214906', 8, 'menu', '2017-12-13 18:28:13', '2017-12-13 18:28:26', ''),
(26, 'thoi-trang', 11, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:12:29', '2020-11-27 03:20:23', ''),
(27, 'the-thao', 12, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:12:43', '2020-11-27 03:20:23', ''),
(28, 'doi-song', 13, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:12:58', '2020-11-27 03:20:23', ''),
(29, 'lam-dep', 14, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:13:15', '2020-11-27 03:20:23', ''),
(30, 'tram-yeu', 15, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:13:48', '2020-11-27 03:20:23', ''),
(31, 'hau-truong', 16, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:14:09', '2020-11-27 03:20:23', ''),
(32, 'kinh-te', 17, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:14:39', '2020-11-27 03:20:23', ''),
(33, 'phap-luat', 18, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:14:54', '2020-11-27 03:20:23', ''),
(34, 'kinh-doanh', 19, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:15:18', '2020-11-27 03:20:23', ''),
(35, 'giai-tri', 20, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:15:31', '2020-11-27 03:20:23', ''),
(36, 'sport', 21, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:15:48', '2020-11-27 03:20:23', ''),
(37, 'fashion', 22, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:16:38', '2020-11-27 03:20:23', ''),
(38, 'life', 23, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:16:52', '2020-11-27 03:20:23', ''),
(39, 'beautify', 24, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:17:41', '2020-11-27 03:20:23', ''),
(40, 'love', 25, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:17:55', '2020-11-27 03:20:23', ''),
(41, 'behind-the-scenes', 26, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:18:36', '2020-11-27 03:20:23', ''),
(42, 'economy', 27, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:19:45', '2020-11-27 03:20:23', ''),
(43, 'law', 28, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:20:10', '2020-11-27 03:20:23', ''),
(44, 'business', 29, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:20:40', '2020-11-27 03:20:23', ''),
(45, 'entertainment', 30, 'Botble\\Blog\\Models\\Category', '2017-12-14 18:21:09', '2020-11-27 03:20:23', ''),
(46, '1513301392', 9, 'menu', '2017-12-14 18:21:27', '2017-12-14 18:29:52', ''),
(47, '1513301539', 10, 'menu', '2017-12-14 18:22:51', '2017-12-14 18:32:19', ''),
(48, '1513301609', 11, 'menu', '2017-12-14 18:32:59', '2017-12-14 18:33:29', ''),
(49, '1513301635', 12, 'menu', '2017-12-14 18:33:39', '2017-12-14 18:33:55', ''),
(50, 'gia-mai-vang-tang-30-40-so-voi-nam-truoc', 2, 'Botble\\Blog\\Models\\Post', '2017-12-15 08:55:08', '2020-11-27 03:21:00', ''),
(51, 'xuat-khau-ca-ngu-sang-eu-se-tang-35-so-nam-2016', 3, 'Botble\\Blog\\Models\\Post', '2017-12-15 08:56:38', '2020-11-27 03:21:00', ''),
(52, 'tang-hang-chuc-phan-tram-chi-trong-thoi-gian-ngan-co-phieu-hang-khong-da-den-thoi-cat-canh', 4, 'Botble\\Blog\\Models\\Post', '2017-12-15 09:02:02', '2020-11-27 03:21:00', ''),
(53, 'van-don-quay-cuong-trong-con-sot-dat-chu-tich-tinh-quang-ninh-dua-ra-canh-bao-cho-nha-dau-tu', 5, 'Botble\\Blog\\Models\\Post', '2017-12-15 09:03:39', '2020-11-27 03:21:00', ''),
(54, 'pnj-vcs-vjc-tiep-tuc-pha-dinh-thi-truong-do-vo-xanh-long-trong-ngay-review-etfs', 6, 'Botble\\Blog\\Models\\Post', '2017-12-15 09:22:36', '2020-11-27 03:21:00', ''),
(55, 'khong-chi-sabeco-hang-loat-doanh-nghiep-lon-nhat-nhi-trong-nhieu-linh-vuc-tiem-nang-da-thuoc-quyen-kiem-soat-cua-nguoi-thai', 7, 'Botble\\Blog\\Models\\Post', '2017-12-15 09:42:29', '2020-11-27 03:21:00', ''),
(56, 'mt-gas-dung-hon-21-ty-dong-thang-du-von-co-phan-de-xoa-no-luy-ke', 8, 'Botble\\Blog\\Models\\Post', '2017-12-15 09:44:10', '2020-11-27 03:21:00', ''),
(57, 'day-la-so-tien-ban-co-neu-dau-tu-1000-usd-vao-bitcoin-tu-nam-2013', 9, 'Botble\\Blog\\Models\\Post', '2017-12-15 09:45:34', '2020-11-27 03:21:00', ''),
(58, 'con-loc-nha-dau-tu-thai', 10, 'Botble\\Blog\\Models\\Post', '2017-12-15 17:47:40', '2020-11-27 03:21:00', ''),
(59, 'dau-tu', 1, 'Botble\\Blog\\Models\\Tag', '2017-12-15 17:47:40', '2023-11-28 01:28:59', 'tag'),
(60, 'con-loc', 2, 'Botble\\Blog\\Models\\Tag', '2017-12-15 17:47:40', '2023-11-28 01:28:59', 'tag'),
(61, 'thai-lan', 3, 'Botble\\Blog\\Models\\Tag', '2017-12-15 17:47:40', '2023-11-28 01:28:59', 'tag'),
(62, 'thap-gio-xuat-khau-vao-australia-bi-ket-luan-ban-pha-gia-bien-do-8', 11, 'Botble\\Blog\\Models\\Post', '2017-12-15 17:48:59', '2020-11-27 03:21:00', ''),
(63, 'phat-sot-voi-ngoi-nha-mini-chi-9m2-sieu-tien-nghi', 12, 'Botble\\Blog\\Models\\Post', '2017-12-15 17:50:05', '2020-11-27 03:21:00', ''),
(64, 'ha-noi-se-cat-giam-gan-8000-bien-che-nhu-the-nao', 13, 'Botble\\Blog\\Models\\Post', '2017-12-15 17:51:00', '2020-11-27 03:21:00', ''),
(65, 'chum-anh-nhung-chu-biet-thu-o-pho-nha-giau-sai-gon-dau-tu-ca-chuc-trieu-dong-trang-tri-noel', 14, 'Botble\\Blog\\Models\\Post', '2017-12-15 17:52:32', '2020-11-27 03:21:00', ''),
(66, 'khong-muon-cuoc-doi-bi-huy-hoai-day-la-8-viec-ai-cung-nen-xu-ly-cang-som-cang-tot', 15, 'Botble\\Blog\\Models\\Post', '2017-12-15 17:55:22', '2020-11-27 03:21:00', ''),
(67, '7-dieu-nho-nhat-gian-don-giup-cuoc-song-thoai-mai-hon', 16, 'Botble\\Blog\\Models\\Post', '2017-12-15 17:56:27', '2020-11-27 03:21:00', ''),
(68, 'lieu-ban-da-hanh-dong-dung-noi-cong-so-hay-kiem-tra-11-dau-hieu-sau', 17, 'Botble\\Blog\\Models\\Post', '2017-12-15 17:57:25', '2020-11-27 03:21:00', ''),
(69, '30-tuoi-da-thich-suong-va-an-nhan-ngung-co-gang-doi-ban-se-giong-nhu-mot-thanh-sat-gi', 18, 'Botble\\Blog\\Models\\Post', '2017-12-15 17:58:24', '2020-11-27 03:21:00', ''),
(70, 'khong-co-thoi-gian-toi-phong-gym-day-chinh-la-5-cach-giup-ban-dot-chay-mo-thua-hoan-hao', 19, 'Botble\\Blog\\Models\\Post', '2017-12-15 17:59:23', '2020-11-27 03:21:00', ''),
(71, 'dung-bao-gio-phi-thoi-gian-cai-nhau-voi-nguoi-khac-tren-facebook-day-la-ly-do-vi-sao', 20, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:00:51', '2020-11-27 03:21:00', ''),
(72, 'lat-ma-zopa-rinpoche-giong-nhu-dau-tu-100-do-la-roi-nhan-trieu-do-day-la-dieu-ai-cung-tu-dau-tu-duoc-moi-ngay', 21, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:02:05', '2020-11-27 03:21:00', ''),
(73, '6-rac-roi-ma-chi-nhung-nguoi-cuc-thong-minh-moi-mac-phai', 22, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:03:27', '2020-11-27 03:21:00', ''),
(74, 'ceo-clingme-sai-lam-lon-nhat-cua-startup-viet-khi-goi-von-dau-tu-la-luc-nao-cung-nham-den-tien', 23, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:06:16', '2020-11-27 03:21:00', ''),
(75, 'co-gi-tai-khach-san-dat-do-bac-nhat-dubai', 24, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:07:36', '2020-11-27 03:21:00', ''),
(76, '34-tuoi-mac-ung-thu-gan-giai-doan-cuoi-nguyen-nhan-gay-benh-ai-cung-nen-de-phong', 25, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:08:31', '2020-11-27 03:21:00', ''),
(77, 'tim-ra-dap-an-cho-cau-hoi-uong-bao-nhieu-ca-phengay-la-du-va-thoi-diem-tot-nhat-de-uong', 26, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:11:26', '2020-11-27 03:21:00', ''),
(78, 'smartphone-co-the-ngam-dau-doc-bo-nao-con-nguoi-ra-sao', 27, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:12:24', '2020-11-27 03:21:00', ''),
(79, 'dau-bep-hang-dau-chi-ra-nhung-sai-lam-lon-nhat-khi-thuong-thuc-am-thuc-nhat-ban', 28, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:13:10', '2020-11-27 03:21:00', ''),
(80, 'chuyen-nha-su-va-chua-troi-ai-cung-can-doc-de-biet-nam-bat-co-hoi', 29, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:14:26', '2020-11-27 03:21:00', ''),
(81, 'cuoc-song-sang-chanh-cua-hoang-tu-brunei-van-dong-vien-cuoi-ngua-dep-trai-tung-day-song-sea-games-29', 30, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:15:21', '2020-11-27 03:21:00', ''),
(82, 'nhung-nguoi-an-theo-che-do-nay-it-co-nguy-co-bi-mat-tri-nho-va-sa-sut-tri-tue', 31, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:16:22', '2020-11-27 03:21:00', ''),
(83, 'nhung-buc-anh-an-tuong-nhat-nam-2017-duoc-to-reuters-binh-chon', 32, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:17:08', '2020-11-27 03:21:00', ''),
(84, 'day-la-11-du-doan-cua-tuong-lai-cua-elon-musk-tat-ca-se-deu-khien-ban-ngo-ngang', 33, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:18:03', '2020-11-27 03:21:00', ''),
(85, 'no-vay-oda-len-toi-600-nghin-ty-se-giai-trinh-voi-quoc-hoi', 34, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:19:00', '2020-11-27 03:21:00', ''),
(86, 'de-phong-bien-chung-nguy-hiem-o-mat-neu-chu-quan-khi-tri-benh-viem-xoang', 35, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:20:12', '2020-11-27 03:21:00', ''),
(87, 'the-gioi-di-dong-thuong-nghin-ty-de-giu-long-trung-thanh-cua-nhan-vien-nhung-voi-ho-tien-khong-phai-la-tat-ca', 36, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:21:34', '2020-11-27 03:21:00', ''),
(88, 'trau-cay-bitcoin-o-at-do-bo-sai-gon', 37, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:22:27', '2020-11-27 03:21:00', ''),
(89, 'steve-jobs-lam-startup-khong-phai-la-xay-dung-cong-ty-de-kiem-tien', 38, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:23:29', '2020-11-27 03:21:00', ''),
(90, 'so-dong-van-lua-chon-gui-tiet-kiem', 39, 'Botble\\Blog\\Models\\Post', '2017-12-15 18:24:19', '2020-11-27 03:21:00', ''),
(91, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 40, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:14:35', '2020-11-27 03:21:00', ''),
(92, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 41, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:16:11', '2020-11-27 03:21:00', ''),
(93, 'twitter-japan-is-not-a-safe-space-for-minority-users', 42, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:21:49', '2020-11-27 03:21:00', ''),
(94, 'a-legislator-in-taiwan-risks-a-recall-for-supporting-same-sex-marriage', 43, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:23:12', '2020-11-27 03:21:00', ''),
(95, 'concerns-over-united-states-president-trumps-latest-controversial-foreign-policies-loom-large-in-africa', 44, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:24:24', '2020-11-27 03:21:00', ''),
(96, 'unesco-protects-balkan-grandma-march-day-custom-as-cultural-heritage', 45, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:31:57', '2020-11-27 03:21:00', ''),
(97, 'petition-to-free-the-eritrean-man-unjustly-arrested-in-italy-for-mistaken-identity', 46, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:38:45', '2020-11-27 03:21:00', ''),
(98, 'refugees-in-lebanon-are-still-being-scapegoated-in-the-media-and-in-academia', 47, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:41:12', '2020-11-27 03:21:00', ''),
(99, 'a-detainee-of-all-eras-the-prominent-case-of-egyptian-activist-alaa-abdelfattah', 48, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:43:20', '2020-11-27 03:21:00', ''),
(100, 'the-ahwazis-of-iran-face-death-sentences-after-false-accusations-of-opposing-the-government', 49, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:47:36', '2020-11-27 03:21:00', ''),
(101, 'recalcitrant-activist-charged-by-singapore-police-for-organizing-illegal-assemblies', 50, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:48:29', '2020-11-27 03:21:00', ''),
(102, 'right-to-information-requests-in-sri-lanka-reveals-process-for-blocking-websites', 51, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:49:55', '2020-11-27 03:21:00', ''),
(103, 'the-cat-in-the-pot-cuddly-felines-nap-in-japanese-cookware', 52, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:50:54', '2020-11-27 03:21:00', ''),
(104, 'indonesian-president-jokowi-leads-citizens-in-condemning-donald-trumps-jerusalem-declaration', 53, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:53:37', '2020-11-27 03:21:00', ''),
(105, 'a-local-newspapers-full-page-feature-on-nuclear-radiation-survival-stirs-panic-in-china', 54, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:54:52', '2020-11-27 03:21:00', ''),
(106, 'the-fall-of-chinese-internet-czar-lu-wei', 55, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:56:19', '2020-11-27 03:21:00', ''),
(107, 'syrian-and-lebanese-on-the-conflict-of-identities', 56, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:57:04', '2020-11-27 03:21:00', ''),
(108, 'transgender-womans-murder-in-trinidad-tobago-highlights-ostracism-faced-by-lgbtq-community', 57, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:57:41', '2020-11-27 03:21:00', ''),
(109, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 58, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:58:18', '2020-11-27 03:21:00', ''),
(110, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 59, 'Botble\\Blog\\Models\\Post', '2017-12-15 19:59:28', '2023-11-28 01:28:59', ''),
(111, 'palestinians-arent-surprised-by-us-jerusalem-move-as-world-already-ignores-their-existence', 60, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:02:49', '2020-11-27 03:21:00', ''),
(112, 'painting-a-new-story-sohrai-art-in-jharkhand', 61, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:04:43', '2020-11-27 03:21:00', ''),
(113, 'the-conviction-of-another-dancehall-star-fails-to-shock-crime-weary-jamaicans', 62, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:07:22', '2020-11-27 03:21:00', ''),
(114, 'harsh-prison-terms-for-video-journalist-and-blogger-as-vietnam-cracks-down-on-free-expression', 63, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:08:12', '2020-11-27 03:21:00', ''),
(115, 'what-future-for-the-wikipedia-seagull-on-kazakhstans-brand-new-banknotes', 64, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:12:05', '2020-11-27 03:21:00', ''),
(116, 'jailed-bahraini-rights-defender-nabeel-rajab-faces-additional-fifteen-years-in-prison', 65, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:13:58', '2020-11-27 03:21:00', ''),
(117, 'ashraf-ghani-gets-thumbs-down-after-anti-women-headscarf-gaffe', 66, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:15:24', '2020-11-27 03:21:00', ''),
(118, 'the-health-of-thousands-of-filipino-children-could-be-at-risk-thanks-to-sanofis-dengue-vaccine', 67, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:16:04', '2020-11-27 03:21:00', ''),
(119, 'kyrgyz-childrens-author-remakes-old-fables-drives-new-narratives', 68, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:17:31', '2020-11-27 03:21:00', ''),
(120, 'animal-carcasses-tires-and-medical-waste-a-new-report-highlights-health-risks-of-lebanons-trash-crisis', 69, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:18:28', '2020-11-27 03:21:00', ''),
(121, 'russian-atomic-regulators-foray-into-meme-making-fails-to-quench-rumors-of-nuclear-leaks', 70, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:19:12', '2020-11-27 03:21:00', ''),
(122, 'in-china-skepticism-surrounding-police-investigation-of-kindergarten-child-abuse-is-censored', 71, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:19:52', '2020-11-27 03:21:00', ''),
(123, 'russians-are-unimpressed-with-the-2018-presidential-election-logo-and-have-ideas-for-improvement', 72, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:20:33', '2020-11-27 03:21:00', ''),
(124, 'weaving-objects-of-loss-and-memory-with-hayv-kahraman', 73, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:21:12', '2020-11-27 03:21:00', ''),
(125, 'this-brazilian-doctor-says-science-has-evolved-but-stigma-against-hiv-remains', 74, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:23:19', '2020-11-27 03:21:00', ''),
(126, 'scrutiny-and-doubt-over-rape-victims-testimony-sparks-outrage-in-spain', 75, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:24:18', '2020-11-27 03:21:00', ''),
(127, 'after-authorities-evict-beijings-low-end-residents-chinese-ask-where-is-the-humanity', 76, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:24:52', '2020-11-27 03:21:00', ''),
(128, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 77, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:25:38', '2023-11-28 01:28:59', ''),
(129, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 78, 'Botble\\Blog\\Models\\Post', '2017-12-15 20:26:27', '2023-11-28 01:28:59', ''),
(130, 'alive', 4, 'Botble\\Blog\\Models\\Tag', '2017-12-15 22:18:36', '2023-11-28 01:28:59', 'tag'),
(131, 'story', 5, 'Botble\\Blog\\Models\\Tag', '2017-12-15 22:18:36', '2023-11-28 01:28:59', 'tag'),
(144, 'day-la-top-10-cong-nghe-y-te-dot-pha-nhat-nam-2017-mo-ra-tuong-lai-moi-cho-loai-nguoi', 79, 'Botble\\Blog\\Models\\Post', '2017-12-16 17:53:53', '2020-11-27 03:21:00', ''),
(145, 'toi-da-tim-ra-cach-lam-viec-hieu-qua-nhin-tu-phuong-phap-sac-pin-dien-thoai-nhu-the-nao', 80, 'Botble\\Blog\\Models\\Post', '2017-12-16 17:56:23', '2020-11-27 03:21:00', ''),
(146, 'the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', 81, 'Botble\\Blog\\Models\\Post', '2017-12-18 18:43:36', '2020-11-27 03:21:00', ''),
(147, 'initiatives-for-environmental-activism-take-off-in-cuba', 82, 'Botble\\Blog\\Models\\Post', '2017-12-18 18:44:57', '2020-11-27 03:21:00', ''),
(1604, 'geovany-balistreri-dds', 1, 'Botble\\Author\\Models\\Author', '2023-06-13 02:32:01', '2024-07-27 06:11:23', 'author'),
(1605, 'demario-carroll', 2, 'Botble\\Author\\Models\\Author', '2023-06-13 02:32:01', '2024-07-27 06:11:23', 'author'),
(1606, 'lempi-heidenreich', 3, 'Botble\\Author\\Models\\Author', '2023-06-13 02:32:01', '2024-07-27 06:11:23', 'author'),
(1607, 'jaren-towne', 4, 'Botble\\Author\\Models\\Author', '2023-06-13 02:32:01', '2024-07-27 06:11:23', 'author'),
(1608, 'mrs-gerda-mosciski', 5, 'Botble\\Author\\Models\\Author', '2023-06-13 02:32:01', '2024-07-27 06:11:23', 'author'),
(1609, 'freeda-haag-dvm', 6, 'Botble\\Author\\Models\\Author', '2023-06-13 02:32:01', '2024-07-27 06:11:23', 'author'),
(1610, 'rodrick-schulist', 7, 'Botble\\Author\\Models\\Author', '2023-06-13 02:32:01', '2024-07-27 06:11:23', 'author'),
(1611, 'kayleigh-lebsack', 8, 'Botble\\Author\\Models\\Author', '2023-06-13 02:32:01', '2024-07-27 06:11:23', 'author'),
(1612, 'isabel-stroman-iii', 9, 'Botble\\Author\\Models\\Author', '2023-06-13 02:32:01', '2024-07-27 06:11:23', 'author'),
(1613, 'rebecca-vonrueden', 10, 'Botble\\Author\\Models\\Author', '2023-06-13 02:32:01', '2024-07-27 06:11:23', 'author'),
(1625, 'prof-spencer-wunsch', 1, 'Botble\\Author\\Models\\Author', '2023-06-23 02:49:29', '2023-06-23 02:49:29', 'author'),
(1626, 'maegan-hamill', 2, 'Botble\\Author\\Models\\Author', '2023-06-23 02:49:29', '2023-06-23 02:49:29', 'author'),
(1627, 'reece-cruickshank', 3, 'Botble\\Author\\Models\\Author', '2023-06-23 02:49:29', '2023-06-23 02:49:29', 'author'),
(1628, 'brooklyn-gusikowski', 4, 'Botble\\Author\\Models\\Author', '2023-06-23 02:49:29', '2023-06-23 02:49:29', 'author'),
(1629, 'assunta-keebler', 5, 'Botble\\Author\\Models\\Author', '2023-06-23 02:49:29', '2023-06-23 02:49:29', 'author'),
(1630, 'norwood-parisian', 6, 'Botble\\Author\\Models\\Author', '2023-06-23 02:49:29', '2023-06-23 02:49:29', 'author'),
(1631, 'karlee-wyman', 7, 'Botble\\Author\\Models\\Author', '2023-06-23 02:49:29', '2023-06-23 02:49:29', 'author'),
(1632, 'dr-arjun-stroman', 8, 'Botble\\Author\\Models\\Author', '2023-06-23 02:49:29', '2023-06-23 02:49:29', 'author'),
(1633, 'adolphus-gleason-md', 9, 'Botble\\Author\\Models\\Author', '2023-06-23 02:49:29', '2023-06-23 02:49:29', 'author'),
(1634, 'aurelie-daugherty-iv', 10, 'Botble\\Author\\Models\\Author', '2023-06-23 02:49:29', '2023-06-23 02:49:29', 'author'),
(1646, 'mr-kennith-waelchi', 1, 'Botble\\Author\\Models\\Author', '2023-06-23 02:59:01', '2023-06-23 02:59:01', 'author'),
(1647, 'mrs-velma-daugherty-iv', 2, 'Botble\\Author\\Models\\Author', '2023-06-23 02:59:01', '2023-06-23 02:59:01', 'author'),
(1648, 'connie-runolfsson', 3, 'Botble\\Author\\Models\\Author', '2023-06-23 02:59:01', '2023-06-23 02:59:01', 'author'),
(1649, 'chad-koelpin', 4, 'Botble\\Author\\Models\\Author', '2023-06-23 02:59:01', '2023-06-23 02:59:01', 'author'),
(1650, 'brett-graham-sr', 5, 'Botble\\Author\\Models\\Author', '2023-06-23 02:59:01', '2023-06-23 02:59:01', 'author'),
(1651, 'regan-wuckert', 6, 'Botble\\Author\\Models\\Author', '2023-06-23 02:59:01', '2023-06-23 02:59:01', 'author'),
(1652, 'mr-darryl-emard-md', 7, 'Botble\\Author\\Models\\Author', '2023-06-23 02:59:01', '2023-06-23 02:59:01', 'author'),
(1653, 'dr-francisco-fritsch', 8, 'Botble\\Author\\Models\\Author', '2023-06-23 02:59:01', '2023-06-23 02:59:01', 'author'),
(1654, 'cameron-abernathy', 9, 'Botble\\Author\\Models\\Author', '2023-06-23 02:59:01', '2023-06-23 02:59:01', 'author'),
(1655, 'prof-maia-johnston-sr', 10, 'Botble\\Author\\Models\\Author', '2023-06-23 02:59:01', '2023-06-23 02:59:01', 'author'),
(1667, 'ms-elfrieda-schmidt', 1, 'Botble\\Author\\Models\\Author', '2023-06-23 03:02:11', '2023-06-23 03:02:11', 'author'),
(1668, 'peter-harber', 2, 'Botble\\Author\\Models\\Author', '2023-06-23 03:02:11', '2023-06-23 03:02:11', 'author'),
(1669, 'daryl-hyatt', 3, 'Botble\\Author\\Models\\Author', '2023-06-23 03:02:11', '2023-06-23 03:02:11', 'author'),
(1670, 'prof-zackary-upton-md', 4, 'Botble\\Author\\Models\\Author', '2023-06-23 03:02:11', '2023-06-23 03:02:11', 'author'),
(1671, 'prof-shanel-lind-dds', 5, 'Botble\\Author\\Models\\Author', '2023-06-23 03:02:11', '2023-06-23 03:02:11', 'author'),
(1672, 'mr-carleton-crooks-md', 6, 'Botble\\Author\\Models\\Author', '2023-06-23 03:02:11', '2023-06-23 03:02:11', 'author'),
(1673, 'chris-ritchie', 7, 'Botble\\Author\\Models\\Author', '2023-06-23 03:02:11', '2023-06-23 03:02:11', 'author'),
(1674, 'herminio-brekke', 8, 'Botble\\Author\\Models\\Author', '2023-06-23 03:02:11', '2023-06-23 03:02:11', 'author'),
(1675, 'prof-ramona-hermiston', 9, 'Botble\\Author\\Models\\Author', '2023-06-23 03:02:11', '2023-06-23 03:02:11', 'author'),
(1676, 'melisa-wiza', 10, 'Botble\\Author\\Models\\Author', '2023-06-23 03:02:11', '2023-06-23 03:02:11', 'author'),
(1688, 'michale-quigley', 1, 'Botble\\Author\\Models\\Author', '2023-06-23 03:03:53', '2023-06-23 03:03:53', 'author'),
(1689, 'melyssa-ortiz', 2, 'Botble\\Author\\Models\\Author', '2023-06-23 03:03:53', '2023-06-23 03:03:53', 'author'),
(1690, 'kailyn-dach', 3, 'Botble\\Author\\Models\\Author', '2023-06-23 03:03:53', '2023-06-23 03:03:53', 'author'),
(1691, 'emilio-strosin', 4, 'Botble\\Author\\Models\\Author', '2023-06-23 03:03:53', '2023-06-23 03:03:53', 'author'),
(1692, 'rowan-hudson', 5, 'Botble\\Author\\Models\\Author', '2023-06-23 03:03:53', '2023-06-23 03:03:53', 'author'),
(1693, 'kellie-boyle-iv', 6, 'Botble\\Author\\Models\\Author', '2023-06-23 03:03:53', '2023-06-23 03:03:53', 'author'),
(1694, 'dr-keshaun-gaylord-phd', 7, 'Botble\\Author\\Models\\Author', '2023-06-23 03:03:53', '2023-06-23 03:03:53', 'author'),
(1695, 'gilda-kassulke', 8, 'Botble\\Author\\Models\\Author', '2023-06-23 03:03:53', '2023-06-23 03:03:53', 'author'),
(1696, 'katlyn-sporer-jr', 9, 'Botble\\Author\\Models\\Author', '2023-06-23 03:03:53', '2023-06-23 03:03:53', 'author'),
(1697, 'darryl-kerluke', 10, 'Botble\\Author\\Models\\Author', '2023-06-23 03:03:53', '2023-06-23 03:03:53', 'author'),
(1709, 'prof-jerome-weber-v', 1, 'Botble\\Author\\Models\\Author', '2023-06-23 03:04:39', '2023-06-23 03:04:39', 'author'),
(1710, 'madeline-feil', 2, 'Botble\\Author\\Models\\Author', '2023-06-23 03:04:39', '2023-06-23 03:04:39', 'author'),
(1711, 'marshall-towne', 3, 'Botble\\Author\\Models\\Author', '2023-06-23 03:04:39', '2023-06-23 03:04:39', 'author'),
(1712, 'clay-feil', 4, 'Botble\\Author\\Models\\Author', '2023-06-23 03:04:39', '2023-06-23 03:04:39', 'author'),
(1713, 'adam-fahey', 5, 'Botble\\Author\\Models\\Author', '2023-06-23 03:04:39', '2023-06-23 03:04:39', 'author'),
(1714, 'dave-kilback-dvm', 6, 'Botble\\Author\\Models\\Author', '2023-06-23 03:04:39', '2023-06-23 03:04:39', 'author'),
(1715, 'renee-oreilly', 7, 'Botble\\Author\\Models\\Author', '2023-06-23 03:04:39', '2023-06-23 03:04:39', 'author'),
(1716, 'gracie-moen-iv', 8, 'Botble\\Author\\Models\\Author', '2023-06-23 03:04:39', '2023-06-23 03:04:39', 'author'),
(1717, 'mr-rico-robel-phd', 9, 'Botble\\Author\\Models\\Author', '2023-06-23 03:04:39', '2023-06-23 03:04:39', 'author'),
(1718, 'brandy-haley', 10, 'Botble\\Author\\Models\\Author', '2023-06-23 03:04:39', '2023-06-23 03:04:39', 'author'),
(1730, 'vince-skiles', 1, 'Botble\\Author\\Models\\Author', '2023-06-23 03:31:05', '2023-06-23 03:31:05', 'author'),
(1731, 'janice-morissette', 2, 'Botble\\Author\\Models\\Author', '2023-06-23 03:31:05', '2023-06-23 03:31:05', 'author'),
(1732, 'felicity-will', 3, 'Botble\\Author\\Models\\Author', '2023-06-23 03:31:05', '2023-06-23 03:31:05', 'author'),
(1733, 'everette-jacobson-i', 4, 'Botble\\Author\\Models\\Author', '2023-06-23 03:31:05', '2023-06-23 03:31:05', 'author'),
(1734, 'gage-streich', 5, 'Botble\\Author\\Models\\Author', '2023-06-23 03:31:05', '2023-06-23 03:31:05', 'author'),
(1735, 'lew-swaniawski', 6, 'Botble\\Author\\Models\\Author', '2023-06-23 03:31:05', '2023-06-23 03:31:05', 'author'),
(1736, 'miss-lexie-heaney', 7, 'Botble\\Author\\Models\\Author', '2023-06-23 03:31:05', '2023-06-23 03:31:05', 'author'),
(1737, 'missouri-mcglynn', 8, 'Botble\\Author\\Models\\Author', '2023-06-23 03:31:05', '2023-06-23 03:31:05', 'author'),
(1738, 'enoch-bashirian', 9, 'Botble\\Author\\Models\\Author', '2023-06-23 03:31:05', '2023-06-23 03:31:05', 'author'),
(1739, 'eli-wehner', 10, 'Botble\\Author\\Models\\Author', '2023-06-23 03:31:05', '2023-06-23 03:31:05', 'author'),
(1751, 'miss-heidi-thompson', 1, 'Botble\\Author\\Models\\Author', '2023-06-24 00:01:46', '2023-06-24 00:01:46', 'author'),
(1752, 'katelyn-boyer-iii', 2, 'Botble\\Author\\Models\\Author', '2023-06-24 00:01:46', '2023-06-24 00:01:46', 'author'),
(1753, 'eriberto-huels', 3, 'Botble\\Author\\Models\\Author', '2023-06-24 00:01:46', '2023-06-24 00:01:46', 'author'),
(1754, 'dr-bo-legros', 4, 'Botble\\Author\\Models\\Author', '2023-06-24 00:01:46', '2023-06-24 00:01:46', 'author'),
(1755, 'ms-odessa-ortiz', 5, 'Botble\\Author\\Models\\Author', '2023-06-24 00:01:46', '2023-06-24 00:01:46', 'author'),
(1756, 'alda-nitzsche', 6, 'Botble\\Author\\Models\\Author', '2023-06-24 00:01:46', '2023-06-24 00:01:46', 'author'),
(1757, 'mrs-lisa-muller', 7, 'Botble\\Author\\Models\\Author', '2023-06-24 00:01:46', '2023-06-24 00:01:46', 'author'),
(1758, 'chesley-erdman', 8, 'Botble\\Author\\Models\\Author', '2023-06-24 00:01:46', '2023-06-24 00:01:46', 'author'),
(1759, 'kaitlin-halvorson', 9, 'Botble\\Author\\Models\\Author', '2023-06-24 00:01:46', '2023-06-24 00:01:46', 'author'),
(1760, 'melyna-morar', 10, 'Botble\\Author\\Models\\Author', '2023-06-24 00:01:46', '2023-06-24 00:01:46', 'author'),
(1772, 'abagail-kuphal', 1, 'Botble\\Author\\Models\\Author', '2023-06-25 21:10:52', '2023-06-25 21:10:52', 'author'),
(1773, 'prof-presley-jaskolski-phd', 2, 'Botble\\Author\\Models\\Author', '2023-06-25 21:10:52', '2023-06-25 21:10:52', 'author'),
(1774, 'rolando-altenwerth', 3, 'Botble\\Author\\Models\\Author', '2023-06-25 21:10:53', '2023-06-25 21:10:53', 'author'),
(1775, 'pauline-kiehn-dds', 4, 'Botble\\Author\\Models\\Author', '2023-06-25 21:10:53', '2023-06-25 21:10:53', 'author'),
(1776, 'bridie-smitham-v', 5, 'Botble\\Author\\Models\\Author', '2023-06-25 21:10:53', '2023-06-25 21:10:53', 'author'),
(1777, 'elwyn-weissnat', 6, 'Botble\\Author\\Models\\Author', '2023-06-25 21:10:53', '2023-06-25 21:10:53', 'author'),
(1778, 'nikolas-lindgren', 7, 'Botble\\Author\\Models\\Author', '2023-06-25 21:10:53', '2023-06-25 21:10:53', 'author'),
(1779, 'ms-eveline-champlin', 8, 'Botble\\Author\\Models\\Author', '2023-06-25 21:10:53', '2023-06-25 21:10:53', 'author'),
(1780, 'emery-rodriguez', 9, 'Botble\\Author\\Models\\Author', '2023-06-25 21:10:53', '2023-06-25 21:10:53', 'author'),
(1781, 'arlo-russel-iii', 10, 'Botble\\Author\\Models\\Author', '2023-06-25 21:10:53', '2023-06-25 21:10:53', 'author'),
(1793, 'dashawn-sauer', 1, 'Botble\\Author\\Models\\Author', '2023-06-25 23:16:04', '2023-06-25 23:16:04', 'author'),
(1794, 'sallie-dicki', 2, 'Botble\\Author\\Models\\Author', '2023-06-25 23:16:04', '2023-06-25 23:16:04', 'author'),
(1795, 'kira-pollich', 3, 'Botble\\Author\\Models\\Author', '2023-06-25 23:16:04', '2023-06-25 23:16:04', 'author'),
(1796, 'vanessa-jast', 4, 'Botble\\Author\\Models\\Author', '2023-06-25 23:16:04', '2023-06-25 23:16:04', 'author'),
(1797, 'mertie-ebert', 5, 'Botble\\Author\\Models\\Author', '2023-06-25 23:16:04', '2023-06-25 23:16:04', 'author'),
(1798, 'ms-natasha-olson-v', 6, 'Botble\\Author\\Models\\Author', '2023-06-25 23:16:04', '2023-06-25 23:16:04', 'author'),
(1799, 'judy-ullrich', 7, 'Botble\\Author\\Models\\Author', '2023-06-25 23:16:04', '2023-06-25 23:16:04', 'author'),
(1800, 'madisen-ward', 8, 'Botble\\Author\\Models\\Author', '2023-06-25 23:16:04', '2023-06-25 23:16:04', 'author'),
(1801, 'mertie-hansen', 9, 'Botble\\Author\\Models\\Author', '2023-06-25 23:16:04', '2023-06-25 23:16:04', 'author'),
(1802, 'mr-osvaldo-hoppe-iii', 10, 'Botble\\Author\\Models\\Author', '2023-06-25 23:16:04', '2023-06-25 23:16:04', 'author'),
(1814, 'leila-hoeger', 1, 'Botble\\Author\\Models\\Author', '2023-06-27 00:42:13', '2023-06-27 00:42:13', 'author'),
(1815, 'desmond-dietrich', 2, 'Botble\\Author\\Models\\Author', '2023-06-27 00:42:13', '2023-06-27 00:42:13', 'author'),
(1816, 'lauren-kuhic', 3, 'Botble\\Author\\Models\\Author', '2023-06-27 00:42:13', '2023-06-27 00:42:13', 'author'),
(1817, 'marisa-luettgen', 4, 'Botble\\Author\\Models\\Author', '2023-06-27 00:42:13', '2023-06-27 00:42:13', 'author'),
(1818, 'norris-fritsch', 5, 'Botble\\Author\\Models\\Author', '2023-06-27 00:42:13', '2023-06-27 00:42:13', 'author'),
(1819, 'laura-pouros', 6, 'Botble\\Author\\Models\\Author', '2023-06-27 00:42:13', '2023-06-27 00:42:13', 'author'),
(1820, 'dr-tyshawn-moore-iv', 7, 'Botble\\Author\\Models\\Author', '2023-06-27 00:42:13', '2023-06-27 00:42:13', 'author'),
(1821, 'brisa-schumm', 8, 'Botble\\Author\\Models\\Author', '2023-06-27 00:42:13', '2023-06-27 00:42:13', 'author'),
(1822, 'dr-oswaldo-conn-phd', 9, 'Botble\\Author\\Models\\Author', '2023-06-27 00:42:13', '2023-06-27 00:42:13', 'author'),
(1823, 'kane-feest', 10, 'Botble\\Author\\Models\\Author', '2023-06-27 00:42:13', '2023-06-27 00:42:13', 'author'),
(1835, 'mohamed-bashirian', 1, 'Botble\\Author\\Models\\Author', '2023-06-29 02:42:45', '2023-06-29 02:42:45', 'author'),
(1836, 'angela-larkin-iii', 2, 'Botble\\Author\\Models\\Author', '2023-06-29 02:42:45', '2023-06-29 02:42:45', 'author'),
(1837, 'zoila-ernser', 3, 'Botble\\Author\\Models\\Author', '2023-06-29 02:42:45', '2023-06-29 02:42:45', 'author'),
(1838, 'dawson-pollich', 4, 'Botble\\Author\\Models\\Author', '2023-06-29 02:42:45', '2023-06-29 02:42:45', 'author'),
(1839, 'izabella-wiza', 5, 'Botble\\Author\\Models\\Author', '2023-06-29 02:42:45', '2023-06-29 02:42:45', 'author'),
(1840, 'mr-cedrick-gottlieb', 6, 'Botble\\Author\\Models\\Author', '2023-06-29 02:42:45', '2023-06-29 02:42:45', 'author'),
(1841, 'dr-halle-casper', 7, 'Botble\\Author\\Models\\Author', '2023-06-29 02:42:45', '2023-06-29 02:42:45', 'author'),
(1842, 'ryley-altenwerth-dds', 8, 'Botble\\Author\\Models\\Author', '2023-06-29 02:42:45', '2023-06-29 02:42:45', 'author'),
(1843, 'kallie-schaefer', 9, 'Botble\\Author\\Models\\Author', '2023-06-29 02:42:45', '2023-06-29 02:42:45', 'author'),
(1844, 'mrs-maryse-hane', 10, 'Botble\\Author\\Models\\Author', '2023-06-29 02:42:45', '2023-06-29 02:42:45', 'author'),
(1856, 'dr-edgardo-lubowitz-i', 1, 'Botble\\Author\\Models\\Author', '2023-07-01 17:29:31', '2023-07-01 17:29:31', 'author'),
(1857, 'bailey-armstrong', 2, 'Botble\\Author\\Models\\Author', '2023-07-01 17:29:31', '2023-07-01 17:29:31', 'author'),
(1858, 'eldridge-feil', 3, 'Botble\\Author\\Models\\Author', '2023-07-01 17:29:31', '2023-07-01 17:29:31', 'author'),
(1859, 'mr-monroe-rath-dds', 4, 'Botble\\Author\\Models\\Author', '2023-07-01 17:29:31', '2023-07-01 17:29:31', 'author'),
(1860, 'bart-kuhic-phd', 5, 'Botble\\Author\\Models\\Author', '2023-07-01 17:29:31', '2023-07-01 17:29:31', 'author'),
(1861, 'prof-golden-harber-dds', 6, 'Botble\\Author\\Models\\Author', '2023-07-01 17:29:31', '2023-07-01 17:29:31', 'author'),
(1862, 'prof-mortimer-bauch-dvm', 7, 'Botble\\Author\\Models\\Author', '2023-07-01 17:29:31', '2023-07-01 17:29:31', 'author'),
(1863, 'edwin-kuhic', 8, 'Botble\\Author\\Models\\Author', '2023-07-01 17:29:31', '2023-07-01 17:29:31', 'author'),
(1864, 'tom-wintheiser', 9, 'Botble\\Author\\Models\\Author', '2023-07-01 17:29:31', '2023-07-01 17:29:31', 'author'),
(1865, 'dr-keith-franecki', 10, 'Botble\\Author\\Models\\Author', '2023-07-01 17:29:31', '2023-07-01 17:29:31', 'author'),
(1877, 'vidal-smitham', 1, 'Botble\\Author\\Models\\Author', '2023-07-02 19:35:48', '2023-07-02 19:35:48', 'author'),
(1878, 'green-weissnat', 2, 'Botble\\Author\\Models\\Author', '2023-07-02 19:35:48', '2023-07-02 19:35:48', 'author'),
(1879, 'dr-connor-kovacek-phd', 3, 'Botble\\Author\\Models\\Author', '2023-07-02 19:35:48', '2023-07-02 19:35:48', 'author'),
(1880, 'jedidiah-macejkovic', 4, 'Botble\\Author\\Models\\Author', '2023-07-02 19:35:48', '2023-07-02 19:35:48', 'author'),
(1881, 'ivah-weimann-iv', 5, 'Botble\\Author\\Models\\Author', '2023-07-02 19:35:48', '2023-07-02 19:35:48', 'author'),
(1882, 'carmen-lynch', 6, 'Botble\\Author\\Models\\Author', '2023-07-02 19:35:48', '2023-07-02 19:35:48', 'author'),
(1883, 'prof-alverta-bernhard', 7, 'Botble\\Author\\Models\\Author', '2023-07-02 19:35:48', '2023-07-02 19:35:48', 'author'),
(1884, 'abigayle-hirthe-iv', 8, 'Botble\\Author\\Models\\Author', '2023-07-02 19:35:48', '2023-07-02 19:35:48', 'author'),
(1885, 'ms-daphney-vandervort', 9, 'Botble\\Author\\Models\\Author', '2023-07-02 19:35:48', '2023-07-02 19:35:48', 'author'),
(1886, 'bartholome-larson-v', 10, 'Botble\\Author\\Models\\Author', '2023-07-02 19:35:48', '2023-07-02 19:35:48', 'author'),
(1898, 'dayana-runolfsson', 1, 'Botble\\Author\\Models\\Author', '2023-07-03 04:30:15', '2023-07-03 04:30:15', 'author'),
(1899, 'kayla-lemke', 2, 'Botble\\Author\\Models\\Author', '2023-07-03 04:30:15', '2023-07-03 04:30:15', 'author'),
(1900, 'sabina-muller', 3, 'Botble\\Author\\Models\\Author', '2023-07-03 04:30:15', '2023-07-03 04:30:15', 'author'),
(1901, 'dr-emmanuelle-aufderhar-dds', 4, 'Botble\\Author\\Models\\Author', '2023-07-03 04:30:15', '2023-07-03 04:30:15', 'author'),
(1902, 'ezekiel-tromp', 5, 'Botble\\Author\\Models\\Author', '2023-07-03 04:30:15', '2023-07-03 04:30:15', 'author'),
(1903, 'dr-kaela-heidenreich-i', 6, 'Botble\\Author\\Models\\Author', '2023-07-03 04:30:15', '2023-07-03 04:30:15', 'author'),
(1904, 'brady-quitzon', 7, 'Botble\\Author\\Models\\Author', '2023-07-03 04:30:15', '2023-07-03 04:30:15', 'author'),
(1905, 'prof-johnnie-emmerich', 8, 'Botble\\Author\\Models\\Author', '2023-07-03 04:30:15', '2023-07-03 04:30:15', 'author'),
(1906, 'dr-arch-jerde-phd', 9, 'Botble\\Author\\Models\\Author', '2023-07-03 04:30:15', '2023-07-03 04:30:15', 'author'),
(1907, 'noe-mayert', 10, 'Botble\\Author\\Models\\Author', '2023-07-03 04:30:15', '2023-07-03 04:30:15', 'author'),
(1919, 'ross-collier', 1, 'Botble\\Author\\Models\\Author', '2023-07-03 22:13:58', '2023-07-03 22:13:58', 'author'),
(1920, 'kelsie-waters', 2, 'Botble\\Author\\Models\\Author', '2023-07-03 22:13:58', '2023-07-03 22:13:58', 'author'),
(1921, 'foster-krajcik', 3, 'Botble\\Author\\Models\\Author', '2023-07-03 22:13:58', '2023-07-03 22:13:58', 'author'),
(1922, 'hardy-nikolaus', 4, 'Botble\\Author\\Models\\Author', '2023-07-03 22:13:58', '2023-07-03 22:13:58', 'author'),
(1923, 'mr-jaylen-donnelly-dds', 5, 'Botble\\Author\\Models\\Author', '2023-07-03 22:13:58', '2023-07-03 22:13:58', 'author'),
(1924, 'rachael-hayes-i', 6, 'Botble\\Author\\Models\\Author', '2023-07-03 22:13:58', '2023-07-03 22:13:58', 'author'),
(1925, 'lavon-metz', 7, 'Botble\\Author\\Models\\Author', '2023-07-03 22:13:58', '2023-07-03 22:13:58', 'author'),
(1926, 'dr-ransom-welch-sr', 8, 'Botble\\Author\\Models\\Author', '2023-07-03 22:13:58', '2023-07-03 22:13:58', 'author'),
(1927, 'prof-alvera-harris-jr', 9, 'Botble\\Author\\Models\\Author', '2023-07-03 22:13:58', '2023-07-03 22:13:58', 'author'),
(1928, 'citlalli-bahringer', 10, 'Botble\\Author\\Models\\Author', '2023-07-03 22:13:58', '2023-07-03 22:13:58', 'author'),
(1940, 'mara-ledner-dvm', 1, 'Botble\\Author\\Models\\Author', '2023-07-06 21:15:19', '2023-07-06 21:15:19', 'author'),
(1941, 'destiny-reilly-dvm', 2, 'Botble\\Author\\Models\\Author', '2023-07-06 21:15:19', '2023-07-06 21:15:19', 'author'),
(1942, 'mr-olen-kihn', 3, 'Botble\\Author\\Models\\Author', '2023-07-06 21:15:19', '2023-07-06 21:15:19', 'author'),
(1943, 'percival-hermann-iv', 4, 'Botble\\Author\\Models\\Author', '2023-07-06 21:15:19', '2023-07-06 21:15:19', 'author'),
(1944, 'joany-miller-i', 5, 'Botble\\Author\\Models\\Author', '2023-07-06 21:15:19', '2023-07-06 21:15:19', 'author'),
(1945, 'edmund-russel', 6, 'Botble\\Author\\Models\\Author', '2023-07-06 21:15:19', '2023-07-06 21:15:19', 'author'),
(1946, 'marvin-wisozk', 7, 'Botble\\Author\\Models\\Author', '2023-07-06 21:15:19', '2023-07-06 21:15:19', 'author'),
(1947, 'misty-schimmel', 8, 'Botble\\Author\\Models\\Author', '2023-07-06 21:15:19', '2023-07-06 21:15:19', 'author'),
(1948, 'elisa-zieme-dds', 9, 'Botble\\Author\\Models\\Author', '2023-07-06 21:15:19', '2023-07-06 21:15:19', 'author'),
(1949, 'prof-katelin-monahan', 10, 'Botble\\Author\\Models\\Author', '2023-07-06 21:15:19', '2023-07-06 21:15:19', 'author'),
(1961, 'kayley-tremblay', 1, 'Botble\\Author\\Models\\Author', '2023-07-10 00:21:19', '2023-07-10 00:21:19', 'author'),
(1962, 'anahi-wolff', 2, 'Botble\\Author\\Models\\Author', '2023-07-10 00:21:19', '2023-07-10 00:21:19', 'author'),
(1963, 'leone-bartell-phd', 3, 'Botble\\Author\\Models\\Author', '2023-07-10 00:21:19', '2023-07-10 00:21:19', 'author'),
(1964, 'mr-avery-bode-dvm', 4, 'Botble\\Author\\Models\\Author', '2023-07-10 00:21:19', '2023-07-10 00:21:19', 'author'),
(1965, 'dr-frederik-sanford', 5, 'Botble\\Author\\Models\\Author', '2023-07-10 00:21:19', '2023-07-10 00:21:19', 'author'),
(1966, 'mohammad-ortiz', 6, 'Botble\\Author\\Models\\Author', '2023-07-10 00:21:19', '2023-07-10 00:21:19', 'author'),
(1967, 'brianne-runolfsson', 7, 'Botble\\Author\\Models\\Author', '2023-07-10 00:21:19', '2023-07-10 00:21:19', 'author'),
(1968, 'lamont-mann', 8, 'Botble\\Author\\Models\\Author', '2023-07-10 00:21:19', '2023-07-10 00:21:19', 'author'),
(1969, 'nelda-price', 9, 'Botble\\Author\\Models\\Author', '2023-07-10 00:21:19', '2023-07-10 00:21:19', 'author'),
(1970, 'bert-gorczany-jr', 10, 'Botble\\Author\\Models\\Author', '2023-07-10 00:21:19', '2023-07-10 00:21:19', 'author'),
(1982, 'rowan-beer', 1, 'Botble\\Author\\Models\\Author', '2023-07-10 21:20:48', '2023-07-10 21:20:48', 'author'),
(1983, 'randall-pfeffer', 2, 'Botble\\Author\\Models\\Author', '2023-07-10 21:20:48', '2023-07-10 21:20:48', 'author'),
(1984, 'ms-krista-hermann', 3, 'Botble\\Author\\Models\\Author', '2023-07-10 21:20:48', '2023-07-10 21:20:48', 'author'),
(1985, 'prof-milton-eichmann-sr', 4, 'Botble\\Author\\Models\\Author', '2023-07-10 21:20:48', '2023-07-10 21:20:48', 'author'),
(1986, 'darrell-kiehn', 5, 'Botble\\Author\\Models\\Author', '2023-07-10 21:20:48', '2023-07-10 21:20:48', 'author'),
(1987, 'maggie-dickinson', 6, 'Botble\\Author\\Models\\Author', '2023-07-10 21:20:48', '2023-07-10 21:20:48', 'author'),
(1988, 'king-wisozk', 7, 'Botble\\Author\\Models\\Author', '2023-07-10 21:20:48', '2023-07-10 21:20:48', 'author'),
(1989, 'stewart-ernser', 8, 'Botble\\Author\\Models\\Author', '2023-07-10 21:20:48', '2023-07-10 21:20:48', 'author'),
(1990, 'okey-predovic', 9, 'Botble\\Author\\Models\\Author', '2023-07-10 21:20:48', '2023-07-10 21:20:48', 'author'),
(1991, 'laurie-hodkiewicz-md', 10, 'Botble\\Author\\Models\\Author', '2023-07-10 21:20:48', '2023-07-10 21:20:48', 'author'),
(2003, 'everett-dietrich', 1, 'Botble\\Author\\Models\\Author', '2023-07-13 00:30:05', '2023-07-13 00:30:05', 'author'),
(2004, 'mr-morton-rosenbaum', 2, 'Botble\\Author\\Models\\Author', '2023-07-13 00:30:05', '2023-07-13 00:30:05', 'author'),
(2005, 'yvonne-okuneva', 3, 'Botble\\Author\\Models\\Author', '2023-07-13 00:30:05', '2023-07-13 00:30:05', 'author'),
(2006, 'lucinda-cole', 4, 'Botble\\Author\\Models\\Author', '2023-07-13 00:30:05', '2023-07-13 00:30:05', 'author'),
(2007, 'prof-carrie-conroy', 5, 'Botble\\Author\\Models\\Author', '2023-07-13 00:30:05', '2023-07-13 00:30:05', 'author'),
(2008, 'prof-bonnie-thiel-jr', 6, 'Botble\\Author\\Models\\Author', '2023-07-13 00:30:05', '2023-07-13 00:30:05', 'author'),
(2009, 'korey-gleason', 7, 'Botble\\Author\\Models\\Author', '2023-07-13 00:30:05', '2023-07-13 00:30:05', 'author'),
(2010, 'ms-adrianna-kirlin', 8, 'Botble\\Author\\Models\\Author', '2023-07-13 00:30:05', '2023-07-13 00:30:05', 'author'),
(2011, 'miss-lyda-bernhard-dvm', 9, 'Botble\\Author\\Models\\Author', '2023-07-13 00:30:05', '2023-07-13 00:30:05', 'author'),
(2012, 'nova-heidenreich-iv', 10, 'Botble\\Author\\Models\\Author', '2023-07-13 00:30:05', '2023-07-13 00:30:05', 'author'),
(2024, 'alivia-davis', 1, 'Botble\\Author\\Models\\Author', '2023-07-13 01:40:47', '2023-07-13 01:40:47', 'author'),
(2025, 'dr-jed-trantow-v', 2, 'Botble\\Author\\Models\\Author', '2023-07-13 01:40:47', '2023-07-13 01:40:47', 'author'),
(2026, 'joy-ortiz-jr', 3, 'Botble\\Author\\Models\\Author', '2023-07-13 01:40:47', '2023-07-13 01:40:47', 'author'),
(2027, 'toney-legros', 4, 'Botble\\Author\\Models\\Author', '2023-07-13 01:40:47', '2023-07-13 01:40:47', 'author'),
(2028, 'julius-huels', 5, 'Botble\\Author\\Models\\Author', '2023-07-13 01:40:47', '2023-07-13 01:40:47', 'author'),
(2029, 'luis-quitzon', 6, 'Botble\\Author\\Models\\Author', '2023-07-13 01:40:47', '2023-07-13 01:40:47', 'author'),
(2030, 'mckenna-kertzmann-md', 7, 'Botble\\Author\\Models\\Author', '2023-07-13 01:40:47', '2023-07-13 01:40:47', 'author'),
(2031, 'afton-vandervort', 8, 'Botble\\Author\\Models\\Author', '2023-07-13 01:40:47', '2023-07-13 01:40:47', 'author'),
(2032, 'prof-aurelia-anderson-sr', 9, 'Botble\\Author\\Models\\Author', '2023-07-13 01:40:47', '2023-07-13 01:40:47', 'author'),
(2033, 'kyleigh-cassin', 10, 'Botble\\Author\\Models\\Author', '2023-07-13 01:40:47', '2023-07-13 01:40:47', 'author'),
(2045, 'prof-pink-ebert', 1, 'Botble\\Author\\Models\\Author', '2023-07-13 20:19:01', '2023-07-13 20:19:01', 'author'),
(2046, 'dr-gayle-kerluke-dds', 2, 'Botble\\Author\\Models\\Author', '2023-07-13 20:19:01', '2023-07-13 20:19:01', 'author'),
(2047, 'mallory-oconnell', 3, 'Botble\\Author\\Models\\Author', '2023-07-13 20:19:01', '2023-07-13 20:19:01', 'author'),
(2048, 'melody-cormier-md', 4, 'Botble\\Author\\Models\\Author', '2023-07-13 20:19:01', '2023-07-13 20:19:01', 'author'),
(2049, 'edison-gislason', 5, 'Botble\\Author\\Models\\Author', '2023-07-13 20:19:01', '2023-07-13 20:19:01', 'author'),
(2050, 'dr-maximillian-glover', 6, 'Botble\\Author\\Models\\Author', '2023-07-13 20:19:01', '2023-07-13 20:19:01', 'author'),
(2051, 'vivianne-renner', 7, 'Botble\\Author\\Models\\Author', '2023-07-13 20:19:01', '2023-07-13 20:19:01', 'author'),
(2052, 'dr-magnus-blick', 8, 'Botble\\Author\\Models\\Author', '2023-07-13 20:19:01', '2023-07-13 20:19:01', 'author'),
(2053, 'beryl-walter', 9, 'Botble\\Author\\Models\\Author', '2023-07-13 20:19:01', '2023-07-13 20:19:01', 'author'),
(2054, 'nestor-jerde', 10, 'Botble\\Author\\Models\\Author', '2023-07-13 20:19:01', '2023-07-13 20:19:01', 'author'),
(2066, 'miss-jermaine-murazik', 1, 'Botble\\Author\\Models\\Author', '2023-07-14 02:04:14', '2023-07-14 02:04:14', 'author'),
(2067, 'mr-deon-reinger', 2, 'Botble\\Author\\Models\\Author', '2023-07-14 02:04:14', '2023-07-14 02:04:14', 'author'),
(2068, 'prof-oren-hamill', 3, 'Botble\\Author\\Models\\Author', '2023-07-14 02:04:14', '2023-07-14 02:04:14', 'author'),
(2069, 'ms-hannah-zieme', 4, 'Botble\\Author\\Models\\Author', '2023-07-14 02:04:14', '2023-07-14 02:04:14', 'author'),
(2070, 'bennett-senger', 5, 'Botble\\Author\\Models\\Author', '2023-07-14 02:04:14', '2023-07-14 02:04:14', 'author'),
(2071, 'laverna-hudson', 6, 'Botble\\Author\\Models\\Author', '2023-07-14 02:04:14', '2023-07-14 02:04:14', 'author'),
(2072, 'lenore-stokes', 7, 'Botble\\Author\\Models\\Author', '2023-07-14 02:04:14', '2023-07-14 02:04:14', 'author'),
(2073, 'stephon-eichmann', 8, 'Botble\\Author\\Models\\Author', '2023-07-14 02:04:14', '2023-07-14 02:04:14', 'author'),
(2074, 'mireille-rice', 9, 'Botble\\Author\\Models\\Author', '2023-07-14 02:04:14', '2023-07-14 02:04:14', 'author'),
(2075, 'dr-alessia-ferry', 10, 'Botble\\Author\\Models\\Author', '2023-07-14 02:04:14', '2023-07-14 02:04:14', 'author'),
(2087, 'mariana-hamill', 1, 'Botble\\Author\\Models\\Author', '2023-07-14 23:14:08', '2023-07-14 23:14:08', 'author'),
(2088, 'jackson-graham', 2, 'Botble\\Author\\Models\\Author', '2023-07-14 23:14:08', '2023-07-14 23:14:08', 'author'),
(2089, 'dr-garland-mitchell-dvm', 3, 'Botble\\Author\\Models\\Author', '2023-07-14 23:14:08', '2023-07-14 23:14:08', 'author'),
(2090, 'prof-cydney-moore', 4, 'Botble\\Author\\Models\\Author', '2023-07-14 23:14:08', '2023-07-14 23:14:08', 'author'),
(2091, 'agustina-eichmann', 5, 'Botble\\Author\\Models\\Author', '2023-07-14 23:14:08', '2023-07-14 23:14:08', 'author'),
(2092, 'prof-laurie-tremblay-jr', 6, 'Botble\\Author\\Models\\Author', '2023-07-14 23:14:08', '2023-07-14 23:14:08', 'author'),
(2093, 'meta-steuber-dds', 7, 'Botble\\Author\\Models\\Author', '2023-07-14 23:14:08', '2023-07-14 23:14:08', 'author'),
(2094, 'mr-robert-raynor', 8, 'Botble\\Author\\Models\\Author', '2023-07-14 23:14:08', '2023-07-14 23:14:08', 'author'),
(2095, 'hannah-marks', 9, 'Botble\\Author\\Models\\Author', '2023-07-14 23:14:08', '2023-07-14 23:14:08', 'author'),
(2096, 'miss-willa-corkery-dvm', 10, 'Botble\\Author\\Models\\Author', '2023-07-14 23:14:08', '2023-07-14 23:14:08', 'author'),
(2108, 'bridgette-rau', 1, 'Botble\\Author\\Models\\Author', '2023-07-18 23:24:04', '2023-07-18 23:24:04', 'author'),
(2109, 'helena-zulauf-md', 2, 'Botble\\Author\\Models\\Author', '2023-07-18 23:24:04', '2023-07-18 23:24:04', 'author'),
(2110, 'kyleigh-johnston', 3, 'Botble\\Author\\Models\\Author', '2023-07-18 23:24:04', '2023-07-18 23:24:04', 'author'),
(2111, 'eleanora-runte-sr', 4, 'Botble\\Author\\Models\\Author', '2023-07-18 23:24:04', '2023-07-18 23:24:04', 'author'),
(2112, 'nick-jakubowski', 5, 'Botble\\Author\\Models\\Author', '2023-07-18 23:24:04', '2023-07-18 23:24:04', 'author'),
(2113, 'ms-margret-mosciski-iii', 6, 'Botble\\Author\\Models\\Author', '2023-07-18 23:24:04', '2023-07-18 23:24:04', 'author'),
(2114, 'mason-towne-sr', 7, 'Botble\\Author\\Models\\Author', '2023-07-18 23:24:04', '2023-07-18 23:24:04', 'author'),
(2115, 'oscar-satterfield-iv', 8, 'Botble\\Author\\Models\\Author', '2023-07-18 23:24:04', '2023-07-18 23:24:04', 'author'),
(2116, 'kaitlin-deckow', 9, 'Botble\\Author\\Models\\Author', '2023-07-18 23:24:04', '2023-07-18 23:24:04', 'author'),
(2117, 'prof-dolly-bailey', 10, 'Botble\\Author\\Models\\Author', '2023-07-18 23:24:04', '2023-07-18 23:24:04', 'author'),
(2129, 'irma-murphy', 1, 'Botble\\Author\\Models\\Author', '2023-08-13 20:45:58', '2023-08-13 20:45:58', 'author'),
(2130, 'yoshiko-boyer', 2, 'Botble\\Author\\Models\\Author', '2023-08-13 20:45:58', '2023-08-13 20:45:58', 'author'),
(2131, 'fern-sanford-jr', 3, 'Botble\\Author\\Models\\Author', '2023-08-13 20:45:58', '2023-08-13 20:45:58', 'author'),
(2132, 'mr-armand-wilkinson-ii', 4, 'Botble\\Author\\Models\\Author', '2023-08-13 20:45:58', '2023-08-13 20:45:58', 'author'),
(2133, 'emil-buckridge', 5, 'Botble\\Author\\Models\\Author', '2023-08-13 20:45:58', '2023-08-13 20:45:58', 'author'),
(2134, 'dallas-wunsch', 6, 'Botble\\Author\\Models\\Author', '2023-08-13 20:45:58', '2023-08-13 20:45:58', 'author'),
(2135, 'miss-kyra-zieme', 7, 'Botble\\Author\\Models\\Author', '2023-08-13 20:45:58', '2023-08-13 20:45:58', 'author'),
(2136, 'sam-armstrong', 8, 'Botble\\Author\\Models\\Author', '2023-08-13 20:45:58', '2023-08-13 20:45:58', 'author'),
(2137, 'favian-schuppe', 9, 'Botble\\Author\\Models\\Author', '2023-08-13 20:45:58', '2023-08-13 20:45:58', 'author'),
(2138, 'dr-tobin-sanford', 10, 'Botble\\Author\\Models\\Author', '2023-08-13 20:45:58', '2023-08-13 20:45:58', 'author'),
(2150, 'kylie-treutel-sr', 1, 'Botble\\Author\\Models\\Author', '2023-08-14 00:51:12', '2023-08-14 00:51:12', 'author'),
(2151, 'ms-mossie-mosciski', 2, 'Botble\\Author\\Models\\Author', '2023-08-14 00:51:12', '2023-08-14 00:51:12', 'author'),
(2152, 'stanley-schmidt', 3, 'Botble\\Author\\Models\\Author', '2023-08-14 00:51:12', '2023-08-14 00:51:12', 'author'),
(2153, 'prof-teresa-keebler', 4, 'Botble\\Author\\Models\\Author', '2023-08-14 00:51:12', '2023-08-14 00:51:12', 'author'),
(2154, 'mr-karl-ferry', 5, 'Botble\\Author\\Models\\Author', '2023-08-14 00:51:12', '2023-08-14 00:51:12', 'author'),
(2155, 'dane-hill', 6, 'Botble\\Author\\Models\\Author', '2023-08-14 00:51:12', '2023-08-14 00:51:12', 'author'),
(2156, 'elijah-rogahn', 7, 'Botble\\Author\\Models\\Author', '2023-08-14 00:51:12', '2023-08-14 00:51:12', 'author');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `created_at`, `updated_at`, `prefix`) VALUES
(2157, 'jimmie-mcglynn', 8, 'Botble\\Author\\Models\\Author', '2023-08-14 00:51:12', '2023-08-14 00:51:12', 'author'),
(2158, 'gladyce-schmitt', 9, 'Botble\\Author\\Models\\Author', '2023-08-14 00:51:12', '2023-08-14 00:51:12', 'author'),
(2159, 'rosie-kling', 10, 'Botble\\Author\\Models\\Author', '2023-08-14 00:51:12', '2023-08-14 00:51:12', 'author'),
(2171, 'mr-jayme-kassulke-v', 1, 'Botble\\Author\\Models\\Author', '2023-08-17 00:03:50', '2023-08-17 00:03:50', 'author'),
(2172, 'cory-cartwright-md', 2, 'Botble\\Author\\Models\\Author', '2023-08-17 00:03:50', '2023-08-17 00:03:50', 'author'),
(2173, 'isabelle-wilkinson-phd', 3, 'Botble\\Author\\Models\\Author', '2023-08-17 00:03:50', '2023-08-17 00:03:50', 'author'),
(2174, 'armando-tremblay', 4, 'Botble\\Author\\Models\\Author', '2023-08-17 00:03:50', '2023-08-17 00:03:50', 'author'),
(2175, 'mortimer-rogahn', 5, 'Botble\\Author\\Models\\Author', '2023-08-17 00:03:50', '2023-08-17 00:03:50', 'author'),
(2176, 'prof-gladyce-harvey-md', 6, 'Botble\\Author\\Models\\Author', '2023-08-17 00:03:50', '2023-08-17 00:03:50', 'author'),
(2177, 'jennyfer-collins-i', 7, 'Botble\\Author\\Models\\Author', '2023-08-17 00:03:50', '2023-08-17 00:03:50', 'author'),
(2178, 'ursula-klein', 8, 'Botble\\Author\\Models\\Author', '2023-08-17 00:03:50', '2023-08-17 00:03:50', 'author'),
(2179, 'annabelle-schultz', 9, 'Botble\\Author\\Models\\Author', '2023-08-17 00:03:50', '2023-08-17 00:03:50', 'author'),
(2180, 'dr-thad-tromp', 10, 'Botble\\Author\\Models\\Author', '2023-08-17 00:03:50', '2023-08-17 00:03:50', 'author'),
(2192, 'jefferey-shields', 1, 'Botble\\Author\\Models\\Author', '2023-08-17 01:24:28', '2023-08-17 01:24:28', 'author'),
(2193, 'mr-alfonso-muller', 2, 'Botble\\Author\\Models\\Author', '2023-08-17 01:24:28', '2023-08-17 01:24:28', 'author'),
(2194, 'alfonzo-blick', 3, 'Botble\\Author\\Models\\Author', '2023-08-17 01:24:28', '2023-08-17 01:24:28', 'author'),
(2195, 'mr-casper-ebert', 4, 'Botble\\Author\\Models\\Author', '2023-08-17 01:24:28', '2023-08-17 01:24:28', 'author'),
(2196, 'karina-herzog', 5, 'Botble\\Author\\Models\\Author', '2023-08-17 01:24:28', '2023-08-17 01:24:28', 'author'),
(2197, 'bettye-kunde-phd', 6, 'Botble\\Author\\Models\\Author', '2023-08-17 01:24:28', '2023-08-17 01:24:28', 'author'),
(2198, 'will-berge', 7, 'Botble\\Author\\Models\\Author', '2023-08-17 01:24:28', '2023-08-17 01:24:28', 'author'),
(2199, 'ms-ashly-wiegand-ii', 8, 'Botble\\Author\\Models\\Author', '2023-08-17 01:24:28', '2023-08-17 01:24:28', 'author'),
(2200, 'dr-jerrell-kautzer-ii', 9, 'Botble\\Author\\Models\\Author', '2023-08-17 01:24:28', '2023-08-17 01:24:28', 'author'),
(2201, 'kaylah-shanahan', 10, 'Botble\\Author\\Models\\Author', '2023-08-17 01:24:28', '2023-08-17 01:24:28', 'author'),
(2213, 'mrs-lynn-prohaska', 1, 'Botble\\Author\\Models\\Author', '2023-08-20 01:22:30', '2023-08-20 01:22:30', 'author'),
(2214, 'patience-ritchie', 2, 'Botble\\Author\\Models\\Author', '2023-08-20 01:22:30', '2023-08-20 01:22:30', 'author'),
(2215, 'destini-gutmann-dvm', 3, 'Botble\\Author\\Models\\Author', '2023-08-20 01:22:30', '2023-08-20 01:22:30', 'author'),
(2216, 'pinkie-rosenbaum', 4, 'Botble\\Author\\Models\\Author', '2023-08-20 01:22:30', '2023-08-20 01:22:30', 'author'),
(2217, 'damion-breitenberg', 5, 'Botble\\Author\\Models\\Author', '2023-08-20 01:22:30', '2023-08-20 01:22:30', 'author'),
(2218, 'marlee-glover-iv', 6, 'Botble\\Author\\Models\\Author', '2023-08-20 01:22:30', '2023-08-20 01:22:30', 'author'),
(2219, 'ethan-runolfsdottir', 7, 'Botble\\Author\\Models\\Author', '2023-08-20 01:22:30', '2023-08-20 01:22:30', 'author'),
(2220, 'oren-adams', 8, 'Botble\\Author\\Models\\Author', '2023-08-20 01:22:30', '2023-08-20 01:22:30', 'author'),
(2221, 'elliot-franecki', 9, 'Botble\\Author\\Models\\Author', '2023-08-20 01:22:30', '2023-08-20 01:22:30', 'author'),
(2222, 'quincy-herzog-md', 10, 'Botble\\Author\\Models\\Author', '2023-08-20 01:22:30', '2023-08-20 01:22:30', 'author'),
(2234, 'mr-milford-carter-dds', 1, 'Botble\\Author\\Models\\Author', '2023-08-20 23:03:15', '2023-08-20 23:03:15', 'author'),
(2235, 'dr-jazmyne-corkery', 2, 'Botble\\Author\\Models\\Author', '2023-08-20 23:03:15', '2023-08-20 23:03:15', 'author'),
(2236, 'christine-pouros', 3, 'Botble\\Author\\Models\\Author', '2023-08-20 23:03:15', '2023-08-20 23:03:15', 'author'),
(2237, 'elvie-pfannerstill', 4, 'Botble\\Author\\Models\\Author', '2023-08-20 23:03:15', '2023-08-20 23:03:15', 'author'),
(2238, 'davin-yundt', 5, 'Botble\\Author\\Models\\Author', '2023-08-20 23:03:15', '2023-08-20 23:03:15', 'author'),
(2239, 'gerald-feest', 6, 'Botble\\Author\\Models\\Author', '2023-08-20 23:03:15', '2023-08-20 23:03:15', 'author'),
(2240, 'cara-zemlak', 7, 'Botble\\Author\\Models\\Author', '2023-08-20 23:03:15', '2023-08-20 23:03:15', 'author'),
(2241, 'keegan-kerluke', 8, 'Botble\\Author\\Models\\Author', '2023-08-20 23:03:15', '2023-08-20 23:03:15', 'author'),
(2242, 'abe-wiegand', 9, 'Botble\\Author\\Models\\Author', '2023-08-20 23:03:15', '2023-08-20 23:03:15', 'author'),
(2243, 'miss-gregoria-oconnell-dvm', 10, 'Botble\\Author\\Models\\Author', '2023-08-20 23:03:15', '2023-08-20 23:03:15', 'author'),
(2255, 'elian-aufderhar', 1, 'Botble\\Author\\Models\\Author', '2023-08-24 00:22:24', '2023-08-24 00:22:24', 'author'),
(2256, 'rudy-reynolds', 2, 'Botble\\Author\\Models\\Author', '2023-08-24 00:22:24', '2023-08-24 00:22:24', 'author'),
(2257, 'miss-jaqueline-terry-i', 3, 'Botble\\Author\\Models\\Author', '2023-08-24 00:22:24', '2023-08-24 00:22:24', 'author'),
(2258, 'melyna-shanahan', 4, 'Botble\\Author\\Models\\Author', '2023-08-24 00:22:24', '2023-08-24 00:22:24', 'author'),
(2259, 'amya-kuphal', 5, 'Botble\\Author\\Models\\Author', '2023-08-24 00:22:24', '2023-08-24 00:22:24', 'author'),
(2260, 'mr-thaddeus-nicolas', 6, 'Botble\\Author\\Models\\Author', '2023-08-24 00:22:24', '2023-08-24 00:22:24', 'author'),
(2261, 'dr-frederic-kutch', 7, 'Botble\\Author\\Models\\Author', '2023-08-24 00:22:24', '2023-08-24 00:22:24', 'author'),
(2262, 'guiseppe-tillman', 8, 'Botble\\Author\\Models\\Author', '2023-08-24 00:22:24', '2023-08-24 00:22:24', 'author'),
(2263, 'payton-dach', 9, 'Botble\\Author\\Models\\Author', '2023-08-24 00:22:24', '2023-08-24 00:22:24', 'author'),
(2264, 'alisha-sporer', 10, 'Botble\\Author\\Models\\Author', '2023-08-24 00:22:24', '2023-08-24 00:22:24', 'author'),
(2276, 'shyanne-bartoletti', 1, 'Botble\\Author\\Models\\Author', '2023-09-05 23:57:54', '2023-09-05 23:57:54', 'author'),
(2277, 'ms-syble-spinka-jr', 2, 'Botble\\Author\\Models\\Author', '2023-09-05 23:57:54', '2023-09-05 23:57:54', 'author'),
(2278, 'weldon-reinger', 3, 'Botble\\Author\\Models\\Author', '2023-09-05 23:57:54', '2023-09-05 23:57:54', 'author'),
(2279, 'bryana-casper-iv', 4, 'Botble\\Author\\Models\\Author', '2023-09-05 23:57:54', '2023-09-05 23:57:54', 'author'),
(2280, 'nya-dicki', 5, 'Botble\\Author\\Models\\Author', '2023-09-05 23:57:54', '2023-09-05 23:57:54', 'author'),
(2281, 'nickolas-barrows', 6, 'Botble\\Author\\Models\\Author', '2023-09-05 23:57:54', '2023-09-05 23:57:54', 'author'),
(2282, 'dr-gillian-runolfsson-i', 7, 'Botble\\Author\\Models\\Author', '2023-09-05 23:57:54', '2023-09-05 23:57:54', 'author'),
(2283, 'ben-kunze', 8, 'Botble\\Author\\Models\\Author', '2023-09-05 23:57:54', '2023-09-05 23:57:54', 'author'),
(2284, 'dr-otha-heidenreich', 9, 'Botble\\Author\\Models\\Author', '2023-09-05 23:57:54', '2023-09-05 23:57:54', 'author'),
(2285, 'frankie-bogisich-iv', 10, 'Botble\\Author\\Models\\Author', '2023-09-05 23:57:54', '2023-09-05 23:57:54', 'author'),
(2297, 'agustina-nienow', 1, 'Botble\\Author\\Models\\Author', '2023-09-13 00:00:37', '2023-09-13 00:00:37', 'author'),
(2298, 'dr-libby-block', 2, 'Botble\\Author\\Models\\Author', '2023-09-13 00:00:37', '2023-09-13 00:00:37', 'author'),
(2299, 'mr-kian-crist-v', 3, 'Botble\\Author\\Models\\Author', '2023-09-13 00:00:37', '2023-09-13 00:00:37', 'author'),
(2300, 'rachel-schinner', 4, 'Botble\\Author\\Models\\Author', '2023-09-13 00:00:37', '2023-09-13 00:00:37', 'author'),
(2301, 'prof-jaren-feeney-dvm', 5, 'Botble\\Author\\Models\\Author', '2023-09-13 00:00:37', '2023-09-13 00:00:37', 'author'),
(2302, 'citlalli-hegmann', 6, 'Botble\\Author\\Models\\Author', '2023-09-13 00:00:37', '2023-09-13 00:00:37', 'author'),
(2303, 'immanuel-dubuque', 7, 'Botble\\Author\\Models\\Author', '2023-09-13 00:00:37', '2023-09-13 00:00:37', 'author'),
(2304, 'carolanne-schmidt', 8, 'Botble\\Author\\Models\\Author', '2023-09-13 00:00:37', '2023-09-13 00:00:37', 'author'),
(2305, 'prof-karolann-fay', 9, 'Botble\\Author\\Models\\Author', '2023-09-13 00:00:37', '2023-09-13 00:00:37', 'author'),
(2306, 'dr-tiara-walsh', 10, 'Botble\\Author\\Models\\Author', '2023-09-13 00:00:37', '2023-09-13 00:00:37', 'author'),
(2318, 'delilah-bins', 1, 'Botble\\Author\\Models\\Author', '2023-09-13 01:52:52', '2023-09-13 01:52:52', 'author'),
(2319, 'trinity-baumbach', 2, 'Botble\\Author\\Models\\Author', '2023-09-13 01:52:52', '2023-09-13 01:52:52', 'author'),
(2320, 'cora-carter-dds', 3, 'Botble\\Author\\Models\\Author', '2023-09-13 01:52:52', '2023-09-13 01:52:52', 'author'),
(2321, 'maeve-weissnat', 4, 'Botble\\Author\\Models\\Author', '2023-09-13 01:52:52', '2023-09-13 01:52:52', 'author'),
(2322, 'brisa-leannon', 5, 'Botble\\Author\\Models\\Author', '2023-09-13 01:52:52', '2023-09-13 01:52:52', 'author'),
(2323, 'emery-deckow-jr', 6, 'Botble\\Author\\Models\\Author', '2023-09-13 01:52:52', '2023-09-13 01:52:52', 'author'),
(2324, 'elton-weber-iv', 7, 'Botble\\Author\\Models\\Author', '2023-09-13 01:52:52', '2023-09-13 01:52:52', 'author'),
(2325, 'prof-angelita-connelly', 8, 'Botble\\Author\\Models\\Author', '2023-09-13 01:52:52', '2023-09-13 01:52:52', 'author'),
(2326, 'madelyn-howe', 9, 'Botble\\Author\\Models\\Author', '2023-09-13 01:52:52', '2023-09-13 01:52:52', 'author'),
(2327, 'shayna-yundt', 10, 'Botble\\Author\\Models\\Author', '2023-09-13 01:52:52', '2023-09-13 01:52:52', 'author'),
(2339, 'ms-tania-rolfson-sr', 1, 'Botble\\Author\\Models\\Author', '2023-09-15 18:14:07', '2023-09-15 18:14:07', 'author'),
(2340, 'shanna-wunsch', 2, 'Botble\\Author\\Models\\Author', '2023-09-15 18:14:07', '2023-09-15 18:14:07', 'author'),
(2341, 'dr-titus-gleichner', 3, 'Botble\\Author\\Models\\Author', '2023-09-15 18:14:07', '2023-09-15 18:14:07', 'author'),
(2342, 'faustino-gerhold-iv', 4, 'Botble\\Author\\Models\\Author', '2023-09-15 18:14:07', '2023-09-15 18:14:07', 'author'),
(2343, 'reece-medhurst-dds', 5, 'Botble\\Author\\Models\\Author', '2023-09-15 18:14:07', '2023-09-15 18:14:07', 'author'),
(2344, 'mckayla-murphy', 6, 'Botble\\Author\\Models\\Author', '2023-09-15 18:14:07', '2023-09-15 18:14:07', 'author'),
(2345, 'prof-vito-gleason', 7, 'Botble\\Author\\Models\\Author', '2023-09-15 18:14:07', '2023-09-15 18:14:07', 'author'),
(2346, 'beulah-gerlach-md', 8, 'Botble\\Author\\Models\\Author', '2023-09-15 18:14:07', '2023-09-15 18:14:07', 'author'),
(2347, 'reid-larkin', 9, 'Botble\\Author\\Models\\Author', '2023-09-15 18:14:07', '2023-09-15 18:14:07', 'author'),
(2348, 'okey-davis', 10, 'Botble\\Author\\Models\\Author', '2023-09-15 18:14:07', '2023-09-15 18:14:07', 'author'),
(2360, 'ida-farrell', 1, 'Botble\\Author\\Models\\Author', '2023-09-16 07:24:33', '2023-09-16 07:24:33', 'author'),
(2361, 'norma-bailey', 2, 'Botble\\Author\\Models\\Author', '2023-09-16 07:24:33', '2023-09-16 07:24:33', 'author'),
(2362, 'mrs-winifred-strosin', 3, 'Botble\\Author\\Models\\Author', '2023-09-16 07:24:33', '2023-09-16 07:24:33', 'author'),
(2363, 'clay-okuneva', 4, 'Botble\\Author\\Models\\Author', '2023-09-16 07:24:33', '2023-09-16 07:24:33', 'author'),
(2364, 'mrs-beth-reichel-i', 5, 'Botble\\Author\\Models\\Author', '2023-09-16 07:24:33', '2023-09-16 07:24:33', 'author'),
(2365, 'carolyn-bernier', 6, 'Botble\\Author\\Models\\Author', '2023-09-16 07:24:33', '2023-09-16 07:24:33', 'author'),
(2366, 'mr-cristopher-stiedemann', 7, 'Botble\\Author\\Models\\Author', '2023-09-16 07:24:33', '2023-09-16 07:24:33', 'author'),
(2367, 'adrianna-shanahan-dds', 8, 'Botble\\Author\\Models\\Author', '2023-09-16 07:24:33', '2023-09-16 07:24:33', 'author'),
(2368, 'prof-fredrick-mills-i', 9, 'Botble\\Author\\Models\\Author', '2023-09-16 07:24:33', '2023-09-16 07:24:33', 'author'),
(2369, 'kassandra-rolfson', 10, 'Botble\\Author\\Models\\Author', '2023-09-16 07:24:33', '2023-09-16 07:24:33', 'author'),
(2381, 'mireya-simonis-dvm', 1, 'Botble\\Author\\Models\\Author', '2023-09-19 00:05:31', '2023-09-19 00:05:31', 'author'),
(2382, 'miss-zelma-morissette', 2, 'Botble\\Author\\Models\\Author', '2023-09-19 00:05:31', '2023-09-19 00:05:31', 'author'),
(2383, 'alvah-jacobson', 3, 'Botble\\Author\\Models\\Author', '2023-09-19 00:05:31', '2023-09-19 00:05:31', 'author'),
(2384, 'edd-parker', 4, 'Botble\\Author\\Models\\Author', '2023-09-19 00:05:31', '2023-09-19 00:05:31', 'author'),
(2385, 'mike-reynolds', 5, 'Botble\\Author\\Models\\Author', '2023-09-19 00:05:31', '2023-09-19 00:05:31', 'author'),
(2386, 'ayden-deckow', 6, 'Botble\\Author\\Models\\Author', '2023-09-19 00:05:31', '2023-09-19 00:05:31', 'author'),
(2387, 'zane-kilback', 7, 'Botble\\Author\\Models\\Author', '2023-09-19 00:05:31', '2023-09-19 00:05:31', 'author'),
(2388, 'osborne-macejkovic-md', 8, 'Botble\\Author\\Models\\Author', '2023-09-19 00:05:31', '2023-09-19 00:05:31', 'author'),
(2389, 'rae-greenfelder', 9, 'Botble\\Author\\Models\\Author', '2023-09-19 00:05:31', '2023-09-19 00:05:31', 'author'),
(2390, 'ms-antonina-feeney-sr', 10, 'Botble\\Author\\Models\\Author', '2023-09-19 00:05:31', '2023-09-19 00:05:31', 'author'),
(2402, 'dr-jodie-barton', 1, 'Botble\\Author\\Models\\Author', '2023-09-24 01:18:09', '2023-09-24 01:18:09', 'author'),
(2403, 'conrad-weber', 2, 'Botble\\Author\\Models\\Author', '2023-09-24 01:18:09', '2023-09-24 01:18:09', 'author'),
(2404, 'jenifer-howe', 3, 'Botble\\Author\\Models\\Author', '2023-09-24 01:18:09', '2023-09-24 01:18:09', 'author'),
(2405, 'alberta-lehner', 4, 'Botble\\Author\\Models\\Author', '2023-09-24 01:18:09', '2023-09-24 01:18:09', 'author'),
(2406, 'dr-isabel-bode', 5, 'Botble\\Author\\Models\\Author', '2023-09-24 01:18:09', '2023-09-24 01:18:09', 'author'),
(2407, 'brando-miller', 6, 'Botble\\Author\\Models\\Author', '2023-09-24 01:18:09', '2023-09-24 01:18:09', 'author'),
(2408, 'miss-nikita-reynolds', 7, 'Botble\\Author\\Models\\Author', '2023-09-24 01:18:09', '2023-09-24 01:18:09', 'author'),
(2409, 'miss-kitty-pouros', 8, 'Botble\\Author\\Models\\Author', '2023-09-24 01:18:09', '2023-09-24 01:18:09', 'author'),
(2410, 'viola-stanton', 9, 'Botble\\Author\\Models\\Author', '2023-09-24 01:18:09', '2023-09-24 01:18:09', 'author'),
(2411, 'dr-cassandra-gulgowski-ii', 10, 'Botble\\Author\\Models\\Author', '2023-09-24 01:18:09', '2023-09-24 01:18:09', 'author'),
(2423, 'ana-renner', 1, 'Botble\\Author\\Models\\Author', '2023-09-24 21:24:06', '2023-09-24 21:24:06', 'author'),
(2424, 'ms-velda-wuckert', 2, 'Botble\\Author\\Models\\Author', '2023-09-24 21:24:06', '2023-09-24 21:24:06', 'author'),
(2425, 'prof-rosamond-bartell', 3, 'Botble\\Author\\Models\\Author', '2023-09-24 21:24:06', '2023-09-24 21:24:06', 'author'),
(2426, 'zelda-dach', 4, 'Botble\\Author\\Models\\Author', '2023-09-24 21:24:06', '2023-09-24 21:24:06', 'author'),
(2427, 'kurtis-connelly-iv', 5, 'Botble\\Author\\Models\\Author', '2023-09-24 21:24:06', '2023-09-24 21:24:06', 'author'),
(2428, 'zakary-walsh', 6, 'Botble\\Author\\Models\\Author', '2023-09-24 21:24:06', '2023-09-24 21:24:06', 'author'),
(2429, 'sidney-ziemann-phd', 7, 'Botble\\Author\\Models\\Author', '2023-09-24 21:24:06', '2023-09-24 21:24:06', 'author'),
(2430, 'mr-zack-howe-dvm', 8, 'Botble\\Author\\Models\\Author', '2023-09-24 21:24:06', '2023-09-24 21:24:06', 'author'),
(2431, 'mikel-lindgren', 9, 'Botble\\Author\\Models\\Author', '2023-09-24 21:24:06', '2023-09-24 21:24:06', 'author'),
(2432, 'dr-kaylie-rolfson', 10, 'Botble\\Author\\Models\\Author', '2023-09-24 21:24:06', '2023-09-24 21:24:06', 'author'),
(2444, 'zita-schultz', 1, 'Botble\\Author\\Models\\Author', '2023-09-26 02:41:12', '2023-09-26 02:41:12', 'author'),
(2445, 'velva-thompson-sr', 2, 'Botble\\Author\\Models\\Author', '2023-09-26 02:41:12', '2023-09-26 02:41:12', 'author'),
(2446, 'prof-lucienne-koch-jr', 3, 'Botble\\Author\\Models\\Author', '2023-09-26 02:41:12', '2023-09-26 02:41:12', 'author'),
(2447, 'edwardo-leuschke', 4, 'Botble\\Author\\Models\\Author', '2023-09-26 02:41:12', '2023-09-26 02:41:12', 'author'),
(2448, 'euna-reinger', 5, 'Botble\\Author\\Models\\Author', '2023-09-26 02:41:12', '2023-09-26 02:41:12', 'author'),
(2449, 'mrs-mylene-spencer', 6, 'Botble\\Author\\Models\\Author', '2023-09-26 02:41:12', '2023-09-26 02:41:12', 'author'),
(2450, 'lavada-kuphal-iv', 7, 'Botble\\Author\\Models\\Author', '2023-09-26 02:41:12', '2023-09-26 02:41:12', 'author'),
(2451, 'carlo-halvorson', 8, 'Botble\\Author\\Models\\Author', '2023-09-26 02:41:12', '2023-09-26 02:41:12', 'author'),
(2452, 'mr-marlin-braun-iv', 9, 'Botble\\Author\\Models\\Author', '2023-09-26 02:41:12', '2023-09-26 02:41:12', 'author'),
(2453, 'kiera-schroeder', 10, 'Botble\\Author\\Models\\Author', '2023-09-26 02:41:12', '2023-09-26 02:41:12', 'author'),
(2465, 'mr-rocio-christiansen-v', 1, 'Botble\\Author\\Models\\Author', '2023-10-19 23:55:56', '2023-10-19 23:55:56', 'author'),
(2466, 'mitchel-turner', 2, 'Botble\\Author\\Models\\Author', '2023-10-19 23:55:56', '2023-10-19 23:55:56', 'author'),
(2467, 'zoila-torphy', 3, 'Botble\\Author\\Models\\Author', '2023-10-19 23:55:56', '2023-10-19 23:55:56', 'author'),
(2468, 'delphia-gibson', 4, 'Botble\\Author\\Models\\Author', '2023-10-19 23:55:56', '2023-10-19 23:55:56', 'author'),
(2469, 'christina-moore', 5, 'Botble\\Author\\Models\\Author', '2023-10-19 23:55:56', '2023-10-19 23:55:56', 'author'),
(2470, 'audreanne-howell', 6, 'Botble\\Author\\Models\\Author', '2023-10-19 23:55:56', '2023-10-19 23:55:56', 'author'),
(2471, 'fabiola-heller', 7, 'Botble\\Author\\Models\\Author', '2023-10-19 23:55:56', '2023-10-19 23:55:56', 'author'),
(2472, 'minnie-walter', 8, 'Botble\\Author\\Models\\Author', '2023-10-19 23:55:56', '2023-10-19 23:55:56', 'author'),
(2473, 'miss-herminia-fisher-md', 9, 'Botble\\Author\\Models\\Author', '2023-10-19 23:55:56', '2023-10-19 23:55:56', 'author'),
(2474, 'mr-ole-purdy-dvm', 10, 'Botble\\Author\\Models\\Author', '2023-10-19 23:55:56', '2023-10-19 23:55:56', 'author'),
(2486, 'dr-patrick-lakin', 1, 'Botble\\Author\\Models\\Author', '2023-10-23 00:13:35', '2023-10-23 00:13:35', 'author'),
(2487, 'prof-zoey-hane-v', 2, 'Botble\\Author\\Models\\Author', '2023-10-23 00:13:35', '2023-10-23 00:13:35', 'author'),
(2488, 'demetrius-parisian', 3, 'Botble\\Author\\Models\\Author', '2023-10-23 00:13:35', '2023-10-23 00:13:35', 'author'),
(2489, 'carmel-gutkowski-dvm', 4, 'Botble\\Author\\Models\\Author', '2023-10-23 00:13:35', '2023-10-23 00:13:35', 'author'),
(2490, 'nathaniel-hessel', 5, 'Botble\\Author\\Models\\Author', '2023-10-23 00:13:35', '2023-10-23 00:13:35', 'author'),
(2491, 'mr-ian-cassin', 6, 'Botble\\Author\\Models\\Author', '2023-10-23 00:13:35', '2023-10-23 00:13:35', 'author'),
(2492, 'madison-franecki-iii', 7, 'Botble\\Author\\Models\\Author', '2023-10-23 00:13:35', '2023-10-23 00:13:35', 'author'),
(2493, 'maggie-wisoky', 8, 'Botble\\Author\\Models\\Author', '2023-10-23 00:13:35', '2023-10-23 00:13:35', 'author'),
(2494, 'armani-rempel-sr', 9, 'Botble\\Author\\Models\\Author', '2023-10-23 00:13:35', '2023-10-23 00:13:35', 'author'),
(2495, 'prof-kayla-fritsch-dds', 10, 'Botble\\Author\\Models\\Author', '2023-10-23 00:13:35', '2023-10-23 00:13:35', 'author'),
(2507, 'ms-millie-grady-i', 1, 'Botble\\Author\\Models\\Author', '2023-10-24 23:43:14', '2023-10-24 23:43:14', 'author'),
(2508, 'theron-bogan', 2, 'Botble\\Author\\Models\\Author', '2023-10-24 23:43:14', '2023-10-24 23:43:14', 'author'),
(2509, 'kennedi-nienow', 3, 'Botble\\Author\\Models\\Author', '2023-10-24 23:43:14', '2023-10-24 23:43:14', 'author'),
(2510, 'willy-lebsack', 4, 'Botble\\Author\\Models\\Author', '2023-10-24 23:43:14', '2023-10-24 23:43:14', 'author'),
(2511, 'mr-lukas-brakus-jr', 5, 'Botble\\Author\\Models\\Author', '2023-10-24 23:43:14', '2023-10-24 23:43:14', 'author'),
(2512, 'gianni-bode', 6, 'Botble\\Author\\Models\\Author', '2023-10-24 23:43:14', '2023-10-24 23:43:14', 'author'),
(2513, 'mr-devon-swaniawski-ii', 7, 'Botble\\Author\\Models\\Author', '2023-10-24 23:43:14', '2023-10-24 23:43:14', 'author'),
(2514, 'eugenia-satterfield', 8, 'Botble\\Author\\Models\\Author', '2023-10-24 23:43:14', '2023-10-24 23:43:14', 'author'),
(2515, 'alyson-barrows', 9, 'Botble\\Author\\Models\\Author', '2023-10-24 23:43:14', '2023-10-24 23:43:14', 'author'),
(2516, 'ms-margarette-botsford-dds', 10, 'Botble\\Author\\Models\\Author', '2023-10-24 23:43:14', '2023-10-24 23:43:14', 'author'),
(2528, 'mozelle-crist', 1, 'Botble\\Author\\Models\\Author', '2023-10-25 00:11:45', '2023-10-25 00:11:45', 'author'),
(2529, 'gillian-blanda', 2, 'Botble\\Author\\Models\\Author', '2023-10-25 00:11:45', '2023-10-25 00:11:45', 'author'),
(2530, 'dexter-mitchell', 3, 'Botble\\Author\\Models\\Author', '2023-10-25 00:11:45', '2023-10-25 00:11:45', 'author'),
(2531, 'philip-connelly', 4, 'Botble\\Author\\Models\\Author', '2023-10-25 00:11:45', '2023-10-25 00:11:45', 'author'),
(2532, 'sienna-connelly', 5, 'Botble\\Author\\Models\\Author', '2023-10-25 00:11:45', '2023-10-25 00:11:45', 'author'),
(2533, 'ezra-okuneva-ii', 6, 'Botble\\Author\\Models\\Author', '2023-10-25 00:11:45', '2023-10-25 00:11:45', 'author'),
(2534, 'lacy-renner', 7, 'Botble\\Author\\Models\\Author', '2023-10-25 00:11:45', '2023-10-25 00:11:45', 'author'),
(2535, 'marquis-hayes', 8, 'Botble\\Author\\Models\\Author', '2023-10-25 00:11:45', '2023-10-25 00:11:45', 'author'),
(2536, 'dr-emilie-gaylord', 9, 'Botble\\Author\\Models\\Author', '2023-10-25 00:11:45', '2023-10-25 00:11:45', 'author'),
(2537, 'shannon-robel', 10, 'Botble\\Author\\Models\\Author', '2023-10-25 00:11:45', '2023-10-25 00:11:45', 'author'),
(2549, 'malika-buckridge', 1, 'Botble\\Author\\Models\\Author', '2023-10-25 19:09:31', '2023-10-25 19:09:31', 'author'),
(2550, 'prof-ibrahim-maggio-i', 2, 'Botble\\Author\\Models\\Author', '2023-10-25 19:09:31', '2023-10-25 19:09:31', 'author'),
(2551, 'kaycee-brekke', 3, 'Botble\\Author\\Models\\Author', '2023-10-25 19:09:31', '2023-10-25 19:09:31', 'author'),
(2552, 'tamia-wiegand', 4, 'Botble\\Author\\Models\\Author', '2023-10-25 19:09:31', '2023-10-25 19:09:31', 'author'),
(2553, 'breanne-wyman', 5, 'Botble\\Author\\Models\\Author', '2023-10-25 19:09:31', '2023-10-25 19:09:31', 'author'),
(2554, 'karley-okon', 6, 'Botble\\Author\\Models\\Author', '2023-10-25 19:09:31', '2023-10-25 19:09:31', 'author'),
(2555, 'hope-veum-iii', 7, 'Botble\\Author\\Models\\Author', '2023-10-25 19:09:31', '2023-10-25 19:09:31', 'author'),
(2556, 'francisca-kovacek', 8, 'Botble\\Author\\Models\\Author', '2023-10-25 19:09:31', '2023-10-25 19:09:31', 'author'),
(2557, 'rafaela-nienow-dds', 9, 'Botble\\Author\\Models\\Author', '2023-10-25 19:09:31', '2023-10-25 19:09:31', 'author'),
(2558, 'kelsi-kunze', 10, 'Botble\\Author\\Models\\Author', '2023-10-25 19:09:31', '2023-10-25 19:09:31', 'author'),
(2570, 'garland-quitzon', 1, 'Botble\\Author\\Models\\Author', '2023-11-09 00:52:33', '2023-11-09 00:52:33', 'author'),
(2571, 'junior-stokes-i', 2, 'Botble\\Author\\Models\\Author', '2023-11-09 00:52:33', '2023-11-09 00:52:33', 'author'),
(2572, 'rhea-toy', 3, 'Botble\\Author\\Models\\Author', '2023-11-09 00:52:33', '2023-11-09 00:52:33', 'author'),
(2573, 'annie-connelly', 4, 'Botble\\Author\\Models\\Author', '2023-11-09 00:52:33', '2023-11-09 00:52:33', 'author'),
(2574, 'edgardo-hudson-ii', 5, 'Botble\\Author\\Models\\Author', '2023-11-09 00:52:33', '2023-11-09 00:52:33', 'author'),
(2575, 'bianka-wilkinson', 6, 'Botble\\Author\\Models\\Author', '2023-11-09 00:52:33', '2023-11-09 00:52:33', 'author'),
(2576, 'dr-yesenia-turcotte', 7, 'Botble\\Author\\Models\\Author', '2023-11-09 00:52:33', '2023-11-09 00:52:33', 'author'),
(2577, 'pearline-pollich', 8, 'Botble\\Author\\Models\\Author', '2023-11-09 00:52:33', '2023-11-09 00:52:33', 'author'),
(2578, 'rico-schamberger', 9, 'Botble\\Author\\Models\\Author', '2023-11-09 00:52:33', '2023-11-09 00:52:33', 'author'),
(2579, 'prof-freida-gusikowski-iii', 10, 'Botble\\Author\\Models\\Author', '2023-11-09 00:52:33', '2023-11-09 00:52:33', 'author'),
(2580, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 40, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2581, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 41, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2582, 'twitter-japan-is-not-a-safe-space-for-minority-users', 42, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2583, 'a-legislator-in-taiwan-risks-a-recall-for-supporting-same-sex-marriage', 43, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2584, 'concerns-over-united-states-president-trumps-latest-controversial-foreign-policies-loom-large-in-africa', 44, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2585, 'unesco-protects-balkan-grandma-march-day-custom-as-cultural-heritage', 45, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2586, 'petition-to-free-the-eritrean-man-unjustly-arrested-in-italy-for-mistaken-identity', 46, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2587, 'refugees-in-lebanon-are-still-being-scapegoated-in-the-media-and-in-academia', 47, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2588, 'a-detainee-of-all-eras-the-prominent-case-of-egyptian-activist-alaa-abdelfattah', 48, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2589, 'the-ahwazis-of-iran-face-death-sentences-after-false-accusations-of-opposing-the-government', 49, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2590, 'recalcitrant-activist-charged-by-singapore-police-for-organizing-illegal-assemblies', 50, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2591, 'right-to-information-requests-in-sri-lanka-reveals-process-for-blocking-websites', 51, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2592, 'the-cat-in-the-pot-cuddly-felines-nap-in-japanese-cookware', 52, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2593, 'indonesian-president-jokowi-leads-citizens-in-condemning-donald-trumps-jerusalem-declaration', 53, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2594, 'a-local-newspapers-full-page-feature-on-nuclear-radiation-survival-stirs-panic-in-china', 54, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2595, 'the-fall-of-chinese-internet-czar-lu-wei', 55, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2596, 'syrian-and-lebanese-on-the-conflict-of-identities', 56, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2597, 'transgender-womans-murder-in-trinidad-tobago-highlights-ostracism-faced-by-lgbtq-community', 57, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2598, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 58, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2599, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 59, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2600, 'palestinians-arent-surprised-by-us-jerusalem-move-as-world-already-ignores-their-existence', 60, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2601, 'painting-a-new-story-sohrai-art-in-jharkhand', 61, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2602, 'the-conviction-of-another-dancehall-star-fails-to-shock-crime-weary-jamaicans', 62, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2603, 'harsh-prison-terms-for-video-journalist-and-blogger-as-vietnam-cracks-down-on-free-expression', 63, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2604, 'what-future-for-the-wikipedia-seagull-on-kazakhstans-brand-new-banknotes', 64, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2605, 'jailed-bahraini-rights-defender-nabeel-rajab-faces-additional-fifteen-years-in-prison', 65, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2606, 'ashraf-ghani-gets-thumbs-down-after-anti-women-headscarf-gaffe', 66, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2607, 'the-health-of-thousands-of-filipino-children-could-be-at-risk-thanks-to-sanofis-dengue-vaccine', 67, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2608, 'kyrgyz-childrens-author-remakes-old-fables-drives-new-narratives', 68, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2609, 'animal-carcasses-tires-and-medical-waste-a-new-report-highlights-health-risks-of-lebanons-trash-crisis', 69, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2610, 'russian-atomic-regulators-foray-into-meme-making-fails-to-quench-rumors-of-nuclear-leaks', 70, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2611, 'in-china-skepticism-surrounding-police-investigation-of-kindergarten-child-abuse-is-censored', 71, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2612, 'russians-are-unimpressed-with-the-2018-presidential-election-logo-and-have-ideas-for-improvement', 72, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2613, 'weaving-objects-of-loss-and-memory-with-hayv-kahraman', 73, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2614, 'this-brazilian-doctor-says-science-has-evolved-but-stigma-against-hiv-remains', 74, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2615, 'scrutiny-and-doubt-over-rape-victims-testimony-sparks-outrage-in-spain', 75, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2616, 'after-authorities-evict-beijings-low-end-residents-chinese-ask-where-is-the-humanity', 76, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2617, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 77, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2618, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 78, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:35', '2023-11-09 00:52:35', ''),
(2619, 'the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', 81, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:36', '2023-11-09 00:52:36', ''),
(2620, 'initiatives-for-environmental-activism-take-off-in-cuba', 82, 'Botble\\Blog\\Models\\Post', '2023-11-09 00:52:36', '2023-11-09 00:52:36', ''),
(2632, 'kitty-wilkinson', 1, 'Botble\\Author\\Models\\Author', '2023-11-13 21:03:20', '2023-11-13 21:03:20', 'author'),
(2633, 'curtis-sipes', 2, 'Botble\\Author\\Models\\Author', '2023-11-13 21:03:20', '2023-11-13 21:03:20', 'author'),
(2634, 'april-schmitt', 3, 'Botble\\Author\\Models\\Author', '2023-11-13 21:03:20', '2023-11-13 21:03:20', 'author'),
(2635, 'nola-donnelly', 4, 'Botble\\Author\\Models\\Author', '2023-11-13 21:03:20', '2023-11-13 21:03:20', 'author'),
(2636, 'rachelle-bechtelar-i', 5, 'Botble\\Author\\Models\\Author', '2023-11-13 21:03:20', '2023-11-13 21:03:20', 'author'),
(2637, 'herbert-boyer', 6, 'Botble\\Author\\Models\\Author', '2023-11-13 21:03:20', '2023-11-13 21:03:20', 'author'),
(2638, 'ramona-sanford', 7, 'Botble\\Author\\Models\\Author', '2023-11-13 21:03:20', '2023-11-13 21:03:20', 'author'),
(2639, 'dr-berenice-reynolds', 8, 'Botble\\Author\\Models\\Author', '2023-11-13 21:03:20', '2023-11-13 21:03:20', 'author'),
(2640, 'horace-donnelly', 9, 'Botble\\Author\\Models\\Author', '2023-11-13 21:03:20', '2023-11-13 21:03:20', 'author'),
(2641, 'tessie-hermann', 10, 'Botble\\Author\\Models\\Author', '2023-11-13 21:03:20', '2023-11-13 21:03:20', 'author'),
(2642, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 40, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2643, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 41, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2644, 'twitter-japan-is-not-a-safe-space-for-minority-users', 42, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2645, 'a-legislator-in-taiwan-risks-a-recall-for-supporting-same-sex-marriage', 43, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2646, 'concerns-over-united-states-president-trumps-latest-controversial-foreign-policies-loom-large-in-africa', 44, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2647, 'unesco-protects-balkan-grandma-march-day-custom-as-cultural-heritage', 45, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2648, 'petition-to-free-the-eritrean-man-unjustly-arrested-in-italy-for-mistaken-identity', 46, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2649, 'refugees-in-lebanon-are-still-being-scapegoated-in-the-media-and-in-academia', 47, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2650, 'a-detainee-of-all-eras-the-prominent-case-of-egyptian-activist-alaa-abdelfattah', 48, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2651, 'the-ahwazis-of-iran-face-death-sentences-after-false-accusations-of-opposing-the-government', 49, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2652, 'recalcitrant-activist-charged-by-singapore-police-for-organizing-illegal-assemblies', 50, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2653, 'right-to-information-requests-in-sri-lanka-reveals-process-for-blocking-websites', 51, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2654, 'the-cat-in-the-pot-cuddly-felines-nap-in-japanese-cookware', 52, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2655, 'indonesian-president-jokowi-leads-citizens-in-condemning-donald-trumps-jerusalem-declaration', 53, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2656, 'a-local-newspapers-full-page-feature-on-nuclear-radiation-survival-stirs-panic-in-china', 54, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2657, 'the-fall-of-chinese-internet-czar-lu-wei', 55, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2658, 'syrian-and-lebanese-on-the-conflict-of-identities', 56, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2659, 'transgender-womans-murder-in-trinidad-tobago-highlights-ostracism-faced-by-lgbtq-community', 57, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2660, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 58, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2661, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 59, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2662, 'palestinians-arent-surprised-by-us-jerusalem-move-as-world-already-ignores-their-existence', 60, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2663, 'painting-a-new-story-sohrai-art-in-jharkhand', 61, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2664, 'the-conviction-of-another-dancehall-star-fails-to-shock-crime-weary-jamaicans', 62, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2665, 'harsh-prison-terms-for-video-journalist-and-blogger-as-vietnam-cracks-down-on-free-expression', 63, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2666, 'what-future-for-the-wikipedia-seagull-on-kazakhstans-brand-new-banknotes', 64, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2667, 'jailed-bahraini-rights-defender-nabeel-rajab-faces-additional-fifteen-years-in-prison', 65, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2668, 'ashraf-ghani-gets-thumbs-down-after-anti-women-headscarf-gaffe', 66, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2669, 'the-health-of-thousands-of-filipino-children-could-be-at-risk-thanks-to-sanofis-dengue-vaccine', 67, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2670, 'kyrgyz-childrens-author-remakes-old-fables-drives-new-narratives', 68, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2671, 'animal-carcasses-tires-and-medical-waste-a-new-report-highlights-health-risks-of-lebanons-trash-crisis', 69, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2672, 'russian-atomic-regulators-foray-into-meme-making-fails-to-quench-rumors-of-nuclear-leaks', 70, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2673, 'in-china-skepticism-surrounding-police-investigation-of-kindergarten-child-abuse-is-censored', 71, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2674, 'russians-are-unimpressed-with-the-2018-presidential-election-logo-and-have-ideas-for-improvement', 72, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2675, 'weaving-objects-of-loss-and-memory-with-hayv-kahraman', 73, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2676, 'this-brazilian-doctor-says-science-has-evolved-but-stigma-against-hiv-remains', 74, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2677, 'scrutiny-and-doubt-over-rape-victims-testimony-sparks-outrage-in-spain', 75, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2678, 'after-authorities-evict-beijings-low-end-residents-chinese-ask-where-is-the-humanity', 76, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2679, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 77, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2680, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 78, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2681, 'the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', 81, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2682, 'initiatives-for-environmental-activism-take-off-in-cuba', 82, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:03:22', '2023-11-13 21:03:22', ''),
(2694, 'mrs-maryse-dicki-ii', 1, 'Botble\\Author\\Models\\Author', '2023-11-13 21:10:45', '2023-11-13 21:10:45', 'author'),
(2695, 'mrs-juana-dietrich-ii', 2, 'Botble\\Author\\Models\\Author', '2023-11-13 21:10:45', '2023-11-13 21:10:45', 'author'),
(2696, 'joanie-runte', 3, 'Botble\\Author\\Models\\Author', '2023-11-13 21:10:45', '2023-11-13 21:10:45', 'author'),
(2697, 'judah-kemmer-dvm', 4, 'Botble\\Author\\Models\\Author', '2023-11-13 21:10:45', '2023-11-13 21:10:45', 'author'),
(2698, 'mrs-andreane-kutch-v', 5, 'Botble\\Author\\Models\\Author', '2023-11-13 21:10:45', '2023-11-13 21:10:45', 'author'),
(2699, 'shanna-lynch', 6, 'Botble\\Author\\Models\\Author', '2023-11-13 21:10:45', '2023-11-13 21:10:45', 'author'),
(2700, 'jolie-powlowski', 7, 'Botble\\Author\\Models\\Author', '2023-11-13 21:10:45', '2023-11-13 21:10:45', 'author'),
(2701, 'dr-addie-kilback', 8, 'Botble\\Author\\Models\\Author', '2023-11-13 21:10:45', '2023-11-13 21:10:45', 'author'),
(2702, 'ms-patricia-marvin-v', 9, 'Botble\\Author\\Models\\Author', '2023-11-13 21:10:45', '2023-11-13 21:10:45', 'author'),
(2703, 'pearl-cremin', 10, 'Botble\\Author\\Models\\Author', '2023-11-13 21:10:45', '2023-11-13 21:10:45', 'author'),
(2704, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 40, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2705, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 41, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2706, 'twitter-japan-is-not-a-safe-space-for-minority-users', 42, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2707, 'a-legislator-in-taiwan-risks-a-recall-for-supporting-same-sex-marriage', 43, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2708, 'concerns-over-united-states-president-trumps-latest-controversial-foreign-policies-loom-large-in-africa', 44, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2709, 'unesco-protects-balkan-grandma-march-day-custom-as-cultural-heritage', 45, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2710, 'petition-to-free-the-eritrean-man-unjustly-arrested-in-italy-for-mistaken-identity', 46, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2711, 'refugees-in-lebanon-are-still-being-scapegoated-in-the-media-and-in-academia', 47, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2712, 'a-detainee-of-all-eras-the-prominent-case-of-egyptian-activist-alaa-abdelfattah', 48, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2713, 'the-ahwazis-of-iran-face-death-sentences-after-false-accusations-of-opposing-the-government', 49, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2714, 'recalcitrant-activist-charged-by-singapore-police-for-organizing-illegal-assemblies', 50, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2715, 'right-to-information-requests-in-sri-lanka-reveals-process-for-blocking-websites', 51, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2716, 'the-cat-in-the-pot-cuddly-felines-nap-in-japanese-cookware', 52, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2717, 'indonesian-president-jokowi-leads-citizens-in-condemning-donald-trumps-jerusalem-declaration', 53, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2718, 'a-local-newspapers-full-page-feature-on-nuclear-radiation-survival-stirs-panic-in-china', 54, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2719, 'the-fall-of-chinese-internet-czar-lu-wei', 55, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2720, 'syrian-and-lebanese-on-the-conflict-of-identities', 56, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2721, 'transgender-womans-murder-in-trinidad-tobago-highlights-ostracism-faced-by-lgbtq-community', 57, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2722, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 58, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2723, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 59, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2724, 'palestinians-arent-surprised-by-us-jerusalem-move-as-world-already-ignores-their-existence', 60, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2725, 'painting-a-new-story-sohrai-art-in-jharkhand', 61, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2726, 'the-conviction-of-another-dancehall-star-fails-to-shock-crime-weary-jamaicans', 62, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2727, 'harsh-prison-terms-for-video-journalist-and-blogger-as-vietnam-cracks-down-on-free-expression', 63, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2728, 'what-future-for-the-wikipedia-seagull-on-kazakhstans-brand-new-banknotes', 64, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2729, 'jailed-bahraini-rights-defender-nabeel-rajab-faces-additional-fifteen-years-in-prison', 65, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2730, 'ashraf-ghani-gets-thumbs-down-after-anti-women-headscarf-gaffe', 66, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2731, 'the-health-of-thousands-of-filipino-children-could-be-at-risk-thanks-to-sanofis-dengue-vaccine', 67, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2732, 'kyrgyz-childrens-author-remakes-old-fables-drives-new-narratives', 68, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2733, 'animal-carcasses-tires-and-medical-waste-a-new-report-highlights-health-risks-of-lebanons-trash-crisis', 69, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2734, 'russian-atomic-regulators-foray-into-meme-making-fails-to-quench-rumors-of-nuclear-leaks', 70, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2735, 'in-china-skepticism-surrounding-police-investigation-of-kindergarten-child-abuse-is-censored', 71, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2736, 'russians-are-unimpressed-with-the-2018-presidential-election-logo-and-have-ideas-for-improvement', 72, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2737, 'weaving-objects-of-loss-and-memory-with-hayv-kahraman', 73, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2738, 'this-brazilian-doctor-says-science-has-evolved-but-stigma-against-hiv-remains', 74, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2739, 'scrutiny-and-doubt-over-rape-victims-testimony-sparks-outrage-in-spain', 75, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2740, 'after-authorities-evict-beijings-low-end-residents-chinese-ask-where-is-the-humanity', 76, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2741, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 77, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2742, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 78, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2743, 'the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', 81, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2744, 'initiatives-for-environmental-activism-take-off-in-cuba', 82, 'Botble\\Blog\\Models\\Post', '2023-11-13 21:10:47', '2023-11-13 21:10:47', ''),
(2756, 'richard-ratke', 1, 'Botble\\Author\\Models\\Author', '2023-11-14 00:49:01', '2023-11-14 00:49:01', 'author'),
(2757, 'mr-jaylon-hegmann-i', 2, 'Botble\\Author\\Models\\Author', '2023-11-14 00:49:01', '2023-11-14 00:49:01', 'author'),
(2758, 'dr-claude-leffler', 3, 'Botble\\Author\\Models\\Author', '2023-11-14 00:49:01', '2023-11-14 00:49:01', 'author'),
(2759, 'miss-rubye-vandervort', 4, 'Botble\\Author\\Models\\Author', '2023-11-14 00:49:01', '2023-11-14 00:49:01', 'author'),
(2760, 'maude-conn', 5, 'Botble\\Author\\Models\\Author', '2023-11-14 00:49:01', '2023-11-14 00:49:01', 'author'),
(2761, 'dr-hollis-gutmann-ii', 6, 'Botble\\Author\\Models\\Author', '2023-11-14 00:49:01', '2023-11-14 00:49:01', 'author'),
(2762, 'prof-josue-rau-iii', 7, 'Botble\\Author\\Models\\Author', '2023-11-14 00:49:01', '2023-11-14 00:49:01', 'author'),
(2763, 'mr-winston-rau-sr', 8, 'Botble\\Author\\Models\\Author', '2023-11-14 00:49:01', '2023-11-14 00:49:01', 'author'),
(2764, 'constantin-ledner', 9, 'Botble\\Author\\Models\\Author', '2023-11-14 00:49:01', '2023-11-14 00:49:01', 'author'),
(2765, 'avery-kub-sr', 10, 'Botble\\Author\\Models\\Author', '2023-11-14 00:49:01', '2023-11-14 00:49:01', 'author'),
(2766, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 40, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2767, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 41, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2768, 'twitter-japan-is-not-a-safe-space-for-minority-users', 42, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2769, 'a-legislator-in-taiwan-risks-a-recall-for-supporting-same-sex-marriage', 43, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2770, 'concerns-over-united-states-president-trumps-latest-controversial-foreign-policies-loom-large-in-africa', 44, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', '');
INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `created_at`, `updated_at`, `prefix`) VALUES
(2771, 'unesco-protects-balkan-grandma-march-day-custom-as-cultural-heritage', 45, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2772, 'petition-to-free-the-eritrean-man-unjustly-arrested-in-italy-for-mistaken-identity', 46, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2773, 'refugees-in-lebanon-are-still-being-scapegoated-in-the-media-and-in-academia', 47, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2774, 'a-detainee-of-all-eras-the-prominent-case-of-egyptian-activist-alaa-abdelfattah', 48, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2775, 'the-ahwazis-of-iran-face-death-sentences-after-false-accusations-of-opposing-the-government', 49, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2776, 'recalcitrant-activist-charged-by-singapore-police-for-organizing-illegal-assemblies', 50, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2777, 'right-to-information-requests-in-sri-lanka-reveals-process-for-blocking-websites', 51, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2778, 'the-cat-in-the-pot-cuddly-felines-nap-in-japanese-cookware', 52, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2779, 'indonesian-president-jokowi-leads-citizens-in-condemning-donald-trumps-jerusalem-declaration', 53, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2780, 'a-local-newspapers-full-page-feature-on-nuclear-radiation-survival-stirs-panic-in-china', 54, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2781, 'the-fall-of-chinese-internet-czar-lu-wei', 55, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2782, 'syrian-and-lebanese-on-the-conflict-of-identities', 56, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2783, 'transgender-womans-murder-in-trinidad-tobago-highlights-ostracism-faced-by-lgbtq-community', 57, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2784, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 58, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2785, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 59, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2786, 'palestinians-arent-surprised-by-us-jerusalem-move-as-world-already-ignores-their-existence', 60, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2787, 'painting-a-new-story-sohrai-art-in-jharkhand', 61, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2788, 'the-conviction-of-another-dancehall-star-fails-to-shock-crime-weary-jamaicans', 62, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2789, 'harsh-prison-terms-for-video-journalist-and-blogger-as-vietnam-cracks-down-on-free-expression', 63, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2790, 'what-future-for-the-wikipedia-seagull-on-kazakhstans-brand-new-banknotes', 64, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2791, 'jailed-bahraini-rights-defender-nabeel-rajab-faces-additional-fifteen-years-in-prison', 65, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2792, 'ashraf-ghani-gets-thumbs-down-after-anti-women-headscarf-gaffe', 66, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2793, 'the-health-of-thousands-of-filipino-children-could-be-at-risk-thanks-to-sanofis-dengue-vaccine', 67, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2794, 'kyrgyz-childrens-author-remakes-old-fables-drives-new-narratives', 68, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2795, 'animal-carcasses-tires-and-medical-waste-a-new-report-highlights-health-risks-of-lebanons-trash-crisis', 69, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2796, 'russian-atomic-regulators-foray-into-meme-making-fails-to-quench-rumors-of-nuclear-leaks', 70, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2797, 'in-china-skepticism-surrounding-police-investigation-of-kindergarten-child-abuse-is-censored', 71, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2798, 'russians-are-unimpressed-with-the-2018-presidential-election-logo-and-have-ideas-for-improvement', 72, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2799, 'weaving-objects-of-loss-and-memory-with-hayv-kahraman', 73, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2800, 'this-brazilian-doctor-says-science-has-evolved-but-stigma-against-hiv-remains', 74, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2801, 'scrutiny-and-doubt-over-rape-victims-testimony-sparks-outrage-in-spain', 75, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2802, 'after-authorities-evict-beijings-low-end-residents-chinese-ask-where-is-the-humanity', 76, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2803, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 77, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2804, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 78, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2805, 'the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', 81, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2806, 'initiatives-for-environmental-activism-take-off-in-cuba', 82, 'Botble\\Blog\\Models\\Post', '2023-11-14 00:49:04', '2023-11-14 00:49:04', ''),
(2818, 'helene-macejkovic', 1, 'Botble\\Author\\Models\\Author', '2023-11-14 23:23:41', '2023-11-14 23:23:41', 'author'),
(2819, 'dr-adelia-homenick', 2, 'Botble\\Author\\Models\\Author', '2023-11-14 23:23:41', '2023-11-14 23:23:41', 'author'),
(2820, 'mr-isac-bailey-dvm', 3, 'Botble\\Author\\Models\\Author', '2023-11-14 23:23:41', '2023-11-14 23:23:41', 'author'),
(2821, 'izaiah-wolff', 4, 'Botble\\Author\\Models\\Author', '2023-11-14 23:23:41', '2023-11-14 23:23:41', 'author'),
(2822, 'dr-myriam-okon', 5, 'Botble\\Author\\Models\\Author', '2023-11-14 23:23:41', '2023-11-14 23:23:41', 'author'),
(2823, 'sydnee-ryan', 6, 'Botble\\Author\\Models\\Author', '2023-11-14 23:23:41', '2023-11-14 23:23:41', 'author'),
(2824, 'ivah-brekke', 7, 'Botble\\Author\\Models\\Author', '2023-11-14 23:23:41', '2023-11-14 23:23:41', 'author'),
(2825, 'lavern-stokes', 8, 'Botble\\Author\\Models\\Author', '2023-11-14 23:23:41', '2023-11-14 23:23:41', 'author'),
(2826, 'adolfo-erdman', 9, 'Botble\\Author\\Models\\Author', '2023-11-14 23:23:41', '2023-11-14 23:23:41', 'author'),
(2827, 'miss-charity-abshire', 10, 'Botble\\Author\\Models\\Author', '2023-11-14 23:23:41', '2023-11-14 23:23:41', 'author'),
(2828, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 40, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2829, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 41, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2830, 'twitter-japan-is-not-a-safe-space-for-minority-users', 42, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2831, 'a-legislator-in-taiwan-risks-a-recall-for-supporting-same-sex-marriage', 43, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2832, 'concerns-over-united-states-president-trumps-latest-controversial-foreign-policies-loom-large-in-africa', 44, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2833, 'unesco-protects-balkan-grandma-march-day-custom-as-cultural-heritage', 45, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2834, 'petition-to-free-the-eritrean-man-unjustly-arrested-in-italy-for-mistaken-identity', 46, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2835, 'refugees-in-lebanon-are-still-being-scapegoated-in-the-media-and-in-academia', 47, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2836, 'a-detainee-of-all-eras-the-prominent-case-of-egyptian-activist-alaa-abdelfattah', 48, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2837, 'the-ahwazis-of-iran-face-death-sentences-after-false-accusations-of-opposing-the-government', 49, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2838, 'recalcitrant-activist-charged-by-singapore-police-for-organizing-illegal-assemblies', 50, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2839, 'right-to-information-requests-in-sri-lanka-reveals-process-for-blocking-websites', 51, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2840, 'the-cat-in-the-pot-cuddly-felines-nap-in-japanese-cookware', 52, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2841, 'indonesian-president-jokowi-leads-citizens-in-condemning-donald-trumps-jerusalem-declaration', 53, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2842, 'a-local-newspapers-full-page-feature-on-nuclear-radiation-survival-stirs-panic-in-china', 54, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2843, 'the-fall-of-chinese-internet-czar-lu-wei', 55, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2844, 'syrian-and-lebanese-on-the-conflict-of-identities', 56, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2845, 'transgender-womans-murder-in-trinidad-tobago-highlights-ostracism-faced-by-lgbtq-community', 57, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2846, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 58, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2847, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 59, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2848, 'palestinians-arent-surprised-by-us-jerusalem-move-as-world-already-ignores-their-existence', 60, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2849, 'painting-a-new-story-sohrai-art-in-jharkhand', 61, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2850, 'the-conviction-of-another-dancehall-star-fails-to-shock-crime-weary-jamaicans', 62, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2851, 'harsh-prison-terms-for-video-journalist-and-blogger-as-vietnam-cracks-down-on-free-expression', 63, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2852, 'what-future-for-the-wikipedia-seagull-on-kazakhstans-brand-new-banknotes', 64, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2853, 'jailed-bahraini-rights-defender-nabeel-rajab-faces-additional-fifteen-years-in-prison', 65, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2854, 'ashraf-ghani-gets-thumbs-down-after-anti-women-headscarf-gaffe', 66, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2855, 'the-health-of-thousands-of-filipino-children-could-be-at-risk-thanks-to-sanofis-dengue-vaccine', 67, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2856, 'kyrgyz-childrens-author-remakes-old-fables-drives-new-narratives', 68, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2857, 'animal-carcasses-tires-and-medical-waste-a-new-report-highlights-health-risks-of-lebanons-trash-crisis', 69, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2858, 'russian-atomic-regulators-foray-into-meme-making-fails-to-quench-rumors-of-nuclear-leaks', 70, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2859, 'in-china-skepticism-surrounding-police-investigation-of-kindergarten-child-abuse-is-censored', 71, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2860, 'russians-are-unimpressed-with-the-2018-presidential-election-logo-and-have-ideas-for-improvement', 72, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2861, 'weaving-objects-of-loss-and-memory-with-hayv-kahraman', 73, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2862, 'this-brazilian-doctor-says-science-has-evolved-but-stigma-against-hiv-remains', 74, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2863, 'scrutiny-and-doubt-over-rape-victims-testimony-sparks-outrage-in-spain', 75, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2864, 'after-authorities-evict-beijings-low-end-residents-chinese-ask-where-is-the-humanity', 76, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:43', '2023-11-14 23:23:43', ''),
(2865, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 77, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:44', '2023-11-14 23:23:44', ''),
(2866, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 78, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:44', '2023-11-14 23:23:44', ''),
(2867, 'the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', 81, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:44', '2023-11-14 23:23:44', ''),
(2868, 'initiatives-for-environmental-activism-take-off-in-cuba', 82, 'Botble\\Blog\\Models\\Post', '2023-11-14 23:23:44', '2023-11-14 23:23:44', ''),
(2880, 'miss-jewell-larson', 1, 'Botble\\Author\\Models\\Author', '2023-11-15 03:03:10', '2023-11-15 03:03:10', 'author'),
(2881, 'nat-spinka', 2, 'Botble\\Author\\Models\\Author', '2023-11-15 03:03:10', '2023-11-15 03:03:10', 'author'),
(2882, 'dr-angelita-lynch', 3, 'Botble\\Author\\Models\\Author', '2023-11-15 03:03:10', '2023-11-15 03:03:10', 'author'),
(2883, 'prof-hardy-turner-sr', 4, 'Botble\\Author\\Models\\Author', '2023-11-15 03:03:10', '2023-11-15 03:03:10', 'author'),
(2884, 'eula-hartmann', 5, 'Botble\\Author\\Models\\Author', '2023-11-15 03:03:10', '2023-11-15 03:03:10', 'author'),
(2885, 'olin-hudson-jr', 6, 'Botble\\Author\\Models\\Author', '2023-11-15 03:03:10', '2023-11-15 03:03:10', 'author'),
(2886, 'oren-hane', 7, 'Botble\\Author\\Models\\Author', '2023-11-15 03:03:10', '2023-11-15 03:03:10', 'author'),
(2887, 'dr-morris-oconnell-v', 8, 'Botble\\Author\\Models\\Author', '2023-11-15 03:03:10', '2023-11-15 03:03:10', 'author'),
(2888, 'prof-zackary-okon', 9, 'Botble\\Author\\Models\\Author', '2023-11-15 03:03:10', '2023-11-15 03:03:10', 'author'),
(2889, 'dr-connor-deckow-ii', 10, 'Botble\\Author\\Models\\Author', '2023-11-15 03:03:10', '2023-11-15 03:03:10', 'author'),
(2890, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 40, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2891, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 41, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2892, 'twitter-japan-is-not-a-safe-space-for-minority-users', 42, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2893, 'a-legislator-in-taiwan-risks-a-recall-for-supporting-same-sex-marriage', 43, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2894, 'concerns-over-united-states-president-trumps-latest-controversial-foreign-policies-loom-large-in-africa', 44, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2895, 'unesco-protects-balkan-grandma-march-day-custom-as-cultural-heritage', 45, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2896, 'petition-to-free-the-eritrean-man-unjustly-arrested-in-italy-for-mistaken-identity', 46, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2897, 'refugees-in-lebanon-are-still-being-scapegoated-in-the-media-and-in-academia', 47, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2898, 'a-detainee-of-all-eras-the-prominent-case-of-egyptian-activist-alaa-abdelfattah', 48, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2899, 'the-ahwazis-of-iran-face-death-sentences-after-false-accusations-of-opposing-the-government', 49, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2900, 'recalcitrant-activist-charged-by-singapore-police-for-organizing-illegal-assemblies', 50, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2901, 'right-to-information-requests-in-sri-lanka-reveals-process-for-blocking-websites', 51, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2902, 'the-cat-in-the-pot-cuddly-felines-nap-in-japanese-cookware', 52, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2903, 'indonesian-president-jokowi-leads-citizens-in-condemning-donald-trumps-jerusalem-declaration', 53, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2904, 'a-local-newspapers-full-page-feature-on-nuclear-radiation-survival-stirs-panic-in-china', 54, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2905, 'the-fall-of-chinese-internet-czar-lu-wei', 55, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2906, 'syrian-and-lebanese-on-the-conflict-of-identities', 56, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2907, 'transgender-womans-murder-in-trinidad-tobago-highlights-ostracism-faced-by-lgbtq-community', 57, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2908, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 58, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2909, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 59, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2910, 'palestinians-arent-surprised-by-us-jerusalem-move-as-world-already-ignores-their-existence', 60, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2911, 'painting-a-new-story-sohrai-art-in-jharkhand', 61, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2912, 'the-conviction-of-another-dancehall-star-fails-to-shock-crime-weary-jamaicans', 62, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2913, 'harsh-prison-terms-for-video-journalist-and-blogger-as-vietnam-cracks-down-on-free-expression', 63, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2914, 'what-future-for-the-wikipedia-seagull-on-kazakhstans-brand-new-banknotes', 64, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2915, 'jailed-bahraini-rights-defender-nabeel-rajab-faces-additional-fifteen-years-in-prison', 65, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2916, 'ashraf-ghani-gets-thumbs-down-after-anti-women-headscarf-gaffe', 66, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2917, 'the-health-of-thousands-of-filipino-children-could-be-at-risk-thanks-to-sanofis-dengue-vaccine', 67, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2918, 'kyrgyz-childrens-author-remakes-old-fables-drives-new-narratives', 68, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2919, 'animal-carcasses-tires-and-medical-waste-a-new-report-highlights-health-risks-of-lebanons-trash-crisis', 69, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2920, 'russian-atomic-regulators-foray-into-meme-making-fails-to-quench-rumors-of-nuclear-leaks', 70, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2921, 'in-china-skepticism-surrounding-police-investigation-of-kindergarten-child-abuse-is-censored', 71, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2922, 'russians-are-unimpressed-with-the-2018-presidential-election-logo-and-have-ideas-for-improvement', 72, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2923, 'weaving-objects-of-loss-and-memory-with-hayv-kahraman', 73, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2924, 'this-brazilian-doctor-says-science-has-evolved-but-stigma-against-hiv-remains', 74, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2925, 'scrutiny-and-doubt-over-rape-victims-testimony-sparks-outrage-in-spain', 75, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2926, 'after-authorities-evict-beijings-low-end-residents-chinese-ask-where-is-the-humanity', 76, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2927, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 77, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2928, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 78, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2929, 'the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', 81, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2930, 'initiatives-for-environmental-activism-take-off-in-cuba', 82, 'Botble\\Blog\\Models\\Post', '2023-11-15 03:03:12', '2023-11-15 03:03:12', ''),
(2942, 'fleta-conn', 1, 'Botble\\Author\\Models\\Author', '2023-11-15 09:20:14', '2023-11-15 09:20:14', 'author'),
(2943, 'evie-koch', 2, 'Botble\\Author\\Models\\Author', '2023-11-15 09:20:14', '2023-11-15 09:20:14', 'author'),
(2944, 'mallory-veum', 3, 'Botble\\Author\\Models\\Author', '2023-11-15 09:20:14', '2023-11-15 09:20:14', 'author'),
(2945, 'bertram-ortiz', 4, 'Botble\\Author\\Models\\Author', '2023-11-15 09:20:14', '2023-11-15 09:20:14', 'author'),
(2946, 'shaniya-jakubowski-sr', 5, 'Botble\\Author\\Models\\Author', '2023-11-15 09:20:14', '2023-11-15 09:20:14', 'author'),
(2947, 'edna-homenick', 6, 'Botble\\Author\\Models\\Author', '2023-11-15 09:20:14', '2023-11-15 09:20:14', 'author'),
(2948, 'miss-ally-renner', 7, 'Botble\\Author\\Models\\Author', '2023-11-15 09:20:14', '2023-11-15 09:20:14', 'author'),
(2949, 'carey-bernier-phd', 8, 'Botble\\Author\\Models\\Author', '2023-11-15 09:20:14', '2023-11-15 09:20:14', 'author'),
(2950, 'liza-runte-i', 9, 'Botble\\Author\\Models\\Author', '2023-11-15 09:20:14', '2023-11-15 09:20:14', 'author'),
(2951, 'janae-hermiston-iv', 10, 'Botble\\Author\\Models\\Author', '2023-11-15 09:20:14', '2023-11-15 09:20:14', 'author'),
(2952, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 40, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2953, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 41, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2954, 'twitter-japan-is-not-a-safe-space-for-minority-users', 42, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2955, 'a-legislator-in-taiwan-risks-a-recall-for-supporting-same-sex-marriage', 43, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2956, 'concerns-over-united-states-president-trumps-latest-controversial-foreign-policies-loom-large-in-africa', 44, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2957, 'unesco-protects-balkan-grandma-march-day-custom-as-cultural-heritage', 45, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2958, 'petition-to-free-the-eritrean-man-unjustly-arrested-in-italy-for-mistaken-identity', 46, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2959, 'refugees-in-lebanon-are-still-being-scapegoated-in-the-media-and-in-academia', 47, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2960, 'a-detainee-of-all-eras-the-prominent-case-of-egyptian-activist-alaa-abdelfattah', 48, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2961, 'the-ahwazis-of-iran-face-death-sentences-after-false-accusations-of-opposing-the-government', 49, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2962, 'recalcitrant-activist-charged-by-singapore-police-for-organizing-illegal-assemblies', 50, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2963, 'right-to-information-requests-in-sri-lanka-reveals-process-for-blocking-websites', 51, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2964, 'the-cat-in-the-pot-cuddly-felines-nap-in-japanese-cookware', 52, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2965, 'indonesian-president-jokowi-leads-citizens-in-condemning-donald-trumps-jerusalem-declaration', 53, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2966, 'a-local-newspapers-full-page-feature-on-nuclear-radiation-survival-stirs-panic-in-china', 54, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2967, 'the-fall-of-chinese-internet-czar-lu-wei', 55, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2968, 'syrian-and-lebanese-on-the-conflict-of-identities', 56, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2969, 'transgender-womans-murder-in-trinidad-tobago-highlights-ostracism-faced-by-lgbtq-community', 57, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2970, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 58, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2971, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 59, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2972, 'palestinians-arent-surprised-by-us-jerusalem-move-as-world-already-ignores-their-existence', 60, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2973, 'painting-a-new-story-sohrai-art-in-jharkhand', 61, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2974, 'the-conviction-of-another-dancehall-star-fails-to-shock-crime-weary-jamaicans', 62, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2975, 'harsh-prison-terms-for-video-journalist-and-blogger-as-vietnam-cracks-down-on-free-expression', 63, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2976, 'what-future-for-the-wikipedia-seagull-on-kazakhstans-brand-new-banknotes', 64, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2977, 'jailed-bahraini-rights-defender-nabeel-rajab-faces-additional-fifteen-years-in-prison', 65, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2978, 'ashraf-ghani-gets-thumbs-down-after-anti-women-headscarf-gaffe', 66, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2979, 'the-health-of-thousands-of-filipino-children-could-be-at-risk-thanks-to-sanofis-dengue-vaccine', 67, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2980, 'kyrgyz-childrens-author-remakes-old-fables-drives-new-narratives', 68, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2981, 'animal-carcasses-tires-and-medical-waste-a-new-report-highlights-health-risks-of-lebanons-trash-crisis', 69, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2982, 'russian-atomic-regulators-foray-into-meme-making-fails-to-quench-rumors-of-nuclear-leaks', 70, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2983, 'in-china-skepticism-surrounding-police-investigation-of-kindergarten-child-abuse-is-censored', 71, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2984, 'russians-are-unimpressed-with-the-2018-presidential-election-logo-and-have-ideas-for-improvement', 72, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2985, 'weaving-objects-of-loss-and-memory-with-hayv-kahraman', 73, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2986, 'this-brazilian-doctor-says-science-has-evolved-but-stigma-against-hiv-remains', 74, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2987, 'scrutiny-and-doubt-over-rape-victims-testimony-sparks-outrage-in-spain', 75, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2988, 'after-authorities-evict-beijings-low-end-residents-chinese-ask-where-is-the-humanity', 76, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2989, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 77, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2990, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 78, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2991, 'the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', 81, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(2992, 'initiatives-for-environmental-activism-take-off-in-cuba', 82, 'Botble\\Blog\\Models\\Post', '2023-11-15 09:20:16', '2023-11-15 09:20:16', ''),
(3004, 'mr-maxine-thiel-dds', 1, 'Botble\\Author\\Models\\Author', '2023-11-19 23:00:22', '2023-11-19 23:00:22', 'author'),
(3005, 'mr-raoul-dach-sr', 2, 'Botble\\Author\\Models\\Author', '2023-11-19 23:00:22', '2023-11-19 23:00:22', 'author'),
(3006, 'mrs-nettie-walsh-phd', 3, 'Botble\\Author\\Models\\Author', '2023-11-19 23:00:22', '2023-11-19 23:00:22', 'author'),
(3007, 'vern-schultz-iii', 4, 'Botble\\Author\\Models\\Author', '2023-11-19 23:00:22', '2023-11-19 23:00:22', 'author'),
(3008, 'prof-green-kris', 5, 'Botble\\Author\\Models\\Author', '2023-11-19 23:00:23', '2023-11-19 23:00:23', 'author'),
(3009, 'charley-bashirian', 6, 'Botble\\Author\\Models\\Author', '2023-11-19 23:00:23', '2023-11-19 23:00:23', 'author'),
(3010, 'jeramie-beatty', 7, 'Botble\\Author\\Models\\Author', '2023-11-19 23:00:23', '2023-11-19 23:00:23', 'author'),
(3011, 'elmore-borer', 8, 'Botble\\Author\\Models\\Author', '2023-11-19 23:00:23', '2023-11-19 23:00:23', 'author'),
(3012, 'jamaal-cremin-ii', 9, 'Botble\\Author\\Models\\Author', '2023-11-19 23:00:23', '2023-11-19 23:00:23', 'author'),
(3013, 'liam-braun-md', 10, 'Botble\\Author\\Models\\Author', '2023-11-19 23:00:23', '2023-11-19 23:00:23', 'author'),
(3014, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 40, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3015, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 41, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3016, 'twitter-japan-is-not-a-safe-space-for-minority-users', 42, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3017, 'a-legislator-in-taiwan-risks-a-recall-for-supporting-same-sex-marriage', 43, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3018, 'concerns-over-united-states-president-trumps-latest-controversial-foreign-policies-loom-large-in-africa', 44, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3019, 'unesco-protects-balkan-grandma-march-day-custom-as-cultural-heritage', 45, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3020, 'petition-to-free-the-eritrean-man-unjustly-arrested-in-italy-for-mistaken-identity', 46, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3021, 'refugees-in-lebanon-are-still-being-scapegoated-in-the-media-and-in-academia', 47, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3022, 'a-detainee-of-all-eras-the-prominent-case-of-egyptian-activist-alaa-abdelfattah', 48, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3023, 'the-ahwazis-of-iran-face-death-sentences-after-false-accusations-of-opposing-the-government', 49, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3024, 'recalcitrant-activist-charged-by-singapore-police-for-organizing-illegal-assemblies', 50, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3025, 'right-to-information-requests-in-sri-lanka-reveals-process-for-blocking-websites', 51, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3026, 'the-cat-in-the-pot-cuddly-felines-nap-in-japanese-cookware', 52, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3027, 'indonesian-president-jokowi-leads-citizens-in-condemning-donald-trumps-jerusalem-declaration', 53, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3028, 'a-local-newspapers-full-page-feature-on-nuclear-radiation-survival-stirs-panic-in-china', 54, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3029, 'the-fall-of-chinese-internet-czar-lu-wei', 55, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3030, 'syrian-and-lebanese-on-the-conflict-of-identities', 56, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3031, 'transgender-womans-murder-in-trinidad-tobago-highlights-ostracism-faced-by-lgbtq-community', 57, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3032, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 58, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3033, 'victoria-becomes-the-first-australian-state-to-pass-voluntary-assisted-dying-legislation', 59, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3034, 'palestinians-arent-surprised-by-us-jerusalem-move-as-world-already-ignores-their-existence', 60, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3035, 'painting-a-new-story-sohrai-art-in-jharkhand', 61, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3036, 'the-conviction-of-another-dancehall-star-fails-to-shock-crime-weary-jamaicans', 62, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3037, 'harsh-prison-terms-for-video-journalist-and-blogger-as-vietnam-cracks-down-on-free-expression', 63, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3038, 'what-future-for-the-wikipedia-seagull-on-kazakhstans-brand-new-banknotes', 64, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3039, 'jailed-bahraini-rights-defender-nabeel-rajab-faces-additional-fifteen-years-in-prison', 65, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3040, 'ashraf-ghani-gets-thumbs-down-after-anti-women-headscarf-gaffe', 66, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3041, 'the-health-of-thousands-of-filipino-children-could-be-at-risk-thanks-to-sanofis-dengue-vaccine', 67, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3042, 'kyrgyz-childrens-author-remakes-old-fables-drives-new-narratives', 68, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3043, 'animal-carcasses-tires-and-medical-waste-a-new-report-highlights-health-risks-of-lebanons-trash-crisis', 69, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3044, 'russian-atomic-regulators-foray-into-meme-making-fails-to-quench-rumors-of-nuclear-leaks', 70, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3045, 'in-china-skepticism-surrounding-police-investigation-of-kindergarten-child-abuse-is-censored', 71, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3046, 'russians-are-unimpressed-with-the-2018-presidential-election-logo-and-have-ideas-for-improvement', 72, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3047, 'weaving-objects-of-loss-and-memory-with-hayv-kahraman', 73, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3048, 'this-brazilian-doctor-says-science-has-evolved-but-stigma-against-hiv-remains', 74, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3049, 'scrutiny-and-doubt-over-rape-victims-testimony-sparks-outrage-in-spain', 75, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3050, 'after-authorities-evict-beijings-low-end-residents-chinese-ask-where-is-the-humanity', 76, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3051, 'found-in-translation-local-publisher-brings-alive-the-story-of-a-somali-olympian-and-refugee-for-macedonian-readers', 77, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3052, 'in-egypt-both-sexual-harassment-and-child-marriages-continue-to-plague-the-country', 78, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3053, 'the-hypocrisy-of-the-philippines-national-police-human-rights-mobile-app', 81, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(3054, 'initiatives-for-environmental-activism-take-off-in-cuba', 82, 'Botble\\Blog\\Models\\Post', '2023-11-19 23:00:25', '2023-11-19 23:00:25', ''),
(4133, 'homepage', 1, 'Botble\\Page\\Models\\Page', '2024-07-27 06:11:21', '2024-07-27 06:11:21', ''),
(4134, 'introduction', 2, 'Botble\\Page\\Models\\Page', '2024-07-27 06:11:21', '2024-07-27 06:11:21', ''),
(4135, 'about-us', 3, 'Botble\\Page\\Models\\Page', '2024-07-27 06:11:21', '2024-07-27 06:11:21', ''),
(4136, 'contact', 4, 'Botble\\Page\\Models\\Page', '2024-07-27 06:11:21', '2024-07-27 06:11:21', ''),
(4137, 'cookie-policy', 5, 'Botble\\Page\\Models\\Page', '2024-07-27 06:11:21', '2024-07-27 06:11:21', ''),
(4138, 'perfect', 1, 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22', 'galleries'),
(4139, 'new-day', 2, 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22', 'galleries'),
(4140, 'happy-day', 3, 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22', 'galleries'),
(4141, 'nature', 4, 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22', 'galleries'),
(4142, 'morning', 5, 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22', 'galleries'),
(4143, 'photography', 6, 'Botble\\Gallery\\Models\\Gallery', '2024-07-27 06:11:22', '2024-07-27 06:11:22', 'galleries');

-- --------------------------------------------------------

--
-- Table structure for table `slugs_translations`
--

CREATE TABLE `slugs_translations` (
  `lang_code` varchar(191) NOT NULL,
  `slugs_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `prefix` varchar(120) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) DEFAULT '',
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'đầu tư', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(2, 'cơn lốc', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(3, 'thái lan', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2017-12-15 17:47:40', '2017-12-15 17:47:40'),
(4, 'alive', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2017-12-15 22:18:36', '2017-12-15 22:18:36'),
(5, 'story', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2017-12-15 22:18:36', '2017-12-15 22:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `super_user`, `manage_supers`, `avatar_id`) VALUES
(1, 'admin@roadservice.com', '$2y$12$2/aO3Sii9VBBYRod0l0bZeuDKXjwYUp1DvyJFne.liBVtMZHRy5YG', 'wvrf3NjkeqUFBgewbU1F0Q7cFCVnv8IiGjS6UcXI9yGhgC5jsxsREyYjFQAw', '2024-07-27 06:11:22', '2024-09-01 14:05:03', NULL, NULL, 'Ulises', 'Grady', 'admin', 1, 1, 16665);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'languages_current_data_language', 'vi', 1, '2017-12-12 17:33:45', '2017-12-18 18:41:20'),
(2, 'admin-locale', 'en', 1, '2017-12-12 18:28:41', '2018-05-25 19:30:47'),
(3, 'admin-theme', 'default', 1, '2018-03-07 03:54:49', '2018-03-13 20:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'TextWidget', 'footer_sidebar', 'lara-mag', 0, '{\"id\":\"TextWidget\",\"name\":\"About us\",\"content\":\"Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.\\\\r\\\\n\\\\r\\\\nMorbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu.\"}', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(2, 'RecentPostsWidget', 'footer_sidebar', 'lara-mag', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(3, 'CustomMenuWidget', 'footer_sidebar', 'lara-mag', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Featured categories\",\"menu_id\":\"featured-categories\"}', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(4, 'FacebookWidget', 'footer_sidebar', 'lara-mag', 3, '{\"id\":\"FacebookWidget\",\"name\":\"Fanpage Facebook\",\"facebook_name\":\"Archi Elite\",\"facebook_url\":\"https:\\/\\/www.facebook.com\\/archielite.tech\"}', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(5, 'RecentPostsWidget', 'primary_sidebar', 'lara-mag', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(6, 'AdsWidget', 'primary_sidebar', 'lara-mag', 1, '{\"id\":\"AdsWidget\",\"name\":null,\"image_link\":\"#\",\"image_new_tab\":\"1\",\"image_url\":\"banners\\/2.jpg\"}', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(7, 'PopularPostsWidget', 'primary_sidebar', 'lara-mag', 2, '{\"id\":\"PopularPostsWidget\",\"name\":\"Popular Posts\",\"number_display\":5}', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(8, 'VideoPostsWidget', 'primary_sidebar', 'lara-mag', 3, '{\"id\":\"VideoPostsWidget\",\"name\":\"Video Posts\",\"number_display\":5}', '2024-07-27 06:11:25', '2024-07-27 06:11:25'),
(9, 'AdsWidget', 'primary_sidebar', 'lara-mag', 4, '{\"id\":\"AdsWidget\",\"name\":null,\"image_link\":\"#\",\"image_new_tab\":\"1\",\"image_url\":\"banners\\/2.jpg\"}', '2024-07-27 06:11:25', '2024-07-27 06:11:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `ads_translations`
--
ALTER TABLE `ads_translations`
  ADD PRIMARY KEY (`lang_code`,`ads_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_history_user_id_index` (`user_id`),
  ADD KEY `audit_history_module_index` (`module`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_user_id_index` (`author_id`),
  ADD KEY `categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields_translations`
--
ALTER TABLE `contact_custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_fields_id`);

--
-- Indexes for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_field_options_translations`
--
ALTER TABLE `contact_custom_field_options_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `galleries_translations`
--
ALTER TABLE `galleries_translations`
  ADD PRIMARY KEY (`lang_code`,`galleries_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_content_id_index` (`reference_id`);

--
-- Indexes for table `gallery_meta_translations`
--
ALTER TABLE `gallery_meta_translations`
  ADD PRIMARY KEY (`lang_code`,`gallery_meta_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_locale_index` (`lang_locale`),
  ADD KEY `lang_code_index` (`lang_code`),
  ADD KEY `lang_is_default_index` (`lang_is_default`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`reference_id`),
  ADD KEY `meta_code_index` (`lang_meta_code`),
  ADD KEY `meta_origin_index` (`lang_meta_origin`),
  ADD KEY `meta_reference_type_index` (`reference_type`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_folder_id_user_id_created_at_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_parent_id_user_id_created_at_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`reference_id`),
  ADD KEY `menu_nodes_index` (`parent_id`,`reference_id`,`reference_type`,`has_child`,`created_at`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_author_id_author_type_created_at_index` (`status`,`author_id`,`author_type`,`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_category_id_index` (`category_id`),
  ADD KEY `post_category_post_id_index` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`),
  ADD KEY `post_tag_post_id_index` (`post_id`);

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugs_reference_id_index` (`reference_id`),
  ADD KEY `slugs_key_index` (`key`),
  ADD KEY `slugs_prefix_index` (`prefix`),
  ADD KEY `slugs_reference_index` (`reference_id`,`reference_type`);

--
-- Indexes for table `slugs_translations`
--
ALTER TABLE `slugs_translations`
  ADD PRIMARY KEY (`lang_code`,`slugs_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_user_id_index` (`author_id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16666;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1673;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9252;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2616;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4144;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
