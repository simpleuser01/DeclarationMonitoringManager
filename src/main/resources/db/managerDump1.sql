-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: declaration_manager
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `claim`
--

DROP TABLE IF EXISTS `claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `claim` (
  `claim_id` int(11) NOT NULL,
  `claim_first_name` char(100) NOT NULL,
  `claim_last_name` char(100) NOT NULL,
  `claim_patronymic` char(100) NOT NULL,
  `sign_start_date` date NOT NULL,
  `sign_end_date` date NOT NULL,
  `sign_ident_number` int(10) NOT NULL,
  PRIMARY KEY (`claim_id`),
  UNIQUE KEY `claim_id_UNIQUE` (`claim_id`),
  CONSTRAINT `claim_id` FOREIGN KEY (`claim_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim`
--

LOCK TABLES `claim` WRITE;
/*!40000 ALTER TABLE `claim` DISABLE KEYS */;
INSERT INTO `claim` VALUES (57,'grays','kwinston','avfosievna','2019-05-01','2019-05-16',43544),(58,'silver','francya','craftovich','2019-05-02','2019-05-09',43544),(59,'Alex','yyy','shtefan','2019-05-02','2019-05-10',43544),(61,'jhon','yyy','craftovich','2019-05-01','2019-05-09',43544),(62,'jhon,dfgfdg','crause,dfgdfg','craftovich,dgfdg','2019-05-03','2019-05-01',43544),(63,'yyy,Alex','jack,Barabanov','craftovich,shtefan','2019-05-02','2019-05-08',43544),(64,'uebiwe,julon,julon,Alex','yyy,yyy,yyy,Barabanov','petrovna,petrovna,petrovna,craftovich','2019-05-03','2019-05-17',67567),(65,'Alex,Alex,Alex,julon','Barabanov,Barabanov,Barabanov,crause','miha,shtefan,shtefan,shtefan','2019-05-02','2019-05-10',43544),(66,'Alex,ffdg','Barabanov,dfgdfg','shtefan,dfg','2019-05-02','2019-05-09',43544),(67,'q','w,t','e,y','2019-05-01','2019-05-09',43544),(68,'Alex','Barabanov','shtefan','2019-05-01','2019-05-10',43544);
/*!40000 ALTER TABLE `claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contract` (
  `contract_id` int(11) NOT NULL,
  `work_name` varchar(100) NOT NULL,
  `work_address` varchar(100) NOT NULL,
  `work_start_date` date NOT NULL,
  `work_end_date` date NOT NULL,
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `idcontract_UNIQUE` (`contract_id`),
  CONSTRAINT `contact_id` FOREIGN KEY (`contract_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (61,'fgdfg','dfgdfg','2019-05-23','2019-05-25'),(62,'fgdfg','dfgdfg','2019-05-01','2019-05-09'),(63,'fgdfg','dfgdfg','2019-05-08','2019-05-09'),(64,'fgdfg','dfgdfg','2019-05-17','2019-05-02'),(65,'fgdfg','dfgdfg','2019-05-02','2019-05-03'),(66,'fgdfg','dfgdfg','2019-05-01','2019-05-03'),(67,'sdf','wsdf','2019-05-02','2019-05-09'),(68,'gdfg','dfg','2019-05-01','2019-05-16');
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxy`
--

DROP TABLE IF EXISTS `proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proxy` (
  `proxy_id` int(11) NOT NULL,
  `proxy_first_name` char(100) NOT NULL,
  `proxy_last_name` char(100) NOT NULL,
  `proxy_patronymic` char(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`proxy_id`),
  UNIQUE KEY `proxy_id_UNIQUE` (`proxy_id`),
  CONSTRAINT `proxy_id` FOREIGN KEY (`proxy_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxy`
--

LOCK TABLES `proxy` WRITE;
/*!40000 ALTER TABLE `proxy` DISABLE KEYS */;
INSERT INTO `proxy` VALUES (62,'jhon,dfgfdg','crause,dfgdfg','craftovich,dgfdg','2019-05-09','2019-05-23'),(63,'yyy,Alex','jack,Barabanov','craftovich,shtefan','2019-05-01','2019-05-10'),(64,'uebiwe,julon,julon,Alex','yyy,yyy,yyy,Barabanov','petrovna,petrovna,petrovna,craftovich','2019-05-03','2019-05-10'),(65,'Alex,Alex,Alex,julon','Barabanov,Barabanov,Barabanov,crause','miha,shtefan,shtefan,shtefan','2019-05-16','2019-05-10'),(66,'Alex,ffdg','Barabanov,dfgdfg','shtefan,dfg','2019-05-02','2019-05-10'),(67,'r','w,t','e,y','2019-05-02','2019-05-09'),(68,'dfg','dg','dfg','2019-05-01','2019-05-02');
/*!40000 ALTER TABLE `proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_certificate`
--

DROP TABLE IF EXISTS `state_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `state_certificate` (
  `certificate_id` int(11) NOT NULL,
  `unic_state_number` varchar(12) NOT NULL,
  `organization_address` varchar(100) NOT NULL,
  `organization_name` varchar(100) NOT NULL,
  PRIMARY KEY (`certificate_id`),
  UNIQUE KEY `certificate_id_UNIQUE` (`certificate_id`),
  CONSTRAINT `certificate_id` FOREIGN KEY (`certificate_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_certificate`
--

LOCK TABLES `state_certificate` WRITE;
/*!40000 ALTER TABLE `state_certificate` DISABLE KEYS */;
INSERT INTO `state_certificate` VALUES (64,'4543228','dfgd','fdggf'),(65,'444','333','44fg'),(66,'4345','dfgdf','fdgdf'),(67,'4543','sdf','dsf'),(68,'4543','sdf','sdf');
/*!40000 ALTER TABLE `state_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` char(100) NOT NULL,
  `last_name` char(100) NOT NULL,
  `patronymic` char(100) NOT NULL,
  `series` char(2) NOT NULL,
  `series_number` varchar(7) NOT NULL,
  `ident_number` varchar(14) NOT NULL,
  `birth_date` date NOT NULL,
  `state_agency` varchar(100) NOT NULL,
  `date_state_agency` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (57,'grays','kwinston','avfosievna','VV','34534','34534g34g','1996-02-07','minskiy ROVD','2019-05-17'),(58,'silver','francya','craftovich','MC','34534','34534g34g','2019-05-01','minskiy ROVD','2019-05-15'),(59,'Alex','yyy','shtefan','MC','5555667','34543f433','2019-04-30','minskiy ROVD','2019-05-01'),(60,'Alex','yyy','shtefan','MC','5555667','34543f433','2019-04-30','minskiy ROVD','2019-05-01'),(61,'jhon','yyy','craftovich','MC','22222','34543f433','2019-05-01','minskiy ROVD','2019-05-08'),(62,'jhon','crause','craftovich','MC','22222','34543f433','2019-05-01','minskiy ROVD','2019-05-09'),(63,'yyy,ooo,yyy,Alex','jack,jack,jack,Barabanov','craftovich,craftovich,craftovich,shtefan','VV','22222','34543f433','2019-05-01','minskiy ROVD','2019-05-09'),(64,'uebiwe,julon,julon,Alex','yyy,yyy,yyy,Barabanov','petrovna,petrovna,petrovna,craftovich','NN','22222','34543f433','2019-05-03','minskiy ROVD','2019-05-17'),(65,'Alex,Alex,Alex,julon','Barabanov,Barabanov,Barabanov,crause','miha,shtefan,shtefan,shtefan','VV','22222','34543f433','2019-05-01','minskiy ROVD','2019-05-02'),(66,'Miha,Miha,ff,Alex,ffdg,Alex,ffdg','ff,ff,yy,Barabanov,dfgdfg,Barabanov,dfgdfg','ff,ff,yy,shtefan,dfg,shtefan,dfg','VV','22222','34543f433','1992-02-04','minskiy ROVD','2019-05-01'),(67,'q','w','e','VV','22222','34543f433','2019-05-03','minskiy ROVD','2019-05-09'),(68,'Alex','Barabanov228','shtefan','MC','22222','34543f433','2019-05-01','minskiy ROVD','2019-05-10');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'declaration_manager'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-26 19:31:32
