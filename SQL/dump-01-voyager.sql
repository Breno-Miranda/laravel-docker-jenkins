-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: db_comum
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cpf_cnpj` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `andress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` bigint(20) NOT NULL,
  `city_id` int(11) NOT NULL,
  `neighborhoods_id` int(11) NOT NULL,
  `user_bind_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,60666181000111,'NATAL CATALOGO','RUA ALECRIM','10002',2398423090,3,1,2,1,'2020-07-24 03:10:00','2020-07-24 04:01:15',NULL),(2,92593715030,'MARIA DALVA','RUA DEPOSITO','1102',233234908090,3,1,3,3,'2020-07-24 04:03:00','2020-07-24 04:05:38',NULL),(3,77052182000179,'GILSERV CATALOGOS','RUA RECIFE','1009',230483080,3,1,2,1,'2020-07-24 04:19:25','2020-07-24 04:19:25',NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_roles`
--

DROP TABLE IF EXISTS `accounts_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` int(11) NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_roles`
--

LOCK TABLES `accounts_roles` WRITE;
/*!40000 ALTER TABLE `accounts_roles` DISABLE KEYS */;
INSERT INTO `accounts_roles` VALUES (1,1,'EMPRESA','{}','2020-07-23 09:46:12','2020-07-23 09:46:12',NULL),(2,2,'COLABORADORES','{}','2020-07-24 03:37:00','2020-07-24 03:37:52',NULL),(3,3,'CONSULTOR(A)S','{}','2020-07-24 03:37:00','2020-07-24 03:38:01',NULL);
/*!40000 ALTER TABLE `accounts_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_cover` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_archive` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'Toda POP','https://issuu.com/revista_qe/docs/todapop06','https://issuu.com/revista_qe/docs/todapop06',1,1,'2020-07-22 06:06:58','2020-07-22 06:06:58',NULL),(2,'Revista QE','https://issuu.com/revista_qe/docs/todapop06','https://issuu.com/revista_qe/docs/todapop06',1,1,'2020-07-22 06:07:29','2020-07-22 06:07:29',NULL);
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2020-07-21 04:13:16','2020-07-21 04:13:16'),(2,NULL,1,'Category 2','category-2','2020-07-21 04:13:16','2020-07-21 04:13:16');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_without_accent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (3,'Natal','natal',2,'2020-07-21 05:51:00','2020-07-23 09:43:14',NULL,NULL,NULL),(4,'Santa Catarina',NULL,2,'2020-07-22 06:03:00','2020-07-23 09:43:07',NULL,NULL,NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `social_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fantasy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsible_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `responsible_cpf` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'NATAL CATALOGO','NATAL CATALOGO LDTA','NETO BRITO',1,'2020-07-24 03:56:19','2020-07-24 03:56:19',NULL,29038409234);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(56,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(57,9,'name','text','Name',1,1,1,1,1,1,'{}',2),(58,9,'lat','text','Lat',0,1,1,1,1,1,'{}',3),(59,9,'long','text','Long',0,1,1,1,1,1,'{}',4),(60,9,'created_at','timestamp','Created At',1,1,1,1,0,1,'{}',5),(61,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(62,9,'deleted_at','timestamp','Deleted At',0,0,0,0,0,1,'{}',7),(81,14,'id','text','Id',1,0,0,0,0,0,'{}',1),(82,14,'name','text','Name',1,1,1,1,1,1,'{}',2),(83,14,'name_without_accent','text','Name Without Accent',0,1,1,1,1,1,'{}',3),(85,14,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(86,14,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(87,14,'deleted_at','timestamp','Deleted At',0,0,0,0,0,1,'{}',7),(89,16,'id','text','Id',1,0,0,0,0,0,'{}',1),(90,16,'name','text','Name',1,1,1,1,1,1,'{}',2),(91,16,'name_without_accent','text','Name Without Accent',0,1,1,1,1,1,'{}',3),(92,16,'city_id','text','City Id',0,1,1,1,1,1,'{}',4),(93,16,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(94,16,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(95,16,'deleted_at','timestamp','Deleted At',0,0,0,0,0,1,'{}',7),(96,16,'neighborhood_belongsto_city_relationship','relationship','cities',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Cities\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',8),(97,18,'id','text','Id',1,0,0,0,0,0,'{}',1),(98,18,'name','text','Name',1,1,1,1,1,1,'{}',2),(99,18,'link_cover','text','Link Cover',1,1,1,1,1,1,'{}',3),(100,18,'link_archive','text','Link Archive',1,1,1,1,1,1,'{}',4),(101,18,'status','text','Status',1,1,1,1,1,1,'{}',5),(102,18,'provider_id','text','Provider Id',1,1,1,1,1,1,'{}',6),(103,18,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(104,18,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(105,18,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',9),(106,20,'id','text','Id',1,0,0,0,0,0,'{}',1),(107,20,'name','text','Name',1,1,1,1,1,1,'{}',2),(108,20,'fantasy_name','text','Fantasy Name',1,1,1,1,1,1,'{}',3),(109,20,'social_reason','text','Social Reason',1,1,1,1,1,1,'{}',4),(110,20,'cnpj','text','Cnpj',1,1,1,1,1,1,'{}',5),(111,20,'address','text','Address',1,1,1,1,1,1,'{}',6),(112,20,'street','text','Street',1,1,1,1,1,1,'{}',7),(113,20,'number','text','Number',1,1,1,1,1,1,'{}',8),(114,20,'city_id','text','City Id',1,1,1,1,1,1,'{}',9),(115,20,'neighborhood_id','text','Neighborhood Id',1,1,1,1,1,1,'{}',10),(116,20,'zipcode','text','Zipcode',1,1,1,1,1,1,'{}',11),(117,20,'url_site','text','Url Site',0,1,1,1,1,1,'{}',12),(118,20,'src_logo','text','Src Logo',0,1,1,1,1,1,'{}',13),(119,20,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',14),(120,20,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',15),(121,20,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',16),(122,18,'catalog_belongsto_provider_relationship','relationship','providers',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Providers\",\"table\":\"providers\",\"type\":\"belongsTo\",\"column\":\"provider_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"catalogs\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),(123,20,'provider_belongsto_city_relationship','relationship','cities',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Cities\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"catalogs\",\"pivot\":\"0\",\"taggable\":\"0\"}',17),(124,20,'provider_belongsto_neighborhood_relationship','relationship','neighborhoods',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Neighborhoods\",\"table\":\"neighborhoods\",\"type\":\"belongsTo\",\"column\":\"neighborhood_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"catalogs\",\"pivot\":\"0\",\"taggable\":\"0\"}',18),(125,14,'lat','text','Lat',0,1,1,1,1,1,'{}',8),(126,14,'long','text','Long',0,1,1,1,1,1,'{}',9),(128,16,'lat','text','Lat',0,1,1,1,1,1,'{}',8),(129,16,'long','text','Long',0,1,1,1,1,1,'{}',9),(136,28,'id','text','Id',1,1,1,0,0,0,'{}',1),(137,28,'cpf_cnpj','text','Cpf Cnpj',1,1,1,1,1,1,'{}',2),(142,28,'andress','text','Andress',1,1,1,1,1,1,'{}',4),(143,28,'number','text','Number',1,1,1,1,1,1,'{}',5),(144,28,'zipcode','text','Zipcode',1,1,1,1,1,1,'{}',7),(145,28,'city_id','text','City Id',1,1,1,1,1,1,'{}',8),(148,28,'role_id','text','Role Id',1,1,1,1,1,1,'{}',10),(150,28,'created_at','timestamp','Created At',0,0,1,1,0,1,'{}',11),(151,28,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',12),(152,28,'deleted_at','timestamp','Deleted At',0,0,0,0,0,1,'{}',13),(162,33,'id','text','Id',1,0,0,0,0,0,'{}',1),(163,33,'role','text','Role',1,1,1,1,1,1,'{}',2),(164,33,'display_name','text','Display Name',1,1,1,1,1,1,'{}',3),(165,33,'settings','code_editor','Settings',0,1,1,1,1,1,'{}',4),(166,33,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(167,33,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(168,33,'deleted_at','timestamp','Deleted At',0,0,0,0,0,1,'{}',7),(169,28,'account_belongsto_accounts_role_relationship','relationship','accounts_roles',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\AccountsRoles\",\"table\":\"accounts_roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"role\",\"pivot_table\":\"accounts\",\"pivot\":\"0\",\"taggable\":\"0\"}',15),(170,28,'account_belongsto_city_relationship','relationship','cities',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Cities\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accounts\",\"pivot\":\"0\",\"taggable\":\"0\"}',16),(171,14,'city_belongsto_state_relationship','relationship','state',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\States\",\"table\":\"accounts\",\"type\":\"belongsTo\",\"column\":\"state_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accounts\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),(182,14,'state_id','text','State Id',1,1,1,1,1,1,'{}',4),(183,36,'id','text','Id',1,0,0,0,0,0,'{}',1),(184,36,'name','text','Name',1,1,1,1,1,1,'{}',2),(185,36,'uf','text','Uf',1,1,1,1,1,1,'{}',3),(186,36,'ddd','text','Ddd',0,1,1,1,1,1,'{}',4),(187,36,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(188,36,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(189,36,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',7),(190,36,'pais_id','text','Pais Id',0,1,1,1,1,1,'{}',8),(191,36,'state_belongsto_pai_relationship','relationship','pais',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Pais\",\"table\":\"pais\",\"type\":\"belongsTo\",\"column\":\"pais_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accounts\",\"pivot\":\"0\",\"taggable\":null}',9),(192,28,'account_belongsto_user_relationship','relationship','users',0,1,1,1,1,1,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_bind_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accounts\",\"pivot\":\"0\",\"taggable\":\"0\"}',14),(193,28,'neighborhoods_id','text','Neighborhoods Id',1,1,1,1,1,1,'{}',9),(194,28,'account_belongsto_neighborhood_relationship','relationship','neighborhoods',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Neighborhoods\",\"table\":\"neighborhoods\",\"type\":\"belongsTo\",\"column\":\"neighborhoods_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"accounts\",\"pivot\":\"0\",\"taggable\":\"0\"}',17),(196,37,'id','text','Id',1,1,1,0,0,0,'{}',1),(198,37,'social_reason','text','Social Reason',1,1,1,1,1,1,'{}',3),(199,37,'fantasy_name','text','Fantasy Name',1,1,1,1,1,1,'{}',4),(200,37,'responsible_name','text','Responsible Name',1,1,1,1,1,1,'{}',5),(207,37,'account_id','text','Account Id',1,1,1,1,1,1,'{}',12),(208,37,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',13),(209,37,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',14),(210,37,'deleted_at','timestamp','Deleted At',0,0,0,0,0,1,'{}',15),(211,28,'user_bind_id','text','User Bind Id',1,1,1,1,1,1,'{}',6),(215,37,'responsible_cpf','text','Responsible Cpf',1,1,1,1,1,1,'{}',9),(216,37,'company_belongsto_account_relationship','relationship','accounts',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Accounts\",\"table\":\"accounts\",\"type\":\"belongsTo\",\"column\":\"account_id\",\"key\":\"id\",\"label\":\"cpf_cnpj\",\"pivot_table\":\"accounts\",\"pivot\":\"0\",\"taggable\":null}',16),(217,28,'name','text','Name',1,1,1,1,1,1,'{}',3);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2020-07-21 04:13:00','2020-07-21 04:13:00'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2020-07-21 04:13:00','2020-07-21 04:13:00'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2020-07-21 04:13:00','2020-07-21 04:13:00'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2020-07-21 04:13:16','2020-07-21 04:13:16'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2020-07-21 04:13:16','2020-07-21 04:13:16'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2020-07-21 04:13:17','2020-07-21 04:13:17'),(9,'pais','pais','Pais','Pais','voyager-world','App\\Models\\Pais',NULL,'App\\Http\\Controllers\\Voyager\\PaisController',NULL,1,1,'{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2020-07-21 04:39:46','2020-07-22 06:20:46'),(11,'city','city','City','Cities',NULL,'App\\Models\\City',NULL,'App\\Http\\Controllers\\Api\\CityController',NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-07-21 05:00:16','2020-07-21 05:00:16'),(14,'cities','cities','City','Cities',NULL,'App\\Models\\Cities',NULL,'App\\Http\\Controllers\\Voyager\\CitiesController',NULL,1,1,'{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"desc\",\"default_search_key\":\"name\",\"scope\":null}','2020-07-21 05:49:48','2020-07-23 09:39:19'),(16,'neighborhoods','neighborhoods','Neighborhood','Neighborhoods',NULL,'App\\Models\\Neighborhoods',NULL,'App\\Http\\Controllers\\Voyager\\NeighborhoodsController',NULL,1,1,'{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"desc\",\"default_search_key\":\"name\",\"scope\":null}','2020-07-22 04:01:42','2020-07-22 06:20:56'),(18,'catalogs','catalogs','Catalog','Catalogs',NULL,'App\\Models\\Catalogs',NULL,'App\\Http\\Controllers\\Voyager\\CatalogsController',NULL,1,1,'{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"desc\",\"default_search_key\":\"name\",\"scope\":null}','2020-07-22 05:22:55','2020-07-22 06:19:38'),(20,'providers','providers','Provider','Providers',NULL,'App\\Models\\Providers',NULL,'App\\Http\\Controllers\\Voyager\\ProvidersController',NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-07-22 05:26:30','2020-07-22 06:20:34'),(28,'accounts','accounts','Account','Accounts',NULL,'App\\Models\\Accounts',NULL,'App\\Http\\Controllers\\Voyager\\AccountsController',NULL,1,1,'{\"order_column\":\"cpf_cnpj\",\"order_display_column\":\"cpf_cnpj\",\"order_direction\":\"desc\",\"default_search_key\":\"id\",\"scope\":null}','2020-07-23 08:39:44','2020-07-24 04:07:19'),(31,'role_account','role-account','Role Account','Role Accounts',NULL,'App\\Models\\RolesAccounts',NULL,'App\\Http\\Controllers\\Voyager\\RolesAccountsController',NULL,1,1,'{\"order_column\":\"role\",\"order_display_column\":\"role\",\"order_direction\":\"desc\",\"default_search_key\":\"id\"}','2020-07-23 08:47:07','2020-07-23 08:47:07'),(33,'accounts_roles','accounts-roles','Accounts Role','Accounts Roles','voyager-lock','App\\Models\\AccountsRoles',NULL,'App\\Http\\Controllers\\Voyager\\AccountsRolesController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-07-23 08:56:33','2020-07-23 09:04:35'),(34,'state','state','State','States',NULL,'App\\Models\\States',NULL,'App\\Http\\Controllers\\Voyager\\StateController',NULL,1,0,'{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"desc\",\"default_search_key\":\"name\"}','2020-07-23 09:27:38','2020-07-23 09:27:38'),(36,'states','states','State','States',NULL,'App\\Models\\States',NULL,'App\\Http\\Controllers\\Voyager\\StatesController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-07-23 09:41:43','2020-07-23 09:41:43'),(37,'companies','companies','Company','Companies',NULL,'App\\Models\\Companies',NULL,'App\\Http\\Controllers\\Voyager\\CompaniesController',NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-07-24 03:30:23','2020-07-24 03:54:55');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2020-07-21 04:13:00','2020-07-21 04:13:00','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2020-07-21 04:13:00','2020-07-23 09:00:14','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,30,2,'2020-07-21 04:13:00','2020-07-23 09:00:14','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,30,1,'2020-07-21 04:13:00','2020-07-23 09:00:14','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,2,'2020-07-21 04:13:00','2020-07-23 09:00:14',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2020-07-21 04:13:00','2020-07-21 04:47:46','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2020-07-21 04:13:00','2020-07-21 04:47:46','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2020-07-21 04:13:00','2020-07-21 04:47:46','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2020-07-21 04:13:00','2020-07-21 04:47:46','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,8,'2020-07-21 04:13:00','2020-07-23 09:00:14','voyager.settings.index',NULL),(11,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2020-07-21 04:13:00','2020-07-21 04:47:46','voyager.hooks',NULL),(12,1,'Categories','','_self','voyager-categories',NULL,NULL,7,'2020-07-21 04:13:16','2020-07-23 09:00:14','voyager.categories.index',NULL),(13,1,'Posts','','_self','voyager-news',NULL,NULL,5,'2020-07-21 04:13:16','2020-07-23 09:00:14','voyager.posts.index',NULL),(14,1,'Pages','','_self','voyager-file-text',NULL,NULL,6,'2020-07-21 04:13:17','2020-07-23 09:00:14','voyager.pages.index',NULL),(16,1,'Pais','','_self',NULL,NULL,30,5,'2020-07-21 04:39:46','2020-07-23 09:00:14','voyager.pais.index',NULL),(21,1,'Cities','','_self',NULL,NULL,30,7,'2020-07-21 05:49:49','2020-07-23 09:33:54','voyager.cities.index',NULL),(22,1,'Neighborhoods','','_self',NULL,NULL,30,8,'2020-07-22 04:01:42','2020-07-23 09:33:54','voyager.neighborhoods.index',NULL),(23,1,'Catalogs','','_self',NULL,NULL,30,10,'2020-07-22 05:22:55','2020-07-23 09:33:54','voyager.catalogs.index',NULL),(24,1,'Providers','','_self',NULL,NULL,30,9,'2020-07-22 05:26:30','2020-07-23 09:33:54','voyager.providers.index',NULL),(26,1,'Accounts','','_self',NULL,NULL,30,4,'2020-07-23 08:39:44','2020-07-23 09:00:14','voyager.accounts.index',NULL),(29,1,'Accounts Roles','','_self',NULL,NULL,30,3,'2020-07-23 08:56:33','2020-07-23 09:00:14','voyager.accounts-roles.index',NULL),(30,1,'API','#','_self','voyager-code','#c0d51a',NULL,3,'2020-07-23 08:59:20','2020-07-23 09:00:14',NULL,''),(33,1,'States','','_self',NULL,NULL,30,6,'2020-07-23 09:41:43','2020-07-23 09:42:35','voyager.states.index',NULL),(34,1,'Companies','','_self',NULL,NULL,30,11,'2020-07-24 03:30:23','2020-07-24 03:59:33','voyager.companies.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2020-07-21 04:13:00','2020-07-21 04:13:00');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2016_06_01_000001_create_oauth_auth_codes_table',1),(3,'2016_06_01_000002_create_oauth_access_tokens_table',1),(4,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(5,'2016_06_01_000004_create_oauth_clients_table',1),(6,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(7,'2019_08_19_000000_create_failed_jobs_table',1),(8,'2016_01_01_000000_add_voyager_user_fields',2),(9,'2016_01_01_000000_create_data_types_table',2),(10,'2016_05_19_173453_create_menu_table',2),(11,'2016_10_21_190000_create_roles_table',2),(12,'2016_10_21_190000_create_settings_table',2),(13,'2016_11_30_135954_create_permission_table',2),(14,'2016_11_30_141208_create_permission_role_table',2),(15,'2016_12_26_201236_data_types__add__server_side',2),(16,'2017_01_13_000000_add_route_to_menu_items_table',2),(17,'2017_01_14_005015_create_translations_table',2),(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',2),(19,'2017_03_06_000000_add_controller_to_data_types_table',2),(20,'2017_04_21_000000_add_order_to_data_rows_table',2),(21,'2017_07_05_210000_add_policyname_to_data_types_table',2),(22,'2017_08_05_000000_add_group_to_settings_table',2),(23,'2017_11_26_013050_add_user_role_relationship',2),(24,'2017_11_26_015000_create_user_roles_table',2),(25,'2018_03_11_000000_add_user_settings',2),(26,'2018_03_14_000000_add_details_to_data_types_table',2),(27,'2018_03_16_000000_make_settings_value_nullable',2),(28,'2016_01_01_000000_create_pages_table',3),(29,'2016_01_01_000000_create_posts_table',3),(30,'2016_02_15_204651_create_categories_table',3),(31,'2017_04_11_000000_alter_post_nullable_fields_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neighborhoods`
--

DROP TABLE IF EXISTS `neighborhoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neighborhoods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_without_accent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neighborhoods`
--

LOCK TABLES `neighborhoods` WRITE;
/*!40000 ALTER TABLE `neighborhoods` DISABLE KEYS */;
INSERT INTO `neighborhoods` VALUES (1,'Nazaré','Nazare',3,'2020-07-22 04:04:00','2020-07-22 04:09:05',NULL,NULL,NULL),(2,'Badenfurt Blumenau',NULL,4,'2020-07-22 06:03:24','2020-07-22 06:03:24',NULL,NULL,NULL);
/*!40000 ALTER TABLE `neighborhoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('15e3a2fc29bd62f8c00a2b399d3b04604ca6bddb6fc964dfb40786a8a3e7d2495156b2fedb9283c1',2,1,'Personal Access Token','[]',0,'2020-07-24 04:38:49','2020-07-24 04:38:49','2021-07-24 01:38:49'),('3244de272385377be31088419de3cf2dc54356ee22c7a82af14e7b166abef6e7cf256a70980666a1',2,1,'Personal Access Token','[]',0,'2020-07-24 04:31:28','2020-07-24 04:31:28','2021-07-24 01:31:28'),('45a90c812454b30f68b6df685bec8c50cb817c08fab1ea833de203f1b93976b6c51d51fc03ff8ec7',2,1,'Personal Access Token','[]',0,'2020-07-25 07:10:58','2020-07-25 07:10:58','2021-07-25 04:10:58'),('51cd44ee1ba9b251d0996ece32c20286071744dc179a569adcd03b995359b51b765b681878322cfc',2,1,'Personal Access Token','[]',0,'2020-07-24 04:31:58','2020-07-24 04:31:58','2021-07-24 01:31:58'),('7f1b9cb9807664698296f776a337ef69e9d443e38aca2237fdb11ce5d17a17ca231a95dc77db2f4c',2,1,'Personal Access Token','[]',0,'2020-07-24 04:29:20','2020-07-24 04:29:20','2021-07-24 01:29:20'),('cf5eff3806f9274cbc56b461bf56825e2d0d3e1acd13061a5eddae0e3646edca39c5ed65c2beeef3',2,1,'Personal Access Token','[]',0,'2020-07-24 04:26:02','2020-07-24 04:26:02','2021-07-24 01:26:02'),('e8f6d02c32ee39eb35c92c0a19753d0d97b31b7a10c2268790ad24be6a2cd8a2b88cceb0edb6fe17',2,1,'Personal Access Token','[]',0,'2020-07-24 04:35:06','2020-07-24 04:35:06','2021-07-24 01:35:06');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','WemoSRVQsxL0X9MFqvya6Kep0EGSVFLva5KnLB1s',NULL,'http://localhost',1,0,0,'2020-07-21 03:57:44','2020-07-21 03:57:44'),(2,NULL,'Laravel Password Grant Client','S2z4G6TVRo2oqeyyluSConeZj5k6igAWccz8hN46','users','http://localhost',0,1,0,'2020-07-21 03:57:44','2020-07-21 03:57:44');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-07-21 03:57:44','2020-07-21 03:57:44');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2020-07-21 04:13:17','2020-07-21 04:13:17');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Brasil','-72.89583',-35,'2020-07-21 04:40:52','2020-07-21 04:40:52',NULL);
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2),(5,1),(5,2),(6,1),(6,2),(7,1),(7,2),(8,1),(8,2),(9,1),(9,2),(10,1),(10,2),(11,1),(11,2),(12,1),(12,2),(13,1),(13,2),(14,1),(14,2),(15,1),(15,2),(16,1),(16,2),(17,1),(17,2),(18,1),(18,2),(19,1),(19,2),(20,1),(20,2),(21,1),(21,2),(22,1),(22,2),(23,1),(23,2),(24,1),(24,2),(25,1),(25,2),(26,1),(26,2),(27,1),(27,2),(28,1),(28,2),(29,1),(29,2),(30,1),(30,2),(31,1),(31,2),(32,1),(32,2),(33,1),(33,2),(34,1),(34,2),(35,1),(35,2),(36,1),(36,2),(37,1),(37,2),(38,1),(38,2),(39,1),(39,2),(40,1),(40,2),(41,1),(41,2),(47,1),(47,2),(48,1),(48,2),(49,1),(49,2),(50,1),(50,2),(51,1),(51,2),(57,1),(57,2),(58,1),(58,2),(59,1),(59,2),(60,1),(60,2),(61,1),(61,2),(72,1),(72,2),(73,1),(73,2),(74,1),(74,2),(75,1),(75,2),(76,1),(76,2),(77,1),(77,2),(78,1),(78,2),(79,1),(79,2),(80,1),(80,2),(81,1),(81,2),(82,1),(82,2),(83,1),(83,2),(84,1),(84,2),(85,1),(85,2),(86,1),(86,2),(87,1),(87,2),(88,1),(88,2),(89,1),(89,2),(90,1),(90,2),(91,1),(91,2),(92,1),(92,2),(93,1),(93,2),(94,1),(94,2),(95,1),(95,2),(96,1),(96,2),(97,1),(97,2),(98,1),(98,2),(99,1),(99,2),(100,1),(100,2),(101,1),(101,2),(102,1),(102,2),(103,1),(103,2),(104,1),(104,2),(105,1),(105,2),(106,1),(106,2),(112,1),(112,2),(113,1),(113,2),(114,1),(114,2),(115,1),(115,2),(116,1),(116,2),(117,1),(117,2),(118,1),(118,2),(119,1),(119,2),(120,1),(120,2),(121,1),(121,2),(127,1),(127,2),(128,1),(128,2),(129,1),(129,2),(130,1),(130,2),(131,1),(131,2),(132,1),(132,2),(133,1),(133,2),(134,1),(134,2),(135,1),(135,2),(136,1),(136,2);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2020-07-21 04:13:00','2020-07-21 04:13:00'),(2,'browse_bread',NULL,'2020-07-21 04:13:00','2020-07-21 04:13:00'),(3,'browse_database',NULL,'2020-07-21 04:13:00','2020-07-21 04:13:00'),(4,'browse_media',NULL,'2020-07-21 04:13:00','2020-07-21 04:13:00'),(5,'browse_compass',NULL,'2020-07-21 04:13:00','2020-07-21 04:13:00'),(6,'browse_menus','menus','2020-07-21 04:13:00','2020-07-21 04:13:00'),(7,'read_menus','menus','2020-07-21 04:13:00','2020-07-21 04:13:00'),(8,'edit_menus','menus','2020-07-21 04:13:00','2020-07-21 04:13:00'),(9,'add_menus','menus','2020-07-21 04:13:00','2020-07-21 04:13:00'),(10,'delete_menus','menus','2020-07-21 04:13:00','2020-07-21 04:13:00'),(11,'browse_roles','roles','2020-07-21 04:13:00','2020-07-21 04:13:00'),(12,'read_roles','roles','2020-07-21 04:13:00','2020-07-21 04:13:00'),(13,'edit_roles','roles','2020-07-21 04:13:00','2020-07-21 04:13:00'),(14,'add_roles','roles','2020-07-21 04:13:00','2020-07-21 04:13:00'),(15,'delete_roles','roles','2020-07-21 04:13:00','2020-07-21 04:13:00'),(16,'browse_users','users','2020-07-21 04:13:00','2020-07-21 04:13:00'),(17,'read_users','users','2020-07-21 04:13:00','2020-07-21 04:13:00'),(18,'edit_users','users','2020-07-21 04:13:00','2020-07-21 04:13:00'),(19,'add_users','users','2020-07-21 04:13:00','2020-07-21 04:13:00'),(20,'delete_users','users','2020-07-21 04:13:00','2020-07-21 04:13:00'),(21,'browse_settings','settings','2020-07-21 04:13:00','2020-07-21 04:13:00'),(22,'read_settings','settings','2020-07-21 04:13:00','2020-07-21 04:13:00'),(23,'edit_settings','settings','2020-07-21 04:13:00','2020-07-21 04:13:00'),(24,'add_settings','settings','2020-07-21 04:13:00','2020-07-21 04:13:00'),(25,'delete_settings','settings','2020-07-21 04:13:00','2020-07-21 04:13:00'),(26,'browse_hooks',NULL,'2020-07-21 04:13:00','2020-07-21 04:13:00'),(27,'browse_categories','categories','2020-07-21 04:13:16','2020-07-21 04:13:16'),(28,'read_categories','categories','2020-07-21 04:13:16','2020-07-21 04:13:16'),(29,'edit_categories','categories','2020-07-21 04:13:16','2020-07-21 04:13:16'),(30,'add_categories','categories','2020-07-21 04:13:16','2020-07-21 04:13:16'),(31,'delete_categories','categories','2020-07-21 04:13:16','2020-07-21 04:13:16'),(32,'browse_posts','posts','2020-07-21 04:13:16','2020-07-21 04:13:16'),(33,'read_posts','posts','2020-07-21 04:13:16','2020-07-21 04:13:16'),(34,'edit_posts','posts','2020-07-21 04:13:16','2020-07-21 04:13:16'),(35,'add_posts','posts','2020-07-21 04:13:16','2020-07-21 04:13:16'),(36,'delete_posts','posts','2020-07-21 04:13:16','2020-07-21 04:13:16'),(37,'browse_pages','pages','2020-07-21 04:13:17','2020-07-21 04:13:17'),(38,'read_pages','pages','2020-07-21 04:13:17','2020-07-21 04:13:17'),(39,'edit_pages','pages','2020-07-21 04:13:17','2020-07-21 04:13:17'),(40,'add_pages','pages','2020-07-21 04:13:17','2020-07-21 04:13:17'),(41,'delete_pages','pages','2020-07-21 04:13:17','2020-07-21 04:13:17'),(47,'browse_pais','pais','2020-07-21 04:39:46','2020-07-21 04:39:46'),(48,'read_pais','pais','2020-07-21 04:39:46','2020-07-21 04:39:46'),(49,'edit_pais','pais','2020-07-21 04:39:46','2020-07-21 04:39:46'),(50,'add_pais','pais','2020-07-21 04:39:46','2020-07-21 04:39:46'),(51,'delete_pais','pais','2020-07-21 04:39:46','2020-07-21 04:39:46'),(57,'browse_city','city','2020-07-21 05:00:16','2020-07-21 05:00:16'),(58,'read_city','city','2020-07-21 05:00:16','2020-07-21 05:00:16'),(59,'edit_city','city','2020-07-21 05:00:16','2020-07-21 05:00:16'),(60,'add_city','city','2020-07-21 05:00:16','2020-07-21 05:00:16'),(61,'delete_city','city','2020-07-21 05:00:16','2020-07-21 05:00:16'),(72,'browse_cities','cities','2020-07-21 05:49:48','2020-07-21 05:49:48'),(73,'read_cities','cities','2020-07-21 05:49:49','2020-07-21 05:49:49'),(74,'edit_cities','cities','2020-07-21 05:49:49','2020-07-21 05:49:49'),(75,'add_cities','cities','2020-07-21 05:49:49','2020-07-21 05:49:49'),(76,'delete_cities','cities','2020-07-21 05:49:49','2020-07-21 05:49:49'),(77,'browse_neighborhoods','neighborhoods','2020-07-22 04:01:42','2020-07-22 04:01:42'),(78,'read_neighborhoods','neighborhoods','2020-07-22 04:01:42','2020-07-22 04:01:42'),(79,'edit_neighborhoods','neighborhoods','2020-07-22 04:01:42','2020-07-22 04:01:42'),(80,'add_neighborhoods','neighborhoods','2020-07-22 04:01:42','2020-07-22 04:01:42'),(81,'delete_neighborhoods','neighborhoods','2020-07-22 04:01:42','2020-07-22 04:01:42'),(82,'browse_catalogs','catalogs','2020-07-22 05:22:55','2020-07-22 05:22:55'),(83,'read_catalogs','catalogs','2020-07-22 05:22:55','2020-07-22 05:22:55'),(84,'edit_catalogs','catalogs','2020-07-22 05:22:55','2020-07-22 05:22:55'),(85,'add_catalogs','catalogs','2020-07-22 05:22:55','2020-07-22 05:22:55'),(86,'delete_catalogs','catalogs','2020-07-22 05:22:55','2020-07-22 05:22:55'),(87,'browse_providers','providers','2020-07-22 05:26:30','2020-07-22 05:26:30'),(88,'read_providers','providers','2020-07-22 05:26:30','2020-07-22 05:26:30'),(89,'edit_providers','providers','2020-07-22 05:26:30','2020-07-22 05:26:30'),(90,'add_providers','providers','2020-07-22 05:26:30','2020-07-22 05:26:30'),(91,'delete_providers','providers','2020-07-22 05:26:30','2020-07-22 05:26:30'),(92,'browse_account','account','2020-07-23 08:17:58','2020-07-23 08:17:58'),(93,'read_account','account','2020-07-23 08:17:58','2020-07-23 08:17:58'),(94,'edit_account','account','2020-07-23 08:17:58','2020-07-23 08:17:58'),(95,'add_account','account','2020-07-23 08:17:58','2020-07-23 08:17:58'),(96,'delete_account','account','2020-07-23 08:17:58','2020-07-23 08:17:58'),(97,'browse_accounts','accounts','2020-07-23 08:39:44','2020-07-23 08:39:44'),(98,'read_accounts','accounts','2020-07-23 08:39:44','2020-07-23 08:39:44'),(99,'edit_accounts','accounts','2020-07-23 08:39:44','2020-07-23 08:39:44'),(100,'add_accounts','accounts','2020-07-23 08:39:44','2020-07-23 08:39:44'),(101,'delete_accounts','accounts','2020-07-23 08:39:44','2020-07-23 08:39:44'),(102,'browse_role_account','role_account','2020-07-23 08:47:07','2020-07-23 08:47:07'),(103,'read_role_account','role_account','2020-07-23 08:47:07','2020-07-23 08:47:07'),(104,'edit_role_account','role_account','2020-07-23 08:47:07','2020-07-23 08:47:07'),(105,'add_role_account','role_account','2020-07-23 08:47:07','2020-07-23 08:47:07'),(106,'delete_role_account','role_account','2020-07-23 08:47:07','2020-07-23 08:47:07'),(112,'browse_accounts_roles','accounts_roles','2020-07-23 08:56:33','2020-07-23 08:56:33'),(113,'read_accounts_roles','accounts_roles','2020-07-23 08:56:33','2020-07-23 08:56:33'),(114,'edit_accounts_roles','accounts_roles','2020-07-23 08:56:33','2020-07-23 08:56:33'),(115,'add_accounts_roles','accounts_roles','2020-07-23 08:56:33','2020-07-23 08:56:33'),(116,'delete_accounts_roles','accounts_roles','2020-07-23 08:56:33','2020-07-23 08:56:33'),(117,'browse_state','state','2020-07-23 09:27:38','2020-07-23 09:27:38'),(118,'read_state','state','2020-07-23 09:27:38','2020-07-23 09:27:38'),(119,'edit_state','state','2020-07-23 09:27:38','2020-07-23 09:27:38'),(120,'add_state','state','2020-07-23 09:27:38','2020-07-23 09:27:38'),(121,'delete_state','state','2020-07-23 09:27:38','2020-07-23 09:27:38'),(127,'browse_states','states','2020-07-23 09:41:43','2020-07-23 09:41:43'),(128,'read_states','states','2020-07-23 09:41:43','2020-07-23 09:41:43'),(129,'edit_states','states','2020-07-23 09:41:43','2020-07-23 09:41:43'),(130,'add_states','states','2020-07-23 09:41:43','2020-07-23 09:41:43'),(131,'delete_states','states','2020-07-23 09:41:43','2020-07-23 09:41:43'),(132,'browse_companies','companies','2020-07-24 03:30:23','2020-07-24 03:30:23'),(133,'read_companies','companies','2020-07-24 03:30:23','2020-07-24 03:30:23'),(134,'edit_companies','companies','2020-07-24 03:30:23','2020-07-24 03:30:23'),(135,'add_companies','companies','2020-07-24 03:30:23','2020-07-24 03:30:23'),(136,'delete_companies','companies','2020-07-24 03:30:23','2020-07-24 03:30:23');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-07-21 04:13:16','2020-07-21 04:13:16'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-07-21 04:13:16','2020-07-21 04:13:16'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-07-21 04:13:17','2020-07-21 04:13:17'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2020-07-21 04:13:17','2020-07-21 04:13:17');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fantasy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` bigint(20) NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `neighborhood_id` int(11) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `url_site` longtext COLLATE utf8mb4_unicode_ci,
  `src_logo` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'Quatro estações','Quatro estações','Quatro estações LTDA',78550863000120,'Rua Werner Duwe','Rua Werner Duwe','202',4,2,89070700,NULL,NULL,'2020-07-22 06:05:24','2020-07-22 06:05:24',NULL);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2020-07-21 04:13:00','2020-07-21 04:13:00'),(2,'Desenvolvedores','Desenvolvedores','2020-07-21 04:13:00','2020-07-24 03:39:18'),(4,'user','simples usuário','2020-07-24 03:39:40','2020-07-24 03:39:40');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Sivenadm','','text',1,'Site'),(2,'site.description','Site Description','Sistema administrativo para controle dos clientes','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Sivenadm','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ddd` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `pais_id` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (2,'RIO GRANDE DO NORTE','RN',84,'2020-07-23 09:40:00','2020-07-23 09:42:49',NULL,1);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2020-07-21 04:13:17','2020-07-21 04:13:17'),(2,'data_types','display_name_singular',6,'pt','Página','2020-07-21 04:13:17','2020-07-21 04:13:17'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2020-07-21 04:13:17','2020-07-21 04:13:17'),(4,'data_types','display_name_singular',4,'pt','Categoria','2020-07-21 04:13:17','2020-07-21 04:13:17'),(5,'data_types','display_name_singular',2,'pt','Menu','2020-07-21 04:13:17','2020-07-21 04:13:17'),(6,'data_types','display_name_singular',3,'pt','Função','2020-07-21 04:13:17','2020-07-21 04:13:17'),(7,'data_types','display_name_plural',5,'pt','Posts','2020-07-21 04:13:17','2020-07-21 04:13:17'),(8,'data_types','display_name_plural',6,'pt','Páginas','2020-07-21 04:13:17','2020-07-21 04:13:17'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2020-07-21 04:13:17','2020-07-21 04:13:17'),(10,'data_types','display_name_plural',4,'pt','Categorias','2020-07-21 04:13:17','2020-07-21 04:13:17'),(11,'data_types','display_name_plural',2,'pt','Menus','2020-07-21 04:13:17','2020-07-21 04:13:17'),(12,'data_types','display_name_plural',3,'pt','Funções','2020-07-21 04:13:17','2020-07-21 04:13:17'),(13,'categories','slug',1,'pt','categoria-1','2020-07-21 04:13:17','2020-07-21 04:13:17'),(14,'categories','name',1,'pt','Categoria 1','2020-07-21 04:13:17','2020-07-21 04:13:17'),(15,'categories','slug',2,'pt','categoria-2','2020-07-21 04:13:17','2020-07-21 04:13:17'),(16,'categories','name',2,'pt','Categoria 2','2020-07-21 04:13:17','2020-07-21 04:13:17'),(17,'pages','title',1,'pt','Olá Mundo','2020-07-21 04:13:17','2020-07-21 04:13:17'),(18,'pages','slug',1,'pt','ola-mundo','2020-07-21 04:13:17','2020-07-21 04:13:17'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2020-07-21 04:13:17','2020-07-21 04:13:17'),(20,'menu_items','title',1,'pt','Painel de Controle','2020-07-21 04:13:17','2020-07-21 04:13:17'),(21,'menu_items','title',2,'pt','Media','2020-07-21 04:13:17','2020-07-21 04:13:17'),(22,'menu_items','title',13,'pt','Publicações','2020-07-21 04:13:17','2020-07-21 04:13:17'),(23,'menu_items','title',3,'pt','Utilizadores','2020-07-21 04:13:17','2020-07-21 04:13:17'),(24,'menu_items','title',12,'pt','Categorias','2020-07-21 04:13:17','2020-07-21 04:13:17'),(25,'menu_items','title',14,'pt','Páginas','2020-07-21 04:13:17','2020-07-21 04:13:17'),(26,'menu_items','title',4,'pt','Funções','2020-07-21 04:13:17','2020-07-21 04:13:17'),(27,'menu_items','title',5,'pt','Ferramentas','2020-07-21 04:13:17','2020-07-21 04:13:17'),(28,'menu_items','title',6,'pt','Menus','2020-07-21 04:13:17','2020-07-21 04:13:17'),(29,'menu_items','title',7,'pt','Base de dados','2020-07-21 04:13:17','2020-07-21 04:13:17'),(30,'menu_items','title',10,'pt','Configurações','2020-07-21 04:13:17','2020-07-21 04:13:17');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (2,1),(3,4),(4,1),(4,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/July2020/lgHsuazMu1zxGbcbVJK2.png',NULL,'$2y$10$PgR9.1Q0KqRiPt1ssznKv.hdlQ/J6OStBhqPjhVtrZbuYsukaw/pC','5B8h5nhgHKs39XwcQtVMcIwiVX40enAMi7cYhUuJ9gQa4M1dExsqSz3OrkjQ','{\"locale\":\"pt_br\"}','2020-07-21 04:13:16','2020-07-21 04:15:28'),(2,1,'Breno Miranda','brenomirandaster@gmail.com','users/July2020/6Dx7VUARHBFM9cVBXHzT.png',NULL,'$2y$10$91gptMstf5PjmqMkwHqg3ubNb9YVJiL6bHz1hjl.AKLXi89OCAvh6',NULL,'{\"locale\":\"pt_br\"}','2020-07-21 04:41:42','2020-07-21 04:41:42'),(3,4,'MARIA DALVA','MARIADALVA@GMAIL.COM','users/default.png',NULL,'$2y$10$tQRFi3fSdKfDZyv6yg3Q6OQSD8Y6BJXQSR9cLd3YLhGJ8yLb65iz.',NULL,'{\"locale\":\"pt_br\"}','2020-07-24 04:05:14','2020-07-24 04:05:14'),(4,2,'VITORIANO ERNANDES','VITORIANOERNANDES@GMAIL.COM','users/default.png',NULL,'$2y$10$SR4hJnhI67xuXSt/NOktp.boPwcHpFZcfR6Xa0NQnDSnJTUhkU4fi',NULL,'{\"locale\":\"pt_br\"}','2020-07-24 04:10:48','2020-07-24 04:10:48');
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

-- Dump completed on 2020-07-31  0:03:20
