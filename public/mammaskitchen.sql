-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2018 at 12:15 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mammaskitchen`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'Breakfast', 'breakfast', '2018-10-14 09:32:37', '2018-10-14 09:32:37'),
(5, 'Dinner', 'dinner', '2018-10-14 09:32:56', '2018-10-14 09:32:56'),
(6, 'Desert', 'desert', '2018-10-14 09:33:12', '2018-10-14 09:33:12'),
(7, 'Specia', 'specia', '2018-10-14 09:33:25', '2018-10-14 09:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Md. Elias Mia', 'eliaskhan69@gmail.com', 'Complain', 'hhghghg', '2018-10-15 03:27:40', '2018-10-15 03:27:40'),
(3, 'md. Manik Mia', 'manik@gmail.com', 'Complain', 'nsvbhsbchabd', '2018-10-15 03:32:04', '2018-10-15 03:32:04'),
(4, 'Dalim', 'dalim@gmail.com', 'location', 'i don\'t know your location', '2018-10-16 01:34:57', '2018-10-16 01:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(5, 4, 'Bread', 'Bread Big 2. This is very delirious bread.', 100, 'bread-2018-10-14-5bc3624cbfa6a.png', '2018-10-14 09:35:40', '2018-10-14 09:35:40'),
(6, 4, 'Bread Small', 'Bread Small is small size . is very Delicious Bread', 50, 'bread-small-2018-10-14-5bc36290b76c5.png', '2018-10-14 09:36:48', '2018-10-14 09:36:48'),
(7, 7, 'Ofdm Special', 'Ofdm Special  is very very testy', 250, 'ofdm-special-2018-10-14-5bc362e53679a.jpg', '2018-10-14 09:38:13', '2018-10-14 09:38:13'),
(8, 5, 'Brief Rice', 'Brief Rice is most popular food in bd', 300, 'brief-rice-2018-10-14-5bc3632401933.jpg', '2018-10-14 09:39:16', '2018-10-14 09:39:16'),
(9, 5, 'vegetable', 'vegetable  is most test food . it is usually eat with rice', 70, 'vegetable-2018-10-14-5bc363a04b19a.jpg', '2018-10-14 09:41:20', '2018-10-14 09:41:20'),
(10, 5, 'Chingri vegetable', 'Chingri vegetable  also eaten with rice', 200, 'chingri-vegetable-2018-10-14-5bc363f79cbaa.jpg', '2018-10-14 09:42:47', '2018-10-14 09:43:06'),
(11, 6, 'beer', 'beer is one of the most popular and power full drink', 250, 'beer-2018-10-14-5bc3644a5d0a3.png', '2018-10-14 09:44:10', '2018-10-14 09:44:10');

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
(1, '2018_10_10_085531_create_sliders_table', 1),
(2, '2018_10_10_100819_create_sliders_table', 2),
(3, '2018_10_11_110130_create_categories_table', 3),
(4, '2018_10_13_055452_create_items_table', 4),
(5, '2018_10_15_045316_create_reservations_table', 5),
(6, '2018_10_15_084844_create_c_ontacts_table', 6),
(7, '2018_10_15_091756_create_contacts_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_and_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `massage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `phone`, `email`, `date_and_time`, `massage`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Md Manik Mia', '01919191919', 'eliaskhan69@gmail.com', '02 October 18y - 03:11 pm', 'messege', 1, '2018-10-15 00:13:40', '2018-10-16 00:29:24'),
(5, 'Md. Elias Mia', '01749917469', 'eliaskhan69@gmail.com', '15 October 18y - 12:11 pm', 'hgdchsdbcbsjdzcs', 1, '2018-10-15 00:24:21', '2018-10-16 00:17:44'),
(6, 'Md. Elias Mia', '000', 'mdeliasmia.aiub@gmail.com', '15 October 18y - 12:11 pm', 'c szjhcsjdbjcdzcz', 1, '2018-10-15 00:42:41', '2018-10-16 00:18:48'),
(7, 'md mdm dm', '01749917469', 'eliaskhan69@gmail.com', '15 October 18y - 12:11 pm', 'jjxvjxvxc', 1, '2018-10-15 00:43:57', '2018-10-16 00:20:53'),
(8, 'nami ma', '01919191919', 'jhvjxnc@jfdc.com', '15 October 18y - 12:11 pm', 'kkxnvjkbxvx', 1, '2018-10-15 00:45:31', '2018-10-15 23:31:20'),
(9, 'md Ismail', '01749917469', 'eliaskhan69@gmail.com', '16 October 18y - 12:11 pm', 'gooood', 1, '2018-10-16 00:40:15', '2018-10-16 00:49:15'),
(10, 'Md. Dalim Mia', '019191919191', 'dalim@gmail.com', '16 October 18y - 12:11 pm', 'Give me all food', 1, '2018-10-16 00:54:45', '2018-10-16 00:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `sub_title`, `image`, `created_at`, `updated_at`) VALUES
(3, 'title-test', 'sub_title-test', 'title-test-2018-10-11-5bbefc5fe2f97.jpg', '2018-10-11 01:31:43', '2018-10-11 01:31:43'),
(6, 'Breakfirst', 'Breat', 'breakfirst-2018-10-11-5bbf1b914695e.png', '2018-10-11 03:44:49', '2018-10-11 03:44:49'),
(7, 'My Title', 'My SUb_Title', 'my-title-2018-10-11-5bbf249d14f6f.jpg', '2018-10-11 04:23:25', '2018-10-11 04:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md. Elias Mia', 'eliaskhan69@gmail.com', NULL, '$2y$10$OveMwluMEZYic.e3mt/liecGyvp1NC7HqhgSBK0.1cGe.Za13aMhq', '5seVp7Cw66FIkehrkG3tnv2gn9rdOJnOE49ixukOS47Pm3iKeQ6I8mpEUvgX', '2018-10-10 04:21:29', '2018-10-10 04:21:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
