-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_closed` tinyint(1) DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'et','2019-11-28 06:18:17',NULL,NULL),(2,'enim','2019-11-28 06:18:17',NULL,NULL),(3,'repudiandae','2019-11-28 06:18:17',1,'2019-11-28 06:19:02'),(4,'rerum','2019-11-28 06:18:17',NULL,NULL),(5,'magni','2019-11-28 06:18:17',1,'2019-11-28 06:19:02');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_banned` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
INSERT INTO `communities_users` VALUES (1,7,NULL,NULL),(1,46,NULL,NULL),(2,42,NULL,NULL),(4,91,NULL,NULL),(6,26,NULL,NULL),(6,77,NULL,NULL),(7,3,NULL,NULL),(7,52,NULL,NULL),(8,3,NULL,NULL),(9,40,NULL,NULL),(11,75,NULL,NULL),(13,79,NULL,NULL),(14,10,NULL,NULL),(14,44,NULL,NULL),(15,23,NULL,NULL),(15,58,NULL,NULL),(16,6,NULL,NULL),(16,67,NULL,NULL),(20,50,NULL,NULL),(21,50,NULL,NULL),(22,35,NULL,NULL),(22,85,NULL,NULL),(22,96,NULL,NULL),(26,55,NULL,NULL),(26,64,NULL,NULL),(26,75,NULL,NULL),(26,90,NULL,NULL),(28,20,NULL,NULL),(28,22,NULL,NULL),(28,70,NULL,NULL),(28,78,NULL,NULL),(28,88,NULL,NULL),(29,12,1,NULL),(30,54,NULL,NULL),(30,78,NULL,NULL),(35,100,NULL,NULL),(38,33,NULL,NULL),(39,100,NULL,NULL),(41,10,NULL,NULL),(41,22,NULL,NULL),(43,91,NULL,NULL),(44,44,NULL,NULL),(45,50,NULL,NULL),(50,42,NULL,NULL),(51,56,1,NULL),(53,59,NULL,NULL),(54,32,NULL,NULL),(55,9,NULL,NULL),(57,59,NULL,NULL),(58,38,NULL,NULL),(58,69,NULL,NULL),(58,72,NULL,NULL),(59,38,NULL,NULL),(61,65,NULL,1),(63,10,NULL,NULL),(63,83,NULL,NULL),(66,20,NULL,NULL),(66,39,NULL,NULL),(66,100,NULL,NULL),(67,84,NULL,NULL),(68,6,NULL,NULL),(68,24,NULL,NULL),(70,42,NULL,NULL),(70,81,NULL,NULL),(71,84,NULL,NULL),(73,42,NULL,NULL),(75,39,NULL,NULL),(77,51,NULL,NULL),(77,71,NULL,NULL),(81,40,NULL,NULL),(82,10,NULL,NULL),(82,29,NULL,NULL),(82,83,NULL,NULL),(82,89,NULL,NULL),(83,49,NULL,NULL),(85,10,NULL,NULL),(85,28,NULL,NULL),(86,58,NULL,NULL),(87,31,NULL,NULL),(87,84,NULL,NULL),(88,90,NULL,NULL),(89,17,NULL,NULL),(91,20,NULL,NULL),(91,47,NULL,NULL),(91,67,NULL,NULL),(92,32,NULL,NULL),(93,71,NULL,NULL),(94,41,NULL,NULL),(95,11,NULL,NULL),(95,30,NULL,NULL),(95,57,NULL,NULL),(95,75,NULL,NULL),(96,68,NULL,NULL),(97,96,NULL,NULL),(98,42,NULL,NULL),(98,65,NULL,1),(99,61,NULL,NULL),(99,70,NULL,NULL),(100,1,1,NULL),(100,28,NULL,NULL);
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (1,1,5,'1975-07-20 22:01:49','2014-08-26 06:51:43'),(1,65,5,'2008-02-12 15:22:17','1972-03-30 01:51:21'),(1,87,5,'2011-02-04 15:26:14','1995-06-16 11:19:57'),(1,88,1,'1987-08-16 16:36:59','2012-11-10 02:53:28'),(2,65,3,'1986-07-10 12:34:51','2007-12-10 09:34:41'),(3,66,5,'1971-05-24 16:04:03','1986-10-29 21:08:00'),(3,95,3,'2011-12-27 14:06:53','1976-11-30 15:08:32'),(4,1,1,'1997-09-13 10:10:55','2010-08-25 11:27:31'),(4,16,1,'1987-12-25 17:08:08','2010-12-27 01:21:24'),(8,44,3,'1988-02-24 04:59:50','2011-10-18 16:34:03'),(18,45,5,'1981-02-22 05:35:50','2011-12-28 02:29:59'),(18,90,3,'2010-05-11 09:52:41','1992-12-25 22:42:46'),(19,24,4,'1985-01-29 09:49:01','1971-09-13 21:16:21'),(19,50,2,'1996-05-28 16:39:57','2006-01-14 05:51:25'),(19,99,1,'1985-04-30 17:12:54','1983-10-15 00:56:16'),(19,100,4,'2003-02-18 13:54:24','2016-08-09 11:46:19'),(21,39,1,'1986-03-23 20:23:43','1974-05-05 03:57:28'),(21,44,1,'1992-03-23 12:16:51','1993-10-12 18:43:27'),(21,73,5,'1990-05-04 13:13:05','1994-03-16 02:22:49'),(22,1,1,'2008-03-07 20:46:12','1985-05-11 17:59:48'),(22,3,1,'2017-09-17 02:44:11','1998-03-12 22:02:27'),(23,19,1,'1982-06-06 08:05:50','1984-11-14 06:54:27'),(24,3,2,'1990-06-05 02:12:29','2005-05-14 22:28:33'),(24,23,3,'1987-10-01 13:42:18','1982-10-31 13:50:59'),(25,62,3,'2009-12-28 00:09:43','1993-02-14 05:35:08'),(25,68,2,'2004-01-29 18:38:16','2002-12-14 11:20:13'),(27,46,2,'1993-11-04 17:58:55','2007-07-15 20:15:06'),(27,98,2,'2000-10-09 23:50:52','1981-06-05 21:44:09'),(29,2,5,'1983-03-19 00:35:01','1997-10-12 17:22:17'),(29,82,1,'2002-01-02 15:13:20','1991-12-19 08:09:35'),(31,39,2,'1977-03-08 12:11:29','2012-10-20 21:17:49'),(32,29,2,'1974-05-20 01:15:16','1991-10-02 01:17:20'),(33,79,4,'1979-04-24 00:56:47','1975-12-13 13:17:57'),(33,97,4,'2002-09-08 18:28:37','2008-06-03 20:25:16'),(34,5,1,'1996-12-04 08:11:15','2007-09-29 12:59:37'),(35,40,1,'2012-08-04 14:27:12','1992-06-05 14:00:16'),(36,82,2,'1977-08-05 08:12:44','1998-10-14 03:06:07'),(37,30,5,'1977-10-16 19:03:54','1981-06-05 12:21:06'),(37,88,5,'1982-06-15 21:27:33','1987-05-09 14:39:01'),(37,91,3,'2001-04-20 02:38:31','1992-05-07 06:05:54'),(38,88,2,'1972-12-18 01:55:48','2004-05-24 06:12:58'),(39,31,2,'1997-12-28 01:10:24','1970-05-13 17:04:55'),(39,51,4,'1984-03-17 00:29:57','1978-02-01 22:49:06'),(40,11,1,'2006-05-21 08:11:35','1994-11-22 02:50:52'),(40,79,2,'1990-08-20 20:10:15','2003-07-05 19:01:07'),(41,5,5,'2007-12-13 02:14:30','2013-05-19 05:58:45'),(41,99,3,'1977-11-19 18:03:06','2008-10-19 01:28:06'),(43,43,4,'2010-05-13 22:25:46','1994-12-24 08:17:51'),(43,46,4,'1999-10-10 06:36:28','2011-06-24 03:17:34'),(46,22,4,'1997-12-17 05:44:25','1986-04-02 03:24:47'),(47,66,1,'1983-02-17 20:18:39','1990-07-22 10:06:58'),(48,1,3,'1986-08-04 11:20:38','2019-08-01 16:42:14'),(48,33,2,'2013-01-10 21:19:58','1994-03-14 06:20:56'),(49,56,3,'2016-04-23 09:33:01','1972-11-27 18:53:11'),(51,7,1,'1973-04-23 18:23:48','2001-05-01 16:41:46'),(51,30,5,'2013-12-19 10:07:49','2012-06-23 08:04:47'),(52,36,5,'2018-04-09 12:04:41','2011-11-20 22:11:50'),(53,67,5,'2018-10-20 06:24:17','1984-02-02 11:09:40'),(54,84,1,'1994-05-27 11:47:15','1997-09-14 13:40:17'),(56,3,3,'2005-02-22 08:16:55','2012-06-23 08:42:04'),(56,47,2,'1981-05-22 06:50:50','2005-05-20 07:04:17'),(58,65,4,'2007-09-29 16:55:01','1979-08-12 17:35:51'),(61,50,2,'1975-08-29 02:06:49','1985-08-05 05:27:48'),(62,8,4,'2005-11-19 04:28:53','1971-04-23 10:40:27'),(62,81,4,'1980-12-25 05:08:55','1997-03-23 01:25:06'),(65,39,4,'1974-09-16 14:17:10','2006-12-26 13:18:58'),(65,43,4,'1994-01-06 23:43:33','2014-05-09 17:33:11'),(65,49,5,'2002-01-16 08:04:30','2014-04-14 00:04:28'),(66,23,3,'1975-02-28 21:22:14','1978-12-14 11:10:34'),(67,1,4,'2003-10-24 14:05:04','1974-06-13 14:21:42'),(67,93,3,'2013-05-21 06:07:07','2017-05-10 05:18:29'),(68,55,4,'2002-07-14 09:15:23','2018-10-24 18:58:53'),(68,66,2,'1997-04-07 22:41:11','1978-03-13 20:59:29'),(68,92,2,'1992-02-29 02:18:17','1970-07-24 10:11:27'),(69,47,4,'2010-07-24 11:25:12','2010-04-26 13:18:56'),(69,95,3,'1988-07-31 15:27:50','2008-08-12 00:23:12'),(71,87,5,'2003-09-12 08:43:49','2011-02-08 10:38:29'),(72,94,5,'1972-08-08 23:24:10','1977-08-16 10:11:25'),(73,29,1,'1971-01-05 18:03:39','1986-08-09 02:51:22'),(75,73,1,'2006-01-30 16:41:13','2002-09-07 05:29:46'),(76,43,3,'2002-04-08 18:45:19','2004-02-08 18:27:41'),(82,88,2,'1984-09-19 09:08:58','2002-06-01 07:54:46'),(83,88,5,'1975-09-17 18:50:10','1990-01-10 02:29:04'),(84,55,5,'1991-09-14 20:27:35','1985-09-10 20:54:49'),(85,28,2,'1998-12-26 16:05:39','1984-07-30 03:15:48'),(85,36,5,'2001-05-12 07:40:15','1999-01-16 00:55:32'),(86,45,3,'2004-06-20 00:47:48','1973-10-18 11:29:41'),(86,99,4,'2014-03-07 05:39:30','2002-02-05 17:24:28'),(88,79,1,'2004-01-21 16:46:14','1975-01-08 05:45:10'),(90,82,3,'1976-07-08 08:11:48','1972-08-13 16:42:07'),(91,54,2,'1974-12-28 18:33:59','1999-12-22 12:07:10'),(92,16,4,'2006-10-23 16:22:12','1987-05-18 21:03:21'),(93,14,3,'2017-08-26 10:56:24','1982-09-03 02:43:32'),(94,8,3,'1982-01-24 17:17:45','2019-10-22 22:35:21'),(95,7,4,'1988-06-09 02:36:11','1990-03-30 16:59:13'),(95,9,3,'1977-04-08 22:20:32','1975-10-30 09:05:20'),(95,55,2,'1998-08-31 05:06:26','2008-08-04 17:49:59'),(96,91,1,'1979-09-27 18:16:58','1995-11-28 14:50:25'),(97,45,5,'1996-01-20 04:08:18','2016-05-11 04:41:36'),(98,56,4,'1994-10-11 04:33:37','1992-06-22 19:22:01');
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
INSERT INTO `friendship_statuses` VALUES (1,'consequatur'),(3,'earum'),(4,'molestias'),(2,'porro'),(5,'Rejected');
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `target_type_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,27,43,2,'2019-12-05 09:47:33'),(2,33,67,2,'2019-12-05 09:47:33'),(3,84,8,5,'2019-12-05 09:47:33'),(4,17,18,2,'2019-12-05 09:47:33'),(5,37,70,2,'2019-12-05 09:47:33'),(6,87,13,1,'2019-12-05 09:47:33'),(7,96,58,5,'2019-12-05 09:47:33'),(8,23,19,2,'2019-12-05 09:47:33'),(9,55,8,4,'2019-12-05 09:47:33'),(10,53,36,2,'2019-12-05 09:47:33'),(11,5,56,4,'2019-12-05 09:47:33'),(12,55,80,2,'2019-12-05 09:47:33'),(13,36,73,3,'2019-12-05 09:47:33'),(14,61,36,5,'2019-12-05 09:47:33'),(15,67,51,3,'2019-12-05 09:47:33'),(16,14,10,1,'2019-12-05 09:47:33'),(17,94,56,5,'2019-12-05 09:47:33'),(18,21,9,5,'2019-12-05 09:47:33'),(19,78,45,5,'2019-12-05 09:47:33'),(20,23,39,2,'2019-12-05 09:47:33'),(21,15,95,2,'2019-12-05 09:47:33'),(22,65,32,4,'2019-12-05 09:47:33'),(23,38,88,2,'2019-12-05 09:47:33'),(24,63,38,5,'2019-12-05 09:47:33'),(25,86,31,5,'2019-12-05 09:47:33'),(26,88,50,5,'2019-12-05 09:47:33'),(27,86,67,4,'2019-12-05 09:47:33'),(28,79,65,5,'2019-12-05 09:47:33'),(29,55,2,3,'2019-12-05 09:47:33'),(30,13,32,1,'2019-12-05 09:47:33'),(31,2,53,3,'2019-12-05 09:47:33'),(32,18,25,4,'2019-12-05 09:47:33'),(33,69,38,5,'2019-12-05 09:47:33'),(34,91,14,5,'2019-12-05 09:47:33'),(35,31,72,4,'2019-12-05 09:47:33'),(36,7,39,4,'2019-12-05 09:47:33'),(37,56,56,1,'2019-12-05 09:47:33'),(38,95,34,5,'2019-12-05 09:47:33'),(39,21,52,5,'2019-12-05 09:47:33'),(40,29,54,5,'2019-12-05 09:47:33'),(41,45,80,4,'2019-12-05 09:47:33'),(42,87,35,1,'2019-12-05 09:47:33'),(43,80,46,5,'2019-12-05 09:47:33'),(44,22,32,5,'2019-12-05 09:47:33'),(45,80,13,2,'2019-12-05 09:47:33'),(46,78,21,4,'2019-12-05 09:47:33'),(47,90,38,1,'2019-12-05 09:47:33'),(48,80,44,4,'2019-12-05 09:47:33'),(49,60,62,2,'2019-12-05 09:47:33'),(50,67,43,1,'2019-12-05 09:47:33'),(51,39,55,3,'2019-12-05 09:47:33'),(52,14,100,3,'2019-12-05 09:47:33'),(53,98,12,4,'2019-12-05 09:47:33'),(54,85,32,1,'2019-12-05 09:47:33'),(55,32,43,1,'2019-12-05 09:47:33'),(56,64,61,1,'2019-12-05 09:47:33'),(57,84,81,3,'2019-12-05 09:47:33'),(58,13,11,1,'2019-12-05 09:47:33'),(59,35,34,4,'2019-12-05 09:47:33'),(60,26,32,5,'2019-12-05 09:47:33'),(61,9,99,4,'2019-12-05 09:47:33'),(62,53,53,1,'2019-12-05 09:47:33'),(63,64,4,2,'2019-12-05 09:47:33'),(64,38,99,5,'2019-12-05 09:47:33'),(65,10,7,1,'2019-12-05 09:47:33'),(66,83,13,1,'2019-12-05 09:47:33'),(67,28,1,1,'2019-12-05 09:47:33'),(68,86,77,2,'2019-12-05 09:47:33'),(69,95,98,1,'2019-12-05 09:47:33'),(70,31,38,5,'2019-12-05 09:47:33'),(71,68,52,3,'2019-12-05 09:47:33'),(72,23,45,3,'2019-12-05 09:47:33'),(73,48,69,5,'2019-12-05 09:47:33'),(74,87,38,2,'2019-12-05 09:47:33'),(75,39,2,5,'2019-12-05 09:47:33'),(76,62,27,3,'2019-12-05 09:47:33'),(77,65,77,5,'2019-12-05 09:47:33'),(78,7,72,2,'2019-12-05 09:47:33'),(79,79,76,3,'2019-12-05 09:47:33'),(80,88,8,4,'2019-12-05 09:47:33'),(81,50,27,5,'2019-12-05 09:47:33'),(82,31,6,2,'2019-12-05 09:47:33'),(83,63,8,3,'2019-12-05 09:47:33'),(84,14,26,5,'2019-12-05 09:47:33'),(85,61,40,1,'2019-12-05 09:47:33'),(86,68,87,2,'2019-12-05 09:47:33'),(87,93,71,4,'2019-12-05 09:47:33'),(88,73,30,2,'2019-12-05 09:47:33'),(89,70,51,3,'2019-12-05 09:47:33'),(90,74,34,3,'2019-12-05 09:47:33'),(91,35,31,3,'2019-12-05 09:47:33'),(92,63,58,1,'2019-12-05 09:47:33'),(93,43,3,5,'2019-12-05 09:47:33'),(94,10,98,3,'2019-12-05 09:47:33'),(95,97,11,4,'2019-12-05 09:47:33'),(96,84,31,5,'2019-12-05 09:47:33'),(97,9,41,4,'2019-12-05 09:47:33'),(98,77,45,5,'2019-12-05 09:47:33'),(99,28,60,1,'2019-12-05 09:47:33'),(100,3,65,1,'2019-12-05 09:47:33');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,65,'inventore',582591000,'{\"inventore\": \"582591000\"}','1984-01-14 05:15:35','2019-11-28 09:10:17'),(2,2,8,'atque',0,'{\"atque\": \"0\"}','1973-02-03 05:23:47','2019-11-28 09:10:17'),(3,2,45,'et',8515,'{\"et\": \"8515\"}','2000-09-21 07:26:45','2019-11-28 09:10:17'),(4,1,1,'qui',79328339,'{\"qui\": \"79328339\"}','2012-10-17 14:35:40','2019-11-28 09:10:17'),(5,1,68,'quam',23990744,'{\"quam\": \"23990744\"}','2018-11-03 05:39:31','2019-11-28 09:10:17'),(6,2,38,'modi',7830100,'{\"modi\": \"7830100\"}','1980-04-27 16:23:23','2019-11-28 09:10:17'),(7,2,85,'minima',888998,'{\"minima\": \"888998\"}','1973-03-25 23:40:02','2019-11-28 09:10:17'),(8,1,10,'nostrum',8,'{\"nostrum\": \"8\"}','2017-07-23 09:42:28','2019-11-28 09:10:17'),(9,2,94,'eum',6,'{\"eum\": \"6\"}','1980-02-28 18:02:12','2019-11-28 09:10:17'),(10,2,39,'modi',61443530,'{\"modi\": \"61443530\"}','2001-09-23 10:08:35','2019-11-28 09:10:17'),(11,3,12,'quia',247781,'{\"quia\": \"247781\"}','1985-11-23 03:57:51','2019-11-28 09:10:17'),(12,2,43,'itaque',843857,'{\"itaque\": \"843857\"}','1992-09-19 18:13:21','2019-11-28 09:10:17'),(13,1,79,'consequatur',77091827,'{\"consequatur\": \"77091827\"}','2016-10-13 05:41:54','2019-11-28 09:10:17'),(14,2,66,'perferendis',0,'{\"perferendis\": \"0\"}','2010-05-09 21:22:40','2019-11-28 09:10:17'),(15,3,93,'voluptatem',0,'{\"voluptatem\": \"0\"}','1991-03-20 15:51:48','2019-11-28 09:10:17'),(16,1,64,'qui',329840,'{\"qui\": \"329840\"}','1972-08-24 10:33:41','2019-11-28 09:10:17'),(17,1,42,'voluptas',8,'{\"voluptas\": \"8\"}','1982-04-02 23:53:23','2019-11-28 09:10:17'),(18,2,19,'magnam',5,'{\"magnam\": \"5\"}','1973-06-29 23:59:17','2019-11-28 09:10:17'),(19,3,66,'quas',38241588,'{\"quas\": \"38241588\"}','1970-08-10 17:24:15','2019-11-28 09:10:17'),(20,1,74,'ducimus',54793376,'{\"ducimus\": \"54793376\"}','2012-12-30 15:37:35','2019-11-28 09:10:17'),(21,1,69,'maxime',377113,'{\"maxime\": \"377113\"}','2013-11-15 05:52:38','2019-11-28 09:10:17'),(22,2,25,'architecto',53,'{\"architecto\": \"53\"}','1981-09-10 23:28:20','2019-11-28 09:10:17'),(23,3,15,'mollitia',49244,'{\"mollitia\": \"49244\"}','2008-07-28 04:31:06','2019-11-28 09:10:17'),(24,3,100,'molestias',69,'{\"molestias\": \"69\"}','2007-07-01 07:06:03','2019-11-28 09:10:17'),(25,3,55,'nobis',72900,'{\"nobis\": \"72900\"}','1974-06-23 08:28:16','2019-11-28 09:10:17'),(26,1,76,'beatae',782500216,'{\"beatae\": \"782500216\"}','1991-04-10 05:45:50','2019-11-28 09:10:17'),(27,1,14,'ea',18,'{\"ea\": \"18\"}','2018-12-24 02:45:39','2019-11-28 09:10:17'),(28,1,40,'id',65733330,'{\"id\": \"65733330\"}','1980-09-01 00:53:43','2019-11-28 09:10:17'),(29,1,57,'et',5434,'{\"et\": \"5434\"}','1992-09-30 06:22:52','2019-11-28 09:10:17'),(30,3,67,'qui',9948,'{\"qui\": \"9948\"}','1972-02-18 08:42:13','2019-11-28 09:10:17'),(31,3,61,'laborum',723938,'{\"laborum\": \"723938\"}','1984-02-29 07:50:26','2019-11-28 09:10:17'),(32,1,5,'deleniti',747950,'{\"deleniti\": \"747950\"}','2010-06-30 23:38:41','2019-11-28 09:10:17'),(33,1,40,'voluptates',7533,'{\"voluptates\": \"7533\"}','2015-06-25 13:57:41','2019-11-28 09:10:17'),(34,3,87,'commodi',271,'{\"commodi\": \"271\"}','1976-02-06 05:45:58','2019-11-28 09:10:17'),(35,2,15,'officia',0,'{\"officia\": \"0\"}','2000-03-25 21:00:19','2019-11-28 09:10:17'),(36,3,11,'minus',928538,'{\"minus\": \"928538\"}','1974-11-30 02:05:17','2019-11-28 09:10:17'),(37,2,10,'impedit',6,'{\"impedit\": \"6\"}','1983-03-26 12:31:57','2019-11-28 09:10:17'),(38,3,18,'quos',7,'{\"quos\": \"7\"}','1975-11-10 12:56:08','2019-11-28 09:10:17'),(39,1,58,'laboriosam',755689,'{\"laboriosam\": \"755689\"}','1975-12-09 03:20:23','2019-11-28 09:10:17'),(40,1,37,'omnis',58330,'{\"omnis\": \"58330\"}','1990-10-29 02:25:46','2019-11-28 09:10:17'),(41,3,12,'et',0,'{\"et\": \"0\"}','1972-12-11 17:25:36','2019-11-28 09:10:17'),(42,1,46,'quis',43519,'{\"quis\": \"43519\"}','1994-06-01 15:59:46','2019-11-28 09:10:17'),(43,2,96,'sapiente',54,'{\"sapiente\": \"54\"}','1976-06-04 14:46:58','2019-11-28 09:10:17'),(44,3,39,'sed',7,'{\"sed\": \"7\"}','2014-05-03 01:47:11','2019-11-28 09:10:17'),(45,2,6,'officia',9557,'{\"officia\": \"9557\"}','1982-03-26 17:08:12','2019-11-28 09:10:17'),(46,1,14,'in',829,'{\"in\": \"829\"}','2004-06-03 21:50:31','2019-11-28 09:10:17'),(47,1,53,'nihil',686360119,'{\"nihil\": \"686360119\"}','1983-12-14 00:52:23','2019-11-28 09:10:17'),(48,1,20,'at',25,'{\"at\": \"25\"}','2006-07-26 01:54:31','2019-11-28 09:10:17'),(49,3,42,'aut',44,'{\"aut\": \"44\"}','1985-08-27 07:02:12','2019-11-28 09:10:17'),(50,2,49,'voluptatem',8713323,'{\"voluptatem\": \"8713323\"}','1980-01-07 22:34:52','2019-11-28 09:10:17'),(51,3,17,'est',468926,'{\"est\": \"468926\"}','1985-04-25 01:26:39','2019-11-28 09:10:17'),(52,3,38,'fuga',719,'{\"fuga\": \"719\"}','1995-11-17 13:16:56','2019-11-28 09:10:17'),(53,3,41,'praesentium',171381,'{\"praesentium\": \"171381\"}','1984-07-06 03:21:10','2019-11-28 09:10:17'),(54,3,88,'recusandae',1219813,'{\"recusandae\": \"1219813\"}','1996-08-27 17:47:42','2019-11-28 09:10:17'),(55,2,19,'dolores',900186,'{\"dolores\": \"900186\"}','2005-04-09 06:28:14','2019-11-28 09:10:17'),(56,2,28,'eveniet',129171688,'{\"eveniet\": \"129171688\"}','1989-08-11 08:46:54','2019-11-28 09:10:17'),(57,2,82,'omnis',4,'{\"omnis\": \"4\"}','2014-06-27 16:28:02','2019-11-28 09:10:17'),(58,3,28,'minima',732934274,'{\"minima\": \"732934274\"}','2009-08-30 16:01:20','2019-11-28 09:10:17'),(59,2,94,'commodi',0,'{\"commodi\": \"0\"}','2003-11-25 09:12:46','2019-11-28 09:10:17'),(60,1,85,'quia',47440,'{\"quia\": \"47440\"}','2009-04-01 23:40:02','2019-11-28 09:10:17'),(61,1,44,'alias',0,'{\"alias\": \"0\"}','2018-02-16 23:10:22','2019-11-28 09:10:17'),(62,3,62,'nesciunt',743,'{\"nesciunt\": \"743\"}','1986-03-24 05:32:59','2019-11-28 09:10:17'),(63,1,80,'porro',5897,'{\"porro\": \"5897\"}','1986-12-21 00:19:09','2019-11-28 09:10:17'),(64,2,11,'id',417528,'{\"id\": \"417528\"}','1997-03-08 15:22:10','2019-11-28 09:10:17'),(65,1,15,'omnis',825798,'{\"omnis\": \"825798\"}','1977-03-11 13:51:31','2019-11-28 09:10:17'),(66,2,42,'tempora',40048,'{\"tempora\": \"40048\"}','1973-05-21 12:14:45','2019-11-28 09:10:17'),(67,2,66,'enim',9175,'{\"enim\": \"9175\"}','2001-08-29 11:55:47','2019-11-28 09:10:17'),(68,1,4,'qui',0,'{\"qui\": \"0\"}','2011-05-15 18:10:36','2019-11-28 09:10:17'),(69,1,20,'autem',0,'{\"autem\": \"0\"}','2000-12-15 06:32:11','2019-11-28 09:10:17'),(70,1,86,'dicta',63,'{\"dicta\": \"63\"}','1997-03-07 08:13:46','2019-11-28 09:10:17'),(71,3,72,'quis',95914074,'{\"quis\": \"95914074\"}','1986-11-13 05:59:26','2019-11-28 09:10:17'),(72,2,100,'ut',0,'{\"ut\": \"0\"}','2003-08-20 05:35:17','2019-11-28 09:10:17'),(73,3,85,'voluptatem',1666,'{\"voluptatem\": \"1666\"}','2018-09-07 06:49:33','2019-11-28 09:10:17'),(74,2,25,'officiis',908606988,'{\"officiis\": \"908606988\"}','1989-01-09 09:59:33','2019-11-28 09:10:17'),(75,1,68,'alias',13910,'{\"alias\": \"13910\"}','1979-07-09 13:01:09','2019-11-28 09:10:17'),(76,2,63,'provident',0,'{\"provident\": \"0\"}','1985-01-04 10:06:50','2019-11-28 09:10:17'),(77,2,11,'est',9545595,'{\"est\": \"9545595\"}','2011-12-19 09:04:33','2019-11-28 09:10:17'),(78,2,67,'esse',8044,'{\"esse\": \"8044\"}','1992-08-16 20:02:09','2019-11-28 09:10:17'),(79,1,100,'asperiores',2062,'{\"asperiores\": \"2062\"}','1983-10-23 02:42:29','2019-11-28 09:10:17'),(80,1,100,'qui',7656272,'{\"qui\": \"7656272\"}','2011-08-11 08:42:58','2019-11-28 09:10:17'),(81,3,98,'iure',415782436,'{\"iure\": \"415782436\"}','1990-02-20 11:22:31','2019-11-28 09:10:17'),(82,2,90,'cumque',170422122,'{\"cumque\": \"170422122\"}','1986-07-23 03:25:12','2019-11-28 09:10:17'),(83,1,55,'eum',0,'{\"eum\": \"0\"}','1991-08-04 12:49:24','2019-11-28 09:10:17'),(84,1,4,'nemo',866513929,'{\"nemo\": \"866513929\"}','2008-06-26 18:38:38','2019-11-28 09:10:17'),(85,2,54,'voluptatem',0,'{\"voluptatem\": \"0\"}','1975-11-14 22:27:17','2019-11-28 09:10:17'),(86,2,56,'ea',172,'{\"ea\": \"172\"}','2013-01-24 04:46:11','2019-11-28 09:10:17'),(87,2,21,'voluptates',1,'{\"voluptates\": \"1\"}','2018-05-27 21:09:10','2019-11-28 09:10:17'),(88,1,36,'aut',69141,'{\"aut\": \"69141\"}','1977-08-15 21:10:22','2019-11-28 09:10:17'),(89,3,15,'eum',5,'{\"eum\": \"5\"}','1988-06-26 20:12:00','2019-11-28 09:10:17'),(90,2,67,'nihil',2,'{\"nihil\": \"2\"}','1975-01-13 22:00:38','2019-11-28 09:10:17'),(91,1,88,'quisquam',3111517,'{\"quisquam\": \"3111517\"}','2019-03-17 11:51:21','2019-11-28 09:10:17'),(92,2,38,'ut',6744463,'{\"ut\": \"6744463\"}','1979-08-18 10:35:21','2019-11-28 09:10:17'),(93,1,26,'magni',9981,'{\"magni\": \"9981\"}','1972-11-28 16:54:31','2019-11-28 09:10:17'),(94,1,14,'omnis',140113,'{\"omnis\": \"140113\"}','1976-06-04 01:16:45','2019-11-28 09:10:17'),(95,1,92,'suscipit',31493,'{\"suscipit\": \"31493\"}','1980-12-26 10:59:26','2019-11-28 09:10:17'),(96,1,20,'rerum',685,'{\"rerum\": \"685\"}','1974-08-19 14:12:27','2019-11-28 09:10:17'),(97,2,21,'velit',9032,'{\"velit\": \"9032\"}','1987-03-29 00:09:52','2019-11-28 09:10:17'),(98,2,44,'laudantium',8303,'{\"laudantium\": \"8303\"}','2011-12-13 18:10:32','2019-11-28 09:10:17'),(99,2,58,'aut',2155621,'{\"aut\": \"2155621\"}','1975-10-26 09:12:04','2019-11-28 09:10:17'),(100,1,56,'illo',4,'{\"illo\": \"4\"}','2013-01-24 10:19:24','2019-11-28 09:10:17');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (3,'audio'),(1,'photo'),(2,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `attached_media_id` int(10) unsigned DEFAULT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,98,26,'Qui eligendi aut numquam sit aut et. Dignissimos doloribus suscipit voluptas autem molestias quis totam. Voluptatem officiis quo praesentium quia ipsam omnis ad.',81,0,0,'1975-06-21 23:10:59'),(2,35,97,'Enim soluta iste officiis velit id et dolor. Corporis sed odit animi dolores numquam non. Facere perspiciatis est aut corrupti qui ab harum. Consequatur quia quidem neque et dolor.',NULL,0,0,'1990-07-08 11:42:31'),(3,78,1,'Eligendi ut id velit dolores repudiandae consequatur aut a. Sit sint est unde modi non. Eligendi vel sit magnam natus occaecati est quod.',NULL,0,0,'2019-02-09 23:06:37'),(4,67,35,'Qui et molestiae maxime quia quis praesentium officiis. Quia architecto perspiciatis modi eos iure quo aut. Ut est alias rem et.',30,1,1,'1984-10-30 12:46:04'),(5,71,52,'Ipsam sit labore autem qui molestiae excepturi quas voluptatum. Et dolorem cupiditate sint fugit. Enim inventore sit qui consectetur maiores.',NULL,0,1,'2013-09-14 08:28:36'),(6,46,3,'Ut voluptate sed soluta qui. Odit culpa a quam inventore. Et voluptatem placeat ipsam unde velit quis quia. Enim est ea illum dignissimos ratione.',42,1,0,'1995-01-11 22:04:10'),(7,22,3,'Explicabo voluptatum earum numquam eos et. Corporis enim mollitia inventore ut. Laborum delectus molestias quas accusantium quibusdam et eos. Qui placeat occaecati ipsa et dolor cupiditate asperiores.',NULL,0,1,'2004-12-01 04:59:49'),(8,4,3,'Quis asperiores ipsa facilis ut. Exercitationem fuga quo iure natus ipsum perferendis. Perferendis ut sit modi. Porro voluptas doloribus error ipsum iste ducimus libero est.',68,1,0,'1987-11-13 07:27:14'),(9,73,3,'Iure quas dolor quis quisquam est non. At aliquid placeat expedita rerum placeat saepe quaerat. Omnis ut saepe maxime ab. Nisi id molestiae ipsa tenetur.',NULL,1,1,'2006-11-15 20:37:45'),(10,47,3,'Autem optio iste et. Aut quod enim et ex voluptas accusantium. Laboriosam provident illum explicabo eveniet sit. Itaque voluptate ipsum et et et nobis sed.',NULL,0,1,'1991-05-13 04:56:21'),(11,22,3,'Enim eum quia sint qui. Id dolor eligendi eos dicta eaque nisi. Autem mollitia id unde et saepe.',NULL,0,0,'2019-05-18 20:24:21'),(12,2,3,'Et libero sed sunt ducimus molestiae. Esse minus ipsa sed aut. Sed fuga consequatur est in voluptates sit asperiores.',NULL,1,1,'2008-10-22 11:54:02'),(13,26,3,'Magni ut labore a voluptate facere qui consequatur. Deleniti enim facere blanditiis laudantium rerum iure. Alias dignissimos nemo voluptas ut est eos sed. Suscipit a minus corrupti eius similique. Distinctio dolorem deleniti qui impedit.',93,1,0,'2018-02-04 22:30:54'),(14,83,3,'Et aut provident sint et voluptate et et. Modi eum aliquid fuga accusamus fugit. Dolor repellat facere quis aut. Ducimus libero repudiandae quod possimus. Adipisci aut omnis inventore occaecati non blanditiis.',NULL,1,0,'2000-03-18 16:14:56'),(15,43,3,'Nam dolorum corporis dolores aperiam. Nihil et ut eveniet. Accusantium expedita ipsa ipsa vitae enim consequatur.',12,0,0,'2014-12-12 14:31:38'),(16,55,3,'Quisquam dicta excepturi id sapiente facilis accusamus iusto. Ea quibusdam dolorum sed et dolores fugit. Commodi dicta ipsam autem suscipit. Est reprehenderit ipsam explicabo asperiores iste.',25,0,0,'1972-04-16 17:42:14'),(17,59,3,'Totam non laborum fugiat nihil. Impedit voluptatem inventore sed veritatis numquam nemo alias. Voluptatem ut est magnam enim.',NULL,0,0,'2018-12-30 02:36:42'),(18,24,17,'Beatae asperiores sequi temporibus voluptatem illum impedit molestiae. Sint asperiores quaerat est consequatur. Et doloremque maxime non et deserunt molestias natus. Accusamus fugiat odit sunt repellendus.',NULL,1,1,'2018-02-07 15:36:21'),(19,15,20,'Molestiae recusandae est consequatur aperiam quia soluta. Aut molestiae voluptate quia qui voluptatem a. Tenetur ipsum consequatur quasi expedita et distinctio necessitatibus.',23,0,1,'1999-12-18 07:00:10'),(20,58,28,'Odio qui qui iste corporis distinctio non. Nihil blanditiis et omnis est. Similique aspernatur a laudantium esse.',39,0,0,'1999-10-20 17:31:33'),(21,65,42,'Ab molestiae veritatis doloribus. Facere quis et perferendis tempora voluptas ipsa facilis nemo. In aut aut laborum ea. Eius aut est ullam ratione.',1,1,0,'1998-11-08 13:49:36'),(22,13,37,'Vero est adipisci doloremque omnis enim mollitia fugit. Quasi eveniet iusto molestias autem qui sed. Rem esse quibusdam aut perspiciatis officiis. Est dignissimos repudiandae alias velit dolorum qui esse.',NULL,0,1,'1997-12-22 22:49:53'),(23,48,26,'Qui fuga natus adipisci et ut dolorum. Itaque recusandae quis illo tenetur iure. Eum odio in repudiandae quae voluptas. Sed reiciendis recusandae illum ut adipisci sequi quos.',NULL,0,0,'2002-02-11 01:06:59'),(24,85,48,'Explicabo expedita voluptates corrupti neque rerum quia numquam. Velit et consequatur illo. Ut alias voluptatum sed fuga quas ex omnis. Nostrum debitis a non et animi modi. Dolor non voluptates quod officiis unde voluptates.',7,0,0,'2007-04-02 16:52:42'),(25,84,75,'Explicabo quo animi iusto vero laudantium. Cumque et earum voluptatum necessitatibus suscipit laudantium est.',NULL,1,0,'1990-08-01 21:50:52'),(26,23,88,'Nesciunt aut quo at voluptatem sit. Ea nemo et dolores. Repellat assumenda distinctio vel rerum vitae et quo. Omnis totam facilis beatae explicabo repellat labore. Provident laborum voluptatem non cumque.',NULL,0,1,'2006-02-16 07:10:16'),(27,71,90,'Id rerum iste laudantium necessitatibus id. Numquam distinctio maxime reprehenderit id. Et quae reiciendis ut.',NULL,1,0,'1975-08-10 08:33:00'),(28,38,18,'Consequatur sequi autem optio est eveniet vel aliquid. Repudiandae voluptatem dicta molestias et nisi numquam fugiat. Nihil earum tenetur facilis.',6,1,1,'1994-06-15 03:57:48'),(29,76,27,'Officia harum odio accusantium inventore. Dolorum sint reprehenderit similique. Ratione veniam cumque quos provident et praesentium a. Sequi iusto non est odit nostrum ratione impedit. Quasi officiis eaque tenetur culpa.',26,1,1,'2019-05-01 16:14:53'),(30,6,47,'Quasi rerum a rerum tempora eum quo. Facere hic atque eaque et dicta atque velit.',45,1,1,'2000-10-06 13:18:08'),(31,17,45,'Reiciendis quis et inventore soluta quod. Velit saepe aut aut sunt voluptatem totam officia et. Ut sed sint ut sit sint quibusdam. Optio autem ducimus id officiis quis reiciendis earum.',51,1,0,'2017-07-04 02:25:53'),(32,73,29,'Amet distinctio unde doloremque quasi. Quia occaecati perferendis sint non vero saepe quisquam. Sed sunt ut consequatur qui laboriosam veritatis fugiat consequatur.',NULL,1,1,'1976-12-31 11:55:58'),(33,27,48,'Et esse sit est nesciunt quia laboriosam. Excepturi asperiores magni fuga quae et quia voluptas. Itaque laudantium temporibus sint dolores itaque. Repellat qui sed quisquam libero qui ut sed.',NULL,0,1,'2013-11-28 22:58:35'),(34,60,52,'Enim minima qui impedit magni. Alias quam ipsa iste qui. Et similique reprehenderit earum ipsum. Veniam non voluptate molestiae nobis tempore cumque.',NULL,0,0,'1989-09-08 14:14:05'),(35,80,45,'Eaque dolorem sed voluptatibus corrupti culpa ut. Rerum quibusdam ducimus ipsa sed repudiandae. Inventore qui culpa et odio voluptatum. Quis consequuntur quis animi voluptatibus nulla vitae cum consectetur. Qui dolores necessitatibus atque fugiat.',63,0,1,'1996-04-20 23:07:13'),(36,84,82,'Voluptas et aut aut et recusandae in qui. Ipsum consequatur animi aperiam aut dolores. A qui accusantium officiis et.',NULL,1,0,'1984-11-23 22:42:49'),(37,61,56,'Consectetur dignissimos ea animi. Vel rerum molestias rerum accusantium earum. Odio libero nihil illo quia quidem. Facere placeat omnis vitae magnam dolorem.',31,1,1,'1991-01-20 12:41:10'),(38,95,9,'Pariatur accusamus itaque sint explicabo asperiores illum nesciunt. Excepturi debitis consequatur fugit aliquam quidem error doloribus. Temporibus voluptas et eveniet harum est dolor velit. Ex iure illum consequuntur voluptatum.',NULL,0,0,'1991-02-04 03:48:42'),(39,61,75,'Nobis sed laudantium pariatur autem. Dolores cumque labore dolore et molestiae quis et. Qui in pariatur aut quia ipsum autem. Est error fuga quibusdam minus.',31,0,0,'1991-08-30 11:10:58'),(40,94,43,'Quae placeat quaerat molestias reprehenderit illo nemo. Dolor fugit aut doloribus omnis odio. Voluptates autem quos eos enim impedit.',9,0,0,'1971-06-13 17:57:43'),(41,32,32,'Vero qui vitae ipsa quae et et suscipit id. Id quia nisi vel aspernatur nobis hic nisi facere. Sunt corporis eligendi unde et. Porro et voluptates repudiandae nam vel.',NULL,0,0,'2010-04-27 01:34:57'),(42,61,10,'Quidem sequi quis eius molestias. Tempore est nesciunt numquam nam dolorum. Corporis in quis at et at expedita. Unde vel hic ut neque et.',31,1,1,'1973-09-06 13:15:38'),(43,68,6,'Eum ad sed et repellendus sit. Et deleniti ut maxime ab omnis molestiae aut sit. Impedit explicabo tenetur iste molestiae quo totam.',5,1,0,'1981-03-24 21:35:49'),(44,28,22,'Voluptatum ab sint ullam provident. Accusamus consequatur impedit quo vel et.',56,0,0,'1984-05-12 10:52:21'),(45,23,50,'Natus iure vel repellat in voluptates aut et. Ipsam ipsum illum in quo error qui. Quo et blanditiis et rerum repellat pariatur suscipit animi.',NULL,1,0,'1992-12-09 02:57:18'),(46,81,53,'Ipsum aut quia quo sit incidunt. Quo neque modi quod suscipit eaque aliquid recusandae. Fugit necessitatibus tempora magni nulla voluptate.',NULL,1,0,'1989-11-15 02:41:11'),(47,22,50,'In minima pariatur non in et. Assumenda vel qui dicta ipsam ut eaque. Ut ipsam quod dolorum eum quaerat dicta repudiandae.',NULL,0,0,'2005-02-07 07:28:15'),(48,82,62,'Cupiditate debitis nihil quisquam aperiam quam voluptas. Fugiat alias neque ea voluptas autem. Sit iure in tempore nemo voluptates eos suscipit eligendi. Id neque eum est nihil ea quidem tempora fuga.',57,0,0,'2010-07-08 21:43:58'),(49,64,35,'Repellat maxime vero veniam aut. Similique alias nulla tempore nobis. Repudiandae expedita numquam suscipit id culpa laboriosam consequuntur reiciendis.',16,0,1,'2019-01-15 14:01:51'),(50,79,92,'Optio nihil voluptatem voluptas doloribus perferendis. Blanditiis rerum qui perspiciatis tenetur voluptatum et et. Ut qui error consectetur atque. Id inventore quia dolorem excepturi sed in. Itaque commodi suscipit quia dolores voluptatem aperiam beatae.',13,0,0,'2005-04-04 15:59:58'),(51,23,37,'Est ea excepturi sunt aliquam possimus accusantium iste. Ratione ut qui itaque repellendus aut nihil.',NULL,1,0,'1971-10-05 23:42:48'),(52,18,77,'Sint incidunt quo fugiat. Et aut voluptatem maiores rerum sint. Quo voluptatem aut nam minima fugiat.',38,1,0,'1985-05-21 14:37:43'),(53,29,13,'Magnam natus dolor neque. Dignissimos dolorem est rerum libero incidunt doloremque sapiente. Tempore in ut aut qui rerum nam. Vel quia harum beatae aliquam enim dolorem quibusdam.',NULL,0,0,'2013-02-03 00:37:26'),(54,76,44,'Totam cum inventore atque dolores commodi molestiae. Ullam voluptas omnis corrupti et voluptas. Numquam impedit tempore dolorem quas dolorem doloremque.',26,0,0,'2015-10-25 12:47:47'),(55,91,24,'Nihil quam et est neque magni vero ab. Eveniet quas non et qui tempora laborum. Praesentium sed sit voluptas tempore. Est omnis quo repellat quas sint. Enim quam necessitatibus molestias voluptatem nulla et voluptate.',NULL,1,0,'1984-07-17 05:15:22'),(56,45,53,'Fuga officia enim nulla soluta ut officia qui. Quod ullam dolorum perspiciatis est. Quam quasi delectus expedita hic quo eos.',3,1,1,'1979-01-10 15:31:41'),(57,30,92,'Labore aperiam placeat quia sint laboriosam. Consequatur sit esse ratione qui. Qui fuga repudiandae est temporibus.',NULL,0,0,'1985-06-14 06:14:01'),(58,67,57,'Fuga qui et omnis fugit omnis. Praesentium harum repudiandae facere minima vel. Est odit odit ratione non recusandae aliquid. Laborum et eveniet amet dolorem hic sit.',30,1,0,'1991-07-13 06:26:59'),(59,87,60,'Aut nemo et fuga incidunt dolorem excepturi accusamus accusamus. Iste illum voluptate rerum sit id at. Iusto sapiente veritatis occaecati culpa earum aliquid ad.',34,1,1,'1997-02-13 17:23:08'),(60,40,20,'Ad qui consectetur a quam. Ipsum rem et asperiores veniam. Rem consequatur placeat molestiae nihil vitae voluptatem. Reiciendis vitae sunt voluptatibus officia nisi voluptate rerum.',28,1,0,'2000-01-03 01:02:41'),(61,79,33,'Quis saepe ea et pariatur sunt. Deleniti doloribus quod harum aut consequatur nihil est totam. Accusamus et distinctio cum unde. Debitis et aut labore ex molestiae.',13,1,0,'1975-05-25 21:52:32'),(62,29,47,'Saepe excepturi animi aspernatur sed sed. Sed error aut iure nisi nam corrupti laudantium. Magni autem est pariatur aperiam enim. Quisquam aut ab reiciendis voluptates quia ipsam. Fugit occaecati rerum pariatur cum voluptatem ut quasi explicabo.',NULL,1,0,'2019-10-31 03:12:41'),(63,46,88,'Voluptatem quisquam aut illo libero hic. Culpa neque asperiores voluptate sit enim distinctio. Possimus veritatis eveniet reiciendis et. Enim vero sapiente mollitia voluptatem ut excepturi beatae. Nihil quidem ad ea deleniti.',42,1,1,'1972-06-20 15:22:55'),(64,1,40,'Sit repudiandae necessitatibus voluptas facere ducimus et. Qui incidunt rerum consequatur rerum. Rerum velit iste qui laboriosam dicta hic. Animi est sapiente ab et omnis quo impedit.',4,1,1,'2014-07-04 00:14:43'),(65,95,58,'Ipsum aut rerum odit molestiae. Rerum reprehenderit dignissimos dolores tempora minus.',NULL,1,1,'2009-02-09 07:23:22'),(66,2,36,'Asperiores nesciunt aut et accusamus. Deleniti totam voluptas at error et excepturi est. Laudantium nihil voluptatem facere sed inventore id. Consectetur unde harum omnis veritatis porro.',NULL,0,1,'1980-01-15 18:53:23'),(67,72,51,'Ipsa ab ad numquam ipsam ratione quisquam. Qui quo quisquam qui et. Assumenda a dicta voluptates eos nihil suscipit voluptatem nesciunt.',71,1,0,'1995-07-04 12:00:25'),(68,39,44,'Pariatur deleniti eveniet accusantium nisi. Nemo molestiae aliquid minima odit pariatur qui odio. Numquam consequuntur adipisci aut vel est libero cum. Ut nesciunt quam nihil.',10,0,0,'2003-08-16 18:48:45'),(69,2,75,'Maiores non eaque voluptas et non quis asperiores. Voluptatem exercitationem accusantium esse quibusdam laboriosam consectetur laboriosam. Consectetur accusamus impedit rerum est. Eum nobis inventore aut dolor repudiandae harum rerum minima.',NULL,1,0,'1993-07-01 06:29:16'),(70,70,24,'Dolor autem eius quisquam tempore. Nam voluptatem ex dolor quam expedita.',NULL,0,1,'2015-12-21 13:47:06'),(71,11,82,'Consectetur veniam voluptates saepe eius blanditiis possimus. Porro qui magnam omnis ut ut aliquid. Qui mollitia velit dicta.',36,1,1,'2005-11-16 19:14:58'),(72,78,40,'Neque veritatis sit sint repudiandae. Beatae id amet accusamus voluptatem. Ad omnis aut rerum quis id quis. Distinctio commodi tenetur enim eos aut. Aut quasi maiores sapiente quaerat consectetur.',NULL,1,0,'2002-02-20 20:48:02'),(73,69,23,'Impedit praesentium praesentium enim enim non. Modi dolor officiis ut officiis ipsum autem. Omnis et quas non aliquam voluptatem.',21,0,1,'1982-05-02 07:44:28'),(74,10,77,'Asperiores accusantium voluptate in doloribus laborum dolorum. Asperiores quam corporis ut atque qui accusamus. Accusamus vel minus distinctio facere sit qui. Voluptatem sint accusamus ullam consequatur doloribus iste.',8,1,0,'1994-04-01 14:14:38'),(75,58,55,'Cum quo maiores dignissimos dolor cumque. Rerum vero explicabo ut quia sit nesciunt iusto. Magnam qui quas illum atque eos.',39,1,0,'1984-02-21 13:09:11'),(76,2,44,'Culpa voluptas ea aut necessitatibus. Dignissimos voluptas officiis sed deleniti quas aut minima ducimus. Id et ad consequatur dolorem qui alias. Reprehenderit debitis omnis suscipit expedita ex non.',NULL,1,1,'2003-06-20 08:56:26'),(77,15,42,'Veritatis aut aspernatur quaerat qui perferendis. Provident neque et voluptates consectetur. Magnam aut ullam dolor blanditiis sit ipsam neque. Porro ut voluptas et magnam suscipit sit quis cupiditate. Laborum consequatur illum ratione deserunt eligendi rerum magni eum.',23,1,1,'2004-10-05 22:53:09'),(78,64,93,'Natus sapiente laboriosam placeat quas. Nihil rerum alias voluptatem quos excepturi. Nostrum et ut quia modi minima.',16,0,0,'1997-04-09 00:11:38'),(79,73,84,'Qui omnis qui nisi sint aut eligendi mollitia facilis. Aliquam quisquam maxime assumenda voluptatem minima. Voluptate molestias et eos. Quia in porro earum explicabo iusto voluptatum velit.',NULL,0,0,'2001-05-31 11:10:51'),(80,3,59,'Iure rerum id et beatae exercitationem. Nam a molestiae voluptatum non perspiciatis. Id accusantium occaecati ad vel. Cum ex deleniti qui.',NULL,0,0,'1970-02-06 23:05:29'),(81,89,68,'Enim qui temporibus eaque sed ut distinctio eius et. Ut dolorem aspernatur delectus delectus vitae consequatur. Reiciendis facilis commodi nam doloremque qui.',NULL,1,1,'1996-05-03 15:28:15'),(82,71,49,'Quisquam velit dolor in a ipsam mollitia dolor. Rerum molestiae eaque a velit hic. Repellendus est nulla animi. Quia praesentium natus nemo aut est neque labore.',NULL,0,0,'2008-11-27 12:29:20'),(83,31,11,'Ut optio eum ipsa deleniti minus. Et quod illo corrupti minus aliquid qui. Quam et eos pariatur fuga aut est excepturi fugiat. Magnam quis perspiciatis debitis ducimus voluptatem impedit dolor.',NULL,1,0,'1972-04-13 03:05:05'),(84,59,61,'Aut reprehenderit iste esse nisi. Numquam laudantium ducimus ducimus quis doloribus qui. Quisquam quas architecto omnis maiores vel. Natus velit odio dolores et in et.',NULL,0,1,'1980-08-07 23:37:45'),(85,28,55,'Maiores magnam dolorem alias est voluptas aut. Quia dolorem vero molestiae doloremque et. Quam et rem sed sit est. Suscipit est modi omnis.',56,1,1,'2019-08-02 03:53:36'),(86,93,97,'Exercitationem ut dignissimos quibusdam ipsam quis eius id. Non assumenda iusto in dolor. Non quod est ut et.',15,0,0,'1972-06-02 23:31:36'),(87,9,50,'Et consequatur quo recusandae possimus. Reprehenderit numquam aut ad earum explicabo et ipsa. Ab sed delectus et.',NULL,0,1,'1994-07-13 14:33:24'),(88,23,65,'Voluptatem ut occaecati est eligendi quisquam. Est voluptas odit ex. Culpa rem sed ducimus tempora id temporibus expedita.',NULL,1,1,'1972-12-08 03:48:51'),(89,56,86,'Placeat voluptatem maxime et vero excepturi. Praesentium quo officiis et. Magnam porro ad minima ea.',86,1,1,'2009-08-25 15:34:55'),(90,59,38,'Modi provident atque provident reiciendis accusantium qui enim. Voluptatibus recusandae sit ullam aut et. Consequuntur sit quis rerum. Ipsum quia ut itaque modi quia minus.',NULL,0,0,'2000-01-12 12:00:32'),(91,13,52,'Voluptate blanditiis nam maiores ducimus explicabo. Mollitia occaecati rerum qui eos temporibus provident et. Id non magni nihil et. Veritatis eaque laborum saepe reiciendis amet esse.',NULL,0,1,'1995-04-03 09:47:36'),(92,19,38,'Architecto aut perferendis quam quidem voluptas. Minus qui qui ut ex ea maxime neque. Maxime deserunt facilis illum distinctio qui.',18,0,0,'1986-10-24 07:54:57'),(93,32,46,'Sit molestiae a est unde quia itaque quis. Dolorum perspiciatis est quam eos ratione. Itaque est voluptatum mollitia rem dicta quae.',NULL,0,0,'2004-09-08 03:40:18'),(94,32,21,'Dolores consequatur maxime rerum quis hic nam. Doloremque voluptatem adipisci aut id. Vitae enim ea numquam veritatis nemo ipsam deserunt.',NULL,1,1,'1977-02-19 16:37:46'),(95,11,90,'Laboriosam amet nemo voluptatem voluptates enim fugiat ad. Aut quis id sed maiores id.',36,0,0,'1994-12-06 05:10:06'),(96,17,15,'Et repudiandae non eveniet voluptatum possimus. Error quam dolore porro et. Fugiat commodi dolorem amet pariatur non. Sit perspiciatis blanditiis adipisci expedita autem dolore ex.',51,1,0,'1975-02-09 01:11:27'),(97,24,72,'Beatae occaecati eum et omnis veniam tempora ea quas. Esse voluptates quia nisi quas repudiandae. Excepturi nostrum possimus unde voluptatem exercitationem dignissimos est. Beatae dolorem rerum itaque vitae.',NULL,0,0,'2017-08-06 01:16:22'),(98,90,31,'Velit magni deleniti ab est. Ipsam temporibus reiciendis optio tempore natus vero nemo rerum. Laboriosam qui et error qui consectetur fugiat odit repudiandae. Totam modi ea id voluptate ullam et.',82,1,1,'2005-11-13 14:45:27'),(99,87,41,'Magni illo ducimus corrupti odit temporibus exercitationem. Vitae error sit sed hic iure ipsum esse repellendus. Illum doloribus culpa sit saepe. Reprehenderit velit dolor eos perferendis voluptates.',34,0,0,'2009-01-19 23:17:47'),(100,42,85,'Corrupti assumenda impedit est laborum libero ipsa asperiores. Adipisci odio magni voluptate corrupti repudiandae. Est velit enim suscipit et. Harum voluptatem dolorem saepe deserunt.',17,0,1,'2017-01-19 21:41:43');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `header` varchar(255) DEFAULT NULL,
  `body` text,
  `attached_media_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,71,'header','body',NULL,'2019-12-05 06:48:35'),(2,14,'header','body',NULL,'2019-12-05 06:48:35'),(3,58,'header','body',NULL,'2019-12-05 06:48:35'),(4,46,'header','body',NULL,'2019-12-05 06:48:35'),(5,57,'header','body',91,'2019-12-05 06:48:35'),(6,46,'header','body',NULL,'2019-12-05 06:48:35'),(7,59,'header','body',NULL,'2019-12-05 06:48:35'),(8,55,'header','body',93,'2019-12-05 06:48:35'),(9,100,'header','body',NULL,'2019-12-05 06:48:35'),(10,35,'header','body',NULL,'2019-12-05 06:48:35'),(11,74,'header','body',NULL,'2019-12-05 06:48:35'),(12,63,'header','body',NULL,'2019-12-05 06:48:35'),(13,94,'header','body',NULL,'2019-12-05 06:48:35'),(14,79,'header','body',NULL,'2019-12-05 06:48:35'),(15,14,'header','body',94,'2019-12-05 06:48:35'),(16,30,'header','body',NULL,'2019-12-05 06:48:35'),(17,10,'header','body',NULL,'2019-12-05 06:48:35'),(18,60,'header','body',NULL,'2019-12-05 06:48:35'),(19,67,'header','body',NULL,'2019-12-05 06:48:35'),(20,54,'header','body',NULL,'2019-12-05 06:48:35'),(21,72,'header','body',NULL,'2019-12-05 06:48:35'),(22,94,'header','body',NULL,'2019-12-05 06:48:35'),(23,57,'header','body',NULL,'2019-12-05 06:48:35'),(24,99,'header','body',NULL,'2019-12-05 06:48:35'),(25,26,'header','body',NULL,'2019-12-05 06:48:35'),(26,30,'header','body',NULL,'2019-12-05 06:48:35'),(27,73,'header','body',NULL,'2019-12-05 06:48:35'),(28,73,'header','body',NULL,'2019-12-05 06:48:35'),(29,48,'header','body',NULL,'2019-12-05 06:48:35'),(30,21,'header','body',NULL,'2019-12-05 06:48:35'),(31,59,'header','body',NULL,'2019-12-05 06:48:35'),(32,31,'header','body',NULL,'2019-12-05 06:48:35'),(33,79,'header','body',NULL,'2019-12-05 06:48:35'),(34,1,'header','body',NULL,'2019-12-05 06:48:35'),(35,68,'header','body',NULL,'2019-12-05 06:48:35'),(36,35,'header','body',NULL,'2019-12-05 06:48:35'),(37,72,'header','body',NULL,'2019-12-05 06:48:35'),(38,56,'header','body',NULL,'2019-12-05 06:48:35'),(39,60,'header','body',NULL,'2019-12-05 06:48:35'),(40,34,'header','body',NULL,'2019-12-05 06:48:35'),(41,90,'header','body',NULL,'2019-12-05 06:48:35'),(42,47,'header','body',NULL,'2019-12-05 06:48:35'),(43,64,'header','body',NULL,'2019-12-05 06:48:35'),(44,78,'header','body',NULL,'2019-12-05 06:48:35'),(45,96,'header','body',NULL,'2019-12-05 06:48:35'),(46,47,'header','body',NULL,'2019-12-05 06:48:35'),(47,45,'header','body',NULL,'2019-12-05 06:48:35'),(48,85,'header','body',NULL,'2019-12-05 06:48:35'),(49,89,'header','body',NULL,'2019-12-05 06:48:35'),(50,91,'header','body',NULL,'2019-12-05 06:48:35'),(51,85,'header','body',NULL,'2019-12-05 06:48:35'),(52,53,'header','body',88,'2019-12-05 06:48:35'),(53,11,'header','body',NULL,'2019-12-05 06:48:35'),(54,93,'header','body',NULL,'2019-12-05 06:48:35'),(55,31,'header','body',NULL,'2019-12-05 06:48:35'),(56,77,'header','body',NULL,'2019-12-05 06:48:35'),(57,90,'header','body',NULL,'2019-12-05 06:48:35'),(58,19,'header','body',NULL,'2019-12-05 06:48:35'),(59,24,'header','body',NULL,'2019-12-05 06:48:35'),(60,63,'header','body',NULL,'2019-12-05 06:48:35'),(61,40,'header','body',NULL,'2019-12-05 06:48:35'),(62,14,'header','body',NULL,'2019-12-05 06:48:35'),(63,48,'header','body',NULL,'2019-12-05 06:48:35'),(64,97,'header','body',NULL,'2019-12-05 06:48:35'),(65,43,'header','body',NULL,'2019-12-05 06:48:35'),(66,21,'header','body',NULL,'2019-12-05 06:48:35'),(67,75,'header','body',NULL,'2019-12-05 06:48:35'),(68,12,'header','body',NULL,'2019-12-05 06:48:35'),(69,36,'header','body',NULL,'2019-12-05 06:48:35'),(70,42,'header','body',NULL,'2019-12-05 06:48:35'),(71,1,'header','body',NULL,'2019-12-05 06:48:35'),(72,77,'header','body',NULL,'2019-12-05 06:48:35'),(73,85,'header','body',NULL,'2019-12-05 06:48:35'),(74,91,'header','body',NULL,'2019-12-05 06:48:35'),(75,99,'header','body',NULL,'2019-12-05 06:48:35'),(76,23,'header','body',NULL,'2019-12-05 06:48:35'),(77,18,'header','body',NULL,'2019-12-05 06:48:35'),(78,18,'header','body',NULL,'2019-12-05 06:48:35'),(79,38,'header','body',NULL,'2019-12-05 06:48:35'),(80,37,'header','body',NULL,'2019-12-05 06:48:35'),(81,67,'header','body',NULL,'2019-12-05 06:48:35'),(82,27,'header','body',NULL,'2019-12-05 06:48:35'),(83,30,'header','body',NULL,'2019-12-05 06:48:35'),(84,71,'header','body',NULL,'2019-12-05 06:48:35'),(85,62,'header','body',NULL,'2019-12-05 06:48:35'),(86,99,'header','body',NULL,'2019-12-05 06:48:35'),(87,7,'header','body',NULL,'2019-12-05 06:48:35'),(88,40,'header','body',NULL,'2019-12-05 06:48:35'),(89,76,'header','body',58,'2019-12-05 06:48:35'),(90,58,'header','body',NULL,'2019-12-05 06:48:35'),(91,64,'header','body',NULL,'2019-12-05 06:48:35'),(92,43,'header','body',NULL,'2019-12-05 06:48:35'),(93,24,'header','body',NULL,'2019-12-05 06:48:35'),(94,92,'header','body',NULL,'2019-12-05 06:48:35'),(95,87,'header','body',NULL,'2019-12-05 06:48:35'),(96,57,'header','body',NULL,'2019-12-05 06:48:35'),(97,23,'header','body',NULL,'2019-12-05 06:48:35'),(98,46,'header','body',NULL,'2019-12-05 06:48:35'),(99,58,'header','body',NULL,'2019-12-05 06:48:35'),(100,53,'header','body',NULL,'2019-12-05 06:48:35');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy`
--

DROP TABLE IF EXISTS `privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy`
--

LOCK TABLES `privacy` WRITE;
/*!40000 ALTER TABLE `privacy` DISABLE KEYS */;
INSERT INTO `privacy` VALUES (1,'Все пользователи'),(2,'Только друзья'),(3,'Друзья и друзья друзей'),(4,'Только я'),(5,'Все кроме...'),(6,'Некоторые друзья');
/*!40000 ALTER TABLE `privacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy_except_user`
--

DROP TABLE IF EXISTS `privacy_except_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy_except_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `privacy_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy_except_user`
--

LOCK TABLES `privacy_except_user` WRITE;
/*!40000 ALTER TABLE `privacy_except_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `privacy_except_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'m','1981-01-11','Lake Danykastad',8),(2,'m','2007-11-21','Rohanberg',37),(3,'m','2004-10-13','North Rhodaview',94),(4,'f','1988-06-30','New Green',37),(5,'f','2008-02-13','Lelamouth',39),(6,'m','1992-03-26','Lake Randiberg',53),(7,'f','1978-08-05','Mertzfort',84),(8,'f','1979-10-04','Julietstad',60),(9,'m','2004-03-30','New Leonelhaven',12),(10,'f','1998-09-25','New Sterling',46),(11,'m','1996-02-22','West Dessieside',69),(12,'f','2018-12-13','West Ali',45),(13,'f','1989-05-14','Parisianbury',88),(14,'f','1972-10-12','Lake Christianstad',23),(15,'f','1982-05-14','East Dasia',74),(16,'f','2004-12-23','Lake Lawson',45),(17,'m','2007-11-16','Lake Tyler',68),(18,'m','1998-04-24','Shanahanborough',80),(19,'f','1986-02-19','Augustineburgh',72),(20,'f','2015-01-14','Roobmouth',70),(21,'m','1975-05-01','Port Clairhaven',62),(22,'m','1974-12-07','East Cora',34),(23,'m','1989-06-09','North Mireillemouth',55),(24,'m','1975-10-03','West Kenna',10),(25,'f','1994-05-14','East Karen',63),(26,'m','1982-02-23','Port Drew',66),(27,'m','1993-10-07','Jacobschester',26),(28,'m','1974-02-28','Moniqueburgh',81),(29,'m','1982-07-01','Eleonoreside',56),(30,'f','1982-07-09','Chesterview',65),(31,'m','1995-03-20','Vellaport',80),(32,'m','1971-10-30','New Bettiebury',26),(33,'f','2001-03-25','McClureborough',52),(34,'m','2011-03-17','Lillychester',16),(35,'f','1970-06-01','Altenwerthbury',15),(36,'f','2014-09-28','South Hayleyville',39),(37,'m','2004-03-01','Ebonystad',84),(38,'m','2009-10-05','North Marilynemouth',33),(39,'m','2010-05-06','New Vaughn',36),(40,'f','1996-06-28','Erikabury',45),(41,'f','1992-07-08','Wardport',27),(42,'f','1980-04-24','East Jaydonton',28),(43,'f','1980-11-14','Mekhihaven',23),(44,'f','1975-08-13','Calistaburgh',25),(45,'m','1986-01-20','South Marty',18),(46,'f','1985-11-28','New Jake',68),(47,'m','1998-10-28','Tillmanmouth',93),(48,'m','1993-03-18','East Larissaburgh',56),(49,'m','1986-08-25','Ruthiebury',2),(50,'f','1973-05-23','South Beauside',82),(51,'f','2012-02-17','South Shawna',42),(52,'f','1973-11-07','Runolfsdottirport',22),(53,'m','2004-08-08','Dickishire',56),(54,'m','2013-09-06','Volkmanchester',44),(55,'m','2012-12-19','Doyleside',32),(56,'m','1994-05-08','Cruickshankborough',90),(57,'f','2014-09-03','Schoenside',23),(58,'m','1990-01-08','Isabelleshire',6),(59,'m','2016-11-16','Heidenreichtown',6),(60,'f','1971-06-16','Ritchieville',20),(61,'f','1972-03-14','West Julianne',14),(62,'m','2003-05-07','New Dusty',60),(63,'f','2004-09-05','Smithambury',8),(64,'m','1972-08-10','Shannyland',99),(65,'m','1975-11-26','New Carlottastad',61),(66,'m','1978-01-22','North Vilma',38),(67,'m','1973-07-05','Wymantown',34),(68,'m','1992-10-14','Ismaelmouth',10),(69,'m','2004-08-10','Port Dominiquechester',68),(70,'f','2014-07-24','Skilesberg',25),(71,'f','2001-07-21','New Chandler',11),(72,'f','2010-10-10','Gwendolynborough',44),(73,'f','1984-06-16','South Carleton',74),(74,'m','1986-11-30','North Loribury',72),(75,'f','1976-08-16','Lake Darrellstad',49),(76,'m','1971-09-02','Port Tessie',38),(77,'f','1987-09-03','Port Pedro',83),(78,'f','1985-07-24','Runolfssontown',20),(79,'m','1973-01-10','Maggieview',87),(80,'f','1992-03-24','Lake Adrienberg',91),(81,'f','2018-08-26','New Alexandra',25),(82,'f','1993-09-13','North Alfredo',25),(83,'f','1972-01-06','Caylahaven',81),(84,'f','1975-11-28','Lake Idell',73),(85,'f','1974-06-24','Runteview',79),(86,'m','1980-05-08','West Garrett',58),(87,'f','1989-04-30','Port Lillabury',9),(88,'f','2018-08-16','Auerville',12),(89,'m','1986-10-07','Johathanstad',31),(90,'f','2011-04-22','East Nels',98),(91,'f','1997-04-14','Morissetteside',70),(92,'f','2006-06-09','Strackeshire',34),(93,'m','2019-04-08','Holdenfurt',80),(94,'f','2000-11-04','Delbertburgh',19),(95,'m','1986-09-12','Port Mariettaport',92),(96,'m','2013-11-16','Omaville',1),(97,'f','1984-08-08','New Else',6),(98,'f','1986-06-26','Lubowitzfurt',56),(99,'f','2005-11-03','South Twila',10),(100,'f','2005-06-27','Townehaven',8);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'Кто видит основную информацию моей страницы'),(2,'Кто видит фотографии, на которых меня отметили'),(3,'Кто видит список моих сохранённых фотографий'),(4,'Кто видит список моих групп');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_types`
--

DROP TABLE IF EXISTS `target_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_types`
--

LOCK TABLES `target_types` WRITE;
/*!40000 ALTER TABLE `target_types` DISABLE KEYS */;
INSERT INTO `target_types` VALUES (1,'message','2019-12-05 09:46:56'),(2,'user','2019-12-05 09:46:56'),(3,'photo','2019-12-05 09:46:56'),(4,'video','2019-12-05 09:46:56'),(5,'post','2019-12-05 09:46:56');
/*!40000 ALTER TABLE `target_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_privacy`
--

DROP TABLE IF EXISTS `user_privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_privacy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `section_id` int(10) unsigned NOT NULL,
  `privacy_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_privacy`
--

LOCK TABLES `user_privacy` WRITE;
/*!40000 ALTER TABLE `user_privacy` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_privacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Yolanda','Hahn','osvaldo.rath@example.com','+32(6)4853598437','1985-01-14 08:14:37','1995-05-20 18:37:03'),(2,'Shaylee','Cartwright','reilly.hayes@example.org','237.747.7562','2002-06-04 20:18:18','2009-06-05 02:43:55'),(3,'Van','Block','xhills@example.com','+10(3)9908242100','1980-02-29 05:31:58','2019-10-14 08:20:56'),(4,'Hadley','Borer','noel.dickens@example.com','009-030-8708x387','2015-02-26 13:53:02','1989-07-30 19:23:51'),(5,'Rhea','Brown','seth.fisher@example.com','769-875-7234x479','1988-01-23 12:08:02','2004-01-16 02:27:20'),(6,'Josefa','Lubowitz','fadel.alicia@example.com','+23(9)5016797651','2014-07-17 11:42:16','2007-03-28 03:56:24'),(7,'Damaris','Gleichner','parisian.marcellus@example.org','(651)606-0485x7895','1993-04-07 19:09:40','1991-03-08 03:23:57'),(8,'Cedrick','Sporer','tillman.audra@example.org','(112)381-1001x6604','2009-07-14 17:17:16','2008-09-19 18:14:17'),(9,'Royal','Sporer','parisian.stanton@example.com','06557510382','1983-11-28 05:35:00','1996-01-28 23:53:16'),(10,'Carleton','King','desiree27@example.com','1-745-270-8445x4350','1974-03-09 20:52:21','1986-03-09 13:57:15'),(11,'Alfonzo','Maggio','mayert.haley@example.com','573.602.2751x137','1994-05-02 07:09:04','2003-05-09 16:01:27'),(12,'Brooklyn','Stark','daugherty.claud@example.net','960-563-0467x28432','1983-03-16 19:07:11','1987-03-22 02:04:18'),(13,'Frank','Schaefer','dward@example.com','1-783-434-6333','2001-05-03 14:31:15','2006-08-30 22:17:31'),(14,'Christa','Kiehn','leann.spinka@example.net','894.632.2770x2005','1982-03-20 04:43:35','1976-12-04 19:48:47'),(15,'Cassie','Renner','meredith79@example.org','1-640-834-6325x5724','1976-07-18 20:59:45','1993-07-23 23:22:24'),(16,'Marc','Labadie','kasandra.hauck@example.net','(124)806-7157x3681','1989-10-04 03:15:04','1996-01-27 18:32:16'),(17,'Marshall','Jenkins','schumm.henderson@example.com','538-606-5040x4046','2017-08-07 21:08:56','1989-04-06 10:19:47'),(18,'Jairo','Lind','raymundo42@example.com','(081)519-2958x8628','1977-01-09 19:33:09','2010-02-24 01:39:46'),(19,'Cletus','Jacobson','sabrina56@example.com','(928)031-6520','2007-12-06 23:49:45','1995-06-10 10:51:24'),(20,'Chaim','Lindgren','wprohaska@example.com','1-893-784-1999x90935','1992-02-09 14:47:48','1979-06-17 07:57:02'),(21,'Shirley','Legros','frederique02@example.org','247-681-9036','1984-04-17 11:43:34','2004-11-23 07:10:06'),(22,'Jeffry','Bergnaum','arlo50@example.net','425-578-1390','1983-10-01 12:11:47','1993-03-11 14:54:43'),(23,'Jade','Stokes','neal.schmidt@example.net','310.833.2408x035','1985-10-17 22:51:31','2007-03-01 06:27:08'),(24,'Dexter','Heaney','elaina.volkman@example.net','306.068.2885','2017-01-03 23:13:13','2005-03-10 12:28:52'),(25,'Jaron','Smitham','schiller.luella@example.com','(619)884-8787x9818','2006-06-22 05:20:40','1978-10-24 23:16:37'),(26,'Hertha','Little','ymurphy@example.com','1-413-407-9803','1988-03-26 17:51:13','1994-12-20 08:56:18'),(27,'Megane','Baumbach','gabrielle40@example.org','1-113-841-8796','2006-12-26 19:04:57','2006-08-11 11:35:45'),(28,'Judah','Harber','akreiger@example.com','+34(8)2974648758','1995-09-20 01:11:14','1991-10-31 11:34:43'),(29,'Norma','Hauck','cole.rahul@example.com','+98(2)8119537810','1995-03-07 09:34:24','1972-10-30 14:41:23'),(30,'Ila','Bogan','dstamm@example.org','708.448.5612x705','1979-05-15 19:37:03','1993-11-30 15:55:24'),(31,'Adeline','Lang','johns.hermina@example.org','522.954.0371','2017-02-18 17:10:21','2017-03-08 06:18:36'),(32,'Orville','Bogan','shansen@example.org','(285)894-5771x69235','1989-07-15 12:14:31','1981-01-01 22:28:05'),(33,'Isac','Thiel','roman98@example.com','(626)048-7036','1970-12-20 22:07:57','2010-11-28 05:37:50'),(34,'Jackie','West','nelda.kautzer@example.com','(584)562-1887','2018-12-09 00:29:36','2006-09-14 01:58:38'),(35,'Kory','Wiza','yschiller@example.org','09712744560','1970-02-28 08:51:24','1987-08-29 17:19:26'),(36,'Erin','Braun','elwyn92@example.net','1-123-031-0163x20181','1994-01-07 22:11:06','2009-10-21 14:09:39'),(37,'Estelle','Nienow','leta07@example.org','923-764-8541x9256','2007-02-02 09:42:24','1973-12-03 06:52:01'),(38,'Savanah','Bode','margarete03@example.org','04427674435','1971-01-30 11:08:51','2012-02-11 18:20:26'),(39,'Vesta','Mitchell','reva.lind@example.net','1-761-866-8026','2002-07-21 15:57:39','1977-08-13 17:49:23'),(40,'Dion','Stehr','madelyn69@example.com','489.339.7899x701','2018-03-25 05:59:59','1997-03-26 08:28:38'),(41,'Brock','Cummerata','noah44@example.com','(814)576-0288','2005-07-27 16:39:55','2010-01-19 18:42:52'),(42,'Odell','Simonis','elinore.runte@example.net','065-246-5392x3257','2000-07-27 12:05:06','1973-03-09 06:20:24'),(43,'Amalia','Paucek','o\'reilly.aaron@example.org','765-100-3349x07889','1991-08-18 00:50:07','2001-09-04 22:23:54'),(44,'Otha','Bruen','flavie.schiller@example.net','(186)894-0084','1986-06-23 03:51:57','1977-09-20 03:58:19'),(45,'Fernando','Bogan','willa.reynolds@example.net','1-629-770-6265x1338','1976-10-10 17:41:09','1994-03-08 16:36:13'),(46,'Kraig','Heller','celia59@example.com','1-518-273-3906x965','1994-11-03 15:02:02','2014-08-05 22:11:45'),(47,'Margaretta','Breitenberg','percy.hessel@example.org','448.072.1074','1993-10-01 01:05:34','2008-11-23 11:29:17'),(48,'Ara','Heaney','beer.belle@example.org','02875862403','1993-01-16 22:21:30','2014-04-06 07:52:50'),(49,'Bruce','Nader','zkeeling@example.org','660-282-1985','1996-09-06 06:48:07','1976-06-16 00:15:22'),(50,'Candace','Schmitt','connelly.madelynn@example.net','581.903.4955','1972-06-07 11:08:35','2011-12-27 13:49:36'),(51,'Rocio','White','friesen.erika@example.com','875-747-3506','2010-06-17 00:35:35','1993-02-20 03:44:14'),(52,'Raymundo','Paucek','mosciski.jennings@example.com','501.941.4345x76488','1982-03-28 03:14:00','2003-04-17 17:23:41'),(53,'Hollie','Reilly','rachel.parker@example.org','(183)515-2667x641','1981-04-05 02:56:57','1983-06-15 05:58:14'),(54,'Miracle','Marvin','hane.aiyana@example.net','114-322-3093x909','1977-09-08 12:52:43','2003-03-25 09:33:39'),(55,'Callie','Feil','kendall.hills@example.org','(529)309-5683','2017-05-22 00:26:26','1973-01-23 00:40:57'),(56,'Royce','O\'Connell','eudora85@example.org','968-165-2491x2892','2008-12-16 12:11:01','1971-11-12 09:15:49'),(57,'Cortney','Borer','trycia92@example.org','640-514-6842x31235','2005-08-04 18:18:50','2017-07-19 07:12:45'),(58,'Florine','Larson','stark.patsy@example.net','866-021-1852','1982-03-29 19:31:47','1988-10-25 13:36:13'),(59,'Vito','O\'Conner','gillian.harvey@example.com','781.493.1669','2009-08-23 00:14:57','1981-05-27 02:01:03'),(60,'Eugenia','Herzog','filiberto.leffler@example.net','(774)647-8809','1993-10-03 15:41:27','1996-10-12 12:50:56'),(61,'Randal','Lockman','ekub@example.org','080.173.2925','2002-06-07 22:25:48','1984-12-28 07:09:21'),(62,'Raquel','Jones','kuhn.bernard@example.com','+30(6)2055832547','2008-09-17 03:40:22','1988-06-20 07:32:12'),(63,'Brianne','Toy','tre.kuhn@example.org','(990)405-7255','2009-10-17 19:00:12','1979-09-15 08:58:57'),(64,'Darrell','McCullough','ezra11@example.net','(773)904-1061x152','1992-05-30 08:45:52','1972-05-19 06:56:31'),(65,'Malcolm','Spinka','roel.muller@example.com','773.114.4582x808','1983-08-29 07:19:18','2009-01-26 00:43:00'),(66,'Khalid','Kuvalis','mclaughlin.danyka@example.net','426.797.5327','1996-09-05 02:23:04','2013-07-11 01:18:02'),(67,'Melvina','Swaniawski','btrantow@example.org','633-800-5177x994','2010-11-17 23:43:29','1971-10-24 18:22:14'),(68,'Greta','Kunze','antonietta97@example.org','660.359.0635','1992-05-21 06:04:54','1972-11-12 01:17:14'),(69,'Florida','Mayer','thiel.whitney@example.com','419.229.9995x816','1993-02-06 17:03:33','1988-06-06 21:01:13'),(70,'Agustin','Lynch','bjacobi@example.com','347-794-8948','2014-02-22 16:03:51','1976-04-12 04:43:34'),(71,'Gerry','Kautzer','rylee.kihn@example.org','458-506-0360','2005-10-25 22:02:18','2000-10-24 17:31:46'),(72,'Ilene','Prosacco','hills.stephany@example.com','(026)361-2420','1998-02-08 17:21:43','2010-06-11 11:28:22'),(73,'Marjolaine','Doyle','alycia.runolfsson@example.net','(208)097-1001x970','1973-11-24 19:56:40','1991-05-23 06:02:17'),(74,'Karley','Heidenreich','glover.ayden@example.com','(358)557-2054x916','1970-04-28 22:04:04','1975-01-30 03:47:00'),(75,'John','Rutherford','nathen.denesik@example.org','645.420.1363','1984-07-29 09:35:27','2001-01-25 09:56:07'),(76,'Robin','Zulauf','wanda40@example.net','040.865.8951x669','1986-05-01 09:56:34','2003-02-13 04:03:22'),(77,'Geoffrey','Gulgowski','rey97@example.net','1-707-458-7626','2010-06-05 05:45:30','2011-03-10 06:46:17'),(78,'Lessie','Kutch','emil74@example.org','01572378337','2017-12-22 20:34:55','2019-03-21 18:00:09'),(79,'Victoria','Brakus','shayna.kuphal@example.org','1-858-955-6018x5446','1982-10-14 03:49:28','1990-12-30 00:16:05'),(80,'Benedict','Schamberger','maryse.dickens@example.org','1-079-366-7071x925','2017-04-26 14:40:36','1983-02-13 16:03:24'),(81,'Randy','Larson','nhudson@example.com','1-714-914-2056x864','1994-11-03 05:22:34','1972-09-25 03:05:05'),(82,'Destini','Walsh','cathrine85@example.org','793.360.2470x9811','1984-08-17 21:49:54','1972-10-01 16:36:57'),(83,'Hailie','Gaylord','trantow.rigoberto@example.net','145-455-4596x3910','2013-06-30 21:55:54','2014-10-27 19:34:11'),(84,'Michael','Hagenes','della34@example.org','594.430.9691','1995-08-27 09:34:31','1993-03-04 07:16:51'),(85,'Casandra','Breitenberg','alvena59@example.org','1-218-552-3126','2002-01-12 17:51:56','2016-02-02 12:17:37'),(86,'Hildegard','Feest','ebeer@example.com','(488)299-7903','1982-09-22 09:58:01','1978-02-14 12:25:31'),(87,'Cara','Eichmann','johann98@example.net','(246)744-2072','1975-05-27 20:51:36','2013-07-27 10:26:47'),(88,'Alene','Kuvalis','fherman@example.net','(176)434-9131x989','2014-09-19 11:35:45','1989-09-19 10:22:47'),(89,'Enola','Bogan','botsford.tania@example.com','1-260-136-8737','2012-11-18 00:09:17','1984-08-24 15:01:36'),(90,'Lilliana','McGlynn','xlegros@example.net','1-648-623-5183','1995-04-17 23:25:01','2010-12-02 13:10:07'),(91,'Stephen','Rempel','hmedhurst@example.net','01412792133','2013-06-21 12:46:15','1981-10-17 04:30:53'),(92,'Lavada','Kling','tyree54@example.org','1-996-378-6303x374','2006-09-26 17:48:40','1980-06-05 15:26:32'),(93,'Orval','Bode','jeramy46@example.net','1-015-959-0508x385','1989-03-21 04:25:14','2016-10-18 16:34:09'),(94,'Britney','Pfeffer','wade.parker@example.org','145-382-3469x3347','1977-04-30 09:51:05','2002-09-11 20:28:44'),(95,'Mortimer','Little','trisha35@example.org','+56(0)4282800387','1975-07-03 20:25:29','2015-03-13 14:05:16'),(96,'Joseph','Trantow','colson@example.com','616.508.0093','2017-09-07 22:43:40','2009-06-23 08:17:25'),(97,'Arthur','Maggio','mstokes@example.com','070-858-4514x67336','2013-04-25 16:07:00','2013-02-10 15:22:57'),(98,'Sydney','Parisian','jpouros@example.com','(494)709-7560x95443','2014-10-13 03:25:45','2017-09-06 20:19:57'),(99,'Shawna','Pouros','dfritsch@example.org','394-142-7296','1977-02-24 10:03:29','2004-04-21 10:44:48'),(100,'Nelle','Hahn','selina.mraz@example.com','1-361-072-5416x2283','1972-05-13 13:37:49','1989-08-12 07:12:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vk'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05 11:43:42
