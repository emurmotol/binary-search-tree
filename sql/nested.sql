-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 05:47 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nested`
--
CREATE DATABASE IF NOT EXISTS `nested` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `nested`;

-- --------------------------------------------------------

--
-- Table structure for table `nested_category`
--

DROP TABLE IF EXISTS `nested_category`;
CREATE TABLE IF NOT EXISTS `nested_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nested_category`
--

INSERT INTO `nested_category` (`category_id`, `name`, `lft`, `rgt`) VALUES
(1, 'ELECTRONICS', 1, 20),
(2, 'TELEVISIONS', 2, 9),
(3, 'TUBE', 3, 4),
(4, 'LCD', 5, 6),
(5, 'PLASMA', 7, 8),
(6, 'PORTABLE ELECTRONICS', 10, 19),
(7, 'MP3 PLAYERS', 11, 14),
(8, 'FLASH', 12, 13),
(9, 'CD PLAYERS', 15, 16),
(10, '2 WAY RADIOS', 17, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nested_category`
--
ALTER TABLE `nested_category`
  ADD PRIMARY KEY (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nested_category`
--
ALTER TABLE `nested_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
