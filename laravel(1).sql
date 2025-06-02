-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 02 juin 2025 à 04:39
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `catname` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `catname`, `created_at`, `updated_at`) VALUES
(1, 'drink', NULL, NULL),
(2, 'cake', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) NOT NULL,
  `prenom` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `two_factor_secret` text,
  `two_factor_recovery_codes` text,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `type`, `email_verified_at`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Selle', 'Adrien', 'selleadrien@gmail.com', '$2y$12$K1Cp/btDAYC34RZWZDd4beeggys7g2YrQnu9DF3phivVR/snHXveG', 'eyJpdiI6Im0xaXhLbXFMRmFOZGZkYjdNUExONWc9PSIsInZhbHVlIjoiYjMwd2k0WGx4b3lySDhtdkVuMnduNm9NSERpQWJHM3MrZ3NEdlA2LzM0QT0iLCJtYWMiOiI2YmU1OGZjOGNiNmM2MDI3OTgxZjg1MjMzZGVhY2QyYjZmNDdkNDBiNDRiODkyNTNmNzgyODMzMTM2ZTAwYTZhIiwidGFnIjoiIn0=', 'eyJpdiI6IjE0WXplbndwR2ZvQVA2MnQvUDlzZHc9PSIsInZhbHVlIjoibEpnNlZzRS9CdE5NSFo4M2tvNEFVYTRRVTJTL1hPQzRaSE03Vks4cys3UTB3L25rOTFZL3dQOU90ZWFCUG5uYnQ3aDRScHNhRlZjTG1HTVd3OExSOUF3L2NRYzVWaHpxVnJjS1lqa09JTVViZFg5WEFGYzNScjBlOVJUWlFFMzdQbFQrclNCellDM0U1ZjZjWkRoUk0xRHAwelRYZWV2Y2hQY3hnTmZxUzJNMFMrNXliMjZybkZxQVFLS0hTMHpRUmZUN3VkdDdCbE1ldXRYcmcwTEdKODZyZ21qYksxeVpmM042eTlXRzVUZlNDazJSVGxXTmFHbWsrZ3lIcFVmc3VvTVppRUpwK3RMbHpUNjZqUjJYcGc9PSIsIm1hYyI6IjM5OWY1NDlhM2VkZWRhYTZlMmVlZGJhNjQ5ZWViOGYyZTE3MjBhNmI5NDA5MDFhMTFhMjg0NDNjMzJkMzg0YTYiLCJ0YWciOiIifQ==', NULL, NULL, '2024-12-03 15:01:13', '2024-12-03 14:57:34', '2025-02-25 14:46:47', 'FQEsQUgDRPrqsPObJSz55m94G8JZNWWrPqkhOmL4K5szaxHt1tEfNeMAfSJU'),
(2, 'john', 'doe', 'johndoe@gmail.com', '$2y$12$V.I/bwomlppvsNB2gCnNi..JJEbZ4DlzzRpb3aEl.rUgsauI/x75C', 'eyJpdiI6Ikt3QjdFaUx2dlFLNVNIZVl0RVVYekE9PSIsInZhbHVlIjoibXROQkF2UTZoTzFuSkpia3NvVGtDSEM4ZzkrZWtKQ09Bb1QyNWhzbWNIRT0iLCJtYWMiOiI1YWNjOTk0YjkwZTIxYWFlODBmYjFjNTU1MTI4M2IxMTkzYWVhYjU2NjFhZDM1ZGIwYjMyOGU3MjNiMWZhYmNjIiwidGFnIjoiIn0=', 'eyJpdiI6ImFLb2tlWGdIdDIwaVZhVk96cFNUNFE9PSIsInZhbHVlIjoidHVLclVGZkxrTG1EcVFMTm5sZHlISUtqK01CUy8zNnhaVHl1S3JEcStWUnY2MGJSeDg2SzM3NUtjL2NINTdzQ2ovUElPVjAwSDJNcTg5Tmk0VDNjVlhMNmdtR3JvSmlEQy9OTXRLRWtqbllRYUVORy93TnVVNzJYVmQvNENPeSs2Wnp1V0Zya0xMcHBoeENQYi8yNjlva3l0MEE4aE9LYkxVdFlwQnA4OU9IL0Fra3Jic0tSRVZmOXFwT1dZVWNRdlA4Snl1VzRLdWx1eHVxa0Q5VDB4KzdqSkZhclJRWnpFTC9DclFmbzlSREQxaElFQzBMOGc4cWlNYkN3N1ZLaVVVcW1tRmVzOWRCcVBiZ1VWdkdhNmc9PSIsIm1hYyI6ImI2YmEwMDgzYjk5NjEyNmE3ZjhlOGM5NmFmNjU5NzIxYTM3OGZiOTRiZjZmYjg4ZmZhMTg0ZmUyNzcxZWVjZGEiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2025-02-23 11:41:38', '2025-02-23 14:12:52', NULL),
(3, 'delyia', 'forme', 'delyiaforme@gmail.com', '$2y$12$9xNExnIToG8Q5DCsZcgJ7.we2LUn6Fag1pFpycgQpypGaw3F3Dl7.', 'eyJpdiI6InoyT2poOCtoZlRQMDhhV09CWFByblE9PSIsInZhbHVlIjoiN3hOcGI4SXJ5S2dqSTBXUyt1M1YrZmFTVEFMOFU4cjA3ek5qWG43WmpoUT0iLCJtYWMiOiJkZjFkOGI4OTlmNjk5NjhlNDAxMWVjZTk4ODI5ZDdlMzEwOTIzMjRlZmE3ZDZkOTg0MjA4N2RkYjg5M2U5MTQzIiwidGFnIjoiIn0=', 'eyJpdiI6Ikh5bFBmL3ZueHI4MTlPV05vaDI2THc9PSIsInZhbHVlIjoiV1NvN3ZGc3NlSE53bXRJbDdzdzlNY3FERm1nQWpaNnlmc1dLWEswUUdCVHdmcVdzYXNHNGltL2tqcVlOMHB0TmdrenlqdW1qSTFSNHNrR0xMVnBOb1VaanFMRjNmUFFaOHVQU1BHRGFaemxHT2ZBSFhveGpOaFFyalc0bVR2c1JPdmM2aUJER2VyNlY2MjV4Qkg5ak8rTndVa3k4WXh6WEpsUmd6aVRHdU40bHMzbzRmNEpNVFNQYnRSTVZQbWptTUJuZ0Y4elFXZzBNRitOazV5UFlHSEJyVk5rc3YwaEQrQkdzZjNWeEFHMWsxYlk2K09kdnZnR1AyR2xwbGw4SGRDb0t2enVVZGgzTGE3OVoxaTJidXc9PSIsIm1hYyI6IjljZTA5MGZmMjZlNmI4OTYwZjU1ODUwOGU5NjViNDk4YmU5YTNjZTc1NWIwZWEzOGIyMTkwNWRhOWRmOTZhZTgiLCJ0YWciOiIifQ==', NULL, NULL, NULL, '2025-02-23 14:08:09', '2025-02-23 14:10:50', NULL),
(4, 'alicia', 'top', 'aliciatop@gmail.com', '$2y$12$Ljxctz/EOraUoF3JNEgUROoPx7NdQeL.l//AM8l.gmI98uB.DGUoq', 'eyJpdiI6IjB2bllJTjJTVXVrWDhtUzdMZXVBVGc9PSIsInZhbHVlIjoiYmd4c1pLTWNrU2RNOGNTV2xFaTFlYW5HNzBqNW1hQnFXS1pqczY3ZDU2Zz0iLCJtYWMiOiIzNTEwNDFjYWQyNDU0ZTcwNDk3Yjg3NTVjMmM1Y2ZkYjEyYWYyZjU5NmQyZjkwNmU0OTJhYTM3MzhjYWJkNGJhIiwidGFnIjoiIn0=', 'eyJpdiI6IlBjWXcyc0hPSitQMGJSeVlwaW9qbEE9PSIsInZhbHVlIjoiS3VwajRaY3oxWkRYWk0vV2JVYzMzaTV2aEdSV2lZN2VWQ1Z1enljUHdCY093M1RMR2orWWt5MEhva2pUQ3ducXFVa0pWeXczU0RrKzF0T3NMYlFCcjlBN1B0SXQ1U3IxRWEremt3d01uYkhUaXV4SXE2bXA0VTRnRHE2Y25ZQjhhS0hSalN3V2xTcC9RUlozWVBmVTl6UXh1VW96Q1lQSFF3NzRoZnVUNTE4bUFORWZ4RXV0SC9NRFM5R0RxcFlLeWU5blI4RTF5YmFVTVNGdlE3cGk3SWJtTjZvaFV4YTBsaTN6d1dmTWNWRmc4MnVpbXBWVEZ1R2dNVEt2elY1U2EzY3VQMEZRS2c0bHo3MUg4cFVRK0E9PSIsIm1hYyI6ImMxOGQxMjU2ZTU3ZmM5ZmRiNzVjZjczZGEzMTRmZDVlODAxYWFhMDQ4MGQxMjBlZTA3NWQ2Y2Y0NzY0YjIyMTEiLCJ0YWciOiIifQ==', NULL, NULL, '2025-02-23 14:16:13', '2025-02-23 14:15:46', '2025-02-23 14:17:33', NULL),
(5, 'mathieu', 'Adrien', 'mathieu@belva.tv', '$2y$12$jaUkEYRTAr6MLTit3kqs0uSTB514WGibpRCNHM6BGrO79UWBrzixu', NULL, NULL, NULL, NULL, '2025-03-26 12:58:27', '2025-03-26 12:57:30', '2025-03-26 13:00:00', 'a3Pb17RBVjH2lhMr2wYocD74sd3sN6Vf0sstd7alGovUgxXbxfkRFkgUCh8N'),
(6, 'test0256', 'rieneee', 'testest0225@gmail.com', '$2y$12$1akpptW7AggnfrVA8jqeo.Sr2.zULDjuMWJURpeFY00r4fZnDe/x6', NULL, NULL, NULL, NULL, NULL, '2025-05-15 13:10:25', '2025-05-15 13:10:25', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'azaz', '2025-01-12 12:55:40', '2025-01-12 12:55:40'),
(2, 1, 1, 'test', '2025-01-12 13:31:08', '2025-01-12 13:31:08'),
(3, 1, 1, 'test', '2025-05-12 11:16:21', '2025-05-12 11:16:21'),
(4, 1, 1, 'bonjour', '2025-05-15 13:05:35', '2025-05-15 13:05:35');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_29_150323_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_04_16_205829_create_blog_articles_table', 1),
(4, '2024_04_17_095947_create_posts_table', 1),
(5, '2024_04_25_104016_create_password_resets_table', 1),
(6, '2024_04_25_104613_create_failed_jobs_table', 1),
(7, '2024_04_29_130556_create_client_table', 1),
(8, '2024_04_29_130600_add_two_factor_columns_to_clients_table', 1),
(9, '2024_08_05_130913_create_permission_tables', 1),
(10, '2024_08_05_181730_create_roles_table', 1),
(11, '2024_10_16_144747_create_password_reset_tokens_table', 1),
(12, '2024_10_17_144520_create_model_has_roles_table', 1),
(13, '2024_10_17_144924_create_model_has_permissions_table', 1),
(14, '2024_11_10_134624_add_remember_token_to_client_table', 1),
(15, '2024_11_17_102324_add_email_verified_at_to_client_table', 2),
(16, '2024_12_23_183845_create_categories_table', 2),
(17, 'create_comments_table', 2),
(18, '2024_12_28_132259_add_category_id_to_posts_table', 3),
(21, '2024_12_31_144915_create_comments_table', 5),
(20, '2025_01_12_121112_add_post_id_to_comments_table', 4),
(22, '2025_02_20_160333_create_role_has_permissions_table', 6),
(23, '2025_02_27_141651_create_post_like_table', 7),
(24, '2025_04_23_155945_create_wishes_table', 8),
(25, '2025_04_27_113319_create_wishables_table', 9),
(26, '2025_05_05_202623_create_ordres_table', 10),
(27, '2025_05_06_195910_create_order_items_table', 10);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Client', 1),
(2, 'App\\Models\\Client', 5);

-- --------------------------------------------------------

--
-- Structure de la table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` text NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` text,
  `price` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `created_at`, `updated_at`, `quantity`, `price`) VALUES
(1, '4', 1, '2025-05-09 12:35:47', '2025-05-09 12:35:47', '1', NULL),
(2, '5', 1, '2025-05-09 12:35:52', '2025-05-09 12:35:52', '1', NULL),
(3, '6', 2, '2025-05-12 17:30:59', '2025-05-12 17:30:59', '1', NULL),
(4, '6', 1, '2025-05-12 17:30:59', '2025-05-12 17:30:59', '1', NULL),
(5, '6', 4, '2025-05-12 17:30:59', '2025-05-12 17:30:59', '1', NULL),
(6, '7', 2, '2025-05-12 17:31:05', '2025-05-12 17:31:05', '1', NULL),
(7, '7', 1, '2025-05-12 17:31:05', '2025-05-12 17:31:05', '1', NULL),
(8, '7', 4, '2025-05-12 17:31:05', '2025-05-12 17:31:05', '1', NULL),
(9, '8', 2, '2025-05-12 17:32:15', '2025-05-12 17:32:15', '1', NULL),
(10, '8', 1, '2025-05-12 17:32:15', '2025-05-12 17:32:15', '1', NULL),
(11, '8', 4, '2025-05-12 17:32:15', '2025-05-12 17:32:15', '1', NULL),
(12, '9', 2, '2025-05-12 17:40:33', '2025-05-12 17:40:33', '1', NULL),
(13, '9', 1, '2025-05-12 17:40:33', '2025-05-12 17:40:33', '3', NULL),
(14, '9', 4, '2025-05-12 17:40:33', '2025-05-12 17:40:33', '1', NULL),
(15, '9', 7, '2025-05-12 17:40:33', '2025-05-12 17:40:33', '1', NULL),
(16, '10', 2, '2025-05-12 17:41:11', '2025-05-12 17:41:11', '1', NULL),
(17, '10', 1, '2025-05-12 17:41:11', '2025-05-12 17:41:11', '3', NULL),
(18, '10', 4, '2025-05-12 17:41:11', '2025-05-12 17:41:11', '1', NULL),
(19, '10', 7, '2025-05-12 17:41:11', '2025-05-12 17:41:11', '1', NULL),
(20, '11', 1, '2025-05-15 13:06:40', '2025-05-15 13:06:40', '1', NULL),
(21, '11', 2, '2025-05-15 13:06:40', '2025-05-15 13:06:40', '1', NULL),
(22, '12', 23, '2025-05-19 13:21:54', '2025-05-19 13:21:54', '1', 'est');

-- --------------------------------------------------------

--
-- Structure de la table `ordres`
--

DROP TABLE IF EXISTS `ordres`;
CREATE TABLE IF NOT EXISTS `ordres` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int DEFAULT NULL,
  `status` text,
  `adress` text,
  `fullname` text,
  `phone` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `ordres`
--

INSERT INTO `ordres` (`id`, `client_id`, `status`, `adress`, `fullname`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-09 12:32:21', '2025-05-09 12:32:21'),
(2, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-09 12:34:45', '2025-05-09 12:34:45'),
(3, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-09 12:35:20', '2025-05-09 12:35:20'),
(4, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-09 12:35:47', '2025-05-09 12:35:47'),
(5, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-09 12:35:52', '2025-05-09 12:35:52'),
(6, 1, 'pending', NULL, NULL, NULL, '2025-05-12 17:30:59', '2025-05-12 17:30:59'),
(7, 1, 'pending', NULL, NULL, NULL, '2025-05-12 17:31:05', '2025-05-12 17:31:05'),
(8, 1, 'pending', 'vegrg', 'selle', '+32 472 54 24 13', '2025-05-12 17:32:15', '2025-05-12 17:32:15'),
(9, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-12 17:40:33', '2025-05-12 17:40:33'),
(10, 1, 'pending', NULL, NULL, NULL, '2025-05-12 17:41:11', '2025-05-12 17:41:11'),
(11, 1, 'pending', 'test', 'Adrien Selle', '0472542413', '2025-05-15 13:06:40', '2025-05-15 13:06:40'),
(12, 1, 'pending', 'vegrg', 'Adrien Selle', '0472542413', '2025-05-19 13:21:54', '2025-05-19 13:21:54');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_reset_tokens_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `guard_name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Courses', 'client', '2025-02-20 14:51:15', '2025-05-25 10:50:00'),
(2, 'view_hello_world', 'client', '2025-02-20 15:05:15', '2025-02-20 15:05:15'),
(3, 'see goodbye', 'client', '2025-02-20 15:05:15', '2025-02-20 15:05:15'),
(4, 'create role', 'client', '2025-05-25 09:14:15', '2025-05-25 09:14:15'),
(5, 'create test', 'client', '2025-05-25 09:16:55', '2025-05-25 09:16:55'),
(6, 'view role', 'client', '2025-05-25 09:18:33', '2025-05-25 09:18:33'),
(7, 'update role', 'client', '2025-05-25 09:19:01', '2025-05-25 09:19:01'),
(8, 'delete role', 'client', '2025-05-25 09:19:25', '2025-05-25 09:19:25'),
(10, 'Eloy', 'client', '2025-05-25 12:24:30', '2025-05-25 12:24:30');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `stock` text,
  `price` text,
  `img` varchar(255) DEFAULT NULL,
  `poids` varchar(255) DEFAULT NULL,
  `montant_tva` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`, `category_id`, `stock`, `price`, `img`, `poids`, `montant_tva`) VALUES
(23, 'est', 'est', 'est', '2025-05-15 13:09:17', '2025-05-15 13:09:17', 2, 'est', 'est', 'est', 'est', 'est'),
(2, 'pumcake', '2', 'pumcake', '2024-12-27 14:10:13', '2024-12-27 14:10:13', 2, NULL, NULL, NULL, NULL, NULL),
(4, '21', '2111', '21', '2025-03-19 15:43:04', '2025-03-19 15:43:04', 2, NULL, NULL, NULL, NULL, NULL),
(6, 'tata', '1547', 'tata', '2025-03-19 17:00:53', '2025-03-19 17:00:53', 2, '14528', NULL, NULL, NULL, NULL),
(7, 'ludo', '157', 'ludo', '2025-03-24 18:02:01', '2025-03-24 18:02:01', 1, '14528', NULL, NULL, NULL, NULL),
(9, 'adrien', '20', 'adrien', '2025-03-24 18:04:30', '2025-03-24 18:04:30', 1, '20', NULL, NULL, NULL, NULL),
(10, 'albino', '50', 'albino', '2025-03-24 18:06:07', '2025-03-24 18:06:07', 1, '50', NULL, NULL, NULL, NULL),
(13, 'kevin', '63', 'kevin', '2025-03-24 18:13:30', '2025-03-24 18:13:30', 1, '63', '63', NULL, NULL, NULL),
(16, 'mmm', '42', 'ezeeze', '2025-04-20 18:18:56', '2025-04-20 18:18:56', 1, '4545454', '45', 'mmmm', NULL, NULL),
(17, 'test', '15474556', 'ezeze', '2025-04-20 18:27:10', '2025-04-20 18:27:10', 1, 'zeze', 'zeze', 'zeze', NULL, NULL),
(19, 'gtgt', 'gtgtg', 'gtgtgt', '2025-04-21 09:44:13', '2025-04-21 09:44:13', 1, 'gtgtg', 'gtgtg', '4567894656', NULL, NULL),
(20, 'gtgt', '43', 'gtgtgt', '2025-04-21 09:47:44', '2025-04-21 09:47:44', 1, 'gtgtg', 'gtgtg', 'tgtgtg', 'rrrrrr', NULL),
(21, 'rerrer', '478', 'ererer', '2025-04-23 19:03:26', '2025-04-23 19:03:26', 1, '478', '4478', '47474', '47474', '474747'),
(22, 'Thé Vert Bio', 'the-vert-bio', 'Un délicieux thé vert aux notes fleuries.', '2025-05-09 12:20:30', '2025-05-09 12:20:30', 1, '50', '9.99', 'the-vert.jpg', '100g', '1.99');

-- --------------------------------------------------------

--
-- Structure de la table `post_likes`
--

DROP TABLE IF EXISTS `post_likes`;
CREATE TABLE IF NOT EXISTS `post_likes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `1` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `post_likes`
--

INSERT INTO `post_likes` (`id`, `client_id`, `post_id`, `created_at`, `updated_at`) VALUES
(10, 1, 1, '2025-05-15 13:05:47', '2025-05-15 13:05:47'),
(7, 1, 2, '2025-04-27 10:10:03', '2025-04-27 10:10:03');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `guard_name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'client', '2025-02-20 13:10:17', '2025-02-20 13:10:17'),
(2, 'user', 'client', '2025-02-20 13:10:17', '2025-02-20 13:10:17'),
(3, 'super admin', 'client', '2025-05-25 12:25:51', '2025-05-25 12:47:20');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `role_id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `role_has_permissions_permission_id_foreign` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 4),
(1, 7),
(2, 2),
(2, 7),
(3, 10);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `wishes`
--

DROP TABLE IF EXISTS `wishes`;
CREATE TABLE IF NOT EXISTS `wishes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `wishable_type` varchar(191) NOT NULL,
  `wishable_id` bigint UNSIGNED NOT NULL,
  `scope` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wishes_uuid_unique` (`uuid`),
  KEY `wishes_user_id_foreign` (`user_id`),
  KEY `wishes_wishable_type_wishable_id_index` (`wishable_type`,`wishable_id`),
  KEY `wishes_scope_index` (`scope`),
  KEY `fk_client_id` (`client_id`),
  KEY `fk_post_id` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `wishes`
--

INSERT INTO `wishes` (`id`, `uuid`, `user_id`, `wishable_type`, `wishable_id`, `scope`, `deleted_at`, `created_at`, `updated_at`, `client_id`, `post_id`) VALUES
(15, 'c911088c-98c2-40ad-9ca4-825735d86727', 1, 'App\\Models\\Post', 2, 'default', NULL, NULL, NULL, 1, 2),
(14, '412d4ef9-2307-4108-8680-d25cd708c5aa', 1, 'App\\Models\\Post', 1, 'default', NULL, NULL, NULL, 1, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
