-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: dbsector
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_persona`
--

DROP TABLE IF EXISTS `tbl_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_persona` (
  `cod_persona` int NOT NULL,
  `nom_persona` varchar(50) NOT NULL,
  `fec_nacimiento` date NOT NULL,
  `cod_sector` int NOT NULL,
  `cod_zona` int NOT NULL,
  `sueldo` float NOT NULL,
  KEY `cod_sector` (`cod_sector`),
  KEY `cod_zona` (`cod_zona`),
  CONSTRAINT `tbl_persona_ibfk_1` FOREIGN KEY (`cod_sector`) REFERENCES `tbl_sector` (`cod_sector`),
  CONSTRAINT `tbl_persona_ibfk_2` FOREIGN KEY (`cod_zona`) REFERENCES `tbl_zona` (`cod_zona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_persona`
--

LOCK TABLES `tbl_persona` WRITE;
/*!40000 ALTER TABLE `tbl_persona` DISABLE KEYS */;
INSERT INTO `tbl_persona` VALUES (1,'David Lopez','1999-08-27',1,200,500),(3,'Roberto Placencio','1999-08-05',2,303,150),(2,'Guillermo Rivera','1999-12-25',3,400,240),(4,'David Lastre','1997-05-23',2,302,1000),(5,'Derian Arias','1998-01-02',2,301,542),(6,'Joel Delgado','1998-12-06',1,203,630),(7,'Josias Navarra','1999-10-25',1,200,611),(8,'Ronny Andres','1998-12-01',2,303,1100),(9,'Andrea Gonzale','1999-12-01',3,400,340),(10,'David Hernandez','1999-01-01',2,302,758),(11,'Irina Macias','1999-01-01',2,301,700),(12,'Abel Gronul','1995-02-01',1,203,500),(13,'Jose Ramirez','1940-02-10',1,203,240),(14,'David Roman','1999-08-27',1,200,254.3),(14,'David Roman','1999-10-27',2,300,254.45);
/*!40000 ALTER TABLE `tbl_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sector`
--

DROP TABLE IF EXISTS `tbl_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sector` (
  `cod_sector` int NOT NULL,
  `nombre_sector` varchar(10) NOT NULL,
  PRIMARY KEY (`cod_sector`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sector`
--

LOCK TABLES `tbl_sector` WRITE;
/*!40000 ALTER TABLE `tbl_sector` DISABLE KEYS */;
INSERT INTO `tbl_sector` VALUES (1,'Norte'),(2,'Sur'),(3,'Oeste');
/*!40000 ALTER TABLE `tbl_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_zona`
--

DROP TABLE IF EXISTS `tbl_zona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_zona` (
  `cod_zona` int NOT NULL,
  `cod_sector` int NOT NULL,
  `nombre_zona` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_zona`),
  KEY `cod_sector` (`cod_sector`),
  CONSTRAINT `tbl_zona_ibfk_1` FOREIGN KEY (`cod_sector`) REFERENCES `tbl_sector` (`cod_sector`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_zona`
--

LOCK TABLES `tbl_zona` WRITE;
/*!40000 ALTER TABLE `tbl_zona` DISABLE KEYS */;
INSERT INTO `tbl_zona` VALUES (200,1,'Urdesa'),(201,1,'Alborada'),(202,1,'Sauces'),(203,1,'Samanes'),(300,2,'Acacias'),(301,2,'Guasmo'),(302,2,'Suburbio'),(303,2,'Astillero'),(400,3,'Puerto Hondo');
/*!40000 ALTER TABLE `tbl_zona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbsector'
--
/*!50003 DROP PROCEDURE IF EXISTS `getInfoPersonas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoPersonas`()
BEGIN
SELECT 
cod_persona,
nom_persona, 
tbl_sector.cod_sector, 
tbl_sector.nombre_sector,
tbl_zona.cod_zona,
tbl_zona.nombre_zona,
sueldo
FROM tbl_persona
INNER JOIN tbl_sector ON tbl_persona.cod_sector = tbl_sector.cod_sector
INNER JOIN tbl_zona ON tbl_persona.cod_zona = tbl_zona.cod_zona;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSueldosSector` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSueldosSector`()
BEGIN
SELECT 
tbl_zona.cod_zona,
tbl_sector.nombre_sector,
tbl_zona.nombre_zona,
SUM(sueldo) sueldo_total
FROM tbl_persona
INNER JOIN tbl_sector ON tbl_persona.cod_sector = tbl_sector.cod_sector
INNER JOIN tbl_zona ON tbl_persona.cod_zona = tbl_zona.cod_zona
WHERE (YEAR(NOW()) -  YEAR(fec_nacimiento)) < 65
GROUP BY tbl_zona.nombre_zona
ORDER BY sueldo_total DESC
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05 21:26:57
