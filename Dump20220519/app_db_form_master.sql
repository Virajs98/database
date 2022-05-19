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
-- Table structure for table `form_master`
--

DROP TABLE IF EXISTS `form_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_master` (
  `form_id` int(50) NOT NULL AUTO_INCREMENT,
  `task_id` int(50) NOT NULL,
  `desc_manager` text NOT NULL,
  `desc_emp` text NOT NULL,
  `for_id` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL,
  `created_by_id` int(50) NOT NULL,
  `created_manager_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_manager_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_emp_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes',
  PRIMARY KEY (`form_id`),
  KEY `task_id` (`task_id`),
  KEY `for_id` (`for_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `form_master_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `task_master` (`task_id`),
  CONSTRAINT `form_master_ibfk_2` FOREIGN KEY (`for_id`) REFERENCES `user_master` (`user_master_id`),
  CONSTRAINT `form_master_ibfk_3` FOREIGN KEY (`dept_id`) REFERENCES `dept_master` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_master`
--

LOCK TABLES `form_master` WRITE;
/*!40000 ALTER TABLE `form_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_master` ENABLE KEYS */;
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
