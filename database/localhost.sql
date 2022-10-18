-- Adminer 4.8.1 MySQL 10.4.21-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `dosen`;
CREATE TABLE `dosen` (
  `dosen_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(255) NOT NULL,
  `jenjang_pendidikan` enum('1, 2, 3') NOT NULL COMMENT '1=S1, 2=S2, 3=S3',
  PRIMARY KEY (`dosen_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


SET NAMES utf8mb4;

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `info_kampus`;
CREATE TABLE `info_kampus` (
  `no_kampus` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kampus` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `mata_kuliah` varchar(255) NOT NULL,
  `jenjang` enum('1, 2, 3') NOT NULL COMMENT '1=S1, 2=S2, 3=S3',
  PRIMARY KEY (`no_kampus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2014_10_12_200000_add_two_factor_columns_to_users_table',	1),
(4,	'2019_08_19_000000_create_failed_jobs_table',	1),
(5,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(6,	'2022_10_13_152338_create_sessions_table',	1),
(7,	'2022_10_14_012817_add_field_to_users_table',	2),
(8,	'2022_10_14_020126_create_transactions_table',	3),
(9,	'2022_10_14_022836_create_transactions_items_table',	4),
(10,	'2022_10_14_023425_create_product_categories_table',	5),
(11,	'2022_10_14_023739_create_products_table',	6),
(12,	'2022_10_14_024053_create_product_galleries_table',	7);

DROP TABLE IF EXISTS `order_kelas`;
CREATE TABLE `order_kelas` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `kategori` enum('1, 2, 3, 4') NOT NULL COMMENT '1=kelas bahasa, 2=kelas essay, 3=kelas proposal, 4=test bahasa',
  `jenis` enum('1, 2, 3, 4, 5, 6') NOT NULL COMMENT '1=inggris, 2=korea, 3=jepang, 4=mandarin, 5=prediction, 6=resmi',
  `metode_pelaksanaan` enum('1, 2') NOT NULL COMMENT '1=online, 2=offline',
  `payment_track` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `pendaftaran_beasiswa`;
CREATE TABLE `pendaftaran_beasiswa` (
  `ID_pendaftaran` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `id_profil_pendaftar` int(11) NOT NULL,
  `file_ijazah` varchar(255) NOT NULL,
  `file_essay` varchar(255) NOT NULL,
  `file_proposal` varchar(255) NOT NULL,
  `file_sertifikat_bahasa` varchar(255) NOT NULL,
  `file_cv` varchar(255) NOT NULL,
  `file_sertifikat_prestasi` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_pendaftaran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1,	'App\\Models\\User',	1,	'authToken',	'effa4dcfa4255e507e89f3b65019571088169e54f67cac21aa3224a99d347278',	'[\"*\"]',	NULL,	NULL,	'2022-10-14 16:47:53',	'2022-10-14 16:47:53'),
(2,	'App\\Models\\User',	1,	'authToken',	'f84092cd73b5048d291406cf6b1ced08f631596a2f4e2a737efce4d185e38118',	'[\"*\"]',	NULL,	NULL,	'2022-10-14 16:51:00',	'2022-10-14 16:51:00'),
(4,	'App\\Models\\User',	2,	'authToken',	'407482d2c2d390b1dd93710a6f4f7394141ca89bcbd4ec8146836414db847271',	'[\"*\"]',	NULL,	NULL,	'2022-10-17 19:08:07',	'2022-10-17 19:08:07');

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `profile_pendaftar_beasiswa`;
CREATE TABLE `profile_pendaftar_beasiswa` (
  `ID_profile` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pendaftar` varchar(255) NOT NULL,
  `alamat` tinytext NOT NULL,
  `jenis_kelamin` enum('1, 2') NOT NULL COMMENT '1=Laki-laki, 2=Perempuan',
  PRIMARY KEY (`ID_profile`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('NUPRVG5hS4K2jJt5rsl5vX0WaJeEe0UUcpFr5FK9',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Safari/605.1.15',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjF6dG9uenplR1dOdnAxdG81Wm9vR3Z3blp1UFFDNGx3d211eFd3cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9nb2xkbmF0aW9uLWJhY2tlbmQudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1665765886),
('q8LXF2OeHCqwmcapQuuUcJTS7Sqc3G6xUriAgrrg',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Safari/605.1.15',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTNUWHA5RWVSVWMzQkdkQUNMWjBnWm9DWjBya3NHYTB3Q2R6V3VBQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9nb2xkbmF0aW9uLWJhY2tlbmQudGVzdC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1665794696);

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MANUAL',
  `total_price` double(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `transaction_items`;
CREATE TABLE `transaction_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `transactions_id` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `username`, `phone`, `roles`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1,	'Harizah Syawal17',	'jennie.kim@blackpink.co',	'harizah',	'123123123',	'USER',	NULL,	'$2y$10$oS1tA2OGqMZmhND22KaGtuC0IViNC43.uINK2NrToYUb1GFr6dooq',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2022-10-14 16:47:53',	'2022-10-17 22:35:50'),
(2,	'Jennie Kim 2',	'jennie.kim2@blackpink.co',	NULL,	NULL,	'USER',	NULL,	'$2y$10$EhVi52ta0Y4C1VZ02RRGrOAgJSa1yGIwCZpMlAkcqpOXP.02ZrU9C',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2022-10-17 19:08:07',	'2022-10-17 19:08:07');

-- 2022-10-18 11:29:33