-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2019 at 09:58 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `allinvoices`
--

CREATE TABLE `allinvoices` (
  `invoice_no` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `c_s_id` varchar(10) NOT NULL,
  `c_s_name` varchar(50) NOT NULL,
  `total` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allinvoices`
--

INSERT INTO `allinvoices` (`invoice_no`, `date`, `time`, `c_s_id`, `c_s_name`, `total`) VALUES
('INO-001', '2018-01-16', '13:01:00', 'C-005', 'Deepen', 471),
('INO-002', '2018-01-16', '13:13:00', 'C-001', 'Sandeep', 411),
('INO-003', '2018-01-16', '13:23:00', 'C-001', 'Sandeep', 468),
('INO-004', '2018-01-16', '14:48:00', 'C-002', 'nitesh', 255),
('INO-005', '2018-01-17', '10:49:00', 'C-007', 'Bewkoof Admi', 444),
('INO-007', '2018-01-19', '15:10:00', 'C-007', 'Bewkoof Admi', 854),
('INO-008', '2018-02-01', '09:49:00', 'C-001', 'Sandeep', 83);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `c_id` varchar(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `mob` varchar(10) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`c_id`, `name`, `mob`, `email`, `address`, `city`, `state`) VALUES
('C-001', 'Sandeep', '8776655443', 'xyz@abc.com', 'chandpaa', 'hathras', 'up'),
('C-002', 'nitesh', '8865812464', 'adjhckn@mwjszdx', 'nuuxhew', 'mxeuh', 'xnuwe'),
('C-003', 'koi nhi', '7867564534', 'kuch@nhi', 'khin ka nhi', 'ptaa nhi', 'btate nhi'),
('C-004', 'bekar admi', '7896785670', 'bekar@ghtiya.com', 'gndii jgh', '', ''),
('C-005', 'Deepen', '9887766554', '', 'aligarh kaa hai', 'Aligarh', 'up'),
('C-006', 'Hitesh', '9182736455', '', 'khin ka nii', 'Aligarh', 'up');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `hsn` int(10) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `unit` varchar(5) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `gst` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`code`, `hsn`, `name`, `unit`, `stock`, `price`, `discount`, `gst`) VALUES
('I-001', 12345678, 'Faltu ki chiiz', 'pck', 20, '30.00', '5.00', 5),
('I-002', 678547, 'Kuch nhi', 'mtr', 50, '400.00', '20.00', 18),
('I-003', 78439792, 'Sab Kuch', 'kg', 25, '35.00', '10.00', 5),
('I-004', 65656767, 'Bas aese hi', 'kg', 50, '200.00', '5.00', 5),
('I-005', 45565677, 'Ek or chiiz', 'ltr', 25, '130.00', '0.00', 12),
('I-006', 23344556, 'Bada Item', 'pcs', 15, '85.00', '0.00', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orgdetails`
--

CREATE TABLE `orgdetails` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gstin` varchar(15) NOT NULL,
  `mob` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orgdetails`
--

INSERT INTO `orgdetails` (`id`, `name`, `gstin`, `mob`, `email`, `address`, `city`, `state`, `username`, `password`) VALUES
(1, 'Jindal textiles', 'ALIEFHWQ0293', '8630980413', 'jindaltxtiles@gmail.com', 'Agra', 'Agra', 'UP', 'username', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `s_id` varchar(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `mob` varchar(10) DEFAULT NULL,
  `gstin` varchar(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allinvoices`
--
ALTER TABLE `allinvoices`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `mob` (`mob`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `orgdetails`
--
ALTER TABLE `orgdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `mob` (`mob`),
  ADD UNIQUE KEY `gstin` (`gstin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orgdetails`
--
ALTER TABLE `orgdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
