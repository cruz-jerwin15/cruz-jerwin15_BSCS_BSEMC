-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 05, 2025 at 11:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`id`, `department_name`, `status`) VALUES
(1, 'Dev Ops', 'ACTIVE'),
(2, 'QA', 'ACTIVE'),
(3, 'Managerial', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `position_id` int(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `date_hired` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`id`, `firstname`, `lastname`, `position_id`, `gender`, `salary`, `date_hired`, `status`) VALUES
(1, 'Jerwin', 'Cruz', 1, 'M', 60000.00, '2018-06-30', 'ACTIVE'),
(2, 'Peter', 'Parker', 2, 'M', 65000.00, '2011-12-02', 'ACTIVE'),
(3, 'Tony', 'Stark', 2, 'M', 102000.00, '2002-02-01', 'ACTIVE'),
(4, 'Natasha', 'Romanoff', 4, 'F', 70000.00, '2015-10-24', 'ACTIVE'),
(5, 'Wanda', 'Maximoff', 3, 'F', 48000.00, '2016-09-25', 'ACTIVE'),
(6, 'Steve', 'Rogers', 1, 'M', 58000.00, '2017-07-25', 'ACTIVE'),
(7, 'Stephen', 'Strange', 5, 'M', 52000.00, '2013-08-25', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_positions`
--

CREATE TABLE `tbl_positions` (
  `id` int(11) NOT NULL,
  `position_name` varchar(50) NOT NULL,
  `department_id` int(11) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_positions`
--

INSERT INTO `tbl_positions` (`id`, `position_name`, `department_id`, `status`) VALUES
(1, 'Junior Developer', 1, 'ACTIVE'),
(2, 'Senior Developer', 1, 'ACTIVE'),
(3, 'Junior QA', 2, 'ACTIVE'),
(4, 'Senior QA', 2, 'ACTIVE'),
(5, 'Technical Manager', 3, 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_positions`
--
ALTER TABLE `tbl_positions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_positions`
--
ALTER TABLE `tbl_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
