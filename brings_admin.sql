-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2018 at 01:49 PM
-- Server version: 5.6.38
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brings_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `brng_admin_cancel`
--

CREATE TABLE `brng_admin_cancel` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brng_admin_cancel`
--

INSERT INTO `brng_admin_cancel` (`id`, `order_id`) VALUES
(1, 330);

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_BANK_DETAILS`
--

CREATE TABLE `BRNG_BANK_DETAILS` (
  `id` int(11) NOT NULL,
  `usr_reg_id` int(11) DEFAULT NULL,
  `bank_name` varchar(45) DEFAULT NULL,
  `ifsc_code` varchar(45) DEFAULT NULL,
  `account_number` varchar(45) DEFAULT NULL,
  `account_name` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_BANK_DETAILS`
--

INSERT INTO `BRNG_BANK_DETAILS` (`id`, `usr_reg_id`, `bank_name`, `ifsc_code`, `account_number`, `account_name`, `branch`, `effective_date`) VALUES
(4, 77, 'Gaskets', '1234567890poiuyt', '12345678809', 'Soumyajit', 'Hyderabad', '2017-12-06 23:05:10'),
(5, 104, 'Axis', 'UTIB0000553', '5123456789012346', 'Kiran', 'Madhapur', '2017-10-09 19:16:43'),
(6, 113, 'SBI', '09283409', '298374892', 'Rajesh', 'SBI MO', '2017-10-15 11:27:28'),
(7, 114, 'KSJFS', '02349', '8093850983', 'Ram Mohan Rao', 'SBI MOTINAGAR', '2017-10-15 12:36:51'),
(8, 144, 'Kotak', 'Kkb666666', '1234567891111', 'Jiy', 'Madhapur', '2017-11-16 23:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `brng_lkp_file_path`
--

CREATE TABLE `brng_lkp_file_path` (
  `id` int(11) NOT NULL,
  `file_path` varchar(2000) DEFAULT NULL,
  `type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brng_lkp_file_path`
--

INSERT INTO `brng_lkp_file_path` (`id`, `file_path`, `type`) VALUES
(1, '/usr/local/tomcat8/webapps/Reports/Reports/', 'S'),
(2, 'http://brings.co.in/Reports/Reports/', 'H'),
(3, '/usr/local/tomcat8/webapps/Reports/Orders/Pickup/', 'O'),
(4, 'http://brings.co.in/Reports/Orders/Pickup/', 'M'),
(5, '/usr/local/tomcat8/webapps/Reports/Orders/Delivery/', 'D'),
(6, 'http://brings.co.in/Reports/Orders/Delivery/', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_LKP_IS_ACCEPTED`
--

CREATE TABLE `BRNG_LKP_IS_ACCEPTED` (
  `id` int(11) NOT NULL,
  `is_accepted` varchar(1) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_LKP_IS_ACCEPTED`
--

INSERT INTO `BRNG_LKP_IS_ACCEPTED` (`id`, `is_accepted`, `description`) VALUES
(1, 'Y', 'Yes'),
(2, 'N', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `brng_lkp_is_cancelled`
--

CREATE TABLE `brng_lkp_is_cancelled` (
  `id` int(11) NOT NULL,
  `is_cancelled` varchar(1) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brng_lkp_is_cancelled`
--

INSERT INTO `brng_lkp_is_cancelled` (`id`, `is_cancelled`, `description`) VALUES
(1, 'Y', 'Yes'),
(2, 'N', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_LKP_IS_PAID`
--

CREATE TABLE `BRNG_LKP_IS_PAID` (
  `id` int(11) NOT NULL,
  `is_paid` varchar(1) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BRNG_LKP_IS_PAID`
--

INSERT INTO `BRNG_LKP_IS_PAID` (`id`, `is_paid`, `description`) VALUES
(1, 'Y', 'Yes'),
(2, 'N', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_LKP_IS_PICKED`
--

CREATE TABLE `BRNG_LKP_IS_PICKED` (
  `id` int(11) NOT NULL,
  `is_picked` varchar(1) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_LKP_IS_PICKED`
--

INSERT INTO `BRNG_LKP_IS_PICKED` (`id`, `is_picked`, `description`) VALUES
(1, 'Y', 'Pikced'),
(2, 'N', 'Not Pikced');

-- --------------------------------------------------------

--
-- Table structure for table `brng_lkp_is_retry`
--

CREATE TABLE `brng_lkp_is_retry` (
  `id` int(11) NOT NULL,
  `is_retry` varchar(1) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brng_lkp_is_retry`
--

INSERT INTO `brng_lkp_is_retry` (`id`, `is_retry`, `description`) VALUES
(1, 'Y', 'Yes'),
(2, 'N', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_LKP_ORDER_DEL_STATUS`
--

CREATE TABLE `BRNG_LKP_ORDER_DEL_STATUS` (
  `id` int(11) NOT NULL,
  `del_status` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_LKP_ORDER_DEL_STATUS`
--

INSERT INTO `BRNG_LKP_ORDER_DEL_STATUS` (`id`, `del_status`, `description`) VALUES
(2, 'N', 'No'),
(1, 'Y', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `brng_lkp_otp_validated`
--

CREATE TABLE `brng_lkp_otp_validated` (
  `id` int(11) NOT NULL,
  `code` varchar(1) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brng_lkp_otp_validated`
--

INSERT INTO `brng_lkp_otp_validated` (`id`, `code`, `description`) VALUES
(1, 'Y', 'Yes'),
(2, 'N', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_LKP_PAY_PERCENT`
--

CREATE TABLE `BRNG_LKP_PAY_PERCENT` (
  `id` int(11) NOT NULL,
  `pay_percent` decimal(6,2) NOT NULL,
  `effective_date` date NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_LKP_PAY_PERCENT`
--

INSERT INTO `BRNG_LKP_PAY_PERCENT` (`id`, `pay_percent`, `effective_date`, `description`) VALUES
(1, '10.00', '2017-05-21', 'from may 21'),
(3, '10.10', '2017-05-21', 'from may 21'),
(1, '10.00', '2017-05-21', 'from may 21'),
(3, '10.10', '2017-05-21', 'from may 21');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_LKP_PAY_TYPE`
--

CREATE TABLE `BRNG_LKP_PAY_TYPE` (
  `id` int(11) NOT NULL,
  `type` varchar(1) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BRNG_LKP_PAY_TYPE`
--

INSERT INTO `BRNG_LKP_PAY_TYPE` (`id`, `type`, `description`) VALUES
(1, 'C', 'Card'),
(2, 'W', 'Wallet'),
(3, 'N', 'No'),
(4, 'P', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_LKP_PRICE_CALC`
--

CREATE TABLE `BRNG_LKP_PRICE_CALC` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brng_lkp_serviceman_validated`
--

CREATE TABLE `brng_lkp_serviceman_validated` (
  `id` int(11) NOT NULL,
  `code` varchar(1) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brng_lkp_serviceman_validated`
--

INSERT INTO `brng_lkp_serviceman_validated` (`id`, `code`, `description`) VALUES
(1, 'Y', 'Yes'),
(2, 'N', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_LKP_USR_REG_STATUS`
--

CREATE TABLE `BRNG_LKP_USR_REG_STATUS` (
  `id` int(11) NOT NULL,
  `status_type` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_LKP_USR_REG_STATUS`
--

INSERT INTO `BRNG_LKP_USR_REG_STATUS` (`id`, `status_type`, `description`) VALUES
(1, 'REGISTERED', 'registered'),
(2, 'PENDING', 'pending'),
(3, 'APPROVED', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_LKP_USR_REG_TYPE`
--

CREATE TABLE `BRNG_LKP_USR_REG_TYPE` (
  `id` int(11) NOT NULL,
  `usr_reg_type` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_LKP_USR_REG_TYPE`
--

INSERT INTO `BRNG_LKP_USR_REG_TYPE` (`id`, `usr_reg_type`, `description`) VALUES
(1, 'Non-Corporate', 'non-corporate'),
(2, 'Corporate', 'corporate');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_LKP_USR_TYPE`
--

CREATE TABLE `BRNG_LKP_USR_TYPE` (
  `id` int(11) NOT NULL,
  `usr_type` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_LKP_USR_TYPE`
--

INSERT INTO `BRNG_LKP_USR_TYPE` (`id`, `usr_type`, `description`) VALUES
(1, 'C', 'Customer'),
(2, 'S', 'ServiceMan');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_ORDER`
--

CREATE TABLE `BRNG_ORDER` (
  `id` int(11) NOT NULL,
  `order_seq` int(11) NOT NULL,
  `usr_login_id` int(11) NOT NULL,
  `from_address` varchar(1000) NOT NULL,
  `to_address` varchar(1000) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `is_picked_id` int(11) NOT NULL,
  `is_paid_id` int(11) NOT NULL,
  `is_accepted` int(11) NOT NULL,
  `company_price` decimal(10,2) NOT NULL,
  `service_price` decimal(10,2) NOT NULL,
  `order_time` datetime NOT NULL,
  `from_longitude` varchar(45) DEFAULT NULL,
  `from_latitude` varchar(45) DEFAULT NULL,
  `to_longitude` varchar(45) DEFAULT NULL,
  `to_latitude` varchar(45) DEFAULT NULL,
  `complete_pckup_address` varchar(500) DEFAULT NULL,
  `name_of_pickup_person` varchar(45) DEFAULT NULL,
  `contact_pckup_person` varchar(20) DEFAULT NULL,
  `complete_del_address` varchar(500) DEFAULT NULL,
  `name_of_del_person` varchar(45) DEFAULT NULL,
  `contact_del_person` varchar(20) DEFAULT NULL,
  `total_distance` decimal(10,2) DEFAULT NULL,
  `estimated_weight` int(11) DEFAULT NULL,
  `pay_tx_id` varchar(45) DEFAULT NULL,
  `is_cancelled_id` int(11) DEFAULT NULL,
  `pay_type` int(11) DEFAULT NULL,
  `delivery_code` varchar(45) DEFAULT NULL,
  `is_retry_id` int(11) DEFAULT NULL,
  `pickup_code` varchar(45) DEFAULT NULL,
  `trip_rating` int(2) NOT NULL DEFAULT '-1',
  `order_pic` varchar(500) DEFAULT NULL,
  `order_drop_pic` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_ORDER`
--

INSERT INTO `BRNG_ORDER` (`id`, `order_seq`, `usr_login_id`, `from_address`, `to_address`, `description`, `total_price`, `is_picked_id`, `is_paid_id`, `is_accepted`, `company_price`, `service_price`, `order_time`, `from_longitude`, `from_latitude`, `to_longitude`, `to_latitude`, `complete_pckup_address`, `name_of_pickup_person`, `contact_pckup_person`, `complete_del_address`, `name_of_del_person`, `contact_del_person`, `total_distance`, `estimated_weight`, `pay_tx_id`, `is_cancelled_id`, `pay_type`, `delivery_code`, `is_retry_id`, `pickup_code`, `trip_rating`, `order_pic`, `order_drop_pic`) VALUES
(185, 1, 30, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad, Telangana, India', 'Id', '122.00', 1, 1, 1, '109.80', '12.20', '2017-09-20 19:29:53', '78.3878608', '17.4925753', '78.4982741', '17.4399295', '482,bhagath singh nagar', 'Kiran', '8919448514', 'Dlf,Gachibowli', 'Zensar', '7893550571', '17.40', 2, NULL, 1, 3, '1234', 2, NULL, -1, NULL, ''),
(186, 1, 30, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad, Telangana, India', 'Id', '122.00', 2, 2, 2, '109.80', '12.20', '2017-09-20 19:29:54', '78.3878608', '17.4925753', '78.4982741', '17.4399295', '482,bhagath singh nagar', 'Kiran', '8919448514', 'Dlf,Gachibowli', 'Zensar', '7893550571', '17.40', 2, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(187, 1, 30, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad, Telangana, India', 'Id', '122.00', 2, 2, 2, '109.80', '12.20', '2017-09-20 19:29:59', '78.3878608', '17.4925753', '78.4982741', '17.4399295', '482,bhagath singh nagar', 'Kiran', '8919448514', 'Dlf,Gachibowli', 'Zensar', '7893550571', '17.40', 2, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(188, 1, 30, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad, Telangana, India', 'Id', '122.00', 2, 2, 2, '109.80', '12.20', '2017-09-20 19:30:01', '78.3878608', '17.4925753', '78.4982741', '17.4399295', '482,bhagath singh nagar', 'Kiran', '8919448514', 'Dlf,Gachibowli', 'Zensar', '7893550571', '17.40', 2, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(189, 2, 30, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad, Telangana, India', 'Id', '122.00', 2, 2, 1, '109.80', '12.20', '2017-09-20 19:30:02', '78.3878608', '17.4925753', '78.4982741', '17.4399295', '482,bhagath singh nagar', 'Kiran', '8919448514', 'Dlf,Gachibowli', 'Zensar', '7893550571', '17.40', 2, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(190, 6, 30, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Gachibowli - Miyapur Road, Whitefields, Hyderabad, Telangana, India', 'Id', '74.50', 1, 1, 1, '67.05', '7.45', '2017-09-20 19:37:28', '78.3878556', '17.4926017', '78.36482890000002', '17.4566454', '482,bhagath singh nagar', 'Kiran', '8919448514', 'Dlf,Gachibowli', 'Zensar', '7893550571', '7.90', 2, NULL, 2, 3, '7026', 2, NULL, -1, NULL, 'http://brings.co.in/Reports/Orders/Delivery/190/App_Icon.png'),
(191, 7, 30, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad Jn, Bhoiguda, Secunderabad, Telangana, India', 'Ia', '126.00', 2, 2, 1, '113.40', '12.60', '2017-09-20 19:48:49', '78.3878556', '17.4926017', '78.50159559999997', '17.4337397', 'Kphb', 'K', '8919448514', 'Secunderabad station', 'Ku', '7893550571', '18.20', 3, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(192, 1, 29, 'Kukatpally Housing Board - Hitec City Rd, Jubilee Enclave, HITEC City, Hyderabad, Telangana 500081, India', 'Kukatpally, Hyderabad, Telangana, India', 'Laptop', '159.00', 1, 1, 1, '143.10', '15.90', '2017-09-20 20:13:50', '78.3790842', '17.4484134', '78.39964409999993', '17.4947934', 'A', 'V', '950265016', 'VVa', 'Bzb', '979494949', '7.80', 22, '403993715516637709', 2, 1, '6325', 2, NULL, -1, NULL, ''),
(193, 8, 30, '4, Street Number 3, Patrika Nagar, HITEC City, Hyderabad, Telangana 500081, India', 'Gachibowli - Miyapur Road, Whitefields, Hyderabad, Telangana, India', 'Id', '60.00', 2, 2, 2, '54.00', '6.00', '2017-09-20 20:49:17', '78.3790675', '17.4477584', '78.36482890000002', '17.4566454', '482.bhagath Singh nagar', 'Ki', '8919448514', 'Dlf,Gachibowli', 'Zensar', '7893550571', '3.50', 2, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(194, 9, 30, '4, Street Number 3, Patrika Nagar, HITEC City, Hyderabad, Telangana 500081, India', 'Gachibowli - Miyapur Road, Whitefields, Hyderabad, Telangana, India', 'Id', '60.00', 2, 2, 2, '54.00', '6.00', '2017-09-20 20:49:18', '78.3790675', '17.4477584', '78.36482890000002', '17.4566454', '482.bhagath Singh nagar', 'Ki', '8919448514', 'Dlf,Gachibowli', 'Zensar', '7893550571', '3.50', 2, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(195, 10, 30, '4, Street Number 3, Patrika Nagar, HITEC City, Hyderabad, Telangana 500081, India', 'Gachibowli - Miyapur Road, Whitefields, Hyderabad, Telangana, India', 'Id', '60.00', 1, 2, 1, '54.00', '6.00', '2017-09-20 20:49:18', '78.3790675', '17.4477584', '78.36482890000002', '17.4566454', '482.bhagath Singh nagar', 'Ki', '8919448514', 'Dlf,Gachibowli', 'Zensar', '7893550571', '3.50', 2, NULL, 2, 3, '2450', 2, NULL, -1, NULL, ''),
(196, 1, 33, 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'test', '190.00', 2, 2, 1, '171.00', '19.00', '2017-09-21 23:01:55', '78.39964409999993', '17.4947934', '78.34891679999998', '17.4400802', 'sdf', 'sdfs', '234324', '234324', 'sdfdsf', '234324', '14.00', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(197, 1, 33, 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'test', '190.00', 2, 2, 1, '171.00', '19.00', '2017-09-21 23:01:55', '78.39964409999993', '17.4947934', '78.34891679999998', '17.4400802', 'sdf', 'sdfs', '234324', '234324', 'sdfdsf', '234324', '14.00', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(198, 3, 33, 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'hh', '190.00', 2, 2, 1, '171.00', '19.00', '2017-09-21 23:11:34', '78.39964409999993', '17.4947934', '78.34891679999998', '17.4400802', 'ghjg', 'ghjGHGgh', '65765', 'HJGHJG', 'HJHJG', '765765', '14.00', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(199, 4, 33, 'Gachibowli, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'Bsb', '186.00', 2, 2, 1, '167.40', '18.60', '2017-09-22 08:12:25', '78.34891679999998', '17.4400802', '78.39964409999993', '17.4947934', 'Vavav', 'Bzbz', '64646', 'Bzb', 'Bss', '67949', '13.20', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(200, 5, 33, 'Gachibowli, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'Test', '186.00', 2, 2, 1, '167.40', '18.60', '2017-09-22 23:46:32', '78.34891679999998', '17.4400802', '78.39964409999993', '17.4947934', 'Test', 'Gzgsg', '6767699779', 'Vzvsv', 'Bzbzv', NULL, '13.20', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(201, 1, 34, '192, Don Bosco Rd, BSP Colony, Erragadda, Hyderabad, Telangana 500045, India', 'Gachibowli, Hyderabad, Telangana, India', 'Books', '184.50', 2, 2, 1, '166.05', '18.45', '2017-09-24 17:07:35', '78.4255987', '17.4539823', '78.34891679999998', '17.4400802', 'kukatpally', 'srikanth', '9010661474', 'kukatpally', 'srinath', '9010661474', '12.90', 22, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(202, 2, 34, '192, Don Bosco Rd, BSP Colony, Erragadda, Hyderabad, Telangana 500045, India', 'Gachibowli, Hyderabad, Telangana, India', 'Books', '184.50', 1, 2, 1, '166.05', '18.45', '2017-09-24 17:07:46', '78.4255987', '17.4539823', '78.34891679999998', '17.4400802', 'kukatpally', 'srikanth', '9010661474', 'kukatpally', 'srinath', '9010661474', '12.90', 22, NULL, 2, 3, '6811', 2, NULL, -1, NULL, ''),
(203, 1, 35, '13-1-55/E/34, Panduranga Nagar, Avanthi Nagar, Erragadda, Hyderabad, Telangana 500018, India', 'Gachibowli, Hyderabad, Telangana, India', 'bike', '578.50', 1, 2, 1, '520.65', '57.85', '2017-09-24 18:41:35', '78.4251132', '17.4599831', '78.34891679999998', '17.4400802', 'mothinagar', 'srinivas', '9010661474', 'mothinagar', 'rajesh', '9010661474', '13.70', 100, NULL, 2, 3, '4689', 2, NULL, -1, NULL, ''),
(204, 6, 33, '\\\\ \\, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.50', 1, 2, 1, '148.95', '16.55', '2017-09-25 20:17:27', '78.4078494', '17.4507622', '78.39964409999993', '17.4947934', 'sdfsf', 'sdfsdf', '234324', 'sdfsd', 'sdfsdf', '234324', '9.10', 22, NULL, 2, 3, '9977', 2, NULL, -1, NULL, ''),
(205, 1, 41, 'Gachibowli, Hyderabad, Telangana, India', 'Borabanda, Hyderabad, Telangana, India', 'Test', '235.50', 2, 2, 1, '211.95', '23.55', '2017-09-26 21:39:39', '78.34891679999998', '17.4400802', '78.41261629999997', '17.4565082', 'Bzb', 'Bzbzb', '979799797', 'Bzbz', 'Bzbz', '979797', '12.10', 33, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(206, 2, 41, 'Gachibowli, Hyderabad, Telangana, India', 'Borabanda, Hyderabad, Telangana, India', 'Test', '235.50', 1, 1, 1, '211.95', '23.55', '2017-09-26 21:40:38', '78.34891679999998', '17.4400802', '78.41261629999997', '17.4565082', NULL, NULL, NULL, NULL, NULL, NULL, '12.10', 33, '403993715516666126', 2, 1, '2234', 2, NULL, -1, NULL, ''),
(207, 1, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Gachibowli - Miyapur Road, Whitefields, Hyderabad, Telangana, India', 'Doca', '74.50', 2, 2, 2, '67.05', '7.45', '2017-09-27 10:10:03', '78.3878556', '17.4926017', '78.36482890000002', '17.4566454', '482,Bhagat Singh nagar', 'Jj', '7893550571', 'Zensar,dlf', 'Ammu', '8309083382', '7.90', 3, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(208, 2, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Gachibowli, Hyderabad, Telangana, India', 'Docs', '97.50', 2, 2, 1, '87.75', '9.75', '2017-09-27 10:14:26', '78.3878556', '17.4926017', '78.34891679999998', '17.4400802', '482, Bhagat Singh nagar', 'Jj', '7893550571', 'Zensar, dlf,gachibowli', 'Hhh', '8309083382', '12.50', 5, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(209, 3, 41, '848/A, Site-3, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Test', '165.00', 2, 2, 1, '148.50', '16.50', '2017-09-27 10:42:43', '78.4082505', '17.4503943', '78.39964409999993', '17.4947934', 'Vaga', 'Bzbz', '9797', 'Zbbz', 'Zbzb', '97979', '9.00', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(210, 3, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad Jn, Bhoiguda, Secunderabad, Telangana, India', 'Docs', '126.00', 2, 2, 2, '113.40', '12.60', '2017-09-27 14:38:33', '78.3878556', '17.4926017', '78.50159559999997', '17.4337397', '482, Bhagat Singh nagar, kphb', 'Ammu', '8309083382', 'Ctse,Dlf building, gachibowli', 'Anu', '9866776118', '18.20', 2, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(211, 1, 45, '\\\\ \\, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Aaa', '180.00', 2, 2, 1, '162.00', '18.00', '2017-09-28 10:02:02', '78.4078507', '17.4504163', '78.39964409999993', '17.4947934', 'Bzbzb', 'Bzbzb', '7979', 'Bzbzb', 'Bz z', '97979', '9.00', 25, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(212, 4, 39, 'Kukatpally Housing Board Road, Kukatpally Housing Board Colony, Hyderabad, Telangana, India', 'Borabanda, Hyderabad, Telangana, India', NULL, '88.00', 2, 2, 1, '79.20', '8.80', '2017-09-28 16:39:00', '78.3894464', '17.4830996', '78.41261629999997', '17.4565082', NULL, NULL, NULL, NULL, NULL, NULL, '5.60', 10, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(213, 1, 46, 'Kukatpally, Hyderabad, Telangana, India', 'HITEC City, Hyderabad, Telangana, India', 'Mobile', '4082.50', 2, 2, 1, '3674.25', '408.25', '2017-09-30 15:31:19', '78.39964409999993', '17.4947934', '78.37623039999994', '17.4474117', 'C', 'B', '7989667815', 'Hyderabad', 'Ch', '6352781548', '8.50', 806, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(214, 4, 41, '\\\\ \\, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.50', 2, 2, 1, '148.95', '16.55', '2017-10-02 13:00:07', '78.4077052', '17.450667799999998', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdf', 'sdf', '234', '9.10', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(215, 5, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Gachibowli Road, Gachibowli, Hyderabad, Telangana, India', 'Docs', '98.00', 2, 2, 1, '88.20', '9.80', '2017-10-04 17:29:33', '78.3878556', '17.4926017', '78.35113350000006', '17.4466391', '482,Bhagat Singh nagar,kphb', 'Jeju', '8919448514', 'Cts,dlf', 'Raju', '8106636267', '12.60', 3, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(216, 6, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad Jn, Bhoiguda, Secunderabad, Telangana, India', 'Foc', '126.00', 1, 1, 1, '113.40', '12.60', '2017-10-04 17:44:10', '78.3878556', '17.4926017', '78.50159559999997', '17.4337397', '482, bhaghat Singh Nagar, KPHB', 'Hhh', '7893550571', 'Secundrabad', 'King', '8106639267', '18.20', 5, '403993715516693136', 2, 1, '5866', 2, NULL, -1, NULL, ''),
(217, 1, 48, '817, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Hitech City Road, Sri Rama Colony, Hyderabad, Telangana, India', 'Key', '78.00', 2, 2, 1, '70.20', '7.80', '2017-10-04 18:34:08', '78.386178', '17.4911264', '78.39573810000002', '17.4397382', 'Bhagat Singh nagar,kphb colony', 'Kay', '8919448514', 'Cyberspace,hitec city', 'Chethu', '8106636267', '8.60', 1, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(218, 2, 46, 'Tirupati, Andhra Pradesh, India', 'Hyderabad, Telangana, India', 'Laptop', '2875.00', 2, 2, 1, '2587.50', '287.50', '2017-10-04 19:11:14', '79.41917949999993', '13.6287557', '78.486671', '17.385044', 'Bsj', 'Cgg', '9012345678', 'Vvbbb', 'nannwn', '9125807411', '553.00', 20, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(219, 1, 49, '848/A, Site-3, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Bab', '165.00', 2, 1, 1, '148.50', '16.50', '2017-10-06 23:26:37', '78.4082578', '17.4503688', '78.39964409999993', '17.4947934', 'BBs', 'BBs', '97949', 'BBb', 'Hssj', '97949', '9.00', 22, '403993715516741244', 2, 1, NULL, 2, NULL, -1, NULL, ''),
(220, 2, 49, '8-4-369/849/A, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.50', 1, 1, 1, '148.95', '16.55', '2017-10-06 23:29:32', '78.4080618', '17.4505257', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234324', 'sdf', 'sdfdsf', '234324', '9.10', 22, '403993715516706433', 2, 1, '5825', 2, NULL, -1, NULL, ''),
(221, 7, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Gachibowli Road, Gachibowli, Hyderabad, Telangana, India', 'Documents', '123.00', 2, 2, 2, '110.70', '12.30', '2017-10-09 18:24:51', '78.3878556', '17.4926017', '78.35113350000006', '17.4466391', '482,Bhagat Singh nagar, kphb', 'Kiran', '8919448514', 'Cts,dlf,gachibowli', 'Sunil', '8106636267', '12.60', 10, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(222, 8, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Gachibowli Road, Gachibowli, Hyderabad, Telangana, India', 'Documents', '123.00', 2, 2, 2, '110.70', '12.30', '2017-10-09 18:31:16', '78.3878444', '17.4926124', '78.35113350000006', '17.4466391', '482,Bhagat Singh nagar,kphb', 'Kiran', '8919448514', 'Cts,dlf, gachibowli', 'Sunilq', '8106636267', '12.60', 10, NULL, 1, 3, NULL, 2, '1234', -1, NULL, ''),
(223, 9, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad Jn, Bhoiguda, Secunderabad, Telangana, India', 'Key', '126.00', 1, 1, 1, '113.40', '12.60', '2017-10-09 18:46:01', '78.3878585', '17.4925985', '78.50159559999997', '17.4337397', '482,Bhagat Singh nagar, kphb', 'Jai', '9866776118', 'Tarnaka,secundrabad', 'King', '7893550571', '18.20', 3, '403993715516712847', 2, 1, '6106', 2, NULL, -1, NULL, ''),
(224, 3, 46, 'Hyderabad, Telangana, India', 'Tirupati, Andhra Pradesh, India', 'Nothing', '5310.00', 2, 2, 1, '4779.00', '531.00', '2017-10-09 21:44:54', '78.486671', '17.385044', '79.41917949999993', '13.6287557', 'G', 'B', '987654321', 'Cccc c', 'Ccc', '1234567890', '560.00', 500, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(225, 4, 46, 'Hyderabad, Telangana, India', 'Secunderabad, Telangana, India', 'Fuck', '2553.00', 2, 2, 1, '2297.70', '255.30', '2017-10-10 15:30:50', '78.486671', '17.385044', '78.4982741', '17.4399295', 'G', 'J', '9999999999', 'Hhhh', 'Hhhhh', '9999999999', '8.60', 500, NULL, 2, 3, NULL, 1, '5219', -1, NULL, ''),
(226, 3, 49, '8-4-369/849/A, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'test', '165.00', 2, 2, 1, '148.50', '16.50', '2017-10-12 22:10:51', '78.4080961', '17.4504306', '78.39964409999993', '17.4947934', 'sdf', 'sdfs', '2342', 'sdfdsf', 'sdfdsf', '242344', '9.00', 22, NULL, 2, 3, NULL, 2, '4896', -1, NULL, ''),
(227, 4, 49, '8-4-369/849/A, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.00', 2, 2, 1, '148.50', '16.50', '2017-10-12 22:11:46', '78.4080961', '17.4504306', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '2342', 'sdfdsf', 'sdfsdf', '2234324', '9.00', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(228, 5, 49, '848/A, Site-3, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.00', 1, 2, 1, '148.50', '16.50', '2017-10-12 22:14:08', '78.4081511', '17.450417599999998', '78.39964409999993', '17.4947934', 's', 's', '234', 'sdf', 'sdfds', '23434', '9.00', 22, NULL, 2, 3, '6666', 2, '6104', -1, NULL, ''),
(229, 6, 49, '848/A, Site-3, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'swerew', '165.00', 2, 2, 1, '148.50', '16.50', '2017-10-12 22:16:06', '78.4081456', '17.4504158', '78.39964409999993', '17.4947934', 'sdf', 'sdfs', '234', 'xsfd', 'sdfdsf', '234324', '9.00', 22, NULL, 2, 3, NULL, 2, '3968', -1, 'http://brings.co.in/Reports/Orders/229/img_girl.jpg', ''),
(230, 7, 49, '848/A, Site-3, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.00', 2, 2, 2, '148.50', '16.50', '2017-10-12 22:19:15', '78.4081947', '17.4504985', '78.39964409999993', '17.4947934', 's', 's', '444', 'sdf', 'sdf', '234234', '9.00', 22, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(231, 8, 49, '848/A, Site-3, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'nnhj', '275.00', 2, 2, 1, '247.50', '27.50', '2017-10-12 22:21:39', '78.4081456', '17.4503806', '78.39964409999993', '17.4947934', 'sfd', 'sdfdsf', '2342', 'sdfsdf', 'sdfsdf', '234234', '9.00', 44, NULL, 2, 3, NULL, 1, '9740', -1, NULL, ''),
(232, 9, 49, 'Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.50', 2, 2, 1, '148.95', '16.55', '2017-10-13 23:55:16', '78.40770499999999', '17.4505427', '78.39964409999993', '17.4947934', 'sdfsdfsfd', 'sdfsdf', '234234', 'sdfsf', 'sdfdsf', '234234', '9.10', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(233, 10, 49, 'Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.50', 2, 2, 1, '148.95', '16.55', '2017-10-13 23:56:17', '78.40770499999999', '17.4505427', '78.39964409999993', '17.4947934', 'sdfsdfsfd', 'sdfsdf', '234234', 'sdfsf', 'sdfdsf', '234234', '9.10', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(234, 11, 49, 'J-724/A, Peddamma Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdfdsf', '165.50', 2, 2, 2, '148.95', '16.55', '2017-10-13 23:58:44', '78.4072797', '17.4506643', '78.39964409999993', '17.4947934', 'sdf', 'dsfdsf', '234234', 'sdfsf', 'sdfsdf', '234324', '9.10', 22, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(235, 12, 49, '\' \', Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdfsdf', '174.00', 2, 2, 1, '156.60', '17.40', '2017-10-14 00:01:51', '78.4067812', '17.4507986', '78.39964409999993', '17.4947934', 'sdf', 'sdfs', '23432', '4sdfsdf', 'sdfdsfdsf', '234234', '9.80', 23, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(236, 13, 49, 'J-724/A, Peddamma Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.50', 2, 2, 1, '148.95', '16.55', '2017-10-14 00:04:08', '78.4072556', '17.4506415', '78.39964409999993', '17.4947934', 'sdfsdf', 'sdfsdfds', '234324', 'sdfdsfdsf', 'sfddsfdsf', '234324', '9.10', 22, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(237, 14, 49, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '170.50', 2, 2, 1, '153.45', '17.05', '2017-10-14 00:26:16', '78.4078313', '17.4507004', '78.39964409999993', '17.4947934', 'sdf', 'sdfdsf', '23423', 'sdfdsf', 'sdfsdf', '234324', '9.10', 23, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(238, 15, 49, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Bshsh', '165.00', 1, 2, 1, '148.50', '16.50', '2017-10-15 11:44:12', '78.4083283', '17.4505467', '78.39964409999993', '17.4947934', 'Bbsbs', 'Besb', '44646', 'Bzbz', 'Bsbsb', '97979', '9.00', 22, NULL, 2, 3, '9935', 1, NULL, -1, NULL, ''),
(239, 10, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad Jn, Bhoiguda, Secunderabad, Telangana, India', 'Key', '126.00', 1, 1, 1, '113.40', '12.60', '2017-10-15 20:50:42', '78.3878585', '17.4925985', '78.50159559999997', '17.4337397', '482,Bhagat Singh naga,kphb', 'Sreee', '8919448514', 'Cgi,dlf,gachibowli', 'King', '7893550571', '18.20', 2, '403993715516741829', 2, 1, '9691', 1, NULL, -1, NULL, ''),
(240, 11, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Gachibowli Road, Gachibowli, Hyderabad, Telangana, India', 'Books', '99.50', 1, 1, 1, '89.55', '9.95', '2017-10-15 21:13:23', '78.3878556', '17.4926017', '78.35113350000006', '17.4466391', '482,Bhagat Singh nagar,kphb', 'Jojo', '986676118', '102,cyber towers,hitech city', 'Giri', '8919448514', '12.90', 5, 'NA', 2, 2, '8560', 1, NULL, -1, NULL, ''),
(241, 1, 28, 'Gachibowli, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'Packet', '101.00', 1, 1, 1, '90.90', '10.10', '2017-10-15 21:37:25', '78.34891679999998', '17.4400802', '78.39964409999993', '17.4947934', 'Giuhh', 'Fhhhj', '9876543210', 'Rghjh', 'Cvvbn', '9874113365', '13.20', 5, '403993715516741855', 2, 1, '4008', 1, NULL, 3, NULL, ''),
(242, 1, 50, 'Omnitech InfoSolutions, 1st Floor, Bulding No 17, Main Rd, Goutam Nagar, Badi Chowdi, Kachiguda, Hyderabad, Telangana 501301, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdffs', '261.50', 2, 2, 1, '235.35', '26.15', '2017-10-15 21:40:24', '78.486671', '17.385044', '78.39964409999993', '17.4947934', 'dfvgdf', 'hkjh', '87987', 'kjkhk', 'kjhkjh', '7987987', '17.30', 33, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(243, 12, 39, '559, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Gachibowli Road, Gachibowli, Hyderabad, Telangana, India', 'Htt', '98.00', 1, 1, 1, '88.20', '9.80', '2017-10-15 21:43:30', '78.386889', '17.4911683', '78.35113350000006', '17.4466391', '482,Bhagat Singh nagar,kphb', 'Mm', '9866776118', 'Cgi', 'Shil', '8919448514', '12.60', 3, 'NA', 2, 2, '0700', 2, NULL, -1, NULL, ''),
(244, 2, 50, 'J-415, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'BB', '165.50', 1, 2, 1, '148.95', '16.55', '2017-10-15 21:58:15', '78.4078951', '17.4506237', '78.39964409999993', '17.4947934', 'Babab', 'BHB', '7676', 'Bzbzb', 'BBB', '97979', '9.10', 22, NULL, 2, 3, '0012', 2, NULL, -1, NULL, ''),
(245, 13, 39, '559, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad Jn, Bhoiguda, Secunderabad, Telangana, India', 'Bag', '141.00', 2, 2, 1, '126.90', '14.10', '2017-10-15 21:59:58', '78.386889', '17.4911683', '78.50159559999997', '17.4337397', '482, Bhagat Singh nagar, kphb', 'Hai', '9866776118', '7553,kkkkk', 'Kk', '7893550571', '18.20', 8, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(246, 2, 28, 'Secunderabad, Telangana, India', 'Madinaguda, Hyderabad, Telangana, India', 'Lappy', '138.00', 1, 1, 1, '124.20', '13.80', '2017-10-15 22:02:12', '78.4982741', '17.4399295', '78.34012929999994', '17.4936856', 'Fghhh', 'Vghjj', '987456321', 'Ghjjj', 'Cbhhj', '9654123587', '20.60', 5, NULL, 2, 2, '7543', 2, NULL, -1, NULL, ''),
(247, 3, 50, 'J-724/A, Peddamma Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sd;lf', '220.50', 2, 2, 1, '198.45', '22.05', '2017-10-19 16:31:35', '78.4070672', '17.4507473', '78.39964409999993', '17.4947934', 'sdfkl', 'lkjklj', '987987', 'kljklj', 'lklj', '898098', '9.10', 33, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(248, 4, 50, 'J-293, Peddamma Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '169.00', 2, 2, 1, '152.10', '16.90', '2017-10-19 17:29:57', '78.40676859999999', '17.450804299999998', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdf', 'sdfsdf', '234324', '9.80', 22, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(249, 5, 50, 'J-293, Peddamma Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdfdsf', '169.00', 2, 1, 1, '152.10', '16.90', '2017-10-19 18:14:38', '78.4067318', '17.4508111', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '23432', 'sdfdsf', 'sdfdsf', '234324', '9.80', 22, NULL, 2, 2, NULL, 1, NULL, -1, NULL, ''),
(250, 1, 52, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Sugar', '180.00', 2, 2, 1, '162.00', '18.00', '2017-10-19 20:09:40', '78.4083283', '17.4505467', '78.39964409999993', '17.4947934', 'Bzbzb', 'BBB', '979', 'Bzbzb', 'Bzbzb', '9797979', '9.00', 25, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(251, 2, 52, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Bsbs', '385.00', 2, 2, 1, '346.50', '38.50', '2017-10-19 20:14:48', '78.4083283', '17.4505467', '78.39964409999993', '17.4947934', 'Haha', 'Babba', '9797997979', 'BBB', 'NN', '9779', '9.00', 66, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(252, 3, 52, '848/A, Site-3, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'BBa', '165.00', 2, 2, 1, '148.50', '16.50', '2017-10-19 20:18:50', '78.4083335', '17.4505431', '78.39964409999993', '17.4947934', 'Baba', 'Haba', '979499797', 'BBB', 'BB', '97979', '9.00', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(253, 6, 50, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 20:21:22', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(254, 4, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 20:24:03', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(255, 5, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 20:34:05', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(256, 6, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 20:35:08', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(257, 7, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 20:38:07', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(258, 8, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 20:40:49', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(259, 9, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 20:45:28', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(260, 10, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 20:49:21', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(261, 11, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 20:50:02', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(262, 12, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 22:42:19', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(263, 13, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 22:45:31', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(264, 14, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 22:57:35', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(265, 15, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 22:58:03', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(266, 16, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 22:58:33', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(267, 17, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 2, 1, '164.25', '18.25', '2017-10-19 23:04:37', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(268, 18, 52, '8/3/169/60/1161, Habeeb Fatima Nagar Rd, Pratibha Nagar, Jubilee Hills, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '182.50', 2, 1, 1, '164.25', '18.25', '2017-10-19 23:06:51', '78.41433710000001', '17.4454737', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfdsf', 'sdfdsf', '234324', '12.50', 22, '403993715516754312', 2, 1, NULL, 2, NULL, -1, NULL, ''),
(269, 19, 52, '8-4-369/849/A, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Bzbz', '165.00', 2, 1, 1, '148.50', '16.50', '2017-10-20 09:11:17', '78.4080582', '17.4504513', '78.39964409999993', '17.4947934', 'Vv', 'Vv', '999', 'Bbb', 'Bbb', '999', '9.00', 22, '403993715516754313', 2, 1, NULL, 1, NULL, -1, NULL, ''),
(270, 1, 40, 'J-293, Peddamma Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '169.00', 2, 2, 1, '152.10', '16.90', '2017-10-24 21:57:08', '78.4067472', '17.4508106', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdfsdf', 'sdfsdf', '23432', '9.80', 22, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(271, 2, 40, '848/A, Site-3, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.00', 2, 2, 1, '148.50', '16.50', '2017-10-24 21:58:30', '78.4081732', '17.4504008', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '23432', 'sdfdsf', 'sdfsdf', '234234', '9.00', 22, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(272, 3, 40, '848/A, Site-3, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdfsf', '165.00', 2, 2, 1, '148.50', '16.50', '2017-10-24 22:02:45', '78.4081625', '17.450412099999998', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '234', 'sdf', 'sdfsdf', '234324', '9.00', 22, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(273, 4, 40, '848/A, Site-3, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdfds', '165.00', 2, 2, 1, '148.50', '16.50', '2017-10-24 22:07:57', '78.40822849999999', '17.4503968', '78.39964409999993', '17.4947934', 'sdfsd', 'fsdfsd', '234324', 'sdfdsf', 'sdfsdf', '24324', '9.00', 22, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(274, 1, 54, '185, Panduranga Nagar, Avanthi Nagar, Erragadda, Hyderabad, Telangana 500018', 'Kukatpally Housing Board Colony, Hyderabad, Telangana, India', 'Mobile', '82.50', 2, 2, 1, '74.25', '8.25', '2017-10-24 23:12:26', '78.4252211', '17.4602164', '78.38706679999996', '17.4833526', 'PR Nagar, Hyderabad', 'Srinivas', '9010661474', 'PR Nagar, Hyderabad', 'Rajeah', '9010661474', '9.50', 2, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(275, 2, 54, '185, Panduranga Nagar, Avanthi Nagar, Erragadda, Hyderabad, Telangana 500018', 'Gachibowli, Hyderabad, Telangana, India', 'Mobile', '103.50', 2, 1, 1, '93.15', '10.35', '2017-10-24 23:14:07', '78.4252544', '17.4601842', '78.34891679999998', '17.4400802', 'PR Nagar', 'Srinivas', '9010661474', 'PR Nagar', 'Rajesh', '9010661474', '13.70', 1, 'cash', 2, 4, NULL, 1, NULL, -1, NULL, ''),
(276, 3, 54, '13-1-55/E/49, Panduranga Nagar, Avanthi Nagar, Erragadda, Hyderabad, Telangana 500018, India', 'Kukatpally Housing Board Colony, Hyderabad, Telangana, India', 'Books', '82.50', 2, 2, 1, '74.25', '8.25', '2017-10-25 23:46:32', '78.42524999999999', '17.4600927', '78.38706679999996', '17.4833526', 'kukatpally', 'srinivas', '9010661474', 'kukatpally', 'srinu', '9010661474', '9.50', 2, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(277, 4, 54, '185, Panduranga Nagar, Avanthi Nagar, Erragadda, Hyderabad, Telangana 500018', 'Gachibowli, Hyderabad, Telangana, India', 'books', '103.50', 2, 2, 1, '93.15', '10.35', '2017-10-25 23:52:38', '78.4252984', '17.460182', '78.34891679999998', '17.4400802', 'kukatpally', 'srini', '9010661474', 'kukatpally', 'srinu', '9010661474', '13.70', 3, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(278, 5, 54, '185, Panduranga Nagar, Avanthi Nagar, Erragadda, Hyderabad, Telangana 500018', 'Gachibowli, Hyderabad, Telangana, India', 'books', '103.50', 1, 1, 1, '93.15', '10.35', '2017-10-25 23:52:47', '78.4252984', '17.460182', '78.34891679999998', '17.4400802', 'kukatpally', 'srini', '9010661474', 'kukatpally', 'srinu', '9010661474', '13.70', 3, 'cash', 2, 4, '7124', 2, NULL, -1, NULL, ''),
(279, 6, 54, '185, Panduranga Nagar, Avanthi Nagar, Erragadda, Hyderabad, Telangana 500018', 'Kukatpally Housing Board Colony, Hyderabad, Telangana, India', 'books', '82.50', 2, 2, 1, '74.25', '8.25', '2017-10-25 23:55:56', '78.4252463', '17.4601027', '78.38706679999996', '17.4833526', 'kukatpally', 'sri', '9010661474', 'kukatpally', 'srinu', '9010661474', '9.50', 5, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(280, 7, 54, 'P.R.Nagar busstop, Erragadda, Hyderabad, Telangana, India', 'Kukatpally Housing Board Colony, Hyderabad, Telangana, India', 'books', '79.50', 2, 2, 1, '71.55', '7.95', '2017-10-26 00:10:47', '78.42553199999998', '17.4563443', '78.38706679999996', '17.4833526', 'kukatpally', 'vasu', '9010661474', 'kukatpally', 'srinu vasu', '9010661474', '8.90', 2, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(281, 3, 28, 'Borabanda, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'Books', '95.00', 1, 1, 1, '85.50', '9.50', '2017-11-01 22:19:05', '78.41261629999997', '17.4565082', '78.34891679999998', '17.4400802', 'Hjjksm', 'Hhjjjs', '9999496649', 'Bhahhjsjs', 'Hjsjsn', '9646491649', '12.00', 5, '403993715516812652', 2, 1, '3669', 1, NULL, 4, NULL, ''),
(282, 14, 39, '559, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad, Telangana, India', 'Boks', '122.00', 1, 1, 1, '109.80', '12.20', '2017-11-02 20:50:33', '78.386889', '17.4911683', '78.4982741', '17.4399295', '482,Bhagat Singh nagar,kphb', 'Chinu', '9866776118', '4-5-67,cyber towers,hitech city', 'Unna', '7893550571', '17.40', 5, '403993715516818827', 2, 1, '0645', 1, NULL, -1, NULL, ''),
(283, 15, 39, '536, Kukatpally Housing Board Colony, Jawaharlal Nehru Technological University, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Gachibowli, Hyderabad, Telangana, India', 'Lunch box', '96.50', 2, 1, 1, '86.85', '9.65', '2017-11-02 21:09:40', '78.3876', '17.4912102', '78.34891679999998', '17.4400802', '482,Bhagat Singh nagar,kphb hyderabad', 'Wife', '9866776118', 'Zensar,dlf cyber towers', 'Husband', '7893550571', '12.30', 3, 'NA', 1, 2, NULL, 2, NULL, -1, NULL, ''),
(284, 16, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'HITEC City, Hyderabad, Telangana, India', 'Bottle', '68.50', 2, 2, 1, '61.65', '6.85', '2017-11-02 21:50:11', '78.3878556', '17.4926017', '78.37623039999994', '17.4474117', '482,Bhagat Singh nagar, kphb,hyderabad', 'King', '7893550571', '0664,hitec city, hyderabad', 'Gaa', '9866776118', '6.70', 3, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(285, 17, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'HITEC City, Hyderabad, Telangana, India', 'Mouse', '68.50', 2, 2, 1, '61.65', '6.85', '2017-11-02 21:57:29', '78.3878585', '17.4925985', '78.37623039999994', '17.4474117', '482, Bhagat Singh nagar,kphb,hyderabad', 'Kiran', '8919448514', '482,hitech city,cyber gateway', 'Anusha', '9986677611', '6.70', 2, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(286, 1, 53, 'L-381, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', NULL, '225.00', 2, 2, 1, '202.50', '22.50', '2017-11-04 10:31:54', '78.40739959999999', '17.4506589', '78.39964409999993', '17.4947934', 'sdf', 'sdfsd', '23432', 'sdfdsf', 'sdfdsfds', '234324', '10.00', 33, NULL, 1, 3, NULL, 1, NULL, -1, NULL, ''),
(287, 18, 39, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Jubilee Hills, Hyderabad, Telangana, India', 'Books', '82.50', 1, 1, 1, '74.25', '8.25', '2017-11-04 19:49:41', '78.3878585', '17.4925985', '78.40701519999993', '17.4325235', '482,Bhagat Singh nagar,kphb', 'Kiran', '9866776118', '7553,cyber pearl,hitech city', 'King', '8919448514', '9.50', 3, 'NA', 2, 2, '1911', 2, NULL, -1, NULL, ''),
(288, 1, 55, 'Gachibowli, Hyderabad, Telangana, India', 'Secunderabad, Telangana, India', NULL, '171.00', 2, 2, 1, '153.90', '17.10', '2017-11-05 16:39:09', '78.34891679999998', '17.4400802', '78.4982741', '17.4399295', '23 gachibouli', 'rex', '1234567899', 'Secunderabad', 'Mady', '9874563211', '22.20', 10, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(289, 1, 55, 'Gachibowli, Hyderabad, Telangana, India', 'Secunderabad, Telangana, India', NULL, '171.00', 2, 2, 1, '153.90', '17.10', '2017-11-05 16:39:09', '78.34891679999998', '17.4400802', '78.4982741', '17.4399295', '23 gachibouli', 'rex', '1234567899', 'Secunderabad', 'Mady', '9874563211', '22.20', 10, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(290, 3, 55, 'Gachibowli, Hyderabad, Telangana, India', 'Secunderabad, Telangana, India', NULL, '171.00', 1, 1, 1, '153.90', '17.10', '2017-11-05 16:39:10', '78.34891679999998', '17.4400802', '78.4982741', '17.4399295', '23 gachibouli', 'rex', '1234567899', 'Secunderabad', 'Mady', '9874563211', '22.20', 10, '403993715516827274', 2, 1, '0481', 1, NULL, -1, NULL, ''),
(291, 19, 39, '80/134, Gachibowli - Miyapur Rd, Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500032, India', 'Secunderabad Jn, Telangana, India', 'Books', '142.50', 2, 2, 1, '128.25', '14.25', '2017-11-05 16:41:00', '78.3627117', '17.4507988', '78.5016144', '17.433709', '482,Bhagat Singh nagar,kphb', 'Kirann', '9866776118', 'Sumadhura,nanak ram guda', 'Hu', '7893550571', '21.50', 3, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(292, 20, 39, '80/134, Gachibowli - Miyapur Rd, Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500032, India', 'Secunderabad Jn, Telangana, India', 'Books', '142.50', 2, 2, 2, '128.25', '14.25', '2017-11-05 16:43:45', '78.3627117', '17.4507988', '78.5016144', '17.433709', '482,Bhagat Singh nagar,kphb', 'Kirann', '9866776118', 'Sumadhura,nanak ram guda', 'Hu', '7893550571', '21.50', 3, NULL, 1, 3, NULL, 1, NULL, -1, NULL, ''),
(293, 4, 55, '1-11-222/5, Begumpet Rd, Begumpet, Hyderabad, Telangana 500016, India', 'Gachibowli, Hyderabad, Telangana, India', 'Books', '121.50', 2, 2, 1, '109.35', '12.15', '2017-11-05 17:29:11', '78.46477437872265', '17.445029821593227', '78.34891679999998', '17.4400802', 'Ho no 12 begempet', 'Max', '1111112222', '21 gachibouli', 'Peter', '5555533336', '17.30', 5, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(294, 5, 55, 'Charminar, Hyderabad, Telangana, India', 'Dilsukhnagar, Hyderabad, Telangana, India', NULL, '94.00', 1, 2, 1, '84.60', '9.40', '2017-11-05 17:49:00', '78.47466450000002', '17.3615636', '78.52467060000004', '17.3687826', 'H no12 charminar', 'Raiez', '6666558899', '33 dilshuknagar', 'Rafi', '4422556633', '6.80', 10, NULL, 2, 3, '2260', 2, NULL, -1, NULL, ''),
(295, 6, 55, 'Nanakram Guda, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'Sugar', '145.00', 2, 2, 1, '130.50', '14.50', '2017-11-05 17:53:09', '78.34439889999999', '17.4208251', '78.34891679999998', '17.4400802', 'Gag', 'Vababsbsb', '9794994949', 'Babab', 'Bsbs', '9797979797', '4.10', 22, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(296, 1, 57, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'K P H B Phase 1, Hyderabad, Telangana, India', 'Ghee', '60.00', 2, 2, 2, '54.00', '6.00', '2017-11-06 22:34:00', '78.3878556', '17.4926017', '78.39986420000002', '17.4913862', '482 bhaghat singh nagar,kphb', 'Kiran', '9866776118', 'Kphb phase 1', 'Shree', '8919448514', '3.30', 5, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(297, 2, 57, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'K P H B Phase 1, Hyderabad, Telangana, India', 'Hi', '65.00', 2, 1, 2, '58.50', '6.50', '2017-11-06 22:38:18', '78.3878556', '17.4926017', '78.39986420000002', '17.4913862', '4th cross,bharath Singh nagar, kphb', 'Ki', '9866776118', 'Kphb phase 1,near bus station', 'Fr', '8919448514', '3.30', 6, '403993715516832304', 1, 1, NULL, 1, NULL, -1, NULL, ''),
(298, 5, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 2, 2, 1, '200.70', '22.30', '2017-11-07 20:06:56', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 2, 3, NULL, 2, '5142', -1, NULL, ''),
(299, 6, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 1, 2, 1, '200.70', '22.30', '2017-11-07 20:17:53', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 2, 3, '5973', 2, '9791', -1, 'http://brings.co.in/Reports/Orders/299/App_Icon.png', 'http://brings.co.in/Reports/Orders/Delivery299/App_Icon.png'),
(300, 7, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 2, 2, 1, '200.70', '22.30', '2017-11-07 20:21:04', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 2, 3, NULL, 2, '2150', -1, NULL, ''),
(301, 8, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 2, 2, 2, '200.70', '22.30', '2017-11-07 20:25:26', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(302, 1, 58, 'K P H B Phase 1, Hyderabad, Telangana, India', 'Secunderabad Jn, Telangana, India', 'Ball', '117.00', 1, 2, 1, '105.30', '11.70', '2017-11-07 22:48:40', '78.39986420000002', '17.4913862', '78.5016144', '17.433709', '482, Bhagat Singh nagar,kphb', 'Kit', '9866776118', 'Ameerpet', 'Venkat', '8919448514', '16.40', 2, NULL, 2, 3, '8603', 2, NULL, -1, NULL, ''),
(303, 1, 58, 'K P H B Phase 1, Hyderabad, Telangana, India', 'Secunderabad Jn, Telangana, India', 'Ball', '117.00', 1, 2, 1, '105.30', '11.70', '2017-11-07 22:48:40', '78.39986420000002', '17.4913862', '78.5016144', '17.433709', '482, Bhagat Singh nagar,kphb', 'Kit', '9866776118', 'Ameerpet', 'Venkat', '8919448514', '16.40', 2, NULL, 2, 3, '1310', 2, NULL, -1, NULL, ''),
(304, 1, 58, 'K P H B Phase 1, Hyderabad, Telangana, India', 'Secunderabad Jn, Telangana, India', 'Ball', '117.00', 1, 1, 1, '105.30', '11.70', '2017-11-07 22:48:42', '78.39986420000002', '17.4913862', '78.5016144', '17.433709', '482, Bhagat Singh nagar,kphb', 'Kit', '9866776118', 'Ameerpet', 'Venkat', '8919448514', '16.40', 2, '403993715516837432', 2, 1, '6555', 2, NULL, -1, NULL, ''),
(305, 1, 59, 'Bhanugudi Junction, Police Quarters, Kakinada, Andhra Pradesh, India', 'Samalkot Jn, Pithapuram - Samalkot Main Road, Jaggamma Garipeta, Samarlakota, Andhra Pradesh, India', 'Food', '489.50', 1, 1, 1, '440.55', '48.95', '2017-11-10 11:24:05', '82.23523969999997', '16.9754085', '82.16911890000006', '17.0453224', 'Madhuranagar', 'Santosh', '8500217435', 'Station', 'Hemqnth', '9708852114', '15.90', 80, '403993715516849763', 2, 1, '3904', 2, NULL, -1, NULL, ''),
(306, 4, 58, 'K P H B Phase 6, Hyderabad, Telangana, India', 'Shamshabad Airport Filling Station, Srisailam Highway, Hyderabad, Telangana, India', 'Tie', '259.00', 1, 1, 1, '233.10', '25.90', '2017-11-10 22:53:01', '78.38610410000001', '17.4869582', '78.47397920000003', '17.2494432', 'Sujana mall,kphb,hyderabad', 'Sujana', '7893550571', 'Shamshabad air port', 'Malya', '8919448514', '44.80', 1, '403993715516853645', 2, 1, '1369', 2, NULL, -1, NULL, ''),
(307, 5, 58, 'Gachibowli, Hyderabad, Telangana, India', 'Shamshabad, Hyderabad, Telangana, India', 'File', '236.00', 2, 2, 2, '212.40', '23.60', '2017-11-10 23:31:21', '78.34891679999998', '17.4400802', '78.43773490000001', '17.25116', 'Gachibowli,dlf', 'A', '9866776118', 'Shamshabad,airport', 'Malya', '7893550571', '34.20', 11, NULL, 1, 3, NULL, 2, NULL, -1, NULL, '');
INSERT INTO `BRNG_ORDER` (`id`, `order_seq`, `usr_login_id`, `from_address`, `to_address`, `description`, `total_price`, `is_picked_id`, `is_paid_id`, `is_accepted`, `company_price`, `service_price`, `order_time`, `from_longitude`, `from_latitude`, `to_longitude`, `to_latitude`, `complete_pckup_address`, `name_of_pickup_person`, `contact_pckup_person`, `complete_del_address`, `name_of_del_person`, `contact_del_person`, `total_distance`, `estimated_weight`, `pay_tx_id`, `is_cancelled_id`, `pay_type`, `delivery_code`, `is_retry_id`, `pickup_code`, `trip_rating`, `order_pic`, `order_drop_pic`) VALUES
(308, 2, 53, 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', '234', '192.00', 1, 2, 1, '172.80', '19.20', '2017-11-11 11:06:44', '78.39964409999993', '17.4947934', '78.34891679999998', '17.4400802', 'sdf', 'sdf', '234', 'sds', 'sfdsf', '243243', '14.40', 22, NULL, 2, 3, '9868', 2, NULL, -1, NULL, ''),
(309, 2, 53, 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', '234', '192.00', 1, 1, 1, '172.80', '19.20', '2017-11-11 11:06:44', '78.39964409999993', '17.4947934', '78.34891679999998', '17.4400802', 'sdf', 'sdf', '234', 'sds', 'sfdsf', '243243', '14.40', 22, 'cash', 2, 4, '6283', 2, NULL, -1, NULL, ''),
(310, 2, 53, 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', '234', '192.00', 1, 1, 1, '172.80', '19.20', '2017-11-11 11:06:46', '78.39964409999993', '17.4947934', '78.34891679999998', '17.4400802', 'sdf', 'sdf', '234', 'sds', 'sfdsf', '243243', '14.40', 22, 'cash', 2, 4, '7166', 2, NULL, -1, NULL, ''),
(311, 2, 53, 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', '234', '192.00', 1, 1, 1, '172.80', '19.20', '2017-11-11 11:06:49', '78.39964409999993', '17.4947934', '78.34891679999998', '17.4400802', 'sdf', 'sdf', '234', 'sds', 'sfdsf', '243243', '14.40', 22, 'cash', 2, 4, '9807', 2, NULL, -1, NULL, ''),
(312, 2, 53, 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', '234', '192.00', 1, 1, 1, '172.80', '19.20', '2017-11-11 11:06:51', '78.39964409999993', '17.4947934', '78.34891679999998', '17.4400802', 'sdf', 'sdf', '234', 'sds', 'sfdsf', '243243', '14.40', 22, 'cash', 2, 4, '9322', 2, NULL, -1, NULL, ''),
(313, 2, 53, 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', '234', '192.00', 1, 1, 1, '172.80', '19.20', '2017-11-11 11:06:55', '78.39964409999993', '17.4947934', '78.34891679999998', '17.4400802', 'sdf', 'sdf', '234', 'sds', 'sfdsf', '243243', '14.40', 22, 'cash', 2, 4, '9980', 2, NULL, -1, NULL, ''),
(314, 8, 53, 'J-415, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdfdsf', '162.00', 1, 2, 1, '145.80', '16.20', '2017-11-11 11:26:27', '78.4078626', '17.4506011', '78.39964409999993', '17.4947934', 'dfs', 'dfsf', '242', 'sdfsdf', 'sdfsf', '234324', '8.40', 22, '', 2, 4, '9251', 1, NULL, -1, NULL, ''),
(315, 8, 54, '1035, Shivaji Nagar, Tulasi Nagar, Sanath Nagar, Hyderabad, Telangana 500018, India', 'Moti Nagar, Hyderabad, Telangana, India', 'mouse', '60.00', 1, 1, 1, '6.00', '54.00', '2017-11-11 19:06:46', '78.4400347', '17.454623', '78.41981340000007', '17.4493156', 'kukatpay', 'pankaj', '8976565498', 'kukatpally', 'prakash', '8976565498', '4.20', 2, 'cash', 2, 4, '1945', 2, NULL, -1, NULL, ''),
(316, 1, 60, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Babab', '217.00', 1, 1, 1, '21.70', '195.30', '2017-11-11 19:38:36', '78.4082432', '17.4506044', '78.39964409999993', '17.4947934', 'Bzb', 'Bzbz', '9797979797', 'BBB', 'Bzbzb', '977', '8.40', 33, 'cash', 2, 4, '9387', 1, NULL, -1, NULL, ''),
(317, 9, 54, 'Gachibowli - Miyapur Road, Whitefields, Hyderabad, Telangana, India', 'Moti Nagar, Hyderabad, Telangana, India', 'pagsa', '108.50', 2, 2, 1, '10.85', '97.65', '2017-11-11 21:58:36', '78.36466310000003', '17.4563761', '78.41981340000007', '17.4493156', 'kukatpally', 'aassd', '9876543456', 'kukatpally', 'sdsd', '9876543234', '7.70', 12, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(318, 1, 61, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Sugar', '162.00', 1, 1, 1, '16.20', '145.80', '2017-11-12 13:01:47', '78.408233', '17.4505963', '78.39964409999993', '17.4947934', 'BB', 'Babab', '9797979797', 'BBBbzb', 'BBB', '9797979797', '8.40', 22, 'cash', 2, 4, '0806', 1, NULL, -1, NULL, ''),
(319, 10, 54, 'P.R.Nagar busstop, Erragadda, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'Bafs', '74.00', 1, 1, 1, '7.40', '66.60', '2017-11-12 17:40:26', '78.42553199999998', '17.4563443', '78.39964409999993', '17.4947934', 'Kukatpally', 'Sri', '9854754823', 'Kukatpally', 'Sai', '9010662552', '7.80', 2, 'cash', 2, 4, '4098', 2, NULL, -1, NULL, ''),
(320, 11, 54, 'Mindspace Road, Rolling Hills, P Janardhan Reddy Nagar, Gachibowli, Hyderabad, Telangana 500081, India', 'Begampet, Hyderabad, Telangana, India', 'Laptop', '135.00', 2, 2, 1, '13.50', '121.50', '2017-11-13 16:29:04', '78.3656577', '17.4458611', '78.4663812', '17.4447068', 'Ramky', 'Sri', '9010661474', 'Begampet', 'Srinu', '9010661474', '20.00', 2, NULL, 1, 3, NULL, 1, NULL, -1, NULL, ''),
(321, 12, 54, '185, Panduranga Nagar, Avanthi Nagar, Erragadda, Hyderabad, Telangana 500018', 'Gachibowli, Hyderabad, Telangana, India', 'Books', '105.50', 2, 2, 2, '10.55', '94.95', '2017-11-13 19:12:18', '78.4252753', '17.4602195', '78.34891679999998', '17.4400802', 'Panduranga nagar', 'Srinu', '9010661474', 'Gachibowli', 'Rajesh', '9010661474', '14.10', 2, NULL, 1, 3, NULL, 1, NULL, -1, NULL, ''),
(322, 13, 54, 'P.R.Nagar busstop, Erragadda, Hyderabad, Telangana, India', 'Kukatpally Housing Board Colony, Hyderabad, Telangana, India', 'Books', '83.50', 2, 2, 1, '8.35', '75.15', '2017-11-13 21:05:49', '78.42553199999998', '17.4563443', '78.38706679999996', '17.4833526', 'Kukatpally', 'Srinu', '9010661474', 'Kukatpally', 'Srinu', '9010661474', '9.70', 2, NULL, 1, 3, NULL, 1, NULL, -1, NULL, ''),
(323, 14, 54, 'P.R.Nagar busstop, Erragadda, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'Books', '102.50', 2, 2, 1, '10.25', '92.25', '2017-11-13 21:58:52', '78.42553199999998', '17.4563443', '78.34891679999998', '17.4400802', 'Kukatpally', 'Fyuh', '9086545258', 'Kukatpally', 'Hfvj', '9884528654', '13.50', 2, NULL, 1, 3, NULL, 1, NULL, -1, NULL, ''),
(324, 1, 63, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Gachibowli - Miyapur Road, Whitefields, Hyderabad, Telangana, India', 'Tie', '73.00', 1, 2, 1, '7.30', '65.70', '2017-11-14 23:29:37', '78.3878662', '17.4926024', '78.36466310000003', '17.4563761', '482,Bharat singh nagar, kphb', 'Kiran', '9866776118', 'Gachibowli', 'Ki', '8919448514', '7.60', 1, NULL, 2, 3, '1316', 1, NULL, -1, NULL, ''),
(325, 2, 63, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad Jn, Telangana, India', 'Iteam', '126.50', 2, 2, 2, '12.65', '113.85', '2017-11-15 14:02:21', '78.3878496', '17.4926065', '78.5016144', '17.433709', '482, bhagath singh nagar, kphb', 'Kiruu', '9866776118', 'Midnspace', 'Suresh', '7893550571', '18.30', 2, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(326, 3, 63, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad, Telangana, India', 'Dairy', '136.00', 2, 2, 2, '13.60', '122.40', '2017-11-15 15:10:10', '78.3878585', '17.4925985', '78.5016144', '17.433709', '482, Bhagat Singh nagar,kphb,hyderabad', 'Kiran', '9866776118', 'Cyberspace', 'Raku', '7893550571', '18.20', 7, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(327, 4, 63, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Secunderabad, Telangana, India', 'Hhh', '136.00', 1, 1, 1, '13.60', '122.40', '2017-11-15 15:35:22', '78.3878652', '17.4926057', '78.5016144', '17.433709', '482, Bhagat Singh nagar,kphb', 'Kiran', '9866776118', 'Gachibowli,dlf', 'Hhh', '7893550571', '18.20', 7, 'cash', 2, 4, '4904', 1, NULL, -1, NULL, ''),
(328, 5, 63, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Shamshabad Airport Filling Station, Srisailam Highway, Hyderabad, Telangana, India', 'Bag', '263.50', 1, 1, 1, '26.35', '237.15', '2017-11-16 11:35:34', '78.3878515', '17.4926202', '78.47397920000003', '17.2494432', '482, Bhagat Singh nagar, kphb', 'Ammullu', '9866776118', 'Shamshabad air port', 'Kite', '7893550571', '45.70', 1, 'NA', 2, 2, '5941', 2, NULL, -1, NULL, ''),
(329, 6, 63, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Gachibowli, Hyderabad, Telangana, India', 'Pen', '113.00', 1, 1, 1, '11.30', '101.70', '2017-11-16 22:04:05', '78.387866', '17.4926042', '78.34891679999998', '17.4400802', 'Sujana mall,2ND floor,kphb 9th phase', 'Sujana', '9866776118', 'Central,gachibowli', 'Rawest', '7893550571', '12.60', 8, 'cash', 2, 4, '1463', 1, NULL, -1, NULL, ''),
(330, 7, 63, 'K P H B Phase 1, Hyderabad, Telangana, India', 'LB Nagar, Hyderabad, Telangana, India', 'Item', '192.00', 2, 2, 2, '19.20', '172.80', '2017-11-16 23:30:15', '78.39986420000002', '17.4913862', '78.55222959999992', '17.3457176', 'Kphb 1 phase,', 'Kuut', '8919448514', 'Tarnaka', 'M', '7893550571', '30.40', 6, NULL, 1, 3, NULL, 2, NULL, -1, NULL, ''),
(331, 8, 63, '483, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'Karkhana, Secunderabad, Telangana, India', 'Item', '118.50', 1, 1, 1, '11.85', '106.65', '2017-11-18 15:37:17', '78.3878585', '17.4925985', '78.5004381', '17.4614542', '482, Bhagat Singh nagar', 'Kiru', '9866776118', 'Karkhana', 'King', '7893550571', '16.70', 2, 'cash', 2, 4, '0234', 1, NULL, -1, NULL, ''),
(332, 9, 63, '559, Bhagat Singh Nagar, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500085, India', 'KPHB Phase I, Kukatpally, Hyderabad, Telangana, India', 'Iteam', '60.00', 1, 1, 1, '6.00', '54.00', '2017-11-18 16:14:28', '78.386889', '17.4911683', '78.39965719999998', '17.4898122', 'Kphb phase 1', 'Ji', '8919448514', 'Kphb phase1', 'Ki', '9866776118', '3.10', 2, '403993715516886709', 2, 1, '4891', 2, NULL, -1, NULL, ''),
(333, 1, 65, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Sugar', '162.00', 2, 1, 1, '16.20', '145.80', '2017-11-21 10:01:47', '78.4081869', '17.4505948', '78.39964409999993', '17.4947934', 'BBB', 'BBB', '9502165016', 'BB', 'BBB', '9797979797', '8.40', 22, 'NA', 1, 2, NULL, 1, NULL, -1, NULL, ''),
(334, 15, 54, 'P.R.Nagar busstop, Erragadda, Hyderabad, Telangana, India', 'Kukatpally Housing Board Colony, Hyderabad, Telangana, India', 'Books', '83.50', 1, 1, 1, '8.35', '75.15', '2017-11-22 20:44:09', '78.42553199999998', '17.4563443', '78.38706679999996', '17.4833526', 'Kukatpally', 'Sri', '9010661474', 'Kukatpally', 'Srin', '9010661474', '9.70', 2, 'cash', 2, 4, '1507', 2, NULL, -1, NULL, ''),
(335, 16, 54, '185, Panduranga Nagar, Avanthi Nagar, Erragadda, Hyderabad, Telangana 500018', 'Gachibowli, Hyderabad, Telangana, India', 'Books for Dhal', '105.50', 2, 2, 1, '10.55', '94.95', '2017-11-22 20:47:35', '78.4252582', '17.4602207', '78.34891679999998', '17.4400802', 'Motinagar', 'Sri', '9010661474', 'Motinagar', 'Srini', '9010661474', '14.10', 2, NULL, 1, 3, NULL, 1, NULL, -1, NULL, ''),
(336, 2, 65, 'L-381, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Test', '163.00', 2, 1, 1, '16.30', '146.70', '2017-11-25 13:25:32', '78.4075063', '17.4501572', '78.39964409999993', '17.4947934', 'Bab', 'Babab', '9994949494', 'NNan', 'Bbab', '9797997979', '8.60', 22, 'NA', 2, 2, NULL, 1, NULL, -1, NULL, ''),
(337, 10, 63, '40 Feet Rd, D.B. Colony, Lakshmipuram, Hindupur, Andhra Pradesh 515201, India', 'Mukkadipetta, Hindupur, Andhra Pradesh, India', 'Item', '60.00', 1, 1, 1, '6.00', '54.00', '2017-11-26 18:58:00', '77.5062229', '13.8237149', '77.49027260000003', '13.8266271', '482,police quarters,hindupur', 'Pp', '9866776118', 'Mukkadipeta', 'Mahesh', '7893550571', '2.50', 2, 'NA', 2, 2, '4693', 1, NULL, -1, NULL, ''),
(338, 11, 63, '40 Feet Rd, D.B. Colony, Lakshmipuram, Hindupur, Andhra Pradesh 515201, India', 'Mukkadipetta, Hindupur, Andhra Pradesh, India', 'Item', '60.00', 1, 1, 1, '6.00', '54.00', '2017-11-26 19:08:10', '77.5062229', '13.8237149', '77.49027260000003', '13.8266271', '482,police quarters,hindupur', 'Kira', '9866776118', 'Mukkadipeta', 'Mahedh', '7893550571', '2.50', 2, 'cash', 2, 4, '5918', 2, NULL, -1, NULL, ''),
(339, 12, 63, '40 Feet Rd, D.B. Colony, Lakshmipuram, Hindupur, Andhra Pradesh 515201, India', 'Mukkadipetta, Hindupur, Andhra Pradesh, India', 'Ite', '60.00', 1, 1, 1, '6.00', '54.00', '2017-11-26 19:26:22', '77.5062229', '13.8237149', '77.49027260000003', '13.8266271', '482, Bhagat Singh,hindupur', 'Kiran', '9866776611', 'Mukkadipeta', 'Kumar', '7893550571', '2.50', 3, 'NA', 2, 2, '2983', 2, NULL, -1, NULL, ''),
(340, 13, 63, 'MGM Bypass Rd, Mukkidipeta, Hindupur, Andhra Pradesh 515201, India', 'Gauribidanur, Karnataka, India', 'Books', '181.50', 1, 1, 1, '18.15', '163.35', '2017-11-26 19:50:44', '77.5008466', '13.8294822', '77.51264620000006', '13.6120911', '482,police quarters,hindupur', 'Kiran', '9866776118', 'Gouribidhanur', 'Kkk', '7893550571', '26.30', 8, 'NA', 2, 2, '6889', 2, NULL, -1, NULL, ''),
(341, 14, 63, 'Guddam Rd, Hindupur, Andhra Pradesh 515201, India', 'Gauribidanur, Karnataka, India', 'Iiii', '166.50', 2, 2, 2, '16.65', '149.85', '2017-11-26 20:33:12', '77.5026388', '13.8285078', '77.51264620000006', '13.6120911', 'Hindupur', 'Kiran', '9866776118', 'Gouribidhanur', 'Kibg', '7893550571', '26.30', 3, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(342, 1, 67, '8-4-369/849/A, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Banba', '162.00', 1, 1, 1, '16.20', '145.80', '2017-11-26 22:17:01', '78.4080394', '17.4504984', '78.39964409999993', '17.4947934', 'Babab', 'Nabab', '9494949494', 'NNNN', 'BBabab', '9494949494', '8.40', 22, 'NA', 2, 2, '2890', 2, NULL, -1, NULL, ''),
(343, 2, 67, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Babab', '162.00', 2, 2, 1, '16.20', '145.80', '2017-11-28 21:59:57', '78.4082504', '17.4506031', '78.39964409999993', '17.4947934', 'Hahah', 'Baha', '9949494994', 'Babaababannab', 'Nananaan', '9494949494', '8.40', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(344, 15, 63, 'Rajalakshmi Plaza, S End Rd, Vijayarangam Layout, Jayanagar, Bengaluru, Karnataka 560070, India', 'Electronics City Phase 1, Bengaluru, Karnataka, India', 'Book', '132.50', 2, 2, 1, '13.25', '119.25', '2017-11-28 22:27:49', '77.5766952', '12.9363485', '77.656476', '12.8430636', 'South end road', 'Mahesh', '9880038507', '102,tma towers,electronic city phase 1', 'Sareesh', '9866776118', '19.50', 2, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(345, 16, 63, 'Pravruthi Kutir, Gupta layout, Jayanagar, Bengaluru, Karnataka 560070, India', 'Electronics City Phase 1, Bengaluru, Karnataka, India', 'Lpen', '133.00', 2, 2, 1, '13.30', '119.70', '2017-11-28 22:59:33', '77.5778821', '12.9361981', '77.656476', '12.8430636', 'Basavabgudi', 'Kiran', '8919448514', 'Electronic city', 'Sateesh', '7893550571', '19.60', 1, NULL, 2, 3, NULL, 2, NULL, -1, NULL, ''),
(346, 4, 28, '102, Gurmurthy Colony Road, Begumpet, Hyderabad, Telangana 500016, India', 'Kukatpally Housing Board Colony, Hyderabad, Telangana, India', 'Bahab', '252.50', 2, 1, 1, '25.25', '227.25', '2017-12-02 12:26:29', '78.4659331', '17.4464364', '78.38706679999996', '17.4833526', 'Babab', 'Habab', '9494949494', 'Babab', 'Babab', '9497944444', '15.50', 33, 'cash', 1, 4, NULL, 1, NULL, -1, NULL, ''),
(347, 3, 65, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.50', 2, 2, 1, '16.55', '148.95', '2017-12-05 22:42:56', '78.40796', '17.450626', '78.39964409999993', '17.4947934', 'sdf', 'sdfdsf', '9999999999', 'sdfsdf', 'sdfdsf', '9999999999', '9.10', 22, NULL, 2, 3, NULL, 2, '6440', -1, NULL, ''),
(348, 17, 54, 'Mindspace Road, Rolling Hills, P Janardhan Reddy Nagar, Gachibowli, Hyderabad, Telangana 500081, India', 'Kukatpally, Hyderabad, Telangana, India', 'Bookssss', '81.00', 2, 1, 1, '8.10', '72.90', '2017-12-06 13:02:53', '78.365507', '17.4457516', '78.39964409999993', '17.4947934', 'Kukatpally', 'Srinj', '9010661474', 'Kukatpally', 'Sribh', '9010661474', '9.20', 2, 'cash', 2, 4, NULL, 1, '3802', -1, NULL, ''),
(349, 1, 69, '17, Vijayarangam Layout, Jayanagar, Bengaluru, Karnataka 560070, India', 'Jayanagar 4 Block, Bengaluru, Karnataka, India', 'Ten', '60.00', 2, 1, 1, '6.00', '54.00', '2017-12-06 22:58:08', '77.5760912', '12.9364651', '77.58304190000001', '12.9259401', 'Indiranagar', 'Kumar', '9866776118', 'Not data', 'Kkkk', '8919448514', '2.00', 1, 'cash', 2, 4, NULL, 1, '8613', -1, NULL, ''),
(350, 18, 54, 'P.R.Nagar busstop, Erragadda, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'books', '102.50', 2, 1, 1, '10.25', '92.25', '2017-12-08 01:12:02', '78.42553199999998', '17.4563443', '78.34891679999998', '17.4400802', 'kukatpally', 'bh', '9876543456', 'juhytfcg', 'hjjgbhg', '8987654345', '13.50', 2, 'cash', 2, 4, NULL, 2, '1688', -1, NULL, ''),
(351, 19, 54, 'P.R.Nagar busstop, Erragadda, Hyderabad, Telangana, India', 'Borabanda, Hyderabad, Telangana, India', 'Books', '60.00', 2, 1, 1, '6.00', '54.00', '2017-12-08 23:32:50', '78.42553199999998', '17.4563443', '78.41261629999997', '17.4565082', 'Kukatpally', 'Sri', '9010661474', 'Kukatpally', 'Srgv', '9010661474', '1.70', 2, 'cash', 2, 4, NULL, 2, '1665', -1, NULL, ''),
(352, 2, 69, '40 Feet Rd, D.B. Colony, Lakshmipuram, Hindupur, Andhra Pradesh 515201, India', 'Abadpet, Mukkidipeta, Hindupur, Andhra Pradesh, India', 'Books', '60.00', 2, 2, 2, '6.00', '54.00', '2017-12-10 09:19:47', '77.5062229', '13.8237149', '77.49494720000007', '13.8270447', 'Sai srinagar nagar,hindupur', 'Kiran', '9866776118', 'Abadpet', 'Nen', '8919448514', '1.70', 1, NULL, 2, 3, NULL, 1, NULL, -1, NULL, ''),
(353, 4, 65, 'J-415, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdjf', '165.50', 2, 1, 1, '16.55', '148.95', '2017-12-10 10:18:39', '78.4077262', '17.4505442', '78.39964409999993', '17.4947934', 'msdnf', 'mnsmdnfm', '9999999999', 'sdnf', 'slkdjf', '9999999999', '9.10', 22, '403993715517120743', 2, 1, NULL, 2, '3190', -1, NULL, ''),
(354, 5, 28, '8-4-369/849/A, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdfsdf', '165.50', 2, 2, 1, '16.55', '148.95', '2017-12-11 21:45:24', '78.4079962', '17.4504852', '78.39964409999993', '17.4947934', 'sdfds', 'fsfdsf', '7777777777', 'sdfsdf', 'sdfsdf', '7777777777', '9.10', 22, NULL, 1, 3, NULL, 2, '3204', -1, NULL, ''),
(355, 6, 28, '8-4-369/849/A, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdf', '165.50', 2, 2, 1, '16.55', '148.95', '2017-12-11 21:46:22', '78.4079962', '17.4504852', '78.39964409999993', '17.4947934', 'sdf', 'sdfsdf', '7777777777', '7ff', 'fff', '8888888888', '9.10', 22, NULL, 2, 3, NULL, 1, '7740', -1, NULL, ''),
(356, 7, 28, 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'sdf', '193.00', 2, 2, 1, '19.30', '173.70', '2017-12-11 21:57:27', '78.39964409999993', '17.4947934', '78.34891679999998', '17.4400802', 'sdfsdf', 'sdfsdf', '7777777777', 'sdfdsf', 'sdfsdf', '8888888888', '14.60', 22, NULL, 2, 3, NULL, 1, '6192', -1, NULL, ''),
(357, 8, 28, 'J-415, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdfsdf', '165.50', 2, 1, 1, '16.55', '148.95', '2017-12-11 22:16:55', '78.4077916', '17.4505073', '78.39964409999993', '17.4947934', 'sdf', 'sdfds', '7777777777', 'sdfs', 'dfsdfsdfds', '9999999999', '9.10', 22, 'NA', 2, 2, NULL, 1, '5721', -1, NULL, ''),
(358, 5, 65, '8-4-369/555, Rajiv Gandhi Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'sdfsdf', '168.00', 2, 1, 1, '16.80', '151.20', '2017-12-13 22:17:39', '78.4079141', '17.4505122', '78.39964409999993', '17.4947934', 'sdf', 'sdfdsf', '8888888888', 'sadfdsf', 'sdfdsf', '9999999999', '9.60', 22, '403993715517001282', 2, 1, NULL, 1, '0533', -1, NULL, ''),
(359, 3, 69, '9th Main Rd, HBR Layout 4th Block, HBR Layout, Bengaluru, Karnataka 560043, India', 'Hebbal, Bengaluru, Karnataka, India', '55566', '74.00', 2, 2, 1, '7.40', '66.60', '2017-12-20 22:23:23', '77.6339874', '13.032589', '77.59702219999997', '13.0357695', '9th main,her layout', 'Bharatg', '9866776118', 'Hebbal', 'King', '9880038507', '7.80', 2, NULL, 1, 3, NULL, 2, '7017', -1, NULL, ''),
(360, 4, 69, '9th Main Rd, HBR Layout 4th Block, HBR Layout, Bengaluru, Karnataka 560043, India', 'Hennur Gardens, Bengaluru, Karnataka, India', 'Mouse', '60.00', 2, 2, 1, '6.00', '54.00', '2017-12-20 22:48:39', '77.6339874', '13.032589', '77.63686640000003', '13.0345848', 'Her layout, 9th main', 'Kiran', '9866776118', 'Hennur cross', 'Bharath', '9880038507', '0.80', 3, NULL, 2, 3, NULL, 2, '5670', -1, NULL, ''),
(361, 7, 55, 'Nanakramguda Road, Nanakram Guda, Hyderabad, Telangana 500032, India', 'Karkhana, Secunderabad, Telangana, India', 'Documents', '155.00', 2, 2, 1, '15.50', '139.50', '2017-12-22 17:19:23', '78.349614', '17.4227126', '78.5004381', '17.4614542', 'Uf7f', 'Hchc', '9490194364', 'Ycyc', 'Hvuc', '9490194364', '24.00', 3, NULL, 2, 3, NULL, 1, '6017', -1, NULL, ''),
(362, 1, 71, 'Street Number 3, Chhota Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500032, India', 'Kukatpally, Hyderabad, Telangana, India', 'Books', '310.50', 1, 1, 1, '31.05', '279.45', '2017-12-23 09:42:48', '78.3618784', '17.4446334', '78.39964409999993', '17.4947934', 'Abc', 'Raghu', '8113939349', 'Abcd', 'Mahesh', '9966366039', '10.10', 50, 'cash', 2, 4, '4927', 2, '0053', -1, NULL, ''),
(363, 9, 28, 'Gachibowli, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'Books', '119.00', 1, 1, 1, '11.90', '107.10', '2017-12-23 19:40:04', '78.34891679999998', '17.4400802', '78.39964409999993', '17.4947934', 'Gghjjs', 'Hjjksjs', '9888521477', 'Ghjjjs', 'Hjjns', '9874565666', '13.80', 8, 'cash', 2, 4, '6819', 1, '2984', -1, NULL, ''),
(364, 2, 71, 'Street Number 3, Chhota Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500032, India', 'Kukatpally, Hyderabad, Telangana, India', 'Books', '87.00', 1, 1, 1, '8.70', '78.30', '2018-01-06 10:47:47', '78.3618806', '17.4446773', '78.39964409999993', '17.4947934', 'ABC, gachibowli', 'Raghu', '8113939349', 'ABC\'s, kukatpally\'', 'Mahesh', '9966366039', '10.40', 1, 'NA', 2, 2, '5555', 1, '8423', -1, NULL, ''),
(365, 20, 54, 'P.R.Nagar busstop, Erragadda, Hyderabad, Telangana, India', 'Borabanda, Hyderabad, Telangana, India', 'books', '60.00', 2, 1, 1, '6.00', '54.00', '2018-01-07 23:05:44', '78.42553199999998', '17.4563443', '78.41261629999997', '17.4565082', 'pr nagar', 'srini', '9010661474', 'borabanda', 'raj', '9010667656', '1.70', 3, 'cash', 2, 4, NULL, 2, '5300', -1, NULL, ''),
(366, 3, 71, 'Street Number 3, Chhota Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500032, India', 'Dilsukhnagar, Hyderabad, Telangana, India', 'Books', '177.00', 1, 1, 1, '17.70', '159.30', '2018-01-08 07:51:11', '78.3618571', '17.4446763', '78.52467060000004', '17.3687826', 'Abc', 'Raghu', '8113939349', 'Abcd', 'Ramesh', '9966366039', '23.40', 10, 'cash', 2, 4, '7368', 2, '8954', -1, NULL, ''),
(367, 1, 72, 'Street Number 3, Chhota Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500032, India', 'Dilsukhnagar, Hyderabad, Telangana, India', 'Books', '177.00', 1, 1, 1, '17.70', '159.30', '2018-01-08 07:52:24', '78.3618601', '17.4446755', '78.52467060000004', '17.3687826', 'Abc', 'Ramesh', '9966366039', 'Abcd', 'Mahesh', '8113939349', '23.40', 10, 'cash', 2, 4, '8056', 2, '9921', -1, NULL, ''),
(368, 21, 54, 'P.R.Nagar busstop, Erragadda, Hyderabad, Telangana, India', 'Borabanda, Hyderabad, Telangana, India', 'Fz', '530.00', 2, 2, 2, '53.00', '477.00', '2018-01-08 20:45:13', '78.42553199999998', '17.4563443', '78.41261629999997', '17.4565082', 'PR Nagar', 'Srinu', '9010661474', 'Borabanda', 'Rajesh', '9856321111', '1.70', 99, NULL, 1, 3, NULL, 1, NULL, -1, NULL, ''),
(369, 4, 71, 'Street Number 3, Chhota Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500032, India', 'Balanagar, Hyderabad, Telangana, India', 'Books', '116.50', 1, 1, 1, '11.65', '104.85', '2018-01-15 15:04:29', '78.3618399', '17.4446739', '78.45099370000003', '17.4650059', 'ABC, gachbowli', 'Raghu', '8113939349', 'Qwery', 'Balangar', '7897897890', '16.30', 4, 'NA', 2, 2, '6076', 2, '9518', 3, NULL, ''),
(370, 5, 71, 'Street Number 3, Chhota Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500032, India', 'Balanagar, Hyderabad, Telangana, India', 'Books', '121.50', 2, 1, 1, '12.15', '109.35', '2018-01-15 16:06:08', '78.361839', '17.4446744', '78.45099370000003', '17.4650059', 'Abc, gachibowli', 'Raghu', '8113939349', 'Qwerty', 'Asdf', '7897897890', '16.30', 6, 'NA', 1, 2, NULL, 1, '7106', -1, NULL, ''),
(371, 6, 65, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'test', '168.00', 1, 1, 1, '16.80', '151.20', '2018-01-27 18:08:42', '78.40788309999999', '17.450902', '78.39964409999993', '17.4947934', 'sdf', 'sdfdsf', '7777777777', 'sdfsdf', 'sdfsdf', '8888888888', '9.60', 22, 'NA', 2, 2, '3949', 2, '0525', 3, NULL, ''),
(372, 9, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 2, 2, 1, '22.30', '200.70', '2018-02-13 22:19:22', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 2, 3, NULL, 2, '0607', 0, NULL, ''),
(373, 10, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 2, 2, 2, '22.30', '200.70', '2018-02-14 23:33:13', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 2, 3, NULL, 2, NULL, 0, NULL, ''),
(374, 11, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 2, 2, 2, '22.30', '200.70', '2018-02-14 23:36:53', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 2, 3, NULL, 2, NULL, 0, NULL, ''),
(375, 7, 65, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Test', '165.00', 2, 1, 1, '16.50', '148.50', '2018-02-15 21:40:50', '78.4080176', '17.4507049', '78.39964409999993', '17.4947934', 'Nan', 'BBB', '9494949944', 'NNB', 'NNNB', '9494949494', '9.00', 22, 'NA', 2, 2, NULL, 2, '5174', 0, NULL, ''),
(376, 12, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 2, 2, 2, '22.30', '200.70', '2018-02-16 21:20:45', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 2, 3, NULL, 2, NULL, 0, NULL, ''),
(377, 13, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 2, 2, 2, '22.30', '200.70', '2018-02-16 23:18:23', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 2, 3, NULL, 2, NULL, 0, NULL, NULL),
(378, 14, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 2, 2, 2, '22.30', '200.70', '2017-02-17 21:35:36', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 2, 3, NULL, 2, NULL, 0, NULL, NULL),
(379, 8, 65, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'test', '168.00', 1, 1, 1, '16.80', '151.20', '2017-02-17 21:41:49', '78.4075823', '17.4507036', '78.39964409999993', '17.4947934', 'sdf', 'sdf', '8888888888', 'sdfsf', 'sfsf', '9999999999', '9.60', 22, 'NA', 2, 2, '3329', 1, '3491', 4, 'http://brings.co.in/Reports/Orders/379/img_girl.jpg', 'http://brings.co.in/Reports/Orders/Delivery/379/img_girl.jpg'),
(380, 15, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 2, 2, 2, '22.30', '200.70', '2017-02-17 21:57:12', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 2, 3, NULL, 2, NULL, -1, NULL, NULL),
(381, 16, 41, 'gachiboowli', 'kukatpally', 'parcel', '223.00', 2, 2, 2, '22.30', '200.70', '2017-02-17 22:09:39', '78.98', '17.89', '78.09', '17.098', 'hhjjj', 'lkk', '988', 'jklk', 'll', '9888', '12.00', 1, NULL, 2, 3, NULL, 2, NULL, -1, NULL, NULL),
(382, 22, 54, 'P.R.Nagar busstop, Erragadda, Hyderabad, Telangana, India', 'Borabanda, Hyderabad, Telangana, India', 'Books', '60.00', 2, 2, 2, '6.00', '54.00', '2017-02-18 09:45:20', '78.42553199999998', '17.4563443', '78.41261629999997', '17.4565082', 'PR Nagar motinagar', 'Sri', '9010661474', 'Borabanda Hyderabad', 'Raj', '9010661474', '1.70', 2, NULL, 2, 3, NULL, 1, NULL, -1, NULL, NULL),
(383, 9, 65, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Bzbz', '165.00', 2, 2, 1, '16.50', '148.50', '2017-02-18 13:35:11', '78.4081133', '17.4506728', '78.39964409999993', '17.4947934', 'Babzb', 'BBB', '9494949494', 'Babab', 'Nanan', '9494949494', '9.00', 22, NULL, 2, 3, NULL, 2, '6172', -1, NULL, NULL),
(384, 10, 65, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Kukatpally, Hyderabad, Telangana, India', 'Babab', '165.00', 2, 2, 2, '16.50', '148.50', '2017-02-18 13:36:12', '78.4081133', '17.4506728', '78.39964409999993', '17.4947934', 'Bb', 'Vbb', '9999999999', 'Bbb', 'Bb', '9999999999', '9.00', 22, NULL, 2, 3, NULL, 1, NULL, -1, NULL, NULL),
(385, 23, 54, 'Kukatpally, Hyderabad, Telangana, India', 'Borabanda, Hyderabad, Telangana, India', 'Books', '74.00', 2, 2, 2, '7.40', '66.60', '2018-02-24 23:42:45', '78.39964409999993', '17.4947934', '78.41261629999997', '17.4565082', 'Kukatpally', 'Sri', '9010661474', 'Borabanda', 'Drin', '9010661474', '7.80', 2, NULL, 2, 3, NULL, 2, NULL, -1, NULL, NULL),
(386, 6, 71, '1-43/2, Street Number 3, Chhota Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500032, India', 'Indira Nagar, Gachibowli, Hyderabad, Telangana, India', 'Books', '85.00', 2, 2, 1, '8.50', '76.50', '2018-03-01 06:35:31', '78.3617923', '17.4447221', '78.35692749999998', '17.4474475', 'Gachibowli village street number 3', 'Raghu', '9966366039', 'Indira nagar', 'Mahesh', '9966366039', '1.20', 10, NULL, 2, 3, NULL, 1, '5492', -1, NULL, NULL),
(387, 7, 71, '1-43/2, Street Number 3, Chhota Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500032, India', 'Punjagutta, Hyderabad, Telangana, India', 'Books', '129.00', 1, 1, 1, '12.90', '116.10', '2018-03-01 07:05:21', '78.3617909', '17.4447613', '78.45113220000007', '17.4264979', 'Gachibowli village street 3', 'Raghu', '8113939349', 'Punjagutta', 'Ramesh', '9966366039', '13.80', 10, 'cash', 2, 4, '8057', 2, '0317', 4, 'http://brings.co.in/Reports/Orders/Pickup/387/DSC_0013.JPG', 'http://brings.co.in/Reports/Orders/Delivery/387/DSC_0013.JPG'),
(388, 11, 65, '8-4-372/324/2, Borabanda - Allahpur Rd, Gopas Dasharatham, Sai Baba Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Gachibowli, Hyderabad, Telangana, India', 'skjdf', '171.00', 2, 2, 2, '17.10', '153.90', '2018-03-08 21:35:12', '78.40736509999999', '17.4507142', '78.34891679999998', '17.4400802', 'kldjfg', 'lksjdfkl', '9999999999', 'sdfklj', 'jsdklfj', '8888888888', '10.20', 22, NULL, 2, 3, NULL, 2, NULL, -1, NULL, NULL),
(389, 8, 55, '54, Surya nagar, Karkhana, Secunderabad, Telangana 500009, India', 'Krishna towers, Sardar Patel Road, Sriram Nagar, Taramani, Chennai, Tamil Nadu, India', 'Books', '3420.00', 2, 2, 2, '342.00', '3078.00', '2018-03-09 21:52:47', '78.4998425', '17.4651393', '80.2440977', '13.0063035', 'Itxditd8td8td', 'Urxutdxtu', '9962440288', 'Igcitxutxut', 'Xutxutxux', '9962550822', '677.00', 2, NULL, 2, 3, NULL, 1, NULL, -1, NULL, NULL),
(390, 9, 55, '54, Surya nagar, Karkhana, Secunderabad, Telangana 500009, India', 'Secunderabad, Telangana, India', 'Fhfgcghg', '318.50', 2, 2, 2, '31.85', '286.65', '2018-03-09 21:56:39', '78.4998425', '17.4651393', '78.4982741', '17.4399295', 'Fjxjfxtxtx', 'Hjghhuuhvuhh hubnnj', '8958580988', 'Ghtufhyyfgyygft', 'Ggrghtyytt', '9962440288', '5.70', 56, NULL, 2, 3, NULL, 1, NULL, -1, NULL, NULL),
(391, 10, 55, '54, Surya nagar, Karkhana, Secunderabad, Telangana 500009, India', 'Gachibowli, Hyderabad, Telangana, India', 'Book', '161.50', 1, 1, 1, '16.15', '145.35', '2018-03-09 22:10:50', '78.4998425', '17.4651393', '78.34891679999998', '17.4400802', 'Jdhd', 'Hxhx', '9123654789', 'Jdhch', 'Hdudu', '9632547852', '25.30', 2, 'cash', 2, 4, '3472', 1, '9626', -1, 'http://brings.co.in/Reports/Orders/Pickup/391/IMG-20180308-WA0001.jpg', 'http://brings.co.in/Reports/Orders/Delivery/391/IMG-20180308-WA0003.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_ORDER_DELIVERY`
--

CREATE TABLE `BRNG_ORDER_DELIVERY` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `usr_login_id` int(11) NOT NULL,
  `order_del_status_id` int(11) NOT NULL,
  `transaction_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_ORDER_DELIVERY`
--

INSERT INTO `BRNG_ORDER_DELIVERY` (`id`, `order_id`, `usr_login_id`, `order_del_status_id`, `transaction_id`) VALUES
(69, 190, 31, 1, '3W3RNRAAZVDCHVUS2009201719383204'),
(70, 189, 31, 2, 'LY5X61EITA0D0SGM2009201719420491'),
(71, 191, 31, 2, 'VR2HM4F2EW5VHZ3720092017194951551'),
(72, 192, 28, 2, 'MUQSPGU3LYCZ33MW20092017201401957'),
(73, 195, 31, 2, 'YPSHBH2WVJQNKXE520092017205014501'),
(74, 204, 34, 2, 'S8P9A09SMGDM6UMK25092017225328313'),
(75, 203, 34, 2, '96EX8K8OX6WXCU0W25092017225402968'),
(76, 202, 34, 2, 'JOP94W4J9XRJMZLZ25092017225823763'),
(77, 206, 28, 1, '3JS0X8J7PXX071W826092017221929861'),
(78, 208, 42, 2, '3C91WYUO87LMKCAE27092017101450970'),
(79, 214, 47, 2, 'N1U32UNH0SR43DQ402102017130215528'),
(80, 211, 47, 2, '4BU57ZDTB86J0SXN02102017130221502'),
(81, 209, 47, 2, 'DAFY0458GDPKMZ3302102017130225771'),
(82, 201, 47, 2, 'QYX58B0OL0JXL8CJ02102017130232753'),
(83, 215, 42, 2, 'R6FWWBOALGKE56W804102017173052942'),
(84, 213, 43, 2, 'AQMI4UNK235NW1DF04102017173123415'),
(85, 216, 43, 1, '4PX632JK9IVUO4YG04102017174433232'),
(86, 217, 43, 2, 'K6QTQXFAZ3V6KEPF04102017183453170'),
(87, 220, 49, 1, 'I8C7GGSFJ9B44BCD06102017233056186'),
(88, 219, 49, 2, 'T7KSMU2FP9IRJPPU06102017233102485'),
(89, 218, 28, 2, 'OAY93Q5ISCUQA3H206102017234137571'),
(90, 212, 49, 2, 'LFAHF1B8MQODKPCL08102017223240300'),
(91, 205, 49, 2, 'EJ4AC642JYY95CS708102017223255267'),
(92, 200, 49, 2, 'LWGQKQSDJVP45O4S08102017223303598'),
(93, 199, 49, 2, '21EY1DFF83C4BG9608102017223318835'),
(94, 198, 49, 2, 'VT2UUM0Y22SKT7KU08102017223341966'),
(95, 197, 49, 2, 'IS8ZWHQNCPMSYMLU08102017223402729'),
(96, 196, 49, 2, '8VLLR0O2FKKMBUTG08102017223854724'),
(97, 223, 42, 1, 'YEHR8YHPSHH4O5B509102017184635900'),
(98, 239, 50, 1, 'ESLLGGG5I6N50H4H15102017205859101'),
(99, 240, 50, 1, 'LDZ4XFCCV6BZW7WL15102017211605114'),
(100, 238, 50, 2, 'LPKCXCLWJB0LZ4GJ15102017211634688'),
(101, 224, 50, 2, 'LZ5QEMM54APKG70D15102017211704809'),
(102, 243, 50, 1, '0GAYFYA5LJ5F5OEJ15102017214439838'),
(103, 241, 50, 1, 'RLT0X55G25FEBW5X15102017214528921'),
(104, 244, 50, 1, 'NGBB4P3TGLRIJEWJ1510201721590838'),
(105, 246, 50, 2, 'HYJIFZBXP09N5O5115102017220240720'),
(106, 245, 50, 2, 'MFGB93YXBJOX3Y0015102017220249545'),
(107, 249, 50, 1, '5Y708F59RFKY1Y6S19102017183436604'),
(108, 248, 50, 2, 'DZX14ZB5LT1A0GCE19102017183443419'),
(109, 250, 50, 2, '3SD9K59COD62BXJQ19102017201017304'),
(110, 251, 50, 2, '47D85CEPITXT1YTX19102017201457989'),
(111, 252, 50, 2, 'N768DBQU66KYNO5619102017201907674'),
(112, 254, 50, 2, 'OOF89ZZO9OZ4B4IH1910201720241754'),
(113, 255, 50, 2, 'K3EKC3E10W4TDE1Y19102017203414446'),
(114, 253, 50, 2, 'GJFSOK0B86JXB1SY19102017203432991'),
(115, 256, 50, 2, 'OCU16E7WQ6YP4Y3219102017203512865'),
(116, 257, 50, 2, 'K57IQ9XSQ3W91KTM19102017203816300'),
(117, 258, 50, 2, 'OTTM1U47ZSL2NP5119102017204059284'),
(118, 259, 50, 2, 'KJJ8YZW1LMPMGJ6Z19102017204536104'),
(119, 260, 50, 2, '8S0JH0ZEV3AXUF9219102017204929779'),
(120, 261, 50, 2, 'XJCXLHJ2GAUOBKTN19102017205011661'),
(121, 262, 50, 2, 'IEMPEUR3R6BW9R8S19102017224240212'),
(122, 263, 50, 2, 'AVJO8DK7SOE50W4O19102017224542519'),
(123, 264, 50, 2, 'MKKE9D2B1LMPGLH219102017225740849'),
(124, 265, 50, 2, 'JL0TOF5YS1WRTKH21910201722580903'),
(125, 266, 50, 2, 'KY42PUVQI7QW2Y0419102017225842321'),
(126, 267, 50, 2, 'CVOO4A2SWFVMFTVC19102017230443520'),
(127, 268, 50, 2, 'DERHCQH7MEUUQ1QW19102017230703191'),
(128, 269, 50, 2, 'WU18H8FF0SLULSRR20102017091238646'),
(129, 273, 53, 2, 'HE79NBSMAAAWJDZP24102017221107723'),
(130, 275, 53, 2, '0TV278I5SQ3D2EBE25102017192851287'),
(131, 279, 54, 2, 'BZQEFHOWRK4TJJEZ26102017000850421'),
(132, 278, 54, 2, '7R4R0GTM4UE1YJUN26102017000902461'),
(133, 281, 53, 1, '6OS55HVCU7ZJOTSL01112017222307958'),
(134, 282, 42, 1, 'CX6C6PHN3B2V0DE302112017205134753'),
(135, 283, 42, 2, 'BZUAXEV4BMA4R9O002112017211207553'),
(136, 284, 53, 2, '8VB3TCWJVHZQH7PA02112017215115295'),
(137, 280, 53, 2, 'GTCBDG37M7MZW0M002112017215122487'),
(138, 277, 53, 2, 'SLBJMEHB40A505E702112017215130621'),
(139, 285, 42, 2, '8C5DYSI8RPB94U5J02112017215816802'),
(140, 286, 53, 2, '6ZHRQXVMI2RCVICK04112017111549387'),
(141, 287, 42, 1, '754TJF9YKADL1VOU04112017195032280'),
(142, 291, 28, 2, 'MU6NE2GOUDSO4JOQ05112017164150507'),
(143, 290, 28, 1, '2ML25NYQNDMPZ5TJ05112017164333302'),
(144, 293, 52, 2, 'VC7YRPEC2GNUWVID0511201717311562'),
(145, 293, 28, 2, '790H2HIE64T4AI1G05112017173115521'),
(146, 293, 53, 2, 'VAERXGY7QUBQJGG305112017173115878'),
(147, 293, 42, 2, 'O8HN4VEZLRBZW3AN05112017173116243'),
(148, 294, 53, 2, '3HCZSKB4K36AOMTY05112017174942957'),
(149, 289, 42, 2, 'BXJB7EF1V2YSHUI705112017175011454'),
(150, 295, 52, 2, 'I9CISWV07871P7FA05112017175449952'),
(151, 295, 42, 2, 'CCLVVO8J1N3GX2MW05112017175450459'),
(152, 304, 56, 1, 'R91QFP0PR90JT24M07112017225035896'),
(153, 303, 28, 2, '39BTNOZT338AUKKX07112017225948377'),
(154, 305, 28, 1, 'EFJ9FCAC7X7YBOZJ10112017112425511'),
(155, 306, 56, 1, '03A1PC368EYBJU9A10112017225409578'),
(156, 314, 53, 2, 'I3JFPJCJ54TE81WJ1111201716175355'),
(157, 316, 54, 2, 'LN8IC1JHWDLJK12811112017211106820'),
(158, 315, 54, 2, 'INTT33W0WTY1D01U11112017211114673'),
(159, 313, 54, 2, '58ITV922L0ZXQUVU11112017211122977'),
(160, 312, 54, 2, 'UWTJ4WVQ2293ZNRI11112017211127868'),
(161, 311, 54, 2, 'ZNUZ6UDHCAB05YPY11112017211132736'),
(162, 310, 54, 2, 'L1HM6OJSZ95P3KH311112017211137892'),
(163, 309, 54, 2, 'GK1HBTKB6ZFK2K9G11112017211143677'),
(164, 308, 54, 2, '3KACC2SFCCGGAXFD1111201721370111'),
(165, 302, 54, 2, 'AKCHGYKBA1XQJEV511112017213705839'),
(166, 288, 54, 2, 'QIUFQMFDSDOJZSWW11112017213719957'),
(167, 276, 54, 2, '0WOHNG99NUZZ6P8V11112017215002569'),
(168, 274, 54, 2, 'G7M776X86ITKUOUV1111201721501851'),
(169, 318, 62, 1, 'HWSIBKQY137A69G912112017130237634'),
(170, 317, 62, 2, 'Q62DHIN69GWH863112112017130504814'),
(171, 319, 54, 2, 'EGWJD7STWVEHUZ5D12112017174352260'),
(172, 272, 54, 2, 'MJ33FL7KFMU8EC1R1211201717443105'),
(173, 271, 54, 2, 'DR4BBTH14UYML0GC12112017174444146'),
(174, 270, 54, 2, 'S6AQDY2CQU4LVS5K1211201723020525'),
(175, 247, 54, 2, 'B6EWLIKANJA6ISV912112017230213425'),
(176, 242, 54, 2, '10ILI1334YAAQG8Z12112017230247942'),
(177, 237, 54, 2, 'RX6N7HH1SLMKG72B12112017230301117'),
(178, 236, 54, 2, 'AFVCFHAPHYZRBTRW12112017230308319'),
(179, 327, 64, 1, '0X8619XQ1UY1W5OO15112017153929129'),
(180, 328, 64, 1, 'RGTS5EY6G5E17RG116112017113608420'),
(181, 329, 64, 1, 'SY2D5551E83J7MQQ16112017220702395'),
(182, 324, 64, 2, 'UYJ5WENL4DQ2GJAN1611201723525026'),
(183, 331, 64, 1, '0GIRKHVJW926HLSH18112017154611436'),
(184, 332, 64, 2, '6THINHTX1CJAPOLY18112017161450543'),
(185, 323, 64, 2, 'B5KVSVR1Z70KJWZM18112017164054907'),
(186, 322, 64, 2, '32AME529EA3OL0XM18112017164120382'),
(187, 333, 66, 2, '6G10B97PWL3O9MU02111201710042430'),
(188, 320, 66, 2, 'D794Q5V631N01W0V21112017100451582'),
(189, 235, 54, 2, '5ARW34R4N0I94VC721112017224036528'),
(190, 334, 28, 2, 'R4T7PQIRWPNNVG0322112017204441667'),
(191, 335, 28, 2, 'MX7MEX4KYPH5LYXV2211201720493119'),
(192, 233, 54, 2, '0335LOR7MRVXKGGI22112017204958391'),
(193, 227, 54, 2, 'XL05FT1Q7NJ08I2M22112017205015401'),
(194, 232, 54, 2, 'Q9AC20RD083UT1K422112017205025256'),
(195, 336, 67, 2, 'Q3DC2K2EOYJ0BTXP25112017132851838'),
(196, 337, 64, 1, '0J0GQWS1RDGVR9RV26112017190316951'),
(197, 338, 64, 2, 'PY2NTCH1P0CFYDJN26112017190851983'),
(198, 339, 64, 1, 'UK40SWNHXGU27EB126112017192943322'),
(199, 340, 64, 2, 'I2ZBXIE3YRCJQI6326112017195115104'),
(200, 342, 65, 2, 'MOQ2OMI03U2TB6EN26112017221725306'),
(201, 343, 65, 2, '1HTPTZ00YGN07J2U28112017220024507'),
(202, 344, 64, 2, '5LK95FUYH2IIAIG528112017223038802'),
(203, 345, 64, 2, 'YGW1NOAYWC93WX6928112017230016563'),
(204, 346, 65, 2, 'KXG1IKIQ9F4TNDOH02122017123027300'),
(205, 226, 65, 2, 'KCJUOSJEUXQQQFB105122017225002654'),
(206, 348, 54, 2, 'EMWB62Y3AU6GLLKK06122017194650233'),
(207, 347, 54, 2, 'FA8Q6ETA8LCA61NA06122017194741918'),
(208, 228, 28, 2, 'BFXRFATH4TP7CFGJ06122017214940670'),
(209, 229, 28, 2, 'NWDL2D4DPXG531O106122017215019255'),
(210, 299, 28, 2, '8RUQ04NZAC2RD4LR0612201723035654'),
(211, 349, 70, 2, 'E58U571UU37JQCEP06122017235345799'),
(212, 231, 54, 2, '61TBVUT0D1JOO8J307122017220131235'),
(213, 298, 54, 2, 'YQKN2UNZ8DQDPWI807122017220151587'),
(214, 350, 54, 2, 'GXUJJQCILTQOWOND08122017011317711'),
(215, 300, 54, 2, 'ZPFSWF1FW4VPGZMQ08122017011614539'),
(216, 353, 65, 2, '12RZQ0D9G5GRP9JM11122017214835662'),
(217, 354, 65, 2, '6925L8KSYA7PYVZU11122017215632313'),
(218, 357, 65, 2, 'AU6RXXRKDI0UUEQ511122017221838148'),
(219, 355, 28, 2, 'UL2CTM0PM4P0CSBE13122017221932699'),
(220, 358, 28, 2, 'EGO4JLV5SF2K8JP113122017222010563'),
(221, 359, 70, 2, 'RWSZ954J6H4JLXHJ2012201722254300'),
(222, 360, 70, 2, 'X967YKX05LH1ZNJN20122017224939217'),
(223, 362, 28, 1, 'YA76F0FPOMBKJ4BG23122017094304389'),
(224, 363, 65, 2, '39B4F644ELJ2NYJL23122017194100458'),
(225, 364, 28, 1, 'B7GHB6674SN24MXY06012018105102226'),
(226, 351, 54, 2, 'MF9VUK1JCKAPA49G07012018230717373'),
(227, 365, 54, 2, '9JE9J5J1O3ALDIZG08012018001523814'),
(228, 356, 54, 2, 'DJ51XDQ8ANHCPS6P08012018002212798'),
(229, 361, 54, 2, 'S2X8KTDRORF9MIE00801201800384034'),
(230, 225, 54, 2, '4J1LEZQ7BSZLDU1H0801201800395080'),
(231, 367, 71, 1, 'OCFOL3AOFBX9JGKY08012018080107792'),
(232, 366, 71, 1, 'IUZO716IUJI7DFER0801201808014663'),
(233, 369, 71, 1, 'HJ8RGQ1FJYWRAJJ215012018162615928'),
(234, 370, 71, 2, 'NL9ZKNICHNE821K417012018215227173'),
(235, 371, 28, 1, 'QCBI4GS1GIC3EBEZ2701201818085207'),
(236, 372, 28, 2, 'QNMAMT8LN6AXVZMO14022018003107639'),
(237, 375, 28, 2, 'VMR6EQKCYFGN8PM815022018222211293'),
(238, 379, 28, 1, 'GRFUI6GX9Z59SCFV17022017214254822'),
(239, 383, 28, 2, 'TIYDVS28QINUXOZT18022017133722603'),
(240, 386, 71, 2, 'V5S8Q5UHG6EK0VQ801032018064024452'),
(241, 387, 73, 1, '46HLJ17CAU311UDJ01032018070546729'),
(242, 391, 28, 1, 'Q9QE65UJTOGG4IOG09032018221935198');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_ORDER_DELIVERY_ATTR`
--

CREATE TABLE `BRNG_ORDER_DELIVERY_ATTR` (
  `id` int(11) NOT NULL,
  `order_delivery_id` int(45) DEFAULT NULL,
  `lat` varchar(45) DEFAULT NULL,
  `lng` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brng_serviceman_location_dtls`
--

CREATE TABLE `brng_serviceman_location_dtls` (
  `id` int(11) NOT NULL,
  `usr_login_id` int(11) DEFAULT NULL,
  `lat` varchar(45) DEFAULT NULL,
  `lng` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brng_serviceman_location_dtls`
--

INSERT INTO `brng_serviceman_location_dtls` (`id`, `usr_login_id`, `lat`, `lng`, `address`) VALUES
(22, 31, '17.4483646', '78.3790921', 'KP'),
(23, 31, '17.4483646', '78.3790921', 'KP'),
(24, 28, '17.450689999999998', '78.407673', 'KP'),
(25, 29, '17.450443699999997', '78.40810139999999', 'KP'),
(26, 33, '17.450592099999998', '78.4077382', 'KP'),
(27, 34, '17.4542362', '78.4400347', 'KP'),
(28, 42, '17.4227683', '78.3496096', 'DUMMY'),
(29, 43, '17.4926017', '78.3878556', 'DUMMY'),
(30, 41, '17.4505003', '78.4071509', 'KP'),
(31, 47, '17.4507262', '78.40719539999999', 'DUMMY'),
(32, 49, '17.4505432', '78.4083349', 'KP'),
(33, 50, '17.4503702', '78.4081562', 'KP'),
(34, 53, '17.450561999999998', '78.4077818', 'DUMMY'),
(35, 54, '17.4365869', '78.3670721', 'KP'),
(36, 52, '17.4227683', '78.3496096', 'KP'),
(37, 56, '17.4924066', '78.3876334', 'DUMMY'),
(38, 62, '17.4506022', '78.408287', 'DUMMY'),
(39, 64, '17.4276106', '78.5344008', 'KP'),
(40, 65, '17.4505946', '78.4081355', 'KP'),
(41, 66, '17.4506022', '78.408287', 'DUMMY'),
(42, 67, '17.4506065', '78.4082351', 'KP'),
(43, 67, '17.4506065', '78.4082351', 'KP'),
(44, 70, '13.032589', '77.6339874', 'DUMMY'),
(45, 71, '17.444723', '78.3617913', 'KP'),
(46, 73, '17.4447204', '78.3617941', 'KP');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_TEST`
--

CREATE TABLE `BRNG_TEST` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brng_usr_address`
--

CREATE TABLE `brng_usr_address` (
  `id` int(11) NOT NULL,
  `usr_reg_id` int(11) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `lat` varchar(45) DEFAULT NULL,
  `lng` varchar(45) DEFAULT NULL,
  `saved_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brng_usr_address`
--

INSERT INTO `brng_usr_address` (`id`, `usr_reg_id`, `address`, `lat`, `lng`, `saved_name`) VALUES
(13, 93, 'Moti Nagar, Hyderabad, Telangana, India', '17.4493156', '78.41981340000007', NULL),
(14, 93, 'Moti Nagar, Hyderabad, Telangana, India', '17.4493156', '78.41981340000007', NULL),
(15, 93, 'Moti Nagar, Hyderabad, Telangana, India', '17.4493156', '78.41981340000007', NULL),
(16, 93, 'Moti Nagar, Hyderabad, Telangana, India', '17.4493156', '78.41981340000007', NULL),
(17, 95, 'Moti Nagar, Hyderabad, Telangana, India', '17.4493156', '78.41981340000007', NULL),
(18, 95, 'Moti Nagar, Hyderabad, Telangana, India', NULL, NULL, NULL),
(19, 107, 'Gachibowli, Hyderabad, Telangana, India', '17.4400802', '78.34891679999998', NULL),
(20, 107, 'Kukatpally, Hyderabad, Telangana, India', '17.4947934', '78.39964409999993', NULL),
(21, 107, 'Gachibowli, Hyderabad, Telangana, India', '17.4400802', '78.34891679999998', NULL),
(22, 107, 'Gachibowli, Hyderabad, Telangana, India', NULL, NULL, NULL),
(23, 107, 'Gachibowli, Hyderabad, Telangana, India', NULL, NULL, NULL),
(24, 77, 'Gachibowli, Hyderabad, Telangana, India', '17.4400802', '78.34891679999998', NULL),
(25, 103, 'Kukatpally, Hyderabad, Telangana, India', '17.4947934', '78.39964409999993', 'kp home'),
(26, 103, 'Gachibowli, Hyderabad, Telangana, India', '17.4400802', '78.34891679999998', 'gachi home'),
(27, 110, 'Borabanda, Hyderabad, Telangana, India', '17.4565082', '78.41261629999997', NULL),
(28, 110, 'Borabanda, Hyderabad, Telangana, India', '17.4565082', '78.41261629999997', NULL),
(29, 110, 'Borabanda, Hyderabad, Telangana, India', NULL, NULL, NULL),
(30, 113, 'Kuka', NULL, NULL, 'Hydqee'),
(31, 110, 'Borabanda, Hyderabad, Telangana, India', NULL, NULL, NULL),
(32, 100, 'Tarnaka, Secunderabad, Telangana, India', '17.4283104', '78.53861010000003', 'King'),
(33, 77, 'Gachibowli, Hyderabad, Telangana, India', NULL, NULL, 'Home'),
(34, 118, 'P.R.Nagar busstop, Erragadda, Hyderabad, Telangana, India', '17.4563443', '78.42553199999998', 'Srinu Address'),
(35, 131, 'Bhanugudi Junction, Police Quarters, Kakinada, Andhra Pradesh, India', '16.9754085', '82.23523969999997', 'Hme'),
(36, 117, 'Kukatpally, Hyderabad, Telangana, India', NULL, NULL, 'gachibowli'),
(37, 120, 'Kukatpally, Hyderabad, Telangana, India', '17.4947934', '78.39964409999993', 'Kp'),
(38, 93, 'Moti Nagar, Hyderabad, Telangana, India', NULL, NULL, 'Srinu'),
(39, 93, '', NULL, NULL, 'one'),
(40, 93, 'Moti Nagar, Hyderabad, Telangana, India', NULL, NULL, NULL),
(41, 120, 'Kukatpally, Hyderabad, Telangana, India', NULL, NULL, 'Kp'),
(42, 117, 'Kukatpally, Hyderabad, Telangana, India', '17.4947934', '78.39964409999993', 'gachibowli'),
(43, 77, 'Hitech City Road, Sri Rama Colony, Hyderabad, Telangana, India', '17.4397382', '78.39573810000002', 'Vhjj'),
(44, 143, 'Hindupur, Andhra Pradesh, India', '13.8185378', '77.49887530000001', 'Kiran'),
(45, 143, 'HITEC City, Hyderabad, Telangana, India', '17.4474117', '78.37623039999994', 'Ki'),
(46, 143, 'Hindupur, Rahamathpur, Andhra Pradesh, India', '13.8187775', '77.5000923', 'Kiran'),
(47, 143, 'HI Area Phase II, Jodhpur, Rajasthan, India', '26.2475952', '73.0021534', 'Kiran'),
(48, 78, 'Kukatpally, Hyderabad, Telangana, India', '17.4947934', '78.39964409999993', 'K'),
(49, 78, 'Kukatpally, Hyderabad, Telangana, India', '17.4947934', '78.39964409999993', 'K'),
(50, 77, 'Indiranagar, Bengaluru, Karnataka, India', '12.9718915', '77.64115449999997', 'Bangalore'),
(51, 145, 'Kukatpally, Hyderabad, Telangana, India', '17.4947934', '78.39964409999993', '123'),
(52, 145, 'Gachibowli, Hyderabad, Telangana, India', NULL, NULL, '123'),
(53, 145, 'Gachibowli, Hyderabad, Telangana, India', NULL, NULL, '123'),
(54, 77, 'Gachibowli, Hyderabad, Telangana, India', NULL, NULL, 'Home'),
(55, 150, 'Hyderabad, Telangana 500019, India', '17.4796537', '78.31976009999994', 'Raghu Home'),
(56, 150, 'Hyderabad, Telangana 500019, India', NULL, NULL, 'Raghu Home');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_USR_CODE`
--

CREATE TABLE `BRNG_USR_CODE` (
  `id` int(11) NOT NULL,
  `usr_reg_id` int(11) NOT NULL,
  `effective_date` datetime NOT NULL,
  `ref_code` varchar(45) DEFAULT NULL,
  `prom_code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `ref_code_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brng_usr_files`
--

CREATE TABLE `brng_usr_files` (
  `id` int(11) NOT NULL,
  `usr_reg_id` int(11) DEFAULT NULL,
  `aadhar` varchar(200) DEFAULT NULL,
  `vehicle_rc` varchar(200) DEFAULT NULL,
  `pvin` varchar(200) DEFAULT NULL,
  `driving_lic` varchar(200) DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brng_usr_files`
--

INSERT INTO `brng_usr_files` (`id`, `usr_reg_id`, `aadhar`, `vehicle_rc`, `pvin`, `driving_lic`, `effective_date`, `image`) VALUES
(24, 78, 'http://brings.co.in/Reports/Reports/78/aadhar/Screenshot (9).png', 'http://brings.co.in/Reports/Reports/78/vehiclerc/Screenshot (9).png', 'http://brings.co.in/Reports/Reports/78/pvin/Screenshot (1).png', 'http://brings.co.in/Reports/Reports/78/driving_lic/Screenshot (6).png', '2017-09-19 22:51:55', 'http://brings.co.in/Reports/Reports/78/image/scrn.png'),
(25, 80, 'http://brings.co.in/Reports/Reports/80/aadhar/Screenshot (2).png', 'http://brings.co.in/Reports/Reports/80/vehiclerc/Screenshot (7).png', 'http://brings.co.in/Reports/Reports/80/pvin/Screenshot (1).png', 'http://brings.co.in/Reports/Reports/80/driving_lic/Screenshot (10).png', '2017-09-20 20:17:48', 'http://brings.co.in/Reports/Reports/80/image/IMG-20170920-WA0025.jpg'),
(26, 77, 'http://brings.co.in/Reports/Reports/77/aadhar/Screenshot_2017-09-19-22-27-35.png', 'http://brings.co.in/Reports/Reports/77/vehiclerc/IMG-20170919-WA0005.jpg', 'http://brings.co.in/Reports/Reports/77/pvin/IMG-20170919-WA0010.jpg', 'http://brings.co.in/Reports/Reports/77/driving_lic/IMG-20170919-WA0003.jpg', '2017-10-31 08:02:47', 'http://brings.co.in/Reports/Reports/77/image/IMG-20171017-WA0000.jpg'),
(27, 82, NULL, NULL, NULL, NULL, '2017-09-20 18:48:49', 'http://brings.co.in/Reports/Reports/82/image/Screenshot_2017-09-15-16-00-10.png'),
(28, 83, 'http://brings.co.in/Reports/Reports/83/aadhar/IMG-20170920-WA0005.jpg', 'http://brings.co.in/Reports/Reports/83/vehiclerc/international_rainbow_&_690c1de6-f56d-4a3c-8456-e9ec2ba8f4a3.jpg', 'http://brings.co.in/Reports/Reports/83/pvin/international_rainbow_&_690c1de6-f56d-4a3c-8456-e9ec2ba8f4a3.jpg', 'http://brings.co.in/Reports/Reports/83/driving_lic/IMG-20170920-WA0005.jpg', '2017-09-20 18:58:47', 'http://brings.co.in/Reports/Reports/83/image/IMG-20170912-WA0002.jpg'),
(29, 91, 'http://brings.co.in/Reports/Reports/91/aadhar/IMG-20170922-WA0000.jpg', 'http://brings.co.in/Reports/Reports/91/vehiclerc/IMG-20170922-WA0000.jpg', 'http://brings.co.in/Reports/Reports/91/pvin/IMG-20170922-WA0000.jpg', 'http://brings.co.in/Reports/Reports/91/driving_lic/IMG-20170922-WA0000.jpg', '2017-09-22 08:15:01', 'http://brings.co.in/Reports/Reports/91/image/IMG-20170922-WA0000.jpg'),
(30, 93, 'http://brings.co.in/Reports/Reports/93/aadhar/images.jpg', 'http://brings.co.in/Reports/Reports/93/vehiclerc/images.jpg', 'http://brings.co.in/Reports/Reports/93/pvin/images.jpg', 'http://brings.co.in/Reports/Reports/93/driving_lic/images.jpg', '2017-09-25 22:50:35', 'http://brings.co.in/Reports/Reports/93/image/images.jpg'),
(31, 104, 'http://brings.co.in/Reports/Reports/104/aadhar/IMG-20170927-WA0000.jpg', 'http://brings.co.in/Reports/Reports/104/vehiclerc/IMG-20170926-WA0003.jpg', 'http://brings.co.in/Reports/Reports/104/pvin/IMG-20170927-WA0001.jpg', 'http://brings.co.in/Reports/Reports/104/driving_lic/IMG-20170925-WA0002.jpg', '2017-09-27 09:39:09', 'http://brings.co.in/Reports/Reports/104/image/international_rabbit_&_7681c409-b969-4c1c-8ee4-36c97985ae26.jpg'),
(32, 103, 'http://brings.co.in/Reports/Reports/103/aadhar/IMG-20170927-WA0005.jpg', 'http://brings.co.in/Reports/Reports/103/vehiclerc/Screenshot_20170927-101301.png', 'http://brings.co.in/Reports/Reports/103/pvin/IMG-20170927-WA0007.jpg', 'http://brings.co.in/Reports/Reports/103/driving_lic/IMG-20170927-WA0001.jpg', '2017-09-27 10:44:23', 'http://brings.co.in/Reports/Reports/103/image/IMG-20170927-WA0001.jpg'),
(33, 105, 'http://brings.co.in/Reports/Reports/105/aadhar/IMG-20170923-WA0007.jpg', 'http://brings.co.in/Reports/Reports/105/vehiclerc/IMG-20170923-WA0004.jpg', 'http://brings.co.in/Reports/Reports/105/pvin/IMG-20170926-WA0005.jpg', 'http://brings.co.in/Reports/Reports/105/driving_lic/IMG-20170922-WA0000.jpg', '2017-09-27 14:30:53', 'http://brings.co.in/Reports/Reports/105/image/IMG-20170919-WA0009.jpg'),
(34, 111, 'http://brings.co.in/Reports/Reports/111/aadhar/Screenshot (4).png', 'http://brings.co.in/Reports/Reports/111/vehiclerc/Screenshot (7).png', 'http://brings.co.in/Reports/Reports/111/pvin/Screenshot (5).png', 'http://brings.co.in/Reports/Reports/111/driving_lic/Screenshot (5).png', '2017-10-02 13:01:41', 'http://brings.co.in/Reports/Reports/111/image/Screenshot (9).png'),
(35, 113, 'http://brings.co.in/Reports/Reports/113/aadhar/Screenshot (2).png', 'http://brings.co.in/Reports/Reports/113/vehiclerc/Screenshot (3).png', 'http://brings.co.in/Reports/Reports/113/pvin/Screenshot (1).png', 'http://brings.co.in/Reports/Reports/113/driving_lic/scrn.png', '2017-10-08 12:05:19', 'http://brings.co.in/Reports/Reports/113/image/bike.png'),
(36, 114, 'http://brings.co.in/Reports/Reports/114/aadhar/app_info_active1.png', 'http://brings.co.in/Reports/Reports/114/vehiclerc/app_info_inactive.png', 'http://brings.co.in/Reports/Reports/114/pvin/app_info_active.png', 'http://brings.co.in/Reports/Reports/114/driving_lic/app_info.png', '2017-10-18 21:57:51', 'http://brings.co.in/Reports/Reports/114/image/IMG-20171016-WA0013.jpg'),
(37, 116, NULL, NULL, NULL, NULL, '2017-10-19 21:24:10', 'http://brings.co.in/Reports/Reports/116/image/IMG-20171019-WA0010.jpg'),
(38, 117, 'http://brings.co.in/Reports/Reports/117/aadhar/app_info_active.png', 'http://brings.co.in/Reports/Reports/117/vehiclerc/app_info.png', 'http://brings.co.in/Reports/Reports/117/pvin/app_info_active2.png', 'http://brings.co.in/Reports/Reports/117/driving_lic/app_info_active2.png', '2017-10-24 22:02:12', 'http://brings.co.in/Reports/Reports/117/image/banner_01.png'),
(39, 118, 'http://brings.co.in/Reports/Reports/118/aadhar/pp.jpg', 'http://brings.co.in/Reports/Reports/118/vehiclerc/pp.jpg', 'http://brings.co.in/Reports/Reports/118/pvin/pp.jpg', 'http://brings.co.in/Reports/Reports/118/driving_lic/pp.jpg', '2017-11-13 17:33:35', 'http://brings.co.in/Reports/Reports/118/image/IMG_20170406_141729.jpg'),
(40, 100, 'http://brings.co.in/Reports/Reports/100/aadhar/IMG-20171102-WA0003.jpg', 'http://brings.co.in/Reports/Reports/100/vehiclerc/IMG-20171102-WA0001.jpg', 'http://brings.co.in/Reports/Reports/100/pvin/IMG-20171102-WA0006.jpg', 'http://brings.co.in/Reports/Reports/100/driving_lic/IMG-20171102-WA0002.jpg', '2017-11-02 20:37:58', 'http://brings.co.in/Reports/Reports/100/image/IMG-20171101-WA0014.jpg'),
(41, 101, 'http://brings.co.in/Reports/Reports/101/aadhar/app_info_active1.png', 'http://brings.co.in/Reports/Reports/101/vehiclerc/app_info_inactive.png', 'http://brings.co.in/Reports/Reports/101/pvin/app_info_active.png', 'http://brings.co.in/Reports/Reports/101/driving_lic/backg.jpg', '2017-11-04 10:33:54', 'http://brings.co.in/Reports/Reports/101/image/app_info_active1.png'),
(42, 120, 'http://brings.co.in/Reports/Reports/120/aadhar/backg.jpg', 'http://brings.co.in/Reports/Reports/120/vehiclerc/backg.jpg', 'http://brings.co.in/Reports/Reports/120/pvin/backg.jpg', 'http://brings.co.in/Reports/Reports/120/driving_lic/backg.jpg', '2017-11-04 10:39:32', 'http://brings.co.in/Reports/Reports/120/image/backg.jpg'),
(43, 121, 'http://brings.co.in/Reports/Reports/121/aadhar/backg.jpg', 'http://brings.co.in/Reports/Reports/121/vehiclerc/curr.png', 'http://brings.co.in/Reports/Reports/121/pvin/app_info_active.png', 'http://brings.co.in/Reports/Reports/121/driving_lic/banner_01.png', '2017-11-04 11:20:55', 'http://brings.co.in/Reports/Reports/121/image/app_info_inactive.png'),
(44, 126, 'http://brings.co.in/Reports/Reports/126/aadhar/DSC_0003.JPG', 'http://brings.co.in/Reports/Reports/126/vehiclerc/DSC_0002.JPG', 'http://brings.co.in/Reports/Reports/126/pvin/DSC_0004.JPG', 'http://brings.co.in/Reports/Reports/126/driving_lic/DSC_0001.JPG', '2017-11-06 22:11:33', 'http://brings.co.in/Reports/Reports/126/image/DSC_0004.JPG'),
(45, 131, NULL, NULL, NULL, NULL, '2017-11-10 11:14:13', 'http://brings.co.in/Reports/Reports/131/image/IMG20171008120729.jpg'),
(46, 139, 'http://brings.co.in/Reports/Reports/139/aadhar/IMG-20171104-WA0000.jpg', 'http://brings.co.in/Reports/Reports/139/vehiclerc/IMG-20171104-WA0000.jpg', 'http://brings.co.in/Reports/Reports/139/pvin/IMG-20171105-WA0002.jpg', 'http://brings.co.in/Reports/Reports/139/driving_lic/IMG-20171105-WA0003.jpg', '2017-11-12 13:00:56', 'http://brings.co.in/Reports/Reports/139/image/IMG-20171104-WA0000.jpg'),
(47, 144, 'http://brings.co.in/Reports/Reports/144/aadhar/DSC_0001.JPG', 'http://brings.co.in/Reports/Reports/144/vehiclerc/DSC_0002.JPG', 'http://brings.co.in/Reports/Reports/144/pvin/DSC_0003.JPG', 'http://brings.co.in/Reports/Reports/144/driving_lic/DSC_0004.JPG', '2017-11-14 23:27:03', 'http://brings.co.in/Reports/Reports/144/image/DSC_0001.JPG'),
(48, 143, NULL, NULL, NULL, NULL, '2017-11-16 23:02:42', 'http://brings.co.in/Reports/Reports/143/image/DSC_0001.JPG'),
(49, 145, 'http://brings.co.in/Reports/Reports/145/aadhar/app_info_active1.png', 'http://brings.co.in/Reports/Reports/145/vehiclerc/app_info_active2.png', 'http://brings.co.in/Reports/Reports/145/pvin/app_info_active.png', 'http://brings.co.in/Reports/Reports/145/driving_lic/app_info_active.png', '2017-11-20 23:24:51', 'http://brings.co.in/Reports/Reports/145/image/banner_01.png'),
(50, 146, 'http://brings.co.in/Reports/Reports/146/aadhar/IMG-20171119-WA0002.jpeg', 'http://brings.co.in/Reports/Reports/146/vehiclerc/IMG-20171119-WA0002.jpeg', 'http://brings.co.in/Reports/Reports/146/pvin/IMG-20171119-WA0002.jpeg', 'http://brings.co.in/Reports/Reports/146/driving_lic/IMG-20171119-WA0002.jpeg', '2017-11-21 10:03:59', 'http://brings.co.in/Reports/Reports/146/image/IMG-20171119-WA0002.jpeg'),
(51, 149, 'http://brings.co.in/Reports/Reports/149/aadhar/IMG-20171205-WA0002.jpg', 'http://brings.co.in/Reports/Reports/149/vehiclerc/IMG-20171115-WA0016.jpg', 'http://brings.co.in/Reports/Reports/149/pvin/IMG-20171205-WA0005.jpg', 'http://brings.co.in/Reports/Reports/149/driving_lic/IMG-20171115-WA0012.jpg', '2017-12-05 23:08:15', 'http://brings.co.in/Reports/Reports/149/image/IMG-20171205-WA0005.jpg'),
(52, 150, 'http://brings.co.in/Reports/Reports/150/aadhar/Screencast_2017-11-24-17-59-22.mp4', 'http://brings.co.in/Reports/Reports/150/vehiclerc/Screencast_2017-11-24-17-59-22.mp4', 'http://brings.co.in/Reports/Reports/150/pvin/Screencast_2017-11-24-17-59-22.mp4', 'http://brings.co.in/Reports/Reports/150/driving_lic/Screencast_2017-11-24-17-59-22.mp4', '2018-01-15 09:59:09', 'http://brings.co.in/Reports/Reports/150/image/IMG-20180115-WA0001.jpg'),
(53, 154, 'http://brings.co.in/Reports/Reports/154/aadhar/Screenshot_20180301-064854.png', 'http://brings.co.in/Reports/Reports/154/vehiclerc/Screenshot_20180301-064854.png', 'http://brings.co.in/Reports/Reports/154/pvin/Screenshot_20180301-064854.png', 'http://brings.co.in/Reports/Reports/154/driving_lic/Screenshot_20180301-064854.png', '2018-03-01 07:00:04', 'http://brings.co.in/Reports/Reports/154/image/Screenshot_20180301-064854.png'),
(54, 122, NULL, NULL, NULL, NULL, '2018-03-10 00:19:18', 'http://brings.co.in/Reports/Reports/122/image/VID-20180309-WA0081.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_USR_LOGIN`
--

CREATE TABLE `BRNG_USR_LOGIN` (
  `id` int(11) NOT NULL,
  `usr_reg_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  `usr_type_id` int(11) DEFAULT NULL,
  `player_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_USR_LOGIN`
--

INSERT INTO `BRNG_USR_LOGIN` (`id`, `usr_reg_id`, `login_time`, `logout_time`, `usr_type_id`, `player_id`) VALUES
(28, 77, '2018-03-09 22:19:16', NULL, 2, '94ee4fd0-e08d-4bed-bc30-c974c31113e7'),
(29, 80, '2017-09-19 23:18:59', '2017-09-21 22:31:45', 1, 'NA'),
(30, 82, '2017-10-08 09:37:08', '2017-10-08 22:25:07', 1, 'NA'),
(31, 83, '2017-09-20 18:58:59', '2017-09-20 22:17:04', 2, 'NA'),
(32, 79, '2017-09-20 22:17:32', '2017-09-20 22:17:40', 1, 'NA'),
(33, 91, '2017-09-23 14:50:45', '2017-09-25 21:24:22', 2, 'NA'),
(34, 93, '2017-11-11 20:46:25', '2017-11-11 20:47:36', 1, 'NA'),
(35, 95, '2017-09-24 18:38:15', '2017-10-08 21:20:41', 1, 'NA'),
(36, 96, '2017-09-25 21:28:01', '2017-09-25 21:32:47', 1, 'NA'),
(37, 98, '2017-09-26 07:45:58', '2017-09-26 07:46:07', 1, 'NA'),
(38, 99, '2017-09-26 07:47:16', '2017-09-26 07:47:50', 1, 'NA'),
(39, 100, '2017-11-05 15:39:14', '2017-11-05 17:24:22', 1, 'NA'),
(40, 101, '2017-11-05 17:03:14', '2017-11-05 17:04:14', 1, 'NA'),
(41, 103, '2017-10-02 13:02:51', '2017-10-08 22:27:05', 1, 'NA'),
(42, 104, '2017-11-02 20:45:36', '2017-11-05 18:10:07', 2, 'NA'),
(43, 105, '2017-09-27 14:30:58', NULL, 2, '6c6fd0c5-0f39-475e-af31-a864fecb016e'),
(44, 107, '2017-09-27 21:36:35', '2017-09-27 21:41:07', 1, 'NA'),
(45, 108, '2017-09-28 10:00:40', '2017-09-28 10:02:16', 1, 'NA'),
(46, 110, '2017-09-30 15:28:59', NULL, 1, '6e48d408-eece-4766-a547-e2c3ab53a30e'),
(47, 111, '2017-10-02 13:01:47', '2017-10-02 13:02:39', 2, 'NA'),
(48, 112, '2017-10-04 18:27:22', NULL, 1, 'a406b51f-ee9e-42d9-95fa-d0ed025f1350'),
(49, 113, '2017-10-15 12:22:30', '2017-10-15 12:32:33', 1, 'NA'),
(50, 114, '2017-10-20 09:12:30', '2017-10-24 21:54:21', 2, 'NA'),
(51, 115, '2017-10-15 22:21:15', NULL, 1, 'c737ec01-be10-4a44-9837-e9c76f138aef'),
(52, 116, '2017-12-25 21:55:38', NULL, 2, '13245s'),
(53, 117, '2017-11-12 11:24:07', '2017-11-12 12:49:27', 1, 'NA'),
(54, 118, '2018-02-24 22:09:48', '2018-03-09 19:09:27', 1, 'NA'),
(55, 122, '2018-03-09 21:46:40', NULL, 1, '63dd6bf9-d3e6-4ecb-8f69-b1d47bf58807'),
(56, 126, '2017-11-07 22:31:10', NULL, 2, '6c6fd0c5-0f39-475e-af31-a864fecb016e'),
(57, 128, '2017-11-06 22:30:47', '2017-11-07 22:27:20', 1, 'NA'),
(58, 127, '2017-11-07 22:29:26', NULL, 1, 'a406b51f-ee9e-42d9-95fa-d0ed025f1350'),
(59, 131, '2017-11-10 11:08:24', '2017-11-11 11:12:49', 1, 'NA'),
(60, 120, '2017-11-12 10:52:41', '2017-11-12 12:48:24', 1, 'NA'),
(61, 138, '2017-11-12 12:58:42', '2017-11-13 18:02:20', 1, 'NA'),
(62, 139, '2017-11-12 13:00:59', NULL, 2, 'dcba712c-596e-4e5b-986e-4362d578f772'),
(63, 143, '2017-11-26 19:25:08', NULL, 1, 'a406b51f-ee9e-42d9-95fa-d0ed025f1350'),
(64, 144, '2017-11-28 22:22:05', NULL, 2, '6c6fd0c5-0f39-475e-af31-a864fecb016e'),
(65, 145, '2018-03-06 08:49:35', NULL, 1, NULL),
(66, 146, '2017-11-21 10:04:02', NULL, 2, 'dcba712c-596e-4e5b-986e-4362d578f772'),
(67, 78, '2017-11-26 22:16:27', '2017-12-10 12:10:01', 1, 'NA'),
(68, 147, '2017-12-02 18:43:02', NULL, 1, '5fc6d789-ad20-4d08-a58a-731e4df72084'),
(69, 148, '2017-12-05 21:50:32', NULL, 1, 'a406b51f-ee9e-42d9-95fa-d0ed025f1350'),
(70, 149, '2017-12-05 23:52:59', NULL, 2, '6c6fd0c5-0f39-475e-af31-a864fecb016e'),
(71, 150, '2018-03-01 07:01:43', NULL, 1, '1b70b90c-eaaf-4537-a4f1-ed6ed8ff4a21'),
(72, 153, '2018-01-08 07:35:23', NULL, 1, 'ff915218-d0bf-4c4c-9fcc-ef1d8189ac44'),
(73, 154, '2018-03-01 07:00:15', NULL, 2, 'a406b51f-ee9e-42d9-95fa-d0ed025f1350');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_USR_LOGIN_ATTR`
--

CREATE TABLE `BRNG_USR_LOGIN_ATTR` (
  `id` int(11) NOT NULL,
  `usr_login_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  `effective_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_USR_OTP`
--

CREATE TABLE `BRNG_USR_OTP` (
  `id` int(11) NOT NULL,
  `usr_reg_id` int(11) NOT NULL,
  `otp_code` varchar(45) NOT NULL,
  `effective_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_USR_OTP`
--

INSERT INTO `BRNG_USR_OTP` (`id`, `usr_reg_id`, `otp_code`, `effective_date`) VALUES
(0, 77, '0378', '2017-09-19 22:23:34'),
(0, 78, '2887', '2017-09-19 22:33:18'),
(0, 79, '0328', '2017-09-19 22:53:03'),
(0, 80, '0183', '2017-09-19 23:01:48'),
(0, 81, '4758', '2017-09-20 17:28:47'),
(0, 82, '8545', '2017-09-20 18:30:41'),
(0, 83, '1317', '2017-09-20 18:50:52'),
(0, 84, '0019', '2017-09-20 20:59:49'),
(0, 85, '2460', '2017-09-20 21:00:38'),
(0, 86, '9898', '2017-09-20 21:02:25'),
(0, 87, '5069', '2017-09-20 21:09:07'),
(0, 88, '3724', '2017-09-20 21:12:40'),
(0, 89, '0658', '2017-09-20 21:26:12'),
(0, 90, '2861', '2017-09-20 22:18:55'),
(0, 91, '8566', '2017-09-21 22:47:25'),
(0, 92, '2048', '2017-09-23 10:12:32'),
(0, 93, '7636', '2017-09-24 16:23:30'),
(0, 94, '3637', '2017-09-24 18:06:01'),
(0, 95, '9001', '2017-09-24 18:36:33'),
(0, 96, '3162', '2017-09-25 21:26:15'),
(0, 97, '7553', '2017-09-26 07:06:40'),
(0, 98, '0664', '2017-09-26 07:22:06'),
(0, 99, '0516', '2017-09-26 07:45:14'),
(0, 100, '1744', '2017-09-26 07:48:41'),
(0, 101, '3213', '2017-09-26 12:27:12'),
(0, 102, '1388', '2017-09-26 21:37:01'),
(0, 103, '7155', '2017-09-26 21:38:32'),
(0, 104, '7910', '2017-09-27 09:37:09'),
(0, 105, '3269', '2017-09-27 14:27:06'),
(0, 106, '6398', '2017-09-27 21:06:45'),
(0, 107, '5303', '2017-09-27 21:34:08'),
(0, 108, '7723', '2017-09-28 09:59:33'),
(0, 109, '7845', '2017-09-28 20:42:11'),
(0, 110, '9999', '2017-09-30 15:25:25'),
(0, 111, '6171', '2017-10-02 13:00:58'),
(0, 112, '5140', '2017-10-04 18:26:43'),
(0, 113, '9076', '2017-10-06 23:25:10'),
(0, 114, '2339', '2017-10-15 12:32:05'),
(0, 115, '9420', '2017-10-15 22:14:35'),
(0, 116, '5565', '2017-10-19 20:06:14'),
(0, 117, '2780', '2017-10-24 22:00:59'),
(0, 118, '8490', '2017-10-24 23:00:36'),
(0, 119, '6311', '2017-11-02 19:09:32'),
(0, 120, '5900', '2017-11-04 10:36:53'),
(0, 121, '9995', '2017-11-04 11:20:06'),
(0, 122, '8076', '2017-11-05 13:32:46'),
(0, 123, '0120', '2017-11-05 17:25:44'),
(0, 124, '3039', '2017-11-05 18:11:28'),
(0, 125, '9732', '2017-11-06 21:57:14'),
(0, 126, '8587', '2017-11-06 21:58:34'),
(0, 127, '7347', '2017-11-06 22:28:27'),
(0, 128, '5104', '2017-11-06 22:29:56'),
(0, 129, '4447', '2017-11-07 11:16:16'),
(0, 130, '7850', '2017-11-10 11:01:50'),
(0, 131, '8605', '2017-11-10 11:05:40'),
(0, 132, '4202', '2017-11-10 22:17:23'),
(0, 137, '8744', '2017-11-12 12:53:31'),
(0, 138, '2610', '2017-11-12 12:58:21'),
(0, 139, '3827', '2017-11-12 12:59:16'),
(0, 140, '0844', '2017-11-13 21:46:41'),
(0, 141, '1566', '2017-11-14 23:03:45'),
(0, 142, '5581', '2017-11-14 23:15:39'),
(0, 143, '3237', '2017-11-14 23:20:02'),
(0, 144, '5740', '2017-11-14 23:24:40'),
(0, 145, '1384', '2017-11-20 22:57:02'),
(0, 146, '4997', '2017-11-21 10:02:43'),
(0, 147, '5365', '2017-12-02 18:40:34'),
(0, 148, '4491', '2017-12-04 22:51:48'),
(0, 149, '6010', '2017-12-05 21:53:47'),
(0, 150, '9598', '2017-12-23 08:53:04'),
(0, 151, '9283', '2017-12-29 09:26:56'),
(0, 152, '4133', '2017-12-29 09:33:22'),
(0, 153, '2408', '2018-01-08 07:35:03'),
(0, 154, '8820', '2018-03-01 06:53:42'),
(0, 155, '3679', '2018-03-09 19:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_USR_PASS_CHANGE`
--

CREATE TABLE `BRNG_USR_PASS_CHANGE` (
  `id` int(11) NOT NULL,
  `usr_reg_id` int(11) NOT NULL,
  `effective_date` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_USR_PASS_CHANGE`
--

INSERT INTO `BRNG_USR_PASS_CHANGE` (`id`, `usr_reg_id`, `effective_date`, `password`) VALUES
(0, 81, '2017-19-20 06:19:17', 'cF0OT3Dj'),
(0, 81, '2017-20-20 09:20:20', 'tkcy8jwx'),
(0, 103, '2017-37-28 08:37:04', 'ZSju9DBo'),
(0, 103, '2017-17-28 10:17:26', '53jwg9yV'),
(0, 113, '2017-32-15 12:32:49', 'XZJ2wDOI'),
(0, 122, '2017-33-05 01:33:44', '7aMdVw8v'),
(0, 118, '2017-16-11 10:16:38', '4JuIeG5t'),
(0, 141, '2017-09-14 11:09:11', 'euauqydk'),
(0, 122, '2017-06-22 05:06:00', 'OBiQF0W1'),
(0, 77, '2017-19-24 07:19:38', 'SzLko9tq'),
(0, 150, '2017-26-25 09:26:44', 'xlwaFbeX'),
(0, 150, '2017-21-29 09:21:33', 'AH3Ne275'),
(0, 77, '2018-16-05 07:16:44', '4QqxYHuS'),
(0, 150, '2018-20-06 10:20:56', '24SJVbJR'),
(0, 150, '2018-11-10 08:11:45', 'SBE3bqJW'),
(0, 150, '2018-12-15 04:12:47', 'BfZ0jh7L'),
(0, 122, '2018-45-09 09:45:51', 'awtt93Aj');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_USR_REG`
--

CREATE TABLE `BRNG_USR_REG` (
  `id` int(11) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `usr_reg_type_id` int(11) NOT NULL,
  `usr_reg_status_id` int(11) NOT NULL,
  `registered_date` datetime DEFAULT NULL,
  `player_id` varchar(45) DEFAULT NULL,
  `otp_validated_id` int(11) DEFAULT NULL,
  `validated_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_USR_REG`
--

INSERT INTO `BRNG_USR_REG` (`id`, `email_id`, `password`, `usr_reg_type_id`, `usr_reg_status_id`, `registered_date`, `player_id`, `otp_validated_id`, `validated_id`) VALUES
(77, 'soumyajit405@gmail.com', '12345', 1, 1, '2017-09-19 22:23:34', '94ee4fd0-e08d-4bed-bc30-c974c31113e7', 1, 1),
(78, 'rj@gmail.com', 'rajesh', 1, 1, '2017-09-19 22:33:18', NULL, 1, 1),
(79, 'kkb2967@gmail.com', '6767', 1, 1, '2017-09-19 22:53:03', 'c737ec01-be10-4a44-9837-e9c76f138aef', 1, 2),
(80, 'test@gmail.com', 'test', 1, 1, '2017-09-19 23:01:48', NULL, 1, 1),
(81, 'kkb6767@gmail.com', '67', 1, 1, '2017-09-20 17:28:47', NULL, 2, 2),
(82, 'perfengineer67@gmail.com', '123', 1, 1, '2017-09-20 18:30:41', '6c6fd0c5-0f39-475e-af31-a864fecb016e', 1, 1),
(83, 'kkiran315@gmail.com', '6767', 1, 1, '2017-09-20 18:50:52', NULL, 1, 1),
(84, 'Fg@g.c', 'tedt', 1, 1, '2017-09-20 20:59:49', '24d36f2b-b0c6-4f01-a991-09c68d1c1708', 2, 2),
(85, 'test@g.com', 'test', 1, 1, '2017-09-20 21:00:38', '24d36f2b-b0c6-4f01-a991-09c68d1c1708', 1, 2),
(86, 'Kkk6@gmail.com', '67', 1, 1, '2017-09-20 21:02:25', '6c6fd0c5-0f39-475e-af31-a864fecb016e', 1, 2),
(87, 'Kkk6789@gmail.com', '567', 1, 1, '2017-09-20 21:09:07', '6c6fd0c5-0f39-475e-af31-a864fecb016e', 2, 2),
(88, 'Babu67@gmail.com', '6767', 1, 1, '2017-09-20 21:12:40', '6c6fd0c5-0f39-475e-af31-a864fecb016e', 2, 2),
(89, 'Kkb67637@gmail.com', '6767', 1, 1, '2017-09-20 21:26:12', '6c6fd0c5-0f39-475e-af31-a864fecb016e', 1, 2),
(90, 'Kiran67@gmail.com', '6767', 1, 1, '2017-09-20 22:18:55', 'c737ec01-be10-4a44-9837-e9c76f138aef', 2, 2),
(91, 'sff@g.com', 'rajesh', 1, 1, '2017-09-21 22:47:25', NULL, 1, 1),
(92, 'ZDsddqd@gmail.com', '1234', 1, 1, '2017-09-23 10:12:32', '&6yuy', 2, 2),
(93, 'rsrinu9010@gmail.com', 'srinu', 1, 1, '2017-09-24 16:23:30', NULL, 1, 1),
(94, 'rsrinu710@gmail.com', 'srinu', 1, 1, '2017-09-24 18:06:01', NULL, 2, 2),
(95, 'sridhar1474@gmail.com', 'srinu', 1, 1, '2017-09-24 18:36:33', NULL, 1, 2),
(96, 'mm@g.com', 'rajesh', 1, 1, '2017-09-25 21:26:15', NULL, 1, 2),
(97, 'kkb6@Gmail.com', '6767', 1, 1, '2017-09-26 07:06:40', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 2, 2),
(98, 'hp7@Gmail.com', '6767', 1, 1, '2017-09-26 07:22:06', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 1, 2),
(99, 'kt676@Gmail.com', '6767', 1, 1, '2017-09-26 07:45:14', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 1, 2),
(100, 'bl67@Gmail.com', '6767', 1, 1, '2017-09-26 07:48:41', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 1, 1),
(101, 'rj@g.com', 'raj', 1, 1, '2017-09-26 12:27:12', '24d36f2b-b0c6-4f01-a991-09c68d1c1708', 1, 2),
(102, 'rajeshvx@gmail.com', 'rajesh', 1, 1, '2017-09-26 21:37:01', '24d36f2b-b0c6-4f01-a991-09c68d1c1708', 1, 2),
(103, 'rajesh43raj@gmail.com', 'rajesh', 1, 1, '2017-09-26 21:38:32', '24d36f2b-b0c6-4f01-a991-09c68d1c1708', 1, 1),
(104, 'perfengineer671@gmail.com', '6767', 1, 1, '2017-09-27 09:37:09', 'c737ec01-be10-4a44-9837-e9c76f138aef', 1, 1),
(105, 'kkb676767@gmail.com', '6767', 1, 1, '2017-09-27 14:27:06', '6c6fd0c5-0f39-475e-af31-a864fecb016e', 1, 1),
(106, 'chaitanyaonly@gmailmcom', 'chaitanya123', 1, 1, '2017-09-27 21:06:45', 'dcba712c-596e-4e5b-986e-4362d578f772', 1, 2),
(107, 'a@a.com', 'rajesh', 1, 1, '2017-09-27 21:34:08', NULL, 1, 2),
(108, 'Hni@gmail.com', 'rajesh', 1, 1, '2017-09-28 09:59:33', '24d36f2b-b0c6-4f01-a991-09c68d1c1708', 1, 2),
(109, 'hny@gmail.com', 'rajesh', 1, 1, '2017-09-28 20:42:11', NULL, 2, 2),
(110, 'chaitanyaonly@gmail.com', 'chaitanya123', 1, 1, '2017-09-30 15:25:25', '6e48d408-eece-4766-a547-e2c3ab53a30e', 1, 2),
(111, 'sff2@g.com', 'raj', 1, 1, '2017-10-02 13:00:58', NULL, 1, 1),
(112, 'bb123@Gmail.com', '6767', 1, 1, '2017-10-04 18:26:43', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 1, 2),
(113, 'Ab@g.com', 'XZJ2wDOI', 1, 1, '2017-10-06 23:25:10', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 1, 1),
(114, 'Ab2@g.com', 'raj', 1, 1, '2017-10-15 12:32:05', '24d36f2b-b0c6-4f01-a991-09c68d1c1708', 1, 1),
(115, 'Hu66@gmail.com', '8989', 1, 1, '2017-10-15 22:14:35', 'c737ec01-be10-4a44-9837-e9c76f138aef', 1, 2),
(116, 'rj8@g.com', 'raj', 1, 1, '2017-10-19 20:06:14', '24d36f2b-b0c6-4f01-a991-09c68d1c1708', 1, 1),
(117, 'ts@g.com', 'raj', 1, 1, '2017-10-24 22:00:59', NULL, 1, 1),
(118, 'rsrinu92@gmail.com', 'srinu', 1, 1, '2017-10-24 23:00:36', '3a2ec267-1674-4eeb-a570-a5a99a6d0832', 1, 1),
(119, 'Kb@gmail.com', '67', 1, 1, '2017-11-02 19:09:32', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 2, 2),
(120, 'tds@g.com', 'raj', 1, 1, '2017-11-04 10:36:53', NULL, 1, 2),
(121, 'a@g.com', 'raj', 1, 1, '2017-11-04 11:20:06', NULL, 1, 2),
(122, 'gvaroon@gmail.com', 'awtt93Aj', 1, 1, '2017-11-05 13:32:46', '63dd6bf9-d3e6-4ecb-8f69-b1d47bf58807', 1, 2),
(123, 'Bb23@Gmail.com', '6767', 1, 1, '2017-11-05 17:25:44', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 2, 2),
(124, 'By67@gmail.com', '6', 1, 1, '2017-11-05 18:11:28', '6c6fd0c5-0f39-475e-af31-a864fecb016e', 2, 2),
(125, 'Srman1@gmail.com', '6', 1, 1, '2017-11-06 21:57:14', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 2, 2),
(126, 'Srman2@gmail.com', '654', 1, 1, '2017-11-06 21:58:34', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 1, 1),
(127, 'Cusone1@gmail.com', '123456', 1, 1, '2017-11-06 22:28:27', '6c6fd0c5-0f39-475e-af31-a864fecb016e', 1, 2),
(128, 'Custwo2@gmail.com', '123456', 1, 1, '2017-11-06 22:29:56', '6c6fd0c5-0f39-475e-af31-a864fecb016e', 1, 2),
(129, 'dsd@hj.com', '1234', 1, 1, '2017-11-07 11:16:16', '&6yuy', 1, 2),
(131, 'gl.santoshkumar@gmail.com', 'santu', 1, 1, '2017-11-10 11:05:40', 'ee9b1392-9df4-4799-86f5-335548906fcd', 1, 2),
(132, 'mandalasuneelkumar@gmail.com', 'pass', 1, 1, '2017-11-10 22:17:23', '07c8870a-6fbf-431b-8211-a84ce6b05a0e', 1, 2),
(137, 'sjkdf@g.com', 'sjdkfljdslj', 1, 1, '2017-11-12 12:53:31', NULL, 2, 2),
(138, 'J7@mailinator.com', 'rajesh', 1, 1, '2017-11-12 12:58:21', '24d36f2b-b0c6-4f01-a991-09c68d1c1708', 1, 2),
(139, 'J9@mailinator.com', 'rajesh', 1, 1, '2017-11-12 12:59:16', 'dcba712c-596e-4e5b-986e-4362d578f772', 1, 1),
(140, 'rsrinu910@gmail.com', 'srinu', 1, 1, '2017-11-13 21:46:41', '3a2ec267-1674-4eeb-a570-a5a99a6d0832', 2, 2),
(141, 'Custhree3@gmail.com', 'euauqydk', 1, 1, '2017-11-14 23:03:45', NULL, 1, 2),
(142, 'Cusfour4@gmail.com', '12345', 1, 1, '2017-11-14 23:15:39', NULL, 2, 2),
(143, 'cusfive5@gmail.com', '12345', 1, 1, '2017-11-14 23:20:02', NULL, 1, 2),
(144, 'serviceman3@gmail.com', '67890', 1, 1, '2017-11-14 23:24:40', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 1, 1),
(145, 'rj2@gmail.com', 'rajesh', 1, 1, '2017-11-20 22:57:02', NULL, 1, 1),
(146, 'Gh@gmail.com', 'rajesh', 1, 1, '2017-11-21 10:02:43', 'dcba712c-596e-4e5b-986e-4362d578f772', 1, 1),
(147, 'Shobhathummati@gmail.com', 'amma9294', 1, 1, '2017-12-02 18:40:34', '5fc6d789-ad20-4d08-a58a-731e4df72084', 1, 2),
(148, 'Customerfour@gmail.com', '67890', 1, 1, '2017-12-04 22:51:48', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 1, 2),
(149, 'Servicemansix@gmail.com', '12345', 1, 1, '2017-12-05 21:53:47', '6c6fd0c5-0f39-475e-af31-a864fecb016e', 1, 1),
(150, 'paritalaraghu@gmail.com', 'A74561230', 1, 1, '2017-12-23 08:53:04', 'e21d3779-fc82-4ed2-8335-74b44e610bf1', 1, 1),
(152, 'abc@abc.com', 'qwertyuio', 1, 1, '2017-12-29 09:33:22', 'e21d3779-fc82-4ed2-8335-74b44e610bf1', 2, 2),
(153, 'rameshepuri@gmail.com', 'A7456123', 1, 1, '2018-01-08 07:35:03', 'ff915218-d0bf-4c4c-9fcc-ef1d8189ac44', 1, 2),
(154, 'myteamdiscussion@gmail.com', 'A74561230', 1, 1, '2018-03-01 06:53:42', 'a406b51f-ee9e-42d9-95fa-d0ed025f1350', 1, 1),
(155, 'gourishankarkaranam@gmail.com', '8142642434', 1, 1, '2018-03-09 19:11:12', '3a2ec267-1674-4eeb-a570-a5a99a6d0832', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_USR_REG_ATTR`
--

CREATE TABLE `BRNG_USR_REG_ATTR` (
  `id` int(11) NOT NULL,
  `usr_reg_id` int(11) NOT NULL,
  `effective_date` date NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_USR_REG_ATTR`
--

INSERT INTO `BRNG_USR_REG_ATTR` (`id`, `usr_reg_id`, `effective_date`, `first_name`, `middle_name`, `last_name`, `address`, `phone_number`, `gender`, `age`) VALUES
(75, 77, '2017-09-19', 'Soumyajit', 'a', 'Dhal', NULL, '9154748948', '1', 24),
(76, 78, '2017-09-19', 'raj', 'a', 'esh', NULL, '9502165016', '1', 22),
(77, 79, '2017-09-19', 'Service', 'a', 'Man', NULL, '8919448514', '1', 20),
(78, 80, '2017-09-19', 'asdf', 'a', 'dsaf', NULL, '9502165016', '1', 22),
(79, 81, '2017-09-20', 'Kiran', 'a', 'Babu', NULL, '8919448514', '1', 20),
(80, 82, '2017-09-20', 'P', 'a', 'K', NULL, '8919448514', '1', 18),
(81, 83, '2017-09-20', 'K', 'a', 'K', NULL, '8106636267', '1', 18),
(82, 84, '2017-09-20', 'C', 'a', 'C', NULL, '9502165016', '1', 22),
(83, 85, '2017-09-20', 'Test', 'a', 'V', NULL, '9502165016', '1', 24),
(84, 86, '2017-09-20', 'K', 'a', 'B', NULL, '8919448514', '1', 23),
(85, 87, '2017-09-20', 'K', 'a', 'Bb', NULL, '8919448514', '1', 23),
(86, 88, '2017-09-20', 'Kk', 'a', 'Bb', NULL, '8919448514', '1', 20),
(87, 89, '2017-09-20', 'Hh', 'a', 'Hhh', NULL, '8919448514', '1', 21),
(88, 90, '2017-09-20', 'K', 'a', 'Yyy', NULL, '9866776118', '1', 19),
(89, 91, '2017-09-21', 'sdf', 'a', 'sdfsd', NULL, '9502165016', '1', 22),
(90, 92, '2017-09-23', 'king', 'kl0', 'kumar', NULL, '9154748948', 'M', 24),
(91, 93, '2017-09-24', 'srinivas', 'a', 'rachamalla', NULL, '9010661474', '1', 25),
(92, 94, '2017-09-24', 'srinivas', 'a', 'rachamalla', NULL, '9010661474', '1', 25),
(93, 95, '2017-09-24', 'sridhar', 'a', 'rachamalla', NULL, '9010661474', '1', 24),
(94, 96, '2017-09-25', 'mam', 'a', 'ta', NULL, '9502165016', '2', 22),
(95, 97, '2017-09-26', 'K', 'a', 'B', NULL, '9866776118', '1', 20),
(96, 98, '2017-09-26', 'H', 'a', 'P', NULL, '9866776118', NULL, 18),
(97, 99, '2017-09-26', 'K', 'a', 'T', NULL, '9866776118', '1', 20),
(98, 100, '2017-09-26', 'B', 'a', 'L', NULL, '9866776118', '1', 20),
(99, 101, '2017-09-26', 'Rajesh', 'a', 'A', NULL, '9502165016', '1', 25),
(100, 102, '2017-09-26', 'Rajesh', 'a', 'S', NULL, '9502165016', '1', 25),
(101, 103, '2017-09-26', 'Raj', 'a', 'Esh', NULL, '9502165016', '1', 24),
(102, 104, '2017-09-27', 'Service', 'a', 'Man', NULL, '8919448514', '1', 20),
(103, 105, '2017-09-27', 'K', 'a', 'Kb', NULL, '7893550571', '1', 20),
(104, 106, '2017-09-27', 'Chaitanya', 'a', 'C', NULL, '9133442405', '1', 20),
(105, 107, '2017-09-27', 'a', 'a', 'a', NULL, '9502165016', '1', 22),
(106, 108, '2017-09-28', 'H', 'a', 'Ni', NULL, '9502165016', '2', 24),
(107, 109, '2017-09-28', 'hny', 'a', 'rani', NULL, '9502165016', '1', 22),
(108, 110, '2017-09-30', 'Chaitanya', 'a', 'Ch', NULL, '9133442405', '1', 18),
(109, 111, '2017-10-02', 'abc', 'a', 'sdf', NULL, '9502165016', '1', 45),
(110, 112, '2017-10-04', 'B', 'a', 'Bb', NULL, '7893550571', '2', 26),
(111, 113, '2017-10-06', 'Ab', 'a', 'B', NULL, '9502165016', '1', 22),
(112, 114, '2017-10-15', 'Abc', 'a', 'A', NULL, '9502165016', '1', 25),
(113, 115, '2017-10-15', 'M', 'a', 'B', NULL, '8919448514', '1', 24),
(114, 116, '2017-10-19', 'A', 'a', 'B three', NULL, '9502165016', '1', 25),
(115, 117, '2017-10-24', 'test', 'a', 'rj', NULL, '9090909090', '1', 22),
(116, 118, '2017-10-24', 'Srinivas', 'a', 'Rachamalla', NULL, '9010661474', '1', 25),
(117, 119, '2017-11-02', 'K', 'a', 'B', NULL, '99', '1', 21),
(118, 120, '2017-11-04', 'tds', 'a', 'a', NULL, '9502165016', '1', 22),
(119, 121, '2017-11-04', 'a', 'a', 'b', NULL, '9502165016', '1', 22),
(120, 122, '2017-11-05', 'Sai ram', 'a', 'Sri', NULL, '9490194364', '1', 35),
(121, 123, '2017-11-05', 'B', 'a', 'B', NULL, '9866776118', '1', 23),
(122, 124, '2017-11-05', 'B', 'a', 'Y', NULL, '6', '1', 20),
(123, 125, '2017-11-06', 'Sr', 'a', 'Man', NULL, '3', '2', 19),
(124, 126, '2017-11-06', 'Sr', 'a', 'Man', NULL, '9866776118', '2', 20),
(125, 127, '2017-11-06', 'Customer', 'a', 'One', NULL, '8919448514', '2', 23),
(126, 128, '2017-11-06', 'Cus', 'a', 'Two', NULL, '8919448514', '2', 20),
(127, 129, '2017-11-07', 'king', 'kl0', 'kumar', NULL, '9154748948', 'M', 24),
(129, 131, '2017-11-10', 'Santosh', 'a', 'Kumar', NULL, '8500217435', '1', 25),
(130, 132, '2017-11-10', 'Sunil', 'a', 'Kumar', NULL, '9494068318', '1', 22),
(131, 137, '2017-11-12', 'raj', 'a', 'i234', NULL, '9283749879', '1', 22),
(132, 138, '2017-11-12', 'Rj7', 'a', 'J7', NULL, '9502165016', '1', 25),
(133, 139, '2017-11-12', 'J8', 'a', 'J9', NULL, '9502165016', '1', 23),
(134, 140, '2017-11-13', 'srinivas', 'a', 'Rachamalla', NULL, '9010661479', '1', 25),
(135, 141, '2017-11-14', 'Custhree3', 'a', 'Three', NULL, '9866776118', '2', 19),
(136, 142, '2017-11-14', 'Cus', 'a', 'Four4', NULL, '8991448514', '2', 19),
(137, 143, '2017-11-14', 'cusfive5', 'a', 'Five', NULL, '8919448511', '2', 80),
(138, 144, '2017-11-14', 'Ser', 'a', 'Man', NULL, '9866776118', '2', 23),
(139, 145, '2017-11-20', 'Rajesh', 'a', 'A', NULL, '9502165016', '1', 22),
(140, 146, '2017-11-21', 'AbB', 'a', 'BBa', NULL, '9502165016', '1', 22),
(141, 147, '2017-12-02', 'Shobha', 'a', 'Thummati', NULL, '7095666646', '2', 23),
(142, 148, '2017-12-04', 'Customer', 'a', 'Four', NULL, '9866776118', '2', 23),
(143, 149, '2017-12-05', 'Serviceman', 'a', 'Six', NULL, '9880038507', '2', 20),
(144, 150, '2017-12-23', 'Raghu', 'a', 'Paritala', NULL, '8113939349', '1', 29),
(145, 151, '2017-12-29', 'Raghu', 'a', 'Paritala', NULL, '8113939349', '2', 29),
(146, 152, '2017-12-29', 'Raghu', 'a', 'P', NULL, '8113939349', '1', 29),
(147, 153, '2018-01-08', 'Ramesh', 'a', 'Epuri', NULL, '9966366039', '1', 29),
(148, 154, '2018-03-01', 'ABC', 'a', 'Test id', NULL, '8113939349', '1', 30),
(149, 155, '2018-03-09', 'Gouri', 'a', 'Karanam', NULL, '8142642434', '1', 24);

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_USR_WALLET`
--

CREATE TABLE `BRNG_USR_WALLET` (
  `id` int(11) NOT NULL,
  `usr_reg_id` int(11) DEFAULT NULL,
  `curr_amt` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_USR_WALLET`
--

INSERT INTO `BRNG_USR_WALLET` (`id`, `usr_reg_id`, `curr_amt`) VALUES
(3, 100, '123.50'),
(4, 131, '500.00'),
(5, 77, '384.50'),
(6, 143, '235.00'),
(7, 145, '2093.00'),
(8, 78, '0.00'),
(9, 150, '175.00');

-- --------------------------------------------------------

--
-- Table structure for table `BRNG_USR_WALLET_ATTR`
--

CREATE TABLE `BRNG_USR_WALLET_ATTR` (
  `id` int(11) NOT NULL,
  `brng_usr_wallet_id` int(11) DEFAULT NULL,
  `tran_amt` decimal(10,2) DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `pay_txn_id` varchar(45) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRNG_USR_WALLET_ATTR`
--

INSERT INTO `BRNG_USR_WALLET_ATTR` (`id`, `brng_usr_wallet_id`, `tran_amt`, `effective_date`, `pay_txn_id`, `status`, `order_id`) VALUES
(22, 3, '500.00', '2017-10-15 21:29:55', '403993715516741838', 'S', NULL),
(23, 3, '-99.50', '2017-10-15 21:30:15', 'payumoneyid', 'S', 240),
(24, 3, '-98.00', '2017-10-15 21:47:14', 'payumoneyid', 'S', 243),
(25, 3, '-96.50', '2017-11-02 21:13:18', 'payumoneyid', 'S', 283),
(26, 3, '-82.50', '2017-11-04 20:43:09', 'payumoneyid', 'S', 287),
(27, 4, '500.00', '2017-11-10 11:33:54', '403993715516849788', 'S', NULL),
(28, 5, '200.00', '2017-11-14 20:59:03', '403993715516867035', 'S', NULL),
(29, 6, '500.00', '2017-11-16 11:42:56', '403993715516874730', 'S', NULL),
(30, 6, '-263.50', '2017-11-16 11:49:45', 'wallet', 'S', 328),
(31, 7, '200.00', '2017-11-21 10:06:24', '403993715516894082', 'S', NULL),
(32, 7, '-162.00', '2017-11-21 10:07:26', 'wallet', 'S', 333),
(33, 6, '-60.00', '2017-11-26 19:04:39', 'wallet', 'S', 337),
(34, 6, '-60.00', '2017-11-26 19:32:22', 'wallet', 'S', 339),
(35, 6, '50.00', '2017-11-26 19:58:05', '403993715516918353', 'S', NULL),
(36, 6, '50.00', '2017-11-26 20:16:22', '403993715516918368', 'S', NULL),
(37, 6, '-181.50', '2017-11-26 20:17:57', 'wallet', 'S', 340),
(38, 8, '162.00', '2017-11-26 22:19:11', '403993715516918454', 'S', NULL),
(39, 8, '-162.00', '2017-11-26 22:19:19', 'wallet', 'S', 342),
(40, 6, '200.00', '2017-11-28 22:35:57', '403993715516930653', 'S', NULL),
(41, 5, '-165.50', '2017-12-11 22:19:03', 'wallet', 'S', 357),
(42, 9, '200.00', '2017-12-23 10:26:14', '403993715517048365', 'S', NULL),
(43, 5, '250.00', '2017-12-24 07:18:08', '403993715517050068', 'S', NULL),
(44, 9, '-87.00', '2018-01-06 11:10:56', 'wallet', 'S', 364),
(45, 7, '110.00', '2018-01-11 23:11:37', '403993715517120693', 'S', NULL),
(46, 7, '110.00', '2018-01-11 23:12:40', '403993715517120701', 'S', NULL),
(47, 7, '2000.00', '2018-01-11 23:42:42', '403993715517120746', 'S', NULL),
(48, 9, '200.00', '2018-01-15 09:02:31', '403993715517128424', 'S', NULL),
(49, 5, '100.00', '2018-01-15 09:11:53', '403993715517128435', 'S', NULL),
(50, 9, '100.00', '2018-01-15 14:55:34', '403993715517130038', 'S', NULL),
(51, 9, '-116.50', '2018-01-15 16:45:41', 'wallet', 'S', 369),
(52, 9, '-121.50', '2018-01-17 21:54:22', 'wallet', 'S', 370),
(53, 7, '-168.00', '2018-01-27 18:10:16', 'wallet', 'S', 371),
(54, 7, '-163.00', '2018-01-27 18:33:19', 'wallet', 'S', 336),
(55, 7, '33.00', '2018-02-10 15:43:00', '403993715517229572', 'S', NULL),
(56, 7, '333.00', '2018-02-10 15:55:05', '403993715517229609', 'S', NULL),
(57, 7, '67.00', '2018-02-10 15:56:58', '403993715517229616', 'S', NULL),
(58, 7, '66.00', '2018-02-10 17:07:29', '403993715517229794', 'S', NULL),
(59, 7, '-165.00', '2018-02-15 22:22:40', 'wallet', 'S', 375),
(60, 7, '-168.00', '2017-02-17 21:43:18', 'wallet', 'S', 379);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brng_admin_cancel`
--
ALTER TABLE `brng_admin_cancel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BRNG_BANK_DETAILS`
--
ALTER TABLE `BRNG_BANK_DETAILS`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brng_lkp_file_path`
--
ALTER TABLE `brng_lkp_file_path`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brng_lkp_is_cancelled`
--
ALTER TABLE `brng_lkp_is_cancelled`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idBRNG_IS_CANCELLED_UNIQUE` (`id`),
  ADD UNIQUE KEY `is_cancelled_UNIQUE` (`is_cancelled`);

--
-- Indexes for table `brng_lkp_is_retry`
--
ALTER TABLE `brng_lkp_is_retry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idBRNG_IS_retry_UNIQUE` (`id`),
  ADD UNIQUE KEY `is_retry_UNIQUE` (`is_retry`);

--
-- Indexes for table `brng_lkp_otp_validated`
--
ALTER TABLE `brng_lkp_otp_validated`
  ADD PRIMARY KEY (`id`,`code`);

--
-- Indexes for table `BRNG_LKP_PAY_TYPE`
--
ALTER TABLE `BRNG_LKP_PAY_TYPE`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idBRNG_IS_ACCEPTED_UNIQUE` (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `brng_lkp_serviceman_validated`
--
ALTER TABLE `brng_lkp_serviceman_validated`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BRNG_ORDER`
--
ALTER TABLE `BRNG_ORDER`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BRNG_ORDER_DELIVERY`
--
ALTER TABLE `BRNG_ORDER_DELIVERY`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BRNG_ORDER_DELIVERY_ATTR`
--
ALTER TABLE `BRNG_ORDER_DELIVERY_ATTR`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brng_serviceman_location_dtls`
--
ALTER TABLE `brng_serviceman_location_dtls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brng_usr_id_fk_idx` (`usr_login_id`);

--
-- Indexes for table `BRNG_TEST`
--
ALTER TABLE `BRNG_TEST`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `brng_usr_address`
--
ALTER TABLE `brng_usr_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BRNG_USR_CODE`
--
ALTER TABLE `BRNG_USR_CODE`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brng_usr_files`
--
ALTER TABLE `brng_usr_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BRNG_USR_LOGIN`
--
ALTER TABLE `BRNG_USR_LOGIN`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BRNG_USR_LOGIN_ATTR`
--
ALTER TABLE `BRNG_USR_LOGIN_ATTR`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BRNG_USR_REG`
--
ALTER TABLE `BRNG_USR_REG`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BRNG_USR_REG_ATTR`
--
ALTER TABLE `BRNG_USR_REG_ATTR`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BRNG_USR_WALLET`
--
ALTER TABLE `BRNG_USR_WALLET`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BRNG_USR_WALLET_ATTR`
--
ALTER TABLE `BRNG_USR_WALLET_ATTR`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brng_admin_cancel`
--
ALTER TABLE `brng_admin_cancel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `BRNG_BANK_DETAILS`
--
ALTER TABLE `BRNG_BANK_DETAILS`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `brng_lkp_is_cancelled`
--
ALTER TABLE `brng_lkp_is_cancelled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `brng_lkp_is_retry`
--
ALTER TABLE `brng_lkp_is_retry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `brng_lkp_otp_validated`
--
ALTER TABLE `brng_lkp_otp_validated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `BRNG_LKP_PAY_TYPE`
--
ALTER TABLE `BRNG_LKP_PAY_TYPE`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `BRNG_ORDER`
--
ALTER TABLE `BRNG_ORDER`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;
--
-- AUTO_INCREMENT for table `BRNG_ORDER_DELIVERY`
--
ALTER TABLE `BRNG_ORDER_DELIVERY`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `BRNG_ORDER_DELIVERY_ATTR`
--
ALTER TABLE `BRNG_ORDER_DELIVERY_ATTR`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brng_serviceman_location_dtls`
--
ALTER TABLE `brng_serviceman_location_dtls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `BRNG_TEST`
--
ALTER TABLE `BRNG_TEST`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brng_usr_address`
--
ALTER TABLE `brng_usr_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `BRNG_USR_CODE`
--
ALTER TABLE `BRNG_USR_CODE`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brng_usr_files`
--
ALTER TABLE `brng_usr_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `BRNG_USR_LOGIN`
--
ALTER TABLE `BRNG_USR_LOGIN`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `BRNG_USR_LOGIN_ATTR`
--
ALTER TABLE `BRNG_USR_LOGIN_ATTR`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BRNG_USR_REG`
--
ALTER TABLE `BRNG_USR_REG`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `BRNG_USR_REG_ATTR`
--
ALTER TABLE `BRNG_USR_REG_ATTR`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `BRNG_USR_WALLET`
--
ALTER TABLE `BRNG_USR_WALLET`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `BRNG_USR_WALLET_ATTR`
--
ALTER TABLE `BRNG_USR_WALLET_ATTR`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
