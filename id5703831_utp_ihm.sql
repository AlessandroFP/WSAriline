-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2018 at 06:09 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id5666072_imh`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`id`, `name`) VALUES
(1, 'Avianca'),
(2, 'Peruvian');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `username`, `password`, `name`, `address`) VALUES
(1, 'banner', '123456', 'Banner Gonzales', 'Av Nicolas'),
(2, 'Alessandro', '123456', 'Alessandro', 'Lince');

-- --------------------------------------------------------

--
-- Table structure for table `cli_des`
--

CREATE TABLE `cli_des` (
  `id` int(11) NOT NULL,
  `id_cli` int(11) NOT NULL,
  `id_des` int(11) NOT NULL,
  `purchase_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cli_des`
--

INSERT INTO `cli_des` (`id`, `id_cli`, `id_des`, `purchase_date`) VALUES
(1, 1, 3, '2018-06-12 23:16:08'),
(2, 1, 1, '2018-06-12 23:21:03'),
(3, 1, 1, '2018-06-14 01:33:41'),
(4, 1, 1, '2018-06-14 01:42:52'),
(5, 1, 3, '2018-07-08 22:45:30'),
(6, 1, 3, '2018-07-08 22:58:40'),
(7, 1, 1, '2018-07-08 22:58:56'),
(8, 1, 1, '2018-07-11 16:52:41'),
(9, 1, 1, '2018-07-11 21:01:09'),
(10, 1, 1, '2018-07-11 23:51:51'),
(11, 1, 3, '2018-07-12 00:32:40'),
(12, 2, 1, '2018-07-12 00:59:52'),
(13, 1, 3, '2018-07-12 01:38:36'),
(14, 2, 1, '2018-07-12 01:39:09'),
(15, 2, 1, '2018-07-12 01:42:47'),
(16, 2, 3, '2018-07-12 01:43:18'),
(17, 2, 3, '2018-07-12 01:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(11) NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `idtipo` int(11) NOT NULL,
  `idairline` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `destination`, `date`, `price`, `idtipo`, `idairline`, `image`) VALUES
(1, 'Dubai', '2018-06-21', 20, 1, 1, 'dubai'),
(2, 'Mancora', '2018-06-13', 20, 2, 1, 'mancora'),
(3, 'Peru', '2018-06-30', 4000, 2, 2, 'peru');

-- --------------------------------------------------------

--
-- Table structure for table `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tipo`
--

INSERT INTO `tipo` (`id`, `tipo`) VALUES
(1, 'Ida y Vuelta'),
(2, 'Ida');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cli_des`
--
ALTER TABLE `cli_des`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cli_des`
--
ALTER TABLE `cli_des`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
