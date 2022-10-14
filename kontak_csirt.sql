-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2022 at 09:15 AM
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
-- Table structure for table `kontak_csirt`
--

CREATE TABLE `kontak_csirt` (
  `id_kontak` int(11) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL,
  `jabatan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontak_csirt`
--

INSERT INTO `kontak_csirt` (`id_kontak`, `icon`, `nama`, `status`, `jabatan`) VALUES
(1, 'fas fa-fw fa-duotone fa-square', 'Setyo Utoro ', 'Koordinator / Narahubung', 'Manager'),
(2, 'fas fa-fw fa-duotone fa-square', 'Dhoni Gumilar Daradjat', 'Anggota', 'Manager'),
(3, 'fas fa-fw fa-duotone fa-square', 'Mahathir Muhammad', 'Anggota', 'Senior Officer'),
(4, 'fas fa-fw fa-duotone fa-square', 'M. Fakhrul Arifin', 'Anggota', 'Officer'),
(5, 'fas fa-fw fa-duotone fa-square', 'Robiyansyah', 'Anggota', 'Officer'),
(6, 'fas fa-fw fa-duotone fa-square', 'Doyo Gogo Prayogo', 'Anggota', 'Officer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kontak_csirt`
--
ALTER TABLE `kontak_csirt`
  ADD PRIMARY KEY (`id_kontak`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontak_csirt`
--
ALTER TABLE `kontak_csirt`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
