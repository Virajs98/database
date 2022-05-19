-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: app_db
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `dept_master`
--

DROP TABLE IF EXISTS `dept_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_master` (
  `dept_id` int(50) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by_id` int(50) NOT NULL,
  `updated_by_id` int(50) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no 1=yes',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_master`
--

LOCK TABLES `dept_master` WRITE;
/*!40000 ALTER TABLE `dept_master` DISABLE KEYS */;
INSERT INTO `dept_master` VALUES (1,'IT','2022-05-18 11:30:59','2022-05-18 11:30:59',0,0,0),(3,'sales','2022-05-18 11:34:25','2022-05-18 11:34:25',0,0,0),(4,'Hr','2022-05-18 12:01:07','2022-05-18 12:01:07',0,0,0),(5,'trial','2022-05-18 12:42:02','2022-05-18 12:42:02',0,0,1),(6,'gaming','2022-05-18 12:53:06','2022-05-18 12:53:06',0,0,1),(17,'advertisement','2022-05-19 00:30:26','2022-05-19 00:30:26',0,0,1),(18,'export','2022-05-19 00:33:56','2022-05-19 00:33:56',0,0,1),(19,'IMPORT','2022-05-19 10:55:27','2022-05-19 10:55:27',0,0,1),(20,'IIIIII','2022-05-19 12:39:29','2022-05-19 12:39:29',0,0,1);
/*!40000 ALTER TABLE `dept_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-19 14:37:34
