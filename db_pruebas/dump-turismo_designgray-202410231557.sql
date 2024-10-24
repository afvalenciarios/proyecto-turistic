-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: jskha.h.filess.io    Database: turismo_designgray
-- ------------------------------------------------------
-- Server version	8.0.36-28

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
-- Table structure for table `sitios_turisticos`
--

DROP TABLE IF EXISTS `sitios_turisticos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sitios_turisticos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_general_ci,
  `ubicacion` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitios_turisticos`
--

LOCK TABLES `sitios_turisticos` WRITE;
/*!40000 ALTER TABLE `sitios_turisticos` DISABLE KEYS */;
INSERT INTO `sitios_turisticos` VALUES (1,'Museo del Caribe','Centro cultural que promueve la historia, la cultura y la biodiversidad del Caribe colombiano.','Barranquilla, Atlántico','2023-04-12'),(2,'Castillo de Salgar','Histórico castillo con vistas al mar Caribe, utilizado para eventos culturales y turísticos.','Barranqilla, Atlántico','2021-12-12'),(3,'Zoológico de Barranquilla','Uno de los zoológicos más antiguos de Colombia, hogar de diversas especies de animales.','Barranquilla, Atlántico','2023-07-30'),(4,'Gran Malecón del Río','Extenso paseo junto al río Magdalena, con áreas de recreación, restaurantes y espacios culturales.','Barranquilla, Atlántico','2023-06-10'),(5,'Teatro Amira de la Rosa','Teatro emblemático de la ciudad que alberga eventos culturales, conciertos y obras teatrales.','Barranquilla, Atlántico','2023-08-15'),(10,'El Barrio El Prado','Zona histórica y turística que destaca por sus coloridas casas, restaurantes y bares tradicionales.','Barranquilla, Atlántico','2024-12-12');
/*!40000 ALTER TABLE `sitios_turisticos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'turismo_designgray'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-23 15:57:26
