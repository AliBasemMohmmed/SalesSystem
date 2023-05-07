-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: newpost_database
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category_database`
--

DROP TABLE IF EXISTS `category_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_database` (
  `Category_ID` int(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_database`
--

LOCK TABLES `category_database` WRITE;
/*!40000 ALTER TABLE `category_database` DISABLE KEYS */;
INSERT INTO `category_database` VALUES (2,'BASKETBALL'),(3,'VOLLEYBALL'),(4,'FOOTBALL'),(5,'BASEBALL'),(6,'SOFTBALL'),(7,'TAKRAW BALL'),(8,'SHUTTLECOCK'),(9,'GUITARS'),(10,'BOXING GLOVES'),(11,'BONDPAPER'),(12,'BALLPEN'),(13,'LAMINATING FILM'),(14,'BILLIARD'),(15,'TEXTILE PAINT'),(16,'CANVASS CLOTH'),(17,'SILK SCREEN'),(18,'PHOTO PAPER'),(19,'STICKER PAPER'),(20,'BLANK CD'),(21,'SPECIALTY PAPER'),(22,'GUITAR STRINGS');
/*!40000 ALTER TABLE `category_database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defective_database`
--

DROP TABLE IF EXISTS `defective_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defective_database` (
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Supplier_Name` varchar(100) NOT NULL,
  `Quantity` varchar(100) NOT NULL,
  `Remarks` varchar(100) NOT NULL,
  `Defective_Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defective_database`
--

LOCK TABLES `defective_database` WRITE;
/*!40000 ALTER TABLE `defective_database` DISABLE KEYS */;
/*!40000 ALTER TABLE `defective_database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_id`
--

DROP TABLE IF EXISTS `employee_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_id` (
  `ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_id`
--

LOCK TABLES `employee_id` WRITE;
/*!40000 ALTER TABLE `employee_id` DISABLE KEYS */;
INSERT INTO `employee_id` VALUES ('007');
/*!40000 ALTER TABLE `employee_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_loginlogs`
--

DROP TABLE IF EXISTS `employee_loginlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_loginlogs` (
  `ID` varchar(100) NOT NULL,
  `Cashier` varchar(100) NOT NULL,
  `LOGGED_IN` varchar(100) NOT NULL,
  `LOGGED_OUT` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_loginlogs`
--

LOCK TABLES `employee_loginlogs` WRITE;
/*!40000 ALTER TABLE `employee_loginlogs` DISABLE KEYS */;
INSERT INTO `employee_loginlogs` VALUES ('001','Gonzaless, Raprapp GG.','5/9/2017 11:11:18 PM','05/09/17 11:11:25 PM'),('002','Gonzaless, Raprapp GG.','5/9/2017 11:18:05 PM','05/09/17 11:18:09 PM'),('003','Gonzaless, Raprapp GG.','5/10/2017 11:43:10 AM','05/10/17 11:43:27 AM'),('004','Gonzaless, Raprapp GG.','5/10/2017 11:46:07 AM','05/10/17 11:46:22 AM'),('005','Gonzaless, Raprapp GG.','5/10/2017 11:51:06 AM','05/10/17 11:51:23 AM'),('006','Gonzaless, Raprapp GG.','5/15/2017 12:55:37 AM','05/15/17 12:55:58 AM');
/*!40000 ALTER TABLE `employee_loginlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_database`
--

DROP TABLE IF EXISTS `employees_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees_database` (
  `Employee_ID` int(20) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `User_Level` varchar(100) NOT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_database`
--

LOCK TABLES `employees_database` WRITE;
/*!40000 ALTER TABLE `employees_database` DISABLE KEYS */;
INSERT INTO `employees_database` VALUES (1,'Raprapp','GG.','Gonzaless','raprapp','12345','Cashier'),(2,'Jordan','Newpost','Onglamsing','jordan','jordan','Administrator');
/*!40000 ALTER TABLE `employees_database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_logs`
--

DROP TABLE IF EXISTS `employees_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees_logs` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `Cashier` varchar(100) NOT NULL,
  `Subtotal` varchar(100) NOT NULL,
  `Discount` varchar(100) NOT NULL,
  `CashTendered` varchar(100) NOT NULL,
  `ChangeTendered` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_logs`
--

LOCK TABLES `employees_logs` WRITE;
/*!40000 ALTER TABLE `employees_logs` DISABLE KEYS */;
INSERT INTO `employees_logs` VALUES (1,'Gonzaless, Raprapp GG.','500','0','1000','500'),(2,'Gonzaless, Raprapp GG.','9975','0','10000','25'),(3,'Gonzaless, Raprapp GG.','49875','0','2000000','1950125'),(4,'Gonzaless, Raprapp GG.','89775','0','200000','110225');
/*!40000 ALTER TABLE `employees_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_database`
--

DROP TABLE IF EXISTS `products_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_database` (
  `Product_ID` int(20) NOT NULL AUTO_INCREMENT,
  `Product_ID_Barcode` varchar(100) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Price_Code` varchar(50) NOT NULL,
  `Name_of_Supplier` varchar(50) NOT NULL,
  `Delivery_Date` varchar(100) NOT NULL,
  `Unit` varchar(100) NOT NULL,
  PRIMARY KEY (`Product_ID`),
  UNIQUE KEY `Product_ID_Barcode` (`Product_ID_Barcode`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_database`
--

LOCK TABLES `products_database` WRITE;
/*!40000 ALTER TABLE `products_database` DISABLE KEYS */;
INSERT INTO `products_database` VALUES (3,'1','GG7X','1995','395','BASKETBALL','BENNG-SON','SON','05/09/2019','PCS'),(4,'2','GF7X','1895','0','BASKETBALL','BNNG-SON','SON','05/09/2019','PCS'),(5,'5','GG6X','1995','0','BASKETBALL','BNNG-SON','SON','05/09/2019','PCS'),(6,'6','GN7X','1499','0','BASKETBALL','MNNG-SON','SON','05/09/2019','PCS'),(7,'7','GM7X','1595','0','BASKETBALL','MNNG-SON','SON','05/09/2019','PCS'),(8,'8','GR7','555','0','BASKETBALL','RNNG-SON','SON','05/09/2019','PCS'),(9,'9','GL7X','3995','0','BASKETBALL','BIING-SON','SON','05/09/2019','PCS'),(10,'10','RJ MASA','1599','0','GUITARS','MNLG-RJ','KES','05/09/2019','PCS'),(11,'11','RJ MASA II','1895','0','GUITARS','SNLG-RJ','KES','05/09/2019','PCS'),(12,'12','RJ BABY GUITAR','1395','0','GUITARS','ANNG-RJ','KES','05/09/2019','PCS'),(13,'13','RJ UKULELE','1125','0','GUITARS','LLNG-RJ','KES','05/09/2019','PCS'),(14,'14','MVA 200','3395','0','VOLLEYBALL','BING-SON','SON','05/09/2019','PCS'),(15,'15','MVA 300','4295','0','VOLLEYBALL','ELNNG-SON','SON','05/09/2019','PCS'),(16,'16','MVA 310','2695','0','VOLLEYBALL','BRNNG-SON','SON','05/09/2019','PCS'),(17,'17','MVA 330','2495','0','VOLLEYBALL','BRNNG-SON','SON','05/09/2019','PCS'),(18,'18','MVA 350L','1125','0','VOLLEYBALL','MNNG-SON','SON','05/09/2019','PCS'),(19,'19','MVA 350','1275','0','VOLLEYBALL','MNNG-SON','SON','05/09/2019','PCS'),(20,'20','MVA 390','1395','0','VOLLEYBALL','MNNG-SON','SON','05/09/2019','PCS'),(21,'21','CACTUS SHORT','169','0','BONDPAPER','BRRG-RAP','RAPRAP','05/09/2019','REAM'),(22,'22','CACTUS LONG','189','0','BONDPAPER','BRRG-RAP','RAPRAP','05/09/2019','REAM'),(23,'23','BONUS SHORT','145','0','BONDPAPER','BRRG-RAP','RAPRAP','05/09/2019','REAM'),(24,'24','BONUS LONG','155','0','BONDPAPER','BRRG-RAP','RAPRAP','05/09/2019','REAM'),(25,'25','PANDA BLACK','60','0','BALLPEN','ABLG-RAP','RAPRAP','05/09/2019','DOZ'),(26,'26','PANDA BLUE','60','0','BALLPEN','ABLG-RAP','RAPRAP','05/09/2019','DOZ'),(27,'27','PANDA RED','60','0','BALLPEN','ABLG-RAP','RAPRAP','05/09/2019','DOZ'),(28,'28','DENISE','639','0','CANVASS CLOTH','RRLG-BEUP','BEUPLOK','05/09/2019','MTR'),(29,'29','TULCO CLASSIC RED','59','0','TEXTILE PAINT','EELG-BEUP','BEUPLOK','05/09/2019','KILO'),(30,'30','TULCO ATHLETIC BLACK','115','0','TEXTILE PAINT','MMLG-BEUP','BEUPLOK','05/09/2019','KILO'),(31,'31','BORAX POWDER','69','0','BILLIARD','RNG-KES','KES','05/09/2019','KILO'),(32,'32','ACSYS GSM 250','35','0','LAMINATING FILM','BLG-KES','KES','05/09/2019','FT'),(33,'33','SILK SCREEN 1/2','49','0','SILK SCREEN','BBNG-GOD','GOD','05/09/2019','YARD'),(34,'34','SILK SCREEN 1','98','0','SILK SCREEN','BBNG-GOD','GOD','05/09/2019','YARD'),(35,'35','KODAK CDR','12','0','BLANK CD','ALG-GOD','GOD','05/09/2019','SPOOL'),(36,'36','DVDR','25','0','BLANK CD','ALG-GOD','GOD','05/09/2019','SPOOL'),(37,'37','KODAK PHOTOPAPER GLOSSY','125','0','PHOTO PAPER','ALG-GOD','GOD','05/09/2019','PACK'),(38,'38','KODAK PHOTO PAPER','115','0','PHOTO PAPER','ALG-GOD','GOD','05/09/2019','PACK'),(39,'39','KODAK STICKER PAPER GLOSSY','125','0','STICKER PAPER','ALG-GOD','GOD','05/09/2019','PACK'),(40,'40','TALCOM POWDER','69','0','BILLIARD','WERRT-RAP','RAPRAP','05/09/2019','KILO'),(41,'41','CANON BLUE','75','0','SPECIALTY PAPER','BBG-GOD','GOD','05/09/2019','PACK'),(42,'42','FENDER NYLON STRING','169','0','GUITAR STRINGS','MLG-KES','KES','05/09/2019','SET'),(43,'43','GIBSON ELECTRIC GUITAR STRINGS XL','169','0','GUITAR STRINGS','MLG-KES','KES','05/09/2019','SET');
/*!40000 ALTER TABLE `products_database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_database`
--

DROP TABLE IF EXISTS `sales_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_database` (
  `Transaction_ID` int(100) NOT NULL AUTO_INCREMENT,
  `Subtotal` varchar(100) NOT NULL,
  `Cash` varchar(100) NOT NULL,
  `CashChange` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Time` varchar(100) NOT NULL,
  `Month` varchar(100) NOT NULL,
  `Day` varchar(100) NOT NULL,
  `Year` varchar(100) NOT NULL,
  PRIMARY KEY (`Transaction_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_database`
--

LOCK TABLES `sales_database` WRITE;
/*!40000 ALTER TABLE `sales_database` DISABLE KEYS */;
INSERT INTO `sales_database` VALUES (1,'500','1000','500','May 09, 2017','10:32:18 PM','May','09','2017'),(2,'9975','10000','25','May 10, 2017','11:43:24 AM','May','10','2017'),(3,'49875','2000000','1950125','May 10, 2017','11:46:20 AM','May','10','2017'),(4,'89775','200000','110225','May 10, 2017','11:51:19 AM','May','10','2017');
/*!40000 ALTER TABLE `sales_database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks_database`
--

DROP TABLE IF EXISTS `stocks_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks_database` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `Product_ID_Barcode` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Supplier_Name` varchar(100) NOT NULL,
  `Quantity` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Expiration_Date` varchar(100) NOT NULL,
  `Month` varchar(100) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks_database`
--

LOCK TABLES `stocks_database` WRITE;
/*!40000 ALTER TABLE `stocks_database` DISABLE KEYS */;
INSERT INTO `stocks_database` VALUES (1,'12345','SPALDING','Jordan Onglamsing','95','STOCK IN','05/09/2017','05/09/2018','05','2017',''),(2,'12345','SPALDING','','5','STOCK OUT','05/09/2017','','05','2017',''),(3,'1','GG7X','SON','55','STOCK IN','05/10/2017','05/10/2018','05','2017',''),(4,'1','GG7X','SON','100','STOCK IN','05/10/2017','05/10/2019','05','2017',''),(5,'1','GG7X','','5','STOCK OUT','05/10/2017','','05','2017',''),(6,'1','GG7X','SON','200','STOCK IN','05/10/2017','05/10/2019','05','2017',''),(7,'1','GG7X','','25','STOCK OUT','05/10/2017','','05','2017',''),(8,'1','GG7X','','45','STOCK OUT','05/10/2017','','05','2017','');
/*!40000 ALTER TABLE `stocks_database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers_database`
--

DROP TABLE IF EXISTS `suppliers_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers_database` (
  `Supplier_ID` int(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Contact_Number` varchar(20) NOT NULL,
  `TIN` varchar(20) NOT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers_database`
--

LOCK TABLES `suppliers_database` WRITE;
/*!40000 ALTER TABLE `suppliers_database` DISABLE KEYS */;
INSERT INTO `suppliers_database` VALUES (2,'GOD','MANILA','12345678','98989898'),(3,'SON','CEBU','56579778','454546677'),(4,'BEUPLOK','TAWITAWI','444555','22222'),(5,'RAPRAP','BJMP','2323232','23232323'),(6,'KES','MAASIN DAM','7879786878','58687449');
/*!40000 ALTER TABLE `suppliers_database` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-15  9:50:07
