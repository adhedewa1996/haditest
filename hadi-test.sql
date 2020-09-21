-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 07:28 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hadi-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(12) NOT NULL,
  `NM_Mhs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `NM_Mhs`) VALUES
('2020.11.0484', 'Hasan Santoso'),
('2020.11.0485', 'Dinar Setya'),
('2020.11.0486', 'Indah Dewi Pertiwi'),
('2020.11.0488', 'Rully Handoyo'),
('2020.11.0492', 'Hasan Setya'),
('2020.11.0494', 'Damar Widodo'),
('2020.11.0495', 'Indah Dwi Pratiwi'),
('2020.11.0499', 'RUly Nere');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_matakuliah`
--

CREATE TABLE `mahasiswa_matakuliah` (
  `NIM` varchar(12) NOT NULL,
  `Kode_MataKuliah` varchar(5) NOT NULL,
  `Value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa_matakuliah`
--

INSERT INTO `mahasiswa_matakuliah` (`NIM`, `Kode_MataKuliah`, `Value`) VALUES
('2020.11.0484', 'MK404', 75),
('2020.11.0485', 'MK404', 65),
('2020.11.0494', 'MK404', 90),
('2020.11.0499', 'MK406', 85),
('2020.11.0485', 'MK404', 93),
('2020.11.0499', 'MK404', 71),
('2020.11.0484', 'MK406', 84),
('2020.11.0486', 'MK404', 88);

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `Kode_MK` varchar(5) NOT NULL,
  `Nama_Matkul` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`Kode_MK`, `Nama_Matkul`) VALUES
('MK302', 'OOP'),
('MK303', 'Basis Data'),
('MK404', 'Manajemen Ekonomi'),
('MK406', 'Hukum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `mahasiswa_matakuliah`
--
ALTER TABLE `mahasiswa_matakuliah`
  ADD KEY `NIM` (`NIM`),
  ADD KEY `Kode_MataKuliah` (`Kode_MataKuliah`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`Kode_MK`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa_matakuliah`
--
ALTER TABLE `mahasiswa_matakuliah`
  ADD CONSTRAINT `mahasiswa_matakuliah_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`),
  ADD CONSTRAINT `mahasiswa_matakuliah_ibfk_2` FOREIGN KEY (`Kode_MataKuliah`) REFERENCES `mata_kuliah` (`Kode_MK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
