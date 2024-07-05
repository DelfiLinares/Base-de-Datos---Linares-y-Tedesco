-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: TP-Turismo
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
-- Table structure for table `Alojamiento`
--

DROP TABLE IF EXISTS `Alojamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Alojamiento` (
  `idAlo` int NOT NULL,
  `dirAloj` varchar(45) NOT NULL,
  `nombreAlo` varchar(45) NOT NULL,
  `catAlo` int NOT NULL,
  `telAlo` int NOT NULL,
  `cantdepersonasAlo` int NOT NULL,
  `cocinaCabaña` int DEFAULT NULL,
  `garageCabaña` int DEFAULT NULL,
  `parrillaCabaña` int DEFAULT NULL,
  `cantPisosAlo` int DEFAULT NULL,
  `restauranteAlo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAlo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Pago`
--

DROP TABLE IF EXISTS `Pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pago` (
  `idPago` int NOT NULL,
  `tipodepago` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Paquetes`
--

DROP TABLE IF EXISTS `Paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Paquetes` (
  `idPaquetes` int NOT NULL,
  `lugarPaq` varchar(45) DEFAULT NULL,
  `diasPaq` int DEFAULT NULL,
  `nochesPaq` int DEFAULT NULL,
  `costoPaq` int DEFAULT NULL,
  `cantExcPaq` int DEFAULT NULL,
  `tipoViaje` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPaquetes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Paquetes_has_Alojamiento`
--

DROP TABLE IF EXISTS `Paquetes_has_Alojamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Paquetes_has_Alojamiento` (
  `Paquetes_idPaquetes` int NOT NULL,
  `Alojamiento_dirAlo` int NOT NULL,
  PRIMARY KEY (`Paquetes_idPaquetes`,`Alojamiento_dirAlo`),
  KEY `fk_Paquetes_has_Alojamiento_Alojamiento1_idx` (`Alojamiento_dirAlo`),
  KEY `fk_Paquetes_has_Alojamiento_Paquetes1_idx` (`Paquetes_idPaquetes`),
  CONSTRAINT `fk_Paquetes_has_Alojamiento_Alojamiento1` FOREIGN KEY (`Alojamiento_dirAlo`) REFERENCES `Alojamiento` (`idAlo`),
  CONSTRAINT `fk_Paquetes_has_Alojamiento_Paquetes1` FOREIGN KEY (`Paquetes_idPaquetes`) REFERENCES `Paquetes` (`idPaquetes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Reservas`
--

DROP TABLE IF EXISTS `Reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservas` (
  `idReservas` int NOT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `clienteTurismo_dniCT` int NOT NULL,
  `Paquetes_idPaquetes` int NOT NULL,
  `Pago_idPago` int NOT NULL,
  PRIMARY KEY (`idReservas`),
  KEY `fk_Reservas_clienteTurismo1_idx` (`clienteTurismo_dniCT`),
  KEY `fk_Reservas_Paquetes1_idx` (`Paquetes_idPaquetes`),
  KEY `fk_Reservas_Pago1_idx` (`Pago_idPago`),
  CONSTRAINT `fk_Reservas_clienteTurismo1` FOREIGN KEY (`clienteTurismo_dniCT`) REFERENCES `clienteTurismo` (`dniCT`),
  CONSTRAINT `fk_Reservas_Pago1` FOREIGN KEY (`Pago_idPago`) REFERENCES `TP TURISMO`.`Pago` (`idPago`),
  CONSTRAINT `fk_Reservas_Paquetes1` FOREIGN KEY (`Paquetes_idPaquetes`) REFERENCES `Paquetes` (`idPaquetes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clienteTurismo`
--

DROP TABLE IF EXISTS `clienteTurismo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clienteTurismo` (
  `dniCT` int NOT NULL,
  `apellidoCT` varchar(45) DEFAULT NULL,
  `nombreCT` varchar(45) DEFAULT NULL,
  `dirCT` varchar(45) DEFAULT NULL,
  `telCT` int DEFAULT NULL,
  `celularCT` int DEFAULT NULL,
  PRIMARY KEY (`dniCT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-17 17:37:49
