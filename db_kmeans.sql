-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2019 at 06:58 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kmeans`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'customer'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin Perusahaan', 'admin.perusahaan@yahoo.com', '081267771344', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `centroid`
--

CREATE TABLE `centroid` (
  `id_centroid` int(5) NOT NULL,
  `data_centroid` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `centroid`
--

INSERT INTO `centroid` (`id_centroid`, `data_centroid`) VALUES
(178, '25,25,50,75,50,25'),
(179, '75,25,25,25,75,25'),
(180, '25,75,50,100,25,75');

-- --------------------------------------------------------

--
-- Table structure for table `diagram`
--

CREATE TABLE `diagram` (
  `id_diagram` int(5) NOT NULL,
  `x` text NOT NULL,
  `y` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagram`
--

INSERT INTO `diagram` (`id_diagram`, `x`, `y`) VALUES
(1, '25,', ''),
(2, '75,', ''),
(3, '25,', ''),
(4, '25,', ''),
(5, '50,', ''),
(6, '25,', ''),
(7, '25,', ''),
(8, '75,', ''),
(9, '75,', ''),
(10, '25,', ''),
(11, '75,', ''),
(12, '25,', ''),
(13, '25,', ''),
(14, '25,', ''),
(15, '25,', ''),
(16, '50,', ''),
(17, '75,', ''),
(18, '75,', ''),
(19, '50,', ''),
(20, '100,', ''),
(21, '100,', ''),
(22, '25,', ''),
(23, '25,', ''),
(24, '25,', ''),
(25, '75,', ''),
(26, '50,', ''),
(27, '25,', ''),
(28, '25,', ''),
(29, '25,', ''),
(30, '25,', ''),
(31, '', '25,'),
(32, '', '75,'),
(33, '', '75,'),
(34, '', '75,'),
(35, '', '25,'),
(36, '', '25,'),
(37, '', '25,'),
(38, '', '25,'),
(39, '', '75,'),
(40, '', '25,'),
(41, '', '75,'),
(42, '', '50,'),
(43, '', '25,'),
(44, '', '25,'),
(45, '', '75,'),
(46, '', '50,'),
(47, '', '50,'),
(48, '', '100,'),
(49, '', '50,'),
(50, '', '50,'),
(51, '', '25,'),
(52, '', '100,'),
(53, '', '25,'),
(54, '', '50,'),
(55, '', '50,'),
(56, '', '75,'),
(57, '', '25,'),
(58, '', '25,'),
(59, '', '100,'),
(60, '', '25,');

-- --------------------------------------------------------

--
-- Table structure for table `diagram_centroid`
--

CREATE TABLE `diagram_centroid` (
  `id_diagram_centroid` int(5) NOT NULL,
  `x` varchar(255) NOT NULL,
  `y` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagram_centroid`
--

INSERT INTO `diagram_centroid` (`id_diagram_centroid`, `x`, `y`) VALUES
(1, '25,', ''),
(2, '75,', ''),
(3, '25,', ''),
(4, '', '75,'),
(5, '', '25,'),
(6, '', '25,');

-- --------------------------------------------------------

--
-- Table structure for table `objek`
--

CREATE TABLE `objek` (
  `id_objek` int(5) NOT NULL,
  `nama_objek` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `objek`
--

INSERT INTO `objek` (`id_objek`, `nama_objek`, `data`) VALUES
(1, '1', '25,25,50,50,75,25'),
(2, '2', '25,100,50,50,75,25'),
(3, '3', '25,25,50,75,50,100'),
(4, '4', '25,25,50,75,50,75'),
(5, '5', '50,75,25,25,75,50'),
(6, '6', '75,50,25,100,50,75'),
(7, '7', '25,50,25,50,75,25'),
(8, '8', '25,25,50,75,50,75'),
(9, '9', '25,100,75,75,50,25'),
(10, '10', '100,25,75,50,50,50'),
(11, '11', '100,50,100,25,75,25'),
(12, '12', '50,50,50,75,25,100'),
(13, '13', '75,100,50,25,75,50'),
(14, '14', '75,50,25,75,50,100'),
(15, '15', '50,50,25,75,25,100'),
(16, '16', '25,75,50,75,25,50'),
(17, '17', '25,25,25,75,25,25'),
(18, '18', '25,25,75,75,50,75'),
(19, '19', '25,50,75,50,50,25'),
(20, '20', '75,75,50,25,50,75'),
(21, '21', '25,25,50,75,50,25'),
(22, '22', '75,75,25,25,25,50'),
(23, '23', '75,25,25,25,75,25'),
(24, '24', '25,25,50,25,25,25'),
(25, '25', '25,25,75,50,100,100'),
(26, '26', '50,25,25,50,75,75'),
(27, '27', '25,75,50,100,25,75'),
(28, '28', '25,75,75,75,50,75'),
(29, '29', '75,75,50,25,25,25'),
(30, '30', '25,25,50,75,75,100');

-- --------------------------------------------------------

--
-- Table structure for table `satukan`
--

CREATE TABLE `satukan` (
  `id` int(5) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satukan`
--

INSERT INTO `satukan` (`id`, `data`) VALUES
(1, '25,75,25,25,50,25,25,75,75,25,75,25,25,25,25,50,75,75,50,100,100,25,25,25,75,50,25,25,25,25,'),
(2, '25,75,75,75,25,25,25,25,75,25,75,50,25,25,75,50,50,100,50,50,25,100,25,50,50,75,25,25,100,25,'),
(3, '25,75,25,'),
(4, '75,25,25,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `centroid`
--
ALTER TABLE `centroid`
  ADD PRIMARY KEY (`id_centroid`);

--
-- Indexes for table `diagram`
--
ALTER TABLE `diagram`
  ADD PRIMARY KEY (`id_diagram`);

--
-- Indexes for table `diagram_centroid`
--
ALTER TABLE `diagram_centroid`
  ADD PRIMARY KEY (`id_diagram_centroid`);

--
-- Indexes for table `objek`
--
ALTER TABLE `objek`
  ADD PRIMARY KEY (`id_objek`);

--
-- Indexes for table `satukan`
--
ALTER TABLE `satukan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `centroid`
--
ALTER TABLE `centroid`
  MODIFY `id_centroid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `diagram`
--
ALTER TABLE `diagram`
  MODIFY `id_diagram` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `diagram_centroid`
--
ALTER TABLE `diagram_centroid`
  MODIFY `id_diagram_centroid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `objek`
--
ALTER TABLE `objek`
  MODIFY `id_objek` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `satukan`
--
ALTER TABLE `satukan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
