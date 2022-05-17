-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: beerdb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `beers`
--

DROP TABLE IF EXISTS `beers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brewery_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `abv` float NOT NULL DEFAULT '0',
  `descript` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5915 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beers`
--

LOCK TABLES `beers` WRITE;
/*!40000 ALTER TABLE `beers` DISABLE KEYS */;
INSERT INTO `beers` VALUES (1,812,'Hocus Pocus',4.5,'Our take on a classic summer ale.  A toast to weeds, rays, and summer haze.  A light, crisp ale for mowing lawns, hitting lazy fly balls, and communing with nature, Hocus Pocus is offered up as a summer sacrifice to clodless days.\r\n\r\nIts malty sweetness finishes tart and crisp and is best apprediated with a wedge of orange.','Vermont'),(30,935,'Cutthroat Porter',4.8,'Not quite a stout but definitely no lightweight, Cutthroat Porter is smooth and robust. Inspired by the classic London porters, we use dark roasted malts to create a deep, rich color and flavor that hint at chocolate and coffee. We named it Cutthroat Porter as our tribute to the Colorado state fish - with its own rich heritage and unmistakable dark coloring. And while we\'re big fans of small batches, here\'s to the currently threatened Cutthroat population reaching mass quantities.','Colorado'),(40,1307,'Quelque Chose',8,'Quelque Chose was launched in January 1996. This versatile beer was specifically developed as a winter beer because, when warmed to 70ÂºC (160ÂºF), it can be taken as a hot drink. On the other hand, on the rocks, it is a wonderful aperitif. The cherries are soaked for months in slightly bitter ale before being blended into the beer. Quelque Chose is made with dark roasted malts, and the end result is something commonly known as an authentic nectar. The most original of the Unibroue line, it is highly appreciated by winter-sports enthusiasts.','Quebec'),(80,1202,'Weizengold Hefefein',5.1,'Stiegl Weizengold. It has 12o original gravity; the choicest ingredients and a top fermentation process are responsible for the highest possible quality and an unmistakable flavor. It is brewed according to the classic wheat beer recipe: 60 % wheat malt and 40 % barley malt, top fermentation and in compliance with the Purity Law of 1516.  This fine yeast wheat beer specialty is a refreshing, natural and stimulating beer brand.','Austria'),(3836,878,'Molson Canadian',5,'Molson beers are imported directly from Canada.  Crystal-clear, pure Canadian water, the finest Canadian prairie grains and select European hops give Molson a brewing heritage that dates back to 1786.\r\n\r\nMolson Canadian is Molson Brewing Company\'s flagship brand.  Starting with crystal clear water, malted barley and the finest hops, Molson Canadian is slowly fermented to produce a smooth, refreshing beer with a genuine taste. Clean and clear, crisp and cold, Molson Canadian is a classic lager.','Ontario'),(4717,1273,'Tongerlo Tripple',8,'Blond beer with a fruity and hoppy aroma and a balanced flavour with a slightly bitter aftertaste.','Belgium'),(4895,723,'Noel de Calabaza',9,'Deep mahogany and malty, layered hops, figs, raisins, sugar plums, cashews betwixt rum laden truffles.','Michigan'),(5815,1213,'St Patrick\'s Ale',6,'A deep copper coloured traditional Irish Ale with highly developed and complex flavours. St Patrickâ€™s Ale/Dark is brewed with four malts and two hops, carefully married together to complement eachother producing a satisfying full flavour, ending with a Styrian late hop for a truly brilliant finish.','Ireland');
/*!40000 ALTER TABLE `beers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17 17:12:06
