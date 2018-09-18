-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2018 at 10:39 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inputan_ta`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataformulir`
--

CREATE TABLE `dataformulir` (
  `nim` int(30) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `fakultas` varchar(30) DEFAULT NULL,
  `jeniskelamin` varchar(30) DEFAULT NULL,
  `foto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataformulir`
--

INSERT INTO `dataformulir` (`nim`, `nama`, `fakultas`, `jeniskelamin`, `foto`) VALUES
(0, 'Irvin', 'FIT', 'Laki-laki', 'photos/1sushi.jpg'),
(2147483647, 'Fadil', 'FIT', 'Laki-laki', 'photos/4ramen.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
