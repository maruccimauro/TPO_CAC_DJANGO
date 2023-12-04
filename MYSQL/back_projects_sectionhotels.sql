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
-- Table structure for table `projects_sectionhotels`
--

DROP TABLE IF EXISTS `projects_sectionhotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_sectionhotels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `hotel_name` varchar(50) NOT NULL,
  `stars` int NOT NULL,
  `punctuation` double NOT NULL,
  `opinions` int NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_sectionhotels`
--

LOCK TABLES `projects_sectionhotels` WRITE;
/*!40000 ALTER TABLE `projects_sectionhotels` DISABLE KEYS */;
INSERT INTO `projects_sectionhotels` VALUES (1,'España','Barcelona','Barcelona es una ciudad increíble...','Hotel Estrella',4,8.2,3503,'section_hotels_images/section_hotels_0_image1.jpg','section_hotels_images/section_hotels_0_image2.jpg','section_hotels_images/section_hotels_0_image3.jpg','section_hotels_images/section_hotels_0_image4.jpg'),(11,'Italia','Roma','Roma, la Ciudad Eterna, es un lugar lleno...','Hotel Bella Vita',5,9.5,5217,'section_hotels_images/section_hotels_1_image1.jpg','section_hotels_images/section_hotels_1_image2.jpg','section_hotels_images/section_hotels_1_image3.jpg','section_hotels_images/section_hotels_1_image4.jpg'),(12,'Reino Unido','Londres','Londres es una ciudad fascinante con una mezcla...','Hotel London Star',4,8.8,4726,'section_hotels_images/section_hotels_2_image1.jpg','section_hotels_images/section_hotels_2_image2.jpg','section_hotels_images/section_hotels_2_image3.jpg','section_hotels_images/section_hotels_2_image4.jpg'),(13,'Francia','París','París, la Ciudad de la Luz, es conocida por su...','Hotel Belle Étoile',5,9.1,5890,'section_hotels_images/section_hotels_3_image1.jpg','section_hotels_images/section_hotels_3_image2.jpg','section_hotels_images/section_hotels_3_image3.jpg','section_hotels_images/section_hotels_3_image4.jpg'),(14,'Estados Unidos','Nueva York','Nueva York, la Gran Manzana, es una ciudad que...','Hotel Big Apple',4,8.6,4125,'section_hotels_images/section_hotels_4_image1.jpg','section_hotels_images/section_hotels_4_image2.jpg','section_hotels_images/section_hotels_4_image3.jpg','section_hotels_images/section_hotels_4_image4.jpg'),(15,'Australia','Sidney','Sídney es una ciudad vibrante con una mezcla de playas...','Hotel Paradise',4,8.7,2938,'section_hotels_images/section_hotels_5_image1.jpg','section_hotels_images/section_hotels_5_image2.jpg','section_hotels_images/section_hotels_5_image3.jpg','section_hotels_images/section_hotels_5_image4.jpg'),(16,'China','Pekín','Pekín, la capital de China, es una ciudad que combina...','Hotel Imperial',5,9,4356,'section_hotels_images/section_hotels_6_image1.jpg','section_hotels_images/section_hotels_6_image2.jpg','section_hotels_images/section_hotels_6_image3.jpg','section_hotels_images/section_hotels_6_image4.jpg'),(17,'Brasil','Río de Janeiro','Río de Janeiro, la Ciudad Maravillosa, es famosa por...','Hotel Samba Beach',4,8.5,3784,'section_hotels_images/section_hotels_7_image1.jpg','section_hotels_images/section_hotels_7_image2.jpg','section_hotels_images/section_hotels_7_image3.jpg','section_hotels_images/section_hotels_7_image4.jpg'),(18,'Japón','Tokio','Tokio, la capital de Japón, es una metrópolis vibrante que...','Hotel Sakura',4,8.9,4105,'section_hotels_images/section_hotels_8_image1.jpg','section_hotels_images/section_hotels_8_image2.jpg','section_hotels_images/section_hotels_8_image3.jpg','section_hotels_images/section_hotels_8_image4.jpg'),(19,'Sudáfrica','Ciudad del Cabo','Ciudad del Cabo es un destino asombroso con una belleza...','Hotel Vista al Mar',5,9.3,6218,'section_hotels_images/section_hotels_9_image1.jpg','section_hotels_images/section_hotels_9_image2.jpg','section_hotels_images/section_hotels_9_image3.jpg','section_hotels_images/section_hotels_9_image4.jpg');
/*!40000 ALTER TABLE `projects_sectionhotels` ENABLE KEYS */;
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
