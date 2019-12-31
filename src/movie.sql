CREATE DATABASE  IF NOT EXISTS `brooks` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `brooks`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: brooks
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
-- Table structure for table `moviecomment`
--

DROP TABLE IF EXISTS `moviecomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moviecomment` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL COMMENT '이메일',
  `content` mediumtext NOT NULL COMMENT '댓글내용',
  `reg_date` date NOT NULL COMMENT '댓글작성일',
  `movie_name` varchar(30) NOT NULL COMMENT '영화코드',
  `likecount` varchar(10) DEFAULT NULL COMMENT '댓글공감수',
  `user_rating` varchar(30) DEFAULT NULL COMMENT '별점',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviecomment`
--

LOCK TABLES `moviecomment` WRITE;
/*!40000 ALTER TABLE `moviecomment` DISABLE KEYS */;
INSERT INTO `moviecomment` VALUES (2,'aaa@naver.com','asd','2019-11-27','해리 포터와 죽음의 성물 - 2부','0','10'),(3,'bbb@naver.com','asd','2019-11-27','해리 포터와 죽음의 성물 - 2부','0','9.2'),(4,'bbb@naver.com','asd','2019-11-27','해리 포터와 죽음의 성물 - 2부','0','9.2'),(5,'bbb@naver.com','asd','2019-11-27','해리 포터와 죽음의 성물 - 2부','0','9.2'),(7,'bbb@naver.com','asd','2019-11-27','해리 포터와 죽음의 성물 - 2부','0','9.2'),(8,'bbb@naver.com','test','2019-11-27','해리 포터와 죽음의 성물 - 2부','0','9.2'),(9,'bbb@naver.com','test','2019-11-27','해리 포터와 죽음의 성물 - 2부','0','9.2'),(10,'bbb@naver.com','테스트입니다','2019-11-27','해리 포터와 죽음의 성물 - 2부','0','9.2'),(12,'bbb@naver.com','qwezxcqrqr','2019-11-27','해리 포터와 죽음의 성물 - 1부','0','9.2');
/*!40000 ALTER TABLE `moviecomment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04 12:25:51
