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
-- Database: `brings_geoservice`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`brings`@`localhost` PROCEDURE `REGISTER_USER_INTO_DB` (`USER_ID` CHAR(50), `NAME1` CHAR(50), `AGE` INT(50), `GENDER` CHAR(20), `PHONENUMBER` CHAR(20), `email` CHAR(50), `address` CHAR(100), `role` CHAR(50), `latitude` CHAR(50), `longitude` CHAR(50), `current_latitude` CHAR(50), `current_longitude` CHAR(50), `secques1` CHAR(50), `secques2` CHAR(50), `secans1` CHAR(50), `secans2` CHAR(50), `cred` CHAR(50), `playerid` CHAR(50))  BEGIN
  insert into user_details(user_id,user_name,age,gender,phone_number,email,address,role,created_on,latitude,longitude,
  current_latitude,current_longitude,SEC_QUES_1,SEC_QUES_2,SEC_ANS_1,SEC_ANS_2,CREDITED,PLAYER_ID)values(user_id,name1,AGE,GENDER,PHONENUMBER,email,address,role,sysdate(),
  latitude,longitude,current_latitude,current_longitude,secques1,secques2,secans1,secans2,cred,playerid);
  
END$$

--
-- Functions
--
CREATE DEFINER=`brings`@`localhost` FUNCTION `AuthenticateUser` (`username` VARCHAR(50), `password1` VARCHAR(50)) RETURNS VARCHAR(10) CHARSET utf8 BEGIN
DECLARE LOGINSTATUS varchar(50);
DECLARE PASSWORD2 varchar(50);


   SELECT USER_PASSWORD into password2 
   FROM user_authentication where USER_NAME=USERNAME;
   if(password2 = PASSWORD1)
   then SET LOGINSTATUS ='YES';
   else set LOGINSTATUS='NO';
   end if;
   RETURN LOGINSTATUS;
   
   END$$

CREATE DEFINER=`brings`@`localhost` FUNCTION `VALIDATE_EMAIL` (`EMAIL_ID` VARCHAR(50)) RETURNS VARCHAR(10) CHARSET latin1 BEGIN

DECLARE EAMIL_id varchar(50);

SELECT  EMAIL INTO EAMIL_id
   FROM user_details where EMAIL=EMAIL_ID;
   if(EAMIL_id = EMAIL_ID)
   then RETURN 'YES';
   
   end if;
   RETURN 'NO';
   
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `ID` varchar(45) NOT NULL DEFAULT 'NA',
  `BANK_NAME` varchar(200) NOT NULL DEFAULT 'NA',
  `IFSC_CODE` varchar(20) NOT NULL DEFAULT 'NA',
  `ACCOUNT_NUMBER` varchar(20) NOT NULL DEFAULT 'NA',
  `ACCOUNT_NAME` varchar(100) NOT NULL DEFAULT 'NA',
  `BRANCH` varchar(100) NOT NULL DEFAULT 'NA'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`ID`, `BANK_NAME`, `IFSC_CODE`, `ACCOUNT_NUMBER`, `ACCOUNT_NAME`, `BRANCH`) VALUES
('jalsa.k@j.com', 'SBI', '67NJ', '234902384', 'Kamal', 'HYD'),
('sri2@gmail.com', 'SBH', '98989sjdfj', '9878898', 'Sri', 'SBHI'),
('wonderoftheworld.dhal@gmail.com', 'Gh', 'Fh', '99999999999', 'Dhal', 'Ch'),
('gh@h.com', 'ghjj', 'dhjj', '223578887888', 'rmssil', 'ghj'),
('trilok@gmail.com', 'H70oogoxmffFo9Ol/cIODA==', 'Ugp1Gb689qsmaK+fKA87', 'm3YtQlo6Dsudlq6ifu1j', 'XrvKCYxKeWTYN6LryR7NZg==', 'bt5JBD/hF+w1jfOGOArdGw==');

-- --------------------------------------------------------

--
-- Table structure for table `corporate_authentication`
--

CREATE TABLE `corporate_authentication` (
  `id` int(11) NOT NULL,
  `user_name` varchar(45) NOT NULL DEFAULT 'NA',
  `password` varchar(45) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `corporate_user`
--

CREATE TABLE `corporate_user` (
  `id` int(11) NOT NULL,
  `corporate_name` varchar(45) NOT NULL DEFAULT 'NA',
  `owned` varchar(45) NOT NULL DEFAULT 'NA',
  `reg_id` varchar(45) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `WORK_ORDER_NUMBER` varchar(50) DEFAULT NULL,
  `ITEM_NAME` varchar(50) DEFAULT NULL,
  `ITEM_QUANTITY` varchar(50) DEFAULT NULL,
  `ITEM_COST` varchar(45) DEFAULT 'NA',
  `ITEM_ID` varchar(45) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `Availability_by_seller` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`WORK_ORDER_NUMBER`, `ITEM_NAME`, `ITEM_QUANTITY`, `ITEM_COST`, `ITEM_ID`, `type`, `Availability_by_seller`) VALUES
('WORKID4', 'sugar 20kg', NULL, '199', 'ITEMID1', NULL, NULL),
('WORKID12', 'sugar 1kg', '45', '45', 'ITEMID10', NULL, NULL),
('WORKID13', 'sugar 1kg', '45', '120', 'ITEMID11', NULL, NULL),
('WORKID14', 'sugar 1kg', '45', '45', 'ITEMID12', NULL, NULL),
('WORKID16', 'Bananas 1', NULL, 'undefined', 'ITEMID13', NULL, NULL),
('WORKID16', 'Apples 2', NULL, '7', 'ITEMID14', NULL, NULL),
('WORKID10', 'Rice', 'NA', 'NA', 'ITEMID15', NULL, NULL),
('WORKID25', 'Rice Bag 50 KG', NULL, 'NA', 'ITEMID16', NULL, NULL),
('WORKID26', 'Gg', NULL, 'NA', 'ITEMID17', NULL, NULL),
('WORKID28', '234234324', NULL, 'NA', 'ITEMID18', NULL, NULL),
('WORKID29', '234234', NULL, 'NA', 'ITEMID19', NULL, NULL),
('WORKID4', 'rice 25kg', NULL, '40', 'ITEMID2', NULL, NULL),
('WORKID31', '', NULL, 'NA', 'ITEMID20', NULL, NULL),
('WORKID31', '', NULL, 'NA', 'ITEMID21', NULL, NULL),
('WORKID31', '', NULL, 'NA', 'ITEMID22', NULL, NULL),
('WORKID32', '', NULL, 'NA', 'ITEMID23', NULL, NULL),
('WORKID33', '', NULL, 'NA', 'ITEMID24', NULL, NULL),
('WORKID34', '', NULL, 'NA', 'ITEMID25', NULL, NULL),
('WORKID35', '', NULL, 'NA', 'ITEMID26', NULL, NULL),
('WORKID36', '', NULL, 'NA', 'ITEMID27', NULL, NULL),
('WORKID37', '', NULL, 'NA', 'ITEMID28', NULL, NULL),
('WORKID38', '', NULL, 'NA', 'ITEMID29', NULL, NULL),
('WORKID3', 'milk', NULL, '45', 'ITEMID3', NULL, NULL),
('WORKID39', 'sdf', NULL, 'NA', 'ITEMID30', NULL, NULL),
('WORKID40', 'sdf', NULL, 'NA', 'ITEMID31', NULL, NULL),
('WORKID42', 'sdfsdff', NULL, 'NA', 'ITEMID32', NULL, NULL),
('WORKID43', 'Bananas 1dozen', NULL, 'NA', 'ITEMID33', NULL, NULL),
('WORKID43', 'Eggs 5', NULL, 'NA', 'ITEMID34', NULL, NULL),
('WORKID43', 'Bread 1pac', NULL, 'NA', 'ITEMID35', NULL, NULL),
('WORKID43', 'Pen', NULL, 'NA', 'ITEMID36', NULL, NULL),
('WORKID44', 'Bananas 1dozen', NULL, 'NA', 'ITEMID37', NULL, NULL),
('WORKID44', 'Eggs 5', NULL, 'NA', 'ITEMID38', NULL, NULL),
('WORKID44', 'Bread 1pac', NULL, 'NA', 'ITEMID39', NULL, NULL),
('WORKID3', 'pen', NULL, NULL, 'ITEMID4', NULL, NULL),
('WORKID44', 'Pen', NULL, 'NA', 'ITEMID40', NULL, NULL),
('WORKID64', 'nn', NULL, 'NA', 'ITEMID41', NULL, NULL),
('WORKID64', 'cp', NULL, 'NA', 'ITEMID42', NULL, NULL),
('WORKID86', 'SDFSDF', NULL, 'NA', 'ITEMID43', NULL, NULL),
('WORKID128', 'Sugar 1kg', NULL, 'NA', 'ITEMID44', NULL, NULL),
('WORKID128', '', NULL, 'NA', 'ITEMID45', NULL, NULL),
('WORKID8', 'sdfsdf', NULL, NULL, 'ITEMID5', NULL, NULL),
('WORKID9', 'fa-20kg', NULL, NULL, 'ITEMID6', NULL, NULL),
('WORKID9', 'sugar-20kg', NULL, NULL, 'ITEMID7', NULL, NULL),
('WORKID10', 'sugar 1kg', '45', '100000000000000000', 'ITEMID8', NULL, NULL),
('WORKID11', 'sugar 1kg', '45', '45', 'ITEMID9', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `referral_user`
--

CREATE TABLE `referral_user` (
  `id` int(10) NOT NULL,
  `user_id` varchar(45) NOT NULL DEFAULT 'NA',
  `referral_code` varchar(45) NOT NULL DEFAULT 'NA',
  `super_referral_code` varchar(45) NOT NULL DEFAULT 'NA',
  `earned_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referral_user`
--

INSERT INTO `referral_user` (`id`, `user_id`, `referral_code`, `super_referral_code`, `earned_date`) VALUES
(1, 'BRING_UD19', 'ptrGn1xpq4mEJ/46VhnByQ==', 'gvaroon@googlemail.com', '2017-02-27 22:52:18'),
(2, 'BRING_UD20', 'QaaueEwCxwMm1Iq+STYjhg==', 'Teuehe', '2017-02-28 16:38:39'),
(3, 'BRING_UD21', 'QaaueEwCxwMm1Iq+STYjhg==', 'Teuehe', '2017-02-28 16:38:55'),
(4, 'BRING_UD22', 'QaaueEwCxwMm1Iq+STYjhg==', 'Teuehe', '2017-02-28 16:47:26'),
(5, 'BRING_UD23', 'GG4UZRbLEqgiTTOR7Nrl8Q==', 'Tuehd', '2017-02-28 17:22:59'),
(6, 'BRING_UD25', 'GG4UZRbLEqgiTTOR7Nrl8Q==', '', '2017-02-28 17:30:32'),
(7, 'BRING_UD26', '9qi1EKoN3ZDABqcIfsVpwQ==', 'NA', '2017-03-22 16:17:27'),
(8, 'BRING_UD27', 'gdA3EBJYNJbkjCf0T4Y/CQ==', 'NA', '2017-03-22 16:19:51'),
(9, 'BRING_UD28', '9qi1EKoN3ZDABqcIfsVpwQ==', 'NA', '2017-03-23 22:57:10'),
(10, 'BRING_UD29', '9qi1EKoN3ZDABqcIfsVpwQ==', 'NA', '2017-03-23 23:01:08'),
(11, 'BRING_UD30', '9qi1EKoN3ZDABqcIfsVpwQ==', 'NA', '2017-03-23 23:02:08'),
(12, 'BRING_UD31', 'oinW9TVXpfF5KI9z/HDghg==', 'NA', '2017-03-26 11:49:26'),
(13, 'BRING_UD14', 'BRING_UD14_RBRINGS', 'ABC', '2017-03-26 07:26:15'),
(14, 'BRING_UD32', 'BRING_UD32_RBRINGS', 'NA', '2017-03-27 19:38:44'),
(15, 'BRING_UD33', 'BRING_UD33_RBRINGS', 'NA', '2017-03-28 23:46:39'),
(16, 'BRING_UD34', 'BRING_UD34_RBRINGS', 'NA', '2017-04-02 18:02:40'),
(17, 'BRING_UD35', 'BRING_UD35_RBRINGS', 'NA', '2017-04-02 18:03:51'),
(18, 'BRING_UD36', 'BRING_UD36_RBRINGS', 'NA', '2017-04-12 00:28:12'),
(19, 'BRING_UD37', 'BRING_UD37_RBRINGS', 'NA', '2017-04-12 00:29:29'),
(20, 'BRING_UD38', 'BRING_UD38_RBRINGS', 'NA', '2017-04-12 00:32:30'),
(21, 'BRING_UD39', 'BRING_UD39_RBRINGS', 'BRING_UD38_RBRINGS', '2017-04-13 23:36:06'),
(22, 'BRING_UD40', 'BRING_UD40_RBRINGS', 'BRING_UD38_RBRINGS', '2017-04-13 23:50:49'),
(23, 'BRING_UD41', 'BRING_UD41_RBRINGS', 'NA', '2017-04-20 07:56:40'),
(24, 'BRING_UD42', 'BRING_UD42_RBRINGS', 'NA', '2017-04-23 21:32:09'),
(25, 'BRING_UD43', 'BRING_UD43_RBRINGS', '', '2017-04-23 21:33:40'),
(26, 'BRING_UD44', 'BRING_UD44_RBRINGS', 'NA', '2017-05-04 23:41:09'),
(27, 'BRING_UD45', 'BRING_UD45_RBRINGS', 'NA', '2017-05-07 09:29:22'),
(28, 'BRING_UD3', 'sri2UD3', 'NA', '2017-04-23 21:33:40'),
(29, 'BRING_UD18', 'triUD18', 'NA', '2017-04-23 21:33:40'),
(30, 'BRING_UD46', 'BRING_UD46_RBRINGS', 'NA', '2017-05-13 10:44:21'),
(31, 'BRING_UD47', 'BRING_UD47_RBRINGS', 'NA', '2017-06-13 08:24:59'),
(32, 'BRING_UD48', 'BRING_UD48_RBRINGS', 'NA', '2017-07-01 12:50:53'),
(33, 'BRING_UD49', 'BRING_UD49_RBRINGS', 'NA', '2017-09-30 13:33:21'),
(34, 'BRING_UD50', 'BRING_UD50_RBRINGS', 'NA', '2017-10-17 21:05:22'),
(35, 'BRING_UD51', 'BRING_UD51_RBRINGS', 'NA', '2017-11-22 11:36:25'),
(36, 'BRING_UD52', 'BRING_UD52_RBRINGS', 'NA', '2017-11-22 11:52:55'),
(37, 'BRING_UD53', 'BRING_UD53_RBRINGS', 'NA', '2017-12-09 00:14:22'),
(38, 'BRING_UD54', 'BRING_UD54_RBRINGS', 'NA', '2018-01-30 20:01:54'),
(39, 'BRING_UD55', 'BRING_UD55_RBRINGS', 'NA', '2018-02-12 22:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `serviceman_temp`
--

CREATE TABLE `serviceman_temp` (
  `id` int(11) NOT NULL,
  `WORK_ORDER_NUMBER` varchar(45) NOT NULL DEFAULT 'NA',
  `SERVICE_PERSON_ID` varchar(45) NOT NULL DEFAULT 'NA',
  `STATUS` varchar(2) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_password`
--

CREATE TABLE `temp_password` (
  `id` int(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  `temp_pwd` varchar(80) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `temp_password`
--

INSERT INTO `temp_password` (`id`, `email`, `temp_pwd`, `TimeStamp`) VALUES
(1, 'soumyajit405@gmail.com', 'KbU1R2sp', '2017-03-27 18:20:41'),
(2, 'varadatrilok@gmail.com', 'G8AyBoUC', '2017-03-24 03:18:11'),
(3, 'wonderoftheworld.dhal@gmail.com', 'gjNdfLyF', '2017-03-24 03:17:21'),
(4, 'mrvaroon@yahoo.co.in', 'RTg0S1PE', '2017-04-05 00:32:41'),
(5, 'Rajesh@mailinator.com', 'Nr2gLjg0', '2017-04-02 23:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL DEFAULT 'NA',
  `address_description` varchar(45) NOT NULL DEFAULT 'NA',
  `lat` varchar(45) NOT NULL DEFAULT 'NA',
  `lng` varchar(45) NOT NULL DEFAULT 'NA',
  `address` varchar(200) NOT NULL DEFAULT 'NA',
  `city` varchar(100) NOT NULL DEFAULT 'NA',
  `state` varchar(100) NOT NULL DEFAULT 'NA',
  `pincode` varchar(45) NOT NULL DEFAULT 'NA',
  `flat_no` varchar(45) NOT NULL DEFAULT 'NA',
  `street` varchar(45) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `email`, `address_description`, `lat`, `lng`, `address`, `city`, `state`, `pincode`, `flat_no`, `street`) VALUES
(1, 'sri2@gmail.com', 'gachibowli office', '78.3489168', '78.3489168', 'gachibowli', 'NA', 'gachibowli beside plaza', 'NA', 'NA', 'NA'),
(2, 'sri2@gmail.com', 'kp home', '78.3996441', '78.3996441', 'kukatpally', 'NA', 'kukatpally house colony', 'NA', 'NA', 'NA'),
(3, 'sri2@gmail.com', 'sanjeevaiah colony home', '17.4374614', '17.4374614', 'ameerpet', 'NA', 'ameerpet house', 'NA', 'NA', 'NA'),
(4, 'sri2@gmail.com', 'sr nagar house', '17.4436497', '78.4458259', 'sr nagar', 'NA', 'hyderabad', 'NA', 'NA', 'NA'),
(5, 'sri2@gmail.com', 'koti', '23.3296657', '82.05705789999999', 'koti', 'NA', 'koti', 'NA', 'NA', 'NA'),
(6, 'sri2@gmail.com', 'koti hyderabad', '17.3913784', '78.4783369', 'sulthan bajar hyderabad', 'NA', 'sulthan bajar', 'NA', 'NA', 'NA'),
(7, 'sri2@gmail.com', 'Grand ma house', '17.4399295', '78.4982741', 'Secunderabad', 'NA', 'h.no 123,Secunderabad, Etc.', 'NA', 'NA', 'NA'),
(8, 'mrvaroon@yahoo.co.in', 'Address1 house karkhana', '17.4617787', '78.5004818', 'Karkhana police station', 'NA', 'Secunderabad', '533009', '89/1', 'Home Street'),
(9, 'mrvaroon@yahoo.co.in', 'Adress A', '17.4427951', '78.3572703', 'Gachibouli kfc', 'NA', 'Hyderabad', '567890', '78-2', 'Royal Street'),
(10, 'gh@h.com', 'home', '17.4400802', '78.3489168', 'gachibowli', 'NA', 'hno78', 'NA', 'NA', 'NA'),
(11, 'mrvaroon@yahoo.co.in', 'Dall', '17.4400802', '78.3489168', 'Gachibouli', 'NA', 'Indranagar mallikarjun PG', 'NA', 'NA', 'NA'),
(12, 'sri2@gmail.com', 'chandanagar', '17.4936006', '78.3252541', 'chandanagar hyderabad', 'NA', 'cdn 123', 'NA', 'NA', 'NA'),
(13, 'Hawao@g.com', 'Home', '17.4400802', '78.3489168', 'Gachibowli', 'NA', 'Dno 76', 'NA', 'NA', 'NA'),
(14, 'Hawao@g.com', 'Office', '17.4474117', '78.3762304', 'Hi tech city', 'NA', 'Dno 78', 'NA', 'NA', 'NA'),
(15, 'sri2@gmail.com', 'sdf', '39.9129412', '-104.7956055', 'sdf', 'NA', 'sdfsdf', 'NA', 'NA', 'NA'),
(16, 'sri2@gmail.com', 'bajar', '17.4489596', '78.4071841', 'hitech hotel borabanda', 'NA', 'h123 hitech hotel', 'NA', 'NA', 'NA'),
(17, 'mrvaroon@yahoo.co.in', 'Test', '', '', 'Gachibowli, Hyderabad, Telangana, India', 'hydrabad', 'TS', '500018', 'i123', 'kukatpally'),
(18, 'sri2@gmail.com', 'Home', '17.4947934', '78.39964409999993', '', 'Hyderabad', 'TS', '500000', 'I123', 'KP'),
(19, 'sri2@gmail.com', 'Home', '17.4947934', '78.39964409999993', '', 'HYD', 'TS', '4927347', '123', 'KP'),
(20, 'sri2@gmail.com', 'test', '17.4400802', '78.34891679999998', 'Gachibowli, Hyderabad, Telangana, India', 'sdf', 'ds2', 'sdf', 'sdf', 'sdf'),
(21, 'sri2@gmail.com', 'sdf', '17.4947934', '78.39964409999993', '11, Rd Number 5, Women\'s Welfare Housing Society, Jubilee Hills, Hyderabad, Telangana 500033, India', 'sdf', 'sdfsdf', 'sdf', 'sdfs', 'sdf'),
(22, 'sri2@gmail.com', 'xdsdf', '17.4302085', '78.4240216', '11, Rd Number 5, Women\'s Welfare Housing Society, Jubilee Hills, Hyderabad, Telangana 500033, India', 'sdf', 'sdfsdf', 'sdfs', 'dfs', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `user_authentication`
--

CREATE TABLE `user_authentication` (
  `USER_NAME` varchar(50) DEFAULT NULL,
  `USER_PASSWORD` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_authentication`
--

INSERT INTO `user_authentication` (`USER_NAME`, `USER_PASSWORD`, `ID`) VALUES
('sri@gmail.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 47),
('sri1@gmail.com', 'ptrGn1xpq4mEJ/46VhnByQ==', 48),
('sri2@gmail.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 49),
('s@g.com', 'PdkbNndOq+YlO42ED7oPVg==', 50),
('rm@gmail.com', 'zOrs0Gg7ZOtTMf8dX7Hw2Q==', 51),
('test@gmail.com', '5PwcY2ljNj3GZ812HfPytQ==', 53),
('sai1@gmail.com', '5PwcY2ljNj3GZ812HfPytQ==', 54),
('ay@gmail.com', '5PwcY2ljNj3GZ812HfPytQ==', 55),
('rajesh@gmail.com', 'QaaueEwCxwMm1Iq+STYjhg==', 56),
('rajesh1@gmail.com', 'QaaueEwCxwMm1Iq+STYjhg==', 57),
('kamal@g.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 58),
('varadatrilok@gmail.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 59),
('test45@gmail.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 60),
('jalsa.k@j.com', 'ptrGn1xpq4mEJ/46VhnByQ==', 61),
('ha@gaga.com', 'Ml/BLgTaIBK4StAKismg4A==', 62),
('test1@g.co', '7ok+shebU/YFSk5/8srt0A==', 63),
('tri@gmail.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 64),
('trilok@gmail.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 65),
('mrvaroon@yahoo.co.in', '9qi1EKoN3ZDABqcIfsVpwQ==', 66),
('rah@gmail.com', 'QaaueEwCxwMm1Iq+STYjhg==', 67),
('raes@gmail.com', 'QaaueEwCxwMm1Iq+STYjhg==', 68),
('raegghs@gmail.com', 'QaaueEwCxwMm1Iq+STYjhg==', 69),
('rae@gmail.com', 'GG4UZRbLEqgiTTOR7Nrl8Q==', 70),
('ra1@gmail.com', 'GG4UZRbLEqgiTTOR7Nrl8Q==', 71),
('ra2@gmail.com', 'GG4UZRbLEqgiTTOR7Nrl8Q==', 72),
('soumyajit405@gmail.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 73),
('raj@hmail.com', 'gdA3EBJYNJbkjCf0T4Y/CQ==', 74),
('varadatrilok@yahoo.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 75),
('wo@dercom', '9qi1EKoN3ZDABqcIfsVpwQ==', 76),
('wonderoftheworld.dhal@gmail.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 77),
('chaitanyaonly@gmail.com', 'oinW9TVXpfF5KI9z/HDghg==', 78),
('123@gmail.com', '7ok+shebU/YFSk5/8srt0A==', 79),
('rajx@gmail.com', 'QaaueEwCxwMm1Iq+STYjhg==', 80),
('raj@gmail.com', 'QaaueEwCxwMm1Iq+STYjhg==', 81),
('rajesh@mailinator.com', 'QaaueEwCxwMm1Iq+STYjhg==', 82),
('srinivas56@gmail.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 83),
('rs@mail.com', 'QaaueEwCxwMm1Iq+STYjhg==', 84),
('gh@h.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 85),
('ra@g.com', 'QaaueEwCxwMm1Iq+STYjhg==', 86),
('r@r.com', 'QaaueEwCxwMm1Iq+STYjhg==', 87),
('hawao@g.com', '9qi1EKoN3ZDABqcIfsVpwQ==', 88),
('h@gmail.com', 'gG0CJLu0CA0uUpFdR/O2HQ==', 89),
('hbbbbbb@gmail.com', 'xwT2hhCuRXdF8yVeO6bC1A==', 90),
('avskmurthy2@gmail.com', 'Iqv6e6OEv2rb7yNojc1oOQ==', 91),
('mandalasuneelkumar@gmail.com', 'zOvY3qqqcP/3qIKXMEO4Rg==', 92),
('mandala0911@gmail.com', 'zOvY3qqqcP/3qIKXMEO4Rg==', 93),
('rsrinu92@gmail.com', 'FYfFk5AFB7/TIAgQZLv9GA==', 94),
('karan@8fx.in', '5ZTks3MsE+JopShnUL8a/w==', 95),
('jpnaln@yahoo.fr', 'U2ak98ovHvKI1ehCd2248Q==', 96),
('t.roesch@hotmail.com', 'XyI4Z5N42lY/RXMhzFrBhw==', 97),
('jo@jojuergens.ch', 'EnEpNmEjJpS7i7LoAkfJKw==', 98),
('saachafacol@gmx.at', '3gx0vDKDa5u5h0DCpXI49A==', 99),
('elangston8381@gmail.com', 'mt0kR1d2HJBlwBtuvzxleg==', 100),
('mirian.mrh@gmail.com', 'dlU+koUgcHdYrHjofPGVUg==', 101),
('titties20t@gmail.com', '283S6F7tvPrrxdFLpegBXg==', 102);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `ID` int(11) NOT NULL,
  `USER_ID` varchar(50) DEFAULT 'NA',
  `USER_NAME` varchar(50) DEFAULT 'NA',
  `AGE` int(11) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(150) DEFAULT NULL,
  `ROLE` varchar(10) DEFAULT NULL,
  `CREATED_ON` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LATITUDE` varchar(50) DEFAULT NULL,
  `LONGITUDE` varchar(50) DEFAULT NULL,
  `CURRENT_LATITUDE` varchar(50) DEFAULT NULL,
  `CURRENT_LONGITUDE` varchar(50) DEFAULT NULL,
  `SELLER_STATUS` varchar(50) DEFAULT NULL,
  `BUYER_STATUS` varchar(50) DEFAULT NULL,
  `Seller_Type` varchar(45) DEFAULT NULL,
  `NUMBER_OF_ASSIGNMENTS` varchar(45) DEFAULT NULL,
  `DEST_LAT` varchar(45) DEFAULT NULL,
  `DEST_LNG` varchar(45) DEFAULT NULL,
  `DESTINATION` varchar(1000) DEFAULT NULL,
  `SEC_QUES_1` varchar(45) DEFAULT NULL,
  `SEC_QUES_2` varchar(45) DEFAULT NULL,
  `SEC_ANS_1` varchar(45) DEFAULT NULL,
  `SEC_ANS_2` varchar(45) DEFAULT NULL,
  `AADHAR_PROOF` varchar(100) DEFAULT NULL,
  `PAN_PROOF` varchar(100) DEFAULT NULL,
  `PHOTO` varchar(100) DEFAULT NULL,
  `CREDITED` varchar(45) DEFAULT NULL,
  `PLAYER_ID` varchar(45) NOT NULL DEFAULT 'NA',
  `DELIVER_BOY` varchar(45) NOT NULL DEFAULT 'NA',
  `VEHICLE_RC` varchar(300) NOT NULL DEFAULT 'NA',
  `VEHICLE_PHOTO` varchar(300) NOT NULL DEFAULT 'NA',
  `DRIVING_LIC` varchar(300) NOT NULL DEFAULT 'NA',
  `PROOF_SUBMITTED` varchar(3) NOT NULL DEFAULT 'NA',
  `BANK_DETAILS_SUBMITTED` varchar(3) NOT NULL DEFAULT 'NA',
  `REFFERAL_CREDIT` varchar(45) NOT NULL DEFAULT 'NA',
  `WORK_STATUS` varchar(45) NOT NULL DEFAULT 'NA',
  `IMG_URL` varchar(200) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`ID`, `USER_ID`, `USER_NAME`, `AGE`, `GENDER`, `PHONE_NUMBER`, `EMAIL`, `ADDRESS`, `ROLE`, `CREATED_ON`, `LATITUDE`, `LONGITUDE`, `CURRENT_LATITUDE`, `CURRENT_LONGITUDE`, `SELLER_STATUS`, `BUYER_STATUS`, `Seller_Type`, `NUMBER_OF_ASSIGNMENTS`, `DEST_LAT`, `DEST_LNG`, `DESTINATION`, `SEC_QUES_1`, `SEC_QUES_2`, `SEC_ANS_1`, `SEC_ANS_2`, `AADHAR_PROOF`, `PAN_PROOF`, `PHOTO`, `CREDITED`, `PLAYER_ID`, `DELIVER_BOY`, `VEHICLE_RC`, `VEHICLE_PHOTO`, `DRIVING_LIC`, `PROOF_SUBMITTED`, `BANK_DETAILS_SUBMITTED`, `REFFERAL_CREDIT`, `WORK_STATUS`, `IMG_URL`) VALUES
(51, 'BRING_UD1', 'srinu', 24, 'M', '9988998898', 'sri@gmail.com', 'hyd123', NULL, '2016-12-03 12:17:19', '17.4454103', '78.3595319', '17.4460276', '78.3658943', NULL, 'buy', NULL, NULL, '1', 'null', 'gachibowli', 'fsp', 'pname', 'sac', 'koi', 'http://localhost:8080//FileSystem//BRING_UD1//address//Project A.one', 'http://localhost:8080//FileSystem//BRING_UD1//idproof//Research.one', 'http://localhost:8080//FileSystem//BRING_UD1//pic//Project B.one', '500', 'null', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(52, 'BRING_UD2', 'sri1@gmail.com', 24, 'M', '9988998898', 'sri1@gmail.com', 'hyd123', NULL, '2016-12-03 12:20:52', '17.4453851', '78.3595869', '17.567', '78.890', NULL, 'serviceman', NULL, '1', '17.4947934', '78.39964409999993', 'Kukatpally, Hyderabad, Telangana, India', 'fsp', 'pname', 'sac', 'koi', 'http://localhost:8080//FileSystem//BRING_UD2//address//Planning.one', 'http://localhost:8080//FileSystem//BRING_UD2//idproof//Miscellaneous.one', 'http://localhost:8080//FileSystem//BRING_UD2//pic//Meeting notes.one', '500', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(53, 'BRING_UD3', 'srinu', 24, 'M', '9876543212', 'sri2@gmail.com', 'jk', NULL, '2016-12-03 12:22:30', '17.4453812', '78.35955140000002', '17.567', '78.890', NULL, 'buy', NULL, NULL, '17.4400802', '78.34891679999998', 'Gachibowli, Hyderabad, Telangana, India', 'fsp', 'pname', 'sac', 'koi', 'http://localhost:8080//FileSystem//BRING_UD3//address//ball.html', 'http://localhost:8080//FileSystem//BRING_UD3//idproof//index.html', 'http://localhost:8080//FileSystem//BRING_UD3//pic//index - Copy.html', '500', '8ce18e9b-d78c-4cef-862e-220a7c167123', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(54, 'BRING_UD4', 'sdfsdf', 44, NULL, NULL, 's@g.com', NULL, NULL, '2016-12-18 19:14:54', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdfsdf', 'sdfsdf', NULL, NULL, NULL, '500', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(55, 'BRING_UD5', 'Ram', 22, NULL, NULL, 'rm@gmail.com', NULL, NULL, '2016-12-18 19:15:51', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdfsdfdsf', 'sdfsdfdsf', NULL, NULL, NULL, '500', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(57, 'BRING_UD6', 'test', 22, NULL, '7878', 'test@gmail.com', NULL, NULL, '2016-12-24 10:45:33', '17.47', '78.44', '17.452836299999998', '78.412649', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL, NULL, '500', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(58, 'BRING_UD7', 'sai', 22, 'male', '78887878787', 'sai1@gmail.com', 'hyd', NULL, '2016-12-24 10:47:07', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'pandu', 'kakatiya', NULL, NULL, NULL, '500', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(59, 'BRING_UD8', 'ajay', 23, 'male', '99898989', 'ay@gmail.com', 'hyd', NULL, '2016-12-24 10:49:04', '17.47', '78.44', '17.47', '78.44', NULL, 'serviceman', NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'aj', 'vidwan', NULL, NULL, NULL, '500', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(60, 'BRING_UD9', 'rajesh', 22, 'male', '9502165016', 'rajesh@gmail.com', 'hyd', NULL, '2016-12-25 18:49:25', '17.47', '78.44', '17.47', '78.44', NULL, 'serviceman', NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'raj', 'kakatiya', NULL, NULL, NULL, '500', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(61, 'BRING_UD10', 'rajesh', 22, 'male', '2234', 'rajesh1@gmail.com', 'hyd', NULL, '2016-12-25 18:51:55', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'hyd', 'hyd', NULL, NULL, NULL, '500', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(62, 'BRING_UD11', 'kamal', 22, 'male', '986532147', 'kamal@g.com', 'hyd', NULL, '2016-12-27 07:45:14', '17.47', '78.44', '17.452836299999998', '78.412649', NULL, 'READYTODELIVER', NULL, '14', '17.4400802', '78.34891679999998', 'Gachibowli, Hyderabad, Telangana, India', 'What is your child hood name', 'What is your school name', 'kamal', 'jit', NULL, NULL, NULL, '500', 'null', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(63, 'BRING_UD12', 'Trilok', 24, 'male', '7416716308', 'varadatrilok@gmail.com', 'Bowenpally', NULL, '2016-12-29 22:12:36', '17.47', '78.44', '17.47', '78.44', NULL, 'NA', NULL, NULL, '17.4595625', '78.47803599999997', 'New Bowenpally, Bowenpally, Secunderabad, Telangana, India', 'What is your child hood name', 'What is your school name', 'Trilok', 'Ncs', NULL, NULL, NULL, '500', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(64, 'BRING_UD13', 'test', 22, 'Male', '9898', 'test45@gmail.com', 'hyd', NULL, '2017-01-01 15:50:50', '17.48', '78.44', '17.4227563', '78.3498127', NULL, 'NA', NULL, NULL, NULL, NULL, NULL, 'W', 'A', 'B', 'C', NULL, NULL, NULL, '500', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(65, 'BRING_UD14', 'Jaisa kishore', 21, 'male', '9876541239', 'jalsa.k@j.com', 'ghui', NULL, '2017-01-04 14:20:43', '17.47', '78.44', '17.452836299999998', '78.412649', NULL, 'NA', NULL, '5', '17.4400802', '78.34891679999998', 'Gachibowli, Hyderabad, Telangana, India', 'What is your child hood name', 'What is your school name', 'Hitler', 'Yureka', NULL, NULL, NULL, '500', 'null', 'NA', 'NA', 'NA', 'NA', 'NA', 'Y', '0', 'NA', 'NA'),
(66, 'BRING_UD15', 'Ch', 9999, 'male', '86', 'ha@gaga.com', 'Ch HH', NULL, '2017-01-07 21:54:18', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', NULL, 'Ch', NULL, NULL, NULL, '500', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(67, 'BRING_UD16', 'raj', 44, 'M', '99999999', 'test1@g.co', 'hyd', NULL, '2017-01-11 17:05:24', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'abc', 'def', NULL, NULL, NULL, '500', '123456', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(68, 'BRING_UD17', 'Tri', 24, 'male', '7416716308', 'tri@gmail.com', 'Bowenpally', NULL, '2017-02-06 21:19:16', '17.47', '78.44', '17.470147', '78.5087527', NULL, 'buy', NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'Tri', 'Ncs', NULL, NULL, NULL, '500', 'b98cb773-a48c-4149-b9bc-381d12142bdb', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', '0', 'NA', 'NA'),
(69, 'BRING_UD18', 'Service', 24, 'male', '8332916309', 'trilok@gmail.com', 'Bowenpally', NULL, '2017-02-06 21:24:07', '17.47', '78.44', '17.4454163', '78.3595669', NULL, 'READYTODELIVER', NULL, '4', '', '', '', 'What is your child hood name', 'What is your school name', 'Tri', 'Ncs', '/root/gvn/reports/trilok@gmail.com/aadhar/IMG-20170503-WA0010.jpg', '/root/gvn/reports/trilok@gmail.com/pan/IMG-20170503-WA0006.jpg', '/root/gvn/reports/trilok@gmail.com//passport/IMG-20170503-WA0003.jpg', '500', '71a72d79-61a4-4b8a-a34e-f594ccf17732', 'Y', '/root/gvn/reports/trilok@gmail.com/vehiclerc/IMG-20170503-WA0007.jpg', '/root/gvn/reports/trilok@gmail.com/vehiclephoto/IMG-20170503-WA0008.jpg', '/root/gvn/reports/trilok@gmail.com/drivinglicense/IMG-20170503-WA0009.jpg', 'Y', 'Y', '0', 'NA', 'http://brings.co.in/Reports/Images/trilok@gmail.com/IMG-20170503-WA0003.jpg'),
(70, 'BRING_UD19', 'Varun', 33, 'male', '9490194364', 'mrvaroon@yahoo.co.in', 'Secenderabad', NULL, '2017-02-27 22:22:18', '17.47', '78.44', '17.4479833', '78.3790231', NULL, 'buy', NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'Varun', 'School', NULL, NULL, NULL, '500', 'cd2e1ad6-4c6a-4bb7-9c77-c4782102b243', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(71, 'BRING_UD20', 'raj', 23, 'male', '9999', 'rah@gmail.com', 'Hyd', NULL, '2017-02-28 16:08:39', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'Abc', 'Abc', NULL, NULL, NULL, '500', 'fa552414-0bf8-4dfb-b7bf-9b1bbe4029da', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(72, 'BRING_UD21', 'raj', 23, 'male', '9999', 'raes@gmail.com', 'Hyd', NULL, '2017-02-28 16:08:55', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'Abc', 'Abc', NULL, NULL, NULL, '500', 'fa552414-0bf8-4dfb-b7bf-9b1bbe4029da', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(73, 'BRING_UD22', 'raj', 23, 'male', '9999', 'raegghs@gmail.com', 'Hyd', NULL, '2017-02-28 16:17:25', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'Abc', 'Abc', NULL, NULL, NULL, '500', 'fa552414-0bf8-4dfb-b7bf-9b1bbe4029da', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(74, 'BRING_UD23', 'Rak', 545, 'male', '5464640545', 'rae@gmail.com', 'Hyd', NULL, '2017-02-28 16:52:59', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'Hydqwr', 'Opk', NULL, NULL, NULL, '500', 'dbb043f3-e691-42ac-af77-6398019e7a95', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(75, 'BRING_UD24', 'raj', 23, 'male', '92389048', 'ra1@gmail.com', 'hyd', NULL, '2017-02-28 16:54:16', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'yyd', 'jdkfj', NULL, NULL, NULL, '500', '23904892348', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(76, 'BRING_UD25', 'sdf', 234, 'male', '234', 'ra2@gmail.com', 'hyd', NULL, '2017-02-28 17:00:32', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'ysdkfj', 'sjkldfj', NULL, NULL, NULL, '500', '23904892348', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(77, 'BRING_UD26', 'Sou', 23, 'male', '9765433', 'soumyajit405@gmail.com', 'Ghj', NULL, '2017-03-22 10:47:27', '17.47', '78.44', '17.47', '78.44', NULL, 'NA', NULL, NULL, '17.4492319', '78.3739567', 'Oracle Campus Phase 3, Jubilee Enclave, HITEC City, Hyderabad, Telangana 500081, India', 'What is your child hood name', 'What is your school name', 'Ghu', 'Ggh', NULL, NULL, NULL, '500', '71a72d79-61a4-4b8a-a34e-f594ccf17732', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(78, 'BRING_UD27', 'Raj', 22, 'male', '688778', 'raj@hmail.com', 'Hyd', NULL, '2017-03-22 10:49:51', '17.47', '78.44', '17.47', '78.44', NULL, 'NA', NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'Hh', 'Bhhh', NULL, NULL, NULL, '500', '8ce18e9b-d78c-4cef-862e-220a7c167123', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(79, 'BRING_UD28', 'VARADA', 24, 'male', '7416716308', 'varadatrilok@yahoo.com', 'Bowenpally', NULL, '2017-03-23 17:27:10', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'Chinnu', 'Ncs', NULL, NULL, NULL, '500', 'f6541605-720c-41f8-8e56-e02717a7c4c4', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(80, 'BRING_UD29', 'VARADA', 24, 'male', '7416716308', 'wo@dercom', 'Bowenpally', NULL, '2017-03-23 17:31:08', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'Chinnu', 'Ncs', NULL, NULL, NULL, '500', 'f6541605-720c-41f8-8e56-e02717a7c4c4', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(81, 'BRING_UD30', 'VARADA', 24, 'male', '7416716308', 'wonderoftheworld.dhal@gmail.com', 'Bowenpally', NULL, '2017-03-23 17:32:08', '17.47', '78.44', '17.47', '78.44', NULL, 'NA', NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'Chinnu', 'Ncs', NULL, NULL, NULL, '500', 'f6541605-720c-41f8-8e56-e02717a7c4c4', 'NA', 'NA', 'NA', 'NA', 'NA', 'Y', 'NA', 'NA', 'NA'),
(82, 'BRING_UD31', 'Chaitanya', 16, 'male', '9133442405', 'chaitanyaonly@gmail.com', 'ABC colony', NULL, '2017-03-26 06:19:26', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'Chaitu', 'ABC', NULL, NULL, NULL, '500', 'fa552414-0bf8-4dfb-b7bf-9b1bbe4029da', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(83, 'BRING_UD32', 'A', 99, 'male', '9197678901', '123@gmail.com', 'Again', NULL, '2017-03-27 14:08:44', '17.47', '78.44', '17.47', '78.44', NULL, 'buy', NULL, NULL, NULL, NULL, NULL, 'What is your child hood name', 'What is your school name', 'C', 'C', NULL, NULL, NULL, '500', 'fa552414-0bf8-4dfb-b7bf-9b1bbe4029da', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(84, 'BRING_UD33', 'rajesh', NULL, NULL, '878977', 'rajx@gmail.com', NULL, NULL, '2017-03-28 18:16:39', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '123213', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(85, 'BRING_UD34', 'rajesh', NULL, NULL, '9898988989', 'raj@gmail.com', NULL, NULL, '2017-04-02 12:32:40', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '123213', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(86, 'BRING_UD35', 'rajesh', NULL, NULL, '89889898', 'rajesh@mailinator.com', NULL, NULL, '2017-04-02 12:33:51', '17.47', '78.44', '17.47', '78.44', NULL, 'buy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '123213', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(87, 'BRING_UD36', 'China', NULL, NULL, '761907114', 'srinivas56@gmail.com', NULL, NULL, '2017-04-11 18:58:12', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', 'b98cb773-a48c-4149-b9bc-381d12142bdb', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(88, 'BRING_UD37', 'Rajehs', NULL, NULL, '867888', 'rs@mail.com', NULL, NULL, '2017-04-11 18:59:29', '17.47', '78.44', '17.47', '78.44', NULL, 'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '8ce18e9b-d78c-4cef-862e-220a7c167123', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(89, 'BRING_UD38', 'rmail', NULL, NULL, '7890654321', 'gh@h.com', NULL, NULL, '2017-04-11 19:02:29', '17.47', '78.44', '17.47', '78.44', NULL, 'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '8ce18e9b-d78c-4cef-862e-220a7c167123', 'NA', 'NA', 'NA', 'NA', 'NA', 'Y', '100', 'NA', 'NA'),
(90, 'BRING_UD39', 'Rajesh', NULL, NULL, '99999999', 'ra@g.com', NULL, NULL, '2017-04-13 18:06:06', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '123', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'http://brings.co.in/Reports/Images/r@r.com/logo.jpg'),
(91, 'BRING_UD40', 'rajesh', 22, NULL, '989898989', 'r@r.com', 'sdfsdf', NULL, '2017-04-13 18:20:49', '17.47', '78.44', '17.47', '78.44', NULL, 'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '123', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'http://brings.co.in/Reports/Images/r@r.com/logo.jpg'),
(92, 'BRING_UD41', 'Hawaio', 25, NULL, '9876543210', 'hawao@g.com', 'Gjjbb', NULL, '2017-04-20 02:26:40', '17.47', '78.44', '17.47', '78.44', NULL, 'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '71a72d79-61a4-4b8a-a34e-f594ccf17732', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(93, 'BRING_UD42', 'C', NULL, NULL, 'H', 'h@gmail.com', NULL, NULL, '2017-04-23 16:02:09', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', 'fa552414-0bf8-4dfb-b7bf-9b1bbe4029da', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(94, 'BRING_UD43', 'Chaitu', NULL, NULL, '9013556128', 'hbbbbbb@gmail.com', NULL, NULL, '2017-04-23 16:03:40', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', 'fa552414-0bf8-4dfb-b7bf-9b1bbe4029da', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(95, 'BRING_UD44', 'Murthy', NULL, NULL, '9876543210', 'avskmurthy2@gmail.com', NULL, NULL, '2017-05-04 18:11:09', '17.47', '78.44', '17.47', '78.44', NULL, 'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '3451a8a6-c635-444e-855f-832d907a75c2', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(96, 'BRING_UD45', 'Sunil', NULL, NULL, '9494068318', 'mandalasuneelkumsr@gmsil.com', NULL, NULL, '2017-05-07 03:59:22', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '71a72d79-61a4-4b8a-a34e-f594ccf17732', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(97, 'BRING_UD46', 'Suneel', NULL, NULL, '9494068318', 'mandala0911@gmail.com', NULL, NULL, '2017-05-13 05:14:21', '17.47', '78.44', '17.422779', '78.3495985', NULL, 'NA', NULL, NULL, '17.422779', '78.3495985', 'Nanakram Guda, Hyderabad, Telangana 500032, India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '71a72d79-61a4-4b8a-a34e-f594ccf17732', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(98, 'BRING_UD47', 'Srinivas', NULL, NULL, '9010661474', 'rsrinu92@gmail.com', NULL, NULL, '2017-06-13 02:54:59', '17.47', '78.44', '17.47', '78.44', NULL, 'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '495b3132-d9a3-4e0a-b9dc-91d5c3f59c39', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(99, 'BRING_UD48', 'karan', NULL, NULL, '9676983233', 'karan@8fx.in', NULL, NULL, '2017-07-01 07:20:53', '17.47', '78.44', '17.47', '78.44', NULL, 'buy', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '882e2e69-19fc-4bdc-bdc9-3420b3314810', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(100, 'BRING_UD49', 'JPREN', NULL, NULL, NULL, 'jpnaln@yahoo.fr', NULL, NULL, '2017-09-30 08:03:21', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '12312323213', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(101, 'BRING_UD50', NULL, NULL, NULL, '794362878', 't.roesch@hotmail.com', NULL, NULL, '2017-10-17 15:35:22', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '12312323213', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(102, 'BRING_UD51', 'Jo', NULL, NULL, '', 'jo@jojuergens.ch', NULL, NULL, '2017-11-22 06:06:25', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '12312323213', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(103, 'BRING_UD52', 'Sascha', NULL, NULL, '0650283732', 'saachafacol@gmx.at', NULL, NULL, '2017-11-22 06:22:55', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '12312323213', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(104, 'BRING_UD53', 'Evette', NULL, NULL, '3175006827', 'elangston8381@gmail.com', NULL, NULL, '2017-12-08 18:44:22', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '12312323213', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(105, 'BRING_UD54', 'MirianConN', NULL, NULL, NULL, 'mirian.mrh@gmail.com', NULL, NULL, '2018-01-30 14:31:54', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '12312323213', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(106, 'BRING_UD55', NULL, NULL, NULL, '3136247245', 'titties20t@gmail.com', NULL, NULL, '2018-02-12 16:31:28', '17.47', '78.44', '17.47', '78.44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', '12312323213', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `WORK_ORDER_NUMBER` varchar(50) NOT NULL,
  `BUYER_ID` varchar(50) DEFAULT NULL,
  `SELLER_ID` varchar(50) DEFAULT NULL,
  `SERVICE_PERSON_ID` varchar(50) DEFAULT NULL,
  `TOTAL_BILL` float DEFAULT NULL,
  `FROM_LATITUDE` varchar(50) DEFAULT NULL,
  `FROM_LONGITUDE` varchar(50) DEFAULT NULL,
  `TO_LATITUDE` varchar(50) DEFAULT NULL,
  `TO_LONGITUDE` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `ORDER_DATE` datetime DEFAULT NULL,
  `FROM_ADDRESS` varchar(200) DEFAULT NULL,
  `TO_ADDRESS` varchar(200) DEFAULT NULL,
  `ORDER_TYPE` varchar(45) DEFAULT NULL,
  `STATUS` varchar(45) DEFAULT NULL,
  `NAME_OF_PERSON_PCKD_GOODS` varchar(45) DEFAULT NULL,
  `CONTACT_NUM_PCKD_GOODS` varchar(45) DEFAULT NULL,
  `SERVICE_PERSON_CONFIRMATION` varchar(45) DEFAULT 'NA',
  `SELLER_CONFIRMATION` varchar(45) DEFAULT NULL,
  `CANCEL_COUNT` int(11) DEFAULT NULL,
  `FIRST_SELLER` varchar(45) DEFAULT NULL,
  `FIRST_SERVICEMAN` varchar(45) DEFAULT NULL,
  `CANCEL_COUNT_SERVICEMEN` int(11) DEFAULT NULL,
  `FULL_ADDRESS_DESTINATION` varchar(100) DEFAULT NULL,
  `FULL_ADDRESS_SOURCE` varchar(100) DEFAULT NULL,
  `COMMENTS_BY_SERVICEMAN` varchar(45) DEFAULT 'NA',
  `COMMISION_BY_SERVICEMAN` varchar(45) DEFAULT NULL,
  `PAYMENT_CONFIRMATION` varchar(45) DEFAULT 'NA',
  `RECEIVE_GOODS` varchar(45) DEFAULT 'NA',
  `DELIVER_GOODS` varchar(45) DEFAULT 'NA',
  `TOTAL_DIST` varchar(45) DEFAULT NULL,
  `SURGE_ACCEPT` varchar(45) DEFAULT 'NA',
  `TERMS_CONDITIONS` varchar(45) DEFAULT 'NA',
  `AUTO_CANCEL_BSIDE` varchar(45) DEFAULT 'NA',
  `AUTO_CANCEL_SSIDE` varchar(45) DEFAULT 'NA',
  `ORDER_ASSIGNED_TIME` timestamp(6) NULL DEFAULT NULL,
  `PAYMENT_TIME` timestamp(6) NULL DEFAULT NULL,
  `BUY_STATUS` varchar(5) DEFAULT NULL,
  `SERVICE_PERSON_CONF_TIME` timestamp(6) NULL DEFAULT NULL,
  `ESTIMATED_WEIGHT` varchar(45) NOT NULL DEFAULT 'NA',
  `ESTIMATED_COST` varchar(45) NOT NULL DEFAULT 'NA',
  `NAME_DELIVERY_PER` varchar(45) NOT NULL DEFAULT 'NA',
  `CONTACT_DELIVERY_PER` varchar(45) NOT NULL DEFAULT 'NA',
  `RECEIVE_TIME` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `DELIVER_TIME` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `TRANSACTION_ID` varchar(100) DEFAULT 'NA',
  `PAY_TRANSC_ID` varchar(100) NOT NULL DEFAULT 'NA',
  `TXN_STATUS` varchar(50) NOT NULL DEFAULT 'NA',
  `COST_TO_COMPANY` varchar(45) NOT NULL DEFAULT 'NA',
  `PICK_ADDRESS_OP` varchar(100) NOT NULL DEFAULT 'NA',
  `DEL_ADDRESS_OP` varchar(100) NOT NULL DEFAULT 'NA',
  `EXTRA_DESC` varchar(100) NOT NULL,
  `PLACED_STATUS` varchar(3) NOT NULL DEFAULT 'NA',
  `PLACED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `START_STATUS` varchar(3) NOT NULL DEFAULT 'NA',
  `START_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `STOP_STATUS` varchar(3) NOT NULL DEFAULT 'NA',
  `STOP_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BUYER_REVIEW` varchar(2) NOT NULL DEFAULT 'NA',
  `SERVICEMAN_REVIEW` varchar(2) NOT NULL DEFAULT 'NA',
  `CANCEL_BY_BUYER` varchar(3) NOT NULL DEFAULT 'NA',
  `CANCEL_BY_SERVICEMAN` varchar(3) NOT NULL DEFAULT 'NA',
  `SERVICEMAN_LIST` varchar(300) NOT NULL DEFAULT 'NA',
  `ppincode` varchar(45) NOT NULL DEFAULT 'NA',
  `pflat_no` varchar(45) NOT NULL DEFAULT 'NA',
  `pstreet` varchar(45) NOT NULL DEFAULT 'NA',
  `pcity` varchar(45) NOT NULL DEFAULT 'NA',
  `pstate` varchar(45) NOT NULL DEFAULT 'NA',
  `dpincode` varchar(10) NOT NULL DEFAULT 'NA',
  `dflat_no` varchar(45) NOT NULL DEFAULT 'NA',
  `dstreet` varchar(45) NOT NULL DEFAULT 'NA',
  `dcity` varchar(45) NOT NULL DEFAULT 'NA',
  `dstate` varchar(45) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`WORK_ORDER_NUMBER`, `BUYER_ID`, `SELLER_ID`, `SERVICE_PERSON_ID`, `TOTAL_BILL`, `FROM_LATITUDE`, `FROM_LONGITUDE`, `TO_LATITUDE`, `TO_LONGITUDE`, `DESCRIPTION`, `ORDER_DATE`, `FROM_ADDRESS`, `TO_ADDRESS`, `ORDER_TYPE`, `STATUS`, `NAME_OF_PERSON_PCKD_GOODS`, `CONTACT_NUM_PCKD_GOODS`, `SERVICE_PERSON_CONFIRMATION`, `SELLER_CONFIRMATION`, `CANCEL_COUNT`, `FIRST_SELLER`, `FIRST_SERVICEMAN`, `CANCEL_COUNT_SERVICEMEN`, `FULL_ADDRESS_DESTINATION`, `FULL_ADDRESS_SOURCE`, `COMMENTS_BY_SERVICEMAN`, `COMMISION_BY_SERVICEMAN`, `PAYMENT_CONFIRMATION`, `RECEIVE_GOODS`, `DELIVER_GOODS`, `TOTAL_DIST`, `SURGE_ACCEPT`, `TERMS_CONDITIONS`, `AUTO_CANCEL_BSIDE`, `AUTO_CANCEL_SSIDE`, `ORDER_ASSIGNED_TIME`, `PAYMENT_TIME`, `BUY_STATUS`, `SERVICE_PERSON_CONF_TIME`, `ESTIMATED_WEIGHT`, `ESTIMATED_COST`, `NAME_DELIVERY_PER`, `CONTACT_DELIVERY_PER`, `RECEIVE_TIME`, `DELIVER_TIME`, `TRANSACTION_ID`, `PAY_TRANSC_ID`, `TXN_STATUS`, `COST_TO_COMPANY`, `PICK_ADDRESS_OP`, `DEL_ADDRESS_OP`, `EXTRA_DESC`, `PLACED_STATUS`, `PLACED_TIME`, `START_STATUS`, `START_TIME`, `STOP_STATUS`, `STOP_TIME`, `BUYER_REVIEW`, `SERVICEMAN_REVIEW`, `CANCEL_BY_BUYER`, `CANCEL_BY_SERVICEMAN`, `SERVICEMAN_LIST`, `ppincode`, `pflat_no`, `pstreet`, `pcity`, `pstate`, `dpincode`, `dflat_no`, `dstreet`, `dcity`, `dstate`) VALUES
('DUMMY1', 'DUMMY', NULL, 'DUMMY', NULL, NULL, NULL, NULL, NULL, 'A Parcel', NULL, NULL, NULL, '', 'SERVICEMANASSIGNED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NA', 'NA', 'NA', 'NA', NULL, NULL, NULL, NULL, '', '', '', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '', 'NA', 'NA', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID10', 'sri2@gmail.com', NULL, 'BRING_UD14', 0, NULL, NULL, '17.4400802', '78.34891679999998', 'A Parcel', NULL, NULL, 'Gachibowli, Hyderabad, Telangana, India', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdfjsdfkj', '987897897878', 'YES', NULL, 0, NULL, 'BRING_UD14', 0, NULL, NULL, 'Approved', '0', 'YES', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, '2017-02-27 10:46:03.000000', 'YES', '2017-02-13 17:37:21.000000', 'NA', '34', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'T1WBT11Y7V0NLW7O13022017180721881', '403993715515703523', 'NA', '34', 'NA', 'kjdfkjsdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID100', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.4482929', '78.39148509999995', '17.4400802', '78.34891679999998', 'Non Commercial', '2017-05-12 16:06:54', 'Madhapur, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'BringGoods', 'PAID', 'Tetdg', '6677', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '99', 'YES', 'NA', 'NA', '5', 'NA', 'NA', 'NA', 'NA', '2017-05-12 20:06:54.000000', '2017-05-12 20:11:46.000000', 'NO', '2017-05-12 20:07:46.000000', '13', '117', 'Adxc', '4666', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '596TMBCC5DWZPEX412052017160746773', '403993715516057102', 'NA', '17', 'Sadd', 'Addd', 'Dfc', 'Y', '2017-05-12 20:06:54', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID101', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:17', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:17.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:17', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID102', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:17', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:17.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:17', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID103', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:18', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:18.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:18', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID104', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:20', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:20.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:20', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID105', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:20', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:20.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:20', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID106', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:21', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:21.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:21', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID107', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:26', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:26.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:26', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID108', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:28', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:28.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:28', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID109', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:29', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:29.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:29', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID11', 'sri2@gmail.com', NULL, 'BRING_UD14', 0, NULL, NULL, '17.4400802', '78.34891679999998', 'A Parcel', NULL, NULL, 'Gachibowli, Hyderabad, Telangana, India', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdfjsdfkj', '987897897878', 'YES', NULL, 0, NULL, 'BRING_UD14', 0, NULL, NULL, 'YES', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, '2017-02-26 17:54:25.000000', 'YES', '2017-02-07 19:44:09.000000', 'NA', '34', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0S3I7EF5W5R1F2NE07022017201409180', '403993715515702682', 'NA', '34', 'NA', 'kjdfkjsdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID110', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:29', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:29.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:29', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID1100', 'sri2@gmail.com', NULL, '', NULL, '17.4947934', '78.39964409999993', '17.4565082', '78.41261629999997', 'Commercial', '2017-02-12 00:00:00', 'Kukatpally, Hyderabad, Telangana, India', 'Borabanda, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'l', 'j', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '127', 'NA', 'NA', 'NA', '4', 'NA', 'NA', 'NA', 'NA', '2017-05-12 19:45:00.000000', NULL, 'NO', NULL, '10-15kg', '150', 'l', 'o', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '22', 'j', 'lk', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID111', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:30', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:30.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:30', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID112', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:32', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:32.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:32', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID113', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:32', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:32.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:32', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID114', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:32', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:33.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:32', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID115', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:33', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:33.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:33', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID116', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:34', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:34.000000', NULL, 'NO', '2017-05-14 18:41:53.000000', '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '3MSWIQZ9VUH0VNQV14052017144153679', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:34', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID117', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:34', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:34.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:34', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID118', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:34', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:34.000000', NULL, 'NO', NULL, '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:34', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID119', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:35', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:35.000000', NULL, 'NO', '2017-05-14 18:41:51.000000', '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'U60AOENGI6I09QOK14052017144151108', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:35', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID12', 'sri2@gmail.com', NULL, 'BRING_UD14', 0, NULL, NULL, '17.4400802', '78.34891679999998', 'A Parcel', NULL, NULL, 'Gachibowli, Hyderabad, Telangana, India', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdfjsdfkj', '987897897878', 'YES', NULL, 0, NULL, 'BRING_UD14', 0, NULL, NULL, 'YES', '0', 'YES', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, '2017-02-26 17:41:20.000000', 'YES', '2017-02-05 20:35:01.000000', 'NA', '34', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', '403993715515702666', 'NA', '34', 'NA', 'kjdfkjsdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID120', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 09:48:36', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Rex', '9876543456', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 13:48:36.000000', NULL, 'NO', '2017-05-13 13:55:14.000000', '4', '160', 'Tom', '4566788765', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'X2MUQTNB51WBBUY413052017095514979', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Botttles', 'Y', '2017-05-13 13:48:36', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID121', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4228271', '78.349643', '17.4617787', '78.5004818', 'Commercial', '2017-05-13 11:27:04', 'Nanakram Guda, Hyderabad, Telangana 500032, India', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Sunil', '6654456678', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '125', 'NA', 'NA', 'NA', '17', 'NA', 'NA', 'NA', 'NA', '2017-05-13 15:27:04.000000', NULL, 'NO', '2017-05-13 15:44:36.000000', '5', '147.5', 'Tony', '6544567889', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'BCP6NZ86UI4WLFTA13052017114436678', 'NA', 'NA', '22', '', '89/1,Home Street,Home Street', 'Food', 'Y', '2017-05-13 15:27:04', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID122', 'sri2@gmail.com', NULL, '', NULL, '17.4947934', '78.39964409999993', '17.4302085', '78.4240216', 'Commercial', '2017-05-13 13:57:41', '11, Rd Number 5, Women\'s Welfare Housing Society, Jubilee Hills, Hyderabad, Telangana 500033, India', '11, Rd Number 5, Women\'s Welfare Housing Society, Jubilee Hills, Hyderabad, Telangana 500033, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sfsdf', '234234', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '149', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-05-13 17:57:41.000000', NULL, 'NO', NULL, '22', '175.5', 'sdfsdf', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '26', 'sdfs,sdf,sdf', 'dfs,sdf,sdf', 'sfsdf', 'Y', '2017-05-13 17:57:41', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID123', 'sri2@gmail.com', NULL, '', NULL, '17.4947934', '78.39964409999993', '17.4302085', '78.4240216', 'Commercial', '2017-05-13 14:06:00', '11, Rd Number 5, Women\'s Welfare Housing Society, Jubilee Hills, Hyderabad, Telangana 500033, India', '11, Rd Number 5, Women\'s Welfare Housing Society, Jubilee Hills, Hyderabad, Telangana 500033, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdf', '234234', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '1050', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-05-13 18:06:00.000000', NULL, 'NO', NULL, '234', '1235.5', 'sdfsdf', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '185', 'sdfs,sdf,sdf', 'dfs,sdf,sdf', 'dsfsdf', 'Y', '2017-05-13 18:06:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID124', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-13 17:26:20', 'Karkhana police station', 'Gachibouli kfc', 'BringGoods', 'SERVICEMANASSIGNED', 'Tony', '8272636378', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-13 21:26:20.000000', NULL, 'NO', '2017-05-13 21:26:42.000000', '4', '160', 'Alex', '9374638392', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'KW40PO9M9FTYJNEV13052017172642259', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Food', 'Y', '2017-05-13 21:26:20', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID125', 'Sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.4947934', '78.39964409999993', '17.4302085', '78.4240216', 'Commercial', '2017-05-13 18:22:48', '11, Rd Number 5, Women\'s Welfare Housing Society, Jubilee Hills, Hyderabad, Telangana 500033, India', '11, Rd Number 5, Women\'s Welfare Housing Society, Jubilee Hills, Hyderabad, Telangana 500033, India', 'BringGoods', 'PAID', 'Test', '777777', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '149', 'YES', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-05-13 22:22:48.000000', '2017-05-13 22:25:51.000000', 'NO', '2017-05-13 22:23:28.000000', '22', '175.5', 'Hshsh', '7377373', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '59OCYC703AXAMNJF13052017182328974', '403993715516060530', 'NA', '26', 'sdfs,sdf,sdf', 'dfs,sdf,sdf', 'DesQwe', 'Y', '2017-05-13 22:22:48', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID126', 'sri2@gmail.com', NULL, '', NULL, '17.4528246', '78.412449', '17.4528246', '78.412449', 'Commercial', '2017-05-13 18:44:31', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdf2', '34234', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '123', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-13 22:44:31.000000', NULL, 'NO', NULL, '22', '145', 'sdfsdf', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '21', 'sdf', 'sfsdf234234', 'sdf2', 'Y', '2017-05-13 22:44:31', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID127', 'sri2@gmail.com', NULL, '', NULL, '17.4528246', '78.412449', '17.4528246', '78.412449', 'Commercial', '2017-05-13 18:53:44', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdfsdf', '234234', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '51', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-13 22:53:44.000000', NULL, 'NO', NULL, '2', '60', 'sdfsdf', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '9', 'sdf', 'f', 'dsdf', 'Y', '2017-05-13 22:53:44', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID128', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-16 19:56:36', 'Karkhana police station', 'Gachibouli kfc', 'BringGoods', 'SERVICEMANASSIGNED', 'Harry', '1237655678', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-16 23:56:36.000000', NULL, 'NO', '2017-05-16 23:58:23.000000', '4', '160', 'Porter', '8765456789', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '62J8FHKCJ8ZLAVYI16052017195823644', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Fruits', 'Y', '2017-05-16 23:56:36', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID129', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Non Commercial', '2017-05-16 20:02:23', 'Karkhana police station', 'Gachibouli kfc', 'BringGoods', 'SERVICEMANASSIGNED', 'Jerry', '5678654333', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-17 00:02:23.000000', NULL, 'NO', '2017-05-17 00:04:25.000000', '4', '160', 'Brain', '5688643467', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'FMTPYERM4ZXWY52K16052017200425489', 'NA', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Food', 'Y', '2017-05-17 00:02:23', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID13', 'sri2@gmail.com', NULL, 'BRING_UD14', 0, NULL, NULL, '17.4400802', '78.34891679999998', 'A Parcel', NULL, NULL, 'Gachibowli, Hyderabad, Telangana, India', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdfjsdfkj', '987897897878', 'YES', NULL, 0, NULL, 'BRING_UD14', 0, NULL, NULL, 'YES', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-03-17 03:14:44.000000', 'NA', '34', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'BGYHXY5210CEWSFR1603201723144425', 'NA', 'NA', '34', 'NA', 'kjdfkjsdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID130', 'Sri2@gmail.com', NULL, '', NULL, '17.4400802', '78.34891679999998', '17.4947934', '78.39964409999993', 'Commercial', '2017-05-16 20:57:11', 'Gachibowli, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'Jsjjs', '6666', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '152', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-05-17 00:57:11.000000', NULL, 'NO', NULL, '20', '179', 'Raj', '7383883838', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '26', 'Gach', 'Kp', 'Test', 'Y', '2017-05-17 00:57:11', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID131', 'Sri2@gmail.com', NULL, '', NULL, '17.4505967', '78.37929', '17.4506103', '78.3793162', 'Commercial', '2017-05-16 21:12:46', 'Jubilee Enclave, HITEC City, Hyderabad, Telangana 500081, India', 'Jubilee Enclave, HITEC City, Hyderabad, Telangana 500081, India', 'BringGoods', 'SERVICEMANASSIGNED', 'Naresh', '737373773', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '144', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-17 01:12:46.000000', NULL, 'NO', NULL, '27', '170', 'Suresh', '737383838', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '25', 'Kp', 'Gachibowli', 'Test', 'Y', '2017-05-17 01:12:46', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID132', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.4351011', '78.4221115', '17.4351011', '78.4221115', 'Commercial', '2017-05-25 22:19:56', 'MAJEEDSAB RESIDENSY, 8-3-230/2A, Hylam Colony, Jubilee Hills, Hyderabad, Telangana 500045, India', 'MAJEEDSAB RESIDENSY, 8-3-230/2A, Hylam Colony, Jubilee Hills, Hyderabad, Telangana 500045, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdf', '234234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '170', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-26 02:19:56.000000', NULL, 'NO', '2017-05-26 02:20:41.000000', '33', '200', 'sdfsdf', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'Q4L49Q595SKXD0RF25052017222041600', 'NA', 'NA', '30', 'sdf', 'sdf', 'dfsdf', 'Y', '2017-05-26 02:19:56', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID133', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.4351011', '78.4221115', '17.4351011', '78.4221115', 'Commercial', '2017-05-25 22:19:57', 'MAJEEDSAB RESIDENSY, 8-3-230/2A, Hylam Colony, Jubilee Hills, Hyderabad, Telangana 500045, India', 'MAJEEDSAB RESIDENSY, 8-3-230/2A, Hylam Colony, Jubilee Hills, Hyderabad, Telangana 500045, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdf', '234234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '170', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-26 02:19:57.000000', NULL, 'NO', '2017-05-26 02:20:17.000000', '33', '200', 'sdfsdf', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '91ONAHUUHHNBFXTE25052017222017576', 'NA', 'NA', '30', 'sdf', 'sdf', 'dfsdf', 'Y', '2017-05-26 02:19:57', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID134', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4226988', '78.3495874', '17.4833526', '78.38706679999996', 'Commercial', '2017-07-24 13:17:48', 'Nanakram Guda, Hyderabad, Telangana 500032, India', 'Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'Hxuf', '8877776666', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '79', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-07-24 17:17:48.000000', NULL, 'NO', NULL, '4', '92.5', 'Ififugiogv', '7655546890', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '13', '', '', 'Documents', 'Y', '2017-07-24 17:17:48', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID14', 'sri2@gmail.com', NULL, 'BRING_UD14', 0, NULL, NULL, '17.4400802', '78.34891679999998', 'A Parcel', NULL, NULL, 'Gachibowli, Hyderabad, Telangana, India', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdfjsdfkj', '987897897878', 'YES', NULL, 0, NULL, 'BRING_UD14', 0, NULL, NULL, 'YES', '0', 'YES', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, '2017-02-27 00:28:04.000000', 'YES', '2017-02-05 20:35:01.000000', 'NA', '34', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', '403993715515702954', 'NA', '34', 'NA', 'kjdfkjsdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID15', 'tri@gmail.com', NULL, 'BRING_UD18', NULL, '17.4595625', '78.47803599999997', '17.4947934', '78.39964409999993', 'Parcel', '2017-02-06 00:00:00', 'New Bowenpally, Bowenpally, Secunderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'Dhal', '8125711642', 'YES', NULL, 0, NULL, 'BRING_UD18', 0, NULL, NULL, 'Approved', '51', 'NA', 'NA', 'NA', '9', 'NA', 'NA', 'NA', 'NA', '2017-02-06 21:33:14.000000', NULL, 'NO', '2017-03-19 20:21:22.000000', '10-15kg', '60', 'Trilok', '7416716308', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '3BI3IVHWEZ8ZQKAL1903201716212258', 'NA', 'NA', '9', 'Plot 37', 'Kukatpally', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID16', 'tri@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.4595625', '78.47803599999997', NULL, NULL, NULL, 'New Bowenpally, Bowenpally, Secunderabad, Telangana, India', 'BuyGoods', 'SERVICEMANASSIGNED', 'Trilok', '7416716308', 'YES', NULL, 0, NULL, 'BRING_UD18', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-02-26 20:08:01.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'P4JI4QQOPWHTCPN626022017203801634', 'NA', 'NA', 'NA', 'NA', 'Plot no37', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID17', 'tri@gmail.com', NULL, 'BRING_UD18', NULL, '17.4595625', '78.47803599999997', '17.4947934', '78.39964409999993', NULL, '2017-02-08 00:00:00', 'New Bowenpally, Bowenpally, Secunderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', '8332916308', '8212571885', 'YES', NULL, 0, NULL, 'BRING_UD18', 0, NULL, NULL, 'Approved', '76', 'NA', 'NA', 'NA', '9', 'NA', 'NA', 'NA', 'NA', '2017-02-08 08:45:49.000000', NULL, 'NO', '2017-02-26 20:08:06.000000', '10-15kg', '90', '7416716308', '8332916308', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'UMK4D6UBD3QAGAWA26022017203806283', 'NA', 'NA', '13', 'Chutneys', 'jntu', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID18', 'tri@gmail.com', NULL, 'BRING_UD18', NULL, '17.4650059', '78.45099370000003', '17.4947934', '78.39964409999993', 'Commercial', '2017-02-08 00:00:00', 'Balanagar, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'F', '1234557898', 'YES', NULL, 0, NULL, 'BRING_UD18', 0, NULL, NULL, 'Approved', '51', 'NA', 'NA', 'NA', '6', 'NA', 'NA', 'NA', 'NA', '2017-02-08 08:53:21.000000', NULL, 'NO', '2017-02-19 20:30:42.000000', '10-15kg', '60', 'R', '1234567891', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'HFJM3WW0ZN3KFTLE1902201721004299', 'NA', 'NA', '9', 'Pras', 'C', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID2', 'sri2@gmail.com', NULL, 'BRING_UD11', NULL, '17.452836299999998', '78.412649', '17.4947934', '78.39964409999993', 'A Parcel', '2016-12-29 00:00:00', 'Moti Nagar, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sjdkfj', 'kdfjdskf', 'YES', NULL, 0, NULL, 'BRING_UD11', 0, NULL, NULL, 'Approved', '17', 'NA', 'NA', 'NA', '4', 'NA', 'NA', 'NA', 'NA', '2016-12-29 22:22:38.000000', NULL, 'NO', '2017-02-14 21:14:30.000000', '10-15kg', '35', 'ksjdfkj', 'dkfj', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '4NJK9U3PE6TNZ9VI14022017214430229', 'NA', 'NA', '', 'NA', 'NA', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID20', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.4764641', '78.4883618', '17.4836979', '78.31583380000006', 'Commercial', '2017-02-26 21:23:23', 'Bowenpally, Secunderabad, Telangana, India', 'Serilingampally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'trilok', '7416716308', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '110', 'NA', 'NA', 'NA', '18', 'NA', 'NA', 'NA', 'NA', '2017-02-26 20:53:24.000000', NULL, 'NO', '2017-02-26 20:54:35.000000', '10-15kg', '130', 'dhal', '8125711642', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'R9YQ9ZFHI1R770BF26022017212435927', 'NA', 'NA', '19', 'BOWENPALLY', 'lingampally', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID21', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.4553121', '78.48318610000001', '17.4446762', '78.37728790000006', 'Non Commercial', '2017-02-27 08:32:31', 'Tar Bund, Bowenpally, Secunderabad, Telangana, India', 'Kukatpally Housing Board - Hitec City Rd, Phase 2, HITEC City, Hyderabad, Telangana 500081, India', 'BringGoods', 'SERVICEMANASSIGNED', 'dhal', '825711642', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '76', 'NA', 'NA', 'NA', '11', 'NA', 'NA', 'NA', 'NA', '2017-02-27 08:02:31.000000', NULL, 'NO', '2017-02-27 08:03:18.000000', '10-15kg', '90', 'trilok', '7416716308', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'ENS851IWVUR7P9PO27022017083318401', 'NA', 'NA', '13', 'tarbund temple', 'TCS Deccan park', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID22', NULL, NULL, '', NULL, '17.4565082', '78.41261629999997', '17.4947934', '78.39964409999993', 'Commercial', '2017-02-28 17:31:23', 'Borabanda, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'Hdhshs', 'Urie', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '51', 'NA', 'NA', 'NA', '4', 'NA', 'NA', 'NA', 'NA', '2017-02-28 17:01:23.000000', NULL, 'NO', NULL, '10-15kg', '60', '637383', '63737', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '9', 'Hyd', 'Hyd', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID23', NULL, NULL, '', NULL, '17.4565082', '78.41261629999997', '17.4947934', '78.39964409999993', 'Commercial', '2017-02-28 17:31:28', 'Borabanda, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'Hdhshs', 'Urie', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '51', 'NA', 'NA', 'NA', '4', 'NA', 'NA', 'NA', 'NA', '2017-02-28 17:01:30.000000', NULL, 'NO', NULL, '10-15kg', '60', '637383', '63737', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '9', 'Hyd', 'Hyd', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID24', 'kamal@g.com', NULL, '', NULL, '17.4400802', '78.34891679999998', '17.4947934', '78.39964409999993', 'Commercial', '2017-02-28 17:55:22', 'Gachibowli, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', '63737', '73738', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '0', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-02-28 17:25:22.000000', NULL, 'NO', NULL, '10-15kg', '0', '63737', '36$77$hshzhz', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '0', 'Hyd123', 'Hdhdh', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID25', 'sri2@gmail.com', NULL, '', 0, NULL, NULL, '17.4400802', '78.34891679999998', NULL, '2017-03-18 23:22:56', NULL, 'Gachibowli, Hyderabad, Telangana, India', 'BuyGoods', 'SERVICEMANASSIGNED', '78787878', '97897897', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', NULL, 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', 'NA', 'NA', 'hyd', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID26', 'raj@hmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.4400802', '78.34891679999998', NULL, '2017-03-22 16:20:48', NULL, 'Gachibowli, Hyderabad, Telangana, India', 'BuyGoods', 'SERVICEMANASSIGNED', '55544', '55444', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-19 02:31:14.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '7S4JDUXN7V3UN28G18042017223114125', 'NA', 'NA', 'NA', 'NA', 'Ffd', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID27', 'wonderoftheworld.dhal@gmail.com', NULL, 'BRING_UD18', NULL, '17.4499146', '78.3507988', '17.4645182', '78.4725019', 'Commercial', '2017-03-23 23:27:49', 'TCS Synergy park, Indian Immunologicals Colony, Gachibowli, Hyderabad, Telangana 500032, India', 'Adjacent to Bowenpally Police Lines, NH 7, Pension Line, Mohammed Nagar, New Bowenpally, Balanagar, Mohammed Nagar, New Bowenpally, Balanagar, Hyderabad, Telangana 500011, India', 'BringGoods', 'SERVICEMANASSIGNED', 'Dhak', '58000', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '85', 'NA', 'NA', 'NA', '13', 'NA', 'NA', 'NA', 'NA', '2017-03-24 03:27:49.000000', NULL, 'NO', '2017-03-24 03:28:28.000000', '10-15kg', '100', 'tri', '1359698', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'Q7V6TMITGRVRRRGS23032017232828613', 'NA', 'NA', '15', 'Tcs', 'Bowenpally', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID28', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '', '', NULL, '2017-03-29 01:36:06', NULL, '', 'BuyGoods', 'SERVICEMANASSIGNED', '234', '234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-19 02:32:08.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'PZP5N3ELQARUMATM18042017223208137', 'NA', 'NA', 'NA', 'NA', '234234', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID29', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-03-29 01:37:36', NULL, 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BuyGoods', 'START TRIP', '234234', '234234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-20 01:04:39.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'D9BJKNTF10D4IQK81904201721043959', 'NA', 'NA', 'NA', 'NA', '234234', '', 'NA', '0000-00-00 00:00:00', 'YES', '2017-04-20 01:04:44', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID3', 'test45@gmail.com', NULL, 'BRING_UD14', 0, NULL, NULL, '17.4400802', '78.34891679999998', 'A Parcel', '2017-01-05 00:00:00', NULL, 'Gachibowli, Hyderabad, Telangana, India', 'BuyGoods', 'SERVICEMANASSIGNED', 'ghj', '677', 'YES', NULL, 0, NULL, 'BRING_UD14', 0, NULL, NULL, 'YES', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-02-06 19:32:24.000000', 'NA', '44', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL, 'NA', 'NA', '16', 'NA', 'NA', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID30', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4400802', '78.34891679999998', '17.4617787', '78.50048179999999', 'Non Commercial', '2017-03-30 19:41:26', 'Gachibowli, Hyderabad, Telangana, India', 'Wellington Rd, Surya nagar, Karkhana, Secunderabad, Telangana 500009, India', 'BringGoods', 'SERVICEMANASSIGNED', 'Dall', '0987654321', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '17', 'NA', 'NA', 'NA', '16', 'NA', 'NA', 'NA', 'NA', '2017-03-30 23:41:26.000000', NULL, 'NO', '2017-04-27 03:24:16.000000', '10-15kg', '20', 'Varun', '1234567890', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'H5K5Z8DL15JFRN1N2604201723241652', 'NA', 'NA', '3', '22,vasavi nagar,karkhana', 'Plot No 39/49, indranagar gachibouli', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID31', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-04-01 21:24:49', NULL, 'sdf', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdf', 'sdf', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-26 03:46:51.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'X5IB6UNZNZLNLT9I25042017234651803', 'NA', 'NA', 'NA', 'NA', 'sdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID32', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-04-01 21:26:17', NULL, 'sdf', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdf', 'sdf', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-19 03:19:20.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '68YAIH8TC6TWDERA1804201723192083', 'NA', 'NA', 'NA', 'NA', 'sdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID33', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-04-01 21:27:25', NULL, 'sdf', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdf', 'sdf', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-26 03:50:31.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '3XAOA07MF4L75SZS25042017235031556', 'NA', 'NA', 'NA', 'NA', 'sdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA');
INSERT INTO `user_order` (`WORK_ORDER_NUMBER`, `BUYER_ID`, `SELLER_ID`, `SERVICE_PERSON_ID`, `TOTAL_BILL`, `FROM_LATITUDE`, `FROM_LONGITUDE`, `TO_LATITUDE`, `TO_LONGITUDE`, `DESCRIPTION`, `ORDER_DATE`, `FROM_ADDRESS`, `TO_ADDRESS`, `ORDER_TYPE`, `STATUS`, `NAME_OF_PERSON_PCKD_GOODS`, `CONTACT_NUM_PCKD_GOODS`, `SERVICE_PERSON_CONFIRMATION`, `SELLER_CONFIRMATION`, `CANCEL_COUNT`, `FIRST_SELLER`, `FIRST_SERVICEMAN`, `CANCEL_COUNT_SERVICEMEN`, `FULL_ADDRESS_DESTINATION`, `FULL_ADDRESS_SOURCE`, `COMMENTS_BY_SERVICEMAN`, `COMMISION_BY_SERVICEMAN`, `PAYMENT_CONFIRMATION`, `RECEIVE_GOODS`, `DELIVER_GOODS`, `TOTAL_DIST`, `SURGE_ACCEPT`, `TERMS_CONDITIONS`, `AUTO_CANCEL_BSIDE`, `AUTO_CANCEL_SSIDE`, `ORDER_ASSIGNED_TIME`, `PAYMENT_TIME`, `BUY_STATUS`, `SERVICE_PERSON_CONF_TIME`, `ESTIMATED_WEIGHT`, `ESTIMATED_COST`, `NAME_DELIVERY_PER`, `CONTACT_DELIVERY_PER`, `RECEIVE_TIME`, `DELIVER_TIME`, `TRANSACTION_ID`, `PAY_TRANSC_ID`, `TXN_STATUS`, `COST_TO_COMPANY`, `PICK_ADDRESS_OP`, `DEL_ADDRESS_OP`, `EXTRA_DESC`, `PLACED_STATUS`, `PLACED_TIME`, `START_STATUS`, `START_TIME`, `STOP_STATUS`, `STOP_TIME`, `BUYER_REVIEW`, `SERVICEMAN_REVIEW`, `CANCEL_BY_BUYER`, `CANCEL_BY_SERVICEMAN`, `SERVICEMAN_LIST`, `ppincode`, `pflat_no`, `pstreet`, `pcity`, `pstate`, `dpincode`, `dflat_no`, `dstreet`, `dcity`, `dstate`) VALUES
('WORKID34', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-04-01 21:28:03', NULL, 'sdf', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdf', 'sdf', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-26 03:53:56.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'A2L75EB21C3Q0UO925042017235356902', 'NA', 'NA', 'NA', 'NA', 'sdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID35', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-04-01 21:28:25', NULL, 'sdf', 'BuyGoods', 'START TRIP', 'sdfsdf', 'sdf', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-19 03:35:00.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'VM7U6VGUZ63SR3DZ18042017233500332', 'NA', 'NA', 'NA', 'NA', 'sdf', '', 'NA', '0000-00-00 00:00:00', 'YES', '2017-04-19 03:35:03', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID36', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-04-01 21:30:12', NULL, 'sdf', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdfsfd', 'sdfs', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-25 03:35:03.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '37OZLPCDMY0VHJG024042017233503735', 'NA', 'NA', 'NA', 'NA', 'sdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID37', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-04-01 21:30:30', NULL, 'sd', 'BuyGoods', 'STOP TRIP', 'sdf', 'fsdf', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-19 03:41:55.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'C6ZOYMDX074N8FUC18042017234155669', 'NA', 'NA', 'NA', 'NA', 'sdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'YES', '2017-04-19 03:41:58', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID38', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-04-01 21:31:18', NULL, 'sdf', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdf', 'sdf', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-20 04:32:15.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'IM5U9YAOX99MHL9320042017003215183', 'NA', 'NA', 'NA', 'NA', 'sdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID39', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-04-01 21:32:23', NULL, 'sd', 'BuyGoods', 'STOP TRIP', 'dfsdf', 'fsdfs', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-19 03:48:06.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'DJ5QRX9NCL21ZEN918042017234806817', 'NA', 'NA', 'NA', 'NA', 'sdffd', '', 'NA', '0000-00-00 00:00:00', 'YES', '2017-04-19 03:48:13', 'YES', '2017-04-19 03:48:16', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID4', 'sri2@gmail.com', NULL, 'BRING_UD11', NULL, '17.452836299999998', '78.412649', '17.4947934', '78.39964409999993', 'A Parcel', '2016-12-29 00:00:00', 'Moti Nagar, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BuyGoods', 'SERVICEMANASSIGNED', 'sjdkfj', 'kdfjdskf', 'YES', NULL, 0, NULL, 'BRING_UD11', 0, NULL, NULL, 'YES', '17', 'NA', 'NA', 'NA', '4', 'NA', 'NA', 'NA', 'NA', '2016-12-29 22:22:38.000000', NULL, 'NO', '2017-03-01 23:27:22.000000', '10-15kg', '35', 'ksjdfkj', 'dkfj', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'T80ZGSHSKRZ1A21801032017235722654', 'NA', 'NA', '', 'NA', 'NA', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID40', 'sri2@gmail.com', NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-04-01 21:35:26', NULL, 'fsdf', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdfsdf', 'as', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-20 04:26:17.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'ZSWYKSKEJ6N6Z8X120042017002617750', 'NA', 'NA', 'NA', 'NA', 'sdfsdf', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID41', 'rajesh@mailinator.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.4400802', '78.34891679999998', 'Commercial', '2017-04-02 18:06:35', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Gachibowli, Hyderabad, Telangana, India', 'BringGoods', 'START TRIP', 'Raj', '9898898', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '252', 'NA', 'NA', 'YES', '6', 'NA', 'NA', 'NA', 'NA', '2017-04-02 22:06:35.000000', NULL, 'NO', '2017-04-20 04:27:32.000000', '22', '297', 'Suresh', '898988', '0000-00-00 00:00:00.000000', '2017-04-20 04:26:48.000000', '956RV7GD5ZNRPAPC20042017002732381', 'NA', 'NA', '44', 'H.no123 Hyd', 'H.no456 Hyd', '', 'NA', '0000-00-00 00:00:00', 'YES', '2017-04-20 04:27:38', 'YES', '2017-04-20 04:27:34', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID42', NULL, NULL, 'BRING_UD18', 0, NULL, NULL, '17.452836299999998', '78.412649', NULL, '2017-04-02 19:12:53', NULL, 'sdf', 'BuyGoods', 'SERVICEMANASSIGNED', 'sdfsdf', 'sdf', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-20 04:28:53.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '8TJ04ZTT0IW8VZGJ20042017002853597', 'NA', 'NA', 'NA', 'NA', 'sdfsfd', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID43', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', 0, NULL, NULL, '17.4226452', '78.349643', NULL, '2017-04-05 14:30:06', NULL, '111', 'BuyGoods', 'SERVICEMANASSIGNED', 'Rakesh', '123323456', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-26 03:39:46.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'AE7TI0ARWQ6J0ROQ25042017233946403', 'NA', 'NA', 'NA', 'NA', '12 Nanakramguda', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID44', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', 0, NULL, NULL, '17.4226452', '78.349643', NULL, '2017-04-05 14:30:10', NULL, '111', 'BuyGoods', 'SERVICEMANASSIGNED', 'Rakesh', '123323456', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', '2017-04-08 01:05:34.000000', 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'CB9246ROVJVZ34ZQ07042017210534700', 'NA', 'NA', 'NA', 'NA', '12 Nanakramguda', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID45', '123@gmail.com', NULL, NULL, 0, NULL, NULL, '17.385044', '78.486671', NULL, '2017-04-06 18:42:14', NULL, 'A', 'BuyGoods', 'INITIATED', 'Hh', 'G', 'NA', NULL, 0, NULL, NULL, 0, NULL, NULL, 'NA', '0', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', NULL, NULL, 'YES', NULL, 'NA', 'NA', 'NA', 'NA', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', 'NA', 'NA', 'H', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID46', 'sri2@gmail.com', NULL, '', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-04-10 23:51:48', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdfsdf', 'sdf', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '195', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-11 03:51:48.000000', NULL, 'NO', NULL, '22', '230', 'dfs', 'dfs', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '34', 'sdf', 'sdfs', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID47', 'gh@h.com', NULL, '', NULL, '17.4454725', '78.3595558', '17.4138277', '78.43975840000007', 'Commercial', '2017-04-12 00:34:26', 'Haas Resideny, JV Colony, Chhota Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500032, India', 'Banjara Hills, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'girl', '7890654321', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '121', 'YES', 'NA', 'NA', '9', 'NA', 'NA', 'NA', 'NA', '2017-04-12 04:34:26.000000', '2017-04-12 04:48:49.000000', 'NO', NULL, '5', '143', 'gh', '1234567890', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', '403993715515926662', 'NA', '21', 'dno67', 'hno89', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID48', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4400802', '78.3489168', 'Commercial', '2017-04-12 19:33:36', 'Anjaya Nagar Bus Stop, Gachibowli - Miyapur Rd, Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500081, India', 'Anjaya Nagar Bus Stop, Gachibowli - Miyapur Rd, Anjaiah Nagar, Gachibowli, Hyderabad, Telangana 500081, India', 'BringGoods', 'PAID', 'Venky', '12345437658', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '229', 'YES', 'NA', 'NA', '16', 'NA', 'NA', 'NA', 'NA', '2017-04-12 23:33:36.000000', '2017-04-20 18:20:56.000000', 'NO', '2017-04-12 23:38:08.000000', '4', '270', 'Dall', '1818282866', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '882P58ARB74KVELV12042017193808732', '403993715515963784', 'NA', '40', 'Secbad', 'Gachibouli indranagar', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID49', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4519954', '78.3644896', '17.4829865', '78.31687250000004', 'Commercial', '2017-04-12 19:58:14', 'Jyothi Botanica, Gachibowli - Miyapur Rd, Golden Habitat, Whitefields, Kondapur, Hyderabad, Telangana 500081, India', 'Rail Vihar, Serilingampally, Hyderabad, Telangana 500019, India', 'BringGoods', 'SERVICEMANASSIGNED', 'Manoj', '1314156178', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '73', 'YES', 'NA', 'YES', '6', 'NA', 'NA', 'NA', 'NA', '2017-04-12 23:58:14.000000', '2017-04-13 00:01:00.000000', 'NO', '2017-04-12 23:58:54.000000', '3', '87', 'Bhramam', '1527382679', '0000-00-00 00:00:00.000000', '2017-04-20 11:54:54.000000', 'WP194LA5Q2QDRWAD12042017195854499', '403993715515931994', 'NA', '13', 'Gachibouli', 'Lingampalli', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID5', 'sri2@gmail.com', NULL, 'BRING_UD11', NULL, '17.452836299999998', '78.412649', '17.4947934', '78.39964409999993', 'A Parcel', '2016-12-29 00:00:00', 'Moti Nagar, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sjdkfj', 'kdfjdskf', 'YES', NULL, 0, NULL, 'BRING_UD11', 0, NULL, NULL, 'Approved', '17', 'NA', 'NA', 'NA', '4', 'NA', 'NA', 'NA', 'NA', '2016-12-29 22:22:38.000000', NULL, 'NO', '2017-02-28 19:12:41.000000', '10-15kg', '35', 'ksjdfkj', 'dkfj', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'HQKDGIQ49A9Z74MD28022017194241678', 'NA', 'NA', '', 'NA', 'NA', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID50', 'r@r.com', NULL, 'BRING_UD18', NULL, '17.443141', '78.4218894', '17.4947934', '78.39964409999993', 'Commercial', '2017-04-14 00:22:51', 'Netaji Subhash Chandra Bose Nagar, Moti Nagar, Hyderabad, Telangana 500045, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'STOP TRIP', 'suresh', '9898898', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '226', 'NA', 'NA', 'YES', '6', 'NA', 'NA', 'NA', 'NA', '2017-04-14 04:22:51.000000', NULL, 'NO', '2017-04-20 11:49:51.000000', '22', '267', 'Rajesh', '89898988', '0000-00-00 00:00:00.000000', '2017-04-20 11:50:22.000000', 'OSURK5E4S2X5HGBV20042017074951226', 'NA', 'NA', '40', 'I-253, SITE-3,NRR PURAM .', 'KP 123', 'rice bag', 'NA', '0000-00-00 00:00:00', 'YES', '2017-04-20 11:50:01', 'YES', '2017-04-20 11:50:14', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID51', 'r@r.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-04-15 16:21:35', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'raj', '989898', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '195', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-15 20:21:35.000000', NULL, 'NO', '2017-04-25 03:27:28.000000', '22', '230', 'suresh', '989898', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '4N5AL7JQH7O56EQ224042017232728356', 'NA', 'NA', '34', 'hno123', 'hno234', 'sugar', 'Y', '2017-04-15 20:21:35', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID52', 'r@r.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-04-15 16:27:39', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdf', '234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '195', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-15 20:27:39.000000', NULL, 'NO', '2017-04-15 21:30:24.000000', '22', '230', 'sdf', '234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '6AFRAJ6914Z8SXJ115042017173024389', 'NA', 'NA', '34', 'sdf', 'sdfsdf', '234sdf', 'Y', '2017-04-15 20:27:39', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID53', 'r@r.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-04-15 17:32:44', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'START TRIP', 'dfg', '34', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '1997', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-15 21:32:44.000000', NULL, 'NO', '2017-04-26 03:25:02.000000', '234', '2350', 'sdf', '234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '9FFZX0PSOB6RTG7V25042017232502961', 'NA', 'NA', '352', 'dg', 'sdf', 'sdf', 'Y', '2017-04-15 21:32:44', 'YES', '2017-04-26 03:25:33', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID54', 'sri2@gmail.com', NULL, '', NULL, '17.430873899999998', '78.4353932', '17.430873899999998', '78.4353932', 'Commercial', '2017-04-19 23:57:15', 'SBH Colony, Yousufguda, Hyderabad, Telangana 500873, India', 'SBH Colony, Yousufguda, Hyderabad, Telangana 500873, India', 'BringGoods', 'SERVICEMANASSIGNED', 'asd', '1231', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '1997', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-20 03:57:15.000000', NULL, 'NO', NULL, '234', '2350', 'asd', '123123', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '352', 'asd', 'asd', 'sdf', 'Y', '2017-04-20 03:57:15', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID55', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.430873899999998', '78.4353932', '17.430873899999998', '78.4353932', 'Non Commercial', '2017-04-20 00:37:27', 'SBH Colony, Yousufguda, Hyderabad, Telangana 500873, India', 'SBH Colony, Yousufguda, Hyderabad, Telangana 500873, India', 'BringGoods', 'START TRIP', 'sdf', '324', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '195', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-20 04:37:27.000000', NULL, 'NO', '2017-04-20 04:39:04.000000', '22', '230', 'sdfs', '23423', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'XSFUR9KSZWKYX9YG20042017003904409', 'NA', 'NA', '34', 'sdf', 'sdsdf', 'sdfsdfds', 'Y', '2017-04-20 04:37:27', 'YES', '2017-04-20 04:39:14', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID56', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4400802', '78.3489168', 'Commercial', '2017-04-20 08:05:05', '', '', 'BringGoods', 'PAID', 'Kiran', '9876543210', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '226', 'YES', 'NA', 'NA', '16', 'NA', 'NA', 'NA', 'NA', '2017-04-20 12:05:05.000000', '2017-04-20 15:57:13.000000', 'NO', '2017-04-20 13:19:21.000000', '4', '266', 'Rao', '123456789', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'Y8UPI464ZKJNW7P320042017091921856', '403993715515962586', 'NA', '39', 'Dno 78', 'Dno 76', 'Papers', 'Y', '2017-04-20 12:05:05', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID57', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Non Commercial', '2017-04-20 14:17:20', '', '', 'BringGoods', 'STOP TRIP', 'Raj', '9490194364', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '221', 'NA', 'NA', 'YES', '15', 'NA', 'NA', 'NA', 'NA', '2017-04-20 18:17:20.000000', NULL, 'NO', '2017-04-20 18:17:58.000000', '3', '260', 'Mahesh', '9490193364', '0000-00-00 00:00:00.000000', '2017-04-20 18:22:09.000000', 'ZQLSEK3I0CMV5ZEG20042017141758961', 'NA', 'NA', '39', '22', '23 haj', 'Documents', 'Y', '2017-04-20 18:17:20', 'YES', '2017-04-20 18:21:10', 'YES', '2017-04-20 18:22:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID58', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4400802', '78.34891679999998', '17.4617787', '78.5004818', 'Commercial', '2017-04-21 14:00:01', 'Gachibowli, Hyderabad, Telangana, India', '', 'BringGoods', 'PAID', 'Himan', '987654321', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '213', 'YES', 'NA', 'NA', '16', 'NA', 'NA', 'NA', 'NA', '2017-04-21 18:00:01.000000', '2017-04-21 18:10:26.000000', 'NO', '2017-04-21 18:00:57.000000', '6', '251', 'Siva garu', '9876543210', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'PWK3DPJW5QXYIO582104201714005762', '403993715515968990', 'NA', '37', 'Dno 87', 'Dno 76', 'Papers', 'Y', '2017-04-21 18:00:01', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID59', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4400802', '78.34891679999998', '17.4617787', '78.5004818', 'Commercial', '2017-04-21 14:00:03', 'Gachibowli, Hyderabad, Telangana, India', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Himan', '987654321', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '213', 'NA', 'NA', 'NA', '16', 'NA', 'NA', 'NA', 'NA', '2017-04-21 18:00:03.000000', NULL, 'NO', '2017-04-26 03:36:18.000000', '6', '251', 'Siva garu', '9876543210', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'DS1L5GJVT239U10Q25042017233618190', 'NA', 'NA', '37', 'Dno 87', 'Dno 76', 'Papers', 'Y', '2017-04-21 18:00:03', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID6', 'sri2@gmail.com', NULL, 'BRING_UD11', NULL, '17.452836299999998', '78.412649', '17.4947934', '78.39964409999993', 'A Parcel ghhh', '2016-12-29 00:00:00', 'Moti Nagar, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sjdkfj', 'kdfjdskf', 'YES', NULL, 0, NULL, 'BRING_UD11', 0, NULL, NULL, 'Approved', '17', 'NA', 'NA', 'NA', '4', 'NA', 'NA', 'NA', 'NA', '2016-12-29 22:22:38.000000', NULL, 'NO', '2017-01-21 23:02:27.000000', '10-15kg', '35', 'ksjdfkj', 'dkfj', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'U9ZAMZL2S9T0Y9OF21012017233227202', 'NA', 'NA', '', 'NA', 'NA', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID60', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-04-21 19:43:40', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Raj', '1234567890', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '221', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-04-21 23:43:40.000000', NULL, 'NO', '2017-04-24 01:29:31.000000', '2', '260', 'Shiva', '987654321', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'O0E0WXA3JD77PF9T23042017212931607', 'NA', 'NA', '39', '33 secbad', '66 hyd', 'Documents', 'Y', '2017-04-21 23:43:40', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID61', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Non Commercial', '2017-04-21 19:46:28', '', '', 'BringGoods', 'STOP TRIP', 'Raj', '123456789', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '221', 'YES', 'NA', 'YES', '15', 'NA', 'NA', 'NA', 'NA', '2017-04-21 23:46:28.000000', '2017-04-21 23:50:47.000000', 'NO', '2017-04-21 23:46:57.000000', '5', '260', 'Shiva', '987654321', '0000-00-00 00:00:00.000000', '2017-04-22 00:26:03.000000', '3VN8Q0KBMEQ1RHYL21042017194657820', '403993715515971639', 'NA', '39', '22 secbad', '44 hyd', 'Documents', 'Y', '2017-04-21 23:46:28', 'YES', '2017-04-21 23:51:09', 'YES', '2017-04-21 23:52:26', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID62', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4400802', '78.3489168', 'Commercial', '2017-04-21 21:17:50', 'Jubilee Enclave, HITEC City, Hyderabad, Telangana 500081, India', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Ramu', '2244566778', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '226', 'NA', 'NA', 'NA', '16', 'NA', 'NA', 'NA', 'NA', '2017-04-22 01:17:50.000000', NULL, 'NO', '2017-04-22 01:18:33.000000', '3', '266', 'Mahesh', '5432117', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'DB9F2YYUDKSZNJYU21042017211833929', 'NA', 'NA', '39', '32bsec', '22 gachibouli', 'Documents', 'Y', '2017-04-22 01:17:50', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID63', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4947934', '78.39964409999993', '17.4400802', '78.34891679999998', 'Commercial', '2017-04-23 13:00:56', 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'BringGoods', 'completed', 'sdf', '23434', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '271', 'NA', 'YES', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-04-23 17:00:56.000000', NULL, 'NO', NULL, '22', '319', 'sdf', '234', '2017-04-23 17:45:27.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '47', 'Test', 'sfd', '234234', 'Y', '2017-04-23 17:00:56', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID64', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4312029', '78.41264890000001', '17.4312029', '78.41264890000001', 'Commercial', '2017-04-23 13:44:55', 'Ban-Jubilee Hills, Rd Number 20, Jubilee Hills, Hyderabad, Telangana 500033, India', 'Ban-Jubilee Hills, Rd Number 20, Jubilee Hills, Hyderabad, Telangana 500033, India', 'BringGoods', 'SERVICEMANASSIGNED', 'a', '', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '858', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-23 17:44:55.000000', NULL, 'NO', '2017-04-24 01:15:28.000000', '100', '1010', 'd', '5555555555', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '9A5D7K7S2R3UVZ1923042017211528103', 'NA', 'NA', '151', 'a', 's', '2', 'Y', '2017-04-23 17:44:55', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID65', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4947934', '78.39964409999993', '17.4400802', '78.34891679999998', 'Commercial', '2017-04-23 14:35:04', 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'BringGoods', 'STOP TRIP', 'sf', '234324', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '271', 'NA', 'NA', 'YES', '8', 'NA', 'NA', 'NA', 'NA', '2017-04-23 18:35:04.000000', NULL, 'NO', '2017-04-23 18:52:17.000000', '22', '319', 'sdfsfd', '24234', '0000-00-00 00:00:00.000000', '2017-04-23 18:53:16.000000', '890W7RHQ0IESM6Q423042017145217810', 'NA', 'NA', '47', 'sdf', 'sdfsdf', 'sdfsdf', 'Y', '2017-04-23 18:35:04', 'YES', '2017-04-23 18:52:58', 'YES', '2017-04-23 18:53:10', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID66', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4947934', '78.39964409999993', '17.4400802', '78.34891679999998', 'Commercial', '2017-04-23 14:59:35', 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'BringGoods', 'START TRIP', 'fgdf', '34543', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '271', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-04-23 18:59:35.000000', NULL, 'NO', '2017-04-24 01:29:24.000000', '22', '319', 'fsdfsdf', '23435', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'GPMZAO0KLL8U7WJL23042017212924920', 'NA', 'NA', '47', 'sd', 'fsdfds', 'sdfsdf', 'Y', '2017-04-23 18:59:35', 'YES', '2017-04-24 01:14:38', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID67', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4947934', '78.39964409999993', '17.4400802', '78.34891679999998', 'Commercial', '2017-04-23 15:03:50', 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'fsdf', '234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '169', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-04-23 19:03:50.000000', NULL, 'NO', '2017-04-24 01:10:29.000000', '10', '199', 'sdfsdf', '23423', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'Z01D0RIGK9KG8AZN23042017211029548', 'NA', 'NA', '29', 'sd', 'sdfsdf', 'sdfsdf', 'Y', '2017-04-23 19:03:50', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID68', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4947934', '78.39964409999993', '17.4400802', '78.34891679999998', 'Commercial', '2017-04-23 15:09:51', 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'fsdf', '234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '271', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-04-23 19:09:51.000000', NULL, 'NO', '2017-04-23 19:17:04.000000', '22', '319', 'sdf', '234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '9PF8OU1QSKMRDPV223042017151704750', 'NA', 'NA', '47', 'sd', 'sdf', 'sdf', 'Y', '2017-04-23 19:09:51', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID69', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4947934', '78.39964409999993', '17.4400802', '78.34891679999998', 'Commercial', '2017-04-23 15:11:08', 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'BringGoods', 'START TRIP', 'sdf', '234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '271', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-04-23 19:11:08.000000', NULL, 'NO', '2017-04-23 19:16:29.000000', '22', '319', 'sdf', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '9WCRWHUF95JNHAOZ23042017151629562', 'NA', 'NA', '47', 'sdf', 'sdf', 'sdfsdf', 'Y', '2017-04-23 19:11:08', 'YES', '2017-04-23 19:16:34', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID7', 'kamal@g.com', NULL, 'BRING_UD14', NULL, '17.4400802', '78.34891679999998', '17.4947934', '78.39964409999993', 'A Parcel', '2017-01-28 00:00:00', 'Gachibowli, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'skjdfk', 'jskdjfk', 'YES', NULL, 0, NULL, 'BRING_UD14', 0, NULL, NULL, 'Approved', '76', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-01-28 12:03:46.000000', NULL, 'NO', '2017-02-04 09:29:35.000000', '10-15kg', '90', 'ksjfd', 'jsdkfj', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '2YRXVLD3PWIR30FG04022017095935411', 'NA', 'NA', '13', 'gachiboweli113', 'kukpsdfj12', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID70', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.431225599999998', '78.41264890000001', '17.431225599999998', '78.41264890000001', 'Commercial', '2017-04-23 21:17:05', 'Ban-Jubilee Hills, Rd Number 20, Jubilee Hills, Hyderabad, Telangana 500033, India', 'Ban-Jubilee Hills, Rd Number 20, Jubilee Hills, Hyderabad, Telangana 500033, India', 'BringGoods', 'SERVICEMANASSIGNED', 'jkj', '889', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '289', 'NA', 'NA', 'YES', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-24 01:17:05.000000', NULL, 'NO', '2017-04-24 01:30:19.000000', '33', '340', '898', '989', '0000-00-00 00:00:00.000000', '2017-04-27 02:36:22.000000', '795I4B59JS774FLL23042017213019282', 'NA', 'NA', '51', 'klk', 'jk', 'er', 'Y', '2017-04-24 01:17:05', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID71', 'mrvaroon@yahoo.co.in', NULL, '', NULL, '17.431225599999998', '78.41264890000001', '17.431225599999998', '78.41264890000001', 'Commercial', '2017-04-23 22:34:57', 'Ban-Jubilee Hills, Rd Number 20, Jubilee Hills, Hyderabad, Telangana 500033, India', 'Ban-Jubilee Hills, Rd Number 20, Jubilee Hills, Hyderabad, Telangana 500033, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdf', '234', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '195', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-24 02:34:57.000000', NULL, 'NO', NULL, '22', '230', 'df', '234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '34', 'sdf', 'sdfs', '234sdf', 'Y', '2017-04-24 02:34:57', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID72', 'Mrvaroon@yahoo.co.in', NULL, '', NULL, '17.4947934', '78.39964409999993', '17.4400802', '78.34891679999998', 'Commercial', '2017-04-23 23:37:47', 'Kukatpally, Hyderabad, Telangana, India', 'Gachibowli, Hyderabad, Telangana, India', 'BringGoods', 'SERVICEMANASSIGNED', 'Bshz', '63737', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '458', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-04-24 03:37:47.000000', NULL, 'NO', NULL, '44', '539', 'Bshs', '73737', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '80', 'Hzhz', 'Hjsjs', 'Bshhz', 'Y', '2017-04-24 03:37:47', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID73', 'mrvaroon@yahoo.co.in', NULL, '', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-04-24 23:23:53', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdf', '234', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '195', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-25 03:23:53.000000', NULL, 'NO', NULL, '22', '230', 'sdf', '234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '34', 'sfd', 'sdf', 'sdf', 'Y', '2017-04-25 03:23:53', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID74', 'mrvaroon@yahoo.co.in', NULL, '', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-04-25 23:07:06', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdf', '234', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '1997', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-26 03:07:07.000000', NULL, 'NO', NULL, '234', '2350', 'sdfsdf', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '352', 'sdf', 'sdfsdf', 'sdfsdf', 'Y', '2017-04-26 03:07:06', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID75', 'mrvaroon@yahoo.co.in', NULL, '', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-04-25 23:26:14', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'asd', '2343', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '195', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-26 03:26:14.000000', NULL, 'NO', NULL, '22', '230', 'sdfsdf', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '34', 'asd', 'sdfsdf', 'sdfsdf', 'Y', '2017-04-26 03:26:14', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID76', 'mrvaroon@yahoo.co.in', '', 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-04-25 23:26:15', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'completed', 'asd', '2343', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '195', 'NA', 'YES', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-26 03:26:15.000000', NULL, 'NO', '2017-04-26 03:34:33.000000', '22', '230', 'sdfsdf', '234234', '2017-04-27 03:16:09.000000', '0000-00-00 00:00:00.000000', 'IBUZOL9FNDANN12F25042017233433149', 'NA', 'NA', '34', 'asd', 'sdfsdf', 'sdfsdf', 'Y', '2017-04-26 03:26:15', 'YES', '2017-04-26 03:34:35', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID77', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4650521', '78.4997385', '17.4566454', '78.36482890000002', 'Non Commercial', '2017-04-26 11:57:23', 'Kousalya Enclave, Karkhana, Secunderabad, Telangana 500009, India', 'Gachibowli - Miyapur Rd, Whitefields, Hyderabad, Telangana, India', 'BringGoods', 'completed', 'Gupta', '1234567891', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '181', 'NA', 'YES', 'NA', '14', 'NA', 'NA', 'NA', 'NA', '2017-04-26 15:57:23.000000', NULL, 'NO', '2017-04-26 16:11:52.000000', '3', '214', 'Mahesh', '9876543219', '2017-04-27 03:04:20.000000', '0000-00-00 00:00:00.000000', 'E87U0NXIXC9MX5I826042017121152983', 'NA', 'NA', '32', '12 tirmulgherri', '21 gachibouli', 'Documents', 'Y', '2017-04-26 15:57:23', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID78', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4528219', '78.41240460000002', '17.4528219', '78.41240460000002', 'Commercial', '2017-04-26 23:40:58', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sf', '234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '1997', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-04-27 03:40:58.000000', NULL, 'NO', '2017-04-27 03:45:15.000000', '234', '2350', 'sdfsdf', '24234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'B1BRDYR862EJHTK226042017234515362', 'NA', 'NA', '352', 'sdf', 'f', 'sdf', 'Y', '2017-04-27 03:40:58', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID79', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4482902', '78.3737381', '17.4617787', '78.50048179999999', 'Commercial', '2017-04-27 17:34:32', 'Deloitte Dr, Phase 2, HITEC City, Hyderabad, Telangana 500081, India', 'Wellington Road, Surya nagar, Karkhana, Surya nagar, Karkhana, Secunderabad, Telangana 500009, India', 'BringGoods', 'SERVICEMANASSIGNED', 'Ramu', '2828782345', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '112', 'NA', 'NA', 'NA', '14', 'NA', 'NA', 'NA', 'NA', '2017-04-27 21:34:32.000000', NULL, 'NO', '2017-04-27 21:34:52.000000', '3', '132', 'Khan', '8723454432', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'U9GBIY2LF50NWWXO27042017173452643', 'NA', 'NA', '19', '22 madhapoor', '33 karkhana', 'Phone', 'Y', '2017-04-27 21:34:32', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID8', 'sri2@gmail.com', NULL, 'BRING_UD14', NULL, '17.4400802', '78.34891679999998', '17.4947934', '78.39964409999993', 'A Parcel', '2017-01-31 00:00:00', 'Gachibowli, Hyderabad, Telangana, India', 'Kukatpally, Hyderabad, Telangana, India', 'BringGoods', 'STOP TRIP', 'fsdf', 'fsdfsdf', 'YES', NULL, 0, NULL, 'BRING_UD14', 0, NULL, NULL, 'Approved', '51', 'NA', 'YES', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-01-31 22:17:30.000000', NULL, 'NO', '2017-02-04 09:35:38.000000', '10-15kg', '60', 'fsdfsd', 'sdfsdfs', '2017-04-20 04:18:43.000000', '0000-00-00 00:00:00.000000', 'P9FB1MKLZM4PP2IX04022017100538160', 'NA', 'NA', '9', 'sdf', 'sdfsd', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'YES', '2017-04-20 04:19:57', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID80', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-05-01 18:25:22', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdf', '234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '123', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-01 22:25:22.000000', NULL, 'NO', '2017-05-01 22:26:02.000000', '22', '145', 'sdfsdf', '234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'ELHYMO6DNNRUPYS701052017182602629', 'NA', 'NA', '21', 'sdf', 'sdf', 'sdf', 'Y', '2017-05-01 22:25:22', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID81', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-02 23:28:53', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'sdf', '23', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '208', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-03 03:28:53.000000', NULL, 'NO', NULL, '22', '245', 'sdf', '23434', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '36', 'NA,NA,NA', 'NA,NA,NA', 'sdf', 'Y', '2017-05-03 03:28:53', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID82', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-02 23:28:55', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'sdf', '23', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '208', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-03 03:28:55.000000', NULL, 'NO', '2017-05-05 04:55:38.000000', '22', '245', 'sdf', '23434', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'L7KO73TA6R04URCD05052017005538585', 'NA', 'NA', '36', 'NA,NA,NA', 'NA,NA,NA', 'sdf', 'Y', '2017-05-03 03:28:55', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID83', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-02 23:30:43', '', '', 'BringGoods', 'STOP TRIP', 'sdf', '234234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '208', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-03 03:30:43.000000', NULL, 'NO', '2017-05-03 03:36:03.000000', '22', '245', 'sdfsdf', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '8I4HWUUPM4HKN1JA02052017233603537', 'NA', 'NA', '36', 'NA,NA,NA', 'NA,NA,NA', '23sdfsd', 'Y', '2017-05-03 03:30:43', 'YES', '2017-05-03 03:36:56', 'YES', '2017-05-03 03:37:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID84', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-03 13:14:12', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Raj', '1234564565', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '136', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-03 17:14:12.000000', NULL, 'NO', '2017-05-03 17:15:02.000000', '5', '160', 'Goud', '9876543201', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '0G3EU9HFACBJ1DK803052017131502437', 'NA', 'NA', '24', 'NA,NA,NA', 'NA,NA,NA', 'Food', 'Y', '2017-05-03 17:14:12', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID85', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Non Commercial', '2017-05-05 20:31:42', '', '', 'BringGoods', 'PAID', 'Raju', '987654675', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '136', 'YES', 'NA', 'YES', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-06 00:31:42.000000', '2017-05-06 00:36:21.000000', 'NO', '2017-05-06 00:32:21.000000', '3', '160', 'Ramu', '6754674321', '0000-00-00 00:00:00.000000', '2017-05-06 00:39:00.000000', '0HP3TG0IBOO7PHY005052017203221813', '403993715516029569', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Food', 'Y', '2017-05-06 00:31:42', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID86', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Non Commercial', '2017-05-05 20:47:48', '', '', 'BringGoods', 'PAID', 'Ramu', '7765445788', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '136', 'YES', 'NA', 'YES', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-06 00:47:48.000000', '2017-05-06 00:58:45.000000', 'NO', '2017-05-06 00:49:10.000000', '4', '160', 'Goud', '6554345678', '0000-00-00 00:00:00.000000', '2017-05-06 01:02:49.000000', '3763X9U06ZQG0G8405052017204910541', '403993715516029624', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Food', 'Y', '2017-05-06 00:47:48', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID87', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-05 21:11:34', '', '', 'BringGoods', 'SERVICEMANASSIGNED', NULL, NULL, 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '301', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-06 01:11:34.000000', NULL, 'NO', '2017-05-06 01:11:59.000000', '44', '355', 'Hsh', '62662', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'DIGADYC83UBJCV9405052017211159855', 'NA', 'NA', '53', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Hshha', 'Y', '2017-05-06 01:11:34', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID88', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-05 21:11:36', '', '', 'BringGoods', 'SERVICEMANASSIGNED', NULL, NULL, 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '301', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-06 01:11:36.000000', NULL, 'NO', NULL, '44', '355', 'Hsh', '62662', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '53', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Hshha', 'Y', '2017-05-06 01:11:36', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA');
INSERT INTO `user_order` (`WORK_ORDER_NUMBER`, `BUYER_ID`, `SELLER_ID`, `SERVICE_PERSON_ID`, `TOTAL_BILL`, `FROM_LATITUDE`, `FROM_LONGITUDE`, `TO_LATITUDE`, `TO_LONGITUDE`, `DESCRIPTION`, `ORDER_DATE`, `FROM_ADDRESS`, `TO_ADDRESS`, `ORDER_TYPE`, `STATUS`, `NAME_OF_PERSON_PCKD_GOODS`, `CONTACT_NUM_PCKD_GOODS`, `SERVICE_PERSON_CONFIRMATION`, `SELLER_CONFIRMATION`, `CANCEL_COUNT`, `FIRST_SELLER`, `FIRST_SERVICEMAN`, `CANCEL_COUNT_SERVICEMEN`, `FULL_ADDRESS_DESTINATION`, `FULL_ADDRESS_SOURCE`, `COMMENTS_BY_SERVICEMAN`, `COMMISION_BY_SERVICEMAN`, `PAYMENT_CONFIRMATION`, `RECEIVE_GOODS`, `DELIVER_GOODS`, `TOTAL_DIST`, `SURGE_ACCEPT`, `TERMS_CONDITIONS`, `AUTO_CANCEL_BSIDE`, `AUTO_CANCEL_SSIDE`, `ORDER_ASSIGNED_TIME`, `PAYMENT_TIME`, `BUY_STATUS`, `SERVICE_PERSON_CONF_TIME`, `ESTIMATED_WEIGHT`, `ESTIMATED_COST`, `NAME_DELIVERY_PER`, `CONTACT_DELIVERY_PER`, `RECEIVE_TIME`, `DELIVER_TIME`, `TRANSACTION_ID`, `PAY_TRANSC_ID`, `TXN_STATUS`, `COST_TO_COMPANY`, `PICK_ADDRESS_OP`, `DEL_ADDRESS_OP`, `EXTRA_DESC`, `PLACED_STATUS`, `PLACED_TIME`, `START_STATUS`, `START_TIME`, `STOP_STATUS`, `STOP_TIME`, `BUYER_REVIEW`, `SERVICEMAN_REVIEW`, `CANCEL_BY_BUYER`, `CANCEL_BY_SERVICEMAN`, `SERVICEMAN_LIST`, `ppincode`, `pflat_no`, `pstreet`, `pcity`, `pstate`, `dpincode`, `dflat_no`, `dstreet`, `dcity`, `dstate`) VALUES
('WORKID89', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-05 21:12:40', '', '', 'BringGoods', 'SERVICEMANASSIGNED', 'Bzhz', '5565', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '301', 'NA', 'NA', 'NA', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-06 01:12:40.000000', NULL, 'NO', '2017-05-06 01:12:50.000000', '44', '355', 'Hsh', '62662', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'PY71YJW9G2MJMPH205052017211250854', 'NA', 'NA', '53', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Hshha', 'Y', '2017-05-06 01:12:40', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID9', 'sri2@gmail.com', NULL, 'BRING_UD14', NULL, '17.4400802', '78.34891679999998', '17.4947934', '78.39964409999993', 'A Parcel', '2017-01-31 00:00:00', NULL, 'Kukatpally, Hyderabad, Telangana, India', 'BuyGoods', 'SERVICEMANASSIGNED', '89898', 'test456', 'YES', NULL, 0, NULL, 'BRING_UD14', 0, NULL, NULL, 'Approved', '102', 'NA', 'NA', 'NA', '8', 'NA', 'NA', 'NA', 'NA', '2017-01-31 22:21:22.000000', NULL, 'NO', '2017-02-04 09:35:43.000000', '10-15kg', '120', '0998', 'test123', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '8SPMKUZXNNEMOYRG0402201710054339', 'NA', 'NA', '18', 'gachibowli', 'kp', '', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID90', 'mrvaroon@yahoo.co.in', NULL, 'BRING_UD18', NULL, '17.4617787', '78.5004818', '17.4427951', '78.3572703', 'Commercial', '2017-05-05 21:19:26', '', '', 'BringGoods', 'STOP TRIP', 'Lalu', '8766554332', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '136', 'YES', 'NA', 'YES', '15', 'NA', 'NA', 'NA', 'NA', '2017-05-06 01:19:26.000000', '2017-05-06 03:18:38.000000', 'NO', '2017-05-06 01:19:50.000000', '5', '160', 'Human', '9877646678', '0000-00-00 00:00:00.000000', '2017-05-06 03:19:04.000000', 'VP8GMYJSKCNM20A005052017211950611', '403993715515986316', 'NA', '24', '89/1,Home Street,Home Street', '78-2,Royal Street,Royal Street', 'Documents', 'Y', '2017-05-06 01:19:26', 'YES', '2017-05-06 03:18:55', 'YES', '2017-05-06 03:18:58', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID91', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-05-08 23:46:50', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdfs', '234234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '51', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-09 03:46:50.000000', NULL, 'NO', '2017-05-09 03:47:17.000000', '2', '60', 'sdfsdfsdf', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'K776V5O2AJSMSWSB08052017234717991', 'NA', 'NA', '9', 'sdf', 'sdf234', 'sdf', 'Y', '2017-05-09 03:46:50', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID92', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-05-09 00:05:10', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'sdfsdfsd', '234234', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '123', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-09 04:05:10.000000', NULL, 'NO', '2017-05-12 03:36:09.000000', '22', '145', '234234', '234234324', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '7F1V9PL442LZFQ6311052017233609756', 'NA', 'NA', '21', 'sdfsdf', 'sdfsdfsdf', '234', 'Y', '2017-05-09 04:05:10', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID93', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-05-09 00:08:07', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'suresh', '9898989', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '123', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-09 04:08:07.000000', NULL, 'NO', '2017-05-12 03:36:24.000000', '22', '145', 'ramesh', '989898989', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'L23UE4DLANG2WXLH11052017233624365', 'NA', 'NA', '21', 'hno213', 'hno123123', 'sdf', 'Y', '2017-05-09 04:08:07', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID94', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-05-09 00:09:42', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'raju', '989989898', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '403', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-09 04:09:42.000000', NULL, 'NO', NULL, '88', '475', 'suresh raina', '9898898', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '71', 'hno1233', 'hno494998', 'test', 'Y', '2017-05-09 04:09:42', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID95', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-05-09 00:11:32', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'suresh raina', '0090999', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '170', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-09 04:11:32.000000', NULL, 'NO', NULL, '33', '200', 'dwell smith', '989889898', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '30', 'hno123', 'hno999', 'test', 'Y', '2017-05-09 04:11:32', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID96', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-05-09 00:13:30', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'test', '8899898989', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '170', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-09 04:13:30.000000', NULL, 'NO', NULL, '33', '200', 'test', '9898989898', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '30', 'hno123', 'hno444', 'test', 'Y', '2017-05-09 04:13:30', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID97', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-05-09 00:15:30', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'SERVICEMANASSIGNED', 'jkfdj', '9898989', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '4271', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-09 04:15:30.000000', NULL, 'NO', NULL, '998', '5025', 'jdsfkjk', '08989', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '753', 'hno123', 'kjksdjfk', 'sjdkfj', 'Y', '2017-05-09 04:15:30', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID98', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-05-09 00:25:12', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'CANCELLED', 'sdfsd', '2344', 'NA', NULL, 0, NULL, '', 0, NULL, NULL, 'NA', '1916', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-09 04:25:12.000000', NULL, 'NO', NULL, '444', '2255', 'sdfsdf234234', '234234', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 'NA', 'NA', 'NA', '338', 'sdf', 'sdfsdfds', 'dssdf', 'Y', '2017-05-09 04:25:12', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'YES', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
('WORKID99', 'sri2@gmail.com', NULL, 'BRING_UD18', NULL, '17.452836299999998', '78.412649', '17.452836299999998', '78.412649', 'Commercial', '2017-05-09 00:34:21', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'Habib Fatima Nagar, Borabanda, Hyderabad, Telangana 500018, India', 'BringGoods', 'CANCELLED', 'hjh', '87878', 'YES', NULL, 0, NULL, '', 0, NULL, NULL, 'Approved', '3803', 'NA', 'NA', 'NA', '0', 'NA', 'NA', 'NA', 'NA', '2017-05-09 04:34:21.000000', NULL, 'NO', '2017-05-09 19:49:47.000000', '888', '4475', 'hjhj', '78787', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '979LH6D1HCAVNXH509052017154947908', 'NA', 'NA', '671', 'jhj', 'hjhjhj', 'jjhj', 'Y', '2017-05-09 04:34:21', 'NA', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', 'NA', 'YES', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet_info`
--

CREATE TABLE `user_wallet_info` (
  `id` int(10) NOT NULL,
  `email` varchar(45) NOT NULL DEFAULT 'NA',
  `addition_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pay_tx_id` varchar(100) NOT NULL DEFAULT 'NA',
  `amount` varchar(10) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_wallet_info`
--

INSERT INTO `user_wallet_info` (`id`, `email`, `addition_date`, `pay_tx_id`, `amount`) VALUES
(1, 'Trilok@gmail.com', '2017-04-26 03:23:51', '403993715515986316', '22'),
(2, 'mrvaroon@yahoo.co.in', '2017-04-27 21:26:49', '403993715515995617', '500'),
(3, 'mrvaroon@yahoo.co.in', '2017-04-27 21:40:54', '403993715515995751', '132'),
(4, 'mrvaroon@yahoo.co.in', '2017-05-06 01:09:06', '403993715516029637', '5555'),
(5, 'mrvaroon@yahoo.co.in', '2017-05-06 01:15:07', '403993715516029643', '355'),
(6, 'mrvaroon@yahoo.co.in', '2017-05-06 01:18:09', '403993715516029648', '355'),
(7, 'mrvaroon@yahoo.co.in', '2017-05-06 01:21:22', '403993715516029658', '160');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `corporate_authentication`
--
ALTER TABLE `corporate_authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corporate_user`
--
ALTER TABLE `corporate_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`ITEM_ID`);

--
-- Indexes for table `referral_user`
--
ALTER TABLE `referral_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `serviceman_temp`
--
ALTER TABLE `serviceman_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `WORK_ORDER_NUMBER` (`WORK_ORDER_NUMBER`);

--
-- Indexes for table `temp_password`
--
ALTER TABLE `temp_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `user_authentication`
--
ALTER TABLE `user_authentication`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USER_NAME` (`USER_NAME`),
  ADD KEY `USER_NAME_2` (`USER_NAME`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USER_ID_UNIQUE` (`USER_ID`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `EMAIL_2` (`EMAIL`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`WORK_ORDER_NUMBER`),
  ADD UNIQUE KEY `WORK_ORDER_NUMBER` (`WORK_ORDER_NUMBER`),
  ADD KEY `WORK_ORDER_NUMBER_2` (`WORK_ORDER_NUMBER`);

--
-- Indexes for table `user_wallet_info`
--
ALTER TABLE `user_wallet_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `corporate_authentication`
--
ALTER TABLE `corporate_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `corporate_user`
--
ALTER TABLE `corporate_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `referral_user`
--
ALTER TABLE `referral_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `serviceman_temp`
--
ALTER TABLE `serviceman_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `temp_password`
--
ALTER TABLE `temp_password`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user_authentication`
--
ALTER TABLE `user_authentication`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `user_wallet_info`
--
ALTER TABLE `user_wallet_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
