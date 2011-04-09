-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.10


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema codeathon
--

CREATE DATABASE IF NOT EXISTS codeathon;
USE codeathon;

--
-- Definition of table `codeathon`.`contact`
--

DROP TABLE IF EXISTS `codeathon`.`contact`;
CREATE TABLE  `codeathon`.`contact` (
  `id` int(10) unsigned NOT NULL,
  `address` longtext,
  `email_id` text NOT NULL,
  `phone_number` decimal(10,0) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codeathon`.`contact`
--

/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
LOCK TABLES `contact` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;


--
-- Definition of table `codeathon`.`request`
--

DROP TABLE IF EXISTS `codeathon`.`request`;
CREATE TABLE  `codeathon`.`request` (
  `rid` int(10) unsigned NOT NULL,
  `blood_group` tinytext NOT NULL,
  `requester_id` int(10) unsigned NOT NULL,
  `satisfied` tinyint(1) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codeathon`.`request`
--

/*!40000 ALTER TABLE `request` DISABLE KEYS */;
LOCK TABLES `request` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;


--
-- Definition of table `codeathon`.`users`
--

DROP TABLE IF EXISTS `codeathon`.`users`;
CREATE TABLE  `codeathon`.`users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key - Auto generated.',
  `firstname` varchar(25) NOT NULL COMMENT 'First name associated with the user',
  `lastname` varchar(25) NOT NULL COMMENT 'Last name of the user',
  `age` int(10) unsigned NOT NULL COMMENT 'Age, to verify he''s eligible for donating',
  `lastdonated` date DEFAULT NULL COMMENT 'Last date when the user donated the blood.',
  `bloodgroup` varchar(3) NOT NULL COMMENT 'Blood group',
  `rhfactor` varchar(1) NOT NULL DEFAULT '+',
  `gender` varchar(8) DEFAULT NULL,
  `cholevel` float DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Manages user specific data';

--
-- Dumping data for table `codeathon`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
