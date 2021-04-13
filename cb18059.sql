-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2021 at 04:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cb18059`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(23, 2, 1, '2021-01-23 18:21:22', '2021-01-23 18:21:22');

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
(2, '2021_01_23_030843_create_products_table', 1),
(3, '2021_01_23_030918_create_cart_table', 1),
(4, '2021_01_23_094730_create_orders_table', 2),
(5, '2021_01_23_121201_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 'pending', 'cash', 'pending', 'No 32 Jalan Mati 7', NULL, NULL),
(4, 1, 5, 'pending', 'cash', 'pending', 'Your Heart', NULL, NULL),
(5, 2, 5, 'pending', 'cash', 'pending', 'Your Heart', NULL, NULL),
(6, 3, 5, 'pending', 'cash', 'pending', 'Your Heart', NULL, NULL),
(7, 4, 5, 'pending', 'cash', 'pending', 'Your Heart', NULL, NULL),
(8, 1, 6, 'pending', 'cash', 'pending', 'sde', NULL, NULL),
(9, 1, 6, 'pending', 'cash', 'pending', 'sde', NULL, NULL),
(10, 2, 6, 'pending', 'cash', 'pending', 'sde', NULL, NULL),
(11, 4, 6, 'pending', 'cash', 'pending', 'sde', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'DMH-Z5350BT', '2580', 'receiver', 'A smart receiver with 4gb ram', 'https://cms.pioneercarentertainment.com//images/product/product_20200317031910.png', NULL, NULL),
(2, 'TS-A1680F', '388', 'speaker', 'A speaker with FreqResponse: 36 Hz to 25 kHz', 'https://cms.pioneercarentertainment.com//images/product/product_20181214051525.png', NULL, NULL),
(3, 'TS-WX400DA', '4500', 'subwoofer', 'A subwoofer with Frequency Response: DEEP:20Hz ~ 100Hz (－20ｄB), DYNAMIC:20Hz ~ 100Hz (－20ｄB)', 'https://cms.pioneercarentertainment.com//images/product/product_20190417050600.png', NULL, NULL),
(4, 'GM-DX874', '6000', 'amplifier', 'A amplifier with Frequency Response: 10 Hz to 50 kHz', 'https://cms.pioneercarentertainment.com//images/product/product_20181214041704.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Choong', 'choong@gmail.com', '$2y$10$xroJi4.Uj0C5vxeAIuZ68e4NTadb6zZYiN.rZbs7ARZHyhadM6DFm', NULL, NULL),
(2, 'John', 'john@gmail.com', '$2y$10$K5FywPt.APHNG6sWoKpFneV5q7bMptAIrwwrSgno/z87Oewxh5Cbu', NULL, NULL),
(3, 'ming', 'ming@gmail.com', '$2y$10$.3iL1ajB21TMBvJANAP1Qe4OxfPnr7xTxATLuwAdyY3SAZzT31SB2', '2021-01-23 05:07:36', '2021-01-23 05:07:36'),
(4, 'Zhen Yuan', 'zhenyuan98@gmail.com', '$2y$10$B8zw5uls65gigmAHOMEDSujxtv8UGnq7EQFYpval7MFX3pbAHjLSK', '2021-01-23 05:45:31', '2021-01-23 05:45:31'),
(5, 'cb18059', 'cb18059@gmail.com', '$2y$10$HACV0iftLMhMI7LriqPhMuMu8g1wSrcusOr/Hwnp.OUdPocjw6o4u', '2021-01-23 08:53:44', '2021-01-23 08:53:44'),
(6, 'czy', 'czy5369@gmail.com', '$2y$10$3y0umONjy/ILsUcu7xBkfeslnb.yAJQr06zQlmXbYY5YtgjNHD99u', '2021-01-23 18:30:11', '2021-01-23 18:30:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
