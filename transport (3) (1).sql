-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2023 at 11:04 AM
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
-- Database: `transport`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_details`
--

CREATE TABLE `bus_details` (
  `bId` int(11) NOT NULL,
  `bus_id` varchar(15) NOT NULL,
  `routes` varchar(100) NOT NULL,
  `total_seats` int(11) NOT NULL,
  `available_seats` int(11) NOT NULL,
  `occupied_seats` int(11) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `driver_contact` int(11) NOT NULL,
  `busInChargeID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`bId`, `bus_id`, `routes`, `total_seats`, `available_seats`, `occupied_seats`, `driver_name`, `driver_contact`, `busInChargeID`) VALUES
(1, 'b101', 'tambaram', 52, 3, 49, 'perumal', 123456789, 'bi1234'),
(2, 'b102', 'Ennore', 60, 8, 52, 'maniratnam', 35475893, 'bi1235'),
(3, 'b103', 'MR Nagar', 58, -1, 59, 'venkatesh', 34463832, 'bi1236'),
(4, 'b601', 'light house', 60, 48, 10, 'Sudheep', 2147483647, 'bi264'),
(6, 'b201', 'vellore', 60, 50, 8, 'velan', 65432896, 'bi997'),
(7, 'b202', 'chennai', 60, 50, 8, 'velan', 65432896, 'bi998'),
(14, 'b504', 'chettiped', 60, 53, 5, 'Xalen', 1234567898, 'bi555'),
(15, 'b200', 'Kadapa', 60, 54, 4, 'Kamalesh', 2147483647, 'bi612'),
(16, '2', 'd', 3, 3, 3, 'did', 222, 'e3');

-- --------------------------------------------------------

--
-- Table structure for table `bus_request`
--

CREATE TABLE `bus_request` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_request`
--

INSERT INTO `bus_request` (`id`, `type`, `amount`, `status`) VALUES
(1, 'bus fee', 40000.00, 0),
(2, 'one-day', 30.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bus_requests`
--

CREATE TABLE `bus_requests` (
  `id` int(11) NOT NULL,
  `did` int(11) NOT NULL DEFAULT 1,
  `student_id` varchar(30) DEFAULT NULL,
  `busId` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `date` date NOT NULL DEFAULT current_timestamp(),
  `paymentstatus` int(11) NOT NULL,
  `ReferenceId` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_requests`
--

INSERT INTO `bus_requests` (`id`, `did`, `student_id`, `busId`, `status`, `date`, `paymentstatus`, `ReferenceId`) VALUES
(2, 1, 'st1224', 'b101', 'Accepted', '2023-11-17', 0, ''),
(3, 1, 'f1223', 'b101', 'Accepted', '2023-09-16', 0, ''),
(34, 1, 'st5678', 'b601', 'Accepted', '2023-10-01', 0, ''),
(35, 1, 'st1234', 'b601', 'Accepted', '2023-10-11', 0, ''),
(37, 1, 'f321', 'b101', 'Accepted', '2023-10-17', 0, ''),
(80, 1, 'stgp718', 'b103', 'Accepted', '2023-11-17', 0, ''),
(82, 1, 'stgp718', 'b103', 'Accepted', '2023-11-17', 0, ''),
(83, 1, 'st1224', 'b101', 'pending', '2023-11-17', 0, ''),
(85, 1, 'stgp718', 'b102', 'pending', '2023-12-13', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `day_request`
--

CREATE TABLE `day_request` (
  `id` int(11) NOT NULL,
  `did` int(11) NOT NULL DEFAULT 2,
  `student_id` varchar(30) NOT NULL,
  `busId` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending',
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `day_request`
--

INSERT INTO `day_request` (`id`, `did`, `student_id`, `busId`, `status`, `date`) VALUES
(19, 2, 'st5678', 'b101', 'accepted', '2023-10-01'),
(20, 2, 'sd123', 'b102', 'accepted', '2023-10-01'),
(21, 2, 'st997', 'b101', 'pending', '2023-10-04'),
(24, 2, 'st1224', 'b101', 'accepted', '2023-10-11'),
(26, 2, 'st5678', 'b101', 'accepted', '2023-10-12'),
(27, 2, 'f1223', 'b101', 'Accepted', '2023-10-26'),
(28, 2, 'stgp718', 'b101', 'pending', '2023-10-14'),
(30, 2, 'stgp718', 'b101', 'Accepted', '2023-10-17'),
(31, 2, 'st997', 'b101', 'pending', '2023-10-17'),
(32, 2, 'stgp718', 'b101', 'Accepted', '2023-10-23'),
(34, 2, 'stgp718', 'b101', 'Rejected', '2023-10-19'),
(35, 2, 'st5678', 'b101', 'Accepted', '2023-10-19'),
(36, 2, 'stgp718', 'b101', 'Accepted', '2023-11-18'),
(44, 2, 'f1223', 'b101', 'pending', '2023-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `dId` int(11) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `dId`, `type`) VALUES
(1, 1, 'admin'),
(2, 2, 'bus Inchar'),
(3, 3, 'quick type'),
(4, 4, 'Annual typ');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fId` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `feedbackType` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fId`, `user_id`, `feedbackType`, `description`, `date`) VALUES
(3, 'stgp718', 'Bus Pass and Payment', 'Fast and effective', '2023-09-17'),
(4, 'stgp718', 'other', 'good', '2023-10-05'),
(5, 'stgp718', 'other', 'good', '2023-10-05'),
(8, 'st997', 'other', 'poor ', '2023-10-09'),
(14, 'bi1234', 'others', 'Good', '2023-10-26'),
(15, 'bi1234', 'Maintenance', 'Good', '2023-10-30'),
(16, 'stgp718', 'CLeaning', 'Not Proper', '2023-10-30'),
(17, 'f1223', 'Payment', 'Fast and effective', '2023-10-30'),
(18, 'bi1234', 'good', 'No', '2023-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `transporter_signup`
--

CREATE TABLE `transporter_signup` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DId` int(11) NOT NULL,
  `user_Id` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `amountAvailable` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transporter_signup`
--

INSERT INTO `transporter_signup` (`id`, `Name`, `DId`, `user_Id`, `password`, `blood_group`, `contact_no`, `Address`, `amountAvailable`) VALUES
(1, 'hari', 1, 'ad123', 'hari@123', 'B+', 234567897, '2-45,tirupati,A.P', 0),
(2, 'jenny', 2, 'bi1234', 'jenny', 'AB+', 456789364, '6-9/3,kanchipuram,TN', 0),
(3, 'Girish', 3, 'f1223', 'girish@123', 'B+', 34567883, '4-3/2,ongole,AP', 1000),
(3, 'Geetha', 4, 'st5678', 'geetha', 'O+', 47483647, 'chittoor,A.P', 0),
(4, 'sita', 4, 'st1224', 'sita@34', 'O+', 12345678, '3-7/2,guntur,AP', 0),
(4, 'Radhika', 3, 'st997', '123', 'B+', 2147483647, '2-2/3,OFFICERS LINE,KONGAREDDY PALLI', 0),
(5, 'geetha', 4, 'st123', 'geetha123', 'O+', 438765432, '7-9/2,chennai,T.N', 0),
(6, 'sara', 4, 'f321', 'sara123', 'AB-', 876524567, '8-6/4,chennai,T.N', 0),
(11, 'Gowtami', 4, 'stgp718', '@gowtami', 'O+', 2147483647, 'tata sanitori 404', 0),
(13, 'Fara', 4, 'st3456', 'fara123', 'O+', 2147483647, 'chittoor,A.P', 0),
(14, 'Sudeep', 2, 'bi1235', '123@123', 'B+', 2147483647, '2-2/3,OFFICERS LINE,KONGAREDDY PALLI', 0),
(15, 'Name', 0, 'User Id', 'Password', 'Blood', 0, 'Address', 0),
(16, 'sana', 4, 'st541', 'sana123', 'AB+', 2147483647, 'chittoor,A.P', 0),
(18, 'a', 0, 'a', 'a', 'a', 0, 'a', 0),
(21, 'sonarika', 4, 'st992', 'sona@123', 'B+', 2147483647, '2-2/3,OFFICERS LINE,KONGAREDDY PALLI', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_details`
--
ALTER TABLE `bus_details`
  ADD PRIMARY KEY (`bId`);

--
-- Indexes for table `bus_request`
--
ALTER TABLE `bus_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_requests`
--
ALTER TABLE `bus_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `day_request`
--
ALTER TABLE `day_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fId`);

--
-- Indexes for table `transporter_signup`
--
ALTER TABLE `transporter_signup`
  ADD PRIMARY KEY (`id`,`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_details`
--
ALTER TABLE `bus_details`
  MODIFY `bId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bus_request`
--
ALTER TABLE `bus_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bus_requests`
--
ALTER TABLE `bus_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `day_request`
--
ALTER TABLE `day_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transporter_signup`
--
ALTER TABLE `transporter_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
