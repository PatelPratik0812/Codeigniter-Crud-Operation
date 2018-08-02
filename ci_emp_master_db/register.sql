-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2018 at 08:17 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_emp_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `reg_id` int(11) NOT NULL,
  `number` varchar(20) NOT NULL,
  `apply_on` date NOT NULL,
  `form_no` varchar(30) NOT NULL,
  `emp_code` varchar(32) NOT NULL,
  `punch_no` varchar(30) NOT NULL,
  `joining_date` date NOT NULL,
  `emp_type` varchar(30) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `salaryperday` varchar(30) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `shift` varchar(20) NOT NULL,
  `monthleave` varchar(30) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `natinality` varchar(30) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `cast` varchar(30) NOT NULL,
  `sub_cast` varchar(30) NOT NULL,
  `mstatus` varchar(30) NOT NULL,
  `experience` varchar(30) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bl_group` varchar(20) NOT NULL,
  `reference` varchar(20) NOT NULL,
  `caddress` varchar(20) NOT NULL,
  `haddress` varchar(20) NOT NULL,
  `spe_subject` varchar(30) NOT NULL,
  `professional` varchar(20) NOT NULL,
  `education` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`reg_id`, `number`, `apply_on`, `form_no`, `emp_code`, `punch_no`, `joining_date`, `emp_type`, `salary`, `salaryperday`, `designation`, `shift`, `monthleave`, `emp_name`, `gender`, `dob`, `natinality`, `religion`, `cast`, `sub_cast`, `mstatus`, `experience`, `mobile_no`, `phone_no`, `email`, `bl_group`, `reference`, `caddress`, `haddress`, `spe_subject`, `professional`, `education`) VALUES
(1, '1', '0000-00-00', '101', '101', '1001', '2018-03-06', 'Full Time', '12000', '400', 'Lacturer', 'Morning', '2', 'patel pratik kumar jashvantbha', 'Male', '2018-03-21', 'indian', 'hindu', 'GEN', 'kadvapatel', 'Married', '2', '9426522057', '9737009655', 'pratik5992@gmail.com', 'A+', 'cognisun infotech', 'himmatnagar', 'himmatnagar', 'spr', 'Lecturer', 'bca'),
(2, '1', '0000-00-00', '101', '101', '1001', '2018-03-12', 'Full Time', '15000', '500', 'Lacturer', 'Morning', '2', 'patel vaidik umar dineshbhai', 'Male', '1996-12-05', 'indian', 'hindu', 'GEN', 'kadvapatel', 'Single', '2', '9797979797', '9797979797', 'p@gmail.com', 'B+', 'cognisun infotech', 'himmatnagar', 'himmatnagar', 'hello', 'Lecturer', 'MCA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
