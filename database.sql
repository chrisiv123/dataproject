-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: nba
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `1author`
--

DROP TABLE IF EXISTS `1author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `1author` (
  `id_author` int(11) NOT NULL AUTO_INCREMENT,
  `name_author` varchar(255) DEFAULT NULL,
  `id_categories` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_author`),
  UNIQUE KEY `id_author_UNIQUE` (`id_author`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1author`
--

LOCK TABLES `1author` WRITE;
/*!40000 ALTER TABLE `1author` DISABLE KEYS */;
INSERT INTO `1author` VALUES (1,'Michael Bond',1),(2,'Sarah Turner',2),(3,'Zhang Lee',3),(4,'Luisa Tan',4),(5,'Saron Michals',5),(6,'Bethany Davids',6);
/*!40000 ALTER TABLE `1author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1book`
--

DROP TABLE IF EXISTS `1book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `1book` (
  `id_book` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `id_references` int(11) DEFAULT NULL,
  `publishing_date` date DEFAULT NULL,
  `id_sub_categories` int(11) DEFAULT NULL,
  `id_lib` int(11) DEFAULT NULL,
  `id_categories` int(11) DEFAULT NULL,
  `id_author` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_book`),
  UNIQUE KEY `id_book_UNIQUE` (`id_book`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1book`
--

LOCK TABLES `1book` WRITE;
/*!40000 ALTER TABLE `1book` DISABLE KEYS */;
INSERT INTO `1book` VALUES (1,'Pre-Calculus I',1006,1,'2009-01-01',6,1,1,1),(2,'Applied Physics at the Molecular Level',1026,2,'2016-01-01',5,2,2,2),(3,'Discovering Microbes',1036,3,'2015-01-01',4,3,3,3),(4,'Post-Mod ern Physics',1046,4,'2010-01-01',3,4,4,4),(5,'Pre-1700s Agriculture',1056,5,'2014-01-01',2,5,5,5),(6,'Start-up Companies 101',1606,6,'2016-01-01',6,6,6,6);
/*!40000 ALTER TABLE `1book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1categories`
--

DROP TABLE IF EXISTS `1categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `1categories` (
  `id_categories` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `id_sub_categories` int(11) DEFAULT NULL,
  `id_related_categories` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_categories`),
  UNIQUE KEY `id_categories_UNIQUE` (`id_categories`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1categories`
--

LOCK TABLES `1categories` WRITE;
/*!40000 ALTER TABLE `1categories` DISABLE KEYS */;
INSERT INTO `1categories` VALUES (1,'MATH',2,3),(2,'PHYSICS',3,4),(3,'FARMING',4,5),(4,'CHHEMISTRY',5,6),(5,'BIOLOGY',6,1),(6,'BUSINESS',1,2);
/*!40000 ALTER TABLE `1categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1journal`
--

DROP TABLE IF EXISTS `1journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `1journal` (
  `id_journal` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `id_references` int(11) DEFAULT NULL,
  `publishing_date` date DEFAULT NULL,
  `id_sub_categories` int(11) DEFAULT NULL,
  `id_lib` int(11) DEFAULT NULL,
  `id_categories` int(11) DEFAULT NULL,
  `id_author` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_journal`),
  UNIQUE KEY `id_journal_UNIQUE` (`id_journal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1journal`
--

LOCK TABLES `1journal` WRITE;
/*!40000 ALTER TABLE `1journal` DISABLE KEYS */;
INSERT INTO `1journal` VALUES (1,'Limits and Infinitesimals',116,2,'2009-01-01',6,1,1,1),(2,'The effects of Atomic Bombs',126,2,'2016-01-01',5,2,2,2),(3,'How Viruses Spread',136,3,'2015-01-01',4,3,3,3),(4,'Light is it a wave or a particle',146,4,'2010-01-01',3,4,4,4),(5,'Pre Agriculture',156,5,'2014-01-01',2,5,5,5),(6,'Startup Companies ',166,6,'2016-01-01',6,6,6,6);
/*!40000 ALTER TABLE `1journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1lib`
--

DROP TABLE IF EXISTS `1lib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `1lib` (
  `id_lib` int(11) NOT NULL AUTO_INCREMENT,
  `name_lib` varchar(255) DEFAULT NULL,
  `location_lib` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_lib`),
  UNIQUE KEY `id_lib_UNIQUE` (`id_lib`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1lib`
--

LOCK TABLES `1lib` WRITE;
/*!40000 ALTER TABLE `1lib` DISABLE KEYS */;
INSERT INTO `1lib` VALUES (1,'China','Tushu guan'),(2,'United States of America','The Library'),(3,'Canada','La Bibliotheque'),(4,'Germany','Die Bibliothek'),(5,'Italy','La Biblioteca'),(6,'Japan','Toshokan');
/*!40000 ALTER TABLE `1lib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1sub`
--

DROP TABLE IF EXISTS `1sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `1sub` (
  `id_sub` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `Last_name` varchar(45) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`id_sub`),
  UNIQUE KEY `id1sub_UNIQUE` (`id_sub`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1sub`
--

LOCK TABLES `1sub` WRITE;
/*!40000 ALTER TABLE `1sub` DISABLE KEYS */;
INSERT INTO `1sub` VALUES (1,'first','last','$email');
/*!40000 ALTER TABLE `1sub` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 23:11:09
