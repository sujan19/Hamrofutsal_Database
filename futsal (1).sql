-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2018 at 07:15 AM
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
-- Database: `futsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `addfutsal`
--

CREATE TABLE `addfutsal` (
  `id` int(11) NOT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Title` varchar(150) DEFAULT NULL,
  `Brand` int(11) DEFAULT NULL,
  `Overview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Contact` char(50) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Shower` varchar(11) DEFAULT NULL,
  `Wifi` varchar(11) DEFAULT NULL,
  `Parking` varchar(11) DEFAULT NULL,
  `Firstaid` varchar(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addfutsal`
--

INSERT INTO `addfutsal` (`id`, `UserName`, `Title`, `Brand`, `Overview`, `PricePerDay`, `Type`, `Address`, `Contact`, `Vimage2`, `Vimage3`, `Vimage4`, `Shower`, `Wifi`, `Parking`, `Firstaid`, `RegDate`, `UpdationDate`) VALUES
(27, 'Suzan', 'Dhuku Futsal Hub', 10, 'near teaching hospital.5 min away from this hospital.Come and enjoy the futsal with great facilities.', 1200, 'Court 2', 'Maharajung', '4435832', 'dhukus.jpg', 'grassroots-recreational-center.jpg', 'dhuku-futsal-hub.jpg', 'Yes', 'Yes', 'Yes', '0', '2018-08-12 06:47:34', '2018-08-14 07:03:07'),
(28, 'Rajesh', 'Samakhusi Futsal', 10, 'Samakhushi Futsal, one of the best in Kathmandu, run by professionals, Used best grass turf and rubber with friendly environment.', 1000, 'Court 2', 'Samakhusi Chowk', '014363834', 'sama.jpg', 'maxresdefault.jpg', 'x-cel-recreation-centre-4.jpg', NULL, NULL, 'Yes', '0', '2018-08-12 06:59:02', '2018-08-14 04:24:18'),
(29, 'Sagar', 'Lalitpur 5-A Side Futsal', 11, 'Welcome to Lalitpur 5-A-side Indoor Football Ground .', 1000, 'Court 1', 'Kupondole,Sanepa', '015535453', '10868108_988453067838288_7355979148391679084_n.jpg', 'download (1).jpg', '1533471944.JPG', 'Yes', NULL, 'Yes', NULL, '2018-08-12 06:51:10', '2018-08-14 04:24:26'),
(30, 'sujan', 'Kumari Futsal', 10, 'We deliver ”Health and Safety, Hygienic, Best Quality and Good Customer service to our customer, It would be our pleasure to have you here at Kumari Futsal.\r\nPaknajol-16, Next to People\'s Campus · ', 1500, 'Court 2', 'Thamel', '014243709', 'kumari.png', 'kumari.jpg', 'maxresdefault (1).jpg', 'Yes', 'Yes', 'Yes', '0', '2018-08-12 07:20:43', '2018-08-14 07:05:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Contact` char(15) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Contact`, `Email`, `Password`, `creationDate`, `updationDate`, `status`) VALUES
(3, 'sujan', '2147483647', 'Suzanthapa80@gmail.c', 'f0ea8b5a603f13a2102e0bad4571c7f9', '2018-08-14 07:05:04', '2018-08-14 07:05:04', 0),
(4, 'admin', '9813629134', 'Suzanthapa80@gmail.c', '21232f297a57a5a743894a0e4a801fc3', '2018-07-25 03:23:47', '2018-07-25 03:23:47', 1),
(5, 'Suzan', '9845567329', 'Suzan@gmail.com', 'f0ea8b5a603f13a2102e0bad4571c7f9', '2018-08-14 07:04:00', '2018-08-14 07:04:00', 0),
(6, 'rajesh', '9812345583', 'Rajesh@gmail.com', '99bd974fae48638b5d62ca32f7645637', '2018-08-12 06:51:07', '0000-00-00 00:00:00', 0),
(7, 'Sagar', '9841563456', 'Sagar@gmail.com', '4399419aaa976a4ced823b2b891c6fad', '2018-08-12 06:43:46', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(50) NOT NULL,
  `FutsalId` int(50) DEFAULT NULL,
  `name` text NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `resource_id` varchar(30) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `FutsalId`, `name`, `start`, `end`, `resource_id`, `Status`, `PostingDate`) VALUES
(113, 27, 'Suzanthapa80@gmail.com', '2018-08-12 14:00:00', '2018-08-12 15:00:00', '1', 1, '2018-08-13 03:18:03'),
(114, 27, 'Rajesh@gmail.com', '2018-08-12 13:00:00', '2018-08-12 14:00:00', '2', 1, '2018-08-14 04:25:25'),
(122, 27, 'Suzanthapa80@gmail.com', '2018-08-14 12:00:00', '2018-08-14 13:00:00', '3', 1, '2018-08-14 07:05:34'),
(158, 27, 'Futsal', '2018-08-14 14:00:00', '2018-08-14 15:00:00', '2', NULL, '2018-08-14 07:31:45'),
(162, 27, 'Futsal', '2018-08-14 17:00:00', '2018-08-14 18:00:00', '2', NULL, '2018-08-14 07:46:42'),
(168, 27, 'Futsal', '2018-08-14 19:00:00', '2018-08-14 20:00:00', '3', NULL, '2018-08-14 08:04:13'),
(169, 27, 'Suzanthapa80@gmail.com', '2018-08-15 10:00:00', '2018-08-15 11:00:00', '2', 1, '2018-08-15 03:58:39'),
(177, 30, 'Suzanthapa80@gmail.com', '2018-08-15 10:00:00', '2018-08-15 11:00:00', '3', NULL, '2018-08-15 04:10:26'),
(182, 29, 'Suzanthapa80@gmail.com', '2018-08-15 14:00:00', '2018-08-15 15:00:00', '1', NULL, '2018-08-15 04:11:36'),
(183, 27, 'Pratik@gmail.com', '2018-08-15 13:00:00', '2018-08-15 14:00:00', '2', 1, '2018-08-15 04:39:01'),
(184, 29, 'Pratik@gmail.com', '2018-08-15 11:00:00', '2018-08-15 12:00:00', '1', NULL, '2018-08-15 04:47:23'),
(185, 27, 'Futsal', '2018-08-15 16:00:00', '2018-08-15 17:00:00', '3', 1, '2018-08-15 04:39:08'),
(186, 30, 'Vivek@gmail.com', '2018-08-15 11:00:00', '2018-08-15 12:00:00', '2', NULL, '2018-08-15 04:36:59'),
(187, 27, 'Futsal', '2018-08-15 14:00:00', '2018-08-15 15:00:00', '2', NULL, '2018-08-15 04:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'Court 1'),
(2, 'Court 2');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `Name` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `Name`, `CreationDate`, `UpdationDate`) VALUES
(10, 'kathmandu', '2018-07-21 05:12:36', NULL),
(11, 'Lalitpur', '2018-07-21 05:12:43', NULL),
(12, 'Bhaktapur', '2018-07-21 05:12:49', NULL),
(13, 'Pokhara', '2018-07-24 05:54:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `group_id` int(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `name`, `group_id`) VALUES
(1, 'Court 1', 1),
(2, 'Court A', 2),
(3, 'Court B', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Samakhusi,Kathmandu', 'hamrofutsal@gmail.com', '9813629134');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(4, 'suzan', 'Suzanthapa80@gmail.com', '7457547372', 'dfgsdgsd', '2018-07-21 04:58:50', 1),
(5, 'Sujan', 'masd@gmail.com', '9851728283', 'good', '2018-07-23 03:50:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblratings`
--

CREATE TABLE `tblratings` (
  `ratings_id` int(11) NOT NULL,
  `FutsalId` int(11) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ratings_score` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblratings`
--

INSERT INTO `tblratings` (`ratings_id`, `FutsalId`, `Email`, `ratings_score`) VALUES
(45, 30, 'Suzanthapa80@gmail.com', 4),
(46, 27, 'Rajesh@gmail.com', 5),
(47, 30, 'Rajesh@gmail.com', 5),
(48, 29, 'Rajesh@gmail.com', 3),
(49, 28, 'Rajesh@gmail.com', 4),
(50, 27, 'Sujan@gmail.com', 4),
(51, 30, 'Sujan@gmail.com', 3),
(52, 29, 'Sujan@gmail.com', 4),
(53, 28, 'Sujan@gmail.com', 4),
(54, 27, 'Sagar@gmail.com', 3),
(55, 30, 'Sagar@gmail.com', 5),
(56, 29, 'Sagar@gmail.com', 4),
(57, 28, 'Sagar@gmail.com', 5),
(61, 27, 'Suzanthapa80@gmail.com', 3),
(59, 29, 'Suzanthapa80@gmail.com', 3),
(60, 28, 'Suzanthapa80@gmail.com', 3),
(62, 27, 'Pratik@gmail.com', 3),
(63, 30, 'Vivek@gmail.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(3, 'suzanthapa80@gmail.com', '2018-07-22 09:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FutsalId` int(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `FutsalId`, `Testimonial`, `PostingDate`, `status`) VALUES
(37, 'Suzanthapa80@gmail.com', 27, 'It is good.', '2018-08-12 06:41:19', NULL),
(38, 'Suzanthapa80@gmail.com', 30, 'It has good facilities.', '2018-08-12 06:44:31', NULL),
(39, 'Rajesh@gmail.com', 27, 'It is really nice.', '2018-08-12 07:02:03', NULL),
(40, 'Sujan@gmail.com', 27, 'It has excellent facilities.', '2018-08-12 07:04:59', NULL),
(42, 'Suzanthapa80@gmail.com', 29, 'excellent', '2018-08-13 03:26:58', NULL),
(43, 'Pratik@gmail.com', 27, 'good futsal.', '2018-08-15 04:46:41', NULL),
(44, 'Suzanthapa80@gmail.com', 27, 'very good\r\n', '2018-08-15 04:55:22', NULL),
(45, 'Suzanthapa80@gmail.com', 27, 'it is good\r\n', '2018-08-15 04:56:11', NULL),
(46, 'Vivek@gmail.com', 30, 'Excellent facilities.', '2018-08-15 04:37:34', NULL),
(47, 'Rajesh@gmail.com', 28, 'good facilities ', '2018-08-15 05:04:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(12, 'suzan', 'Suzanthapa80@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '9813629134', NULL, NULL, NULL, NULL, '2018-07-22 09:27:47', NULL),
(15, 'rajesh', 'Rajesh@gmail.com', '99bd974fae48638b5d62ca32f7645637', '981234558', NULL, 'samakhusi', NULL, NULL, '2018-08-09 05:29:46', NULL),
(16, 'Sujan ', 'Sujan@gmail.com', '8ae4236b76c828ba225a2e8c78cbc4c3', '9841345623', NULL, 'Manamaiju', NULL, NULL, '2018-08-12 07:03:32', NULL),
(17, 'Sagar', 'Sagar@gmail.com', '4399419aaa976a4ced823b2b891c6fad', '9849873456', NULL, 'Narayanthan', NULL, NULL, '2018-08-12 07:06:27', NULL),
(18, 'Pratik', 'Pratik@gmail.com', '7bccf0bdc2a136dd7bbeaf1d93822d93', '9845673456', NULL, 'Jadibuti', NULL, NULL, '2018-08-15 04:45:06', NULL),
(19, 'Vivek', 'Vivek@gmail.com', 'b0e92ed11c923e2e4f3a95a5bfa2f5bf', '9860987654', NULL, 'Baneswsor', NULL, NULL, '2018-08-15 04:36:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addfutsal`
--
ALTER TABLE `addfutsal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblratings`
--
ALTER TABLE `tblratings`
  ADD PRIMARY KEY (`ratings_id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addfutsal`
--
ALTER TABLE `addfutsal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblratings`
--
ALTER TABLE `tblratings`
  MODIFY `ratings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
