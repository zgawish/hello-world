Ctrl-C -- exit!
-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: poke_data
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB-1:10.4.8+maria~bionic-log

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
-- Table structure for table `poke_stats`
--

DROP TABLE IF EXISTS `poke_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poke_stats` (
  `id` bigint(20) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `height` bigint(20) DEFAULT NULL,
  `base_experience` bigint(20) DEFAULT NULL,
  `weight` bigint(20) DEFAULT NULL,
  `rank` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poke_stats`
--

LOCK TABLES `poke_stats` WRITE;
/*!40000 ALTER TABLE `poke_stats` DISABLE KEYS */;
INSERT INTO `poke_stats` VALUES (25,'pikachu',4,112,60,35),(1,'bulbasaur',7,64,69,1),(133,'eevee',3,65,65,204),(132,'ditto',3,101,40,203),(658,'greninja',15,239,400,765),(94,'gengar',15,225,405,140),(95,'onix',88,77,2100,142),(151,'mew',4,270,40,233),(150,'mewtwo',20,306,1220,230),(9,'blastoise',16,239,855,12),(7,'squirtle',5,63,90,10),(4,'charmander',6,62,85,5),(6,'charizard',17,240,905,7),(5,'charmeleon',11,142,190,6),(3,'venusaur',20,236,1000,3),(143,'snorlax',21,189,4600,223),(448,'lucario',12,184,540,555),(149,'dragonite',22,270,2100,229),(39,'jigglypuff',5,95,55,69),(26,'raichu',8,218,300,49),(172,'pichu',3,41,20,34),(129,'magikarp',9,40,100,199),(393,'piplup',4,63,52,506),(124,'jynx',14,159,406,189),(249,'lugia',52,306,2160,328),(376,'metagross',16,270,5500,480);
/*!40000 ALTER TABLE `poke_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-02 16:22:57
