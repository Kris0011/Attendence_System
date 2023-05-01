-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 07:20 PM
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
-- Database: `att1`
--

-- --------------------------------------------------------

--
-- Table structure for table `friday`
--

CREATE TABLE `friday` (
  `No.` int(11) NOT NULL,
  `Time` time NOT NULL,
  `Lecture` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friday`
--

INSERT INTO `friday` (`No.`, `Time`, `Lecture`) VALUES
(1, '14:30:00', 'Env. Studies'),
(2, '15:30:00', 'Env. Studies'),
(3, '16:35:00', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `monday`
--

CREATE TABLE `monday` (
  `No.` int(11) NOT NULL,
  `Time` time NOT NULL,
  `Lecture` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monday`
--

INSERT INTO `monday` (`No.`, `Time`, `Lecture`) VALUES
(1, '14:30:00', 'English'),
(3, '15:30:00', 'Maths-2'),
(4, '16:35:00', 'PPS-2');

-- --------------------------------------------------------

--
-- Table structure for table `students_datab`
--

CREATE TABLE `students_datab` (
  `No.` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ID` varchar(10) NOT NULL,
  `Roll No.` varchar(10) NOT NULL,
  `Maths-2` int(255) NOT NULL,
  `PPS-2` int(255) NOT NULL,
  `Physics` int(255) NOT NULL,
  `English` int(255) NOT NULL,
  `Env. Studies` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_datab`
--

INSERT INTO `students_datab` (`No.`, `Name`, `ID`, `Roll No.`, `Maths-2`, `PPS-2`, `Physics`, `English`, `Env. Studies`) VALUES
(1, 'Patel Kris Hiteshkumar', '22CEUON156', 'CE156', 0, 0, 0, 0, 0),
(3, 'Patel Naitikkumar Hasmukhkumar', '22CEUOS005', 'CE092', 0, 0, 0, 0, 0),
(4, 'Shah Kavin Pragnesh', '22CEUON106', 'CE117', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teachers_data`
--

CREATE TABLE `teachers_data` (
  `No.` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ID` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Subject` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers_data`
--

INSERT INTO `teachers_data` (`No.`, `Name`, `ID`, `Password`, `Subject`) VALUES
(1, 'Chintan Chatterjee', 'chintan', 'cc@ddu', 'PPS-2'),
(2, 'Kailsh Patil', 'kailash', 'kmp@ddu', 'Maths-2'),
(3, 'Vimal Patel', 'vimal', 'vbp@ddu', 'Maths-2'),
(4, 'Jigar Pandya', 'jigar', 'jmp@ddu', 'PPS-2'),
(6, 'Madhav Astik', 'madhav', 'ma@ddu', 'English'),
(7, 'Kaisarjahan Ansari', 'kaisar', 'kaiser@ddu', 'English'),
(8, 'Shital Shah', 'shital', 'sss@ddu', 'Physics'),
(9, 'Shaifali Malukani', 'shaifali', 'spm@ddu', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `thursday`
--

CREATE TABLE `thursday` (
  `No.` int(11) NOT NULL,
  `Time` time DEFAULT NULL,
  `Lecture` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thursday`
--

INSERT INTO `thursday` (`No.`, `Time`, `Lecture`) VALUES
(1, '14:30:00', 'PPS-2'),
(2, '15:30:00', 'Physics'),
(3, '16:35:00', 'Maths-2');

-- --------------------------------------------------------

--
-- Table structure for table `tuesday`
--

CREATE TABLE `tuesday` (
  `No.` int(11) NOT NULL,
  `Time` time NOT NULL,
  `Lecture` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tuesday`
--

INSERT INTO `tuesday` (`No.`, `Time`, `Lecture`) VALUES
(1, '14:30:00', 'Physics'),
(2, '15:30:00', 'PPS-2'),
(3, '16:35:00', 'Maths-2');

-- --------------------------------------------------------

--
-- Table structure for table `wednesday`
--

CREATE TABLE `wednesday` (
  `No.` int(11) NOT NULL,
  `Time` time DEFAULT NULL,
  `Lecture` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wednesday`
--

INSERT INTO `wednesday` (`No.`, `Time`, `Lecture`) VALUES
(1, '14:30:00', 'PPS-2'),
(2, '15:30:00', 'Physics'),
(3, '16:35:00', 'English');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friday`
--
ALTER TABLE `friday`
  ADD PRIMARY KEY (`No.`);

--
-- Indexes for table `monday`
--
ALTER TABLE `monday`
  ADD PRIMARY KEY (`No.`);

--
-- Indexes for table `students_datab`
--
ALTER TABLE `students_datab`
  ADD PRIMARY KEY (`No.`);

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
-- AUTO_INCREMENT for table `monday`
--
ALTER TABLE `monday`
  MODIFY `No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students_datab`
--
ALTER TABLE `students_datab`
  MODIFY `No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
