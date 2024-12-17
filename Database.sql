-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 17, 2024 at 01:29 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giasemis`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `Actor_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Actor_Nickname` varchar(50) DEFAULT NULL,
  `Actor_Rating` int DEFAULT NULL,
  PRIMARY KEY (`Actor_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`Actor_ID`, `First_Name`, `Last_Name`, `Actor_Nickname`, `Actor_Rating`) VALUES
(1, 'Bryan', 'Cranston', 'Walter White', 8),
(2, 'Anna', 'Gunn', 'Skyler White', 6),
(3, 'Aaron', 'Paul', 'Jesse Pinkman', 7),
(4, 'Catherine', 'Zeta-Jones', 'Morticia Addams', 6),
(5, 'Jenna', 'Ortega', 'Wednesday Addams', 8),
(6, 'Hunter', 'Doohan', 'Hyde', 7),
(7, 'Hope', 'Davis', 'Gina Baxter', 7),
(8, 'Sofia', 'Black-DElia', 'Frannie Latimer', 6),
(9, 'Michael', 'Stuhlbarg', 'Jimmy Baxter', 7);

-- --------------------------------------------------------

--
-- Table structure for table `actor_payment`
--

DROP TABLE IF EXISTS `actor_payment`;
CREATE TABLE IF NOT EXISTS `actor_payment` (
  `Actor_Payment_ID` int NOT NULL AUTO_INCREMENT,
  `Actor_Payment_Amount` int DEFAULT NULL,
  `Actor_ID` int DEFAULT NULL,
  `Series_ID` int DEFAULT NULL,
  PRIMARY KEY (`Actor_Payment_ID`),
  KEY `Actor_ID` (`Actor_ID`),
  KEY `Series_ID` (`Series_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `actor_payment`
--

INSERT INTO `actor_payment` (`Actor_Payment_ID`, `Actor_Payment_Amount`, `Actor_ID`, `Series_ID`) VALUES
(1, 10000, 1, 1),
(2, 1500, 2, 1),
(3, 13000, 3, 1),
(4, 4500, 4, 2),
(5, 500, 5, 2),
(6, 245, 6, 2),
(7, 500, 7, 3),
(8, 320, 8, 3),
(9, 13500, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
CREATE TABLE IF NOT EXISTS `directors` (
  `Director_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Director_Nickname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Director_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`Director_ID`, `First_Name`, `Last_Name`, `Director_Nickname`) VALUES
(1, 'Vince', 'Gilligan', NULL),
(2, 'Adam', 'Bernstein', NULL),
(3, 'Jim', 'McKay', NULL),
(4, 'Tricia', 'Brock', NULL),
(5, 'Bronwen', 'Hughes', NULL),
(6, 'Tim', 'Hunter', NULL),
(7, 'Tim', 'Burton', NULL),
(8, 'Gandja', 'Monteiro', NULL),
(9, 'James', 'Marshall', NULL),
(10, 'Edward', 'Berger', NULL),
(11, 'Clark', 'Johsnon', NULL),
(12, 'Eva', 'Sorhaug', NULL),
(13, 'Bryan', 'Cranston', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `director_payment`
--

DROP TABLE IF EXISTS `director_payment`;
CREATE TABLE IF NOT EXISTS `director_payment` (
  `Director_Payment_ID` int NOT NULL AUTO_INCREMENT,
  `Director_Payment_Amount` int DEFAULT NULL,
  `Episodes_ID` int DEFAULT NULL,
  `Director_ID` int DEFAULT NULL,
  PRIMARY KEY (`Director_Payment_ID`),
  KEY `Episodes_ID` (`Episodes_ID`),
  KEY `Director_ID` (`Director_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `director_payment`
--

INSERT INTO `director_payment` (`Director_Payment_ID`, `Director_Payment_Amount`, `Episodes_ID`, `Director_ID`) VALUES
(1, 12000, 2, 1),
(2, 25045, 3, 2),
(3, 35000, 4, 3),
(4, 9250, 13, 7),
(5, 32550, 14, 8),
(6, 15000, 14, 9),
(7, 14000, 20, 11),
(8, 23000, 21, 12),
(9, 3800, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
CREATE TABLE IF NOT EXISTS `episodes` (
  `Episodes_ID` int NOT NULL AUTO_INCREMENT,
  `Episode_Title` varchar(50) DEFAULT NULL,
  `Series_ID` int DEFAULT NULL,
  PRIMARY KEY (`Episodes_ID`),
  KEY `Series_ID` (`Series_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`Episodes_ID`, `Episode_Title`, `Series_ID`) VALUES
(1, 'Pilot', 1),
(2, 'Cats in the Bag...', 1),
(3, '...And the Bags in the River', 1),
(4, 'Cancer Man', 1),
(5, 'Gray Matter', 1),
(6, 'Crazy Hanful of Nothin', 1),
(7, 'A No-Rough-Styff-Type Deal', 1),
(8, 'Wednesdays Child is Full of Woe', 2),
(9, 'Woe Is the Loneliest Number', 2),
(10, 'Friend or Woe', 2),
(11, 'Woe What a Night', 2),
(12, 'You Reap What You Woe', 2),
(13, 'Quid Pro Woe', 2),
(14, 'If You Dont Woe Me by Now', 2),
(15, 'A Murder of Woes', 2),
(16, 'Part One', 3),
(17, 'Part Two', 3),
(18, 'Part Three', 3),
(19, 'Part Four', 3),
(20, 'Part Five', 3),
(21, 'Part Six', 3),
(22, 'Part Seven', 3),
(23, 'Part Eight', 3),
(24, 'Part Nine', 3),
(25, 'Part Ten', 3);

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
CREATE TABLE IF NOT EXISTS `series` (
  `Series_ID` int NOT NULL AUTO_INCREMENT,
  `Series_Title` varchar(50) DEFAULT NULL,
  `Series_Budget` int DEFAULT NULL,
  PRIMARY KEY (`Series_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`Series_ID`, `Series_Title`, `Series_Budget`) VALUES
(1, 'Breaking Bad', 3000000),
(2, 'Wednesday', 1500000),
(3, 'Your Honor', 2500000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Hi ! :)