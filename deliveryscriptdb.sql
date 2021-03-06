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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (15,1,22),(16,1,24),(17,1,28),(31,1,32),(33,1,34),(1,1,36),(2,1,37),(3,1,38),(4,1,39),(5,1,40),(6,1,41),(7,1,42),(8,1,43),(9,1,44),(10,1,45),(11,1,46),(12,1,47),(13,1,48),(14,1,49),(32,1,52),(30,1,56),(24,2,22),(25,2,24),(26,2,25),(27,2,26),(28,2,27),(29,2,28),(35,2,32),(18,2,33),(19,2,34),(20,2,36),(21,2,42),(22,2,44),(23,2,48),(36,2,52),(34,2,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_auction`
--

LOCK TABLES `deliveryapp_auction` WRITE;
/*!40000 ALTER TABLE `deliveryapp_auction` DISABLE KEYS */;
INSERT INTO `deliveryapp_auction` VALUES (63,34000.00,1,1,31,53,'2021-11-12 08:03:53.412799','2021-11-12 08:37:18.718694'),(65,60000.00,0,1,34,55,'2021-11-12 08:45:24.227339','2021-11-12 08:45:24.227339'),(66,34500.00,1,1,34,53,'2021-11-12 08:45:46.305608','2021-11-12 08:46:01.106289'),(68,380000.00,0,1,35,57,'2021-11-12 13:20:46.448216','2021-11-12 13:21:57.822435'),(69,450000.00,1,1,35,55,'2021-11-12 13:21:20.552133','2021-11-12 13:22:32.166359'),(70,260000.00,1,1,37,59,'2021-11-13 08:43:56.855240','2021-11-13 08:45:28.434613'),(71,325000.00,0,1,37,53,'2021-11-13 08:45:02.742360','2021-11-13 08:45:11.152485'),(72,67000.00,0,1,38,59,'2021-11-14 03:26:10.710160','2021-11-14 03:26:42.780574'),(73,56000.00,0,1,38,55,'2021-11-14 03:27:11.166760','2021-11-14 03:27:11.166760'),(75,230000.00,0,1,40,53,'2021-11-14 03:32:46.363384','2021-11-14 03:32:46.363384'),(76,246000.00,1,1,40,57,'2021-11-14 03:33:30.375625','2021-11-14 03:36:22.350344'),(77,270000.00,0,1,41,57,'2021-11-14 03:33:39.234623','2021-11-14 03:33:39.234623'),(78,58000.00,0,1,38,57,'2021-11-14 03:33:48.593759','2021-11-14 03:33:48.593759'),(79,179000.00,0,1,41,55,'2021-11-14 03:34:08.955215','2021-11-14 03:34:08.955215'),(80,210000.00,0,1,40,55,'2021-11-14 03:34:19.829766','2021-11-14 03:34:19.829766'),(81,240000.00,0,1,41,59,'2021-11-14 03:34:36.602837','2021-11-14 03:34:36.602837'),(82,270000.00,0,1,39,59,'2021-11-14 03:34:43.968185','2021-11-14 03:34:43.968185'),(83,278000.00,0,1,39,61,'2021-11-17 03:43:28.820207','2021-11-17 03:43:50.420006'),(84,67400.00,1,1,43,61,'2021-11-17 03:44:08.685839','2021-11-17 03:46:56.149628'),(85,216000.00,0,1,42,61,'2021-11-17 03:44:37.409978','2021-11-17 03:44:37.409978'),(86,48000.00,0,1,43,53,'2021-11-17 03:45:15.398904','2021-11-17 03:45:15.398904'),(87,246000.00,0,1,42,53,'2021-11-17 03:45:21.846850','2021-11-17 03:45:21.846850'),(88,34500.00,0,1,38,64,'2021-11-18 05:24:30.955201','2021-11-18 05:24:35.868687'),(89,456000.00,0,1,39,64,'2021-11-18 05:24:44.782898','2021-11-18 05:24:44.782898'),(90,243000.00,1,1,45,64,'2021-11-18 05:24:56.370493','2021-12-01 06:52:28.588522'),(91,247000.00,0,1,45,53,'2021-11-18 05:25:23.513940','2021-11-18 05:25:23.513940'),(92,75000.00,0,1,38,53,'2021-11-18 06:00:27.150108','2021-11-18 06:00:27.150108'),(93,241000.00,0,1,39,53,'2021-11-18 06:00:44.428241','2021-11-18 06:00:44.428241'),(94,34000.00,0,1,47,59,'2021-11-18 08:24:31.010237','2021-11-18 08:24:35.973142'),(95,340000.00,0,1,46,59,'2021-11-18 08:24:50.164133','2021-11-18 08:24:50.164133'),(97,145000.00,0,1,44,59,'2021-11-18 08:25:28.979270','2021-11-18 08:25:28.979270'),(98,54000.00,0,1,38,61,'2021-11-18 08:25:55.181220','2021-11-18 08:25:55.181220'),(99,25000.00,0,1,47,61,'2021-11-18 08:26:05.140540','2021-11-18 08:26:05.140540'),(100,320000.00,0,1,46,61,'2021-11-18 08:26:14.637002','2021-11-18 08:26:14.637002'),(101,124000.00,0,1,45,61,'2021-11-18 08:26:24.092916','2021-11-18 08:26:24.092916'),(103,24000.00,0,1,47,53,'2021-11-19 05:06:22.162005','2021-11-19 05:06:22.162005'),(104,342000.00,0,1,41,53,'2021-11-19 05:06:36.390278','2021-11-19 05:06:36.390278'),(105,34000.00,0,1,48,53,'2021-11-19 05:08:10.295118','2021-11-19 05:08:10.295118'),(106,245000.00,0,1,44,55,'2021-11-19 05:08:40.321676','2021-11-19 05:08:40.321676'),(107,340000.00,0,1,45,55,'2021-11-19 05:08:46.705494','2021-11-19 05:08:46.705494'),(108,35000.00,0,1,48,55,'2021-11-19 05:08:52.798543','2021-11-19 05:08:52.798543'),(109,26000.00,0,1,47,55,'2021-11-19 05:09:00.074155','2021-11-19 05:09:00.074155'),(110,34500.00,0,1,48,59,'2021-11-19 05:09:27.912883','2021-11-19 05:09:32.708241'),(111,25000.00,0,1,48,64,'2021-11-19 05:10:07.435042','2021-11-19 05:10:07.435042'),(112,24000.00,0,1,47,64,'2021-11-19 05:10:12.507073','2021-11-19 05:10:12.507073'),(113,39000.00,0,1,38,67,'2021-11-21 08:34:50.778592','2021-11-21 08:34:55.052401'),(114,260000.00,0,1,39,67,'2021-11-21 08:35:05.630488','2021-11-21 08:35:05.630488'),(116,245000.00,0,1,48,67,'2021-11-21 08:35:17.584607','2021-11-21 08:35:17.584607'),(117,278000.00,1,1,44,67,'2021-11-21 08:35:28.880718','2021-11-24 11:28:10.745201'),(118,389000.00,0,1,46,67,'2021-11-21 08:35:42.434450','2021-11-21 08:35:42.434450'),(120,160000.00,1,1,50,55,'2021-11-22 03:03:44.378513','2021-11-22 03:05:49.493504'),(122,153000.00,0,1,51,53,'2021-11-22 03:08:10.501871','2021-11-22 03:08:10.501871'),(123,153000.00,1,1,51,61,'2021-11-22 03:20:58.846312','2021-11-26 13:37:21.813880'),(124,158000.00,0,1,52,61,'2021-11-22 03:21:04.517049','2021-11-22 03:21:04.517049'),(126,27800.00,0,1,48,61,'2021-11-22 03:21:22.928699','2021-11-22 03:21:22.928699'),(127,186000.00,0,1,52,53,'2021-11-22 03:21:39.590336','2021-11-22 03:21:39.590336'),(128,145000.00,0,1,52,55,'2021-11-22 03:21:55.768056','2021-11-22 03:21:55.768056'),(129,168000.00,1,1,52,59,'2021-11-22 03:22:10.274257','2021-11-22 03:23:26.621300'),(130,28000.00,1,1,54,59,'2021-11-25 03:47:50.791912','2021-12-01 06:53:31.555714'),(132,27000.00,0,1,54,53,'2021-11-25 03:58:20.616810','2021-11-25 03:58:20.616810'),(134,178000.00,1,1,55,64,'2021-11-26 12:51:32.584655','2021-11-26 12:52:34.714915'),(135,26000.00,0,1,54,64,'2021-11-26 12:51:39.226666','2021-11-26 12:51:39.226666'),(138,35500.00,0,1,56,61,'2021-11-26 13:39:33.187236','2021-11-26 13:39:33.187236'),(139,34500.00,0,1,56,53,'2021-11-26 13:43:10.661684','2021-11-26 13:43:10.661684'),(141,35000.00,0,1,54,61,'2021-11-29 03:40:53.344972','2021-11-29 03:41:00.547679'),(142,46500.00,1,1,56,59,'2021-11-29 03:55:45.744304','2021-11-29 03:56:36.818396'),(144,26000.00,0,1,54,57,'2021-12-01 06:49:17.504548','2021-12-01 06:49:29.085726'),(145,34500.00,0,1,48,57,'2021-12-01 06:50:04.332654','2021-12-01 06:50:04.332654'),(146,250000.00,0,1,45,57,'2021-12-01 06:50:14.557022','2021-12-01 06:50:14.558052'),(148,24000.00,1,1,58,61,'2021-12-05 14:12:47.027543','2021-12-05 14:13:54.239235'),(149,16000.00,0,1,58,59,'2021-12-05 14:13:33.392514','2021-12-05 14:13:33.392514');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_order`
--

LOCK TABLES `deliveryapp_order` WRITE;
/*!40000 ALTER TABLE `deliveryapp_order` DISABLE KEYS */;
INSERT INTO `deliveryapp_order` VALUES (34,'2021-11-12 08:37:18.756592','144 vinh vien q10, hcm wewe',1,1,34000.00,2,NULL,52,2,53,'371 nguyen kiem, gv HCM',3),(35,'2021-11-12 08:41:23.879128','tp hcm',1,2,11426.00,0,NULL,54,2,55,'cai dau',2),(36,'2021-11-12 08:46:01.136357','an giang',1,2,34500.00,2,NULL,54,3,53,'vinh long',2),(37,'2021-11-12 13:17:10.875106','162 B??nh H??ng - B??nh Long - Ch??u ph?? - an giang',1,2,30722.00,2,NULL,56,2,57,'371 Nguy???n Ki???m,  p3, G?? V???p - TP HCM',4),(38,'2021-11-12 13:22:32.202022','144 V??nh Vi???n, Q. 10, TP-HCM',1,1,450000.00,2,NULL,56,1,55,'45 B??nh H??a, TT C??i D???u- CP- An Giang',6),(39,'2021-11-13 08:41:01.038868','162 B??nh H??ng - B??nh Long - CP- An Giang',1,0,14310.00,1,NULL,58,2,57,'97 V?? V??n T???n,Q3 Tp.HCM',1),(40,'2021-11-13 08:45:28.455126','144 vinh vien, qu???n 10, hcm',1,2,260000.00,2,NULL,58,2,59,'130 QL 91, TT C??i D???u, AG',2),(41,'2021-11-14 03:36:22.371771','68 Nguy???n Ki???m, G?? v???p - HCM',1,1,246000.00,2,NULL,54,2,57,'38 B??nh Th???nh L???i, V??nh Thanh Trung, Ch??u Ph?? - AG',4),(42,'2021-11-14 03:39:10.952651','162 binh hung, binh long, CP, AG',1,1,23381.00,0,NULL,52,2,55,'311 binh hoa, tt cai dau, cp-ag',5),(43,'2021-11-17 03:41:39.650809','168 Nguy???n Th??? Minh Khai, Q3, Tp HCM',1,1,47774.00,2,NULL,60,3,55,'38 ??u C??, p9, qu???n TB- HCM',3),(44,'2021-11-17 03:46:56.174398','102 D2, Q.B??nh Th???nh, HCM',1,2,67400.00,2,NULL,60,2,61,'66 Tr?????ng Chinh, qu???n TB - HCM',2),(45,'2021-11-18 04:20:54.259949','162 binh hung, binh long, CP, AG',1,2,4755.00,2,NULL,62,2,53,'37 Tr????ng ?????nh, V??nh Th???nh Trung, CP- AG',2),(46,'2021-11-18 08:23:12.734113','97 V?? V??n T???n, Q3. HCM',1,0,77363.00,0,NULL,62,2,64,'371 Nguy???n Ki???m, G?? V???p , HCM',5),(47,'2021-11-19 05:03:59.740831','162 binh hung, binh long, CP, AG',1,1,6229.00,2,NULL,60,2,59,'383 Nguy???n Th??? Minh Khai, Tp. HCM',2),(48,'2021-11-21 08:30:57.388755','142 vinh vien, quan 10, hcm',1,1,92154.00,0,NULL,52,2,53,'162 ap vinh loc, tt cai dau, cp-ag',2),(49,'2021-11-22 02:22:36.390387','144 vinh vien, Q. 10, hcm wewe',1,1,57435.00,0,NULL,66,2,55,'321 binh hoa, tt cai dau, cp-ag',1),(50,'2021-11-22 03:01:57.179314','an giang',1,1,7382.00,2,NULL,62,3,61,'vinh long',5),(51,'2021-11-22 03:05:49.534080','162 binh hung, binh long, CP, AG',1,2,160000.00,2,NULL,62,2,55,'371 nguyen kiem, go vap, HCM',3),(52,'2021-11-22 03:19:04.349491','242 Ph???m V??n ?????ng, GV - HCM',1,1,16633.00,2,NULL,68,2,53,'33 L?? Th??i T???, Q11, HCM',6),(53,'2021-11-22 03:23:26.651616','209 L?? Th?????ng Ki???t, Q10, Tp.HCM',1,1,168000.00,2,NULL,68,3,59,'274 QL 91, TT C??i D???u, Ch??u Ph?? -  An Giang',2),(54,'2021-11-24 11:25:08.988199','98 CMT8, TP-HCM',1,2,86802.00,2,NULL,60,2,55,'338 Tr???n H??ng ?????o, Tp-HCM',4),(55,'2021-11-24 11:26:50.220150','162 binh hung, binh long, CP, AG',1,1,38855.00,2,NULL,60,2,53,'12 binh hoa tt cai dau cp ag',2),(56,'2021-11-24 11:28:10.776547','108 Nguy???n Kim, Q10 - HCM',1,1,278000.00,2,NULL,60,2,67,'61 QL 91, p. Ch??u ph?? B, Ch??u ?????c- AG',5),(57,'2021-11-25 03:49:27.700269','141 vinh vien, quan 10, hcm',1,0,73430.00,2,NULL,62,1,64,'162 ap vinh loc, tt cai dau, cp-ag',3),(58,'2021-11-26 12:48:48.996640','32 vinh vien, quan 10, hcm',1,2,56810.00,0,NULL,63,1,53,'61 ap vinh loc, tt cai dau, cp-ag',3),(59,'2021-11-26 12:52:34.752862','231 H??a B??nh, Q11, TpHCM',1,1,178000.00,2,NULL,63,3,64,'67 Tr???n H??ng ?????o, Tp.Long Xuy??n - An Giang',5),(60,'2021-11-26 13:32:02.872437','144 vinh vien, quan 10, hcm',1,1,60382.00,1,NULL,52,2,59,'371 nguyen kiem, go vap, HCM',2),(61,'2021-11-26 13:37:21.850097','162 binh hung, binh long, CP, AG',1,2,153000.00,2,NULL,66,1,61,'62 Tr?????ng Chinh, T??n B??nh - HCM',2),(62,'2021-11-29 03:56:36.850091','1535 Ph???m V??n ?????ng , TP HCM',1,1,46500.00,2,NULL,52,2,59,'64 C???ng Qu???nh, TP HCM',4),(63,'2021-12-01 06:48:02.322441','639 L?? Th??i T???, TP-HCM',1,2,17531.00,2,NULL,65,2,57,'647 Ho??ng V??n Th??? , TP-HCM',4),(64,'2021-12-01 06:52:28.627407','313 CMT8, Q.TB - HCM',1,1,243000.00,2,NULL,63,1,64,'36 QL 91, B??nh Long, Ch??u Ph?? - AG',2),(65,'2021-12-01 06:53:31.594913','78 L?? Th?????ng Ki???t, TP.HCM',1,1,28000.00,2,NULL,60,3,59,'819 D2, B??nh Th???nh, Tp-HCM',2),(66,'2021-12-05 14:10:11.590758','144 vinh vien, quan 10, hcm',1,0,3449.00,1,NULL,69,1,64,'371 nguyen kiem, qu???n G?? v???p, TPHCM',2),(67,'2021-12-05 14:11:25.613131','124 L?? Th?????ng Ki???t, TP HCM',1,0,40972.00,0,NULL,69,2,55,'89 QL 51, ?????ng nai',3),(68,'2021-12-05 14:13:54.274488','162 binh hung, binh long, CP, AG',1,2,24000.00,2,NULL,69,2,61,'122 binh hoa, tt cai dau, cp-ag',1);
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
INSERT INTO `deliveryapp_orderdetail` VALUES (35,'hien','0834697485'),(37,'khang','0397918098'),(39,'B???u','0971254219'),(42,'Ch???n Huy','0981235252'),(43,'H????ng Lan','0967125481'),(45,'Ph?? H??o','0982451241'),(46,'Trung ????ng','0982124122'),(47,'Ng???c H??n','0962321521'),(48,'Kh??nh','0836241021'),(49,'L??m','0987632124'),(50,'Kh??nh V??n','0986324251'),(52,'brave','0834657483'),(54,'Qu???c H??ng','0983524842'),(55,'Kh??nh Trung','0977263252'),(57,'Qu???c D??ng','0985326233'),(58,'L??m Mai','0984251232'),(60,'V??n Anh','0875125269'),(63,'T??ng L??m234','0983526412'),(66,'Qu???c H??ng','0397918091'),(67,'Kh??nh Vy','0168623481');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_orderpost`
--

LOCK TABLES `deliveryapp_orderpost` WRITE;
/*!40000 ALTER TABLE `deliveryapp_orderpost` DISABLE KEYS */;
INSERT INTO `deliveryapp_orderpost` VALUES (31,0,'test','144 vinh vien, quan 10, hcm wewe','2021-11-12 08:02:37.682750','2021-11-12 08:37:21.876931',1,52,'371 nguyen kiem, go vap, HCM',3,2,'khang','0397918098'),(34,0,'test dang bai','an giang','2021-11-12 08:45:01.806011','2021-11-12 08:46:04.290060',1,54,'vinh long',2,3,'hien','0397454778'),(35,0,'v???t li???u x??y d???ng: Xi m??ng, c??t, ????,...','144 V??nh Vi???n, Q. 10, TP-HCM','2021-11-12 13:19:53.216531','2021-11-12 13:22:33.494842',1,56,'32 B??nh H??a, TT C??i D???u- CP- An Giang',6,1,'Kh???i','0909161278'),(37,0,'Giao h??ng macbook pro m1 ???? check h??ng','144 vinh vien, qu???n 10, hcm','2021-11-13 08:43:35.591495','2021-11-13 08:45:38.477752',1,58,'130 QL 91, TT C??i D???u, AG',2,2,'Thi???n Nh??n','0168623488'),(38,1,'????? d??? v???...','351 D2, q. B??nh Th???nh, Tp.HCM','2021-11-14 03:25:36.348524','2021-11-26 13:23:25.981969',0,52,'250 L?? th?????ng ki???t, q10, TP.HCM',5,2,'?????t','0521245214'),(39,1,'????? c?? nh??n: qu???n ??o, trang s???c','37 L?? V??n S???, q T??n B??nh - HCM','2021-11-14 03:29:32.563521','2021-11-14 03:29:32.563521',0,56,'27 QL 91, TT C??i D???u, Ch??u ph??- an giang',2,2,'Ho??ng Vy','0984258741'),(40,0,'l????ng th???c','68 Nguy???n Ki???m, G?? v???p - HCM','2021-11-14 03:30:59.373632','2021-11-14 03:36:23.820768',1,54,'38 B??nh Th???nh L???i, V??nh Thanh Trung, Ch??u Ph?? - AG',4,2,'Trung T??n','0763521247'),(41,1,'D?????c ph???m c???n b???o qu???n c???n th???n','301 CMT8, Q.T??n B??nh, HCM','2021-11-14 03:32:22.582169','2021-11-14 03:32:22.582169',0,54,'603 QL 91, TT C??i D???u, Cp - AG',3,2,'Ng???c M???','0975235621'),(42,1,'kh??ng c??','144 vinh vien, quan 10, hcm','2021-11-14 03:36:10.620565','2021-11-14 03:36:10.620565',0,54,'164 ap vinh loc, tt cai dau, cp-ag',5,3,'T???n ?????i','0762411247'),(43,0,'????? d??ng c?? nh??n, ????? d??? v???, xin nh??? tay.','102 D2, Q.B??nh Th???nh, HCM','2021-11-17 03:42:45.468455','2021-11-17 03:46:57.325504',1,60,'66 Tr?????ng Chinh, qu???n TB - HCM',2,2,'T???n Tr?????ng','0906254236'),(44,0,'kh??ng c??.','108 Nguy???n Kim, Q10 - HCM','2021-11-17 03:46:42.953103','2021-11-24 11:28:12.103985',1,60,'61 QL 91, p. Ch??u ph?? B, Ch??u ?????c- AG',5,2,'Thu H???ng','0975025321'),(45,0,'giao h??ng nhanh','313 CMT8, Q.TB - HCM','2021-11-18 05:22:34.534674','2021-12-01 06:52:30.004225',1,63,'36 QL 91, B??nh Long, Ch??u Ph?? - AG',2,1,'Quang ????ng','0983124127'),(46,1,'????? d??? v???, xin nh??? tayzz','454 Ng?? T??? Li??m, H?? N???i','2021-11-18 08:20:54.264051','2021-11-29 03:41:30.007999',0,62,'65 Tr?????ng Chinh, Q.TB - HCM',5,1,'L?? qu???c d??ng','0786325212'),(47,1,'????? d??ng','45 L?? ?????i H??nh, qu???n 5, TpHCM','2021-11-18 08:22:12.025662','2021-11-18 08:22:12.025662',0,62,'132 ???????ng 3/2, qu???n 10, TpHCM',4,2,'????ng Khoa','0987251232'),(48,1,'B???o qu???n k???.','215 ??u C??, T??n B??nh - HCM','2021-11-19 05:07:46.771157','2021-11-19 05:07:46.771157',0,60,'591 Ph???m V??n ?????ng, G?? V???p - HCM',4,2,'Trung Ho??ng','0987251321'),(50,0,'thu???c','162 binh hung, binh long, CP, AG','2021-11-22 03:02:27.366617','2021-11-22 03:05:50.820007',1,62,'371 nguyen kiem, go vap, HCM',3,2,'khai','0168623487'),(51,0,'abc','162 binh hung, binh long, CP, AG','2021-11-22 03:05:28.800771','2021-11-26 13:37:23.314816',1,66,'67 Tr?????ng Chinh, T??n B??nh - HCM',2,1,'hien','0397454777'),(52,0,'????? d??? v???, xin nh??? tay','209 L?? Th?????ng Ki???t, Q10, Tp.HCM','2021-11-22 03:20:37.378173','2021-11-22 03:23:27.757090',1,68,'274 QL 91, TT C??i D???u, Ch??u Ph?? -  An Giang',2,3,'Thu Uy??n','0989212012'),(54,0,'no','78 L?? Th?????ng Ki???t, TP.HCM','2021-11-24 11:27:59.458967','2021-12-01 06:53:32.621862',1,60,'89 D2, B??nh Th???nh, Tp-HCM',2,3,'L??m','0876325212'),(55,0,'kh??ng c??','231 H??a B??nh, Q11, TpHCM','2021-11-26 12:50:47.486780','2021-11-26 12:52:35.658784',1,63,'67 Tr???n H??ng ?????o, Tp.Long Xuy??n - An Giang',5,3,'Hi???n Thanh','0168623482'),(56,0,'kh??ng.','1535 Ph???m V??n ?????ng , TP HCM','2021-11-26 13:22:47.480110','2021-11-29 03:56:38.180481',1,52,'64 C???ng Qu???nh, TP HCM',4,2,'Tr???n Thanh Th???o','0987325212'),(57,1,'????? quan tr???ng','109 L?? Th?????ng Ki???t, TP-HCM','2021-12-01 06:52:13.380689','2021-12-01 06:52:13.380689',0,63,'346 ??.3/2, TP.HCM',2,1,'T??ng S??n345','0978362352'),(58,0,'????? d??? v???xx','162 binh hung, binh long, CP, AG','2021-12-05 14:12:09.056193','2021-12-05 14:13:56.323133',1,69,'322 binh hoa, tt cai dau, cp-ag',1,2,'L??m Xu??n','0984234127');
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
INSERT INTO `deliveryapp_productcategory` VALUES (1,'H??ng h??a',1),(2,'V???t d???ng c?? nh??n',1),(3,'D?????c ph???m',1),(4,'H??ng ti??u d??ng',1),(5,'Kh??c',1),(6,'v???t li???u x??y d???ng',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_rating`
--

LOCK TABLES `deliveryapp_rating` WRITE;
/*!40000 ALTER TABLE `deliveryapp_rating` DISABLE KEYS */;
INSERT INTO `deliveryapp_rating` VALUES (21,'ok',3,54,55,'2021-11-12 08:46:47.140177','2021-11-12 08:46:47.140177'),(26,'ok',5,54,53,'2021-11-12 08:51:20.093795','2021-11-12 08:51:20.093795'),(35,'ok',4,56,57,'2021-11-12 13:23:37.275635','2021-11-12 13:23:37.275635'),(37,'ok',5,58,59,'2021-11-13 08:47:02.673073','2021-11-13 08:47:02.673073'),(42,'ok',2,60,61,'2021-11-17 03:47:44.264996','2021-11-17 03:47:44.264996'),(44,'ok',3,62,53,'2021-11-18 04:21:53.721442','2021-11-18 04:21:53.721442'),(50,'ok',4,62,55,'2021-11-22 03:06:49.470444','2021-11-22 03:06:49.470444'),(54,'ok',5,60,55,'2021-11-25 03:51:13.414497','2021-11-25 03:51:13.414497'),(58,'ok',3,63,53,'2021-11-26 12:53:34.406734','2021-11-26 12:53:34.406734'),(61,'ok',5,66,61,'2021-11-26 13:38:49.689601','2021-11-26 13:38:49.689601'),(64,'ok',4,65,57,'2021-12-01 06:50:57.779563','2021-12-01 06:50:57.779563'),(67,'ok',3,69,61,'2021-12-05 14:15:09.433402','2021-12-05 14:15:09.433402');
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
INSERT INTO `deliveryapp_shipper` VALUES (53,'352545278','static/identity/2021/11/front_id_CizEdWb.jpg','static/identity/2021/11/back_id_CirnDO6.jpg'),(55,'352542124','static/identity/2021/11/front_id_P5tRiQW.jpg','static/identity/2021/11/back_id_RA8NzRA.jpg'),(57,'352632412','static/identity/2021/11/front_id_ULwwk4y.jpg','static/identity/2021/11/back_id_E8Eh4V9.jpg'),(59,'352645789','static/identity/2021/11/front_id_kkhTw9j.jpg','static/identity/2021/11/back_id_mxuXSIr.jpg'),(61,'352632642','static/identity/2021/11/front_id_Q1mkpqg.jpg','static/identity/2021/11/back_id_ZXLFoCY.jpg'),(64,'352632187','static/identity/2021/11/front_id_P9vRLjd.jpg','static/identity/2021/11/back_id_b7LeLCW.jpg'),(67,'352485426','static/identity/2021/11/front_id_7rnXh28.jpg','static/identity/2021/11/back_id_ZZWoA6G.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_user`
--

LOCK TABLES `deliveryapp_user` WRITE;
/*!40000 ALTER TABLE `deliveryapp_user` DISABLE KEYS */;
INSERT INTO `deliveryapp_user` VALUES (1,'pbkdf2_sha256$260000$1C0czymBgDWU2q3oUkj3E7$OyjTnX569NbT5t9r1KA3W/xGMgh4wbB8NxhvgZ+H/tQ=','2021-12-05 14:16:56.738612',1,'admin','admin@gmail.com',1,1,'2021-10-26 14:03:58.000000','admin','ad','0168623488','Male','static/avatar/2021/11/Avatar_JY1QJZ4.PNG',0,1),(52,'pbkdf2_sha256$260000$1AgajTugoHbFrORniFN3uy$1xs+QPzNkJ5UAYEntu7fwrQdKkm4j/Q6ws8ZTxo09dk=',NULL,0,'kienluc','luckien9a6@gmail.com',0,1,'2021-11-12 07:47:35.844116','kien','luc tuan','0834697489','Male','static/avatar/2021/11/Avatar_ZxWTZaK.PNG',0,0),(53,'pbkdf2_sha256$260000$kCeOEfJJyFqwiMK2GaZiNh$uoLKt8VMUUHwccJNA8DeAMQ8pFwomOTuzARHYiqwBks=',NULL,0,'quocvy','luckien9a6@gmail.com',0,1,'2021-11-12 07:48:35.000000','vy','nguyen quoc','0168623488','Male','static/avatar/2021/11/avatar_quocvy_bVZdtN9.jpg',1,2),(54,'pbkdf2_sha256$260000$2o28WlZx3GOqo84z3LJrOf$nXhreB88feqJhGgXqgeKiHe1xqee9ivl8nFrRTeIlgw=',NULL,0,'tuankhang','luckien9a6@gmail.com',0,1,'2021-11-12 08:39:30.644658','khang','luc tuan','0397918098','Male','static/avatar/2021/11/Avatar_sex9QTT.PNG',0,0),(55,'pbkdf2_sha256$260000$NLseSjmPgF44KaHcotG0kj$jp5NdlUEUpOH7jgRDyuhXtxpWTSN+PAr3VsUNSO3VoY=',NULL,0,'nhatthanh','luckien9a6@gmail.com',0,1,'2021-11-12 08:40:17.000000','thanh','nguyen nhat','0397122453','Male','static/avatar/2021/11/avatar_nhatthanh_ACNob6X.jpg',1,2),(56,'pbkdf2_sha256$260000$FAHj9WC1840kLtPYKHD41U$paPI+8rT62djFHQE2EWpO7XceWHcvZ7yUzr3qpu33qQ=',NULL,0,'huuthang','luckien9a6@gmail.com',0,1,'2021-11-12 13:13:20.816380','H???u Th???ng','Tr???n','0761241258','Male','static/avatar/2021/11/avatar_huuthang_0Mu41oV.jpg',0,0),(57,'pbkdf2_sha256$260000$C961XB78vIHB12OjvU2SvJ$7bmMCHdNDmgkjVB4mnv3/BCDYjEZAAlCASugin/VYjM=',NULL,0,'phucsot','luckien9a6@gmail.com',0,1,'2021-11-12 13:15:30.000000','Ph??c','Hu???nh V??n','0397125847','Male','static/avatar/2021/11/avatar_phucsot_wEWnhbs.jpg',1,2),(58,'pbkdf2_sha256$260000$dkRiz6GI9jhflsRTLGWECP$ltqkSCCDfGAWsXow+tSnJtOwdeFg5L9feQTVjAPu0Ws=',NULL,0,'tuannguyen','luckien9a6@gmail.com',0,1,'2021-11-13 08:37:44.768534','Nguy??n','L???c Tu???n','0397918124','Male','static/avatar/2021/11/js1.png',0,0),(59,'pbkdf2_sha256$260000$kxkfQ9fogbnAtTU4Bpd5hl$v/wnBUjNbhZJXc6Mu7yWrgLJnLfhc7b9xkqBn81KRK4=',NULL,0,'ngocduyen','luckien9a6@gmail.com',0,1,'2021-11-13 08:39:16.000000','Duy??n','B??i Ng???c','0981242159','Female','static/avatar/2021/11/avatar_anhthu_0OHXLZw.jpg',1,2),(60,'pbkdf2_sha256$260000$1TzKwppY8Ev8MzQlDfvS1I$gyrkX/po7DF0zdQY7Z85KxR+cPdIrEV6Z26iF510Tvg=',NULL,0,'camtu','camtu@gmail.com',0,1,'2021-11-17 03:38:49.694559','C???m T??','Tr????ng','0378524213','Female','static/avatar/2021/11/avatar_camtu_UxpI19V.jpg',0,0),(61,'pbkdf2_sha256$260000$TE178kKrba79BS6YKqYZfZ$mX+r6mRTczywxFQOCnEusUXizbz4iYjw8IFRl+sfuw8=',NULL,0,'quoctrung','quoctrung@gmail.com',0,1,'2021-11-17 03:40:16.000000','Qu???c Trung','L??','0986425741','Male','static/avatar/2021/11/shipper.jpg',1,2),(62,'pbkdf2_sha256$260000$ObbhMUs5pz4yOC6I7cWjDd$PRiI67e7J+9tn2P4vRHvMHkXeawl96a5R6Bfx0bvfrY=',NULL,0,'thanhlong','thanhlong@gmail.com',0,1,'2021-11-18 04:19:47.597439','Long','Nguy???n Thanh','0983125421','Male','static/avatar/2021/11/avatar_thanhlong_xWLKTMG.jpg',0,0),(63,'pbkdf2_sha256$260000$1E8FY1zxCSDVVlhqB4zyYp$YpdWQsxxYkojXbKgT0ejv6qzsmNAgw/x0uTilEyfD+E=',NULL,0,'phuongthao','phuongthao@gmail.com',0,1,'2021-11-18 05:21:24.750966','Th???o','Nguy???n Tr???n Ph????ng','0982364215','Female','static/avatar/2021/11/avatar_anhthu_sHqxbbT.jpg',0,0),(64,'pbkdf2_sha256$260000$jf1V6jFieUvSr563zMDcyU$Rc1zri/SXgkFa7qnF3kireXzUq49JZdtMDczEcf43AI=',NULL,0,'minhngoc','minhngoc@gmail.com',0,1,'2021-11-18 05:23:25.000000','Ng???c','Tr???n Ph????ng Minh','0987253212','Female','static/avatar/2021/11/avatar_camtu_ncbEya8.jpg',1,2),(65,'pbkdf2_sha256$260000$6PD7YVjWzFrd1uUUPXDgBB$X1L7zpDWOCopIaGH0s4dk6FC/qx/YZA/KA72vONglGY=',NULL,0,'thaongo','thaongo@gmail.com',0,1,'2021-11-20 14:21:54.386751','Th???o','Ng?? V??n','0397215217','Female','static/avatar/2021/11/avatar_anhthu_QSO3SUL.jpg',0,0),(66,'pbkdf2_sha256$260000$PkpD6VrSQiQenvgynL2kNn$q3lBit0wacruDM/I4ZY9k4HZAtpFEjzwc6rk32HgMeo=',NULL,0,'camry','camry@gmail.com',0,1,'2021-11-21 08:32:53.754273','Ry','Nguy???n H??o Cam','0986352642','Male','static/avatar/2021/11/avatar_camry_UxfKg47.jpg',0,0),(67,'pbkdf2_sha256$260000$9nIEVaV4OzmbPyKhi3VWLh$H5vCvfYzrnbP7Bntg55n8+AW4Q1OBXCXPLgpOVDrflk=',NULL,0,'tanbinh','tanbinh@gmail.com',0,1,'2021-11-21 08:34:07.000000','B??nh','Tr???n T???n','0987485124','Male','static/avatar/2021/11/avatar_duongduc_fflvcZ6.jpg',1,2),(68,'pbkdf2_sha256$260000$kwYz7g4QPltEEMUM3ND8xH$IjqqBML4qtfdxbSMvncOZpxMAXCsiY24+sH5qxH1qLQ=',NULL,0,'xuanphong','xuanphong@gmail.com',0,1,'2021-11-22 03:18:13.289335','Phong','L??m Xu??n','0989362125','Male','static/avatar/2021/11/js1_oWHUUkN.png',0,0),(69,'pbkdf2_sha256$260000$ePcF6yDBbRuWb4ljx7c0aC$v98KEjU0p9yKML8RM3jSQL1xAA4P4Tb4qLsaMHM0pfs=',NULL,0,'hoaiduc','hoaiduc@gmail.com',0,1,'2021-11-26 13:09:33.776847','?????c','T?? Ho??i','0982452123','Male','static/avatar/2021/11/avatar_nhatkhan_LTc0MXU.jpg',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryapp_user_groups`
--

LOCK TABLES `deliveryapp_user_groups` WRITE;
/*!40000 ALTER TABLE `deliveryapp_user_groups` DISABLE KEYS */;
INSERT INTO `deliveryapp_user_groups` VALUES (34,1,1),(51,52,1),(52,53,2),(53,54,1),(54,55,2),(55,56,1),(56,57,2),(57,58,1),(58,59,2),(59,60,1),(60,61,2),(61,62,1),(62,63,1),(63,64,2),(64,65,1),(65,66,1),(66,67,2),(67,68,1),(68,69,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-26 14:05:45.345008','2','username: kienluc',1,'[{\"added\": {}}]',6,1),(2,'2021-10-26 14:06:22.051288','1','username: admin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Phone\", \"Gender\", \"Avatar\"]}}]',6,1),(3,'2021-10-26 14:06:40.656325','2','Shipper ID: 352634578',1,'[{\"added\": {}}]',9,1),(4,'2021-10-26 14:08:06.441285','3','username: test',1,'[{\"added\": {}}]',6,1),(5,'2021-10-26 14:08:25.922994','1','Creator: vy nguyen quoc\n Active: True\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: False',1,'[{\"added\": {}}]',10,1),(6,'2021-10-26 14:08:59.660165','1','Shipper: kien luc tuan\nCost: 20000',1,'[{\"added\": {}}]',7,1),(7,'2021-10-26 14:09:22.523107','1','Fast',1,'[{\"added\": {}}]',8,1),(8,'2021-10-26 14:10:06.014355','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000, \nPay method: 2',1,'[{\"added\": {}}]',11,1),(9,'2021-10-26 14:11:24.806634','1','Customer: vy nguyen quoc,\nshipper: kien luc tuan,\nComment: good shipper,\nrate: 5,\n',1,'[{\"added\": {}}]',12,1),(10,'2021-10-27 04:29:31.895006','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(11,'2021-10-27 04:29:50.000350','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(12,'2021-10-27 04:32:01.962250','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(13,'2021-10-27 09:02:51.303834','1','H??ng h??a ',1,'[{\"added\": {}}]',13,1),(14,'2021-10-27 09:16:17.840694','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Pickup address\", \"Product cate\"]}}]',11,1),(15,'2021-10-27 09:47:29.090239','1','Chi ti???t',1,'[{\"added\": {}}]',14,1),(16,'2021-10-27 09:48:55.202012','1','Order Detail - Order ID 1',2,'[]',14,1),(17,'2021-10-27 11:54:00.636050','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 1',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(18,'2021-10-27 11:54:13.037332','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 0',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(19,'2021-10-27 11:54:19.439239','1','Customer: admin ad\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(20,'2021-10-31 07:31:12.963171','3','D?????c ph???m',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',13,1),(21,'2021-11-01 06:47:09.784240','5','Shipper ID: 352545528',3,'',9,1),(22,'2021-11-01 06:47:09.794148','4','Shipper ID: 352545226',3,'',9,1),(23,'2021-11-01 06:47:09.798418','3','Shipper ID: 352634502',3,'',9,1),(24,'2021-11-01 06:48:09.912447','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(25,'2021-11-01 06:48:20.035941','3','username: duongduc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(26,'2021-11-01 06:48:51.091825','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(27,'2021-11-01 06:50:01.666440','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',6,1),(28,'2021-11-01 09:16:05.733116','1','customer',1,'[{\"added\": {}}]',3,1),(29,'2021-11-01 09:16:59.175682','2','shipper',1,'[{\"added\": {}}]',3,1),(30,'2021-11-01 12:19:49.458309','3','username: duongduc',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(31,'2021-11-01 12:20:02.114849','4','username: quocvy',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(32,'2021-11-01 12:20:42.184724','5','username: chanhung',2,'[{\"changed\": {\"fields\": [\"Username\", \"Email address\", \"First name\", \"Last name\", \"Avatar\"]}}]',6,1),(33,'2021-11-01 12:21:32.716110','6','username: huuthang',1,'[{\"added\": {}}]',6,1),(34,'2021-11-01 12:22:21.552361','7','username: nhatkhan',1,'[{\"added\": {}}]',6,1),(35,'2021-11-01 12:23:07.533120','8','username: camry',1,'[{\"added\": {}}]',6,1),(36,'2021-11-01 12:23:57.148051','9','username: nhatthanh',1,'[{\"added\": {}}]',6,1),(37,'2021-11-01 12:24:37.646308','10','username: thanhlong',1,'[{\"added\": {}}]',6,1),(38,'2021-11-01 12:25:17.834592','11','username: phucsot',1,'[{\"added\": {}}]',6,1),(39,'2021-11-01 12:26:21.214118','12','username: anhthu',1,'[{\"added\": {}}]',6,1),(40,'2021-11-01 12:27:21.741926','13','username: camtu',1,'[{\"added\": {}}]',6,1),(41,'2021-11-01 12:27:49.924175','13','username: camtu',2,'[]',6,1),(42,'2021-11-02 02:58:39.565384','14','Shipper ID: 123456789251',1,'[{\"added\": {}}]',9,1),(43,'2021-11-02 03:06:38.241860','11','Shipper ID: 352574258',1,'[{\"added\": {}}]',9,1),(44,'2021-11-02 03:06:50.490727','14','Shipper ID: 352569872',2,'[{\"changed\": {\"fields\": [\"Id number\"]}}]',9,1),(45,'2021-11-02 03:17:26.636043','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Is shipper\"]}}]',6,1),(46,'2021-11-02 03:17:38.484658','14','username: test',2,'[{\"changed\": {\"fields\": [\"Is shipper\"]}}]',6,1),(47,'2021-11-02 03:18:04.098212','11','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Is shipper\"]}}]',6,1),(48,'2021-11-02 03:34:01.379042','14','username: test',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(49,'2021-11-02 03:34:06.887195','14','username: test',2,'[]',6,1),(50,'2021-11-02 03:34:14.781297','11','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(51,'2021-11-02 03:34:25.868551','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(52,'2021-11-02 03:44:18.318254','3','Shipper ID: 352598632',1,'[{\"added\": {}}]',9,1),(53,'2021-11-02 03:44:31.314606','3','Shipper ID: 352598632',3,'',9,1),(54,'2021-11-02 04:15:06.096795','1','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Customer\"]}}]',11,1),(55,'2021-11-02 04:27:47.554116','1','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 0',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(56,'2021-11-02 04:28:10.190783','1','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 0,\nTotal price: 30000.00, \nPay method: 2',2,'[{\"changed\": {\"fields\": [\"Pay method\"]}}]',11,1),(57,'2021-11-02 05:08:35.624433','3','Customer: thang tran huu\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-02 05:08:35.618855+00:00, \nStatus: 0,\nTotal price: 65000, \nPay method: 2',1,'[{\"added\": {}}]',11,1),(58,'2021-11-02 05:25:10.784042','1','Creator: duc le duong\n Active: True\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Product cate\", \"Service cate\"]}}]',10,1),(59,'2021-11-02 05:25:22.037363','1','Creator: duc le duong\n Active: True\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Pickup address\"]}}]',10,1),(60,'2021-11-02 05:25:56.489020','2','normal express',1,'[{\"added\": {}}]',8,1),(61,'2021-11-02 05:26:10.152784','1','Fast',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',8,1),(62,'2021-11-02 05:26:50.747159','3','Saving express',1,'[{\"added\": {}}]',8,1),(63,'2021-11-02 05:27:24.718589','14','username: test',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',6,1),(64,'2021-11-02 05:35:51.766874','13','username: camtu',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(65,'2021-11-02 05:35:56.335747','12','username: anhthu',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(66,'2021-11-02 05:36:00.879830','10','username: thanhlong',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(67,'2021-11-02 05:36:06.922766','10','username: thanhlong',2,'[]',6,1),(68,'2021-11-02 05:36:15.480339','13','username: camtu',2,'[]',6,1),(69,'2021-11-02 05:36:25.633970','9','username: nhatthanh',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(70,'2021-11-02 05:36:30.819186','9','username: nhatthanh',2,'[]',6,1),(71,'2021-11-02 05:36:36.218639','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(72,'2021-11-02 05:36:39.513038','8','username: camry',2,'[]',6,1),(73,'2021-11-02 05:36:43.557871','8','username: camry',2,'[]',6,1),(74,'2021-11-03 12:21:37.955413','7','username: nhatkhan',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(75,'2021-11-03 12:21:46.156127','6','username: huuthang',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(76,'2021-11-03 12:21:58.174303','5','username: chanhung',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(77,'2021-11-03 12:22:14.569023','4','username: quocvy',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(78,'2021-11-03 12:23:12.631741','3','username: duongduc',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(79,'2021-11-03 12:38:00.704610','15','username: moly',3,'',6,1),(80,'2021-11-03 12:39:24.166726','16','username: moly',3,'',6,1),(81,'2021-11-03 12:43:35.358730','17','username: moly',3,'',6,1),(82,'2021-11-03 12:45:15.955772','18','username: moly',3,'',6,1),(83,'2021-11-03 12:46:58.362246','19','username: moly',3,'',6,1),(84,'2021-11-03 13:11:18.019384','20','Shipper ID: 352545268',1,'[{\"added\": {}}]',9,1),(85,'2021-11-03 13:46:19.349661','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Is shipper\"]}}]',6,1),(86,'2021-11-05 05:24:37.817895','32','username: tantu',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(87,'2021-11-05 05:27:08.856753','20','username: moly',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(88,'2021-11-05 05:27:18.528062','14','username: test',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(89,'2021-11-05 05:27:33.379943','11','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(90,'2021-11-05 05:27:47.973659','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(91,'2021-11-05 05:27:57.469628','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(92,'2021-11-05 05:35:37.273952','34','Shipper ID: 3525452945',1,'[{\"added\": {}}]',9,1),(93,'2021-11-06 12:57:44.439205','3','Customer: thang tran huu\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-02 05:08:35.618855+00:00, \nStatus: 1,\nTotal price: 65000.00, \nPay method: 0',2,'[{\"changed\": {\"fields\": [\"Status\", \"Pay method\"]}}]',11,1),(94,'2021-11-06 12:58:52.243451','3','Customer: thang tran huu\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-02 05:08:35.618855+00:00, \nStatus: 1,\nTotal price: 65000.00, \nPay method: 0',2,'[]',11,1),(95,'2021-11-06 12:59:06.892981','3','Customer: thang tran huu\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-02 05:08:35.618855+00:00, \nStatus: 1,\nTotal price: 65000.00, \nPay method: 0',2,'[]',11,1),(96,'2021-11-07 13:20:35.738115','35','username: ducchinh',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Choice\", \"Is shipper\"]}}]',6,1),(97,'2021-11-07 15:36:51.107122','7','Customer: thu to ngoc anh\nShipper: ry nguyen hao cam, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-07 15:35:29.624657+00:00, \nStatus: 0,\nTotal price: 50199.00, \nPay method: 2',3,'',11,1),(98,'2021-11-07 15:38:35.472652','8','Customer: thu to ngoc anh\nShipper: test test2, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-07 15:37:00.562973+00:00, \nStatus: 0,\nTotal price: 61302.00, \nPay method: 2',3,'',11,1),(99,'2021-11-07 15:39:53.365734','9','Customer: thu to ngoc anh\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-07 15:38:46.636469+00:00, \nStatus: 0,\nTotal price: 87309.00, \nPay method: 1',3,'',11,1),(100,'2021-11-07 15:41:56.929192','10','Customer: thu to ngoc anh\nShipper: chinh ha duc, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-07 15:40:07.473572+00:00, \nStatus: 0,\nTotal price: 27747.00, \nPay method: 1',3,'',11,1),(101,'2021-11-07 15:42:40.764499','11','Customer: thu to ngoc anh\nShipper: moly clea, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-07 15:42:09.336172+00:00, \nStatus: 0,\nTotal price: 20798.00, \nPay method: 2',3,'',11,1),(102,'2021-11-08 16:26:09.054560','5','Creator: hung ha chan\n Active: True\nCreated date: 2021-11-08 15:58:41.182649+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Customer received\", \"Phone\"]}}]',10,1),(103,'2021-11-08 16:26:19.794809','2','Creator: ry nguyen hao cam\n Active: True\nCreated date: 2021-11-02 06:01:28.921827+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Customer received\", \"Phone\"]}}]',10,1),(104,'2021-11-08 16:35:34.970763','1','Creator: duc le duong\n Active: True\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Customer received\", \"Phone\"]}}]',10,1),(105,'2021-11-08 18:37:08.156178','36','username: chankhang',1,'[{\"added\": {}}]',6,1),(106,'2021-11-08 18:39:16.938143','1','username: admin',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(107,'2021-11-08 18:41:27.903620','1','username: admin',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Avatar\"]}}]',6,1),(108,'2021-11-08 18:41:51.558249','2','username: kienluc',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(109,'2021-11-08 18:42:19.070169','3','username: duongduc',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(110,'2021-11-08 18:42:46.973880','4','username: quocvy',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(111,'2021-11-08 18:43:57.075614','5','username: chanhung',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(112,'2021-11-08 18:44:09.832083','6','username: huuthang',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(113,'2021-11-08 18:44:29.968911','7','username: nhatkhan',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(114,'2021-11-08 18:44:45.522059','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(115,'2021-11-08 18:44:59.904472','9','username: nhatthanh',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(116,'2021-11-08 18:45:23.622739','10','username: thanhlong',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(117,'2021-11-08 18:45:36.257637','11','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(118,'2021-11-08 18:45:47.357836','12','username: anhthu',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(119,'2021-11-08 18:45:55.713700','13','username: camtu',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(120,'2021-11-08 18:46:10.915852','14','username: test',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(121,'2021-11-08 18:46:32.400778','20','username: moly',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(122,'2021-11-08 18:47:07.697326','35','username: ducchinh',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(123,'2021-11-08 18:47:16.688581','34','username: ducxuan',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(124,'2021-11-08 18:47:28.506306','33','username: ngocmai',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(125,'2021-11-08 18:47:47.957971','32','username: tantu',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(126,'2021-11-08 18:47:59.551898','31','username: trangtu',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(127,'2021-11-08 18:48:21.606060','30','username: trungkien',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(128,'2021-11-08 18:48:59.962242','21','username: sonminh',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(129,'2021-11-08 18:49:11.712393','22','username: ngochien',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(130,'2021-11-08 18:49:33.620474','29','username: trungkhang',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Avatar\", \"Choice\"]}}]',6,1),(131,'2021-11-08 18:49:46.844723','23','username: khailuc',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(132,'2021-11-08 18:50:13.296942','24','username: khangluc',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(133,'2021-11-08 18:50:22.330894','25','username: thiennhan',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(134,'2021-11-08 18:50:31.918759','28','username: trungtin',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(135,'2021-11-08 18:51:49.030953','27','username: huynhnhan2',2,'[{\"changed\": {\"fields\": [\"Choice\"]}}]',6,1),(136,'2021-11-08 18:51:59.643046','26','username: huynhnhan',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Choice\"]}}]',6,1),(137,'2021-11-08 18:52:10.167593','27','username: huynhnhan2',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(138,'2021-11-08 19:03:49.927957','39','username: kien123123',3,'',6,1),(139,'2021-11-08 19:04:18.189054','40','username: kien123123',3,'',6,1),(140,'2021-11-09 08:37:12.290720','1','Shipper: kien luc tuan\nCost: 20000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(141,'2021-11-09 08:39:04.775728','1','Shipper: kien luc tuan\nCost: 20000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(142,'2021-11-09 09:07:54.104173','1','Shipper: kien luc tuan\nCost: 20000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(143,'2021-11-09 12:20:33.692162','1','Shipper: kien luc tuan\nCost: 20000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(144,'2021-11-09 12:39:44.666172','1','Shipper: kien luc tuan\nCost: 20000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(145,'2021-11-09 12:40:24.232255','18','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:27:30.490320+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1),(146,'2021-11-09 12:40:24.237438','17','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:27:03.437517+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1),(147,'2021-11-09 12:40:24.241409','16','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:26:40.685248+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1),(148,'2021-11-09 12:40:24.244386','15','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:26:31.210309+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1),(149,'2021-11-09 12:40:24.248417','14','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:25:37.605161+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1),(150,'2021-11-09 12:40:24.251370','13','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-09 11:25:31.949022+00:00, \nStatus: 0,\nTotal price: 20000.00, \nPay method: 2',3,'',11,1),(151,'2021-11-09 15:21:31.510016','1','customer',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(152,'2021-11-09 15:22:10.712166','2','shipper',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(153,'2021-11-09 18:33:27.962340','1','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: def, \nCreated Date: 2021-10-26 14:10:06.012356+00:00, \nStatus: 2,\nTotal price: 30000.00, \nPay method: 2',3,'',11,1),(154,'2021-11-09 18:33:39.762713','3','Customer: thang tran huu\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-02 05:08:35.618855+00:00, \nStatus: 1,\nTotal price: 65000.00, \nPay method: 0',3,'',11,1),(155,'2021-11-09 18:33:49.596237','7','Shipper: xuan ha duc\nCost: 15600.00',3,'',7,1),(156,'2021-11-09 18:33:49.602221','5','Shipper: test test2\nCost: 50000.00',3,'',7,1),(157,'2021-11-09 18:33:49.605211','4','Shipper: phuc huynh van\nCost: 27000.00',3,'',7,1),(158,'2021-11-09 18:33:49.609202','1','Shipper: kien luc tuan\nCost: 15000.00',3,'',7,1),(159,'2021-11-09 18:33:49.612193','10','Shipper: kien luc tuan\nCost: 25000.00',3,'',7,1),(160,'2021-11-09 18:33:49.617221','12','Shipper: kien luc tuan\nCost: 54545.00',3,'',7,1),(161,'2021-11-09 18:33:49.620212','11','Shipper: kien luc tuan\nCost: 26000.00',3,'',7,1),(162,'2021-11-09 18:33:49.623213','9','Shipper: xuan ha duc\nCost: 45000.00',3,'',7,1),(163,'2021-11-09 19:59:12.806680','2','Creator: ry nguyen hao cam\n Active: True\nCreated date: 2021-11-02 06:01:28.921827+00:00\n Status: False',3,'',10,1),(164,'2021-11-10 09:00:21.931464','8','username: camry',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',6,1),(165,'2021-11-10 12:16:07.933660','45','username: van2332',3,'',6,1),(166,'2021-11-10 12:18:20.228263','46','username: van2332',3,'',6,1),(167,'2021-11-10 12:25:42.632609','48','username: van2311123',3,'',6,1),(168,'2021-11-10 12:25:42.639630','47','username: van23323',3,'',6,1),(169,'2021-11-10 12:33:37.101073','44','Shipper ID: 35263457',3,'',9,1),(170,'2021-11-10 15:17:09.543881','9','Creator: duc le duong\n Active: True\nCreated date: 2021-11-10 08:09:30.974094+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Product cate\", \"Service cate\", \"Customer received\", \"Phone\"]}}]',10,1),(171,'2021-11-11 15:28:40.968571','51','username: chansang',2,'[{\"changed\": {\"fields\": [\"Active\", \"Choice\"]}}]',6,1),(172,'2021-11-11 15:35:35.200145','43','username: vanngo',2,'[{\"changed\": {\"fields\": [\"First name\", \"Gender\", \"Choice\"]}}]',6,1),(173,'2021-11-11 18:18:24.728004','28','Customer: duc le duong\nShipper: sang lam chan, \nShip address: 144 vinh vien, quan 10, tp hcm, \nCreated Date: 2021-11-11 17:41:06.766781+00:00, \nStatus: 0,\nTotal price: 35000.00, \nPay method: 2',3,'',11,1),(174,'2021-11-11 18:18:24.731992','27','Customer: duc le duong\nShipper: ry nguyen hao cam, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-11 14:03:11.693801+00:00, \nStatus: 0,\nTotal price: 23000.00, \nPay method: 2',3,'',11,1),(175,'2021-11-11 18:18:24.734984','26','Customer: duc le duong\nShipper: phuc huynh van, \nShip address: def3, \nCreated Date: 2021-11-11 14:02:04.619876+00:00, \nStatus: 0,\nTotal price: 7181.00, \nPay method: 2',3,'',11,1),(176,'2021-11-11 18:18:24.738974','25','Customer: test email\nShipper: kien luc tuan, \nShip address: def, \nCreated Date: 2021-11-11 10:36:06.649771+00:00, \nStatus: 0,\nTotal price: 91158.00, \nPay method: 2',3,'',11,1),(177,'2021-11-11 18:18:24.741966','24','Customer: duc le duong\nShipper: moly clea, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-11 10:34:42.214950+00:00, \nStatus: 2,\nTotal price: 69217.00, \nPay method: 0',3,'',11,1),(178,'2021-11-11 18:18:24.744958','23','Customer: vanwew ngo\nShipper: chinh ha duc, \nShip address: fefeer, \nCreated Date: 2021-11-11 10:30:21.791381+00:00, \nStatus: 0,\nTotal price: 94936.00, \nPay method: 0',3,'',11,1),(179,'2021-11-11 18:18:24.749945','22','Customer: duc le duong\nShipper: xuan ha duc, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-10 15:23:28.303820+00:00, \nStatus: 0,\nTotal price: 22235.00, \nPay method: 2',3,'',11,1),(180,'2021-11-11 18:18:24.752937','21','Customer: duc le duong\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-10 14:35:44.171703+00:00, \nStatus: 2,\nTotal price: 50000.00, \nPay method: 2',3,'',11,1),(181,'2021-11-11 18:18:24.756927','20','Customer: test email\nShipper: kien luc tuan, \nShip address: def, \nCreated Date: 2021-11-10 09:05:51.319023+00:00, \nStatus: 2,\nTotal price: 36000.00, \nPay method: 2',3,'',11,1),(182,'2021-11-11 18:18:24.759951','19','Customer: test email\nShipper: kien luc tuan, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-10 08:54:36.085514+00:00, \nStatus: 2,\nTotal price: 52000.00, \nPay method: 2',3,'',11,1),(183,'2021-11-11 18:18:24.762910','12','Customer: thu to ngoc anh\nShipper: chinh ha duc, \nShip address: 144 vinh vien, quan 10, hcm, \nCreated Date: 2021-11-07 15:42:48.680209+00:00, \nStatus: 0,\nTotal price: 73344.00, \nPay method: 2',3,'',11,1),(184,'2021-11-11 18:18:24.765930','6','Customer: vy nguyen quoc\nShipper: test test2, \nShip address: fsgfsgdfsgfsgsarqrqwr, \nCreated Date: 2021-11-07 15:08:41.574193+00:00, \nStatus: 0,\nTotal price: 86000.00, \nPay method: 1',3,'',11,1),(185,'2021-11-11 18:18:24.768915','5','Customer: hung ha chan\nShipper: test test2, \nShip address: fsgfsgdfsgfsgsarqrqwr, \nCreated Date: 2021-11-06 15:02:28.205490+00:00, \nStatus: 0,\nTotal price: 86000.00, \nPay method: 1',3,'',11,1),(186,'2021-11-11 18:18:24.771885','4','Customer: vy nguyen quoc\nShipper: ry nguyen hao cam, \nShip address: fsgfsgdfsgfsgs, \nCreated Date: 2021-11-06 14:58:13.621078+00:00, \nStatus: 2,\nTotal price: 80000.00, \nPay method: 2',3,'',11,1),(187,'2021-11-11 18:18:24.775903','2','Customer: hung ha chan\nShipper: phuc huynh van, \nShip address: 144/18 au co, p9, tan binh, hcm, \nCreated Date: 2021-11-02 04:27:24.006687+00:00, \nStatus: 0,\nTotal price: 50000.00, \nPay method: 2',3,'',11,1),(188,'2021-11-11 18:18:32.478815','1','Creator: duc le duong\n Active: False\nCreated date: 2021-10-26 14:08:25.921030+00:00\n Status: True',3,'',10,1),(189,'2021-11-11 18:18:32.485861','5','Creator: hung ha chan\n Active: True\nCreated date: 2021-11-08 15:58:41.182649+00:00\n Status: False',3,'',10,1),(190,'2021-11-11 18:18:32.488789','6','Creator: hung ha chan\n Active: True\nCreated date: 2021-11-08 16:25:42.518066+00:00\n Status: False',3,'',10,1),(191,'2021-11-11 18:18:32.491781','7','Creator: long nguyen thanh\n Active: True\nCreated date: 2021-11-08 18:23:49.227101+00:00\n Status: False',3,'',10,1),(192,'2021-11-11 18:18:32.494781','8','Creator: hung ha chan\n Active: True\nCreated date: 2021-11-09 19:57:40.054432+00:00\n Status: False',3,'',10,1),(193,'2021-11-11 18:18:32.497774','9','Creator: duc le duong\n Active: False\nCreated date: 2021-11-10 08:09:30.974094+00:00\n Status: True',3,'',10,1),(194,'2021-11-11 18:18:32.500766','10','Creator: duc le duong\n Active: False\nCreated date: 2021-11-10 08:09:51.023964+00:00\n Status: True',3,'',10,1),(195,'2021-11-11 18:18:32.504754','11','Creator: test email\n Active: False\nCreated date: 2021-11-10 08:41:36.471191+00:00\n Status: True',3,'',10,1),(196,'2021-11-11 18:18:32.507748','12','Creator: test email\n Active: False\nCreated date: 2021-11-10 08:59:13.131916+00:00\n Status: False',3,'',10,1),(197,'2021-11-11 18:18:32.510749','13','Creator: test email\n Active: False\nCreated date: 2021-11-10 09:04:27.052396+00:00\n Status: True',3,'',10,1),(198,'2021-11-11 18:18:32.513741','15','Creator: vanwew ngo\n Active: True\nCreated date: 2021-11-11 10:31:46.034584+00:00\n Status: False',3,'',10,1),(199,'2021-11-11 18:18:32.517720','16','Creator: duc le duong\n Active: False\nCreated date: 2021-11-11 17:42:33.124946+00:00\n Status: False',3,'',10,1),(200,'2021-11-11 18:18:32.520712','17','Creator: duc le duong\n Active: False\nCreated date: 2021-11-11 17:59:46.169927+00:00\n Status: False',3,'',10,1),(201,'2021-11-11 18:18:32.522707','18','Creator: duc le duong\n Active: False\nCreated date: 2021-11-11 18:06:11.510164+00:00\n Status: False',3,'',10,1),(202,'2021-11-11 18:18:32.526696','19','Creator: duc le duong\n Active: False\nCreated date: 2021-11-11 18:13:17.426937+00:00\n Status: False',3,'',10,1),(203,'2021-11-11 18:27:07.263756','51','Shipper: kien luc tuan\nCost: 35000.00',3,'',7,1),(204,'2021-11-11 18:27:21.840524','52','Shipper: kien luc tuan\nCost: 50000',1,'[{\"added\": {}}]',7,1),(205,'2021-11-11 18:27:33.783596','52','Shipper: kien luc tuan\nCost: 50000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(206,'2021-11-11 18:59:53.262793','20','Creator: duc le duong\n Active: False\nCreated date: 2021-11-11 18:19:17.061183+00:00\n Status: False',3,'',10,1),(207,'2021-11-11 18:59:53.270196','21','Creator: duc le duong\n Active: False\nCreated date: 2021-11-11 18:33:48.170584+00:00\n Status: False',3,'',10,1),(208,'2021-11-11 18:59:53.274330','22','Creator: duc le duong\n Active: False\nCreated date: 2021-11-11 18:40:46.533462+00:00\n Status: False',3,'',10,1),(209,'2021-11-11 18:59:53.277821','23','Creator: duc le duong\n Active: False\nCreated date: 2021-11-11 18:43:51.770893+00:00\n Status: False',3,'',10,1),(210,'2021-11-11 18:59:53.281035','24','Creator: duc le duong\n Active: False\nCreated date: 2021-11-11 18:46:12.692255+00:00\n Status: False',3,'',10,1),(211,'2021-11-11 18:59:53.284216','25','Creator: duc le duong\n Active: False\nCreated date: 2021-11-11 18:55:07.152678+00:00\n Status: False',3,'',10,1),(212,'2021-11-11 19:00:02.252410','29','Order Detail - Order ID 29',3,'',14,1),(213,'2021-11-11 19:00:08.868551','29','Customer: duc le duong\nShipper: moly clea, \nShip address: 144 vinh vien, quan 10, hcm wewe, \nCreated Date: 2021-11-11 18:32:53.210155+00:00, \nStatus: 0,\nTotal price: 68364.00, \nPay method: 2',3,'',11,1),(214,'2021-11-12 01:19:06.254902','26','Creator: duc le duong\n Active: True\nCreated date: 2021-11-12 01:19:06.250557+00:00\n Status: False',1,'[{\"added\": {}}]',10,1),(215,'2021-11-12 01:19:30.305540','58','Shipper: phuc huynh van\nCost: 32000',1,'[{\"added\": {}}]',7,1),(216,'2021-11-12 01:22:24.212320','27','Creator: duc le duong\n Active: True\nCreated date: 2021-11-12 01:22:24.210189+00:00\n Status: False',1,'[{\"added\": {}}]',10,1),(217,'2021-11-12 01:22:46.548238','59','Shipper: kien luc tuan\nCost: 35000',1,'[{\"added\": {}}]',7,1),(218,'2021-11-12 01:24:58.305427','60','Shipper: ry nguyen hao cam\nCost: 34000',1,'[{\"added\": {}}]',7,1),(219,'2021-11-12 01:31:29.063718','61','Shipper: phuc huynh van\nCost: 38000',1,'[{\"added\": {}}]',7,1),(220,'2021-11-12 01:32:07.335024','28','Creator: hung ha chan\n Active: True\nCreated date: 2021-11-12 01:32:07.330722+00:00\n Status: False',1,'[{\"added\": {}}]',10,1),(221,'2021-11-12 03:05:44.687341','1','Customer: duc le duong,\nshipper: kien luc tuan,\nComment: good shipper,\nrate: 5,\n',3,'',12,1),(222,'2021-11-12 03:05:44.694495','2','Customer: hung ha chan,\nshipper: phuc huynh van,\nComment: friendly shipper and nice,\nrate: 5,\n',3,'',12,1),(223,'2021-11-12 03:05:44.697359','9','Customer: thang tran huu,\nshipper: phuc huynh van,\nComment: nice shipper,\nrate: 2,\n',3,'',12,1),(224,'2021-11-12 03:18:58.274731','61','Shipper: phuc huynh van\nCost: 38000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(225,'2021-11-12 03:20:07.185132','26','Creator: duc le duong\n Active: False\nCreated date: 2021-11-12 01:19:06.250557+00:00\n Status: True',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',10,1),(226,'2021-11-12 03:20:11.616094','27','Creator: duc le duong\n Active: False\nCreated date: 2021-11-12 01:22:24.210189+00:00\n Status: True',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',10,1),(227,'2021-11-12 07:43:44.365532','30','Customer: duc le duong\nShipper: phuc huynh van, \nShip address: 144 vinh vien, quan 10, hcm wewe, \nCreated Date: 2021-11-12 01:20:45.207455+00:00, \nStatus: 0,\nTotal price: 32000.00, \nPay method: 2',3,'',11,1),(228,'2021-11-12 07:43:48.067415','31','Customer: duc le duong\nShipper: phuc huynh van, \nShip address: 162 binh hung, binh long, CP, AG, \nCreated Date: 2021-11-12 03:19:30.880835+00:00, \nStatus: 0,\nTotal price: 38000.00, \nPay method: 2',3,'',11,1),(229,'2021-11-12 07:43:53.618375','58','Shipper: phuc huynh van\nCost: 32000.00',3,'',7,1),(230,'2021-11-12 07:43:53.623532','59','Shipper: kien luc tuan\nCost: 35000.00',3,'',7,1),(231,'2021-11-12 07:43:53.627476','60','Shipper: ry nguyen hao cam\nCost: 34000.00',3,'',7,1),(232,'2021-11-12 07:43:53.631119','61','Shipper: phuc huynh van\nCost: 38000.00',3,'',7,1),(233,'2021-11-12 07:44:26.920075','51','username: chansang',3,'',6,1),(234,'2021-11-12 07:44:26.925022','50','username: thuytrieu',3,'',6,1),(235,'2021-11-12 07:44:26.928016','49','username: anhtuan',3,'',6,1),(236,'2021-11-12 07:44:26.931007','44','username: emailtest',3,'',6,1),(237,'2021-11-12 07:44:26.933998','43','username: vanngo',3,'',6,1),(238,'2021-11-12 07:44:26.936991','42','username: ngocnhi',3,'',6,1),(239,'2021-11-12 07:44:26.939986','41','username: kien123123',3,'',6,1),(240,'2021-11-12 07:44:26.943015','38','username: vyne123',3,'',6,1),(241,'2021-11-12 07:44:26.946021','37','username: tuannguyen',3,'',6,1),(242,'2021-11-12 07:44:26.949027','36','username: chankhang',3,'',6,1),(243,'2021-11-12 07:44:26.952016','35','username: ducchinh',3,'',6,1),(244,'2021-11-12 07:44:26.954996','34','username: ducxuan',3,'',6,1),(245,'2021-11-12 07:44:26.957989','33','username: ngocmai',3,'',6,1),(246,'2021-11-12 07:44:26.960129','32','username: tantu',3,'',6,1),(247,'2021-11-12 07:44:26.963199','31','username: trangtu',3,'',6,1),(248,'2021-11-12 07:44:26.969211','30','username: trungkien',3,'',6,1),(249,'2021-11-12 07:44:26.974042','29','username: trungkhang',3,'',6,1),(250,'2021-11-12 07:44:26.976915','28','username: trungtin',3,'',6,1),(251,'2021-11-12 07:44:26.980876','27','username: huynhnhan2',3,'',6,1),(252,'2021-11-12 07:44:26.983891','26','username: huynhnhan',3,'',6,1),(253,'2021-11-12 07:44:26.986889','25','username: thiennhan',3,'',6,1),(254,'2021-11-12 07:44:26.988881','24','username: khangluc',3,'',6,1),(255,'2021-11-12 07:44:26.992206','23','username: khailuc',3,'',6,1),(256,'2021-11-12 07:44:26.995200','22','username: ngochien',3,'',6,1),(257,'2021-11-12 07:44:26.998206','21','username: sonminh',3,'',6,1),(258,'2021-11-12 07:44:27.001209','20','username: moly',3,'',6,1),(259,'2021-11-12 07:44:27.004211','14','username: test',3,'',6,1),(260,'2021-11-12 07:44:27.007191','13','username: camtu',3,'',6,1),(261,'2021-11-12 07:44:27.010192','12','username: anhthu',3,'',6,1),(262,'2021-11-12 07:44:27.013208','11','username: phucsot',3,'',6,1),(263,'2021-11-12 07:44:27.016196','10','username: thanhlong',3,'',6,1),(264,'2021-11-12 07:44:27.019187','9','username: nhatthanh',3,'',6,1),(265,'2021-11-12 07:44:27.022174','8','username: camry',3,'',6,1),(266,'2021-11-12 07:44:27.024169','7','username: nhatkhan',3,'',6,1),(267,'2021-11-12 07:44:27.028199','6','username: huuthang',3,'',6,1),(268,'2021-11-12 07:44:27.031199','5','username: chanhung',3,'',6,1),(269,'2021-11-12 07:44:27.034209','4','username: quocvy',3,'',6,1),(270,'2021-11-12 07:44:27.037210','3','username: duongduc',3,'',6,1),(271,'2021-11-12 07:44:27.040062','2','username: kienluc',3,'',6,1),(272,'2021-11-12 07:49:21.913353','53','username: quocvy',2,'[{\"changed\": {\"fields\": [\"Active\", \"Choice\"]}}]',6,1),(273,'2021-11-12 08:05:28.956582','31','Creator: kien luc tuan\n Active: True\nCreated date: 2021-11-12 08:02:37.682750+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',10,1),(274,'2021-11-12 08:05:54.907365','63','Shipper: vy nguyen quoc\nCost: 34000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(275,'2021-11-12 08:13:35.621144','63','Shipper: vy nguyen quoc\nCost: 34000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(276,'2021-11-12 08:13:48.228757','31','Creator: kien luc tuan\n Active: True\nCreated date: 2021-11-12 08:02:37.682750+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Is checked\"]}}]',10,1),(277,'2021-11-12 08:16:12.844956','63','Shipper: vy nguyen quoc\nCost: 34000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(278,'2021-11-12 08:16:37.223153','31','Creator: kien luc tuan\n Active: True\nCreated date: 2021-11-12 08:02:37.682750+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',10,1),(279,'2021-11-12 08:18:24.764187','31','Creator: kien luc tuan\n Active: True\nCreated date: 2021-11-12 08:02:37.682750+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',10,1),(280,'2021-11-12 08:19:15.437881','31','Creator: kien luc tuan\n Active: True\nCreated date: 2021-11-12 08:02:37.682750+00:00\n Status: False',2,'[]',10,1),(281,'2021-11-12 08:20:46.670961','63','Shipper: vy nguyen quoc\nCost: 34000.00',2,'[]',7,1),(282,'2021-11-12 08:27:25.973387','63','Shipper: vy nguyen quoc\nCost: 34000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(283,'2021-11-12 08:31:40.117531','63','Shipper: vy nguyen quoc\nCost: 34000.00',2,'[{\"changed\": {\"fields\": [\"Is winner\"]}}]',7,1),(284,'2021-11-12 08:32:55.265116','31','Creator: kien luc tuan\n Active: True\nCreated date: 2021-11-12 08:02:37.682750+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',10,1),(285,'2021-11-12 08:34:05.761805','31','Creator: kien luc tuan\n Active: True\nCreated date: 2021-11-12 08:02:37.682750+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',10,1),(286,'2021-11-12 08:34:34.375145','33','Customer: kien luc tuan\nShipper: vy nguyen quoc, \nShip address: 144 vinh vien, quan 10, hcm wewe, \nCreated Date: 2021-11-12 08:06:36.702489+00:00, \nStatus: 0,\nTotal price: 34000.00, \nPay method: 2',3,'',11,1),(287,'2021-11-12 08:34:34.383155','32','Customer: kien luc tuan\nShipper: vy nguyen quoc, \nShip address: 144 vinh vien, quan 10, hcm wewe, \nCreated Date: 2021-11-12 07:57:10.448278+00:00, \nStatus: 0,\nTotal price: 65563.00, \nPay method: 2',3,'',11,1),(288,'2021-11-12 08:36:03.989947','31','Creator: kien luc tuan\n Active: True\nCreated date: 2021-11-12 08:02:37.682750+00:00\n Status: False',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',10,1),(289,'2021-11-12 08:36:26.019647','63','Shipper: vy nguyen quoc\nCost: 34000.00',2,'[]',7,1),(290,'2021-11-12 08:37:11.088201','31','Creator: kien luc tuan\n Active: True\nCreated date: 2021-11-12 08:02:37.682750+00:00\n Status: False',2,'[]',10,1),(291,'2021-11-12 08:40:40.682738','55','username: nhatthanh',2,'[{\"changed\": {\"fields\": [\"Active\", \"Choice\"]}}]',6,1),(292,'2021-11-12 13:15:46.773656','57','username: phucsot',2,'[{\"changed\": {\"fields\": [\"Active\", \"Choice\"]}}]',6,1),(293,'2021-11-13 08:39:47.386288','59','username: ngocduyen',2,'[{\"changed\": {\"fields\": [\"Active\", \"Choice\"]}}]',6,1),(294,'2021-11-17 03:40:33.609624','61','username: quoctrung',2,'[{\"changed\": {\"fields\": [\"Active\", \"Choice\"]}}]',6,1),(295,'2021-11-18 05:24:14.379499','64','username: minhngoc',2,'[{\"changed\": {\"fields\": [\"Active\", \"Choice\"]}}]',6,1),(296,'2021-11-18 05:27:00.038324','64','Shipper ID: 352632187',1,'[{\"added\": {}}]',9,1),(297,'2021-11-21 08:34:25.995744','67','username: tanbinh',2,'[{\"changed\": {\"fields\": [\"Active\", \"Choice\"]}}]',6,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-26 14:03:33.189245'),(2,'contenttypes','0002_remove_content_type_name','2021-10-26 14:03:33.292375'),(3,'auth','0001_initial','2021-10-26 14:03:33.671857'),(4,'auth','0002_alter_permission_name_max_length','2021-10-26 14:03:33.738530'),(5,'auth','0003_alter_user_email_max_length','2021-10-26 14:03:33.746541'),(6,'auth','0004_alter_user_username_opts','2021-10-26 14:03:33.755013'),(7,'auth','0005_alter_user_last_login_null','2021-10-26 14:03:33.761959'),(8,'auth','0006_require_contenttypes_0002','2021-10-26 14:03:33.766647'),(9,'auth','0007_alter_validators_add_error_messages','2021-10-26 14:03:33.774626'),(10,'auth','0008_alter_user_username_max_length','2021-10-26 14:03:33.784594'),(11,'auth','0009_alter_user_last_name_max_length','2021-10-26 14:03:33.792814'),(12,'auth','0010_alter_group_name_max_length','2021-10-26 14:03:33.811645'),(13,'auth','0011_update_proxy_permissions','2021-10-26 14:03:33.820893'),(14,'auth','0012_alter_user_first_name_max_length','2021-10-26 14:03:33.828871'),(15,'deliveryapp','0001_initial','2021-10-26 14:03:35.561733'),(16,'admin','0001_initial','2021-10-26 14:03:35.908745'),(17,'admin','0002_logentry_remove_auto_add','2021-10-26 14:03:35.933320'),(18,'admin','0003_logentry_add_action_flag_choices','2021-10-26 14:03:35.946590'),(19,'sessions','0001_initial','2021-10-26 14:03:35.998782'),(20,'deliveryapp','0002_order_pickup_address','2021-10-27 08:32:54.840454'),(21,'deliveryapp','0003_productcategory','2021-10-27 08:41:30.902486'),(22,'deliveryapp','0004_order_product_cate','2021-10-27 08:42:47.594816'),(23,'deliveryapp','0005_orderdetail','2021-10-27 09:45:50.727001'),(24,'oauth2_provider','0001_initial','2021-10-31 07:40:28.479298'),(25,'oauth2_provider','0002_auto_20190406_1805','2021-10-31 07:40:28.728723'),(26,'oauth2_provider','0003_auto_20201211_1314','2021-10-31 07:40:28.818801'),(27,'oauth2_provider','0004_auto_20200902_2022','2021-10-31 07:40:29.413812'),(28,'deliveryapp','0006_orderpost_pickup_address','2021-11-01 07:52:50.186810'),(29,'deliveryapp','0007_alter_auction_shipper','2021-11-01 08:31:55.386613'),(30,'deliveryapp','0008_auto_20211102_0856','2021-11-02 01:56:35.988955'),(31,'deliveryapp','0009_auto_20211102_0956','2021-11-02 02:56:23.837589'),(32,'deliveryapp','0010_user_is_shipper','2021-11-02 03:16:23.773167'),(33,'deliveryapp','0011_auto_20211102_1059','2021-11-02 03:59:29.952253'),(34,'deliveryapp','0012_alter_order_auction','2021-11-02 04:27:11.393588'),(35,'deliveryapp','0013_auto_20211102_1219','2021-11-02 05:19:20.801841'),(36,'deliveryapp','0014_user_choice','2021-11-04 01:46:44.683069'),(37,'deliveryapp','0015_alter_user_choice','2021-11-05 05:26:19.055706'),(38,'deliveryapp','0016_alter_user_choice','2021-11-06 08:59:23.945662'),(39,'deliveryapp','0017_alter_user_choice','2021-11-06 08:59:23.995383'),(40,'deliveryapp','0018_auto_20211108_2322','2021-11-08 16:22:36.041011'),(41,'deliveryapp','0019_alter_user_avatar','2021-11-08 18:35:36.401608'),(42,'deliveryapp','0020_auto_20211109_0140','2021-11-08 18:40:45.108047'),(43,'deliveryapp','0021_alter_user_choice','2021-11-08 18:51:03.360878'),(44,'deliveryapp','0022_alter_orderdetail_order','2021-11-09 02:32:25.149213'),(45,'deliveryapp','0023_alter_auction_shipper','2021-11-09 07:30:20.193406'),(46,'deliveryapp','0024_alter_auction_shipper','2021-11-09 07:31:14.550740'),(47,'deliveryapp','0025_alter_auction_shipper','2021-11-09 07:46:35.381405'),(48,'deliveryapp','0026_auto_20211110_1544','2021-11-10 08:44:07.952169'),(49,'deliveryapp','0027_auto_20211110_1910','2021-11-10 12:11:04.821369'),(50,'deliveryapp','0028_auto_20211110_1917','2021-11-10 12:17:40.970787'),(51,'deliveryapp','0029_alter_user_phone','2021-11-10 12:24:31.582829'),(52,'deliveryapp','0030_alter_shipper_id_number','2021-11-10 12:33:55.059098'),(53,'deliveryapp','0031_auto_20211110_2108','2021-11-10 14:09:05.000663'),(54,'deliveryapp','0032_alter_auction_ship_cost','2021-11-10 14:09:05.080449'),(55,'deliveryapp','0033_alter_auction_ship_cost','2021-11-10 14:10:13.377771'),(56,'deliveryapp','0034_alter_user_gender','2021-11-10 14:26:37.617170'),(57,'deliveryapp','0035_alter_user_gender','2021-11-10 14:30:35.072673');
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
INSERT INTO `django_session` VALUES ('8zqo8vz92m58srybbpyfdklug8jgpcxn','.eJxVjDsOwjAQBe_iGlneNesPJX3OYPmzxgGUSHFSIe4OkVJA-2bmvUSI29rC1nkJYxEXAeL0u6WYHzztoNzjdJtlnqd1GZPcFXnQLoe58PN6uH8HLfb2rXUFTBU1k7LK4Fk78hALAjswyoL3pLIDy5YImZWCiBpT8aYCeXLi_QGlbDYd:1mtsK0:4195vQa2KM14DVqeDjcB2ws-w9hDm1r6SZF1hn6vYMM','2021-12-19 14:16:56.749719');
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
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (2,'5BbTh2zU3bRg42yD99HwDffj3nxDSl','2021-10-31 17:53:18.515952','read write',1,1,'2021-10-31 07:53:18.515952','2021-10-31 07:53:18.515952',NULL,NULL),(23,'YGxk07GaUG4p6xJyoXkqVlY57AcFwt','2021-11-02 14:08:23.506353','read write',1,1,'2021-11-02 04:08:23.506353','2021-11-02 04:08:23.506353',NULL,NULL),(270,'ENvsyjjDjVhjhCIMLnGleyPPrwqj9J','2021-11-12 17:48:46.304533','read write',1,52,'2021-11-12 07:48:46.305501','2021-11-12 07:48:46.305501',NULL,NULL),(271,'F8xoTIh1q7iSOsU3Woj5SzWjqIaG2D','2021-11-12 18:02:59.768501','read write',1,53,'2021-11-12 08:02:59.768501','2021-11-12 08:02:59.768501',NULL,NULL),(272,'l5NRc0eUP3sV1kIom1folGeyNXwQl2','2021-11-12 18:06:26.263299','read write',1,52,'2021-11-12 08:06:26.264297','2021-11-12 08:06:26.264297',NULL,NULL),(273,'hchjLnvAHVOJsBmfnFX65AKA3HUN6N','2021-11-12 18:14:45.804061','read write',1,52,'2021-11-12 08:14:45.805062','2021-11-12 08:14:45.805062',NULL,NULL),(274,'MV2dGFOvUpohD5dlyEeVQU3ubi54QB','2021-11-12 18:40:27.769953','read write',1,54,'2021-11-12 08:40:27.769953','2021-11-12 08:40:27.769953',NULL,NULL),(275,'Kl59PkAih7iSUVxLGKkvCXfnSupRQ9','2021-11-12 18:40:53.193065','read write',1,55,'2021-11-12 08:40:53.193065','2021-11-12 08:40:53.193065',NULL,NULL),(276,'rr9A0Q6zB54INsllJYp32OJmK1NQhu','2021-11-12 18:45:38.406904','read write',1,53,'2021-11-12 08:45:38.407904','2021-11-12 08:45:38.407904',NULL,NULL),(277,'fyyD3dUkH0Tt3TQJoqeKt5Ez1fAKLv','2021-11-12 19:19:07.570148','read write',1,55,'2021-11-12 09:19:07.570148','2021-11-12 09:19:07.570148',NULL,NULL),(278,'FC186hlzFvOqpWp7gLucmleWKTTJrk','2021-11-12 19:20:02.235561','read write',1,53,'2021-11-12 09:20:02.235561','2021-11-12 09:20:02.235561',NULL,NULL),(279,'dZzvW98aZbuf4kM0CEAVvO4ssvKdYO','2021-11-12 23:13:29.532719','read write',1,56,'2021-11-12 13:13:29.532719','2021-11-12 13:13:29.532719',NULL,NULL),(280,'D1xDw1Qi0bDCCsX9ZEnLXv9sLnb2WK','2021-11-12 23:16:00.366217','read write',1,56,'2021-11-12 13:16:00.366217','2021-11-12 13:16:00.367250',NULL,NULL),(281,'hTHfXHOwfqZqOo8i0WjRVP0HrjhH0i','2021-11-12 23:16:08.037221','read write',1,57,'2021-11-12 13:16:08.037221','2021-11-12 13:16:08.037221',NULL,NULL),(282,'2MNJGWHTems53PbEFWAogfTNib1z8K','2021-11-12 23:21:13.161367','read write',1,55,'2021-11-12 13:21:13.161367','2021-11-12 13:21:13.161367',NULL,NULL),(283,'Fja5tM51WlnjKDGjZkLyqY4iLyLh7W','2021-11-12 23:21:50.814695','read write',1,57,'2021-11-12 13:21:50.814695','2021-11-12 13:21:50.814695',NULL,NULL),(284,'KhhES4kxpm65yYIeHTgVbhl7Msl3wM','2021-11-12 23:24:28.222049','read write',1,55,'2021-11-12 13:24:28.222049','2021-11-12 13:24:28.222049',NULL,NULL),(285,'kZLGzfkDlm0EW7078iHj8t5HFrklfk','2021-11-13 18:38:02.415153','read write',1,58,'2021-11-13 08:38:02.415153','2021-11-13 08:38:02.415153',NULL,NULL),(286,'epZxd6wPDfZFUOPbgbT4efCiSBYt8j','2021-11-13 18:39:53.025416','read write',1,59,'2021-11-13 08:39:53.041040','2021-11-13 08:39:53.041040',NULL,NULL),(287,'Kc0FW60zSt5A1asYtVY7PJpdWxYjdR','2021-11-13 18:44:45.462787','read write',1,53,'2021-11-13 08:44:45.462787','2021-11-13 08:44:45.462787',NULL,NULL),(288,'pZDZn844X9pPIEkZqc80Qk43m16ZqK','2021-11-13 18:46:21.349645','read write',1,59,'2021-11-13 08:46:21.349645','2021-11-13 08:46:21.349645',NULL,NULL),(289,'NkvmLv267i5ryrddhqekOHgVVwfuSd','2021-11-14 13:21:49.321578','read write',1,54,'2021-11-14 03:21:49.321578','2021-11-14 03:21:49.321578',NULL,NULL),(290,'OqsZg6x53uQX5rnyEwmltM1cKsVNhG','2021-11-14 13:23:15.215279','read write',1,53,'2021-11-14 03:23:15.215279','2021-11-14 03:23:15.215279',NULL,NULL),(291,'5WVb4BuDYIcaT0378zfkl0BWpiIawE','2021-11-14 13:23:46.673431','read write',1,52,'2021-11-14 03:23:46.673431','2021-11-14 03:23:46.673431',NULL,NULL),(292,'1bnkm1xFggPlH6NthhWdBBKySeK8fW','2021-11-14 13:26:02.522330','read write',1,59,'2021-11-14 03:26:02.522330','2021-11-14 03:26:02.522330',NULL,NULL),(293,'6WdMX9KTg2USSEE9QGHwITTghZSAOJ','2021-11-14 13:26:58.241752','read write',1,55,'2021-11-14 03:26:58.241752','2021-11-14 03:26:58.241752',NULL,NULL),(294,'oI1bNj1th2RHZWI85sZ4jMiMzqSg3Y','2021-11-14 13:27:21.315499','read write',1,53,'2021-11-14 03:27:21.315499','2021-11-14 03:27:21.315499',NULL,NULL),(295,'yg1eJJBYzYxA8YjUy8WrY14vTgKuxS','2021-11-14 13:28:14.836120','read write',1,56,'2021-11-14 03:28:14.836120','2021-11-14 03:28:14.836120',NULL,NULL),(296,'yX71Vw1I4H0NXcb7HYF64swc9pBdEv','2021-11-14 13:29:57.765356','read write',1,54,'2021-11-14 03:29:57.765356','2021-11-14 03:29:57.765356',NULL,NULL),(297,'vZAar12nTlKOpBCsfdNsudOQp2wFIf','2021-11-14 13:33:10.933509','read write',1,57,'2021-11-14 03:33:10.933509','2021-11-14 03:33:10.933509',NULL,NULL),(298,'VQHWqBEHQkZQXM1IqelDinG7AK6xdb','2021-11-14 13:33:56.092997','read write',1,55,'2021-11-14 03:33:56.092997','2021-11-14 03:33:56.092997',NULL,NULL),(299,'tsQ1IRYJaQZoe7CrB4eh1vPI7WZwG7','2021-11-14 13:34:27.364274','read write',1,59,'2021-11-14 03:34:27.364274','2021-11-14 03:34:27.364274',NULL,NULL),(300,'2p5OdYHeLeFhhJWRJz0XHz16G2oAos','2021-11-14 13:34:56.071760','read write',1,56,'2021-11-14 03:34:56.071760','2021-11-14 03:34:56.071760',NULL,NULL),(301,'LHSIayHwjw0wJfFLEEd6YSQYPdHeN2','2021-11-14 13:35:16.301001','read write',1,54,'2021-11-14 03:35:16.301001','2021-11-14 03:35:16.301001',NULL,NULL),(302,'LbQgvVGdqWSXmjZ4yZa3NuFGjgAKaY','2021-11-14 13:36:45.890442','read write',1,57,'2021-11-14 03:36:45.890442','2021-11-14 03:36:45.890442',NULL,NULL),(303,'8ASzIJxcWFE0X3t0seDmELopOqVZBs','2021-11-14 13:38:38.558279','read write',1,52,'2021-11-14 03:38:38.558279','2021-11-14 03:38:38.558279',NULL,NULL),(304,'bcj606Z1GVAo3r1NeXOtgvdJ0RYmKw','2021-11-17 13:39:08.235234','read write',1,60,'2021-11-17 03:39:08.235234','2021-11-17 03:39:08.235234',NULL,NULL),(305,'uPmrQSvqWGXfpK7H09FaDusRHNZuEp','2021-11-17 13:40:44.667950','read write',1,61,'2021-11-17 03:40:44.683573','2021-11-17 03:40:44.683573',NULL,NULL),(306,'9Go32W2zLHbUIJg2n3fAqe4Ig3fJHU','2021-11-17 13:45:00.898841','read write',1,53,'2021-11-17 03:45:00.898841','2021-11-17 03:45:00.898841',NULL,NULL),(307,'pEwk4Zn62YFxlRwCPpHB9lAUqWNoFi','2021-11-17 13:47:07.759840','read write',1,61,'2021-11-17 03:47:07.759840','2021-11-17 03:47:07.759840',NULL,NULL),(308,'ZQ6d32YtPX8c8Ybm7gjQoi5rTR6y91','2021-11-18 14:19:55.879360','read write',1,62,'2021-11-18 04:19:55.879360','2021-11-18 04:19:55.879360',NULL,NULL),(309,'8YmVXNe6r2eSu9AOTUvFt2JN3YqlK6','2021-11-18 14:21:09.402744','read write',1,53,'2021-11-18 04:21:09.402744','2021-11-18 04:21:09.402744',NULL,NULL),(310,'KJm2q4uTcV71AsRwGqkBIvm63qquFF','2021-11-18 14:21:44.404222','read write',1,62,'2021-11-18 04:21:44.404222','2021-11-18 04:21:44.404222',NULL,NULL),(311,'M4Q2FYDzYIWZ60O0Gmtz0Rz9dNTeIf','2021-11-18 14:22:03.156883','read write',1,53,'2021-11-18 04:22:03.156883','2021-11-18 04:22:03.156883',NULL,NULL),(312,'ZSy8hkVGQHl1S2DA36n8M5xRspO4Uq','2021-11-18 15:21:32.773692','read write',1,63,'2021-11-18 05:21:32.773692','2021-11-18 05:21:32.773692',NULL,NULL),(313,'1zaqWPAUkIWc6JlQ76NonlEhFV3nvw','2021-11-18 15:24:19.933896','read write',1,64,'2021-11-18 05:24:19.933896','2021-11-18 05:24:19.933896',NULL,NULL),(314,'TX6P7AkBsndO5lSj6tm8tvxOGyRMUs','2021-11-18 15:25:04.408813','read write',1,63,'2021-11-18 05:25:04.424397','2021-11-18 05:25:04.424397',NULL,NULL),(315,'ptQJPLHheCfKxdrroFIunjZHTQ3IxR','2021-11-18 15:25:14.248116','read write',1,53,'2021-11-18 05:25:14.248116','2021-11-18 05:25:14.248116',NULL,NULL),(316,'pk9BMzoCyATKijAC90PIdn3Lp25QgN','2021-11-18 15:53:16.151966','read write',1,52,'2021-11-18 05:53:16.151966','2021-11-18 05:53:16.151966',NULL,NULL),(317,'yiweTjrr9f6QnLQ1xwwzF5ccnSMvuw','2021-11-18 15:59:19.416975','read write',1,52,'2021-11-18 05:59:19.417973','2021-11-18 05:59:19.417973',NULL,NULL),(318,'tBs5Ygdwc43zDvx3YcEIIg090Mma80','2021-11-18 15:59:50.686124','read write',1,53,'2021-11-18 05:59:50.686124','2021-11-18 05:59:50.686124',NULL,NULL),(319,'x5p72xwrGol9QcJenHB94vy2RlgnTM','2021-11-18 18:19:48.772272','read write',1,62,'2021-11-18 08:19:48.772272','2021-11-18 08:19:48.772272',NULL,NULL),(320,'wyEp8HClSqGYqYWW1aHbFLqP4kvhHd','2021-11-18 18:24:21.399774','read write',1,59,'2021-11-18 08:24:21.400772','2021-11-18 08:24:21.400772',NULL,NULL),(321,'jR83KoyuPkSzkmk4rJGaZ67tJzOKFa','2021-11-18 18:25:46.210275','read write',1,61,'2021-11-18 08:25:46.211235','2021-11-18 08:25:46.211235',NULL,NULL),(322,'bMyKiLNtB2XnpuCm6veAsvVAaSr496','2021-11-18 23:47:04.899362','read write',1,52,'2021-11-18 13:47:04.899362','2021-11-18 13:47:04.899362',NULL,NULL),(323,'3qXvaw8bY633cQrHPCarcXMCHKH7AL','2021-11-19 15:02:51.979436','read write',1,60,'2021-11-19 05:02:51.979436','2021-11-19 05:02:51.979436',NULL,NULL),(324,'c9YEmMn9jUr199vUuVfCRZD3SAH4Sa','2021-11-19 15:05:01.236287','read write',1,61,'2021-11-19 05:05:01.236287','2021-11-19 05:05:01.236287',NULL,NULL),(325,'JPVcVhTDw6y9BKYUJKx1lkMA498qJP','2021-11-19 15:05:51.429895','read write',1,53,'2021-11-19 05:05:51.429895','2021-11-19 05:05:51.429895',NULL,NULL),(326,'y14VjxC8kAjxVHZJ77Dp3oad3aGztW','2021-11-19 15:06:57.734542','read write',1,60,'2021-11-19 05:06:57.734542','2021-11-19 05:06:57.734542',NULL,NULL),(327,'3TUSckmmA6JyDz0eEqWofm4bM5WOZ8','2021-11-19 15:07:55.866200','read write',1,53,'2021-11-19 05:07:55.866200','2021-11-19 05:07:55.866200',NULL,NULL),(328,'oRD3sWrostHZE4iKBXd0w8s3BdDTje','2021-11-19 15:08:21.874038','read write',1,55,'2021-11-19 05:08:21.874038','2021-11-19 05:08:21.874038',NULL,NULL),(329,'mTtIBbqWOUXJKs0CPYDYwxzm85RMyU','2021-11-19 15:09:16.995817','read write',1,59,'2021-11-19 05:09:16.995817','2021-11-19 05:09:16.995817',NULL,NULL),(330,'R8P4pt1afeJUB8hBu7lr53YQltqn79','2021-11-19 15:09:49.582875','read write',1,64,'2021-11-19 05:09:49.582875','2021-11-19 05:09:49.582875',NULL,NULL),(331,'dosYbtxFgGx64zL5634QJ36b8xcZkD','2021-11-19 15:10:19.358398','read write',1,60,'2021-11-19 05:10:19.358398','2021-11-19 05:10:19.358398',NULL,NULL),(332,'1OG94qb3JY8DHBRerYzLHB5O4P7144','2021-11-20 22:50:12.581318','read write',1,52,'2021-11-20 12:50:12.581318','2021-11-20 12:50:12.581318',NULL,NULL),(333,'jiFAhxIxpMFIqIkyOhWlnhKjt7cxfV','2021-11-20 23:16:12.989456','read write',1,53,'2021-11-20 13:16:12.989456','2021-11-20 13:16:12.989456',NULL,NULL),(334,'bS4PLQ7K8Mc0PVFTL9Lxz0tNAuXMzY','2021-11-21 00:20:38.072193','read write',1,52,'2021-11-20 14:20:38.073191','2021-11-20 14:20:38.073191',NULL,NULL),(335,'4qLUuYwLxVMqxgkAtF0mXyxyakud9R','2021-11-21 00:20:45.184828','read write',1,52,'2021-11-20 14:20:45.185825','2021-11-20 14:20:45.185825',NULL,NULL),(336,'7ciW0ngMwwstA2XdvKo2ouHv2PfO4B','2021-11-21 00:21:08.985798','read write',1,52,'2021-11-20 14:21:08.985798','2021-11-20 14:21:08.985798',NULL,NULL),(337,'cz8G2UnvJklkAeHGRD6SvNpXnXNjl4','2021-11-21 00:22:07.529729','read write',1,65,'2021-11-20 14:22:07.529729','2021-11-20 14:22:07.529729',NULL,NULL),(338,'slZuAaPPXBBq0BXPbAS7QhFufTfaCP','2021-11-21 17:00:47.564901','read write',1,52,'2021-11-21 07:00:47.565898','2021-11-21 07:00:47.565898',NULL,NULL),(339,'PCZVvkEM6Zyip7sdVF06FWgf9kkVYy','2021-11-21 17:01:29.058549','read write',1,53,'2021-11-21 07:01:29.058549','2021-11-21 07:01:29.058549',NULL,NULL),(340,'VIKa370mF8bpO6dWmbTeoAqbguvUbN','2021-11-21 17:02:00.042763','read write',1,52,'2021-11-21 07:02:00.042763','2021-11-21 07:02:00.042763',NULL,NULL),(341,'vjGznfMvsKKoPi1DjBjCnEQJZgBdB1','2021-11-21 18:30:03.088319','read write',1,52,'2021-11-21 08:30:03.089282','2021-11-21 08:30:03.089282',NULL,NULL),(342,'0owU50YvnHt93FJIDH0ubVJ4DDpf9F','2021-11-21 18:33:01.534259','read write',1,66,'2021-11-21 08:33:01.535298','2021-11-21 08:33:01.535298',NULL,NULL),(343,'GWwUZy7u92oXK2XnlKHEiw9xHGvucM','2021-11-21 18:34:34.005845','read write',1,67,'2021-11-21 08:34:34.005845','2021-11-21 08:34:34.005845',NULL,NULL),(344,'G5aHvIhSLeB8YBeOJaQKlT5u56dMSy','2021-11-22 12:14:14.749584','read write',1,52,'2021-11-22 02:14:14.749584','2021-11-22 02:14:14.749584',NULL,NULL),(345,'rnOjaXYW3ptEm5PtIdkHjYCEH3p6sX','2021-11-22 12:21:38.628618','read write',1,66,'2021-11-22 02:21:38.628618','2021-11-22 02:21:38.628618',NULL,NULL),(346,'r4suWw0QTYT1JHtadBIGMwZDk3vH1M','2021-11-22 12:53:48.846433','read write',1,52,'2021-11-22 02:53:48.846433','2021-11-22 02:53:48.846433',NULL,NULL),(347,'L2GHyaMyBaWDsj1SDtiBa9oZPFfgrg','2021-11-22 12:54:02.976718','read write',1,52,'2021-11-22 02:54:02.976718','2021-11-22 02:54:02.976718',NULL,NULL),(348,'uiSG4TNNIqnjF476flMwr6t4Q7FU58','2021-11-22 12:54:18.789556','read write',1,66,'2021-11-22 02:54:18.789556','2021-11-22 02:54:18.789556',NULL,NULL),(349,'sd3cZaXScUYAchiQpEDtkBrUNiPYMU','2021-11-22 12:55:11.782355','read write',1,52,'2021-11-22 02:55:11.783349','2021-11-22 02:55:11.783349',NULL,NULL),(350,'M40Z0gy73FmQYNV6FLZorX3qgJqnRe','2021-11-22 12:57:43.125146','read write',1,52,'2021-11-22 02:57:43.126107','2021-11-22 02:57:43.126107',NULL,NULL),(351,'WKWYHRBjeNrFkdXAjAMgc36VyD9fEM','2021-11-22 13:00:00.016169','read write',1,52,'2021-11-22 03:00:00.016169','2021-11-22 03:00:00.017166',NULL,NULL),(352,'N80YkH6lQG5Pf7PATArlS3JDosHGXv','2021-11-22 13:00:35.012037','read write',1,66,'2021-11-22 03:00:35.012037','2021-11-22 03:00:35.012037',NULL,NULL),(353,'Sj0iPgL3N2VtBTRHV3bRLhM2ry7vIC','2021-11-22 13:01:22.087644','read write',1,62,'2021-11-22 03:01:22.087644','2021-11-22 03:01:22.087644',NULL,NULL),(354,'itvvuiuWpyu1R3QQ9CkUKi9BXNMc0c','2021-11-22 13:02:39.131179','read write',1,55,'2021-11-22 03:02:39.131179','2021-11-22 03:02:39.131179',NULL,NULL),(355,'2KXEcNDtTbkhRhFqqUlVznsvR9L0qs','2021-11-22 13:04:39.336045','read write',1,66,'2021-11-22 03:04:39.336045','2021-11-22 03:04:39.336045',NULL,NULL),(356,'laCmSZ7yJ51AT851hk9S4RLDXVJrwK','2021-11-22 13:05:43.190586','read write',1,62,'2021-11-22 03:05:43.190586','2021-11-22 03:05:43.190586',NULL,NULL),(357,'8SDQuDkLvsNF0LNtFKi8Pm5jaBIPJW','2021-11-22 13:06:12.054172','read write',1,55,'2021-11-22 03:06:12.054172','2021-11-22 03:06:12.054172',NULL,NULL),(358,'dKXFawoEiDZhzHbCMvSKZnwbCxQN0y','2021-11-22 13:06:28.698424','read write',1,62,'2021-11-22 03:06:28.698424','2021-11-22 03:06:28.698424',NULL,NULL),(359,'34LXzqge2cJtpeDmSpmugIVdvr86n7','2021-11-22 13:07:40.886361','read write',1,53,'2021-11-22 03:07:40.886361','2021-11-22 03:07:40.886361',NULL,NULL),(360,'0OKuU46qvHCehCndj29ufyY80YDQto','2021-11-22 13:18:19.906714','read write',1,68,'2021-11-22 03:18:19.906714','2021-11-22 03:18:19.906714',NULL,NULL),(361,'pGGtaW0F0l7L9MYz0zO5lfxkTsb9Ts','2021-11-22 13:20:49.628909','read write',1,61,'2021-11-22 03:20:49.629907','2021-11-22 03:20:49.629907',NULL,NULL),(362,'pVhsDNasf3AsP8a5iBdmocWcJcRlW0','2021-11-22 13:21:31.111331','read write',1,53,'2021-11-22 03:21:31.111331','2021-11-22 03:21:31.111331',NULL,NULL),(363,'zNJFBmotuRfs23i2P2K1sEAvMwVaTp','2021-11-22 13:21:47.959305','read write',1,55,'2021-11-22 03:21:47.959305','2021-11-22 03:21:47.959305',NULL,NULL),(364,'iuQT7dUu62q4HYqHF0oWnFFFe5H4EO','2021-11-22 13:22:03.267355','read write',1,59,'2021-11-22 03:22:03.267355','2021-11-22 03:22:03.268353',NULL,NULL),(365,'PdGeALZJ1D3QoHNInJ4G6VQrSQwJ94','2021-11-22 13:23:57.162376','read write',1,53,'2021-11-22 03:23:57.163410','2021-11-22 03:23:57.163410',NULL,NULL),(366,'PyIvH5QFEDAiEQEUOT6D7VcMV0XGRM','2021-11-22 14:51:40.846024','read write',1,52,'2021-11-22 04:51:40.846985','2021-11-22 04:51:40.846985',NULL,NULL),(367,'UebopQVN5y7ccU2D4iWXkrtdfslFl9','2021-11-24 21:24:00.180763','read write',1,60,'2021-11-24 11:24:00.181725','2021-11-24 11:24:00.181725',NULL,NULL),(368,'y6zDNnV4gAYVBlScSv6iRR6GmkQWky','2021-11-24 21:28:23.231510','read write',1,67,'2021-11-24 11:28:23.232471','2021-11-24 11:28:23.232471',NULL,NULL),(369,'vD64fBSpyh72KmByGXHvpbZ8lmfeus','2021-11-25 13:46:45.644101','read write',1,52,'2021-11-25 03:46:45.645101','2021-11-25 03:46:45.645101',NULL,NULL),(370,'M1oMow1UWylOPvb1kM07AkfMS8i4Mq','2021-11-25 13:47:37.900669','read write',1,59,'2021-11-25 03:47:37.900669','2021-11-25 03:47:37.900669',NULL,NULL),(371,'6qkyvVwB7Eu9ui5UUEw41hRyVjLQhH','2021-11-25 13:48:55.130724','read write',1,62,'2021-11-25 03:48:55.130724','2021-11-25 03:48:55.130724',NULL,NULL),(372,'umLKHNRB8zThnnjAnnKoMDCr9Cbqof','2021-11-25 13:50:09.963780','read write',1,55,'2021-11-25 03:50:09.963780','2021-11-25 03:50:09.963780',NULL,NULL),(373,'NtFbXXFYqZFF9ttbPqL3aIubDb3Voj','2021-11-25 13:50:36.419319','read write',1,60,'2021-11-25 03:50:36.419319','2021-11-25 03:50:36.419319',NULL,NULL),(374,'0Unic1tTNfKPw2vmDIJRpEFomeqogm','2021-11-25 13:51:33.852442','read write',1,55,'2021-11-25 03:51:33.852442','2021-11-25 03:51:33.852442',NULL,NULL),(375,'XRUzTEsl4Zzk048OE9wP8TX1k54f0L','2021-11-25 13:57:41.222484','read write',1,52,'2021-11-25 03:57:41.223483','2021-11-25 03:57:41.223483',NULL,NULL),(376,'PiSDCWr4ea4M6yHymz7UQ77beAlbXh','2021-11-25 13:57:56.759934','read write',1,53,'2021-11-25 03:57:56.759934','2021-11-25 03:57:56.759934',NULL,NULL),(377,'kDCCv6aZQldPCjmA9KBAzF2rxElUzJ','2021-11-25 14:03:46.979635','read write',1,52,'2021-11-25 04:03:46.979635','2021-11-25 04:03:46.979635',NULL,NULL),(378,'5bqoOBJsTpKioHksqmDBWoj5ZoX8KR','2021-11-25 14:04:12.835431','read write',1,52,'2021-11-25 04:04:12.835431','2021-11-25 04:04:12.835431',NULL,NULL),(379,'HZ228jPkPSG0aoLKrXY3L11OT1y1vX','2021-11-25 19:05:05.129257','read write',1,52,'2021-11-25 09:05:05.130254','2021-11-25 09:05:05.130254',NULL,NULL),(380,'UJnpZorpeTd4N3c46yPo3VTHvWcsno','2021-11-26 22:44:24.691373','read write',1,52,'2021-11-26 12:44:24.691373','2021-11-26 12:44:24.691373',NULL,NULL),(381,'IJgBh4TnuQ8hSgaLX8HLtiteLIoFnQ','2021-11-26 22:48:20.059700','read write',1,63,'2021-11-26 12:48:20.059700','2021-11-26 12:48:20.059700',NULL,NULL),(382,'8dO9ZddpwpB6iVQ5dloRC0w9aiUUyE','2021-11-26 22:49:29.523623','read write',1,53,'2021-11-26 12:49:29.524584','2021-11-26 12:49:29.524584',NULL,NULL),(383,'tGJm9N7bspc261JlZlAow1P6YCSMSZ','2021-11-26 22:51:12.343993','read write',1,64,'2021-11-26 12:51:12.343993','2021-11-26 12:51:12.343993',NULL,NULL),(384,'zWWpTiNDIqcxVeEWlvnqBlK9WKzozk','2021-11-26 22:53:10.073155','read write',1,53,'2021-11-26 12:53:10.074152','2021-11-26 12:53:10.074152',NULL,NULL),(385,'KESHeshjF8Tmplcdf3LJzINr3pny5L','2021-11-26 22:54:36.086329','read write',1,60,'2021-11-26 12:54:36.087366','2021-11-26 12:54:36.087366',NULL,NULL),(386,'cQdoCjO5LndQ1uxY0P0gO5WbZpvICZ','2021-11-26 22:55:53.456859','read write',1,68,'2021-11-26 12:55:53.456859','2021-11-26 12:55:53.456859',NULL,NULL),(387,'cIkWHRkAmzA4SZ5I2Fkuz8I0bT1GKv','2021-11-26 22:56:27.946543','read write',1,68,'2021-11-26 12:56:27.946543','2021-11-26 12:56:27.946543',NULL,NULL),(388,'8dooED5fGYeaksGTuFWjuEZD9e3K6I','2021-11-26 22:56:37.359046','read write',1,64,'2021-11-26 12:56:37.360043','2021-11-26 12:56:37.360043',NULL,NULL),(389,'NAnU5uWrn2dtLjyKNRu3L7f7Zy3djX','2021-11-26 22:57:14.737031','read write',1,64,'2021-11-26 12:57:14.737031','2021-11-26 12:57:14.737031',NULL,NULL),(390,'NUVrv1oUDRaovk5PvklfXjMg8Rs0xk','2021-11-26 23:03:38.009737','read write',1,52,'2021-11-26 13:03:38.010732','2021-11-26 13:03:38.010732',NULL,NULL),(391,'Av1iEDMg8VUtuEUZ2wF3yMx8MwbXVp','2021-11-26 23:09:43.994747','read write',1,69,'2021-11-26 13:09:43.994747','2021-11-26 13:09:43.994747',NULL,NULL),(392,'9hhtqUNFo3Tqc23xSu8CYdtkRbomIL','2021-11-26 23:10:56.588403','read write',1,69,'2021-11-26 13:10:56.588403','2021-11-26 13:10:56.588403',NULL,NULL),(393,'RHs3rbEUwcWkdZUQGHE5EYXnACkBLn','2021-11-26 23:11:37.086126','read write',1,62,'2021-11-26 13:11:37.086126','2021-11-26 13:11:37.086126',NULL,NULL),(394,'iPIaTb1Xnk61l9cTKkQ8nNxXRCJyJE','2021-11-26 23:14:57.807734','read write',1,66,'2021-11-26 13:14:57.807734','2021-11-26 13:14:57.807734',NULL,NULL),(395,'qKbr8u14Sy537aoxPRU6OfebPzcnOM','2021-11-26 23:16:04.437210','read write',1,61,'2021-11-26 13:16:04.437210','2021-11-26 13:16:04.437210',NULL,NULL),(396,'LUCdctX8RqeMdN8mpD2YIKylfeihti','2021-11-26 23:17:04.497642','read write',1,61,'2021-11-26 13:17:04.498603','2021-11-26 13:17:04.498603',NULL,NULL),(397,'TAbH8V9G5lz0foXi1O3ikPC3YOJ8IJ','2021-11-26 23:21:33.801464','read write',1,52,'2021-11-26 13:21:33.801464','2021-11-26 13:21:33.801464',NULL,NULL),(398,'jkHYAcFyqEGu10UwneFqVMPDrocHA0','2021-11-26 23:23:50.871333','read write',1,61,'2021-11-26 13:23:50.872297','2021-11-26 13:23:50.872297',NULL,NULL),(399,'3t8OCWzJ15UHShonI0q1pR9AuD59H8','2021-11-26 23:31:06.875428','read write',1,52,'2021-11-26 13:31:06.876388','2021-11-26 13:31:06.876388',NULL,NULL),(400,'ZKRUobuuA8YLWPrUSmEwhyYzC0Fbll','2021-11-26 23:31:39.186241','read write',1,52,'2021-11-26 13:31:39.186241','2021-11-26 13:31:39.186241',NULL,NULL),(401,'OBUpFDtkEOpkoTjKWQ6GCtrZYkAPwV','2021-11-26 23:32:15.021799','read write',1,59,'2021-11-26 13:32:15.021799','2021-11-26 13:32:15.021799',NULL,NULL),(402,'ua1NSUHAxHeewMiKgBp6L3j4ejlD6y','2021-11-26 23:37:09.826692','read write',1,66,'2021-11-26 13:37:09.826692','2021-11-26 13:37:09.826692',NULL,NULL),(403,'06i1ijkj5zeoAeTPQIMvu5FDzmo7xR','2021-11-26 23:37:44.594363','read write',1,61,'2021-11-26 13:37:44.594363','2021-11-26 13:37:44.594363',NULL,NULL),(404,'8AfDuMQaoWCiTXjTV4s324jRB4yum7','2021-11-26 23:38:19.185694','read write',1,66,'2021-11-26 13:38:19.186691','2021-11-26 13:38:19.186691',NULL,NULL),(405,'nAYQFSGNkF21jwmPqZ6xjYtsx9Z1Ln','2021-11-26 23:38:34.906271','read write',1,61,'2021-11-26 13:38:34.906271','2021-11-26 13:38:34.906271',NULL,NULL),(406,'Yc4SOZmbWmUpt0Imkam0cLMXXBW1si','2021-11-26 23:42:49.681339','read write',1,53,'2021-11-26 13:42:49.682336','2021-11-26 13:42:49.682336',NULL,NULL),(407,'f1gV7BrVCLqtBSWMPmuXQOPQmP80E3','2021-11-29 13:39:06.608210','read write',1,52,'2021-11-29 03:39:06.609207','2021-11-29 03:39:06.609207',NULL,NULL),(408,'5pJOm1w6twlMkw34LFuhEtMHxkEgnr','2021-11-29 13:39:53.616401','read write',1,61,'2021-11-29 03:39:53.616401','2021-11-29 03:39:53.616401',NULL,NULL),(409,'BeKGAZ2CkkH5E0o700vKwmQQuCdVyR','2021-11-29 13:41:19.040839','read write',1,62,'2021-11-29 03:41:19.040839','2021-11-29 03:41:19.040839',NULL,NULL),(410,'AIatHDZHq5ZwgFmtufkyWKfV7ZjNZk','2021-11-29 13:55:33.542544','read write',1,59,'2021-11-29 03:55:33.542544','2021-11-29 03:55:33.542544',NULL,NULL),(411,'AIP1kFx6jC2wOFrJ45axalhWGbIks8','2021-11-29 13:56:25.022898','read write',1,52,'2021-11-29 03:56:25.022898','2021-11-29 03:56:25.022898',NULL,NULL),(412,'rV3JWxloeOztmThqcgkB0fzkb7uBJd','2021-11-29 13:56:54.934892','read write',1,59,'2021-11-29 03:56:54.935890','2021-11-29 03:56:54.935890',NULL,NULL),(413,'tEymp20w0QPU5RN6OLKBqPJXZpfyAN','2021-11-29 13:57:08.740837','read write',1,52,'2021-11-29 03:57:08.741838','2021-11-29 03:57:08.741838',NULL,NULL),(414,'koSTjx2CzCK2V1WmVmSFqpu9djmiw4','2021-12-01 16:47:01.989067','read write',1,65,'2021-12-01 06:47:01.989067','2021-12-01 06:47:01.989067',NULL,NULL),(415,'V2yvxLeU54Vz9SdBjHt4euMYo7VKUK','2021-12-01 16:48:47.202286','read write',1,57,'2021-12-01 06:48:47.202286','2021-12-01 06:48:47.202286',NULL,NULL),(416,'x3OhWJx2oB8uVUdRYVw8oOTxo4XNuZ','2021-12-01 16:50:24.120717','read write',1,57,'2021-12-01 06:50:24.120717','2021-12-01 06:50:24.120717',NULL,NULL),(417,'xkyygMONaXbMcj66xo6NNn9HQid0Ms','2021-12-01 16:50:50.748363','read write',1,65,'2021-12-01 06:50:50.748363','2021-12-01 06:50:50.748363',NULL,NULL),(418,'xKSi1bowf7x0cvykQl8cApzswnjfQF','2021-12-01 16:51:18.505421','read write',1,63,'2021-12-01 06:51:18.505421','2021-12-01 06:51:18.505421',NULL,NULL),(419,'B7HTRMf09ZD4RNeyjtBMTL8BgpQsRq','2021-12-01 16:52:47.349276','read write',1,64,'2021-12-01 06:52:47.349276','2021-12-01 06:52:47.349276',NULL,NULL),(420,'EQfR677ld1fU37Y5o4AqGcrRn8BJid','2021-12-01 16:53:05.592693','read write',1,64,'2021-12-01 06:53:05.593654','2021-12-01 06:53:05.593654',NULL,NULL),(421,'FjYdUoY57jtk0kujy3Vr3OK84gfQcw','2021-12-01 16:53:21.274851','read write',1,60,'2021-12-01 06:53:21.274851','2021-12-01 06:53:21.274851',NULL,NULL),(422,'9rrTaoGck6AzCr1wA18bsDLGg1ifXH','2021-12-01 16:53:57.316268','read write',1,59,'2021-12-01 06:53:57.316268','2021-12-01 06:53:57.316268',NULL,NULL),(423,'DMjkCApkXKpPYxgTSvC1NpnwoTyW3y','2021-12-02 18:26:53.994227','read write',1,52,'2021-12-02 08:26:53.995227','2021-12-02 08:26:53.995227',NULL,NULL),(424,'dQrJEQwX49HY1Es5TpEjXB1Hz8sKQM','2021-12-02 18:27:47.897000','read write',1,53,'2021-12-02 08:27:47.897000','2021-12-02 08:27:47.897963',NULL,NULL),(425,'uHQmcIM8VJq3oZopPmiw22AIyt95LM','2021-12-06 00:09:41.521234','read write',1,69,'2021-12-05 14:09:41.521234','2021-12-05 14:09:41.521234',NULL,NULL),(426,'0FrZP6F5FTwta2iVDx0oKqLvjrzBHG','2021-12-06 00:12:30.655509','read write',1,61,'2021-12-05 14:12:30.655509','2021-12-05 14:12:30.655509',NULL,NULL),(427,'1fEm8LJpLMo9sakeBdIvFN3hETnHgP','2021-12-06 00:13:13.881044','read write',1,69,'2021-12-05 14:13:13.881044','2021-12-05 14:13:13.881044',NULL,NULL),(428,'O95Pq8FwoazsoJ8SXj2UwwqknroCWG','2021-12-06 00:13:25.679056','read write',1,59,'2021-12-05 14:13:25.680054','2021-12-05 14:13:25.680054',NULL,NULL),(429,'J4fd3Ss0wdfOoLNlusoWALZOnuj2yG','2021-12-06 00:13:46.403070','read write',1,69,'2021-12-05 14:13:46.403070','2021-12-05 14:13:46.403070',NULL,NULL),(430,'gaZHWMG5ZMw91viGcgDoWaorlDqsLd','2021-12-06 00:14:08.508993','read write',1,61,'2021-12-05 14:14:08.509990','2021-12-05 14:14:08.509990',NULL,NULL),(431,'VSOCdjfh6Ypitn7hNhfLcqGGYTdqmz','2021-12-06 00:14:23.927906','read write',1,69,'2021-12-05 14:14:23.928903','2021-12-05 14:14:23.928903',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (2,'iHXpCN02blk7gkoilOsVJS5gxI14Mw',2,1,1,'2021-10-31 07:53:18.518509','2021-10-31 07:53:18.518509',NULL),(23,'L6ziut7UhAoF77P0x2MxrpaiH6ZENM',23,1,1,'2021-11-02 04:08:23.510768','2021-11-02 04:08:23.510768',NULL),(270,'osWP1sheIg2mT9njowjbezP9nInjDJ',270,1,52,'2021-11-12 07:48:46.310583','2021-11-12 07:48:46.310583',NULL),(271,'B5tjaXxzml6AJwLv5twRu3myHM6wIy',271,1,53,'2021-11-12 08:02:59.772489','2021-11-12 08:02:59.772489',NULL),(272,'0kEstXHnjdudYoNTAj8meGFBAYtWZV',272,1,52,'2021-11-12 08:06:26.269283','2021-11-12 08:06:26.269283',NULL),(273,'sQDoaWjpf9BMf0skeNSrhD9YCJOIdW',273,1,52,'2021-11-12 08:14:45.810046','2021-11-12 08:14:45.810046',NULL),(274,'oCfswSWHHmP22JUcsOeYhTjH7DBe8L',274,1,54,'2021-11-12 08:40:27.772892','2021-11-12 08:40:27.772892',NULL),(275,'UhpAi8snscXpfUJU8vCnA4liKGwtup',275,1,55,'2021-11-12 08:40:53.196060','2021-11-12 08:40:53.196060',NULL),(276,'FHh5n24MEhGp0x6PpzIp5Vnkr8dYbr',276,1,53,'2021-11-12 08:45:38.410956','2021-11-12 08:45:38.410956',NULL),(277,'304zCHLkFCEjZIDKRYhIfEZOL8H6of',277,1,55,'2021-11-12 09:19:07.574143','2021-11-12 09:19:07.574143',NULL),(278,'R4BcP8TgJaxzVTj7EkzSWjiwRn5ecr',278,1,53,'2021-11-12 09:20:02.238553','2021-11-12 09:20:02.238553',NULL),(279,'1KHazzQ0LkYHbTrSN7rbhXwKI5FNrR',279,1,56,'2021-11-12 13:13:29.547452','2021-11-12 13:13:29.547452',NULL),(280,'qHouCztlAzi7QssATqoX3aVqqiDgm7',280,1,56,'2021-11-12 13:16:00.368484','2021-11-12 13:16:00.368484',NULL),(281,'9wOMEeMCMIVTXp37lMa5vVwRAYW83h',281,1,57,'2021-11-12 13:16:08.040177','2021-11-12 13:16:08.040177',NULL),(282,'10DKqRbIzcrq3VkuuTxrPyoQ53EroK',282,1,55,'2021-11-12 13:21:13.165480','2021-11-12 13:21:13.165480',NULL),(283,'xu3pYwY2gQE86f7BbngV3eGS6iMXGQ',283,1,57,'2021-11-12 13:21:50.817157','2021-11-12 13:21:50.817157',NULL),(284,'jVvW624237yYz0wo22mNoidHnG6zgQ',284,1,55,'2021-11-12 13:24:28.225701','2021-11-12 13:24:28.225701',NULL),(285,'ZwU9vMh4HlGU6gbPQf9g8JfGzPOkes',285,1,58,'2021-11-13 08:38:02.430747','2021-11-13 08:38:02.430747',NULL),(286,'KIg6PeNEoTTvjAs1zdCQx2OCIyTzrx',286,1,59,'2021-11-13 08:39:53.041040','2021-11-13 08:39:53.041040',NULL),(287,'h7advaFfJi1kH1DykdwSCJjo7bUuvi',287,1,53,'2021-11-13 08:44:45.479742','2021-11-13 08:44:45.479742',NULL),(288,'GeREKkDET1lWZp4wYCdqlO9xqvziLu',288,1,59,'2021-11-13 08:46:21.365052','2021-11-13 08:46:21.365052',NULL),(289,'cElBbgnZa4RmktxzyaOgiy0YDqr8Mp',289,1,54,'2021-11-14 03:21:49.337164','2021-11-14 03:21:49.337164',NULL),(290,'Jny5eQGYgmuriHPsT1zdGxVDPd0rRU',290,1,53,'2021-11-14 03:23:15.215279','2021-11-14 03:23:15.215279',NULL),(291,'8vjLOFwwznM2x0UIWyjavWN7goIeFz',291,1,52,'2021-11-14 03:23:46.673431','2021-11-14 03:23:46.673431',NULL),(292,'RAbbTkTOZvRLN57Sl8gciGF7NNJa6v',292,1,59,'2021-11-14 03:26:02.538103','2021-11-14 03:26:02.538103',NULL),(293,'ELBCHOOBEy1D046cEJNEaWiufBy9dK',293,1,55,'2021-11-14 03:26:58.241752','2021-11-14 03:26:58.241752',NULL),(294,'CUeR5aBnuFabY09MyBUMU2oiIELmPI',294,1,53,'2021-11-14 03:27:21.331124','2021-11-14 03:27:21.331124',NULL),(295,'7rtpmORk3BsIk1oH7O1m2cW3GNByTE',295,1,56,'2021-11-14 03:28:14.851744','2021-11-14 03:28:14.851744',NULL),(296,'ol3qrEfGCIGPD1X8OlPZdFZCIfRO7u',296,1,54,'2021-11-14 03:29:57.765356','2021-11-14 03:29:57.765356',NULL),(297,'nEkfO2ardCXI4b99ZKctnXoirAkCHh',297,1,57,'2021-11-14 03:33:10.949207','2021-11-14 03:33:10.949207',NULL),(298,'xHJhWVSNNMKAU8hgCkHY9R3EZsYY7l',298,1,55,'2021-11-14 03:33:56.108767','2021-11-14 03:33:56.108767',NULL),(299,'TeDSDDmwwNLrDdV3L9unPgsWWOlhu2',299,1,59,'2021-11-14 03:34:27.364274','2021-11-14 03:34:27.364274',NULL),(300,'AApSJ83GjnpIsBAv6GoTqUM4n9vzxu',300,1,56,'2021-11-14 03:34:56.071760','2021-11-14 03:34:56.071760',NULL),(301,'EZA6Uavxwacs9tBlmG2FbMpTpSiqeT',301,1,54,'2021-11-14 03:35:16.301001','2021-11-14 03:35:16.301001',NULL),(302,'qQbWAKfkEesSVDltaAnAoOgeQFXuxt',302,1,57,'2021-11-14 03:36:45.890442','2021-11-14 03:36:45.890442',NULL),(303,'rDvx5YCSr8kDtzITKEtONtKWjYf4BI',303,1,52,'2021-11-14 03:38:38.558279','2021-11-14 03:38:38.558279',NULL),(304,'zaEnCZqdkkxZ6tuBoQonYukNAPNKov',304,1,60,'2021-11-17 03:39:08.257960','2021-11-17 03:39:08.257960',NULL),(305,'MVkif0uZo3nPOpRVGYsy6zHto6uiwr',305,1,61,'2021-11-17 03:40:44.683573','2021-11-17 03:40:44.683573',NULL),(306,'zKapLxmVpoXhio22ohsIE0gxnh0abp',306,1,53,'2021-11-17 03:45:00.898841','2021-11-17 03:45:00.898841',NULL),(307,'YcSqDfZhiWoEhMArrb7EErd61YiPgT',307,1,61,'2021-11-17 03:47:07.759840','2021-11-17 03:47:07.759840',NULL),(308,'igiILQG3HqnZ69bzHpLW4e3MiSb4Gh',308,1,62,'2021-11-18 04:19:55.879360','2021-11-18 04:19:55.879360',NULL),(309,'xQOiOtOvUzxGd2tkPCvUcCCn4r28qM',309,1,53,'2021-11-18 04:21:09.402744','2021-11-18 04:21:09.402744',NULL),(310,'dvYWZ455mcLhY4sguVZs59TYPrpsZs',310,1,62,'2021-11-18 04:21:44.404222','2021-11-18 04:21:44.404222',NULL),(311,'TzRE0N2t0BWeIyFI3TaiZOHnDzfaFc',311,1,53,'2021-11-18 04:22:03.159666','2021-11-18 04:22:03.159666',NULL),(312,'pQbkJh8ZAsn6ahOyMlqp0bPPS2iMS8',312,1,63,'2021-11-18 05:21:32.773692','2021-11-18 05:21:32.773692',NULL),(313,'4Pj5IZLUv0NTqSJm41N5kzVC71V96u',313,1,64,'2021-11-18 05:24:19.938613','2021-11-18 05:24:19.938613',NULL),(314,'k2UdUUgvfws2R3B0evDJxbZ2YtYMNC',314,1,63,'2021-11-18 05:25:04.424397','2021-11-18 05:25:04.424397',NULL),(315,'p5S2NEQNVGDJmIyOPGtrZmGRfLiwFI',315,1,53,'2021-11-18 05:25:14.248116','2021-11-18 05:25:14.248116',NULL),(316,'px713kokc4cO4Uy7rywb76WHZY4E4Q',316,1,52,'2021-11-18 05:53:16.155208','2021-11-18 05:53:16.155208',NULL),(317,'CofzUFyE8bc2CFYsYJ7xb4YgPvBAxO',317,1,52,'2021-11-18 05:59:19.421002','2021-11-18 05:59:19.421002',NULL),(318,'OCsi3GF7qC1n0aIqVxyPxMyhxxyMKQ',318,1,53,'2021-11-18 05:59:50.689115','2021-11-18 05:59:50.689115',NULL),(319,'up4YCeux6s1z3JQNq1uWQv7GBhkgv2',319,1,62,'2021-11-18 08:19:48.778222','2021-11-18 08:19:48.778222',NULL),(320,'jWHa3Mm6bwY1yk8yAat73lQX6kMuVn',320,1,59,'2021-11-18 08:24:21.403966','2021-11-18 08:24:21.403966',NULL),(321,'Sr5hUoTdl0vNvURLEloT2lJJx6ts88',321,1,61,'2021-11-18 08:25:46.214228','2021-11-18 08:25:46.214228',NULL),(322,'aJqIpneuTKUbQHIr1FLyimdBnRnZkG',322,1,52,'2021-11-18 13:47:04.918172','2021-11-18 13:47:04.918172',NULL),(323,'Fk4Q8Rk5Kvk8B1DOYCKYO4QcyzNzge',323,1,60,'2021-11-19 05:02:51.995058','2021-11-19 05:02:51.995058',NULL),(324,'7RaZrIE3kXbOOcglIuOmJM9Iv7QB13',324,1,61,'2021-11-19 05:05:01.236287','2021-11-19 05:05:01.236287',NULL),(325,'okBRvfzydCjyce6gsf35oGeXAjZftR',325,1,53,'2021-11-19 05:05:51.429895','2021-11-19 05:05:51.429895',NULL),(326,'uRV37XogWO9zXSUBEmgAqlac4NkYsq',326,1,60,'2021-11-19 05:06:57.734542','2021-11-19 05:06:57.734542',NULL),(327,'k8YFd1IkQzWjNA3MumXE8PiU5sPrZO',327,1,53,'2021-11-19 05:07:55.866200','2021-11-19 05:07:55.866200',NULL),(328,'Ts1gwZcGWhCxVHDEyR81OSulVfAa4x',328,1,55,'2021-11-19 05:08:21.874038','2021-11-19 05:08:21.874038',NULL),(329,'MoCpIPl5m0FmqHqWn7iHzxhyW1643O',329,1,59,'2021-11-19 05:09:16.995817','2021-11-19 05:09:16.995817',NULL),(330,'xgyIjYhlvXgMV9HDGP1PP5jkrMz07k',330,1,64,'2021-11-19 05:09:49.585150','2021-11-19 05:09:49.585150',NULL),(331,'wgdOAv5BgC1RdwAO7CYAWqhwuxLJWC',331,1,60,'2021-11-19 05:10:19.358398','2021-11-19 05:10:19.358398',NULL),(332,'wT4ejKre2gf8DQWgVImLBO6hNRzCma',332,1,52,'2021-11-20 12:50:12.593639','2021-11-20 12:50:12.593639',NULL),(333,'xr1aVpvfZR5eV9YIEoPXfN81GVHtlH',333,1,53,'2021-11-20 13:16:12.992459','2021-11-20 13:16:12.992459',NULL),(334,'mhrOyn8lXJ9q2E7t9CppB7s36tTjIr',334,1,52,'2021-11-20 14:20:38.077180','2021-11-20 14:20:38.077180',NULL),(335,'XqOWfNr8tGVV6nbqz3TMvzc9C4qRbI',335,1,52,'2021-11-20 14:20:45.187770','2021-11-20 14:20:45.187770',NULL),(336,'h7hiHm89S5mFxvyVApbaq1MfDBsWtt',336,1,52,'2021-11-20 14:21:08.988306','2021-11-20 14:21:08.988306',NULL),(337,'lQOkSpT2RikFK1dGOzBLgO5pbZYRXN',337,1,65,'2021-11-20 14:22:07.531902','2021-11-20 14:22:07.531902',NULL),(338,'IC9j9No3FWmpuQ3hBrcyOIf86jtL49',338,1,52,'2021-11-21 07:00:47.582507','2021-11-21 07:00:47.582507',NULL),(339,'i1uJaEvRE0heYLiD0pVT8CUgHvSHv7',339,1,53,'2021-11-21 07:01:29.061539','2021-11-21 07:01:29.062598',NULL),(340,'vwkd9i2KwsyaBkzgIm3N2uAQdW2ppp',340,1,52,'2021-11-21 07:02:00.045756','2021-11-21 07:02:00.045756',NULL),(341,'EQtxSKvIkdYiYycThCDjo2vTUmWH7x',341,1,52,'2021-11-21 08:30:03.092506','2021-11-21 08:30:03.092506',NULL),(342,'1Q2pgvvGLtQvjZxKantevIbov0oH2q',342,1,66,'2021-11-21 08:33:01.539194','2021-11-21 08:33:01.539194',NULL),(343,'kYsOjsSK2xW5x9n1SFMZBHL5GuSvC1',343,1,67,'2021-11-21 08:34:34.007841','2021-11-21 08:34:34.007841',NULL),(344,'pJt9lTRw6eQEdmM3YunX0PWez82k3G',344,1,52,'2021-11-22 02:14:14.763849','2021-11-22 02:14:14.763849',NULL),(345,'1Fx4DUpOt0g3RhTlzHHA0KXoXYHa2B',345,1,66,'2021-11-22 02:21:38.631466','2021-11-22 02:21:38.631466',NULL),(346,'Wy8X4n7rK3cChFbS9HGXBq6XiwHN5P',346,1,52,'2021-11-22 02:53:48.852442','2021-11-22 02:53:48.852442',NULL),(347,'QCCx8BE04pQ3qS0Bh3FBftyjgmThxW',347,1,52,'2021-11-22 02:54:02.979651','2021-11-22 02:54:02.979651',NULL),(348,'iC1e37kx9yb9fwRkW5iEIM9ZGkSFqc',348,1,66,'2021-11-22 02:54:18.792018','2021-11-22 02:54:18.792018',NULL),(349,'WQECINfwhVYNfHTljDvxRShMX6g3G3',349,1,52,'2021-11-22 02:55:11.785593','2021-11-22 02:55:11.785593',NULL),(350,'U8t0jXC2Wm4fYRaSNdO0nG98op0XRn',350,1,52,'2021-11-22 02:57:43.127888','2021-11-22 02:57:43.127888',NULL),(351,'JlpDdBhisPdCRyL7sdVixvWCP60buP',351,1,52,'2021-11-22 03:00:00.018975','2021-11-22 03:00:00.018975',NULL),(352,'q0ocMjxiFvxJPZtL9pJWewXlFuX1pw',352,1,66,'2021-11-22 03:00:35.015105','2021-11-22 03:00:35.015105',NULL),(353,'0LFShuFn6zShh5oyavfHkARWCLrQqm',353,1,62,'2021-11-22 03:01:22.088783','2021-11-22 03:01:22.088783',NULL),(354,'gK8SmDcjHufL4zmmPiSDYMF2wPuHoJ',354,1,55,'2021-11-22 03:02:39.135401','2021-11-22 03:02:39.135401',NULL),(355,'htBjTDYqqInKzad62QrUdtkVG47keC',355,1,66,'2021-11-22 03:04:39.340247','2021-11-22 03:04:39.340247',NULL),(356,'s1F7TmI6vVYnA91OmsIvQg16AtIo9j',356,1,62,'2021-11-22 03:05:43.192388','2021-11-22 03:05:43.192388',NULL),(357,'NTZ1delDWw6mnXMrJ5IviaRHjDjjIS',357,1,55,'2021-11-22 03:06:12.057661','2021-11-22 03:06:12.057661',NULL),(358,'WDfr1cWGBtx9A9rVSejEqGiVf6r50q',358,1,62,'2021-11-22 03:06:28.702607','2021-11-22 03:06:28.702607',NULL),(359,'fcaaa9QGFjoD8rL2bPjhbG93edFI5D',359,1,53,'2021-11-22 03:07:40.888711','2021-11-22 03:07:40.888711',NULL),(360,'nzEjSrZuTerCpGocprt4udiFqtv8sw',360,1,68,'2021-11-22 03:18:19.910315','2021-11-22 03:18:19.910315',NULL),(361,'PrTt7WtKdXs1cvKwn8cbzFvGk1WWR8',361,1,61,'2021-11-22 03:20:49.631111','2021-11-22 03:20:49.631111',NULL),(362,'CEeAGUk8XedUf3PCPwdLzW6G0qTOyC',362,1,53,'2021-11-22 03:21:31.115272','2021-11-22 03:21:31.115272',NULL),(363,'DfG7o36FHvuDg4Awqsi65hMfcWDYdV',363,1,55,'2021-11-22 03:21:47.964056','2021-11-22 03:21:47.964056',NULL),(364,'kD1G52oIcLJUETO6hXhhVrcCZcdFKr',364,1,59,'2021-11-22 03:22:03.270262','2021-11-22 03:22:03.270262',NULL),(365,'j25Noczwd3HAqzOFfI4HWDw17987bO',365,1,53,'2021-11-22 03:23:57.165568','2021-11-22 03:23:57.165568',NULL),(366,'84EDpfl8fByV2cvDTAkVA6rSWlKQYU',366,1,52,'2021-11-22 04:51:40.850094','2021-11-22 04:51:40.850094',NULL),(367,'wf8iacrG164s7BoNI3Y5GRLcS3Mq3e',367,1,60,'2021-11-24 11:24:00.194086','2021-11-24 11:24:00.194086',NULL),(368,'mhO6BCfcJxbvwBOSplvfV0qq61Cib3',368,1,67,'2021-11-24 11:28:23.234603','2021-11-24 11:28:23.234603',NULL),(369,'zwRolOpwIgBrfNYAG7wj1eeUnNi7U6',369,1,52,'2021-11-25 03:46:45.661868','2021-11-25 03:46:45.661868',NULL),(370,'FUOzUMg0O5ZOZHfZnv1sR2rwOE7wQl',370,1,59,'2021-11-25 03:47:37.903738','2021-11-25 03:47:37.903738',NULL),(371,'jyFDBwdFIUCKl3alSyrvlZD6qEJZrP',371,1,62,'2021-11-25 03:48:55.133717','2021-11-25 03:48:55.133717',NULL),(372,'yLIpxMVGZ0fnUM0xdqxoAswaUwIT2g',372,1,55,'2021-11-25 03:50:09.966773','2021-11-25 03:50:09.966773',NULL),(373,'LFqjHIh6bYjMDm1q64nfoU9rhHgm6e',373,1,60,'2021-11-25 03:50:36.421430','2021-11-25 03:50:36.421430',NULL),(374,'mKYBAJVaFm2Fpm6BgggLTpz3ejHTai',374,1,55,'2021-11-25 03:51:33.854727','2021-11-25 03:51:33.854727',NULL),(375,'UaJ5Taih7GpBw3Z5XiRDfe4ktHzvnv',375,1,52,'2021-11-25 03:57:41.225476','2021-11-25 03:57:41.225476',NULL),(376,'oCJxtIUwMrbEHV6PnieoLiYpDSxFiC',376,1,53,'2021-11-25 03:57:56.761928','2021-11-25 03:57:56.761928',NULL),(377,'inG4bbRhvuWFHSK6EvJN1DepyXZwyq',377,1,52,'2021-11-25 04:03:46.983965','2021-11-25 04:03:46.983965',NULL),(378,'qd1W78DXfnbG1DSTVXonXJthfaBlv0',378,1,52,'2021-11-25 04:04:12.838460','2021-11-25 04:04:12.838460',NULL),(379,'bq7hLbYkxP6sGW4NOieCwN8jyHnEsP',379,1,52,'2021-11-25 09:05:05.132249','2021-11-25 09:05:05.132249',NULL),(380,'OmzzLPkqk8Sms51srwd6HFLl5khyEK',380,1,52,'2021-11-26 12:44:24.707650','2021-11-26 12:44:24.707650',NULL),(381,'XTPyrCAL1w7BkvpQrd1gYp9uD9MxQu',381,1,63,'2021-11-26 12:48:20.061831','2021-11-26 12:48:20.061831',NULL),(382,'5CcAooELPvPFyQFdylRl4lfKWYug7y',382,1,53,'2021-11-26 12:49:29.526582','2021-11-26 12:49:29.526582',NULL),(383,'KKx2zvIRxiSnegFSsW8utg6ooA9VPr',383,1,64,'2021-11-26 12:51:12.346987','2021-11-26 12:51:12.346987',NULL),(384,'jKsuTxbLYTCQmNXt766ghRe9PEExnw',384,1,53,'2021-11-26 12:53:10.076146','2021-11-26 12:53:10.077144',NULL),(385,'hcWviH3iXjs1faxdbx10JU7UKRcXcJ',385,1,60,'2021-11-26 12:54:36.089389','2021-11-26 12:54:36.089389',NULL),(386,'ZvsI2lw8LELia8JKrSlyzfgGyUwDeq',386,1,68,'2021-11-26 12:55:53.457856','2021-11-26 12:55:53.457856',NULL),(387,'9XivEjqjBeKt5DMMpvGhPR0cEL4yaP',387,1,68,'2021-11-26 12:56:27.950674','2021-11-26 12:56:27.950674',NULL),(388,'FfCvukLFeUmJI8eXuDYnnpx0avHiaH',388,1,64,'2021-11-26 12:56:37.362105','2021-11-26 12:56:37.362105',NULL),(389,'awZxOQSBcycpwmLYzjtrRVp86nm9sg',389,1,64,'2021-11-26 12:57:14.739736','2021-11-26 12:57:14.739736',NULL),(390,'8xFAZ2TRBNq8jAXvloSPy9oS086EW1',390,1,52,'2021-11-26 13:03:38.012747','2021-11-26 13:03:38.012747',NULL),(391,'QIT4NLLtxGwsp4cJB43VBwGhmWTqhY',391,1,69,'2021-11-26 13:09:44.000673','2021-11-26 13:09:44.000673',NULL),(392,'twVWu5liSAiTYYtZS1Q2dp26QahLlX',392,1,69,'2021-11-26 13:10:56.591394','2021-11-26 13:10:56.591394',NULL),(393,'YpaWiXtIfut79ypKEbawM1vuBFW22S',393,1,62,'2021-11-26 13:11:37.088637','2021-11-26 13:11:37.088637',NULL),(394,'WBybqavWftWGhNfNiiMc6HvaoQmRUd',394,1,66,'2021-11-26 13:14:57.810052','2021-11-26 13:14:57.810052',NULL),(395,'rTlTNINGgsmWnr81l1WIpaRDyhxrkC',395,1,61,'2021-11-26 13:16:04.441049','2021-11-26 13:16:04.441049',NULL),(396,'W9QJHrG9zpfrMRv0TrVLcc0TPxAphd',396,1,61,'2021-11-26 13:17:04.500681','2021-11-26 13:17:04.500681',NULL),(397,'zDZx7KWs361vR09V6IiyQR6RldGEi8',397,1,52,'2021-11-26 13:21:33.804461','2021-11-26 13:21:33.804461',NULL),(398,'rqmnK0Kqy6Hdxyl66iIKz5axoDRYOc',398,1,61,'2021-11-26 13:23:50.874524','2021-11-26 13:23:50.874524',NULL),(399,'F12Tyf4zVAnDGAi1CnrN29JKAqSsC9',399,1,52,'2021-11-26 13:31:06.878443','2021-11-26 13:31:06.878443',NULL),(400,'lLasHSRasuoBejCiD8PLCQWx8Vk2JP',400,1,52,'2021-11-26 13:31:39.190016','2021-11-26 13:31:39.190016',NULL),(401,'him8eZVB1oweboN2KFGOkKYk8hhnVu',401,1,59,'2021-11-26 13:32:15.024699','2021-11-26 13:32:15.024699',NULL),(402,'c1e0cUxqJrYKK8pocA2WUvxNqZOJYv',402,1,66,'2021-11-26 13:37:09.829682','2021-11-26 13:37:09.829682',NULL),(403,'rJNnXkMYo1n4aHvdjSQjdvNCI7ROOO',403,1,61,'2021-11-26 13:37:44.598675','2021-11-26 13:37:44.598675',NULL),(404,'wEA9XR2y4KOL17CLJSC6I6b6rWzOIq',404,1,66,'2021-11-26 13:38:19.189365','2021-11-26 13:38:19.189365',NULL),(405,'ZC5saogFFMeZpSPPiMJyGe9mRKEm7O',405,1,61,'2021-11-26 13:38:34.908267','2021-11-26 13:38:34.908267',NULL),(406,'qsmvRjuXQhsHFBY6tYyaBK7S93IOa7',406,1,53,'2021-11-26 13:42:49.685981','2021-11-26 13:42:49.685981',NULL),(407,'PEjvIgukX4SXsAvbAazPsS9mnPAbp3',407,1,52,'2021-11-29 03:39:06.628157','2021-11-29 03:39:06.628157',NULL),(408,'zeevyZndo96W7pzAPMseX4o9Ul6OQy',408,1,61,'2021-11-29 03:39:53.618625','2021-11-29 03:39:53.618625',NULL),(409,'KqSP9KVcg9N7RQU01Y2xOzshmK6wOA',409,1,62,'2021-11-29 03:41:19.043507','2021-11-29 03:41:19.043507',NULL),(410,'JXkSVV78sk22wmS3eTXlIIHEmU3Ttq',410,1,59,'2021-11-29 03:55:33.545192','2021-11-29 03:55:33.545192',NULL),(411,'gvoCDJC5Qotip1j7Wku9dtRw73h5Zn',411,1,52,'2021-11-29 03:56:25.025235','2021-11-29 03:56:25.025235',NULL),(412,'9wpIYwRdMI1gp59cDnMYsy0wKoZj6J',412,1,59,'2021-11-29 03:56:54.937924','2021-11-29 03:56:54.937924',NULL),(413,'1Pwvyhb3TbshVYZodFsE18Sl8Nh5Wr',413,1,52,'2021-11-29 03:57:08.744065','2021-11-29 03:57:08.744065',NULL),(414,'tuiXso9FbYXjSVdHGyKCwlXLYVqKa7',414,1,65,'2021-12-01 06:47:02.004394','2021-12-01 06:47:02.004394',NULL),(415,'fdE1rh0qYzJwWGhOtno2WhsR0Zc9a1',415,1,57,'2021-12-01 06:48:47.206250','2021-12-01 06:48:47.206250',NULL),(416,'AmDKF6ruDwWln2EAKGLDyavWSmHleh',416,1,57,'2021-12-01 06:50:24.123445','2021-12-01 06:50:24.123445',NULL),(417,'sTXjWMQzjQpU2JJ1tH3DAGruGRTLYh',417,1,65,'2021-12-01 06:50:50.751354','2021-12-01 06:50:50.751354',NULL),(418,'sSvqLmxxhnLlm3jTabXEmVjRCuKtP7',418,1,63,'2021-12-01 06:51:18.508081','2021-12-01 06:51:18.508081',NULL),(419,'ty3yyN0vJIDFl2vxXK2TAT9S6M59oi',419,1,64,'2021-12-01 06:52:47.353553','2021-12-01 06:52:47.353553',NULL),(420,'qLU87L4F44fDGAywFKWrnK9s7ZlKvz',420,1,64,'2021-12-01 06:53:05.595726','2021-12-01 06:53:05.595726',NULL),(421,'hKKOSTc8fhZsUe8pfa0eTbfEsinClR',421,1,60,'2021-12-01 06:53:21.277076','2021-12-01 06:53:21.277076',NULL),(422,'Ehf1v3sjnKsUfrHOi78MSjsuuhlUmK',422,1,59,'2021-12-01 06:53:57.319225','2021-12-01 06:53:57.319225',NULL),(423,'gAVBYQ03a3u1xEuBIfVZ9oYoHgKBzL',423,1,52,'2021-12-02 08:26:54.007137','2021-12-02 08:26:54.007137',NULL),(424,'3YpfffZ56PJ3eMsZ6UhNPXvXGVS0VC',424,1,53,'2021-12-02 08:27:47.900447','2021-12-02 08:27:47.900447',NULL),(425,'OpyxwACbIW6gUDHq1ZgNvm2pD1WDZT',425,1,69,'2021-12-05 14:09:41.536963','2021-12-05 14:09:41.536963',NULL),(426,'IW8kFua579VdjG5wPmDOmVT0Yb9rtq',426,1,61,'2021-12-05 14:12:30.658319','2021-12-05 14:12:30.658319',NULL),(427,'nCt3mH8J4Iz4sGshVBG1FjqeAYmJ8o',427,1,69,'2021-12-05 14:13:13.885148','2021-12-05 14:13:13.885148',NULL),(428,'ZWJ182w0IecUrlmenb72JG46EcONRJ',428,1,59,'2021-12-05 14:13:25.682211','2021-12-05 14:13:25.682211',NULL),(429,'i3AO8yvn8J75S6Q0r1hBXjebfe4zZN',429,1,69,'2021-12-05 14:13:46.404140','2021-12-05 14:13:46.404140',NULL),(430,'i78ESp15TQRvdI2GJDKcAcRiIVDbhU',430,1,61,'2021-12-05 14:14:08.511607','2021-12-05 14:14:08.511607',NULL),(431,'j5isKZpu7nrELOLd7At9CnKjdhjiPF',431,1,69,'2021-12-05 14:14:23.930890','2021-12-05 14:14:23.930890',NULL);
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

-- Dump completed on 2021-12-05 21:24:32
