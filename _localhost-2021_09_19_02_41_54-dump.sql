-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: dms
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ContactNo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Square','Mirpur','squaregroup@gmail.com','0636525'),(2,'Incepta','Uttora','inceptaco@gmail.com','063323232'),(3,'ACI Limited','Gajipur','aci@gmail.com','015456465'),(4,'Mystic','Mohakhali','Mystic@m.com','0255888'),(5,'MicroMed','Dhanmondi','micro@micro.cm','0172545566'),(7,'Molla','Paltan','mo@molla.com','0557455'),(8,'Hisabi','Motijhil','hisQ@his.com','012574585'),(9,'Sonear Lab','Badda','add@.com','0298455'),(10,'UniMed','Hemayetpur','hem@ni.com','0255854'),(11,'Unique Pharmaceutical','Kolabagan','uniq@med.com','025588456');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credentials`
--

DROP TABLE IF EXISTS `credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credentials` (
  `id` int NOT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `lastlogin` date DEFAULT NULL,
  `addedon` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials`
--

LOCK TABLES `credentials` WRITE;
/*!40000 ALTER TABLE `credentials` DISABLE KEYS */;
INSERT INTO `credentials` VALUES (1,'Admin','admin','admin','admin','2001-05-06','2001-05-03'),(2,'Bodrul Amin','bodrulamin','123','user','2008-03-03','2005-02-02');
/*!40000 ALTER TABLE `credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugin`
--

DROP TABLE IF EXISTS `drugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drugin` (
  `billID` int NOT NULL AUTO_INCREMENT,
  `drugId` varchar(45) DEFAULT NULL,
  `buyprice` double DEFAULT NULL,
  `saleprice` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `batchNo` int DEFAULT NULL,
  `companyid` int DEFAULT NULL,
  `entrydate` date DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `mfgdate` date DEFAULT NULL,
  PRIMARY KEY (`billID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugin`
--

LOCK TABLES `drugin` WRITE;
/*!40000 ALTER TABLE `drugin` DISABLE KEYS */;
INSERT INTO `drugin` VALUES (1,'1',25,30,30,20210911,1,'2021-09-11','2022-09-30','2021-08-09'),(2,'2',30,35,400,20210911,2,'2021-09-11','2022-09-30','2021-09-01'),(3,'1',25,30,200,202125,1,'2021-09-11','2021-09-18','2021-09-02'),(4,'4',25,36,200,2021223,4,'2021-09-11','2020-09-12','2021-09-01'),(5,'4',25,35,1254,20212023,4,'2021-09-12','2022-09-03','2021-09-01'),(6,'2',30,35,100,202145,2,'2021-09-12','2020-09-05','2021-09-03'),(7,'1',25,30,5636,565,1,'2021-09-14','2022-09-01','2021-09-03'),(8,'2',30,35,120,2021,2,'2021-09-15','2022-09-16','2021-09-01');
/*!40000 ALTER TABLE `drugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `druginventory`
--

DROP TABLE IF EXISTS `druginventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `druginventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `drugid` int NOT NULL,
  `buyprice` double DEFAULT NULL,
  `saleprice` double DEFAULT NULL,
  `quantity` int DEFAULT '0',
  `batchNo` int DEFAULT NULL,
  `companyid` int DEFAULT NULL,
  `entrydate` date DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `mfgdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `druginventory`
--

LOCK TABLES `druginventory` WRITE;
/*!40000 ALTER TABLE `druginventory` DISABLE KEYS */;
INSERT INTO `druginventory` VALUES (1,1,25,30,0,20210911,1,'2021-08-11','2019-09-30','2021-08-09'),(2,2,30,35,400,20210911,2,'2021-09-11','2022-09-30','2021-09-01'),(3,1,25,30,0,202125,1,'2021-09-11','2021-09-18','2021-09-02'),(4,4,25,36,0,2021223,4,'2021-09-11','2020-09-12','2021-09-01'),(5,4,25,35,1234,20212023,4,'2021-09-12','2022-09-03','2021-09-01'),(6,2,30,35,100,202145,2,'2021-09-12','2021-10-05','2021-09-03'),(7,1,25,30,0,565,1,'2021-09-14','2022-09-01','2021-09-03'),(8,2,30,35,110,2021,2,'2021-09-15','2022-09-16','2021-09-01');
/*!40000 ALTER TABLE `druginventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `druglist`
--

DROP TABLE IF EXISTS `druglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `druglist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `buyprice` double DEFAULT NULL,
  `saleprice` double DEFAULT NULL,
  `companyid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `druglist`
--

LOCK TABLES `druglist` WRITE;
/*!40000 ALTER TABLE `druglist` DISABLE KEYS */;
INSERT INTO `druglist` VALUES (1,'Seclo',25,30,1),(2,'Napa',30,35,1),(3,'Mifeston',20,25,2),(4,'Paracitamol',25,35,11);
/*!40000 ALTER TABLE `druglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugout`
--

DROP TABLE IF EXISTS `drugout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drugout` (
  `invoiceid` int NOT NULL AUTO_INCREMENT,
  `drugId` varchar(45) DEFAULT NULL,
  `buyprice` double DEFAULT NULL,
  `saleprice` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `inventoryid` int DEFAULT NULL,
  `customerid` int DEFAULT NULL,
  `companyid` int DEFAULT NULL,
  `saledate` date DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `mfgdate` date DEFAULT NULL,
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugout`
--

LOCK TABLES `drugout` WRITE;
/*!40000 ALTER TABLE `drugout` DISABLE KEYS */;
INSERT INTO `drugout` VALUES (1,'2',30,35,10,6,0,2,'2021-09-14','2021-10-05','2021-09-03'),(2,'1',25,30,5636,7,0,1,'2021-09-14','2022-09-01','2021-09-03'),(3,'1',25,30,5636,7,0,1,'2021-09-14','2022-09-01','2021-09-03'),(4,'1',25,30,5636,7,0,1,'2021-09-14','2022-09-01','2021-09-03'),(5,'1',25,30,5636,7,0,1,'2021-09-14','2022-09-01','2021-09-03'),(6,'1',25,30,0,1,0,1,'2021-09-14','2019-09-30','2021-08-09'),(7,'4',25,36,200,4,0,4,'2021-09-14','2020-09-12','2021-09-01'),(8,'4',25,35,20,5,0,4,'2021-09-15','2022-09-03','2021-09-01'),(9,'2',30,35,10,8,0,2,'2021-09-16','2022-09-16','2021-09-01');
/*!40000 ALTER TABLE `drugout` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-19 12:41:55
