-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.62-log

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dennis Ogbonnaya','07069797882','denky@gmail.com','5109628184','2019-12-30 10:24:39'),(2,'Dennis Ogbonnaya','07069797882','denky@gmail.com','8787488441','2019-12-30 10:28:18'),(3,'Dennis Ogbonnaya','07069797882','denky@gmail.com','4028018581','2019-12-30 11:38:08'),(4,'Dennis Ogbonnaya','07069797882','denky@gmail.com','5071517569','2019-12-30 11:40:03'),(5,'Dennis Ogbonnaya','07069797882','denky@gmail.com','7165524723','2019-12-30 11:42:15'),(6,'Dennis Ogbonnaya','07069797882','denky@gmail.com','9182928682','2019-12-30 12:21:18'),(7,'Dennis Ogbonnaya','07069797882','denky@gmail.com','0222016383','2019-12-30 12:42:04'),(8,'Dennis Ogbonnaya','07069797882','denky@gmail.com','5799259646','2019-12-30 12:43:32'),(9,'Dennis Ogbonnaya','07069797882','denky@gmail.com','4087298141','2019-12-30 12:58:05'),(10,'Dennis Ogbonnaya','07069797882','denky@gmail.com','5189897306','2019-12-30 12:59:38'),(11,'Dennis Ogbonnaya','07069797882','denky@gmail.com','7919743933','2019-12-30 13:03:48'),(12,'Dennis Ogbonnaya','07069797882','denky@gmail.com','7389525421','2019-12-30 13:05:20'),(13,'Dennis Ogbonnaya','07069797882','denky@gmail.com','3351046738','2019-12-30 13:09:24'),(14,'Dennis Ogbonnaya','07069797882','denky@gmail.com','4785501008','2019-12-30 13:12:17'),(15,'Dennis Ogbonnaya','07069797882','denky@gmail.com','7712218329','2019-12-30 13:15:16'),(16,'Dennis Ogbonnaya','07069797882','denky@gmail.com','7550946959','2019-12-30 14:08:07'),(17,'Dennis Ogbonnaya','07069797882','denkyogbonnaya@gmail.com','1859803419','2019-12-30 14:29:24'),(18,'Dennis Ogbonnaya','07069797882','denkyogbonnaya@gmail.com','0757983755','2019-12-30 14:31:42'),(19,'mike','07069797882','denkyogb@gmail.com','8687824386','2019-12-31 15:48:57'),(20,'mike','07069797882','denkyogb@gmail.com','3170962103','2019-12-31 15:49:23'),(21,'Denky buckets','07069797882','denkyogb@gmail.com','8230057501','2019-12-31 16:04:15'),(22,'Dennis Ogbonnaya','07069797882','denkyogb@gmail.com','8481488980','2019-12-31 20:43:08'),(23,'Dennis Ogbonnaya','07069797882','denkyogb@gmail.com','7252486983','2019-12-31 20:44:22'),(24,'Dennis Ogbonnaya','07069797882','denkyogb@gmail.com','2246819049','2019-12-31 20:45:27'),(25,'Dennis Ogbonnaya','07069797882','denkyogb@gmail.com','3481941948','2019-12-31 20:49:56'),(26,'Dennis Ogbonnaya','07069797882','denkyogb@gmail.com','9881920639','2019-12-31 21:03:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-31 22:19:13
