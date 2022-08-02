-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2022 at 12:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spa`
--

-- --------------------------------------------------------

--
-- Table structure for table `expensetb`
--

CREATE TABLE `expensetb` (
  ` id` int(11) NOT NULL,
  `daily expenses` varchar(50) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` int(20) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expensetb`
--

INSERT INTO `expensetb` (` id`, `daily expenses`, `quantity`, `price`, `comment`, `branch`, `date`) VALUES
(1, 'Tea', 2, 10, 'good', '', '2022-02-16'),
(2, '', 0, 0, '', '', '0000-00-00'),
(3, '', 0, 0, '', '', '0000-00-00'),
(4, 'Birthday', 10, 4566, 'nice', '', '2022-03-05'),
(5, 'Snacks', 4, 100, 'nice', '', '2022-03-09'),
(6, 'Other', 2, 200, 'ok', '', '2022-03-09'),
(7, 'Tea', 10, 234, 'read', '', '2022-03-10'),
(8, 'Tea', 10, 4566, 'good', '', '2022-03-09'),
(9, 'Stationary', 2, 100, 'good', '', '2022-03-08'),
(10, 'Birthday', 2, 4566, 'good', '', '2022-03-11'),
(11, 'Other', 2, 100, 'good', 'PCM', '2022-03-05'),
(12, 'Stationary', 6, 123, 'ok', 'bluebeery', '2022-03-06');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Id` int(10) NOT NULL,
  `branch` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UserName`, `Password`, `Name`, `Id`, `branch`) VALUES
('admin@admin.com', 'admin', 'admin', 1, 'pune'),
('superadmin@admin.com', 'admin', 'super admin', 2, 'satara');

-- --------------------------------------------------------

--
-- Table structure for table `therapisttb`
--

CREATE TABLE `therapisttb` (
  `Customer Id` int(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Mobile number` int(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Dob` date NOT NULL,
  `branch` varchar(50) NOT NULL,
  `Register date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `therapisttb`
--

INSERT INTO `therapisttb` (`Customer Id`, `Name`, `Mobile number`, `Email`, `Address`, `Dob`, `branch`, `Register date`) VALUES
(1, 'shivani', 2147483647, 'shivane@gmail.com', 'warje', '2022-02-10', '', '2028-02-22'),
(2, 'raj', 2147483647, 'raj@gmail.com', 'warje', '2022-02-10', '', '2028-02-22'),
(3, 'raj', 2147483647, 'raj@gmail.com', 'warje', '2022-02-23', '', '2028-02-22'),
(4, 'raj', 2147483647, 'raj@gmail.com', 'waref', '2022-03-08', 'PCM', '2003-03-22'),
(5, 'raj', 2147483647, 'raj@gmail.com', 'warjeee', '2022-03-18', 'bluebeery', '2003-03-22'),
(6, 'raj', 2147483647, 'raj@gmail.com', 'cbgfng', '2022-03-12', 'divi', '2003-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `treat`
--

CREATE TABLE `treat` (
  `id` int(10) NOT NULL,
  `from1` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `therapist` varchar(40) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `therapy` varchar(50) NOT NULL,
  `time` varchar(10) NOT NULL,
  `meeting_time` varchar(10) NOT NULL,
  `meeting_time1` varchar(10) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `amount` int(20) NOT NULL,
  `discount` int(20) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treat`
--

INSERT INTO `treat` (`id`, `from1`, `first_name`, `last_name`, `dob`, `email`, `gender`, `therapist`, `branch`, `phone_number`, `address`, `therapy`, `time`, `meeting_time`, `meeting_time1`, `payment`, `amount`, `discount`, `date`) VALUES
(203, 'Radhika', 'raveena', 'rass', '2022-03-16', 'raj@gmail.com', 'female', 'raj', '', 2147483647, 'warje', 'Specific Massage: Head & Shoulder', '60 min', '21:10', '23:10', '1', 1500, 10, '03/03/22'),
(204, 'Radhika', 'yank', 'yash', '2022-03-10', 'yank@gmail.com', 'female', 'raj', '', 2147483647, 'warje', 'Swedish/Scrubs/Polish', '60 min', '12:36', '16:37', '1', 1500, 5, '05/03/22'),
(205, 'Radhika', 'adc', 'Singh', '0004-04-04', 'adc@adc.com', 'female', 'shivani', '', 2147483647, 'shivane', 'Traditional Thai Massage(Dry Massage)', '60 min', '15:39', '16:35', '1', 1500, 2, '08/03/22'),
(206, 'Tanu', 'raj', 'rani', '2022-04-07', 'raj@gmail.com', 'male', 'raj', 'pune', 2147483647, 'fghjkjhg', 'Gel Therapy Massage', '60 min', '18:10', '18:10', '1', 1500, 6, '08/03/22'),
(207, 'Tanu', 'raveena', 'rani', '2022-03-03', 'test@gmail.com', 'male', 'raj', 'pune', 535546464, 'gdfbfbfbf', 'Deep Tissue Massage', '60 min', '15:14', '21:13', '1', 1500, 3, '08/03/22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expensetb`
--
ALTER TABLE `expensetb`
  ADD PRIMARY KEY (` id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `therapisttb`
--
ALTER TABLE `therapisttb`
  ADD PRIMARY KEY (`Customer Id`);

--
-- Indexes for table `treat`
--
ALTER TABLE `treat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expensetb`
--
ALTER TABLE `expensetb`
  MODIFY ` id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `therapisttb`
--
ALTER TABLE `therapisttb`
  MODIFY `Customer Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `treat`
--
ALTER TABLE `treat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
