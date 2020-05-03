-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2020 at 11:55 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metrobank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `acc_type` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `acc_id`, `cust_id`, `acc_type`, `balance`) VALUES
(1, 'A0001', 'cs003', 'Fixed', 60000),
(2, 'A002', 'cs005', 'Saving', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branch` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch`) VALUES
(1, 'Aluthgama'),
(2, 'Bentota');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `firstName`, `lastName`, `street`, `city`, `branch`, `phone`) VALUES
(1, 'cs001', 'shashika', 'udara', 'alwis', 'bentota', 'Aluthgama', '0789789434'),
(3, 'cs002', 'sashika', 'udara', 'dggds', 'fhfgdsg', 'Aluthgama', '078942355'),
(4, 'cs003', 'shashika', 'askdfsa', 'vfafsa', 'asfsafd', 'Aluthgama', 'asfdsad'),
(5, 'cs004', 'jshfdahfjahf', 'afsafsas', 'fsasa', 'afasfsa', 'Aluthgama', '0703837903'),
(6, 'cs005', 'ssashika', 'uadara', 'dfdfa', 'asa', 'Bentota', '0703837903');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `acc_id`, `cust_id`, `date`, `balance`, `deposit`) VALUES
(1, 'A0001', 'cs003', '2020/05/02', 5000, 500),
(2, 'A0001', 'cs003', '2020/05/02', 5000, 500),
(3, 'A0001', 'cs003', '2020/05/02', 5000, 500),
(4, 'A0001', 'cs003', '2020/05/02', 5500, 500),
(5, 'A0001', 'cs003', '2020/05/02', 6000, 1000),
(6, 'A0001', 'cs003', '2020/05/02', 7000, 5000),
(7, 'A0001', 'cs003', '2020/05/02', 12000, 1000),
(8, 'A0001', 'cs003', '2020/05/02', 13000, 1000),
(9, 'A0001', 'cs003', '2020/05/02', 14000, 1000),
(10, 'A0001', 'cs003', '2020/05/02', 15000, 1000),
(11, 'A0001', 'cs003', '2020/05/02', 15000, 1000),
(12, 'A0001', 'cs003', '2020/05/02', 15000, 1000),
(13, 'A0001', 'cs003', '2020/05/02', 15000, 1000),
(14, 'A0001', 'cs003', '2020/05/02', 19000, 1000),
(15, 'A0001', 'cs003', '2020/05/02', 20000, 100),
(16, 'A0001', 'cs003', '2020/05/02', 20100, 100),
(17, 'A0001', 'cs003', '2020/05/02', 20200, 100),
(18, 'A0001', 'cs003', '2020/05/02', 20200, 100),
(19, 'A0001', 'cs003', '2020/05/02', 20200, 100),
(20, 'A0001', 'cs003', '2020/05/02', 20200, 100),
(21, 'A0001', 'cs003', '2020/05/02', 20600, 1000),
(22, 'A0001', 'cs003', '2020/05/02', 20600, 1000),
(23, 'A0001', 'cs003', '2020/05/02', 22600, 1000),
(24, 'A0001', 'cs003', '2020/05/02', 23600, 1000),
(25, 'A0001', 'cs003', '2020/05/02', 24600, 100),
(26, 'A0001', 'cs003', '2020/05/02', 24700, 1000),
(27, 'A0001', 'cs003', '2020/05/02', 10000, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user_name`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `transefer`
--

CREATE TABLE `transefer` (
  `id` int(11) NOT NULL,
  `from_account` varchar(255) NOT NULL,
  `to_account` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transefer`
--

INSERT INTO `transefer` (`id`, `from_account`, `to_account`, `amount`) VALUES
(1, 'A0001', 'A002', 5000),
(2, 'A0001', 'A002', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `balance` int(11) NOT NULL,
  `withdraw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `acc_id`, `cust_id`, `date`, `balance`, `withdraw`) VALUES
(1, 'A0001', 'cs003', '2020-05-02', 25700, 700),
(2, 'A0001', 'cs003', '2020-05-02', 20000, 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transefer`
--
ALTER TABLE `transefer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transefer`
--
ALTER TABLE `transefer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
