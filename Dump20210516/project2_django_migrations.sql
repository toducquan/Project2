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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-05-01 02:43:30.840893'),(2,'auth','0001_initial','2021-05-01 02:43:30.956927'),(3,'admin','0001_initial','2021-05-01 02:43:31.365435'),(4,'admin','0002_logentry_remove_auto_add','2021-05-01 02:43:31.468411'),(5,'admin','0003_logentry_add_action_flag_choices','2021-05-01 02:43:31.477429'),(6,'contenttypes','0002_remove_content_type_name','2021-05-01 02:43:31.574290'),(7,'auth','0002_alter_permission_name_max_length','2021-05-01 02:43:31.654967'),(8,'auth','0003_alter_user_email_max_length','2021-05-01 02:43:31.683246'),(9,'auth','0004_alter_user_username_opts','2021-05-01 02:43:31.689995'),(10,'auth','0005_alter_user_last_login_null','2021-05-01 02:43:31.732433'),(11,'auth','0006_require_contenttypes_0002','2021-05-01 02:43:31.735824'),(12,'auth','0007_alter_validators_add_error_messages','2021-05-01 02:43:31.743806'),(13,'auth','0008_alter_user_username_max_length','2021-05-01 02:43:31.795501'),(14,'auth','0009_alter_user_last_name_max_length','2021-05-01 02:43:31.847320'),(15,'auth','0010_alter_group_name_max_length','2021-05-01 02:43:31.866321'),(16,'auth','0011_update_proxy_permissions','2021-05-01 02:43:31.874298'),(17,'auth','0012_alter_user_first_name_max_length','2021-05-01 02:43:31.930758'),(18,'sessions','0001_initial','2021-05-01 02:43:31.947833'),(19,'smartshop','0001_initial','2021-05-01 04:08:28.624464'),(20,'smartshop','0002_product','2021-05-02 00:10:13.153338'),(21,'smartshop','0003_product_item_img','2021-05-02 00:12:16.580867'),(22,'smartshop','0004_auto_20210502_2149','2021-05-02 14:49:27.334570'),(23,'smartshop','0005_auto_20210502_2215','2021-05-02 15:15:44.039737'),(24,'smartshop','0006_remove_orderitem_date_added','2021-05-02 15:17:03.780152'),(25,'smartshop','0007_auto_20210502_2242','2021-05-02 15:43:07.214668'),(26,'smartshop','0008_auto_20210503_1253','2021-05-03 05:53:09.813853'),(27,'smartshop','0009_auto_20210515_1527','2021-05-15 08:28:11.302065');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
