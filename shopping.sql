-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for shoping
CREATE DATABASE IF NOT EXISTS `shoping` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shoping`;

-- Dumping structure for table shoping.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `designation` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_actuel_detaillant` int NOT NULL,
  `prix_actuel_grossiste` int NOT NULL,
  `prix_ancien_detaillant` int NOT NULL,
  `prix_ancien_grossiste` int NOT NULL,
  `qte` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoping.articles: ~0 rows (approximately)
DELETE FROM `articles`;

-- Dumping structure for table shoping.commandes
CREATE TABLE IF NOT EXISTS `commandes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `article_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `qte` int NOT NULL,
  `date_heure` datetime NOT NULL,
  `date_heure_livraison` datetime NOT NULL,
  `detaillant` tinyint(1) NOT NULL,
  `message_commande` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `commandes_article_id_foreign` (`article_id`),
  KEY `commandes_user_id_foreign` (`user_id`),
  CONSTRAINT `commandes_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  CONSTRAINT `commandes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoping.commandes: ~0 rows (approximately)
DELETE FROM `commandes`;

-- Dumping structure for table shoping.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoping.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table shoping.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoping.migrations: ~0 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_03_25_151531_create_articles_table', 1),
	(6, '2023_03_25_151532_create_commandes_table', 1),
	(7, '2023_03_25_151722_create_ventes_table', 1);

-- Dumping structure for table shoping.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoping.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table shoping.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoping.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table shoping.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isadmin` tinyint(1) DEFAULT NULL,
  `ismembre` tinyint(1) DEFAULT NULL,
  `isclient` tinyint(1) DEFAULT NULL,
  `isdetaillant` tinyint(1) DEFAULT NULL,
  `isgrossiste` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoping.users: ~100 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `prenom`, `sexe`, `email`, `email_verified_at`, `password`, `isadmin`, `ismembre`, `isclient`, `isdetaillant`, `isgrossiste`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Marshall Herzog', NULL, NULL, 'dach.roberta@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '6jIT29JuVR', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(2, 'Nat Ankunding', NULL, NULL, 'lillian.wunsch@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '8Kxx9LMCsH', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(3, 'Lisandro Green', NULL, NULL, 'wkautzer@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'TSkdAs7R96', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(4, 'Earline Anderson', NULL, NULL, 'claud96@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'wY0YvbCGOP', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(5, 'Jewel Windler', NULL, NULL, 'terry.clement@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'aWoOkSv82A', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(6, 'Brandi Parisian', NULL, NULL, 'maggio.sallie@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'uxaGV21RPu', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(7, 'Billy Beatty', NULL, NULL, 'xcummerata@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'T2bOnxjfd6', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(8, 'Halle Fritsch Sr.', NULL, NULL, 'justus91@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'NXh4z3fuQg', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(9, 'Mireya Miller', NULL, NULL, 'russ.jacobson@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'H3BjJ91HUx', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(10, 'Mr. Oran Schowalter', NULL, NULL, 'lowe.jason@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'ayVrmVTLgC', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(11, 'Adriel Gibson Sr.', NULL, NULL, 'jaren08@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '5ojV0DW3aD', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(12, 'Merl Monahan DDS', NULL, NULL, 'meghan.eichmann@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '350MHqoFgR', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(13, 'Ara Rath', NULL, NULL, 'bryon03@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'HMxh5R1UXs', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(14, 'Uriel D\'Amore II', NULL, NULL, 'ureinger@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'QwUuPci8tI', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(15, 'Mrs. Bria Mann', NULL, NULL, 'wabernathy@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '7Y161hV64y', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(16, 'Lorena Wiza', NULL, NULL, 'iblick@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '8XBvlIrrYX', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(17, 'Melba Dickinson', NULL, NULL, 'klockman@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '9vqXLyjJUs', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(18, 'Dudley Dare I', NULL, NULL, 'carlie14@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'nzfcyYaZeF', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(19, 'Kiarra Stokes', NULL, NULL, 'curtis14@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'tIgDXCdEbE', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(20, 'London Fritsch I', NULL, NULL, 'cornelius.krajcik@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'DbS9bl4Fle', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(21, 'Christop Nienow II', NULL, NULL, 'hroberts@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '8cmexlcJU4', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(22, 'Evelyn O\'Kon', NULL, NULL, 'bulah45@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '5tMAa8iXjn', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(23, 'Kevin Ward', NULL, NULL, 'darrin03@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'XZZpLoGoQj', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(24, 'Seamus Cassin', NULL, NULL, 'durgan.misael@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'TG0yOEviDF', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(25, 'Guiseppe Jenkins', NULL, NULL, 'kbeer@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'RHHRZKPVYP', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(26, 'Dr. Mariam Wolff I', NULL, NULL, 'irving.buckridge@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'uRrbNqpa4r', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(27, 'Orville Powlowski DVM', NULL, NULL, 'wkiehn@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 't5iILbt0Ye', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(28, 'Catalina Fritsch', NULL, NULL, 'bergnaum.kamryn@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'XbNVCC34HO', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(29, 'Miss Viviane Schowalter V', NULL, NULL, 'gdicki@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '6oobmh97ye', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(30, 'Abraham Ondricka III', NULL, NULL, 'macy23@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'HlNE7BnfeD', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(31, 'Maddison Breitenberg MD', NULL, NULL, 'keaton.stokes@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'iorpG01HUz', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(32, 'Adrianna Heller', NULL, NULL, 'darlene.pfannerstill@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '6s1Gsh3s88', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(33, 'Theresia Corkery', NULL, NULL, 'lennie16@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'VW0duGfvVX', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(34, 'Rosalinda Kutch', NULL, NULL, 'stokes.corine@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 't0MIDuHucN', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(35, 'Katrine Yost', NULL, NULL, 'london90@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'UJL08Ghq4B', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(36, 'Makenna Lang', NULL, NULL, 'jones.derrick@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '0KTCc2z91n', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(37, 'Dr. Ron Mante I', NULL, NULL, 'corwin.marcellus@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'raBQ3DN4ym', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(38, 'Jackeline Brown', NULL, NULL, 'chris51@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'IArYvBumst', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(39, 'Mr. Colby Kuhlman', NULL, NULL, 'ezekiel.jones@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'w6rMQmto6C', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(40, 'Vilma Koss II', NULL, NULL, 'qweimann@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '5ML7RsMG6T', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(41, 'Esteban Jenkins', NULL, NULL, 'candice.boehm@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'gHn0Z5mTQG', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(42, 'Mrs. Virginia Smith', NULL, NULL, 'jessyca25@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'nbKTWhJNnu', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(43, 'Ms. Elouise Blanda PhD', NULL, NULL, 'fiona80@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'O1o8BpXZ9U', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(44, 'Dorthy Collins', NULL, NULL, 'mertz.keegan@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'qIwVoysIyi', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(45, 'Prof. Minerva Marks II', NULL, NULL, 'gmarquardt@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '1xWFuBEifv', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(46, 'Ms. Kattie Heaney Jr.', NULL, NULL, 'cleveland82@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'RnAYyVKnmg', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(47, 'Prof. Santa Bartell', NULL, NULL, 'cary.lind@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'xC2yLFXBEy', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(48, 'Mike Homenick Jr.', NULL, NULL, 'mustafa00@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'OizSgUAJEy', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(49, 'Keaton Morissette', NULL, NULL, 'lizeth77@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'MrSgzlnCXO', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(50, 'Skyla Konopelski', NULL, NULL, 'tia.kling@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '4QPWB8K8Fb', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(51, 'Willa Schultz', NULL, NULL, 'wolf.lera@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'oDsnbsRaPB', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(52, 'Tristin Bechtelar', NULL, NULL, 'plubowitz@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'nPnAoPaPVi', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(53, 'Josiah O\'Connell', NULL, NULL, 'ole.kessler@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'Xi3gpXPhmT', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(54, 'Katherine Mosciski', NULL, NULL, 'xcummerata@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'GgDPgccqnV', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(55, 'Domenic Heaney', NULL, NULL, 'gconsidine@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'KDeXQdlqlD', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(56, 'Miss Deja Pfeffer I', NULL, NULL, 'gbode@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'if9UTAoSlA', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(57, 'Thaddeus Bartoletti', NULL, NULL, 'slittel@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'vBJiEwjl6w', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(58, 'Mariah Hammes', NULL, NULL, 'cassandra.koch@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'nNs6t1ZUAq', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(59, 'Ms. Kailee Trantow', NULL, NULL, 'herzog.melyna@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '7l2m8Vcxij', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(60, 'Prof. Nona D\'Amore MD', NULL, NULL, 'eoconner@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'ACf5UkU1Zt', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(61, 'Stone Hand', NULL, NULL, 'will.julien@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'lL7c7N5Xbf', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(62, 'Ms. Daija Kuhn', NULL, NULL, 'rod.mcdermott@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'NnxMyzHW7P', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(63, 'Kiera Jones Sr.', NULL, NULL, 'rogelio88@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'ngGawYS9V5', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(64, 'Vivian Harvey', NULL, NULL, 'katrine30@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'aUOQo0Db0Y', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(65, 'Collin Harvey Sr.', NULL, NULL, 'brigitte52@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'FYR8YMaIXJ', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(66, 'Maryse Heaney', NULL, NULL, 'golson@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '27Gl5pE2Xj', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(67, 'Magnus Johnson', NULL, NULL, 'jamil85@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'k2fAUfsLzS', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(68, 'Damien Nolan', NULL, NULL, 'mosciski.christ@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'VaheOQ5nmr', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(69, 'Maia Schimmel', NULL, NULL, 'kgislason@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'kI4nHn67A5', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(70, 'Cassidy Rosenbaum', NULL, NULL, 'mozell84@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'I3phfgYLJf', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(71, 'Cleve Bayer', NULL, NULL, 'vandervort.meghan@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'vhVXXSXH0S', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(72, 'Elinor Bailey', NULL, NULL, 'layla41@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'jgDpk904a1', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(73, 'Christelle Cartwright', NULL, NULL, 'romaine.volkman@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'G76HocKpYT', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(74, 'Alvina Gutmann', NULL, NULL, 'gheathcote@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'HgwYDpzrUx', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(75, 'Miss Hermina Greenholt', NULL, NULL, 'fratke@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '8D884gnROU', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(76, 'Billie Zemlak', NULL, NULL, 'berenice.shanahan@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'wamKo3FDKh', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(77, 'Elizabeth Schuppe MD', NULL, NULL, 'amir87@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'hwygBpEQFu', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(78, 'Marjolaine Baumbach', NULL, NULL, 'emard.fabian@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'a6GBC4ugpl', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(79, 'Alexandre Stark PhD', NULL, NULL, 'flatley.julie@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'wo4MFwNebm', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(80, 'Jannie Bailey IV', NULL, NULL, 'jamie.lindgren@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'mBj9Bk92pG', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(81, 'Eryn Satterfield III', NULL, NULL, 'arvid65@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'ZUlMBnkros', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(82, 'Cedrick Pfannerstill', NULL, NULL, 'whills@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'ZsG8LoYyS1', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(83, 'Tyshawn Borer', NULL, NULL, 'durgan.theodora@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '5XqurDOneD', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(84, 'Brigitte Russel', NULL, NULL, 'giuseppe55@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '5jdt6ECmkW', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(85, 'Cayla Hackett II', NULL, NULL, 'jbahringer@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'LHLil0qRCO', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(86, 'Mrs. Leonor Schinner', NULL, NULL, 'harvey.meredith@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '4RqDh1ATRI', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(87, 'Mrs. Nedra Kuhic', NULL, NULL, 'gottlieb.brenden@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '4bu93PT7KH', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(88, 'Ms. Naomi Kling', NULL, NULL, 'logan21@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '3sWu2lvyV3', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(89, 'Marcellus Corwin', NULL, NULL, 'kitty62@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'YPUPrya5dA', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(90, 'Craig Macejkovic IV', NULL, NULL, 'abigale55@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '6Yz0RmRGZI', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(91, 'Jedediah Bernier', NULL, NULL, 'pleffler@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '3uwmy7nCWq', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(92, 'Cyril Eichmann', NULL, NULL, 'aberge@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'hxAaSSYzUG', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(93, 'Cheyanne Kuhn', NULL, NULL, 'wjaskolski@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'UrOh5a3jnb', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(94, 'Idella Stracke', NULL, NULL, 'viola42@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'jBQT9xnUic', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(95, 'Jared Mueller MD', NULL, NULL, 'franecki.eusebio@example.com', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'pX44VeKnhL', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(96, 'Daniella Brakus', NULL, NULL, 'pat.mckenzie@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'r6ou2NUMuY', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(97, 'Vivien Schinner', NULL, NULL, 'sporer.jannie@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '46EmpHGj8s', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(98, 'Willie Metz', NULL, NULL, 'champlin.gladys@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, '7aWUlj7qF9', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(99, 'Dennis Hackett', NULL, NULL, 'javonte74@example.org', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'UpX9E1sux6', '2023-03-26 00:19:37', '2023-03-26 00:19:37'),
	(100, 'Miss Aletha Yundt', NULL, NULL, 'rosella.parker@example.net', '2023-03-26 00:19:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, 'Knzj4pmNeP', '2023-03-26 00:19:37', '2023-03-26 00:19:37');

-- Dumping structure for table shoping.ventes
CREATE TABLE IF NOT EXISTS `ventes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `qte` int NOT NULL,
  `prix` int NOT NULL,
  `date_heure` datetime NOT NULL,
  `article_id` bigint unsigned DEFAULT NULL,
  `commande_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ventes_article_id_foreign` (`article_id`),
  KEY `ventes_commande_id_foreign` (`commande_id`),
  CONSTRAINT `ventes_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  CONSTRAINT `ventes_commande_id_foreign` FOREIGN KEY (`commande_id`) REFERENCES `commandes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoping.ventes: ~0 rows (approximately)
DELETE FROM `ventes`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
