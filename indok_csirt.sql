-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 05:34 AM
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
-- Table structure for table `indok_csirt`
--

CREATE TABLE `indok_csirt` (
  `id_indok` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `indok_csirt`
--

INSERT INTO `indok_csirt` (`id_indok`, `judul`, `isi`) VALUES
(4, '1. Tanggal Update Terakhir ', 'Dokumen merupakan dokumen versi 1.0 yang diterbitkan\r\npada tanggal 8 Agustus 2022'),
(7, '2. Daftar Distribusi untuk Pemberitahuan', 'Tidak ada daftar distribusi untuk pemberitahuan mengenai pembaharuan dokumen.'),
(8, '3. Lokasi dimana Dokumen ini bisa didapat', 'Dokumen ini tersedia pada link berikut : Dokumen RFC 2350'),
(9, 'Keaslian Dokumen', 'Dokumen ini telah ditandatangani dengan PGP milik INTI-CSIRT. Untuk lebih jelas dapat dilihat pada bagian Kunci Publik dan Informasi /Data Enkripsi Lain.'),
(10, ' Identifikasi Dokumen', 'Dokumen memiliki atribut, yaitu :\r\nJudul : RFC 2350 INTI-CSIRT;\r\nVersi  : 1.1;\r\nTanggal Publikasi : 8 Agustus 2022\r\nKedaluwarsa : Dokumen ini valid hingga dokumen terbaru dipublikasikan.\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `indok_csirt`
--
ALTER TABLE `indok_csirt`
  ADD PRIMARY KEY (`id_indok`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `indok_csirt`
--
ALTER TABLE `indok_csirt`
  MODIFY `id_indok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
