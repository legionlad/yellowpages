-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 08:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yellowpages`
--
CREATE DATABASE IF NOT EXISTS `yellowpages` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `yellowpages`;

-- --------------------------------------------------------

--
-- Table structure for table `postal_codes`
--

CREATE TABLE `postal_codes` (
  `PostalCodeID` int(11) NOT NULL,
  `PostalCode` int(11) NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT current_timestamp(),
  `Latitude` varchar(45) NOT NULL,
  `Longitude` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `AreaName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postal_codes`
--

INSERT INTO `postal_codes` (`PostalCodeID`, `PostalCode`, `CreatedAt`, `Latitude`, `Longitude`, `Country`, `AreaName`) VALUES
(1, 93047, '2021-02-19 19:27:26', '490179419', '1016268', 'Germany', 'Regensburg');

-- --------------------------------------------------------

--
-- Table structure for table `streets`
--

CREATE TABLE `streets` (
  `IDMain` int(11) NOT NULL,
  `PostalCodeID` int(11),
  `Latitude` varchar(255) NOT NULL DEFAULT '0',
  `Longitude` varchar(255) NOT NULL DEFAULT '0',
  `StreetName` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `streets`
--

INSERT INTO `streets` (`IDMain`, `PostalCodeID`, `Latitude`, `Longitude`, `StreetName`, `created_at`) VALUES
(1, 1, '9940382', '12083698', 'Gertrud-von-le-Fort-Straße', '2021-02-19 19:28:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `postal_codes`
--
ALTER TABLE `postal_codes`
  ADD PRIMARY KEY (`PostalCodeID`);

--
-- Indexes for table `streets`
--
ALTER TABLE `streets`
  ADD PRIMARY KEY (`IDMain`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `postal_codes`
--
ALTER TABLE `postal_codes`
  MODIFY `PostalCodeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `streets`
--
ALTER TABLE `streets`
  MODIFY `IDMain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
