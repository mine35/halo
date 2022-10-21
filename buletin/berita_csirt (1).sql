-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 03:18 AM
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
  `id_brt` int(128) NOT NULL,
  `judul` varchar(256) NOT NULL,
  `ringkasan` varchar(500) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita_csirt`
--

INSERT INTO `berita_csirt` (`id_brt`, `judul`, `ringkasan`, `image`) VALUES
(1, 'Kerentanan Zero-Day pada Apache Java Logging Library LOG4J', 'Pada tanggal 9 Desember 2021, periset keamanan menemukan adanya kerentanan zero-day yang diberi nama CVE-2021-44228 pada pustaka Apache Java Logging Library atau yang umum dikenal dengan log4j. Proof of Concept (PoC) exploit dari kerentanan tersebut juga telah tersedia secara bebas. Eksploitasi dari kerentanan ini memungkinkan penyerang dapat mengambil alih penuh server yang terdampak.', 'berita12.jpg'),
(2, 'Kerentanan Zero-day Windows 11 : Membuat Siapapun Menjadi Admin', 'Pengguna Windows harus waspada. Microsoft telah mengkonfirmasi kerentanan kritis telah ditemukan di semua versi Windows yang menghadirkan ancaman langsung, dan tindakan harus dilakukan secepatnya. Dilacak sebagai CVE-2021-34484, kerentanan “zero-day” memungkinkan peretas untuk menembus semua versi Windows dan mengambil kendali komputer Anda.', 'berita23.jpg'),
(3, 'Tips: Membuat Strong Password (Kata Sandi Yang Aman)', 'Anda membutuhkan password pada mayoritas aktivitas online Anda, seperti memeriksa email atau perbankan online. Memang lebih mudah bagi kita untuk membuat dan mengingat password yang sederhana, tetapi ini beresiko pada keamanan online Anda. Password yang Anda buat sebaiknya tidak sulit Anda ingat, namun sulit ditebak orang lain', 'berita3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita_csirt`
--
ALTER TABLE `berita_csirt`
  ADD PRIMARY KEY (`id_brt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita_csirt`
--
ALTER TABLE `berita_csirt`
  MODIFY `id_brt` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
