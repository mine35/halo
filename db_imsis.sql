-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 02:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_imsis`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita_csirt`
--

CREATE TABLE `berita_csirt` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(500) CHARACTER SET latin1 NOT NULL,
  `isi` text CHARACTER SET latin1 NOT NULL,
  `status_berita` varchar(20) CHARACTER SET latin1 NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita_csirt`
--

INSERT INTO `berita_csirt` (`id_berita`, `judul`, `isi`, `status_berita`, `id_user`, `tanggal`) VALUES
(1, 'Kerentanan Zero-Day Pada Apache Java Logging Library LOG4J', 'RINGKASAN\r\n\r\n>Pada tanggal 9 Desember 2021, periset keamanan menemukan adanya kerentanan zeroday yang diberi nama CVE-2021-44228 pada pustaka Apache Java Logging Library atau yang umum dikenal dengan log4j\r\n>Adapun versi dari Log4j yang terdampak oleh kerentanan ini adalah sistem elektronik yang menggunakan Apache Log4j antara versi 2.0 sampai dengan 2.14.1. Berdasarkan CVSS Score 3.0, nilai kerentanan ini memiliki nilai 10.0 atau dikategorikan sebagai KRITIKAL. Eksploitasi dari kerentanan ini memungkinkan penyerang dapat mengambil alih penuh server yang terdampak.\r\n>Seluruh pengguna yang menggunakan versi yang terdampak direkomendasikan untuk melakukan pemutakhiran ke versi terbaru atau melakukan langkah mitigasi sebagaimana direkomendasikan pada dokumen ini.\r\nPENDAHULUAN\r\nPada tanggal 9 Desember 2021, periset keamanan menemukan adanya kerentanan zero-day yang diberi nama CVE-2021-44228 pada pustaka Apache Java Logging Library atau yang umum dikenal dengan log4j. Proof of Concept (PoC) exploit dari kerentanan tersebut juga telah tersedia secara bebas. Eksploitasi dari kerentanan ini memungkinkan penyerang dapat mengambil alih penuh server yang terdampak.\r\n\r\nNILAI KERENTANAN\r\nBerdasarkan CVSS Score 3.0, nilai kerentanan ini memiliki nilai : 10.0 atau dikategorikan sebagai KRITIKAL.', 'Draft', 1, '2022-09-22 03:47:45'),
(2, 'Kerentanan Zero-day Windows 11 : Membuat Siapapun Menjadi Admin', '\r\nPengguna Windows harus waspada. Microsoft telah mengkonfirmasi kerentanan kritis telah ditemukan di semua versi Windows yang menghadirkan ancaman langsung, dan tindakan harus dilakukan secepatnya.\r\n\r\nDilacak sebagai CVE-2021-34484, kerentanan “zero-day” memungkinkan peretas untuk menembus semua versi Windows (termasuk Windows 10, Windows 11 dan Windows Server 2022) dan mengambil kendali komputer Anda. Dan bagian terburuknya adalah cacatnya telah diketahui selama beberapa waktu.\r\n\r\nAlasan untuk ini adalah Microsoft secara keliru mengira telah menambal kerentanan (yang pertama kali ditemukan pada bulan Agustus) ketika diungkapkan kepada publik pada bulan Oktober.\r\n\r\nTetapi perbaikan itu sendiri ditemukan tidak sempurna, sesuatu yang diakui perusahaan, dan ini menarik lebih banyak perhatian pada kerentanan. Microsoft kemudian berjanji untuk “mengambil tindakan yang tepat untuk menjaga pelanggan tetap terlindungi” tetapi dua minggu kemudian, perbaikan baru masih belum tiba.\r\n\r\nTapi di sinilah semua pengguna Windows dapat mengambil kendali. Spesialis keamanan pihak ketiga 0patch telah mengalahkan Microsoft dengan ‘micropatch’ yang sekarang telah tersedia untuk semua pengguna Windows (tautan unduhan).\r\n\r\nAnda harus mendaftar untuk akun 0patch dan menginstal download agent nya sebelum perbaikan dapat diterapkan, tetapi dengan 0patch yang cepat menjadi tujuan utama untuk hot fix yang mengalahkan Microsoft, ini bukan masalah.', 'Draft', 1, '2022-09-22 03:44:17'),
(3, 'Tips: Membuat Strong Password (Kata Sandi Yang Aman)', 'Beberapa tips membuat password yang kuat\r\nKata sandi (password) yang kuat hendaknya mudah Anda ingat tetapi sulit ditebak orang lain. Mari kita lihat beberapa hal penting untuk dipertimbangkan saat membuat password.\r\n\r\n>Jangan pernah menggunakan informasi pribadi Anda seperti nama, ulang tahun, username, atau alamat email. Informasi-informasi ini umumnya dapat diakses publik, sehingga orang lain lebih mudah menebak password Anda.\r\n>Gunakan password yang panjang. Setidaknya panjang password minimal 6 digit, meskipun dapat lebih panjang untuk keamanan ekstra.\r\n>Jangan memakai password yang sama untuk semua akun Anda. Jika seseorang menemukan kata sandi pada satu akun Anda, maka akun-akun Anda lainnya akan terancam.\r\n>Gunakan kombinasi angka, simbol, huruf kapital dan kecil.\r\n>Hindari menggunakan kata-kata yang dapat ditemukan di dalam kamus. Misalnya, berenang1 merupakan password yang lemah.\r\n>Password acak adalah password yang terkuat. Jika Anda mengalami kesulitan membuat password acak ini, maka Anda dapat menggunakan aplikasi password generator\r\nBeberapa kesalahan password pada umumnya\r\nPada umumnya, password yang dibuat mengandung unsur nama keluarga, hobi, atau pola sederhana lainnya. Password ini memang mudah diingat, tetapi kurang aman. Mari kita pelajari beberapa kesalahan password pada umumnya dan bagaimana cara memperbaikinya.', 'Draft', 1, '2022-09-22 03:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('2e841f28491f4b7c492930fb6c09b8a1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 1554634874, 'a:7:{s:9:\"user_data\";s:0:\"\";s:9:\"site_lang\";s:7:\"english\";s:7:\"user_id\";s:1:\"1\";s:8:\"username\";s:4:\"iiky\";s:6:\"status\";s:1:\"1\";s:5:\"roles\";a:1:{i:0;a:4:{s:7:\"role_id\";s:1:\"1\";s:4:\"role\";s:5:\"admin\";s:4:\"full\";s:13:\"Administrator\";s:7:\"default\";s:1:\"0\";}}s:12:\"user_profile\";a:13:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:16:\"Tintapuccino CMS\";s:6:\"gender\";s:1:\"m\";s:13:\"tanggal_lahir\";s:10:\"0000-00-00\";s:6:\"alamat\";s:0:\"\";s:4:\"kota\";s:0:\"\";s:12:\"tentang_saya\";s:0:\"\";s:4:\"foto\";s:12:\"no_image.jpg\";s:3:\"dob\";s:10:\"0000-00-00\";s:7:\"country\";s:0:\"\";s:8:\"timezone\";s:0:\"\";s:7:\"website\";s:0:\"\";s:8:\"modified\";s:19:\"2018-07-17 22:15:44\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `login` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `id_menu_parent` int(11) NOT NULL,
  `nama_menu` varchar(70) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `kategori` enum('Controller','Link') NOT NULL,
  `href` varchar(100) NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `sort` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_menu_parent`, `nama_menu`, `icon`, `kategori`, `href`, `status`, `sort`) VALUES
(1, 7, 'Pengaturan Pengguna', 'fal fa-circle', 'Controller', '', 'Y', '1'),
(2, 1, 'Pengaturan Pengguna', '', 'Controller', 'Usersmanagement', 'Y', '1'),
(3, 1, 'Pengaturan Hak Akses', '', 'Controller', 'Roles', 'Y', '2'),
(6, 7, 'Pengaturan Menu', 'fal fa-circle', 'Controller', 'Menu', 'Y', '2'),
(7, 0, 'Pengaturan', 'fal fa-cogs', 'Controller', '', 'Y', '2'),
(8, 1, 'Pengaturan Modul', '', 'Controller', 'Permission', 'Y', '3'),
(9, 0, 'Dashboard', 'fal fa-home', 'Controller', 'Dashboard', 'Y', '1'),
(10, 0, 'Data Master', 'fal fa-table', 'Controller', '', 'Y', '3'),
(11, 10, 'Data Kategori Produk', '', 'Controller', 'kategori-produk', 'Y', '1'),
(12, 10, 'Data Produk', '', 'Controller', 'produk', 'Y', '2'),
(13, 10, 'Data Segmen', '', 'Controller', 'segmen', 'Y', '3'),
(14, 10, 'Data Lini Bisnis', '', 'Controller', 'lini-bisnis', 'Y', '4'),
(15, 10, 'Data KBLI', '', 'Controller', 'KBLI', 'Y', '5'),
(16, 10, 'Data Kastemer', '', 'Controller', 'kastemer', 'Y', '6'),
(17, 18, 'Target Perolehan AM', '', 'Controller', 'target-am', 'Y', '3'),
(18, 0, 'Report AM', 'fal fa-chart-bar', 'Controller', '', 'Y', '4'),
(19, 18, 'Data Target Perolehan AM', '', 'Controller', 'list-target-am', 'Y', '4'),
(20, 0, 'Produk Kami', 'fal fa-box', 'Controller', 'produk-public', 'Y', '2'),
(21, 10, 'Data Account Manager', '', 'Controller', 'account-manager', 'Y', '7'),
(22, 18, 'Atur Perolehan AM', '', 'Controller', 'set-pencapaian-am', 'Y', '1'),
(23, 18, 'Data Perolehan AM', '', 'Controller', 'list-pencapaian-am', 'Y', '2'),
(24, 18, 'Deputi Target Perolehan AM', '', 'Controller', 'deputi-target-am', 'Y', '5');

-- --------------------------------------------------------

--
-- Table structure for table `overrides`
--

CREATE TABLE `overrides` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` smallint(5) UNSIGNED NOT NULL,
  `allow` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permission_id` smallint(5) UNSIGNED NOT NULL,
  `permission` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permission_id`, `permission`, `description`, `parent`, `sort`) VALUES
(2, 'Menu', 'Menu Management', NULL, NULL),
(3, 'Permission', 'Permission Management', NULL, NULL),
(4, 'Roles', 'Role Management', NULL, NULL),
(5, 'Usersmanagement', 'User Management', NULL, NULL),
(6, 'Dashboard', 'Dashboard', NULL, NULL),
(7, 'kategori-produk', 'Kategori Produk', NULL, NULL),
(8, 'produk', 'Produk', NULL, NULL),
(9, 'segmen', 'Segmen', NULL, NULL),
(10, 'lini-bisnis', 'Lini Bisnis', NULL, NULL),
(11, 'KBLI', 'KBLI', NULL, NULL),
(12, 'kastemer', 'Kastemer', NULL, NULL),
(13, 'target-am', 'Target Capaian AM', NULL, NULL),
(14, 'list-target-am', 'List Target Capaian AM', NULL, NULL),
(15, 'produk-public', 'Produk User', NULL, NULL),
(16, 'account-manager', 'Account Manager', NULL, NULL),
(17, 'set-pencapaian-am', 'Atur Pencapaian AM', NULL, NULL),
(18, 'list-pencapaian-am', 'List Capaian AM', NULL, NULL),
(19, 'deputi-target-am', 'Deputi Target Am', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` tinyint(3) UNSIGNED NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `full` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role`, `full`, `default`) VALUES
(1, 'Admin', 'Administrator', 0),
(2, 'User', 'User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` tinyint(3) UNSIGNED NOT NULL,
  `permission_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 1,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `ban_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL COMMENT 'For acct approval.',
  `meta` varchar(2000) COLLATE utf8_unicode_ci DEFAULT '',
  `last_ip` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `approved`, `meta`, `last_ip`, `last_login`, `created`, `modified`) VALUES
(1, 'iiky', '$2a$08$UgW69S6DojhLcVHg0KwmJer9ZzIRzBLUCpsEJEJCofwmvAkTvNrZi', 'admin@gmail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '', '127.0.0.1', '2022-09-22 06:38:31', '2018-02-24 15:26:07', '2022-09-22 04:38:31'),
(2, 'mahathir.muhammad', '$2a$08$EsdzUNbnzUaeqiYqLsa7wOTktqfil7VGGkNf1UsUu3fRCKZIMF4jO', 'mahathir.muhammad@inti.co.id', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 'a:1:{s:4:\"name\";s:17:\"mahathir.muhammad\";}', '::1', '2022-03-24 10:31:36', '2022-02-18 03:53:40', '2022-03-24 09:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

CREATE TABLE `user_autologin` (
  `key_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_agent` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user_autologin`
--

INSERT INTO `user_autologin` (`key_id`, `user_id`, `user_agent`, `last_ip`, `last_login`) VALUES
('bbecaa5ab748280b48db65737ee04f49', 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', '172.16.10.1', '2022-03-13 16:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nipeg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT '',
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `kota` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tentang_saya` text COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no_image.jpg',
  `dob` date NOT NULL,
  `country` char(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `timezone` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `website` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `nipeg`, `name`, `gender`, `tanggal_lahir`, `alamat`, `kota`, `tentang_saya`, `foto`, `dob`, `country`, `timezone`, `website`, `modified`) VALUES
(1, NULL, 'Administrator', 'P', '1999-08-25', 'Perumahan Taman Bunga Cilame', '', '', '624a63afc50c2.jpg', '0000-00-00', '', '', '', '2022-04-04 03:19:11'),
(2, NULL, 'mahathir.muhammad', '', '0000-00-00', '', '', '', 'no_image.jpg', '0000-00-00', '', '', '', '2022-02-18 02:53:40'),
(3, NULL, 'MUHAMMAD SYAIBANI ZAHRAN', '', '0000-00-00', '', '', '', 'no_image.jpg', '0000-00-00', '', '', '', '2022-03-31 09:05:32'),
(4, NULL, 'MUHAMMAD SYAIBANI ZAHRAN', '', '0000-00-00', '', '', '', 'no_image.jpg', '0000-00-00', '', '', '', '2022-03-31 09:05:34'),
(5, NULL, 'setyo.utoro', '', '0000-00-00', '', '', '', 'no_image.jpg', '0000-00-00', '', '', '', '2022-03-09 03:41:51'),
(6, NULL, 'Shnta Maharani', '', '0000-00-00', '', '', '', 'no_image.jpg', '0000-00-00', '', '', '', '2022-03-31 09:05:36'),
(7, NULL, 'widodo', '', '0000-00-00', '', '', '', 'no_image.jpg', '0000-00-00', '', '', '', '2022-03-13 16:25:53'),
(8, NULL, 'Dani Anwar', NULL, '0000-00-00', '', '', '', 'no_image.jpg', '0000-00-00', '', '', '', '2022-04-04 04:12:49'),
(10, NULL, '', '', '0000-00-00', '', '', '', 'no_image.jpg', '0000-00-00', '', '', '', '2022-04-20 06:54:39'),
(11, NULL, '', '', '0000-00-00', '', '', '', 'no_image.jpg', '0000-00-00', '', '', '', '2022-04-20 06:57:07'),
(12, NULL, 'Jajang Herdi', '', '0000-00-00', '', '', '', '625fafc1a2aef', '0000-00-00', '', '', '', '2022-04-20 07:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita_csirt`
--
ALTER TABLE `berita_csirt`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`) USING BTREE;

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`) USING BTREE;

--
-- Indexes for table `overrides`
--
ALTER TABLE `overrides`
  ADD PRIMARY KEY (`user_id`,`permission_id`) USING BTREE,
  ADD KEY `user_id1_idx` (`user_id`) USING BTREE,
  ADD KEY `permissions_id1_idx` (`permission_id`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`) USING BTREE,
  ADD UNIQUE KEY `permission_UNIQUE` (`permission`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`) USING BTREE,
  ADD UNIQUE KEY `role_UNIQUE` (`role`) USING BTREE;

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`) USING BTREE,
  ADD KEY `role_id2_idx` (`role_id`) USING BTREE,
  ADD KEY `permission_id2_idx` (`permission_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username_UNIQUE` (`username`) USING BTREE,
  ADD UNIQUE KEY `email_UNIQUE` (`email`) USING BTREE;

--
-- Indexes for table `user_autologin`
--
ALTER TABLE `user_autologin`
  ADD PRIMARY KEY (`key_id`,`user_id`) USING BTREE;

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  ADD KEY `user_id2_idx` (`user_id`) USING BTREE,
  ADD KEY `role_id1_idx` (`role_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita_csirt`
--
ALTER TABLE `berita_csirt`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `overrides`
--
ALTER TABLE `overrides`
  ADD CONSTRAINT `permission_id1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `permission_id2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `role_id2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `role_id1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
