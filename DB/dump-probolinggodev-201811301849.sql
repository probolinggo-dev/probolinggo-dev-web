-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: probolinggodev
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB-0ubuntu0.18.04.1

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
-- Table structure for table `app_param`
--

DROP TABLE IF EXISTS `app_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_param` (
  `app_param_id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` text,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `category` varchar(32) DEFAULT 'INFORMATION' COMMENT 'C=Config,M=print,I=Information',
  `format_data` varchar(32) DEFAULT 'TEXT',
  PRIMARY KEY (`app_param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_param`
--

LOCK TABLES `app_param` WRITE;
/*!40000 ALTER TABLE `app_param` DISABLE KEYS */;
INSERT INTO `app_param` VALUES ('LEADER','Ketua','Ade Yahya Prasetyo','2018-11-30 17:30:09','2018-11-30 17:30:09',1,NULL,'MANAGEMENT','TEXT'),('LOF','List Of Asset','Berikut Daftar List Asset Yang dimiliki Probolinggo Dev:\r\n1. asset 1\r\n2. asset 2\r\n3. asset 3','2018-11-30 17:30:09','2018-11-30 17:30:09',1,NULL,'MANAGEMENT','TEXT'),('LOFA','List Of ASSET','{\r\n    \"glossary\": {\r\n        \"title\": \"example glossary\",\r\n		\"GlossDiv\": {\r\n            \"title\": \"S\",\r\n			\"GlossList\": {\r\n                \"GlossEntry\": {\r\n                    \"ID\": \"SGML\",\r\n					\"SortAs\": \"SGML\",\r\n					\"GlossTerm\": \"Standard Generalized Markup Language\",\r\n					\"Acronym\": \"SGML\",\r\n					\"Abbrev\": \"ISO 8879:1986\",\r\n					\"GlossDef\": {\r\n                        \"para\": \"A meta-markup language, used to create markup languages such as DocBook.\",\r\n						\"GlossSeeAlso\": [\"GML\", \"XML\"]\r\n                    },\r\n					\"GlossSee\": \"markup\"\r\n                }\r\n            }\r\n        }\r\n    }\r\n}',NULL,NULL,NULL,NULL,'MANAGEMENT','JSON'),('RULES','Rules','aturan aturan perundang-undangan di probolinggodev\r\n1. lorem ipsm\r\n2. lorem mama\r\n3. mama loprem','2018-11-30 17:30:09','2018-11-30 17:30:09',1,NULL,'MANAGEMENT','TEXT'),('TEAM_HORE','Team Hore','Bukhori Muslim','2018-11-30 17:30:09','2018-11-30 17:30:09',1,NULL,'MANAGEMENT','TEXT'),('V&M','Visi Dan Misi','Visi Dan Misi Probolinggo Dev\r\n\r\nVisi\r\n1. \r\n2.\r\n3. \r\n\r\nMisi:\r\n1.\r\n2.\r\n3.\r\n','2018-11-30 17:30:09','2018-11-30 17:30:09',1,NULL,'MANAGEMENT','TEXT');
/*!40000 ALTER TABLE `app_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1543570265),('m130524_201442_init',1543570268);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'superadmin','MIkhhPcKr0GFopp9SGz9zm2TrZyiMMJL','$2y$13$.XGW81yd88g/GartSBxX6uC07zRdj5oPvVnAYfMM7iAB5yK/EFW/y',NULL,'crmspy@gmail.com',10,1543571190,1543571190);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'probolinggodev'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-30 18:49:38
