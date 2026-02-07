-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: ESCOLA
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.1

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
-- Table structure for table `ESTUDANTES`
--

DROP TABLE IF EXISTS `ESTUDANTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ESTUDANTES` (
  `IDESTUDANTE` int NOT NULL AUTO_INCREMENT,
  `DATA_NASCIMENTO` date NOT NULL,
  `REG_RESIDENCIA` char(20) NOT NULL,
  `VEICULO_PROPRIO` bit(1) NOT NULL,
  `TRABALHO` varchar(30) NOT NULL,
  PRIMARY KEY (`IDESTUDANTE`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ESTUDANTES`
--

LOCK TABLES `ESTUDANTES` WRITE;
/*!40000 ALTER TABLE `ESTUDANTES` DISABLE KEYS */;
INSERT INTO `ESTUDANTES` VALUES (1,'2006-10-10','Leste',_binary '\0','Analista de Suporte'),(2,'2006-09-06','Sul',_binary '','Produção'),(3,'1993-05-01','Oeste',_binary '\0','Estoquista'),(4,'1998-01-30','Oeste',_binary '','Estudante'),(5,'2003-12-13','Oeste',_binary '\0','Auxiliar Financeiro'),(6,'2000-05-19','Oeste',_binary '','Assistente de TI'),(7,'1976-03-05','Oeste',_binary '\0','Estudante'),(8,'1977-05-16','Norte',_binary '\0','Organização'),(9,'2002-08-30','Cambé',_binary '\0','Estudante'),(10,'2006-08-20','Cambé',_binary '\0','Estudante'),(11,'2006-07-10','Norte',_binary '','Estudante');
/*!40000 ALTER TABLE `ESTUDANTES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-06 21:51:32
