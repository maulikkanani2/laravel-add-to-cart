-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2022 at 07:00 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myboostorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_carts`
--

CREATE TABLE `add_to_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_submit` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_to_carts`
--

INSERT INTO `add_to_carts` (`id`, `product_id`, `quantity`, `price`, `order_submit`, `created_at`, `updated_at`) VALUES
(72, 6, '1', '0', 1, '2022-04-04 04:54:22', '2022-04-04 04:54:33'),
(73, 4, '1', '0', 1, '2022-04-04 04:54:26', '2022-04-04 04:54:33'),
(74, 4, '1', '0', 1, '2022-04-04 04:55:21', '2022-04-04 04:55:25'),
(75, 4, '1', '0', 1, '2022-04-04 04:55:39', '2022-04-04 04:55:41'),
(76, 4, '1', '0', 1, '2022-04-04 04:56:17', '2022-04-04 04:56:19'),
(79, 5, '1', '0', 1, '2022-04-04 04:57:32', '2022-04-04 04:57:49'),
(80, 6, '1', '0', 1, '2022-04-04 04:57:45', '2022-04-04 04:57:49'),
(88, 10, '1', '0', 1, '2022-04-04 05:08:37', '2022-04-04 05:08:38'),
(99, 10, '1', '0', 1, '2022-04-04 05:40:57', '2022-04-04 05:41:39'),
(107, 3, '1', '20', 1, '2022-04-04 05:58:09', '2022-04-04 05:58:11'),
(108, 3, '1', '20', 1, '2022-04-04 06:02:01', '2022-04-04 06:02:03'),
(109, 3, '1', '20', 1, '2022-04-04 06:14:00', '2022-04-04 06:14:17'),
(110, 5, '1', '0', 1, '2022-04-04 06:14:08', '2022-04-04 06:14:17'),
(111, 6, '1', '50', 1, '2022-04-04 06:14:12', '2022-04-04 06:14:17'),
(112, 1, '1', '10', 1, '2022-04-04 06:15:11', '2022-04-04 06:18:19'),
(113, 2, '1', '0', 1, '2022-04-04 06:15:16', '2022-04-04 06:18:19'),
(114, 4, '1', '0', 1, '2022-04-04 06:15:19', '2022-04-04 06:18:19'),
(115, 4, '1', '0', 1, '2022-04-04 06:20:25', '2022-04-04 06:20:27'),
(116, 6, '1', '50', 1, '2022-04-04 06:21:32', '2022-04-04 06:22:12'),
(117, 1, '1', '10', 1, '2022-04-04 06:21:37', '2022-04-04 06:22:12'),
(118, 8, '1', '0', 1, '2022-04-04 06:21:43', '2022-04-04 06:22:12'),
(119, 10, '1', '0', 1, '2022-04-04 06:21:47', '2022-04-04 06:22:12'),
(120, 42, '1', '0', 1, '2022-04-04 06:22:06', '2022-04-04 06:22:12'),
(123, 99, '1', '0', 1, '2022-04-04 06:22:54', '2022-04-04 06:22:58'),
(124, 3, '1', '20', 1, '2022-04-04 06:41:38', '2022-04-04 06:41:42'),
(125, 8, '1', '0', 1, '2022-04-04 06:41:56', '2022-04-04 06:42:06'),
(143, 7, '1', '30', 1, '2022-04-04 22:30:19', '2022-04-04 22:31:15'),
(144, 85, '1', '0', 1, '2022-04-04 22:30:30', '2022-04-04 22:31:15'),
(145, 6, '1', '50', 1, '2022-04-04 22:30:40', '2022-04-04 22:31:15'),
(146, 1, '1', '10', 1, '2022-04-04 22:31:41', '2022-04-04 22:31:46'),
(147, 1, '1', '10', 1, '2022-04-04 22:37:37', '2022-04-04 23:12:11'),
(148, 5, '1', '0', 1, '2022-04-04 23:12:15', '2022-04-04 23:12:24'),
(149, 10, '1', '0', 1, '2022-04-04 23:12:21', '2022-04-04 23:12:24'),
(150, 4, '1', '0', 1, '2022-04-04 23:12:30', '2022-04-04 23:12:32'),
(151, 4, '1', '0', 1, '2022-04-04 23:13:05', '2022-04-04 23:13:07'),
(152, 4, '1', '0', 1, '2022-04-04 23:13:13', '2022-04-04 23:13:15'),
(153, 4, '1', '0', 1, '2022-04-04 23:13:46', '2022-04-04 23:13:48'),
(154, 2, '1', '0', 1, '2022-04-04 23:15:15', '2022-04-04 23:15:46'),
(155, 5, '1', '0', 1, '2022-04-04 23:15:21', '2022-04-04 23:15:46'),
(156, 6, '1', '50', 1, '2022-04-04 23:15:26', '2022-04-04 23:15:46'),
(157, 99, '1', '0', 1, '2022-04-04 23:15:32', '2022-04-04 23:15:46'),
(158, 65, '1', '0', 1, '2022-04-04 23:15:41', '2022-04-04 23:15:46'),
(159, 4, '1', '0', 1, '2022-04-04 23:25:49', '2022-04-04 23:27:42'),
(160, 4, '1', '0', 1, '2022-04-04 23:27:43', '2022-04-04 23:28:10'),
(161, 4, '1', '0', 1, '2022-04-04 23:28:11', '2022-04-04 23:29:38'),
(162, 2, '1', '0', 1, '2022-04-04 23:29:36', '2022-04-04 23:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2022_04_01_084908_producs', 2),
(11, '2022_04_01_104029_add-to-cart', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catalog_visibility` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backorders_allowed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `image`, `categories`, `description`, `catalog_visibility`, `status`, `stock_quantity`, `in_stock`, `backorders_allowed`, `regular_price`, `sale_price`, `created_at`, `updated_at`) VALUES
(1, 'Everything @ 20% off, with PWP @ 80% off (if you buy more than RM6000)', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Specials', '', 'visible', 'publish', NULL, '1', '0', '10', '10', NULL, NULL),
(2, 'Mix and match 10, get 2 lowest priced products for free', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Specials', '', 'visible', 'publish', NULL, '1', '0', '0', '', NULL, NULL),
(3, 'DEESTONE-D110', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/12100083.jpg', 'Deestone', '', 'visible', 'publish', '0', '0', '0', '20', '20', NULL, NULL),
(4, 'DEESTONE-D109', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/12100083.jpg', 'Deestone', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(5, 'Buy 10 @ 20% off, up to 2 different products only', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Specials', '', 'visible', 'publish', NULL, '1', '0', '0', '', NULL, NULL),
(6, 'Apple (KG)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/V0001.jpg', '进口苹果', '', 'visible', 'publish', '0', '0', '0', '50', '50', NULL, NULL),
(7, '葡萄Grape (CRT)箱', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/V0003.jpg', '进口葡萄Grape', '', 'visible', 'publish', '0', '0', '0', '30', '30', NULL, NULL),
(8, 'Grape (KG)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/V0003.jpg', '进口葡萄Grape', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(9, '进口西瓜 Watermelon', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/12/GettyImages-200533427-001.jpg', '进口水果', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(10, '葡萄（KG)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/11/image-1.png', '进口葡萄Grape', '<p>1 Unit = 1000pcs</p>\n<p><strong>BUTTONxxxxxxxxxxxxxxxx</strong></p>\n<p>xxxxxxxxxxxxxxxxxxxxxxxxxxx</p>\n<p>this is a description</p>\n', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(11, '西瓜 Watermelon (KG)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/12/GettyImages-200533427-001.jpg', '进口西瓜', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(12, '西瓜 Watermelon', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/12/GettyImages-200533427-001.jpg', '进口西瓜', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(13, 'BTN-BRIGHT 102-B12 YELLOW', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/11/image-1.png', 'BUTTON', '<p>1 Unit = 1000pcs</p>\n<p><strong>BUTTONxxxxxxxxxxxxxxxx</strong></p>\n<p>xxxxxxxxxxxxxxxxxxxxxxxxxxx</p>\n<p>this is a description</p>\n', 'visible', 'publish', '0', '1', '0', '', '', NULL, NULL),
(14, 'THD-NONA250/402-JS10 BLUE', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/11/Capture-1.jpg', '250M SPUN POLYESTER', '<p>NONA 250M SPUN POLYESTER THREAD (402) TKT.120</p>\n<p>xxxxxxxxxxxxxxxxxxxxxxxxxxx</p>\n<p>this is a description</p>\n', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(15, 'THD-NONA250/402-JS1 BLACK', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/11/Capture.jpg', '250M SPUN POLYESTER', '<p>NONA 250M SPUN POLYESTER THREAD (402) TKT.120</p>\n<p>xxxxxxxxxxxxxxxxxxxxxxxxxxx</p>\n<p>this is a description</p>\n', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(16, 'THD-NONA1K/402-N136 BLUE', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/11/Capture-1.jpg', '1000M SPUN POLYESTER', '<p><strong>NONA 1000M SPUN POLYESTER THREAD (402) TKT.120</strong></p>\n<p>xxxxxxxxxxxxxxxxxxxxxxxxxxx</p>\n<p>this is a description</p>\n', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(17, 'THD-NONA1K/402-N126 BLACK', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/11/Capture.jpg', '1000M SPUN POLYESTER', '<p><strong>NONA 1000M SPUN POLYESTER THREAD (402) TKT.120</strong></p>\n<p>xxxxxxxxxxxxxxxxxxxxxxxxxxx</p>\n<p>this is a description</p>\n', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(18, 'THD-NONA1K/402-N103 YELLOW', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/11/img_6750_1_3.jpg', '1000M SPUN POLYESTER', '<p><strong>NONA 1000M SPUN POLYESTER THREAD (402) TKT.120</strong></p>\n<p>xxxxxxxxxxxxxxxxxxxxxxxxxxx</p>\n<p>this is a description</p>\n', 'visible', 'publish', '0', '1', '0', '', '', NULL, NULL),
(19, 'Colgate Advanced Whitening 2', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2020/10/col-124.jpg', 'Colgate Palmolive', '<p>Get whiter teeth in 1 week* with Colgate Optic White ® Sparkling White™ Whitening Toothpaste. The smart foam system gently whitens while thoroughly cleans your teeth. Now with whitening accelerators**, stains can be safely exfoliated from teeth surface for a long lasting white radiant smile*. It is also an anticavity fluoride toothpaste which is enamel safe. When used regularly, Colgate Optic White Toothpaste can also help: - Fights cavities - Protect enamel - Remove plaque*** - Freshen breath *When used as directed, for extrinsic stains only, vs non-whitening toothpaste. With continuous use. Results may vary. ** with high cleaning silica and core-shell silica<a href=\"https://www.google.com\"> ***when brushing Shelf life: 3 years from manufacturing date Brushing Tips: Brush thoroughly. Do not swallow. Spit out and rinse after use. Children below 6 years old: Use a pea-sized amount under supervised brushing to m</a>inimize swallowing. Brush at least twice a day or as directed by a dentist or doctor. Control sugar intake. Get a dental check-up at least once a year. Colgate - More than 200 years of expertise For over 200 years, Colgate has worked to make the world a better place by introducing products that help people lead healthier, happier lives. Colgate builds upon a rich heritage of innovation to develop products such the first oral rinse to prevent tartar buildup, to improving the effectiveness of whitening toothpaste with its Optic White brand, for hundreds of million of people around the globe.\"</p>\n', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(20, 'AGED-JAVA-CHERRY', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Furniture Material', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(21, 'HONEY-CHERRY', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Furniture Material', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(22, 'VINTAGE-WHITE', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Furniture Material', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(23, 'T-PORT', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Furniture Material', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(24, 'T-LAGOON', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Furniture Material', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(25, 'T-OYSTER', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Furniture Material', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(26, 'T-SNOW', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Furniture Material', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(27, 'F-FOG', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/F-FOG.png', 'Furniture Material', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(28, 'F-STRAW', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/F-STRAW.png', 'Furniture Material', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(29, 'Hollow', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/03/image-4.png', 'Material', '', 'visible', 'publish', '0', '1', '0', '', '', NULL, NULL),
(30, 'Grille', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Material', '', 'visible', 'publish', '0', '1', '0', '', '', NULL, NULL),
(31, 'FTW Hoodie', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Must Sell', '', 'visible', 'publish', '0', '1', '0', '', '', NULL, NULL),
(32, 'Tyre Deestone Buy 3+2 (Different SKU)', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Promotions', '', 'visible', 'publish', '0', '1', '1', '0', '', NULL, NULL),
(33, 'Colour Pencil Buy 3+1 (Same SKU)', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', 'Promotions', '', 'visible', 'publish', '0', '1', '1', '0', '', NULL, NULL),
(34, 'Frozen Chicken - Drumstick', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/c12346.jpg', 'Chicken', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(35, 'Frozen Chicken - Whole', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/c12345.jpg', 'Chicken', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(36, 'LPG Gas Cylinder 48KG', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/ACS00004.png', 'LPG', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(37, 'LPG Gas Cylinder 15KG', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/ACS00003.jpg', 'LPG', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(38, 'LPG Gas Cylinder 7KG', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/ACS00002.jpg', 'LPG', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(39, 'LPG Gas Cylinder 4KG', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/ACS00001.jpg', 'LPG', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(40, '20% Off Mix and Match (Composite) (VIP&VVIP)', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2020/03/image.png', 'Promotions', '', 'visible', 'publish', '0', '1', '1', '0', '', NULL, NULL),
(41, 'Custom Dining Oval Bar Stool | Componentized', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2020/08/2020-08-05_18h18_01.png', 'Furniture', '', 'visible', 'publish', '0', '1', '1', '0', '', NULL, NULL),
(42, 'Custom Dining Oval Counter Stool | Stepped', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2020/08/2020-08-05_18h15_32.png', 'Furniture', '', 'visible', 'publish', '0', '1', '1', '0', '', NULL, NULL),
(43, 'Custom Dining Oval Arm Chair | Progressive', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2020/08/2020-08-05_18h12_57.png', 'Furniture', '', 'visible', 'publish', '0', '1', '1', '0', '', NULL, NULL),
(44, 'Custom Dining Oval Chair | Stacked', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2020/08/chair-3.png', 'Furniture', '', 'visible', 'publish', '0', '1', '1', '0', '', NULL, NULL),
(45, 'Test', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', '', '', 'visible', 'publish', NULL, '1', '0', '50', '', NULL, NULL),
(46, 'Shanghai Disneyland 1Adult+1Kid', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/R0002.jpg', 'Rewards', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(47, 'Shanghai 4 Days 3 Nights Trip', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/R0001.jpg', 'Rewards', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(48, 'Buy 5 Free 2 (Bundle) (Parent Pricing)', 'bundle', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2019/08/401175-3.png', 'Promotions', '', 'visible', 'publish', NULL, '1', '0', '1344', '960', NULL, NULL),
(49, 'Colgate® Mouthwash Plax Bamboo Charcoal', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2020/10/col-125.jpg', 'Colgate Palmolive', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(50, 'Colgate Advanced Whitening', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2020/10/col-124.jpg', 'Colgate Palmolive', '<p>Get whiter teeth in 1 week* with Colgate Optic White ® Sparkling White™ Whitening Toothpaste. The smart foam system gently whitens while thoroughly cleans your teeth. Now with whitening accelerators**, stains can be safely exfoliated from teeth surface for a long lasting white radiant smile*. It is also an anticavity fluoride toothpaste which is enamel safe. When used regularly, Colgate Optic White Toothpaste can also help: - Fights cavities - Protect enamel - Remove plaque*** - Freshen breath *When used as directed, for extrinsic stains only, vs non-whitening toothpaste. With continuous use. Results may vary. ** with high cleaning silica and core-shell silica<a href=\"https://www.google.com\"> ***when brushing Shelf life: 3 years from manufacturing date Brushing Tips: Brush thoroughly. Do not swallow. Spit out and rinse after use. Children below 6 years old: Use a pea-sized amount under supervised brushing to m</a>inimize swallowing. Brush at least twice a day or as directed by a dentist or doctor. Control sugar intake. Get a dental check-up at least once a year. Colgate - More than 200 years of expertise For over 200 years, Colgate has worked to make the world a better place by introducing products that help people lead healthier, happier lives. Colgate builds upon a rich heritage of innovation to develop products such the first oral rinse to prevent tartar buildup, to improving the effectiveness of whitening toothpaste with its Optic White brand, for hundreds of million of people around the globe.\"</p>\n', 'visible', 'publish', '0', '1', '0', '', '', NULL, NULL),
(51, 'Colgate® Cushion Clean Toothbrush', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2020/10/col-123.jpg', 'Colgate Palmolive', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(52, 'SAMSUNG S10', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/SAMSUNGS10.jpg', 'Nanotec', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(53, 'DEESTONE-D108', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/12100083.jpg', 'Deestone', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(54, 'DEESTONE-D207', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/12100187.jpg', 'Deestone', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(55, 'Buy 4 Free 2', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2020/03/image.png', 'Promotions', '<p>Mix and Match (Composite Buy 4 Free 2)</p>\n', 'visible', 'publish', '0', '1', '1', '0', '', NULL, NULL),
(56, 'Buy 3 Free 1 (Bundle) (Children Pricing)', 'bundle', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2019/08/401175-3.png', 'Promotions', '', 'visible', 'publish', NULL, '1', '0', '0', '', NULL, NULL),
(57, 'Ice Matcha Latte - Coffee Pods 咖啡', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/POD002.png', 'Coffee Pods', '', 'visible', 'publish', '0', '1', '0', '', '', NULL, NULL),
(58, 'Cappuccino - Coffee Pods 咖啡', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/POD001.png', 'Coffee Pods', '', 'visible', 'publish', '-3', '1', '0', '', '', NULL, NULL),
(59, 'Orange', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/V0002.jpg', 'Fresh &amp; Healthy', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(60, 'Grape', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/V0003.jpg', 'Fresh &amp; Healthy', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(61, 'Apple', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/V0001.jpg', 'Fresh &amp; Healthy', '', 'visible', 'publish', '-4', '1', '0', '', '', NULL, NULL),
(62, 'Polychromos Colour Pencil, 111th Anniversary, Tin of 12', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/211001.jpg', 'Must Sell', '', 'visible', 'publish', '0', '1', '0', '', '', NULL, NULL),
(63, 'Castell 9000 Graphite Pencil, Art Set, Tin of 12', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/119065.jpg', 'Must Sell', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(64, '24 Tri Colour Colour Pencils', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/115834.png', 'Must Sell', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(65, 'Graphite Pencil 1323-2B', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/132306.png', 'Must Sell', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(66, 'Buy 15 Units Of Car Door + 15 Units Of Head Lamp Get 5% Off', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2019/10/5-disocunt-1.jpg', 'Promotion', '', 'visible', 'publish', NULL, '1', '0', '0', '', NULL, NULL),
(67, 'Buy 3+2 Free 1', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2019/10/special-offer.jpeg', 'Promotion', '', 'visible', 'publish', NULL, '1', '0', '0', '', NULL, NULL),
(68, 'Buy 2+2 Free 1', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2019/10/special-offer.jpeg', 'Promotion', '', 'visible', 'publish', NULL, '1', '0', '0', '', NULL, NULL),
(69, 'Wiper Blade', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/AA003.jpg', 'Automotive Accessories', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(70, 'Door Mirror', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/AA002.png', 'Automotive Accessories', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(71, 'Brake Pad', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/AA001.jpg', 'Automotive Accessories', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(72, 'Tail Lamp', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/PAP002.jpg', 'Plastic Automotive Parts', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(73, 'Head Lamp', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/PAP001.jpg', 'Plastic Automotive Parts', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(74, 'Car Fender', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/MAP003.jpg', 'Metal Automotive Parts', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(75, 'Car Hood', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/MAP002.png', 'Metal Automotive Parts', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(76, 'Car Door', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2019/10/MAP001.jpg', 'Metal Automotive Parts', '', 'visible', 'publish', '0', '1', '0', '', '', NULL, NULL),
(77, 'Buy 3 Free 1', 'composite', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2019/08/DL0001.png', 'Dutch Lady', '', 'visible', 'publish', NULL, '1', '0', '0', '', NULL, NULL),
(78, 'Generic Product', 'simple', 'https://mangomart-autocount.myboostorder.com/wp-content/plugins/woocommerce/assets/images/placeholder.png', '', '', 'hidden', 'publish', '0', '0', '0', '', '', NULL, NULL),
(79, 'Heineken 0.0 250ml PTS (4x6)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/401175.png', 'Heineken', '', 'visible', 'publish', '-177', '1', '0', '', '', NULL, NULL),
(80, 'Heineken 325ml PTS-GI (1x24)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/400889.png', 'Heineken', '', 'visible', 'publish', '-48', '0', '0', '', '', NULL, NULL),
(81, 'Heineken 320ml CANS-GI (1x24)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/400887.jpg', 'Promotions', '', 'visible', 'publish', '-71', '1', '0', '', '', NULL, NULL),
(82, 'Tiger 325ml-D PTS (1x24)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/400769.png', 'Tiger', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(83, 'Tiger 320ml-D Can (1x24)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/400763.jpg', 'Promotions', '', 'visible', 'publish', '-11', '0', '0', '', '', NULL, NULL),
(84, 'NESCAFE Classic Refill (300g)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/NS0003.png', 'Nescafe', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(85, 'NESCAFE Latte Caramel (25g x 20s)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/NS0002.jpg', 'Nescafe', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(86, 'NESCAFE GOLD Decaf Jar (100g)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/NS0001.jpg', 'Nescafe', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(87, 'Dutch Lady Pure Farm Chocolate Milk 6 x 200ml', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/DL0002.jpg', 'Dutch Lady', '', 'visible', 'publish', '-3', '0', '0', '', '', NULL, NULL),
(88, 'Dutch Lady Pure Farm Full Cream UHT Milk 1 Carton (12 x 1L)', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/DL0001.jpg', 'Dutch Lady', '', 'visible', 'publish', '-9', '0', '0', '', '', NULL, NULL),
(89, 'Ambi Pur Car Mini Vent Clips Lavender Comfort 2ml', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/AP0002.png', 'Ambi Pur', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(90, 'Ambi Pur Car Air Freshener Premium Clip Starter Fresh & Light 7ml', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/AP0001.png', 'Ambi Pur', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(91, 'Car Life Screen Wash 500ml', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/CL0002.png', 'Care Life', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(92, 'Car Life Wash & Wax 1 Litre', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/CL0001.png', 'Care Life', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(93, 'Samsung A70 Case', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/SSA70CASE.jpg', 'Accessories', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(94, 'iPhone XS Case', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/IPXSCASE.jpg', 'Accessories', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(95, 'Lightning Cable', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/LIGHTNINGCABLE.jpg', 'Accessories', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(96, 'Type C Cable', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/TYPECCABLE.jpg', 'Accessories', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(97, 'iPhone XR', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/IPHONEXR.png', 'Nanotec', '<p>Display</p>\n<ul>\n<li>Liquid Retina HD display</li>\n<li>6.1-inch (diagonal) all-screen LCD Multi‑Touch display with IPS technology</li>\n<li>1792x828-pixel resolution at 326 ppi</li>\n<li>1400:1 contrast ratio (typical)</li>\n<li>True Tone display</li>\n<li>Wide colour display (P3)</li>\n<li>Haptic Touch</li>\n<li>625 nits max brightness (typical)</li>\n<li>Fingerprint-resistant oleophobic coating</li>\n<li>Support for display of multiple languages and characters simultaneously</li>\n</ul>\n', 'visible', 'publish', '-1', '1', '0', '', '', NULL, NULL),
(98, 'iPhone XS', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/IPHONEXS.png', 'Nanotec', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL),
(99, 'SAMSUNG A70', 'variable', 'https://mangomart-autocount.myboostorder.com/wp-content/uploads/sites/446/2021/05/SAMSUNGA70.jpg', 'Nanotec', '', 'visible', 'publish', '0', '0', '0', '', '', NULL, NULL);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'Test@gmail.com', NULL, '$2y$10$9U0r4zpkAt6CgZDs.V2bZezj7dUnn1w6hOH.4Q5amrvyU0kiBQrr6', NULL, '2022-04-01 05:27:13', '2022-04-01 05:27:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_to_carts`
--
ALTER TABLE `add_to_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `add_to_carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_to_carts`
--
ALTER TABLE `add_to_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_to_carts`
--
ALTER TABLE `add_to_carts`
  ADD CONSTRAINT `add_to_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
