-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 09:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invest`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `logo`, `amount`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Heliogen', 'Images/1661708944Heliogen.png', '11446954', '1 round on company name', '2022-08-28 12:49:04', '2022-08-28 12:49:04'),
(2, 'Heliogen', 'Images/1661708974DeathCo.png', '11446954', '1 round on company name', '2022-08-28 12:49:34', '2022-08-28 12:49:34'),
(3, 'Heliogen', 'Images/1661709019Knightscope.png', '11446954', '1 round on company name', '2022-08-28 12:50:19', '2022-08-28 12:50:19'),
(4, 'Heliogen', 'Images/1661709077Mask Group 15.png', '11446954', '1 round on company name', '2022-08-28 12:51:17', '2022-08-28 12:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `page`, `heading`, `image`, `key`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Banner Home Page', 'Everyone should be able to in the next <span> big thing. <span>', 'images1661800153banne22r.png', '#banner', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At .', '2022-08-29 14:09:13', '2022-08-29 14:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'How much can I invest?', 'A sock drive is an event assembled for the purpose of collecting new socks to be donated to the distributed to those in need within a local community. Similar to how a toy drive or a canned food drive works, except it\'s for socks.', '2022-08-28 12:28:00', '2022-08-28 12:28:00'),
(2, 'When will I receive my shares?', 'A sock drive is an event assembled for the purpose of collecting new socks to be donated to the distributed to those in need within a local community. Similar to how a toy drive or a canned food drive works, except it\'s for socks.', '2022-08-28 12:30:32', '2022-08-28 12:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `how_works`
--

CREATE TABLE `how_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `how_works`
--

INSERT INTO `how_works` (`id`, `name`, `icon`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Access the startup asset class', 'Images/1661707405how-work (1).png', 'We lobbied to change the rules so everyday people outside the venture bubble could finally invest in private startups, a historically high performing asset class.', '2022-08-28 12:23:25', '2022-08-28 12:23:25'),
(2, 'Invest in vetted companies', 'Images/1661707466how-work (2).png', 'Only a small selection of companies make it through our due diligence process. We’re not an open marketplace where anyone can just click and raise.', '2022-08-28 12:24:26', '2022-08-28 12:24:26'),
(3, 'Diversify like a VC', 'Images/1661707506how-work (4).png', 'We offer lower minimums than traditional angel investments so you can back more companies. When you diversify, you increase your odds of positive returns.', '2022-08-28 12:25:06', '2022-08-28 12:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_12_23_000001_create_permissions_table', 1),
(8, '2019_12_23_000002_create_roles_table', 1),
(9, '2019_12_23_000003_create_users_table', 1),
(141, '2022_08_28_122543_create_startups_table', 7),
(142, '2022_08_28_123119_create_how_works_table', 8),
(143, '2022_08_28_130136_create_services_table', 9),
(144, '2022_08_28_130517_create_companies_table', 10),
(145, '2022_08_28_130737_create_faqs_table', 11),
(146, '2022_02_03_124324_create_reviews_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(47, 'service_create', '2022-02-03 09:22:05', '2022-02-03 09:22:05', NULL),
(48, 'service_edit', '2022-02-03 09:22:17', '2022-02-03 09:22:17', NULL),
(49, 'service_show', '2022-02-03 09:22:28', '2022-03-24 09:45:08', '2022-03-24 09:45:08'),
(50, 'service_delete', '2022-02-03 09:22:40', '2022-02-03 09:22:40', NULL),
(51, 'service_access', '2022-02-03 09:23:01', '2022-02-03 09:23:01', NULL),
(52, 'review_access', '2022-02-03 09:39:57', '2022-02-03 09:39:57', NULL),
(53, 'review_show', '2022-02-03 09:40:07', '2022-02-03 09:40:07', NULL),
(54, 'review_edit', '2022-02-03 09:40:15', '2022-02-03 09:40:15', NULL),
(55, 'review_delete', '2022-02-03 09:40:27', '2022-02-03 09:40:27', NULL),
(56, 'review_create', '2022-02-03 09:41:03', '2022-02-03 09:41:03', NULL),
(156, 'HowWork_access', '2022-08-28 09:00:05', '2022-08-28 09:00:05', NULL),
(157, 'HowWork_create', '2022-08-28 09:00:13', '2022-08-28 09:00:13', NULL),
(158, 'HowWork_edit', '2022-08-28 09:00:28', '2022-08-28 09:00:28', NULL),
(159, 'HowWork_delete', '2022-08-28 09:00:38', '2022-08-28 09:00:38', NULL),
(160, 'startup_access', '2022-08-28 09:00:56', '2022-08-28 09:00:56', NULL),
(161, 'startup_create', '2022-08-28 09:01:10', '2022-08-28 09:01:10', NULL),
(162, 'startup_edit', '2022-08-28 09:01:20', '2022-08-28 09:01:20', NULL),
(163, 'startup_delete', '2022-08-28 09:01:32', '2022-08-28 09:01:32', NULL),
(164, 'faq_access', '2022-08-28 11:47:41', '2022-08-28 11:47:56', NULL),
(165, 'faq_create', '2022-08-28 11:48:09', '2022-08-28 11:48:09', NULL),
(166, 'faq_edit', '2022-08-28 11:48:19', '2022-08-28 11:48:19', NULL),
(167, 'faq_delete', '2022-08-28 11:48:30', '2022-08-28 11:48:30', NULL),
(168, 'company_access', '2022-08-28 12:01:51', '2022-08-28 12:01:51', NULL),
(169, 'company_create', '2022-08-28 12:02:04', '2022-08-28 12:02:04', NULL),
(170, 'company_edit', '2022-08-28 12:02:15', '2022-08-28 12:02:15', NULL),
(171, 'company_delete', '2022-08-28 12:02:25', '2022-08-28 12:02:25', NULL),
(172, 'service_access', '2022-08-28 12:02:37', '2022-08-28 12:02:37', NULL),
(173, 'service_create', '2022-08-28 12:03:04', '2022-08-28 12:03:04', NULL),
(174, 'service_edit', '2022-08-28 12:03:14', '2022-08-28 12:03:14', NULL),
(175, 'service_delete', '2022-08-28 12:03:27', '2022-08-28 12:03:27', NULL),
(176, 'content_access', '2022-08-29 14:02:52', '2022-08-29 14:02:52', NULL),
(177, 'content_create', '2022-08-29 14:03:03', '2022-08-29 14:03:03', NULL),
(178, 'content_edit', '2022-08-29 14:03:13', '2022-08-29 14:03:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 47),
(1, 48),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 156),
(1, 157),
(1, 158),
(1, 159),
(1, 160),
(1, 161),
(1, 162),
(1, 163),
(1, 164),
(1, 165),
(1, 166),
(1, 167),
(1, 168),
(1, 169),
(1, 170),
(1, 171),
(1, 172),
(1, 173),
(1, 174),
(1, 175),
(1, 176),
(1, 177),
(1, 178);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` tinyint(1) NOT NULL DEFAULT 0,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `rate`, `image`, `permission`, `description`, `created_at`, `updated_at`) VALUES
(1, 'AlexMoron', '4', 'Images/1661707320man.png', 0, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam qui velit est illo? A corporis qui vitae tempora, illum cupiditate.', '2022-08-28 12:22:00', '2022-08-28 12:22:00'),
(2, 'AlexMoron', '4', 'Images/1661707320man.png', 0, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam qui velit est illo? A corporis qui vitae tempora, illum cupiditate.', '2022-08-28 12:22:00', '2022-08-28 12:22:00'),
(3, 'AlexMoron', '4', 'Images/1661707320man.png', 0, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam qui velit est illo? A corporis qui vitae tempora, illum cupiditate.', '2022-08-28 12:22:00', '2022-08-28 12:22:00'),
(4, 'AlexMoron', '4', 'Images/1661707320man.png', 0, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam qui velit est illo? A corporis qui vitae tempora, illum cupiditate.', '2022-08-28 12:22:00', '2022-08-28 12:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `icon`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Raise capital', 'Images/1661707126Mask Group 12.png', 'Raise from $500,000 up to $75 Million from everyday investors who believe in what you\'re building.', '2022-08-28 12:18:46', '2022-08-28 12:18:46'),
(2, 'Get exposure', 'Images/1661707156Mask Group 13.png', 'Market your product as you raise your round, and build awareness with our network of engaged investors.', '2022-08-28 12:19:16', '2022-08-28 12:19:16'),
(3, 'Go fast', 'Images/1661707179Mask Group 14.png', 'Avoid endless back and forth — apply in minutes and know whether your company is a fit within 2-3 days.', '2022-08-28 12:19:39', '2022-08-28 12:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `startups`
--

CREATE TABLE `startups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `startups`
--

INSERT INTO `startups` (`id`, `name`, `description`, `amount1`, `amount2`, `type1`, `type2`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Startup name', 'Mass Production Building System', '11446945', '11446945', 'Raised', 'Raised', 'Images/1661706363invest (3).png', '2022-08-28 12:06:03', '2022-08-28 12:06:03'),
(2, 'Startup name', 'Mass Production Building System', '11446945', '11446945', 'Raised', 'Raised', 'Images/1661706486invest (1).png', '2022-08-28 12:06:03', '2022-08-28 12:08:06'),
(3, 'Startup name', 'Mass Production Building System', '11446945', '11446945', 'Raised', 'Raised', 'Images/1661706499invest (2).png', '2022-08-28 12:06:03', '2022-08-28 12:08:19'),
(4, 'Startup name', 'Mass Production Building System', '11446945', '11446945', 'Raised', 'Raised', 'Images/1661706363invest (3).png', '2022-08-28 12:06:03', '2022-08-28 12:06:03'),
(5, 'Startup name', 'Mass Production Building System', '11446945', '11446945', 'Raised', 'Raised', 'Images/1661706538invest (1).png', '2022-08-28 12:06:03', '2022-08-28 12:08:58'),
(6, 'Startup name', 'Mass Production Building System', '11446945', '11446945', 'Raised', 'Raised', 'Images/1661706551invest (2).png', '2022-08-28 12:06:03', '2022-08-28 12:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` tinyint(1) DEFAULT 0,
  `subscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `business_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_ip` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `image`, `address`, `company`, `subscription`, `paid_amount`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `business_name`, `user_ip`) VALUES
(1, 'Super', 'Admin', NULL, 'Street no 2, Lahore', 127, NULL, NULL, 'admin@gmail.com', NULL, '$2y$10$Lsjp4bGLM4HkGAGnXwbf5eBWCSLIvs01pxhSbIeaIS/H5htGyPymi', NULL, NULL, '2022-03-22 06:09:30', NULL, 'admin company', 122223),
(2, 'User', 'User', NULL, 'Lahore', NULL, 'basic', 100, 'user@gmail.com', NULL, '$2y$10$zr2R24/CbNRzVenBKHl2qu3GwPGHr7t7a2x5y.iyWK6vE03/3N2tS', NULL, '2021-11-08 11:43:43', '2022-05-10 06:03:24', NULL, '0', 0),
(3, 'User2', 'User Two', NULL, NULL, NULL, 'basic', 100, 'user2@gmail.com', NULL, '$2y$10$eWerABRwGv5MzQCPklvub.39JdXk17zYiTxWJrv8Yy9TpVbDGGzmy', NULL, '2021-11-10 02:21:55', '2021-11-10 02:22:43', NULL, '0', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contents_key_unique` (`key`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_works`
--
ALTER TABLE `how_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_773672` (`role_id`),
  ADD KEY `permission_id_fk_773672` (`permission_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_773681` (`user_id`),
  ADD KEY `role_id_fk_773681` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `startups`
--
ALTER TABLE `startups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `how_works`
--
ALTER TABLE `how_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `startups`
--
ALTER TABLE `startups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_773672` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_773672` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_773681` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_773681` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
