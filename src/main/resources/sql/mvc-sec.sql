-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2016 at 07:11 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc-sec`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id_employee` bigint(20) NOT NULL,
  `birth_date` datetime DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id_employee`, `birth_date`, `first_name`, `last_name`) VALUES
(1, '1987-06-16 00:00:00', 'ali', 'ali'),
(2, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(3, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(4, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(5, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(6, '1987-06-16 00:00:00', 'ali', 'ali'),
(7, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(8, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(9, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(10, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(11, '1987-06-16 00:00:00', 'ali', 'ali'),
(12, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(13, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(14, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(15, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(16, '1987-06-16 00:00:00', 'ali', 'ali'),
(17, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(18, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(19, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(20, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(21, '1987-06-16 00:00:00', 'ali', 'ali'),
(22, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(23, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(24, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(25, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(26, '1987-06-16 00:00:00', 'ali', 'ali'),
(27, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(28, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(29, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(30, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(31, '1987-06-16 00:00:00', 'ali', 'ali'),
(32, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(33, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(34, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(35, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(36, '1987-06-16 00:00:00', 'ali', 'ali'),
(37, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(38, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(39, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(40, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(41, '1987-06-16 00:00:00', 'ali', 'ali'),
(42, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(43, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(44, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(45, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(46, '1987-06-16 00:00:00', 'ali', 'ali'),
(47, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(48, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(49, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(50, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(51, '1987-06-16 00:00:00', 'ali', 'ali'),
(52, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(53, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(54, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(55, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(56, '1987-06-16 00:00:00', 'ali', 'ali'),
(57, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(58, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(59, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(60, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(61, '1987-06-16 00:00:00', 'ali', 'ali'),
(62, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(63, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(64, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(65, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(66, '1987-06-16 00:00:00', 'ali', 'ali'),
(67, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(68, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(69, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(70, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(71, '1987-06-16 00:00:00', 'ali', 'ali'),
(72, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(73, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(74, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(75, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(76, '1987-06-16 00:00:00', 'ali', 'ali'),
(77, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(78, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(79, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(80, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(81, '1987-06-16 00:00:00', 'ali', 'ali'),
(82, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(83, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(84, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(85, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(86, '1987-06-16 00:00:00', 'ali', 'ali'),
(87, '1987-06-16 00:00:00', 'mohamed', 'mohamed'),
(88, '1987-06-16 00:00:00', 'saleh', 'saleh'),
(89, '1987-06-16 00:00:00', 'salwa', 'salwa'),
(90, '1987-06-16 00:00:00', 'yosra', 'yosra'),
(91, '2016-10-26 00:00:00', 'aaaaaaa', 'aaaaaaaaaaaaaaa'),
(92, '2016-10-19 00:00:00', 'aaaaaaaaaa', 'aaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role`, `description`) VALUES
('admin', NULL),
('chef', NULL),
('employee', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `active`) VALUES
('admin', '123', b'1'),
('chef1', '123', b'1'),
('emp1', '123', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_username` varchar(255) NOT NULL,
  `roles_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_username`, `roles_role`) VALUES
('admin', 'admin'),
('admin', 'chef'),
('chef1', 'chef'),
('emp1', 'employee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_employee`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FK9bxfby7rpenikksf47nelxdbt` (`roles_role`),
  ADD KEY `FK1y8kc6nr793297gijoc5t5qmx` (`user_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id_employee` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FK1y8kc6nr793297gijoc5t5qmx` FOREIGN KEY (`user_username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `FK9bxfby7rpenikksf47nelxdbt` FOREIGN KEY (`roles_role`) REFERENCES `role` (`role`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
