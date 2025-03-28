-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: calorietracker_db
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add meal',7,'add_meal'),(26,'Can change meal',7,'change_meal'),(27,'Can delete meal',7,'delete_meal'),(28,'Can view meal',7,'view_meal'),(29,'Can add tdee calculator',8,'add_tdeecalculator'),(30,'Can change tdee calculator',8,'change_tdeecalculator'),(31,'Can delete tdee calculator',8,'delete_tdeecalculator'),(32,'Can view tdee calculator',8,'view_tdeecalculator');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$EJ4sDotUgW2ANW5Q6kOyjs$gwoTUhTEcDD2jAEH/bp0YFKq2StZAVAg3KMfP5zzeU8=','2025-03-10 10:28:36.616162',1,'adhi','','','adithya.ak6@gmail.com',1,1,'2025-02-28 20:00:57.301351'),(2,'pbkdf2_sha256$870000$QvrJ7halMYllC9yXkeryFL$z99jcb2eharBnGRti1hqEJFfTBZ6ThYLqvI0+7GmkJI=','2025-03-02 11:56:18.921009',0,'adhi@gmail.com','','','',0,1,'2025-03-02 11:56:13.435255'),(3,'pbkdf2_sha256$870000$sLHeT5sOY9lfUbUqvJ6S8O$lHzzA0WFmzVQaOW6iXHO6k31Ug+pN5rSHT90FEI7IVM=','2025-03-09 18:28:39.812370',0,'adhithya','','','',0,1,'2025-03-02 12:54:56.788986'),(4,'pbkdf2_sha256$870000$BKN4vW0M9sb0GIBjoQTpW1$ip9tgiMPYSYh+8cIRQHApnc+ZVdmfaqDwGsHPWxL9AY=','2025-03-02 14:39:44.478636',0,'narendran','','','',0,1,'2025-03-02 14:39:03.070226');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-03-02 12:54:57.723624','3','adhithya',1,'[{\"added\": {}}]',4,1),(2,'2025-03-02 14:39:03.995551','4','narendran',1,'[{\"added\": {}}]',4,1);
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
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'tracker','meal'),(8,'tracker','tdeecalculator');
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
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-02-28 19:55:37.450389'),(2,'auth','0001_initial','2025-02-28 19:55:39.047635'),(3,'admin','0001_initial','2025-02-28 19:55:39.702339'),(4,'admin','0002_logentry_remove_auto_add','2025-02-28 19:55:39.724752'),(5,'admin','0003_logentry_add_action_flag_choices','2025-02-28 19:55:39.743104'),(6,'contenttypes','0002_remove_content_type_name','2025-02-28 19:55:40.014864'),(7,'auth','0002_alter_permission_name_max_length','2025-02-28 19:55:40.175424'),(8,'auth','0003_alter_user_email_max_length','2025-02-28 19:55:40.224332'),(9,'auth','0004_alter_user_username_opts','2025-02-28 19:55:40.242061'),(10,'auth','0005_alter_user_last_login_null','2025-02-28 19:55:40.393064'),(11,'auth','0006_require_contenttypes_0002','2025-02-28 19:55:40.404977'),(12,'auth','0007_alter_validators_add_error_messages','2025-02-28 19:55:40.419357'),(13,'auth','0008_alter_user_username_max_length','2025-02-28 19:55:40.598890'),(14,'auth','0009_alter_user_last_name_max_length','2025-02-28 19:55:40.766034'),(15,'auth','0010_alter_group_name_max_length','2025-02-28 19:55:40.815400'),(16,'auth','0011_update_proxy_permissions','2025-02-28 19:55:40.834716'),(17,'auth','0012_alter_user_first_name_max_length','2025-02-28 19:55:41.007220'),(18,'sessions','0001_initial','2025-02-28 19:55:41.103263'),(19,'tracker','0001_initial','2025-02-28 19:55:41.302266'),(20,'tracker','0002_alter_meal_unique_together','2025-02-28 19:55:41.355149'),(21,'tracker','0003_meal_carbs_meal_fat_meal_protein','2025-03-01 09:31:20.689560'),(22,'tracker','0004_alter_meal_calories_tdeecalculator','2025-03-04 09:50:15.560389'),(23,'tracker','0005_alter_tdeecalculator_activity_level_and_more','2025-03-04 10:06:28.495585');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('302ifcfkbsjx8r0vgxj9x93527nhcpyg','.eJxVjM0OwiAQhN-FsyEsPwt69O4zEMpupWogKe3J-O62SQ86x_m-mbeIaV1KXDvPcSJxESBOv92Q8pPrDuiR6r3J3OoyT4PcFXnQLm-N-HU93L-DknrZ1hqdVY7OMNIIEIJnVEZbazhlFxSicoGtB0AOWkMmJJu2ZHBeWTLi8wWweTbS:1tom1N:TCdHWCyRgJiXKiSQ7vqUR1hoqvkzfEISPQ4ds8McO-g','2025-03-16 16:18:29.717932'),('q8mo1ngcqnzl7b32cwoc0xbllyl1lneq','.eJxVjM0OwiAQhN-FsyEsPwt69O4zEMpupWogKe3J-O62SQ86x_m-mbeIaV1KXDvPcSJxESBOv92Q8pPrDuiR6r3J3OoyT4PcFXnQLm-N-HU93L-DknrZ1hqdVY7OMNIIEIJnVEZbazhlFxSicoGtB0AOWkMmJJu2ZHBeWTLi8wWweTbS:1tonxs:0g6R7eNDTkI5S6ICpcdMThquhsKwkxC89-lA7mkLaCM','2025-03-16 18:23:00.005511');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_meal`
--

DROP TABLE IF EXISTS `tracker_meal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_meal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `meal_type` varchar(10) NOT NULL,
  `food_item` varchar(200) NOT NULL,
  `quantity` double NOT NULL,
  `unit` varchar(20) NOT NULL,
  `calories` double NOT NULL,
  `user_id` int NOT NULL,
  `carbs` double NOT NULL,
  `fat` double NOT NULL,
  `protein` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracker_meal_user_id_date_meal_type_food_item_9561faeb_uniq` (`user_id`,`date`,`meal_type`,`food_item`),
  CONSTRAINT `tracker_meal_user_id_ee4d3bfd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_meal`
--

LOCK TABLES `tracker_meal` WRITE;
/*!40000 ALTER TABLE `tracker_meal` DISABLE KEYS */;
INSERT INTO `tracker_meal` VALUES (1,'2025-02-28','dinner','apple',200,'grams',104,1,0,0,0),(2,'2025-02-27','lunch','chicken noodle',200,'grams',82,1,8.16,0,8.16),(3,'2025-02-26','breakfast','oatmeal',100,'grams',1580,1,0,0,0),(5,'2025-03-01','lunch','apple',70,'grams',36.4,1,10.010000000000002,0.455,0),(7,'2025-02-28','lunch','tostada',120,'grams',568.8000000000001,1,77.28,0.1572,7.380000000000001),(8,'2025-03-01','lunch','tostada',130,'grams',616.2,1,83.72,0.17,8),(10,'2025-03-02','breakfast','sausage',100,'grams',253,2,12,5.33,10.7),(11,'2025-03-01','lunch','chicken',200,'grams',214,2,0,1.78,42.8),(12,'2025-03-08','lunch','dal rice',200,'grams',290,3,38.34,0.63,17.2),(13,'2025-03-02','breakfast','swiss roll',300,'grams',1242,3,186,27,21),(16,'2025-03-02','breakfast','tacos',100,'grams',170,1,15.1,2.98,6.69),(17,'2025-03-02','breakfast','watermelon',100,'grams',31,1,7.45,0,0.78),(18,'2025-03-02','breakfast','biscuits',100,'grams',319,1,43.6,6.38,6.38),(19,'2025-03-02','snack','tea',50,'ml',17,1,4.23,0,0),(20,'2025-03-02','breakfast','tostada',100,'grams',474,1,64.4,0.13,6.15),(21,'2025-03-02','breakfast','tortilla',100,'grams',211,1,44.7,0,5.26),(22,'2025-03-08','lunch','oatmeal',179,'grams',2828.2,3,119.39,0,0),(23,'2025-03-09','breakfast','apple',300,'grams',156,3,42.9,1.95,0);
/*!40000 ALTER TABLE `tracker_meal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker_tdeecalculator`
--

DROP TABLE IF EXISTS `tracker_tdeecalculator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker_tdeecalculator` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `age` int NOT NULL,
  `height` double NOT NULL,
  `weight` double NOT NULL,
  `gender` varchar(10) NOT NULL,
  `activity_level` varchar(20) NOT NULL,
  `tdee` double DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `tracker_tdeecalculator_user_id_e446c277_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker_tdeecalculator`
--

LOCK TABLES `tracker_tdeecalculator` WRITE;
/*!40000 ALTER TABLE `tracker_tdeecalculator` DISABLE KEYS */;
INSERT INTO `tracker_tdeecalculator` VALUES (1,32,166,75,'male','light',2244.6875,1),(2,31,170,74,'male','moderate',2561.375,3);
/*!40000 ALTER TABLE `tracker_tdeecalculator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-11 10:30:53
