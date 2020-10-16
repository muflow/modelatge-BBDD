-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: Gafas
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clientes` (
  `id_Clientes` int NOT NULL AUTO_INCREMENT,
  `nombre_Clientes` varchar(45) NOT NULL,
  `email_Clientes` varchar(45) NOT NULL,
  `fecha_regist_Clientes` date DEFAULT NULL,
  `id_Gafas` int NOT NULL,
  PRIMARY KEY (`id_Clientes`),
  KEY `fk_Clientes_Gafas1_idx` (`id_Gafas`),
  CONSTRAINT `fk_Clientes_Gafas1` FOREIGN KEY (`id_Gafas`) REFERENCES `Gafas` (`id_Gafas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Direccion_Proveedor`
--

DROP TABLE IF EXISTS `Direccion_Proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Direccion_Proveedor` (
  `id_Direccion_Proveedor` int NOT NULL AUTO_INCREMENT,
  `calle_Proveedor` varchar(45) NOT NULL,
  `numero_Proveedor` int NOT NULL,
  `piso_Proveedor` varchar(45) NOT NULL,
  `Puerta_Proveedor` varchar(45) NOT NULL,
  `ciudad_Proveedor` varchar(45) NOT NULL,
  `codigo_postal_Proveedor` int NOT NULL,
  `pais_Proveedor` varchar(45) NOT NULL,
  `telefono_Proveedor` int NOT NULL,
  `fax` int DEFAULT NULL,
  `id_Proveedor` int NOT NULL,
  PRIMARY KEY (`id_Direccion_Proveedor`),
  KEY `fk_Direccion_Proveedor_Proveedor1_idx` (`id_Proveedor`),
  CONSTRAINT `fk_Direccion_Proveedor_Proveedor1` FOREIGN KEY (`id_Proveedor`) REFERENCES `Proveedor` (`id_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Direccion_Proveedor`
--

LOCK TABLES `Direccion_Proveedor` WRITE;
/*!40000 ALTER TABLE `Direccion_Proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Direccion_Proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleados` (
  `id_Empleados` int NOT NULL AUTO_INCREMENT,
  `nombre_Empleados` varchar(45) DEFAULT NULL,
  `id_Gafas` int NOT NULL,
  PRIMARY KEY (`id_Empleados`),
  KEY `fk_Empleados_Gafas1_idx` (`id_Gafas`),
  CONSTRAINT `fk_Empleados_Gafas1` FOREIGN KEY (`id_Gafas`) REFERENCES `Gafas` (`id_Gafas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `Empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `Empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gafas`
--

DROP TABLE IF EXISTS `Gafas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gafas` (
  `id_Gafas` int NOT NULL AUTO_INCREMENT,
  `marca_Gafas` varchar(45) DEFAULT NULL,
  `graduacion_Gafas` double DEFAULT NULL,
  `color montatura_Gafas` varchar(45) DEFAULT NULL,
  `color_cristales_Gafas` varchar(45) DEFAULT NULL,
  `montatura_Gafas` varchar(45) DEFAULT NULL,
  `id_Proveedor` int NOT NULL,
  PRIMARY KEY (`id_Gafas`),
  KEY `fk_Gafas_Proveedor1_idx` (`marca_Gafas`),
  CONSTRAINT `fk_Gafas_Proveedor1` FOREIGN KEY (`marca_Gafas`) REFERENCES `Proveedor` (`nombre_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gafas`
--

LOCK TABLES `Gafas` WRITE;
/*!40000 ALTER TABLE `Gafas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gafas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedor`
--

DROP TABLE IF EXISTS `Proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedor` (
  `id_Proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_Proveedor` varchar(45) NOT NULL,
  `NIF_Proveedor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Proveedor`),
  UNIQUE KEY `nombre_Proveedor_UNIQUE` (`nombre_Proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedor`
--

LOCK TABLES `Proveedor` WRITE;
/*!40000 ALTER TABLE `Proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ventas`
--

DROP TABLE IF EXISTS `Ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ventas` (
  `id_Ventas` int NOT NULL AUTO_INCREMENT,
  `fecha_Ventas` varchar(45) DEFAULT NULL,
  `id_Clientes` int NOT NULL,
  PRIMARY KEY (`id_Ventas`),
  KEY `id_Clientes_idx` (`id_Clientes`),
  CONSTRAINT `id_Clientes` FOREIGN KEY (`id_Clientes`) REFERENCES `Clientes` (`id_Clientes`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ventas`
--

LOCK TABLES `Ventas` WRITE;
/*!40000 ALTER TABLE `Ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-16 17:51:09
