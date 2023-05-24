-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 06:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `No.` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`No.`, `Name`, `Password`) VALUES
(1, 'admin@123', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `english`
--

CREATE TABLE `english` (
  `Sr.` int(11) NOT NULL,
  `Roll No.` varchar(5) NOT NULL,
  `Division` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `english`
--

INSERT INTO `english` (`Sr.`, `Roll No.`, `Division`) VALUES
(1, 'CE001', 'A'),
(2, 'CE002', 'A'),
(3, 'CE003', 'A'),
(4, 'CE004', 'A'),
(5, 'CE005', 'A'),
(6, 'CE006', 'A'),
(7, 'CE007', 'A'),
(8, 'CE008', 'A'),
(9, 'CE009', 'A'),
(10, 'CE010', 'A'),
(11, 'CE011', 'A'),
(12, 'CE012', 'A'),
(13, 'CE013', 'A'),
(14, 'CE014', 'A'),
(15, 'CE015', 'A'),
(16, 'CE016', 'A'),
(17, 'CE017', 'A'),
(18, 'CE018', 'A'),
(19, 'CE019', 'A'),
(20, 'CE020', 'A'),
(21, 'CE021', 'A'),
(22, 'CE022', 'A'),
(23, 'CE023', 'A'),
(24, 'CE024', 'A'),
(25, 'CE025', 'A'),
(26, 'CE026', 'A'),
(27, 'CE027', 'A'),
(28, 'CE028', 'A'),
(29, 'CE029', 'A'),
(30, 'CE030', 'A'),
(31, 'CE031', 'A'),
(32, 'CE032', 'A'),
(33, 'CE033', 'A'),
(34, 'CE034', 'A'),
(35, 'CE035', 'A'),
(36, 'CE036', 'A'),
(37, 'CE037', 'A'),
(38, 'CE038', 'A'),
(39, 'CE039', 'A'),
(40, 'CE040', 'A'),
(41, 'CE041', 'A'),
(42, 'CE042', 'A'),
(43, 'CE043', 'A'),
(44, 'CE044', 'A'),
(45, 'CE045', 'A'),
(46, 'CE046', 'A'),
(47, 'CE047', 'A'),
(48, 'CE048', 'A'),
(49, 'CE049', 'A'),
(50, 'CE050', 'A'),
(51, 'CE051', 'A'),
(52, 'CE052', 'A'),
(53, 'CE053', 'A'),
(54, 'CE054', 'A'),
(55, 'CE055', 'A'),
(56, 'CE056', 'A'),
(57, 'CE057', 'A'),
(58, 'CE058', 'A'),
(59, 'CE059', 'A'),
(60, 'CE060', 'A'),
(61, 'CE061', 'A'),
(62, 'CE062', 'A'),
(63, 'CE063', 'A'),
(64, 'CE064', 'A'),
(65, 'CE065', 'A'),
(66, 'CE066', 'A'),
(67, 'CE067', 'A'),
(68, 'CE068', 'A'),
(69, 'CE069', 'A'),
(70, 'CE070', 'A'),
(71, 'CE071', 'A'),
(72, 'CE072', 'A'),
(73, 'CE073', 'A'),
(74, 'CE074', 'A'),
(75, 'CE075', 'A'),
(76, 'CE076', 'A'),
(77, 'CE077', 'A'),
(78, 'CE078', 'B'),
(79, 'CE079', 'B'),
(80, 'CE080', 'B'),
(81, 'CE081', 'B'),
(82, 'CE082', 'B'),
(83, 'CE083', 'B'),
(84, 'CE084', 'B'),
(85, 'CE085', 'B'),
(86, 'CE086', 'B'),
(87, 'CE087', 'B'),
(88, 'CE088', 'B'),
(89, 'CE089', 'B'),
(90, 'CE090', 'B'),
(91, 'CE091', 'B'),
(92, 'CE092', 'B'),
(93, 'CE093', 'B'),
(94, 'CE094', 'B'),
(95, 'CE095', 'B'),
(96, 'CE096', 'B'),
(97, 'CE097', 'B'),
(98, 'CE098', 'B'),
(99, 'CE099', 'B'),
(100, 'CE100', 'B'),
(101, 'CE101', 'B'),
(102, 'CE102', 'B'),
(103, 'CE103', 'B'),
(104, 'CE104', 'B'),
(105, 'CE105', 'B'),
(106, 'CE106', 'B'),
(107, 'CE107', 'B'),
(108, 'CE108', 'B'),
(109, 'CE109', 'B'),
(110, 'CE110', 'B'),
(111, 'CE111', 'B'),
(112, 'CE112', 'B'),
(113, 'CE113', 'B'),
(114, 'CE114', 'B'),
(115, 'CE115', 'B'),
(116, 'CE116', 'B'),
(117, 'CE117', 'B'),
(118, 'CE118', 'B'),
(119, 'CE119', 'B'),
(120, 'CE120', 'B'),
(121, 'CE121', 'B'),
(122, 'CE122', 'B'),
(123, 'CE123', 'B'),
(124, 'CE124', 'B'),
(125, 'CE125', 'B'),
(126, 'CE126', 'B'),
(127, 'CE127', 'B'),
(128, 'CE128', 'B'),
(129, 'CE129', 'B'),
(130, 'CE130', 'B'),
(131, 'CE131', 'B'),
(132, 'CE132', 'B'),
(133, 'CE133', 'B'),
(134, 'CE134', 'B'),
(135, 'CE135', 'B'),
(136, 'CE136', 'B'),
(137, 'CE137', 'B'),
(138, 'CE138', 'B'),
(139, 'CE139', 'B'),
(140, 'CE140', 'B'),
(141, 'CE141', 'B'),
(142, 'CE142', 'B'),
(143, 'CE143', 'B'),
(144, 'CE144', 'B'),
(145, 'CE145', 'B'),
(146, 'CE146', 'B'),
(147, 'CE147', 'B'),
(148, 'CE148', 'B'),
(149, 'CE149', 'B'),
(150, 'CE150', 'B'),
(151, 'CE151', 'B'),
(152, 'CE152', 'B'),
(153, 'CE153', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `friday`
--

CREATE TABLE `friday` (
  `No.` int(11) NOT NULL,
  `Time_A` time NOT NULL,
  `Lecture_A` varchar(50) DEFAULT NULL,
  `Time_B` time NOT NULL,
  `Lecture_B` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friday`
--

INSERT INTO `friday` (`No.`, `Time_A`, `Lecture_A`, `Time_B`, `Lecture_B`) VALUES
(1, '10:45:00', 'Maths-2', '14:30:00', 'Env. Studies'),
(2, '11:45:00', 'PPS-2', '15:30:00', 'Env. Studies'),
(3, '12:45:00', 'Maths-2', '16:35:00', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `maths-2`
--

CREATE TABLE `maths-2` (
  `Sr.` int(11) NOT NULL,
  `Roll No.` varchar(5) NOT NULL,
  `Division` char(1) NOT NULL,
  `10-05-23` varchar(10) DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maths-2`
--

INSERT INTO `maths-2` (`Sr.`, `Roll No.`, `Division`, `10-05-23`) VALUES
(1, 'CE001', 'A', 'Present'),
(2, 'CE002', 'A', 'Present'),
(3, 'CE003', 'A', 'Present'),
(4, 'CE004', 'A', 'Present'),
(5, 'CE005', 'A', 'Present'),
(6, 'CE006', 'A', 'Present'),
(7, 'CE007', 'A', 'Present'),
(8, 'CE008', 'A', 'Present'),
(9, 'CE009', 'A', 'Present'),
(10, 'CE010', 'A', 'Present'),
(11, 'CE011', 'A', 'Present'),
(12, 'CE012', 'A', 'Present'),
(13, 'CE013', 'A', 'Present'),
(14, 'CE014', 'A', 'Present'),
(15, 'CE015', 'A', 'Present'),
(16, 'CE016', 'A', 'Present'),
(17, 'CE017', 'A', 'Present'),
(18, 'CE018', 'A', 'Present'),
(19, 'CE019', 'A', 'Present'),
(20, 'CE020', 'A', 'Present'),
(21, 'CE021', 'A', 'Present'),
(22, 'CE022', 'A', 'Present'),
(23, 'CE023', 'A', 'Present'),
(24, 'CE024', 'A', 'Present'),
(25, 'CE025', 'A', 'Present'),
(26, 'CE026', 'A', 'Present'),
(27, 'CE027', 'A', 'Present'),
(28, 'CE028', 'A', 'Present'),
(29, 'CE029', 'A', 'Present'),
(30, 'CE030', 'A', 'Present'),
(31, 'CE031', 'A', 'Present'),
(32, 'CE032', 'A', 'Present'),
(33, 'CE033', 'A', 'Present'),
(34, 'CE034', 'A', 'Present'),
(35, 'CE035', 'A', 'Present'),
(36, 'CE036', 'A', 'Present'),
(37, 'CE037', 'A', 'Present'),
(38, 'CE038', 'A', 'Present'),
(39, 'CE039', 'A', 'Present'),
(40, 'CE040', 'A', 'Present'),
(41, 'CE041', 'A', 'Present'),
(42, 'CE042', 'A', 'Present'),
(43, 'CE043', 'A', 'Present'),
(44, 'CE044', 'A', 'Present'),
(45, 'CE045', 'A', 'Present'),
(46, 'CE046', 'A', 'Present'),
(47, 'CE047', 'A', 'Present'),
(48, 'CE048', 'A', 'Present'),
(49, 'CE049', 'A', 'Present'),
(50, 'CE050', 'A', 'Present'),
(51, 'CE051', 'A', 'Present'),
(52, 'CE052', 'A', 'Present'),
(53, 'CE053', 'A', 'Present'),
(54, 'CE054', 'A', 'Present'),
(55, 'CE055', 'A', 'Present'),
(56, 'CE056', 'A', 'Present'),
(57, 'CE057', 'A', 'Present'),
(58, 'CE058', 'A', 'Present'),
(59, 'CE059', 'A', 'Present'),
(60, 'CE060', 'A', 'Present'),
(61, 'CE061', 'A', 'Present'),
(62, 'CE062', 'A', 'Present'),
(63, 'CE063', 'A', 'Present'),
(64, 'CE064', 'A', 'Present'),
(65, 'CE065', 'A', 'Present'),
(66, 'CE066', 'A', 'Present'),
(67, 'CE067', 'A', 'Present'),
(68, 'CE068', 'A', 'Present'),
(69, 'CE069', 'A', 'Present'),
(70, 'CE070', 'A', 'Present'),
(71, 'CE071', 'A', 'Present'),
(72, 'CE072', 'A', 'Present'),
(73, 'CE073', 'A', 'Present'),
(74, 'CE074', 'A', 'Present'),
(75, 'CE075', 'A', 'Present'),
(76, 'CE076', 'A', 'Present'),
(77, 'CE077', 'A', 'Present'),
(78, 'CE078', 'B', 'None'),
(79, 'CE079', 'B', 'None'),
(80, 'CE080', 'B', 'None'),
(81, 'CE081', 'B', 'None'),
(82, 'CE082', 'B', 'None'),
(83, 'CE083', 'B', 'None'),
(84, 'CE084', 'B', 'None'),
(85, 'CE085', 'B', 'None'),
(86, 'CE086', 'B', 'None'),
(87, 'CE087', 'B', 'None'),
(88, 'CE088', 'B', 'None'),
(89, 'CE089', 'B', 'None'),
(90, 'CE090', 'B', 'None'),
(91, 'CE091', 'B', 'None'),
(92, 'CE092', 'B', 'None'),
(93, 'CE093', 'B', 'None'),
(94, 'CE094', 'B', 'None'),
(95, 'CE095', 'B', 'None'),
(96, 'CE096', 'B', 'None'),
(97, 'CE097', 'B', 'None'),
(98, 'CE098', 'B', 'None'),
(99, 'CE099', 'B', 'None'),
(100, 'CE100', 'B', 'None'),
(101, 'CE101', 'B', 'None'),
(102, 'CE102', 'B', 'None'),
(103, 'CE103', 'B', 'None'),
(104, 'CE104', 'B', 'None'),
(105, 'CE105', 'B', 'None'),
(106, 'CE106', 'B', 'None'),
(107, 'CE107', 'B', 'None'),
(108, 'CE108', 'B', 'None'),
(109, 'CE109', 'B', 'None'),
(110, 'CE110', 'B', 'None'),
(111, 'CE111', 'B', 'None'),
(112, 'CE112', 'B', 'None'),
(113, 'CE113', 'B', 'None'),
(114, 'CE114', 'B', 'None'),
(115, 'CE115', 'B', 'None'),
(116, 'CE116', 'B', 'None'),
(117, 'CE117', 'B', 'None'),
(118, 'CE118', 'B', 'None'),
(119, 'CE119', 'B', 'None'),
(120, 'CE120', 'B', 'None'),
(121, 'CE121', 'B', 'None'),
(122, 'CE122', 'B', 'None'),
(123, 'CE123', 'B', 'None'),
(124, 'CE124', 'B', 'None'),
(125, 'CE125', 'B', 'None'),
(126, 'CE126', 'B', 'None'),
(127, 'CE127', 'B', 'None'),
(128, 'CE128', 'B', 'None'),
(129, 'CE129', 'B', 'None'),
(130, 'CE130', 'B', 'None'),
(131, 'CE131', 'B', 'None'),
(132, 'CE132', 'B', 'None'),
(133, 'CE133', 'B', 'None'),
(134, 'CE134', 'B', 'None'),
(135, 'CE135', 'B', 'None'),
(136, 'CE136', 'B', 'None'),
(137, 'CE137', 'B', 'None'),
(138, 'CE138', 'B', 'None'),
(139, 'CE139', 'B', 'None'),
(140, 'CE140', 'B', 'None'),
(141, 'CE141', 'B', 'None'),
(142, 'CE142', 'B', 'None'),
(143, 'CE143', 'B', 'None'),
(144, 'CE144', 'B', 'None'),
(145, 'CE145', 'B', 'None'),
(146, 'CE146', 'B', 'None'),
(147, 'CE147', 'B', 'None'),
(148, 'CE148', 'B', 'None'),
(149, 'CE149', 'B', 'None'),
(150, 'CE150', 'B', 'None'),
(151, 'CE151', 'B', 'None'),
(152, 'CE152', 'B', 'None'),
(153, 'CE153', 'B', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `monday`
--

CREATE TABLE `monday` (
  `No.` int(11) NOT NULL,
  `Time_A` time NOT NULL,
  `Lecture_A` varchar(50) DEFAULT NULL,
  `Time_B` time NOT NULL,
  `Lecture_B` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monday`
--

INSERT INTO `monday` (`No.`, `Time_A`, `Lecture_A`, `Time_B`, `Lecture_B`) VALUES
(1, '10:45:00', 'Physics', '14:30:00', 'English'),
(3, '11:45:00', 'PPS-2', '15:30:00', 'Maths-2'),
(4, '12:45:00', 'English', '16:35:00', 'PPS-2');

-- --------------------------------------------------------

--
-- Table structure for table `pass_holder`
--

CREATE TABLE `pass_holder` (
  `lecture` varchar(60) NOT NULL,
  `Division` varchar(1) NOT NULL,
  `att_start_time` time NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `physics`
--

CREATE TABLE `physics` (
  `Sr.` int(11) NOT NULL,
  `Roll No.` varchar(5) NOT NULL,
  `Division` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `physics`
--

INSERT INTO `physics` (`Sr.`, `Roll No.`, `Division`) VALUES
(1, 'CE001', 'A'),
(2, 'CE002', 'A'),
(3, 'CE003', 'A'),
(4, 'CE004', 'A'),
(5, 'CE005', 'A'),
(6, 'CE006', 'A'),
(7, 'CE007', 'A'),
(8, 'CE008', 'A'),
(9, 'CE009', 'A'),
(10, 'CE010', 'A'),
(11, 'CE011', 'A'),
(12, 'CE012', 'A'),
(13, 'CE013', 'A'),
(14, 'CE014', 'A'),
(15, 'CE015', 'A'),
(16, 'CE016', 'A'),
(17, 'CE017', 'A'),
(18, 'CE018', 'A'),
(19, 'CE019', 'A'),
(20, 'CE020', 'A'),
(21, 'CE021', 'A'),
(22, 'CE022', 'A'),
(23, 'CE023', 'A'),
(24, 'CE024', 'A'),
(25, 'CE025', 'A'),
(26, 'CE026', 'A'),
(27, 'CE027', 'A'),
(28, 'CE028', 'A'),
(29, 'CE029', 'A'),
(30, 'CE030', 'A'),
(31, 'CE031', 'A'),
(32, 'CE032', 'A'),
(33, 'CE033', 'A'),
(34, 'CE034', 'A'),
(35, 'CE035', 'A'),
(36, 'CE036', 'A'),
(37, 'CE037', 'A'),
(38, 'CE038', 'A'),
(39, 'CE039', 'A'),
(40, 'CE040', 'A'),
(41, 'CE041', 'A'),
(42, 'CE042', 'A'),
(43, 'CE043', 'A'),
(44, 'CE044', 'A'),
(45, 'CE045', 'A'),
(46, 'CE046', 'A'),
(47, 'CE047', 'A'),
(48, 'CE048', 'A'),
(49, 'CE049', 'A'),
(50, 'CE050', 'A'),
(51, 'CE051', 'A'),
(52, 'CE052', 'A'),
(53, 'CE053', 'A'),
(54, 'CE054', 'A'),
(55, 'CE055', 'A'),
(56, 'CE056', 'A'),
(57, 'CE057', 'A'),
(58, 'CE058', 'A'),
(59, 'CE059', 'A'),
(60, 'CE060', 'A'),
(61, 'CE061', 'A'),
(62, 'CE062', 'A'),
(63, 'CE063', 'A'),
(64, 'CE064', 'A'),
(65, 'CE065', 'A'),
(66, 'CE066', 'A'),
(67, 'CE067', 'A'),
(68, 'CE068', 'A'),
(69, 'CE069', 'A'),
(70, 'CE070', 'A'),
(71, 'CE071', 'A'),
(72, 'CE072', 'A'),
(73, 'CE073', 'A'),
(74, 'CE074', 'A'),
(75, 'CE075', 'A'),
(76, 'CE076', 'A'),
(77, 'CE077', 'A'),
(78, 'CE078', 'B'),
(79, 'CE079', 'B'),
(80, 'CE080', 'B'),
(81, 'CE081', 'B'),
(82, 'CE082', 'B'),
(83, 'CE083', 'B'),
(84, 'CE084', 'B'),
(85, 'CE085', 'B'),
(86, 'CE086', 'B'),
(87, 'CE087', 'B'),
(88, 'CE088', 'B'),
(89, 'CE089', 'B'),
(90, 'CE090', 'B'),
(91, 'CE091', 'B'),
(92, 'CE092', 'B'),
(93, 'CE093', 'B'),
(94, 'CE094', 'B'),
(95, 'CE095', 'B'),
(96, 'CE096', 'B'),
(97, 'CE097', 'B'),
(98, 'CE098', 'B'),
(99, 'CE099', 'B'),
(100, 'CE100', 'B'),
(101, 'CE101', 'B'),
(102, 'CE102', 'B'),
(103, 'CE103', 'B'),
(104, 'CE104', 'B'),
(105, 'CE105', 'B'),
(106, 'CE106', 'B'),
(107, 'CE107', 'B'),
(108, 'CE108', 'B'),
(109, 'CE109', 'B'),
(110, 'CE110', 'B'),
(111, 'CE111', 'B'),
(112, 'CE112', 'B'),
(113, 'CE113', 'B'),
(114, 'CE114', 'B'),
(115, 'CE115', 'B'),
(116, 'CE116', 'B'),
(117, 'CE117', 'B'),
(118, 'CE118', 'B'),
(119, 'CE119', 'B'),
(120, 'CE120', 'B'),
(121, 'CE121', 'B'),
(122, 'CE122', 'B'),
(123, 'CE123', 'B'),
(124, 'CE124', 'B'),
(125, 'CE125', 'B'),
(126, 'CE126', 'B'),
(127, 'CE127', 'B'),
(128, 'CE128', 'B'),
(129, 'CE129', 'B'),
(130, 'CE130', 'B'),
(131, 'CE131', 'B'),
(132, 'CE132', 'B'),
(133, 'CE133', 'B'),
(134, 'CE134', 'B'),
(135, 'CE135', 'B'),
(136, 'CE136', 'B'),
(137, 'CE137', 'B'),
(138, 'CE138', 'B'),
(139, 'CE139', 'B'),
(140, 'CE140', 'B'),
(141, 'CE141', 'B'),
(142, 'CE142', 'B'),
(143, 'CE143', 'B'),
(144, 'CE144', 'B'),
(145, 'CE145', 'B'),
(146, 'CE146', 'B'),
(147, 'CE147', 'B'),
(148, 'CE148', 'B'),
(149, 'CE149', 'B'),
(150, 'CE150', 'B'),
(151, 'CE151', 'B'),
(152, 'CE152', 'B'),
(153, 'CE153', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `pps-2`
--

CREATE TABLE `pps-2` (
  `Sr.` int(11) NOT NULL,
  `Roll No.` varchar(5) NOT NULL,
  `Division` char(1) NOT NULL,
  `attended_lectures` int(255) NOT NULL DEFAULT 0,
  `total_lectures` int(255) NOT NULL DEFAULT 0,
  `11-05-2023` varchar(10) DEFAULT 'None',
  `22-05-2023` varchar(10) DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pps-2`
--

INSERT INTO `pps-2` (`Sr.`, `Roll No.`, `Division`, `attended_lectures`, `total_lectures`, `11-05-2023`, `22-05-2023`) VALUES
(1, 'CE001', 'A', 1, 1, 'Absent', 'None'),
(2, 'CE002', 'A', 1, 1, 'Absent', 'None'),
(3, 'CE003', 'A', 1, 1, 'Absent', 'None'),
(4, 'CE004', 'A', 1, 1, 'Absent', 'None'),
(5, 'CE005', 'A', 1, 1, 'Absent', 'None'),
(6, 'CE006', 'A', 1, 1, 'Absent', 'None'),
(7, 'CE007', 'A', 1, 1, 'Absent', 'None'),
(8, 'CE008', 'A', 1, 1, 'Absent', 'None'),
(9, 'CE009', 'A', 1, 1, 'Absent', 'None'),
(10, 'CE010', 'A', 1, 1, 'Absent', 'None'),
(11, 'CE011', 'A', 1, 1, 'Absent', 'None'),
(12, 'CE012', 'A', 1, 1, 'Absent', 'None'),
(13, 'CE013', 'A', 1, 1, 'Absent', 'None'),
(14, 'CE014', 'A', 1, 1, 'Absent', 'None'),
(15, 'CE015', 'A', 1, 1, 'Absent', 'None'),
(16, 'CE016', 'A', 1, 1, 'Absent', 'None'),
(17, 'CE017', 'A', 1, 1, 'Absent', 'None'),
(18, 'CE018', 'A', 1, 1, 'Absent', 'None'),
(19, 'CE019', 'A', 1, 1, 'Absent', 'None'),
(20, 'CE020', 'A', 1, 1, 'Absent', 'None'),
(21, 'CE021', 'A', 1, 1, 'Absent', 'None'),
(22, 'CE022', 'A', 1, 1, 'Absent', 'None'),
(23, 'CE023', 'A', 1, 1, 'Absent', 'None'),
(24, 'CE024', 'A', 1, 1, 'Absent', 'None'),
(25, 'CE025', 'A', 1, 1, 'Absent', 'None'),
(26, 'CE026', 'A', 1, 1, 'Absent', 'None'),
(27, 'CE027', 'A', 1, 1, 'Absent', 'None'),
(28, 'CE028', 'A', 1, 1, 'Absent', 'None'),
(29, 'CE029', 'A', 1, 1, 'Absent', 'None'),
(30, 'CE030', 'A', 1, 1, 'Absent', 'None'),
(31, 'CE031', 'A', 1, 1, 'Absent', 'None'),
(32, 'CE032', 'A', 1, 1, 'Absent', 'None'),
(33, 'CE033', 'A', 1, 1, 'Absent', 'None'),
(34, 'CE034', 'A', 1, 1, 'Absent', 'None'),
(35, 'CE035', 'A', 1, 1, 'Absent', 'None'),
(36, 'CE036', 'A', 1, 1, 'Absent', 'None'),
(37, 'CE037', 'A', 1, 1, 'Absent', 'None'),
(38, 'CE038', 'A', 1, 1, 'Absent', 'None'),
(39, 'CE039', 'A', 1, 1, 'Absent', 'None'),
(40, 'CE040', 'A', 1, 1, 'Absent', 'None'),
(41, 'CE041', 'A', 1, 1, 'Absent', 'None'),
(42, 'CE042', 'A', 1, 1, 'Absent', 'None'),
(43, 'CE043', 'A', 1, 1, 'Absent', 'None'),
(44, 'CE044', 'A', 1, 1, 'Absent', 'None'),
(45, 'CE045', 'A', 1, 1, 'Absent', 'None'),
(46, 'CE046', 'A', 1, 1, 'Absent', 'None'),
(47, 'CE047', 'A', 1, 1, 'Absent', 'None'),
(48, 'CE048', 'A', 1, 1, 'Absent', 'None'),
(49, 'CE049', 'A', 1, 1, 'Absent', 'None'),
(50, 'CE050', 'A', 1, 1, 'Absent', 'None'),
(51, 'CE051', 'A', 1, 1, 'Absent', 'None'),
(52, 'CE052', 'A', 1, 1, 'Absent', 'None'),
(53, 'CE053', 'A', 1, 1, 'Absent', 'None'),
(54, 'CE054', 'A', 1, 1, 'Absent', 'None'),
(55, 'CE055', 'A', 1, 1, 'Absent', 'None'),
(56, 'CE056', 'A', 1, 1, 'Absent', 'None'),
(57, 'CE057', 'A', 1, 1, 'Absent', 'None'),
(58, 'CE058', 'A', 1, 1, 'Absent', 'None'),
(59, 'CE059', 'A', 1, 1, 'Absent', 'None'),
(60, 'CE060', 'A', 1, 1, 'Absent', 'None'),
(61, 'CE061', 'A', 1, 1, 'Absent', 'None'),
(62, 'CE062', 'A', 1, 1, 'Absent', 'None'),
(63, 'CE063', 'A', 1, 1, 'Absent', 'None'),
(64, 'CE064', 'A', 1, 1, 'Absent', 'None'),
(65, 'CE065', 'A', 1, 1, 'Absent', 'None'),
(66, 'CE066', 'A', 1, 1, 'Absent', 'None'),
(67, 'CE067', 'A', 1, 1, 'Absent', 'None'),
(68, 'CE068', 'A', 1, 1, 'Absent', 'None'),
(69, 'CE069', 'A', 1, 1, 'Absent', 'None'),
(70, 'CE070', 'A', 1, 1, 'Absent', 'None'),
(71, 'CE071', 'A', 1, 1, 'Absent', 'None'),
(72, 'CE072', 'A', 1, 1, 'Absent', 'None'),
(73, 'CE073', 'A', 1, 1, 'Absent', 'None'),
(74, 'CE074', 'A', 1, 1, 'Absent', 'None'),
(75, 'CE075', 'A', 1, 1, 'Absent', 'None'),
(76, 'CE076', 'A', 1, 1, 'Absent', 'None'),
(77, 'CE077', 'A', 1, 1, 'Absent', 'None'),
(78, 'CE078', 'B', 0, 0, 'None', 'Absent'),
(79, 'CE079', 'B', 0, 0, 'None', 'Absent'),
(80, 'CE080', 'B', 0, 0, 'None', 'Absent'),
(81, 'CE081', 'B', 0, 0, 'None', 'Absent'),
(82, 'CE082', 'B', 0, 0, 'None', 'Absent'),
(83, 'CE083', 'B', 0, 0, 'None', 'Absent'),
(84, 'CE084', 'B', 0, 0, 'None', 'Absent'),
(85, 'CE085', 'B', 0, 0, 'None', 'Absent'),
(86, 'CE086', 'B', 0, 0, 'None', 'Absent'),
(87, 'CE087', 'B', 0, 0, 'None', 'Absent'),
(88, 'CE088', 'B', 0, 0, 'None', 'Absent'),
(89, 'CE089', 'B', 0, 0, 'None', 'Absent'),
(90, 'CE090', 'B', 0, 0, 'None', 'Absent'),
(91, 'CE091', 'B', 0, 0, 'None', 'Absent'),
(92, 'CE092', 'B', 0, 0, 'None', 'Absent'),
(93, 'CE093', 'B', 0, 0, 'None', 'Absent'),
(94, 'CE094', 'B', 0, 0, 'None', 'Absent'),
(95, 'CE095', 'B', 0, 0, 'None', 'Absent'),
(96, 'CE096', 'B', 0, 0, 'None', 'Absent'),
(97, 'CE097', 'B', 0, 0, 'None', 'Absent'),
(98, 'CE098', 'B', 0, 0, 'None', 'Absent'),
(99, 'CE099', 'B', 0, 0, 'None', 'Absent'),
(100, 'CE100', 'B', 0, 0, 'None', 'Absent'),
(101, 'CE101', 'B', 0, 0, 'None', 'Absent'),
(102, 'CE102', 'B', 0, 0, 'None', 'Absent'),
(103, 'CE103', 'B', 0, 0, 'None', 'Absent'),
(104, 'CE104', 'B', 0, 0, 'None', 'Absent'),
(105, 'CE105', 'B', 0, 0, 'None', 'Absent'),
(106, 'CE106', 'B', 0, 0, 'None', 'Absent'),
(107, 'CE107', 'B', 0, 0, 'None', 'Absent'),
(108, 'CE108', 'B', 0, 0, 'None', 'Absent'),
(109, 'CE109', 'B', 0, 0, 'None', 'Absent'),
(110, 'CE110', 'B', 0, 0, 'None', 'Absent'),
(111, 'CE111', 'B', 0, 0, 'None', 'Absent'),
(112, 'CE112', 'B', 0, 0, 'None', 'Absent'),
(113, 'CE113', 'B', 0, 0, 'None', 'Absent'),
(114, 'CE114', 'B', 0, 0, 'None', 'Absent'),
(115, 'CE115', 'B', 0, 0, 'None', 'Absent'),
(116, 'CE116', 'B', 0, 0, 'None', 'Absent'),
(117, 'CE117', 'B', 0, 0, 'None', 'Absent'),
(118, 'CE118', 'B', 0, 0, 'None', 'Absent'),
(119, 'CE119', 'B', 0, 0, 'None', 'Absent'),
(120, 'CE120', 'B', 0, 0, 'None', 'Absent'),
(121, 'CE121', 'B', 0, 0, 'None', 'Absent'),
(122, 'CE122', 'B', 0, 0, 'None', 'Absent'),
(123, 'CE123', 'B', 0, 0, 'None', 'Absent'),
(124, 'CE124', 'B', 0, 0, 'None', 'Absent'),
(125, 'CE125', 'B', 0, 0, 'None', 'Absent'),
(126, 'CE126', 'B', 0, 0, 'None', 'Absent'),
(127, 'CE127', 'B', 0, 0, 'None', 'Absent'),
(128, 'CE128', 'B', 0, 0, 'None', 'Absent'),
(129, 'CE129', 'B', 0, 0, 'None', 'Absent'),
(130, 'CE130', 'B', 0, 0, 'None', 'Absent'),
(131, 'CE131', 'B', 0, 0, 'None', 'Absent'),
(132, 'CE132', 'B', 0, 0, 'None', 'Absent'),
(133, 'CE133', 'B', 0, 0, 'None', 'Absent'),
(134, 'CE134', 'B', 0, 0, 'None', 'Absent'),
(135, 'CE135', 'B', 0, 0, 'None', 'Absent'),
(136, 'CE136', 'B', 0, 0, 'None', 'Absent'),
(137, 'CE137', 'B', 0, 0, 'None', 'Absent'),
(138, 'CE138', 'B', 0, 0, 'None', 'Absent'),
(139, 'CE139', 'B', 0, 0, 'None', 'Absent'),
(140, 'CE140', 'B', 0, 0, 'None', 'Absent'),
(141, 'CE141', 'B', 0, 0, 'None', 'Absent'),
(142, 'CE142', 'B', 0, 0, 'None', 'Absent'),
(143, 'CE143', 'B', 0, 0, 'None', 'Absent'),
(144, 'CE144', 'B', 0, 0, 'None', 'Absent'),
(145, 'CE145', 'B', 0, 0, 'None', 'Absent'),
(146, 'CE146', 'B', 0, 0, 'None', 'Absent'),
(147, 'CE147', 'B', 0, 0, 'None', 'Absent'),
(148, 'CE148', 'B', 0, 0, 'None', 'Absent'),
(149, 'CE149', 'B', 0, 0, 'None', 'Absent'),
(150, 'CE150', 'B', 0, 0, 'None', 'Absent'),
(151, 'CE151', 'B', 0, 0, 'None', 'Absent'),
(152, 'CE152', 'B', 0, 0, 'None', 'Absent'),
(153, 'CE153', 'B', 0, 0, 'None', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Roll No.` varchar(5) NOT NULL,
  `ID` varchar(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `DOB` varchar(60) NOT NULL,
  `Enrollment Year` int(11) NOT NULL,
  `Batch Year` int(11) NOT NULL,
  `Session No` int(11) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Division` varchar(1) NOT NULL,
  `image_id` varchar(25) NOT NULL,
  `PPS-2` int(11) NOT NULL,
  `Maths-2` int(11) NOT NULL,
  `Physics` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Env. Studies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Roll No.`, `ID`, `Name`, `DOB`, `Enrollment Year`, `Batch Year`, `Session No`, `Gender`, `Division`, `image_id`, `PPS-2`, `Maths-2`, `Physics`, `English`, `Env. Studies`) VALUES
('CE001', '22CEUOS054', 'AGHERA NIRAJ MUKESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE002', '22CEUOS023', 'AKOLA ARYAN NILESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE003', '22CEUEG082', 'AMLANI NISARG KALPESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE004', '22CEUOG094', 'AMRUTIYA RICH BHAVESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE005', '22CEUOS096', 'ANTALA MEET CHIMANLAL', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE006', '22CEUOS001', 'ARSH  GANGANI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE007', '22CEUOS133', 'BHALODIYA DRASHTI CHANDRAKANTBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE008', '22CEUON114', 'BHANSALI SMIT AJAYBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE009', '22CEUOS018', 'BHATT HRUTU HIRENKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE010', '22CEUOS081', 'BHESANIYA JAY RAMESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE011', '22CEUOS024', 'BHUVA PRINS PARESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE012', '22CEUON125', 'BUVARIYA HITARTH DHAVALBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE013', '22CEUOF070', 'CHANDRAVADIYA KISHAN RAMABHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE014', '22CEUOG051', 'CHANIYARA PRINCEKUMAR KISHORKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE015', '22CEUTG129', 'CHAUDHARI DHRUKUMAR SUMANBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE016', '22CEUTG048', 'CHAUDHARI KRISH LALBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE017', '22CEUBG049', 'CHAVDA JAY KISHORBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE018', '22CEUOS017', 'DEDANIYA DEVANSHI KETANBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE019', '22CEUOS016', 'DEKAVADIYA JAIMIN PRAKASHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE020', '22CEUBG074', 'DERVALIYA KISHAN BHARATBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE021', '22CEUON126', 'DESAI AMAN VINAYKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE022', '22CEUOS021', 'DESAI KRISH JENISH', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE023', '22CEUOS147', 'DHAMELIYA DIVYANG RAJESHKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE024', '22CEUOS140', 'DHAMELIYA PARTHIVKUMAR VINUBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE025', '22CEUOS004', 'DHAMSANIA DHRUVIL ARVINDBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE026', '22CEUEG136', 'DHANANI VAIBHAV VIJAYBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE027', '22CEUON109', 'DOBARIYA MEET MANOJBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE028', '22CEUOS146', 'DOBARIYA VRUND GHANSHYAMBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE029', '22CEUON122', 'FADADU KHANJAN ARVINDBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE030', '22CEUOS020', 'FALDU ARPIT KIRTIBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE031', '22CEUOS098', 'GABANI KULDEEP NARESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE032', '22CEUOS137', 'GABANI YASH NITESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE033', '22CEUOS052', 'GAJERA JAIMIN NILESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE034', '22CEUOS088', 'GAJERA KAVAN SANJEEVBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE035', '22CEUOS068', 'GAJERA RUSHANGKUMAR MANOJBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE036', '22CEUOF152', 'GAJIPURWALA AMATULLA AKBARI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE037', '22CEUBS073', 'GANDHI NITYA VIJAYBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE038', '22CEUBS036', 'GANJAWALA SAMARTH SANJAYBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE039', '22CEUTG058', 'GANVIT NIKUNJKUMAR PRAVINBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE040', '22CEUOG095', 'GARALA MAHEK RAMESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE041', '22CEUTS062', 'GARASIA NRUSHANSH AMRUTBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE042', '22CEUBG064', 'GOHEL AKSHAY RAJEDRAKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE043', '22CEUOG055', 'GOHIL NANABHAI GAMBHIRBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE044', '22CEUOG045', 'GOHIL SUMIT JITENDRAKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE045', '22CEUOG043', 'GUPTA SANKET KALPESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE046', '22CEUBS092', 'GURJAR KARAN VIJAYBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE047', '22CEUBG071', 'HADIYAL MEHUL MOHAN', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE048', '22CEUOS013', 'HARANIYA SMITKUMAR NITESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE049', '22CEUON112', 'HUSENI SAIF SAHIL', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE050', '22CEUBS019', 'JAMBUDIYA HEET KETANKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE051', '22CEUOS154', 'JANI MAHARSHI DIPAK', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE052', '22CEUOS007', 'KALARIYA MANAV HITESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE053', '22CEUBG032', 'KALSARIYA PRASHANT CHHABILBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE054', '22CEUBG076', 'KALSARIYA ZARNA UMESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE055', '22CEUOS080', 'KANERIYA UTSAV UMEDBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE056', '22CEUBG042', 'KARANGIYA MIHIRKUMAR PARBATBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE057', '22CEUOS083', 'KHUNT NIL PRAVINBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE058', '22CEUES115', 'KOTADIYA ABHI HITESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE059', '22CEUOS132', 'KOTHIA VIDHI KEYURBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE060', '22CEUOG155', 'KUNAL  BHAT', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE061', '22CEUBS121', 'LAD CHINTAN YAGNESHKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE062', '22CEUBS099', 'LADVA RIDDHI DHARMENDRABHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE063', '22CEUOF066', 'LAKUM VIPUL DINESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE064', '22CEUBS142', 'MACHCHH HIRAXBHAI HARSUKHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE065', '22CEUOS117', 'MADARIYA KANJI NARENDRABHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE066', '22CEUBG138', 'MAKWANA VAIBHAV SHARADBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE067', '22CEUTS128', 'MANAS RAJABHAI GARCHAR  ', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE068', '22CEUON111', 'MEGHANI MAYANK PARESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE069', '22CEUOS002', 'MEHTA UDIT NILESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE070', '22CEUBG029', 'MISTRY KINJAL BHAVESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE071', '22CEUBS085', 'MISTRY MEET PRASHANT', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE072', '22CEUBG061', 'MODH MEET SUDHIRKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE073', '22CEUBG044', 'MODI JAINIL GIRISHKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE074', '22CEUOG059', 'MOKARIYA PRADIP KESHUBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE075', '22CEUTG091', 'MUNIYA VANDITKUMAR AMBUBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE076', '22CEUOS148', 'OJAS  TIKKU', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE077', '22CEUON107', 'PADSHALA SMRUTI RAMESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE078', '22CEUOS150', 'PARIKH HET BRIJESH', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE079', '22CEUES090', 'PARMAR DHARMIK HITENDRABHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE080', '22CEUOG034', 'PARMAR KULDIP RUPSANGBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE081', '22CEUBG144', 'PARMAR LAKHAMAN JIVA', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE082', '22CEUSG046', 'PARMAR NISARG ASHOKKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE083', '22CEUOT130', 'PARMAR VANRAJBHAI JAYANTIBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE084', '22CEUOS012', 'PATADIA HARSH KRUSHNAKANT', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE085', '22CEUOS039', 'PATEL AARYA DHARMENDRABHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE086', '22CEUTG030', 'PATEL AAYUSHI RASIKBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE087', '22CEUTF143', 'PATEL AVANI JAYESHKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE088', '22CEUOS151', 'PATEL DEV DIPESH', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE089', '22CEUOS026', 'PATEL DHRUV PANKAJ', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE090', '22CEUOG050', 'PATEL DHRUV RAJENDRA', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE091', '22CEUBG028', 'PATEL DISHA JAYESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE092', '22CEUON156', 'PATEL KRIS HITESHKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE093', '22CEUBS153', 'PATEL MEET RAMESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE094', '22CEUOS005', 'PATEL NAITIKKUMAR HASMUKHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE095', '22CEUOS011', 'PATEL NEEL HITENDRABHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE096', '22CEUOG041', 'PATEL NEHABEN YOGESHKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE097', '22CEUON110', 'PATEL NEIL DILIPBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE098', '22CEUOT075', 'PATEL NISARG DINESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE099', '22CEUON123', 'PATEL OM MANUBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE100', '22CEUOS135', 'PATEL RUDRA KETAN', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE101', '22CEUTG063', 'PATEL SHIVANSH VIJAY', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE102', '22CEUOS131', 'PATEL TIRTH RAJUBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE103', '22CEUOS015', 'PATEL UTSAV CHETANBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE104', '22CEUON102', 'PATEL VEDANT  RUPESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE105', '22CEUON127', 'POPAT NIHAR RAVI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE106', '22CEUOS006', 'PRAJAPATI HET PARESHKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE107', '22CEUON113', 'PRIYANSH KETANKUMAR PATEL', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE108', '22CEUOF093', 'RADADIYA JAY VIJAYBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE109', '22CEUES149', 'RAKHOLIYA NIHAR VIPULBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE110', '22CEUTG077', 'RATHOD VANSH CHETANBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE111', '22CEUON157', 'SAHIL SUMANT BHAT', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE112', '22CEUOS100', 'SANGHANI PUJAN MAHESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE113', '22CEUOS108', 'SAVALIYA ACHYUT ANILKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE114', '22CEUEG033', 'SHAH APEKSHA DILIPBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE115', '22CEUON103', 'SHAH ATREY SNEHAL', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE116', '22CEUON116', 'SHAH DEV PURVANSHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE117', '22CEUON106', 'SHAH KAVIN PRAGNESHKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE118', '22CEUON105', 'SHAH KAVYA ATULKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE119', '22CEUOS009', 'SHAH SHEEL NIRAV', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE120', '22CEUON104', 'SHAH SMIT HITESH', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE121', '22CEUOS139', 'SHAH VEER PIYUSHKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE122', '22CEUOS141', 'SHETH TITHAAL KETAN', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE123', '22CEUOS025', 'SOLANKI JANVI VIJAYBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE124', '22CEUBS057', 'SOLANKI VATSALRAJ VIJAYSINH', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE125', '22CEUOG031', 'SONEJI MAHAMAD RAZA MAHAMADAFZAL', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE126', '22CEUOG040', 'SORATHIYA SAHIL UMARBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE127', '22CEUOS027', 'SORATHIYA SWARAJ CHETANBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE128', '22CEUSG067', 'SURATI IRA PRATAPBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE129', '22CEUEG078', 'SUREJA ARCHANKUMAR AJITBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE130', '22CEUOG035', 'TALSANIYA DARSHIT MAHESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE131', '22CEUBG118', 'TAROFAWALA SAHIL DHARMESHKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE132', '22CEUON124', 'THAKKAR ANISH HITESH', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE133', '22CEUOS047', 'THAKKAR MEET ALPESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE134', '22CEUOG056', 'TIMBADIYA DISHA NILESHKUMAR', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE135', '22CEUSF097', 'UMARVANSHI KHUSHI ISHWARBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE136', '22CEUOS079', 'UNDHAD SAHIL SANJAYBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE137', '22CEUTF145', 'URVI  VASAVA', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE138', '22CEUON120', 'VACHHANI SHYAM DINESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE139', '22CEUBG038', 'VADHEL MILANKUMAR NARESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE140', '22CEUBS101', 'VADHER AKSHAR ANANDBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE141', '22CEUOF072', 'VADODARIYA JIMESH MANOJBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE142', '22CEUOS084', 'VAGHASIA SRUSHTI RAJESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE143', '22CEUOS089', 'VAGHASIYA PRINCE SHAILESHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE144', '22CEUBS037', 'VAHORA DANISHBHAI SOHELBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE145', '22CEUHG087', 'VALA MANISHKUMAR DANABHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE146', '22CEUOT134', 'VAMJA JENISH VIJAYBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE147', '22CEUTS086', 'VASAVA PARTH SANDEEPBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE148', '22CEUOS014', 'VEKARIYA VASU PIYUSHBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE149', '22CEUOG053', 'VITHANI YUG NIPULBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE150', '22CEUBG065', 'VORA SHAHILBHAI IRFANBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE151', '22CEUOS008', 'VYAS DARSHIT DHARMESH', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE152', '22CEUEG060', 'ZALA HARSHPALSINH CHAMPAKSINH', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE153', '22CEUBG069', 'ZANKAT NENSEE KEESHORBHAI', '$2y$10$Ppy3y0SkXkfP8YkqEo5iYO.xiCgBozGaPGa.ntKYrBwZXlmd/NF3G', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13);

-- --------------------------------------------------------

--
-- Table structure for table `teachers_data`
--

CREATE TABLE `teachers_data` (
  `No.` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DOB` varchar(60) NOT NULL,
  `ID` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `lecture` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers_data`
--

INSERT INTO `teachers_data` (`No.`, `Name`, `DOB`, `ID`, `Password`, `lecture`) VALUES
(1, 'Chintan Chatterjee', '$2y$10$.HeAOy81DBt1ZbRe6X2S2eq65r3dOC3pw1PS7VO/C6O6i82lwCu4i', 'chintan', 'cc@ddu', 'PPS-2'),
(2, 'Kailsh Patil', '$2y$10$.HeAOy81DBt1ZbRe6X2S2eq65r3dOC3pw1PS7VO/C6O6i82lwCu4i', 'kailash', 'kmp@ddu', 'Maths-2'),
(3, 'Vimal Patel', '$2y$10$.HeAOy81DBt1ZbRe6X2S2eq65r3dOC3pw1PS7VO/C6O6i82lwCu4i', 'vimal', 'vbp@ddu', 'Maths-2'),
(4, 'Jigar Pandya', '$2y$10$.HeAOy81DBt1ZbRe6X2S2eq65r3dOC3pw1PS7VO/C6O6i82lwCu4i', 'jigar', 'jmp@ddu', 'PPS-2'),
(6, 'Madhav Astik', '$2y$10$.HeAOy81DBt1ZbRe6X2S2eq65r3dOC3pw1PS7VO/C6O6i82lwCu4i', 'madhav', 'ma@ddu', 'English'),
(7, 'Kaisarjahan Ansari', '$2y$10$.HeAOy81DBt1ZbRe6X2S2eq65r3dOC3pw1PS7VO/C6O6i82lwCu4i', 'kaisar', 'kaiser@ddu', 'English'),
(8, 'Shital Shah', '$2y$10$.HeAOy81DBt1ZbRe6X2S2eq65r3dOC3pw1PS7VO/C6O6i82lwCu4i', 'shital', 'sss@ddu', 'Physics'),
(9, 'Shaifali Malukani', '$2y$10$.HeAOy81DBt1ZbRe6X2S2eq65r3dOC3pw1PS7VO/C6O6i82lwCu4i', 'shaifali', 'spm@ddu', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `thursday`
--

CREATE TABLE `thursday` (
  `No.` int(11) NOT NULL,
  `Time_A` time NOT NULL DEFAULT '00:45:00',
  `Lecture_A` varchar(50) NOT NULL,
  `Time_B` time DEFAULT NULL,
  `Lecture_B` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thursday`
--

INSERT INTO `thursday` (`No.`, `Time_A`, `Lecture_A`, `Time_B`, `Lecture_B`) VALUES
(1, '10:45:00', 'English', '14:30:00', 'PPS-2'),
(2, '11:45:00', 'PPS-2', '15:30:00', 'Physics'),
(3, '12:45:00', 'Physics', '16:35:00', 'Maths-2');

-- --------------------------------------------------------

--
-- Table structure for table `tuesday`
--

CREATE TABLE `tuesday` (
  `No.` int(11) NOT NULL,
  `Time_A` time NOT NULL,
  `Lecture_A` varchar(50) DEFAULT NULL,
  `Time_B` time NOT NULL,
  `Lecture_B` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tuesday`
--

INSERT INTO `tuesday` (`No.`, `Time_A`, `Lecture_A`, `Time_B`, `Lecture_B`) VALUES
(1, '10:45:00', 'Maths-2', '14:30:00', 'Physics'),
(2, '11:45:00', 'Physics', '15:30:00', 'PPS-2'),
(3, '12:45:00', 'PPS-2', '16:35:00', 'Maths-2');

-- --------------------------------------------------------

--
-- Table structure for table `wednesday`
--

CREATE TABLE `wednesday` (
  `No.` int(11) NOT NULL,
  `Time_A` time DEFAULT NULL,
  `Lecture_A` varchar(50) DEFAULT NULL,
  `Time_B` time DEFAULT NULL,
  `Lecture_B` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wednesday`
--

INSERT INTO `wednesday` (`No.`, `Time_A`, `Lecture_A`, `Time_B`, `Lecture_B`) VALUES
(1, '10:45:00', 'Env. Studies', '14:30:00', 'PPS-2'),
(2, '11:45:00', 'Env. Studies', '15:30:00', 'Physics'),
(3, '12:45:00', 'Maths-2', '16:35:00', 'English');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`No.`);

--
-- Indexes for table `english`
--
ALTER TABLE `english`
  ADD PRIMARY KEY (`Sr.`);

--
-- Indexes for table `friday`
--
ALTER TABLE `friday`
  ADD PRIMARY KEY (`No.`);

--
-- Indexes for table `maths-2`
--
ALTER TABLE `maths-2`
  ADD PRIMARY KEY (`Sr.`);

--
-- Indexes for table `monday`
--
ALTER TABLE `monday`
  ADD PRIMARY KEY (`No.`);

--
-- Indexes for table `pass_holder`
--
ALTER TABLE `pass_holder`
  ADD PRIMARY KEY (`lecture`);

--
-- Indexes for table `physics`
--
ALTER TABLE `physics`
  ADD PRIMARY KEY (`Sr.`);

--
-- Indexes for table `pps-2`
--
ALTER TABLE `pps-2`
  ADD PRIMARY KEY (`Sr.`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Roll No.`);

--
-- Indexes for table `teachers_data`
--
ALTER TABLE `teachers_data`
  ADD PRIMARY KEY (`No.`);

--
-- Indexes for table `thursday`
--
ALTER TABLE `thursday`
  ADD PRIMARY KEY (`No.`);

--
-- Indexes for table `tuesday`
--
ALTER TABLE `tuesday`
  ADD PRIMARY KEY (`No.`);

--
-- Indexes for table `wednesday`
--
ALTER TABLE `wednesday`
  ADD PRIMARY KEY (`No.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `english`
--
ALTER TABLE `english`
  MODIFY `Sr.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `maths-2`
--
ALTER TABLE `maths-2`
  MODIFY `Sr.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `monday`
--
ALTER TABLE `monday`
  MODIFY `No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `physics`
--
ALTER TABLE `physics`
  MODIFY `Sr.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `pps-2`
--
ALTER TABLE `pps-2`
  MODIFY `Sr.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `teachers_data`
--
ALTER TABLE `teachers_data`
  MODIFY `No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tuesday`
--
ALTER TABLE `tuesday`
  MODIFY `No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
