-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 25, 2015 at 01:06 
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_kmeans`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
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

CREATE TABLE IF NOT EXISTS `centroid` (
  `id_centroid` int(5) NOT NULL,
  `data_centroid` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `centroid`
--

INSERT INTO `centroid` (`id_centroid`, `data_centroid`) VALUES
(12, '250,130'),
(11, '125,90');

-- --------------------------------------------------------

--
-- Table structure for table `diagram`
--

CREATE TABLE IF NOT EXISTS `diagram` (
  `id_diagram` int(5) NOT NULL,
  `x` text NOT NULL,
  `y` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagram`
--

INSERT INTO `diagram` (`id_diagram`, `x`, `y`) VALUES
(1, '8.08,', ''),
(2, '8.08,', ''),
(3, '57.45,', ''),
(4, '308.16,', ''),
(5, '290.81,', ''),
(6, '56.93,', ''),
(7, '21.60,', ''),
(8, '12.10,', ''),
(9, '153.49,', ''),
(10, '547.78,', ''),
(11, '287.81,', ''),
(12, '', '0,'),
(13, '', '0,'),
(14, '', '40.27,'),
(15, '', '166.51,'),
(16, '', '193.39,'),
(17, '', '0,'),
(18, '', '17.31,'),
(19, '', '2.56,'),
(20, '', '99.63,'),
(21, '', '443.33,'),
(22, '', '180.68,');

-- --------------------------------------------------------

--
-- Table structure for table `diagram_centroid`
--

CREATE TABLE IF NOT EXISTS `diagram_centroid` (
  `id_diagram_centroid` int(5) NOT NULL,
  `x` varchar(255) NOT NULL,
  `y` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagram_centroid`
--

INSERT INTO `diagram_centroid` (`id_diagram_centroid`, `x`, `y`) VALUES
(1, '250,', ''),
(2, '125,', ''),
(3, '', '130,'),
(4, '', '90,');

-- --------------------------------------------------------

--
-- Table structure for table `objek`
--

CREATE TABLE IF NOT EXISTS `objek` (
  `id_objek` int(5) NOT NULL,
  `nama_objek` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `objek`
--

INSERT INTO `objek` (`id_objek`, `nama_objek`, `data`) VALUES
(1, 'Torabika Moka', '287.81,180.68'),
(2, 'Torabika Cappucino', '547.78,443.33'),
(3, 'Energen Vanila', '153.49,99.63'),
(4, 'Torabika Jahe Susu', '12.10,2.56'),
(5, 'Kopiko Brown Coffee', '21.60,17.31'),
(6, 'Kopiko White Cofee', '56.93,0'),
(7, 'Energen Coklat', '290.81,193.39'),
(8, 'Energen Kacang Hijau', '308.16,166.51'),
(9, 'Energen Jahe', '57.45,40.27'),
(10, 'Energen Banana', '8.08,0'),
(11, 'Energen Strauwbery', '8.08,0');

-- --------------------------------------------------------

--
-- Table structure for table `satukan`
--

CREATE TABLE IF NOT EXISTS `satukan` (
  `id` int(5) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satukan`
--

INSERT INTO `satukan` (`id`, `data`) VALUES
(1, '8.08,8.08,57.45,308.16,290.81,56.93,21.60,12.10,153.49,547.78,287.81,'),
(2, '0,0,40.27,166.51,193.39,0,17.31,2.56,99.63,443.33,180.68,'),
(3, '250,125,'),
(4, '130,90,');

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
  MODIFY `id_centroid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `diagram`
--
ALTER TABLE `diagram`
  MODIFY `id_diagram` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `diagram_centroid`
--
ALTER TABLE `diagram_centroid`
  MODIFY `id_diagram_centroid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `objek`
--
ALTER TABLE `objek`
  MODIFY `id_objek` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `satukan`
--
ALTER TABLE `satukan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
