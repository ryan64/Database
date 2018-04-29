CREATE DATABASE  IF NOT EXISTS `videorentals` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `videorentals`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: videorentals
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `checkedout`
--

DROP TABLE IF EXISTS `checkedout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkedout` (
  `productID` varchar(11) NOT NULL,
  `employeeID` varchar(11) NOT NULL,
  `checkedoutDate` date NOT NULL,
  KEY `productID` (`productID`),
  KEY `employeeID` (`employeeID`),
  CONSTRAINT `checkedout_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`),
  CONSTRAINT `checkedout_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `videos` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkedout`
--

LOCK TABLES `checkedout` WRITE;
/*!40000 ALTER TABLE `checkedout` DISABLE KEYS */;
INSERT INTO `checkedout` (`productID`, `employeeID`, `checkedoutDate`) VALUES ('ZZMUVPJWMN7','1','2016-05-10'),('Z79Z07ZTWBI','4','2014-11-16'),('XW93VI6EQLF','9','2016-05-10'),('X637L7JIV4C','6','2016-05-26'),('WT5YOHHGS2Y','8','2016-12-13'),('V0J8AB81XI6','7','2017-07-21'),('UB4JO9T7174','10','2014-01-07'),('TYG16QFPTDL','3','2016-07-10'),('TPWZOBETNVN','2','2015-09-15'),('THNWOCD2VKG','5','2015-10-05'),('QALVWUP13IG','1','2013-09-03'),('PEZK562POA4','4','2014-05-16'),('OYP9NASAQP9','9','2017-10-01'),('NNCDU6GJFGO','6','2013-03-03'),('NJ97WTCCFNX','8','2012-11-28'),('NIXXT6E8J9I','6','2017-09-05'),('LSXK2NZEU25','7','2015-05-15'),('K7S7XM2MO2O','10','2017-07-22'),('IMGN1GDZYV2','3','2015-05-26'),('E7OSNURDK93','2','2013-07-15'),('DHZM9ZQOPYT','5','2014-08-28'),('DHY8V2IKU7B','1','2015-10-07'),('81ZB84RRX54','4','2013-06-03'),('6QTE0AD8COY','9','2017-08-31'),('6CTVRRVAA2H','6','2013-08-29'),('585VW8EUER4','8','2016-07-07'),('2QSPWEIZNTN','7','2017-06-12'),('14UHK0J6FSD','10','2013-07-21'),('0S9JJ97SB0O','3','2013-09-21'),('0HKZW756DSZ','2','2014-06-16');
/*!40000 ALTER TABLE `checkedout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customerlist`
--

DROP TABLE IF EXISTS `customerlist`;
/*!50001 DROP VIEW IF EXISTS `customerlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `customerlist` AS SELECT 
 1 AS `customerID`,
 1 AS `fname`,
 1 AS `lname`,
 1 AS `gender`,
 1 AS `birthday`,
 1 AS `addressline`,
 1 AS `city`,
 1 AS `state`,
 1 AS `country`,
 1 AS `postalcode`,
 1 AS `startdate`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customerrentals`
--

DROP TABLE IF EXISTS `customerrentals`;
/*!50001 DROP VIEW IF EXISTS `customerrentals`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `customerrentals` AS SELECT 
 1 AS `customerID`,
 1 AS `productID`,
 1 AS `videoname`,
 1 AS `genre`,
 1 AS `updatedate`,
 1 AS `rentalstatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customerID` varchar(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `birthday` date NOT NULL,
  `addressline` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `postalcode` varchar(50) NOT NULL,
  `startdate` date NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`customerID`, `fname`, `lname`, `gender`, `birthday`, `addressline`, `city`, `state`, `country`, `postalcode`, `startdate`) VALUES ('02236154016','Joaquin','Speares','M','1983-05-07','65663 Thierer Circle','Fresno','California','United States','93786','2014-12-15'),('04175065039','Maurits','Gwillyam','M','1986-11-13','8920 Mockingbird Crossing','Fort Myers','Florida','United States','33994','2013-12-23'),('06045772220','Bebe','Larsen','F','1998-04-28','1918 Jenna Way','Memphis','Tennessee','United States','38131','2000-12-12'),('07583529237','Currie','Beacock','M','1993-03-23','4 Bartillon Parkway','Dayton','Ohio','United States','45440','2003-10-02'),('09025435427','Crosby','Orrom','M','1993-12-02','3355 Prairieview Terrace','Washington','District of Columbia','United States','20220','2011-06-20'),('10055079021','Donni','Ziemke','F','1994-03-05','5017 Mesta Trail','San Bernardino','California','United States','92410','2006-08-14'),('12882106938','Maxwell','Yele','M','1972-08-19','9 Manitowish Hill','Boulder','Colorado','United States','80328','2001-10-05'),('14819809670','Jillian','Broadis','F','1972-09-23','447 Commercial Avenue','Fort Worth','Texas','United States','76134','2003-10-24'),('16329504420','Corena','Bray','F','1983-10-11','720 Myrtle Circle','Pasadena','California','United States','91199','2007-08-22'),('22217386106','Estelle','Ferris','F','1994-03-27','90 Duke Park','Bradenton','Florida','United States','34282','2005-05-27'),('45642332196','Patrice','Derdes','F','2000-04-16','8 Sunbrook Terrace','San Diego','California','United States','92186','2003-02-13'),('45738177278','Tiena','Cuttle','F','1996-01-27','1 Fallview Drive','Lexington','Kentucky','United States','40581','2001-08-24'),('49733715573','Adelaide','Stidworthy','F','1988-10-21','7889 Jenna Hill','Philadelphia','Pennsylvania','United States','19093','2000-07-10'),('54902750774','Sylas','Quodling','M','1976-08-26','8 Comanche Crossing','Charlotte','North Carolina','United States','28225','2004-03-22'),('55224849368','Ashleigh','Stonehewer','F','1985-05-20','08983 Starling Crossing','Newport News','Virginia','United States','23612','2014-02-24'),('56162660323','Marita','Castellanos','F','1999-11-26','17 Nancy Road','Los Angeles','California','United States','90005','2001-05-04'),('56351269692','Homer','O\'Carrol','M','1974-06-29','73 Mayer Park','Lubbock','Texas','United States','79491','2005-05-03'),('57203233779','Dorice','Radbond','F','1981-06-21','2225 Warner Junction','Pasadena','California','United States','91109','2006-05-27'),('57972093374','Dody','Reston','F','1974-05-18','09 Sullivan Alley','Boise','Idaho','United States','83732','2011-06-27'),('59652506532','Engracia','Surtees','F','1991-08-14','901 Myrtle Place','Metairie','Louisiana','United States','70033','2002-10-17'),('67323692223','Zeke','Olexa','M','1972-01-19','19 Cambridge Terrace','Fort Worth','Texas','United States','76129','2004-01-15'),('74820442163','Tonye','Goutcher','F','1990-08-01','387 Pennsylvania Court','Shawnee Mission','Kansas','United States','66215','2006-05-10'),('79174093967','Rebeka','Topping','F','1977-11-23','480 Towne Avenue','Boca Raton','Florida','United States','33487','2007-02-09'),('80706279136','Ruy','Kloser','M','1998-07-06','42 Dexter Terrace','Richmond','Virginia','United States','23285','2015-09-07'),('81070824722','Phaedra','Michele','F','1992-04-29','2 Southridge Pass','Richmond','Virginia','United States','23228','2005-11-18'),('83604226633','Phaedra','MacTeague','F','1984-12-12','4 Coolidge Alley','Fresno','California','United States','93704','2015-10-02'),('85855706471','Freemon','Clopton','M','1994-12-25','83 Debra Trail','Clearwater','Florida','United States','33763','2012-12-18'),('87950811774','Dill','Alvares','M','1976-02-05','65522 Corscot Drive','Spring','Texas','United States','77386','2003-01-12'),('93325025573','Stefano','Gorrick','M','1981-03-04','486 Basil Plaza','Peoria','Illinois','United States','61656','2003-03-30'),('96471179033','Ferdinande','Grigori','F','1976-07-12','732 Gulseth Parkway','Saint Louis','Missouri','United States','63136','2004-02-29');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employeelist`
--

DROP TABLE IF EXISTS `employeelist`;
/*!50001 DROP VIEW IF EXISTS `employeelist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `employeelist` AS SELECT 
 1 AS `employeeID`,
 1 AS `fname`,
 1 AS `lname`,
 1 AS `gender`,
 1 AS `birthday`,
 1 AS `addressline`,
 1 AS `city`,
 1 AS `state`,
 1 AS `country`,
 1 AS `postalcode`,
 1 AS `startdate`,
 1 AS `managerID`,
 1 AS `agecustomerlistcustomerlist`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employeeID` varchar(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `birthday` date NOT NULL,
  `addressline` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `postalcode` varchar(50) NOT NULL,
  `startdate` date NOT NULL,
  `managerID` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`employeeID`, `fname`, `lname`, `gender`, `birthday`, `addressline`, `city`, `state`, `country`, `postalcode`, `startdate`, `managerID`) VALUES ('1','Antony','Bordes','M','1981-03-18','271 Wayridge Hill','Spokane','Washington','United States','99252','2012-12-30',NULL),('10','Ewen','Lawry','M','1970-05-12','968 Stoughton Junction','Dallas','Texas','United States','75353','2002-05-11','6'),('2','Claudio','Pandie','M','1990-10-05','02807 Beilfuss Pass','Tyler','Texas','United States','75710','2017-05-02','1'),('3','Urbain','Noyes','M','1995-09-25','252 Myrtle Hill','Charlotte','North Carolina','United States','28225','2006-11-02','1'),('4','Alice','Derrington','F','1970-05-30','4326 Erie Drive','Saint Paul','Minnesota','United States','55146','2013-11-26','1'),('5','Kari','Scandrett','F','1979-05-27','8 Westridge Court','Clearwater','Florida','United States','33763','2004-10-07','1'),('6','Kesley','Fairebrother','F','1983-03-06','9 Sycamore Pass','Richmond','California','United States','94807','2000-12-21',NULL),('7','Mavra','Kordt','F','1980-01-01','976 Sutherland Center','Dulles','Virginia','United States','20189','2001-06-12','6'),('8','Judith','Jewett','F','1982-05-27','73 Towne Hill','Peoria','Illinois','United States','61629','2017-07-09','6'),('9','Darelle','Egel','F','1974-08-01','34 Arkansas Alley','Fairfield','Connecticut','United States','06825','2000-04-20','6');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employeesreportto`
--

DROP TABLE IF EXISTS `employeesreportto`;
/*!50001 DROP VIEW IF EXISTS `employeesreportto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `employeesreportto` AS SELECT 
 1 AS `employeeID`,
 1 AS `emp_fname`,
 1 AS `emp_lname`,
 1 AS `managerID`,
 1 AS `mng_fname`,
 1 AS `mng_lname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `paymentlist`
--

DROP TABLE IF EXISTS `paymentlist`;
/*!50001 DROP VIEW IF EXISTS `paymentlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `paymentlist` AS SELECT 
 1 AS `transactionID`,
 1 AS `employeeID`,
 1 AS `customerID`,
 1 AS `paymentdate`,
 1 AS `paymentMethod`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `transactionID` varchar(11) NOT NULL,
  `employeeID` varchar(11) NOT NULL,
  `customerID` varchar(11) NOT NULL,
  `paymentdate` date NOT NULL,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`transactionID`),
  KEY `customerID` (`customerID`),
  KEY `employeeID` (`employeeID`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` (`transactionID`, `employeeID`, `customerID`, `paymentdate`, `paymentMethod`, `amount`) VALUES ('ABFJD180094','2','57203233779','2013-06-03','CASH',5.00),('APMSJ870469','8','45642332196','2016-07-10','CASH',5.00),('BRPLW363203','5','49733715573','2016-07-07','DEBIT',5.00),('BUBMU544110','5','6045772220','2012-11-28','CHECK',5.00),('BUGJO688937','4','2236154016','2013-08-29','CREDIT',5.00),('DTBCI673591','4','14819809670','2016-05-26','DEBIT',5.00),('DUJOA648579','4','80706279136','2013-03-03','DEBIT',5.00),('ENBTB790841','2','96471179033','2014-05-16','CASH',5.00),('ESTVW145828','5','6045772220','2017-09-05','DEBIT',5.00),('FIFQT682306','6','85855706471','2017-07-21','CHECK',5.00),('FRCRQ246133','3','57972093374','2017-08-31','CHECK',5.00),('FVPIO594849','7','79174093967','2013-09-21','CASH',5.00),('HWNRN183716','7','81070824722','2017-07-22','CREDIT',5.00),('HXYTE247898','10','9025435427','2014-08-28','CREDIT',5.00),('ILSEN551086','1','54902750774','2015-10-07','DEBIT',5.00),('KEEXV498419','3','4175065039','2017-10-01','CREDIT',5.00),('LULRN265772','6','59652506532','2013-07-21','DEBIT',5.00),('NSJNC783400','6','83604226633','2015-05-15','CASH',5.00),('OOKJE966259','2','758352923','2014-11-16','CASH',5.00),('PNCGE804872','9','22217386106','2015-09-15','CASH',5.00),('RAYUW737663','1','74820442163','2013-09-03','DEBIT',5.00),('RHLPV883246','5','56162660323','2016-12-13','CHECK',5.00),('UGVQT011613','1','87950811774','2016-05-10','CHECK',5.00),('USJHA194568','3','16329504420','2016-05-10','CREDIT',5.00),('VFWYT084453','9','67323692223','2013-07-15','CASH',5.00),('VPGPK473116','10','93325025573','2015-10-05','CREDIT',5.00),('WPNRF629096','8','56351269692','2015-05-26','DEBIT',5.00),('YUWJW694399','8','12882106938','2014-06-16','DEBIT',5.00),('ZRFIG562143','5','55224849368','2017-06-12','CREDIT',5.00),('ZTMSI549924','7','45738177278','2014-01-07','DEBIT',5.00);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentals`
--

DROP TABLE IF EXISTS `rentals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rentals` (
  `rentalID` varchar(11) NOT NULL,
  `customerID` varchar(11) NOT NULL,
  `productID` varchar(11) NOT NULL,
  `rentalstatus` varchar(50) DEFAULT 'CHECKED OUT',
  `updatedate` date NOT NULL,
  PRIMARY KEY (`rentalID`),
  KEY `customerID` (`customerID`),
  KEY `productID` (`productID`),
  CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`),
  CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `videos` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentals`
--

LOCK TABLES `rentals` WRITE;
/*!40000 ALTER TABLE `rentals` DISABLE KEYS */;
INSERT INTO `rentals` (`rentalID`, `customerID`, `productID`, `rentalstatus`, `updatedate`) VALUES ('01TNB37D','93325025573','THNWOCD2VKG','RETURNED','2015-10-05'),('4NUNUGNM','85855706471','V0J8AB81XI6','RETURNED','2017-07-21'),('4T2SLLVW','57203233779','E7OSNURDK93','RETURNED','2015-10-07'),('7MCNJPLG','12882106938','0S9JJ97SB0O','RETURNED','2013-09-21'),('7SKIGMLY','16329504420','XW93VI6EQLF','RETURNED','2016-05-10'),('B7PI4M8H','87950811774','ZZMUVPJWMN7','RETURNED','2016-05-10'),('DJ0AWYM8','45738177278','UB4JO9T7174','RETURNED','2014-01-07'),('DXJEIY1K','4175065039','PEZK562POA4','RETURNED','2017-10-01'),('EK8JTG5U','9025435427','PEZK562POA4','RETURNED','2013-07-15'),('FVI7KIXR','22217386106','TPWZOBETNVN','RETURNED','2015-09-15'),('FZMGG1OA','45642332196','TYG16QFPTDL','RETURNED','2016-07-10'),('G68FGX8P','56162660323','WT5YOHHGS2Y','RETURNED','2016-12-13'),('K8XMKKEH','49733715573','81ZB84RRX54','RETURNED','2013-08-29'),('MS933JA4','83604226633','NJ97WTCCFNX','RETURNED','2015-05-15'),('NYXN7GFD','54902750774','K7S7XM2MO2O','RETURNED','2014-08-28'),('O82SZ7X1','59652506532','2QSPWEIZNTN','RETURNED','2017-06-12'),('OE4LO1AL','2236154016','DHY8V2IKU7B','RETURNED','2017-08-31'),('PFV76H5W','56351269692','NIXXT6E8J9I','RETURNED','2017-07-22'),('Q33W5J75','80706279136','80706279136','RETURNED','2013-03-03'),('QA8T6ENX','14819809670','X637L7JIV4C','RETURNED','2016-05-26'),('R6NID96K','57972093374','DHZM9ZQOPYT','RETURNED','2013-06-03'),('RTMNCL26','6045772220','NNCDU6GJFGO','RETURNED','2017-09-05'),('T4KFGG8J','758352923','Z79Z07ZTWBI','RETURNED','2014-11-16'),('TS891IIW','74820442163','74820442163','RETURNED','2013-09-03'),('UREKVVKN','6045772220','OYP9NASAQP9','RETURNED','2012-11-28'),('VF2P34TL','96471179033','QALVWUP13IG','RETURNED','2014-05-16'),('W4H687WB','67323692223','LSXK2NZEU25','RETURNED','2015-05-26'),('WT4ZK1D9','79174093967','14UHK0J6FSD','RETURNED','2013-07-21'),('X4EXXL3L','55224849368','6QTE0AD8COY','RETURNED','2016-07-07');
/*!40000 ALTER TABLE `rentals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rentalstatus`
--

DROP TABLE IF EXISTS `rentalstatus`;
/*!50001 DROP VIEW IF EXISTS `rentalstatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rentalstatus` AS SELECT 
 1 AS `rentalID`,
 1 AS `customerID`,
 1 AS `productID`,
 1 AS `rentalstatus`,
 1 AS `updatedate`,
 1 AS `videoname`,
 1 AS `genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `videolist`
--

DROP TABLE IF EXISTS `videolist`;
/*!50001 DROP VIEW IF EXISTS `videolist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `videolist` AS SELECT 
 1 AS `productID`,
 1 AS `videoname`,
 1 AS `genre`,
 1 AS `videotype`,
 1 AS `quantity`,
 1 AS `rentprice`,
 1 AS `numdiscs`,
 1 AS `mpaaratings`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `productID` varchar(11) NOT NULL,
  `videoname` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `videotype` varchar(50) NOT NULL,
  `quantity` int(3) NOT NULL,
  `rentprice` decimal(10,2) NOT NULL,
  `numdiscs` int(3) NOT NULL,
  `mpaaratings` char(5) NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` (`productID`, `videoname`, `genre`, `videotype`, `quantity`, `rentprice`, `numdiscs`, `mpaaratings`) VALUES ('0HKZW756DSZ','Bewitched','Comedy|Fantasy|Romance','BLU-RAY',13,7.50,4,'PG'),('0S9JJ97SB0O','Trio, The (Trio, Das)','Drama|Romance','DVD',11,5.00,4,'G'),('14UHK0J6FSD','Mulberry Street','Action|Horror|Thriller','BLU-RAY',13,7.50,1,'NC-17'),('2QSPWEIZNTN','Snake Pit, The','Drama','BLU-RAY',20,7.50,2,'PG-13'),('585VW8EUER4','Descendant of the Sun (Ri jie)','Action|Adventure|Fantasy|Sci-Fi','DVD',5,5.00,3,'R'),('6CTVRRVAA2H','Dog, The','Documentary','DVD',19,5.00,1,'G'),('6QTE0AD8COY','Rock & Rule','Animation|Fantasy|Musical|Sci-Fi','DVD',8,5.00,2,'G'),('81ZB84RRX54','Way South, The (De weg naar het zuiden)','Documentary','DVD',5,5.00,4,'R'),('DHY8V2IKU7B','High Spirits','Comedy','DVD',19,5.00,4,'G'),('DHZM9ZQOPYT','Big Time Operators (Smallest Show on Earth, The)','Comedy','BLU-RAY',5,7.50,4,'R'),('E7OSNURDK93','Once in the Life','Crime|Drama','DVD',15,5.00,4,'R'),('IMGN1GDZYV2','Fugly!','Comedy','DVD',17,5.00,1,'R'),('K7S7XM2MO2O','Black or White','Drama','DVD',8,5.00,1,'PG-13'),('LSXK2NZEU25','Man of Tai Chi','Action|IMAX','BLU-RAY',13,7.50,1,'PG-13'),('NIXXT6E8J9I','Challenge, The','Action','BLU-RAY',9,7.50,4,'PG'),('NJ97WTCCFNX','Kon-Tiki','Adventure|Documentary','BLU-RAY',16,7.50,1,'PG-13'),('NNCDU6GJFGO','War, Inc.','Comedy|Crime|Thriller','BLU-RAY',19,7.50,1,'R'),('OYP9NASAQP9','Perfect Plan, A (Plan parfait, Un)','Adventure|Comedy|Romance','DVD',5,5.00,3,'G'),('PEZK562POA4','Caine Mutiny, The','Drama|War','DVD',18,5.00,3,'R'),('QALVWUP13IG','Around the World in 80 Days','Adventure|Comedy','BLU-RAY',20,7.50,4,'G'),('THNWOCD2VKG','Strayed (égarés, Les)','Drama|Romance','DVD',19,5.00,4,'PG'),('TPWZOBETNVN','Turtle Diary','Comedy|Drama|Romance','DVD',19,5.00,4,'G'),('TYG16QFPTDL','Anniversary Party, The','Drama','BLU-RAY',5,7.50,2,'PG'),('UB4JO9T7174','Griff the Invisible','Comedy|Drama|Romance','DVD',17,5.00,3,'G'),('V0J8AB81XI6','Footloose','Drama','DVD',8,5.00,3,'PG-13'),('WT5YOHHGS2Y','Roommates','Comedy|Drama','BLU-RAY',20,7.50,2,'R'),('X637L7JIV4C','Crazy Mama','Action|Comedy','DVD',11,5.00,2,'PG'),('XW93VI6EQLF','Point Men, The','Action|Drama','DVD',11,5.00,1,'R'),('Z79Z07ZTWBI','Shanghai Calling','Comedy|Drama|Romance','DVD',11,5.00,1,'PG'),('ZZMUVPJWMN7','Mustalaishurmaaja','Drama|Romance','DVD',13,5.00,1,'PG-13');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `videostock`
--

DROP TABLE IF EXISTS `videostock`;
/*!50001 DROP VIEW IF EXISTS `videostock`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `videostock` AS SELECT 
 1 AS `productID`,
 1 AS `videoname`,
 1 AS `genre`,
 1 AS `videotype`,
 1 AS `quantity`,
 1 AS `rentprice`,
 1 AS `numdiscs`,
 1 AS `mpaaratings`,
 1 AS `instock`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `customerlist`
--

/*!50001 DROP VIEW IF EXISTS `customerlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerlist` AS select `customers`.`customerID` AS `customerID`,`customers`.`fname` AS `fname`,`customers`.`lname` AS `lname`,`customers`.`gender` AS `gender`,`customers`.`birthday` AS `birthday`,`customers`.`addressline` AS `addressline`,`customers`.`city` AS `city`,`customers`.`state` AS `state`,`customers`.`country` AS `country`,`customers`.`postalcode` AS `postalcode`,`customers`.`startdate` AS `startdate`,floor(((to_days(curdate()) - to_days(`customers`.`birthday`)) / 365.25)) AS `age` from `customers` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customerrentals`
--

/*!50001 DROP VIEW IF EXISTS `customerrentals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerrentals` AS select `rentals`.`customerID` AS `customerID`,`rentals`.`productID` AS `productID`,`videos`.`videoname` AS `videoname`,`videos`.`genre` AS `genre`,`rentals`.`updatedate` AS `updatedate`,`rentals`.`rentalstatus` AS `rentalstatus` from ((`rentals` join `customers`) join `videos`) where ((`rentals`.`customerID` = `customers`.`customerID`) and (`rentals`.`productID` = `videos`.`productID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeelist`
--

/*!50001 DROP VIEW IF EXISTS `employeelist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeelist` AS select `employees`.`employeeID` AS `employeeID`,`employees`.`fname` AS `fname`,`employees`.`lname` AS `lname`,`employees`.`gender` AS `gender`,`employees`.`birthday` AS `birthday`,`employees`.`addressline` AS `addressline`,`employees`.`city` AS `city`,`employees`.`state` AS `state`,`employees`.`country` AS `country`,`employees`.`postalcode` AS `postalcode`,`employees`.`startdate` AS `startdate`,`employees`.`managerID` AS `managerID`,floor(((to_days(curdate()) - to_days(`employees`.`birthday`)) / 365.25)) AS `agecustomerlistcustomerlist` from `employees` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeesreportto`
--

/*!50001 DROP VIEW IF EXISTS `employeesreportto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeesreportto` AS select `e`.`employeeID` AS `employeeID`,`e`.`fname` AS `emp_fname`,`e`.`lname` AS `emp_lname`,`e`.`managerID` AS `managerID`,`m`.`fname` AS `mng_fname`,`m`.`lname` AS `mng_lname` from (`employees` `e` join `employees` `m`) where (`e`.`managerID` = `m`.`employeeID`) order by `e`.`managerID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `paymentlist`
--

/*!50001 DROP VIEW IF EXISTS `paymentlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `paymentlist` AS select `payments`.`transactionID` AS `transactionID`,`payments`.`employeeID` AS `employeeID`,`payments`.`customerID` AS `customerID`,`payments`.`paymentdate` AS `paymentdate`,`payments`.`paymentMethod` AS `paymentMethod`,`payments`.`amount` AS `amount` from `payments` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rentalstatus`
--

/*!50001 DROP VIEW IF EXISTS `rentalstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rentalstatus` AS select `rentals`.`rentalID` AS `rentalID`,`rentals`.`customerID` AS `customerID`,`rentals`.`productID` AS `productID`,`rentals`.`rentalstatus` AS `rentalstatus`,`rentals`.`updatedate` AS `updatedate`,`videos`.`videoname` AS `videoname`,`videos`.`genre` AS `genre` from (`rentals` join `videos`) where (`rentals`.`productID` = `videos`.`productID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `videolist`
--

/*!50001 DROP VIEW IF EXISTS `videolist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `videolist` AS select `videos`.`productID` AS `productID`,`videos`.`videoname` AS `videoname`,`videos`.`genre` AS `genre`,`videos`.`videotype` AS `videotype`,`videos`.`quantity` AS `quantity`,`videos`.`rentprice` AS `rentprice`,`videos`.`numdiscs` AS `numdiscs`,`videos`.`mpaaratings` AS `mpaaratings` from `videos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `videostock`
--

/*!50001 DROP VIEW IF EXISTS `videostock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `videostock` AS select `videos`.`productID` AS `productID`,`videos`.`videoname` AS `videoname`,`videos`.`genre` AS `genre`,`videos`.`videotype` AS `videotype`,`videos`.`quantity` AS `quantity`,`videos`.`rentprice` AS `rentprice`,`videos`.`numdiscs` AS `numdiscs`,`videos`.`mpaaratings` AS `mpaaratings`,(`videos`.`quantity` - count((`rentals`.`rentalstatus` = 'CHECKED OUT'))) AS `instock` from (`videos` join `rentals`) where (`videos`.`productID` = `rentals`.`productID`) group by `videos`.`productID` */;
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

-- Dump completed on 2017-12-03 14:08:15
