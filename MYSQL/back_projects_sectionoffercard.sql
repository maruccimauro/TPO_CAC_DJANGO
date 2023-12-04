-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: back
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `projects_sectionoffercard`
--

DROP TABLE IF EXISTS `projects_sectionoffercard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_sectionoffercard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `discount` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_sectionoffercard`
--

LOCK TABLES `projects_sectionoffercard` WRITE;
/*!40000 ALTER TABLE `projects_sectionoffercard` DISABLE KEYS */;
INSERT INTO `projects_sectionoffercard` VALUES (1,'Argentina','Buenos Aires',20,'section_offer_card_images/offer-tickect1.jpeg'),(2,'Spain','Madrid',60,'section_offer_card_images/offer-tickect2.jpeg'),(3,'USA','New York',50,'section_offer_card_images/offer-tickect3.jpeg'),(4,'France','Parisssw',55,'section_offer_card_images/offer-tickect4.jpeg'),(5,'Italy','Rome',35,'section_offer_card_images/offer-tickect5.jpeg'),(6,'Germany','Berlin',45,'section_offer_card_images/offer-tickect6.jpeg'),(7,'Canada','Toronto',33,'section_offer_card_images/offer-tickect7.jpeg'),(8,'Australia','Sydney',70,'section_offer_card_images/offer-tickect8.jpeg'),(9,'Japan','Tokyo',23,'section_offer_card_images/offer-tickect9.jpeg'),(10,'Brazil','Rio de Janeiro',35,'section_offer_card_images/offer-tickect10.jpeg'),(11,'India','New Delhi',20,'section_offer_card_images/offer-tickect11.jpeg'),(12,'United Kingdom','London',60,'section_offer_card_images/offer-tickect12.jpeg'),(13,'South Africa','Cape Town',20,'section_offer_card_images/offer-tickect13.jpeg'),(14,'Mexico','Mexico City',40,'section_offer_card_images/offer-tickect14.jpeg'),(31,'China','Beijing',50,'section_offer_card_images/offer-tickect0.jpeg');
/*!40000 ALTER TABLE `projects_sectionoffercard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 17:46:42
