-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Okt 2017 pada 03.37
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_token2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2017_10_12_035438_create_posts_table', 1),
(10, '2017_10_12_060816_update_users_table_add_api_token_field', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 7, 'edit post lagi-lagi', '2017-10-12 01:41:59', '2017-10-12 03:32:13'),
(2, 7, 'tes post selanjutnya', '2017-10-12 02:15:16', '2017-10-12 02:15:16'),
(4, 4, 'hapus kalo bisa', '2017-10-12 10:50:23', '2017-10-12 10:50:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `api_token`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'rubi', 'rubi1@gmail.com', '$2y$10$dfbDoh1OiTdLSvDKlag.GeAJWqSstweuPs.HnyAEUEottYYT28vxq', '$2y$10$BjA8jk85kDY.QBCiwIZrbeGBOrhCNFaGz5HpoTZ.ppGSrTjT21vEG', NULL, '2017-10-11 23:55:59', '2017-10-11 23:55:59'),
(4, 'rubii', 'rubi2@gmail.com', '$2y$10$wdceFv0XcxfBHcjhQ/o6TuVm8tTDqXTddo83Ojcj.dOdiUQm7q9jW', '$2y$10$aKSP8RpSHGQlA1j8DjQTQe8O12XHiHzlu0anhBlOHiMoCJJWHB.Ze', NULL, '2017-10-12 00:01:52', '2017-10-12 00:01:52'),
(5, 'rubiii', 'rubi3@gmail.com', '$2y$10$IrcOBK0cJM4wNiwZ/BMFqO2cXIwcXPIlG0V5L1llk.ugtmKK8cjaW', '$2y$10$iZWNppnj2mNEpczET6Oio.WhiDAo/R5DDqIanXQyFVzjBsC/HO7Iq', NULL, '2017-10-12 00:03:49', '2017-10-12 00:03:49'),
(6, 'rubiii000', 'rubi4@gmail.com', '$2y$10$shBjNX5N26h9rxgejvDPqen2x5XEjRV6xnB7F8c0WjRMp46jUZR3i', '$2y$10$zP4rkwbLwhEBchWCTHG/4u/uQVSS454YPtG2OxQZcCzo8fNrN9PWK', NULL, '2017-10-12 00:07:49', '2017-10-12 00:07:49'),
(7, 'rururu', 'ruru4@gmail.com', '$2y$10$.rNivgh3Vx0t0t2TM4ERzuERD7r/EtJIZlRucS50SXX0v0MhK7vVu', '$2y$10$MBDdS8uCw0eVb9ajAkwc0O7U4y1yCkoxkNyjc2HM93TRzlSf6AS8e', NULL, '2017-10-12 00:30:10', '2017-10-12 00:30:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
