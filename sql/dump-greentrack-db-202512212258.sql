/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: greentrack-db
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
  `id` binary(16) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `device_status` enum('DISPONIBLE','PRESTADO') DEFAULT NULL,
  `device_type` enum('CELULAR','LAPTOP','MONITOR','TABLET') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `device` VALUES
('™√‘Gπ¥™Rü!ô&Î','Toshiba','Laptop AMD V5','DISPONIBLE','LAPTOP'),
('®H∆˚‚Bà≠œÍDÔËäÍ','fasdf asdf','fasdf asd','PRESTADO','LAPTOP'),
('1‰ø¢ÎKïΩ~é]?9{f','AKITA','Monitor LCD','DISPONIBLE','MONITOR');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan` (
  `issued_at` datetime(6) NOT NULL,
  `returned_at` datetime(6) DEFAULT NULL,
  `device_id` binary(16) DEFAULT NULL,
  `employee_id` binary(16) DEFAULT NULL,
  `id` binary(16) NOT NULL,
  `loan_status` enum('ACTIVO','DEVUELTO') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2fmwqxd1wrqmba9qaw9t8j40i` (`device_id`),
  KEY `FK7frvevfdmomjwmklnf0n1qk3o` (`employee_id`),
  CONSTRAINT `FK2fmwqxd1wrqmba9qaw9t8j40i` FOREIGN KEY (`device_id`) REFERENCES `device` (`id`),
  CONSTRAINT `FK7frvevfdmomjwmklnf0n1qk3o` FOREIGN KEY (`employee_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `loan` VALUES
('2025-12-21 22:35:40.078400','2025-12-21 22:35:50.866436','™√‘Gπ¥™Rü!ô&Î','dΩ∞Ÿºª@%öÅê6õÿ©ß','9©˛R©vC·©)ÛVöÏh','DEVUELTO'),
('2025-12-21 19:03:59.723684',NULL,'®H∆˚‚Bà≠œÍDÔËäÍ','dΩ∞Ÿºª@%öÅê6õÿ©ß','árú4ÆˆJ;ãÈXJO≥','ACTIVO');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` binary(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `role` enum('ADMIN','USER') DEFAULT NULL,
  `user_status` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `user` VALUES
('dΩ∞Ÿºª@%öÅê6õÿ©ß','admin@admin.com','admin','$2a$10$cBoxsiyhjVIuG50ZuYv9x.9osgeK5TBEafh9Ucwvi1YJWl34vBHfW','admin','ADMIN','ACTIVO');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Dumping routines for database 'greentrack-db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-12-21 22:58:01
