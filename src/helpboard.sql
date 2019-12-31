-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: help
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `helpboard`
--

DROP TABLE IF EXISTS `helpboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `helpboard` (
  `bno` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(3000) NOT NULL,
  `faqtitle` varchar(100) DEFAULT NULL,
  `faqcontent` varchar(3000) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `paytitle` varchar(45) DEFAULT NULL,
  `retiretitle` varchar(45) DEFAULT NULL,
  `usetitle` varchar(45) DEFAULT NULL,
  `logintitle` varchar(45) DEFAULT NULL,
  `contenttitle` varchar(45) DEFAULT NULL,
  `playtitle` varchar(45) DEFAULT NULL,
  `servicetitle` varchar(45) DEFAULT NULL,
  `paycontent` varchar(1000) DEFAULT NULL,
  `retirecontent` varchar(1000) DEFAULT NULL,
  `usecontent` varchar(1000) DEFAULT NULL,
  `logincontent` varchar(1000) DEFAULT NULL,
  `contentcontent` varchar(1000) DEFAULT NULL,
  `playcontent` varchar(1000) DEFAULT NULL,
  `servicecontent` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpboard`
--

LOCK TABLES `helpboard` WRITE;
/*!40000 ALTER TABLE `helpboard` DISABLE KEYS */;
INSERT INTO `helpboard` VALUES (1,'12312313','asdasdads','1231','123123','','','111','222','333','444','444','555','666','111','222','333','444','555','666','111'),(2,'asdadsasd','asdasd','12312','123123','','','111','222','333','444','444','555','666','111','222','333','444','5555','666','111'),(3,'asdasdasd','asdads','123123','123123','','','111','222','333','444','444','555','666','111','222','333','444','555','666','111'),(4,'000','000','000','000',NULL,NULL,'111','222','333','444','444','555','666','111','222','333','444','555','666','111');
/*!40000 ALTER TABLE `helpboard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-10 14:47:40
