-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: universitydatabase
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add subject',7,'add_subject'),(26,'Can change subject',7,'change_subject'),(27,'Can delete subject',7,'delete_subject'),(28,'Can view subject',7,'view_subject'),(29,'Can add material',8,'add_material'),(30,'Can change material',8,'change_material'),(31,'Can delete material',8,'delete_material'),(32,'Can view material',8,'view_material'),(33,'Can add project',9,'add_project'),(34,'Can change project',9,'change_project'),(35,'Can delete project',9,'delete_project'),(36,'Can view project',9,'view_project'),(37,'Can add paper',10,'add_paper'),(38,'Can change paper',10,'change_paper'),(39,'Can delete paper',10,'delete_paper'),(40,'Can view paper',10,'view_paper'),(41,'Can add document',11,'add_document'),(42,'Can change document',11,'change_document'),(43,'Can delete document',11,'delete_document'),(44,'Can view document',11,'view_document');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$r3Iw0jghWd6BqYEKwGKg7f$e2YVD48PZrNc94e2/k1Tx3OLQqDe/WW2cRNE9a2hgtQ=',NULL,1,'sanket','','','sanketnawale101@gmail.com',1,1,'2024-11-06 10:46:54.188368'),(2,'pbkdf2_sha256$870000$DzSiV9KZFpvl3g0I1iQDWa$SPaVyJwmdGutxPdvTxz+1TWCc09C8osBpNetgjaW/9U=',NULL,1,'sansnaw','','','sanketnawale101@gmail.com',1,1,'2024-11-06 11:00:50.567495');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'resources','document'),(8,'resources','material'),(10,'resources','paper'),(9,'resources','project'),(7,'resources','subject'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-06 10:44:36.928523'),(2,'auth','0001_initial','2024-11-06 10:44:38.413275'),(3,'admin','0001_initial','2024-11-06 10:44:38.791269'),(4,'admin','0002_logentry_remove_auto_add','2024-11-06 10:44:38.824782'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-06 10:44:38.857173'),(6,'contenttypes','0002_remove_content_type_name','2024-11-06 10:44:39.072895'),(7,'auth','0002_alter_permission_name_max_length','2024-11-06 10:44:39.262298'),(8,'auth','0003_alter_user_email_max_length','2024-11-06 10:44:39.344860'),(9,'auth','0004_alter_user_username_opts','2024-11-06 10:44:39.370644'),(10,'auth','0005_alter_user_last_login_null','2024-11-06 10:44:39.534565'),(11,'auth','0006_require_contenttypes_0002','2024-11-06 10:44:39.544842'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-06 10:44:39.584327'),(13,'auth','0008_alter_user_username_max_length','2024-11-06 10:44:39.770078'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-06 10:44:39.937083'),(15,'auth','0010_alter_group_name_max_length','2024-11-06 10:44:40.001711'),(16,'auth','0011_update_proxy_permissions','2024-11-06 10:44:40.035863'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-06 10:44:40.215815'),(18,'sessions','0001_initial','2024-11-06 10:44:40.333911'),(19,'resources','0001_initial','2024-11-06 10:50:56.914958'),(20,'resources','0002_document','2024-11-06 12:06:26.830702'),(21,'resources','0003_document_subject','2024-11-06 12:59:19.692501');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources_document`
--

DROP TABLE IF EXISTS `resources_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resources_document` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `subject_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resources_document_subject_id_310bfd88_fk_resources_subject_id` (`subject_id`),
  CONSTRAINT `resources_document_subject_id_310bfd88_fk_resources_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `resources_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources_document`
--

LOCK TABLES `resources_document` WRITE;
/*!40000 ALTER TABLE `resources_document` DISABLE KEYS */;
INSERT INTO `resources_document` VALUES (1,'2-MIMO.pdf','MWN/2-MIMO.pdf',3),(2,'3-MultipleAccess.pdf','MWN/3-MultipleAccess.pdf',3),(3,'4-RadioPlanning.pdf','MWN/4-RadioPlanning.pdf',3),(4,'1-WirelessTX.pdf','MWN/1-WirelessTX.pdf',3),(5,'QN PerfIndices.pdf','ISP/QN PerfIndices.pdf',4),(6,'QoS&Ntwrk Defs.pdf','ISP/QoS&Ntwrk Defs.pdf',4),(7,'platfVisn&QoS Frmwrk.pdf','ISP/platfVisn&QoS Frmwrk.pdf',4),(8,'singlCenterPRIORplatfrm.pdf','ISP/singlCenterPRIORplatfrm.pdf',4),(9,'singlCenterFIFOplatfrm.pdf','ISP/singlCenterFIFOplatfrm.pdf',4),(10,'singlCenterPRIORplatfrm (1).pdf','ISP/singlCenterPRIORplatfrm (1).pdf',4),(11,'README.md','SEO/README.md',5),(12,'orbital mechanics by KimberlyStrong.pdf','SEO/orbital mechanics by KimberlyStrong.pdf',5),(13,'SEO3_texts.pdf','SEO/SEO3_texts.pdf',5),(14,'orbital mechanics for remote sensing.pdf','SEO/orbital mechanics for remote sensing.pdf',5),(15,'.git','SEO/.git',5),(16,'SEO2slides.pdf','SEO/SEO2slides.pdf',5),(17,'SEO2_texts.pdf','SEO/SEO2_texts.pdf',5),(18,'Esonero SEO seconda parte.docx','SEO/Esonero SEO seconda parte.docx',5),(19,'SEO3slides.pdf','SEO/SEO3slides.pdf',5),(20,'Esonero SEO domande.docx','SEO/Esonero SEO domande.docx',5),(21,'SEO questions.docx','SEO/SEO questions.docx',5),(22,'Seo domande.docx','SEO/Seo domande.docx',5),(23,'SEO1slides.pdf','SEO/SEO1slides.pdf',5),(24,'README.md','Internet-And-Networking/README.md',6),(25,'Chapter_8_v8.1.pptx','Internet-And-Networking/Chapter_8_v8.1.pptx',6),(26,'Chapter_4_v8.0.pptx','Internet-And-Networking/Chapter_4_v8.0.pptx',6),(27,'.git','Internet-And-Networking/.git',6),(28,'Networking_and_Internet_Presentation.pdf','Internet-And-Networking/Networking_and_Internet_Presentation.pdf',6),(29,'Chapter_3_v8.02.pptx','Internet-And-Networking/Chapter_3_v8.02.pptx',6),(30,'Exercises of Networking and Internet.pdf','Internet-And-Networking/Exercises of Networking and Internet.pdf',6),(31,'Chapter_2_v8.2.pptx','Internet-And-Networking/Chapter_2_v8.2.pptx',6),(32,'Chapter_1_v8.2.pptx','Internet-And-Networking/Chapter_1_v8.2.pptx',6),(33,'Chapter_6_v8.1.pptx','Internet-And-Networking/Chapter_6_v8.1.pptx',6),(34,'Chapter_7_v8.1.pptx','Internet-And-Networking/Chapter_7_v8.1.pptx',6),(35,'Chapter_5_v8.0.pptx','Internet-And-Networking/Chapter_5_v8.0.pptx',6),(36,'README.md','Internet-Via-Satellite/README.md',7),(37,'P01_intro.pdf','Internet-Via-Satellite/P01_intro.pdf',7),(38,'P11_IP.pdf','Internet-Via-Satellite/P11_IP.pdf',7),(39,'.git','Internet-Via-Satellite/.git',7),(40,'P18_service_setup.pdf','Internet-Via-Satellite/P18_service_setup.pdf',7),(41,'P15_integr.pdf','Internet-Via-Satellite/P15_integr.pdf',7),(42,'P09_VideoAudioDistr.pdf','Internet-Via-Satellite/P09_VideoAudioDistr.pdf',7),(43,'P10_payload.pdf','Internet-Via-Satellite/P10_payload.pdf',7),(44,'P14_Sec.pdf','Internet-Via-Satellite/P14_Sec.pdf',7),(45,'P17_Appl.pdf','Internet-Via-Satellite/P17_Appl.pdf',7),(46,'P13_Transport.pdf','Internet-Via-Satellite/P13_Transport.pdf',7),(47,'P03_arch.pdf','Internet-Via-Satellite/P03_arch.pdf',7),(48,'P05_physlay.pdf','Internet-Via-Satellite/P05_physlay.pdf',7),(49,'P08_HOCC.pdf','Internet-Via-Satellite/P08_HOCC.pdf',7),(50,'P16_groundsegment.pdf','Internet-Via-Satellite/P16_groundsegment.pdf',7),(51,'P02_orbit.pdf','Internet-Via-Satellite/P02_orbit.pdf',7),(52,'P07_MAC.pdf','Internet-Via-Satellite/P07_MAC.pdf',7),(53,'P12_VSAT_DVBRCS2.pdf','Internet-Via-Satellite/P12_VSAT_DVBRCS2.pdf',7),(54,'P06_stand&reg.pdf','Internet-Via-Satellite/P06_stand&reg.pdf',7),(55,'P04_cha-pro.pdf','Internet-Via-Satellite/P04_cha-pro.pdf',7),(56,'.git','Internet_technology_protocol/.git',8),(57,'ITP_Imp 3rd and 4th part_.zip','Internet_technology_protocol/ITP_Imp 3rd and 4th part_.zip',8),(58,'9 dc.png','Digital-communication/9 dc.png',9),(59,'README.md','Digital-communication/README.md',9),(60,'Esame Digital Communications_Feb24_2021.pdf','Digital-communication/Esame Digital Communications_Feb24_2021.pdf',9),(61,'8_ISI_new.pdf','Digital-communication/8_ISI_new.pdf',9),(62,'4th_statistics.pdf','Digital-communication/4th_statistics.pdf',9),(63,'9_receiver_new.pdf','Digital-communication/9_receiver_new.pdf',9),(64,'10_equalization (1).pdf','Digital-communication/10_equalization (1).pdf',9),(65,'11_adaptive_equalization (1).pdf','Digital-communication/11_adaptive_equalization (1).pdf',9),(66,'6_transmission_system.pdf','Digital-communication/6_transmission_system.pdf',9),(67,'list_exercises_Nov21.pdf','Digital-communication/list_exercises_Nov21.pdf',9),(68,'dmax.png','Digital-communication/dmax.png',9),(69,'content.png','Digital-communication/content.png',9),(70,'7_pulse_band_transmission.pdf','Digital-communication/7_pulse_band_transmission.pdf',9),(71,'domanda.pdf','Digital-communication/domanda.pdf',9),(72,'.git','Digital-communication/.git',9),(73,'sqnr5.png','Digital-communication/sqnr5.png',9),(74,'need answer.docx','Digital-communication/need answer.docx',9),(75,'10_bandpassmodulation.pdf','Digital-communication/10_bandpassmodulation.pdf',9),(76,'SQNR 2.png','Digital-communication/SQNR 2.png',9),(77,'Untitled dc 6.png','Digital-communication/Untitled dc 6.png',9),(78,'lista_esercizi2.docx','Digital-communication/lista_esercizi2.docx',9),(79,'5_transmission_system.pdf','Digital-communication/5_transmission_system.pdf',9),(80,'Esame Digital Communications_Feb02_2021.doc','Digital-communication/Esame Digital Communications_Feb02_2021.doc',9),(81,'Digital_Communications (1).zip','Digital-communication/Digital_Communications (1).zip',9),(82,'Esame Digital Communications_Feb02_2021_second_part.doc','Digital-communication/Esame Digital Communications_Feb02_2021_second_part.doc',9),(83,'sqnr 1.png','Digital-communication/sqnr 1.png',9),(84,'Untitled 8.png','Digital-communication/Untitled 8.png',9),(85,'Esame Digital Communications_Feb02_2021_second_part.pdf','Digital-communication/Esame Digital Communications_Feb02_2021_second_part.pdf',9),(86,'Digital_Communications (2).zip','Digital-communication/Digital_Communications (2).zip',9),(87,'sqnr 4.png','Digital-communication/sqnr 4.png',9),(88,'frequency-domain-l.jpg','Digital-communication/frequency-domain-l.jpg',9),(89,'THTTS_gt2 Practical LAb.pdf','Digital-communication/THTTS_gt2 Practical LAb.pdf',9),(90,'dc 1.png','Digital-communication/dc 1.png',9),(91,'manualnov21.pdf','Digital-communication/manualnov21.pdf',9),(92,'midterm1_sample_soln.pdf','Digital-communication/midterm1_sample_soln.pdf',9),(93,'extra 1.1.pdf','Digital-communication/extra 1.1.pdf',9),(94,'Esame Digital Communications_Feb02_2021.pdf','Digital-communication/Esame Digital Communications_Feb02_2021.pdf',9),(95,'mid_term2021_soluzioni.doc','Digital-communication/mid_term2021_soluzioni.doc',9),(96,'sqnr 3.png','Digital-communication/sqnr 3.png',9),(97,'11.png','Digital-communication/11.png',9),(98,'Esame Digital Communications03_Feb_2020_solutions.doc','Digital-communication/Esame Digital Communications03_Feb_2020_solutions.doc',9),(99,'Chap3_AM-notes Part 2.pdf','Digital-communication/Chap3_AM-notes Part 2.pdf',9),(100,'Esame Digital Communications03_Feb_2020_solutions.pdf','Digital-communication/Esame Digital Communications03_Feb_2020_solutions.pdf',9),(101,'Exam 2 Solution.pdf','Digital-communication/Exam 2 Solution.pdf',9),(102,'4_random_processes.pdf','Digital-communication/4_random_processes.pdf',9),(103,'dc 5.png','Digital-communication/dc 5.png',9),(104,'content (3).png','Digital-communication/content (3).png',9),(105,'3rd chapter.pdf','Digital-communication/3rd chapter.pdf',9),(106,'Tutorial_session3.pdf','Digital-communication/Tutorial_session3.pdf',9),(107,'Digital_Communications.zip','Digital-communication/Digital_Communications.zip',9),(108,'content (2).png','Digital-communication/content (2).png',9),(109,'Esame Digital Communications_Feb24_2021.doc','Digital-communication/Esame Digital Communications_Feb24_2021.doc',9),(110,'1_slides_intro.pdf','Digital-communication/1_slides_intro.pdf',9),(111,'dc.png','Digital-communication/dc.png',9),(112,'solution_exercise.pdf','Digital-communication/solution_exercise.pdf',9),(113,'list ex nov21.docx','Digital-communication/list ex nov21.docx',9),(114,'manual745.pdf','Digital-communication/manual745.pdf',9),(115,'dc 3.png','Digital-communication/dc 3.png',9),(116,'Esame Digital Communications03_Feb_2020.doc','Digital-communication/Esame Digital Communications03_Feb_2020.doc',9),(117,'2_signals.pdf','Digital-communication/2_signals.pdf',9),(118,'dc 7.png','Digital-communication/dc 7.png',9),(119,'dc 4.png','Digital-communication/dc 4.png',9),(120,'content (1).png','Digital-communication/content (1).png',9),(121,'.git','Model-based-software-enggineering/.git',10),(122,'SOSE Notes.pdf','Model-based-software-enggineering/SOSE Notes.pdf',10);
/*!40000 ALTER TABLE `resources_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources_material`
--

DROP TABLE IF EXISTS `resources_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resources_material` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `subject_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resources_material_subject_id_281987be_fk_resources_subject_id` (`subject_id`),
  CONSTRAINT `resources_material_subject_id_281987be_fk_resources_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `resources_subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources_material`
--

LOCK TABLES `resources_material` WRITE;
/*!40000 ALTER TABLE `resources_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources_paper`
--

DROP TABLE IF EXISTS `resources_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resources_paper` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `year` int NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `subject_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resources_paper_subject_id_e2bf2e1f_fk_resources_subject_id` (`subject_id`),
  CONSTRAINT `resources_paper_subject_id_e2bf2e1f_fk_resources_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `resources_subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources_paper`
--

LOCK TABLES `resources_paper` WRITE;
/*!40000 ALTER TABLE `resources_paper` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources_project`
--

DROP TABLE IF EXISTS `resources_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resources_project` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `subject_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resources_project_subject_id_0993467c_fk_resources_subject_id` (`subject_id`),
  CONSTRAINT `resources_project_subject_id_0993467c_fk_resources_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `resources_subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources_project`
--

LOCK TABLES `resources_project` WRITE;
/*!40000 ALTER TABLE `resources_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources_subject`
--

DROP TABLE IF EXISTS `resources_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resources_subject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources_subject`
--

LOCK TABLES `resources_subject` WRITE;
/*!40000 ALTER TABLE `resources_subject` DISABLE KEYS */;
INSERT INTO `resources_subject` VALUES (1,'Mathematics','Math course'),(2,'Physics','Physics course'),(3,'MWN','MWN Subject Content'),(4,'ISP','ISP Subject Content'),(5,'SEO','SEO Subject Content'),(6,'Internet And Networking','Internet And Networking Subject Content'),(7,'Internet Via Satellite','Internet Via Satellite Subject Content'),(8,'Internet Technology Protocol','Internet Technology Protocol Subject Content'),(9,'Digital Communication','Digital Communication Subject Content'),(10,'Model Based Software Engineering','Model Based Software Engineering Subject Content');
/*!40000 ALTER TABLE `resources_subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-17 12:33:17
