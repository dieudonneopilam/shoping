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


-- Dumping database structure for restaurant
CREATE DATABASE IF NOT EXISTS `restaurant` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurant`;

-- Dumping structure for table restaurant.achats
CREATE TABLE IF NOT EXISTS `achats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `produit_id` bigint unsigned NOT NULL,
  `qte_achat` int NOT NULL,
  `date_achat` datetime NOT NULL,
  `prix_achat` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `achats_produit_id_foreign` (`produit_id`),
  CONSTRAINT `achats_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produits` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.achats: ~0 rows (approximately)
DELETE FROM `achats`;

-- Dumping structure for table restaurant.depenses
CREATE TABLE IF NOT EXISTS `depenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `motif` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `montant` int NOT NULL,
  `date_depense` datetime NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `depenses_user_id_foreign` (`user_id`),
  CONSTRAINT `depenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.depenses: ~0 rows (approximately)
DELETE FROM `depenses`;

-- Dumping structure for table restaurant.dettes
CREATE TABLE IF NOT EXISTS `dettes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `produit_id` bigint unsigned NOT NULL,
  `qte_dette` int NOT NULL,
  `prix_vente` int NOT NULL,
  `date_dette` datetime NOT NULL,
  `name_dette` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `user_tit` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dettes_produit_id_foreign` (`produit_id`),
  KEY `dettes_user_id_foreign` (`user_id`),
  KEY `dettes_user_tit_foreign` (`user_tit`),
  CONSTRAINT `dettes_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produits` (`id`),
  CONSTRAINT `dettes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `dettes_user_tit_foreign` FOREIGN KEY (`user_tit`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.dettes: ~0 rows (approximately)
DELETE FROM `dettes`;

-- Dumping structure for table restaurant.failed_jobs
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

-- Dumping data for table restaurant.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table restaurant.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.migrations: ~10 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(23, '2014_10_12_000000_create_users_table', 1),
	(24, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(25, '2019_08_19_000000_create_failed_jobs_table', 1),
	(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(27, '2023_03_26_141335_create_produits_table', 1),
	(28, '2023_03_26_141459_create_achats_table', 1),
	(29, '2023_03_26_141803_create_ventes_table', 1),
	(30, '2023_03_26_142225_create_dettes_table', 1),
	(31, '2023_03_26_143722_create_depenses_table', 1),
	(32, '2023_03_26_144129_create_rapports_table', 1);

-- Dumping structure for table restaurant.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table restaurant.personal_access_tokens
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

-- Dumping data for table restaurant.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table restaurant.produits
CREATE TABLE IF NOT EXISTS `produits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qte` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.produits: ~0 rows (approximately)
DELETE FROM `produits`;

-- Dumping structure for table restaurant.rapports
CREATE TABLE IF NOT EXISTS `rapports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vente_jour` int NOT NULL,
  `depense_jour` int NOT NULL,
  `dette_jour` int NOT NULL,
  `validate` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rapports_user_id_foreign` (`user_id`),
  CONSTRAINT `rapports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.rapports: ~0 rows (approximately)
DELETE FROM `rapports`;

-- Dumping structure for table restaurant.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_server` tinyint(1) NOT NULL DEFAULT '0',
  `is_comptoire` tinyint(1) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.users: ~10 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `email_verified_at`, `password`, `login`, `is_server`, `is_comptoire`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Marquis Boehm', 'Lisandro Abshire', 'fred73@example.net', '2023-03-26 13:01:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tillman.kaylee', 0, 0, 0, 'yhtpuh0AVS', '2023-03-26 13:01:38', '2023-03-26 13:01:38'),
	(2, 'Jaylan Gorczany', 'Adrianna Pagac', 'nicole.schneider@example.com', '2023-03-26 13:01:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'schroeder.mazie', 0, 0, 0, 'FJz4kZkkaj', '2023-03-26 13:01:38', '2023-03-26 13:01:38'),
	(3, 'Victor Konopelski I', 'Ferne Wilderman', 'xgleason@example.com', '2023-03-26 13:01:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'carlee.ernser', 0, 0, 0, 'DrMkI7er73', '2023-03-26 13:01:38', '2023-03-26 13:01:38'),
	(4, 'Prof. Lavinia Witting II', 'Berta Beier', 'autumn51@example.net', '2023-03-26 13:01:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'msenger', 0, 0, 0, 'vivEvQOx8k', '2023-03-26 13:01:38', '2023-03-26 13:01:38'),
	(5, 'Triston Gutkowski', 'Rodolfo Cummings DDS', 'lreilly@example.net', '2023-03-26 13:01:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'agutmann', 0, 0, 0, 'qtCInCelIw', '2023-03-26 13:01:38', '2023-03-26 13:01:38'),
	(6, 'Prof. Rey Wolf', 'Jason Hagenes', 'kiley.homenick@example.net', '2023-03-26 13:01:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hassie.wiegand', 0, 0, 0, 'fOIcNbwlRW', '2023-03-26 13:01:38', '2023-03-26 13:01:38'),
	(7, 'Mekhi Muller', 'Dr. Rae Russel', 'pthiel@example.org', '2023-03-26 13:01:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'alda.abbott', 0, 0, 0, '2uDjJ4NuJQ', '2023-03-26 13:01:38', '2023-03-26 13:01:38'),
	(8, 'Dr. Demarcus Stamm', 'Hubert Hauck', 'fidel.schroeder@example.org', '2023-03-26 13:01:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eliza75', 0, 0, 0, 'O3ht99htWW', '2023-03-26 13:01:39', '2023-03-26 13:01:39'),
	(9, 'Hayley Reinger', 'Mr. Ignatius Christiansen', 'veronica.thiel@example.net', '2023-03-26 13:01:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'claudia39', 0, 0, 0, 'QTQ9pBmfGX', '2023-03-26 13:01:39', '2023-03-26 13:01:39'),
	(10, 'Ike Heathcote', 'Angelita O\'Reilly', 'gillian33@example.net', '2023-03-26 13:01:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'monique35', 0, 0, 0, 'ogXcyC0Ol5', '2023-03-26 13:01:39', '2023-03-26 13:01:39');

-- Dumping structure for table restaurant.ventes
CREATE TABLE IF NOT EXISTS `ventes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `produit_id` bigint unsigned NOT NULL,
  `qte_vente` int NOT NULL,
  `prix_vente` int NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `date_vente` datetime NOT NULL,
  `validate` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ventes_produit_id_foreign` (`produit_id`),
  KEY `ventes_user_id_foreign` (`user_id`),
  CONSTRAINT `ventes_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produits` (`id`),
  CONSTRAINT `ventes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table restaurant.ventes: ~0 rows (approximately)
DELETE FROM `ventes`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
