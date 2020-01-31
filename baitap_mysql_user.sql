-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: baitap_mysql
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rank` tinyint(4) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Em. Phương Phụng','bnguyen@example.com',4,1,'2017-06-22 08:30:30'),(2,'Chị. Khoa Phương','dieu.hua@example.net',3,1,'2017-06-22 08:30:30'),(3,'Đinh Long','ndao@example.net',1,0,'2017-06-22 08:30:30'),(4,'Ma Quảng Vũ','minh82@example.com',1,1,'2017-06-22 08:30:30'),(5,'Bác. Tăng Diệu Nhung','lan53@example.net',2,0,'2017-06-22 08:30:30'),(6,'Cụ. Triệu Liễu','tho.du@example.com',2,0,'2017-06-22 08:30:30'),(7,'Hồ Bào','kkhuong@example.com',3,0,'2017-06-22 08:30:30'),(8,'Anh. Tào Ngọc Khiếu','sinh.can@example.org',1,1,'2017-06-22 08:30:30'),(9,'Đoàn Thảo','trach.doan@example.org',3,1,'2017-06-22 08:30:30'),(10,'Đồng Đức Nguyên','ohan@example.org',3,1,'2017-06-22 08:30:30'),(11,'Đồng Đức Khieu','ohan@example.com',5,1,'2017-11-22 08:30:30'),(12,'Văn Khiêu','khieu@example.com',4,1,'2017-10-22 08:30:30'),(13,'Lê Khiểu','cori@example.com',6,1,'2017-11-20 07:30:30'),(14,'Phan Khiệu','ohara@example.com',5,1,'2017-10-21 08:30:30');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-13 17:09:40
