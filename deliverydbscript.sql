-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: deliverydb
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'customer'),(2,'shipper');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (15,1,22),(16,1,24),(17,1,28),(1,1,36),(2,1,37),(3,1,38),(4,1,39),(5,1,40),(6,1,41),(7,1,42),(8,1,43),(9,1,44),(10,1,45),(11,1,46),(12,1,47),(13,1,48),(14,1,49),(24,2,22),(25,2,24),(26,2,25),(27,2,26),(28,2,27),(29,2,28),(18,2,33),(19,2,34),(20,2,36),(21,2,42),(22,2,44),(23,2,48);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add auction',7,'add_auction'),(26,'Can change auction',7,'change_auction'),(27,'Can delete auction',7,'delete_auction'),(28,'Can view auction',7,'view_auction'),(29,'Can add service',8,'add_service'),(30,'Can change service',8,'change_service'),(31,'Can delete service',8,'delete_service'),(32,'Can view service',8,'view_service'),(33,'Can add shipper',9,'add_shipper'),(34,'Can change shipper',9,'change_shipper'),(35,'Can delete shipper',9,'delete_shipper'),(36,'Can view shipper',9,'view_shipper'),(37,'Can add order post',10,'add_orderpost'),(38,'Can change order post',10,'change_orderpost'),(39,'Can delete order post',10,'delete_orderpost'),(40,'Can view order post',10,'view_orderpost'),(41,'Can add order',11,'add_order'),(42,'Can change order',11,'change_order'),(43,'Can delete order',11,'delete_order'),(44,'Can view order',11,'view_order'),(45,'Can add rating',12,'add_rating'),(46,'Can change rating',12,'change_rating'),(47,'Can delete rating',12,'delete_rating'),(48,'Can view rating',12,'view_rating'),(49,'Can add product category',13,'add_productcategory'),(50,'Can change product category',13,'change_productcategory'),(51,'Can delete product category',13,'delete_productcategory'),(52,'Can view product category',13,'view_productcategory'),(53,'Can add order detail',14,'add_orderdetail'),(54,'Can change order detail',14,'change_orderdetail'),(55,'Can delete order detail',14,'delete_orderdetail'),(56,'Can view order detail',14,'view_orderdetail'),(57,'Can add application',15,'add_application'),(58,'Can change application',15,'change_application'),(59,'Can delete application',15,'delete_application'),(60,'Can view application',15,'view_application'),(61,'Can add access token',16,'add_accesstoken'),(62,'Can change access token',16,'change_accesstoken'),(63,'Can delete access token',16,'delete_accesstoken'),(64,'Can view access token',16,'view_accesstoken'),(65,'Can add grant',17,'add_grant'),(66,'Can change grant',17,'change_grant'),(67,'Can delete grant',17,'delete_grant'),(68,'Can view grant',17,'view_grant'),(69,'Can add refresh token',18,'add_refreshtoken'),(70,'Can change refresh token',18,'change_refreshtoken'),(71,'Can delete refresh token',18,'delete_refreshtoken'),(72,'Can view refresh token',18,'view_refreshtoken'),(73,'Can add id token',19,'add_idtoken'),(74,'Can change id token',19,'change_idtoken'),(75,'Can delete id token',19,'delete_idtoken'),(76,'Can view id token',19,'view_idtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryapp_auction`
--

DROP TABLE IF EXISTS `deliveryapp_auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryapp_auction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ship_cost` decimal(14,2) NOT NULL,
  `is_winner` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `post_id` bigint NOT NULL,
  `shipper_id` bigint NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deliveryapp_auction_post_id_shipper_id_841a930e_uniq` (`post_id`,`shipper_id`),
  KEY `deliveryapp_auction_shipper_id_93707875_fk_deliveryapp_user_id` (`shipper_id`),
  CONSTRAINT `deliveryapp_auction_post_id_882190de_fk_deliveryapp_orderpost_id` FOREIGN KEY (`post_id`) REFERENCES `deliveryapp_orderpost` (`id`),
  CONSTRAINT `deliveryapp_auction_shipper_id_93707875_fk_deliveryapp_user_id` FOREIGN KEY (`shipper_id`) REFERENCES `deliveryapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_auction`
--

LOCK TABLES `deliveryapp_auction` WRITE;
/*!40000 ALTER TABLE `deliveryapp_auction` DISABLE KEYS */;
INSERT INTO `deliveryapp_auction` VALUES (1,20000.00,0,1,1,2,'2021-11-02 01:56:35.832741','2021-11-09 12:39:44.663180'),(4,32000.00,0,1,1,11,'2021-11-02 03:07:52.864989','2021-11-02 07:34:56.153335'),(5,50000.00,0,1,1,14,'2021-11-02 07:16:49.166635','2021-11-02 07:16:49.166635'),(7,15600.00,0,1,1,34,'2021-11-08 17:25:05.016818','2021-11-08 17:25:05.016818'),(9,45000.00,0,1,7,34,'2021-11-08 18:25:14.510425','2021-11-08 18:25:14.510425'),(10,25000.00,0,1,2,2,'2021-11-09 09:04:44.574712','2021-11-09 09:04:44.574712'),(11,25000.00,0,1,6,2,'2021-11-09 09:05:11.537723','2021-11-09 09:05:11.537723');
/*!40000 ALTER TABLE `deliveryapp_auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryapp_order`
--

DROP TABLE IF EXISTS `deliveryapp_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryapp_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `ship_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `status` smallint unsigned NOT NULL,
  `total_price` decimal(14,2) DEFAULT NULL,
  `pay_method` smallint unsigned NOT NULL,
  `auction_id` bigint DEFAULT NULL,
  `customer_id` bigint NOT NULL,
  `service_cate_id` bigint DEFAULT NULL,
  `shipper_id` bigint NOT NULL,
  `pickup_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_cate_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deliveryapp_order_customer_id_eb4e60b2_fk_deliveryapp_user_id` (`customer_id`),
  KEY `deliveryapp_order_service_cate_id_063fbe41_fk_deliverya` (`service_cate_id`),
  KEY `deliveryapp_order_shipper_id_11b6adf9_fk_deliveryapp_user_id` (`shipper_id`),
  KEY `deliveryapp_order_product_cate_id_072a54dc_fk_deliverya` (`product_cate_id`),
  KEY `deliveryapp_order_auction_id_ddb89eb9_fk_deliveryapp_auction_id` (`auction_id`),
  CONSTRAINT `deliveryapp_order_auction_id_ddb89eb9_fk_deliveryapp_auction_id` FOREIGN KEY (`auction_id`) REFERENCES `deliveryapp_auction` (`id`),
  CONSTRAINT `deliveryapp_order_customer_id_eb4e60b2_fk_deliveryapp_user_id` FOREIGN KEY (`customer_id`) REFERENCES `deliveryapp_user` (`id`),
  CONSTRAINT `deliveryapp_order_product_cate_id_072a54dc_fk_deliverya` FOREIGN KEY (`product_cate_id`) REFERENCES `deliveryapp_productcategory` (`id`),
  CONSTRAINT `deliveryapp_order_service_cate_id_063fbe41_fk_deliverya` FOREIGN KEY (`service_cate_id`) REFERENCES `deliveryapp_service` (`id`),
  CONSTRAINT `deliveryapp_order_shipper_id_11b6adf9_fk_deliveryapp_user_id` FOREIGN KEY (`shipper_id`) REFERENCES `deliveryapp_user` (`id`),
  CONSTRAINT `deliveryapp_order_chk_1` CHECK ((`status` >= 0)),
  CONSTRAINT `deliveryapp_order_chk_2` CHECK ((`pay_method` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_order`
--

LOCK TABLES `deliveryapp_order` WRITE;
/*!40000 ALTER TABLE `deliveryapp_order` DISABLE KEYS */;
INSERT INTO `deliveryapp_order` VALUES (1,'2021-10-26 14:10:06.012356','def',1,2,30000.00,2,1,3,1,2,'abc',1),(2,'2021-11-02 04:27:24.006687','144/18 au co, p9, tan binh, hcm',1,0,50000.00,2,NULL,5,1,11,'162 ap binh hoa, tt cai dau, cp - ag',5),(3,'2021-11-02 05:08:35.618855','144 vinh vien, quan 10, hcm',1,1,65000.00,0,4,6,1,11,'164 ap vinh loc, tt cai dau, cp-ag',4),(4,'2021-11-06 14:58:13.621078','fsgfsgdfsgfsgs',1,0,80000.00,2,NULL,4,1,8,'abcdwrwr',2),(5,'2021-11-06 15:02:28.205490','fsgfsgdfsgfsgsarqrqwr',1,0,86000.00,1,NULL,5,1,14,'abcdwrwrsdgsdg',1),(6,'2021-11-07 15:08:41.574193','fsgfsgdfsgfsgsarqrqwr',1,0,86000.00,1,NULL,4,1,14,'abcdwrwrsdgsdgdfgfg',1),(12,'2021-11-07 15:42:48.680209','144 vinh vien, quan 10, hcm',1,0,73344.00,2,NULL,12,2,35,'164 ap vinh loc, tt cai dau, cp-ag',6);
/*!40000 ALTER TABLE `deliveryapp_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryapp_orderdetail`
--

DROP TABLE IF EXISTS `deliveryapp_orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryapp_orderdetail` (
  `order_id` bigint NOT NULL,
  `customer_received` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  CONSTRAINT `deliveryapp_orderdet_order_id_6d20d13f_fk_deliverya` FOREIGN KEY (`order_id`) REFERENCES `deliveryapp_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_orderdetail`
--

LOCK TABLES `deliveryapp_orderdetail` WRITE;
/*!40000 ALTER TABLE `deliveryapp_orderdetail` DISABLE KEYS */;
INSERT INTO `deliveryapp_orderdetail` VALUES (1,'khang','0397918098'),(2,'vy','0909161283'),(3,'khai','090935267'),(12,'vydep chai','0909235782');
/*!40000 ALTER TABLE `deliveryapp_orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryapp_orderpost`
--

DROP TABLE IF EXISTS `deliveryapp_orderpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryapp_orderpost` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `ship_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `is_checked` tinyint(1) NOT NULL,
  `creator_id` bigint NOT NULL,
  `pickup_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_cate_id` bigint DEFAULT NULL,
  `service_cate_id` bigint DEFAULT NULL,
  `customer_received` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deliveryapp_orderpost_creator_id_da84574e_fk_deliveryapp_user_id` (`creator_id`),
  KEY `deliveryapp_orderpos_product_cate_id_cd234cae_fk_deliverya` (`product_cate_id`),
  KEY `deliveryapp_orderpos_service_cate_id_f84cb4c9_fk_deliverya` (`service_cate_id`),
  CONSTRAINT `deliveryapp_orderpos_product_cate_id_cd234cae_fk_deliverya` FOREIGN KEY (`product_cate_id`) REFERENCES `deliveryapp_productcategory` (`id`),
  CONSTRAINT `deliveryapp_orderpos_service_cate_id_f84cb4c9_fk_deliverya` FOREIGN KEY (`service_cate_id`) REFERENCES `deliveryapp_service` (`id`),
  CONSTRAINT `deliveryapp_orderpost_creator_id_da84574e_fk_deliveryapp_user_id` FOREIGN KEY (`creator_id`) REFERENCES `deliveryapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_orderpost`
--

LOCK TABLES `deliveryapp_orderpost` WRITE;
/*!40000 ALTER TABLE `deliveryapp_orderpost` DISABLE KEYS */;
INSERT INTO `deliveryapp_orderpost` VALUES (1,1,'test ship','162 binh hung, binh long, CP, AG','2021-10-26 14:08:25.921030','2021-11-09 11:27:30.495278',1,3,'164 ap vinh loc, tt cai dau, cp-ag',3,1,'hien','0167842512'),(2,1,'fast','defqweqwe','2021-11-02 06:01:28.921827','2021-11-08 16:26:19.791813',0,8,'abcqweqweqwe',3,1,'khai','0909161278'),(5,1,'test đăng đơn hàng 3','dsfswqwe','2021-11-08 15:58:41.182649','2021-11-08 16:26:09.051581',0,5,'defggfasdasdasd',2,2,'khang','0397918098'),(6,1,'test đăng đơn hàng','dsfswqwe','2021-11-08 16:25:42.518066','2021-11-08 16:25:42.518066',0,5,'defggfasdasdasd',2,2,'customer test','phone test'),(7,1,'test 9/11/2021','144 vinh vien, quan 10, hcm','2021-11-08 18:23:49.227101','2021-11-08 18:23:49.227101',0,10,'371 nguyen kiem, go vap, HCM',3,3,'kien','0834697489');
/*!40000 ALTER TABLE `deliveryapp_orderpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryapp_productcategory`
--

DROP TABLE IF EXISTS `deliveryapp_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryapp_productcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_productcategory`
--

LOCK TABLES `deliveryapp_productcategory` WRITE;
/*!40000 ALTER TABLE `deliveryapp_productcategory` DISABLE KEYS */;
INSERT INTO `deliveryapp_productcategory` VALUES (1,'Hàng hóa',1),(2,'Vật dụng cá nhân',1),(3,'Dược phẩm',1),(4,'Hàng tiêu dùng',1),(5,'Khác',1),(6,'vật liệu xây dựng',1);
/*!40000 ALTER TABLE `deliveryapp_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryapp_rating`
--

DROP TABLE IF EXISTS `deliveryapp_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryapp_rating` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `rate` int unsigned NOT NULL,
  `customer_id` bigint NOT NULL,
  `shipper_id` bigint NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deliveryapp_rating_customer_id_shipper_id_844cdae4_uniq` (`customer_id`,`shipper_id`),
  KEY `deliveryapp_rating_shipper_id_3bbfeef3_fk_deliveryapp_user_id` (`shipper_id`),
  CONSTRAINT `deliveryapp_rating_customer_id_2500274b_fk_deliveryapp_user_id` FOREIGN KEY (`customer_id`) REFERENCES `deliveryapp_user` (`id`),
  CONSTRAINT `deliveryapp_rating_shipper_id_3bbfeef3_fk_deliveryapp_user_id` FOREIGN KEY (`shipper_id`) REFERENCES `deliveryapp_user` (`id`),
  CONSTRAINT `deliveryapp_rating_chk_1` CHECK ((`rate` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_rating`
--

LOCK TABLES `deliveryapp_rating` WRITE;
/*!40000 ALTER TABLE `deliveryapp_rating` DISABLE KEYS */;
INSERT INTO `deliveryapp_rating` VALUES (1,'good shipper',5,3,2,'2021-11-02 03:59:29.749034','2021-11-02 03:59:29.889575'),(2,'friendly shipper and nice',5,5,11,'2021-11-02 04:42:32.992117','2021-11-02 05:07:04.791157'),(9,'nice shipper',2,6,11,'2021-11-02 05:09:30.033740','2021-11-02 05:09:30.033740');
/*!40000 ALTER TABLE `deliveryapp_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryapp_service`
--

DROP TABLE IF EXISTS `deliveryapp_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryapp_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `price` decimal(14,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_service`
--

LOCK TABLES `deliveryapp_service` WRITE;
/*!40000 ALTER TABLE `deliveryapp_service` DISABLE KEYS */;
INSERT INTO `deliveryapp_service` VALUES (1,'Fast','2021-10-26 14:09:22.521459','2021-11-02 05:26:10.148987',1,50000.00),(2,'normal express','2021-11-02 05:25:56.484593','2021-11-02 05:25:56.484593',1,30000.00),(3,'Saving express','2021-11-02 05:26:50.745405','2021-11-02 05:26:50.745405',1,20000.00);
/*!40000 ALTER TABLE `deliveryapp_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryapp_shipper`
--

DROP TABLE IF EXISTS `deliveryapp_shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryapp_shipper` (
  `account_id` bigint NOT NULL,
  `id_number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_front_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_back_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `id_number` (`id_number`),
  CONSTRAINT `deliveryapp_shipper_account_id_4592fba9_fk_deliveryapp_user_id` FOREIGN KEY (`account_id`) REFERENCES `deliveryapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_shipper`
--

LOCK TABLES `deliveryapp_shipper` WRITE;
/*!40000 ALTER TABLE `deliveryapp_shipper` DISABLE KEYS */;
INSERT INTO `deliveryapp_shipper` VALUES (2,'352634578','identity/2021/10/front_id.jpg','identity/2021/10/back_id.jpg'),(8,'352635685','identity/2021/11/front_id_cqWtBTa.jpg','identity/2021/11/back_id_V9JpOrb.jpg'),(11,'352574258','identity/2021/11/front_id_pjiNDUh.jpg','identity/2021/11/back_id_q5mSHLD.jpg'),(14,'352569872','identity/2021/11/front_id_XqkNUB8.jpg','identity/2021/11/back_id_9e0dvqy.jpg'),(20,'352545268','identity/2021/11/front_id_ii9JmYo.jpg','identity/2021/11/back_id_4cdMbTG.jpg'),(32,'352636285','identity/2021/11/front_id_oSA1G0c.jpg','identity/2021/11/back_id_WwpOJLD.jpg'),(33,'352636632','identity/2021/11/front_id_IZoUVZ6.jpg','identity/2021/11/back_id_OaHDc5H.jpg'),(34,'3525452945','identity/2021/11/front_id_6V1kEFt.jpg','identity/2021/11/back_id_I9fuq17.jpg'),(35,'352634572','identity/2021/11/front_id_DLbsPgF.jpg','identity/2021/11/back_id_plGHwPk.jpg'),(41,'125481248','static/identity/2021/11/avatar_nhatthanh.jpg','static/identity/2021/11/back_id_NyurI6k.jpg');
/*!40000 ALTER TABLE `deliveryapp_shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryapp_user`
--

DROP TABLE IF EXISTS `deliveryapp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryapp_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_shipper` tinyint(1) NOT NULL,
  `choice` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  CONSTRAINT `deliveryapp_user_chk_1` CHECK ((`choice` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_user`
--

LOCK TABLES `deliveryapp_user` WRITE;
/*!40000 ALTER TABLE `deliveryapp_user` DISABLE KEYS */;
INSERT INTO `deliveryapp_user` VALUES (1,'pbkdf2_sha256$260000$1C0czymBgDWU2q3oUkj3E7$OyjTnX569NbT5t9r1KA3W/xGMgh4wbB8NxhvgZ+H/tQ=','2021-11-09 12:04:15.443294',1,'admin','admin@gmail.com',1,1,'2021-10-26 14:03:58.000000','admin','ad','0168623488','Male','static/avatar/2021/11/Avatar_JY1QJZ4.PNG',0,1),(2,'pbkdf2_sha256$260000$g9LKhLb4hjeH18kbHrA86x$T41SnSFw/+YaI57KEWpdmsmWv1T44L+aUdTY/fGAlug=','2021-11-01 06:49:01.000000',0,'kienluc','luckien9a6@gmail.com',0,1,'2021-10-26 14:04:34.000000','kien','luc tuan','0834697489','Male','static/avatar/2021/11/Avatar_iljMCBp.PNG',1,2),(3,'pbkdf2_sha256$260000$4DxRp0xcFPJYVaXqKcjP8b$wPK2G1+WAa97IqACnY9SAZcgDlyyBjtas9GctnLbdOY=',NULL,0,'duongduc','duc@gmail.com',0,1,'2021-10-26 14:07:04.000000','duc','le duong','0123425232','Male','static/avatar/2021/11/avatar_duongduc_PEDiFJf.jpg',0,1),(4,'pbkdf2_sha256$260000$X3tGEwCQMxMiXcNFFcmims$/rI2dZMlxrz9YB6q0y3tRWnbw8Z3F+h6TDEPizIlI2c=',NULL,0,'quocvy','nqvy@gmail.com',0,1,'2021-11-01 04:07:36.000000','vy','nguyen quoc','0316164899','Male','static/avatar/2021/11/avatar_quocvy_JsurH5N.jpg',0,1),(5,'pbkdf2_sha256$260000$VK3wKu1YbhIE2uVWJdfoMG$4f59NWWLJ73c9ycL2xL535sj+MR56RHCdFV6Et3czEc=',NULL,0,'chanhung','chanhung@gmail.com',0,1,'2021-11-01 05:10:08.000000','hung','ha chan','0123456789','Male','static/avatar/2021/11/avatar_chanhung_jLHxqGr.jpg',0,1),(6,'pbkdf2_sha256$260000$vgbDcwlkYgPIsHk1kZgQa5$V7kjiWdgAMyZoSIpb6t3QXftAjfVOJ70E2x2rwlOS80=',NULL,0,'huuthang','huuthang@gmail.com',0,1,'2021-11-01 12:20:54.000000','thang','tran huu','0397122453','Male','static/avatar/2021/11/avatar_huuthang_LDxIvJP.jpg',0,1),(7,'pbkdf2_sha256$260000$k76HTR9P5DDjf4PHpsT9ZO$DjeRpvaU/EaqrLFHwLcnxigux0nfIV0udcyRhneXZl4=',NULL,0,'nhatkhan','nhatkhan@gmail.com',0,1,'2021-11-01 12:21:39.000000','khan','nguyen nhat','0909362584','Male','static/avatar/2021/11/avatar_nhatkhan_If8xpbD.jpg',0,1),(8,'pbkdf2_sha256$260000$tWCGrlc1Ypm4vjz0uT7189$QHK7WUt1jkriemGFuWfRpXxEYkhZbE9IBH1Jc43dND0=',NULL,0,'camry','camry@gmail.com',0,1,'2021-11-01 12:22:25.000000','ry','nguyen hao cam','0836284785','Male','static/avatar/2021/11/avatar_camry_g8WCcTL.jpg',1,2),(9,'pbkdf2_sha256$260000$nKKgLfgA2fV1dxOwl04HHn$kqt1mWiMZWCYV59NMzGiFxATpmcNPgzhytxADNzCfRs=',NULL,0,'nhatthanh','nhatthanh@gmail.com',0,1,'2021-11-01 12:23:16.000000','thanh','nguyen nhat','0768217785','Male','static/avatar/2021/11/avatar_nhatthanh_pL340EX.jpg',0,1),(10,'pbkdf2_sha256$260000$wnwnDewf88hF1vIr3h71mm$QxhL6swxoNdl6F8UKmwaLdOqEfmrzp6Rx1bMDjSLoFs=',NULL,0,'thanhlong','thanhlong@gmail.com',0,1,'2021-11-01 12:24:01.000000','long','nguyen thanh','0916332996','Male','static/avatar/2021/11/avatar_thanhlong_X7qbaVW.jpg',0,1),(11,'pbkdf2_sha256$260000$QqqgljQmThbvvlkqaecHNS$RDSGsHSmiNc9pAqBdhYt55is8z1acbLQfy9i+XMsiiI=',NULL,0,'phucsot','phucsot@gmail.com',0,1,'2021-11-01 12:24:46.000000','phuc','huynh van','0984612558','Male','static/avatar/2021/11/avatar_phucsot_kBNyzeC.jpg',1,2),(12,'pbkdf2_sha256$260000$F2AP7LiGLaZsevdSNB5Oh5$uyuAbIKnUutErYAbe47y8Zh8MQjis2+NGsX9jdp7DoE=',NULL,0,'anhthu','anhthu@gmail.com',0,1,'2021-11-01 12:25:46.000000','thu','to ngoc anh','0834235781','Female','static/avatar/2021/11/avatar_anhthu_qsZoc0g.jpg',0,1),(13,'pbkdf2_sha256$260000$GkKuxHPMbFeDHXIoDWgqCd$8BvIXiVKOcwFDMpq+KEIRedN7VeTpBervzDNBc2JKFY=',NULL,0,'camtu','camtu@gmail.com',0,1,'2021-11-01 12:26:52.000000','tu','huynh thi cam','0876253226','Female','static/avatar/2021/11/avatar_camtu_8u9Jein.jpg',0,1),(14,'pbkdf2_sha256$260000$2ttEevZJclO9kdj2eOWigZ$k+/Rgy6fZS4RwmlKbnoPJxMj1ce9D0k1nXxRlsNroL8=',NULL,0,'test','test@gmail.com',0,1,'2021-11-01 15:15:20.000000','test','test2','0834697485','Male','static/avatar/2021/11/avatar_huuthang_LHLqp2H.jpg',1,2),(20,'pbkdf2_sha256$260000$KKrximy0CyDnQdXqv6SGC4$5JiMwgCLllgnBsS9guiP3/woulzwN1TvoumH4YwygCg=',NULL,0,'moly','moly@gmail.com',0,1,'2021-11-03 12:47:20.000000','moly','clea','0834986225','Male','static/avatar/2021/11/avatar_duongduc_XxStX8m.jpg',1,2),(21,'pbkdf2_sha256$260000$VUGo0ygvxKBvq8zOAF0vbC$NrBLU1Jn33bePz0fn6uyOoj6/YOb845XznmKgUp9IZU=',NULL,0,'sonminh','moly@gmail.com',0,1,'2021-11-03 12:52:56.000000','son','minh','0834986422','Male','static/avatar/2021/11/avatar_nhatthanh_hczB4JK.jpg',0,1),(22,'pbkdf2_sha256$260000$i388oi3hJjfh63vuBZANN9$lqBSPxP6Xpw/i/JcaLAVqM2J/rWUgUD2KcfUPrbiilk=',NULL,0,'ngochien','hien@gmail.com',0,1,'2021-11-03 12:57:49.000000','hien','bui thi ngoc','0834552845','Female','static/avatar/2021/11/avatar_camtu_ndNmm7H.jpg',0,1),(23,'pbkdf2_sha256$260000$kFOWfJcMOMafGu4I0hyYiW$MYUVXBqVhPt1a4v5mb2XrqwNmZZCHjQiXCXQD2rE4n4=',NULL,0,'khailuc','khai@gmail.com',0,1,'2021-11-03 13:01:32.000000','khai','luc minh','0909161278','Male','static/avatar/2021/11/avatar_quocvy_TDNt9YY.jpg',0,1),(24,'pbkdf2_sha256$260000$xTaEdeG1FvCI38sKYCED32$lfR4rPiS6PHE0OwRqHYtOqA0PvI25X8VdcshokV0O/k=',NULL,0,'khangluc','khang@gmail.com',0,1,'2021-11-03 13:05:26.000000','khang','luc tuan','0397198098','Male','static/avatar/2021/11/Avatar_IdwMGL0.PNG',0,1),(25,'pbkdf2_sha256$260000$suuQfSkUPWqQnR4E5l3oDu$BnV1Ujt1Jxba0KX3qH/OEgOEVNjqhLO0qmc3O8TfpW8=',NULL,0,'thiennhan','nhan@gmail.com',0,1,'2021-11-03 14:14:30.000000','nhan','huynh thien','0397198098','Male','static/avatar/2021/11/Avatar_f3PEZTW.PNG',0,1),(26,'pbkdf2_sha256$260000$aEwBDNJFyWh3XFU0ZpYZFt$ACtkJBaRsQCh9K8YxC3qaOLdTG6RmAbXhnaY8wmZZWY=',NULL,0,'huynhnhan','nhan@gmail.com',0,1,'2021-11-03 14:20:46.000000','nhan','huynh thien','0397198098','Male','static/avatar/2021/11/Avatar_46J1tEI.PNG',0,1),(27,'pbkdf2_sha256$260000$FTSmhNzkwGWRwg5TDEjiR4$NKhpFZ8u3uQUL2JdPtR3o8FjM/GCmwI77eEzA7rgQzg=',NULL,0,'huynhnhan2','nhan@gmail.com',0,1,'2021-11-03 14:24:07.000000','nhan','huynh thien','0397198098','Male','static/avatar/2021/11/Avatar_BvbSIBM.PNG',0,1),(28,'pbkdf2_sha256$260000$uWImfojQUTocTDGOmZUHUz$jJPdKs6Tu099BX++4RH99lmHfuDbfmeXOqFji8cyiA0=',NULL,0,'trungtin','tin@gmail.com',0,1,'2021-11-04 01:10:40.000000','tin','bui trung','0901254822','Male','static/avatar/2021/11/Avatar_Kynr6no.PNG',0,1),(29,'pbkdf2_sha256$260000$S93zSohj83FnLOZPmsDLq4$yRPDeGaWHeTLwIoxPE7uLUoMsW+4Kd2h+ERKCCYC/Pc=',NULL,0,'trungkhang','trungkhang@gmail.com',0,1,'2021-11-04 01:28:58.000000','khang','bui trung','0901254822','Male','static/avatar/2021/11/avatar_nhatthanh_lRztTvA.jpg',0,1),(30,'pbkdf2_sha256$260000$zL6KGgXJxhK6jl6iLHKIid$hd3r+JanKq8ezeBjqdewd/HeV0jvhbeusvvuRqG51so=',NULL,0,'trungkien','trungkien@gmail.com',0,1,'2021-11-04 01:49:00.000000','kien','bui trung','0901254452','Male','static/avatar/2021/11/avatar_chanhung_2NouKi9.jpg',0,1),(31,'pbkdf2_sha256$260000$QU5Lch4Vz9yyTjoa2mUGTF$XzhIcyuEUH9ttR4ptt64LCptV5dPndZtRRAVU529Dvk=',NULL,0,'trangtu','trangtu@gmail.com',0,1,'2021-11-04 01:55:33.000000','tu','huynh trang','0901254993','Female','static/avatar/2021/11/avatar_anhthu_rOPpco4.jpg',0,1),(32,'pbkdf2_sha256$260000$4pTKU4MxnIg8yBccUYektQ$FgHwav/Lq5gIU4/u8cgSevy+jqvUcz2+E9FEEFEPxSw=',NULL,0,'tantu','tantu@gmail.com',0,1,'2021-11-05 05:21:06.000000','tu','huynh tan','0901254664','Male','static/avatar/2021/11/avatar_nhatkhan_EpB7XrZ.jpg',1,2),(33,'pbkdf2_sha256$260000$05NekzScFqFUlRpNZav9yi$dY+jXooVHvPpikk+cRabJI+SQqGM+n3SFUJahaMFtSI=',NULL,0,'ngocmai','ngocmai@gmail.com',0,1,'2021-11-05 05:30:23.000000','mai','bui thi ngoc','0902629856','Female','static/avatar/2021/11/avatar_camtu_6yPpjPU.jpg',1,2),(34,'pbkdf2_sha256$260000$NkCfuxJYFJmKyhSMVTJOTK$K1OcOVHOlAxu0hjU1NgjnprJ2DXBZjm7jSLoL9qDQsY=',NULL,0,'ducxuan','ducxuan@gmail.com',0,1,'2021-11-05 05:31:56.000000','xuan','ha duc','0902629682','Male','static/avatar/2021/11/avatar_quocvy_dswoWwC.jpg',1,2),(35,'pbkdf2_sha256$260000$obY8z5SnP5Kwk5sqAINSAk$S7GEaYKgngR8w8qPzi/4oGrWESFSmzFIzaGi1vp6jQQ=',NULL,0,'ducchinh','ducchinh@gmail.com',0,1,'2021-11-05 05:36:44.000000','chinh','ha duc','0918625314','Male','static/avatar/2021/11/avatar_nhatthanh_6qwBTGO.jpg',1,2),(36,'123456',NULL,0,'chankhang','chankhang@gmail.com',0,1,'2021-11-08 18:36:23.000000','khang','lam chan','0808425128','Male','static/avatar/2021/11/avatar_nhatkhan_SQuWk7E.jpg',0,1),(37,'pbkdf2_sha256$260000$6jSVD0QLwgL6Ff3LyZ2toH$Ww82ScFK3teioh7+mRB7euW8JIZH8ftc14ZRH9G94pU=',NULL,0,'tuannguyen','tuannguyen@gmail.com',0,1,'2021-11-08 18:53:02.337823','luc tuan','nguyen','0126458752','0','static/avatar/2021/11/Avatar_x4B5BVm.PNG',0,0),(38,'pbkdf2_sha256$260000$qU226zHVGs5MD9Spt8gECT$EYqV4uObo99wY3lgnSdEYo6NzZCA/qlqEjgGqC1dU/U=',NULL,0,'vyne123','abc@gmail.com',0,1,'2021-11-08 19:01:49.008357','admin','nguyen nhat','0168623488','Female','static/avatar/2021/11/avatar_phucsot_OAE17QM.jpg',0,0),(41,'pbkdf2_sha256$260000$hyJjfVsAP5lEjgjeDwAjRo$fKiGSkrsSzK0ug9zPD/JlEUpLAcdL6fSUzh1VWfxrOI=',NULL,0,'kien123123','abc@gmail.com',0,0,'2021-11-08 19:04:29.366149','thang','nguyen nhat','0168623488','Female','static/avatar/2021/11/avatar_phucsot_b3lmDpJ.jpg',1,0);
/*!40000 ALTER TABLE `deliveryapp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryapp_user_groups`
--

DROP TABLE IF EXISTS `deliveryapp_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryapp_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deliveryapp_user_groups_user_id_group_id_43e14eaf_uniq` (`user_id`,`group_id`),
  KEY `deliveryapp_user_groups_group_id_222e31b7_fk_auth_group_id` (`group_id`),
  CONSTRAINT `deliveryapp_user_groups_group_id_222e31b7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `deliveryapp_user_groups_user_id_aa5a7d76_fk_deliveryapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `deliveryapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_user_groups`
--

LOCK TABLES `deliveryapp_user_groups` WRITE;
/*!40000 ALTER TABLE `deliveryapp_user_groups` DISABLE KEYS */;
INSERT INTO `deliveryapp_user_groups` VALUES (34,1,1),(3,2,2),(13,3,1),(12,4,1),(11,5,1),(10,6,1),(9,7,1),(21,8,2),(7,9,1),(6,10,1),(2,11,2),(5,12,1),(4,13,1),(1,14,2),(16,20,2),(17,21,1),(18,22,1),(19,23,1),(20,24,1),(22,25,1),(23,26,1),(24,27,1),(25,28,1),(35,29,1),(26,30,1),(27,31,1),(28,32,2),(29,33,2),(30,34,2),(32,35,2),(33,36,1),(36,37,1),(37,38,1),(40,41,2);
/*!40000 ALTER TABLE `deliveryapp_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryapp_user_user_permissions`
--

DROP TABLE IF EXISTS `deliveryapp_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryapp_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deliveryapp_user_user_pe_user_id_permission_id_f7820e83_uniq` (`user_id`,`permission_id`),
  KEY `deliveryapp_user_use_permission_id_c6599b39_fk_auth_perm` (`permission_id`),
  CONSTRAINT `deliveryapp_user_use_permission_id_c6599b39_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `deliveryapp_user_use_user_id_fbc2bb5c_fk_deliverya` FOREIGN KEY (`user_id`) REFERENCES `deliveryapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_user_user_permissions`
--

LOCK TABLES `deliveryapp_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `deliveryapp_user_user_permissions` DISABLE KEYS */;
INSERT INTO `deliveryapp_user_user_permissions` VALUES (28,2,21),(29,2,25),(30,2,26),(31,2,27),(32,2,28),(17,2,37),(18,2,38),(19,2,39),(20,2,40),(21,2,41),(22,2,42),(23,2,43),(24,2,44),(25,2,45),(26,2,46),(27,2,47),(12,2,48);
/*!40000 ALTER TABLE `deliveryapp_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_deliveryapp_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_deliveryapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `deliveryapp_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-26 14:05:45.345008','2','username: kienluc',1,'[{\"added\": {}}]',6,1),(2,'2021-10-26 14:06:22.051288','1','username: admin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Phone\", \"Gender\", \"Avatar\"]}}]',6,1),(3,'2021-10-26 14:06:40.656325','2','Shipper ID: 352634578',1,'[{\"added\": {}}]',9,1),(4,'2021-10-26 14:08:06.441285','3','username: test',1,'[{\"added\": {}}]',6,1),(5,'2021-10-26 14:08:25.922994','1','Creator: vy nguyen quoc\n Active: True\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: False',1,'[{\"added\": {}}]',10,1),(6,'2021-10-26 14:08:59.660165','1','Shipper: kien luc tuan\nCost: 20000',1,'[{\"added\": {}}]',7,1),(7,'2021-10-26 14:09:22.523107','1','Fast',1,'[{\"added\": {}}]',8,1),(8,'2021-10-26 14:10:06.014355','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000, \nPay method: 2',1,'[{\"added\": {}}]',11,1),(9,'2021-10-26 14:11:24.806634','1','Customer: vy nguyen quoc,\nshipper: kien luc tuan,\nComment: good shipper,\nrate: 5,\n',1,'[{\"added\": {}}]',12,1),(10,'2021-10-27 04:29:31.895006','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(11,'2021-10-27 04:29:50.000350','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(12,'2021-10-27 04:32:01.962250','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(13,'2021-10-27 09:02:51.303834','1','Hàng hóa ',1,'[{\"added\": {}}]',13,1),(14,'2021-10-27 09:16:17.840694','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Pickup address\", \"Product cate\"]}}]',11,1),(15,'2021-10-27 09:47:29.090239','1','Chi tiết',1,'[{\"added\": {}}]',14,1),(16,'2021-10-27 09:48:55.202012','1','Order Detail - Order ID 1',2,'[]',14,1),(17,'2021-10-27 11:54:00.636050','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 1',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(18,'2021-10-27 11:54:13.037332','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 0',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(19,'2021-10-27 11:54:19.439239','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(20,'2021-10-31 07:31:12.963171','3','Dược phẩm',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',13,1),(21,'2021-11-01 06:47:09.784240','5','Shipper ID: 352545528',3,'',9,1),(22,'2021-11-01 06:47:09.794148','4','Shipper ID: 352545226',3,'',9,1),(23,'2021-11-01 06:47:09.798418','3','Shipper ID: 352634502',3,'',9,1),(24,'2021-11-01 06:48:09.912447','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(25,'2021-11-01 06:48:20.035941','3','username: duongduc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(26,'2021-11-01 06:48:51.091825','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(27,'2021-11-01 06:50:01.666440','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(28,'2021-11-01 09:16:05.733116','1','customer',1,'[{\"added\": {}}]',3,1),(29,'2021-11-01 09:16:59.175682','2','shipper',1,'[{\"added\": {}}]',3,1),(30,'2021-11-01 12:19:49.458309','3','username: duongduc',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(31,'2021-11-01 12:20:02.114849','4','username: quocvy',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(32,'2021-11-01 12:20:42.184724','5','username: chanhung',2,'[{\"changed\": {\"fields\": [\"Username\", \"Email address\", \"First name\", \"Last name\", \"Avatar\"]}}]',6,1),(33,'2021-11-01 12:21:32.716110','6','username: huuthang',1,'[{\"added\": {}}]',6,1),(34,'2021-11-01 12:22:21.552361','7','username: nhatkhan',1,'[{\"added\": {}}]',6,1),(35,'2021-11-01 12:23:07.533120','8','username: camry',1,'[{\"added\": {}}]',6,1),(36,'2021-11-01 12:23:57.148051','9','username: nhatthanh',1,'[{\"added\": {}}]',6,1),(37,'2021-11-01 12:24:37.646308','10','username: thanhlong',1,'[{\"added\": {}}]',6,1),(38,'2021-11-01 12:25:17.834592','11','username: phucsot',1,'[{\"added\": {}}]',6,1),(39,'2021-11-01 12:26:21.214118','12','username: anhthu',1,'[{\"added\": {}}]',6,1),(40,'2021-11-01 12:27:21.741926','13','username: camtu',1,'[{\"added\": {}}]',6,1),(41,'2021-11-01 12:27:49.924175','13','username: camtu',2,'[]',6,1),(42,'2021-11-02 02:58:39.565384','14','Shipper ID: 123456789251',1,'[{\"added\": {}}]',9,1),(43,'2021-11-02 03:06:38.241860','11','Shipper ID: 352574258',1,'[{\"added\": {}}]',9,1),(44,'2021-11-02 03:06:50.490727','14','Shipper ID: 352569872',2,'[{\"changed\": {\"fields\": [\"Id number\"]}}]',9,1),(45,'2021-11-02 03:17:26.636043','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Is shipper\"]}}]',6,1),(46,'2021-11-02 03:17:38.484658','14','username: test',2,'[{\"changed\": {\"fields\": [\"Is shipper\"]}}]',6,1),(47,'2021-11-02 03:18:04.098212','11','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Is shipper\"]}}]',6,1),(48,'2021-11-02 03:34:01.379042','14','username: test',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(49,'2021-11-02 03:34:06.887195','14','username: test',2,'[]',6,1),(50,'2021-11-02 03:34:14.781297','11','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(51,'2021-11-02 03:34:25.868551','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(52,'2021-11-02 03:44:18.318254','3','Shipper ID: 352598632',1,'[{\"added\": {}}]',9,1),(53,'2021-11-02 03:44:31.314606','3','Shipper ID: 352598632',3,'',9,1),(54,'2021-11-02 04:15:06.096795','1','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Customer\"]}}]',11,1),(55,'2021-11-02 04:27:47.554116','1','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 0',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(56,'2021-11-02 04:28:10.190783','1','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(57,'2021-11-02 05:08:35.624433','3','Customer: thang tran huu\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-02 05:08:35.618855+00:00, \nStatus: 0,\nTotal price: 65000, \nPay method: 2',1,'[{\"added\": {}}]',11,1),(58,'2021-11-02 05:25:10.784042','1','Creator: duc le duong\n Active: True\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Product cate\", \"Service cate\"]}}]',10,1),(59,'2021-11-02 05:25:22.037363','1','Creator: duc le duong\n Active: True\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Pickup address\"]}}]',10,1),(60,'2021-11-02 05:25:56.489020','2','normal express',1,'[{\"added\": {}}]',8,1),(61,'2021-11-02 05:26:10.152784','1','Fast',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',8,1),(62,'2021-11-02 05:26:50.747159','3','Saving express',1,'[{\"added\": {}}]',8,1),(63,'2021-11-02 05:27:24.718589','14','username: test',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',6,1),(64,'2021-11-02 05:35:51.766874','13','username: camtu',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(65,'2021-11-02 05:35:56.335747','12','username: anhthu',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(66,'2021-11-02 05:36:00.879830','10','username: thanhlong',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(67,'2021-11-02 05:36:06.922766','10','username: thanhlong',2,'[]',6,1),(68,'2021-11-02 05:36:15.480339','13','username: camtu',2,'[]',6,1),(69,'2021-11-02 05:36:25.633970','9','username: nhatthanh',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(70,'2021-11-02 05:36:30.819186','9','username: nhatthanh',2,'[]',6,1),(71,'2021-11-02 05:36:36.218639','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(72,'2021-11-02 05:36:39.513038','8','username: camry',2,'[]',6,1),(73,'2021-11-02 05:36:43.557871','8','username: camry',2,'[]',6,1),(74,'2021-11-03 12:21:37.955413','7','username: nhatkhan',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(75,'2021-11-03 12:21:46.156127','6','username: huuthang',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(76,'2021-11-03 12:21:58.174303','5','username: chanhung',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(77,'2021-11-03 12:22:14.569023','4','username: quocvy',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(78,'2021-11-03 12:23:12.631741','3','username: duongduc',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(79,'2021-11-03 12:38:00.704610','15','username: moly',3,'',6,1),(80,'2021-11-03 12:39:24.166726','16','username: moly',3,'',6,1),(81,'2021-11-03 12:43:35.358730','17','username: moly',3,'',6,1),(82,'2021-11-03 12:45:15.955772','18','username: moly',3,'',6,1),(83,'2021-11-03 12:46:58.362246','19','username: moly',3,'',6,1),(84,'2021-11-03 13:11:18.019384','20','Shipper ID: 352545268',1,'[{\"added\": {}}]',9,1),(85,'2021-11-03 13:46:19.349661','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Is shipper\"]}}]',6,1),(86,'2021-11-05 05:24:37.817895','32','username: tantu',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(87,'2021-11-05 05:27:08.856753','20','username: moly',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(88,'2021-11-05 05:27:18.528062','14','username: test',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(89,'2021-11-05 05:27:33.379943','11','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(90,'2021-11-05 05:27:47.973659','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(91,'2021-11-05 05:27:57.469628','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(92,'2021-11-05 05:35:37.273952','34','Shipper ID: 3525452945',1,'[{\"added\": {}}]',9,1),(93,'2021-11-06 12:57:44.439205','3','Customer: thang tran huu\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-02 05:08:35.618855+00:00, \nStatus: 1,\nTotal price: 65000.00, \nPay method: 0',2,'[{\"changed\": {\"fields\": [\"Status\", \"Pay method\"]}}]',11,1),(94,'2021-11-06 12:58:52.243451','3','Customer: thang tran huu\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-02 05:08:35.618855+00:00, \nStatus: 1,\nTotal price: 65000.00, \nPay method: 0',2,'[]',11,1),(95,'2021-11-06 12:59:06.892981','3','Customer: thang tran huu\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-02 05:08:35.618855+00:00, \nStatus: 1,\nTotal price: 65000.00, \nPay method: 0',2,'[]',11,1),(96,'2021-11-07 13:20:35.738115','35','username: ducchinh',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Choice\", \"Is shipper\"]}}]',6,1),(97,'2021-11-07 15:36:51.107122','7','Customer: thu to ngoc anh\nShipper: ry nguyen hao cam, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-07 15:35:29.624657+00:00, \nStatus: 0,\nTotal price: 50199.00, \nPay method: 2',3,'',11,1),(98,'2021-11-07 15:38:35.472652','8','Customer: thu to ngoc anh\nShipper: test test2, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-07 15:37:00.562973+00:00, \nStatus: 0,\nTotal price: 61302.00, \nPay method: 2',3,'',11,1),(99,'2021-11-07 15:39:53.365734','9','Customer: thu to ngoc anh\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-07 15:38:46.636469+00:00, \nStatus: 0,\nTotal price: 87309.00, \nPay method: 1',3,'',11,1),(100,'2021-11-07 15:41:56.929192','10','Customer: thu to ngoc anh\nShipper: chinh ha duc, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-07 15:40:07.473572+00:00, \nStatus: 0,\nTotal price: 27747.00, \nPay method: 1',3,'',11,1),(101,'2021-11-07 15:42:40.764499','11','Customer: thu to ngoc anh\nShipper: moly clea, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-07 15:42:09.336172+00:00, \nStatus: 0,\nTotal price: 20798.00, \nPay method: 2',3,'',11,1),(102,'2021-11-08 16:26:09.054560','5','Creator: hung ha chan\n Active: True\nCreated date: 2021-11-08 15:58:41.182649+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Customer received\", \"Phone\"]}}]',10,1),(103,'2021-11-08 16:26:19.794809','2','Creator: ry nguyen hao cam\n Active: True\nCreated date: 2021-11-02 06:01:28.921827+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Customer received\", \"Phone\"]}}]',10,1),(104,'2021-11-08 16:35:34.970763','1','Creator: duc le duong\n Active: True\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Customer received\", \"Phone\"]}}]',10,1),(105,'2021-11-08 18:37:08.156178','36','username: chankhang',1,'[{\"added\": {}}]',6,1),(106,'2021-11-08 18:39:16.938143','1','username: admin',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(107,'2021-11-08 18:41:27.903620','1','username: admin',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Avatar\"]}}]',6,1),(108,'2021-11-08 18:41:51.558249','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(109,'2021-11-08 18:42:19.070169','3','username: duongduc',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(110,'2021-11-08 18:42:46.973880','4','username: quocvy',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(111,'2021-11-08 18:43:57.075614','5','username: chanhung',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(112,'2021-11-08 18:44:09.832083','6','username: huuthang',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(113,'2021-11-08 18:44:29.968911','7','username: nhatkhan',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(114,'2021-11-08 18:44:45.522059','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(115,'2021-11-08 18:44:59.904472','9','username: nhatthanh',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(116,'2021-11-08 18:45:23.622739','10','username: thanhlong',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(117,'2021-11-08 18:45:36.257637','11','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(118,'2021-11-08 18:45:47.357836','12','username: anhthu',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(119,'2021-11-08 18:45:55.713700','13','username: camtu',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(120,'2021-11-08 18:46:10.915852','14','username: test',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(121,'2021-11-08 18:46:32.400778','20','username: moly',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(122,'2021-11-08 18:47:07.697326','35','username: ducchinh',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(123,'2021-11-08 18:47:16.688581','34','username: ducxuan',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(124,'2021-11-08 18:47:28.506306','33','username: ngocmai',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(125,'2021-11-08 18:47:47.957971','32','username: tantu',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(126,'2021-11-08 18:47:59.551898','31','username: trangtu',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(127,'2021-11-08 18:48:21.606060','30','username: trungkien',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(128,'2021-11-08 18:48:59.962242','21','username: sonminh',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(129,'2021-11-08 18:49:11.712393','22','username: ngochien',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(130,'2021-11-08 18:49:33.620474','29','username: trungkhang',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Avatar\", \"Choice\"]}}]',6,1),(131,'2021-11-08 18:49:46.844723','23','username: khailuc',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(132,'2021-11-08 18:50:13.296942','24','username: khangluc',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(133,'2021-11-08 18:50:22.330894','25','username: thiennhan',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(134,'2021-11-08 18:50:31.918759','28','username: trungtin',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(135,'2021-11-08 18:51:49.030953','27','username: huynhnhan2',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(136,'2021-11-08 18:51:59.643046','26','username: huynhnhan',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(137,'2021-11-08 18:52:10.167593','27','username: huynhnhan2',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(138,'2021-11-08 19:03:49.927957','39','username: kien123123',3,'',6,1),(139,'2021-11-08 19:04:18.189054','40','username: kien123123',3,'',6,1),(140,'2021-11-09 08:37:12.290720','1','Shipper: kien luc tuan\nCost: 20000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(141,'2021-11-09 08:39:04.775728','1','Shipper: kien luc tuan\nCost: 20000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(142,'2021-11-09 09:07:54.104173','1','Shipper: kien luc tuan\nCost: 20000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(143,'2021-11-09 12:20:33.692162','1','Shipper: kien luc tuan\nCost: 20000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(144,'2021-11-09 12:39:44.666172','1','Shipper: kien luc tuan\nCost: 20000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(145,'2021-11-09 12:40:24.232255','18','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:27:30.490320+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1),(146,'2021-11-09 12:40:24.237438','17','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:27:03.437517+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1),(147,'2021-11-09 12:40:24.241409','16','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:26:40.685248+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1),(148,'2021-11-09 12:40:24.244386','15','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:26:31.210309+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1),(149,'2021-11-09 12:40:24.248417','14','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:25:37.605161+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1),(150,'2021-11-09 12:40:24.251370','13','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:25:31.949022+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'deliveryapp','auction'),(11,'deliveryapp','order'),(14,'deliveryapp','orderdetail'),(10,'deliveryapp','orderpost'),(13,'deliveryapp','productcategory'),(12,'deliveryapp','rating'),(8,'deliveryapp','service'),(9,'deliveryapp','shipper'),(6,'deliveryapp','user'),(16,'oauth2_provider','accesstoken'),(15,'oauth2_provider','application'),(17,'oauth2_provider','grant'),(19,'oauth2_provider','idtoken'),(18,'oauth2_provider','refreshtoken'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-26 14:03:33.189245'),(2,'contenttypes','0002_remove_content_type_name','2021-10-26 14:03:33.292375'),(3,'auth','0001_initial','2021-10-26 14:03:33.671857'),(4,'auth','0002_alter_permission_name_max_length','2021-10-26 14:03:33.738530'),(5,'auth','0003_alter_user_email_max_length','2021-10-26 14:03:33.746541'),(6,'auth','0004_alter_user_username_opts','2021-10-26 14:03:33.755013'),(7,'auth','0005_alter_user_last_login_null','2021-10-26 14:03:33.761959'),(8,'auth','0006_require_contenttypes_0002','2021-10-26 14:03:33.766647'),(9,'auth','0007_alter_validators_add_error_messages','2021-10-26 14:03:33.774626'),(10,'auth','0008_alter_user_username_max_length','2021-10-26 14:03:33.784594'),(11,'auth','0009_alter_user_last_name_max_length','2021-10-26 14:03:33.792814'),(12,'auth','0010_alter_group_name_max_length','2021-10-26 14:03:33.811645'),(13,'auth','0011_update_proxy_permissions','2021-10-26 14:03:33.820893'),(14,'auth','0012_alter_user_first_name_max_length','2021-10-26 14:03:33.828871'),(15,'deliveryapp','0001_initial','2021-10-26 14:03:35.561733'),(16,'admin','0001_initial','2021-10-26 14:03:35.908745'),(17,'admin','0002_logentry_remove_auto_add','2021-10-26 14:03:35.933320'),(18,'admin','0003_logentry_add_action_flag_choices','2021-10-26 14:03:35.946590'),(19,'sessions','0001_initial','2021-10-26 14:03:35.998782'),(20,'deliveryapp','0002_order_pickup_address','2021-10-27 08:32:54.840454'),(21,'deliveryapp','0003_productcategory','2021-10-27 08:41:30.902486'),(22,'deliveryapp','0004_order_product_cate','2021-10-27 08:42:47.594816'),(23,'deliveryapp','0005_orderdetail','2021-10-27 09:45:50.727001'),(24,'oauth2_provider','0001_initial','2021-10-31 07:40:28.479298'),(25,'oauth2_provider','0002_auto_20190406_1805','2021-10-31 07:40:28.728723'),(26,'oauth2_provider','0003_auto_20201211_1314','2021-10-31 07:40:28.818801'),(27,'oauth2_provider','0004_auto_20200902_2022','2021-10-31 07:40:29.413812'),(28,'deliveryapp','0006_orderpost_pickup_address','2021-11-01 07:52:50.186810'),(29,'deliveryapp','0007_alter_auction_shipper','2021-11-01 08:31:55.386613'),(30,'deliveryapp','0008_auto_20211102_0856','2021-11-02 01:56:35.988955'),(31,'deliveryapp','0009_auto_20211102_0956','2021-11-02 02:56:23.837589'),(32,'deliveryapp','0010_user_is_shipper','2021-11-02 03:16:23.773167'),(33,'deliveryapp','0011_auto_20211102_1059','2021-11-02 03:59:29.952253'),(34,'deliveryapp','0012_alter_order_auction','2021-11-02 04:27:11.393588'),(35,'deliveryapp','0013_auto_20211102_1219','2021-11-02 05:19:20.801841'),(36,'deliveryapp','0014_user_choice','2021-11-04 01:46:44.683069'),(37,'deliveryapp','0015_alter_user_choice','2021-11-05 05:26:19.055706'),(38,'deliveryapp','0016_alter_user_choice','2021-11-06 08:59:23.945662'),(39,'deliveryapp','0017_alter_user_choice','2021-11-06 08:59:23.995383'),(40,'deliveryapp','0018_auto_20211108_2322','2021-11-08 16:22:36.041011'),(41,'deliveryapp','0019_alter_user_avatar','2021-11-08 18:35:36.401608'),(42,'deliveryapp','0020_auto_20211109_0140','2021-11-08 18:40:45.108047'),(43,'deliveryapp','0021_alter_user_choice','2021-11-08 18:51:03.360878'),(44,'deliveryapp','0022_alter_orderdetail_order','2021-11-09 02:32:25.149213'),(45,'deliveryapp','0023_alter_auction_shipper','2021-11-09 07:30:20.193406'),(46,'deliveryapp','0024_alter_auction_shipper','2021-11-09 07:31:14.550740'),(47,'deliveryapp','0025_alter_auction_shipper','2021-11-09 07:46:35.381405');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('mty5bxece77ggburkikbgzq1nq12awge','.eJxVjDsOwjAQBe_iGlneNesPJX3OYPmzxgGUSHFSIe4OkVJA-2bmvUSI29rC1nkJYxEXAeL0u6WYHzztoNzjdJtlnqd1GZPcFXnQLoe58PN6uH8HLfb2rXUFTBU1k7LK4Fk78hALAjswyoL3pLIDy5YImZWCiBpT8aYCeXLi_QGlbDYd:1mkPrL:Ypt3D5c_5MZp2Ady9pzJR0vz163Tkm2wCHd56wcADiE','2021-11-23 12:04:15.449406');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_deliverya` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_deliverya` FOREIGN KEY (`user_id`) REFERENCES `deliveryapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'bg0FSDoEQzsAPYH650rZeA5neGBJCx','2021-10-31 17:52:50.951816','read write',1,2,'2021-10-31 07:52:50.952852','2021-10-31 07:52:50.952852',NULL,NULL),(2,'5BbTh2zU3bRg42yD99HwDffj3nxDSl','2021-10-31 17:53:18.515952','read write',1,1,'2021-10-31 07:53:18.515952','2021-10-31 07:53:18.515952',NULL,NULL),(3,'fbwz1Eo4ysBD0x4iXczDWfvqElkTzk','2021-11-01 13:43:54.112774','read write',1,2,'2021-11-01 03:43:54.113773','2021-11-01 03:43:54.113773',NULL,NULL),(4,'drTNJOvn74fxG8o2bK2hjSL4t6JftA','2021-11-01 14:16:20.383312','read write',1,4,'2021-11-01 04:16:20.384310','2021-11-01 04:16:20.384310',NULL,NULL),(5,'RScz87BE3SxXcp4Rcp3PzMASPp8XB5','2021-11-01 18:53:54.561489','read write',1,3,'2021-11-01 08:53:54.563486','2021-11-01 08:53:54.563486',NULL,NULL),(6,'b3G1QrIp2YETfqN9xFnCWCRZh5vb0E','2021-11-01 18:58:59.297123','read write',1,2,'2021-11-01 08:58:59.298088','2021-11-01 08:58:59.298088',NULL,NULL),(7,'iXu8O6tSJhiVBrDgAmN4l7lo54Z7ez','2021-11-01 21:57:25.004747','read write',1,3,'2021-11-01 11:57:25.004747','2021-11-01 11:57:25.004747',NULL,NULL),(8,'BsGT1Cs8GWzmdvnsMB2qae94KlVNoF','2021-11-01 21:59:11.046137','read write',1,2,'2021-11-01 11:59:11.046137','2021-11-01 11:59:11.046137',NULL,NULL),(9,'Ynpcw7qi5NyQHETQEZoAoCt7WeF6AY','2021-11-01 21:59:55.049195','read write',1,3,'2021-11-01 11:59:55.049195','2021-11-01 11:59:55.049195',NULL,NULL),(10,'s1gZUXo0zpSRLEjZzWeTfXQ9xqgY7z','2021-11-02 01:26:50.396618','read write',1,3,'2021-11-01 15:26:50.397615','2021-11-01 15:26:50.397615',NULL,NULL),(11,'tCWvrXYRneeF7dGZJbHZTG25zcKo2y','2021-11-02 12:52:59.620810','read write',1,2,'2021-11-02 02:52:59.621844','2021-11-02 02:52:59.621844',NULL,NULL),(12,'igMtBmfzGBsbDeMOh7m6SFE4e4inMj','2021-11-02 12:56:49.553541','read write',1,2,'2021-11-02 02:56:49.553541','2021-11-02 02:56:49.553541',NULL,NULL),(13,'iMiMbI2FmLnMjaUILsP4ExHVozChDX','2021-11-02 12:58:51.502170','read write',1,14,'2021-11-02 02:58:51.502170','2021-11-02 02:58:51.502170',NULL,NULL),(14,'ymSmubgql6GJPPd26ihgmiFaQeJSk2','2021-11-02 13:07:34.006131','read write',1,11,'2021-11-02 03:07:34.007128','2021-11-02 03:07:34.007128',NULL,NULL),(15,'tOp4GaQKZInox6BWjifiURiqZunK57','2021-11-02 13:09:11.973625','read write',1,14,'2021-11-02 03:09:11.973625','2021-11-02 03:09:11.973625',NULL,NULL),(16,'lv7HaBVbP7nJP9pIOtsPqCyRw5e8EW','2021-11-02 13:11:43.655062','read write',1,11,'2021-11-02 03:11:43.655062','2021-11-02 03:11:43.656060',NULL,NULL),(17,'WQEID2479ModQ5tgtKQZvR1ybDgDPe','2021-11-02 13:12:26.428250','read write',1,11,'2021-11-02 03:12:26.429248','2021-11-02 03:12:26.429248',NULL,NULL),(18,'Zn2cxXrO4s1kheXGglgMZ93sHoczoA','2021-11-02 13:32:22.628354','read write',1,14,'2021-11-02 03:32:22.628354','2021-11-02 03:32:22.628354',NULL,NULL),(19,'vViG6wd9tnZZeNvX5sVxyWUMB77O7F','2021-11-02 13:35:00.106600','read write',1,14,'2021-11-02 03:35:00.106600','2021-11-02 03:35:00.107599',NULL,NULL),(20,'gJpqEVPg8mmhsMGtCgrUfS5BS8w1iK','2021-11-02 13:41:33.036373','read write',1,14,'2021-11-02 03:41:33.036373','2021-11-02 03:41:33.036373',NULL,NULL),(21,'XuDpE5hclrq0In47dwFnw9QzyI5lLW','2021-11-02 13:42:06.322308','read write',1,2,'2021-11-02 03:42:06.322308','2021-11-02 03:42:06.322308',NULL,NULL),(22,'EcYgSsMvg1DxcPbA5fiZXOWUxN4aS6','2021-11-02 13:45:44.250433','read write',1,2,'2021-11-02 03:45:44.250433','2021-11-02 03:45:44.250433',NULL,NULL),(23,'YGxk07GaUG4p6xJyoXkqVlY57AcFwt','2021-11-02 14:08:23.506353','read write',1,1,'2021-11-02 04:08:23.506353','2021-11-02 04:08:23.506353',NULL,NULL),(24,'aQuL11ruxX1rJ3SNnaOgCIbKm4g7nR','2021-11-02 14:10:31.913774','read write',1,3,'2021-11-02 04:10:31.913774','2021-11-02 04:10:31.913774',NULL,NULL),(25,'KHJGRM5924gXJ0X9J8OePubjE7Y7NQ','2021-11-02 14:16:00.082948','read write',1,3,'2021-11-02 04:16:00.082948','2021-11-02 04:16:00.082948',NULL,NULL),(26,'TlF3CKo0knXYjqAuYkzGOt9DeVSE3F','2021-11-02 14:32:11.043195','read write',1,5,'2021-11-02 04:32:11.043195','2021-11-02 04:32:11.043195',NULL,NULL),(27,'oadzLune0pooBzMAKqN3jDoTQHi0VV','2021-11-02 14:39:46.191130','read write',1,11,'2021-11-02 04:39:46.192129','2021-11-02 04:39:46.192129',NULL,NULL),(28,'3heiumQRnpJQ0LK7eEd6lTI6Sc7Oba','2021-11-02 14:40:55.855432','read write',1,5,'2021-11-02 04:40:55.855432','2021-11-02 04:40:55.855432',NULL,NULL),(29,'bSJnFIJocK0dEP87JP2zAQidurlZkr','2021-11-02 14:41:02.268926','read write',1,11,'2021-11-02 04:41:02.269925','2021-11-02 04:41:02.269925',NULL,NULL),(30,'lEeNSaRiexV8KRYv7qB0FyLjlqjwQn','2021-11-02 14:41:04.578688','read write',1,5,'2021-11-02 04:41:04.578688','2021-11-02 04:41:04.578688',NULL,NULL),(31,'SCkcxcUG8zEJ2EH3BkQZK2nJN1XXWU','2021-11-02 14:46:30.399583','read write',1,5,'2021-11-02 04:46:30.399583','2021-11-02 04:46:30.399583',NULL,NULL),(32,'ttsRl6LqfLbpWyyq1viUFNx0xRofWS','2021-11-02 14:51:12.508741','read write',1,5,'2021-11-02 04:51:12.508741','2021-11-02 04:51:12.508741',NULL,NULL),(33,'Wgv8DFVM76Uk4M1cAAXQSfwrKmz4gP','2021-11-02 15:04:43.163107','read write',1,8,'2021-11-02 05:04:43.163107','2021-11-02 05:04:43.163107',NULL,NULL),(34,'4N5JRmk8oLOaeDufkBi1DbANlD6r7c','2021-11-02 15:05:50.017508','read write',1,5,'2021-11-02 05:05:50.017508','2021-11-02 05:05:50.017508',NULL,NULL),(35,'LVFaDI6wn6ikyNkpllfJH05wveseA6','2021-11-02 15:06:29.266495','read write',1,8,'2021-11-02 05:06:29.266495','2021-11-02 05:06:29.266495',NULL,NULL),(36,'mFa0tLeKicQTsGf54xOCOlf5Lw1qa8','2021-11-02 15:06:46.182260','read write',1,5,'2021-11-02 05:06:46.182260','2021-11-02 05:06:46.182260',NULL,NULL),(37,'UaeILcJVhtcLCVK2CAITWTJ3ExXdXZ','2021-11-02 15:09:18.539736','read write',1,6,'2021-11-02 05:09:18.540733','2021-11-02 05:09:18.540733',NULL,NULL),(38,'HtQAssk2shfsUh1QXE9c3iisDEPlOo','2021-11-02 15:41:46.976814','read write',1,8,'2021-11-02 05:41:46.976814','2021-11-02 05:41:46.976814',NULL,NULL),(39,'UURIvDPU3k2Q4GYyVLMOFXDLRPhoM0','2021-11-02 15:58:38.309989','read write',1,8,'2021-11-02 05:58:38.310987','2021-11-02 05:58:38.310987',NULL,NULL),(40,'o9MO7BlCWDB7aSJstXHeWaHOx7ELf2','2021-11-02 16:03:58.095368','read write',1,8,'2021-11-02 06:03:58.096366','2021-11-02 06:03:58.096366',NULL,NULL),(41,'2237Qw2D6StLCWohdqwZdskadIylfJ','2021-11-02 16:04:20.521324','read write',1,2,'2021-11-02 06:04:20.521324','2021-11-02 06:04:20.521324',NULL,NULL),(42,'5IXTIBqiEi581brCxgerTTHDtHzmTe','2021-11-02 16:07:41.238846','read write',1,2,'2021-11-02 06:07:41.238846','2021-11-02 06:07:41.238846',NULL,NULL),(43,'5e3QdSS5cx6Bn1qettURVm7FpCYaZO','2021-11-02 16:10:06.734189','read write',1,8,'2021-11-02 06:10:06.735185','2021-11-02 06:10:06.735185',NULL,NULL),(44,'v0kYoINBdfHHkmu54KIrPSaFTICyyN','2021-11-02 16:55:10.591575','read write',1,9,'2021-11-02 06:55:10.592577','2021-11-02 06:55:10.592577',NULL,NULL),(45,'G13mEIXGXe5r5HdbeCUu0eWKj4Q50O','2021-11-02 16:57:58.499823','read write',1,9,'2021-11-02 06:57:58.500819','2021-11-02 06:57:58.500819',NULL,NULL),(46,'cLHru9zDPjJJeB7pIR81tt0Hkh5XiB','2021-11-02 17:01:01.102885','read write',1,13,'2021-11-02 07:01:01.102885','2021-11-02 07:01:01.102885',NULL,NULL),(47,'xLKZVYb3o37hY7qyTCk6xF2B5AbIVt','2021-11-02 17:01:32.565327','read write',1,10,'2021-11-02 07:01:32.566325','2021-11-02 07:01:32.566325',NULL,NULL),(48,'pKsTb6Aj8VLOjoCwC0MubTls6Ycur0','2021-11-02 17:04:28.698877','read write',1,3,'2021-11-02 07:04:28.699907','2021-11-02 07:04:28.699907',NULL,NULL),(49,'3YTt0TQfnwNi65jfhZqyUDcn4DaVCW','2021-11-02 17:14:48.236825','read write',1,14,'2021-11-02 07:14:48.237823','2021-11-02 07:14:48.237823',NULL,NULL),(50,'cJXam0p9fWROrkl4hGuEUC1JGhAA4S','2021-11-02 17:17:06.934926','read write',1,13,'2021-11-02 07:17:06.934926','2021-11-02 07:17:06.935923',NULL,NULL),(51,'FrNulqfe3mj76KTAv7880L4MgmiXui','2021-11-02 17:17:49.055140','read write',1,13,'2021-11-02 07:17:49.055140','2021-11-02 07:17:49.055140',NULL,NULL),(52,'YSKtaXPM0Re4Ckh7IMexTjSiP0bA7M','2021-11-02 17:26:52.073921','read write',1,13,'2021-11-02 07:26:52.073921','2021-11-02 07:26:52.073921',NULL,NULL),(53,'KaXWFgz2eP2YDRL5Uk9jsJKQSXhNJZ','2021-11-02 17:28:32.977090','read write',1,11,'2021-11-02 07:28:32.978088','2021-11-02 07:28:32.978088',NULL,NULL),(54,'YFonCBXTFQ3mcpvf46rj2yZl5YbBGa','2021-11-02 17:29:17.477573','read write',1,13,'2021-11-02 07:29:17.478607','2021-11-02 07:29:17.478607',NULL,NULL),(55,'iOLykf2h4axPZ77aW7OlJdo4AOK4aY','2021-11-02 17:31:04.278955','read write',1,11,'2021-11-02 07:31:04.278955','2021-11-02 07:31:04.278955',NULL,NULL),(56,'iRASZPr426jA6Fwy7NkP8v6zbWbMBj','2021-11-02 17:34:14.436515','read write',1,13,'2021-11-02 07:34:14.437511','2021-11-02 07:34:14.437511',NULL,NULL),(57,'0sLzFzadkV7kO0CqA1oDreNCVn7qdV','2021-11-02 17:34:36.432368','read write',1,11,'2021-11-02 07:34:36.433368','2021-11-02 07:34:36.433368',NULL,NULL),(58,'VWd2ZrJrGLqwTH3yvBK1uzMQqGRLsM','2021-11-03 22:16:34.374192','read write',1,11,'2021-11-03 12:16:34.375100','2021-11-03 12:16:34.375100',NULL,NULL),(59,'lHkdbkoK3EuNslImKReSp3wHdGhhqy','2021-11-03 22:17:11.490705','read write',1,13,'2021-11-03 12:17:11.490705','2021-11-03 12:17:11.490705',NULL,NULL),(60,'XrMGsrlACFIIndaZdb4pwds4yDhCgD','2021-11-03 23:40:20.418880','read write',1,11,'2021-11-03 13:40:20.418880','2021-11-03 13:40:20.418880',NULL,NULL),(61,'AUTAocmXvtGhWZCydhrPOTyRAk03Su','2021-11-04 11:14:18.379214','read write',1,28,'2021-11-04 01:14:18.379214','2021-11-04 01:14:18.379214',NULL,NULL),(62,'OtYDvF5RiZqNRJwsOfz7CUnDoWfDB7','2021-11-04 11:53:06.515742','read write',1,30,'2021-11-04 01:53:06.515742','2021-11-04 01:53:06.515742',NULL,NULL),(63,'5hwM98I5xbVI1it7DX1RNT3c9NScTI','2021-11-06 19:25:45.419780','read write',1,2,'2021-11-06 09:25:45.420781','2021-11-06 09:25:45.420781',NULL,NULL),(64,'AaXJCsgBE9kD1w58k05SFzmqU7dHDZ','2021-11-06 19:26:08.198017','read write',1,2,'2021-11-06 09:26:08.198017','2021-11-06 09:26:08.198017',NULL,NULL),(65,'PLwsHciMszQcGXOHKrw6XgHsZBpV9P','2021-11-07 00:32:20.923542','read write',1,2,'2021-11-06 14:32:20.924540','2021-11-06 14:32:20.924540',NULL,NULL),(66,'uoqB4dPisMC6S9FQ30Pe8cVypcHa4o','2021-11-07 00:33:11.156710','read write',1,2,'2021-11-06 14:33:11.156710','2021-11-06 14:33:11.156710',NULL,NULL),(67,'l4o8Xg36P7XqzIizyhUfUGJjpDxeJK','2021-11-07 00:54:51.340079','read write',1,8,'2021-11-06 14:54:51.341078','2021-11-06 14:54:51.341078',NULL,NULL),(68,'GJhNfrIS1vWTrPInYDXIjO53bOl1hN','2021-11-07 00:56:14.393192','read write',1,4,'2021-11-06 14:56:14.393192','2021-11-06 14:56:14.393192',NULL,NULL),(69,'RoVvGYr1DpuwJPKZ24NTVTuvjZc0Ia','2021-11-07 01:01:51.045984','read write',1,5,'2021-11-06 15:01:51.046980','2021-11-06 15:01:51.046980',NULL,NULL),(70,'6GBCc9RVcFGbPFyyUscRj9AhyoqmZI','2021-11-07 14:34:10.217338','read write',1,5,'2021-11-07 04:34:10.218336','2021-11-07 04:34:10.218336',NULL,NULL),(71,'Rc3agMh2V8rHneCPTDypBPascoYCL2','2021-11-07 14:36:43.876195','read write',1,5,'2021-11-07 04:36:43.876195','2021-11-07 04:36:43.876195',NULL,NULL),(72,'VubhrQuFEg55ASHKlPKD9AOpimMbPR','2021-11-07 14:40:02.898310','read write',1,14,'2021-11-07 04:40:02.899343','2021-11-07 04:40:02.899343',NULL,NULL),(73,'nuAHXYalAqdL9tWwxJhxoNYfGj9KTX','2021-11-07 14:40:28.097486','read write',1,2,'2021-11-07 04:40:28.098486','2021-11-07 04:40:28.098486',NULL,NULL),(74,'jt5aNMYzjwh2M7x0B3E0sxtgDAsPMC','2021-11-07 14:48:53.215404','read write',1,2,'2021-11-07 04:48:53.216402','2021-11-07 04:48:53.216402',NULL,NULL),(75,'MQCAkf4KRs4eOmiItFOm7KVzYtZr9S','2021-11-07 14:50:18.651586','read write',1,8,'2021-11-07 04:50:18.652585','2021-11-07 04:50:18.652585',NULL,NULL),(76,'7GwGZJbBxnzhkIdDlMwrRHvhKVNoxa','2021-11-07 14:50:29.011203','read write',1,3,'2021-11-07 04:50:29.012200','2021-11-07 04:50:29.012200',NULL,NULL),(77,'jbqVAHSbOzqYxSsg0kQN369aYe03uW','2021-11-07 14:55:05.804593','read write',1,3,'2021-11-07 04:55:05.805627','2021-11-07 04:55:05.805627',NULL,NULL),(78,'gT51PEyQT4V9WAlTwv1RLEPnGSRIUR','2021-11-07 15:00:29.318893','read write',1,3,'2021-11-07 05:00:29.319890','2021-11-07 05:00:29.319890',NULL,NULL),(79,'QUEqTfiAaZlzaSm8dL66VGr0DLcebk','2021-11-07 15:07:36.658016','read write',1,14,'2021-11-07 05:07:36.659014','2021-11-07 05:07:36.659014',NULL,NULL),(80,'pP1cBHG6lIrdy6naDkB5t5BG4gkOtX','2021-11-07 15:08:53.581963','read write',1,8,'2021-11-07 05:08:53.582961','2021-11-07 05:08:53.582961',NULL,NULL),(81,'KmZ1PlSEKaIo5m9EQnwBCfUfhPlaSe','2021-11-07 15:13:17.738570','read write',1,2,'2021-11-07 05:13:17.739569','2021-11-07 05:13:17.739569',NULL,NULL),(82,'6axdO5dQKdw8d6eXAv0OwS8cR37OZs','2021-11-07 15:13:30.913777','read write',1,8,'2021-11-07 05:13:30.913777','2021-11-07 05:13:30.913777',NULL,NULL),(83,'C0DIlkWmVFSfUZk2LbfaTXkavtwjUd','2021-11-07 15:15:14.231966','read write',1,2,'2021-11-07 05:15:14.232925','2021-11-07 05:15:14.232925',NULL,NULL),(84,'dqcbB5dhhgoeMwgoEuXZt1cegv8wli','2021-11-07 15:15:39.857991','read write',1,3,'2021-11-07 05:15:39.857991','2021-11-07 05:15:39.857991',NULL,NULL),(85,'SsCKvhPWCcMr4q5Mprw9lblNp1Wt2z','2021-11-07 15:19:17.060030','read write',1,2,'2021-11-07 05:19:17.060030','2021-11-07 05:19:17.060030',NULL,NULL),(86,'9cCdC9p0K8wVS2EaiS7T1heYwBnx81','2021-11-07 22:40:46.623922','read write',1,2,'2021-11-07 12:40:46.624910','2021-11-07 12:40:46.624910',NULL,NULL),(87,'8XJv6dF3wPQeDL11qexK0uJoGw0YFN','2021-11-08 01:08:15.286763','read write',1,4,'2021-11-07 15:08:15.287761','2021-11-07 15:08:15.287761',NULL,NULL),(88,'sSltMRmSe9pubIUUedD6xNpOr4gdA8','2021-11-08 01:28:22.631639','read write',1,5,'2021-11-07 15:28:22.632636','2021-11-07 15:28:22.632636',NULL,NULL),(89,'E7osjulg1t27TEEw7iVWGXciBTVrHj','2021-11-08 01:34:35.739425','read write',1,12,'2021-11-07 15:34:35.740420','2021-11-07 15:34:35.740420',NULL,NULL),(90,'YPhhmwD4YdNQ2q3eYqW74RLOT6b53D','2021-11-08 01:34:47.121141','read write',1,12,'2021-11-07 15:34:47.121141','2021-11-07 15:34:47.121141',NULL,NULL),(91,'y35mh0WUOew48DXvW4mamD86LEkSsn','2021-11-09 01:55:58.893502','read write',1,5,'2021-11-08 15:55:58.893502','2021-11-08 15:55:58.893502',NULL,NULL),(92,'5tY8VxOg3XHR5OV6WreKDDAwgfV3zF','2021-11-09 02:25:21.045292','read write',1,5,'2021-11-08 16:25:21.045292','2021-11-08 16:25:21.045292',NULL,NULL),(93,'ZGFMd1pOQT2a6ZDqvPItDV2gQyLmay','2021-11-09 02:34:28.292577','read write',1,5,'2021-11-08 16:34:28.292577','2021-11-08 16:34:28.292577',NULL,NULL),(94,'P2J68ougMuOMwTl7HY3PYlJbUD0b5T','2021-11-09 03:24:42.405547','read write',1,34,'2021-11-08 17:24:42.406545','2021-11-08 17:24:42.406545',NULL,NULL),(95,'76Ae9CwRTQ4wLdEsMZz4CwSxUiWY0O','2021-11-09 03:35:20.555508','read write',1,3,'2021-11-08 17:35:20.555508','2021-11-08 17:35:20.555508',NULL,NULL),(96,'gTHoZg1zxC39HE6tYeYM7fajY5apng','2021-11-09 03:49:54.715995','read write',1,3,'2021-11-08 17:49:54.715995','2021-11-08 17:49:54.715995',NULL,NULL),(97,'T7fTx8h3n0X5addVn0m2YTCF1v1iCa','2021-11-09 03:56:58.100608','read write',1,3,'2021-11-08 17:56:58.101607','2021-11-08 17:56:58.101607',NULL,NULL),(98,'6caRV86oz0M1i4yKfed74Z7mutXC32','2021-11-09 04:02:11.594912','read write',1,3,'2021-11-08 18:02:11.594912','2021-11-08 18:02:11.594912',NULL,NULL),(99,'Cdv4msMIo8L261WlD5EDZQLX7nHsH9','2021-11-09 04:13:45.495899','read write',1,3,'2021-11-08 18:13:45.496895','2021-11-08 18:13:45.496895',NULL,NULL),(100,'TdsmyDQzKchL24ioRWDIolrvEczZci','2021-11-09 04:23:20.399468','read write',1,10,'2021-11-08 18:23:20.399468','2021-11-08 18:23:20.399468',NULL,NULL),(101,'GYw7Ife8elPqlzNULK9sIjIz0hqJpD','2021-11-09 04:24:37.618319','read write',1,34,'2021-11-08 18:24:37.618319','2021-11-08 18:24:37.618319',NULL,NULL),(102,'NH565ACElEe6aX8Z9eZNUMwUQ3iQZF','2021-11-09 04:26:15.223229','read write',1,10,'2021-11-08 18:26:15.223229','2021-11-08 18:26:15.223229',NULL,NULL),(103,'X29cD4HaNR4Pfi4pRvfdYS7QWCyJLs','2021-11-09 04:26:38.928344','read write',1,3,'2021-11-08 18:26:38.928344','2021-11-08 18:26:38.928344',NULL,NULL),(104,'w35GhpGS7SnAoaRh5uOqgFYnpELzSL','2021-11-09 04:27:06.204586','read write',1,3,'2021-11-08 18:27:06.204586','2021-11-08 18:27:06.204586',NULL,NULL),(105,'qbOjEFAs9rh3a8OPFJ5aGDSkrbFZEe','2021-11-09 04:29:54.163795','read write',1,3,'2021-11-08 18:29:54.164793','2021-11-08 18:29:54.164793',NULL,NULL),(106,'WAIpAs2uKjRJ4TJyxFxWuUpe0s1GwW','2021-11-09 04:35:54.791474','read write',1,2,'2021-11-08 18:35:54.791474','2021-11-08 18:35:54.791474',NULL,NULL),(107,'VOk3cp0lta03tveYS5L36AHjwtLhYT','2021-11-09 05:05:14.805947','read write',1,2,'2021-11-08 19:05:14.806907','2021-11-08 19:05:14.806907',NULL,NULL),(108,'JpKf2m8BEqK5rIY6zogVNS0BHJ6BIZ','2021-11-09 12:19:00.327614','read write',1,3,'2021-11-09 02:19:00.327614','2021-11-09 02:19:00.327614',NULL,NULL),(109,'U9Hvj637xvtMhCYIzMZPQqgLfEEgpj','2021-11-09 12:19:20.791040','read write',1,2,'2021-11-09 02:19:20.791040','2021-11-09 02:19:20.791040',NULL,NULL),(110,'mYn6nf10S0z2hRiO9hexTrKwEyoFr6','2021-11-09 12:20:21.538938','read write',1,3,'2021-11-09 02:20:21.538938','2021-11-09 02:20:21.538938',NULL,NULL),(111,'HFwEwo3LQtZoTkd6F0oPv2p5v27ueg','2021-11-09 12:20:30.580065','read write',1,2,'2021-11-09 02:20:30.580065','2021-11-09 02:20:30.580065',NULL,NULL),(112,'CeIijEpckWISlfh3Y5rf9nwYBZjqzD','2021-11-09 12:21:05.745321','read write',1,3,'2021-11-09 02:21:05.745321','2021-11-09 02:21:05.745321',NULL,NULL),(113,'oNiUm9TcrO8Gf2o0fu4j1I0Qr3xi6d','2021-11-09 12:30:00.606651','read write',1,3,'2021-11-09 02:30:00.607707','2021-11-09 02:30:00.607707',NULL,NULL),(114,'UDpprYLglMCnabFurulk92A6TDOL0v','2021-11-09 12:38:43.182654','read write',1,3,'2021-11-09 02:38:43.183651','2021-11-09 02:38:43.183651',NULL,NULL),(115,'pAUWF299NVBkHhQM3aTIrYS6Obws5y','2021-11-09 17:24:32.097681','read write',1,3,'2021-11-09 07:24:32.097681','2021-11-09 07:24:32.097681',NULL,NULL),(116,'8uVDeBD29oXcWx8YEfzKpciSuI3Pcb','2021-11-09 17:41:09.559092','read write',1,3,'2021-11-09 07:41:09.559092','2021-11-09 07:41:09.559092',NULL,NULL),(117,'dOlAns0rpBvYTAPIzNERM1VrQzKAxo','2021-11-09 18:37:38.389897','read write',1,3,'2021-11-09 08:37:38.390895','2021-11-09 08:37:38.390895',NULL,NULL),(118,'twda8feM9SPdaUcPW8b6uNtbyqNo5V','2021-11-09 18:47:52.093357','read write',1,3,'2021-11-09 08:47:52.094354','2021-11-09 08:47:52.094354',NULL,NULL),(119,'Uwyo2xePHg3tGG568UjVONquuDYMER','2021-11-09 19:01:27.565538','read write',1,2,'2021-11-09 09:01:27.565538','2021-11-09 09:01:27.565538',NULL,NULL),(120,'Qlifr0FxEudklMkk2Tp0qQSfkI7B8T','2021-11-09 19:06:12.315877','read write',1,3,'2021-11-09 09:06:12.316874','2021-11-09 09:06:12.316874',NULL,NULL),(121,'8OsIjEHJMoyo89wet3WEvfeIPtLsjA','2021-11-09 19:10:47.285391','read write',1,3,'2021-11-09 09:10:47.286389','2021-11-09 09:10:47.286389',NULL,NULL),(122,'Nf4JfMUYcuPIsnpxXwdCZSFh1rwnyj','2021-11-09 19:27:25.330646','read write',1,3,'2021-11-09 09:27:25.331619','2021-11-09 09:27:25.331619',NULL,NULL),(123,'dJOxxaZVKIlg4v6JklCT14UM2Gksj2','2021-11-09 21:25:11.284697','read write',1,3,'2021-11-09 11:25:11.284697','2021-11-09 11:25:11.284697',NULL,NULL),(124,'dScKFLHnikfmBkpM5o2XuYQkDrIZ7t','2021-11-09 22:13:30.433320','read write',1,3,'2021-11-09 12:13:30.434324','2021-11-09 12:13:30.434324',NULL,NULL),(125,'P71RmKeTZITFedq7W8dIeA34zBRBfl','2021-11-09 22:59:20.138537','read write',1,3,'2021-11-09 12:59:20.139531','2021-11-09 12:59:20.139531',NULL,NULL),(126,'yegj7g8rJVUmXiCt2oQUzNhNEYQ8G6','2021-11-09 23:05:54.827362','read write',1,3,'2021-11-09 13:05:54.828356','2021-11-09 13:05:54.828356',NULL,NULL),(127,'VoOTmVTgVqt6E99MbdAqZxv4p7otzC','2021-11-09 23:14:42.605341','read write',1,3,'2021-11-09 13:14:42.606364','2021-11-09 13:14:42.606364',NULL,NULL),(128,'RYZYC5HTlG3gNNne0eYAlhJiSFsk5U','2021-11-09 23:16:49.004968','read write',1,5,'2021-11-09 13:16:49.005966','2021-11-09 13:16:49.005966',NULL,NULL),(129,'fTKPfuPagF4ZDlrdzRo4rB4bpb9MSf','2021-11-09 23:21:56.692652','read write',1,5,'2021-11-09 13:21:56.692652','2021-11-09 13:21:56.692652',NULL,NULL),(130,'vvFaSLosndDLWTESBgQJ7QUI6o8Jh6','2021-11-09 23:38:47.560160','read write',1,5,'2021-11-09 13:38:47.561161','2021-11-09 13:38:47.561161',NULL,NULL),(131,'kQSVWqeMSpYDnQTP2eiw8DZOXkzsEJ','2021-11-09 23:46:08.069295','read write',1,2,'2021-11-09 13:46:08.070293','2021-11-09 13:46:08.070293',NULL,NULL),(132,'Bu8pg93jckzt2XobYcHoylkZdbEWqL','2021-11-09 23:46:35.109890','read write',1,3,'2021-11-09 13:46:35.110888','2021-11-09 13:46:35.110888',NULL,NULL),(133,'J8I2FmjkEvOptnw2FBOkv5ZnJoeFUm','2021-11-10 00:26:49.816568','read write',1,3,'2021-11-09 14:26:49.816568','2021-11-09 14:26:49.816568',NULL,NULL),(134,'Ka8byTuTaUKEMTIUbn3n4mtJReEC1q','2021-11-10 00:29:38.161176','read write',1,3,'2021-11-09 14:29:38.162145','2021-11-09 14:29:38.162145',NULL,NULL),(135,'zQhL6FLqjSgiLfyXwOTMGvyXN3cF04','2021-11-10 00:34:56.532917','read write',1,3,'2021-11-09 14:34:56.532917','2021-11-09 14:34:56.532917',NULL,NULL),(136,'gQRzKdZfBuZNZbCRH30E0696xwgagl','2021-11-10 00:35:16.259565','read write',1,8,'2021-11-09 14:35:16.260564','2021-11-09 14:35:16.260564',NULL,NULL),(137,'N20BHQ1NSV9RgiQ9s8ISX7Q0QUqL8y','2021-11-10 00:35:48.455838','read write',1,2,'2021-11-09 14:35:48.455838','2021-11-09 14:35:48.455838',NULL,NULL),(138,'V640G5VGG5vggYaxVOdxcNT857UtZe','2021-11-10 00:39:42.344182','read write',1,5,'2021-11-09 14:39:42.344182','2021-11-09 14:39:42.344182',NULL,NULL),(139,'Bg3qYlJWTpH0CM4AjMsRWjSYtKgPHn','2021-11-10 00:46:46.250917','read write',1,5,'2021-11-09 14:46:46.250917','2021-11-09 14:46:46.250917',NULL,NULL),(140,'RUP7rgTx6YyAvyYVLj64a157OxdmOC','2021-11-10 00:50:14.386317','read write',1,5,'2021-11-09 14:50:14.387315','2021-11-09 14:50:14.387315',NULL,NULL),(141,'Kf72nfaSvea7ngFheE7xVlKzddu1lg','2021-11-10 00:54:11.258472','read write',1,3,'2021-11-09 14:54:11.259469','2021-11-09 14:54:11.259469',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_appl_user_id_79829054_fk_deliverya` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_deliverya` FOREIGN KEY (`user_id`) REFERENCES `deliveryapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'xNehG6Jn1IKE01ZT93HGx1YBWUl1yqOwtnjnwPBy','','confidential','password','sy3Tp150IR89tSwe8fy6ZSPwKWbZftjtbmigQwg3jYUxAk2ckIDxYD7GVTe4QbzFSCClLOgmTn0VzA6Nyd1eJjRsGa8qrY5U8sNXXYPWz55xKfJiOwVHdLW6ZcUnYgzz','DeliveryApp',1,0,'2021-10-31 07:42:26.870107','2021-10-31 07:42:26.870107','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claims` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_deliveryapp_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_deliveryapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `deliveryapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_deliveryapp_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_deliveryapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `deliveryapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refr_user_id_da837fce_fk_deliverya` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_deliverya` FOREIGN KEY (`user_id`) REFERENCES `deliveryapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'d0kiV4zEH7vcRomMk41ONqjhb3p5jD',1,1,2,'2021-10-31 07:52:50.955821','2021-10-31 07:52:50.955821',NULL),(2,'iHXpCN02blk7gkoilOsVJS5gxI14Mw',2,1,1,'2021-10-31 07:53:18.518509','2021-10-31 07:53:18.518509',NULL),(3,'R2o00GPa2fwIVzU5clnEhohB78vhz8',3,1,2,'2021-11-01 03:43:54.126035','2021-11-01 03:43:54.126035',NULL),(4,'cONgJ534lzBD8QE6Rap00g0RAhU2tN',4,1,4,'2021-11-01 04:16:20.388300','2021-11-01 04:16:20.388300',NULL),(5,'dg20xjNJ0NRqU9jbKh6myz2QssBfWQ',5,1,3,'2021-11-01 08:53:54.568559','2021-11-01 08:53:54.568559',NULL),(6,'ROGg0rf1LPUSguuBgU7UqD2bvCAYjx',6,1,2,'2021-11-01 08:58:59.302464','2021-11-01 08:58:59.302464',NULL),(7,'RBBt27VTAoTo6U22zV945EBxIfjznt',7,1,3,'2021-11-01 11:57:25.018857','2021-11-01 11:57:25.018857',NULL),(8,'4Mvvx2OOr5LbrBTTdf6fs6wd5lConX',8,1,2,'2021-11-01 11:59:11.049092','2021-11-01 11:59:11.049092',NULL),(9,'rxhA81cJigYWGe0MYIxifFMt8PHkF8',9,1,3,'2021-11-01 11:59:55.052200','2021-11-01 11:59:55.052200',NULL),(10,'EXE0aeDC6oH707jhvJeLqznDgwrcW8',10,1,3,'2021-11-01 15:26:50.403600','2021-11-01 15:26:50.403600',NULL),(11,'D2q7nZ2fB6MrKbNEK6iUSLAdEBkqWh',11,1,2,'2021-11-02 02:52:59.635820','2021-11-02 02:52:59.635820',NULL),(12,'RTQjNsLU08ZoBB8PXaVDkQiJTSGnAs',12,1,2,'2021-11-02 02:56:49.556076','2021-11-02 02:56:49.556076',NULL),(13,'MyrDX2HahtESoeTCoxADaevab8My0x',13,1,14,'2021-11-02 02:58:51.507797','2021-11-02 02:58:51.507797',NULL),(14,'Fd6ekd3KxvcRXowcjaCSgYIQKdmzvJ',14,1,11,'2021-11-02 03:07:34.011117','2021-11-02 03:07:34.011117',NULL),(15,'TcQUkHNGIFg66u4WKtTcMHVg8VkYRt',15,1,14,'2021-11-02 03:09:11.975833','2021-11-02 03:09:11.975833',NULL),(16,'1Mtb6uIj58sVVXFdzaRj1xkzttUG0Q',16,1,11,'2021-11-02 03:11:43.658668','2021-11-02 03:11:43.658668',NULL),(17,'E2TgQishFivSx0WD0HiBYQJwn4CzNW',17,1,11,'2021-11-02 03:12:26.431175','2021-11-02 03:12:26.431175',NULL),(18,'hj6bw0NW6Iyyw8MJczzTqug3fLo29I',18,1,14,'2021-11-02 03:32:22.633341','2021-11-02 03:32:22.633341',NULL),(19,'H7BeseaXWfCNcJrqUuTPqYgrkLfbfK',19,1,14,'2021-11-02 03:35:00.109598','2021-11-02 03:35:00.109598',NULL),(20,'2f8R3mfjelkUn5xWmH7ijLxNBXQVOq',20,1,14,'2021-11-02 03:41:33.038369','2021-11-02 03:41:33.038369',NULL),(21,'yHoXibQf9O9Hy6zgoShjRqRNwN2WZ1',21,1,2,'2021-11-02 03:42:06.325485','2021-11-02 03:42:06.325485',NULL),(22,'C9k04qfRqn4OdHwJpc14TiBVMnSWth',22,1,2,'2021-11-02 03:45:44.253777','2021-11-02 03:45:44.253777',NULL),(23,'L6ziut7UhAoF77P0x2MxrpaiH6ZENM',23,1,1,'2021-11-02 04:08:23.510768','2021-11-02 04:08:23.510768',NULL),(24,'0Mq4hME8YY1qAvNCtpmlXeiT9ZOmaA',24,1,3,'2021-11-02 04:10:31.916377','2021-11-02 04:10:31.916377',NULL),(25,'Bs9rKLRl9dVKUzHEJNiy54vKHWGGW5',25,1,3,'2021-11-02 04:16:00.086113','2021-11-02 04:16:00.086113',NULL),(26,'BZ6k0rT94239EvfAh7iTIfk05pwVyS',26,1,5,'2021-11-02 04:32:11.047365','2021-11-02 04:32:11.047365',NULL),(27,'IPW0h6I4wjIRpDlp6ljdlnTJ1kGp1L',27,1,11,'2021-11-02 04:39:46.193967','2021-11-02 04:39:46.193967',NULL),(28,'Rrg49dqqtxpyNTXxXMAhZHdsR3CBWP',28,1,5,'2021-11-02 04:40:55.859840','2021-11-02 04:40:55.859840',NULL),(29,'A81Oe3epDvL9s3xntGdmr3lc2ZNvbt',29,1,11,'2021-11-02 04:41:02.271888','2021-11-02 04:41:02.271888',NULL),(30,'LgdXNaaMv0g1RsOevD1yvVkyf8bq3l',30,1,5,'2021-11-02 04:41:04.581312','2021-11-02 04:41:04.581312',NULL),(31,'vJsaymSU4RahFcUPfLUB1YehQeWIt1',31,1,5,'2021-11-02 04:46:30.403298','2021-11-02 04:46:30.403298',NULL),(32,'GI8ZdOQiK09aXDZ0MPAMpT45CiGrLi',32,1,5,'2021-11-02 04:51:12.513634','2021-11-02 04:51:12.513634',NULL),(33,'6Fni5eAxDHcXc5l0DXKbnQjM1qTKYg',33,1,8,'2021-11-02 05:04:43.166042','2021-11-02 05:04:43.166042',NULL),(34,'5ZOHb6qK6zgU6UqgiWL9BOLa4rmkCt',34,1,5,'2021-11-02 05:05:50.021959','2021-11-02 05:05:50.021959',NULL),(35,'MppJCmM8rQmYaOsd5qzMP8iUJnFxNH',35,1,8,'2021-11-02 05:06:29.268994','2021-11-02 05:06:29.268994',NULL),(36,'qN5BjQBPdabZ80vAVkqSCGHns9bqg5',36,1,5,'2021-11-02 05:06:46.185254','2021-11-02 05:06:46.185254',NULL),(37,'JuAzTm7hNzdU9HnVxTM5bEIuHKuLEH',37,1,6,'2021-11-02 05:09:18.542680','2021-11-02 05:09:18.542680',NULL),(38,'sXPG5gryftwI9R7pDv6MCgSXhjxCl4',38,1,8,'2021-11-02 05:41:46.980947','2021-11-02 05:41:46.980947',NULL),(39,'n9ztcLakOUGTlEicmwxdJiOTHS0Znl',39,1,8,'2021-11-02 05:58:38.312980','2021-11-02 05:58:38.312980',NULL),(40,'OaypGZvPZpFgVojWsklD8yZGE6MpwH',40,1,8,'2021-11-02 06:03:58.098431','2021-11-02 06:03:58.098431',NULL),(41,'tfCJxJ9gysFUaPYPNl765Z9Jau3y1m',41,1,2,'2021-11-02 06:04:20.525635','2021-11-02 06:04:20.525635',NULL),(42,'yvd58GGkpYxShuu824ygpZONUxCJhA',42,1,2,'2021-11-02 06:07:41.241048','2021-11-02 06:07:41.241048',NULL),(43,'1T7xlKJLwQzAbH2fImFBPF4T22UIzP',43,1,8,'2021-11-02 06:10:06.738678','2021-11-02 06:10:06.738678',NULL),(44,'kAyf1HVao0Ay5eqQ7jLIbZBrbymuCH',44,1,9,'2021-11-02 06:55:10.597559','2021-11-02 06:55:10.597559',NULL),(45,'uEV3kXlKdf45ojvCVswU2TsJ4sHUJJ',45,1,9,'2021-11-02 06:57:58.503812','2021-11-02 06:57:58.503812',NULL),(46,'v1vYLj4vyyR5Lbm5Jc2LJ3a9a8mhMD',46,1,13,'2021-11-02 07:01:01.105876','2021-11-02 07:01:01.105876',NULL),(47,'z5SAlD0lweoGyjFSMTFBvb4RySJOVD',47,1,10,'2021-11-02 07:01:32.568377','2021-11-02 07:01:32.568377',NULL),(48,'T2QUA6FzdcYg2zH4HYan1dlv710c5q',48,1,3,'2021-11-02 07:04:28.705946','2021-11-02 07:04:28.705946',NULL),(49,'yhWtgXWaqVcRY6Uj3L7enV4O06RWhr',49,1,14,'2021-11-02 07:14:48.242812','2021-11-02 07:14:48.242812',NULL),(50,'6jjqHz9k1nvSGV92jjNxuSANqbb2jr',50,1,13,'2021-11-02 07:17:06.937584','2021-11-02 07:17:06.937584',NULL),(51,'FwRJSkKJiAeAAiV4ZqISAR8ybssnLe',51,1,13,'2021-11-02 07:17:49.058133','2021-11-02 07:17:49.058133',NULL),(52,'1MLsvFcOeFX7nFRIDhDpKeCVXowzF0',52,1,13,'2021-11-02 07:26:52.076914','2021-11-02 07:26:52.076914',NULL),(53,'PXPVI4bb7PRm7sXHIMroX9vIzveygr',53,1,11,'2021-11-02 07:28:32.980949','2021-11-02 07:28:32.980949',NULL),(54,'GNzT8oy2kUVwAWMdn86H8QXhUCFzlz',54,1,13,'2021-11-02 07:29:17.480564','2021-11-02 07:29:17.480564',NULL),(55,'KhdqOueJ2yjDVSLIKe22NAAChlemg2',55,1,11,'2021-11-02 07:31:04.283782','2021-11-02 07:31:04.283782',NULL),(56,'fe8b4gdkpX2uGdWApjgtslVQlkU4lp',56,1,13,'2021-11-02 07:34:14.440553','2021-11-02 07:34:14.440553',NULL),(57,'fZVsmQfqUaHYbZlqaTGMayb7YbApQ9',57,1,11,'2021-11-02 07:34:36.435012','2021-11-02 07:34:36.435012',NULL),(58,'9BcVV7MWWQyTNaExdMByhwfOLO5Y1v',58,1,11,'2021-11-03 12:16:34.378223','2021-11-03 12:16:34.378223',NULL),(59,'iJjusuznaixDEmZZ8mzz5QFuYG2MAT',59,1,13,'2021-11-03 12:17:11.493732','2021-11-03 12:17:11.493732',NULL),(60,'Gog0dCzcSHsTqcIES3e0ps5c3ulJ0N',60,1,11,'2021-11-03 13:40:20.423868','2021-11-03 13:40:20.423868',NULL),(61,'bM9RIwle2Dz2qhGDRDSUEJiHH4VbPF',61,1,28,'2021-11-04 01:14:18.389211','2021-11-04 01:14:18.389211',NULL),(62,'KBFbUnj5QB89fbey5iebdPavcNgZLq',62,1,30,'2021-11-04 01:53:06.520729','2021-11-04 01:53:06.521727',NULL),(63,'kYl7jzs9MWWGStVhvykaPwhRMYhOpa',63,1,2,'2021-11-06 09:25:45.421919','2021-11-06 09:25:45.421919',NULL),(64,'rUDThjN546dXd8B8LFeAF6cPMUHHwv',64,1,2,'2021-11-06 09:26:08.198017','2021-11-06 09:26:08.198017',NULL),(65,'ZyOv5KTU5BySWhahuryzqxJCEVK42l',65,1,2,'2021-11-06 14:32:20.937136','2021-11-06 14:32:20.937136',NULL),(66,'kXqqdJfsXObVKbnthHaTKK9ysrLUF9',66,1,2,'2021-11-06 14:33:11.159859','2021-11-06 14:33:11.159859',NULL),(67,'XHc0XUmx8vDE8e2PQ028kCRIKawnKi',67,1,8,'2021-11-06 14:54:51.346066','2021-11-06 14:54:51.346066',NULL),(68,'qfQZFOUYXsZOAMVC6eXyBGsTSvEmLN',68,1,4,'2021-11-06 14:56:14.397946','2021-11-06 14:56:14.397946',NULL),(69,'BUjQuKRN9i3moJyfof645KxAMu9Owo',69,1,5,'2021-11-06 15:01:51.048976','2021-11-06 15:01:51.048976',NULL),(70,'zXaSKgRjZdWtCqF6ZYU0CqCqTNceSG',70,1,5,'2021-11-07 04:34:10.233438','2021-11-07 04:34:10.233438',NULL),(71,'SZh3p1B4ji2zyNRSXKYxPQ1dIRDypJ',71,1,5,'2021-11-07 04:36:43.878753','2021-11-07 04:36:43.878753',NULL),(72,'9MeWGK1n0vBbFsUeDvNtlN1SQ2ZTpV',72,1,14,'2021-11-07 04:40:02.900730','2021-11-07 04:40:02.900730',NULL),(73,'aoq9HVmBIajRIOgAy8JoRGAGlZJRGN',73,1,2,'2021-11-07 04:40:28.102666','2021-11-07 04:40:28.102666',NULL),(74,'14c99vMyQ2GUNT5odf0Hd8FdIKBYyv',74,1,2,'2021-11-07 04:48:53.220427','2021-11-07 04:48:53.220427',NULL),(75,'vMkDOGYxJJJ03CitfWD9CW4u6b3tRC',75,1,8,'2021-11-07 04:50:18.654544','2021-11-07 04:50:18.654544',NULL),(76,'RCc3N9mS3raayxWKOe3hkTkD955k1S',76,1,3,'2021-11-07 04:50:29.015193','2021-11-07 04:50:29.015193',NULL),(77,'sa64wLHyB9NzUkmbxWqNOFKbTqlR1k',77,1,3,'2021-11-07 04:55:05.808662','2021-11-07 04:55:05.808662',NULL),(78,'dk5KFtkn5lssIfQsmc7WsW1ntKG31N',78,1,3,'2021-11-07 05:00:29.323880','2021-11-07 05:00:29.323880',NULL),(79,'vbfwGRFjlm8qabxocUPurnTVQuw00a',79,1,14,'2021-11-07 05:07:36.664096','2021-11-07 05:07:36.664096',NULL),(80,'cspx6b3zTKgoz4j7QxEAG8V18zRTNN',80,1,8,'2021-11-07 05:08:53.586952','2021-11-07 05:08:53.586952',NULL),(81,'IyA4OaD14eHMEBtjTCnCapVtWNEULZ',81,1,2,'2021-11-07 05:13:17.742654','2021-11-07 05:13:17.742774',NULL),(82,'gPxfXOSGTOhAgbOIrJtBAABsZMn7qc',82,1,8,'2021-11-07 05:13:30.916222','2021-11-07 05:13:30.916222',NULL),(83,'NS13OB5cVUFuo2pwrYyg9xzrLLgQQF',83,1,2,'2021-11-07 05:15:14.233813','2021-11-07 05:15:14.233813',NULL),(84,'lPHLJoToLcOVyijuGuOyQtRQzStwOm',84,1,3,'2021-11-07 05:15:39.861072','2021-11-07 05:15:39.861072',NULL),(85,'pG2VqvLNAf6NcNXeFXOF1kJpDcWNIS',85,1,2,'2021-11-07 05:19:17.063043','2021-11-07 05:19:17.063043',NULL),(86,'chd1ge2DhrdUl4PnoY719Qctud49fH',86,1,2,'2021-11-07 12:40:46.640208','2021-11-07 12:40:46.640208',NULL),(87,'d0g6db2JqrXtflFuqIbda9ONMfTzml',87,1,4,'2021-11-07 15:08:15.290262','2021-11-07 15:08:15.290262',NULL),(88,'6B3QhiGIJYjBXD22aljkPqdNeT4EGd',88,1,5,'2021-11-07 15:28:22.635628','2021-11-07 15:28:22.635628',NULL),(89,'BgkKpQhSEnPUFvHdOlk8evs6AZ16PE',89,1,12,'2021-11-07 15:34:35.742447','2021-11-07 15:34:35.742447',NULL),(90,'0bb1I9eIilN9YXSCD5D53px366Gu5E',90,1,12,'2021-11-07 15:34:47.126138','2021-11-07 15:34:47.126138',NULL),(91,'RiYmYgShO7bvo2Uv8TvlLYCoAbyjOZ',91,1,5,'2021-11-08 15:55:58.910507','2021-11-08 15:55:58.910507',NULL),(92,'lnOaHoaier7HTgi71zP3PqUa9oay7n',92,1,5,'2021-11-08 16:25:21.051245','2021-11-08 16:25:21.051245',NULL),(93,'49JjChTcuzMdxxdkl823zO0cpDqs4D',93,1,5,'2021-11-08 16:34:28.295568','2021-11-08 16:34:28.295568',NULL),(94,'R72ITXUKVnBdzPK9Qv2YBmzRwA2fWQ',94,1,34,'2021-11-08 17:24:42.408876','2021-11-08 17:24:42.408876',NULL),(95,'gGlpE18T3DqYghBO67l1pvSzl177bR',95,1,3,'2021-11-08 17:35:20.558500','2021-11-08 17:35:20.558500',NULL),(96,'5lYTUvoAuamaZXfkBnGCSYQuBO5Imq',96,1,3,'2021-11-08 17:49:54.718955','2021-11-08 17:49:54.718955',NULL),(97,'lbxdZ1lDv7wkhfQxwQFk3yEq4A8G1h',97,1,3,'2021-11-08 17:56:58.106622','2021-11-08 17:56:58.106622',NULL),(98,'Ej3RdHRSbhOdoNLNwZaZqSuHgMYCDB',98,1,3,'2021-11-08 18:02:11.599843','2021-11-08 18:02:11.599843',NULL),(99,'OZYSkPHjVGZu3MA7WBDEO5aJAo1ETh',99,1,3,'2021-11-08 18:13:45.502123','2021-11-08 18:13:45.502123',NULL),(100,'8IOLIEXoOWwKlXOCDMo1dk3bNmYb4a',100,1,10,'2021-11-08 18:23:20.399468','2021-11-08 18:23:20.399468',NULL),(101,'F0OPpA25aQwJOzio4CH1AEZN6CupSq',101,1,34,'2021-11-08 18:24:37.618319','2021-11-08 18:24:37.618319',NULL),(102,'kiUTWQTH16nXByZBLt575PlaKsPpwJ',102,1,10,'2021-11-08 18:26:15.223229','2021-11-08 18:26:15.223229',NULL),(103,'JZDAQZgaAoTxXXkIKqS0uLZvwOvPOT',103,1,3,'2021-11-08 18:26:38.928344','2021-11-08 18:26:38.928344',NULL),(104,'BziSEpkSN3JqXRkT7nI3nBMa1C2VJ7',104,1,3,'2021-11-08 18:27:06.204586','2021-11-08 18:27:06.204586',NULL),(105,'02otHwFZYQAP447YBH0QVNSND2B4vn',105,1,3,'2021-11-08 18:29:54.167739','2021-11-08 18:29:54.167739',NULL),(106,'WvM0dyGdpWTZTAmeqxxAr2OzDZQTUG',106,1,2,'2021-11-08 18:35:54.795324','2021-11-08 18:35:54.795324',NULL),(107,'e6kuDFIXrF85PbNLOThuaRQ8ye3ihK',107,1,2,'2021-11-08 19:05:14.810926','2021-11-08 19:05:14.810926',NULL),(108,'FmTCLRgGoSBBmKPTRoOpgymtKNoLG7',108,1,3,'2021-11-09 02:19:00.343254','2021-11-09 02:19:00.343254',NULL),(109,'0hLshpfxnYfvpNCyAjGvA77DpT6Ymd',109,1,2,'2021-11-09 02:19:20.791040','2021-11-09 02:19:20.791040',NULL),(110,'CgtAX57AEqPaU3afcyGRVpvtp4E1Ar',110,1,3,'2021-11-09 02:20:21.538938','2021-11-09 02:20:21.538938',NULL),(111,'kSmu80TkBmSxBE3bk32ZqUjjvoJb7i',111,1,2,'2021-11-09 02:20:30.580065','2021-11-09 02:20:30.580065',NULL),(112,'HKmP6fzeYOf1xYo5O9f1XjqCrvZjKE',112,1,3,'2021-11-09 02:21:05.747588','2021-11-09 02:21:05.747588',NULL),(113,'0Xcj26FbvqQgSAE7L9BiJPuoH95DzC',113,1,3,'2021-11-09 02:30:00.612286','2021-11-09 02:30:00.612286',NULL),(114,'Vv9iBfLKgGzzRJrMdSZ0AIJRwqLiBG',114,1,3,'2021-11-09 02:38:43.187641','2021-11-09 02:38:43.188638',NULL),(115,'WfBnMUBUC0lFKm0QISetg7Lq5DOXV6',115,1,3,'2021-11-09 07:24:32.099696','2021-11-09 07:24:32.099696',NULL),(116,'u0hC0SOTUrWAKowlShsojKVtdFt09I',116,1,3,'2021-11-09 07:41:09.563115','2021-11-09 07:41:09.563115',NULL),(117,'tsg9Hh3Yo2w9rLNDuLsT0j5N5fjiA9',117,1,3,'2021-11-09 08:37:38.393886','2021-11-09 08:37:38.393886',NULL),(118,'QuEyXRO5Rpec22sLMUXVPTvzH4BWsw',118,1,3,'2021-11-09 08:47:52.099104','2021-11-09 08:47:52.099104',NULL),(119,'0Zw0IFLkWOqBsX6In4TMc9gMQtSMLL',119,1,2,'2021-11-09 09:01:27.565538','2021-11-09 09:01:27.565538',NULL),(120,'qIR0jBJBzHpRxvPx9FnSKqs8N6u0g0',120,1,3,'2021-11-09 09:06:12.318883','2021-11-09 09:06:12.318883',NULL),(121,'qvDKJ1dt18pJatvoYgTuW7eXngRuDB',121,1,3,'2021-11-09 09:10:47.290004','2021-11-09 09:10:47.290004',NULL),(122,'AoqId44jUNBPQwzILpgFeCAlpks1bS',122,1,3,'2021-11-09 09:27:25.333951','2021-11-09 09:27:25.333951',NULL),(123,'kpEf0kwHlCWaX6F9gu9vcCou2sbRKQ',123,1,3,'2021-11-09 11:25:11.296800','2021-11-09 11:25:11.296800',NULL),(124,'D48geC0gLVQioPDcVM4wLrviWJbgTw',124,1,3,'2021-11-09 12:13:30.437939','2021-11-09 12:13:30.437939',NULL),(125,'s6ijLC6sDDKjAGUZHOPiw256re3pB0',125,1,3,'2021-11-09 12:59:20.143231','2021-11-09 12:59:20.143231',NULL),(126,'TOmoJvxJgS21bJvhJwxiS8P1HhnerH',126,1,3,'2021-11-09 13:05:54.831343','2021-11-09 13:05:54.831343',NULL),(127,'uqkqeXFQBCVG8kRZ9bvimotuEIx0V2',127,1,3,'2021-11-09 13:14:42.608358','2021-11-09 13:14:42.608358',NULL),(128,'xXxReTO5pl9ELidVOHzSCEJ8KCwbPA',128,1,5,'2021-11-09 13:16:49.007960','2021-11-09 13:16:49.007960',NULL),(129,'4PzOPqOBCFiq6gfR4ms6pfX3QulhdZ',129,1,5,'2021-11-09 13:21:56.697639','2021-11-09 13:21:56.697639',NULL),(130,'DgNaBH5EGYzT03DLrGTkTCHFS4tpjJ',130,1,5,'2021-11-09 13:38:47.565146','2021-11-09 13:38:47.565146',NULL),(131,'bzwf5NxNi405f4NIkPTQX6KfoIJ0V0',131,1,2,'2021-11-09 13:46:08.072426','2021-11-09 13:46:08.072426',NULL),(132,'PWTqdhdcgT7PX10c0O3ZiyOSe2gdSj',132,1,3,'2021-11-09 13:46:35.114837','2021-11-09 13:46:35.114837',NULL),(133,'BhhRpWKjCpWDUVJMogpcI6vVaMvPNb',133,1,3,'2021-11-09 14:26:49.819558','2021-11-09 14:26:49.819558',NULL),(134,'KiHn7TYdjEhy8pFXIK7R9eglQbqhRF',134,1,3,'2021-11-09 14:29:38.166483','2021-11-09 14:29:38.166483',NULL),(135,'F0ttuP2LJ9DvV5mMXs12rng6w9R75Q',135,1,3,'2021-11-09 14:34:56.536907','2021-11-09 14:34:56.536907',NULL),(136,'0h26ZG3c4n4H26P5hu2eZQNKyjusui',136,1,8,'2021-11-09 14:35:16.263555','2021-11-09 14:35:16.263555',NULL),(137,'DeJqYTtdH8ejZPP5r0wiX6g6b5V4zT',137,1,2,'2021-11-09 14:35:48.458043','2021-11-09 14:35:48.458043',NULL),(138,'BhIlOX2xY3kaTrWAkIPbb3vcrcShJN',138,1,5,'2021-11-09 14:39:42.347182','2021-11-09 14:39:42.347182',NULL),(139,'iPDufrhnw6LSucGi35jCgUQt9mWFRS',139,1,5,'2021-11-09 14:46:46.255530','2021-11-09 14:46:46.255530',NULL),(140,'bNsK0rt6FNKB415ltEeGMka8nCpbms',140,1,5,'2021-11-09 14:50:14.394297','2021-11-09 14:50:14.394297',NULL),(141,'bPLkdOGUgsQGp9RpoOzQ4aaDWCDw8m',141,1,3,'2021-11-09 14:54:11.263426','2021-11-09 14:54:11.263426',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-09 22:11:30
