-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 05:56 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_company`
--
CREATE DATABASE IF NOT EXISTS `db_company` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_company`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `nik` int(11) NOT NULL,
  `nama` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `no_hp` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('L','P') COLLATE utf8_unicode_ci DEFAULT NULL,
  `jabatan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `umur` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`nik`, `nama`, `alamat`, `no_hp`, `gender`, `jabatan`, `umur`) VALUES
(2021001, 'Darmatasia', 'Jl. Romang Polong, Samata Gowa, Sulawesi Selatan', '081234991420', 'P', 'Marketing', '25'),
(2021002, 'Sri Hastuti', 'Jl. Tamalenrea Km. 10, Makassar, Sulawesi selatan', '085345373221', 'P', 'Manager', '35'),
(2021005, 'Sri Damayanti', 'Jl. Tamangapa Raya Makassar, Sulawesi Selatan', '082345992480', 'P', 'Manager Keuangan', '33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
