-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 06, 2023 at 06:27 PM
-- Server version: 5.7.42
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db_testing-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_10_101607_create_paytm_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paytm`
--

CREATE TABLE `paytm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `fee` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paytm`
--

INSERT INTO `paytm` (`id`, `name`, `mobile`, `email`, `status`, `fee`, `order_id`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 'Animals2', 8945266220, 'admin@gmail.com', 0, 1500, '8945266220_622', '0', '2023-01-27 06:20:46', '2023-01-27 06:20:46'),
(2, 'Random Texts', 8945266220, 'admin@gmail.com', 0, 1500, '8945266220_472', '0', '2023-01-27 06:21:08', '2023-01-27 06:21:08'),
(3, 'About Us', 8945266220, 'raju@gmail.com', 0, 1500, '8945266220_954', '0', '2023-01-27 07:03:20', '2023-01-27 07:03:20'),
(4, 'UGC', 8945266220, 'admin@gmail.com', 0, 1500, '8945266220_214', '0', '2023-01-27 07:05:13', '2023-01-27 07:05:13'),
(5, 'Random Texts', 8945266220, 'admin@gmail.com', 0, 1500, '8945266220_702', '0', '2023-01-27 07:09:26', '2023-01-27 07:09:26'),
(6, 'UGC', 8945266220, 'raju@gmail.com', 0, 1500, '8945266220_719', '0', '2023-01-27 07:14:46', '2023-01-27 07:14:46'),
(7, 'UGC', 8945266220, 'admin@admin.com', 0, 1500, '8945266220_581', '0', '2023-01-27 07:19:10', '2023-01-27 07:19:10'),
(8, 'About Us', 8945266220, 'admin@gmail.com', 0, 1500, '8945266220_644', '0', '2023-01-27 07:20:37', '2023-01-27 07:20:37'),
(9, 'About Us', 8945266220, 'admin@admin.com', 0, 1500, '8945266220_806', '20230127010350000825797409874758648', '2023-01-27 07:24:04', '2023-01-27 07:27:47'),
(10, 'Random Texts', 8945266220, 'admin@yopmail.com', 0, 1500, '8945266220_920', '20230130010410000826857895865086833', '2023-01-30 05:38:03', '2023-01-30 05:38:36'),
(11, 'Random Texts', 8945266220, 'admin@yopmail.com', 0, 1500, '8945266220_58', '20230202010320000827862013409150837', '2023-02-02 00:08:04', '2023-02-02 00:11:11'),
(12, 'test1234', 8945266220, 'test@gmail.com', 0, 1500, '8945266220_36', '20230202010350000827862931671968549', '2023-02-02 00:11:43', '2023-02-02 00:26:09'),
(13, 'Rahul Singh', 6576767544, 'prasun@matrixnmedia.com', 0, 1500, '6576767544_338', '0', '2023-10-06 07:24:55', '2023-10-06 07:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paytm`
--
ALTER TABLE `paytm`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paytm`
--
ALTER TABLE `paytm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
