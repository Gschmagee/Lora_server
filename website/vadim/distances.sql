-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: distances
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `distance_matrix`
--

DROP TABLE IF EXISTS `distance_matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distance_matrix` (
  `from_loc_id` int(11) NOT NULL,
  `to_loc_id` int(11) NOT NULL,
  `distance` int(11) DEFAULT NULL,
  PRIMARY KEY (`from_loc_id`,`to_loc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distance_matrix`
--

LOCK TABLES `distance_matrix` WRITE;
/*!40000 ALTER TABLE `distance_matrix` DISABLE KEYS */;
INSERT INTO `distance_matrix` VALUES (1,1,0),(1,2,10579),(1,3,6692),(1,4,9545),(1,5,8421),(1,6,14658),(1,7,7505),(1,8,4795),(1,9,6888),(1,10,8296),(1,11,5578),(1,12,7887),(1,13,7645),(1,14,7582),(1,15,4572),(2,1,10462),(2,2,0),(2,3,11341),(2,4,2750),(2,5,2486),(2,6,9330),(2,7,9527),(2,8,5537),(2,9,6406),(2,10,10107),(2,11,4022),(2,12,9939),(2,13,16081),(2,14,16018),(2,15,12190),(3,1,6522),(3,2,13703),(3,3,0),(3,4,12669),(3,5,11545),(3,6,10225),(3,7,5392),(3,8,3347),(3,9,4775),(3,10,3493),(3,11,9366),(3,12,2572),(3,13,3613),(3,14,3295),(3,15,5154),(4,1,9708),(4,2,2750),(4,3,8756),(4,4,0),(4,5,985),(4,6,6745),(4,7,6941),(4,8,3113),(4,9,3821),(4,10,7522),(4,11,3949),(4,12,7354),(4,13,10691),(4,14,10373),(4,15,11436),(5,1,9577),(5,2,2704),(5,3,9839),(5,4,986),(5,5,0),(5,6,7828),(5,7,8024),(5,8,3167),(5,9,4904),(5,10,8605),(5,11,3002),(5,12,6069),(5,13,8914),(5,14,8851),(5,15,11305),(6,1,15076),(6,2,8717),(6,3,10951),(6,4,6059),(6,5,7339),(6,6,0),(6,7,9475),(6,8,9349),(6,9,6016),(6,10,9717),(6,11,9317),(6,12,9549),(6,13,12886),(6,14,12568),(6,15,16804),(7,1,7514),(7,2,9245),(7,3,6007),(7,4,6586),(7,5,7866),(7,6,9178),(7,7,0),(7,8,4423),(7,9,2558),(7,10,4773),(7,11,9844),(7,12,4623),(7,13,7942),(7,14,7624),(7,15,9513),(8,1,4571),(8,2,5612),(8,3,3537),(8,4,3672),(8,5,3491),(8,6,11144),(8,7,4422),(8,8,0),(8,9,3805),(8,10,7031),(8,11,3899),(8,12,2752),(8,13,6380),(8,14,6317),(8,15,5203),(9,1,6823),(9,2,6321),(9,3,5334),(9,4,3662),(9,5,4942),(9,6,5891),(9,7,2543),(9,8,3732),(9,9,0),(9,10,4100),(9,11,6920),(9,12,3932),(9,13,7269),(9,14,6951),(9,15,8841),(10,1,8422),(10,2,9922),(10,3,3547),(10,4,7263),(10,5,8543),(10,6,9492),(10,7,4659),(10,8,7232),(10,9,4041),(10,10,0),(10,11,11266),(10,12,3234),(10,13,5482),(10,14,5164),(10,15,7053),(11,1,5601),(11,2,4086),(11,3,9686),(11,4,4383),(11,5,3259),(11,6,9496),(11,7,9693),(11,8,3877),(11,9,6572),(11,10,10273),(11,11,0),(11,12,6509),(11,13,11739),(11,14,11676),(11,15,7566),(12,1,7659),(12,2,7938),(12,3,2784),(12,4,7192),(12,5,5817),(12,6,9421),(12,7,4587),(12,8,2543),(12,9,3970),(12,10,3362),(12,11,6226),(12,12,0),(12,13,4374),(12,14,4056),(12,15,6291),(13,1,7625),(13,2,15380),(13,3,3609),(13,4,14346),(13,5,13222),(13,6,12621),(13,7,7788),(13,8,6140),(13,9,7171),(13,10,5186),(13,11,11044),(13,12,4383),(13,13,0),(13,14,363),(13,15,6451),(14,1,7562),(14,2,15317),(14,3,3290),(14,4,14283),(14,5,13159),(14,6,12303),(14,7,7470),(14,8,5822),(14,9,6852),(14,10,4868),(14,11,10981),(14,12,4064),(14,13,363),(14,14,0),(14,15,6388),(15,1,4660),(15,2,12355),(15,3,5318),(15,4,11320),(15,5,10196),(15,6,16433),(15,7,9524),(15,8,5321),(15,9,8906),(15,10,6922),(15,11,7611),(15,12,6514),(15,13,6266),(15,14,6204),(15,15,0);
/*!40000 ALTER TABLE `distance_matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_names`
--

DROP TABLE IF EXISTS `location_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_names` (
  `loc_id` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_names`
--

LOCK TABLES `location_names` WRITE;
/*!40000 ALTER TABLE `location_names` DISABLE KEYS */;
INSERT INTO `location_names` VALUES (7,'Agnesstraße 3, 93049 Regensburg, Germany'),(8,'Agricolaweg 3, 93049 Regensburg, Germany'),(9,'Altdorferstraße 22, 93049 Regensburg, Germany'),(10,'Am Europakanal 20, 93059 Regensburg, Germany'),(12,'Am Pflanzgarten 17, 93049 Regensburg, Germany'),(16,'An den Klostergründen 1, 93049 Regensburg, Germany'),(18,'An der Brunnstube 1, 93051 Regensburg, Germany'),(22,'An der Klosterbreite 25, 93051 Regensburg, Germany'),(25,'An der Schillerwiese 2, 93049 Regensburg, Germany'),(27,'Annagasse 4, 93049 Regensburg, Germany'),(30,'Annahofstraße 12B, 93049 Regensburg, Germany'),(32,'Arndtstraße 12, 93049 Regensburg, Germany'),(34,'Assmannstraße 12, 93049 Regensburg, Germany'),(35,'Auf der Platte 1, 93051 Regensburg, Germany'),(36,'Augustenstraße 3, 93049 Regensburg, Germany'),(42,'Benediktusweg 10, 93049 Regensburg, Germany'),(49,'Biersackgasse 1, 93049 Regensburg, Germany'),(51,'Bischof-Konrad-Straße 9, 93051 Regensburg, Germany'),(52,'Boelckestraße 38, 93051 Regensburg, Germany'),(53,'Boessnerstraße 42, 93049 Regensburg, Germany'),(54,'Bonifatiusweg 19, 93049 Regensburg, Germany'),(61,'Clermont-Ferrand-Allee 38, 93049 Regensburg, Germany'),(64,'Cranachweg 1, 93051 Regensburg, Germany'),(68,'Dechbetten 19, 93051 Regensburg, Germany'),(69,'Dechbettener Brücke 2, 93051 Regensburg, Germany'),(71,'Dechbettener Weinberg 3A, 93051 Regensburg, Germany'),(76,'Desingweg 23, 93049 Regensburg, Germany'),(80,'Dornierstraße 12, 93049 Regensburg, Germany'),(84,'Dr.-Gessler-Straße 1, 93051 Regensburg, Germany'),(97,'Dr.-Heim-Straße 14, 93049 Regensburg, Germany'),(98,'Dr.-Leo-Ritter-Straße 17, 93049 Regensburg, Germany'),(103,'Dürerstraße 7, 93051 Regensburg, Germany'),(106,'Eichenstraße 10, 93049 Regensburg, Germany'),(107,'Eisenmannstraße 15, 93049 Regensburg, Germany'),(109,'Ellen-Ammann-Weg 22, 93051 Regensburg, Germany'),(110,'Engelhartstraße 3, 93049 Regensburg, Germany'),(111,'Erboweg 1, 93051 Regensburg, Germany'),(112,'Erminoldweg, 93051 Regensburg, Germany'),(113,'Erzbischof-Buchberger-Allee 23, 93051 Regensburg, Germany'),(115,'Fasanerieweg 3, 93051 Regensburg, Germany');
/*!40000 ALTER TABLE `location_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `loc_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(150) NOT NULL,
  PRIMARY KEY (`loc_id`),
  UNIQUE KEY `locations_loc_id_uindex` (`loc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Stadlerstraße 5, 93053 Regensburg'),(2,'Karl-Esser-Straße 2, 93043 Regensburg'),(3,'An der Irler Höhe 38, 93055 Regensburg'),(4,'Hochweg 46, 93049 Regensburg'),(5,'Margaretenau 24, 93049 Regensburg'),(6,'Kager 7, 93059 Regensburg'),(7,'Riesengebirgstraße 79, 93059 Regensburg'),(8,'Ernst-Reuter-Platz 2, 93047 Regensburg'),(9,'Protzenweiherbrücke, 93059 Regensburg'),(10,'David-Funk-Straße 28, 93055 Regensburg'),(11,'Ziegetsdorfer Str. 24, 93051 Regensburg'),(12,'Auweg 21, 93055 Regensburg'),(13,'Irl 8, 93055 Regensburg'),(14,'Irl 19, 93055 Regensburg'),(15,'Sophie-Scholl-Straße 78, 93055 Regensburg');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pheromones`
--

DROP TABLE IF EXISTS `pheromones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pheromones` (
  `from_loc_id` int(11) NOT NULL,
  `to_loc_id` int(11) NOT NULL,
  `pheromone_level` double DEFAULT NULL,
  PRIMARY KEY (`from_loc_id`,`to_loc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pheromones`
--

LOCK TABLES `pheromones` WRITE;
/*!40000 ALTER TABLE `pheromones` DISABLE KEYS */;
INSERT INTO `pheromones` VALUES (0,0,1),(0,1,1),(0,2,1),(0,3,1),(0,4,1.000000000000001),(0,5,1),(0,6,2.707614770153927),(0,7,1),(0,8,1),(0,9,1),(0,10,2.55188210831489),(0,11,1),(0,12,3.435330261913603),(0,13,1),(1,0,1),(1,1,1),(1,2,1),(1,3,2.55188210831489),(1,4,1.000000000000001),(1,5,1.000000000000001),(1,6,2.627502312202712),(1,7,1),(1,8,1),(1,9,1),(1,10,1),(1,11,1),(1,12,1),(1,13,1),(1,14,0),(1,15,0),(2,0,1),(2,1,1),(2,2,1),(2,3,1),(2,4,1),(2,5,1),(2,6,1),(2,7,2.55188210831489),(2,8,1),(2,9,2.6569205745373186),(2,10,1),(2,11,3.245969038170337),(2,12,1),(2,13,1.0000000000000016),(2,14,0),(2,15,0),(3,0,1),(3,1,2.55188210831489),(3,2,1),(3,3,1),(3,4,1.000000000000001),(3,5,2.7318860054405523),(3,6,1.000000000000001),(3,7,1),(3,8,1),(3,9,1),(3,10,1),(3,11,1),(3,12,1),(3,13,1),(3,14,0),(3,15,0),(4,0,1.000000000000001),(4,1,1.000000000000001),(4,2,1),(4,3,1.000000000000001),(4,4,1),(4,5,2.877830382836694),(4,6,1),(4,7,3.064428965220942),(4,8,1),(4,9,1),(4,10,1),(4,11,1),(4,12,1),(4,13,1),(4,14,0),(4,15,0),(5,0,1),(5,1,1.000000000000001),(5,2,1),(5,3,2.7318860054405523),(5,4,2.877830382836694),(5,5,1),(5,6,1.000000000000001),(5,7,1.000000000000001),(5,8,1),(5,9,1),(5,10,1),(5,11,1),(5,12,1),(5,13,1),(5,14,0),(5,15,0),(6,0,2.707614770153927),(6,1,2.627502312202712),(6,2,1),(6,3,1.000000000000001),(6,4,1),(6,5,1.000000000000001),(6,6,1),(6,7,1),(6,8,1),(6,9,1),(6,10,1),(6,11,1),(6,12,1),(6,13,1),(6,14,0),(6,15,0),(7,0,1),(7,1,1),(7,2,2.55188210831489),(7,3,1),(7,4,3.064428965220942),(7,5,1.000000000000001),(7,6,1),(7,7,1),(7,8,1),(7,9,1),(7,10,1),(7,11,3.24570366498315),(7,12,1),(7,13,1),(7,14,0),(7,15,0),(8,0,1),(8,1,1),(8,2,1),(8,3,1),(8,4,1),(8,5,1),(8,6,1),(8,7,1),(8,8,1),(8,9,2.55188210831489),(8,10,2.667687919498159),(8,11,1),(8,12,1),(8,13,1),(8,14,0),(8,15,0),(9,0,1),(9,1,1),(9,2,2.6569205745373186),(9,3,1),(9,4,1),(9,5,1),(9,6,1),(9,7,1),(9,8,2.55188210831489),(9,9,1),(9,10,1),(9,11,1),(9,12,1.00239870936409),(9,13,3.333454314238886),(9,14,0),(9,15,0),(10,0,2.55188210831489),(10,1,1),(10,2,1),(10,3,1),(10,4,1),(10,5,1),(10,6,1),(10,7,1),(10,8,2.667687919498159),(10,9,1),(10,10,1),(10,11,1),(10,12,1),(10,13,1),(10,14,0),(10,15,0),(11,0,1),(11,1,1),(11,2,3.245969038170337),(11,3,1),(11,4,1),(11,5,1),(11,6,1),(11,7,3.24570366498315),(11,8,1),(11,9,1),(11,10,1),(11,11,1),(11,12,1.4409046591041683),(11,13,1),(11,14,0),(11,15,0),(12,0,3.435330261913603),(12,1,1),(12,2,1),(12,3,1),(12,4,1),(12,5,1),(12,6,1),(12,7,1),(12,8,1),(12,9,1.00239870936409),(12,10,1),(12,11,1.4409046591041683),(12,12,1),(12,13,3.245703664290356),(12,14,0),(12,15,0),(13,0,1),(13,1,1),(13,2,1.0000000000000016),(13,3,1),(13,4,1),(13,5,1),(13,6,1),(13,7,1),(13,8,1),(13,9,3.333454314238886),(13,10,1),(13,11,1),(13,12,3.245703664290356),(13,13,1),(13,14,0),(13,15,0),(14,1,0),(14,2,0),(14,3,0),(14,4,0),(14,5,0),(14,6,0),(14,7,0),(14,8,0),(14,9,0),(14,10,0),(14,11,0),(14,12,0),(14,13,0),(14,14,0),(14,15,0),(15,1,0),(15,2,0),(15,3,0),(15,4,0),(15,5,0),(15,6,0),(15,7,0),(15,8,0),(15,9,0),(15,10,0),(15,11,0),(15,12,0),(15,13,0),(15,14,0),(15,15,0);
/*!40000 ALTER TABLE `pheromones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-21 17:23:17
