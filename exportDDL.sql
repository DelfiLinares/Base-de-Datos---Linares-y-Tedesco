-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: claseDDL
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `AlojamientoDDL`
--

DROP TABLE IF EXISTS `AlojamientoDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AlojamientoDDL` (
  `idAlo` int NOT NULL,
  `dirAlo` varchar(45) DEFAULT NULL,
  `cateAlo` varchar(45) DEFAULT NULL,
  `TelAlo` int DEFAULT NULL,
  `CantpersonasAlo` int DEFAULT NULL,
  `Garage` int DEFAULT NULL,
  `Pisos` int DEFAULT NULL,
  `Parrilla` int DEFAULT NULL,
  `Cocina` int DEFAULT NULL,
  `Bar` int DEFAULT NULL,
  PRIMARY KEY (`idAlo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlojamientoDDL`
--

LOCK TABLES `AlojamientoDDL` WRITE;
/*!40000 ALTER TABLE `AlojamientoDDL` DISABLE KEYS */;
INSERT INTO `AlojamientoDDL` VALUES (3,'Santa Cruz','5 estrellas',5555555,2,1,6,0,0,1),(6,'Santa Cruz','5 estrellas',5555555,2,1,6,0,0,1);
/*!40000 ALTER TABLE `AlojamientoDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAMION_HAS_CAMIONEROS_DDL`
--

DROP TABLE IF EXISTS `CAMION_HAS_CAMIONEROS_DDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CAMION_HAS_CAMIONEROS_DDL` (
  `matriculaCamion` int NOT NULL,
  `dniCamionero` int NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`matriculaCamion`,`dniCamionero`),
  KEY `dniCamionero` (`dniCamionero`),
  CONSTRAINT `CAMION_HAS_CAMIONEROS_DDL_ibfk_1` FOREIGN KEY (`matriculaCamion`) REFERENCES `CamionDDL` (`matricula`),
  CONSTRAINT `CAMION_HAS_CAMIONEROS_DDL_ibfk_2` FOREIGN KEY (`dniCamionero`) REFERENCES `CamioneroDDL` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAMION_HAS_CAMIONEROS_DDL`
--

LOCK TABLES `CAMION_HAS_CAMIONEROS_DDL` WRITE;
/*!40000 ALTER TABLE `CAMION_HAS_CAMIONEROS_DDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `CAMION_HAS_CAMIONEROS_DDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENTES_HAS_PRODUCTOS_DDL`
--

DROP TABLE IF EXISTS `CLIENTES_HAS_PRODUCTOS_DDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENTES_HAS_PRODUCTOS_DDL` (
  `codigo_p` int NOT NULL,
  `dni_cliente` int NOT NULL,
  `compra` int DEFAULT NULL,
  PRIMARY KEY (`codigo_p`,`dni_cliente`),
  KEY `dni_cliente` (`dni_cliente`),
  CONSTRAINT `CLIENTES_HAS_PRODUCTOS_DDL_ibfk_1` FOREIGN KEY (`codigo_p`) REFERENCES `ProductosDDL` (`codProd`),
  CONSTRAINT `CLIENTES_HAS_PRODUCTOS_DDL_ibfk_2` FOREIGN KEY (`dni_cliente`) REFERENCES `ClienteDDL` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTES_HAS_PRODUCTOS_DDL`
--

LOCK TABLES `CLIENTES_HAS_PRODUCTOS_DDL` WRITE;
/*!40000 ALTER TABLE `CLIENTES_HAS_PRODUCTOS_DDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENTES_HAS_PRODUCTOS_DDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CamionDDL`
--

DROP TABLE IF EXISTS `CamionDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CamionDDL` (
  `matricula` int NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `potencia` int DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CamionDDL`
--

LOCK TABLES `CamionDDL` WRITE;
/*!40000 ALTER TABLE `CamionDDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `CamionDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CamioneroDDL`
--

DROP TABLE IF EXISTS `CamioneroDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CamioneroDDL` (
  `dni` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `salario` int DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CamioneroDDL`
--

LOCK TABLES `CamioneroDDL` WRITE;
/*!40000 ALTER TABLE `CamioneroDDL` DISABLE KEYS */;
INSERT INTO `CamioneroDDL` VALUES (11222333,'martin','gonzalez',321,'Constituyentes 434',600000,'CABA');
/*!40000 ALTER TABLE `CamioneroDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClienteDDL`
--

DROP TABLE IF EXISTS `ClienteDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ClienteDDL` (
  `dni` int NOT NULL,
  `nomCliente` varchar(45) DEFAULT NULL,
  `apCliente` varchar(45) DEFAULT NULL,
  `dirCliente` varchar(45) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClienteDDL`
--

LOCK TABLES `ClienteDDL` WRITE;
/*!40000 ALTER TABLE `ClienteDDL` DISABLE KEYS */;
INSERT INTO `ClienteDDL` VALUES (1234567,'martina','chicle','zamudio 3232','2006-07-08'),(11112111,'martina','chicle','zamudio 3232','2006-07-08');
/*!40000 ALTER TABLE `ClienteDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PACIENTEddl`
--

DROP TABLE IF EXISTS `PACIENTEddl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PACIENTEddl` (
  `codPac` int NOT NULL,
  `nomPac` varchar(45) DEFAULT NULL,
  `apPac` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `codPostal` int DEFAULT NULL,
  `tel` int DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  PRIMARY KEY (`codPac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PACIENTEddl`
--

LOCK TABLES `PACIENTEddl` WRITE;
/*!40000 ALTER TABLE `PACIENTEddl` DISABLE KEYS */;
/*!40000 ALTER TABLE `PACIENTEddl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAQUETE_HAS_ALOJAMIENTO_DDL`
--

DROP TABLE IF EXISTS `PAQUETE_HAS_ALOJAMIENTO_DDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAQUETE_HAS_ALOJAMIENTO_DDL` (
  `idAloj` int NOT NULL,
  `idP` int NOT NULL,
  PRIMARY KEY (`idAloj`,`idP`),
  KEY `idP` (`idP`),
  CONSTRAINT `PAQUETE_HAS_ALOJAMIENTO_DDL_ibfk_1` FOREIGN KEY (`idAloj`) REFERENCES `AlojamientoDDL` (`idAlo`),
  CONSTRAINT `PAQUETE_HAS_ALOJAMIENTO_DDL_ibfk_2` FOREIGN KEY (`idP`) REFERENCES `PaquetesDDL` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAQUETE_HAS_ALOJAMIENTO_DDL`
--

LOCK TABLES `PAQUETE_HAS_ALOJAMIENTO_DDL` WRITE;
/*!40000 ALTER TABLE `PAQUETE_HAS_ALOJAMIENTO_DDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAQUETE_HAS_ALOJAMIENTO_DDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PacienteDDL`
--

DROP TABLE IF EXISTS `PacienteDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PacienteDDL` (
  `codPac` int NOT NULL,
  `nomPac` varchar(45) DEFAULT NULL,
  `apPac` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `codPostal` int DEFAULT NULL,
  `tel` int DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  PRIMARY KEY (`codPac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PacienteDDL`
--

LOCK TABLES `PacienteDDL` WRITE;
/*!40000 ALTER TABLE `PacienteDDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `PacienteDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagoDDL`
--

DROP TABLE IF EXISTS `PagoDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PagoDDL` (
  `cod` int NOT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagoDDL`
--

LOCK TABLES `PagoDDL` WRITE;
/*!40000 ALTER TABLE `PagoDDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagoDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PaqueteDDL`
--

DROP TABLE IF EXISTS `PaqueteDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PaqueteDDL` (
  `codigoPaq` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `destinatario` varchar(45) DEFAULT NULL,
  `dirdestinatario` varchar(45) DEFAULT NULL,
  `dnicamionero` int DEFAULT NULL,
  `codprov` int DEFAULT NULL,
  PRIMARY KEY (`codigoPaq`),
  KEY `dnicamionero` (`dnicamionero`),
  KEY `codprov` (`codprov`),
  CONSTRAINT `PaqueteDDL_ibfk_1` FOREIGN KEY (`dnicamionero`) REFERENCES `CamioneroDDL` (`dni`),
  CONSTRAINT `PaqueteDDL_ibfk_2` FOREIGN KEY (`codprov`) REFERENCES `ProvinciaDDL` (`codigoProv`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PaqueteDDL`
--

LOCK TABLES `PaqueteDDL` WRITE;
/*!40000 ALTER TABLE `PaqueteDDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `PaqueteDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PaquetesDDL`
--

DROP TABLE IF EXISTS `PaquetesDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PaquetesDDL` (
  `id` int NOT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  `dias` int DEFAULT NULL,
  `noches` int DEFAULT NULL,
  `costo` int DEFAULT NULL,
  `tipodeviaje` varchar(45) DEFAULT NULL,
  `cantExcur` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PaquetesDDL`
--

LOCK TABLES `PaquetesDDL` WRITE;
/*!40000 ALTER TABLE `PaquetesDDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `PaquetesDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductoDDL`
--

DROP TABLE IF EXISTS `ProductoDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductoDDL` (
  `codigo` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductoDDL`
--

LOCK TABLES `ProductoDDL` WRITE;
/*!40000 ALTER TABLE `ProductoDDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductoDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductosDDL`
--

DROP TABLE IF EXISTS `ProductosDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductosDDL` (
  `codProd` int NOT NULL,
  `precio` int DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `dni_P` int DEFAULT NULL,
  PRIMARY KEY (`codProd`),
  KEY `dni_P` (`dni_P`),
  CONSTRAINT `ProductosDDL_ibfk_1` FOREIGN KEY (`dni_P`) REFERENCES `ProveedorDDL` (`dniP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductosDDL`
--

LOCK TABLES `ProductosDDL` WRITE;
/*!40000 ALTER TABLE `ProductosDDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductosDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProveedorDDL`
--

DROP TABLE IF EXISTS `ProveedorDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProveedorDDL` (
  `dniP` int NOT NULL,
  `nombreP` varchar(45) DEFAULT NULL,
  `apellidoP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dniP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProveedorDDL`
--

LOCK TABLES `ProveedorDDL` WRITE;
/*!40000 ALTER TABLE `ProveedorDDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProveedorDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProvinciaDDL`
--

DROP TABLE IF EXISTS `ProvinciaDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProvinciaDDL` (
  `codigoProv` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigoProv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProvinciaDDL`
--

LOCK TABLES `ProvinciaDDL` WRITE;
/*!40000 ALTER TABLE `ProvinciaDDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProvinciaDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReservasDDL`
--

DROP TABLE IF EXISTS `ReservasDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ReservasDDL` (
  `codReserva` int NOT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `dniCliente` int DEFAULT NULL,
  `idPaquete` int DEFAULT NULL,
  `codPago` int DEFAULT NULL,
  PRIMARY KEY (`codReserva`),
  KEY `codPago` (`codPago`),
  KEY `dniCliente` (`dniCliente`),
  KEY `idPaquete` (`idPaquete`),
  CONSTRAINT `ReservasDDL_ibfk_1` FOREIGN KEY (`codPago`) REFERENCES `PagoDDL` (`cod`),
  CONSTRAINT `ReservasDDL_ibfk_2` FOREIGN KEY (`dniCliente`) REFERENCES `clientesDDL` (`dni`),
  CONSTRAINT `ReservasDDL_ibfk_3` FOREIGN KEY (`idPaquete`) REFERENCES `PaquetesDDL` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReservasDDL`
--

LOCK TABLES `ReservasDDL` WRITE;
/*!40000 ALTER TABLE `ReservasDDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReservasDDL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientesDDL`
--

DROP TABLE IF EXISTS `clientesDDL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientesDDL` (
  `dni` int NOT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `tel` int DEFAULT NULL,
  `cel` int DEFAULT NULL,
  `dir` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientesDDL`
--

LOCK TABLES `clientesDDL` WRITE;
/*!40000 ALTER TABLE `clientesDDL` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientesDDL` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-31 17:26:52
