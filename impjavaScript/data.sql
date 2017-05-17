-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2017 at 12:59 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpa_grandsol`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `leave_cat` varchar(100) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `day` varchar(50) DEFAULT NULL,
  `time_in` varchar(50) DEFAULT NULL,
  `time_out` varchar(50) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `date`, `leave_cat`, `student_id`, `class_id`, `faculty_id`, `section_id`, `day`, `time_in`, `time_out`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, '2017-05-04', '', 1, 2, 2, 2, 'mon', '23', '23', 1, NULL, NULL, NULL, NULL, 1),
(2, '2017-05-06', '', 1, 2, 2, 2, 'tues', '23', '23', 1, NULL, NULL, NULL, NULL, 1),
(3, '2017-04-04', '', 1, 2, 2, 2, 'tues', 'desd', 'sds', 1, NULL, NULL, NULL, NULL, 1),
(4, '2017-04-05', '', 1, 2, 2, 2, 'wed', 'sd', 'sds', 1, NULL, NULL, NULL, NULL, 1),
(5, '2018-04-02', '', 1, 2, 2, 2, 'tue', 'df', 'dfd', 1, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `acc_no` varchar(50) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `bank_name`, `acc_no`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(2, 'Habib Bank', '1555334078407', 1, 1, '2017-05-12 07:26:44', NULL, NULL, 1),
(3, 'Bank-Al-Habib', '1554546454407', 1, 1, '2017-05-12 07:26:44', NULL, NULL, 1),
(4, 'Meezan Bank', '1215486789214', 1, 1, '2017-05-12 07:38:02', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `batch_id` int(11) NOT NULL,
  `batch_code` varchar(50) DEFAULT NULL,
  `batch_name` varchar(50) NOT NULL,
  `session_start` date NOT NULL,
  `session_end` date NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch_id`, `batch_code`, `batch_name`, `session_start`, `session_end`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 'B1-2014', '2017', '2017-05-01', '2017-05-30', 1, 1, '2017-05-13 08:14:53', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) DEFAULT NULL,
  `pro_name` varchar(50) DEFAULT NULL,
  `pro_number` varchar(50) DEFAULT NULL,
  `campus_image` varchar(555) DEFAULT NULL,
  `whatsapp_number` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `confirm_password` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `pro_name`, `pro_number`, `campus_image`, `whatsapp_number`, `contact`, `email`, `password`, `confirm_password`, `address`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 'TPA - Model Campus', 'Sir Mazhar', '923124567891', 'C:fakepathPenguins.jpg', '921234567890', '921234567890', 'tap_model@gmail.com', '1234', '1234', 'Model Colony  Malir Karachi', 1, '2017-05-17 12:10:37', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(50) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `added_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `branch_id`, `added_by`, `added_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 'IX', 1, 1, '2017-05-12 07:46:45', NULL, NULL, 1),
(2, 'X', 1, 1, '2017-05-12 07:46:54', NULL, NULL, 1),
(3, 'XI', 1, 1, '2017-05-12 07:47:03', NULL, NULL, 1),
(4, 'XII', 1, 1, '2017-05-12 07:47:07', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE IF NOT EXISTS `class_routine` (
  `class_routine_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `start_hour` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_min` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time_format` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_hour` int(11) DEFAULT NULL,
  `end_min` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time_format` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modifty_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`class_routine_id`, `faculty_id`, `class_id`, `section_id`, `subject_id`, `start_hour`, `start_min`, `start_time_format`, `end_hour`, `end_min`, `end_time_format`, `date`, `day`, `year`, `add_by`, `add_on`, `modifty_by`, `modify_on`, `status`, `branch_id`) VALUES
(15, 1, 3, 4, 4, '10', '35', 'AM', 6, '10', 'PM', '2017-05-03', 'Thursday', '2016', NULL, NULL, 1, '2017-05-10 12:52:12', 1, 1),
(35, 2, 2, 4, 3, '8', '45', 'PM', 3, '10', 'PM', '2017-05-10', 'Monday', '2015', NULL, NULL, 1, '2017-05-08 01:40:10', 1, 1),
(36, 2, 3, 5, 3, '2', '30', 'PM', 4, '30', 'PM', '2017-05-04', 'Saturday', '2017', NULL, NULL, 1, '2017-05-08 01:38:22', 1, 1),
(37, 1, 2, 4, 2, '1', '10', '1', 1, '10', 'PM', '2011-01-01', '', '', NULL, NULL, 1, '2017-05-08 04:49:54', 1, 1),
(38, 1, 1, 3, 1, '2', '20', 'PM', 2, '20', 'PM', '2033-03-03', '', '', NULL, NULL, 1, '2017-05-08 01:41:43', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_seat`
--

CREATE TABLE IF NOT EXISTS `class_seat` (
  `class_seat_id` int(11) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `total_seats` int(11) DEFAULT NULL,
  `allocated_seats` int(11) DEFAULT NULL,
  `seat_available` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_seat`
--

INSERT INTO `class_seat` (`class_seat_id`, `faculty_id`, `section_id`, `class_id`, `subject_id`, `room_no`, `total_seats`, `allocated_seats`, `seat_available`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`, `branch_id`) VALUES
(1, 2, 1, 2, 3, 3443, 67, 55, 6, 1, '2017-05-13 02:13:06', 1, '2017-05-13 04:19:08', 1, 1),
(2, 1, 2, 1, 19, 101, 0, 0, 32, 1, '2017-05-13 02:39:05', 1, '2017-05-13 04:17:36', 1, 1),
(3, 3, 2, 1, 21, 102, 40, 80, 60, 1, '2017-05-13 02:43:58', NULL, '0000-00-00 00:00:00', 2, 1),
(4, 2, 0, 3, 3, 25, 0, 0, 0, 1, '2017-05-13 03:38:53', 1, '2017-05-13 04:12:36', 1, 1),
(13, 2, 0, 3, 2, 232, 65, 65, 65, 1, '2017-05-13 03:53:28', 1, '2017-05-13 04:19:51', 1, 1),
(14, 2, 4, 2, 0, 544, 0, 0, 454, 1, '2017-05-13 03:55:24', 1, '2017-05-13 04:16:46', 2, 1),
(15, 1, 7, 1, 3, 44, 0, 0, 343, 1, '2017-05-13 04:14:02', 1, '2017-05-13 04:15:56', 2, 1),
(16, 1, 5, 2, 0, 87, 87, 87, 87, 1, '2017-05-13 04:20:24', 1, '2017-05-13 04:20:51', 1, 1),
(17, 3, 7, 1, 3, 454, 454, 454, 454, 1, '2017-05-13 04:21:20', NULL, '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE IF NOT EXISTS `collection` (
  `collection_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `installment` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total_due_payment` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`collection_id`, `customer_id`, `date`, `payment_method`, `installment`, `amount`, `total_due_payment`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 10, '2024-04-04', '0', 4, 4545, 4545, 1, 1, '2017-05-05 08:43:55', 1, NULL, 0),
(2, 76, '2020-02-02', '0', 2, 6556, 8898, 1, 1, '2017-05-05 08:31:21', 1, '2017-05-05 08:47:44', 0),
(11, 444, '2020-02-02', '0', 2, 6556, 8898, 1, 1, '2017-05-05 08:31:21', 1, NULL, 0),
(12, 444, '2020-02-02', '0', 2, 6556, 8898, 1, 1, '2017-05-05 08:31:21', 1, NULL, 0),
(13, 56, '2020-02-03', '0', 44, 657, 789, 1, 1, '2017-05-05 08:42:07', 1, NULL, 0),
(14, 34, '2020-02-02', '0', 23, 3434, 544, 1, 1, '2017-05-05 08:39:41', 1, NULL, 0),
(15, 33, '2011-08-06', '0', 34, 899, 8, 1, 1, '2017-05-05 08:50:13', 1, '2017-05-05 08:50:37', 0),
(16, 45, '2010-10-10', '0', 909, 909, 909, 1, 1, '2017-05-05 08:51:21', NULL, NULL, 0),
(17, 10, '2017-05-14', 'Card', 200, 50000, 4000, 1, 1, '2017-05-05 08:56:00', 1, '2017-05-05 08:57:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `ntn` int(11) DEFAULT NULL,
  `stn` int(11) DEFAULT NULL,
  `discount_cat` varchar(50) DEFAULT NULL,
  `discount_percent` float DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `phone`, `email`, `ntn`, `stn`, `discount_cat`, `discount_percent`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 'jabtak', '02155566670', 'tpa_campus@gmail.com', 2, 5, '1', 1313, 1, 1, '2017-05-11 02:02:02', NULL, NULL, 1),
(3, 'TPA Campus I ', '02112345678', 'tpa_campus1@gmail.com', 0, 0, '13', 1313, 1, 1, '2017-05-10 10:06:58', NULL, NULL, 1),
(4, 'TPA Campus I ', '02112345678', 'tpa_campus1@gmail.com', 0, 0, 'Full Consation', 1313, 1, 1, '2017-05-09 09:22:08', NULL, NULL, 1),
(5, 'abc', '02112345678', 'tpa_campus1@gmail.com', 0, 0, '6', 1313, 1, 1, '2017-05-10 10:06:52', NULL, NULL, 1),
(6, 'TPA Csdas', '02112345678', 'tpa_campus1@gmail.com', 0, 0, 'Teacher', 1313, 1, 1, '2017-05-10 11:50:04', NULL, NULL, 1),
(11, 'TPA Camiiii', '02133334444', 'tpa_campus1@gmail.com', 0, 0, 'Minimum', 1313, 1, 1, '2017-05-10 12:43:25', NULL, NULL, 1),
(13, 'T ', '02167676767', 'tpa_campus1@gmail.com', 0, 0, 'Teacher', 1313, 1, 1, '2017-05-10 12:49:21', NULL, NULL, 1),
(14, 'T ytytyttyty', '02167676767', 'tpa_campus1@gmail.com', 0, 0, '6', 1313, 1, 1, '2017-05-10 09:32:17', NULL, NULL, 1),
(15, 'TPA Caklklkl', '02154545454', 'tpa_campus1@gmail.com', 0, 0, '3', 13999, 1, 1, '2017-05-10 09:31:53', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `cnic_no` varchar(50) DEFAULT NULL,
  `last_job` varchar(50) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `experiance` varchar(20) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `home_no` varchar(20) DEFAULT NULL,
  `office_no` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `postal_address` varchar(100) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `father_name`, `gender`, `dob`, `doj`, `qualification`, `cnic_no`, `last_job`, `image`, `experiance`, `remarks`, `home_no`, `office_no`, `mobile_no`, `postal_address`, `faculty_id`, `section_id`, `subject_id`, `email_address`, `password`, `role_id`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(2, 'khan', 'father', 'Male', '2017-05-04', '2017-05-25', 'Bachlors', '12345-1234567-1', 'dataentry', '3399_Chrysanthemum.jpg', '2 years', 'enter remarks', '02145862595', '02145862595', '923083389831', 'house no. a-1/19, malir colony , karachi -74900', 0, 0, 0, 'ali@gmail.com', '1234567', 2, 1, 1, '2017-05-16 08:11:38', NULL, NULL, 1),
(3, 'fazal', 'farhan', 'Male', '2017-12-31', '2019-12-31', 'Middle', '12345-1234567-1', 'dataentry', '19637_Tulips.jpg', '2 years', 'enter remarks', '02145862595', '02145862595', '923083389831', 'house no. a-1/19, malir colony , karachi -74900', 1, 0, 0, 'ali@gmail.com', '1234567', 1, 1, 1, '2017-05-16 08:22:44', NULL, NULL, 1),
(4, 'jalal', 'john dev', 'Male', '2017-05-10', '2017-05-25', 'Matriculation', '12345-1234567-1', 'dataentry', '31750_Penguins.jpg', '2 years', 'enter remarks', '02145862595', '02145862595', '923083389831', 'house no. a-1/19, malir colony , karachi -74900', 0, 0, 0, 'ali@gmail.com', '1234567', 2, 1, 1, '2017-05-16 08:32:05', NULL, NULL, 1),
(5, 'khan', 'father', 'Male', '2017-05-01', '2017-05-31', 'Matriculation', '12345-1234567-1', 'dataentry', '16482_barcode.PNG', '2 years', 'enter remarks', '02145862595', '02145862595', '923083389831', 'house no. a-1/19, malir colony , karachi -74900', 3, 0, 0, 'ali@gmail.com', '1234567', 1, 1, 1, '2017-05-17 03:58:24', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_left`
--

CREATE TABLE IF NOT EXISTS `employee_left` (
  `emp_left_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `leaving_date` date DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_left`
--

INSERT INTO `employee_left` (`emp_left_id`, `emp_id`, `leaving_date`, `reason`, `remarks`, `add_by`, `modify_by`, `modify_on`, `status`, `branch_id`) VALUES
(2, 2, '2017-05-27', 'some reason to leave job', 'No comments', 1, NULL, NULL, 1, 1),
(3, 3, '2017-05-15', 'some reason to leave job', 'No comments', 1, NULL, NULL, 1, 1),
(4, 3, '2017-05-27', 'some reason to leave job', 'No comments', 1, NULL, NULL, 1, 1),
(5, 2, '2017-05-31', 'some reason to leave job', 'No comments', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE IF NOT EXISTS `employee_salary` (
  `salary_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `salary_type` varchar(50) DEFAULT NULL,
  `total_salary` int(11) DEFAULT NULL,
  `salary_method` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`salary_id`, `emp_id`, `role_id`, `salary_type`, `total_salary`, `salary_method`, `date`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`, `branch_id`) VALUES
(1, NULL, NULL, 'cvdfd', 65656565, '545454546', '2017-05-11', NULL, '2017-05-25 00:00:00', NULL, NULL, 1, NULL),
(2, 0, NULL, '$teacher_salary_type', 0, '$teacher_salary_method', NULL, 0, '0000-00-00 00:00:00', NULL, NULL, 1, 0),
(3, 0, 0, '$teacher_salary_type', 0, '$teacher_salary_method', NULL, 0, '0000-00-00 00:00:00', NULL, NULL, 1, 0),
(4, 2, 2, 'Per Hrs', 20000, 'Cash', NULL, 1, '2017-05-16 08:11:38', NULL, NULL, 1, 1),
(5, 3, 1, 'Per Hrs', 20000, 'Cash', NULL, 1, '2017-05-16 08:22:44', NULL, NULL, 1, 1),
(6, 4, 2, 'Per Hrs', 20000, 'Cash', NULL, 1, '2017-05-16 08:32:05', NULL, NULL, 1, 1),
(7, 5, 1, 'Per Hrs', 20000, 'Cash', NULL, 1, '2017-05-17 03:58:24', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE IF NOT EXISTS `expense` (
  `exp_id` int(11) NOT NULL,
  `exp_title` varchar(50) DEFAULT NULL,
  `exp_cat_id` int(11) DEFAULT NULL,
  `exp_desc` varchar(11) DEFAULT NULL,
  `exp_qty` int(11) DEFAULT NULL,
  `exp_amount` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`exp_id`, `exp_title`, `exp_cat_id`, `exp_desc`, `exp_qty`, `exp_amount`, `payment_type`, `exp_date`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(23, 'red', 10, 'fdg', 13, 546, 'Cash', '2017-05-10', 1, 1, '2017-05-04 11:26:10', NULL, NULL, 1),
(24, 'Chair', 12, 'two chairs', 10, 5000, 'Cash', '2017-05-16', 1, 1, '2017-05-04 11:29:35', 1, '2017-05-08 05:10:49', 1),
(25, 'new items', 12, 'Description', 1, 200, 'Cash', '2017-05-10', 1, 1, '2017-05-04 11:30:46', 1, '2017-05-04 11:38:35', 1),
(26, 'Buy Chair', 11, 'ghgh ygjjh', 1, 200, 'Cash', '2017-05-21', 1, 1, '2017-05-04 12:16:14', NULL, NULL, 1),
(27, 'Buy Chair', 11, 'Description', 1, 200, 'Check', '2017-05-10', 1, 1, '2017-05-04 02:01:21', NULL, NULL, 1),
(28, 'Buy car', 12, 'Description', 33, 40000, 'Card', '2017-05-27', 1, 1, '2017-05-04 02:01:54', NULL, NULL, 1),
(29, 'jiji', 12, 'Description', 55, 676, 'Check', '2017-05-11', 1, 1, '2017-05-04 02:25:46', NULL, NULL, 1),
(30, 'hjhj', 11, 'ghg', 1, 200, 'Cash', '2017-05-16', 1, 1, '2017-05-04 07:08:15', 1, '2017-05-04 07:08:32', 1),
(31, 'gfgf', 12, 'fgfgfg', 1, 200, 'Check', '2017-05-15', 1, 1, '2017-05-05 04:20:32', NULL, NULL, 1),
(32, 'asdfasf', 12, 'asdf', 123, 234, 'Check', '2017-05-09', 1, 1, '2017-05-08 05:01:19', NULL, NULL, 1),
(33, 'asdf', 11, 'asdf', 21, 234, 'Cash', '2017-05-12', 1, 1, '2017-05-08 05:02:29', NULL, NULL, 1),
(34, 'asdf', 12, 'asdf', 234, 234, 'Check', '2017-05-02', 1, 1, '2017-05-08 05:21:56', NULL, NULL, 1),
(35, 'fasdf', 15, 'asdfsa', 234, 234234, 'Check', '2017-05-03', 1, 1, '2017-05-08 05:22:32', NULL, NULL, 1),
(36, 'sas', 12, 'asdf', 24, 23423, 'Check', '2017-05-10', 1, 1, '2017-05-08 05:23:06', NULL, NULL, 1),
(37, 'hgggggg', 11, 'hjn', 111, 2222, 'Card', '2017-05-26', 1, 1, '2017-05-08 06:15:11', 1, '2017-05-08 06:15:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE IF NOT EXISTS `expense_category` (
  `exp_cat_id` int(11) NOT NULL,
  `exp_cat` varchar(50) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`exp_cat_id`, `exp_cat`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`, `branch_id`) VALUES
(11, 'Office Supply ', 1, '2017-05-03 10:18:33', NULL, NULL, 1, 1),
(12, 'new', 1, '2017-05-04 11:26:53', NULL, NULL, 1, 1),
(13, 'daily', 1, '2017-05-04 07:08:50', 1, '2017-05-04 07:09:11', 1, 1),
(14, 'newone', 1, '2017-05-04 07:09:34', 1, '2017-05-04 07:09:51', 1, 1),
(15, 'Office Supply ', 1, '2017-05-08 05:08:49', NULL, NULL, 1, 1),
(16, 'Office Supply ', 1, '2017-05-08 05:08:55', NULL, NULL, 1, 1),
(17, 'Office Supply dsa', 1, '2017-05-08 05:09:10', NULL, NULL, 1, 1),
(18, 'Office Supply dfasd', 1, '2017-05-08 05:09:26', NULL, NULL, 1, 1),
(19, 'asdfasfdasdfsadf', 1, '2017-05-08 05:09:59', 1, '2017-05-08 05:17:20', 1, 1),
(20, 'ddd', 1, '2017-05-08 06:14:40', 1, '2017-05-08 06:16:57', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(50) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `added_on` date DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `branch_id`, `added_by`, `added_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 'Medical', 1, 1, '2017-05-06', NULL, NULL, 1),
(2, 'Science Group', 1, 1, '2017-05-06', 1, '2017-05-06', 1),
(3, 'Pre-Engineering', 1, 1, '2017-05-12', NULL, NULL, 1),
(11, 'Commerce', 1, 1, '2017-05-12', NULL, NULL, 1),
(12, 'Arts', 1, 1, '2017-05-12', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE IF NOT EXISTS `fee` (
  `fee_id` int(11) NOT NULL,
  `recipt_no` int(11) DEFAULT NULL,
  `recipt_date` date DEFAULT NULL,
  `invoice_due_date` int(11) DEFAULT NULL,
  `invoice_submit_date` date DEFAULT NULL,
  `misc_name` varchar(100) NOT NULL,
  `misc_fee` int(11) NOT NULL,
  `fee_type` varchar(50) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `current_fee` int(11) DEFAULT NULL,
  `due_fee` int(11) DEFAULT NULL,
  `receive_fee` int(11) DEFAULT NULL,
  `consation_fee` int(11) DEFAULT NULL,
  `consation_reason` varchar(100) DEFAULT NULL,
  `total_fee` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `good_receiving`
--

CREATE TABLE IF NOT EXISTS `good_receiving` (
  `gr_no` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `received_qty` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime NOT NULL,
  `modify_by` int(11) NOT NULL,
  `modify_on` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `note_id` int(11) NOT NULL,
  `note_name` varchar(50) DEFAULT NULL,
  `min_qty` int(11) DEFAULT NULL,
  `no_page` int(11) DEFAULT NULL,
  `sale_price_walkin` int(11) DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`note_id`, `note_name`, `min_qty`, `no_page`, `sale_price_walkin`, `sale_price`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 'XI-Medical', 23, 23, 200, 100, 1, 1, '2017-05-10 12:05:18', 1, NULL, 0),
(2, 'XI-Chem', 23, 23, 200, 100, 1, 1, '2017-05-10 12:06:39', 1, NULL, 0),
(3, 'XI-Phy', 23, 23, 200, 100, 1, 1, '2017-05-10 12:13:28', 1, NULL, 0),
(4, 'XI-Mathssss', 23, 23, 200, 100, 1, 1, '2017-05-10 12:15:36', 1, NULL, 0),
(5, 'XI-Urdu term', 23, 23, 200, 100, 1, 1, '2017-05-10 12:22:17', 1, NULL, 0),
(6, 'XI-Zolll', 23, 23, 200, 100, 1, 1, '2017-05-10 12:25:25', 1, NULL, 0),
(7, 'XI-Bot', 23, 23, 200, 100, 1, 1, '2017-05-10 12:24:26', 1, NULL, 0),
(8, 'X-Bot ', 33, 33, 400, 200, 1, 1, '2017-05-10 12:24:50', 1, NULL, 0),
(9, 'X-Zoology', 33, 33, 400, 200, 1, 1, '2017-05-10 12:52:33', 1, NULL, 0),
(10, 'ghjghj', 33, 33, 400, 200, 1, 1, '2017-05-10 12:53:14', 1, NULL, 0),
(11, 'X-Maths', 33, 33, 400, 200, 1, 1, '2017-05-10 12:07:38', 1, NULL, 0),
(12, 'X-Chemistry', 33, 33, 400, 200, 1, 1, '2017-05-10 01:27:50', 1, NULL, 0),
(13, 'X-Physics', 33, 33, 400, 200, 1, 1, '2017-05-10 01:12:10', 1, NULL, 0),
(14, 'X-Pakstudy', 33, 33, 400, 200, 1, 1, '2017-05-10 12:11:40', 1, NULL, 0),
(15, 'X-Islamiat', 33, 33, 400, 200, 1, 1, '2017-05-10 01:28:48', 1, NULL, 0),
(16, 'XI-Is', 23, 23, 200, 100, 1, 1, '2017-05-10 12:18:13', 1, NULL, 0),
(17, 'XI-Pakstudy', 23, 23, 200, 100, 1, 1, '2017-05-10 12:11:47', 1, NULL, 0),
(18, 'XI-Bi_zoo_bot', 23, 23, 200, 100, 1, 1, '2017-05-11 02:00:24', 1, NULL, 2),
(19, 'salam', 23, 23, 400, 100, 1, 1, '2017-05-10 12:19:20', 1, NULL, 0),
(20, '$product_name', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL, 0),
(21, 'sara', 545, 7556, 767, 100, 1, 1, '2017-05-10 12:26:19', 1, NULL, 0),
(22, 'XI-Biol', 23, 23, 200, 100, 1, 1, '2017-05-10 12:09:41', 1, NULL, 0),
(23, 'XI-Biology', 23, 23, 200, 100, 1, 1, '2017-05-10 01:54:25', 1, NULL, 1),
(24, 'abc', 23, 23, 200, 100, 1, 1, '2017-05-10 01:11:50', 1, NULL, 0),
(25, 'abcdefg', 23, 23, 200, 100, 1, 1, '2017-05-10 12:26:40', 1, NULL, 0),
(26, 'kuch new uuu', 23, 23, 200, 100, 1, 1, '2017-05-10 12:05:37', 1, NULL, 0),
(27, 'khan', 23, 23, 200, 100, 1, 1, '2017-05-10 01:12:19', 1, NULL, 0),
(28, 'fgf', 23, 23, 200, 100, 1, 1, '2017-05-10 12:52:48', 1, NULL, 0),
(29, 'BCOM-Biology', 200, 500, 1000, 80, 1, 1, '2017-05-10 01:30:36', 1, NULL, 0),
(30, 'XI-Biology', 23, 23, 200, 100, 1, 1, '2017-05-10 01:36:50', NULL, NULL, 2),
(31, 'jhjhjh', 23, 23, 200, 100, 1, 1, '2017-05-10 01:54:32', 1, NULL, 1),
(32, 'alldl', 23, 23, 200, 100, 1, 1, '2017-05-10 02:23:38', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `offer_class`
--

CREATE TABLE IF NOT EXISTS `offer_class` (
  `offer_class_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `add_by` int(11) NOT NULL,
  `add_on` datetime NOT NULL,
  `modify_by` int(11) NOT NULL,
  `modify_on` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `other_fee`
--

CREATE TABLE IF NOT EXISTS `other_fee` (
  `recipt_no` int(11) NOT NULL,
  `recipt_date` date DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `fee_cat` varchar(50) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `fee_amount` int(11) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
  `parent_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `cnic_no` varchar(50) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `image` varchar(500) DEFAULT 'default_user.png',
  `remarks` varchar(200) DEFAULT NULL,
  `home_no` varchar(50) DEFAULT NULL,
  `office_no` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `postal_address` varchar(100) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `father_name`, `gender`, `occupation`, `dob`, `cnic_no`, `qualification`, `image`, `remarks`, `home_no`, `office_no`, `mobile_no`, `postal_address`, `email_address`, `password`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`, `student_id`) VALUES
(1, 'Farhan', 'Ali', 'Male', 'own Business', '2017-05-09', '12345-1234567-1', 'Matriculation', '20255_Koala.jpg', 'no remarks', '02112345678', '02112345678', '923312189275', 'House No. A-1/19, Malir Colony , karachi -74900', 'abc@gmail.com', '03314444444', 1, 1, '2017-05-13 08:15:54', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `installment` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `total_due_amount` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `vendor_id`, `date`, `payment_method`, `installment`, `amount`, `total_due_amount`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 0, '2011-11-11', 'Card', 0, 3322, 8888, 1, 1, '2017-05-06 04:51:12', 1, NULL, 0),
(2, 32, '2011-01-13', 'Cash', 0, 4334, 777, 1, 1, '2017-05-06 05:09:48', 1, NULL, 0),
(3, 0, '2022-02-02', 'Cash', 0, 456, 788, 1, 1, '2017-05-06 05:10:46', 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `practical_fee`
--

CREATE TABLE IF NOT EXISTS `practical_fee` (
  `p_form_id` int(11) NOT NULL,
  `std_name` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `phone_no` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `form_type` varchar(50) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `add_on` date DEFAULT NULL,
  `refrances` varchar(50) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `branch_id` int(10) NOT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practical_fee`
--

INSERT INTO `practical_fee` (`p_form_id`, `std_name`, `father_name`, `phone_no`, `address`, `form_type`, `fees`, `date`, `add_on`, `refrances`, `add_by`, `modify_on`, `modify_by`, `branch_id`, `status`) VALUES
(1, 'salman', 'ali', 2112345666, 'H.No#2-1,gulshan iqbal block A karachi', 'Practicle', 500, '2017-05-11', '2017-05-06', '1', 1, '2017-05-06 01:45:33', 1, 1, 1),
(2, 'cvzx', 'zxvzx', 2147483647, 'asdf', 'Practicle', 234, '2017-05-04', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(3, 'asdff', 'asdfsdf', 2147483647, 'afaafaf32132130', 'Practicle', 3345345, '2017-05-03', '2017-05-08', 'Friend', 1, NULL, NULL, 1, 0),
(4, 'asdf', 'asdf', 2147483647, 'asdf', 'Practicle', 234, '2017-05-12', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(5, 'asdf', 'asdf', 2147483647, 'asdf', 'Practicle', 234, '2017-05-12', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(6, 'asdf', 'asdf', 2147483647, 'asdf', 'Practicle', 234, '2017-05-12', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(7, 'asdf', 'asdf', 2147483647, 'asdf', 'Practicle', 234, '2017-05-12', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(8, 'asdf', 'asdf', 2147483647, 'asdf', 'Practicle', 234, '2017-05-12', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(9, 'asdf', 'asdf', 2147483647, 'asdf', 'Practicle', 234, '2017-05-12', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(10, 'asdf', 'asdf', 2147483647, 'asdf', 'Practicle', 234, '2017-05-12', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(11, 'asdf', 'asdf', 2147483647, 'asdf', 'Practicle', 234, '2017-05-12', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(12, 'asdf', 'asdf', 2147483647, 'asdf', 'Practicle', 234, '2017-05-12', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(13, 'asdf', 'asdf', 2147483647, 'asdf', 'Practicle', 234, '2017-05-12', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(14, 'asdf', 'asdf', 2147483647, 'asdf', 'Practicle', 234, '2017-05-12', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(15, 'asdf', 'asdf', 2147483647, 'asdfasdf', 'Practicle', 345245, '2017-05-11', '2017-05-08', 'Teacher', 1, NULL, NULL, 1, 0),
(16, 'asdf', 'asdfas', 2147483647, 'asdf', 'Practicle', 32432, '2017-05-06', '2017-05-08', 'Friend', 1, NULL, NULL, 1, 0),
(17, 'zaheer', 'aSDAs', 2147483647, 'asdfas', 'Practicle', 23, '2017-05-15', '2017-05-08', 'Friend', 1, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE IF NOT EXISTS `purchase_order` (
  `po_id` int(11) NOT NULL,
  `po_date` date DEFAULT NULL,
  `po_valid_date` date DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `notes_desc` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `refrance`
--

CREATE TABLE IF NOT EXISTS `refrance` (
  `ref_id` int(11) NOT NULL,
  `refrance_name` varchar(50) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refrance`
--

INSERT INTO `refrance` (`ref_id`, `refrance_name`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`, `branch_id`) VALUES
(1, 'freind', 1, '2017-05-17 00:00:00', NULL, NULL, 1, 1),
(2, 'sir anees', 1, NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `role_name` varchar(50) NOT NULL,
  `add_by` int(11) NOT NULL,
  `add_on` datetime NOT NULL,
  `modify_by` int(11) NOT NULL,
  `modify_on` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `branch_id`, `role_name`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 1, 'teacher', 1, '2017-05-31 00:00:00', 1, '2017-05-24 00:00:00', 1),
(2, NULL, 'Accountant', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sale_recipt`
--

CREATE TABLE IF NOT EXISTS `sale_recipt` (
  `s_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `note_id` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `net_bill` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(50) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `added_on` date DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_name`, `faculty_id`, `class_id`, `remarks`, `added_by`, `added_on`, `modify_by`, `modify_on`, `status`, `branch_id`) VALUES
(3, 'X-A1', 1, 2, '', 1, '2017-05-13', NULL, NULL, 1, 1),
(4, 'X-A2', 1, 2, '', 1, '2017-05-13', NULL, NULL, 1, 1),
(5, 'X-A3', 1, 2, '', 1, '2017-05-13', NULL, NULL, 1, 1),
(6, 'IX-A1', 1, 1, '', 1, '2017-05-13', NULL, NULL, 1, 1),
(7, 'IX-A2', 1, 1, '', 1, '2017-05-13', NULL, NULL, 1, 1),
(8, 'IX-A3', 1, 1, '', 1, '2017-05-13', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE IF NOT EXISTS `sms` (
  `sms_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sms_to` varchar(100) NOT NULL,
  `msg` varchar(200) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `faculty_id` varchar(100) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `sender_cat` varchar(50) DEFAULT NULL,
  `send_by_type` varchar(50) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `std_address` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `std_image` varchar(500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `std_remarks` varchar(200) DEFAULT NULL,
  `std_faculty_id` int(11) DEFAULT NULL,
  `std_class_id` int(11) DEFAULT NULL,
  `std_section_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `added_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `batch_id`, `student_name`, `parent_id`, `gender`, `contact`, `std_address`, `dob`, `doj`, `ref_id`, `std_image`, `email`, `password`, `std_remarks`, `std_faculty_id`, `std_class_id`, `std_section_id`, `branch_id`, `added_by`, `added_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 1, 'Hasnain', 1, 'Male', '923312189275', 'shah faisal colony karachi', '2017-12-11', '2017-12-11', 1, '6217_logo.JPG', 'ali@gmail.com', '1234567', 'no remarks', 1, 1, 6, 1, 1, '2017-05-17 01:11:52', 1, '2017-05-17 01:12:59', 1),
(2, 1, 'Kamran', 1, 'Male', '923312189275', 'gulshan iqbal karachi', '2017-12-11', '2017-12-11', 1, '21488_Penguins.jpg', 'ali@gmail.com', '1234567', 'no remarks', 1, 2, 4, 1, 1, '2017-05-17 01:17:02', 1, '2017-05-17 01:21:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_card`
--

CREATE TABLE IF NOT EXISTS `student_card` (
  `std_card_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `std_bar_code` int(11) NOT NULL,
  `issue_date` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `valid_up_to` int(11) NOT NULL,
  `add_by` int(11) NOT NULL,
  `add_on` int(11) NOT NULL,
  `modify_by` int(11) NOT NULL,
  `modify_on` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_leave`
--

CREATE TABLE IF NOT EXISTS `student_leave` (
  `std_leave_id` int(11) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `subject_name` varchar(50) DEFAULT NULL,
  `leave_cat` varchar(50) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `duration_start` date DEFAULT NULL,
  `duration_end` date DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_left`
--

CREATE TABLE IF NOT EXISTS `student_left` (
  `std_left_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `left_date` date DEFAULT NULL,
  `left_reason` varchar(50) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `remarks` text,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_left`
--

INSERT INTO `student_left` (`std_left_id`, `student_id`, `left_date`, `left_reason`, `add_by`, `add_on`, `branch_id`, `modify_by`, `modify_on`, `remarks`, `status`) VALUES
(2, 6, '2017-05-01', 'No Reason', 1, '2017-05-16 07:06:58', 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_payment_schedule`
--

CREATE TABLE IF NOT EXISTS `student_payment_schedule` (
  `std_pay_id` int(11) NOT NULL,
  `fee_type` varchar(11) DEFAULT NULL,
  `total_mon_sem_fee` int(11) DEFAULT NULL,
  `addmission_fee` int(11) DEFAULT NULL,
  `total_fee` int(11) DEFAULT NULL,
  `consession_fee` int(11) DEFAULT NULL,
  `total_net_fee` int(11) DEFAULT NULL,
  `resaon` varchar(50) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_payment_schedule`
--

INSERT INTO `student_payment_schedule` (`std_pay_id`, `fee_type`, `total_mon_sem_fee`, `addmission_fee`, `total_fee`, `consession_fee`, `total_net_fee`, `resaon`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`, `branch_id`, `student_id`) VALUES
(1, '1', 9400, 500, 9900, 0, 9900, 'Please Enter Concession Reason', 1, '2017-05-14 03:42:26', 1, '2017-05-17 01:12:59', 1, 1, 1),
(2, '2', 35700, 5000, 40700, 1500, 39200, 'Please Enter Concession Reason', 1, '2017-05-14 04:44:02', 1, '2017-05-17 01:21:18', 1, 1, 2),
(3, '2', 22800, 10, 22810, 5, 22805, 'Please Enter Concession Reason', 1, '2017-05-15 12:56:47', 1, '2017-05-15 12:57:48', 1, 1, 3),
(4, '1', 900, 50, 950, 5, 945, 'Please Enter Concession Reason', 1, '2017-05-15 04:50:33', NULL, NULL, 1, 1, 4),
(5, '2', 9000, 50, 9050, 5, 9045, 'Please Enter Concession Reason', 1, '2017-05-15 04:50:52', 1, '2017-05-15 04:53:23', 1, 1, 5),
(6, '1', 1800, 0, 1800, 0, 1800, 'Please Enter Concession Reason', 1, '2017-05-15 08:23:51', NULL, NULL, 1, 1, 6),
(7, '1', 4700, 500, 5200, 10, 5190, 'Please Enter Concession Reason', 1, '2017-05-16 01:08:29', NULL, NULL, 1, 1, 9),
(8, '1', 900, 0, 900, 0, 900, 'Please Enter Concession Reason', 1, '2017-05-16 02:20:03', NULL, NULL, 1, 1, 10),
(9, '1', 9400, 500, 9900, 0, 9900, 'Please Enter Concession Reason', 1, '2017-05-16 05:03:54', 1, '2017-05-17 01:12:59', 1, 1, 1),
(10, '2', 35700, 5000, 40700, 1500, 39200, 'Please Enter Concession Reason', 1, '2017-05-16 05:04:37', 1, '2017-05-17 01:21:18', 1, 1, 2),
(11, '1', 4700, 500, 5200, 10, 5190, 'Please Enter Concession Reason', 1, '2017-05-16 05:04:51', NULL, NULL, 1, 1, 3),
(12, '1', 1800, 500, 2300, 10, 2290, 'Please Enter Concession Reason', 1, '2017-05-16 05:06:57', NULL, NULL, 1, 1, 4),
(13, '1', 1800, 500, 2300, 10, 2290, 'Please Enter Concession Reason', 1, '2017-05-16 05:07:08', NULL, NULL, 1, 1, 5),
(14, '1', 1800, 500, 2300, 10, 2290, 'Please Enter Concession Reason', 1, '2017-05-16 05:07:15', NULL, NULL, 1, 1, 6),
(15, '2', 5400, 10, 5410, 5, 5405, 'Please Enter Concession Reason', 1, '2017-05-16 08:40:08', 1, '2017-05-16 08:41:34', 1, 1, 7),
(16, '2', 5400, 10, 5410, 5, 5405, 'Please Enter Concession Reason', 1, '2017-05-16 08:40:22', NULL, NULL, 1, 1, 8),
(17, '1', 9400, 500, 9900, 0, 9900, 'Please Enter Concession Reason', 1, '2017-05-17 01:11:52', 1, '2017-05-17 01:12:59', 1, 1, 1),
(18, '2', 35700, 5000, 40700, 1500, 39200, 'Please Enter Concession Reason', 1, '2017-05-17 01:17:02', 1, '2017-05-17 01:21:18', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_subjects`
--

CREATE TABLE IF NOT EXISTS `student_subjects` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_fee` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_subjects`
--

INSERT INTO `student_subjects` (`id`, `student_id`, `subject_id`, `subject_fee`) VALUES
(73, 2, 6, 800),
(72, 1, 5, 500),
(71, 1, 4, 1500),
(70, 1, 3, 900),
(69, 1, 2, 900),
(68, 1, 1, 900),
(67, 8, 1, 900),
(66, 7, 1, 900),
(38, 10, 2, 900),
(39, 1, 1, 900),
(40, 1, 2, 900),
(41, 1, 3, 900),
(42, 1, 4, 1500),
(43, 1, 5, 500),
(44, 2, 1, 900),
(45, 2, 2, 900),
(46, 2, 3, 900),
(47, 2, 4, 1500),
(48, 2, 5, 500),
(49, 3, 1, 900),
(50, 3, 2, 900),
(51, 3, 3, 900),
(52, 3, 4, 1500),
(53, 3, 5, 500),
(54, 4, 7, 450),
(55, 4, 8, 450),
(56, 4, 9, 450),
(57, 4, 10, 450),
(58, 5, 7, 450),
(59, 5, 8, 450),
(60, 5, 9, 450),
(61, 5, 10, 450),
(62, 6, 7, 450),
(63, 6, 8, 450),
(64, 6, 9, 450),
(65, 6, 10, 450);

-- --------------------------------------------------------

--
-- Table structure for table `student_visit_form`
--

CREATE TABLE IF NOT EXISTS `student_visit_form` (
  `inquiry_no` int(11) NOT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `inquiry_nature` varchar(50) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `inquiry_for` varchar(50) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_visit_form`
--

INSERT INTO `student_visit_form` (`inquiry_no`, `student_name`, `father_name`, `email`, `contact`, `gender`, `inquiry_nature`, `ref_id`, `inquiry_for`, `faculty_id`, `class_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`, `branch_id`) VALUES
(1, 'Hasnian', 'shahid', 'abc@gmail.com', '923312189275', 'Female', 'Student', 0, 'Admisssion', NULL, NULL, 1, '2017-05-15 01:07:59', NULL, NULL, 1, 1),
(2, 'nine niene', 'shahid', 'abc@gmail.com', '923312189275', 'Female', 'Visitor', 1, 'Admisssion', NULL, NULL, 1, '2017-05-15 02:04:57', NULL, NULL, 1, 1),
(3, 'nine niene', 'shahid', 'abc@gmail.com', '923312189275', 'Female', 'Visitor', 1, 'Admisssion', NULL, NULL, 1, '2017-05-15 02:35:13', NULL, NULL, 1, 1),
(4, 'nine niene', 'shahid', 'abc@gmail.com', '923312189275', 'Female', 'Visitor', 1, 'Admisssion', NULL, NULL, 1, '2017-05-15 02:35:13', NULL, NULL, 1, 1),
(5, 'Arsalan', 'shahid', 'abc@gmail.com', '923312189275', 'Female', 'Student', 2, 'Admisssion', NULL, NULL, 1, '2017-05-16 08:43:38', NULL, NULL, 1, 1),
(6, 'Hasnian', 'shahid', 'abc@gmail.com', '923312189275', 'Male', 'Student', 1, 'Admisssion', NULL, NULL, 1, '2017-05-17 01:26:39', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(50) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `fee_sub` int(11) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `added_on` date DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` date DEFAULT NULL,
  `status` tinyint(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `faculty_id`, `class_id`, `section_id`, `emp_id`, `fee_sub`, `remarks`, `branch_id`, `added_by`, `added_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 'English', 1, 1, 6, 2, 900, 'xyz', 1, 1, '2017-05-13', NULL, NULL, 1),
(2, 'Urdu', 1, 1, 6, 2, 900, 'xyz', 1, 1, '2017-05-13', NULL, NULL, 1),
(3, 'Bio', 1, 1, 6, 2, 900, 'xyz', 1, 1, '2017-05-13', NULL, NULL, 1),
(4, 'Chemistry', 1, 1, 6, 2, 1500, 'xyz', 1, 1, '2017-05-13', NULL, NULL, 1),
(5, 'PST', 1, 1, 6, 2, 500, 'xyz', 1, 1, '2017-05-13', NULL, NULL, 1),
(6, 'English', 1, 2, 4, 3, 800, '', 1, 1, '2017-05-14', NULL, NULL, 1),
(7, 'Urdu', 1, 2, 3, 1, 450, '', 1, 1, '2017-05-16', NULL, NULL, 1),
(8, 'Science', 1, 2, 3, 1, 450, '', 1, 1, '2017-05-16', NULL, NULL, 1),
(9, 'Math', 1, 2, 3, 1, 450, '', 1, 1, '2017-05-16', NULL, NULL, 1),
(10, 'Computer', 1, 2, 3, 1, 450, '', 1, 1, '2017-05-16', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_promotion`
--

CREATE TABLE IF NOT EXISTS `teacher_promotion` (
  `emp_prom_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `assign_reason` varchar(50) DEFAULT NULL,
  `promotion_date` date DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `test_id` int(11) NOT NULL,
  `test_name` varchar(50) DEFAULT NULL,
  `test_cat` varchar(50) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `total_mark` int(11) DEFAULT NULL,
  `min_marks` varchar(11) DEFAULT NULL,
  `obtain_mark` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `test_name`, `test_cat`, `faculty_id`, `class_id`, `section_id`, `subject_id`, `total_mark`, `min_marks`, `obtain_mark`, `teacher_id`, `test_date`, `student_id`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(1, 'a-test', 'Weekly', 1, 1, 6, 2, 100, '33', NULL, 1, '2017-05-16', NULL, 1, 1, '2017-05-16 03:27:33', 1, '2017-05-17 01:44:40', 2),
(2, 'acadmic', 'Weekly', 1, 1, 6, 4, 100, '33', NULL, 1, '2017-05-17', NULL, 1, 1, '2017-05-16 06:56:24', 1, '2017-05-16 09:57:53', 2),
(5, 'Physics', 'Periodic', 1, 1, 6, 1, 10, '10', NULL, 1, '2017-05-16', NULL, 1, 1, '2017-05-16 09:57:23', NULL, NULL, 2),
(6, 'weekly- test', 'Weekly', 1, 2, 3, 8, 100, '33', NULL, 3, '2017-05-09', NULL, 1, 1, '2017-05-17 11:52:27', NULL, NULL, 2),
(7, 'dailiy test ', 'Periodic', 1, 1, 6, 2, 100, '33', NULL, 1, '2017-05-19', NULL, 1, 1, '2017-05-17 01:45:49', NULL, NULL, 0),
(8, 'Physics', 'Weekly', 1, 1, 6, 1, 6, '10', NULL, 3, '2017-05-25', NULL, 1, 1, '2017-05-17 01:54:02', NULL, NULL, 0),
(9, 'Physics', 'Weekly', 1, 1, 6, 1, 6, '10', NULL, 3, '2017-05-25', NULL, 1, 1, '2017-05-17 01:57:13', NULL, NULL, 0),
(10, 'sdf', 'Weekly', 1, 1, 6, 1, 4, '3', NULL, 0, '2017-05-19', NULL, 1, 1, '2017-05-17 02:33:15', NULL, NULL, 0),
(11, 'sdf', 'Weekly', 1, 1, 6, 1, 4, '3', NULL, 0, '2017-05-19', NULL, 1, 1, '2017-05-17 02:33:20', NULL, NULL, 0),
(12, 'sdf', 'Weekly', 1, 1, 6, 1, 4, '3', NULL, 0, '2017-05-19', NULL, 1, 1, '2017-05-17 02:33:29', NULL, NULL, 0),
(13, 'asdf', 'Weekly', 1, 1, 6, 1, 200, '100', NULL, 3, '2017-05-12', NULL, 1, 1, '2017-05-17 02:35:56', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `test_category`
--

CREATE TABLE IF NOT EXISTS `test_category` (
  `test_cat_id` int(11) NOT NULL,
  `test_cat` varchar(50) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_details`
--

CREATE TABLE IF NOT EXISTS `test_details` (
  `test_detials_id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `obt_marks` int(11) NOT NULL,
  `test_status` varchar(50) NOT NULL,
  `attandance` varchar(50) NOT NULL,
  `remarks` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_details`
--

INSERT INTO `test_details` (`test_detials_id`, `std_id`, `test_id`, `obt_marks`, `test_status`, `attandance`, `remarks`) VALUES
(13, 1, 1, 1, 'fail', 'Present', ''),
(14, 2, 1, 2, 'fail', 'Present', ''),
(15, 3, 1, 34, 'pass', 'Present', ''),
(16, 1, 2, 44, 'pass', 'Present', ''),
(17, 2, 2, 44, 'pass', 'Present', ''),
(18, 3, 2, 44, 'pass', 'Present', ''),
(19, 1, 3, 44, 'pass', 'Present', ''),
(20, 2, 3, 44, 'pass', 'Present', ''),
(21, 3, 3, 70, 'pass', 'Present', '');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `ntn` int(11) DEFAULT NULL,
  `stn` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `vendor_desc` varchar(100) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `sale_price` float DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `add_by` int(11) DEFAULT NULL,
  `add_on` datetime DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `modify_on` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `phone`, `email`, `fax`, `ntn`, `stn`, `amount`, `vendor_desc`, `purchase_price`, `sale_price`, `branch_id`, `add_by`, `add_on`, `modify_by`, `modify_on`, `status`) VALUES
(2, 'hamderd safi', '02145612389', 'hamd@gmail.com', 245678, 1, 5, 0, '', 0, 0, 1, 1, '2017-05-04 10:21:32', 1, '2017-05-11 02:01:40', 2),
(3, 'alrazi kim', '02112345678', ' hamd@gmail.com', 123456, 0, 0, 123, 'Say Something', 1, 115, 1, 1, '2017-05-05 10:43:55', 1, '2017-05-10 12:39:19', 2),
(4, '$new_vendor_name', '$v_phone_number', '$v_email_address', 0, 0, 0, 0, '$v_desc', 0, 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL, 0),
(5, 'Vendor Name', '02112345678', 'alhamd@gmail.com', 123456, 0, 0, 123, 'Say Something', 1, 115, 1, 1, '2017-05-06 12:04:11', NULL, NULL, 1),
(6, 'Vendor Name', '02134567893', 'alhamd@gmail.com', 1234554, 0, 0, 56789, 'vendor description', 10, 115, 1, 1, '2017-05-06 12:05:44', NULL, NULL, 1),
(7, 'Vendor Name', '02112345678', 'alhamd@gmail.com', 454545454, 0, 0, 123, 'Say Something', 1, 115, 1, 1, '2017-05-06 12:12:26', NULL, NULL, 1),
(8, 'Vendor Name', '02112345678', 'al-hamd@gmail.com', 123456, 0, 0, 0, '', 0, 0, 1, 1, '2017-05-09 06:07:38', NULL, NULL, 0),
(9, 'Vendor Name', '02112345678', 'al-hamd@gmail.com', 123456, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2017-05-09 06:10:26', NULL, NULL, 0),
(10, 'salman', '02112345678', 'al-hamd@gmail.com', 123456, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2017-05-09 06:11:13', NULL, NULL, 1),
(11, 'new vendor', '02112345678', 'tpa@gmail.com', 868909, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2017-05-09 08:51:04', 1, '2017-05-09 08:51:41', 1),
(12, 'fsfds', '02112345678', 'al-hamd@gmail.com', 425856, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2017-05-09 09:10:27', 1, '2017-05-09 09:10:51', 0),
(13, 'djfdljg', '02112345678', 'alhamd@gmail.com', 6464446, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2017-05-09 09:15:45', 1, '2017-05-09 09:16:46', 1),
(14, 'Vendor Name', '02112345678', 'al-hamd@gmail.com', 123456, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2017-05-10 11:26:17', NULL, NULL, 1),
(15, 'karim abad', '02112345888', 'al-hamd@gmail.com', 123456, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2017-05-10 11:27:03', NULL, NULL, 1),
(16, 'salman ahmed', '02112345678', 'al-hamd@gmail.com', 123456, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2017-05-10 11:33:02', NULL, NULL, 1),
(17, 'zubair ahmed', '02112345678', 'al-hamd@gmail.com', 123456, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2017-05-10 11:34:34', NULL, NULL, 1),
(18, 'salman ahmed', '02112345678', 'al-hamd@gmail.com', 123456, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2017-05-10 11:35:47', NULL, NULL, 1),
(19, 'new abc', '02112345678', 'al-hamd@gmail.com', 123456, 0, 0, NULL, NULL, NULL, NULL, 1, 1, '2017-05-10 11:56:30', 1, '2017-05-10 11:56:42', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indexes for table `class_seat`
--
ALTER TABLE `class_seat`
  ADD PRIMARY KEY (`class_seat_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `employee_left`
--
ALTER TABLE `employee_left`
  ADD PRIMARY KEY (`emp_left_id`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`exp_cat_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `good_receiving`
--
ALTER TABLE `good_receiving`
  ADD PRIMARY KEY (`gr_no`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `offer_class`
--
ALTER TABLE `offer_class`
  ADD UNIQUE KEY `offer_class_id` (`offer_class_id`);

--
-- Indexes for table `other_fee`
--
ALTER TABLE `other_fee`
  ADD PRIMARY KEY (`recipt_no`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `practical_fee`
--
ALTER TABLE `practical_fee`
  ADD PRIMARY KEY (`p_form_id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `refrance`
--
ALTER TABLE `refrance`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sale_recipt`
--
ALTER TABLE `sale_recipt`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`sms_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_leave`
--
ALTER TABLE `student_leave`
  ADD PRIMARY KEY (`std_leave_id`);

--
-- Indexes for table `student_left`
--
ALTER TABLE `student_left`
  ADD PRIMARY KEY (`std_left_id`);

--
-- Indexes for table `student_payment_schedule`
--
ALTER TABLE `student_payment_schedule`
  ADD PRIMARY KEY (`std_pay_id`);

--
-- Indexes for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_visit_form`
--
ALTER TABLE `student_visit_form`
  ADD PRIMARY KEY (`inquiry_no`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher_promotion`
--
ALTER TABLE `teacher_promotion`
  ADD PRIMARY KEY (`emp_prom_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `test_category`
--
ALTER TABLE `test_category`
  ADD PRIMARY KEY (`test_cat_id`);

--
-- Indexes for table `test_details`
--
ALTER TABLE `test_details`
  ADD PRIMARY KEY (`test_detials_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `class_seat`
--
ALTER TABLE `class_seat`
  MODIFY `class_seat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employee_left`
--
ALTER TABLE `employee_left`
  MODIFY `emp_left_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `exp_cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `good_receiving`
--
ALTER TABLE `good_receiving`
  MODIFY `gr_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `offer_class`
--
ALTER TABLE `offer_class`
  MODIFY `offer_class_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `other_fee`
--
ALTER TABLE `other_fee`
  MODIFY `recipt_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `practical_fee`
--
ALTER TABLE `practical_fee`
  MODIFY `p_form_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `refrance`
--
ALTER TABLE `refrance`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sale_recipt`
--
ALTER TABLE `sale_recipt`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `sms_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `student_leave`
--
ALTER TABLE `student_leave`
  MODIFY `std_leave_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_left`
--
ALTER TABLE `student_left`
  MODIFY `std_left_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `student_payment_schedule`
--
ALTER TABLE `student_payment_schedule`
  MODIFY `std_pay_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `student_visit_form`
--
ALTER TABLE `student_visit_form`
  MODIFY `inquiry_no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `teacher_promotion`
--
ALTER TABLE `teacher_promotion`
  MODIFY `emp_prom_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `test_details`
--
ALTER TABLE `test_details`
  MODIFY `test_detials_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
