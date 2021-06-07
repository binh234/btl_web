-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 02:46 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vin_data`
--

CREATE DATABASE `vin_data`;
USE `vin_data`;

-- --------------------------------------------------------

--
-- Table structure for table `getnews`
--

CREATE TABLE `getnews` (
  `id` int(11) NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `level`) VALUES
(1, 'Phan Đình Sự', 'e10adc3949ba59abbe56e057f20f883e', 'dinhsu081@gmail.com', 'manager'),
(10, 'Đình Sự', 'e10adc3949ba59abbe56e057f20f883e', 'suphan081@gmail.com', 'member'),
(11, 'Nguyễn Văn A', 'e10adc3949ba59abbe56e057f20f883e', 'nhi123hin@gmail.com', 'admin'),
(15, 'suphan081', '202cb962ac59075b964b07152d234b70', 'badaohcm123@gmail.com', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `year` year(4) DEFAULT NULL,
  `phone` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `email`, `username`, `year`, `phone`, `address`) VALUES
(1, 'dinhsu081@gmail.com', 'Phan Đình Sự', NULL, '', ''),
(10, 'suphan081@gmail.com', 'Đình Sự', 2001, '123456', 'TP.HCM'),
(11, 'nhi123hin@gmail.com', 'Nguyễn Văn A', 2000, '123456', 'HCM'),
(15, 'badaohcm123@gmail.com', 'suphan081', NULL, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `getnews`
--
ALTER TABLE `getnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `getnews`
--
ALTER TABLE `getnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
