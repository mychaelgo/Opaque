-- phpMyAdmin SQL Dump
-- version 4.1.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 06, 2014 at 05:53 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `opaque`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `following`
--

CREATE TABLE IF NOT EXISTS `following` (
  `FollowingId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(50) NOT NULL,
  `FollowingUserId` varchar(50) NOT NULL,
  PRIMARY KEY (`FollowingId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `following`
--

INSERT INTO `following` (`FollowingId`, `UserId`, `FollowingUserId`) VALUES
(1, 'A', 'B'),
(2, 'C', 'B');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tweet`
--

INSERT INTO `tweet` (`TweetId`, `UserId`, `Message`, `GeoCoordinates`, `IsRetweet`, `TotalRetweet`, `TimeStamp`) VALUES
(1, 'mychaelgo', 'mychaelgo 1', '', 'n', 1, '2013-11-08 00:00:00'),
(2, 'mychaelgo', 'mychaelgo 2', '', 'n', 0, '2013-11-08 06:00:00');

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
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `FullName`, `AccountType`, `TotalFollowing`, `TotalFollowers`, `Password`) VALUES
('haha', 'haha@haha', 0, 0, 0, 'haha'),
('hendrik', 'Hendrik Prayogo', 1, 2, 2, '123'),
('kwkw', 'kwkwkwkw', 0, 0, 0, 'kwkw'),
('mychaelgo', 'Mychael Christian Go', 1, 1, 1, '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
