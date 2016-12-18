-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: quotes
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `quotes`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `quotes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `quotes`;

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL,
  `quote` text NOT NULL,
  `author` varchar(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `flagged` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations`
--

LOCK TABLES `quotations` WRITE;
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
INSERT INTO `quotations` VALUES (1,'2016-11-08 18:19:39','\"EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES EVEN LONGER Q?UOTES \"','\"EVEN LONGER Q?UOTES',-7,'f'),(2,'2016-11-08 18:19:52','newQuote','Stephen',1,'f'),(3,'2016-11-08 18:20:15','Even newer Quote','bob',8,'f'),(4,'2016-11-08 18:20:33','The newest quote possible','textbox',8,'f'),(5,'2016-11-08 18:20:44','Jokes on you I am the newest quote','haha',8,'f'),(6,'2016-11-08 18:38:08','Is this even possible?','Every Student',8,'f'),(7,'2016-11-19 17:31:41','new final quote','asdf',8,'f'),(8,'2016-11-19 19:21:11','asd','asd',-4,'f'),(9,'2016-11-19 23:50:02','Hero\'s Never die!','Mercy',-4,'f'),(10,'2016-11-21 16:06:36','newquote by me ','me',3,'f'),(11,'2016-11-21 16:10:35','asdf','asdf',0,'f'),(12,'2016-11-21 16:17:05','twitch.tv','twitch',0,'f'),(13,'2016-11-21 16:24:50','asdf','asdfasdf',0,'f'),(14,'2016-11-21 16:36:04','asdfsadf','sadfasf4',-1,'f');
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'stephen','$2y$10$djL5WezKH83jKPJiTUvoNeWB6O1TQ.ikGb9c8aGOhH9ijwKwMpDHm','2016-11-19 21:27:50'),(3,'12345','$2y$10$prx6rMB694elc4jcYf3F8.Oi07TfXboxAHeM7q4IacfBWq9OKCOw.','2016-11-19 22:34:08'),(4,'stpehen','$2y$10$5kvLu2Qi5J0JDDyTEu2Ozu6B6RWT8KqTe6VzbEnNe.7i3vl/.EFcm','2016-11-21 14:59:39'),(10,'asf','$2y$10$yIxL.otdfNRqS3h5l36jM.Yo22Jog2Z8y97OdvyAkYGtGHHXPR6YC','2016-11-21 15:32:43'),(11,'asdfg','$2y$10$g5s/SkCPa6bObvk7QIemHO2qHLiqQo867GWCM3IxYv26L.aly6s1e','2016-11-21 15:33:55'),(12,'qwerty','$2y$10$hdZiLdVlnlxRDOae.bZt9OjmwwNVXHbgHV550ZxmffUzJuKGN/LVO','2016-11-21 16:06:19'),(13,'hanzo','$2y$10$UhG1TRFCFqwndDAYejCnV.LK0lF/338hl0h1xEoKcz28istpKmmP2','2016-11-21 16:10:55');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-21 16:38:03