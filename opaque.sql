-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2014 at 11:03 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `opaque`
--

-- --------------------------------------------------------

--
-- Table structure for table `art`
--

CREATE TABLE IF NOT EXISTS `art` (
  `artID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(50) NOT NULL,
  `artwork` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`artID`),
  UNIQUE KEY `artID` (`artID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `art`
--

INSERT INTO `art` (`artID`, `userID`, `artwork`, `date`, `description`) VALUES
(1, 'hendrik', '1.jpg', '2014-01-17 00:51:08', 'tescoba'),
(2, 'hendrik', '2.jpg', '2014-01-17 00:51:08', 'bagus ga');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE IF NOT EXISTS `favorite` (
  `FavoriteId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(50) NOT NULL,
  `TargetId` varchar(50) NOT NULL,
  `TargetType` varchar(50) NOT NULL COMMENT 'Belum tau ini apaan',
  PRIMARY KEY (`FavoriteId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `favorite`
--


-- --------------------------------------------------------

--
-- Table structure for table `following`
--

CREATE TABLE IF NOT EXISTS `following` (
  `FollowingId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(50) NOT NULL,
  `FollowingUserId` varchar(50) NOT NULL,
  PRIMARY KEY (`FollowingId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `following`
--

INSERT INTO `following` (`FollowingId`, `UserId`, `FollowingUserId`) VALUES
(3, 'mychaelgo', 'kwkw'),
(4, 'kwkw', 'mychaelgo'),
(5, 'hendrik', 'kwkw'),
(6, 'haha', 'kwkw');

-- --------------------------------------------------------

--
-- Table structure for table `mention`
--

CREATE TABLE IF NOT EXISTS `mention` (
  `MentionId` int(11) NOT NULL AUTO_INCREMENT,
  `TweetId` int(11) NOT NULL,
  `UserId` varchar(50) NOT NULL,
  PRIMARY KEY (`MentionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mention`
--


-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `MessageId` int(11) NOT NULL AUTO_INCREMENT,
  `Content` text NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`MessageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `message`
--


-- --------------------------------------------------------

--
-- Table structure for table `tweet`
--

CREATE TABLE IF NOT EXISTS `tweet` (
  `TweetId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(50) NOT NULL,
  `Message` text NOT NULL,
  `GeoCoordinates` varchar(100) NOT NULL,
  `IsRetweet` char(1) NOT NULL,
  `TotalRetweet` int(11) NOT NULL,
  `TimeStamp` datetime NOT NULL,
  PRIMARY KEY (`TweetId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tweet`
--

INSERT INTO `tweet` (`TweetId`, `UserId`, `Message`, `GeoCoordinates`, `IsRetweet`, `TotalRetweet`, `TimeStamp`) VALUES
(1, 'mychaelgo', 'mychaelgo 1', '', 'n', 1, '2013-11-08 00:00:00'),
(2, 'mychaelgo', 'mychaelgo 2', '', 'n', 0, '2013-11-08 06:00:00'),
(3, 'kwkw', 'testing dong', '', 'n', 0, '0000-00-00 00:00:00'),
(4, 'hendrik', '123456', '', 'n', 0, '2014-01-06 09:37:31'),
(5, 'hendrik', 'tes aja nih boleh ga', '', '0', 0, '2014-01-16 22:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserId` varchar(50) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `AccountType` int(50) NOT NULL,
  `TotalFollowing` int(11) NOT NULL,
  `TotalFollowers` int(11) NOT NULL,
  `Password` varchar(11) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `FullName`, `AccountType`, `TotalFollowing`, `TotalFollowers`, `Password`, `Photo`) VALUES
('haha', 'haha@haha', 0, 0, 0, 'haha', ''),
('hendrik', 'Hendrik Prayogo', 1, 2, 2, '123', 'profile.jpg'),
('kwkw', 'kwkwkwkw', 0, 0, 0, 'kwkw', ''),
('mychaelgo', 'Mychael Christian Go', 1, 1, 1, '123', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
