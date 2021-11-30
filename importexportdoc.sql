-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 06:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `importexportdoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `del`, `created_at`, `updated_at`) VALUES
(1, 'ຜູ້ມອບ', 0, '2021-11-09 08:38:41', '2021-11-09 08:54:22'),
(2, 'ທີ່ດິນ', 1, '2021-11-09 08:57:57', '2021-11-09 08:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `doc_types`
--

CREATE TABLE `doc_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doc_types`
--

INSERT INTO `doc_types` (`id`, `name`, `del`, `created_at`, `updated_at`) VALUES
(1, 'ຂຶ້ນທະບຽນ ເປັນລະບົບ', 0, '2021-11-09 08:19:23', '2021-11-29 08:20:15'),
(2, 'ຂຶ້ນທະບຽນ ຕາມການຮ້ອງຂໍ', 0, '2021-11-09 08:20:05', '2021-11-29 08:20:13'),
(3, 'ແບ່ງແຍກຕອນດິນ ອອກໃນນາມເດີມ', 0, '2021-11-09 08:20:19', '2021-11-29 08:20:11'),
(4, 'ລວມຕອນດິນ', 0, '2021-11-09 08:20:33', '2021-11-29 08:20:09'),
(5, 'ສືບທອດມູນມໍລະດົກ', 0, '2021-11-09 08:20:47', '2021-11-29 08:20:07'),
(6, 'ໂອນສິດນໍາໃຊ້ ທີ່ແມ່ນສາຍຍາດ', 0, '2021-11-09 08:21:14', '2021-11-29 08:20:05'),
(7, 'ໂອນສິດນໍາໃຊ້ທີ່ດິນ ທີ່ບໍ່ແມ່ນສາຍຍາດ', 0, '2021-11-09 08:21:28', '2021-11-29 08:20:03'),
(8, 'ຈົດທະບຽນ ສັນຍາຝາກຂາຍ', 0, '2021-11-09 08:21:39', '2021-11-29 08:20:01'),
(9, 'ຈົດທະບຽນ ສັນຍາແລກປ່ຽນ', 0, '2021-11-09 08:21:49', '2021-11-29 08:19:59'),
(10, 'ຈົດທະບຽນ ນໍາໃຊ້ທີ່ດິນເຂົ້າເປັນຫຸ້ນຕາມສັນຍາ', 0, '2021-11-09 08:22:04', '2021-11-29 08:19:57'),
(11, 'ຈົດທະບຽນ ການຮິບສິດນໍາໃຊ້ທີ່ດິນເປັນຂອງລັດ', 0, '2021-11-09 08:22:17', '2021-11-29 08:19:53'),
(12, 'ຈົດທະບຽນ ການຫັນສິດໃຊ້ທີ່ດິນຂອງລັດ ມາເປັນສິດນໍາໃຊ້ທີ່ດິນຂອງບຸກຄົນ', 0, '2021-11-09 08:23:05', '2021-11-29 08:19:51'),
(13, 'ຈົດທະບຽນ ສັນຍາຄໍ້າປະກັນ ເງິນກູ້ຍືມດ້ວຍສິດນໍາໃຊ້ທີ່ດິນ', 0, '2021-11-09 08:23:21', '2021-11-29 08:19:49'),
(14, 'ຈົດທະບຽນ ສັນຍາເຊົ່າທີ່ດິນ', 0, '2021-11-09 08:23:32', '2021-11-29 08:19:46'),
(15, 'ຈົດທະບຽນ ລົບລ້າງສັນຍາຄໍ້າປະກັນ', 0, '2021-11-09 08:23:44', '2021-11-29 08:19:44'),
(16, 'ຈົດທະບຽນ ລົບລ້າງສັນຍາເຊົ່າ', 0, '2021-11-09 08:23:54', '2021-11-29 08:19:42'),
(17, 'ຈົດທະບຽນ ລົບລ້າງສັນຍາ ຂາຍຝາກ', 0, '2021-11-09 08:24:05', '2021-11-29 08:19:40'),
(18, 'ຈົດທະບຽນ ໃບອະນຸຍາດສິດໃຊ້ທີ່ດິນລັດ', 0, '2021-11-09 08:24:17', '2021-11-29 08:19:38'),
(19, 'ອອກໃບແຜນທີ່ດິນລັດ', 0, '2021-11-09 08:24:33', '2021-11-29 08:19:36'),
(20, 'ຈົດທະບຽນ ໂອນສັນຍາເຊົ່າ', 0, '2021-11-09 08:24:43', '2021-11-29 08:19:34'),
(21, 'ຈົດທະບຽນ ໃຫ້ຜູ້ອື່ນເຊົ່າຕໍ່', 0, '2021-11-09 08:24:52', '2021-11-29 08:19:32'),
(22, 'ອອກໃບອະນຸຍາດ ໃຫ້ເຊົ່າ ຫຼື ສໍາປະທານທີ່ດິນຂອງລັດ', 0, '2021-11-09 08:25:07', '2021-11-29 08:19:29'),
(23, 'ຫັນປ່ຽນທີ່ດິນ ຈາກປະເພດໜຶ່ງໄປອີກປະເພດອື່ນ', 0, '2021-11-09 08:25:18', '2021-11-29 08:19:26'),
(24, 'ຄັດຄ້ານ ການອອກໃບຕາດິນ', 0, '2021-11-09 08:25:34', '2021-11-29 08:19:24'),
(25, 'ຄໍາສັ່ງ ອາຍັດທີ່ດິນ', 0, '2021-11-09 08:25:44', '2021-11-29 08:19:18'),
(26, 'ກວດສອບເຂດແດນ', 0, '2021-11-09 08:25:53', '2021-11-29 08:19:16'),
(27, 'ດັດແກ້ ຊື່ເຈົ້າຂອງສິດ', 0, '2021-11-09 08:26:03', '2021-11-29 08:19:14'),
(28, 'ຢັ້ງຢືນຄວາມຖືກຕ້ອງແລະການເຄື່ອນໄຫວ', 0, '2021-11-09 08:26:13', '2021-11-29 08:19:12'),
(29, 'ແຈ້ງເສຍຫາຍ', 0, '2021-11-09 08:26:23', '2021-11-29 08:19:10'),
(30, 'ແບ່ງແຍກຕອນດິນ ທີ່ບໍ່ແມ່ນສາຍຍາດ', 0, '2021-11-09 08:26:34', '2021-11-29 08:19:08'),
(31, 'ແບ່ງແຍກຕອນດິນ ທີ່ແມ່ນສາຍຍາດ', 0, '2021-11-09 08:26:43', '2021-11-29 08:19:05'),
(32, 'ດັດແກ້ ເນື້ອທີ່ດິນ', 0, '2021-11-09 08:26:52', '2021-11-29 08:19:03'),
(33, 'ດັດແກ້ ປ່ຽນໃບຕາດິນ', 0, '2021-11-09 08:27:02', '2021-11-29 08:19:01'),
(34, 'ດັດແກ້ ເອົາຊື່ເຂົ້າໃບຕາດິນ', 0, '2021-11-09 08:27:10', '2021-11-29 08:18:58'),
(35, 'ດັດແກ້ ເອົາຊື່ອອກໃບຕາດິນ', 0, '2021-11-09 08:27:20', '2021-11-29 08:18:56'),
(36, 'ຂໍ້ຕົກລົງ', 1, '2021-11-29 09:26:23', '2021-11-29 09:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `export_docs`
--

CREATE TABLE `export_docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `doc_type_id` int(11) NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depart_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `del` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `import_docs`
--

CREATE TABLE `import_docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `doc_type_id` int(11) NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_doc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_doc` date NOT NULL,
  `depart_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `del` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_docs`
--

INSERT INTO `import_docs` (`id`, `doc_no`, `date`, `doc_type_id`, `short_title`, `no_doc`, `date_doc`, `depart_id`, `storage_id`, `file`, `user_id`, `del`, `created_at`, `updated_at`) VALUES
(1, '01', '2021-11-09', 4, 'ຝຶກອົບຮົມລາວແລນເລັກ', '022', '2021-11-09', 2, 2, 'files/doc/import/1636473559WhatsApp Image 2021-11-01 at 16.37.35.jpeg', 1, 0, '2021-11-09 08:59:19', '2021-11-29 08:18:06'),
(2, '01', '2021-11-29', 36, 'ປະຊຸມການເຊື່ອມຂໍ້ມູນພາສີທີ່ດິນ', '022', '2021-11-29', 2, 3, 'files/doc/import/1638203262grid_xtn.PNG', 1, 1, '2021-11-29 09:27:42', '2021-11-29 09:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `local_docs`
--

CREATE TABLE `local_docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_type_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `del` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `local_docs`
--

INSERT INTO `local_docs` (`id`, `date`, `short_title`, `doc_type_id`, `storage_id`, `file`, `user_id`, `del`, `created_at`, `updated_at`) VALUES
(1, '2021-11-24', 'ປະຊຸມການເຊື່ອມຂໍ້ມູນພາສີທີ່ດິນ', 36, 3, 'files/doc/local/1638203306grid_xtn.PNG', 1, 1, '2021-11-29 09:28:26', '2021-11-29 09:28:26');

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
(4, '2021_02_21_025225_create_roles_table', 1),
(5, '2021_02_21_025349_create_doc_types_table', 1),
(6, '2021_02_21_025405_create_storages_table', 1),
(7, '2021_02_21_025422_create_local_docs_table', 1),
(8, '2021_02_21_025436_create_import_docs_table', 1),
(9, '2021_02_21_025449_create_export_docs_table', 1),
(10, '2021_02_21_025615_create_departments_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `del`, `created_at`, `updated_at`) VALUES
(1, 'pern', 1, '2021-11-09 08:07:31', '2021-11-09 08:07:31'),
(2, 'pern', 0, '2021-11-29 08:46:09', '2021-11-29 08:46:26'),
(3, 'pern1', 1, '2021-11-29 08:46:39', '2021-11-29 08:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `storages`
--

CREATE TABLE `storages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storages`
--

INSERT INTO `storages` (`id`, `name`, `del`, `created_at`, `updated_at`) VALUES
(1, 'ຜູ້ຮັບ', 0, '2021-11-09 08:39:40', '2021-11-09 08:54:27'),
(2, 'ກ່ອງທີ1', 0, '2021-11-09 08:58:04', '2021-11-29 08:36:39'),
(3, 'ກ່ອງທີ1', 1, '2021-11-29 09:26:40', '2021-11-29 09:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `del` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `role_id`, `del`, `created_at`, `updated_at`) VALUES
(1, 'ketsoulin', 'admin', 'pern@gmail.com', NULL, '$2y$10$JepbEmbGPLrnEzUuZ8/wV.IabV4XlabzAAJFzJ5XXLN.UxOORzKfG', 1, 1, '2021-11-09 14:49:08', NULL),
(3, 'ket', 'pern15', 'ketsoulin2018@gmail.com', NULL, '$2y$10$YaSNeWa4tQTZApdxH00UNu3Abo6MIzOesor3smG7Yt/FqPBXtYTZm', 1, 1, '2021-11-29 08:59:11', '2021-11-29 08:59:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_types`
--
ALTER TABLE `doc_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `export_docs`
--
ALTER TABLE `export_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `import_docs`
--
ALTER TABLE `import_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `local_docs`
--
ALTER TABLE `local_docs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storages`
--
ALTER TABLE `storages`
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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doc_types`
--
ALTER TABLE `doc_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `export_docs`
--
ALTER TABLE `export_docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_docs`
--
ALTER TABLE `import_docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `local_docs`
--
ALTER TABLE `local_docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `storages`
--
ALTER TABLE `storages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
