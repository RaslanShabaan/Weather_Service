-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 18, 2017 at 07:13 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE IF NOT EXISTS `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `ix_auth_username` (`username`,`authority`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`username`, `authority`) VALUES
('ahmed', 'ROLE_USER'),
('ahmed@Weather_Service', 'ROLE_USER'),
('raslan', 'ROLE_USER'),
('Raslan@Weather_Service', 'ROLE_USER'),
('reso', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `User_Email` varchar(255) NOT NULL,
  `User_Name` varchar(255) DEFAULT NULL,
  `User_Pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`User_Email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`User_Email`, `User_Name`, `User_Pass`) VALUES
('resoraslan303@gmail.com', 'ahmed', 'c6f057b86584942e415435ffb1fa93d4'),
('raslan.shabaan@gmail.com', 'Raslan', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(255) NOT NULL,
  `enabled` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `enabled`, `password`) VALUES
('reso', 1, '202cb962ac59075b964b07152d234b70'),
('ahmed@Weather_Service', 1, 'c6f057b86584942e415435ffb1fa93d4'),
('Raslan@Weather_Service', 1, 'e10adc3949ba59abbe56e057f20f883e');
