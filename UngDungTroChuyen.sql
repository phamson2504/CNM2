-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: baitap
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
-- Table structure for table `chapnhanadd`
--

DROP TABLE IF EXISTS `chapnhanadd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapnhanadd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idGui` int NOT NULL,
  `idNhan` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idGui` (`idGui`),
  CONSTRAINT `chapnhanadd_ibfk_1` FOREIGN KEY (`idGui`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapnhanadd`
--

LOCK TABLES `chapnhanadd` WRITE;
/*!40000 ALTER TABLE `chapnhanadd` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapnhanadd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frends`
--

DROP TABLE IF EXISTS `frends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idTroChuyen` int NOT NULL,
  `iduser` int NOT NULL,
  `idNhan` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idTroChuyen` (`idTroChuyen`),
  KEY `iduser` (`iduser`),
  CONSTRAINT `frends_ibfk_1` FOREIGN KEY (`idTroChuyen`) REFERENCES `trochuyen` (`id`),
  CONSTRAINT `frends_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frends`
--

LOCK TABLES `frends` WRITE;
/*!40000 ALTER TABLE `frends` DISABLE KEYS */;
INSERT INTO `frends` VALUES (1,1,1,2);
/*!40000 ALTER TABLE `frends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membernhom`
--

DROP TABLE IF EXISTS `membernhom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membernhom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idTroChuyen` int NOT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idTroChuyen` (`idTroChuyen`),
  KEY `iduser` (`iduser`),
  CONSTRAINT `membernhom_ibfk_1` FOREIGN KEY (`idTroChuyen`) REFERENCES `trochuyen` (`id`),
  CONSTRAINT `membernhom_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membernhom`
--

LOCK TABLES `membernhom` WRITE;
/*!40000 ALTER TABLE `membernhom` DISABLE KEYS */;
/*!40000 ALTER TABLE `membernhom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idTroChuyen` int NOT NULL,
  `idSender` int NOT NULL,
  `Texts` varchar(255) DEFAULT NULL,
  `times` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTroChuyen` (`idTroChuyen`),
  KEY `idSender` (`idSender`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`idTroChuyen`) REFERENCES `trochuyen` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`idSender`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (2,1,1,'1','Jun 14, 2022 3:44 PM'),(3,1,2,'2','Jun 14, 2022 3:44 PM');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trochuyen`
--

DROP TABLE IF EXISTS `trochuyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trochuyen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenTroChuyen` varchar(255) NOT NULL,
  `anh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trochuyen`
--

LOCK TABLES `trochuyen` WRITE;
/*!40000 ALTER TABLE `trochuyen` DISABLE KEYS */;
INSERT INTO `trochuyen` VALUES (1,'12',NULL);
/*!40000 ALTER TABLE `trochuyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `anh` varchar(255) DEFAULT NULL,
  `matkhau` varchar(255) DEFAULT NULL,
  `ngaysinh` varchar(255) DEFAULT NULL,
  `gioitinh` varchar(255) DEFAULT NULL,
  `emailToken` varchar(255) DEFAULT NULL,
  `logToken` varchar(255) DEFAULT NULL,
  `isVerify` tinyint(1) DEFAULT NULL,
  `role` tinyint(1) DEFAULT NULL,
  `ngayKhoitao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'pham thai son','0965603387','sonktk1@gmail.com','/images/avatar.png','123',NULL,NULL,'7212ddf40722bd84ce4e65e8e25d8e92ca569cbd7cdcfa5cbd6ce56e792e21d64d547fc66eac25f55345009d5df274ffcb99e03dceb243c5ab21fd2f6c715ad1',NULL,1,NULL,NULL),(2,'pham anh duy','0965603388','sonktk1@gmail.com','/images/avatar.png','123',NULL,NULL,'e4d2ef552fe9555f0092869de7bb28da28c812381ff138e7d3f4cb43e20a67e7578bc66c8d1d02a8568b0c31a8a66401568f1f055f0fc1faa6ae858d7980d977',NULL,1,NULL,NULL);
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

-- Dump completed on 2022-06-23 11:57:33
