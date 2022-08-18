-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2020 at 12:43 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiry_id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `address` varchar(500) NOT NULL,
  `enquiry_dt` date NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`enquiry_id`, `name`, `phone`, `email`, `address`, `enquiry_dt`, `dt`) VALUES
(4, 'Swami Panjala', '9096622683', 'swami@elitesoftwares.co.in', 'Pune', '2019-10-06', '2019-10-06 15:56:31'),
(6, 'Rahul Patil', '9090909090', 'info@elitesoftwares.co.in', 'Pune', '2019-10-06', '2019-10-06 15:57:36'),
(7, 'Pooja Jadhav', '9096622683', 'pooja@gmail.com', 'Pune', '2019-10-06', '2019-10-06 16:11:26'),
(8, 'Adarsh Dubey', '9096622683', 'swami@elitesoftwares.co.in', 'Pune', '2019-10-07', '2019-10-07 07:53:45'),
(9, 'Vikas', '9096622683', 'info@elitesoftwares.co.in', '6, Kusai Market Buidling, Karve Nagar', '2019-10-07', '2019-10-07 08:00:25'),
(10, 'Yash Deshpande', '1234567890', 'swami@elitesoftwares.co.in', '6, Kusai Market Buidling, Karve Nagar', '2020-01-17', '2020-02-12 11:13:22'),
(11, 'Swami Panjala', '9096622683', 'swami@elitesoftwares.co.in', '6, Kusai Market Buidling, Karve Nagar', '2020-02-12', '2020-02-12 11:14:52'),
(12, 'Poonam Patil', '1234567890', '', 'Pune', '2020-02-13', '2020-02-13 06:15:21'),
(13, 'Vinit Jadhav', '7777777779', 'swami@elitesoftwares.co.in', '6, Kusai Market Buidling, Karve Nagar', '2020-03-06', '2020-03-06 07:15:18'),
(14, 'Pratik Jadhav', '7777777777', '', 'Pune', '2020-09-19', '2020-09-19 12:41:06'),
(15, 'Priti', '9096622683', 'priti@gmail.com', 'Pune', '2020-09-21', '2020-09-21 10:44:10'),
(16, 'Swami Panjala', '9096622683', 'swami@elitesoftwares.co.in', '6, Kusai Market Buidling, Karve Nagar', '2020-09-21', '2020-09-21 11:03:17'),
(17, 'test', '9096622683', 'swami@elitesoftwares.co.in', '6, Kusai Market Buidling, Karve Nagar', '2020-09-21', '2020-09-21 11:26:10'),
(18, 'Swami Panjala', '9096622683', 'swami@elitesoftwares.co.in', '6, Kusai Market Buidling, Karve Nagar', '2020-09-21', '2020-09-21 12:23:26'),
(19, 'test2', '9096622683', 'swami@elitesoftwares.co.in', '6, Kusai Market Buidling, Karve Nagar', '2020-09-21', '2020-09-21 12:23:59'),
(20, 'Swami Panjala', '9096622683', 'swami@elitesoftwares.co.in', '6, Kusai Market Buidling, Karve Nagar', '2020-09-23', '2020-09-23 13:16:58'),
(21, 'Swami Panjala', '7777777777', 'swami@elitesoftwares.co.in', 'Pune', '2020-09-23', '2020-09-23 13:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('1','2') NOT NULL DEFAULT '1',
  `db_add_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `db_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `user_type`, `db_add_date`, `db_update_date`) VALUES
(1, '9096622683', '123', '1', '2018-10-26 09:45:27', '2018-10-26 09:45:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiry_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
