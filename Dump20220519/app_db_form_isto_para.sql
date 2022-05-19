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
-- Table structure for table `form_isto_para`
--

DROP TABLE IF EXISTS `form_isto_para`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_isto_para` (
  `form_isto_para_id` int(50) NOT NULL AUTO_INCREMENT,
  `form_id` int(50) NOT NULL,
  `task_id` int(50) NOT NULL,
  `para_id` int(50) NOT NULL,
  `user_master_id` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL,
  `rating_emp` int(20) NOT NULL,
  `rating_manager` int(20) NOT NULL,
  `created_by_id` int(50) NOT NULL,
  `updated_by_id` int(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no 1=yes',
  PRIMARY KEY (`form_isto_para_id`),
  KEY `form_id` (`form_id`),
  KEY `task_id` (`task_id`),
  KEY `para_id` (`para_id`),
  KEY `user_master_id` (`user_master_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `form_isto_para_ibfk_1` FOREIGN KEY (`form_id`) REFERENCES `form_master` (`form_id`),
  CONSTRAINT `form_isto_para_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `task_master` (`task_id`),
  CONSTRAINT `form_isto_para_ibfk_3` FOREIGN KEY (`para_id`) REFERENCES `para_master` (`para_id`),
  CONSTRAINT `form_isto_para_ibfk_4` FOREIGN KEY (`user_master_id`) REFERENCES `user_master` (`user_master_id`),
  CONSTRAINT `form_isto_para_ibfk_5` FOREIGN KEY (`dept_id`) REFERENCES `dept_master` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_isto_para`
--

LOCK TABLES `form_isto_para` WRITE;
/*!40000 ALTER TABLE `form_isto_para` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_isto_para` ENABLE KEYS */;
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
