-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: queans
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Options` varchar(200) DEFAULT NULL,
  `isCorrect` tinyint DEFAULT NULL,
  `FKQid` int DEFAULT NULL,
  `AnswerId` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Fk_For_Options` (`FKQid`),
  CONSTRAINT `Fk_For_Options` FOREIGN KEY (`FKQid`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'jdk',0,1,1),(2,'jre',0,1,2),(3,'jdb',1,1,3),(4,'jvm',0,1,4),(5,'java.lang.object',1,2,1),(6,'java.lang.string',0,2,2),(7,'java.lang.util',0,2,3),(8,'none',0,2,4),(9,'int',0,3,1),(10,'void',1,3,2),(11,'double',0,3,3),(12,'none',0,3,4),(13,'public',0,4,1),(14,'protected',0,4,2),(15,'private',0,4,3),(16,'static',1,4,4),(17,'comparator',0,5,1),(18,'eventlistner',0,5,2),(19,'set',0,5,3),(20,'collection',1,5,4),(21,'polymorphism',0,6,1),(22,'inheritance',0,6,2),(23,'compilation',1,6,3),(24,'encapsulation',0,6,4),(25,'memory_error',0,7,1),(26,'out_of_memory_error',1,7,2),(27,'memory_out_of_bound_exception',0,7,3),(28,'memory_full_exception',0,7,4),(29,'break',0,8,1),(30,'continue',0,8,2),(31,'for()',0,8,3),(32,'if()',1,8,4),(33,'protected',0,9,1),(34,'void',1,9,2),(35,'public',0,9,3),(36,'private',0,9,4),(37,'serializable',0,10,1),(38,'externalization',0,10,2),(39,'objectoutput',1,10,3),(40,'objectinput',0,10,4);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20 15:48:44
