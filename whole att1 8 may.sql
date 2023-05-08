-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 07:38 AM
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
-- Table structure for table `students_ce`
--

CREATE TABLE `students_ce` (
  `Roll No.` varchar(5) NOT NULL,
  `ID` varchar(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
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
-- Dumping data for table `students_ce`
--

INSERT INTO `students_ce` (`Roll No.`, `ID`, `Name`, `Enrollment Year`, `Batch Year`, `Session No`, `Gender`, `Division`, `image_id`, `PPS-2`, `Maths-2`, `Physics`, `English`, `Env. Studies`) VALUES
('CE001', '22CEUOS054', 'AGHERA NIRAJ MUKESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE002', '22CEUOS023', 'AKOLA ARYAN NILESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE003', '22CEUEG082', 'AMLANI NISARG KALPESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE004', '22CEUOG094', 'AMRUTIYA RICH BHAVESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE005', '22CEUOS096', 'ANTALA MEET CHIMANLAL', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE006', '22CEUOS001', 'ARSH  GANGANI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE007', '22CEUOS133', 'BHALODIYA DRASHTI CHANDRAKANTBHAI', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE008', '22CEUON114', 'BHANSALI SMIT AJAYBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE009', '22CEUOS018', 'BHATT HRUTU HIRENKUMAR', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE010', '22CEUOS081', 'BHESANIYA JAY RAMESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE011', '22CEUOS024', 'BHUVA PRINS PARESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE012', '22CEUON125', 'BUVARIYA HITARTH DHAVALBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE013', '22CEUOF070', 'CHANDRAVADIYA KISHAN RAMABHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE014', '22CEUOG051', 'CHANIYARA PRINCEKUMAR KISHORKUMAR', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE015', '22CEUTG129', 'CHAUDHARI DHRUKUMAR SUMANBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE016', '22CEUTG048', 'CHAUDHARI KRISH LALBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE017', '22CEUBG049', 'CHAVDA JAY KISHORBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE018', '22CEUOS017', 'DEDANIYA DEVANSHI KETANBHAI', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE019', '22CEUOS016', 'DEKAVADIYA JAIMIN PRAKASHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE020', '22CEUBG074', 'DERVALIYA KISHAN BHARATBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE021', '22CEUON126', 'DESAI AMAN VINAYKUMAR', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE022', '22CEUOS021', 'DESAI KRISH JENISH', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE023', '22CEUOS147', 'DHAMELIYA DIVYANG RAJESHKUMAR', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE024', '22CEUOS140', 'DHAMELIYA PARTHIVKUMAR VINUBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE025', '22CEUOS004', 'DHAMSANIA DHRUVIL ARVINDBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE026', '22CEUEG136', 'DHANANI VAIBHAV VIJAYBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE027', '22CEUON109', 'DOBARIYA MEET MANOJBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE028', '22CEUOS146', 'DOBARIYA VRUND GHANSHYAMBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE029', '22CEUON122', 'FADADU KHANJAN ARVINDBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE030', '22CEUOS020', 'FALDU ARPIT KIRTIBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE031', '22CEUOS098', 'GABANI KULDEEP NARESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE032', '22CEUOS137', 'GABANI YASH NITESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE033', '22CEUOS052', 'GAJERA JAIMIN NILESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE034', '22CEUOS088', 'GAJERA KAVAN SANJEEVBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE035', '22CEUOS068', 'GAJERA RUSHANGKUMAR MANOJBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE036', '22CEUOF152', 'GAJIPURWALA AMATULLA AKBARI', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE037', '22CEUBS073', 'GANDHI NITYA VIJAYBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE038', '22CEUBS036', 'GANJAWALA SAMARTH SANJAYBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE039', '22CEUTG058', 'GANVIT NIKUNJKUMAR PRAVINBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE040', '22CEUOG095', 'GARALA MAHEK RAMESHBHAI', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE041', '22CEUTS062', 'GARASIA NRUSHANSH AMRUTBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE042', '22CEUBG064', 'GOHEL AKSHAY RAJEDRAKUMAR', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE043', '22CEUOG055', 'GOHIL NANABHAI GAMBHIRBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE044', '22CEUOG045', 'GOHIL SUMIT JITENDRAKUMAR', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE045', '22CEUOG043', 'GUPTA SANKET KALPESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE046', '22CEUBS092', 'GURJAR KARAN VIJAYBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE047', '22CEUBG071', 'HADIYAL MEHUL MOHAN', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE048', '22CEUOS013', 'HARANIYA SMITKUMAR NITESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE049', '22CEUON112', 'HUSENI SAIF SAHIL', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE050', '22CEUBS019', 'JAMBUDIYA HEET KETANKUMAR', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE051', '22CEUOS154', 'JANI MAHARSHI DIPAK', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE052', '22CEUOS007', 'KALARIYA MANAV HITESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE053', '22CEUBG032', 'KALSARIYA PRASHANT CHHABILBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE054', '22CEUBG076', 'KALSARIYA ZARNA UMESHBHAI', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE055', '22CEUOS080', 'KANERIYA UTSAV UMEDBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE056', '22CEUBG042', 'KARANGIYA MIHIRKUMAR PARBATBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE057', '22CEUOS083', 'KHUNT NIL PRAVINBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE058', '22CEUES115', 'KOTADIYA ABHI HITESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE059', '22CEUOS132', 'KOTHIA VIDHI KEYURBHAI', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE060', '22CEUOG155', 'KUNAL  BHAT', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE061', '22CEUBS121', 'LAD CHINTAN YAGNESHKUMAR', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE062', '22CEUBS099', 'LADVA RIDDHI DHARMENDRABHAI', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE063', '22CEUOF066', 'LAKUM VIPUL DINESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE064', '22CEUBS142', 'MACHCHH HIRAXBHAI HARSUKHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE065', '22CEUOS117', 'MADARIYA KANJI NARENDRABHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE066', '22CEUBG138', 'MAKWANA VAIBHAV SHARADBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE067', '22CEUTS128', 'MANAS RAJABHAI GARCHAR  ', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE068', '22CEUON111', 'MEGHANI MAYANK PARESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE069', '22CEUOS002', 'MEHTA UDIT NILESHBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE070', '22CEUBG029', 'MISTRY KINJAL BHAVESHBHAI', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE071', '22CEUBS085', 'MISTRY MEET PRASHANT', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE072', '22CEUBG061', 'MODH MEET SUDHIRKUMAR', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE073', '22CEUBG044', 'MODI JAINIL GIRISHKUMAR', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE074', '22CEUOG059', 'MOKARIYA PRADIP KESHUBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE075', '22CEUTG091', 'MUNIYA VANDITKUMAR AMBUBHAI', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE076', '22CEUOS148', 'OJAS  TIKKU', 2022, 2022, 2, 'MALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE077', '22CEUON107', 'PADSHALA SMRUTI RAMESHBHAI', 2022, 2022, 2, 'FEMALE', 'A', '123.png', 30, 30, 15, 15, 13),
('CE078', '22CEUOS150', 'PARIKH HET BRIJESH', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE079', '22CEUES090', 'PARMAR DHARMIK HITENDRABHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE080', '22CEUOG034', 'PARMAR KULDIP RUPSANGBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE081', '22CEUBG144', 'PARMAR LAKHAMAN JIVA', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE082', '22CEUSG046', 'PARMAR NISARG ASHOKKUMAR', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE083', '22CEUOT130', 'PARMAR VANRAJBHAI JAYANTIBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE084', '22CEUOS012', 'PATADIA HARSH KRUSHNAKANT', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE085', '22CEUOS039', 'PATEL AARYA DHARMENDRABHAI', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE086', '22CEUTG030', 'PATEL AAYUSHI RASIKBHAI', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE087', '22CEUTF143', 'PATEL AVANI JAYESHKUMAR', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE088', '22CEUOS151', 'PATEL DEV DIPESH', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE089', '22CEUOS026', 'PATEL DHRUV PANKAJ', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE090', '22CEUOG050', 'PATEL DHRUV RAJENDRA', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE091', '22CEUBG028', 'PATEL DISHA JAYESHBHAI', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE092', '22CEUON156', 'PATEL KRIS HITESHKUMAR', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE093', '22CEUBS153', 'PATEL MEET RAMESHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE094', '22CEUOS005', 'PATEL NAITIKKUMAR HASMUKHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE095', '22CEUOS011', 'PATEL NEEL HITENDRABHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE096', '22CEUOG041', 'PATEL NEHABEN YOGESHKUMAR', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE097', '22CEUON110', 'PATEL NEIL DILIPBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE098', '22CEUOT075', 'PATEL NISARG DINESHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE099', '22CEUON123', 'PATEL OM MANUBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE100', '22CEUOS135', 'PATEL RUDRA KETAN', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE101', '22CEUTG063', 'PATEL SHIVANSH VIJAY', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE102', '22CEUOS131', 'PATEL TIRTH RAJUBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE103', '22CEUOS015', 'PATEL UTSAV CHETANBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE104', '22CEUON102', 'PATEL VEDANT  RUPESHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE105', '22CEUON127', 'POPAT NIHAR RAVI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE106', '22CEUOS006', 'PRAJAPATI HET PARESHKUMAR', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE107', '22CEUON113', 'PRIYANSH KETANKUMAR PATEL', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE108', '22CEUOF093', 'RADADIYA JAY VIJAYBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE109', '22CEUES149', 'RAKHOLIYA NIHAR VIPULBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE110', '22CEUTG077', 'RATHOD VANSH CHETANBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE111', '22CEUON157', 'SAHIL SUMANT BHAT', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE112', '22CEUOS100', 'SANGHANI PUJAN MAHESHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE113', '22CEUOS108', 'SAVALIYA ACHYUT ANILKUMAR', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE114', '22CEUEG033', 'SHAH APEKSHA DILIPBHAI', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE115', '22CEUON103', 'SHAH ATREY SNEHAL', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE116', '22CEUON116', 'SHAH DEV PURVANSHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE117', '22CEUON106', 'SHAH KAVIN PRAGNESHKUMAR', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE118', '22CEUON105', 'SHAH KAVYA ATULKUMAR', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE119', '22CEUOS009', 'SHAH SHEEL NIRAV', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE120', '22CEUON104', 'SHAH SMIT HITESH', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE121', '22CEUOS139', 'SHAH VEER PIYUSHKUMAR', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE122', '22CEUOS141', 'SHETH TITHAAL KETAN', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE123', '22CEUOS025', 'SOLANKI JANVI VIJAYBHAI', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE124', '22CEUBS057', 'SOLANKI VATSALRAJ VIJAYSINH', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE125', '22CEUOG031', 'SONEJI MAHAMAD RAZA MAHAMADAFZAL', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE126', '22CEUOG040', 'SORATHIYA SAHIL UMARBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE127', '22CEUOS027', 'SORATHIYA SWARAJ CHETANBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE128', '22CEUSG067', 'SURATI IRA PRATAPBHAI', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE129', '22CEUEG078', 'SUREJA ARCHANKUMAR AJITBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE130', '22CEUOG035', 'TALSANIYA DARSHIT MAHESHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE131', '22CEUBG118', 'TAROFAWALA SAHIL DHARMESHKUMAR', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE132', '22CEUON124', 'THAKKAR ANISH HITESH', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE133', '22CEUOS047', 'THAKKAR MEET ALPESHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE134', '22CEUOG056', 'TIMBADIYA DISHA NILESHKUMAR', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE135', '22CEUSF097', 'UMARVANSHI KHUSHI ISHWARBHAI', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE136', '22CEUOS079', 'UNDHAD SAHIL SANJAYBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE137', '22CEUTF145', 'URVI  VASAVA', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE138', '22CEUON120', 'VACHHANI SHYAM DINESHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE139', '22CEUBG038', 'VADHEL MILANKUMAR NARESHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE140', '22CEUBS101', 'VADHER AKSHAR ANANDBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE141', '22CEUOF072', 'VADODARIYA JIMESH MANOJBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE142', '22CEUOS084', 'VAGHASIA SRUSHTI RAJESHBHAI', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE143', '22CEUOS089', 'VAGHASIYA PRINCE SHAILESHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE144', '22CEUBS037', 'VAHORA DANISHBHAI SOHELBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE145', '22CEUHG087', 'VALA MANISHKUMAR DANABHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE146', '22CEUOT134', 'VAMJA JENISH VIJAYBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE147', '22CEUTS086', 'VASAVA PARTH SANDEEPBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE148', '22CEUOS014', 'VEKARIYA VASU PIYUSHBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE149', '22CEUOG053', 'VITHANI YUG NIPULBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE150', '22CEUBG065', 'VORA SHAHILBHAI IRFANBHAI', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE151', '22CEUOS008', 'VYAS DARSHIT DHARMESH', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE152', '22CEUEG060', 'ZALA HARSHPALSINH CHAMPAKSINH', 2022, 2022, 2, 'MALE', 'B', '123.png', 30, 30, 15, 15, 13),
('CE153', '22CEUBG069', 'ZANKAT NENSEE KEESHORBHAI', 2022, 2022, 2, 'FEMALE', 'B', '123.png', 30, 30, 15, 15, 13),
('Roll ', 'StudentID', 'Name', 0, 0, 0, 'Gender', 'D', '123.png', 0, 0, 0, 0, 0);

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
-- Indexes for table `students_ce`
--
ALTER TABLE `students_ce`
  ADD PRIMARY KEY (`Roll No.`);

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
