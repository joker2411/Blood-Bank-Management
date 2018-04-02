-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2017 at 06:03 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `dbg_id` varchar(200) NOT NULL,
  `bg` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`dbg_id`, `bg`, `amount`) VALUES
('A-1', 'A+', 400),
('A-2', 'A-', 400),
('A-3', 'A+', 400),
('AB-1', 'AB+', 300),
('B-1', 'B+', 300),
('B-2', 'B-', 500),
('B-3', 'B-', 600),
('O-1', 'O+', 500),
('O-2', 'O+', 200);

-- --------------------------------------------------------

--
-- Table structure for table `blood2`
--

CREATE TABLE `blood2` (
  `rbg_id` varchar(200) NOT NULL,
  `bg` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood2`
--

INSERT INTO `blood2` (`rbg_id`, `bg`, `amount`) VALUES
('A-1', 'A+', 100),
('A-2', 'A-', 100),
('A-3', 'A-', 300),
('AB-1', 'AB+', 100),
('B-1', 'B+', 200),
('B-2', 'B-', 200),
('B-3', 'B+', 100),
('O-1', 'O+', 200);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` varchar(200) NOT NULL,
  `doctor_name` varchar(20) NOT NULL,
  `doctor_qual` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `doctor_qual`) VALUES
('DR001', 'NEELESH MISHRA', 'MBBS FROM SPAIN'),
('DR002', 'SUBHI DUTTA', 'MD FROM JAPAN');

-- --------------------------------------------------------

--
-- Table structure for table `donar_inf`
--

CREATE TABLE `donar_inf` (
  `donor_name` varchar(200) NOT NULL,
  `mobile_no` varchar(200) NOT NULL,
  `email_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donar_inf`
--

INSERT INTO `donar_inf` (`donor_name`, `mobile_no`, `email_id`) VALUES
('MANISH RAJ ARYAN', '9456632581', 'aryanmkl@gmail.com'),
('SURJIT DOHRE', '9407243167', 'dohregwl@gmail.com'),
('SUMIT SINGH', '7725824563', 'lovablesumit@gmail.com'),
('MAHESH KUMAR', '9654364587', 'mahesh121@gmail.com'),
('MOHAN DAS MURMUR', '9422747555', 'mohan@gmail.com'),
('RANJAN SRIVASTAVA', '9931633952', 'Ranjan4321@gmail.com'),
('AARTI SHARMA', '7542413698', 'sharma.aarti@gmail.com'),
('SURESH KUMAR', '9425654865', 'suresh@gmail.com'),
('SURBHI GUPTA', '8252625002', 'sweetsurbhi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` varchar(200) NOT NULL,
  `bg_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `bg_id`) VALUES
('D001', 'A-1'),
('D002', 'B-1'),
('D003', 'O-1'),
('D004', 'AB-1'),
('D005', 'A-2'),
('D006', 'O-2'),
('D007', 'B-2'),
('D008', 'B-3'),
('D009', 'A-3');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donation_id` varchar(200) NOT NULL,
  `donor_name` varchar(200) NOT NULL,
  `d_address` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(2) NOT NULL,
  `weight` int(11) NOT NULL,
  `donation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donation_id`, `donor_name`, `d_address`, `dob`, `sex`, `weight`, `donation_date`) VALUES
('D001', 'SURESH KUMAR', 'ABV-IIITM', '1995-02-15', 'M', 58, '2016-02-12'),
('D002', 'MAHESH KUMAR', 'ABV-IIITM', '1991-11-11', 'M', 60, '2016-02-12'),
('D003', 'SURJIT DOHARE', 'ABV-IIITM', '1993-07-21', 'M', 57, '2016-02-12'),
('D004', 'SURBHI GUPTA', 'ABV-IIITM', '1995-04-28', 'F', 53, '2016-02-12'),
('D005', 'MANISH RAJ ARYAN', 'ABV-IIITM', '1995-01-03', 'M', 77, '2016-02-12'),
('D006', 'SUMIT SINGH', 'ABV-IIITM', '1997-09-09', 'M', 65, '2016-03-01'),
('D007', 'MOHAN DAS MURMUR', 'ABV-IIITM', '1996-04-04', 'M', 80, '2016-03-01'),
('D008', 'ARTI SHARMA', 'ABV-IIITM', '1994-10-15', 'F', 71, '2016-03-17'),
('D009', 'RANJAN SRIVASTAVA', 'ABV-IIITM', '1995-07-15', 'M', 68, '2016-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `receiver_id` varchar(200) NOT NULL,
  `bg_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`receiver_id`, `bg_id`) VALUES
('R001', 'A-1'),
('R002', 'AB-1'),
('R003', 'B-1'),
('R004', 'A-2'),
('R005', 'B-2'),
('R006', 'O-1'),
('R007', 'A-3'),
('R008', 'B-3');

-- --------------------------------------------------------

--
-- Table structure for table `receiver`
--

CREATE TABLE `receiver` (
  `receiver_id` varchar(200) NOT NULL,
  `receiver_name` varchar(200) NOT NULL,
  `receiver_address` varchar(200) NOT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(2) NOT NULL,
  `weight` int(11) NOT NULL,
  `receiving_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receiver`
--

INSERT INTO `receiver` (`receiver_id`, `receiver_name`, `receiver_address`, `dob`, `sex`, `weight`, `receiving_date`) VALUES
('R001', 'PRAVEEN KUMAR', 'ABV-IIITM', '1995-02-15', 'M', 56, '2016-04-06'),
('R002', 'CHITRANG MURDIYA', 'ABV-IIITM', '1991-11-11', 'M', 63, '2016-04-16'),
('R003', 'RAHUL SHUKLA', 'ABV-IIITM', '1993-07-21', 'M', 54, '2016-03-04'),
('R004', 'RAHUL ASTHANA', 'ABV-IIITM', '1995-04-28', 'M', 80, '2016-04-04'),
('R005', 'JEEVAN JYOTI', 'ABV-IIITM', '1995-01-03', 'M', 75, '2016-04-06'),
('R006', 'ANURAG MISHRA', 'ABV-IIITM', '1997-09-09', 'M', 60, '2016-03-28'),
('R007', 'ROHIT VERMA', 'ABV-IIITM', '1996-04-24', 'M', 65, '2016-03-29'),
('R008', 'ANJALI SHARMA', 'ABV-IIITM', '1994-10-15', 'F', 52, '2016-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `receiver_inf`
--

CREATE TABLE `receiver_inf` (
  `receiver_name` varchar(200) NOT NULL,
  `mobile_no` varchar(200) NOT NULL,
  `email_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receiver_inf`
--

INSERT INTO `receiver_inf` (`receiver_name`, `mobile_no`, `email_id`) VALUES
('ANJALI SHARMA', '9654155455', 'anjali@gmail.com'),
('ANURAG MISHRA', '9855565454', 'anurag@gmail.com'),
('CHITRANG MURDIYA', '9565544545', 'chitrang@gmail.com'),
('JEEVAN JYOTI', '8458415415', 'Jeevan16@gmail.com'),
('PRAVEEN KUMAR', '9589656454', 'praveen@gmail.com'),
('RAHUL ASTHANA', '7755455454', 'Rahul123@gmail.com'),
('RAHUL SHUKLA', '9641545544', 'rahuls@gmail.com'),
('ROHIT VERMA', '7515555415', 'rohit@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`dbg_id`);

--
-- Indexes for table `blood2`
--
ALTER TABLE `blood2`
  ADD PRIMARY KEY (`rbg_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `donar_inf`
--
ALTER TABLE `donar_inf`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`receiver_id`);

--
-- Indexes for table `receiver`
--
ALTER TABLE `receiver`
  ADD PRIMARY KEY (`receiver_id`);

--
-- Indexes for table `receiver_inf`
--
ALTER TABLE `receiver_inf`
  ADD PRIMARY KEY (`email_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`donation_id`) REFERENCES `donor` (`donation_id`);

--
-- Constraints for table `donor`
--
ALTER TABLE `donor`
  ADD CONSTRAINT `donor_ibfk_1` FOREIGN KEY (`donation_id`) REFERENCES `donation` (`donation_id`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`receiver_id`) REFERENCES `receiver` (`receiver_id`);

--
-- Constraints for table `receiver`
--
ALTER TABLE `receiver`
  ADD CONSTRAINT `receiver_ibfk_1` FOREIGN KEY (`receiver_id`) REFERENCES `receipt` (`receiver_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
