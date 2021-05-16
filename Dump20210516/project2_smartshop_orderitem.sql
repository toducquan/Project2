-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project2
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `smartshop_orderitem`
--

DROP TABLE IF EXISTS `smartshop_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smartshop_orderitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `Customer_id` int DEFAULT NULL,
  `pay` int,
  PRIMARY KEY (`id`),
  KEY `smartshop_orderitem_product_id_321eb4b3_fk_Product_id` (`product_id`),
  KEY `smartshop_orderitem_Customer_id_9e0833c0_fk_auth_user_id` (`Customer_id`),
  CONSTRAINT `smartshop_orderitem_Customer_id_9e0833c0_fk_auth_user_id` FOREIGN KEY (`Customer_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `smartshop_orderitem_product_id_321eb4b3_fk_Product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smartshop_orderitem`
--

LOCK TABLES `smartshop_orderitem` WRITE;
/*!40000 ALTER TABLE `smartshop_orderitem` DISABLE KEYS */;
INSERT INTO `smartshop_orderitem` VALUES (59,1,10,NULL,0),(60,1,1,NULL,0),(61,1,1,8,1),(62,1,3,8,1),(63,1,19,8,1),(64,1,40,8,1),(65,1,9,8,1),(66,1,1,NULL,0),(67,1,1,8,1),(68,1,1,1,1),(69,1,1,1,1),(70,1,19,1,1),(71,1,12,1,1),(72,1,15,1,1),(73,1,1,NULL,0),(74,1,1,1,1),(75,1,20,1,1),(76,1,6,1,0),(77,1,36,1,0),(78,1,6,NULL,0),(79,1,5,8,1),(80,1,20,8,1),(81,1,36,8,0),(82,1,49,8,0);
/*!40000 ALTER TABLE `smartshop_orderitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-16 10:29:30
