-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: car_rental
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `car_id` varchar(11) NOT NULL,
  `car_make` varchar(50) DEFAULT NULL,
  `car_model` varchar(50) DEFAULT NULL,
  `car_year` int(4) DEFAULT NULL,
  `car_color` varchar(20) DEFAULT NULL,
  `car_price_per_day` decimal(10,2) DEFAULT NULL,
  `car_available` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES
('CAR001','Maruti Suzuki','Swift',2022,'Red',1500.00,1),
('CAR002','Hyundai','i20',2021,'White',1800.00,3),
('CAR003','Tata','Nexon',2020,'Blue',2000.00,2),
('CAR004','Mahindra','Scorpio',2019,'Silver',2500.00,1),
('CAR005','Honda','City',2022,'Black',3000.00,0),
('CAR006','Maruti Suzuki','Baleno',2021,'Gray',1700.00,1),
('CAR007','Hyundai','Venue',2020,'Green',1900.00,2),
('CAR008','Tata','Harrier',2019,'Brown',2200.00,1),
('CAR009','Mahindra','Thar',2022,'Yellow',2800.00,1),
('CAR010','Honda','Amaze',2021,'Purple',3200.00,2);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` varchar(11) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `customer_phone` varchar(10) DEFAULT NULL,
  `customer_address` varchar(200) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES
('C100517','Basil','test@test.com','8877622334','Test','test'),
('C105224','Test','test@xyz.com','8833477665','Test 2','test'),
('C111701','niketan','niketan@gmail.com','8928145452','miraroad','12345'),
('C113036','Nikhita','nikhita@example.com','8866577664','Andheri','test123'),
('C114156','Sonic','sonic@sonicteam.com','7766588991','Mumbai','sonic123');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental` (
  `rental_id` varchar(11) NOT NULL,
  `car_id` varchar(11) DEFAULT NULL,
  `customer_id` varchar(11) DEFAULT NULL,
  `rental_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`rental_id`),
  KEY `fk_car_id` (`car_id`),
  KEY `fk_customer_id` (`customer_id`),
  CONSTRAINT `fk_car_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-03 11:52:35
