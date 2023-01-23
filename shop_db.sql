-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 05:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `image`, `quantity`) VALUES
(3, 2, 'ELDEN RING', '59.99', 'igra1.jpg', 6),
(4, 2, 'STRAY', '49.99', 'igra2.jpg', 1),
(5, 2, 'GTA 5', '99.99', 'igra3.jpg', 1),
(10, 3, 'ELDEN RING', '59.99', 'igra1.jpg', 1),
(11, 3, 'STRAY', '49.99', 'igra2.jpg', 1),
(12, 3, 'GTA 5', '99.99', 'igra3.jpg', 1),
(13, 7, 'STRAY', '49.99', 'igra2.jpg', 1),
(14, 11, 'STRAY', '49.99', 'igra2.jpg', 1),
(15, 11, 'GOD OF WAR', '69.99', 'igra4.jpg', 1),
(16, 13, 'ELDEN RING', '59.99', 'igra1.jpg', 5),
(17, 13, 'GOD OF WAR', '69.99', 'igra4.jpg', 1),
(19, 16, 'ELDEN RING', '59.99', 'igra1.jpg', 1),
(20, 16, 'STRAY', '49.99', 'igra2.jpg', 1),
(21, 16, 'GTA 5', '99.99', 'igra3.jpg', 1),
(22, 16, 'CRASH BANDICOT', '39.99', 'igra6.jpg', 1),
(23, 16, 'SPIDER-MAN', '88.99', 'igra5.jpg', 1),
(24, 16, 'GOD OF WAR', '69.99', 'igra4.jpg', 1),
(27, 15, 'CRASH BANDICOT', '39.99', 'igra6.jpg', 1),
(29, 15, 'GOD OF WAR', '69.99', 'igra4.jpg', 3),
(32, 17, 'ELDEN RING', '59.99', 'igra1.jpg', 4),
(33, 6, 'SPIDER-MAN', '88.99', 'igra5.jpg', 3),
(34, 6, 'ELDEN RING', '59.99', 'igra1.jpg', 2),
(35, 6, 'GTA 5', '99.99', 'igra3.jpg', 2),
(36, 8, 'ELDEN RING', '59.99', 'igra1.jpg', 2),
(37, 8, 'STRAY', '49.99', 'igra2.jpg', 4),
(38, 8, 'GTA 5', '99.99', 'igra3.jpg', 8);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_09_011358_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-01-09 15:29:59', '2023-01-09 15:29:59'),
(2, 'role-create', 'web', '2023-01-09 15:29:59', '2023-01-09 15:29:59'),
(3, 'role-edit', 'web', '2023-01-09 15:29:59', '2023-01-09 15:29:59'),
(4, 'role-delete', 'web', '2023-01-09 15:29:59', '2023-01-09 15:29:59'),
(5, 'product-list', 'web', '2023-01-09 15:29:59', '2023-01-09 15:29:59'),
(6, 'product-create', 'web', '2023-01-09 15:29:59', '2023-01-09 15:29:59'),
(7, 'product-edit', 'web', '2023-01-09 15:29:59', '2023-01-09 15:29:59'),
(8, 'product-delete', 'web', '2023-01-09 15:29:59', '2023-01-09 15:29:59');

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
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'ELDEN RING', '59.99', 'igra1.jpg'),
(2, 'STRAY', '49.99', 'igra2.jpg'),
(3, 'GTA 5', '99.99', 'igra3.jpg'),
(4, 'GOD OF WAR', '69.99', 'igra4.jpg'),
(5, 'SPIDER-MAN', '88.99', 'igra5.jpg'),
(6, 'CRASH BANDICOT', '39.99', 'igra6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-01-09 15:34:03', '2023-01-09 15:34:03'),
(2, 'User', 'web', '2023-01-09 15:53:55', '2023-01-09 15:53:55'),
(3, 'Super Admin', 'web', '2023-01-09 15:54:18', '2023-01-09 15:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Pero Peric', 'peroperic@gmail.com', NULL, '$2y$10$SpRsvEP4TWaXQO3pU/DHseAzoAhD.LobXU.UOBN9nTIEsYLEriYk.', NULL, '2023-01-09 15:38:37', '2023-01-09 15:38:37'),
(4, 'refko', 'refko@gmail.com', NULL, '76419c58730d9f35de7ac538c2fd6737', NULL, NULL, NULL),
(5, 'zorro', 'zorro@gmail.com', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL),
(6, 'Benq', 'benq@gmail.com', NULL, 'd8578edf8458ce06fbc5bb76a58c5ca4', NULL, NULL, NULL),
(7, 'aw', 'aw@gmail.com', NULL, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL),
(8, 'miro', 'miro@gmail.com', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(2, 'a', 'a@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', ''),
(3, 'ar', 'ar@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', ''),
(6, 'Ivan', 'ivan@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', ''),
(7, 'slavko', 'slavko@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', ''),
(8, 'wawarwatwat', 'ba@ba.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'user'),
(9, 'awdwawawdwadaw', 'r@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', ''),
(11, 'qwerty', 'tokmak@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', ''),
(12, 'wawafawfwfawaw', 'p@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'ee11cbb19052e40b07aac0ca060c23ee'),
(13, 'o', 'o@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'user'),
(14, 'ploca', 'ploca@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'user'),
(15, 'mirko', 'mirko@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'admin'),
(16, 'u', 'u@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'superadmin'),
(17, 'q', 'q@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'superadmin'),
(18, 'v', 'v@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'admin'),
(19, 'QWERTY', 'qw@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
