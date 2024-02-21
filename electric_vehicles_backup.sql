CREATE DATABASE  IF NOT EXISTS `electric_vehicles` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `electric_vehicles`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: electric_vehicles
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `address_id` int unsigned NOT NULL AUTO_INCREMENT,
  `legislative_district` int unsigned NOT NULL,
  `city_id` int unsigned NOT NULL,
  `postal_code_id` int unsigned NOT NULL,
  `county_id` int unsigned NOT NULL,
  PRIMARY KEY (`address_id`),
  UNIQUE KEY `idaddresses_UNIQUE` (`address_id`),
  KEY `fk_addresses_cities1_idx` (`city_id`),
  KEY `fk_addresses_postal_codes1_idx` (`postal_code_id`),
  KEY `fk_addresses_counties1_idx` (`county_id`),
  CONSTRAINT `fk_addresses_cities1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`),
  CONSTRAINT `fk_addresses_counties1` FOREIGN KEY (`county_id`) REFERENCES `counties` (`county_id`),
  CONSTRAINT `fk_addresses_postal_codes1` FOREIGN KEY (`postal_code_id`) REFERENCES `postal_codes` (`postal_code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,7,1,1,1),(2,7,2,2,1),(3,7,3,3,2),(4,7,3,3,1),(5,7,4,4,1),(6,7,5,5,1),(7,7,6,6,1),(8,7,7,7,2),(9,7,8,8,1),(10,7,9,9,1),(11,6,10,10,3),(12,6,10,11,3),(13,6,11,12,3),(14,6,12,13,3),(15,6,13,14,3),(16,7,14,15,3),(17,6,10,16,3),(18,7,10,16,3),(19,6,10,17,3),(20,7,10,17,3),(21,6,10,18,3),(22,6,14,15,3),(23,7,15,19,3),(24,6,16,20,3),(25,7,17,21,3),(26,6,11,11,3),(27,6,18,22,3),(28,7,12,13,3),(29,6,19,23,3),(30,6,10,24,3),(31,7,20,16,3),(32,7,20,25,3),(33,7,10,24,3),(34,6,21,26,3),(35,7,22,27,3),(36,7,23,28,3),(37,7,17,28,3),(38,7,24,29,2),(39,7,25,30,2),(40,7,26,31,2),(41,6,10,32,3),(42,7,27,33,4),(43,7,28,34,4),(44,7,29,35,4),(45,7,30,36,4),(46,7,31,37,4),(47,7,32,38,5),(48,7,33,39,5),(49,7,22,27,5),(50,7,14,15,1),(51,7,17,21,1),(52,7,34,40,1);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `city_id` int unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(45) NOT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_id_UNIQUE` (`city_id`),
  UNIQUE KEY `city_name_UNIQUE` (`city_name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (16,'Airway Heights'),(23,'Chattaroy'),(11,'Cheney'),(9,'Chewelah'),(20,'Colbert'),(1,'Colville'),(25,'Curlew'),(26,'Danville'),(17,'Deer Park'),(21,'Edwall'),(22,'Elk'),(18,'Fairchild Air Force Base'),(2,'Fruitland'),(6,'Hunters'),(7,'Inchelium'),(3,'Kettle Falls'),(4,'Loon Lake'),(15,'Mead'),(12,'Medical Lake'),(13,'Mica'),(32,'Newport'),(14,'Nine Mile Falls'),(31,'Okanogan'),(28,'Omak'),(27,'Oroville'),(24,'Republic'),(5,'Rice'),(29,'Riverside'),(10,'Spokane'),(34,'Springdale'),(30,'Tonasket'),(33,'Usk'),(8,'Valley'),(19,'Valleyford');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counties`
--

DROP TABLE IF EXISTS `counties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counties` (
  `county_id` int unsigned NOT NULL AUTO_INCREMENT,
  `county_name` varchar(45) NOT NULL,
  PRIMARY KEY (`county_id`),
  UNIQUE KEY `county_id_UNIQUE` (`county_id`),
  UNIQUE KEY `county_name_UNIQUE` (`county_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counties`
--

LOCK TABLES `counties` WRITE;
/*!40000 ALTER TABLE `counties` DISABLE KEYS */;
INSERT INTO `counties` VALUES (2,'Ferry'),(4,'Okanogan'),(5,'Pend Oreille'),(3,'Spokane'),(1,'Stevens');
/*!40000 ALTER TABLE `counties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electric_utilities`
--

DROP TABLE IF EXISTS `electric_utilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electric_utilities` (
  `electric_utility_id` int unsigned NOT NULL AUTO_INCREMENT,
  `electric_utility_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`electric_utility_id`),
  UNIQUE KEY `electric_utility_id_UNIQUE` (`electric_utility_id`),
  UNIQUE KEY `electric_utility_name_UNIQUE` (`electric_utility_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electric_utilities`
--

LOCK TABLES `electric_utilities` WRITE;
/*!40000 ALTER TABLE `electric_utilities` DISABLE KEYS */;
INSERT INTO `electric_utilities` VALUES (10,NULL),(1,'AVISTA CORP'),(2,'BONNEVILLE POWER ADMINISTRATION'),(6,'CITY OF CHENEY - (WA)'),(3,'INLAND POWER & LIGHT COMPANY'),(7,'MODERN ELECTRIC WATER COMPANY'),(4,'PUD NO 1 OF FERRY COUNTY'),(8,'PUD NO 1 OF OKANOGAN COUNTY'),(9,'PUD NO 1 OF PEND OREILLE COUNTY'),(5,'VERA IRRIGATION DISTRICT #15');
/*!40000 ALTER TABLE `electric_utilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `popular_model_view`
--

DROP TABLE IF EXISTS `popular_model_view`;
/*!50001 DROP VIEW IF EXISTS `popular_model_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `popular_model_view` AS SELECT 
 1 AS `make`,
 1 AS `model`,
 1 AS `model_popularity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `postal_codes`
--

DROP TABLE IF EXISTS `postal_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postal_codes` (
  `postal_code_id` int unsigned NOT NULL AUTO_INCREMENT,
  `postal_code` char(5) NOT NULL,
  PRIMARY KEY (`postal_code_id`),
  UNIQUE KEY `location_id_UNIQUE` (`postal_code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postal_codes`
--

LOCK TABLES `postal_codes` WRITE;
/*!40000 ALTER TABLE `postal_codes` DISABLE KEYS */;
INSERT INTO `postal_codes` VALUES (1,'99114'),(2,'99129'),(3,'99141'),(4,'99148'),(5,'99167'),(6,'99137'),(7,'99138'),(8,'99181'),(9,'99109'),(10,'99205'),(11,'99224'),(12,'99004'),(13,'99022'),(14,'99023'),(15,'99026'),(16,'99208'),(17,'99218'),(18,'99223'),(19,'99021'),(20,'99001'),(21,'99006'),(22,'99011'),(23,'99036'),(24,'99217'),(25,'99005'),(26,'99008'),(27,'99009'),(28,'99003'),(29,'99166'),(30,'99118'),(31,'99121'),(32,'99203'),(33,'98844'),(34,'98841'),(35,'98849'),(36,'98855'),(37,'98840'),(38,'99156'),(39,'99180'),(40,'99173');
/*!40000 ALTER TABLE `postal_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `tesla_electric_range_view`
--

DROP TABLE IF EXISTS `tesla_electric_range_view`;
/*!50001 DROP VIEW IF EXISTS `tesla_electric_range_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tesla_electric_range_view` AS SELECT 
 1 AS `model_name`,
 1 AS `average_electric_range`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `utility_service_view`
--

DROP TABLE IF EXISTS `utility_service_view`;
/*!50001 DROP VIEW IF EXISTS `utility_service_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `utility_service_view` AS SELECT 
 1 AS `city`,
 1 AS `electric_utility`,
 1 AS `vehicles_served`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle_electric_utilities`
--

DROP TABLE IF EXISTS `vehicle_electric_utilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_electric_utilities` (
  `vehicle_id` int unsigned NOT NULL,
  `electric_utility_id` int unsigned NOT NULL,
  PRIMARY KEY (`vehicle_id`,`electric_utility_id`),
  KEY `fk_vehicles_has_electric_utilities_electric_utilities1_idx` (`electric_utility_id`),
  KEY `fk_vehicles_has_electric_utilities_vehicles1_idx` (`vehicle_id`),
  CONSTRAINT `fk_vehicles_has_electric_utilities_electric_utilities1` FOREIGN KEY (`electric_utility_id`) REFERENCES `electric_utilities` (`electric_utility_id`),
  CONSTRAINT `fk_vehicles_has_electric_utilities_vehicles1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_electric_utilities`
--

LOCK TABLES `vehicle_electric_utilities` WRITE;
/*!40000 ALTER TABLE `vehicle_electric_utilities` DISABLE KEYS */;
INSERT INTO `vehicle_electric_utilities` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(24,1),(25,1),(32,1),(33,1),(34,1),(35,1),(36,1),(39,1),(40,1),(41,1),(47,1),(48,1),(49,1),(58,1),(60,1),(61,1),(62,1),(63,1),(65,1),(69,1),(70,1),(72,1),(74,1),(75,1),(79,1),(82,1),(86,1),(88,1),(89,1),(92,1),(93,1),(95,1),(96,1),(101,1),(102,1),(104,1),(108,1),(109,1),(110,1),(112,1),(118,1),(121,1),(123,1),(129,1),(132,1),(133,1),(136,1),(143,1),(144,1),(146,1),(149,1),(150,1),(160,1),(161,1),(163,1),(164,1),(167,1),(168,1),(169,1),(172,1),(174,1),(176,1),(177,1),(179,1),(182,1),(185,1),(186,1),(187,1),(188,1),(192,1),(215,1),(217,1),(219,1),(221,1),(224,1),(233,1),(234,1),(235,1),(236,1),(238,1),(244,1),(245,1),(254,1),(259,1),(261,1),(263,1),(264,1),(266,1),(270,1),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(43,2),(46,2),(50,2),(54,2),(55,2),(57,2),(59,2),(60,2),(64,2),(65,2),(66,2),(67,2),(70,2),(71,2),(72,2),(73,2),(88,2),(94,2),(99,2),(104,2),(105,2),(106,2),(111,2),(113,2),(115,2),(116,2),(119,2),(120,2),(122,2),(125,2),(126,2),(129,2),(130,2),(133,2),(134,2),(140,2),(142,2),(146,2),(148,2),(152,2),(156,2),(159,2),(162,2),(169,2),(171,2),(173,2),(177,2),(181,2),(189,2),(191,2),(193,2),(199,2),(200,2),(201,2),(208,2),(209,2),(211,2),(216,2),(218,2),(223,2),(224,2),(225,2),(226,2),(229,2),(232,2),(237,2),(240,2),(243,2),(246,2),(249,2),(250,2),(251,2),(253,2),(257,2),(258,2),(262,2),(265,2),(266,2),(269,2),(272,2),(273,2),(274,2),(275,2),(277,2),(278,2),(279,2),(280,2),(281,2),(282,2),(289,2),(291,2),(292,2),(293,2),(294,2),(295,2),(302,2),(303,2),(304,2),(305,2),(306,2),(307,2),(310,2),(312,2),(313,2),(316,2),(320,2),(323,2),(324,2),(325,2),(326,2),(327,2),(328,2),(329,2),(332,2),(338,2),(339,2),(23,3),(29,3),(32,3),(34,3),(37,3),(38,3),(42,3),(44,3),(45,3),(48,3),(49,3),(51,3),(52,3),(53,3),(56,3),(63,3),(67,3),(68,3),(73,3),(74,3),(75,3),(76,3),(77,3),(78,3),(79,3),(80,3),(81,3),(83,3),(84,3),(85,3),(87,3),(90,3),(91,3),(97,3),(98,3),(99,3),(100,3),(103,3),(107,3),(111,3),(114,3),(117,3),(122,3),(124,3),(127,3),(128,3),(131,3),(135,3),(136,3),(137,3),(138,3),(139,3),(141,3),(145,3),(147,3),(149,3),(151,3),(153,3),(154,3),(155,3),(157,3),(158,3),(165,3),(166,3),(170,3),(175,3),(178,3),(180,3),(183,3),(184,3),(190,3),(194,3),(195,3),(196,3),(197,3),(198,3),(202,3),(203,3),(204,3),(205,3),(206,3),(207,3),(210,3),(212,3),(213,3),(214,3),(217,3),(218,3),(220,3),(222,3),(227,3),(228,3),(230,3),(231,3),(234,3),(237,3),(238,3),(239,3),(241,3),(242,3),(244,3),(246,3),(247,3),(248,3),(252,3),(255,3),(256,3),(258,3),(260,3),(267,3),(268,3),(271,3),(275,3),(276,3),(281,3),(283,3),(284,3),(285,3),(286,3),(287,3),(288,3),(290,3),(296,3),(297,3),(298,3),(299,3),(300,3),(301,3),(304,3),(306,3),(308,3),(309,3),(311,3),(314,3),(315,3),(317,3),(318,3),(319,3),(321,3),(322,3),(330,3),(331,3),(332,3),(333,4),(334,4),(335,4),(336,4),(337,4),(340,6),(341,6),(342,6),(343,6),(344,6),(345,6),(346,6),(347,6),(348,7),(349,7),(350,7),(351,7),(352,7),(353,7),(354,7),(355,7),(356,7),(357,7),(358,7),(359,7),(360,7),(361,7),(362,7),(363,7),(364,7),(365,7),(366,7),(367,7),(368,7),(369,7),(370,7),(371,7),(372,7),(373,7),(374,7),(375,7),(376,7),(377,7),(378,7),(379,7),(380,7),(381,7),(382,7),(383,7),(384,7),(385,7),(386,7),(387,7),(388,7),(389,7),(390,7),(391,7),(392,7),(393,7),(394,7),(395,7),(396,7),(397,7),(398,7),(399,7),(400,7),(401,7),(402,7),(403,7),(404,7),(405,7),(406,7),(407,7),(408,7),(409,7),(410,7),(411,7),(412,7),(413,7),(414,7),(415,7),(416,7),(417,7),(418,8),(419,8),(420,8),(421,8),(422,8),(423,8),(424,8),(425,8),(426,8),(427,8),(428,8),(429,8),(430,9),(431,9),(432,9),(433,9),(434,9),(435,9),(436,9),(437,9),(438,9),(439,9),(440,10),(441,10),(442,10),(443,10),(444,10),(445,10),(446,10),(447,10),(448,10),(449,10),(450,10),(451,10),(452,10),(453,10),(454,10),(455,10),(456,10);
/*!40000 ALTER TABLE `vehicle_electric_utilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_makes`
--

DROP TABLE IF EXISTS `vehicle_makes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_makes` (
  `make_id` int unsigned NOT NULL AUTO_INCREMENT,
  `make_name` varchar(45) NOT NULL,
  PRIMARY KEY (`make_id`),
  UNIQUE KEY `vehicle_make_id_UNIQUE` (`make_id`),
  UNIQUE KEY `make_name_UNIQUE` (`make_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_makes`
--

LOCK TABLES `vehicle_makes` WRITE;
/*!40000 ALTER TABLE `vehicle_makes` DISABLE KEYS */;
INSERT INTO `vehicle_makes` VALUES (7,'AUDI'),(12,'BMW'),(1,'CHEVROLET'),(5,'FIAT'),(9,'FORD'),(13,'HYUNDAI'),(11,'JAGUAR'),(4,'KIA'),(10,'MINI'),(2,'NISSAN'),(14,'POLESTAR'),(15,'PORSCHE'),(8,'SMART'),(3,'TESLA'),(6,'VOLKSWAGEN');
/*!40000 ALTER TABLE `vehicle_makes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_models`
--

DROP TABLE IF EXISTS `vehicle_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_models` (
  `model_id` int unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(45) NOT NULL,
  `model_year` int unsigned NOT NULL,
  `electric_range` int unsigned NOT NULL DEFAULT '0',
  `base_msrp` int unsigned NOT NULL DEFAULT '0',
  `make_id` int unsigned NOT NULL,
  PRIMARY KEY (`model_id`),
  UNIQUE KEY `vehicle_model_id_UNIQUE` (`model_id`),
  KEY `fk_vehicle_models_vehicle_makes1_idx` (`make_id`),
  CONSTRAINT `fk_vehicle_models_vehicle_makes1` FOREIGN KEY (`make_id`) REFERENCES `vehicle_makes` (`make_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_models`
--

LOCK TABLES `vehicle_models` WRITE;
/*!40000 ALTER TABLE `vehicle_models` DISABLE KEYS */;
INSERT INTO `vehicle_models` VALUES (1,'BOLT EV',2020,259,0,1),(2,'BOLT EV',2019,238,0,1),(3,'BOLT EV',2017,238,0,1),(4,'LEAF',2018,151,0,2),(5,'LEAF',2019,150,0,2),(6,'MODEL 3',2019,220,0,3),(7,'MODEL 3',2018,215,0,3),(8,'MODEL 3',2020,322,0,3),(9,'MODEL S',2017,210,0,3),(10,'MODEL Y',2020,291,0,3),(11,'NIRO',2019,239,0,4),(12,'500',2017,84,0,5),(13,'500',2016,84,0,5),(14,'BOLT EV',2018,238,0,1),(15,'E-GOLF',2016,83,0,6),(16,'E-GOLF',2019,125,0,6),(17,'E-TRON',2019,204,0,7),(18,'E-TRON',2021,222,0,7),(19,'EQ FORTWO',2019,58,0,8),(20,'FOCUS',2017,100,0,9),(21,'HARDTOP',2021,110,0,10),(22,'I-PACE',2020,234,0,11),(23,'I-PACE',2019,234,0,11),(24,'I3',2017,81,0,12),(25,'KONA',2019,258,0,13),(26,'LEAF',2016,84,0,2),(27,'LEAF',2017,107,0,2),(28,'LEAF',2020,215,0,2),(29,'MODEL 3',2017,220,0,3),(30,'MODEL 3',2020,308,0,3),(31,'MODEL 3',2020,266,0,3),(32,'MODEL S',2018,249,0,3),(33,'MODEL S',2019,270,0,3),(34,'MODEL S',2016,210,0,3),(35,'MODEL S',2020,330,0,3),(36,'MODEL S',2020,337,0,3),(37,'MODEL X',2017,200,0,3),(38,'MODEL X',2020,289,0,3),(39,'MODEL X',2016,200,0,3),(40,'MODEL X',2020,293,0,3),(41,'MODEL X',2018,238,0,3),(42,'MODEL X',2019,289,0,3),(43,'NIRO',2020,239,0,4),(44,'PS2',2021,233,0,14),(45,'SOUL',2016,93,31950,4),(46,'SOUL EV',2017,93,32250,4),(47,'TAYCAN',2020,192,0,15),(48,'E-GOLF',2017,125,0,6),(49,'I3',2019,153,0,12),(50,'E-TRON SPORTBACK',2020,218,0,7),(51,'500',2018,84,0,5),(52,'E-GOLF',2018,125,0,6),(53,'E-TRON SPORTBACK',2021,218,0,7),(54,'KONA',2020,258,0,13),(55,'SPARK',2016,82,0,1);
/*!40000 ALTER TABLE `vehicle_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehicle_id` int unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int unsigned NOT NULL,
  `address_id` int unsigned NOT NULL,
  PRIMARY KEY (`vehicle_id`),
  UNIQUE KEY `vehicle_id_UNIQUE` (`vehicle_id`),
  KEY `fk_vehicles_vehicle_models1_idx` (`model_id`),
  KEY `fk_vehicles_addresses1_idx` (`address_id`),
  CONSTRAINT `fk_vehicles_addresses1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`),
  CONSTRAINT `fk_vehicles_vehicle_models1` FOREIGN KEY (`model_id`) REFERENCES `vehicle_models` (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=457 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,1,1),(2,1,1),(3,2,2),(4,1,3),(5,3,4),(6,3,5),(7,1,5),(8,2,6),(9,4,1),(10,5,3),(11,6,1),(12,7,1),(13,8,7),(14,7,8),(15,6,4),(16,8,5),(17,6,9),(18,9,10),(19,10,3),(20,10,4),(21,11,4),(22,11,6),(23,12,11),(24,13,12),(25,2,13),(26,2,13),(27,1,13),(28,3,28),(29,2,15),(30,2,22),(31,3,18),(32,1,18),(33,1,18),(34,3,18),(35,2,18),(36,2,18),(37,1,18),(38,1,18),(39,1,20),(40,3,20),(41,1,20),(42,3,20),(43,2,21),(44,1,21),(45,1,21),(46,3,12),(47,14,12),(48,15,28),(49,16,22),(50,16,18),(51,16,12),(52,16,12),(53,17,13),(54,17,23),(55,18,20),(56,17,21),(57,17,21),(58,17,12),(59,19,21),(60,20,20),(61,21,21),(62,22,18),(63,23,18),(64,23,21),(65,22,12),(66,22,12),(67,24,18),(68,25,13),(69,26,24),(70,4,24),(71,4,13),(72,4,25),(73,27,23),(74,4,28),(75,5,28),(76,26,22),(77,28,22),(78,5,18),(79,5,18),(80,26,18),(81,5,18),(82,4,18),(83,26,18),(84,4,18),(85,26,18),(86,5,18),(87,26,20),(88,5,20),(89,5,21),(90,26,21),(91,26,21),(92,4,21),(93,4,21),(94,4,21),(95,26,12),(96,27,12),(97,5,12),(98,26,26),(99,7,24),(100,8,24),(101,8,24),(102,7,13),(103,6,13),(104,6,13),(105,8,13),(106,7,13),(107,7,13),(108,7,13),(109,8,13),(110,6,13),(111,8,25),(112,8,25),(113,29,25),(114,7,27),(115,6,27),(116,8,23),(117,6,28),(118,6,29),(119,8,18),(120,30,18),(121,7,18),(122,7,18),(123,6,18),(124,7,18),(125,6,18),(126,6,18),(127,6,18),(128,7,18),(129,30,18),(130,7,18),(131,7,18),(132,7,18),(133,6,18),(134,7,18),(135,7,18),(136,8,18),(137,7,18),(138,8,18),(139,31,18),(140,7,18),(141,6,18),(142,6,18),(143,8,18),(144,31,18),(145,8,18),(146,7,18),(147,8,18),(148,7,18),(149,7,18),(150,7,18),(151,7,18),(152,6,18),(153,7,33),(154,7,33),(155,8,33),(156,7,20),(157,6,20),(158,7,20),(159,7,21),(160,7,21),(161,7,21),(162,7,21),(163,6,21),(164,31,21),(165,6,21),(166,6,21),(167,6,21),(168,8,21),(169,7,21),(170,7,21),(171,7,21),(172,7,21),(173,6,21),(174,6,21),(175,7,21),(176,7,12),(177,7,12),(178,7,12),(179,30,12),(180,6,12),(181,7,12),(182,6,12),(183,6,12),(184,8,12),(185,6,12),(186,7,12),(187,7,12),(188,6,12),(189,32,23),(190,33,15),(191,32,22),(192,34,22),(193,34,22),(194,9,11),(195,9,18),(196,35,18),(197,9,18),(198,9,18),(199,34,18),(200,32,18),(201,34,18),(202,9,18),(203,9,31),(204,34,18),(205,32,21),(206,33,21),(207,9,21),(208,36,21),(209,9,21),(210,35,21),(211,32,21),(212,34,12),(213,34,12),(214,34,12),(215,34,12),(216,32,12),(217,34,12),(218,37,13),(219,38,13),(220,39,25),(221,38,28),(222,40,28),(223,40,22),(224,37,18),(225,39,18),(226,37,18),(227,40,18),(228,40,18),(229,37,18),(230,39,18),(231,41,18),(232,41,18),(233,41,18),(234,39,20),(235,41,21),(236,42,21),(237,40,21),(238,37,21),(239,39,12),(240,37,12),(241,39,12),(242,42,12),(243,10,13),(244,10,32),(245,10,32),(246,10,25),(247,10,28),(248,10,22),(249,10,29),(250,10,29),(251,10,18),(252,10,18),(253,10,18),(254,10,18),(255,10,18),(256,10,18),(257,10,18),(258,10,18),(259,10,33),(260,10,20),(261,10,20),(262,10,20),(263,10,20),(264,10,21),(265,10,21),(266,10,21),(267,10,21),(268,10,21),(269,10,21),(270,10,12),(271,11,24),(272,43,18),(273,43,12),(274,44,12),(275,45,25),(276,45,34),(277,45,28),(278,46,25),(279,46,18),(280,47,20),(281,47,21),(282,1,32),(283,14,25),(284,1,25),(285,3,35),(286,2,35),(287,3,35),(288,48,36),(289,15,32),(290,27,25),(291,5,35),(292,5,35),(293,5,21),(294,6,37),(295,31,36),(296,6,36),(297,7,36),(298,7,36),(299,7,32),(300,7,32),(301,6,32),(302,31,32),(303,8,32),(304,8,32),(305,7,32),(306,7,32),(307,8,25),(308,7,25),(309,6,35),(310,7,35),(311,7,23),(312,7,21),(313,6,21),(314,7,21),(315,7,21),(316,9,32),(317,32,32),(318,34,32),(319,9,21),(320,9,21),(321,39,32),(322,37,35),(323,41,18),(324,39,21),(325,10,32),(326,10,32),(327,10,32),(328,10,21),(329,10,21),(330,10,21),(331,43,36),(332,45,25),(333,49,38),(334,4,38),(335,7,39),(336,7,40),(337,6,38),(338,35,38),(339,50,21),(340,16,13),(341,5,13),(342,7,13),(343,6,13),(344,37,13),(345,10,13),(346,43,13),(347,44,13),(348,51,41),(349,1,41),(350,14,41),(351,1,41),(352,1,41),(353,3,41),(354,1,21),(355,16,41),(356,52,41),(357,18,12),(358,53,41),(359,50,41),(360,21,41),(361,54,41),(362,54,41),(363,54,12),(364,5,41),(365,27,41),(366,27,41),(367,4,21),(368,26,21),(369,4,21),(370,6,41),(371,7,41),(372,7,41),(373,31,41),(374,7,41),(375,7,41),(376,6,41),(377,7,41),(378,7,41),(379,6,41),(380,7,41),(381,7,41),(382,30,41),(383,7,41),(384,7,41),(385,7,21),(386,6,21),(387,7,21),(388,6,21),(389,6,21),(390,31,21),(391,6,21),(392,30,21),(393,7,12),(394,7,12),(395,8,12),(396,9,41),(397,9,41),(398,32,41),(399,34,41),(400,32,41),(401,33,41),(402,9,41),(403,34,12),(404,41,41),(405,39,41),(406,38,41),(407,40,41),(408,37,21),(409,37,12),(410,10,41),(411,10,21),(412,10,12),(413,10,12),(414,10,12),(415,11,41),(416,46,41),(417,55,41),(418,3,42),(419,24,42),(420,27,43),(421,31,43),(422,7,42),(423,6,44),(424,7,44),(425,7,45),(426,6,45),(427,29,45),(428,37,46),(429,41,42),(430,5,47),(431,27,47),(432,7,47),(433,8,47),(434,8,47),(435,8,48),(436,32,47),(437,9,47),(438,41,49),(439,10,47),(440,12,50),(441,17,50),(442,4,51),(443,5,51),(444,26,50),(445,7,50),(446,7,50),(447,7,50),(448,6,22),(449,6,5),(450,33,50),(451,34,50),(452,33,22),(453,33,50),(454,41,50),(455,45,52),(456,46,50);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vehicles_after_2020_view`
--

DROP TABLE IF EXISTS `vehicles_after_2020_view`;
/*!50001 DROP VIEW IF EXISTS `vehicles_after_2020_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vehicles_after_2020_view` AS SELECT 
 1 AS `model_name`,
 1 AS `model_year`,
 1 AS `electric_range`,
 1 AS `postal_code`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vehicles_in_each_county_view`
--

DROP TABLE IF EXISTS `vehicles_in_each_county_view`;
/*!50001 DROP VIEW IF EXISTS `vehicles_in_each_county_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vehicles_in_each_county_view` AS SELECT 
 1 AS `county_name`,
 1 AS `vehicles_registered`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `popular_model_view`
--

/*!50001 DROP VIEW IF EXISTS `popular_model_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `popular_model_view` AS select `vma`.`make_name` AS `make`,concat(`vehicle_models`.`model_name`,' ',`vehicle_models`.`model_year`) AS `model`,count(`v`.`model_id`) AS `model_popularity` from ((`vehicles` `v` join `vehicle_models` on((`v`.`model_id` = `vehicle_models`.`model_id`))) join `vehicle_makes` `vma` on((`vehicle_models`.`make_id` = `vma`.`make_id`))) where (`vehicle_models`.`model_year` = 2017) group by `vma`.`make_id`,`v`.`model_id` order by `model_popularity` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tesla_electric_range_view`
--

/*!50001 DROP VIEW IF EXISTS `tesla_electric_range_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tesla_electric_range_view` AS select `vehicle_models`.`model_name` AS `model_name`,round(avg(`vehicle_models`.`electric_range`),0) AS `average_electric_range` from (`vehicle_models` join `vehicle_makes` on((`vehicle_models`.`make_id` = `vehicle_makes`.`make_id`))) where (`vehicle_models`.`make_id` = 3) group by `vehicle_models`.`model_name` order by `vehicle_models`.`model_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `utility_service_view`
--

/*!50001 DROP VIEW IF EXISTS `utility_service_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `utility_service_view` AS select `cities`.`city_name` AS `city`,`electric_utilities`.`electric_utility_name` AS `electric_utility`,count(`vehicle_electric_utilities`.`vehicle_id`) AS `vehicles_served` from ((((`electric_utilities` join `vehicle_electric_utilities` on((`electric_utilities`.`electric_utility_id` = `vehicle_electric_utilities`.`electric_utility_id`))) join `vehicles` on((`vehicle_electric_utilities`.`vehicle_id` = `vehicles`.`vehicle_id`))) join `addresses` `a` on((`vehicles`.`address_id` = `a`.`address_id`))) join `cities` on((`a`.`city_id` = `cities`.`city_id`))) where (`electric_utilities`.`electric_utility_name` is not null) group by `city`,`electric_utility` having (`vehicles_served` > 1) order by `city`,`electric_utility` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicles_after_2020_view`
--

/*!50001 DROP VIEW IF EXISTS `vehicles_after_2020_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicles_after_2020_view` AS select `v`.`model_name` AS `model_name`,`v`.`model_year` AS `model_year`,`v`.`electric_range` AS `electric_range`,`p`.`postal_code` AS `postal_code` from (((`vehicle_models` `v` join `vehicles` `vi` on((`v`.`model_id` = `vi`.`model_id`))) join `addresses` on((`vi`.`address_id` = `addresses`.`address_id`))) join `postal_codes` `p` on((`addresses`.`postal_code_id` = `p`.`postal_code_id`))) where (`v`.`model_year` > 2020) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vehicles_in_each_county_view`
--

/*!50001 DROP VIEW IF EXISTS `vehicles_in_each_county_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vehicles_in_each_county_view` AS select `c`.`county_name` AS `county_name`,count(`vehicles`.`vehicle_id`) AS `vehicles_registered` from ((`vehicles` join `addresses` `a` on((`vehicles`.`address_id` = `a`.`address_id`))) join `counties` `c` on((`a`.`county_id` = `c`.`county_id`))) group by `a`.`county_id` order by `vehicles_registered` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 14:19:21
