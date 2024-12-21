-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 10:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksis`
--

CREATE TABLE `detail_transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` bigint(20) UNSIGNED NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_transaksis`
--

INSERT INTO `detail_transaksis` (`id`, `id_transaksi`, `id_barang`, `qty`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 202406081, 1, 1, 24000, 1, '2024-06-08 07:41:24', '2024-06-08 07:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-12-07 13:14:01', '2024-12-07 13:14:01'),
(2, 13, 1, '2024-12-07 13:29:10', '2024-12-07 13:29:10'),
(3, 13, 1002, '2024-12-07 13:29:21', '2024-12-07 13:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `pesan`, `created_at`, `updated_at`) VALUES
(14, 'shaquille.wibisono@gmail.com', 'membeli buku', '2024-12-07 13:32:56', '2024-12-07 13:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `kritik_sarans`
--

CREATE TABLE `kritik_sarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kritik_sarans`
--

INSERT INTO `kritik_sarans` (`id`, `email`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'zulfaazka354@yahoo.com', 'haiya', '2024-12-06 13:04:10', '2024-12-06 13:04:10'),
(2, 'zulfaazka354@yahoo.com', 'haiya', '2024-12-06 13:06:25', '2024-12-06 13:06:25'),
(3, 'zulfaazka354@yahoo.com', 'haiya', '2024-12-06 13:07:33', '2024-12-06 13:07:33'),
(4, 'zulfaazka354@yahoo.com', 'haiya', '2024-12-06 13:07:39', '2024-12-06 13:07:39'),
(5, 'zulfaazka354@yahoo.com', 'haiya', '2024-12-06 13:07:41', '2024-12-06 13:07:41'),
(6, 'zulfaazka354@yahoo.com', 'haiya', '2024-12-06 13:07:48', '2024-12-06 13:07:48'),
(7, 'zulfaazka354@yahoo.com', 'haiya', '2024-12-06 13:07:56', '2024-12-06 13:07:56'),
(8, 'zulfaazka354@yahoo.com', 'haiya', '2024-12-06 13:08:12', '2024-12-06 13:08:12'),
(9, 'zulfaazka354@yahoo.com', 'asd', '2024-12-06 13:08:24', '2024-12-06 13:08:24'),
(10, 'zulfaazka354@yahoo.com', 'asd', '2024-12-06 13:13:17', '2024-12-06 13:13:17'),
(11, 'zulfaazka354@yahoo.com', 'asd', '2024-12-06 13:16:59', '2024-12-06 13:16:59'),
(12, 'zulfaazka354@yahoo.com', 'asd', '2024-12-06 13:17:05', '2024-12-06 13:17:05'),
(13, 'zulfaazka354@yahoo.com', 'asd', '2024-12-06 13:18:05', '2024-12-06 13:18:05'),
(14, 'zulfaazka354@yahoo.com', 'asd', '2024-12-06 13:18:39', '2024-12-06 13:18:39'),
(15, 'zulfaazka354@yahoo.com', 'asdd', '2024-12-06 13:27:41', '2024-12-06 13:27:41'),
(16, 'zulfaazka354@yahoo.com', '123', '2024-12-06 13:31:10', '2024-12-06 13:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_07_030459_create_m_resis_table', 1),
(6, '2023_06_11_235625_create_products_table', 1),
(7, '2023_06_12_000108_create_transaksis_table', 1),
(8, '2023_07_29_011712_detail_transaksi', 1),
(9, '2023_08_05_094100_tbl_cart', 1),
(10, '2024_12_06_195006_create_kritik_sarans_table', 2),
(11, '2024_12_06_203034_create_favorites_table', 3),
(12, '2024_12_06_214357_create_feedbacks_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `m_resis`
--

CREATE TABLE `m_resis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `awb` varchar(255) NOT NULL,
  `logistic` varchar(255) NOT NULL,
  `warehouse` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) NOT NULL,
  `nama_product` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `kategory` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_out` int(11) NOT NULL DEFAULT 0,
  `foto` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `nama_product`, `type`, `kategory`, `harga`, `discount`, `quantity`, `quantity_out`, `foto`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'BRG29001', 'Zulfa Azka', 'celana', 'Pria', 24000, 0.10, 0, 1, '20240608_images.jpg', 1, '2024-06-08 07:40:47', '2024-06-08 07:41:39'),
(1002, 'L2fpODnFLX', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Blaise Volkman', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1003, 'HiD8XnrPEM', 'Baju Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Misty Miller', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1004, '2GbJCQdKmn', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Hosea Price', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1005, 'fXbmzpml47', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Mr. Freddie Boyle', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1006, 'kl7FXBZOBz', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Martin Gottlieb', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1007, 'bwqTYgc40w', 'Baju Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Lorna Sanford Sr.', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1008, 'wfoVcVxzNA', 'Aksesoris Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Monte Wuckert', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1009, '1N5pFRKYb6', 'Baju Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Mr. Otho Carroll PhD', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1010, '4tSt5fgf5V', 'Baju Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Emerald Mitchell Jr.', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1011, 'UotVgk56yy', 'Celana Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Miss Julianne Kozey DVM', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1012, 'Xa8ShUDrK7', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Aurelie White', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1013, '6Uj3uEtAg0', 'Baju Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Hannah Zboncak Jr.', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1014, 'eq61ChR70A', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Jackeline Auer', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1015, 'imBkml8Mb7', 'Aksesoris Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Marietta Barrows', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1016, 'taY9PQ1VKr', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Vanessa Lebsack', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1017, 'ok6bi8o6LG', 'Aksesoris Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Leanne Rohan', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1018, 'RqnxtZLLrm', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Miss Maiya Schamberger', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1019, 'jDKosflSpD', 'Baju Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Elliot Flatley', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1020, 'iysd55wnjY', 'Celana Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Elmore Gutmann', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1021, 'EzoY1PnKGU', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Stephon D\'Amore', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1022, 'nxQ8hCFWOt', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Russell Cummerata', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1023, 'HraEOLl7yH', 'Celana Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Dana Adams DDS', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1024, 'k0Xe5hKu42', 'Aksesoris Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Carmela Price', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1025, 'VFE3wSuEl3', 'Aksesoris Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Miguel Casper', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1026, 'OAGFzJPVhA', 'Celana Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Miss Gerry Quigley V', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1027, 'xBOaZQNKzj', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Dr. Marilie Effertz DDS', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1028, 'dV66uYVT9c', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Baron Kunde', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1029, '9iP9DzRO49', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Shanny Hirthe II', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1030, 'Mjbe0caDa4', 'Aksesoris Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Mariam Gerlach', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1031, '0FKwX9krpn', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Lela Pagac', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1032, 'bLOfTk7PAc', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Fredy Homenick', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1033, 'EJLkrCDMYr', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Benny Williamson', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1034, 'w1cXZwErZ1', 'Aksesoris Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Keely Koelpin', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1035, 'mRoK2Wrlcg', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Ivory Satterfield', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1036, 'c3hxKlXsvB', 'Aksesoris Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Parker Collier DDS', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1037, 'MCeUjQOn6f', 'Baju Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Cathrine Herman MD', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1038, 'RXk79JzyKS', 'Baju Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Gaston Bruen', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1039, 'E6MwPKkeqc', 'Aksesoris Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Dr. Joel Wisoky', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1040, 'OH3aZUBKqA', 'Baju Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Halie Kozey', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1041, 'coJGAKWelb', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Sofia Feil', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1042, '0BqxwUmlUc', 'Aksesoris Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Oswaldo Sauer', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1043, 'Vff9KN45ps', 'Aksesoris Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Alexis Sporer', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1044, 'l0M37eAlT8', 'Celana Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Aliya Waelchi', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1045, 'NsHyH2SG0H', 'Celana Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Jacinthe Kautzer MD', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1046, 'oWLbJmGmOe', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Jordane O\'Connell', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1047, 'ax9tookVBl', 'Baju Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Mr. Jordi Wunsch II', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1048, 'CrOQ6Nesyo', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Dane Lakin DVM', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1049, 'HocCCBAIrh', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Emmie Wuckert IV', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1050, 'SXDbDvHOQl', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Herman Kulas', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1051, '8MdQrEbzxG', 'Celana Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Miss Alverta Sawayn', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1052, 'ZnroxVR7S5', 'Baju Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Catherine Ward', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1053, 'FDdVHfbrgH', 'Aksesoris Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Mr. Mathias Hodkiewicz III', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1054, '0ChdBIIJf4', 'Baju Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Mrs. Fannie Marvin I', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1055, 'ub5qbRvdMn', 'Celana Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Jameson Sawayn III', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1056, 'GnkjCgy477', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Remington Blanda MD', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1057, 'qfR5UxVcYu', 'Celana Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Filiberto Haley', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1058, 'n15PnlPPIP', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Francisco Lynch', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1059, 'bx6ACwijaj', 'Baju Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Claudia Blick', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1060, 'FMMZ7h8Odz', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Lillie Friesen', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1061, 'oZuURAqXoE', 'Baju Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Pat Osinski', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1062, 'S9trGCxvdi', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Felipa Rath', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1063, 'gM4d0MxJ5K', 'Celana Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Brandt Sanford III', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1064, 'M8TBnvNTa9', 'Baju Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Garett Hagenes', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1065, '96uB0GJyEp', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'London Von', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1066, '8ZDY6sAYc1', 'Celana Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Efrain Hand', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1067, 'Xovd6EbjdA', 'Aksesoris Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Nora Kemmer', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1068, 'IZ2mSlKLSC', 'Aksesoris Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Orville Herman IV', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1069, 'kdy5c6Mvea', 'Baju Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Stacy Grady Jr.', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1070, 'mqcLuMDC6K', 'Baju Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Woodrow Zboncak', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1071, 'ArhfswFdGw', 'Aksesoris Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Brayan Funk', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1072, 'yk8FfYiiJb', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Jayne Muller Sr.', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1073, 'S6QzjIF53n', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Maia Watsica', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1074, 'KgygMhJ2GU', 'Celana Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Kale Franecki MD', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1075, 'NJknzL1nLE', 'Celana Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Summer Powlowski', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1076, 'xVh2axFbP7', 'Aksesoris Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Caroline Willms', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1077, 'vj00b29M4v', 'Celana Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Ms. Marjolaine Hermiston Jr.', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1078, 'd0u3XNsrbA', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Eldridge Kuhic', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1079, 'sL0HwWTRSx', 'Celana Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Jay Willms I', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1080, '61tiFU8FY8', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Rex Fritsch', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1081, 'w0OLv6GP72', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Piper Fisher', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1082, 'opnxbPKYbJ', 'Aksesoris Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Natalie Hill DDS', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1083, 'LXbvVLhsVg', 'Aksesoris Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Heidi Goldner', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1084, '4Qz0zeumWq', 'Celana Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Dr. Deven Zieme', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1085, 'FUrdnd8Q5h', 'Baju Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Chaya Connelly', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1086, 'X3MmNKlh7H', 'Baju Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Antonia Kris MD', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1087, 'ZxX7FBFoRC', 'Aksesoris Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Prof. Hollis Crooks', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1088, 'J0cvByHwY7', 'Celana Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Mrs. Erika Carter Jr.', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1089, '3dcpQEfu14', 'Baju Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Logan Spencer III', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1090, 'I8EvSLYFiK', 'Aksesoris Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Ben Morar Jr.', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1091, '1RK6RyfDN6', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Molly Turner', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1092, 'Qy0KRpuyqQ', 'Aksesoris Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Marian Watsica', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1093, 'HLv6Uvbfde', 'Aksesoris Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Santos Lesch', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1094, 'XsEog6Nmoc', 'Baju Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Mr. Terrance Kulas', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1095, 'MC4bx6jAXW', 'Celana Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Elouise Goodwin', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1096, 'RKTyQoHJ2E', 'Aksesoris Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Marjolaine Cassin III', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1097, 'Za007zj9tR', 'Celana Wanita', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Llewellyn Rempel Jr.', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1098, 'm9cJtik6Ut', 'Baju Anak-anak', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Jeromy O\'Kon', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1099, 'leKuhelTph', 'Celana Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Graciela Turner', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1100, 'Wm0ncvw2mN', 'Celana Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Prof. Boyd Moen', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35'),
(1101, 'z6ECinrRXe', 'Baju Pria', 'Celana', 'Pria', 100000, 0.10, 10, 0, 'Dameon Wilderman', 1, '2024-06-11 15:22:35', '2024-06-11 15:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idUser` varchar(255) NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`id`, `idUser`, `id_barang`, `qty`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'guest123', 1, 1, 24000, 1, '2024-06-08 07:41:20', '2024-06-08 07:41:24'),
(2, 'guest123', 1003, 1, 100000, 0, '2024-12-07 13:13:52', '2024-12-07 13:13:52'),
(3, 'guest123', 1002, 1, 100000, 0, '2024-12-07 13:29:06', '2024-12-07 13:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_transaksi` varchar(255) NOT NULL,
  `total_qty` varchar(255) NOT NULL,
  `total_harga` varchar(255) NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_tlp` varchar(255) NOT NULL,
  `ekspedisi` varchar(255) NOT NULL,
  `status` enum('Unpaid','Paid') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `code_transaksi`, `total_qty`, `total_harga`, `nama_customer`, `alamat`, `no_tlp`, `ekspedisi`, `status`, `created_at`, `updated_at`) VALUES
(1, '202406081', '1', '35640', 'dedi manja', 'dedi manja', '123', 'jnt', 'Unpaid', '2024-06-08 07:41:39', '2024-06-08 07:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 1,
  `is_mamber` tinyint(1) NOT NULL DEFAULT 1,
  `foto` varchar(255) NOT NULL DEFAULT 'default.png',
  `alamat` varchar(255) NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `tglLahir` date NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `role` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `is_mamber`, `foto`, `alamat`, `tlp`, `tglLahir`, `is_active`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Member787', 'zulfa', 'zulfaazka354@yahoo.com', NULL, '$2y$10$a6sHSzICWPV6wxihyv9rIOMSnxBpiRYTFQ52JXeCyNbA8wx8DShvK', 1, 0, 'default.png', 'zulfa zulfa', '123', '2024-06-08', 1, 0, NULL, '2024-06-08 07:32:10', '2024-06-08 07:32:10'),
(2, '20240611765', 'Dr. Zackary Hoppe', 'xbeahan@example.net', NULL, '$2y$10$t9M8Oxr2OmHYP/obmOfmjedZkh6pwwb2smef2ioLq2bG/F0wA/hrS', 1, 0, 'default.png', '2946 Herman Turnpike\nNorth Sheilaview, NH 90192', '1-520-858-9763', '1985-05-05', 1, 1, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40'),
(3, '20240611502', 'Prof. Aliya Schowalter', 'fritz45@example.org', NULL, '$2y$10$RmL.C4gVNR3EiUbtM9y9z.Q473t6GJAyF7pIg64ggxeULU07pYhCK', 1, 0, 'default.png', '9408 Angelina Drive Suite 296\nWest Ahmed, UT 05972', '(726) 663-7141', '1977-09-22', 1, 0, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40'),
(4, '2024061116', 'Else O\'Reilly II', 'sritchie@example.org', NULL, '$2y$10$qPzwKUNbBxvIeKaPDsHhO.jVSu5JFGULbdv/Qw8e34Gy3rnSUj0tW', 1, 0, 'default.png', '6819 Maymie Rue Suite 704\nZoetown, WA 46063', '+19406043093', '1985-02-25', 1, 0, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40'),
(5, '20240611141', 'Lambert Ortiz', 'enola03@example.net', NULL, '$2y$10$T6qWBAHSwkwAOaVywkxzk.ITzghO2x0DufF9oIPAc0AcyECO/xNBW', 1, 0, 'default.png', '685 Gilbert Falls\nIlenemouth, NY 46628-7237', '847.972.0814', '1994-06-15', 1, 0, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40'),
(6, '20240611761', 'Elaina Shields', 'daphney.cronin@example.com', NULL, '$2y$10$0BEfOjCNhPi9FHk1Lj0fxuMGZ91CH55KkaVkP46U935RHYlNoe5bS', 1, 0, 'default.png', '3009 Berry Mountains\nPort Corrine, WI 62108-8747', '518-608-2071', '1985-09-24', 1, 1, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40'),
(7, '2024061184', 'Ms. Margarita Purdy DDS', 'hoeger.breanna@example.org', NULL, '$2y$10$Ee7XOYRORMIICuN3QpZdDOL4EFL5EWDB4jJc09zqSMPvFCH20UCBS', 1, 0, 'default.png', '350 Raymundo Trail Suite 307\nKesslerside, AK 86442', '351-783-9333', '2015-10-27', 1, 0, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40'),
(8, '20240611199', 'Gerald Kemmer', 'hpollich@example.org', NULL, '$2y$10$D34lPYXVm3Vg7iJRHvNY/eiilWMjdtX05SWepJcpUi8/A8nqmqkcO', 1, 0, 'default.png', '4472 Streich Key Apt. 835\nPort Marietta, ND 92522', '1-785-917-0155', '2000-04-14', 1, 0, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40'),
(9, '20240611212', 'Reynold Ankunding', 'kschuster@example.org', NULL, '$2y$10$9Mbz1EsYQNSztek6CL9gMeYhr5zIUT5RVQvjrIncQlQqVhgxt5dLi', 1, 0, 'default.png', '52649 Streich Spring Apt. 541\nLaurenchester, FL 75063', '651.620.6979', '2006-01-30', 1, 1, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40'),
(10, '2024061129', 'Ms. Violet Brekke', 'eward@example.net', NULL, '$2y$10$cMHF4lSS7M3FTvmfHz/OROPx9tE07q8SdEok.BNXJgPjT2MMyD6hW', 1, 0, 'default.png', '438 Jacobson Crest Suite 115\nRoslynmouth, GA 40491-8766', '+1 (559) 232-4068', '1998-10-23', 1, 0, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40'),
(11, '20240611633', 'Michaela Bosco', 'dicki.allie@example.net', NULL, '$2y$10$xEO6jD4Mpa.PJrPwaH4pLedZCMdPMGGs3RVTM4XJvW5AzRsWIFsO2', 1, 0, 'default.png', '774 Virginie Estates\nDamonburgh, HI 09959-9243', '+1 (678) 529-2349', '1974-08-25', 1, 0, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40'),
(12, '20240611830', 'Test User', 'test@example.com', NULL, '$2y$10$X1AzW9YGGavWS57ua9ShbexLDhY7ddQXJ7MMqjcnnNjfTd.i34zx2', 1, 0, 'default.png', '11098 Alvina Key Suite 182\nKulaston, AL 42600', '(802) 912-5555', '1974-03-03', 1, 0, NULL, '2024-06-11 13:31:40', '2024-06-11 13:31:40'),
(13, 'Member691', 'dedi', 'dedi@gmail.com', NULL, '$2y$10$3nlCKTzJGShK1mktpTm3Me2066ABInImCO8Dt8FepXBNR87VNqaEy', 1, 1, 'default.png', 'dedi dedi', '0812222222', '2024-12-07', 1, 0, NULL, '2024-12-07 13:28:16', '2024-12-07 13:28:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksis`
--
ALTER TABLE `detail_transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_transaksis_id_barang_foreign` (`id_barang`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kritik_sarans`
--
ALTER TABLE `kritik_sarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_resis`
--
ALTER TABLE `m_resis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_carts_id_barang_foreign` (`id_barang`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
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
-- AUTO_INCREMENT for table `detail_transaksis`
--
ALTER TABLE `detail_transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kritik_sarans`
--
ALTER TABLE `kritik_sarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `m_resis`
--
ALTER TABLE `m_resis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1102;

--
-- AUTO_INCREMENT for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksis`
--
ALTER TABLE `detail_transaksis`
  ADD CONSTRAINT `detail_transaksis_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `products` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD CONSTRAINT `tbl_carts_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
