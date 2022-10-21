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
-- Table structure for table `dokpen_csirt`
--

CREATE TABLE `dokpen_csirt` (
  `id_dokpen` int(11) NOT NULL,
  `judul` varchar(268) NOT NULL,
  `isi` varchar(258) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokpen_csirt`
--

INSERT INTO `dokpen_csirt` (`id_dokpen`, `judul`, `isi`) VALUES
(4, '1. RFC 2350', 'KISI-KISI_MATEMATIKA_XI1.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokpen_csirt`
--
ALTER TABLE `dokpen_csirt`
  ADD PRIMARY KEY (`id_dokpen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokpen_csirt`
--
ALTER TABLE `dokpen_csirt`
  MODIFY `id_dokpen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
