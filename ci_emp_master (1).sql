-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 07:17 AM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251');

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `ID` int(11) NOT NULL,
  `CUSTOMERID` int(11) NOT NULL DEFAULT '0',
  `PRODUCTID` varchar(60) NOT NULL DEFAULT '0',
  `STATUS` varchar(15) NOT NULL DEFAULT '',
  `ORDERID` int(11) NOT NULL DEFAULT '0',
  `LINEADDDATE` varchar(20) NOT NULL DEFAULT '',
  `QTY` int(11) NOT NULL DEFAULT '1',
  `DESCRIPTION` varchar(255) NOT NULL DEFAULT '',
  `PRICE` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `DESC` varchar(40) NOT NULL DEFAULT '',
  `GROUPID` varchar(11) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `DESC`, `GROUPID`) VALUES
(1, 'Test category', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `LOGINNAME` varchar(20) NOT NULL DEFAULT '',
  `PASSWORD` varchar(15) NOT NULL DEFAULT '',
  `LASTNAME` varchar(50) NOT NULL DEFAULT '',
  `MIDDLENAME` varchar(10) NOT NULL DEFAULT '',
  `INITIALS` varchar(10) NOT NULL DEFAULT '',
  `IP` varchar(20) NOT NULL DEFAULT '',
  `ADDRESS` varchar(100) NOT NULL DEFAULT '',
  `ZIP` varchar(20) NOT NULL DEFAULT '',
  `CITY` varchar(75) NOT NULL DEFAULT '',
  `PHONE` varchar(30) NOT NULL DEFAULT '',
  `EMAIL` varchar(75) NOT NULL DEFAULT '',
  `GROUP` varchar(15) NOT NULL DEFAULT 'CUSTOMER',
  `COUNTRY` varchar(75) NOT NULL DEFAULT '',
  `COMPANY` varchar(75) NOT NULL DEFAULT '',
  `JOINDATE` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `LOGINNAME`, `PASSWORD`, `LASTNAME`, `MIDDLENAME`, `INITIALS`, `IP`, `ADDRESS`, `ZIP`, `CITY`, `PHONE`, `EMAIL`, `GROUP`, `COUNTRY`, `COMPANY`, `JOINDATE`) VALUES
(1, 'admin', 'admin_1234', 'ADMIN', '', 'A', '', 'Test address 12', '1234 TT', 'Amsterdam', '012344-323', 'webmaster@yourdomain.com', 'ADMIN', 'Netherlands', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `emp_register`
--
-- Error reading structure for table ci_emp_master.emp_register: #1932 - Table 'ci_emp_master.emp_register' doesn't exist in engine
-- Error reading data for table ci_emp_master.emp_register: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `ci_emp_master`.`emp_register`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`ID`, `NAME`) VALUES
(1, 'Test group');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `ID` int(11) NOT NULL,
  `DATE` varchar(20) NOT NULL DEFAULT '',
  `STATUS` tinyint(1) NOT NULL DEFAULT '0',
  `SHIPPING` tinyint(1) NOT NULL DEFAULT '0',
  `PAYMENT` tinyint(1) NOT NULL DEFAULT '0',
  `CUSTOMERID` int(11) NOT NULL DEFAULT '0',
  `TOPAY` double NOT NULL DEFAULT '0',
  `WEBID` varchar(25) DEFAULT NULL,
  `NOTES` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `code` longtext,
  `system` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `description`, `code`, `system`) VALUES
(1, 'Bank', '', 1),
(2, 'Betaal bij afhalen / Pay at store', '', 1),
(3, 'PayPal', '<form action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\">\r\n<input type=\"hidden\" name=\"cmd\" value=\"_xclick\">\r\n<input type=\"hidden\" name=\"business\" value=\"paypal@xxxxxx.com\">\r\n<input type=\"hidden\" name=\"item_name\" value=\"%webid%\">\r\n<input type=\"hidden\" name=\"currency_code\" value=\"EUR\">\r\n<input type=\"hidden\" name=\"amount\" value=\"%total%\">\r\n<input type=\"hidden\" name=\"invoice\" value=\"%webid%\">\r\n<input type=\"image\" src=\"http://www.paypal.com/en_US/i/btn/x-click-but01.gif\" name=\"submit\" alt=\"PayPal\">\r\n</form>', 0),
(4, 'iDeal', '<FORM METHOD=\"post\" ACTION=\"https://idealtest.secure-ing.com/ideal/mpiPayInitIng.do\" id=\"form1\" name=\"form1\">\r\n<INPUT type=\"hidden\" NAME=\"merchantID\" value=\"0050xxxxx\">\r\n<INPUT type=\"hidden\" NAME=\"subID\" value=\"0\">\r\n<INPUT type=\"hidden\" NAME=\"amount\" VALUE=\"%total%\" >\r\n<INPUT type=\"hidden\" NAME=\"purchaseID\" VALUE=\"%webid%\">\r\n<INPUT type=\"hidden\" NAME=\"language\" VALUE=\"nl\">\r\n<INPUT type=\"hidden\" NAME=\"currency\" VALUE=\"EUR\">\r\n<INPUT type=\"hidden\" NAME=\"description\" VALUE=\"iDeal Payment\">\r\n<INPUT type=\"hidden\" NAME=\"itemNumber1\" VALUE=\"%webid%\">\r\n<INPUT type=\"hidden\" NAME=\"itemDescription1\" VALUE=\"%webid%\">\r\n<INPUT type=\"hidden\" NAME=\"itemQuantity1\" VALUE=\"1\">\r\n<INPUT type=\"hidden\" NAME=\"itemPrice1\" VALUE=\"%total%\">\r\n<INPUT type=\"hidden\" NAME=\"paymentType\" VALUE=\"ideal\">\r\n<INPUT type=\"hidden\" NAME=\"validUntil\" VALUE=\" 2016-01-01T12:00:00:0000Z\">\r\n<INPUT type=\"hidden\" NAME=\"urlCancel\" VALUE=\"%shopurl%\">\r\n<INPUT type=\"hidden\" NAME=\"urlSuccess\" VALUE=\"%shopurl%\">\r\n<INPUT type=\"hidden\" NAME=\"urlError\" VALUE=\"%shopurl%\">\r\n<INPUT type=\"submit\" NAME=\"submit2\" VALUE=\"Betaal nu met iDeal\" id=\"submit2\">\r\n</form>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `PRODUCTID` varchar(60) NOT NULL DEFAULT '0',
  `CATID` int(11) NOT NULL DEFAULT '0',
  `DESCRIPTION` longtext NOT NULL,
  `PRICE` double NOT NULL DEFAULT '0',
  `STOCK` int(1) DEFAULT NULL,
  `FRONTPAGE` tinyint(1) NOT NULL DEFAULT '0',
  `NEW` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `PRODUCTID`, `CATID`, `DESCRIPTION`, `PRICE`, `STOCK`, `FRONTPAGE`, `NEW`) VALUES
(1, 'TestID', 1, 'This is a test product.<br />Enjoy using <strong>FreeWebshop.org</strong>', 1234.56, 1, 0, 1);

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
  `education` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`reg_id`, `number`, `apply_on`, `form_no`, `emp_code`, `punch_no`, `joining_date`, `emp_type`, `salary`, `salaryperday`, `designation`, `shift`, `monthleave`, `emp_name`, `gender`, `dob`, `natinality`, `religion`, `cast`, `sub_cast`, `mstatus`, `experience`, `mobile_no`, `phone_no`, `email`, `bl_group`, `reference`, `caddress`, `haddress`, `spe_subject`, `professional`, `education`, `status`, `reg_time`) VALUES
(2, '1', '0000-00-00', '101', '101', '1001', '2018-03-12', 'Full Time', '15000', '500', 'Lacturer', 'Morning', '2', 'patel vaidik umar dineshbhai', 'Male', '1996-12-05', 'indian', 'hindu', 'GEN', 'kadvapatel', 'Single', '2', '9797979797', '9797979797', 'p@gmail.com', 'B+', 'cognisun infotech', 'himmatnagar', 'himmatnagar', 'hello', 'Lecturer', 'MCA', 0, '2018-03-29 09:02:52'),
(4, '2', '0000-00-00', '102', '102', '1002', '2018-12-03', 'Part Time', '15000', '500', 'Lacturer', 'After Noon', '2', 'patel utsav kumar arvindbhai', 'Male', '1993-12-12', 'indian', 'hindu', 'GEN', 'kadvapatel', 'Married', '5', '9426522057', '9737009655', 'patelpratik5992@gmail.com', 'B+', 'cognisun infotech', 'gandhinagar', 'gandhinagar', 'fdgfgfdgdg', 'Lecturer', 'bca', 0, '2018-04-03 13:15:44'),
(5, '2', '0000-00-00', '102', '102', '1002', '2018-12-03', 'Part Time', '15000', '500', 'Lacturer', 'After Noon', '2', 'patel utsav kumar arvindbhai', 'Male', '1993-12-12', 'indian', 'hindu', 'GEN', 'kadvapatel', 'Married', '5', '9426522057', '9737009655', 'patelpratik5992@gmail.com', 'B+', 'cognisun infotech', 'gandhinagar', 'gandhinagar', 'fdgfgfdgdg', 'Lecturer', 'bca', 0, '2018-04-03 13:17:13'),
(6, '3', '0000-00-00', '103', '103', '1003', '1995-12-12', '', '20000', '650', '', '', '2', 'patel darshan', 'Male', '1993-12-12', 'indian', 'hindu', 'GEN', 'kadvapatel', 'Married', '2', '9426522057', '9737009655', 'darshan@gmail.com', '', 'cognisun infotech', 'gandhingar', 'gandhingar', 'hhhhhhhhhiiiiiiiii', 'Lecturer', 'MCA', 0, '2018-04-03 13:20:44'),
(7, '102', '2018-04-10', '1001', '1005', '10001', '2018-04-02', 'fulltime', '15000', '500', 'docter', 'morning', '5', 'pratik patel', 'male', '2018-04-10', 'indian', 'hindu', 'general', 'kadava patel', 'single', '5', '9426522057', '9737009654', 'patelptarik5992@gmail.com', 'A+', 'cognisun', 'himatnagar', 'himmatnagar', 'hell i am prartik ppatel', 'Docter', 'mca', 0, '2018-04-06 09:49:26'),
(8, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 10:58:45'),
(9, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:01:29'),
(10, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:01:42'),
(11, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:01:52'),
(12, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:02:02'),
(13, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:02:02'),
(14, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:02:22'),
(15, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:02:22'),
(16, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:02:22'),
(17, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:02:22'),
(18, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:02:22'),
(19, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:02:22'),
(20, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:02:22'),
(21, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:02:22'),
(22, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:20'),
(23, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:20'),
(24, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:20'),
(25, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(26, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(27, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(28, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(29, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(30, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(31, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(32, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(33, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(34, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(35, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(36, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(37, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(38, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:21'),
(39, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:54'),
(40, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:54'),
(41, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:54'),
(42, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:54'),
(43, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:54'),
(44, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:54'),
(45, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:54'),
(46, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:54'),
(47, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:54'),
(48, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:54'),
(49, '1', '2018-04-03', '111', '1255', '544', '2018-04-04', 'fulltime', '12000', '400', 'lcturere', 'mornign', '5', 'maulik patel', 'male', '2018-04-11', 'indian', 'hindu', 'kadavapatel', 'hindu', 'married', '5', '9426522057', '9737096545', 'm@gmail.com', 'B+', 'hgkhkdgh', 'ahemedabad', 'ahmedabad', 'hii', 'jj', 'mnv', 0, '2018-04-11 11:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `theme` varchar(50) DEFAULT NULL,
  `send_default_country` varchar(50) DEFAULT NULL,
  `sendcosts_default_country` double DEFAULT NULL,
  `sendcosts_other_country` double DEFAULT NULL,
  `rembours_costs` double DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `paymentdays` tinyint(4) DEFAULT NULL,
  `vat` double DEFAULT NULL,
  `show_vat` varchar(10) DEFAULT NULL,
  `db_prices_including_vat` tinyint(1) DEFAULT NULL,
  `sales_mail` varchar(50) DEFAULT NULL,
  `shopname` varchar(100) DEFAULT NULL,
  `shopurl` varchar(100) DEFAULT NULL,
  `default_lang` char(2) DEFAULT NULL,
  `order_prefix` varchar(10) DEFAULT NULL,
  `order_suffix` varchar(10) DEFAULT NULL,
  `stock_enabled` tinyint(1) DEFAULT NULL,
  `ordering_enabled` tinyint(1) DEFAULT NULL,
  `shop_disabled` tinyint(1) DEFAULT NULL,
  `shop_disabled_title` varchar(50) DEFAULT NULL,
  `shop_disabled_reason` varchar(100) DEFAULT NULL,
  `webmaster_mail` varchar(50) DEFAULT NULL,
  `shoptel` varchar(50) DEFAULT NULL,
  `shopfax` varchar(50) DEFAULT NULL,
  `bankaccount` varchar(50) DEFAULT NULL,
  `bankaccountowner` varchar(50) DEFAULT NULL,
  `bankcity` varchar(50) DEFAULT NULL,
  `bankcountry` varchar(50) DEFAULT NULL,
  `bankname` varchar(50) DEFAULT NULL,
  `bankiban` varchar(50) DEFAULT NULL,
  `bankbic` varchar(50) DEFAULT NULL,
  `start_year` int(4) DEFAULT NULL,
  `shop_logo` varchar(50) DEFAULT NULL,
  `background` varchar(50) DEFAULT NULL,
  `slogan` varchar(200) DEFAULT NULL,
  `page_title` varchar(200) DEFAULT NULL,
  `page_footer` varchar(100) DEFAULT NULL,
  `shipping_postal` tinyint(1) DEFAULT NULL,
  `shipping_atstore` tinyint(1) DEFAULT NULL,
  `shipping_unused` tinyint(1) DEFAULT NULL,
  `number_format` varchar(8) DEFAULT NULL,
  `max_description` tinyint(2) DEFAULT NULL,
  `no_vat` tinyint(1) DEFAULT NULL,
  `pricelist_format` tinyint(1) DEFAULT NULL,
  `date_format` varchar(15) DEFAULT NULL,
  `search_prodgfx` tinyint(1) DEFAULT NULL,
  `use_prodgfx` tinyint(1) DEFAULT NULL,
  `pay_bank` tinyint(1) DEFAULT NULL,
  `pay_atstore` tinyint(1) DEFAULT NULL,
  `pay_paypal` tinyint(1) DEFAULT NULL,
  `pay_onreceive` tinyint(1) DEFAULT NULL,
  `pay_unused` tinyint(1) DEFAULT NULL,
  `paypal_email` varchar(100) DEFAULT NULL,
  `paypal_currency` char(3) DEFAULT NULL,
  `thumbs_in_pricelist` tinyint(1) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `charset` varchar(50) DEFAULT NULL,
  `conditions_page` tinyint(1) DEFAULT NULL,
  `guarantee_page` tinyint(1) DEFAULT NULL,
  `shipping_page` tinyint(1) DEFAULT NULL,
  `pictureid` tinyint(1) DEFAULT NULL,
  `aboutus_page` tinyint(1) DEFAULT NULL,
  `live_news` tinyint(1) DEFAULT NULL,
  `pricelist_thumb_width` tinyint(2) DEFAULT NULL,
  `pricelist_thumb_height` tinyint(2) DEFAULT NULL,
  `category_thumb_width` tinyint(2) DEFAULT NULL,
  `category_thumb_height` tinyint(2) DEFAULT NULL,
  `product_max_width` int(5) DEFAULT NULL,
  `product_max_height` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`theme`, `send_default_country`, `sendcosts_default_country`, `sendcosts_other_country`, `rembours_costs`, `currency`, `currency_symbol`, `paymentdays`, `vat`, `show_vat`, `db_prices_including_vat`, `sales_mail`, `shopname`, `shopurl`, `default_lang`, `order_prefix`, `order_suffix`, `stock_enabled`, `ordering_enabled`, `shop_disabled`, `shop_disabled_title`, `shop_disabled_reason`, `webmaster_mail`, `shoptel`, `shopfax`, `bankaccount`, `bankaccountowner`, `bankcity`, `bankcountry`, `bankname`, `bankiban`, `bankbic`, `start_year`, `shop_logo`, `background`, `slogan`, `page_title`, `page_footer`, `shipping_postal`, `shipping_atstore`, `shipping_unused`, `number_format`, `max_description`, `no_vat`, `pricelist_format`, `date_format`, `search_prodgfx`, `use_prodgfx`, `pay_bank`, `pay_atstore`, `pay_paypal`, `pay_onreceive`, `pay_unused`, `paypal_email`, `paypal_currency`, `thumbs_in_pricelist`, `keywords`, `charset`, `conditions_page`, `guarantee_page`, `shipping_page`, `pictureid`, `aboutus_page`, `live_news`, `pricelist_thumb_width`, `pricelist_thumb_height`, `category_thumb_width`, `category_thumb_height`, `product_max_width`, `product_max_height`) VALUES
('grey_business', 'United Kingdom', 10, 25, 5, 'EUR', '?', 14, 1.19, '19%', 1, 'webmaster@yourshop.com', 'FreeWebshop.org', 'http://www.yourshop.com/shop', 'uk', 'WEB-', '-06', 0, 1, 0, 'Closed', 'Dear visitor, the demo shop is temporarely down.', 'info@yourshop.com', '012-3456789', '012-3456788', '12345678', 'YourName', 'BankCity', 'BankCountry', 'TestBank', 'BankIBAN', 'BankBIC/Swiftcode', 2006, 'logo.gif', 'bg.gif', 'Your Shop slogan', 'Your Shopname', 'Place Footer Text Here', 1, 1, 0, '1.234,56', 60, 0, 2, 'd-m-Y @ G:i', 1, 1, 1, 1, 1, 1, NULL, 'paypal@yourdomain.com', 'EUR', 1, 'these, are, keywords', 'ISO-8859-1', 1, 1, 1, 1, 1, 1, 30, 30, 50, 50, 450, 350);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `country` tinyint(1) DEFAULT NULL,
  `system` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `description`, `rate`, `country`, `system`) VALUES
(1, 'Pakketdienst / Postal service', 15, 0, 1),
(2, 'Zelf ophalen / Pickup at store', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_payment`
--

CREATE TABLE `shipping_payment` (
  `shippingid` int(11) DEFAULT NULL,
  `paymentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_payment`
--

INSERT INTO `shipping_payment` (`shippingid`, `paymentid`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `contactno` varchar(11) NOT NULL,
  `posting_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `contactno`, `posting_date`) VALUES
(9, 'Anuj', 'Kumar', 'demouser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2015-11-12', '2015-11-12'),
(10, 'Amit', 'tomar', 'dfhfd@gm.com', 'f925916e2754e5e03f75dd58a5733251', '82888888888', '2017-12-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
