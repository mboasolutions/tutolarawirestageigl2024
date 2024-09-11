-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 26 juil. 2024 à 22:29
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laralivedb`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Kenna Huels DDS', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(2, 'Isabella Watsica', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(3, 'Mr. Edwin Bradtke', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(4, 'Floy Fisher', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(5, 'Augustine Bosco', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(6, 'Clint Rath', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(7, 'Sonia Wisoky', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(8, 'Ryan Haley', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(9, 'Shany Lakin', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(10, 'Prof. Tad Boyer PhD', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(11, 'Spencer Cummerata IV', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(12, 'Icie Hand', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(13, 'Prof. Doris Rempel', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(14, 'Adrain Paucek', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(15, 'Dr. Cameron Russel', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(16, 'Felix Jenkins', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(17, 'Claudia Mraz', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(18, 'Emmitt Rutherford', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(19, 'Natalia Cremin', '2024-07-25 14:17:15', '2024-07-25 14:17:15'),
(20, 'Reilly Boyle', '2024-07-25 14:17:15', '2024-07-25 14:17:15');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Miss Lelia Kunde', '81116 Chyna Crest\nEast Chloefort, MI 25935', '+1 (201) 393-6340', 'epadberg@predovic.com', '2024-07-25 14:17:19', '2024-07-25 14:17:19'),
(2, 'Mr. Zack Dickens', '8231 McGlynn Lock Apt. 612\nFramiborough, ME 80943-0992', '(531) 709-3402', 'rstracke@oberbrunner.net', '2024-07-25 14:17:19', '2024-07-25 14:17:19'),
(3, 'Cleveland Swift DVM', '37955 Martin Cliff Suite 600\nPort Ahmed, SD 23965', '1-520-668-4233', 'mclaughlin.lyla@yahoo.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(4, 'Jaqueline Schoen', '61086 Sauer Brooks Apt. 015\nPort Peggiehaven, IA 01312', '(406) 529-2796', 'darrel.ohara@yahoo.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(5, 'Francisca Feil', '44867 Madelynn Drives Apt. 789\nKaelafort, FL 72776-8152', '786-347-1008', 'renner.lavon@gmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(6, 'Annalise Brekke', '204 Desmond Manor Apt. 227\nGuadalupefurt, GA 43972-0560', '541-306-3742', 'joany86@yahoo.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(7, 'Kylee Schowalter', '369 Kemmer Dale\nOndrickaville, KY 83143', '+1 (936) 495-7549', 'violet56@gmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(8, 'Dr. Davin Kling', '9170 Littel Field Suite 011\nEast Altaberg, MI 58550', '+1-681-260-7059', 'jakubowski.anabel@hotmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(9, 'Greyson Hoppe', '2281 Eliza View\nEast Katelynfurt, AR 16897-0252', '(614) 238-2364', 'uschinner@yahoo.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(10, 'Maryse Cronin', '444 Briana Throughway Apt. 792\nWest Xzavier, FL 71170-9319', '+1.772.755.0418', 'kdaugherty@veum.biz', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(11, 'Carlee McGlynn', '316 Katharina Forks\nWelchport, MI 22543', '+1-219-301-2055', 'hgreen@orn.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(12, 'Miss Nayeli Sipes DDS', '995 Delta Inlet Suite 129\nKoelpinville, NJ 66294-8522', '509-787-0982', 'alyce42@ohara.org', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(13, 'Mrs. Lilliana Ernser', '826 Germaine Route Suite 496\nFlorencioside, FL 71216', '305-222-6814', 'catharine21@cassin.info', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(14, 'Lorna Jacobi', '3187 Langworth Mission\nSipesborough, AL 09999', '+1-978-645-7737', 'abshire.pierce@waelchi.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(15, 'Dr. Linwood Beer II', '82238 Schuster Knoll\nNew Camylle, IA 07382', '463-626-8372', 'paxton.stroman@fritsch.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(16, 'Okey Sauer', '68221 Marilyne Plaza Apt. 016\nNew Doloresland, SC 46351', '1-620-959-0263', 'edicki@batz.org', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(17, 'Prof. Jordan McKenzie IV', '12064 Kane Lakes\nDuncanland, FL 30300-2680', '+1-478-986-5980', 'holden.hammes@hotmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(18, 'Sierra Reichel', '9038 Haag Forest Suite 017\nSouth Kathrynstad, OK 79572-3451', '914.798.8662', 'jpacocha@stark.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(19, 'Delia Morissette', '62189 Odessa Parkway Apt. 119\nPort Jaron, AR 37198', '1-786-502-1685', 'kjacobson@gmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(20, 'Dr. Retta Schowalter', '45628 Quincy Stream Apt. 881\nNormatown, SD 19413', '681.729.8227', 'agerhold@yahoo.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(21, 'Nadia Herman', '5824 Harry Union Suite 485\nNew Jaylen, WV 16307-6286', '662.394.4334', 'jada.monahan@hotmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(22, 'Kameron Stroman', '409 Amaya Plains Suite 807\nLake Erika, IL 51483-3183', '+1-571-831-3146', 'idare@rolfson.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(23, 'Sigurd Green', '703 Cummerata Stravenue\nNorashire, TX 59760', '351.453.7732', 'mrunte@gmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(24, 'Karolann Heller', '105 Ritchie Prairie Suite 961\nBarrowsbury, MI 27309', '+1.801.544.8981', 'jjakubowski@hoeger.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(25, 'Queen Hessel', '21967 Linnea Valleys Apt. 408\nPeterport, DE 17653', '757-490-9265', 'white.colt@yundt.org', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(26, 'Miss Rowena Crona V', '87699 Sauer Path\nConorland, IN 46157-7757', '(479) 530-7617', 'schultz.luis@hotmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(27, 'Martina Feeney MD', '25483 Kutch Trafficway\nWehnerfort, WV 56575', '540.633.3970', 'bernard.moen@yahoo.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(28, 'Mr. Toney Little', '70244 O\'Connell Points\nJoelhaven, UT 85387', '410.590.3002', 'eleonore.goyette@gmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(29, 'Claud Spencer', '744 Macy Plains\nJakaylaborough, SD 84774', '+1 (985) 828-3635', 'annabel.medhurst@yahoo.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(30, 'Leda Stokes', '2917 Erdman Bypass\nNorth Lillianfort, AZ 33550', '+1-248-690-5666', 'plockman@gmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(31, 'Dr. Regan Reinger', '6565 Alan Highway Apt. 274\nWest Okeyhaven, UT 14635', '507.412.9708', 'jan77@wolf.org', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(32, 'Janiya Hamill', '216 Nitzsche Station Apt. 135\nLake Danykafort, DC 17362', '567-356-8133', 'dfeest@yahoo.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(33, 'Lilliana Rice', '94243 Hahn Meadows\nHirtheburgh, CO 55533', '(283) 249-6717', 'ymorissette@hotmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(34, 'Kristy Haley DDS', '4549 Schmeler Inlet\nNorth Jasper, FL 86259', '+1.850.413.9043', 'ward70@gutmann.biz', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(35, 'Coby Mraz', '48647 Ziemann Canyon Suite 086\nEast Duncanton, NE 78410-2583', '662-372-7158', 'robbie.yost@bergstrom.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(36, 'Trevion Larkin', '96596 Klein Islands Suite 728\nNew Lonnyport, NE 61074', '+1-445-555-6632', 'lindgren.clare@hotmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(37, 'Fabiola Johnston', '4885 Lemke Station\nNew Frankieberg, IA 26278', '+1-785-974-9174', 'davis.jaime@turcotte.info', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(38, 'Sebastian Monahan', '6274 Erik View Apt. 844\nFerryberg, NV 43761', '(628) 427-6676', 'amari40@hotmail.com', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(39, 'Casimir Wilderman', '900 Kylee Skyway\nNew Ericaburgh, MN 08468-9895', '(810) 748-4269', 'duane83@luettgen.info', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(40, 'Lucius Legros', '1228 Brenda Loaf\nNorth Phoebe, MN 75975', '+1-417-488-5303', 'elliott90@brown.org', '2024-07-25 14:17:20', '2024-07-25 14:17:20'),
(41, 'Kenyatta Nikolaus IV', '879 Kenton Union Suite 455\nD\'Amoreside, RI 98904-2878', '+1-570-625-3731', 'constance.koch@davis.biz', '2024-07-25 14:17:21', '2024-07-25 14:17:21'),
(42, 'Karelle Walker', '6855 Runte Station Apt. 631\nKossville, NY 42189', '+1-406-976-4210', 'cole.tess@yahoo.com', '2024-07-25 14:17:21', '2024-07-25 14:17:21'),
(43, 'Prof. Kaycee Wintheiser', '783 Domenic Lakes Apt. 217\nWisokytown, VT 28779', '938.443.6712', 'xoberbrunner@hotmail.com', '2024-07-25 14:17:21', '2024-07-25 14:17:21'),
(44, 'Everardo Nikolaus', '43074 Rippin Ports\nSouth Serenaberg, AR 50048', '+13649268992', 'xmetz@smitham.info', '2024-07-25 14:17:21', '2024-07-25 14:17:21'),
(45, 'Prof. Moises Wintheiser', '927 Brando Inlet\nPort Cody, MO 47266', '+1-364-869-9664', 'lang.osbaldo@gmail.com', '2024-07-25 14:17:21', '2024-07-25 14:17:21'),
(46, 'Tessie Hammes', '77210 Kerluke Falls Apt. 211\nFriesenville, SD 55417', '(847) 293-9469', 'frami.shaina@trantow.com', '2024-07-25 14:17:21', '2024-07-25 14:17:21'),
(47, 'Misael Ullrich', '511 Muriel Rest\nTheashire, MT 24946-8662', '754.222.6796', 'gussie.schuster@gmail.com', '2024-07-25 14:17:21', '2024-07-25 14:17:21'),
(48, 'Julie McDermott', '7513 Abigayle Ports\nJerdeville, OH 06007-8856', '1-540-452-0979', 'ngaylord@gmail.com', '2024-07-25 14:17:21', '2024-07-25 14:17:21'),
(49, 'Janessa Nienow', '563 Albina Lodge\nNew Kobyborough, NC 81159-1379', '1-563-340-2386', 'khowell@hackett.info', '2024-07-25 14:17:21', '2024-07-25 14:17:21'),
(50, 'Bessie Renner', '701 Wisoky Wall\nPriscillachester, MN 60451', '305.855.3177', 'ibrakus@gmail.com', '2024-07-25 14:17:21', '2024-07-25 14:17:21');

-- --------------------------------------------------------

--
-- Structure de la table `commands`
--

CREATE TABLE `commands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commandline_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commands`
--

INSERT INTO `commands` (`id`, `commandline_id`, `product_name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'blanditiis', 5, 101, '2024-07-25 14:18:31', '2024-07-25 14:18:31'),
(2, 1, 'nihil', 4, 996, '2024-07-25 14:18:31', '2024-07-25 14:18:31'),
(3, 1, 'sit', 3, 138, '2024-07-25 14:18:31', '2024-07-25 14:18:31'),
(4, 2, 'molestiae', 3, 348, '2024-07-26 11:27:23', '2024-07-26 11:27:23'),
(5, 2, 'recusandae', 2, 497, '2024-07-26 11:27:23', '2024-07-26 11:27:23'),
(6, 2, 'laudantium', 1, 94, '2024-07-26 11:27:24', '2024-07-26 11:27:24'),
(7, 2, 'odit', 5, 866, '2024-07-26 11:27:24', '2024-07-26 11:27:24'),
(8, 2, 'voluptatibus', 4, 200, '2024-07-26 11:27:24', '2024-07-26 11:27:24');

-- --------------------------------------------------------

--
-- Structure de la table `command_lines`
--

CREATE TABLE `command_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `total_command` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `command_lines`
--

INSERT INTO `command_lines` (`id`, `client_id`, `total_command`, `created_at`, `updated_at`) VALUES
(1, 39, 4903, '2024-07-25 14:18:31', '2024-07-25 14:18:31'),
(2, 6, 5823, '2024-07-26 11:27:23', '2024-07-26 11:27:23');

-- --------------------------------------------------------

--
-- Structure de la table `command_product`
--

CREATE TABLE `command_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `command_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `command_product`
--

INSERT INTO `command_product` (`id`, `command_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 46, '2024-07-25 14:18:31', '2024-07-25 14:18:31'),
(2, 1, 55, '2024-07-25 14:18:31', '2024-07-25 14:18:31'),
(3, 1, 92, '2024-07-25 14:18:32', '2024-07-25 14:18:32'),
(4, 2, 89, '2024-07-26 11:27:24', '2024-07-26 11:27:24'),
(5, 2, 88, '2024-07-26 11:27:24', '2024-07-26 11:27:24'),
(6, 2, 29, '2024-07-26 11:27:24', '2024-07-26 11:27:24'),
(7, 2, 25, '2024-07-26 11:27:24', '2024-07-26 11:27:24'),
(8, 2, 94, '2024-07-26 11:27:24', '2024-07-26 11:27:24');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_05_092016_create_categories_table', 1),
(5, '2024_07_09_122719_create_products_table', 1),
(6, '2024_07_11_092415_create_clients_table', 1),
(7, '2024_07_11_093342_create_command_lines_table', 1),
(8, '2024_07_11_094746_create_commands_table', 1),
(9, '2024_07_11_101232_create_command_products_table', 1),
(10, '2024_07_22_162154_add-price-column-to-product', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `description`, `price`, `created_at`, `updated_at`, `qte`) VALUES
(1, 19, 'laborum', 'Atque sint aut reprehenderit culpa ipsa rerum. Ex deleniti sed ipsa repellendus. Saepe ut provident aut cumque aut qui assumenda et. Accusamus ut amet saepe inventore et voluptatibus.', 396, '2024-07-25 14:17:15', '2024-07-25 14:17:15', 26),
(2, 7, 'id', 'Laudantium dolor veniam repudiandae dolores repellendus molestias. Repellat sunt sequi optio impedit eius odit quisquam magnam. Tenetur accusantium assumenda sit et aut velit quae.', 127, '2024-07-25 14:17:15', '2024-07-25 14:17:15', 31),
(3, 9, 'saepe', 'Sed ut quia dolorem veritatis quia temporibus rerum. Consequatur ut corporis exercitationem non aut voluptas quae. Illum officia distinctio eligendi sint facere itaque enim.', 457, '2024-07-25 14:17:15', '2024-07-25 14:17:15', 47),
(4, 17, 'et', 'Adipisci impedit ipsa temporibus veniam illum et quos. Dolor et inventore et nobis quidem. Maiores et laboriosam tenetur.', 904, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 46),
(5, 13, 'ex', 'Qui velit aspernatur ex praesentium. Voluptates dolores quo repellendus quis sunt impedit. Explicabo qui dolores magni consequuntur. Impedit excepturi consequatur nulla eum debitis minima molestiae. Fugiat et omnis aut aut temporibus earum molestiae esse.', 414, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 57),
(6, 1, 'ut', 'Sunt vero magni ut consequatur maiores reiciendis molestias. Omnis veritatis ut aut doloremque itaque consequatur. Quidem voluptates eligendi sequi et quibusdam.', 433, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 22),
(7, 10, 'assumenda', 'Eum aut magnam pariatur voluptatem. Aspernatur dolorem modi molestiae eos earum consequatur. Repellat officia earum sint voluptates quia.', 46, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 33),
(8, 5, 'tenetur', 'Dolores dolorum impedit labore delectus ex nulla. Nobis esse commodi accusantium necessitatibus veritatis. Ratione molestias nostrum autem veritatis quia tempore velit dolorum. Consectetur ullam voluptas ex nemo.', 460, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 46),
(9, 10, 'omnis', 'Minus dolorem consequuntur at quisquam accusantium aut. Rerum rerum dolor enim vel. Ipsum iusto et sapiente officia nihil commodi aut.', 590, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 78),
(10, 4, 'dicta', 'Neque eum rerum sit deserunt vero esse. Nostrum sed voluptatibus aspernatur neque expedita velit. Recusandae dolor aspernatur voluptas ut. Esse quia et molestiae eos quod minus mollitia.', 655, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 0),
(11, 13, 'enim', 'Mollitia temporibus rem nulla. Et voluptatum suscipit eos laborum. Soluta ut nihil recusandae.', 866, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 96),
(12, 4, 'illo', 'Ut ad officiis odit quia. Et quia esse quas excepturi aut ipsa ratione. Atque hic nulla et iste ipsam molestiae. Est qui sed doloremque eaque odit natus. Aut mollitia sapiente doloribus delectus.', 373, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 31),
(13, 1, 'iusto', 'Ratione soluta cupiditate rerum vel. Porro nemo placeat animi et vel facere voluptatibus. Eos accusantium veniam aliquam est. Accusantium cumque atque et nihil ratione rerum.', 672, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 15),
(14, 1, 'quod', 'Quo non est aut aut. Laudantium qui in provident assumenda.', 202, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 49),
(15, 4, 'nulla', 'Asperiores voluptatem nisi voluptates explicabo maiores. Dolores impedit et voluptas ut vel sint consequatur.', 126, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 1),
(16, 19, 'dignissimos', 'Occaecati et est iste voluptas id similique officiis. Corporis temporibus aliquam possimus molestiae veniam repellat. Unde ut ea error quod ut adipisci.', 782, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 91),
(17, 3, 'iste', 'Quis rerum id enim in eaque commodi eius. Ea ex et quis aut rerum est nihil voluptatem. Quia possimus et excepturi sed eligendi commodi.', 23, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 44),
(18, 15, 'dolor', 'Sit voluptates ea ut et tenetur et maxime. Atque culpa quae laborum occaecati. Incidunt consequatur commodi et consequatur quisquam. Suscipit eos consequuntur possimus aut. Nihil recusandae sint sit officia est voluptatibus ut.', 57, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 28),
(19, 11, 'vero', 'Ipsa nihil possimus ipsam iure. Autem aut id eligendi aut neque consequatur fugiat. Officia laudantium iste suscipit laborum et deserunt cum. Provident molestiae ex aliquid amet incidunt ut dolor. Et porro saepe dolor facere asperiores minus laudantium.', 658, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 23),
(20, 6, 'voluptas', 'Ratione corrupti nihil est ut atque eveniet. Culpa magnam nam non est totam. Hic autem aut ipsam eligendi autem.', 199, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 75),
(21, 7, 'quasi', 'Dolorem illum voluptas earum accusamus nesciunt. Doloribus autem omnis illo et. Sit quod minima architecto quaerat odio non.', 615, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 82),
(22, 2, 'sequi', 'Ducimus iure distinctio sit est. Numquam aut quam minus temporibus quos. Facilis qui porro animi velit accusantium in. Minima omnis voluptas consectetur quae occaecati ex voluptatem. Dicta debitis reprehenderit earum quaerat voluptatem eveniet.', 818, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 94),
(23, 13, 'culpa', 'Aperiam voluptatem corrupti occaecati laboriosam tenetur culpa. At veritatis voluptatem similique dolores mollitia. Assumenda est commodi id neque autem totam aspernatur. Repellendus et modi tempora quia deserunt voluptate aperiam. Nemo voluptatem rerum vel aliquid est.', 44, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 94),
(24, 13, 'soluta', 'Recusandae enim tempora quia est enim omnis molestias. Ipsam veniam aspernatur quo necessitatibus. Eos aliquam rerum consequatur asperiores rem.', 837, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 33),
(25, 14, 'molestiae', 'Et sit voluptates est. Laudantium culpa quaerat esse in. Non a et voluptatem. Sequi autem doloribus soluta labore ut eum a.', 348, '2024-07-25 14:17:16', '2024-07-26 11:27:23', 83),
(26, 6, 'delectus', 'Maxime beatae sapiente et aut quia. In tenetur natus magni corporis earum.', 252, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 77),
(27, 4, 'consequuntur', 'Quia aut ut nam quisquam non maiores. Doloribus laboriosam ducimus nostrum suscipit voluptatum occaecati. Quod beatae nam commodi est qui dolorem rerum cupiditate.', 878, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 95),
(28, 4, 'aliquid', 'Aut ut optio est sit sed laudantium sit. Labore veritatis voluptates iste qui molestiae quo. Iste qui iure laboriosam natus omnis.', 750, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 49),
(29, 14, 'recusandae', 'Ut ut eos totam facilis. Est iure excepturi eius dolor neque quis aut. Nihil excepturi odit hic suscipit omnis. Et saepe quo fugiat odio commodi.', 497, '2024-07-25 14:17:16', '2024-07-26 11:27:24', 51),
(30, 9, 'repellendus', 'Animi nemo quis sit aperiam. Nam et explicabo quis voluptas et. Eum sequi aperiam aut ut. Sit incidunt nihil amet error. Temporibus provident quaerat esse iste.', 663, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 64),
(31, 11, 'deserunt', 'Dolorum dignissimos sit in. Asperiores voluptatem non ut officia placeat. Iure modi odit autem modi sunt voluptatem ipsa.', 100, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 14),
(32, 12, 'officia', 'Error corrupti nihil dignissimos. Non expedita facere voluptatem cum libero adipisci. Dolores explicabo doloremque excepturi omnis quam.', 11, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 93),
(33, 17, 'voluptatem', 'Inventore inventore omnis qui mollitia et. Et fugit sit quia rerum. Sunt sed facilis expedita facilis.', 967, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 43),
(34, 15, 'incidunt', 'Sed maiores natus voluptas placeat ipsam consequatur amet. Voluptatem aliquam fuga consectetur tenetur excepturi. Delectus nihil quis ipsa rem voluptatem voluptate aut explicabo. Fuga aut eum ratione libero sit nemo sed.', 826, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 88),
(35, 14, 'aut', 'Aut quis doloribus officiis exercitationem quia qui est laudantium. Illum quia incidunt est placeat provident suscipit nostrum qui. In tempore velit in aut cupiditate laboriosam odio.', 837, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 3),
(36, 7, 'neque', 'Repudiandae dicta id iure quo sint natus vitae enim. Blanditiis voluptates est aspernatur ut sint voluptatem repudiandae. Incidunt voluptatem quia possimus laboriosam.', 931, '2024-07-25 14:17:16', '2024-07-25 14:17:16', 3),
(37, 13, 'libero', 'Sint suscipit dolores laboriosam quo aut enim possimus. Et totam ut praesentium quis. In non delectus assumenda debitis excepturi in.', 925, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 51),
(38, 20, 'modi', 'Voluptatum nesciunt rem odio hic necessitatibus voluptatem commodi. Enim delectus praesentium alias consequatur at cupiditate. Quaerat dignissimos sed ut minus inventore laudantium ea.', 473, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 51),
(39, 6, 'dolorem', 'Voluptatem debitis voluptatem nobis. Quibusdam quisquam omnis amet aut excepturi quas. Autem ut harum omnis tempore esse dolor. Dolorem voluptate totam magni illum impedit ipsam qui.', 325, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 42),
(40, 13, 'fuga', 'Quia et dolorem laborum et commodi doloremque fugiat. Aut aut et explicabo quisquam voluptas. Sint consectetur voluptas sunt.', 604, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 87),
(41, 13, 'consequatur', 'Ut et et sit rerum at. Perspiciatis nihil a necessitatibus temporibus unde qui. Et laudantium est aut nobis est eligendi harum.', 262, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 42),
(42, 12, 'cumque', 'Reiciendis velit ut quos ex dolore fuga. Numquam enim fuga sed temporibus reprehenderit quaerat unde laborum. Delectus similique quis est sit ea dolores et. Incidunt optio qui sunt dolores. Qui rerum consequatur et.', 958, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 78),
(43, 19, 'eos', 'Quasi qui vel veritatis aperiam earum. Fugiat nobis sit libero et quidem. Voluptatum hic aut mollitia minus qui culpa. Impedit nostrum itaque aut voluptas dolores et sint illum.', 244, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 65),
(44, 11, 'nesciunt', 'Animi distinctio iste iste impedit. Quisquam nihil eligendi qui aut pariatur sequi suscipit. Harum qui et repellat pariatur. In asperiores quo ut modi.', 462, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 30),
(45, 14, 'in', 'Aspernatur expedita laborum veniam laudantium. Quo incidunt iusto quia totam. Neque enim ad sed quidem velit. Nulla rerum voluptatem sed.', 327, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 84),
(46, 16, 'blanditiis', 'Sit ut facilis et dolor quae. Saepe saepe quia excepturi minima. Voluptas fugiat autem provident sit excepturi nulla. Iusto mollitia rerum minima officia inventore.', 101, '2024-07-25 14:17:17', '2024-07-25 14:18:31', 12),
(47, 2, 'vel', 'Porro voluptatibus dolores dicta dolorum. Minima adipisci deserunt sit minima. Est et accusantium porro eius alias. Quis aspernatur et accusamus cumque.', 768, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 88),
(48, 9, 'similique', 'Eum odit modi corporis aut iure commodi. Nam ipsam temporibus perferendis aut eos vero. Doloremque officia reiciendis beatae debitis quis. Omnis non repellat ut minima veniam est modi adipisci.', 80, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 77),
(49, 9, 'sed', 'Quo provident necessitatibus sit id iure. Quia necessitatibus illo quaerat. Amet quod iste necessitatibus et. Aut est nulla quam dolor dolores non.', 502, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 80),
(50, 14, 'quo', 'Ab odio qui veritatis vel cumque ducimus quidem ipsam. Sequi perferendis eos numquam quasi delectus rerum autem quos.', 408, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 99),
(51, 15, 'officiis', 'Beatae quis voluptatem ut corrupti et. Enim rerum reiciendis voluptatem voluptate numquam. Maxime laboriosam cum officia ipsum aliquam.', 302, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 1),
(52, 5, 'ullam', 'Aut iste veniam repudiandae. Voluptas doloribus vel aut aut quos. Delectus et sit ut consequatur eligendi. Ut qui molestias animi non ipsa perferendis quidem.', 382, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 11),
(53, 18, 'voluptates', 'Sint perferendis eos sequi dignissimos minima. Nihil eos non officia. Quis et eos facere id laboriosam commodi nisi.', 17, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 46),
(54, 1, 'beatae', 'Eligendi corrupti est molestiae maxime ut omnis possimus. Doloribus doloribus expedita iste magni commodi qui quibusdam omnis. Alias ex placeat tempore excepturi qui eum quia voluptate.', 180, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 67),
(55, 16, 'nihil', 'Ullam officia eveniet dicta qui amet delectus. Et quia et voluptatibus quia qui officia. Rerum laboriosam qui non quia inventore.', 996, '2024-07-25 14:17:17', '2024-07-25 14:18:31', 16),
(56, 15, 'ab', 'Eum aperiam harum minima impedit eligendi ducimus incidunt. Sed iure libero inventore qui tenetur facere. Nesciunt reprehenderit beatae nobis commodi eaque. Qui consequuntur soluta et ab quia fugit.', 495, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 46),
(57, 5, 'aliquam', 'Fugiat impedit eius maxime qui eius provident. Consequatur consectetur nihil enim officiis est sed id quidem. Sequi iure vel quia omnis ut ut.', 439, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 26),
(58, 7, 'nobis', 'Molestiae ad fuga praesentium ut. Delectus illo sit ducimus atque est et. Quasi minus quos sit labore libero similique voluptatem. Incidunt necessitatibus sit eum.', 179, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 35),
(59, 4, 'quia', 'Consequatur illum commodi quasi doloribus accusamus placeat. Possimus minima quidem aut sequi.', 802, '2024-07-25 14:17:17', '2024-07-25 14:17:17', 44),
(60, 17, 'tempora', 'Et magni culpa nam doloremque voluptatem rem non quae. Esse ut eius harum ullam libero perferendis qui.', 528, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 44),
(61, 10, 'sapiente', 'Facilis quis officiis qui doloremque debitis rerum quisquam eum. Sequi assumenda quis facilis vel fugiat eum fugit.', 603, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 3),
(62, 11, 'ducimus', 'Dolorum ipsam laborum accusamus sint tempora deleniti. Hic debitis corrupti quasi beatae et a sit non. Fuga dicta possimus consequatur ab distinctio sit adipisci tempora. Veritatis et veniam illo eum cupiditate libero.', 333, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 39),
(63, 7, 'nisi', 'Aliquam enim soluta nulla eum ut numquam. Unde ut veniam optio. Aut sed assumenda quia. Exercitationem et quia autem commodi.', 305, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 24),
(64, 6, 'velit', 'Deserunt optio minus et soluta et quasi ipsam est. Est ut voluptate consequuntur voluptatem aspernatur ut et. Occaecati autem dolore consequatur. Eveniet voluptatem et voluptatem quia eligendi aut.', 505, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 64),
(65, 13, 'necessitatibus', 'Aut fugiat facere autem reiciendis aut. Et odio facilis velit dolor distinctio voluptatibus itaque. Iste voluptatibus autem rerum et omnis. Minima ut veniam quidem vero.', 928, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 70),
(66, 3, 'ipsum', 'Est ut iure quam temporibus non in. Quia enim eum neque incidunt eum unde aut ea. Quisquam consequatur ut est dolores quo accusantium vel.', 187, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 51),
(67, 17, 'animi', 'Doloribus voluptatibus iste repellendus architecto dolores vel accusamus. Magnam possimus aliquam quam est. Eligendi similique et quisquam ut. Debitis et qui quod aut et.', 592, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 81),
(68, 7, 'maxime', 'Cupiditate voluptatem aut reprehenderit tempore cum nihil non. Laboriosam et doloremque placeat. Quia sit nam rerum.', 301, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 14),
(69, 8, 'porro', 'Dolores temporibus ut sapiente sapiente qui sunt. Ut autem perferendis et saepe esse facilis. Doloribus quo eum explicabo quos laboriosam quae ut. Earum et saepe et quam consequatur temporibus omnis.', 776, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 0),
(70, 2, 'quam', 'Repellendus consequatur mollitia sequi perspiciatis autem facere. Tempore deleniti rerum quas iste odit harum fugiat. Eos non dolor cupiditate beatae.', 108, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 41),
(71, 13, 'illum', 'Qui sint officiis magnam necessitatibus ad optio tempora. Expedita adipisci nisi voluptatem voluptates nulla commodi.', 925, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 84),
(72, 9, 'nam', 'Ea sit maxime quia ut. Porro quia est ut natus commodi nesciunt. Omnis aliquid at dicta aut saepe. Dolor est nesciunt quia sit.', 924, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 19),
(73, 7, 'quis', 'Aspernatur at est perferendis in vitae accusantium dolorem. Ea incidunt cupiditate officia eveniet similique eum cumque. Quia ea cupiditate voluptatum.', 684, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 39),
(74, 19, 'est', 'At est odit sequi ratione consectetur autem. Modi ut non qui adipisci.', 501, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 31),
(75, 4, 'quaerat', 'Alias suscipit voluptatibus quia vero recusandae modi est. Qui quidem ea non tempora a est. Qui voluptatem qui debitis et.', 260, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 79),
(76, 14, 'ea', 'Error esse est eum. Velit voluptates molestiae atque ea. Qui qui ullam eos cumque. Dicta ea facere atque quia.', 888, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 33),
(77, 10, 'eius', 'Ut ut et deleniti sequi. Aspernatur dolores quis et debitis nihil esse. Aut ipsa exercitationem et.', 506, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 46),
(78, 1, 'sint', 'Aperiam quaerat vel optio labore iste voluptas nobis quod. Consequatur temporibus molestiae illum consequatur qui voluptates asperiores nobis. Nulla sunt non labore porro qui non voluptatem. Commodi molestiae voluptatum exercitationem rerum.', 633, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 91),
(79, 20, 'facilis', 'Assumenda cumque ut pariatur modi eum repudiandae maiores autem. Dolor aut rerum quia nemo reiciendis. Voluptatum qui explicabo necessitatibus et amet delectus tempore.', 512, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 73),
(80, 4, 'natus', 'Modi cupiditate aut rerum ipsa sequi non. Ipsam ut eum ut. Est expedita distinctio molestiae placeat labore quisquam quasi. Vitae numquam maiores voluptas est.', 278, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 77),
(81, 10, 'rerum', 'Recusandae minima ab et. Pariatur temporibus occaecati unde id quibusdam consequuntur. A autem reprehenderit qui quasi voluptates modi enim. Debitis beatae molestias necessitatibus omnis est ut dolores.', 618, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 12),
(82, 6, 'architecto', 'Pariatur excepturi quaerat et aut ducimus delectus qui. Rem sed placeat ducimus autem ullam aliquid. Odio libero a temporibus vel sed optio neque.', 492, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 60),
(83, 11, 'qui', 'Et incidunt aut distinctio et. Quia quo dolorum a tempore dolorum nostrum velit eum. Rerum quae qui sit laborum possimus.', 522, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 97),
(84, 11, 'at', 'Id ut pariatur alias deserunt sed reprehenderit. Et voluptatum nesciunt ducimus repudiandae voluptas distinctio. Necessitatibus officiis reprehenderit quia tenetur. Nobis possimus laudantium laborum.', 976, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 52),
(85, 13, 'inventore', 'Ratione sed assumenda tempora id quasi aut. Itaque qui quaerat est ducimus id eos. Quas minus officia qui quae.', 935, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 94),
(86, 8, 'fugiat', 'Totam magni temporibus aliquid sed. Hic aspernatur iste illum explicabo temporibus architecto cum ab. Dolorum eaque ducimus cum cumque qui enim officiis.', 221, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 28),
(87, 17, 'quae', 'Beatae ut dignissimos facilis. Sequi odio odio assumenda. Qui sunt illo est natus dolore ea et. Dignissimos debitis expedita quos est inventore. Vero qui eligendi itaque ut rerum fuga dignissimos.', 885, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 75),
(88, 14, 'laudantium', 'Beatae eligendi et velit eaque qui ut est. Facilis eveniet natus quaerat sed. Ratione laborum aut et nesciunt iusto neque.', 94, '2024-07-25 14:17:18', '2024-07-26 11:27:24', 35),
(89, 14, 'odit', 'Eligendi sequi ab voluptas adipisci mollitia quibusdam. Itaque earum maiores accusamus voluptatem corrupti.', 866, '2024-07-25 14:17:18', '2024-07-26 11:27:24', 40),
(90, 5, 'occaecati', 'Non modi ipsam excepturi qui. Labore sapiente dolorem mollitia aut nulla expedita necessitatibus ad. Et sed sed consequatur voluptatibus eum eligendi et.', 746, '2024-07-25 14:17:18', '2024-07-25 14:17:18', 95),
(91, 9, 'suscipit', 'Neque laboriosam praesentium perspiciatis sit qui quidem sed. Aut qui totam dolor possimus enim ab autem at.', 748, '2024-07-25 14:17:19', '2024-07-25 14:17:19', 53),
(92, 16, 'sit', 'Accusantium nulla nobis ut ut. Dolorem voluptatibus harum odit voluptatem earum. Pariatur sint rerum qui qui in distinctio.', 138, '2024-07-25 14:17:19', '2024-07-25 14:18:31', 40),
(93, 20, 'dolorum', 'Architecto sed nam voluptate aspernatur. Atque aut mollitia magnam et ut esse atque.', 690, '2024-07-25 14:17:19', '2024-07-25 14:17:19', 94),
(94, 14, 'voluptatibus', 'Temporibus amet odio qui maiores itaque voluptatibus est. Expedita impedit sint quo aut. Natus quas rem eaque dolorem enim porro repellat. Reprehenderit vel tenetur laboriosam inventore ut.', 200, '2024-07-25 14:17:19', '2024-07-26 11:27:24', 20),
(95, 9, 'repudiandae', 'Sint vitae est quam nulla eaque. Id et aliquam id esse alias culpa sed nisi. Nesciunt eaque voluptatem est exercitationem suscipit.', 357, '2024-07-25 14:17:19', '2024-07-25 14:17:19', 59),
(96, 13, 'eligendi', 'Qui voluptatum non iste molestiae ut. Et consequuntur officia sit. Qui ipsum officiis est odio dolorem voluptatem voluptas veritatis. Eveniet est saepe itaque sapiente quidem. Eveniet deserunt alias distinctio qui omnis totam accusantium.', 47, '2024-07-25 14:17:19', '2024-07-25 14:17:19', 92),
(97, 5, 'fugit', 'Iste non omnis quasi commodi odio molestias. Sed commodi ut sint hic. Omnis consequuntur et velit quo.', 631, '2024-07-25 14:17:19', '2024-07-25 14:17:19', 81),
(98, 12, 'eveniet', 'Enim et cumque reiciendis hic qui. Odit enim fugiat fugit et quia incidunt ea. Dolore voluptate similique nulla hic. Quod ab nemo ullam.', 199, '2024-07-25 14:17:19', '2024-07-25 14:17:19', 60),
(99, 5, 'quisquam', 'Hic voluptatem modi eveniet dolores. Sed sint a ea mollitia. Non nesciunt vitae omnis rerum ex. Qui optio impedit reprehenderit maxime laboriosam ut.', 519, '2024-07-25 14:17:19', '2024-07-25 14:17:19', 64),
(100, 4, 'accusamus', 'Consequatur saepe neque aut repudiandae ipsum. Qui natus beatae ea in. Vitae quasi esse similique suscipit repudiandae. Quibusdam soluta a repudiandae animi facere. Cumque minima voluptate quia fugit.', 713, '2024-07-25 14:17:19', '2024-07-25 14:17:19', 82);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('C6PCvz0MM82UEQj4kaQ1op3fxOCCsfOgtxldtzvq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjQ4SjNZNktWREs4WlUzRlNmYkplaEpia0J2VU8zSk9valpORzNLTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb21tYW5kcy1kZXRhaWwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722025334);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Evangeline DuBuque DDS', 'woodrow61@example.com', '2024-07-25 14:17:11', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'OtTOPC5dZC', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(2, 'Koby DuBuque', 'osinski.rodrick@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'NQqVZ13agv', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(3, 'Ms. Shemar Leannon V', 'cmohr@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'TqqM3IGphj', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(4, 'Prof. Hunter Bogisich', 'skertzmann@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', '1heQKb0QCm', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(5, 'Dr. Finn Tremblay', 'oconnell.cooper@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'dMQ8naP8cg', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(6, 'D\'angelo Mosciski', 'kihn.tania@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'Gb4OGG9yb4', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(7, 'Brad Murazik IV', 'harold02@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'XthZSWlXyR', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(8, 'Sallie Mohr', 'rodrick.corwin@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'tiNdT0camx', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(9, 'Amara Leffler', 'kayla03@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'koX9aKaAMy', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(10, 'Mustafa Davis', 'wrice@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'N3DhYseKM4', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(11, 'Prof. Laverne Schaden', 'estell29@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'BQ8LwfwGQe', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(12, 'Miss Margie Osinski', 'skyla.mcdermott@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'uGxSalbBnv', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(13, 'Mr. Emiliano Cummerata', 'kveum@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'G8vaw6bBrm', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(14, 'Sandra Watsica', 'leuschke.kyra@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'vMkDxwyuP9', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(15, 'Mr. Shayne Auer DDS', 'caroline.olson@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'Wnt82FYZ9O', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(16, 'Payton Ledner', 'emmet.jacobson@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'JyRQI4LUHE', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(17, 'Prof. Laurel Jast', 'gutmann.samanta@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', '5ayXTklzrH', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(18, 'Jodie Schneider II', 'alaina20@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', '9TLdoW44Jz', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(19, 'Marcelle Bednar', 'josiah41@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'uEvubtWcfb', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(20, 'Kennedi Mayer', 'rosetta67@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'dSAT8OaL8L', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(21, 'Jillian Metz', 'flatley.kenneth@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', '6klc1MFezq', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(22, 'Lora Emmerich', 'eve84@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'r6GapeZJg7', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(23, 'Prof. Andres Harvey', 'tremblay.malika@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'cyFHNnhsmE', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(24, 'Virginia Rau', 'mara.dibbert@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', '1yfVmU48Aj', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(25, 'Lysanne Ritchie', 'jeremie17@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'PCOFWKjdUM', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(26, 'Mr. Nick Koepp', 'carlo.lesch@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'utaskjBw8y', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(27, 'Myrtie Gleason', 'wschmitt@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', '1nOdV0tVlC', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(28, 'Lacey Predovic', 'elda98@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'uAWk4G6jtT', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(29, 'Stephany Konopelski', 'wisozk.delores@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'yNrfPAn2Ct', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(30, 'Mr. German Gislason III', 'kemmer.brennan@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'z4l5c8YfKO', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(31, 'Alfonzo Nienow', 'lauryn19@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'SljhSLRu7b', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(32, 'Junior Wilderman', 'blick.alvis@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'yIL9KWGjPv', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(33, 'Mr. Trace Waters', 'ldibbert@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'iKobs6v11q', '2024-07-25 14:17:12', '2024-07-25 14:17:12'),
(34, 'Alva Senger', 'dahlia21@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'aasMpOIjuS', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(35, 'Mrs. Breana Ruecker I', 'ruthie55@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'LVwyucAqrv', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(36, 'Dr. Herminio Schuster II', 'macejkovic.jerrod@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'ULpcuWWZBQ', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(37, 'Wayne Miller', 'don.schuppe@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'BTXg5hkNni', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(38, 'Prof. Cody Nienow', 'hettinger.tracy@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'vzDByhF2BC', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(39, 'Veda Kerluke', 'kuhn.albin@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'C9ZxONKMlH', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(40, 'Reyna Johnson', 'hobart.senger@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'C22kxwTX55', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(41, 'Vernon Schinner MD', 'eugene.schuster@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'Xt52yhdhIB', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(42, 'Randal Stehr', 'goldner.bernita@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'Bufcp735i8', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(43, 'Elissa Emard', 'boehm.nadia@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'YDOhujVKZB', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(44, 'Prof. Marian Raynor', 'brody.wiza@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'EvFW55W5jg', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(45, 'Edgardo Herman', 'hattie71@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'jVA5T37tkJ', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(46, 'Prof. Sydnie Mante', 'kdaugherty@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'XybQmcgfzt', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(47, 'Dashawn West', 'corwin.lemuel@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'gGUr6f57r7', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(48, 'Leonie Rutherford PhD', 'wintheiser.maximillian@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 't8Swh5hv3F', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(49, 'Letha Bergstrom', 'ullrich.eryn@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'rhpn1aVOiO', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(50, 'Ms. Francesca McKenzie PhD', 'khalil05@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'XQz08JErkv', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(51, 'Dr. Estell Schowalter', 'glover.cayla@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'xeGlgdpEqG', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(52, 'Dominique Rogahn', 'alivia36@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'ZQM3ZXookj', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(53, 'Eldon Steuber Sr.', 'king.francisco@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'U8B5xJE31m', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(54, 'Glenna Rodriguez', 'adare@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'Xndv6WhvQp', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(55, 'Virginie Okuneva Sr.', 'jherzog@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'cukLhV2Zxz', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(56, 'Ronaldo Luettgen II', 'mueller.carolyne@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'BhaGiDv2qw', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(57, 'Pete Heaney', 'mark.hill@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'mC1MD4w0UF', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(58, 'Kamille Lesch Sr.', 'norval.stark@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'FosKd0aUph', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(59, 'Josh Stroman DDS', 'littel.nash@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'OG7IyXCZm0', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(60, 'Roxane Schneider', 'nmonahan@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'vKcgMlWacn', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(61, 'Mrs. Ines Brekke', 'caleigh.bernhard@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'kIZyZQVlZF', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(62, 'Anthony Stiedemann', 'fae.wisozk@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'NHUe1I37an', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(63, 'Carrie Ankunding', 'towne.oswaldo@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'g5m02Gu4G6', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(64, 'Prof. Zella Bashirian II', 'marcus.hackett@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'TiMlu6zNgQ', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(65, 'Lamont DuBuque', 'amani84@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'CpztGrSaJ0', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(66, 'Laura Watsica PhD', 'korey00@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'Vb9hn2xkfu', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(67, 'Miss Sasha Wunsch', 'dkuvalis@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'cMfCNTU0lq', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(68, 'Ms. Lacey Vandervort', 'kennedy.wiza@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'f6jzkVa6jk', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(69, 'Alexzander Williamson', 'ttromp@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'J2GiQicH1e', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(70, 'Miss Twila Murazik', 'vena.medhurst@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', '3DWYPaSshf', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(71, 'Prof. Barry O\'Conner', 'rschmeler@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'Tv1ZlQkxFU', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(72, 'Lorenz Buckridge', 'hermiston.green@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'Ekr8B24Avo', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(73, 'Rylan Cummings', 'soberbrunner@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'ifwiSuXyg5', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(74, 'Dr. Jermey Stehr I', 'albert25@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'QCsGULHcv6', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(75, 'Margot Franecki', 'zoie59@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'CiKq5li9CS', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(76, 'Casandra Hyatt III', 'roosevelt41@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'Tv9vK4MBrc', '2024-07-25 14:17:13', '2024-07-25 14:17:13'),
(77, 'Nadia Rodriguez', 'donnelly.remington@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'qOEF9EOKnf', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(78, 'Linnie Kuhic', 'cormier.assunta@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', '2UJzM8zGSw', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(79, 'Davonte Roberts', 'bbaumbach@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'JtT1Tc0m2q', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(80, 'Maritza Boyer', 'jon02@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'dFYQuLy8tn', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(81, 'Cassidy Lowe I', 'antone.dicki@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'hLV3ZJ69oG', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(82, 'Suzanne Moore', 'emmie.mohr@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'jDMUjSWuIt', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(83, 'Prof. Ryder Rutherford', 'ted.brekke@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'znYd3NvWdk', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(84, 'Mrs. Kenna Schuster', 'alvina05@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'BERPeYAsRM', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(85, 'Cory Hessel', 'ayana.gislason@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'SlWdSuOrvZ', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(86, 'Katrina Harris', 'hane.tyshawn@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'XWHH6hkfzQ', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(87, 'Prof. Elissa Welch', 'oconnell.kelli@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'abao4eFcLZ', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(88, 'Taya Kilback', 'novella.walker@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'xiU7hMdnF3', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(89, 'Prof. Bradford Johnston', 'tkiehn@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'sLtef1RvSU', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(90, 'Autumn Kunze', 'lueilwitz.edmund@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'B9EVzgAKPg', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(91, 'Prof. Forrest Kassulke', 'jerde.neha@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'rQSvzroYdD', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(92, 'Dr. Corrine Pollich MD', 'beatrice53@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'WavrEc63U0', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(93, 'Moises Rowe', 'casper.melisa@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'sPpBiDqsR5', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(94, 'Violet Murray V', 'nikolaus.courtney@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'zrFBGjyY5E', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(95, 'Rudy Mosciski', 'sylvan27@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'c3LEGXrG24', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(96, 'Ms. Annamarie King V', 'hoyt16@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'gKPyoEVhDw', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(97, 'Micah Rau', 'noemi.brakus@example.org', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'zeJhvLqpUU', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(98, 'Harrison Upton IV', 'tara.heathcote@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'LoOV2o5kqs', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(99, 'Thomas Simonis Sr.', 'hudson.henriette@example.com', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'hd9g84jhRb', '2024-07-25 14:17:14', '2024-07-25 14:17:14'),
(100, 'Jacquelyn Hegmann', 'carmela78@example.net', '2024-07-25 14:17:12', '$2y$12$2DBNPMQHrbjgHWPkos7C/./TDHrUZPGDuvdHISCN5FvFYnTR1ILGm', 'd1uCP0mKXi', '2024-07-25 14:17:14', '2024-07-25 14:17:14');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_name_unique` (`name`);

--
-- Index pour la table `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `command_lines`
--
ALTER TABLE `command_lines`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `command_product`
--
ALTER TABLE `command_product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `commands`
--
ALTER TABLE `commands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `command_lines`
--
ALTER TABLE `command_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `command_product`
--
ALTER TABLE `command_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
