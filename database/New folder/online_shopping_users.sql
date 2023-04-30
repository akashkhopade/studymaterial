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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(500) DEFAULT NULL,
  `userMobileNumber` bigint DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `userEmail` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `registeredAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastLogin` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isEmailVerified` tinyint DEFAULT '0',
  `role` varchar(250) DEFAULT NULL,
  `enabled` tinyint DEFAULT '1',
  `accountNonExpired` tinyint DEFAULT '1',
  `credentialsNonExpired` tinyint DEFAULT '1',
  `accountNonLocked` tinyint DEFAULT '1',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `user_id_UNIQUE` (`userId`),
  UNIQUE KEY `user_email_UNIQUE` (`userEmail`),
  UNIQUE KEY `user_mobile_number_UNIQUE` (`userMobileNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'hanumant',NULL,NULL,'han@gmail.com','$2a$08$O.ABYwLM4gnidoUiXvFir.Kx7IGx0Y1le8yfFu3qW2j0reRg8cdpy','2022-01-20 08:35:28','2022-01-20 08:35:28',0,'user',1,1,1,1),(11,'aman',NULL,NULL,'aman@gmail.com','$2a$08$AHrGOdRKdOQ4ad/udBIvR.R9M7Ys0/5gVshASOR.rfMZfBJLc7NuS','2022-02-03 18:07:43','2022-02-03 18:07:43',0,'user',1,1,1,1),(12,'amit',NULL,NULL,'amit@gmail.com','$2a$08$X8Khx8hcDONPCbqtcs/FN.6NRrCAknM8vJZ22kBtgIEp.SLk0EdC2','2022-02-04 11:11:30','2022-02-04 11:11:30',0,'user',1,1,1,1),(13,'adi',NULL,NULL,'adi@gmail.com','$2a$08$elubWrGoPoU5sMVItU3XfuvXYRVvZzIrP2JsQltq3ZqJW..ovMzHm','2022-02-04 11:40:10','2022-02-04 11:40:10',0,'user',1,1,1,1),(14,'Rahul',1234567890,'Male','rah@gmail.com','$2a$08$h8.UWq/H7EbSyVJOm/QAK.zZoi1yElTVzDrBkovZpkO/BHW2iMYM2','2022-03-09 16:55:28','2022-03-09 16:55:28',0,'user',1,1,1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-25 19:10:26
