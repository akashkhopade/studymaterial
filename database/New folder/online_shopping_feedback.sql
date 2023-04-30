-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: online_shopping
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedbackId` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(1000) DEFAULT NULL,
  `commentDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`feedbackId`),
  UNIQUE KEY `feedback_id_UNIQUE` (`feedbackId`),
  KEY `user_id_idx` (`userId`),
  KEY `productid2_idx` (`productId`),
  CONSTRAINT `productid2` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`),
  CONSTRAINT `userID3` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Nice Shirt. This is best site I have ever come across.','2022-01-29 19:55:00',4,11,1),(2,'Best product','2022-01-29 19:56:53',5,10,4),(3,'Love the site','2022-01-29 19:58:16',3,12,4),(4,'I wonder who made this wonderful site','2022-01-29 19:59:56',5,12,4),(5,'Not Bad Product','2022-01-29 20:04:02',2,11,3),(6,'You should go on Shark Tank India','2022-01-29 20:04:02',5,13,2),(7,'Cheers','2022-01-29 20:04:02',3,13,3),(8,'Pune','2022-03-09 07:47:34',5,10,2),(9,'Average Product','2022-03-09 07:51:33',3,11,3),(10,'Nice Shirt','2022-03-09 08:53:51',4,11,2),(11,'Awesome','2022-03-10 14:12:22',4,12,3),(12,'How are you doing?','2022-03-10 14:32:08',2,10,3),(13,'Hey Brother','2022-03-10 14:33:51',4,13,2),(14,'Average','2022-03-10 14:42:28',0,10,1),(15,'Enough','2022-03-10 14:42:49',3,10,3),(16,'Need to improve','2022-03-10 14:43:52',1,11,4),(17,'Comment Comment','2022-03-10 16:25:48',4,10,1),(18,'Nice Product Good Work','2022-03-10 16:29:20',4,12,1),(19,'Best product in market','2022-03-27 08:53:02',4,10,2),(52,'Nice Product I have ever seen','2022-03-27 09:52:03',0,10,1),(53,'Good work','2022-03-27 09:52:29',5,10,1),(54,'Keep it up','2022-03-27 09:52:42',5,10,1),(55,'For Testing','2022-04-04 05:21:12',4,11,2),(56,'For Testing','2022-04-04 05:38:41',4,11,2);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-25 19:10:20
