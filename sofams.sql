-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2017 at 05:44 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sofams`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_cate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_cate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id_cate` int(11) NOT NULL,
  `keyword_cate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_cate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_cate`, `alias_cate`, `parent_id_cate`, `keyword_cate`, `description_cate`, `created_at`, `updated_at`) VALUES
(10, 'Quần Jean Nam', 'quan-jean-nam', 0, '1', '1', NULL, NULL),
(14, 'Quần Jean Nữ2', 'quan-jean-nu2', 10, '2', '2fsdfsdfds', NULL, NULL),
(15, 'Quần Short nam 2', 'quan-short-nam-2', 0, '2', '3', NULL, NULL),
(16, 'Ao Jean 223', 'ao-jean-223', 14, '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(12, 'iphone-2.png', 56, NULL, NULL),
(13, 'iphone-1.jpg', 56, NULL, NULL),
(14, 'iphone-1.jpg', 58, NULL, NULL),
(15, 'iphone6black(2).jpg', 58, NULL, NULL),
(16, 'iphone6while(2).png', 59, NULL, NULL),
(17, 'iphone-2.png', 60, NULL, NULL),
(18, 'iphone-1.jpg', 60, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2017_01_23_054202_create_categories_table', 1),
(34, '2017_01_23_060945_create_products_table', 1),
(35, '2017_01_24_062348_create_images_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price_product` int(11) NOT NULL,
  `info_product` text COLLATE utf8_unicode_ci NOT NULL,
  `content_product` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name_product`, `alias_product`, `price_product`, `info_product`, `content_product`, `image_product`, `keywords_product`, `description_product`, `cate_id`, `user_id`, `created_at`, `updated_at`) VALUES
(52, 'quan jean 4', 'quan-jean-4', 22222, '<p>quan jean 2</p>\r\n', '<p>quan jean 2</p>\r\n', 'iphone6while.png', 'quan jean 2', 'quan jean 2', 15, 1, '2017-02-08 03:34:16', '2017-02-08 10:09:34'),
(56, 'short jean nam', 'short-jean-nam', 10000000, '<p>short jean nam</p>\r\n', '<p>short jean nam</p>\r\n', 'sony-xperia-z3-2.jpg', 'short jean nam', 'short jean nam', 15, 1, '2017-02-08 08:26:55', '2017-02-08 08:26:55'),
(58, 'Combo Quần Jean 1', 'combo-quan-jean-1', 2000000, '<p>Combo Quần Jean</p>\r\n', '<p>Combo Quần Jean</p>\r\n', 'iphone6while.png', 'Combo Quần Jean', 'Combo Quần Jean', 10, 1, '2017-02-08 08:29:05', '2017-02-08 11:30:22'),
(59, 'Ao dai Jea 5', 'ao-dai-jea-5', 20000000, '<p>Ao dai Jean</p>\r\n', '<p>Ao dai Jean</p>\r\n', 'iphone6black.jpg', 'Ao dai Jean', 'Ao dai Jean', 15, 1, '2017-02-08 08:31:46', '2017-02-08 10:19:58'),
(60, 'Combo Quần Jean 10', 'combo-quan-jean-10', 1000000, '<p>Combo Quần Jean 10</p>\r\n', '<p>Combo Quần Jean 20</p>\r\n', 'iphone6gold.jpg', 'Combo Quần Jean 13', 'Combo Quần Jean 14', 15, 1, '2017-02-08 21:35:45', '2017-02-08 21:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '1', 'admin@localhost.com', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_cate_unique` (`name_cate`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_product_unique` (`name_product`),
  ADD KEY `products_cate_id_foreign` (`cate_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
