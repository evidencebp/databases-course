# IJS

DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `rank` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movies_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


# MovieLens
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `movieid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `year` int(11) NOT NULL,
  `isEnglish` enum('T','F') NOT NULL,
  `country` varchar(50) NOT NULL,
  `runningtime` int(11) NOT NULL,
  PRIMARY KEY (`movieid`),
  KEY `year` (`year`),
  KEY `isEnglish` (`isEnglish`),
  KEY `country` (`country`),
  KEY `runningtime` (`runningtime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

# Full
DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movieid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(400) NOT NULL,
  `year` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`movieid`),
  KEY `title` (`title`(15)),
  FULLTEXT KEY `movies_title_fulltext` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2593314 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;