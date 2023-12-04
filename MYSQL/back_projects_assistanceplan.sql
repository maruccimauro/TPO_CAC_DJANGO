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
-- Table structure for table `projects_assistanceplan`
--

DROP TABLE IF EXISTS `projects_assistanceplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_assistanceplan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `summary` varchar(50) NOT NULL,
  `link` varchar(200) NOT NULL,
  `medal_image` varchar(100) NOT NULL,
  `time` varchar(50) NOT NULL,
  `range` varchar(50) NOT NULL,
  `queries` varchar(50) NOT NULL,
  `internation` varchar(50) NOT NULL,
  `reinstatement` varchar(50) NOT NULL,
  `medicaments` varchar(50) NOT NULL,
  `zone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_assistanceplan`
--

LOCK TABLES `projects_assistanceplan` WRITE;
/*!40000 ALTER TABLE `projects_assistanceplan` DISABLE KEYS */;
INSERT INTO `projects_assistanceplan` VALUES (1,'PLAN ORO','LA MEJOR OPCION','https://www.solicitar-plan-oro.com','section_assistance_images/medal_gold.png','Asistencia 24/7','Cobertura toda la familia','Consultas cubiertas sin límite','Sala de internacion privada','Consultas sin necesidad de reintegro','Medicamentos sin necesidad de reintegro','En cualquier parte del mundo'),(2,'PLAN BRONCE','UNA BUENA OPCION','https://www.solicitar-plan-bronce.com','section_assistance_images/medal_bronze.png','Asistencia 24/7','Cobertura de 1 persona','Hasta 3 consultas cubiertas','Sala de internacion compartida','Consultas por reintegro','Medicamentos por reintegro','En cualquier parte del mundo'),(3,'PLAN PLATA','EXCELENTE OPCION','https://www.solicitar-plan-plata.com','section_assistance_images/medal_silver.png','Asistencia 24/7','Cobertura de 2 personas','Hasta 3 consultas cubiertas','Sala de internacion privada','Consultas sin necesidad de reintegro','Medicamentos por reintegro','En cualquier parte del mundo');
/*!40000 ALTER TABLE `projects_assistanceplan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 17:46:41
