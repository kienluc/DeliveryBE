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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_auction`
--

LOCK TABLES `deliveryapp_auction` WRITE;
/*!40000 ALTER TABLE `deliveryapp_auction` DISABLE KEYS */;
INSERT INTO `deliveryapp_auction` VALUES (1,20000.00,0,1,1,2,'2021-11-02 01:56:35.832741','2021-11-02 01:56:35.942091'),(4,32000.00,0,1,1,11,'2021-11-02 03:07:52.864989','2021-11-02 07:34:56.153335'),(5,50000.00,0,1,1,14,'2021-11-02 07:16:49.166635','2021-11-02 07:16:49.166635');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_order`
--

LOCK TABLES `deliveryapp_order` WRITE;
/*!40000 ALTER TABLE `deliveryapp_order` DISABLE KEYS */;
INSERT INTO `deliveryapp_order` VALUES (1,'2021-10-26 14:10:06.012356','162 binh hung, binh long, CP, AG',1,0,30000.00,2,1,3,1,2,'371 nguyen kiem, go vap, HCM',1),(2,'2021-11-02 04:27:24.006687','144/18 au co, p9, tan binh, hcm',1,0,50000.00,2,NULL,5,1,11,'162 ap binh hoa, tt cai dau, cp - ag',5),(3,'2021-11-02 05:08:35.618855','144 vinh vien, quan 10, hcm',1,0,65000.00,2,4,6,1,11,'164 ap vinh loc, tt cai dau, cp-ag',4);
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
INSERT INTO `deliveryapp_orderdetail` VALUES (1,'khang','0397918098');
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
  PRIMARY KEY (`id`),
  KEY `deliveryapp_orderpost_creator_id_da84574e_fk_deliveryapp_user_id` (`creator_id`),
  KEY `deliveryapp_orderpos_product_cate_id_cd234cae_fk_deliverya` (`product_cate_id`),
  KEY `deliveryapp_orderpos_service_cate_id_f84cb4c9_fk_deliverya` (`service_cate_id`),
  CONSTRAINT `deliveryapp_orderpos_product_cate_id_cd234cae_fk_deliverya` FOREIGN KEY (`product_cate_id`) REFERENCES `deliveryapp_productcategory` (`id`),
  CONSTRAINT `deliveryapp_orderpos_service_cate_id_f84cb4c9_fk_deliverya` FOREIGN KEY (`service_cate_id`) REFERENCES `deliveryapp_service` (`id`),
  CONSTRAINT `deliveryapp_orderpost_creator_id_da84574e_fk_deliveryapp_user_id` FOREIGN KEY (`creator_id`) REFERENCES `deliveryapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_orderpost`
--

LOCK TABLES `deliveryapp_orderpost` WRITE;
/*!40000 ALTER TABLE `deliveryapp_orderpost` DISABLE KEYS */;
INSERT INTO `deliveryapp_orderpost` VALUES (1,1,'test ship','162 binh hung, binh long, CP, AG','2021-10-26 14:08:25.921030','2021-11-02 05:25:22.036377',0,3,'164 ap vinh loc, tt cai dau, cp-ag',3,1),(2,1,'fast','defqweqwe','2021-11-02 06:01:28.921827','2021-11-02 06:01:28.921827',0,8,'abcqweqweqwe',3,1);
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
INSERT INTO `deliveryapp_shipper` VALUES (2,'352634578','identity/2021/10/front_id.jpg','identity/2021/10/back_id.jpg'),(8,'352635685','identity/2021/11/front_id_cqWtBTa.jpg','identity/2021/11/back_id_V9JpOrb.jpg'),(11,'352574258','identity/2021/11/front_id_pjiNDUh.jpg','identity/2021/11/back_id_q5mSHLD.jpg'),(14,'352569872','identity/2021/11/front_id_XqkNUB8.jpg','identity/2021/11/back_id_9e0dvqy.jpg'),(20,'352545268','identity/2021/11/front_id_ii9JmYo.jpg','identity/2021/11/back_id_4cdMbTG.jpg'),(32,'352636285','identity/2021/11/front_id_oSA1G0c.jpg','identity/2021/11/back_id_WwpOJLD.jpg'),(33,'352636632','identity/2021/11/front_id_IZoUVZ6.jpg','identity/2021/11/back_id_OaHDc5H.jpg'),(34,'3525452945','identity/2021/11/front_id_6V1kEFt.jpg','identity/2021/11/back_id_I9fuq17.jpg');
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
  `choice` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  CONSTRAINT `deliveryapp_user_chk_1` CHECK ((`choice` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_user`
--

LOCK TABLES `deliveryapp_user` WRITE;
/*!40000 ALTER TABLE `deliveryapp_user` DISABLE KEYS */;
INSERT INTO `deliveryapp_user` VALUES (1,'pbkdf2_sha256$260000$1C0czymBgDWU2q3oUkj3E7$OyjTnX569NbT5t9r1KA3W/xGMgh4wbB8NxhvgZ+H/tQ=','2021-11-01 06:49:09.918772',1,'admin','admin@gmail.com',1,1,'2021-10-26 14:03:58.000000','admin','ad','0168623488','Male','avatar/2021/10/Avatar_tGH1Khp.PNG',0,0),(2,'pbkdf2_sha256$260000$g9LKhLb4hjeH18kbHrA86x$T41SnSFw/+YaI57KEWpdmsmWv1T44L+aUdTY/fGAlug=','2021-11-01 06:49:01.000000',0,'kienluc','luckien9a6@gmail.com',0,1,'2021-10-26 14:04:34.000000','kien','luc tuan','0834697489','Male','avatar/2021/10/Avatar.PNG',1,0),(3,'pbkdf2_sha256$260000$4DxRp0xcFPJYVaXqKcjP8b$wPK2G1+WAa97IqACnY9SAZcgDlyyBjtas9GctnLbdOY=',NULL,0,'duongduc','duc@gmail.com',0,1,'2021-10-26 14:07:04.000000','duc','le duong','0123425232','Male','avatar/2021/11/avatar_duongduc.jpg',0,0),(4,'pbkdf2_sha256$260000$X3tGEwCQMxMiXcNFFcmims$/rI2dZMlxrz9YB6q0y3tRWnbw8Z3F+h6TDEPizIlI2c=',NULL,0,'quocvy','nqvy@gmail.com',0,1,'2021-11-01 04:07:36.000000','vy','nguyen quoc','0316164899','Male','avatar/2021/11/avatar_quocvy.jpg',0,0),(5,'pbkdf2_sha256$260000$VK3wKu1YbhIE2uVWJdfoMG$4f59NWWLJ73c9ycL2xL535sj+MR56RHCdFV6Et3czEc=',NULL,0,'chanhung','chanhung@gmail.com',0,1,'2021-11-01 05:10:08.000000','hung','ha chan','0123456789','Male','avatar/2021/11/avatar_chanhung.jpg',0,0),(6,'pbkdf2_sha256$260000$vgbDcwlkYgPIsHk1kZgQa5$V7kjiWdgAMyZoSIpb6t3QXftAjfVOJ70E2x2rwlOS80=',NULL,0,'huuthang','huuthang@gmail.com',0,1,'2021-11-01 12:20:54.000000','thang','tran huu','0397122453','Male','avatar/2021/11/avatar_huuthang.jpg',0,0),(7,'pbkdf2_sha256$260000$k76HTR9P5DDjf4PHpsT9ZO$DjeRpvaU/EaqrLFHwLcnxigux0nfIV0udcyRhneXZl4=',NULL,0,'nhatkhan','nhatkhan@gmail.com',0,1,'2021-11-01 12:21:39.000000','khan','nguyen nhat','0909362584','Male','avatar/2021/11/avatar_nhatkhan.jpg',0,0),(8,'pbkdf2_sha256$260000$tWCGrlc1Ypm4vjz0uT7189$QHK7WUt1jkriemGFuWfRpXxEYkhZbE9IBH1Jc43dND0=',NULL,0,'camry','camry@gmail.com',0,1,'2021-11-01 12:22:25.000000','ry','nguyen hao cam','0836284785','Male','avatar/2021/11/avatar_camry.jpg',1,0),(9,'pbkdf2_sha256$260000$nKKgLfgA2fV1dxOwl04HHn$kqt1mWiMZWCYV59NMzGiFxATpmcNPgzhytxADNzCfRs=',NULL,0,'nhatthanh','nhatthanh@gmail.com',0,1,'2021-11-01 12:23:16.000000','thanh','nguyen nhat','0768217785','Male','avatar/2021/11/avatar_nhatthanh.jpg',0,0),(10,'pbkdf2_sha256$260000$wnwnDewf88hF1vIr3h71mm$QxhL6swxoNdl6F8UKmwaLdOqEfmrzp6Rx1bMDjSLoFs=',NULL,0,'thanhlong','thanhlong@gmail.com',0,1,'2021-11-01 12:24:01.000000','long','nguyen thanh','0916332996','Male','avatar/2021/11/avatar_thanhlong.jpg',0,0),(11,'pbkdf2_sha256$260000$QqqgljQmThbvvlkqaecHNS$RDSGsHSmiNc9pAqBdhYt55is8z1acbLQfy9i+XMsiiI=',NULL,0,'phucsot','phucsot@gmail.com',0,1,'2021-11-01 12:24:46.000000','phuc','huynh van','0984612558','Male','avatar/2021/11/avatar_phucsot.jpg',1,0),(12,'pbkdf2_sha256$260000$F2AP7LiGLaZsevdSNB5Oh5$uyuAbIKnUutErYAbe47y8Zh8MQjis2+NGsX9jdp7DoE=',NULL,0,'anhthu','anhthu@gmail.com',0,1,'2021-11-01 12:25:46.000000','thu','to ngoc anh','0834235781','Female','avatar/2021/11/avatar_anhthu.jpg',0,0),(13,'pbkdf2_sha256$260000$GkKuxHPMbFeDHXIoDWgqCd$8BvIXiVKOcwFDMpq+KEIRedN7VeTpBervzDNBc2JKFY=',NULL,0,'camtu','camtu@gmail.com',0,1,'2021-11-01 12:26:52.000000','tu','huynh thi cam','0876253226','Female','avatar/2021/11/avatar_camtu.jpg',0,0),(14,'pbkdf2_sha256$260000$2ttEevZJclO9kdj2eOWigZ$k+/Rgy6fZS4RwmlKbnoPJxMj1ce9D0k1nXxRlsNroL8=',NULL,0,'test','test@gmail.com',0,1,'2021-11-01 15:15:20.000000','test','test2','0834697485','Male','avatar/2021/11/avatar_quocvy_48Tvz9G.jpg',1,0),(20,'pbkdf2_sha256$260000$KKrximy0CyDnQdXqv6SGC4$5JiMwgCLllgnBsS9guiP3/woulzwN1TvoumH4YwygCg=',NULL,0,'moly','moly@gmail.com',0,1,'2021-11-03 12:47:20.000000','moly','clea','0834986225','Male','avatar/2021/11/Avatar_9TCrxzG.PNG',1,0),(21,'pbkdf2_sha256$260000$VUGo0ygvxKBvq8zOAF0vbC$NrBLU1Jn33bePz0fn6uyOoj6/YOb845XznmKgUp9IZU=',NULL,0,'sonminh','moly@gmail.com',0,1,'2021-11-03 12:52:56.815533','son','minh','0834986422','Male','avatar/2021/11/Avatar_atkdy9r.PNG',0,0),(22,'pbkdf2_sha256$260000$i388oi3hJjfh63vuBZANN9$lqBSPxP6Xpw/i/JcaLAVqM2J/rWUgUD2KcfUPrbiilk=',NULL,0,'ngochien','hien@gmail.com',0,1,'2021-11-03 12:57:49.038691','hien','bui thi ngoc','0834552845','Female','avatar/2021/11/Avatar_lgqrljE.PNG',0,0),(23,'pbkdf2_sha256$260000$kFOWfJcMOMafGu4I0hyYiW$MYUVXBqVhPt1a4v5mb2XrqwNmZZCHjQiXCXQD2rE4n4=',NULL,0,'khailuc','khai@gmail.com',0,1,'2021-11-03 13:01:32.792383','khai','luc minh','0909161278','Male','avatar/2021/11/Avatar_P8IgsqR.PNG',0,0),(24,'pbkdf2_sha256$260000$xTaEdeG1FvCI38sKYCED32$lfR4rPiS6PHE0OwRqHYtOqA0PvI25X8VdcshokV0O/k=',NULL,0,'khangluc','khang@gmail.com',0,1,'2021-11-03 13:05:26.841531','khang','luc tuan','0397198098','Male','avatar/2021/11/Avatar_Uxt7LEG.PNG',0,0),(25,'pbkdf2_sha256$260000$suuQfSkUPWqQnR4E5l3oDu$BnV1Ujt1Jxba0KX3qH/OEgOEVNjqhLO0qmc3O8TfpW8=',NULL,0,'thiennhan','nhan@gmail.com',0,1,'2021-11-03 14:14:30.154065','nhan','huynh thien','0397198098','Male','avatar/2021/11/avatar_chanhung_2zmz4sH.jpg',0,0),(26,'pbkdf2_sha256$260000$aEwBDNJFyWh3XFU0ZpYZFt$ACtkJBaRsQCh9K8YxC3qaOLdTG6RmAbXhnaY8wmZZWY=',NULL,0,'huynhnhan','nhan@gmail.com',0,1,'2021-11-03 14:20:46.918398','nhan','huynh thien','0397198098','Male','avatar/2021/11/avatar_chanhung_W531z15.jpg',0,0),(27,'pbkdf2_sha256$260000$FTSmhNzkwGWRwg5TDEjiR4$NKhpFZ8u3uQUL2JdPtR3o8FjM/GCmwI77eEzA7rgQzg=',NULL,0,'huynhnhan2','nhan@gmail.com',0,1,'2021-11-03 14:24:07.484862','nhan','huynh thien','0397198098','Male','avatar/2021/11/avatar_chanhung_fXWGsX4.jpg',0,0),(28,'pbkdf2_sha256$260000$uWImfojQUTocTDGOmZUHUz$jJPdKs6Tu099BX++4RH99lmHfuDbfmeXOqFji8cyiA0=',NULL,0,'trungtin','tin@gmail.com',0,1,'2021-11-04 01:10:40.757975','tin','bui trung','0901254822','Male','avatar/2021/11/Avatar_pUiW3wc.PNG',0,0),(29,'pbkdf2_sha256$260000$S93zSohj83FnLOZPmsDLq4$yRPDeGaWHeTLwIoxPE7uLUoMsW+4Kd2h+ERKCCYC/Pc=',NULL,0,'trungkhang','trungkhang@gmail.com',0,1,'2021-11-04 01:28:58.842885','khang','bui trung','0901254822','Male','avatar/2021/11/Avatar_TvgkSCZ.PNG',0,0),(30,'pbkdf2_sha256$260000$zL6KGgXJxhK6jl6iLHKIid$hd3r+JanKq8ezeBjqdewd/HeV0jvhbeusvvuRqG51so=',NULL,0,'trungkien','trungkien@gmail.com',0,1,'2021-11-04 01:49:00.456689','kien','bui trung','0901254452','Male','avatar/2021/11/avatar_quocvy_6ZKXNSV.jpg',0,0),(31,'pbkdf2_sha256$260000$QU5Lch4Vz9yyTjoa2mUGTF$XzhIcyuEUH9ttR4ptt64LCptV5dPndZtRRAVU529Dvk=',NULL,0,'trangtu','trangtu@gmail.com',0,1,'2021-11-04 01:55:33.523049','tu','huynh trang','0901254993','Female','avatar/2021/11/avatar_camtu_2gNkELr.jpg',0,0),(32,'pbkdf2_sha256$260000$4pTKU4MxnIg8yBccUYektQ$FgHwav/Lq5gIU4/u8cgSevy+jqvUcz2+E9FEEFEPxSw=',NULL,0,'tantu','tantu@gmail.com',0,1,'2021-11-05 05:21:06.000000','tu','huynh tan','0901254664','Male','avatar/2021/11/avatar_nhatkhan_vpaGRJl.jpg',1,0),(33,'pbkdf2_sha256$260000$05NekzScFqFUlRpNZav9yi$dY+jXooVHvPpikk+cRabJI+SQqGM+n3SFUJahaMFtSI=',NULL,0,'ngocmai','ngocmai@gmail.com',0,1,'2021-11-05 05:30:23.659481','mai','bui thi ngoc','0902629856','Female','avatar/2021/11/avatar_anhthu_kTJ7GlW.jpg',1,0),(34,'pbkdf2_sha256$260000$NkCfuxJYFJmKyhSMVTJOTK$K1OcOVHOlAxu0hjU1NgjnprJ2DXBZjm7jSLoL9qDQsY=',NULL,0,'ducxuan','ducxuan@gmail.com',0,1,'2021-11-05 05:31:56.357815','xuan','ha duc','0902629682','Male','avatar/2021/11/avatar_nhatthanh_TiQoxYQ.jpg',1,0),(35,'pbkdf2_sha256$260000$obY8z5SnP5Kwk5sqAINSAk$S7GEaYKgngR8w8qPzi/4oGrWESFSmzFIzaGi1vp6jQQ=',NULL,0,'ducchinh','ducchinh@gmail.com',0,1,'2021-11-05 05:36:44.006894','chinh','ha duc','0918625314','Male','avatar/2021/11/avatar_thanhlong_xrpLDCj.jpg',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_user_groups`
--

LOCK TABLES `deliveryapp_user_groups` WRITE;
/*!40000 ALTER TABLE `deliveryapp_user_groups` DISABLE KEYS */;
INSERT INTO `deliveryapp_user_groups` VALUES (3,2,2),(13,3,1),(12,4,1),(11,5,1),(10,6,1),(9,7,1),(21,8,2),(7,9,1),(6,10,1),(2,11,2),(5,12,1),(4,13,1),(1,14,2),(16,20,2),(17,21,1),(18,22,1),(19,23,1),(20,24,1),(22,25,1),(23,26,1),(24,27,1),(25,28,1),(26,30,1),(27,31,1),(28,32,2),(29,33,2),(30,34,2),(31,35,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-26 14:05:45.345008','2','username: kienluc',1,'[{\"added\": {}}]',6,1),(2,'2021-10-26 14:06:22.051288','1','username: admin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Phone\", \"Gender\", \"Avatar\"]}}]',6,1),(3,'2021-10-26 14:06:40.656325','2','Shipper ID: 352634578',1,'[{\"added\": {}}]',9,1),(4,'2021-10-26 14:08:06.441285','3','username: test',1,'[{\"added\": {}}]',6,1),(5,'2021-10-26 14:08:25.922994','1','Creator: vy nguyen quoc\n Active: True\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: False',1,'[{\"added\": {}}]',10,1),(6,'2021-10-26 14:08:59.660165','1','Shipper: kien luc tuan\nCost: 20000',1,'[{\"added\": {}}]',7,1),(7,'2021-10-26 14:09:22.523107','1','Fast',1,'[{\"added\": {}}]',8,1),(8,'2021-10-26 14:10:06.014355','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000, \nPay method: 2',1,'[{\"added\": {}}]',11,1),(9,'2021-10-26 14:11:24.806634','1','Customer: vy nguyen quoc,\nshipper: kien luc tuan,\nComment: good shipper,\nrate: 5,\n',1,'[{\"added\": {}}]',12,1),(10,'2021-10-27 04:29:31.895006','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(11,'2021-10-27 04:29:50.000350','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(12,'2021-10-27 04:32:01.962250','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(13,'2021-10-27 09:02:51.303834','1','Hàng hóa ',1,'[{\"added\": {}}]',13,1),(14,'2021-10-27 09:16:17.840694','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Pickup address\", \"Product cate\"]}}]',11,1),(15,'2021-10-27 09:47:29.090239','1','Chi tiết',1,'[{\"added\": {}}]',14,1),(16,'2021-10-27 09:48:55.202012','1','Order Detail - Order ID 1',2,'[]',14,1),(17,'2021-10-27 11:54:00.636050','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 1',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(18,'2021-10-27 11:54:13.037332','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 0',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(19,'2021-10-27 11:54:19.439239','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(20,'2021-10-31 07:31:12.963171','3','Dược phẩm',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',13,1),(21,'2021-11-01 06:47:09.784240','5','Shipper ID: 352545528',3,'',9,1),(22,'2021-11-01 06:47:09.794148','4','Shipper ID: 352545226',3,'',9,1),(23,'2021-11-01 06:47:09.798418','3','Shipper ID: 352634502',3,'',9,1),(24,'2021-11-01 06:48:09.912447','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(25,'2021-11-01 06:48:20.035941','3','username: duongduc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(26,'2021-11-01 06:48:51.091825','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(27,'2021-11-01 06:50:01.666440','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(28,'2021-11-01 09:16:05.733116','1','customer',1,'[{\"added\": {}}]',3,1),(29,'2021-11-01 09:16:59.175682','2','shipper',1,'[{\"added\": {}}]',3,1),(30,'2021-11-01 12:19:49.458309','3','username: duongduc',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(31,'2021-11-01 12:20:02.114849','4','username: quocvy',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(32,'2021-11-01 12:20:42.184724','5','username: chanhung',2,'[{\"changed\": {\"fields\": [\"Username\", \"Email address\", \"First name\", \"Last name\", \"Avatar\"]}}]',6,1),(33,'2021-11-01 12:21:32.716110','6','username: huuthang',1,'[{\"added\": {}}]',6,1),(34,'2021-11-01 12:22:21.552361','7','username: nhatkhan',1,'[{\"added\": {}}]',6,1),(35,'2021-11-01 12:23:07.533120','8','username: camry',1,'[{\"added\": {}}]',6,1),(36,'2021-11-01 12:23:57.148051','9','username: nhatthanh',1,'[{\"added\": {}}]',6,1),(37,'2021-11-01 12:24:37.646308','10','username: thanhlong',1,'[{\"added\": {}}]',6,1),(38,'2021-11-01 12:25:17.834592','11','username: phucsot',1,'[{\"added\": {}}]',6,1),(39,'2021-11-01 12:26:21.214118','12','username: anhthu',1,'[{\"added\": {}}]',6,1),(40,'2021-11-01 12:27:21.741926','13','username: camtu',1,'[{\"added\": {}}]',6,1),(41,'2021-11-01 12:27:49.924175','13','username: camtu',2,'[]',6,1),(42,'2021-11-02 02:58:39.565384','14','Shipper ID: 123456789251',1,'[{\"added\": {}}]',9,1),(43,'2021-11-02 03:06:38.241860','11','Shipper ID: 352574258',1,'[{\"added\": {}}]',9,1),(44,'2021-11-02 03:06:50.490727','14','Shipper ID: 352569872',2,'[{\"changed\": {\"fields\": [\"Id number\"]}}]',9,1),(45,'2021-11-02 03:17:26.636043','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Is shipper\"]}}]',6,1),(46,'2021-11-02 03:17:38.484658','14','username: test',2,'[{\"changed\": {\"fields\": [\"Is shipper\"]}}]',6,1),(47,'2021-11-02 03:18:04.098212','11','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Is shipper\"]}}]',6,1),(48,'2021-11-02 03:34:01.379042','14','username: test',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(49,'2021-11-02 03:34:06.887195','14','username: test',2,'[]',6,1),(50,'2021-11-02 03:34:14.781297','11','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(51,'2021-11-02 03:34:25.868551','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(52,'2021-11-02 03:44:18.318254','3','Shipper ID: 352598632',1,'[{\"added\": {}}]',9,1),(53,'2021-11-02 03:44:31.314606','3','Shipper ID: 352598632',3,'',9,1),(54,'2021-11-02 04:15:06.096795','1','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Customer\"]}}]',11,1),(55,'2021-11-02 04:27:47.554116','1','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 0',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(56,'2021-11-02 04:28:10.190783','1','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(57,'2021-11-02 05:08:35.624433','3','Customer: thang tran huu\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-02 05:08:35.618855+00:00, \nStatus: 0,\nTotal price: 65000, \nPay method: 2',1,'[{\"added\": {}}]',11,1),(58,'2021-11-02 05:25:10.784042','1','Creator: duc le duong\n Active: True\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Product cate\", \"Service cate\"]}}]',10,1),(59,'2021-11-02 05:25:22.037363','1','Creator: duc le duong\n Active: True\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Pickup address\"]}}]',10,1),(60,'2021-11-02 05:25:56.489020','2','normal express',1,'[{\"added\": {}}]',8,1),(61,'2021-11-02 05:26:10.152784','1','Fast',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',8,1),(62,'2021-11-02 05:26:50.747159','3','Saving express',1,'[{\"added\": {}}]',8,1),(63,'2021-11-02 05:27:24.718589','14','username: test',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',6,1),(64,'2021-11-02 05:35:51.766874','13','username: camtu',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(65,'2021-11-02 05:35:56.335747','12','username: anhthu',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(66,'2021-11-02 05:36:00.879830','10','username: thanhlong',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(67,'2021-11-02 05:36:06.922766','10','username: thanhlong',2,'[]',6,1),(68,'2021-11-02 05:36:15.480339','13','username: camtu',2,'[]',6,1),(69,'2021-11-02 05:36:25.633970','9','username: nhatthanh',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(70,'2021-11-02 05:36:30.819186','9','username: nhatthanh',2,'[]',6,1),(71,'2021-11-02 05:36:36.218639','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(72,'2021-11-02 05:36:39.513038','8','username: camry',2,'[]',6,1),(73,'2021-11-02 05:36:43.557871','8','username: camry',2,'[]',6,1),(74,'2021-11-03 12:21:37.955413','7','username: nhatkhan',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(75,'2021-11-03 12:21:46.156127','6','username: huuthang',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(76,'2021-11-03 12:21:58.174303','5','username: chanhung',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(77,'2021-11-03 12:22:14.569023','4','username: quocvy',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(78,'2021-11-03 12:23:12.631741','3','username: duongduc',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(79,'2021-11-03 12:38:00.704610','15','username: moly',3,'',6,1),(80,'2021-11-03 12:39:24.166726','16','username: moly',3,'',6,1),(81,'2021-11-03 12:43:35.358730','17','username: moly',3,'',6,1),(82,'2021-11-03 12:45:15.955772','18','username: moly',3,'',6,1),(83,'2021-11-03 12:46:58.362246','19','username: moly',3,'',6,1),(84,'2021-11-03 13:11:18.019384','20','Shipper ID: 352545268',1,'[{\"added\": {}}]',9,1),(85,'2021-11-03 13:46:19.349661','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Is shipper\"]}}]',6,1),(86,'2021-11-05 05:24:37.817895','32','username: tantu',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(87,'2021-11-05 05:27:08.856753','20','username: moly',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(88,'2021-11-05 05:27:18.528062','14','username: test',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(89,'2021-11-05 05:27:33.379943','11','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(90,'2021-11-05 05:27:47.973659','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(91,'2021-11-05 05:27:57.469628','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(92,'2021-11-05 05:35:37.273952','34','Shipper ID: 3525452945',1,'[{\"added\": {}}]',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-26 14:03:33.189245'),(2,'contenttypes','0002_remove_content_type_name','2021-10-26 14:03:33.292375'),(3,'auth','0001_initial','2021-10-26 14:03:33.671857'),(4,'auth','0002_alter_permission_name_max_length','2021-10-26 14:03:33.738530'),(5,'auth','0003_alter_user_email_max_length','2021-10-26 14:03:33.746541'),(6,'auth','0004_alter_user_username_opts','2021-10-26 14:03:33.755013'),(7,'auth','0005_alter_user_last_login_null','2021-10-26 14:03:33.761959'),(8,'auth','0006_require_contenttypes_0002','2021-10-26 14:03:33.766647'),(9,'auth','0007_alter_validators_add_error_messages','2021-10-26 14:03:33.774626'),(10,'auth','0008_alter_user_username_max_length','2021-10-26 14:03:33.784594'),(11,'auth','0009_alter_user_last_name_max_length','2021-10-26 14:03:33.792814'),(12,'auth','0010_alter_group_name_max_length','2021-10-26 14:03:33.811645'),(13,'auth','0011_update_proxy_permissions','2021-10-26 14:03:33.820893'),(14,'auth','0012_alter_user_first_name_max_length','2021-10-26 14:03:33.828871'),(15,'deliveryapp','0001_initial','2021-10-26 14:03:35.561733'),(16,'admin','0001_initial','2021-10-26 14:03:35.908745'),(17,'admin','0002_logentry_remove_auto_add','2021-10-26 14:03:35.933320'),(18,'admin','0003_logentry_add_action_flag_choices','2021-10-26 14:03:35.946590'),(19,'sessions','0001_initial','2021-10-26 14:03:35.998782'),(20,'deliveryapp','0002_order_pickup_address','2021-10-27 08:32:54.840454'),(21,'deliveryapp','0003_productcategory','2021-10-27 08:41:30.902486'),(22,'deliveryapp','0004_order_product_cate','2021-10-27 08:42:47.594816'),(23,'deliveryapp','0005_orderdetail','2021-10-27 09:45:50.727001'),(24,'oauth2_provider','0001_initial','2021-10-31 07:40:28.479298'),(25,'oauth2_provider','0002_auto_20190406_1805','2021-10-31 07:40:28.728723'),(26,'oauth2_provider','0003_auto_20201211_1314','2021-10-31 07:40:28.818801'),(27,'oauth2_provider','0004_auto_20200902_2022','2021-10-31 07:40:29.413812'),(28,'deliveryapp','0006_orderpost_pickup_address','2021-11-01 07:52:50.186810'),(29,'deliveryapp','0007_alter_auction_shipper','2021-11-01 08:31:55.386613'),(30,'deliveryapp','0008_auto_20211102_0856','2021-11-02 01:56:35.988955'),(31,'deliveryapp','0009_auto_20211102_0956','2021-11-02 02:56:23.837589'),(32,'deliveryapp','0010_user_is_shipper','2021-11-02 03:16:23.773167'),(33,'deliveryapp','0011_auto_20211102_1059','2021-11-02 03:59:29.952253'),(34,'deliveryapp','0012_alter_order_auction','2021-11-02 04:27:11.393588'),(35,'deliveryapp','0013_auto_20211102_1219','2021-11-02 05:19:20.801841'),(36,'deliveryapp','0014_user_choice','2021-11-04 01:46:44.683069'),(37,'deliveryapp','0015_alter_user_choice','2021-11-05 05:26:19.055706');
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
INSERT INTO `django_session` VALUES ('yew8c8qhdzu2v4qunvnyl8scvb0haae3','.eJxVjDsOwjAQBe_iGlneNesPJX3OYPmzxgGUSHFSIe4OkVJA-2bmvUSI29rC1nkJYxEXAeL0u6WYHzztoNzjdJtlnqd1GZPcFXnQLoe58PN6uH8HLfb2rXUFTBU1k7LK4Fk78hALAjswyoL3pLIDy5YImZWCiBpT8aYCeXLi_QGlbDYd:1mhR81:grcqTSKn9By3A73smrty8C2KcPGiqldCiUqklr-D-Po','2021-11-15 06:49:09.922503');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'bg0FSDoEQzsAPYH650rZeA5neGBJCx','2021-10-31 17:52:50.951816','read write',1,2,'2021-10-31 07:52:50.952852','2021-10-31 07:52:50.952852',NULL,NULL),(2,'5BbTh2zU3bRg42yD99HwDffj3nxDSl','2021-10-31 17:53:18.515952','read write',1,1,'2021-10-31 07:53:18.515952','2021-10-31 07:53:18.515952',NULL,NULL),(3,'fbwz1Eo4ysBD0x4iXczDWfvqElkTzk','2021-11-01 13:43:54.112774','read write',1,2,'2021-11-01 03:43:54.113773','2021-11-01 03:43:54.113773',NULL,NULL),(4,'drTNJOvn74fxG8o2bK2hjSL4t6JftA','2021-11-01 14:16:20.383312','read write',1,4,'2021-11-01 04:16:20.384310','2021-11-01 04:16:20.384310',NULL,NULL),(5,'RScz87BE3SxXcp4Rcp3PzMASPp8XB5','2021-11-01 18:53:54.561489','read write',1,3,'2021-11-01 08:53:54.563486','2021-11-01 08:53:54.563486',NULL,NULL),(6,'b3G1QrIp2YETfqN9xFnCWCRZh5vb0E','2021-11-01 18:58:59.297123','read write',1,2,'2021-11-01 08:58:59.298088','2021-11-01 08:58:59.298088',NULL,NULL),(7,'iXu8O6tSJhiVBrDgAmN4l7lo54Z7ez','2021-11-01 21:57:25.004747','read write',1,3,'2021-11-01 11:57:25.004747','2021-11-01 11:57:25.004747',NULL,NULL),(8,'BsGT1Cs8GWzmdvnsMB2qae94KlVNoF','2021-11-01 21:59:11.046137','read write',1,2,'2021-11-01 11:59:11.046137','2021-11-01 11:59:11.046137',NULL,NULL),(9,'Ynpcw7qi5NyQHETQEZoAoCt7WeF6AY','2021-11-01 21:59:55.049195','read write',1,3,'2021-11-01 11:59:55.049195','2021-11-01 11:59:55.049195',NULL,NULL),(10,'s1gZUXo0zpSRLEjZzWeTfXQ9xqgY7z','2021-11-02 01:26:50.396618','read write',1,3,'2021-11-01 15:26:50.397615','2021-11-01 15:26:50.397615',NULL,NULL),(11,'tCWvrXYRneeF7dGZJbHZTG25zcKo2y','2021-11-02 12:52:59.620810','read write',1,2,'2021-11-02 02:52:59.621844','2021-11-02 02:52:59.621844',NULL,NULL),(12,'igMtBmfzGBsbDeMOh7m6SFE4e4inMj','2021-11-02 12:56:49.553541','read write',1,2,'2021-11-02 02:56:49.553541','2021-11-02 02:56:49.553541',NULL,NULL),(13,'iMiMbI2FmLnMjaUILsP4ExHVozChDX','2021-11-02 12:58:51.502170','read write',1,14,'2021-11-02 02:58:51.502170','2021-11-02 02:58:51.502170',NULL,NULL),(14,'ymSmubgql6GJPPd26ihgmiFaQeJSk2','2021-11-02 13:07:34.006131','read write',1,11,'2021-11-02 03:07:34.007128','2021-11-02 03:07:34.007128',NULL,NULL),(15,'tOp4GaQKZInox6BWjifiURiqZunK57','2021-11-02 13:09:11.973625','read write',1,14,'2021-11-02 03:09:11.973625','2021-11-02 03:09:11.973625',NULL,NULL),(16,'lv7HaBVbP7nJP9pIOtsPqCyRw5e8EW','2021-11-02 13:11:43.655062','read write',1,11,'2021-11-02 03:11:43.655062','2021-11-02 03:11:43.656060',NULL,NULL),(17,'WQEID2479ModQ5tgtKQZvR1ybDgDPe','2021-11-02 13:12:26.428250','read write',1,11,'2021-11-02 03:12:26.429248','2021-11-02 03:12:26.429248',NULL,NULL),(18,'Zn2cxXrO4s1kheXGglgMZ93sHoczoA','2021-11-02 13:32:22.628354','read write',1,14,'2021-11-02 03:32:22.628354','2021-11-02 03:32:22.628354',NULL,NULL),(19,'vViG6wd9tnZZeNvX5sVxyWUMB77O7F','2021-11-02 13:35:00.106600','read write',1,14,'2021-11-02 03:35:00.106600','2021-11-02 03:35:00.107599',NULL,NULL),(20,'gJpqEVPg8mmhsMGtCgrUfS5BS8w1iK','2021-11-02 13:41:33.036373','read write',1,14,'2021-11-02 03:41:33.036373','2021-11-02 03:41:33.036373',NULL,NULL),(21,'XuDpE5hclrq0In47dwFnw9QzyI5lLW','2021-11-02 13:42:06.322308','read write',1,2,'2021-11-02 03:42:06.322308','2021-11-02 03:42:06.322308',NULL,NULL),(22,'EcYgSsMvg1DxcPbA5fiZXOWUxN4aS6','2021-11-02 13:45:44.250433','read write',1,2,'2021-11-02 03:45:44.250433','2021-11-02 03:45:44.250433',NULL,NULL),(23,'YGxk07GaUG4p6xJyoXkqVlY57AcFwt','2021-11-02 14:08:23.506353','read write',1,1,'2021-11-02 04:08:23.506353','2021-11-02 04:08:23.506353',NULL,NULL),(24,'aQuL11ruxX1rJ3SNnaOgCIbKm4g7nR','2021-11-02 14:10:31.913774','read write',1,3,'2021-11-02 04:10:31.913774','2021-11-02 04:10:31.913774',NULL,NULL),(25,'KHJGRM5924gXJ0X9J8OePubjE7Y7NQ','2021-11-02 14:16:00.082948','read write',1,3,'2021-11-02 04:16:00.082948','2021-11-02 04:16:00.082948',NULL,NULL),(26,'TlF3CKo0knXYjqAuYkzGOt9DeVSE3F','2021-11-02 14:32:11.043195','read write',1,5,'2021-11-02 04:32:11.043195','2021-11-02 04:32:11.043195',NULL,NULL),(27,'oadzLune0pooBzMAKqN3jDoTQHi0VV','2021-11-02 14:39:46.191130','read write',1,11,'2021-11-02 04:39:46.192129','2021-11-02 04:39:46.192129',NULL,NULL),(28,'3heiumQRnpJQ0LK7eEd6lTI6Sc7Oba','2021-11-02 14:40:55.855432','read write',1,5,'2021-11-02 04:40:55.855432','2021-11-02 04:40:55.855432',NULL,NULL),(29,'bSJnFIJocK0dEP87JP2zAQidurlZkr','2021-11-02 14:41:02.268926','read write',1,11,'2021-11-02 04:41:02.269925','2021-11-02 04:41:02.269925',NULL,NULL),(30,'lEeNSaRiexV8KRYv7qB0FyLjlqjwQn','2021-11-02 14:41:04.578688','read write',1,5,'2021-11-02 04:41:04.578688','2021-11-02 04:41:04.578688',NULL,NULL),(31,'SCkcxcUG8zEJ2EH3BkQZK2nJN1XXWU','2021-11-02 14:46:30.399583','read write',1,5,'2021-11-02 04:46:30.399583','2021-11-02 04:46:30.399583',NULL,NULL),(32,'ttsRl6LqfLbpWyyq1viUFNx0xRofWS','2021-11-02 14:51:12.508741','read write',1,5,'2021-11-02 04:51:12.508741','2021-11-02 04:51:12.508741',NULL,NULL),(33,'Wgv8DFVM76Uk4M1cAAXQSfwrKmz4gP','2021-11-02 15:04:43.163107','read write',1,8,'2021-11-02 05:04:43.163107','2021-11-02 05:04:43.163107',NULL,NULL),(34,'4N5JRmk8oLOaeDufkBi1DbANlD6r7c','2021-11-02 15:05:50.017508','read write',1,5,'2021-11-02 05:05:50.017508','2021-11-02 05:05:50.017508',NULL,NULL),(35,'LVFaDI6wn6ikyNkpllfJH05wveseA6','2021-11-02 15:06:29.266495','read write',1,8,'2021-11-02 05:06:29.266495','2021-11-02 05:06:29.266495',NULL,NULL),(36,'mFa0tLeKicQTsGf54xOCOlf5Lw1qa8','2021-11-02 15:06:46.182260','read write',1,5,'2021-11-02 05:06:46.182260','2021-11-02 05:06:46.182260',NULL,NULL),(37,'UaeILcJVhtcLCVK2CAITWTJ3ExXdXZ','2021-11-02 15:09:18.539736','read write',1,6,'2021-11-02 05:09:18.540733','2021-11-02 05:09:18.540733',NULL,NULL),(38,'HtQAssk2shfsUh1QXE9c3iisDEPlOo','2021-11-02 15:41:46.976814','read write',1,8,'2021-11-02 05:41:46.976814','2021-11-02 05:41:46.976814',NULL,NULL),(39,'UURIvDPU3k2Q4GYyVLMOFXDLRPhoM0','2021-11-02 15:58:38.309989','read write',1,8,'2021-11-02 05:58:38.310987','2021-11-02 05:58:38.310987',NULL,NULL),(40,'o9MO7BlCWDB7aSJstXHeWaHOx7ELf2','2021-11-02 16:03:58.095368','read write',1,8,'2021-11-02 06:03:58.096366','2021-11-02 06:03:58.096366',NULL,NULL),(41,'2237Qw2D6StLCWohdqwZdskadIylfJ','2021-11-02 16:04:20.521324','read write',1,2,'2021-11-02 06:04:20.521324','2021-11-02 06:04:20.521324',NULL,NULL),(42,'5IXTIBqiEi581brCxgerTTHDtHzmTe','2021-11-02 16:07:41.238846','read write',1,2,'2021-11-02 06:07:41.238846','2021-11-02 06:07:41.238846',NULL,NULL),(43,'5e3QdSS5cx6Bn1qettURVm7FpCYaZO','2021-11-02 16:10:06.734189','read write',1,8,'2021-11-02 06:10:06.735185','2021-11-02 06:10:06.735185',NULL,NULL),(44,'v0kYoINBdfHHkmu54KIrPSaFTICyyN','2021-11-02 16:55:10.591575','read write',1,9,'2021-11-02 06:55:10.592577','2021-11-02 06:55:10.592577',NULL,NULL),(45,'G13mEIXGXe5r5HdbeCUu0eWKj4Q50O','2021-11-02 16:57:58.499823','read write',1,9,'2021-11-02 06:57:58.500819','2021-11-02 06:57:58.500819',NULL,NULL),(46,'cLHru9zDPjJJeB7pIR81tt0Hkh5XiB','2021-11-02 17:01:01.102885','read write',1,13,'2021-11-02 07:01:01.102885','2021-11-02 07:01:01.102885',NULL,NULL),(47,'xLKZVYb3o37hY7qyTCk6xF2B5AbIVt','2021-11-02 17:01:32.565327','read write',1,10,'2021-11-02 07:01:32.566325','2021-11-02 07:01:32.566325',NULL,NULL),(48,'pKsTb6Aj8VLOjoCwC0MubTls6Ycur0','2021-11-02 17:04:28.698877','read write',1,3,'2021-11-02 07:04:28.699907','2021-11-02 07:04:28.699907',NULL,NULL),(49,'3YTt0TQfnwNi65jfhZqyUDcn4DaVCW','2021-11-02 17:14:48.236825','read write',1,14,'2021-11-02 07:14:48.237823','2021-11-02 07:14:48.237823',NULL,NULL),(50,'cJXam0p9fWROrkl4hGuEUC1JGhAA4S','2021-11-02 17:17:06.934926','read write',1,13,'2021-11-02 07:17:06.934926','2021-11-02 07:17:06.935923',NULL,NULL),(51,'FrNulqfe3mj76KTAv7880L4MgmiXui','2021-11-02 17:17:49.055140','read write',1,13,'2021-11-02 07:17:49.055140','2021-11-02 07:17:49.055140',NULL,NULL),(52,'YSKtaXPM0Re4Ckh7IMexTjSiP0bA7M','2021-11-02 17:26:52.073921','read write',1,13,'2021-11-02 07:26:52.073921','2021-11-02 07:26:52.073921',NULL,NULL),(53,'KaXWFgz2eP2YDRL5Uk9jsJKQSXhNJZ','2021-11-02 17:28:32.977090','read write',1,11,'2021-11-02 07:28:32.978088','2021-11-02 07:28:32.978088',NULL,NULL),(54,'YFonCBXTFQ3mcpvf46rj2yZl5YbBGa','2021-11-02 17:29:17.477573','read write',1,13,'2021-11-02 07:29:17.478607','2021-11-02 07:29:17.478607',NULL,NULL),(55,'iOLykf2h4axPZ77aW7OlJdo4AOK4aY','2021-11-02 17:31:04.278955','read write',1,11,'2021-11-02 07:31:04.278955','2021-11-02 07:31:04.278955',NULL,NULL),(56,'iRASZPr426jA6Fwy7NkP8v6zbWbMBj','2021-11-02 17:34:14.436515','read write',1,13,'2021-11-02 07:34:14.437511','2021-11-02 07:34:14.437511',NULL,NULL),(57,'0sLzFzadkV7kO0CqA1oDreNCVn7qdV','2021-11-02 17:34:36.432368','read write',1,11,'2021-11-02 07:34:36.433368','2021-11-02 07:34:36.433368',NULL,NULL),(58,'VWd2ZrJrGLqwTH3yvBK1uzMQqGRLsM','2021-11-03 22:16:34.374192','read write',1,11,'2021-11-03 12:16:34.375100','2021-11-03 12:16:34.375100',NULL,NULL),(59,'lHkdbkoK3EuNslImKReSp3wHdGhhqy','2021-11-03 22:17:11.490705','read write',1,13,'2021-11-03 12:17:11.490705','2021-11-03 12:17:11.490705',NULL,NULL),(60,'XrMGsrlACFIIndaZdb4pwds4yDhCgD','2021-11-03 23:40:20.418880','read write',1,11,'2021-11-03 13:40:20.418880','2021-11-03 13:40:20.418880',NULL,NULL),(61,'AUTAocmXvtGhWZCydhrPOTyRAk03Su','2021-11-04 11:14:18.379214','read write',1,28,'2021-11-04 01:14:18.379214','2021-11-04 01:14:18.379214',NULL,NULL),(62,'OtYDvF5RiZqNRJwsOfz7CUnDoWfDB7','2021-11-04 11:53:06.515742','read write',1,30,'2021-11-04 01:53:06.515742','2021-11-04 01:53:06.515742',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'d0kiV4zEH7vcRomMk41ONqjhb3p5jD',1,1,2,'2021-10-31 07:52:50.955821','2021-10-31 07:52:50.955821',NULL),(2,'iHXpCN02blk7gkoilOsVJS5gxI14Mw',2,1,1,'2021-10-31 07:53:18.518509','2021-10-31 07:53:18.518509',NULL),(3,'R2o00GPa2fwIVzU5clnEhohB78vhz8',3,1,2,'2021-11-01 03:43:54.126035','2021-11-01 03:43:54.126035',NULL),(4,'cONgJ534lzBD8QE6Rap00g0RAhU2tN',4,1,4,'2021-11-01 04:16:20.388300','2021-11-01 04:16:20.388300',NULL),(5,'dg20xjNJ0NRqU9jbKh6myz2QssBfWQ',5,1,3,'2021-11-01 08:53:54.568559','2021-11-01 08:53:54.568559',NULL),(6,'ROGg0rf1LPUSguuBgU7UqD2bvCAYjx',6,1,2,'2021-11-01 08:58:59.302464','2021-11-01 08:58:59.302464',NULL),(7,'RBBt27VTAoTo6U22zV945EBxIfjznt',7,1,3,'2021-11-01 11:57:25.018857','2021-11-01 11:57:25.018857',NULL),(8,'4Mvvx2OOr5LbrBTTdf6fs6wd5lConX',8,1,2,'2021-11-01 11:59:11.049092','2021-11-01 11:59:11.049092',NULL),(9,'rxhA81cJigYWGe0MYIxifFMt8PHkF8',9,1,3,'2021-11-01 11:59:55.052200','2021-11-01 11:59:55.052200',NULL),(10,'EXE0aeDC6oH707jhvJeLqznDgwrcW8',10,1,3,'2021-11-01 15:26:50.403600','2021-11-01 15:26:50.403600',NULL),(11,'D2q7nZ2fB6MrKbNEK6iUSLAdEBkqWh',11,1,2,'2021-11-02 02:52:59.635820','2021-11-02 02:52:59.635820',NULL),(12,'RTQjNsLU08ZoBB8PXaVDkQiJTSGnAs',12,1,2,'2021-11-02 02:56:49.556076','2021-11-02 02:56:49.556076',NULL),(13,'MyrDX2HahtESoeTCoxADaevab8My0x',13,1,14,'2021-11-02 02:58:51.507797','2021-11-02 02:58:51.507797',NULL),(14,'Fd6ekd3KxvcRXowcjaCSgYIQKdmzvJ',14,1,11,'2021-11-02 03:07:34.011117','2021-11-02 03:07:34.011117',NULL),(15,'TcQUkHNGIFg66u4WKtTcMHVg8VkYRt',15,1,14,'2021-11-02 03:09:11.975833','2021-11-02 03:09:11.975833',NULL),(16,'1Mtb6uIj58sVVXFdzaRj1xkzttUG0Q',16,1,11,'2021-11-02 03:11:43.658668','2021-11-02 03:11:43.658668',NULL),(17,'E2TgQishFivSx0WD0HiBYQJwn4CzNW',17,1,11,'2021-11-02 03:12:26.431175','2021-11-02 03:12:26.431175',NULL),(18,'hj6bw0NW6Iyyw8MJczzTqug3fLo29I',18,1,14,'2021-11-02 03:32:22.633341','2021-11-02 03:32:22.633341',NULL),(19,'H7BeseaXWfCNcJrqUuTPqYgrkLfbfK',19,1,14,'2021-11-02 03:35:00.109598','2021-11-02 03:35:00.109598',NULL),(20,'2f8R3mfjelkUn5xWmH7ijLxNBXQVOq',20,1,14,'2021-11-02 03:41:33.038369','2021-11-02 03:41:33.038369',NULL),(21,'yHoXibQf9O9Hy6zgoShjRqRNwN2WZ1',21,1,2,'2021-11-02 03:42:06.325485','2021-11-02 03:42:06.325485',NULL),(22,'C9k04qfRqn4OdHwJpc14TiBVMnSWth',22,1,2,'2021-11-02 03:45:44.253777','2021-11-02 03:45:44.253777',NULL),(23,'L6ziut7UhAoF77P0x2MxrpaiH6ZENM',23,1,1,'2021-11-02 04:08:23.510768','2021-11-02 04:08:23.510768',NULL),(24,'0Mq4hME8YY1qAvNCtpmlXeiT9ZOmaA',24,1,3,'2021-11-02 04:10:31.916377','2021-11-02 04:10:31.916377',NULL),(25,'Bs9rKLRl9dVKUzHEJNiy54vKHWGGW5',25,1,3,'2021-11-02 04:16:00.086113','2021-11-02 04:16:00.086113',NULL),(26,'BZ6k0rT94239EvfAh7iTIfk05pwVyS',26,1,5,'2021-11-02 04:32:11.047365','2021-11-02 04:32:11.047365',NULL),(27,'IPW0h6I4wjIRpDlp6ljdlnTJ1kGp1L',27,1,11,'2021-11-02 04:39:46.193967','2021-11-02 04:39:46.193967',NULL),(28,'Rrg49dqqtxpyNTXxXMAhZHdsR3CBWP',28,1,5,'2021-11-02 04:40:55.859840','2021-11-02 04:40:55.859840',NULL),(29,'A81Oe3epDvL9s3xntGdmr3lc2ZNvbt',29,1,11,'2021-11-02 04:41:02.271888','2021-11-02 04:41:02.271888',NULL),(30,'LgdXNaaMv0g1RsOevD1yvVkyf8bq3l',30,1,5,'2021-11-02 04:41:04.581312','2021-11-02 04:41:04.581312',NULL),(31,'vJsaymSU4RahFcUPfLUB1YehQeWIt1',31,1,5,'2021-11-02 04:46:30.403298','2021-11-02 04:46:30.403298',NULL),(32,'GI8ZdOQiK09aXDZ0MPAMpT45CiGrLi',32,1,5,'2021-11-02 04:51:12.513634','2021-11-02 04:51:12.513634',NULL),(33,'6Fni5eAxDHcXc5l0DXKbnQjM1qTKYg',33,1,8,'2021-11-02 05:04:43.166042','2021-11-02 05:04:43.166042',NULL),(34,'5ZOHb6qK6zgU6UqgiWL9BOLa4rmkCt',34,1,5,'2021-11-02 05:05:50.021959','2021-11-02 05:05:50.021959',NULL),(35,'MppJCmM8rQmYaOsd5qzMP8iUJnFxNH',35,1,8,'2021-11-02 05:06:29.268994','2021-11-02 05:06:29.268994',NULL),(36,'qN5BjQBPdabZ80vAVkqSCGHns9bqg5',36,1,5,'2021-11-02 05:06:46.185254','2021-11-02 05:06:46.185254',NULL),(37,'JuAzTm7hNzdU9HnVxTM5bEIuHKuLEH',37,1,6,'2021-11-02 05:09:18.542680','2021-11-02 05:09:18.542680',NULL),(38,'sXPG5gryftwI9R7pDv6MCgSXhjxCl4',38,1,8,'2021-11-02 05:41:46.980947','2021-11-02 05:41:46.980947',NULL),(39,'n9ztcLakOUGTlEicmwxdJiOTHS0Znl',39,1,8,'2021-11-02 05:58:38.312980','2021-11-02 05:58:38.312980',NULL),(40,'OaypGZvPZpFgVojWsklD8yZGE6MpwH',40,1,8,'2021-11-02 06:03:58.098431','2021-11-02 06:03:58.098431',NULL),(41,'tfCJxJ9gysFUaPYPNl765Z9Jau3y1m',41,1,2,'2021-11-02 06:04:20.525635','2021-11-02 06:04:20.525635',NULL),(42,'yvd58GGkpYxShuu824ygpZONUxCJhA',42,1,2,'2021-11-02 06:07:41.241048','2021-11-02 06:07:41.241048',NULL),(43,'1T7xlKJLwQzAbH2fImFBPF4T22UIzP',43,1,8,'2021-11-02 06:10:06.738678','2021-11-02 06:10:06.738678',NULL),(44,'kAyf1HVao0Ay5eqQ7jLIbZBrbymuCH',44,1,9,'2021-11-02 06:55:10.597559','2021-11-02 06:55:10.597559',NULL),(45,'uEV3kXlKdf45ojvCVswU2TsJ4sHUJJ',45,1,9,'2021-11-02 06:57:58.503812','2021-11-02 06:57:58.503812',NULL),(46,'v1vYLj4vyyR5Lbm5Jc2LJ3a9a8mhMD',46,1,13,'2021-11-02 07:01:01.105876','2021-11-02 07:01:01.105876',NULL),(47,'z5SAlD0lweoGyjFSMTFBvb4RySJOVD',47,1,10,'2021-11-02 07:01:32.568377','2021-11-02 07:01:32.568377',NULL),(48,'T2QUA6FzdcYg2zH4HYan1dlv710c5q',48,1,3,'2021-11-02 07:04:28.705946','2021-11-02 07:04:28.705946',NULL),(49,'yhWtgXWaqVcRY6Uj3L7enV4O06RWhr',49,1,14,'2021-11-02 07:14:48.242812','2021-11-02 07:14:48.242812',NULL),(50,'6jjqHz9k1nvSGV92jjNxuSANqbb2jr',50,1,13,'2021-11-02 07:17:06.937584','2021-11-02 07:17:06.937584',NULL),(51,'FwRJSkKJiAeAAiV4ZqISAR8ybssnLe',51,1,13,'2021-11-02 07:17:49.058133','2021-11-02 07:17:49.058133',NULL),(52,'1MLsvFcOeFX7nFRIDhDpKeCVXowzF0',52,1,13,'2021-11-02 07:26:52.076914','2021-11-02 07:26:52.076914',NULL),(53,'PXPVI4bb7PRm7sXHIMroX9vIzveygr',53,1,11,'2021-11-02 07:28:32.980949','2021-11-02 07:28:32.980949',NULL),(54,'GNzT8oy2kUVwAWMdn86H8QXhUCFzlz',54,1,13,'2021-11-02 07:29:17.480564','2021-11-02 07:29:17.480564',NULL),(55,'KhdqOueJ2yjDVSLIKe22NAAChlemg2',55,1,11,'2021-11-02 07:31:04.283782','2021-11-02 07:31:04.283782',NULL),(56,'fe8b4gdkpX2uGdWApjgtslVQlkU4lp',56,1,13,'2021-11-02 07:34:14.440553','2021-11-02 07:34:14.440553',NULL),(57,'fZVsmQfqUaHYbZlqaTGMayb7YbApQ9',57,1,11,'2021-11-02 07:34:36.435012','2021-11-02 07:34:36.435012',NULL),(58,'9BcVV7MWWQyTNaExdMByhwfOLO5Y1v',58,1,11,'2021-11-03 12:16:34.378223','2021-11-03 12:16:34.378223',NULL),(59,'iJjusuznaixDEmZZ8mzz5QFuYG2MAT',59,1,13,'2021-11-03 12:17:11.493732','2021-11-03 12:17:11.493732',NULL),(60,'Gog0dCzcSHsTqcIES3e0ps5c3ulJ0N',60,1,11,'2021-11-03 13:40:20.423868','2021-11-03 13:40:20.423868',NULL),(61,'bM9RIwle2Dz2qhGDRDSUEJiHH4VbPF',61,1,28,'2021-11-04 01:14:18.389211','2021-11-04 01:14:18.389211',NULL),(62,'KBFbUnj5QB89fbey5iebdPavcNgZLq',62,1,30,'2021-11-04 01:53:06.520729','2021-11-04 01:53:06.521727',NULL);
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

-- Dump completed on 2021-11-05 17:12:40
