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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(500) DEFAULT NULL,
  `productDescription` varchar(1000) DEFAULT NULL,
  `productPrice` double DEFAULT NULL,
  `totalSoldQuantity` int DEFAULT NULL,
  `productAddedDate` timestamp NULL DEFAULT NULL,
  `smallQuantity` int DEFAULT NULL,
  `mediumQuantity` int DEFAULT NULL,
  `largeQuantity` int DEFAULT NULL,
  `extraLargeQuantity` int DEFAULT NULL,
  `size` varchar(500) DEFAULT NULL,
  `imageUrl` varchar(500) DEFAULT NULL,
  `productDetails` varchar(2000) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  PRIMARY KEY (`productId`),
  UNIQUE KEY `product_id_UNIQUE` (`productId`),
  KEY `categoryId12345_idx` (`categoryId`),
  CONSTRAINT `categoryId12345` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Red T-Shirt','men,man,mard',599,20,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://m.media-amazon.com/images/I/61lTDRuWEuL._AC_UL480_FMwebp_QL65_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',1),(2,'Blue T-Shirt','men,man,mard',499,20,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://m.media-amazon.com/images/I/613BlDwF+yL._AC_UL480_FMwebp_QL65_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',1),(3,'Men\'s formal','women,woman,aaurat ',999,50,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://m.media-amazon.com/images/I/81+evO8AxiL._AC_UL480_FMwebp_QL65_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',2),(4,'Womens\'s Blazer','women,woman,aaurat ',999,60,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|','https://m.media-amazon.com/images/I/81Jjkrm-vYL._AC_UL480_FMwebp_QL65_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',4),(5,'Kid\'s Shirts','kid,baccha',599,20,'2021-09-01 03:31:15',20,20,20,20,'s||l|ex','https://m.media-amazon.com/images/I/71xBbDHAdNL._AC_UL480_FMwebp_QL65_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',5),(6,'Shirt','men,man,mard',499,20,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://api.powerlook.in/pub/media/catalog/product//cache/a355f488ce208bb58a90660f35cdc6e0/d/p/dp_712.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',1),(7,'Shirt','men,man,mard',399,20,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://api.powerlook.in/pub/media/catalog/product//cache/a355f488ce208bb58a90660f35cdc6e0/d/p/dp_931.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',1),(8,'Shirt','men,man,mard',499,20,'2021-09-01 03:31:15',20,20,20,20,'|m|l|ex','https://api.powerlook.in/pub/media/catalog/product//cache/a355f488ce208bb58a90660f35cdc6e0/d/p/dp_566_1_1.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',1),(9,'T-Shirt','kid,baccha',599,20,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://m.media-amazon.com/images/I/61sFLnpPerL._AC_UL320_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',5),(10,'T-Shirt','kid,baccha',499,20,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://m.media-amazon.com/images/I/A1gBcfp+vGS._AC_UL480_FMwebp_QL65_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',5),(11,'T-Shirt','kid,baccha',499,20,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://m.media-amazon.com/images/I/61jXRjkD+ZL._AC_UL480_FMwebp_QL65_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',5),(12,'T-Shirt','women,woman,aaurat ',599,20,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://m.media-amazon.com/images/I/71OBf8tSLAL._AC_UL480_FMwebp_QL65_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',3),(13,'T-Shirt','women,woman,aaurat ',799,20,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://m.media-amazon.com/images/I/31NS3rA0nMS._AC_UL480_FMwebp_QL65_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',3),(14,'T-Shirt','women,woman,aaurat ',800,20,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://m.media-amazon.com/images/I/51N3d0HeAEL._AC_UL480_FMwebp_QL65_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',3),(15,'T-Shirt','kid,baccha',500,20,'2021-09-01 03:31:15',20,20,20,20,'s|m|l|ex','https://m.media-amazon.com/images/I/51PxG9tAFLL._AC_UL480_FMwebp_QL65_.jpg','Care Instructions: Hand Wash Only |Fit Type: Regular Fit |Made from 100 % Super Fine cotton |Perfect fit |Long lasting colors. Actual colour may slighlty vary due to computer color limitations',5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-25 19:10:25
