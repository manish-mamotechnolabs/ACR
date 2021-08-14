-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: 192.168.1.200    Database: acr_hipaa
-- ------------------------------------------------------
-- Server version	5.7.35-0ubuntu0.18.04.1-log

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
-- Table structure for table `EEG_montage`
--

DROP TABLE IF EXISTS `EEG_montage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EEG_montage` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `refrence` int(11) DEFAULT NULL,
  `channel` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_EEG_montage_company_id_idx` (`company_id`),
  KEY `fk_EEG_montage_patient_id_idx` (`patient_id`),
  KEY `fk_EEG_montage_created_by_idx` (`created_by`),
  KEY `fk_EEG_montage_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_EEG_montage_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_EEG_montage_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_EEG_montage_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_EEG_montage_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EEG_montage`
--

LOCK TABLES `EEG_montage` WRITE;
/*!40000 ALTER TABLE `EEG_montage` DISABLE KEYS */;
/*!40000 ALTER TABLE `EEG_montage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HNP_implants`
--

DROP TABLE IF EXISTS `HNP_implants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HNP_implants` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `hnp_id` int(11) DEFAULT NULL,
  `procedure` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_HNP_implants_hnp_id_idx` (`hnp_id`),
  KEY `fk_HNP_implants_company_id_idx` (`company_id`),
  KEY `fk_HNP_implants_created_by_idx` (`created_by`),
  KEY `fk_HNP_implants_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_HNP_implants_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HNP_implants_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HNP_implants_hnp_id` FOREIGN KEY (`hnp_id`) REFERENCES `hnp_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HNP_implants_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HNP_implants`
--

LOCK TABLES `HNP_implants` WRITE;
/*!40000 ALTER TABLE `HNP_implants` DISABLE KEYS */;
/*!40000 ALTER TABLE `HNP_implants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HNP_medical_history`
--

DROP TABLE IF EXISTS `HNP_medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HNP_medical_history` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `hnp_id` int(11) DEFAULT NULL,
  `seizures` enum('Y','N') DEFAULT NULL,
  `diabetis` enum('Y','N') DEFAULT NULL,
  `seizures_details` varchar(255) DEFAULT NULL,
  `seizures_date` datetime DEFAULT NULL,
  `seizures_medications` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_HNP_medical_history_company_id_idx` (`company_id`),
  KEY `fk_HNP_medical_history_hnp_id_idx` (`hnp_id`),
  KEY `fk_HNP_medical_history_created_by_idx` (`created_by`),
  KEY `fk_HNP_medical_history_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_HNP_medical_history_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HNP_medical_history_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HNP_medical_history_hnp_id` FOREIGN KEY (`hnp_id`) REFERENCES `hnp_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HNP_medical_history_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HNP_medical_history`
--

LOCK TABLES `HNP_medical_history` WRITE;
/*!40000 ALTER TABLE `HNP_medical_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `HNP_medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HNP_medical_pocedure`
--

DROP TABLE IF EXISTS `HNP_medical_pocedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HNP_medical_pocedure` (
  `id` int(11) NOT NULL,
  `hnp_id` int(11) DEFAULT NULL,
  `procedure` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_HNP_medical_pocedure_company_id_idx` (`company_id`),
  KEY `fk_HNP_medical_pocedure_hnp_id_idx` (`hnp_id`),
  KEY `fk_HNP_medical_pocedure_created_by_idx` (`created_by`),
  KEY `fk_HNP_medical_pocedure_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_HNP_medical_pocedure_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HNP_medical_pocedure_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HNP_medical_pocedure_hnp_id` FOREIGN KEY (`hnp_id`) REFERENCES `hnp_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HNP_medical_pocedure_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HNP_medical_pocedure`
--

LOCK TABLES `HNP_medical_pocedure` WRITE;
/*!40000 ALTER TABLE `HNP_medical_pocedure` DISABLE KEYS */;
/*!40000 ALTER TABLE `HNP_medical_pocedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HNP_symptom`
--

DROP TABLE IF EXISTS `HNP_symptom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HNP_symptom` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `hnp_id` int(11) DEFAULT NULL,
  `symptom` varchar(255) DEFAULT NULL,
  `side` varchar(255) DEFAULT NULL,
  `extremity` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_HNP_symptom_hnp_id_idx` (`hnp_id`),
  KEY `fk_HNP_symptom_updated_by_idx` (`updated_by`),
  KEY `fk_HNP_symptom_created_by_idx` (`created_by`),
  CONSTRAINT `fk_HNP_symptom_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HNP_symptom_hnp_id` FOREIGN KEY (`hnp_id`) REFERENCES `hnp_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_HNP_symptom_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HNP_symptom`
--

LOCK TABLES `HNP_symptom` WRITE;
/*!40000 ALTER TABLE `HNP_symptom` DISABLE KEYS */;
/*!40000 ALTER TABLE `HNP_symptom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEP_montage`
--

DROP TABLE IF EXISTS `MEP_montage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MEP_montage` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `refrence` int(11) DEFAULT NULL,
  `body_side` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_MEP_montage_company_id_idx` (`company_id`),
  KEY `fk_MEP_montage_patient_id_idx` (`patient_id`),
  KEY `fk_MEP_montage_created_by_idx` (`created_by`),
  KEY `fk_MEP_montage_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_MEP_montage_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MEP_montage_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MEP_montage_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MEP_montage_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEP_montage`
--

LOCK TABLES `MEP_montage` WRITE;
/*!40000 ALTER TABLE `MEP_montage` DISABLE KEYS */;
/*!40000 ALTER TABLE `MEP_montage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SSEP_montage`
--

DROP TABLE IF EXISTS `SSEP_montage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SSEP_montage` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `refrence` int(11) DEFAULT NULL,
  `side` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_SSEP_montage_updated_by_idx` (`updated_by`),
  KEY `fk_SSEP_montage_created_by_idx` (`created_by`),
  KEY `fk_SSEP_montage_company_id_idx` (`company_id`),
  KEY `fk_SSEP_montage_patient_id_idx` (`patient_id`),
  CONSTRAINT `fk_SSEP_montage_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_SSEP_montage_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_SSEP_montage_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_SSEP_montage_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SSEP_montage`
--

LOCK TABLES `SSEP_montage` WRITE;
/*!40000 ALTER TABLE `SSEP_montage` DISABLE KEYS */;
/*!40000 ALTER TABLE `SSEP_montage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(255) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `action_create_by` (`created_by`),
  KEY `action_update_by` (`updated_by`),
  CONSTRAINT `action_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `action_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES (1,'List',NULL,NULL,'2020-06-02 21:32:13',NULL,NULL,'Y','0.0.0.0'),(2,'Create',NULL,NULL,'2020-06-02 21:32:13',NULL,NULL,'Y','0.0.0.0'),(3,'Edit ',NULL,NULL,'2020-06-02 21:32:13',NULL,NULL,'Y','0.0.0.0'),(4,'Delete',NULL,NULL,'2020-06-02 21:32:13',NULL,NULL,'Y','0.0.0.0'),(5,'Status',NULL,NULL,'2020-06-02 21:32:13',NULL,NULL,'Y','0.0.0.0'),(6,'View',NULL,NULL,'2020-11-03 20:44:47',NULL,NULL,'Y','0.0.0.0.');
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anesthesia_master`
--

DROP TABLE IF EXISTS `anesthesia_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anesthesia_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anesthesia_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vital_create` (`created_by`),
  KEY `vital_update` (`updated_by`),
  CONSTRAINT `vital_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `vital_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anesthesia_master`
--

LOCK TABLES `anesthesia_master` WRITE;
/*!40000 ALTER TABLE `anesthesia_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `anesthesia_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appoinment`
--

DROP TABLE IF EXISTS `appoinment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appoinment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operator_id` int(11) NOT NULL,
  `petient_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `reader_id` int(11) NOT NULL,
  `surgeon` varchar(255) NOT NULL,
  `procedure` varchar(255) NOT NULL,
  `date_of_procedure` datetime NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_operator` (`operator_id`),
  KEY `app_patient` (`petient_id`),
  KEY `app_region` (`region_id`),
  KEY `app_reader` (`reader_id`),
  KEY `app_create` (`created_by`),
  KEY `app_update` (`updated_by`),
  CONSTRAINT `app_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `app_operator` FOREIGN KEY (`operator_id`) REFERENCES `users` (`id`),
  CONSTRAINT `app_patient` FOREIGN KEY (`petient_id`) REFERENCES `patient_master` (`id`),
  CONSTRAINT `app_reader` FOREIGN KEY (`reader_id`) REFERENCES `users` (`id`),
  CONSTRAINT `app_region` FOREIGN KEY (`region_id`) REFERENCES `region_master` (`id`),
  CONSTRAINT `app_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appoinment`
--

LOCK TABLES `appoinment` WRITE;
/*!40000 ALTER TABLE `appoinment` DISABLE KEYS */;
INSERT INTO `appoinment` VALUES (1,3,31,1,2,'1','test','2021-02-23 00:00:00','2021-02-23 13:00:00','2021-02-23 13:00:00',1,'2021-02-24 07:25:06',1,'2021-02-24 07:25:06','192.168.1.1',NULL),(2,3,31,1,2,'1','test','2021-02-23 00:00:00','2021-02-23 07:00:00','2021-02-23 21:00:00',1,'2021-02-24 07:27:42',1,'2021-02-24 07:27:42','192.168.1.182',NULL),(3,3,31,1,2,'1','test','2021-02-24 00:00:00','2021-02-24 11:00:00','2021-02-24 11:00:00',1,'2021-02-25 05:21:28',1,'2021-02-25 05:21:28','192.168.1.198',NULL),(4,33,52,7,28,'12345','test','2021-03-03 00:00:00','2021-03-03 12:45:00','2021-03-03 14:45:00',1,'2021-03-04 07:06:15',1,'2021-03-04 07:06:15','192.168.1.1',NULL),(5,41,52,7,32,'12345','test','2021-03-15 00:00:00','2021-03-15 12:45:00','2021-03-15 12:45:00',1,'2021-03-04 07:08:31',1,'2021-03-04 07:08:31','192.168.1.1',NULL),(6,40,52,1,28,'1','test','2021-03-06 00:00:00','2021-03-06 14:30:00','2021-03-06 15:00:00',1,'2021-03-05 08:53:55',1,'2021-03-05 08:53:55','192.168.1.89',NULL),(7,40,52,1,28,'1','test','2021-03-03 00:00:00','2021-03-03 18:15:00','2021-03-03 18:15:00',1,'2021-03-05 12:34:32',1,'2021-03-05 12:34:32','192.168.1.89',NULL),(8,20,45,1,2,'123','test procedure','2021-03-03 00:00:00','2021-03-03 18:15:00','2021-03-03 18:15:00',1,'2021-03-05 12:40:13',1,'2021-03-05 12:40:13','192.168.1.89',NULL),(9,20,45,1,2,'123','test procedure','2021-03-03 00:00:00','2021-03-03 18:15:00','2021-03-03 18:15:00',1,'2021-03-05 12:41:57',1,'2021-03-05 12:41:57','192.168.1.89',NULL),(10,47,56,1,2,'2','1','2021-01-03 00:00:00','2021-01-03 12:30:00','2021-01-03 13:15:00',1,'2021-03-08 07:01:04',1,'2021-03-08 07:01:04','192.168.1.1',NULL),(11,40,31,1,2,'1','test','1970-01-01 00:00:00','1970-01-01 12:00:00','1970-01-01 12:00:00',1,'2021-03-09 06:22:15',1,'2021-03-09 06:22:15','122.170.74.245',NULL),(12,40,31,1,2,'1','test','1970-01-01 00:00:00','2021-03-09 12:00:00','2021-03-09 12:00:00',1,'2021-03-09 06:22:35',1,'2021-03-09 06:22:35','122.170.74.245',NULL),(13,40,31,1,2,'1','test','2021-03-18 00:00:00','2021-03-18 02:15:00','2021-03-18 05:15:00',1,'2021-03-18 06:03:34',1,'2021-03-18 06:03:34','69.112.250.202',NULL),(14,34,31,1,2,'1','test','2021-03-19 00:00:00','2021-03-19 14:15:00','2021-03-19 16:15:00',1,'2021-03-18 06:04:35',1,'2021-03-18 06:04:35','69.112.250.202',NULL);
/*!40000 ALTER TABLE `appoinment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appoinment_insurance_details`
--

DROP TABLE IF EXISTS `appoinment_insurance_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appoinment_insurance_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `appoinment_id` int(11) DEFAULT NULL,
  `medical_record` int(11) DEFAULT NULL,
  `petient_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_appoinment_insurance_details_company_id_idx` (`company_id`),
  KEY `fk_appoinment_insurance_details_appoinment_id_idx` (`appoinment_id`),
  KEY `fk_appoinment_insurance_details_created_by_idx` (`created_by`),
  KEY `fk_appoinment_insurance_details_updated_by_idx` (`updated_by`),
  KEY `fk_appoinment_insurance_details_patient_id_idx` (`petient_id`),
  CONSTRAINT `fk_appoinment_insurance_details_appoinment_id` FOREIGN KEY (`appoinment_id`) REFERENCES `appoinment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appoinment_insurance_details_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appoinment_insurance_details_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appoinment_insurance_details_patient_id` FOREIGN KEY (`petient_id`) REFERENCES `patient_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appoinment_insurance_details_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appoinment_insurance_details`
--

LOCK TABLES `appoinment_insurance_details` WRITE;
/*!40000 ALTER TABLE `appoinment_insurance_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `appoinment_insurance_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appoinment_master`
--

DROP TABLE IF EXISTS `appoinment_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appoinment_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appoinment_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL,
  `petient_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_master_app` (`appoinment_id`),
  KEY `app_master_face` (`facilities_id`),
  KEY `app_master_patient` (`petient_id`),
  KEY `app_master_create` (`created_by`),
  KEY `app_master_update` (`updated_by`),
  CONSTRAINT `app_master_app` FOREIGN KEY (`appoinment_id`) REFERENCES `appoinment` (`id`),
  CONSTRAINT `app_master_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `app_master_face` FOREIGN KEY (`facilities_id`) REFERENCES `facilities_master` (`id`),
  CONSTRAINT `app_master_patient` FOREIGN KEY (`petient_id`) REFERENCES `patient_master` (`id`),
  CONSTRAINT `app_master_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appoinment_master`
--

LOCK TABLES `appoinment_master` WRITE;
/*!40000 ALTER TABLE `appoinment_master` DISABLE KEYS */;
INSERT INTO `appoinment_master` VALUES (1,1,2,31,1,'2021-02-24 07:25:07',1,'2021-02-24 07:25:07','192.168.1.1',NULL),(2,2,1,31,1,'2021-02-24 07:27:42',1,'2021-02-24 07:27:42','192.168.1.182',NULL),(3,3,1,31,1,'2021-02-25 05:21:29',1,'2021-02-25 05:21:29','192.168.1.198',NULL),(4,4,2,52,1,'2021-03-04 07:06:15',1,'2021-03-04 07:06:15','192.168.1.1',NULL),(5,5,2,52,1,'2021-03-04 07:08:31',1,'2021-03-04 07:08:31','192.168.1.1',NULL),(6,6,2,52,1,'2021-03-05 08:53:55',1,'2021-03-05 08:53:55','192.168.1.89',NULL),(7,7,1,52,1,'2021-03-05 12:34:32',1,'2021-03-05 12:34:32','192.168.1.89',NULL),(8,8,2,45,1,'2021-03-05 12:40:13',1,'2021-03-05 12:40:13','192.168.1.89',NULL),(9,9,2,45,1,'2021-03-05 12:41:57',1,'2021-03-05 12:41:57','192.168.1.89',NULL),(10,10,2,56,1,'2021-03-08 07:01:04',1,'2021-03-08 07:01:04','192.168.1.1',NULL),(11,12,1,31,1,'2021-03-09 06:22:35',1,'2021-03-09 06:22:35','122.170.74.245',NULL),(12,13,1,31,1,'2021-03-18 06:03:34',1,'2021-03-18 06:03:34','69.112.250.202',NULL),(13,14,1,31,1,'2021-03-18 06:04:35',1,'2021-03-18 06:04:35','69.112.250.202',NULL);
/*!40000 ALTER TABLE `appoinment_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arm_master`
--

DROP TABLE IF EXISTS `arm_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arm_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `display_name` int(11) NOT NULL,
  `arm_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `arm_create` (`created_by`),
  KEY `arm_update` (`updated_by`),
  CONSTRAINT `arm_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `arm_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arm_master`
--

LOCK TABLES `arm_master` WRITE;
/*!40000 ALTER TABLE `arm_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `arm_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `array_master`
--

DROP TABLE IF EXISTS `array_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `array_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `array_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `array_create` (`created_by`),
  KEY `array_update` (`updated_by`),
  CONSTRAINT `array_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `array_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `array_master`
--

LOCK TABLES `array_master` WRITE;
/*!40000 ALTER TABLE `array_master` DISABLE KEYS */;
INSERT INTO `array_master` VALUES (1,'MUSCLES',1,'2021-02-26 10:53:36',1,'2021-02-26 10:53:36','192.168.1.198','Y',NULL),(2,'NERVES',1,'2021-02-26 10:53:55',1,'2021-03-05 10:19:03','192.168.1.198','N',NULL),(3,'MUSCLE',1,'2021-02-26 10:54:10',1,'2021-03-05 10:18:46','192.168.1.198','Y',NULL);
/*!40000 ALTER TABLE `array_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseline_master`
--

DROP TABLE IF EXISTS `baseline_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baseline_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baseline_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `base_create` (`created_by`),
  KEY `base_update` (`updated_by`),
  CONSTRAINT `base_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `base_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseline_master`
--

LOCK TABLES `baseline_master` WRITE;
/*!40000 ALTER TABLE `baseline_master` DISABLE KEYS */;
INSERT INTO `baseline_master` VALUES (1,'RELIABLE/UNRELIABLE',1,'2021-02-26 07:56:28',1,'2021-02-26 07:57:40','192.168.1.198','Y',NULL),(2,'PRESENT/NON-PRESENT',1,'2021-02-26 07:58:03',1,'2021-03-05 10:07:06','192.168.1.198','Y',NULL),(3,'ACTIVITY/NO-ACTIVITY',1,'2021-02-26 07:58:24',1,'2021-03-05 10:06:46','192.168.1.198','N',NULL);
/*!40000 ALTER TABLE `baseline_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case_type`
--

DROP TABLE IF EXISTS `case_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `case_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_create_by` (`created_by`),
  KEY `case_update_id` (`updated_by`),
  CONSTRAINT `case_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `case_update_id` FOREIGN KEY (`updated_by`) REFERENCES `template master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_type`
--

LOCK TABLES `case_type` WRITE;
/*!40000 ALTER TABLE `case_type` DISABLE KEYS */;
INSERT INTO `case_type` VALUES (1,'Spine',1,'2021-02-06 11:44:18',1,'2021-02-06 11:44:34','127.0.0.1'),(2,'ENT',1,'2021-02-06 11:44:59',1,'2021-02-06 11:45:05','127.0.0.1'),(3,'Vascular',1,'2021-02-19 10:36:40',1,'2021-02-19 10:36:45','0.0.0.0.0'),(4,'Orthopedic',1,'2021-02-19 10:37:14',1,'2021-02-19 10:37:19','0.0.0.0.0'),(5,'Other',1,'2021-02-19 10:37:38',1,'2021-02-19 10:37:43','0.0.0.0.0');
/*!40000 ALTER TABLE `case_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_master`
--

DROP TABLE IF EXISTS `chat_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `message` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_form` (`from`),
  KEY `chat_to` (`to`),
  KEY `chat_create` (`created_by`),
  KEY `chat_update` (`updated_by`),
  KEY `fk_chat_master_compnay_id_idx` (`company_id`),
  CONSTRAINT `chat_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `chat_form` FOREIGN KEY (`from`) REFERENCES `users` (`id`),
  CONSTRAINT `chat_to` FOREIGN KEY (`to`) REFERENCES `users` (`id`),
  CONSTRAINT `chat_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_chat_master_compnay_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_master`
--

LOCK TABLES `chat_master` WRITE;
/*!40000 ALTER TABLE `chat_master` DISABLE KEYS */;
INSERT INTO `chat_master` VALUES (1,3,2,'Hello ',NULL,NULL,1,'2021-02-26 06:33:05',1,'2021-02-26 06:33:16',NULL,NULL),(8,3,2,'MESSAGE SENED',NULL,NULL,1,'2021-02-26 08:21:23',1,'2021-02-26 08:21:28',NULL,NULL),(38,1,3,'Hello','Jellyfish.jpg,Koala.jpeg',NULL,1,'2021-03-01 11:47:47',1,'2021-03-01 11:47:47','192.168.1.182',NULL),(39,1,3,'send','Jellyfish.jpg,Koala.jpeg',NULL,1,'2021-03-01 11:52:52',1,'2021-03-01 11:52:52','192.168.1.182',NULL),(40,1,20,'hhh','NULL','NULL',1,'2021-03-03 06:19:40',1,'2021-03-03 06:19:40','122.170.148.237',NULL),(41,1,47,'hiii','NULL','NULL',1,'2021-03-08 08:55:38',1,'2021-03-08 08:55:38','192.168.1.1',NULL),(42,1,47,'hello','NULL','NULL',1,'2021-03-08 08:55:48',1,'2021-03-08 08:55:48','192.168.1.1',NULL),(43,1,47,'hiii','NULL','NULL',1,'2021-03-08 08:56:00',1,'2021-03-08 08:56:00','192.168.1.1',NULL),(44,1,47,'hjh','NULL','NULL',1,'2021-03-08 08:56:10',1,'2021-03-08 08:56:10','192.168.1.1',NULL);
/*!40000 ALTER TABLE `chat_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_master`
--

DROP TABLE IF EXISTS `city_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_country` (`country_id`),
  KEY `city_state` (`state_id`),
  KEY `city_create_by` (`created_by`),
  KEY `city_update_by` (`updated_by`),
  CONSTRAINT `city_country` FOREIGN KEY (`country_id`) REFERENCES `country_master` (`id`),
  CONSTRAINT `city_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `city_state` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`id`),
  CONSTRAINT `city_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_master`
--

LOCK TABLES `city_master` WRITE;
/*!40000 ALTER TABLE `city_master` DISABLE KEYS */;
INSERT INTO `city_master` VALUES (1,1,1,'Ahmedabad',1,'2021-02-03 09:05:55',1,'2021-02-25 05:19:01','127.0.0.1','Y'),(2,1,2,'Mumbai',1,'2021-02-06 15:55:15',1,'2021-03-05 09:37:19','127.0.0.1','Y'),(3,1,1,'Gandhinagar',1,'2021-02-06 15:55:59',1,'2021-03-05 09:37:16','192.168.1.89','Y'),(5,1,2,'Pune',1,'2021-02-19 09:50:30',1,'2021-03-05 09:37:12','192.168.1.89','Y'),(6,2,3,'Cincinati',1,'2021-02-19 11:29:28',1,'2021-03-08 08:41:20','192.168.1.1','Y'),(7,1,1,'Ahmedabad',1,'2021-03-02 12:54:57',1,'2021-03-05 09:24:15','192.168.1.1','Y'),(8,9,8,'Tokyo',1,'2021-03-05 09:23:47',1,'2021-03-05 09:24:12','192.168.1.89','Y'),(9,4,9,'shyhonju',1,'2021-03-05 09:24:04',1,'2021-03-05 09:34:35','192.168.1.89','Y'),(10,2,3,'Los Angelas',1,'2021-03-05 09:39:52',1,'2021-03-05 09:42:00','192.168.1.89','Y'),(11,10,11,'kathmandu city',1,'2021-03-05 09:40:58',1,'2021-03-08 08:41:36','192.168.1.1','Y'),(12,4,9,'kojochu',1,'2021-03-05 09:41:50',1,'2021-03-05 09:42:06','192.168.1.89','Y'),(13,1,14,'udipur',65,'2021-03-12 09:29:43',65,'2021-03-12 09:29:43','192.168.1.72',NULL),(14,1,14,'Udaipur',65,'2021-03-12 09:30:03',65,'2021-03-12 09:30:03','192.168.1.72',NULL),(15,1,14,'udaipur',1,'2021-03-12 10:04:36',1,'2021-03-12 10:04:36','192.168.1.1',NULL);
/*!40000 ALTER TABLE `city_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_management`
--

DROP TABLE IF EXISTS `cms_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_create_by` (`created_by`),
  KEY `cms_update_by` (`updated_by`),
  CONSTRAINT `cms_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `cms_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_management`
--

LOCK TABLES `cms_management` WRITE;
/*!40000 ALTER TABLE `cms_management` DISABLE KEYS */;
INSERT INTO `cms_management` VALUES (2,'About Us','this is demo content','about-us',1,'2021-02-06 05:42:11',1,'2021-02-16 12:20:57','Y','192.168.1.193'),(4,'Privacy Policy','<h2><strong>This is privacy policy page</strong></h2><p>&nbsp;</p><p>&nbsp;</p><p><strong>adscv k &nbsp;ifvbfdbv bhj</strong></p>','privacy-policy',1,'2021-02-17 04:55:55',1,'2021-03-03 06:33:00','Y','37.139.12.156'),(5,'Contact Us','<h2><strong>This is a contact us page.</strong></h2><p>&nbsp;</p><p><strong>This is a demo contact.</strong></p>','contact-us',2,'2021-03-04 11:50:53',2,'2021-03-04 11:50:53','Y','192.168.1.1'),(7,'445','<p>4545</p>','445',2,'2021-03-05 06:12:15',2,'2021-03-05 07:31:43','Y','192.168.1.1'),(8,'adsdas','<p>afdsfdsa</p>','adsdas',2,'2021-03-05 07:32:41',2,'2021-03-05 07:32:41','Y','192.168.1.1');
/*!40000 ALTER TABLE `cms_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_master`
--

DROP TABLE IF EXISTS `company_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_master` (
  `id` int(11) NOT NULL,
  `company_register_id` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_company_master_created_by_idx` (`created_by`),
  KEY `fk_company_master_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_company_master_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_master_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_master`
--

LOCK TABLES `company_master` WRITE;
/*!40000 ALTER TABLE `company_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_master`
--

DROP TABLE IF EXISTS `country_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_create_by` (`created_by`),
  KEY `country_update_by` (`updated_by`),
  CONSTRAINT `country_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `country_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_master`
--

LOCK TABLES `country_master` WRITE;
/*!40000 ALTER TABLE `country_master` DISABLE KEYS */;
INSERT INTO `country_master` VALUES (1,'India',1,'2021-02-03 08:49:56',1,'2021-03-05 09:12:36','127.0.0.1','Y'),(2,'USA',1,'2021-02-06 11:23:34',1,'2021-02-19 13:33:29','127.0.0.1','Y'),(3,'Australia',1,'2021-03-02 12:47:56',1,'2021-03-05 09:16:02','192.168.1.1','Y'),(4,'China',1,'2021-03-05 09:11:33',1,'2021-03-05 09:16:05','192.168.1.89','Y'),(5,'Pakistan',1,'2021-03-05 09:11:46',1,'2021-03-05 09:16:12','192.168.1.89','Y'),(6,'Iran',1,'2021-03-05 09:11:53',1,'2021-03-05 09:16:27','192.168.1.89','Y'),(7,'Iraq',1,'2021-03-05 09:12:03',1,'2021-03-05 09:16:19','192.168.1.89','Y'),(8,'Australia',1,'2021-03-05 09:12:13',1,'2021-03-05 09:16:24','192.168.1.89','Y'),(9,'Japan',1,'2021-03-05 09:12:21',1,'2021-03-05 09:16:15','192.168.1.89','Y'),(10,'Nepal',1,'2021-03-05 09:12:55',1,'2021-03-05 09:16:08','192.168.1.89','Y'),(11,'Italy',1,'2021-03-05 09:14:34',1,'2021-03-05 09:15:58','192.168.1.89','Y'),(12,'Greece',1,'2021-03-05 09:15:31',1,'2021-03-05 11:05:20','192.168.1.89','Y'),(13,'india',65,'2021-03-12 09:24:43',65,'2021-03-12 09:25:25','192.168.1.72','Y'),(14,'india',65,'2021-03-12 09:25:36',65,'2021-03-12 09:25:36','192.168.1.72',NULL),(15,'india',65,'2021-03-12 09:28:39',65,'2021-03-12 09:28:39','192.168.1.72',NULL),(16,'india',1,'2021-03-12 10:03:50',1,'2021-03-12 10:03:50','192.168.1.1',NULL);
/*!40000 ALTER TABLE `country_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credentials_master`
--

DROP TABLE IF EXISTS `credentials_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credentials_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credentials_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cred_create_by` (`created_by`),
  KEY `cred_update_by` (`updated_by`),
  CONSTRAINT `cred_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `cred_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials_master`
--

LOCK TABLES `credentials_master` WRITE;
/*!40000 ALTER TABLE `credentials_master` DISABLE KEYS */;
INSERT INTO `credentials_master` VALUES (1,'md5',1,'2021-02-03 10:07:42',1,'2021-03-03 09:45:54','127.0.0.1','Y'),(2,'sha1',1,'2021-02-09 12:47:41',1,'2021-02-19 13:29:49','127.0.0.1','Y'),(3,'HashKey',1,'2021-03-02 12:47:04',1,'2021-03-05 11:04:40','192.168.1.1','Y');
/*!40000 ALTER TABLE `credentials_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degrees_master`
--

DROP TABLE IF EXISTS `degrees_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degrees_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `degrees_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `degree_create_by` (`created_by`),
  KEY `degree_update_by` (`updated_by`),
  CONSTRAINT `degree_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `degree_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degrees_master`
--

LOCK TABLES `degrees_master` WRITE;
/*!40000 ALTER TABLE `degrees_master` DISABLE KEYS */;
INSERT INTO `degrees_master` VALUES (1,'DO',1,'2021-02-03 10:07:42',1,'2021-02-19 13:21:32','127.0.0.1','Y'),(2,'MD',1,'2021-02-10 08:34:16',1,'2021-02-19 13:20:53','0.0.0.0.0','Y'),(3,'MBBS',1,'2021-03-02 11:47:38',1,'2021-03-02 12:23:37','192.168.1.1','Y'),(4,'BMBS',1,'2021-03-02 12:26:43',1,'2021-03-08 05:19:22','192.168.1.1','Y');
/*!40000 ALTER TABLE `degrees_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosis_master`
--

DROP TABLE IF EXISTS `diagnosis_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosis_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dia_create` (`created_by`),
  KEY `dia_update` (`updated_by`),
  CONSTRAINT `dia_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `dia_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis_master`
--

LOCK TABLES `diagnosis_master` WRITE;
/*!40000 ALTER TABLE `diagnosis_master` DISABLE KEYS */;
INSERT INTO `diagnosis_master` VALUES (1,'test1',1,'2021-02-23 06:49:16',1,'2021-02-23 11:32:25','0.0.0.0','Y'),(2,'test2',1,'2021-02-25 06:29:11',1,'2021-02-25 06:29:11','192.168.1.198','Y'),(4,'test3',1,'2021-02-25 07:13:47',1,'2021-02-25 07:13:47','192.168.1.198','Y'),(5,'test4',1,'2021-02-25 07:15:37',1,'2021-02-25 07:15:37','192.168.1.198','Y'),(6,'test5',1,'2021-02-25 08:07:20',1,'2021-02-25 08:07:20','192.168.1.198','Y'),(7,'test6',1,'2021-02-25 10:56:52',1,'2021-03-05 09:55:59','192.168.1.198','Y');
/*!40000 ALTER TABLE `diagnosis_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_master`
--

DROP TABLE IF EXISTS `event_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_create` (`created_by`),
  KEY `event_update` (`updated_by`),
  CONSTRAINT `event_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `event_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_master`
--

LOCK TABLES `event_master` WRITE;
/*!40000 ALTER TABLE `event_master` DISABLE KEYS */;
INSERT INTO `event_master` VALUES (3,'event 2',1,'2021-02-27 11:30:24',1,'2021-02-27 11:30:24','122.170.170.24','Y',NULL),(5,'ads 12',1,'2021-03-05 10:25:26',1,'2021-03-05 10:25:40','192.168.1.89','N',NULL);
/*!40000 ALTER TABLE `event_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities_master`
--

DROP TABLE IF EXISTS `facilities_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilities_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facilities_name` varchar(255) NOT NULL,
  `facilities_description` text,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `face_create_id` (`created_by`),
  KEY `face_update_id` (`updated_by`),
  CONSTRAINT `face_create_id` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `face_update_id` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities_master`
--

LOCK TABLES `facilities_master` WRITE;
/*!40000 ALTER TABLE `facilities_master` DISABLE KEYS */;
INSERT INTO `facilities_master` VALUES (1,'test facilities','facilities description',1,'2021-02-03 10:07:42',1,'2021-02-03 10:07:42','127.0.0.1'),(2,'test facility 2','test facility desc 2',1,'2021-02-06 16:13:48',1,'2021-02-06 11:43:41','127.0.0.1');
/*!40000 ALTER TABLE `facilities_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_master`
--

DROP TABLE IF EXISTS `faq_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `answers` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_create_by` (`created_by`),
  KEY `faq_update_by` (`updated_by`),
  CONSTRAINT `faq_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `faq_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_master`
--

LOCK TABLES `faq_master` WRITE;
/*!40000 ALTER TABLE `faq_master` DISABLE KEYS */;
INSERT INTO `faq_master` VALUES (1,'question?','answers',1,'2021-02-03 10:07:42',1,'2021-02-03 10:07:42','Y','127.0.0.1');
/*!40000 ALTER TABLE `faq_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hnp_diagnosis`
--

DROP TABLE IF EXISTS `hnp_diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hnp_diagnosis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis_id` int(11) NOT NULL,
  `hnp_id` int(11) NOT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `note` text,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_hnp_diagnosis_hnp_id_idx` (`hnp_id`),
  KEY `fk_hnp_diagnosis_diagnosis_id_idx` (`diagnosis_id`),
  KEY `fk_hnp_diagnosis_created_by_idx` (`created_by`),
  KEY `fk_hnp_diagnosis_updated_by_idx` (`updated_by`),
  KEY `fk_hnp_diagnosis_company_id_idx` (`company_id`),
  CONSTRAINT `fk_hnp_diagnosis_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hnp_diagnosis_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hnp_diagnosis_diagnosis_id` FOREIGN KEY (`diagnosis_id`) REFERENCES `diagnosis_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hnp_diagnosis_hnp_id` FOREIGN KEY (`hnp_id`) REFERENCES `hnp_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hnp_diagnosis_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hnp_diagnosis`
--

LOCK TABLES `hnp_diagnosis` WRITE;
/*!40000 ALTER TABLE `hnp_diagnosis` DISABLE KEYS */;
INSERT INTO `hnp_diagnosis` VALUES (50,2,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,7,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `hnp_diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hnp_history`
--

DROP TABLE IF EXISTS `hnp_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hnp_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hnp_id` int(11) NOT NULL,
  `location` enum('Upper','Lower','Upper_Lower') NOT NULL,
  `side` enum('Left','Right','Bilateral') NOT NULL,
  `weakness_type` int(11) DEFAULT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `diagnosis_id` int(11) DEFAULT NULL,
  `previous_surgeries` enum('Spine','Lumbar','Cervical') NOT NULL,
  `other_previous_surgeries` int(11) DEFAULT NULL,
  `implants` enum('Yes','No') NOT NULL,
  `implants_details` varchar(255) DEFAULT NULL,
  `consent` enum('Yes','No') NOT NULL,
  `consent_details` varchar(255) DEFAULT NULL,
  `seizures` enum('Yes','No') NOT NULL,
  `seizures_details` varchar(255) DEFAULT NULL,
  `seizures_date` datetime DEFAULT NULL,
  `seizures_medications` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hnp_history_hnp` (`hnp_id`),
  KEY `hnp_history_issue` (`issue_id`),
  KEY `hnp_history_dia` (`diagnosis_id`),
  KEY `hnp_history_create` (`created_by`),
  KEY `hnp_history_update` (`updated_by`),
  KEY `hnp_history_weak` (`weakness_type`),
  CONSTRAINT `hnp_history_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `hnp_history_dia` FOREIGN KEY (`diagnosis_id`) REFERENCES `diagnosis_master` (`id`),
  CONSTRAINT `hnp_history_hnp` FOREIGN KEY (`hnp_id`) REFERENCES `hnp_master` (`id`),
  CONSTRAINT `hnp_history_issue` FOREIGN KEY (`issue_id`) REFERENCES `issues_master` (`id`),
  CONSTRAINT `hnp_history_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `hnp_history_weak` FOREIGN KEY (`weakness_type`) REFERENCES `weakness_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hnp_history`
--

LOCK TABLES `hnp_history` WRITE;
/*!40000 ALTER TABLE `hnp_history` DISABLE KEYS */;
INSERT INTO `hnp_history` VALUES (8,22,'Lower','Right',NULL,NULL,NULL,'Lumbar',3,'Yes','test1','Yes','sdf','Yes','test1','2021-02-26 00:00:00','asddsf',1,'2021-02-25 08:07:21',1,'2021-03-08 06:54:40','192.168.1.1');
/*!40000 ALTER TABLE `hnp_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hnp_issue`
--

DROP TABLE IF EXISTS `hnp_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hnp_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hnp_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hnp_issue_id` (`issue_id`),
  KEY `hnp_issue_hnp_id` (`hnp_id`),
  CONSTRAINT `hnp_issue_hnp_id` FOREIGN KEY (`hnp_id`) REFERENCES `hnp_master` (`id`),
  CONSTRAINT `hnp_issue_id` FOREIGN KEY (`issue_id`) REFERENCES `issues_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hnp_issue`
--

LOCK TABLES `hnp_issue` WRITE;
/*!40000 ALTER TABLE `hnp_issue` DISABLE KEYS */;
INSERT INTO `hnp_issue` VALUES (34,22,1),(35,22,2);
/*!40000 ALTER TABLE `hnp_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hnp_master`
--

DROP TABLE IF EXISTS `hnp_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hnp_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `height` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hnp_master_create` (`created_by`),
  KEY `hnp_master_update` (`updated_by`),
  KEY `hnp_master_patient` (`patient_id`),
  KEY `fk_hnp_master_company_id_idx` (`company_id`),
  CONSTRAINT `fk_hnp_master_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hnp_master_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `hnp_master_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient_master` (`id`),
  CONSTRAINT `hnp_master_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hnp_master`
--

LOCK TABLES `hnp_master` WRITE;
/*!40000 ALTER TABLE `hnp_master` DISABLE KEYS */;
INSERT INTO `hnp_master` VALUES (22,45,'6\'4','50',1,'2021-02-25 08:07:20',1,'2021-03-08 06:54:39','192.168.1.1',NULL);
/*!40000 ALTER TABLE `hnp_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hnp_weakness`
--

DROP TABLE IF EXISTS `hnp_weakness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hnp_weakness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weakness_id` int(11) NOT NULL,
  `hnp_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hnp_weak_weakness_id` (`weakness_id`),
  KEY `hnp_weak_hnp_id` (`hnp_id`),
  CONSTRAINT `hnp_weak_hnp_id` FOREIGN KEY (`hnp_id`) REFERENCES `hnp_master` (`id`),
  CONSTRAINT `hnp_weak_weakness_id` FOREIGN KEY (`weakness_id`) REFERENCES `weakness_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hnp_weakness`
--

LOCK TABLES `hnp_weakness` WRITE;
/*!40000 ALTER TABLE `hnp_weakness` DISABLE KEYS */;
INSERT INTO `hnp_weakness` VALUES (33,1,22),(34,2,22);
/*!40000 ALTER TABLE `hnp_weakness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_image`
--

DROP TABLE IF EXISTS `hospital_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(11) DEFAULT NULL,
  `hospital_image` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_image`
--

LOCK TABLES `hospital_image` WRITE;
/*!40000 ALTER TABLE `hospital_image` DISABLE KEYS */;
INSERT INTO `hospital_image` VALUES (1,10,'1613823652.jpg',1,'2021-02-20 12:22:47',1,'2021-02-20 12:22:47','192.168.1.1'),(2,11,'1614685818.jpg',1,'2021-03-02 11:51:16',1,'2021-03-02 11:51:16','192.168.1.1'),(3,12,'1614689204.jpg',1,'2021-03-02 12:46:44',1,'2021-03-02 12:46:44','192.168.1.1'),(4,13,'NULL',1,'2021-03-05 10:51:48',1,'2021-03-05 10:51:48','192.168.1.89'),(5,14,'NULL',1,'2021-03-05 10:58:21',1,'2021-03-05 10:58:21','192.168.1.89'),(6,15,'NULL',1,'2021-03-05 11:00:06',1,'2021-03-05 11:00:06','192.168.1.198');
/*!40000 ALTER TABLE `hospital_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_master`
--

DROP TABLE IF EXISTS `hospital_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_user_name` text,
  `hospital_address` text,
  `country_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `hospital_contact` varchar(11) DEFAULT NULL,
  `hospital_email` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_master`
--

LOCK TABLES `hospital_master` WRITE;
/*!40000 ALTER TABLE `hospital_master` DISABLE KEYS */;
INSERT INTO `hospital_master` VALUES (1,'test hospital','test hospital','test address',1,1,NULL,1,NULL,NULL,1,'2021-02-02 12:53:36',1,'2021-03-05 09:21:10','123.123.323','Y'),(2,'hospital','hospital','test hospital address',2,3,NULL,1,'7414562389','asd@gmail.com',1,'2021-02-03 10:07:42',1,'2021-03-05 10:58:58','127.0.0.1','N'),(14,'Cadila','Cadila',NULL,2,3,1,10,'7894561230','xceltec@admin.in',1,'2021-03-05 10:57:30',1,'2021-03-05 10:58:21','192.168.1.89',NULL);
/*!40000 ALTER TABLE `hospital_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues_master`
--

DROP TABLE IF EXISTS `issues_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issues_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) NOT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_create` (`created_by`),
  KEY `issue_update` (`updated_by`),
  CONSTRAINT `issue_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `issue_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues_master`
--

LOCK TABLES `issues_master` WRITE;
/*!40000 ALTER TABLE `issues_master` DISABLE KEYS */;
INSERT INTO `issues_master` VALUES (1,'test issues',1,'2021-02-23 06:52:53',1,'2021-02-23 06:52:59','0.0.0.0','Y'),(2,'asasasasas',1,'2021-02-25 06:28:53',1,'2021-03-05 09:50:51','192.168.1.198','Y');
/*!40000 ALTER TABLE `issues_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leg_master`
--

DROP TABLE IF EXISTS `leg_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leg_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `display_name` int(11) NOT NULL,
  `leg_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leg_create` (`created_by`),
  KEY `leg_update` (`updated_by`),
  CONSTRAINT `leg_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `leg_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leg_master`
--

LOCK TABLES `leg_master` WRITE;
/*!40000 ALTER TABLE `leg_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `leg_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  `is_delete` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Patient Management','fa fa-user','Y','N'),(2,'Master Management','fa fa-user','Y','N'),(3,'Vehicle mangement','fas fa-car','Y','N'),(4,'Reports','fa fa-file','Y','N');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalities_master`
--

DROP TABLE IF EXISTS `modalities_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalities_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `needles_id` int(11) NOT NULL,
  `modalities_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modalites_need` (`needles_id`),
  KEY `modalites_create` (`created_by`),
  KEY `modalites_update` (`updated_by`),
  CONSTRAINT `modalites_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `modalites_need` FOREIGN KEY (`needles_id`) REFERENCES `users` (`id`),
  CONSTRAINT `modalites_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalities_master`
--

LOCK TABLES `modalities_master` WRITE;
/*!40000 ALTER TABLE `modalities_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `modalities_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modality_master`
--

DROP TABLE IF EXISTS `modality_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modality_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modality_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modality_create` (`created_by`),
  KEY `modality_update` (`updated_by`),
  CONSTRAINT `modality_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `modality_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modality_master`
--

LOCK TABLES `modality_master` WRITE;
/*!40000 ALTER TABLE `modality_master` DISABLE KEYS */;
INSERT INTO `modality_master` VALUES (2,'T04',1,'2021-02-26 07:08:59',1,'2021-02-26 07:08:59','192.168.1.198','Y'),(3,'MEP',1,'2021-02-26 07:09:08',1,'2021-03-05 09:59:44','192.168.1.198','N'),(4,'SSEP',1,'2021-02-26 07:09:18',1,'2021-02-27 06:13:39','192.168.1.198','Y'),(5,'EMG',1,'2021-02-26 07:09:26',1,'2021-03-05 09:58:51','192.168.1.198','Y'),(6,'ASD',1,'2021-03-05 09:59:21',1,'2021-03-05 09:59:41','192.168.1.89','N');
/*!40000 ALTER TABLE `modality_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_create_by` (`created_by`),
  KEY `module_update_by` (`updated_by`),
  CONSTRAINT `module_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `module_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (2,1,NULL,'index','userrole','User Role','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(5,3,NULL,'index','site-configuration','Site Configuration','fa fa-cog',NULL,NULL,NULL,NULL,'Y',NULL),(10,4,NULL,'index','content-management','Content Management','fa fa-th-list',NULL,NULL,NULL,NULL,'Y',NULL),(21,5,1,'index','patient','Patient List','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(22,2,NULL,'index','user','User Management','fa fa-users',NULL,NULL,NULL,NULL,'Y',NULL),(23,6,1,'import','patient','Patient Import','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(24,7,1,'snp','patient','Patient To SNP','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(25,8,2,'index','region','Region Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(26,9,NULL,'index','appointment','Appointment','fa fa-calendar',NULL,NULL,NULL,NULL,'Y',NULL),(27,10,2,'index','specialities-master','Specialities Master',NULL,NULL,NULL,NULL,NULL,'Y',NULL),(28,11,2,'index','degrees','Degree Master',NULL,NULL,NULL,NULL,NULL,'Y',NULL),(29,12,2,'index','hospital','Hospital Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(30,13,2,'index','credential','Credentials Master',NULL,NULL,NULL,NULL,NULL,'Y',NULL),(31,14,2,'index','country','Country Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(32,15,2,'index','surgeon','Surgeon Master',NULL,NULL,NULL,NULL,NULL,'Y',NULL),(33,16,2,'index','state','State Master',NULL,NULL,NULL,NULL,NULL,'Y',NULL),(34,17,2,'index','city','City Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(35,18,1,'doctor','patient','Patient To Doctor','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(36,19,1,'todaycase','patient','TodayCase','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(37,20,2,'index','issue','Issues Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(38,21,2,'index','diagnosis','Diagnosis Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(39,22,2,'index','weakness','Weakness Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(40,23,NULL,'index','hnp','HNP Module','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(41,24,2,'index','modality','Modality Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(42,25,2,'index','baseline','Baseline Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(43,26,2,'index','signal-change','Signal Change Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(44,27,2,'index','array','Array Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(45,28,2,'index','event','Event Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(46,29,2,'index','nerves-type','Nerves Type Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(47,30,2,'index','nerves','Nerves Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(48,31,2,'index','quad','Quad Master','fa fa-user',NULL,NULL,NULL,NULL,'Y',NULL),(49,32,NULL,'index','alert-classification','Alert Classification','fa fa-cog',NULL,NULL,NULL,NULL,'Y',NULL);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_actions`
--

DROP TABLE IF EXISTS `module_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_action` (`module_id`),
  KEY `module_action_action` (`action_id`),
  KEY `module_action_create` (`created_by`),
  KEY `module_action_update` (`updated_by`),
  CONSTRAINT `module_action` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`),
  CONSTRAINT `module_action_action` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`),
  CONSTRAINT `module_action_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `module_action_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_actions`
--

LOCK TABLES `module_actions` WRITE;
/*!40000 ALTER TABLE `module_actions` DISABLE KEYS */;
INSERT INTO `module_actions` VALUES (11,5,1,1,'2019-09-20 05:19:56',1,'2019-09-20 05:19:56','Y',NULL),(12,5,3,1,'2019-09-20 05:19:56',1,'2019-09-20 05:19:56','Y',NULL),(13,5,4,1,'2019-09-20 05:19:56',1,'2019-09-20 05:19:56','Y',NULL),(14,5,5,1,'2019-09-20 05:19:56',1,'2019-09-20 05:19:56','Y',NULL),(15,5,6,1,'2019-09-20 05:19:56',1,'2019-09-20 05:19:56','Y',NULL),(31,2,1,1,'2019-09-20 11:50:03',1,'2019-09-20 11:50:03','Y',NULL),(32,2,3,1,'2019-09-20 11:50:03',1,'2019-09-20 11:50:03','Y',NULL),(33,2,4,1,'2019-09-20 11:50:03',1,'2019-09-20 11:50:03','Y',NULL),(34,2,5,1,'2019-09-20 11:50:03',1,'2019-09-20 11:50:03','Y',NULL),(35,2,6,1,'2019-09-20 11:50:03',1,'2019-09-20 11:50:03','Y',NULL),(36,10,1,1,'2019-09-20 13:33:27',1,'2019-10-07 05:44:40','Y',NULL),(37,10,3,1,'2019-09-20 13:33:27',1,'2019-10-07 05:44:40','Y',NULL),(38,10,4,1,'2019-09-20 13:33:27',1,'2019-10-07 05:44:40','Y',NULL),(39,10,5,1,'2019-09-20 13:33:27',1,'2019-10-07 05:44:40','Y',NULL),(40,10,6,1,'2019-09-20 13:33:27',1,'2019-10-07 05:44:40','Y',NULL),(41,10,2,1,'2021-03-10 06:34:03',1,'2021-03-10 06:34:09','Y',NULL),(290,21,1,1,'2021-02-08 10:14:15',1,'2021-02-08 10:14:21','Y',NULL),(291,21,2,1,'2021-02-08 10:14:42',1,'2021-02-08 10:14:46','Y',NULL),(292,21,3,1,'2021-02-08 10:15:02',1,'2021-02-08 10:15:07','Y',NULL),(293,21,4,1,'2021-02-08 10:15:22',1,'2021-02-08 10:15:30','Y',NULL),(294,21,5,1,'2021-02-08 10:16:10',1,'2021-02-08 10:16:16','Y',NULL),(295,21,6,1,'2021-02-08 10:16:31',1,'2021-02-08 10:16:35','Y',NULL),(296,22,1,1,'2021-02-09 11:52:58',1,'2021-02-09 11:53:03','Y',NULL),(297,22,2,1,'2021-02-09 11:53:21',1,'2021-02-09 11:53:23','Y',NULL),(298,22,3,1,'2021-02-09 11:53:41',1,'2021-02-09 11:53:46','Y',NULL),(299,22,4,1,'2021-02-09 11:54:00',1,'2021-02-09 11:54:04','Y',NULL),(300,22,5,1,'2021-02-09 11:54:19',1,'2021-02-09 11:54:24','Y',NULL),(301,22,6,1,'2021-02-09 11:54:38',1,'2021-02-09 11:54:42','Y',NULL),(302,23,3,1,'2021-02-18 07:18:24',1,'2021-02-18 07:18:29','Y',NULL),(303,24,3,1,'2021-02-18 07:18:50',1,'2021-02-18 07:18:55','Y',NULL),(305,25,1,1,'2021-02-26 07:32:19',1,'2021-02-26 07:32:23','Y',NULL),(306,25,2,1,'2021-02-26 12:03:46',1,'2021-02-26 07:33:43','Y',NULL),(307,25,3,1,'2021-02-26 07:34:01',1,'2021-02-26 07:34:06','Y',NULL),(308,25,4,1,'2021-02-26 07:34:24',1,'2021-02-26 07:34:29','Y',NULL),(309,25,5,1,'2021-02-26 07:34:45',1,'2021-02-26 07:34:49','Y',NULL),(310,27,1,1,'2021-02-26 07:35:34',1,'2021-02-26 07:35:39','Y',NULL),(311,27,2,1,'2021-02-26 07:35:54',1,'2021-02-26 07:35:59','Y',NULL),(312,27,3,1,'2021-02-26 07:40:33',1,'2021-02-26 07:40:37','Y',NULL),(313,27,4,1,'2021-02-26 07:40:52',1,'2021-02-26 07:40:56','Y',NULL),(314,27,5,1,'2021-02-26 07:41:21',1,'2021-02-26 07:41:25','Y',NULL),(315,28,1,1,'2021-02-27 11:30:13',1,'2021-02-27 11:30:17','Y',NULL),(316,28,2,1,'2021-02-27 11:30:44',1,'2021-02-27 11:30:49','Y',NULL),(317,28,3,1,'2021-02-27 11:31:07',1,'2021-02-27 11:31:12','Y',NULL),(318,28,4,1,'2021-02-27 11:31:31',1,'2021-02-27 11:31:36','Y',NULL),(319,28,5,1,'2021-02-27 11:31:54',1,'2021-02-27 11:31:58','Y',NULL),(320,29,1,1,'2021-02-27 11:33:50',1,'2021-02-27 11:33:53','Y',NULL),(321,29,2,1,'2021-02-27 11:34:18',1,'2021-02-27 11:34:21','Y',NULL),(322,29,3,1,'2021-02-27 11:34:38',1,'2021-02-27 11:34:40','Y',NULL),(323,29,4,1,'2021-02-27 11:35:00',1,'2021-02-27 11:35:03','Y',NULL),(324,29,5,1,'2021-02-27 11:35:19',1,'2021-02-27 11:35:24','Y',NULL),(325,30,1,1,'2021-02-27 11:35:46',1,'2021-02-27 11:35:50','Y',NULL),(326,30,2,1,'2021-02-27 11:36:06',1,'2021-02-27 11:36:11','Y',NULL),(327,30,3,1,'2021-02-27 11:36:28',1,'2021-02-27 11:36:33','Y',NULL),(328,30,4,1,'2021-02-27 11:36:47',1,'2021-02-27 11:36:51','Y',NULL),(329,30,5,1,'2021-02-27 11:37:07',1,'2021-02-27 11:37:11','Y',NULL),(330,31,1,1,'2021-02-27 11:37:28',1,'2021-02-27 11:37:32','Y',NULL),(331,31,2,1,'2021-02-27 11:37:48',1,'2021-02-27 11:37:51','Y',NULL),(332,31,3,1,'2021-02-27 11:38:07',1,'2021-02-27 11:38:11','Y',NULL),(333,31,4,1,'2021-02-27 11:38:25',1,'2021-02-27 11:38:28','Y',NULL),(334,31,5,1,'2021-02-27 11:38:42',1,'2021-02-27 11:38:44','Y',NULL),(335,32,1,1,'2021-02-27 11:38:58',1,'2021-02-27 11:39:01','Y',NULL),(336,32,2,1,'2021-02-27 11:39:17',1,'2021-02-27 11:39:20','Y',NULL),(337,32,3,1,'2021-02-27 11:39:33',1,'2021-02-27 11:39:35','Y',NULL),(338,32,4,1,'2021-02-27 11:39:46',1,'2021-02-27 11:39:48','Y',NULL),(339,32,5,1,'2021-02-27 11:40:00',1,'2021-02-27 11:40:02','Y',NULL),(340,33,1,1,'2021-02-27 11:40:17',1,'2021-02-27 11:40:19','Y',NULL),(341,33,2,1,'2021-02-27 11:40:32',1,'2021-02-27 11:40:35','Y',NULL),(342,33,3,1,'2021-02-27 11:40:47',1,'2021-02-27 11:40:50','Y',NULL),(343,33,4,1,'2021-02-27 11:41:02',1,'2021-02-27 11:41:04','Y',NULL),(344,33,5,1,'2021-02-27 11:41:18',1,'2021-02-27 11:41:21','Y',NULL),(345,34,1,1,'2021-02-27 11:41:34',1,'2021-02-27 11:41:36','Y',NULL),(346,34,2,1,'2021-02-27 11:41:47',1,'2021-02-27 11:41:50','Y',NULL),(347,34,3,1,'2021-02-27 11:42:01',1,'2021-02-27 11:42:04','Y',NULL),(348,34,4,1,'2021-02-27 11:42:15',1,'2021-02-27 11:42:18','Y',NULL),(349,34,5,1,'2021-02-27 11:42:32',1,'2021-02-27 11:42:34','Y',NULL),(350,35,1,1,'2021-02-27 11:43:05',1,'2021-02-27 11:43:07','Y',NULL),(351,35,2,1,'2021-02-27 11:43:18',1,'2021-02-27 11:43:21','Y',NULL),(352,35,3,1,'2021-02-27 11:43:34',1,'2021-02-27 11:43:36','Y',NULL),(353,35,4,1,'2021-02-27 11:43:47',1,'2021-02-27 11:43:49','Y',NULL),(354,36,1,1,'2021-02-27 11:44:22',1,'2021-02-27 11:44:28','Y',NULL),(355,37,1,1,'2021-02-27 16:15:15',1,'2021-02-27 11:45:08','Y',NULL),(356,37,2,1,'2021-02-27 11:45:24',1,'2021-02-27 11:45:27','Y',NULL),(357,37,3,1,'2021-02-27 11:45:41',1,'2021-02-27 11:45:44','Y',NULL),(358,37,4,1,'2021-02-27 11:45:57',1,'2021-02-27 11:46:00','Y',NULL),(359,37,5,1,'2021-02-27 11:46:12',1,'2021-02-27 11:46:14','Y',NULL),(360,38,1,1,'2021-02-27 11:46:34',1,'2021-02-27 11:46:36','Y',NULL),(361,38,2,1,'2021-02-27 11:46:51',1,'2021-02-27 11:46:53','Y',NULL),(362,38,3,1,'2021-02-27 11:47:05',1,'2021-02-27 11:47:08','Y',NULL),(363,38,4,1,'2021-02-27 11:47:20',1,'2021-02-27 11:47:22','Y',NULL),(364,38,5,1,'2021-02-27 11:47:34',1,'2021-02-27 11:47:36','Y',NULL),(365,39,1,1,'2021-02-27 11:47:52',1,'2021-02-27 11:47:54','Y',NULL),(366,39,2,1,'2021-02-27 11:48:08',1,'2021-02-27 11:48:11','Y',NULL),(367,39,3,1,'2021-02-27 11:48:22',1,'2021-02-27 11:48:24','Y',NULL),(368,39,4,1,'2021-02-27 11:48:37',1,'2021-02-27 11:48:39','Y',NULL),(369,39,5,1,'2021-02-27 11:48:54',1,'2021-02-27 11:48:56','Y',NULL),(370,40,1,1,'2021-02-27 11:49:17',1,'2021-02-27 11:49:20','Y',NULL),(371,40,2,1,'2021-02-27 11:49:36',1,'2021-02-27 11:49:39','Y',NULL),(372,40,3,1,'2021-02-27 11:49:50',1,'2021-02-27 11:49:52','Y',NULL),(373,40,4,1,'2021-02-27 11:50:04',1,'2021-02-27 11:50:06','Y',NULL),(374,40,5,1,'2021-02-27 11:50:17',1,'2021-02-27 11:50:19','Y',NULL),(375,40,6,1,'2021-02-27 11:50:30',1,'2021-02-27 11:50:33','Y',NULL),(376,41,1,1,'2021-02-27 16:21:19',1,'2021-02-27 11:51:12','Y',NULL),(377,41,2,1,'2021-02-27 11:51:22',1,'2021-02-27 11:51:24','Y',NULL),(378,41,3,1,'2021-02-27 11:51:38',1,'2021-02-27 11:51:40','Y',NULL),(379,41,4,1,'2021-02-27 11:51:50',1,'2021-02-27 11:51:53','Y',NULL),(380,41,5,1,'2021-02-27 11:52:03',1,'2021-02-27 11:52:05','Y',NULL),(381,42,1,1,'2021-02-27 16:22:48',1,'2021-02-27 11:52:41','Y',NULL),(382,42,2,1,'2021-02-27 11:52:55',1,'2021-02-27 11:52:59','Y',NULL),(383,42,3,1,'2021-02-27 11:53:10',1,'2021-02-27 11:53:12','Y',NULL),(384,42,4,1,'2021-02-27 11:53:22',1,'2021-02-27 11:53:24','Y',NULL),(385,42,5,1,'2021-02-27 11:53:34',1,'2021-02-27 11:53:36','Y',NULL),(386,43,1,1,'2021-02-27 11:53:52',1,'2021-02-27 11:53:54','Y',NULL),(387,43,2,1,'2021-02-27 11:54:10',1,'2021-02-27 11:54:12','Y',NULL),(388,43,3,1,'2021-02-27 11:54:25',1,'2021-02-27 11:54:27','Y',NULL),(389,43,4,1,'2021-02-27 11:54:37',1,'2021-02-27 11:54:39','Y',NULL),(390,43,5,1,'2021-02-27 11:54:51',1,'2021-02-27 11:54:55','Y',NULL),(391,44,1,1,'2021-02-27 11:55:10',1,'2021-02-27 11:55:12','Y',NULL),(392,44,2,1,'2021-02-27 11:55:27',1,'2021-02-27 11:55:30','Y',NULL),(393,44,3,1,'2021-02-27 11:55:45',1,'2021-02-27 11:55:48','Y',NULL),(394,44,4,1,'2021-02-27 11:56:02',1,'2021-02-27 11:56:04','Y',NULL),(395,44,5,1,'2021-02-27 11:56:22',1,'2021-02-27 11:56:24','Y',NULL),(396,45,1,1,'2021-02-27 11:56:41',1,'2021-02-27 11:56:44','Y',NULL),(397,45,2,1,'2021-02-27 11:56:55',1,'2021-02-27 11:56:58','Y',NULL),(398,46,3,1,'2021-02-27 11:57:14',1,'2021-02-27 11:57:17','Y',NULL),(399,46,4,1,'2021-02-27 11:57:29',1,'2021-02-27 11:57:33','Y',NULL),(400,46,5,1,'2021-02-27 11:57:46',1,'2021-02-27 11:57:48','Y',NULL),(401,47,1,1,'2021-02-27 11:58:10',1,'2021-02-27 11:58:13','Y',NULL),(402,47,2,1,'2021-02-27 11:58:24',1,'2021-02-27 11:58:26','Y',NULL),(403,47,3,1,'2021-02-27 11:58:38',1,'2021-02-27 11:58:41','Y',NULL),(404,47,4,1,'2021-02-27 11:58:54',1,'2021-02-27 11:58:56','Y',NULL),(405,47,5,1,'2021-02-27 11:59:14',1,'2021-02-27 11:59:16','Y',NULL),(406,48,1,1,'2021-02-27 11:59:35',1,'2021-02-27 11:59:40','Y',NULL),(407,48,2,1,'2021-02-27 11:59:54',1,'2021-02-27 11:59:56','Y',NULL),(408,48,3,1,'2021-02-27 12:00:09',1,'2021-02-27 12:00:12','Y',NULL),(409,48,4,1,'2021-02-27 12:00:25',1,'2021-02-27 12:00:27','Y',NULL),(410,48,5,1,'2021-02-27 12:00:40',1,'2021-02-27 12:00:43','Y',NULL),(411,49,6,1,'2021-02-27 12:00:59',1,'2021-02-27 12:01:02','Y',NULL),(412,45,3,1,'2021-02-27 12:04:13',1,'2021-02-27 12:04:16','Y',NULL),(413,45,4,1,'2021-02-27 12:04:27',1,'2021-02-27 12:04:30','Y',NULL),(414,45,5,1,'2021-02-27 12:04:41',1,'2021-02-27 12:04:44','Y',NULL),(415,26,6,1,'2021-02-27 12:05:14',1,'2021-02-27 12:05:16','Y',NULL),(416,24,1,1,'2021-03-10 14:27:00',1,'2021-03-10 14:27:07','Y',NULL),(417,24,2,1,'2021-03-10 14:27:00',1,'2021-03-10 14:27:07','Y',NULL),(418,24,4,1,'2021-03-10 14:27:00',1,'2021-03-10 14:27:07','Y',NULL),(419,24,5,1,'2021-03-10 14:27:00',1,'2021-03-10 14:27:07','Y',NULL),(420,35,5,1,'2021-03-10 14:52:15',1,'2021-03-10 14:52:20','Y',NULL);
/*!40000 ALTER TABLE `module_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `montages_master`
--

DROP TABLE IF EXISTS `montages_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `montages_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `needles_id` int(11) NOT NULL,
  `montages_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `montage_need` (`needles_id`),
  KEY `montage_create` (`created_by`),
  KEY `montage_update` (`updated_by`),
  CONSTRAINT `montage_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `montage_need` FOREIGN KEY (`needles_id`) REFERENCES `needles_master` (`id`),
  CONSTRAINT `montage_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `montages_master`
--

LOCK TABLES `montages_master` WRITE;
/*!40000 ALTER TABLE `montages_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `montages_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muscles_master`
--

DROP TABLE IF EXISTS `muscles_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muscles_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `needles_id` int(11) NOT NULL,
  `muscles_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `muscle_need` (`needles_id`),
  KEY `muscle_create` (`created_by`),
  KEY `muscle_update` (`updated_by`),
  CONSTRAINT `muscle_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `muscle_need` FOREIGN KEY (`needles_id`) REFERENCES `needles_master` (`id`),
  CONSTRAINT `muscle_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muscles_master`
--

LOCK TABLES `muscles_master` WRITE;
/*!40000 ALTER TABLE `muscles_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `muscles_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `needles_master`
--

DROP TABLE IF EXISTS `needles_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `needles_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `needles_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `need_create` (`created_by`),
  KEY `need_update` (`updated_by`),
  CONSTRAINT `need_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `need_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `needles_master`
--

LOCK TABLES `needles_master` WRITE;
/*!40000 ALTER TABLE `needles_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `needles_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nerves_master`
--

DROP TABLE IF EXISTS `nerves_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nerves_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nerves_type_id` int(11) NOT NULL,
  `nerves_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nerve_nerve_type` (`nerves_type_id`),
  KEY `nerve_create` (`created_by`),
  KEY `nerve_update` (`updated_by`),
  CONSTRAINT `nerve_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `nerve_nerve_type` FOREIGN KEY (`nerves_type_id`) REFERENCES `nerves_type_master` (`id`),
  CONSTRAINT `nerve_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nerves_master`
--

LOCK TABLES `nerves_master` WRITE;
/*!40000 ALTER TABLE `nerves_master` DISABLE KEYS */;
INSERT INTO `nerves_master` VALUES (1,3,'nerves 1',1,'2021-02-26 13:17:45',1,'2021-02-27 11:31:38','192.168.1.198','Y'),(2,2,'nerves 2',1,'2021-02-27 11:31:05',1,'2021-02-27 11:31:05','122.170.170.24','Y'),(3,2,'nerves 3',1,'2021-02-27 11:31:54',1,'2021-03-05 10:29:41','122.170.170.24','Y'),(5,4,'remu',1,'2021-03-05 10:30:12',1,'2021-03-05 10:30:12','192.168.1.89','Y');
/*!40000 ALTER TABLE `nerves_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nerves_type_master`
--

DROP TABLE IF EXISTS `nerves_type_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nerves_type_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nerves_type` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nerve_type_create` (`created_by`),
  KEY `nerve_type_update` (`updated_by`),
  CONSTRAINT `nerve_type_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `nerve_type_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nerves_type_master`
--

LOCK TABLES `nerves_type_master` WRITE;
/*!40000 ALTER TABLE `nerves_type_master` DISABLE KEYS */;
INSERT INTO `nerves_type_master` VALUES (2,'test nerves type 1',1,'2021-02-26 12:41:43',1,'2021-03-05 10:26:37','122.170.66.189','Y'),(3,'test 2',1,'2021-02-26 13:22:17',1,'2021-03-05 10:26:25','192.168.1.198','N'),(4,'ams',1,'2021-03-05 10:26:50',1,'2021-03-05 10:27:09','192.168.1.89','Y');
/*!40000 ALTER TABLE `nerves_type_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_master`
--

DROP TABLE IF EXISTS `notification_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_type` enum('petient','doctor','all') NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `not_create_by` (`created_by`),
  KEY `not_update_by` (`updated_by`),
  CONSTRAINT `not_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `not_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_master`
--

LOCK TABLES `notification_master` WRITE;
/*!40000 ALTER TABLE `notification_master` DISABLE KEYS */;
INSERT INTO `notification_master` VALUES (1,'title','message','all',1,'2021-02-03 10:07:42',1,'2021-02-03 10:07:42','Y','127.0.0.1');
/*!40000 ALTER TABLE `notification_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_master`
--

DROP TABLE IF EXISTS `otp_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `is_verify` enum('Y','N') NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `otp_user` (`user_id`),
  KEY `otp_create_by` (`created_by`),
  KEY `otp_update_by` (`updated_by`),
  CONSTRAINT `otp_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `otp_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `otp_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_master`
--

LOCK TABLES `otp_master` WRITE;
/*!40000 ALTER TABLE `otp_master` DISABLE KEYS */;
INSERT INTO `otp_master` VALUES (1,1,'1234','Y',1,'2021-02-03 10:07:42',1,'2021-02-03 10:07:42','127.0.0.1');
/*!40000 ALTER TABLE `otp_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outcomes_master`
--

DROP TABLE IF EXISTS `outcomes_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outcomes_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `petient_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `extremity_deficit` varchar(255) DEFAULT NULL,
  `left_arm_summary` varchar(255) DEFAULT NULL,
  `right_arm_summary` varchar(255) DEFAULT NULL,
  `summary` text,
  PRIMARY KEY (`id`),
  KEY `out_patient` (`petient_id`),
  KEY `out_create` (`created_by`),
  KEY `out_update` (`updated_by`),
  KEY `out_company_id_idx` (`company_id`),
  CONSTRAINT `out_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `out_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `out_patient` FOREIGN KEY (`petient_id`) REFERENCES `patient_master` (`id`),
  CONSTRAINT `out_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outcomes_master`
--

LOCK TABLES `outcomes_master` WRITE;
/*!40000 ALTER TABLE `outcomes_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `outcomes_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('xceltec@admin.com','8aafaa6e763bcc75d50f05a830d2605b','2021-03-05 09:37:38'),('ronak.parmar@xceltec.in','b25b810dd752821476f9fec70ab5b16c','2021-03-05 09:44:25'),('ravi.ipopsolution@gmail.com','060e07044cf8312467b67b41971c2851','2021-03-06 04:54:48'),('ronak.parmar@xceltec.in','fe3ea4548d6b30dc92dc63ad571c660b','2021-03-06 10:54:36'),('rmail11@mailinator.com','72ffd122b65d306e783f6821ed88f183','2021-03-08 08:12:22'),('dhruvbro@mailinator.com','e888aa23c9e9f1cbe535951ab78c0742','2021-03-08 09:37:52'),('prince11@mailinator.com','de48870ed5c6ddc75c2834fe3c4183b2','2021-03-12 07:43:05'),('tushar@mailinator.com','69677d2a8515738f75d76556eca7a787','2021-03-12 07:46:51');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_case_type`
--

DROP TABLE IF EXISTS `patient_case_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_case_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_case_case` (`case_id`),
  KEY `patient_case_create` (`created_by`),
  KEY `patient_case_update` (`updated_by`),
  KEY `fk_patient_case_type_company_id_idx` (`company_id`),
  CONSTRAINT `fk_patient_case_type_cmp_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `patient_case_case` FOREIGN KEY (`case_id`) REFERENCES `case_type` (`id`),
  CONSTRAINT `patient_case_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `patient_case_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_case_type`
--

LOCK TABLES `patient_case_type` WRITE;
/*!40000 ALTER TABLE `patient_case_type` DISABLE KEYS */;
INSERT INTO `patient_case_type` VALUES (56,1,1,'2021-02-24 12:50:05',1,'2021-02-24 12:50:05','192.168.1.182',45,NULL),(57,3,1,'2021-02-24 12:50:05',1,'2021-02-24 12:50:05','192.168.1.182',45,NULL),(58,4,1,'2021-02-24 12:50:06',1,'2021-02-24 12:50:06','192.168.1.182',45,NULL),(81,2,1,'2021-03-01 07:37:25',1,'2021-03-01 07:37:25','192.168.1.198',46,NULL),(82,3,1,'2021-03-01 07:37:25',1,'2021-03-01 07:37:25','192.168.1.198',46,NULL),(95,2,1,'2021-03-02 06:20:05',1,'2021-03-02 06:20:05','192.168.1.198',48,NULL),(96,3,1,'2021-03-02 06:20:06',1,'2021-03-02 06:20:06','192.168.1.198',48,NULL),(97,4,1,'2021-03-02 06:20:06',1,'2021-03-02 06:20:06','192.168.1.198',48,NULL),(98,2,1,'2021-03-02 06:29:02',1,'2021-03-02 06:29:02','192.168.1.198',49,NULL),(137,4,1,'2021-03-03 14:42:20',1,'2021-03-03 14:42:20','192.168.1.1',50,NULL),(141,2,1,'2021-03-04 06:28:59',1,'2021-03-04 06:28:59','192.168.1.1',47,NULL),(165,2,1,'2021-03-05 06:32:49',1,'2021-03-05 06:32:49','192.168.1.198',31,NULL),(182,1,1,'2021-03-05 06:36:11',1,'2021-03-05 06:36:11','192.168.1.198',52,NULL),(183,5,1,'2021-03-05 06:36:11',1,'2021-03-05 06:36:11','192.168.1.198',52,NULL),(209,1,1,'2021-03-06 12:04:19',1,'2021-03-06 12:04:19','192.168.1.1',57,NULL),(213,4,1,'2021-03-06 12:05:06',1,'2021-03-06 12:05:06','192.168.1.1',56,NULL),(218,3,1,'2021-03-08 11:45:28',1,'2021-03-08 11:45:28','192.168.1.1',54,NULL),(219,4,1,'2021-03-08 11:45:28',1,'2021-03-08 11:45:28','192.168.1.1',54,NULL),(228,3,1,'2021-03-08 13:21:47',1,'2021-03-08 13:21:47','192.168.1.1',55,NULL),(233,2,1,'2021-03-09 04:20:50',1,'2021-03-09 04:20:50','192.168.1.1',59,NULL),(236,2,1,'2021-03-09 04:27:07',1,'2021-03-09 04:27:07','192.168.1.1',58,NULL),(237,4,1,'2021-03-09 04:27:07',1,'2021-03-09 04:27:07','192.168.1.1',58,NULL),(240,1,1,'2021-03-09 06:39:54',1,'2021-03-09 06:39:54','192.168.1.1',53,NULL),(241,3,1,'2021-03-09 06:39:54',1,'2021-03-09 06:39:54','192.168.1.1',53,NULL);
/*!40000 ALTER TABLE `patient_case_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_facilities`
--

DROP TABLE IF EXISTS `patient_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_facilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_fa_facility` (`facility_id`),
  KEY `patient_fa_create` (`created_by`),
  KEY `patient_fa_update` (`updated_by`),
  KEY `patient_fa_patient` (`patient_id`),
  KEY `fk_patient_facilities_company_id_idx` (`company_id`),
  CONSTRAINT `fk_patient_facilities_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `patient_fa_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `patient_fa_facility` FOREIGN KEY (`facility_id`) REFERENCES `facilities_master` (`id`),
  CONSTRAINT `patient_fa_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient_master` (`id`),
  CONSTRAINT `patient_fa_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_facilities`
--

LOCK TABLES `patient_facilities` WRITE;
/*!40000 ALTER TABLE `patient_facilities` DISABLE KEYS */;
INSERT INTO `patient_facilities` VALUES (25,45,1,1,'2021-02-24 12:50:05',1,'2021-02-24 12:50:05','192.168.1.182',NULL),(49,46,2,1,'2021-03-01 07:37:25',1,'2021-03-01 07:37:25','192.168.1.198',NULL),(54,48,1,1,'2021-03-02 06:20:05',1,'2021-03-02 06:20:05','192.168.1.198',NULL),(55,49,2,1,'2021-03-02 06:29:02',1,'2021-03-02 06:29:02','192.168.1.198',NULL),(101,50,2,1,'2021-03-03 14:42:19',1,'2021-03-03 14:42:19','192.168.1.1',NULL),(104,47,2,1,'2021-03-04 06:28:59',1,'2021-03-04 06:28:59','192.168.1.1',NULL),(116,31,2,1,'2021-03-05 06:32:49',1,'2021-03-05 06:32:49','192.168.1.198',NULL),(125,52,2,1,'2021-03-05 06:36:10',1,'2021-03-05 06:36:10','192.168.1.198',NULL),(147,57,2,1,'2021-03-06 12:04:19',1,'2021-03-06 12:04:19','192.168.1.1',NULL),(151,56,2,1,'2021-03-06 12:05:05',1,'2021-03-06 12:05:05','192.168.1.1',NULL),(154,54,2,1,'2021-03-08 11:45:28',1,'2021-03-08 11:45:28','192.168.1.1',NULL),(163,55,2,1,'2021-03-08 13:21:47',1,'2021-03-08 13:21:47','192.168.1.1',NULL),(168,59,2,1,'2021-03-09 04:20:50',1,'2021-03-09 04:20:50','192.168.1.1',NULL),(170,58,2,1,'2021-03-09 04:27:07',1,'2021-03-09 04:27:07','192.168.1.1',NULL),(172,53,1,1,'2021-03-09 06:39:53',1,'2021-03-09 06:39:53','192.168.1.1',NULL);
/*!40000 ALTER TABLE `patient_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_master`
--

DROP TABLE IF EXISTS `patient_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userrole_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) DEFAULT NULL,
  `country_code_name` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `patient_image` varchar(255) DEFAULT NULL,
  `npi` varchar(255) DEFAULT NULL,
  `emr_id` int(11) DEFAULT NULL,
  `pid` varchar(15) NOT NULL,
  `is_notification` enum('Y','N') NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `insurance_policy` varchar(255) DEFAULT NULL,
  `insurance_type` varchar(255) DEFAULT NULL,
  `patient_account` varchar(255) DEFAULT NULL,
  `medical_record` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL,
  `surgeon` int(11) NOT NULL,
  `date_of_procedure` datetime NOT NULL,
  `procedure` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `operator` int(11) NOT NULL,
  `reader` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_master_urole` (`userrole_id`),
  KEY `patient_master_country` (`country_id`),
  KEY `patient_master_state` (`state_id`),
  KEY `patient_master_city` (`city_id`),
  KEY `patient_master_region` (`region_id`),
  KEY `patient_master_create` (`created_by`),
  KEY `patient_master_update` (`updated_by`),
  KEY `patient_master_hospital` (`hospital_id`),
  KEY `fk_patient_master_company_id_idx` (`company_id`),
  CONSTRAINT `fk_patient_master_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `patient_master_city` FOREIGN KEY (`city_id`) REFERENCES `city_master` (`id`),
  CONSTRAINT `patient_master_country` FOREIGN KEY (`country_id`) REFERENCES `country_master` (`id`),
  CONSTRAINT `patient_master_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `patient_master_hospital` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_master` (`id`),
  CONSTRAINT `patient_master_region` FOREIGN KEY (`region_id`) REFERENCES `region_master` (`id`),
  CONSTRAINT `patient_master_state` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`id`),
  CONSTRAINT `patient_master_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `patient_master_urole` FOREIGN KEY (`userrole_id`) REFERENCES `user_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_master`
--

LOCK TABLES `patient_master` WRITE;
/*!40000 ALTER TABLE `patient_master` DISABLE KEYS */;
INSERT INTO `patient_master` VALUES (31,13,'pfirst','plast','Female',NULL,'testmail@gmail.com','12345','1970-01-01',24,NULL,NULL,'1234522890',NULL,'12',NULL,'123','Y','test address for patient','address 2 for patient',1,1,1,'123','test','test','1234','123',1,1,'1970-01-01 00:00:00','test','1 day','1970-01-01 00:00:00','1970-01-01 00:00:00',40,2,2,1,'2021-03-05 06:32:49',1,'2021-03-05 06:32:49','192.168.1.198','Y',NULL),(45,13,'Ravi','parmar','Male',NULL,'ravi.ipopsolution@gmail.com','12345','1996-03-01',23,NULL,NULL,'09898484123',NULL,'122',NULL,'','Y','sdf','dsfds',2,3,3,'123456','110AAvasd','dfsdf','dfdf','dsfdsf',1,123,'2021-03-03 00:00:00','test procedure','dfds','1970-01-01 00:00:00','1970-01-01 00:00:00',20,2,2,1,'2021-02-24 12:50:05',1,'2021-02-24 12:50:05','192.168.1.182','Y',NULL),(46,13,'smita','chuhan','Female',NULL,'smita@mailinator.com','12345','1996-10-02',-12,NULL,NULL,'98967687686866',NULL,'837287832',NULL,'','Y','ahmedabad','india',1,2,2,'380042','LIC','Health Insurance','7638y678478437827248732784728','342342342',1,12345,'2021-03-06 00:00:00','test','10','2022-07-01 10:30:00','2022-07-01 10:30:00',3,28,2,1,'2021-03-01 07:37:24',1,'2021-03-02 07:48:19','192.168.1.198','Y',NULL),(47,13,'smita','chauhan','Female',NULL,'smita@mailinator.com','12345','1996-02-10',-12,NULL,NULL,'98967687686866',NULL,'837287832',NULL,'12','Y','ahmedabad','india',2,3,6,'380042','LIC','Health Insurance','7638y678478437827248732784728','342342342',1,12345,'2022-01-07 00:00:00','test','10','2022-01-07 12:45:00','2022-01-07 12:45:00',33,32,2,1,'2021-03-04 06:28:59',1,'2021-03-04 06:28:59','192.168.1.1','Y',NULL),(48,13,'testr','testr','Male',NULL,'testr@gmail.com','12345','1998-06-10',22,NULL,NULL,'7894561230',NULL,NULL,NULL,'123','Y','test adressr','test address 2',1,1,1,'364521','test','basic','1234567890','nothing',1,1,'2021-03-08 00:00:00','test procedure','1 day','2021-03-08 11:45:00','2021-03-08 11:45:00',3,27,2,1,'2021-03-02 06:20:05',1,'2021-03-02 06:20:05','192.168.1.198',NULL,NULL),(49,13,'pfirst','plast','Male',NULL,'patientmail@gmail.com','12345','1970-01-01',24,NULL,NULL,'1234522890',NULL,NULL,NULL,'12','Y','test address for patient','address 2 for patient',1,1,1,'123','test','test','1234','123',1,1,'2017-02-21 12:00:00','test','1 day','1970-01-01 00:00:00','1970-01-01 00:00:00',2,1,1,1,'2021-03-02 06:29:02',1,'2021-03-02 06:29:02','192.168.1.198',NULL,NULL),(50,13,'ravindra','suthar','Male',NULL,'ravindra@mailinator.com','12345','1990-08-05',19,NULL,NULL,'9867452131',NULL,NULL,NULL,'000','Y','chandkheda','ahmedabad',1,1,1,'380005','LIC','Health Insurance','8768377487329748','123',1,1,'2021-01-04 00:00:00','test','10','2021-01-04 11:00:00','2021-01-04 11:00:00',3,30,2,1,'2021-03-03 14:42:19',1,'2021-03-03 14:42:19','192.168.1.1','Y',NULL),(52,13,'aman','patel','Male',NULL,'ronakp@mailinator.com','12345','2021-08-04',23,NULL,NULL,'7405119086',NULL,NULL,12,'111','Y','nikol','ahmedabad',1,2,2,'874678','LIC','Health Insurance','8768377487329748','123',1,1,'2021-03-03 00:00:00','test','10','2021-03-03 18:00:00','2021-03-03 18:00:00',40,28,2,1,'2021-03-05 06:36:10',1,'2021-03-05 06:36:10','192.168.1.198','Y',NULL),(53,13,'anand','upadhyay','Male',NULL,'anand11@mailinator.com','12345','2019-12-05',34,NULL,NULL,'8976987341',NULL,NULL,12,'12','Y','AHMEDABAD','INDIA',1,1,1,'874678','LIC','HealthInsurance121','8768377487329748','123',1,8,'2021-03-04 00:00:00','test','10','2021-03-04 12:00:00','2021-03-04 12:00:00',59,32,1,1,'2021-03-09 06:39:53',1,'2021-03-09 06:39:53','192.168.1.1','Y',NULL),(54,13,'patient','test','Male',NULL,'patittest3@gmail.com','12345','1970-01-01',26,NULL,NULL,'9898675424',NULL,NULL,15,'786','Y','test adress','test address 2',1,1,1,'364521','34567863','basic','45687654','nothing',1,9,'2021-05-03 00:00:00','test procedure','1 day','2021-05-03 13:00:00','2021-05-03 13:00:00',60,26,1,1,'2021-03-08 11:45:28',1,'2021-03-08 11:45:28','192.168.1.1','Y',NULL),(55,13,'ravi','XYZ','Male',NULL,'jeelpatel@mailinator.com','12345','2000-03-08',21,NULL,NULL,'9988774455',NULL,NULL,44,'22','Y','xceltec','dfffd',1,2,5,'382415','22','22','1256','1',1,1,'2021-03-08 00:00:00','test','2','2021-03-08 00:00:00','2021-03-08 00:00:00',47,58,1,1,'2021-03-08 13:21:46',1,'2021-03-08 13:21:46','192.168.1.1','Y',NULL),(56,13,'Mahesh','Singh','Male',NULL,'patientt@gmail.com','12345','1999-04-01',22,NULL,NULL,'246978130',NULL,NULL,1,'1','Y','ww','ee',1,1,3,'121212','11','11','11','ee',1,2,'2021-01-03 00:00:00','1','1','2021-01-03 16:30:00','2021-01-03 16:30:00',47,2,1,1,'2021-03-06 12:05:05',1,'2021-03-06 12:05:05','192.168.1.1','Y',NULL),(57,13,'niharika','joshi','Female',NULL,'aman@mailinator.com','12345','1970-01-01',0,NULL,NULL,'6876878779',NULL,NULL,12,'1','Y','bopal','india',1,1,7,'763657','LIC','3251637','8768377487329748','123',1,1,'2021-12-03 00:00:00','test','10','2021-12-03 17:00:00','2021-12-03 17:00:00',33,28,1,1,'2021-03-06 12:04:18',1,'2021-03-06 12:04:18','192.168.1.1','Y',NULL),(58,13,'pratik','gandhi','Male',NULL,'pratik11@mailinator.com','12345','1991-05-11',23,NULL,NULL,'123456789',NULL,NULL,12,'12','Y','thaltej','ahmedabad',1,2,2,'123456','12','helath','12314324','123',1,12,'2021-06-03 00:00:00','test','10','2021-06-03 17:45:00','2021-06-03 17:45:00',41,30,1,1,'2021-03-09 04:27:07',1,'2021-03-12 10:06:33','192.168.1.1','N',NULL),(59,13,'Sonu','Prajapati','Male',NULL,'sonu@mailinator.com','12345','1970-01-01',22,NULL,NULL,'9752368410',NULL,NULL,3,'1','Y','ok','ok',1,1,1,'787778','11','11','11','ee',5,2,'2021-03-09 00:00:00','1','1','2021-03-09 18:15:00','2021-03-09 18:15:00',60,55,1,1,'2021-03-09 04:20:49',1,'2021-03-18 04:21:54','192.168.1.1','Y',NULL);
/*!40000 ALTER TABLE `patient_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedicle_screw`
--

DROP TABLE IF EXISTS `pedicle_screw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedicle_screw` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `modalities_id` int(11) DEFAULT NULL,
  `description` text,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedicle_screw_company_id_idx` (`company_id`),
  KEY `fk_pedicle_screw_created_by_idx` (`created_by`),
  KEY `fk_pedicle_screw_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_pedicle_screw_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedicle_screw_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedicle_screw_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedicle_screw`
--

LOCK TABLES `pedicle_screw` WRITE;
/*!40000 ALTER TABLE `pedicle_screw` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedicle_screw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petient_anesthesia_history`
--

DROP TABLE IF EXISTS `petient_anesthesia_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `petient_anesthesia_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `anesthesia_id` int(11) NOT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `weight_type` enum('mg') NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(115) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_vital` (`anesthesia_id`),
  KEY `patient_vital_create` (`created_by`),
  KEY `patient_vital_update` (`updated_by`),
  CONSTRAINT `patient_vital` FOREIGN KEY (`anesthesia_id`) REFERENCES `anesthesia_master` (`id`),
  CONSTRAINT `patient_vital_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `patient_vital_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petient_anesthesia_history`
--

LOCK TABLES `petient_anesthesia_history` WRITE;
/*!40000 ALTER TABLE `petient_anesthesia_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `petient_anesthesia_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petient_vital_history`
--

DROP TABLE IF EXISTS `petient_vital_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `petient_vital_history` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `patient_id` varchar(45) DEFAULT NULL,
  `vatial_id` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_petient_vital_history_company_id_idx` (`company_id`),
  KEY `fk_petient_vital_history_created_by_idx` (`created_by`),
  KEY `fk_petient_vital_history_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_petient_vital_history_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_petient_vital_history_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_petient_vital_history_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petient_vital_history`
--

LOCK TABLES `petient_vital_history` WRITE;
/*!40000 ALTER TABLE `petient_vital_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `petient_vital_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quad_master`
--

DROP TABLE IF EXISTS `quad_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quad_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quad_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quad_master`
--

LOCK TABLES `quad_master` WRITE;
/*!40000 ALTER TABLE `quad_master` DISABLE KEYS */;
INSERT INTO `quad_master` VALUES (2,'AH',1,'2021-02-27 06:18:21',1,'2021-02-27 06:18:21','192.168.1.198','Y'),(3,'TA',1,'2021-02-27 06:18:27',1,'2021-03-05 10:31:12','192.168.1.198','N');
/*!40000 ALTER TABLE `quad_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region_master`
--

DROP TABLE IF EXISTS `region_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `region_create_by` (`created_by`),
  KEY `region_update_by` (`updated_by`),
  CONSTRAINT `region_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `region_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_master`
--

LOCK TABLES `region_master` WRITE;
/*!40000 ALTER TABLE `region_master` DISABLE KEYS */;
INSERT INTO `region_master` VALUES (1,'Surat',1,'2021-02-03 10:07:42',1,'2021-03-09 04:43:41','127.0.0.1','Y'),(5,'Gandhinagar',1,'2021-02-26 08:55:53',1,'2021-03-09 04:43:28','192.168.1.1','Y'),(7,'Ahmedabad',1,'2021-03-02 13:24:00',1,'2021-03-09 04:43:17','37.139.13.14','Y'),(8,'Ahmedabad',1,'2021-03-12 13:26:59',1,'2021-03-12 13:27:09','192.168.1.1',NULL);
/*!40000 ALTER TABLE `region_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_action`
--

DROP TABLE IF EXISTS `role_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`),
  KEY `FK_module_id` (`module_id`),
  KEY `FK_action_id` (`action_id`),
  KEY `FK_roleaction_created_by` (`created_by`),
  KEY `FK_roleaction_updated_by` (`updated_by`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `action_id1` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `module_id2` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1207 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_action`
--

LOCK TABLES `role_action` WRITE;
/*!40000 ALTER TABLE `role_action` DISABLE KEYS */;
INSERT INTO `role_action` VALUES (373,12,5,1,1,'2021-03-01 12:49:31',1,'2021-03-09 07:50:51','N'),(374,12,5,3,1,'2021-03-01 12:49:31',1,'2021-03-09 07:50:51','N'),(375,12,5,4,1,'2021-02-18 06:14:50',1,'2021-03-09 07:50:51','N'),(376,12,5,5,1,'2021-03-01 12:49:31',1,'2021-03-09 07:50:51','N'),(377,12,5,6,1,'2021-02-18 06:14:50',1,'2021-03-09 07:50:51','N'),(378,12,10,1,1,'2021-03-09 07:50:51',1,'2021-03-09 07:50:51','Y'),(379,12,10,3,1,'2021-03-09 07:50:51',1,'2021-03-09 07:50:51','Y'),(380,12,10,4,1,'2021-03-09 07:50:51',1,'2021-03-09 07:50:51','Y'),(381,12,10,5,1,'2021-03-09 07:50:51',1,'2021-03-09 07:50:51','Y'),(382,12,10,6,1,'2021-03-09 07:50:51',1,'2021-03-09 07:50:51','Y'),(383,12,21,1,1,'2021-03-09 07:50:51',1,'2021-03-09 07:50:51','Y'),(384,12,21,2,1,'2021-03-09 07:50:51',1,'2021-03-09 07:50:51','Y'),(385,12,21,3,1,'2021-03-09 07:50:51',1,'2021-03-09 07:50:51','Y'),(386,12,21,4,1,'2021-03-09 07:50:52',1,'2021-03-09 07:50:52','Y'),(387,12,21,5,1,'2021-03-09 07:50:52',1,'2021-03-09 07:50:52','Y'),(388,12,21,6,1,'2021-03-09 07:50:52',1,'2021-03-09 07:50:52','Y'),(394,11,21,1,1,'2021-03-10 10:20:05',1,'2021-03-10 10:20:05','Y'),(395,11,21,2,1,'2021-03-10 10:20:05',1,'2021-03-10 10:20:05','Y'),(396,11,21,3,1,'2021-03-09 13:36:01',1,'2021-03-10 10:20:04','N'),(397,11,21,4,1,'2021-03-10 10:20:05',1,'2021-03-10 10:20:05','Y'),(398,11,21,5,1,'2021-03-10 10:20:05',1,'2021-03-10 10:20:05','Y'),(399,11,21,6,1,'2021-03-10 10:20:05',1,'2021-03-10 10:20:05','Y'),(400,11,2,1,1,'2021-02-08 10:12:34',1,'2021-03-10 10:20:04','N'),(401,1,2,1,1,'2021-03-10 13:58:34',1,'2021-03-10 13:58:34','Y'),(402,1,2,3,1,'2021-03-10 13:58:35',1,'2021-03-10 13:58:35','Y'),(403,1,2,4,1,'2021-03-10 13:58:37',1,'2021-03-10 13:58:37','Y'),(404,1,2,5,1,'2021-03-10 13:58:37',1,'2021-03-10 13:58:37','Y'),(405,1,2,6,1,'2021-03-10 13:58:39',1,'2021-03-10 13:58:39','Y'),(406,1,5,1,1,'2021-03-10 13:58:40',1,'2021-03-10 13:58:40','Y'),(407,1,5,3,1,'2021-03-10 13:58:42',1,'2021-03-10 13:58:42','Y'),(408,1,5,4,1,'2021-03-10 13:58:42',1,'2021-03-10 13:58:42','Y'),(409,1,5,5,1,'2021-03-10 13:58:44',1,'2021-03-10 13:58:44','Y'),(410,1,5,6,1,'2021-03-10 13:58:45',1,'2021-03-10 13:58:45','Y'),(411,1,10,1,1,'2021-03-10 13:58:46',1,'2021-03-10 13:58:46','Y'),(412,1,10,3,1,'2021-03-10 13:58:47',1,'2021-03-10 13:58:47','Y'),(413,1,10,4,1,'2021-03-10 13:58:50',1,'2021-03-10 13:58:50','Y'),(414,1,10,5,1,'2021-03-10 13:58:52',1,'2021-03-10 13:58:52','Y'),(415,1,10,6,1,'2021-03-10 13:58:52',1,'2021-03-10 13:58:52','Y'),(416,1,21,1,1,'2021-03-10 13:58:55',1,'2021-03-10 13:58:55','Y'),(417,1,21,2,1,'2021-03-10 13:58:56',1,'2021-03-10 13:58:56','Y'),(418,1,21,3,1,'2021-03-10 13:58:57',1,'2021-03-10 13:58:57','Y'),(419,1,21,4,1,'2021-03-10 13:58:59',1,'2021-03-10 13:58:59','Y'),(420,1,21,5,1,'2021-03-10 13:58:59',1,'2021-03-10 13:58:59','Y'),(421,1,21,6,1,'2021-03-10 13:59:01',1,'2021-03-10 13:59:01','Y'),(422,11,2,3,1,'2021-02-08 10:12:34',1,'2021-03-10 10:20:04','N'),(423,11,2,4,1,'2021-02-08 10:12:34',1,'2021-03-10 10:20:04','N'),(424,11,2,5,1,'2021-02-08 10:12:34',1,'2021-03-10 10:20:04','N'),(425,11,2,6,1,'2021-02-08 10:12:35',1,'2021-03-10 10:20:04','N'),(426,11,5,1,1,'2021-03-09 13:01:01',1,'2021-03-10 10:20:04','N'),(427,11,5,3,1,'2021-03-09 13:01:01',1,'2021-03-10 10:20:04','N'),(428,11,5,4,1,'2021-03-09 12:59:53',1,'2021-03-10 10:20:04','N'),(429,11,5,5,1,'2021-03-09 13:01:01',1,'2021-03-10 10:20:04','N'),(430,11,5,6,1,'2021-03-09 13:01:01',1,'2021-03-10 10:20:04','N'),(431,11,10,1,1,'2021-03-10 10:20:04',1,'2021-03-10 10:20:04','Y'),(432,11,10,3,1,'2021-03-10 10:20:04',1,'2021-03-10 10:20:04','Y'),(433,11,10,4,1,'2021-03-10 10:20:04',1,'2021-03-10 10:20:04','Y'),(434,11,10,5,1,'2021-03-10 10:20:04',1,'2021-03-10 10:20:04','Y'),(435,11,10,2,1,'2021-03-10 10:20:05',1,'2021-03-10 10:20:05','Y'),(436,1,22,1,1,'2021-03-10 13:59:02',1,'2021-03-10 13:59:02','Y'),(437,1,22,2,1,'2021-03-10 13:59:03',1,'2021-03-10 13:59:03','Y'),(438,1,22,3,1,'2021-03-10 13:59:04',1,'2021-03-10 13:59:04','Y'),(439,1,22,4,1,'2021-03-10 13:59:06',1,'2021-03-10 13:59:06','Y'),(440,1,22,5,1,'2021-03-10 13:59:06',1,'2021-03-10 13:59:06','Y'),(441,1,22,6,1,'2021-03-10 13:59:08',1,'2021-03-10 13:59:08','Y'),(442,12,2,1,1,'2021-02-16 09:47:51',1,'2021-03-09 07:50:51','N'),(443,12,2,3,1,'2021-02-16 09:47:51',1,'2021-03-09 07:50:51','N'),(444,12,2,4,1,'2021-02-16 09:47:51',1,'2021-03-09 07:50:51','N'),(445,12,2,5,1,'2021-02-16 09:47:51',1,'2021-03-09 07:50:51','N'),(446,12,2,6,1,'2021-02-16 09:47:52',1,'2021-03-09 07:50:51','N'),(447,12,22,1,1,'2021-02-18 06:15:43',1,'2021-03-09 07:50:51','N'),(448,12,22,2,1,'2021-02-18 06:15:43',1,'2021-03-09 07:50:51','N'),(449,12,22,3,1,'2021-02-18 06:15:43',1,'2021-03-09 07:50:51','N'),(450,12,22,4,1,'2021-02-18 06:15:43',1,'2021-03-09 07:50:51','N'),(451,12,22,5,1,'2021-02-18 06:15:43',1,'2021-03-09 07:50:51','N'),(452,12,22,6,1,'2021-02-18 06:15:43',1,'2021-03-09 07:50:51','N'),(453,14,5,1,1,'2021-03-03 02:08:40',1,'2021-03-03 02:08:40','Y'),(454,14,5,3,1,'2021-03-03 02:08:40',1,'2021-03-03 02:08:40','Y'),(455,14,5,4,1,'2021-03-03 02:08:40',1,'2021-03-03 02:08:40','Y'),(456,14,5,5,1,'2021-03-03 02:08:40',1,'2021-03-03 02:08:40','Y'),(457,14,5,6,1,'2021-03-03 02:08:40',1,'2021-03-03 02:08:40','Y'),(458,12,23,3,1,'2021-03-09 07:50:52',1,'2021-03-09 07:50:52','Y'),(459,12,24,3,1,'2021-03-09 07:50:52',1,'2021-03-09 07:50:52','Y'),(460,11,22,1,1,'2021-03-09 12:36:33',1,'2021-03-10 10:20:04','N'),(461,11,22,2,1,'2021-03-09 12:36:33',1,'2021-03-10 10:20:04','N'),(462,11,22,3,1,'2021-03-09 12:29:43',1,'2021-03-10 10:20:04','N'),(463,11,22,4,1,'2021-03-09 12:32:50',1,'2021-03-10 10:20:04','N'),(464,11,22,5,1,'2021-03-09 12:32:50',1,'2021-03-10 10:20:04','N'),(465,11,22,6,1,'2021-03-09 12:32:50',1,'2021-03-10 10:20:04','N'),(466,11,23,3,1,'2021-03-10 10:20:05',1,'2021-03-10 10:20:05','Y'),(467,11,24,3,1,'2021-03-10 10:20:06',1,'2021-03-10 10:20:06','Y'),(468,15,2,1,1,'2021-02-25 05:12:31',1,'2021-02-25 05:12:31','Y'),(469,15,2,3,1,'2021-02-25 05:12:32',1,'2021-02-25 05:12:32','Y'),(470,15,2,4,1,'2021-02-25 05:12:32',1,'2021-02-25 05:12:32','Y'),(471,15,21,1,1,'2021-02-25 05:12:33',1,'2021-02-25 05:12:33','Y'),(472,15,21,3,1,'2021-02-25 05:12:34',1,'2021-02-25 05:12:34','Y'),(473,11,36,1,1,'2021-03-10 10:20:06',1,'2021-03-10 10:20:06','Y'),(474,14,21,1,1,'2021-03-03 02:08:41',1,'2021-03-03 02:08:41','Y'),(475,14,21,6,1,'2021-03-01 12:50:04',1,'2021-03-03 02:08:40','N'),(476,14,10,1,1,'2021-03-03 02:08:40',1,'2021-03-03 02:08:40','Y'),(477,14,10,3,1,'2021-03-03 02:08:41',1,'2021-03-03 02:08:41','Y'),(478,14,22,1,1,'2021-03-03 02:08:41',1,'2021-03-03 02:08:41','Y'),(479,14,23,3,1,'2021-03-03 02:08:41',1,'2021-03-03 02:08:41','Y'),(480,16,2,1,1,'2021-03-03 02:42:26',1,'2021-03-03 02:42:26','Y'),(481,17,2,1,1,'2021-03-03 02:44:25',1,'2021-03-03 02:44:25','Y'),(482,17,5,1,1,'2021-03-03 02:44:25',1,'2021-03-03 02:44:25','Y'),(483,18,2,1,1,'2021-03-03 04:18:07',1,'2021-03-03 04:18:07','Y'),(484,18,2,3,1,'2021-03-03 04:18:07',1,'2021-03-03 04:18:07','Y'),(485,18,2,4,1,'2021-03-03 04:18:08',1,'2021-03-03 04:18:08','Y'),(486,18,2,5,1,'2021-03-03 04:18:08',1,'2021-03-03 04:18:08','Y'),(487,18,2,6,1,'2021-03-03 04:18:08',1,'2021-03-03 04:18:08','Y'),(488,18,5,1,1,'2021-03-03 04:18:08',1,'2021-03-03 04:18:08','Y'),(489,18,5,3,1,'2021-03-03 04:18:08',1,'2021-03-03 04:18:08','Y'),(490,18,5,4,1,'2021-03-03 04:18:08',1,'2021-03-03 04:18:08','Y'),(491,18,5,5,1,'2021-03-03 04:18:08',1,'2021-03-03 04:18:08','Y'),(492,18,5,6,1,'2021-03-03 04:18:08',1,'2021-03-03 04:18:08','Y'),(493,18,10,1,1,'2021-03-03 04:18:09',1,'2021-03-03 04:18:09','Y'),(494,18,10,3,1,'2021-03-03 04:18:09',1,'2021-03-03 04:18:09','Y'),(495,18,10,4,1,'2021-03-03 04:18:09',1,'2021-03-03 04:18:09','Y'),(496,18,10,5,1,'2021-03-03 04:18:09',1,'2021-03-03 04:18:09','Y'),(497,18,10,6,1,'2021-03-03 04:18:09',1,'2021-03-03 04:18:09','Y'),(498,18,21,1,1,'2021-03-03 04:18:09',1,'2021-03-03 04:18:09','Y'),(499,18,21,2,1,'2021-03-03 04:18:09',1,'2021-03-03 04:18:09','Y'),(500,18,21,3,1,'2021-03-03 04:18:10',1,'2021-03-03 04:18:10','Y'),(501,18,21,4,1,'2021-03-03 04:18:10',1,'2021-03-03 04:18:10','Y'),(502,18,21,5,1,'2021-03-03 04:18:10',1,'2021-03-03 04:18:10','Y'),(503,18,21,6,1,'2021-03-03 04:18:10',1,'2021-03-03 04:18:10','Y'),(504,18,22,1,1,'2021-03-03 04:18:10',1,'2021-03-03 04:18:10','Y'),(505,19,2,1,1,'2021-03-03 04:20:53',1,'2021-03-03 04:20:53','Y'),(506,19,2,3,1,'2021-03-03 04:20:53',1,'2021-03-03 04:20:53','Y'),(507,19,2,4,1,'2021-03-03 04:20:53',1,'2021-03-03 04:20:53','Y'),(508,19,2,5,1,'2021-03-03 04:20:53',1,'2021-03-03 04:20:53','Y'),(509,19,2,6,1,'2021-03-03 04:20:53',1,'2021-03-03 04:20:53','Y'),(510,1,24,3,1,'2021-03-10 13:59:09',1,'2021-03-10 13:59:09','Y'),(511,1,25,1,1,'2021-03-10 13:59:15',1,'2021-03-10 13:59:15','Y'),(512,1,31,2,1,'2021-03-10 13:59:36',1,'2021-03-10 13:59:36','Y'),(513,1,31,3,1,'2021-03-10 13:59:37',1,'2021-03-10 13:59:37','Y'),(514,1,31,4,1,'2021-03-10 13:59:37',1,'2021-03-10 13:59:37','Y'),(515,1,33,3,1,'2021-03-10 13:59:42',1,'2021-03-10 13:59:42','Y'),(516,1,43,3,1,'2021-03-10 14:00:10',1,'2021-03-10 14:00:10','Y'),(517,20,2,1,1,'2021-03-05 04:46:28',1,'2021-03-05 04:46:28','Y'),(518,20,5,3,1,'2021-03-05 04:46:28',1,'2021-03-05 04:46:28','Y'),(519,20,10,4,1,'2021-03-05 04:46:29',1,'2021-03-05 04:46:29','Y'),(520,21,21,1,1,'2021-03-05 05:49:52',1,'2021-03-05 05:49:52','Y'),(521,21,21,5,1,'2021-03-05 05:49:52',1,'2021-03-05 05:49:52','Y'),(522,21,21,6,1,'2021-03-05 05:49:52',1,'2021-03-05 05:49:52','Y'),(523,22,10,1,1,'2021-03-05 11:04:59',1,'2021-03-05 11:04:59','Y'),(524,22,10,3,1,'2021-03-05 11:04:59',1,'2021-03-05 11:04:59','Y'),(525,22,10,4,1,'2021-03-05 11:04:59',1,'2021-03-05 11:04:59','Y'),(526,22,10,5,1,'2021-03-05 11:04:59',1,'2021-03-05 11:04:59','Y'),(527,22,10,6,1,'2021-03-05 11:05:00',1,'2021-03-05 11:05:00','Y'),(528,22,21,1,1,'2021-03-05 11:05:00',1,'2021-03-05 11:05:00','Y'),(529,22,21,2,1,'2021-03-05 11:05:00',1,'2021-03-05 11:05:00','Y'),(530,22,21,3,1,'2021-03-05 11:05:00',1,'2021-03-05 11:05:00','Y'),(531,22,21,5,1,'2021-03-05 11:05:00',1,'2021-03-05 11:05:00','Y'),(532,22,21,6,1,'2021-03-05 11:05:00',1,'2021-03-05 11:05:00','Y'),(533,22,24,3,1,'2021-03-05 11:05:00',1,'2021-03-05 11:05:00','Y'),(540,25,21,1,1,'2021-03-06 06:17:42',1,'2021-03-06 06:17:42','Y'),(541,25,21,2,1,'2021-03-06 06:17:42',1,'2021-03-06 06:17:42','Y'),(542,25,21,3,1,'2021-03-06 06:17:42',1,'2021-03-06 06:17:42','Y'),(543,25,21,4,1,'2021-03-06 06:17:42',1,'2021-03-06 06:17:42','Y'),(544,25,21,5,1,'2021-03-06 06:17:42',1,'2021-03-06 06:17:42','Y'),(545,25,21,6,1,'2021-03-06 06:17:42',1,'2021-03-06 06:17:42','Y'),(546,25,23,3,1,'2021-03-06 05:48:41',1,'2021-03-06 06:17:42','N'),(547,25,24,3,1,'2021-03-06 05:48:41',1,'2021-03-06 06:17:42','N'),(642,31,21,1,1,'2021-03-08 04:25:05',1,'2021-03-08 04:25:05','Y'),(643,31,21,2,1,'2021-03-08 04:25:05',1,'2021-03-08 04:25:05','Y'),(644,31,21,3,1,'2021-03-08 04:25:06',1,'2021-03-08 04:25:06','Y'),(645,31,21,4,1,'2021-03-08 04:25:06',1,'2021-03-08 04:25:06','Y'),(646,31,21,5,1,'2021-03-08 04:25:06',1,'2021-03-08 04:25:06','Y'),(647,31,21,6,1,'2021-03-08 04:25:06',1,'2021-03-08 04:25:06','Y'),(648,31,23,3,1,'2021-03-08 04:25:06',1,'2021-03-08 04:25:06','Y'),(649,31,24,3,1,'2021-03-08 04:25:06',1,'2021-03-08 04:25:06','Y'),(650,31,29,1,1,'2021-03-08 04:25:06',1,'2021-03-08 04:25:06','Y'),(651,31,29,2,1,'2021-03-08 04:25:07',1,'2021-03-08 04:25:07','Y'),(652,31,29,3,1,'2021-03-08 04:25:07',1,'2021-03-08 04:25:07','Y'),(653,31,29,4,1,'2021-03-08 04:25:07',1,'2021-03-08 04:25:07','Y'),(654,31,29,5,1,'2021-03-08 04:25:07',1,'2021-03-08 04:25:07','Y'),(655,31,35,1,1,'2021-03-08 04:25:07',1,'2021-03-08 04:25:07','Y'),(656,31,35,2,1,'2021-03-08 04:25:07',1,'2021-03-08 04:25:07','Y'),(657,31,35,3,1,'2021-03-08 04:25:07',1,'2021-03-08 04:25:07','Y'),(658,31,35,4,1,'2021-03-08 04:25:07',1,'2021-03-08 04:25:07','Y'),(659,32,21,1,1,'2021-03-08 09:01:45',1,'2021-03-08 09:01:45','Y'),(660,32,21,2,1,'2021-03-08 09:01:45',1,'2021-03-08 09:01:45','Y'),(661,32,21,3,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(662,32,21,4,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(663,32,21,5,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(664,32,21,6,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(665,32,22,1,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(666,32,22,2,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(667,32,22,3,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(668,32,22,4,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(669,32,22,5,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(670,32,22,6,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(671,32,23,3,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(672,32,24,3,1,'2021-03-08 09:01:46',1,'2021-03-08 09:01:46','Y'),(673,32,25,1,1,'2021-03-08 09:01:47',1,'2021-03-08 09:01:47','Y'),(674,32,25,2,1,'2021-03-08 09:01:47',1,'2021-03-08 09:01:47','Y'),(675,32,25,3,1,'2021-03-08 09:01:47',1,'2021-03-08 09:01:47','Y'),(676,32,25,4,1,'2021-03-08 09:01:47',1,'2021-03-08 09:01:47','Y'),(677,32,25,5,1,'2021-03-08 09:01:47',1,'2021-03-08 09:01:47','Y'),(678,32,35,1,1,'2021-03-08 09:01:47',1,'2021-03-08 09:01:47','Y'),(679,32,35,2,1,'2021-03-08 09:01:47',1,'2021-03-08 09:01:47','Y'),(680,32,35,3,1,'2021-03-08 09:01:47',1,'2021-03-08 09:01:47','Y'),(681,32,35,4,1,'2021-03-08 09:01:48',1,'2021-03-08 09:01:48','Y'),(682,32,36,1,1,'2021-03-08 09:01:48',1,'2021-03-08 09:01:48','Y'),(683,33,10,1,1,'2021-03-08 11:11:30',1,'2021-03-08 11:11:30','Y'),(684,33,10,3,1,'2021-03-08 11:11:30',1,'2021-03-08 11:11:30','Y'),(685,33,10,4,1,'2021-03-08 11:11:30',1,'2021-03-08 11:11:30','Y'),(686,33,10,5,1,'2021-03-08 11:11:30',1,'2021-03-08 11:11:30','Y'),(687,33,10,6,1,'2021-03-08 11:11:30',1,'2021-03-08 11:11:30','Y'),(688,33,21,1,1,'2021-03-08 11:11:30',1,'2021-03-08 11:11:30','Y'),(689,33,21,2,1,'2021-03-08 11:11:30',1,'2021-03-08 11:11:30','Y'),(690,33,21,3,1,'2021-03-08 11:11:30',1,'2021-03-08 11:11:30','Y'),(691,33,21,4,1,'2021-03-08 11:11:30',1,'2021-03-08 11:11:30','Y'),(692,33,21,5,1,'2021-03-08 11:11:30',1,'2021-03-08 11:11:30','Y'),(693,33,21,6,1,'2021-03-08 11:11:30',1,'2021-03-08 11:11:30','Y'),(694,33,23,3,1,'2021-03-08 11:11:31',1,'2021-03-08 11:11:31','Y'),(695,33,24,3,1,'2021-03-08 11:11:31',1,'2021-03-08 11:11:31','Y'),(696,33,35,1,1,'2021-03-08 11:11:31',1,'2021-03-08 11:11:31','Y'),(697,33,35,2,1,'2021-03-08 11:11:31',1,'2021-03-08 11:11:31','Y'),(698,33,35,3,1,'2021-03-08 11:11:31',1,'2021-03-08 11:11:31','Y'),(699,33,35,4,1,'2021-03-08 11:11:31',1,'2021-03-08 11:11:31','Y'),(700,33,36,1,1,'2021-03-08 11:11:31',1,'2021-03-08 11:11:31','Y'),(701,34,21,1,1,'2021-03-08 10:52:58',1,'2021-03-08 10:52:58','Y'),(702,34,21,2,1,'2021-03-08 10:52:58',1,'2021-03-08 10:52:58','Y'),(703,34,21,3,1,'2021-03-08 10:52:58',1,'2021-03-08 10:52:58','Y'),(704,34,21,4,1,'2021-03-08 10:52:58',1,'2021-03-08 10:52:58','Y'),(705,34,21,5,1,'2021-03-08 10:52:58',1,'2021-03-08 10:52:58','Y'),(706,34,21,6,1,'2021-03-08 10:52:58',1,'2021-03-08 10:52:58','Y'),(707,34,22,1,1,'2021-03-08 10:52:58',1,'2021-03-08 10:52:58','Y'),(708,34,23,3,1,'2021-03-08 10:52:58',1,'2021-03-08 10:52:58','Y'),(709,34,24,3,1,'2021-03-08 10:52:59',1,'2021-03-08 10:52:59','Y'),(710,34,35,1,1,'2021-03-08 10:52:59',1,'2021-03-08 10:52:59','Y'),(711,34,35,2,1,'2021-03-08 10:52:59',1,'2021-03-08 10:52:59','Y'),(712,34,35,3,1,'2021-03-08 10:52:59',1,'2021-03-08 10:52:59','Y'),(713,34,35,4,1,'2021-03-08 10:52:59',1,'2021-03-08 10:52:59','Y'),(714,35,10,1,1,'2021-03-08 11:43:11',1,'2021-03-08 11:43:11','Y'),(715,35,10,3,1,'2021-03-08 11:43:11',1,'2021-03-08 11:43:11','Y'),(716,35,10,4,1,'2021-03-08 11:43:11',1,'2021-03-08 11:43:11','Y'),(717,35,10,5,1,'2021-03-08 11:43:11',1,'2021-03-08 11:43:11','Y'),(718,35,10,6,1,'2021-03-08 11:43:11',1,'2021-03-08 11:43:11','Y'),(719,35,21,1,1,'2021-03-08 11:43:11',1,'2021-03-08 11:43:11','Y'),(720,35,21,2,1,'2021-03-08 11:43:11',1,'2021-03-08 11:43:11','Y'),(721,35,21,3,1,'2021-03-08 11:43:11',1,'2021-03-08 11:43:11','Y'),(722,35,21,4,1,'2021-03-08 11:43:12',1,'2021-03-08 11:43:12','Y'),(723,35,21,5,1,'2021-03-08 11:43:12',1,'2021-03-08 11:43:12','Y'),(724,35,21,6,1,'2021-03-08 11:43:12',1,'2021-03-08 11:43:12','Y'),(725,35,23,3,1,'2021-03-08 11:43:12',1,'2021-03-08 11:43:12','Y'),(726,35,24,3,1,'2021-03-08 11:43:12',1,'2021-03-08 11:43:12','Y'),(727,35,35,1,1,'2021-03-08 11:43:12',1,'2021-03-08 11:43:12','Y'),(728,35,35,2,1,'2021-03-08 11:43:13',1,'2021-03-08 11:43:13','Y'),(729,35,35,3,1,'2021-03-08 11:43:13',1,'2021-03-08 11:43:13','Y'),(730,35,35,4,1,'2021-03-08 11:43:13',1,'2021-03-08 11:43:13','Y'),(731,35,36,1,1,'2021-03-08 11:43:13',1,'2021-03-08 11:43:13','Y'),(732,36,24,3,1,'2021-03-08 12:24:38',1,'2021-03-08 12:24:38','Y'),(733,37,10,1,1,'2021-03-08 12:29:20',1,'2021-03-08 12:29:20','Y'),(734,37,10,3,1,'2021-03-08 12:29:21',1,'2021-03-08 12:29:21','Y'),(735,37,10,4,1,'2021-03-08 12:29:21',1,'2021-03-08 12:29:21','Y'),(736,37,10,5,1,'2021-03-08 12:29:21',1,'2021-03-08 12:29:21','Y'),(737,37,10,6,1,'2021-03-08 12:29:21',1,'2021-03-08 12:29:21','Y'),(738,37,21,1,1,'2021-03-08 12:29:21',1,'2021-03-08 12:29:21','Y'),(739,37,21,2,1,'2021-03-08 12:29:21',1,'2021-03-08 12:29:21','Y'),(740,37,21,3,1,'2021-03-08 12:29:21',1,'2021-03-08 12:29:21','Y'),(741,37,21,4,1,'2021-03-08 12:29:21',1,'2021-03-08 12:29:21','Y'),(742,37,21,5,1,'2021-03-08 12:29:21',1,'2021-03-08 12:29:21','Y'),(743,37,21,6,1,'2021-03-08 12:29:22',1,'2021-03-08 12:29:22','Y'),(744,37,23,3,1,'2021-03-08 12:29:22',1,'2021-03-08 12:29:22','Y'),(745,37,24,3,1,'2021-03-08 12:29:22',1,'2021-03-08 12:29:22','Y'),(746,37,35,1,1,'2021-03-08 12:29:22',1,'2021-03-08 12:29:22','Y'),(747,37,35,2,1,'2021-03-08 12:29:22',1,'2021-03-08 12:29:22','Y'),(748,37,35,3,1,'2021-03-08 12:29:22',1,'2021-03-08 12:29:22','Y'),(749,37,35,4,1,'2021-03-08 12:29:22',1,'2021-03-08 12:29:22','Y'),(750,37,36,1,1,'2021-03-08 12:29:22',1,'2021-03-08 12:29:22','Y'),(751,11,34,1,1,'2021-03-10 08:31:53',1,'2021-03-10 10:20:04','N'),(752,11,10,6,1,'2021-03-10 10:20:04',1,'2021-03-10 10:20:04','Y'),(753,11,25,1,1,'2021-03-10 06:21:47',1,'2021-03-10 10:20:04','N'),(754,11,25,2,1,'2021-03-10 06:21:48',1,'2021-03-10 10:20:04','N'),(755,11,25,3,1,'2021-03-10 06:12:36',1,'2021-03-10 10:20:04','N'),(756,11,25,4,1,'2021-03-10 06:21:48',1,'2021-03-10 10:20:04','N'),(757,11,25,5,1,'2021-03-10 06:21:48',1,'2021-03-10 10:20:04','N'),(758,11,27,1,1,'2021-03-10 06:46:19',1,'2021-03-10 10:20:04','N'),(759,11,27,2,1,'2021-03-10 06:46:19',1,'2021-03-10 10:20:04','N'),(760,11,27,3,1,'2021-03-10 06:24:28',1,'2021-03-10 10:20:04','N'),(761,11,27,4,1,'2021-03-10 06:24:28',1,'2021-03-10 10:20:04','N'),(762,11,27,5,1,'2021-03-10 06:46:19',1,'2021-03-10 10:20:04','N'),(763,1,25,2,1,'2021-03-10 13:59:17',1,'2021-03-10 13:59:17','Y'),(764,1,25,3,1,'2021-03-10 13:59:19',1,'2021-03-10 13:59:19','Y'),(765,1,25,4,1,'2021-03-10 13:59:22',1,'2021-03-10 13:59:22','Y'),(766,1,25,5,1,'2021-03-10 13:59:23',1,'2021-03-10 13:59:23','Y'),(767,1,27,1,1,'2021-03-10 13:59:24',1,'2021-03-10 13:59:24','Y'),(768,1,27,2,1,'2021-03-10 13:59:25',1,'2021-03-10 13:59:25','Y'),(769,1,27,3,1,'2021-03-10 13:59:25',1,'2021-03-10 13:59:25','Y'),(770,1,27,4,1,'2021-03-10 13:59:26',1,'2021-03-10 13:59:26','Y'),(771,1,27,5,1,'2021-03-10 13:59:26',1,'2021-03-10 13:59:26','Y'),(772,11,28,1,1,'2021-03-10 06:49:14',1,'2021-03-10 10:20:04','N'),(773,11,28,2,1,'2021-03-10 06:49:14',1,'2021-03-10 10:20:04','N'),(774,11,28,3,1,'2021-03-10 06:49:14',1,'2021-03-10 10:20:04','N'),(775,11,28,4,1,'2021-03-10 06:49:14',1,'2021-03-10 10:20:04','N'),(776,11,28,5,1,'2021-03-10 06:49:14',1,'2021-03-10 10:20:04','N'),(777,11,29,1,1,'2021-03-10 06:59:39',1,'2021-03-10 10:20:04','N'),(778,11,29,2,1,'2021-03-10 06:59:39',1,'2021-03-10 10:20:04','N'),(779,11,29,3,1,'2021-03-10 06:59:39',1,'2021-03-10 10:20:04','N'),(780,11,29,4,1,'2021-03-10 06:59:39',1,'2021-03-10 10:20:04','N'),(781,11,29,5,1,'2021-03-10 06:59:39',1,'2021-03-10 10:20:04','N'),(782,11,30,1,1,'2021-03-10 07:49:36',1,'2021-03-10 10:20:04','N'),(783,11,30,2,1,'2021-03-10 07:49:36',1,'2021-03-10 10:20:04','N'),(784,11,30,3,1,'2021-03-10 07:49:36',1,'2021-03-10 10:20:04','N'),(785,11,30,4,1,'2021-03-10 07:49:36',1,'2021-03-10 10:20:04','N'),(786,11,30,5,1,'2021-03-10 07:49:37',1,'2021-03-10 10:20:04','N'),(787,11,31,1,1,'2021-03-10 07:54:01',1,'2021-03-10 10:20:04','N'),(788,11,31,2,1,'2021-03-10 07:54:01',1,'2021-03-10 10:20:04','N'),(789,11,31,3,1,'2021-03-10 07:54:01',1,'2021-03-10 10:20:04','N'),(790,11,31,4,1,'2021-03-10 07:54:01',1,'2021-03-10 10:20:04','N'),(791,11,31,5,1,'2021-03-10 07:54:01',1,'2021-03-10 10:20:04','N'),(792,11,32,1,1,'2021-03-10 08:11:10',1,'2021-03-10 10:20:04','N'),(793,11,32,2,1,'2021-03-10 08:11:10',1,'2021-03-10 10:20:04','N'),(794,11,32,3,1,'2021-03-10 08:11:10',1,'2021-03-10 10:20:04','N'),(795,11,32,4,1,'2021-03-10 08:11:10',1,'2021-03-10 10:20:04','N'),(796,11,32,5,1,'2021-03-10 08:11:10',1,'2021-03-10 10:20:04','N'),(797,11,33,1,1,'2021-03-10 08:25:56',1,'2021-03-10 10:20:04','N'),(798,11,33,2,1,'2021-03-10 08:25:57',1,'2021-03-10 10:20:04','N'),(799,11,33,3,1,'2021-03-10 08:19:00',1,'2021-03-10 10:20:04','N'),(800,11,33,4,1,'2021-03-10 08:25:57',1,'2021-03-10 10:20:04','N'),(801,11,33,5,1,'2021-03-10 08:25:57',1,'2021-03-10 10:20:04','N'),(802,11,34,2,1,'2021-03-10 08:31:53',1,'2021-03-10 10:20:04','N'),(803,11,34,3,1,'2021-03-10 08:25:57',1,'2021-03-10 10:20:04','N'),(804,11,34,4,1,'2021-03-10 08:31:53',1,'2021-03-10 10:20:04','N'),(805,11,34,5,1,'2021-03-10 08:31:53',1,'2021-03-10 10:20:04','N'),(806,11,37,1,1,'2021-03-10 08:37:16',1,'2021-03-10 10:20:04','N'),(807,11,37,2,1,'2021-03-10 08:37:16',1,'2021-03-10 10:20:04','N'),(808,11,37,3,1,'2021-03-10 08:37:16',1,'2021-03-10 10:20:04','N'),(809,11,37,4,1,'2021-03-10 08:31:54',1,'2021-03-10 10:20:04','N'),(810,11,37,5,1,'2021-03-10 08:37:16',1,'2021-03-10 10:20:04','N'),(811,11,38,1,1,'2021-03-10 08:43:05',1,'2021-03-10 10:20:04','N'),(812,11,38,2,1,'2021-03-10 08:43:05',1,'2021-03-10 10:20:04','N'),(813,11,38,3,1,'2021-03-10 08:43:05',1,'2021-03-10 10:20:04','N'),(814,11,38,4,1,'2021-03-10 08:43:05',1,'2021-03-10 10:20:04','N'),(815,11,38,5,1,'2021-03-10 08:37:17',1,'2021-03-10 10:20:04','N'),(816,11,39,1,1,'2021-03-10 08:47:17',1,'2021-03-10 10:20:04','N'),(817,11,39,2,1,'2021-03-10 08:47:18',1,'2021-03-10 10:20:04','N'),(818,11,39,3,1,'2021-03-10 08:47:18',1,'2021-03-10 10:20:04','N'),(819,11,39,4,1,'2021-03-10 08:43:06',1,'2021-03-10 10:20:04','N'),(820,11,39,5,1,'2021-03-10 08:47:18',1,'2021-03-10 10:20:04','N'),(821,11,40,1,1,'2021-03-10 09:23:08',1,'2021-03-10 10:20:04','N'),(822,11,40,2,1,'2021-03-10 09:23:08',1,'2021-03-10 10:20:04','N'),(823,11,40,3,1,'2021-03-10 08:47:18',1,'2021-03-10 10:20:04','N'),(824,11,40,4,1,'2021-03-10 09:23:08',1,'2021-03-10 10:20:04','N'),(825,11,40,5,1,'2021-03-10 09:23:09',1,'2021-03-10 10:20:04','N'),(826,11,40,6,1,'2021-03-10 09:23:09',1,'2021-03-10 10:20:04','N'),(827,1,32,1,1,'2021-03-10 13:59:38',1,'2021-03-10 13:59:38','Y'),(828,1,32,2,1,'2021-03-10 13:59:39',1,'2021-03-10 13:59:39','Y'),(829,1,32,3,1,'2021-03-10 13:59:39',1,'2021-03-10 13:59:39','Y'),(830,1,32,4,1,'2021-03-10 13:59:40',1,'2021-03-10 13:59:40','Y'),(831,1,32,5,1,'2021-03-10 13:59:40',1,'2021-03-10 13:59:40','Y'),(832,1,33,1,1,'2021-03-10 13:59:41',1,'2021-03-10 13:59:41','Y'),(833,1,33,2,1,'2021-03-10 13:59:41',1,'2021-03-10 13:59:41','Y'),(834,1,33,4,1,'2021-03-10 13:59:43',1,'2021-03-10 13:59:43','Y'),(835,1,33,5,1,'2021-03-10 13:59:43',1,'2021-03-10 13:59:43','Y'),(836,1,34,1,1,'2021-03-10 13:59:44',1,'2021-03-10 13:59:44','Y'),(837,1,34,2,1,'2021-03-10 13:59:44',1,'2021-03-10 13:59:44','Y'),(838,1,34,3,1,'2021-03-10 13:59:45',1,'2021-03-10 13:59:45','Y'),(839,1,34,4,1,'2021-03-10 13:59:45',1,'2021-03-10 13:59:45','Y'),(840,1,34,5,1,'2021-03-10 13:59:46',1,'2021-03-10 13:59:46','Y'),(841,1,35,1,1,'2021-03-10 13:59:47',1,'2021-03-10 13:59:47','Y'),(842,1,35,2,1,'2021-03-10 13:59:47',1,'2021-03-10 13:59:47','Y'),(843,1,35,3,1,'2021-03-10 13:59:48',1,'2021-03-10 13:59:48','Y'),(844,1,35,4,1,'2021-03-10 13:59:48',1,'2021-03-10 13:59:48','Y'),(845,1,36,1,1,'2021-03-10 13:59:50',1,'2021-03-10 13:59:50','Y'),(846,1,37,1,1,'2021-03-10 13:59:50',1,'2021-03-10 13:59:50','Y'),(847,1,37,2,1,'2021-03-10 13:59:51',1,'2021-03-10 13:59:51','Y'),(848,1,37,3,1,'2021-03-10 13:59:51',1,'2021-03-10 13:59:51','Y'),(849,1,37,4,1,'2021-03-10 13:59:52',1,'2021-03-10 13:59:52','Y'),(850,1,37,5,1,'2021-03-10 13:59:52',1,'2021-03-10 13:59:52','Y'),(851,1,38,1,1,'2021-03-10 13:59:53',1,'2021-03-10 13:59:53','Y'),(852,1,38,2,1,'2021-03-10 13:59:53',1,'2021-03-10 13:59:53','Y'),(853,1,38,3,1,'2021-03-10 13:59:54',1,'2021-03-10 13:59:54','Y'),(854,1,38,4,1,'2021-03-10 13:59:54',1,'2021-03-10 13:59:54','Y'),(855,1,38,5,1,'2021-03-10 13:59:55',1,'2021-03-10 13:59:55','Y'),(856,1,39,1,1,'2021-03-10 13:59:55',1,'2021-03-10 13:59:55','Y'),(857,1,39,2,1,'2021-03-10 13:59:56',1,'2021-03-10 13:59:56','Y'),(858,1,39,3,1,'2021-03-10 13:59:56',1,'2021-03-10 13:59:56','Y'),(859,1,39,4,1,'2021-03-10 13:59:57',1,'2021-03-10 13:59:57','Y'),(860,1,39,5,1,'2021-03-10 13:59:57',1,'2021-03-10 13:59:57','Y'),(861,1,40,1,1,'2021-03-10 13:59:58',1,'2021-03-10 13:59:58','Y'),(862,1,40,2,1,'2021-03-10 13:59:58',1,'2021-03-10 13:59:58','Y'),(863,1,40,3,1,'2021-03-10 13:59:59',1,'2021-03-10 13:59:59','Y'),(864,1,40,4,1,'2021-03-10 13:59:59',1,'2021-03-10 13:59:59','Y'),(865,1,40,5,1,'2021-03-10 14:00:00',1,'2021-03-10 14:00:00','Y'),(866,1,40,6,1,'2021-03-10 14:00:01',1,'2021-03-10 14:00:01','Y'),(867,1,41,1,1,'2021-03-10 14:00:01',1,'2021-03-10 14:00:01','Y'),(868,1,41,2,1,'2021-03-10 14:00:02',1,'2021-03-10 14:00:02','Y'),(869,1,41,3,1,'2021-03-10 14:00:03',1,'2021-03-10 14:00:03','Y'),(870,1,41,4,1,'2021-03-10 14:00:04',1,'2021-03-10 14:00:04','Y'),(871,1,41,5,1,'2021-03-10 14:00:05',1,'2021-03-10 14:00:05','Y'),(872,1,42,1,1,'2021-03-10 14:00:06',1,'2021-03-10 14:00:06','Y'),(873,1,42,2,1,'2021-03-10 14:00:07',1,'2021-03-10 14:00:07','Y'),(874,1,42,3,1,'2021-03-10 14:00:07',1,'2021-03-10 14:00:07','Y'),(875,1,42,4,1,'2021-03-10 14:00:07',1,'2021-03-10 14:00:07','Y'),(876,1,42,5,1,'2021-03-10 14:00:08',1,'2021-03-10 14:00:08','Y'),(877,1,43,1,1,'2021-03-10 14:00:08',1,'2021-03-10 14:00:08','Y'),(878,1,43,2,1,'2021-03-10 14:00:09',1,'2021-03-10 14:00:09','Y'),(879,1,43,4,1,'2021-03-10 14:00:11',1,'2021-03-10 14:00:11','Y'),(880,1,43,5,1,'2021-03-10 14:00:12',1,'2021-03-10 14:00:12','Y'),(881,1,44,1,1,'2021-03-10 14:00:13',1,'2021-03-10 14:00:13','Y'),(882,1,44,2,1,'2021-03-10 14:00:13',1,'2021-03-10 14:00:13','Y'),(883,1,44,3,1,'2021-03-10 14:00:14',1,'2021-03-10 14:00:14','Y'),(884,1,44,4,1,'2021-03-10 14:00:15',1,'2021-03-10 14:00:15','Y'),(885,1,44,5,1,'2021-03-10 14:00:15',1,'2021-03-10 14:00:15','Y'),(886,1,45,1,1,'2021-03-10 14:00:16',1,'2021-03-10 14:00:16','Y'),(887,1,45,2,1,'2021-03-10 14:00:16',1,'2021-03-10 14:00:16','Y'),(888,1,45,3,1,'2021-03-10 14:00:17',1,'2021-03-10 14:00:17','Y'),(889,1,45,4,1,'2021-03-10 14:00:18',1,'2021-03-10 14:00:18','Y'),(890,1,45,5,1,'2021-03-10 14:00:18',1,'2021-03-10 14:00:18','Y'),(891,1,46,3,1,'2021-03-10 14:00:19',1,'2021-03-10 14:00:19','Y'),(892,1,46,4,1,'2021-03-10 14:00:20',1,'2021-03-10 14:00:20','Y'),(893,1,46,5,1,'2021-03-10 14:00:20',1,'2021-03-10 14:00:20','Y'),(894,1,47,1,1,'2021-03-10 14:00:21',1,'2021-03-10 14:00:21','Y'),(895,1,47,2,1,'2021-03-10 14:00:21',1,'2021-03-10 14:00:21','Y'),(896,1,47,3,1,'2021-03-10 14:00:22',1,'2021-03-10 14:00:22','Y'),(897,1,47,4,1,'2021-03-10 14:00:22',1,'2021-03-10 14:00:22','Y'),(898,1,47,5,1,'2021-03-10 14:00:23',1,'2021-03-10 14:00:23','Y'),(899,1,48,1,1,'2021-03-10 14:00:23',1,'2021-03-10 14:00:23','Y'),(900,1,48,2,1,'2021-03-10 14:00:24',1,'2021-03-10 14:00:24','Y'),(901,1,48,3,1,'2021-03-10 14:00:25',1,'2021-03-10 14:00:25','Y'),(902,1,48,4,1,'2021-03-10 14:00:25',1,'2021-03-10 14:00:25','Y'),(903,1,48,5,1,'2021-03-10 14:00:26',1,'2021-03-10 14:00:26','Y'),(904,1,49,6,1,'2021-03-10 14:00:26',1,'2021-03-10 14:00:26','Y'),(905,11,41,1,1,'2021-03-10 09:29:58',1,'2021-03-10 10:20:04','N'),(906,11,41,2,1,'2021-03-10 09:29:58',1,'2021-03-10 10:20:04','N'),(907,11,41,3,1,'2021-03-10 09:29:58',1,'2021-03-10 10:20:04','N'),(908,11,41,4,1,'2021-03-10 09:23:09',1,'2021-03-10 10:20:04','N'),(909,11,41,5,1,'2021-03-10 09:29:58',1,'2021-03-10 10:20:04','N'),(910,11,42,1,1,'2021-03-10 09:33:38',1,'2021-03-10 10:20:04','N'),(911,11,42,2,1,'2021-03-10 09:33:38',1,'2021-03-10 10:20:04','N'),(912,11,42,3,1,'2021-03-10 09:29:58',1,'2021-03-10 10:20:04','N'),(913,11,42,4,1,'2021-03-10 09:33:38',1,'2021-03-10 10:20:04','N'),(914,11,42,5,1,'2021-03-10 09:33:38',1,'2021-03-10 10:20:04','N'),(915,11,43,1,1,'2021-03-10 09:37:21',1,'2021-03-10 10:20:04','N'),(916,11,43,2,1,'2021-03-10 09:37:22',1,'2021-03-10 10:20:04','N'),(917,11,43,3,1,'2021-03-10 09:37:22',1,'2021-03-10 10:20:04','N'),(918,11,43,4,1,'2021-03-10 09:33:38',1,'2021-03-10 10:20:04','N'),(919,11,43,5,1,'2021-03-10 09:33:38',1,'2021-03-10 10:20:04','N'),(920,11,44,1,1,'2021-03-10 09:43:09',1,'2021-03-10 10:20:04','N'),(921,11,44,2,1,'2021-03-10 09:43:10',1,'2021-03-10 10:20:04','N'),(922,11,44,3,1,'2021-03-10 09:37:22',1,'2021-03-10 10:20:04','N'),(923,11,44,4,1,'2021-03-10 09:43:10',1,'2021-03-10 10:20:04','N'),(924,11,44,5,1,'2021-03-10 09:43:10',1,'2021-03-10 10:20:04','N'),(925,11,45,1,1,'2021-03-10 09:47:06',1,'2021-03-10 10:20:04','N'),(926,11,45,2,1,'2021-03-10 09:43:10',1,'2021-03-10 10:20:04','N'),(927,11,45,3,1,'2021-03-10 09:46:16',1,'2021-03-10 10:20:04','N'),(928,11,45,4,1,'2021-03-10 09:47:06',1,'2021-03-10 10:20:04','N'),(929,11,45,5,1,'2021-03-10 09:47:06',1,'2021-03-10 10:20:04','N'),(930,11,46,3,1,'2021-03-10 09:51:34',1,'2021-03-10 10:20:04','N'),(931,11,46,4,1,'2021-03-10 09:51:35',1,'2021-03-10 10:20:04','N'),(932,11,46,5,1,'2021-03-10 09:47:06',1,'2021-03-10 10:20:04','N'),(933,11,47,1,1,'2021-03-10 09:56:39',1,'2021-03-10 10:20:04','N'),(934,11,47,2,1,'2021-03-10 09:51:35',1,'2021-03-10 10:20:04','N'),(935,11,47,3,1,'2021-03-10 09:56:39',1,'2021-03-10 10:20:04','N'),(936,11,47,4,1,'2021-03-10 09:56:39',1,'2021-03-10 10:20:04','N'),(937,11,47,5,1,'2021-03-10 09:56:39',1,'2021-03-10 10:20:04','N'),(938,11,48,1,1,'2021-03-10 10:02:01',1,'2021-03-10 10:20:04','N'),(939,11,48,2,1,'2021-03-10 10:02:01',1,'2021-03-10 10:20:04','N'),(940,11,48,3,1,'2021-03-10 09:56:39',1,'2021-03-10 10:20:04','N'),(941,11,48,4,1,'2021-03-10 10:02:01',1,'2021-03-10 10:20:04','N'),(942,11,48,5,1,'2021-03-10 10:02:01',1,'2021-03-10 10:20:04','N'),(943,11,49,6,1,'2021-03-10 10:02:01',1,'2021-03-10 10:20:04','N'),(944,1,5,2,1,'2021-03-10 12:18:14',1,'2021-03-10 13:58:32','N'),(945,1,10,2,1,'2021-03-10 13:58:54',1,'2021-03-10 13:58:54','Y'),(946,1,28,1,1,'2021-03-10 13:59:27',1,'2021-03-10 13:59:27','Y'),(947,1,28,2,1,'2021-03-10 13:59:28',1,'2021-03-10 13:59:28','Y'),(948,1,28,3,1,'2021-03-10 13:59:28',1,'2021-03-10 13:59:28','Y'),(949,1,28,4,1,'2021-03-10 13:59:29',1,'2021-03-10 13:59:29','Y'),(950,1,28,5,1,'2021-03-10 13:59:29',1,'2021-03-10 13:59:29','Y'),(951,1,29,1,1,'2021-03-10 13:59:30',1,'2021-03-10 13:59:30','Y'),(952,1,29,2,1,'2021-03-10 13:59:30',1,'2021-03-10 13:59:30','Y'),(953,1,29,3,1,'2021-03-10 13:59:31',1,'2021-03-10 13:59:31','Y'),(954,1,29,4,1,'2021-03-10 13:59:32',1,'2021-03-10 13:59:32','Y'),(955,1,29,5,1,'2021-03-10 13:59:32',1,'2021-03-10 13:59:32','Y'),(956,1,30,1,1,'2021-03-10 13:59:33',1,'2021-03-10 13:59:33','Y'),(957,1,30,2,1,'2021-03-10 13:59:33',1,'2021-03-10 13:59:33','Y'),(958,1,30,3,1,'2021-03-10 13:59:34',1,'2021-03-10 13:59:34','Y'),(959,1,30,4,1,'2021-03-10 13:59:35',1,'2021-03-10 13:59:35','Y'),(960,1,30,5,1,'2021-03-10 13:59:35',1,'2021-03-10 13:59:35','Y'),(961,1,31,1,1,'2021-03-10 13:59:36',1,'2021-03-10 13:59:36','Y'),(962,1,31,5,1,'2021-03-10 13:59:38',1,'2021-03-10 13:59:38','Y'),(963,1,46,2,1,'2021-03-10 13:58:11',1,'2021-03-10 13:58:32','N'),(964,1,24,1,1,'2021-03-10 13:59:10',1,'2021-03-10 13:59:10','Y'),(965,1,24,2,1,'2021-03-10 13:59:11',1,'2021-03-10 13:59:11','Y'),(966,1,24,4,1,'2021-03-10 13:59:13',1,'2021-03-10 13:59:13','Y'),(967,1,24,5,1,'2021-03-10 13:59:13',1,'2021-03-10 13:59:13','Y'),(968,1,35,5,1,'2021-03-10 13:59:49',1,'2021-03-10 13:59:49','Y'),(969,38,21,1,1,'2021-03-11 08:42:02',1,'2021-03-11 08:42:02','Y'),(970,38,21,2,1,'2021-03-11 08:42:03',1,'2021-03-11 08:42:03','Y'),(971,38,21,3,1,'2021-03-11 08:42:03',1,'2021-03-11 08:42:03','Y'),(972,38,21,4,1,'2021-03-11 08:42:03',1,'2021-03-11 08:42:03','Y'),(973,38,21,5,1,'2021-03-11 08:42:03',1,'2021-03-11 08:42:03','Y'),(974,38,21,6,1,'2021-03-11 08:42:03',1,'2021-03-11 08:42:03','Y'),(975,38,22,1,1,'2021-03-11 08:42:03',1,'2021-03-11 08:42:03','Y'),(976,38,22,2,1,'2021-03-11 08:42:03',1,'2021-03-11 08:42:03','Y'),(977,38,22,3,1,'2021-03-11 08:42:03',1,'2021-03-11 08:42:03','Y'),(978,38,22,4,1,'2021-03-11 08:42:03',1,'2021-03-11 08:42:03','Y'),(979,38,22,5,1,'2021-03-11 08:42:04',1,'2021-03-11 08:42:04','Y'),(980,38,22,6,1,'2021-03-11 06:22:01',1,'2021-03-11 08:42:02','N'),(981,38,23,3,1,'2021-03-11 06:22:01',1,'2021-03-11 08:42:02','N'),(982,38,24,3,1,'2021-03-11 08:42:04',1,'2021-03-11 08:42:04','Y'),(983,38,24,1,1,'2021-03-11 08:42:04',1,'2021-03-11 08:42:04','Y'),(984,38,24,2,1,'2021-03-11 08:42:04',1,'2021-03-11 08:42:04','Y'),(985,38,24,4,1,'2021-03-11 08:42:04',1,'2021-03-11 08:42:04','Y'),(986,38,24,5,1,'2021-03-11 08:42:04',1,'2021-03-11 08:42:04','Y'),(987,38,27,1,1,'2021-03-11 06:22:02',1,'2021-03-11 08:42:02','N'),(988,38,27,2,1,'2021-03-11 06:22:02',1,'2021-03-11 08:42:02','N'),(989,38,27,3,1,'2021-03-11 06:22:03',1,'2021-03-11 08:42:02','N'),(990,38,27,4,1,'2021-03-11 06:22:03',1,'2021-03-11 08:42:02','N'),(991,38,27,5,1,'2021-03-11 06:22:03',1,'2021-03-11 08:42:02','N'),(992,38,35,1,1,'2021-03-11 08:42:04',1,'2021-03-11 08:42:04','Y'),(993,38,35,2,1,'2021-03-11 08:42:04',1,'2021-03-11 08:42:04','Y'),(994,38,35,3,1,'2021-03-11 08:42:05',1,'2021-03-11 08:42:05','Y'),(995,38,35,4,1,'2021-03-11 08:42:05',1,'2021-03-11 08:42:05','Y'),(996,38,35,5,1,'2021-03-11 08:42:05',1,'2021-03-11 08:42:05','Y'),(997,38,2,1,1,'2021-03-11 08:42:02',1,'2021-03-11 08:42:02','Y'),(998,38,2,3,1,'2021-03-11 07:15:44',1,'2021-03-11 08:42:02','N'),(999,38,2,4,1,'2021-03-11 07:15:44',1,'2021-03-11 08:42:02','N'),(1000,38,2,5,1,'2021-03-11 07:15:44',1,'2021-03-11 08:42:02','N'),(1001,38,2,6,1,'2021-03-11 07:15:44',1,'2021-03-11 08:42:02','N'),(1002,38,5,1,1,'2021-03-11 06:21:59',1,'2021-03-11 08:42:02','N'),(1003,38,5,3,1,'2021-03-11 06:21:59',1,'2021-03-11 08:42:02','N'),(1004,38,5,4,1,'2021-03-11 06:21:59',1,'2021-03-11 08:42:02','N'),(1005,38,5,5,1,'2021-03-11 06:21:59',1,'2021-03-11 08:42:02','N'),(1006,38,5,6,1,'2021-03-11 06:21:59',1,'2021-03-11 08:42:02','N'),(1007,38,10,1,1,'2021-03-11 06:21:59',1,'2021-03-11 08:42:02','N'),(1008,38,10,3,1,'2021-03-11 06:21:59',1,'2021-03-11 08:42:02','N'),(1009,38,10,4,1,'2021-03-11 06:22:00',1,'2021-03-11 08:42:02','N'),(1010,38,10,5,1,'2021-03-11 06:22:00',1,'2021-03-11 08:42:02','N'),(1011,38,10,6,1,'2021-03-11 06:22:00',1,'2021-03-11 08:42:02','N'),(1012,38,10,2,1,'2021-03-11 06:22:00',1,'2021-03-11 08:42:02','N'),(1013,38,25,1,1,'2021-03-11 06:22:02',1,'2021-03-11 08:42:02','N'),(1014,38,25,2,1,'2021-03-11 06:22:02',1,'2021-03-11 08:42:02','N'),(1015,38,25,3,1,'2021-03-11 06:22:02',1,'2021-03-11 08:42:02','N'),(1016,38,25,4,1,'2021-03-11 06:22:02',1,'2021-03-11 08:42:02','N'),(1017,38,25,5,1,'2021-03-11 06:22:02',1,'2021-03-11 08:42:02','N'),(1018,38,26,6,1,'2021-03-11 06:22:02',1,'2021-03-11 08:42:02','N'),(1019,38,28,1,1,'2021-03-11 06:22:03',1,'2021-03-11 08:42:02','N'),(1020,38,28,2,1,'2021-03-11 06:22:03',1,'2021-03-11 08:42:02','N'),(1021,38,28,3,1,'2021-03-11 06:22:03',1,'2021-03-11 08:42:02','N'),(1022,38,28,4,1,'2021-03-11 06:22:03',1,'2021-03-11 08:42:02','N'),(1023,38,28,5,1,'2021-03-11 06:22:03',1,'2021-03-11 08:42:02','N'),(1024,38,29,1,1,'2021-03-11 06:22:04',1,'2021-03-11 08:42:02','N'),(1025,38,29,2,1,'2021-03-11 06:22:04',1,'2021-03-11 08:42:02','N'),(1026,38,29,3,1,'2021-03-11 06:22:04',1,'2021-03-11 08:42:02','N'),(1027,38,29,4,1,'2021-03-11 06:45:53',1,'2021-03-11 08:42:02','N'),(1028,38,29,5,1,'2021-03-11 06:22:04',1,'2021-03-11 08:42:02','N'),(1029,38,30,1,1,'2021-03-11 06:45:53',1,'2021-03-11 08:42:02','N'),(1030,38,30,2,1,'2021-03-11 06:22:04',1,'2021-03-11 08:42:02','N'),(1031,38,30,3,1,'2021-03-11 06:22:05',1,'2021-03-11 08:42:02','N'),(1032,38,30,4,1,'2021-03-11 06:22:05',1,'2021-03-11 08:42:02','N'),(1033,38,30,5,1,'2021-03-11 06:22:05',1,'2021-03-11 08:42:02','N'),(1034,38,31,1,1,'2021-03-11 06:22:05',1,'2021-03-11 08:42:02','N'),(1035,38,31,2,1,'2021-03-11 06:22:05',1,'2021-03-11 08:42:02','N'),(1036,38,31,3,1,'2021-03-11 06:22:05',1,'2021-03-11 08:42:02','N'),(1037,38,31,4,1,'2021-03-11 06:22:05',1,'2021-03-11 08:42:02','N'),(1038,38,31,5,1,'2021-03-11 06:22:06',1,'2021-03-11 08:42:02','N'),(1039,38,32,1,1,'2021-03-11 06:22:06',1,'2021-03-11 08:42:02','N'),(1040,38,32,2,1,'2021-03-11 06:22:06',1,'2021-03-11 08:42:02','N'),(1041,38,32,3,1,'2021-03-11 06:22:06',1,'2021-03-11 08:42:02','N'),(1042,38,32,4,1,'2021-03-11 06:22:06',1,'2021-03-11 08:42:02','N'),(1043,38,32,5,1,'2021-03-11 06:22:06',1,'2021-03-11 08:42:02','N'),(1044,38,33,1,1,'2021-03-11 06:22:06',1,'2021-03-11 08:42:02','N'),(1045,38,33,2,1,'2021-03-11 06:22:06',1,'2021-03-11 08:42:02','N'),(1046,38,33,3,1,'2021-03-11 06:22:07',1,'2021-03-11 08:42:02','N'),(1047,38,33,4,1,'2021-03-11 06:22:07',1,'2021-03-11 08:42:02','N'),(1048,38,33,5,1,'2021-03-11 06:22:07',1,'2021-03-11 08:42:02','N'),(1049,38,34,1,1,'2021-03-11 06:22:07',1,'2021-03-11 08:42:02','N'),(1050,38,34,2,1,'2021-03-11 06:22:07',1,'2021-03-11 08:42:02','N'),(1051,38,34,3,1,'2021-03-11 06:22:07',1,'2021-03-11 08:42:02','N'),(1052,38,34,4,1,'2021-03-11 06:45:53',1,'2021-03-11 08:42:02','N'),(1053,38,34,5,1,'2021-03-11 06:45:53',1,'2021-03-11 08:42:02','N'),(1054,38,36,1,1,'2021-03-11 06:22:08',1,'2021-03-11 08:42:02','N'),(1055,38,37,1,1,'2021-03-11 06:22:08',1,'2021-03-11 08:42:02','N'),(1056,38,37,2,1,'2021-03-11 06:22:08',1,'2021-03-11 08:42:02','N'),(1057,38,37,3,1,'2021-03-11 06:22:09',1,'2021-03-11 08:42:02','N'),(1058,38,37,4,1,'2021-03-11 06:22:09',1,'2021-03-11 08:42:02','N'),(1059,38,37,5,1,'2021-03-11 06:22:09',1,'2021-03-11 08:42:02','N'),(1060,38,38,1,1,'2021-03-11 06:22:09',1,'2021-03-11 08:42:02','N'),(1061,38,38,2,1,'2021-03-11 06:22:09',1,'2021-03-11 08:42:02','N'),(1062,38,38,3,1,'2021-03-11 06:22:09',1,'2021-03-11 08:42:02','N'),(1063,38,38,4,1,'2021-03-11 06:22:10',1,'2021-03-11 08:42:02','N'),(1064,38,38,5,1,'2021-03-11 06:22:10',1,'2021-03-11 08:42:02','N'),(1065,38,39,1,1,'2021-03-11 06:22:10',1,'2021-03-11 08:42:02','N'),(1066,38,39,2,1,'2021-03-11 06:22:10',1,'2021-03-11 08:42:02','N'),(1067,38,39,3,1,'2021-03-11 06:22:10',1,'2021-03-11 08:42:02','N'),(1068,38,39,4,1,'2021-03-11 06:22:10',1,'2021-03-11 08:42:02','N'),(1069,38,39,5,1,'2021-03-11 06:22:10',1,'2021-03-11 08:42:02','N'),(1070,38,40,1,1,'2021-03-11 06:22:10',1,'2021-03-11 08:42:02','N'),(1071,38,40,2,1,'2021-03-11 06:22:11',1,'2021-03-11 08:42:02','N'),(1072,38,40,3,1,'2021-03-11 06:22:11',1,'2021-03-11 08:42:02','N'),(1073,38,40,4,1,'2021-03-11 06:22:11',1,'2021-03-11 08:42:02','N'),(1074,38,40,5,1,'2021-03-11 06:22:11',1,'2021-03-11 08:42:02','N'),(1075,38,40,6,1,'2021-03-11 06:22:11',1,'2021-03-11 08:42:02','N'),(1076,38,41,1,1,'2021-03-11 06:22:11',1,'2021-03-11 08:42:02','N'),(1077,38,41,2,1,'2021-03-11 06:22:11',1,'2021-03-11 08:42:02','N'),(1078,38,41,3,1,'2021-03-11 06:22:11',1,'2021-03-11 08:42:02','N'),(1079,38,41,4,1,'2021-03-11 06:22:12',1,'2021-03-11 08:42:02','N'),(1080,38,41,5,1,'2021-03-11 06:22:12',1,'2021-03-11 08:42:02','N'),(1081,38,42,1,1,'2021-03-11 06:22:12',1,'2021-03-11 08:42:02','N'),(1082,38,42,2,1,'2021-03-11 06:22:12',1,'2021-03-11 08:42:02','N'),(1083,38,42,3,1,'2021-03-11 06:22:12',1,'2021-03-11 08:42:02','N'),(1084,38,42,4,1,'2021-03-11 06:22:12',1,'2021-03-11 08:42:02','N'),(1085,38,42,5,1,'2021-03-11 06:45:54',1,'2021-03-11 08:42:02','N'),(1086,38,43,1,1,'2021-03-11 06:22:12',1,'2021-03-11 08:42:02','N'),(1087,38,43,2,1,'2021-03-11 06:22:13',1,'2021-03-11 08:42:02','N'),(1088,38,43,3,1,'2021-03-11 06:22:13',1,'2021-03-11 08:42:02','N'),(1089,38,43,4,1,'2021-03-11 06:22:13',1,'2021-03-11 08:42:02','N'),(1090,38,43,5,1,'2021-03-11 06:45:54',1,'2021-03-11 08:42:02','N'),(1091,38,44,1,1,'2021-03-11 06:22:13',1,'2021-03-11 08:42:02','N'),(1092,38,44,2,1,'2021-03-11 06:45:54',1,'2021-03-11 08:42:02','N'),(1093,38,44,3,1,'2021-03-11 06:45:54',1,'2021-03-11 08:42:02','N'),(1094,38,44,4,1,'2021-03-11 06:45:54',1,'2021-03-11 08:42:02','N'),(1095,38,44,5,1,'2021-03-11 06:22:14',1,'2021-03-11 08:42:02','N'),(1096,38,45,1,1,'2021-03-11 06:22:14',1,'2021-03-11 08:42:02','N'),(1097,38,45,2,1,'2021-03-11 06:22:14',1,'2021-03-11 08:42:02','N'),(1098,38,45,3,1,'2021-03-11 06:22:14',1,'2021-03-11 08:42:02','N'),(1099,38,45,4,1,'2021-03-11 06:22:14',1,'2021-03-11 08:42:02','N'),(1100,38,45,5,1,'2021-03-11 06:22:14',1,'2021-03-11 08:42:02','N'),(1101,38,46,3,1,'2021-03-11 06:22:15',1,'2021-03-11 08:42:02','N'),(1102,38,46,4,1,'2021-03-11 06:22:15',1,'2021-03-11 08:42:02','N'),(1103,38,46,5,1,'2021-03-11 06:22:15',1,'2021-03-11 08:42:02','N'),(1104,38,47,1,1,'2021-03-11 06:22:15',1,'2021-03-11 08:42:02','N'),(1105,38,47,2,1,'2021-03-11 06:22:15',1,'2021-03-11 08:42:02','N'),(1106,38,47,3,1,'2021-03-11 06:22:15',1,'2021-03-11 08:42:02','N'),(1107,38,47,4,1,'2021-03-11 06:45:54',1,'2021-03-11 08:42:02','N'),(1108,38,47,5,1,'2021-03-11 06:22:15',1,'2021-03-11 08:42:02','N'),(1109,38,48,1,1,'2021-03-11 06:22:16',1,'2021-03-11 08:42:02','N'),(1110,38,48,2,1,'2021-03-11 06:22:16',1,'2021-03-11 08:42:02','N'),(1111,38,48,3,1,'2021-03-11 06:22:16',1,'2021-03-11 08:42:02','N'),(1112,38,48,4,1,'2021-03-11 06:45:54',1,'2021-03-11 08:42:02','N'),(1113,38,48,5,1,'2021-03-11 06:45:54',1,'2021-03-11 08:42:02','N'),(1114,38,49,6,1,'2021-03-11 06:22:16',1,'2021-03-11 08:42:02','N'),(1115,39,2,1,1,'2021-03-11 09:23:00',1,'2021-03-11 09:23:00','Y'),(1116,39,2,3,1,'2021-03-11 09:23:00',1,'2021-03-11 09:23:00','Y'),(1117,39,2,4,1,'2021-03-11 09:23:00',1,'2021-03-11 09:23:00','Y'),(1118,39,2,5,1,'2021-03-11 09:23:00',1,'2021-03-11 09:23:00','Y'),(1119,39,2,6,1,'2021-03-11 09:23:00',1,'2021-03-11 09:23:00','Y'),(1120,39,21,1,1,'2021-03-11 09:23:00',1,'2021-03-11 09:23:00','Y'),(1121,39,21,2,1,'2021-03-11 09:23:01',1,'2021-03-11 09:23:01','Y'),(1122,39,21,3,1,'2021-03-11 09:23:01',1,'2021-03-11 09:23:01','Y'),(1123,39,21,4,1,'2021-03-11 09:23:01',1,'2021-03-11 09:23:01','Y'),(1124,39,21,5,1,'2021-03-11 09:23:01',1,'2021-03-11 09:23:01','Y'),(1125,39,21,6,1,'2021-03-11 09:23:01',1,'2021-03-11 09:23:01','Y'),(1126,39,22,1,1,'2021-03-11 09:23:01',1,'2021-03-11 09:23:01','Y'),(1127,39,22,2,1,'2021-03-11 09:23:01',1,'2021-03-11 09:23:01','Y'),(1128,39,22,3,1,'2021-03-11 09:23:01',1,'2021-03-11 09:23:01','Y'),(1129,39,22,4,1,'2021-03-11 09:23:01',1,'2021-03-11 09:23:01','Y'),(1130,39,22,5,1,'2021-03-11 09:23:02',1,'2021-03-11 09:23:02','Y'),(1131,39,22,6,1,'2021-03-11 09:23:02',1,'2021-03-11 09:23:02','Y'),(1132,39,24,3,1,'2021-03-11 09:23:02',1,'2021-03-11 09:23:02','Y'),(1133,39,24,1,1,'2021-03-11 09:23:02',1,'2021-03-11 09:23:02','Y'),(1134,39,24,2,1,'2021-03-11 09:23:02',1,'2021-03-11 09:23:02','Y'),(1135,39,24,4,1,'2021-03-11 09:23:02',1,'2021-03-11 09:23:02','Y'),(1136,39,24,5,1,'2021-03-11 09:23:02',1,'2021-03-11 09:23:02','Y'),(1137,39,35,1,1,'2021-03-11 09:23:03',1,'2021-03-11 09:23:03','Y'),(1138,39,35,2,1,'2021-03-11 09:23:03',1,'2021-03-11 09:23:03','Y'),(1139,39,35,3,1,'2021-03-11 09:23:03',1,'2021-03-11 09:23:03','Y'),(1140,39,35,4,1,'2021-03-11 09:23:03',1,'2021-03-11 09:23:03','Y'),(1141,39,35,5,1,'2021-03-11 09:23:03',1,'2021-03-11 09:23:03','Y'),(1170,41,21,1,1,'2021-03-12 09:23:23',1,'2021-03-12 09:23:23','Y'),(1171,41,21,2,1,'2021-03-12 09:23:23',1,'2021-03-12 09:23:23','Y'),(1172,41,21,3,1,'2021-03-12 09:23:23',1,'2021-03-12 09:23:23','Y'),(1173,41,21,4,1,'2021-03-12 09:23:23',1,'2021-03-12 09:23:23','Y'),(1174,41,21,5,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1175,41,21,6,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1176,41,22,1,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1177,41,22,2,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1178,41,22,3,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1179,41,22,4,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1180,41,22,5,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1181,41,22,6,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1182,41,23,3,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1183,41,24,3,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1184,41,24,1,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1185,41,24,2,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1186,41,24,4,1,'2021-03-12 09:23:24',1,'2021-03-12 09:23:24','Y'),(1187,41,24,5,1,'2021-03-12 09:23:25',1,'2021-03-12 09:23:25','Y'),(1188,41,31,1,1,'2021-03-12 09:23:25',1,'2021-03-12 09:23:25','Y'),(1189,41,31,2,1,'2021-03-12 09:23:25',1,'2021-03-12 09:23:25','Y'),(1190,41,31,3,1,'2021-03-12 09:23:25',1,'2021-03-12 09:23:25','Y'),(1191,41,31,4,1,'2021-03-12 09:23:25',1,'2021-03-12 09:23:25','Y'),(1192,41,31,5,1,'2021-03-12 09:23:25',1,'2021-03-12 09:23:25','Y'),(1193,41,33,1,1,'2021-03-12 09:23:25',1,'2021-03-12 09:23:25','Y'),(1194,41,33,2,1,'2021-03-12 09:23:25',1,'2021-03-12 09:23:25','Y'),(1195,41,33,3,1,'2021-03-12 09:23:25',1,'2021-03-12 09:23:25','Y'),(1196,41,33,4,1,'2021-03-12 09:23:25',1,'2021-03-12 09:23:25','Y'),(1197,41,33,5,1,'2021-03-12 09:23:25',1,'2021-03-12 09:23:25','Y'),(1198,41,34,1,1,'2021-03-12 09:23:26',1,'2021-03-12 09:23:26','Y'),(1199,41,34,2,1,'2021-03-12 09:23:26',1,'2021-03-12 09:23:26','Y'),(1200,41,34,3,1,'2021-03-12 09:23:26',1,'2021-03-12 09:23:26','Y'),(1201,41,34,4,1,'2021-03-12 09:23:26',1,'2021-03-12 09:23:26','Y'),(1202,41,34,5,1,'2021-03-12 09:23:26',1,'2021-03-12 09:23:26','Y'),(1203,41,35,1,1,'2021-03-12 09:23:26',1,'2021-03-12 09:23:26','Y'),(1204,41,35,2,1,'2021-03-12 09:23:26',1,'2021-03-12 09:23:26','Y'),(1205,41,35,3,1,'2021-03-12 09:23:26',1,'2021-03-12 09:23:26','Y'),(1206,41,35,4,1,'2021-03-12 09:23:26',1,'2021-03-12 09:23:26','Y');
/*!40000 ALTER TABLE `role_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_module_action`
--

DROP TABLE IF EXISTS `role_module_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_module_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userrole_id` int(11) NOT NULL,
  `moduleaction_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_modal_user_role` (`userrole_id`),
  KEY `role_model_action` (`moduleaction_id`),
  KEY `role_model_create_by` (`created_by`),
  KEY `role_model_update_by` (`updated_by`),
  CONSTRAINT `role_modal_user_role` FOREIGN KEY (`userrole_id`) REFERENCES `user_role` (`id`),
  CONSTRAINT `role_model_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `role_model_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `role_module_action` FOREIGN KEY (`moduleaction_id`) REFERENCES `module_actions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_module_action`
--

LOCK TABLES `role_module_action` WRITE;
/*!40000 ALTER TABLE `role_module_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_module_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_history`
--

DROP TABLE IF EXISTS `setup_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setup_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `needles_id` int(11) NOT NULL,
  `nerves_id` int(11) NOT NULL,
  `location` enum('Left','Right','Bilateral') NOT NULL,
  `montages_id` int(11) NOT NULL,
  `tcmep_id` int(11) NOT NULL,
  `muscles_id` int(11) NOT NULL,
  `modalities_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `setup_need` (`needles_id`),
  KEY `setup_nerves` (`nerves_id`),
  KEY `setup_montage` (`montages_id`),
  KEY `setup_tcmp` (`tcmep_id`),
  KEY `setup_muscle` (`muscles_id`),
  KEY `setup_modilites` (`modalities_id`),
  KEY `setup_create` (`created_by`),
  KEY `setup_update` (`updated_by`),
  KEY `fk_setup_history_company_id_idx` (`company_id`),
  CONSTRAINT `fk_setup_history_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `setup_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `setup_modilites` FOREIGN KEY (`modalities_id`) REFERENCES `modalities_master` (`id`),
  CONSTRAINT `setup_montage` FOREIGN KEY (`montages_id`) REFERENCES `montages_master` (`id`),
  CONSTRAINT `setup_muscle` FOREIGN KEY (`muscles_id`) REFERENCES `muscles_master` (`id`),
  CONSTRAINT `setup_need` FOREIGN KEY (`needles_id`) REFERENCES `needles_master` (`id`),
  CONSTRAINT `setup_nerves` FOREIGN KEY (`nerves_id`) REFERENCES `nerves_master` (`id`),
  CONSTRAINT `setup_tcmp` FOREIGN KEY (`tcmep_id`) REFERENCES `tcmep_master` (`id`),
  CONSTRAINT `setup_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_history`
--

LOCK TABLES `setup_history` WRITE;
/*!40000 ALTER TABLE `setup_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `setup_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_muscles`
--

DROP TABLE IF EXISTS `setup_muscles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setup_muscles` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `muscles_id` int(11) DEFAULT NULL,
  `side` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_setup_muscles_updated_by_idx` (`update_by`),
  KEY `fk_setup_muscles_created_by_idx` (`created_by`),
  KEY `fk_setup_muscles_patient_id_idx` (`patient_id`),
  KEY `fk_setup_muscles_company_id_idx` (`company_id`),
  CONSTRAINT `fk_setup_muscles_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setup_muscles_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setup_muscles_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setup_muscles_updated_by` FOREIGN KEY (`update_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_muscles`
--

LOCK TABLES `setup_muscles` WRITE;
/*!40000 ALTER TABLE `setup_muscles` DISABLE KEYS */;
/*!40000 ALTER TABLE `setup_muscles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_nerves`
--

DROP TABLE IF EXISTS `setup_nerves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setup_nerves` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `nerves_type_id` int(11) DEFAULT NULL,
  `nerves_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_adrress` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_setup_nerves_updated_by_idx` (`updated_by`),
  KEY `fk_setup_nerves_patient_id_idx` (`patient_id`),
  KEY `fk_setup_nerves_created_by_idx` (`created_by`),
  KEY `fk_setup_nerves_company_id_idx` (`company_id`),
  CONSTRAINT `fk_setup_nerves_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setup_nerves_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setup_nerves_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setup_nerves_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_nerves`
--

LOCK TABLES `setup_nerves` WRITE;
/*!40000 ALTER TABLE `setup_nerves` DISABLE KEYS */;
/*!40000 ALTER TABLE `setup_nerves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signal_change_master`
--

DROP TABLE IF EXISTS `signal_change_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signal_change_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `signal_change_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `singnal_create` (`created_by`),
  KEY `singnal_update` (`updated_by`),
  KEY `fk_signal_change_master_company_id_idx` (`company_id`),
  CONSTRAINT `fk_signal_change_master_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `singnal_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `singnal_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signal_change_master`
--

LOCK TABLES `signal_change_master` WRITE;
/*!40000 ALTER TABLE `signal_change_master` DISABLE KEYS */;
INSERT INTO `signal_change_master` VALUES (2,'0/4',1,'2021-02-26 10:17:12',1,'2021-02-26 10:17:12','192.168.1.198','Y',NULL),(3,'LOSS 113',1,'2021-02-26 10:17:26',1,'2021-03-05 10:12:44','192.168.1.198','Y',NULL),(4,'CHANGE (0-100%) (Amp)',1,'2021-02-26 10:18:00',1,'2021-03-05 10:10:01','192.168.1.198','Y',NULL),(5,'BURST, TRAIN, (DURATION)',1,'2021-02-26 10:18:32',1,'2021-03-05 10:09:22','192.168.1.198','N',NULL);
/*!40000 ALTER TABLE `signal_change_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_configuration`
--

DROP TABLE IF EXISTS `site_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  `company_logo` varchar(255) DEFAULT 'NULL',
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_create_by` (`updated_by`),
  CONSTRAINT `site_create_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_configuration`
--

LOCK TABLES `site_configuration` WRITE;
/*!40000 ALTER TABLE `site_configuration` DISABLE KEYS */;
INSERT INTO `site_configuration` VALUES (7,'FEVICON','FAVICON','1612850709.ico','2021-02-05 13:47:48',1,'2021-03-04 12:50:41','Y','192.168.1.193'),(11,'APP_NAME','ACR','NULL','2021-02-09 06:08:34',1,'2021-02-25 06:12:18','Y','223.236.118.42'),(12,'IT','12','1614943810.png','2021-03-05 11:30:10',1,'2021-03-05 11:30:10','Y','192.168.1.1');
/*!40000 ALTER TABLE `site_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialties_master`
--

DROP TABLE IF EXISTS `specialties_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialties_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speciality_name` varchar(255) NOT NULL,
  `speciality_description` text,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `special_create_by` (`created_by`),
  KEY `special_update_by` (`updated_by`),
  CONSTRAINT `special_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `special_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialties_master`
--

LOCK TABLES `specialties_master` WRITE;
/*!40000 ALTER TABLE `specialties_master` DISABLE KEYS */;
INSERT INTO `specialties_master` VALUES (1,'BCR','this is test description for bcr',1,'2021-02-03 10:04:01',1,'2021-03-09 04:44:33','127.0.0.1','Y'),(2,'SSEPS','<p><strong>Wikipedia</strong> is a free, open content online encyclopedia created through the collaborative effort of a community of users known as Wikipedians. Anyone registered on the site can create an article for publication; registration is not required to edit articles. ... <strong>Wikipedia</strong> was the <i>only </i>non-commercial site of the top ten.</p>',1,'2021-02-09 12:50:14',1,'2021-03-04 07:54:07','127.0.0.1','Y'),(3,'bma',NULL,1,'2021-02-24 03:57:54',1,'2021-03-09 04:44:52','74.71.104.8','Y');
/*!40000 ALTER TABLE `specialties_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_master`
--

DROP TABLE IF EXISTS `state_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `state_country` (`country_id`),
  KEY `state_create_by` (`created_by`),
  KEY `state_update_by` (`updated_by`),
  CONSTRAINT `state_country` FOREIGN KEY (`country_id`) REFERENCES `country_master` (`id`),
  CONSTRAINT `state_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `state_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_master`
--

LOCK TABLES `state_master` WRITE;
/*!40000 ALTER TABLE `state_master` DISABLE KEYS */;
INSERT INTO `state_master` VALUES (1,1,'Gujarat',1,'2021-02-03 08:56:17',1,'2021-03-01 11:13:12','127.0.0.1','Y'),(2,1,'Maharastra',1,'2021-02-06 15:52:55',1,'2021-03-01 11:13:09','127.0.0.1','Y'),(3,2,'Washington',1,'2021-02-06 15:54:28',1,'2021-02-19 13:39:16','127.0.0.1','Y'),(6,1,'Punjab',1,'2021-02-19 08:50:31',1,'2021-02-19 13:38:44','192.168.1.198','Y'),(7,1,'UP',1,'2021-03-02 12:53:54',1,'2021-03-05 09:18:36','192.168.1.1','Y'),(8,9,'Tokyo',1,'2021-03-05 09:17:11',1,'2021-03-05 09:18:33','192.168.1.89','Y'),(9,4,'Hongkong',1,'2021-03-05 09:17:29',1,'2021-03-05 09:18:31','192.168.1.89','Y'),(10,5,'Lahor',1,'2021-03-05 09:17:56',1,'2021-03-05 09:18:29','192.168.1.89','Y'),(11,10,'Kathmandu',1,'2021-03-05 09:18:20',1,'2021-03-05 09:18:26','192.168.1.89','Y'),(12,6,'Tehran',1,'2021-03-05 09:19:25',1,'2021-03-05 09:19:25','192.168.1.89',NULL),(13,7,'Bagdhad',1,'2021-03-05 09:19:46',1,'2021-03-05 09:19:46','192.168.1.89',NULL),(14,1,'rajasthan',65,'2021-03-12 09:26:51',65,'2021-03-12 09:27:19','192.168.1.72','Y'),(15,1,'rajasthan',65,'2021-03-12 09:27:09',65,'2021-03-12 09:27:23','192.168.1.72','Y'),(16,1,'rajasthan',65,'2021-03-12 09:29:14',65,'2021-03-12 09:29:14','192.168.1.72',NULL);
/*!40000 ALTER TABLE `state_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_hospital`
--

DROP TABLE IF EXISTS `sub_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_user_name` text,
  `hospital_address` text,
  `country_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `hospital_image` varchar(255) DEFAULT NULL,
  `hospital_contact` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_hospital`
--

LOCK TABLES `sub_hospital` WRITE;
/*!40000 ALTER TABLE `sub_hospital` DISABLE KEYS */;
INSERT INTO `sub_hospital` VALUES (1,1,'test hospital name','test hospital user name','test hospital address',1,1,1,'hospital_image.jpg','1234567890',1,'2021-02-03 10:07:42',1,'2021-02-03 10:07:42','127.0.0.1');
/*!40000 ALTER TABLE `sub_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_transaction_history_alerts`
--

DROP TABLE IF EXISTS `sub_transaction_history_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_transaction_history_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `event` varchar(255) NOT NULL,
  `nerves` varchar(255) NOT NULL,
  `signals` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tr_history_tr` (`transaction_id`),
  KEY `tr_history_create` (`created_by`),
  KEY `tr_history` (`updated_by`),
  CONSTRAINT `tr_history` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `tr_history_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `tr_history_tr` FOREIGN KEY (`transaction_id`) REFERENCES `transaction_history_alerts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_transaction_history_alerts`
--

LOCK TABLES `sub_transaction_history_alerts` WRITE;
/*!40000 ALTER TABLE `sub_transaction_history_alerts` DISABLE KEYS */;
INSERT INTO `sub_transaction_history_alerts` VALUES (9,7,'3','2','4',1,'2021-03-02 05:47:01',1,'2021-03-02 05:47:01','192.168.1.198',NULL),(10,6,'3','1','3',1,'2021-03-02 05:47:16',1,'2021-03-05 11:17:12','192.168.1.198',NULL);
/*!40000 ALTER TABLE `sub_transaction_history_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surgeon_master`
--

DROP TABLE IF EXISTS `surgeon_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgeon_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surgeon_name` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgeon_master`
--

LOCK TABLES `surgeon_master` WRITE;
/*!40000 ALTER TABLE `surgeon_master` DISABLE KEYS */;
INSERT INTO `surgeon_master` VALUES (1,'surgeon master','2021-02-19 07:18:03',1,'2021-03-05 09:43:17',1,'192.168.1.1','Y'),(3,'Orthopaedic surgeon','2021-03-02 12:49:07',1,'2021-03-02 12:52:52',1,'192.168.1.1','Y'),(4,'Vishal patel','2021-03-04 06:58:02',1,'2021-03-05 09:43:11',1,'192.168.1.1','Y'),(5,'ravi','2021-03-05 05:52:37',1,'2021-03-05 09:43:07',1,'192.168.1.89','Y'),(6,'surgery','2021-03-05 09:43:38',1,'2021-03-05 11:24:30',1,'192.168.1.89',NULL);
/*!40000 ALTER TABLE `surgeon_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t04`
--

DROP TABLE IF EXISTS `t04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t04` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `petient_id` int(11) DEFAULT NULL,
  `extremity` varchar(255) DEFAULT NULL,
  `side` varchar(255) DEFAULT NULL,
  `train` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t04_patient_id_idx` (`petient_id`),
  KEY `fk_t04_created_by_idx` (`created_by`),
  KEY `fk_t04_updated_by_idx` (`updated_by`),
  CONSTRAINT `fk_t04_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t04_patient_id` FOREIGN KEY (`petient_id`) REFERENCES `patient_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t04_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t04`
--

LOCK TABLES `t04` WRITE;
/*!40000 ALTER TABLE `t04` DISABLE KEYS */;
/*!40000 ALTER TABLE `t04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcmep_master`
--

DROP TABLE IF EXISTS `tcmep_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcmep_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `needles_id` int(11) NOT NULL,
  `tcmep_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcmp_need` (`needles_id`),
  KEY `tcmp_create` (`created_by`),
  KEY `tcmp_update` (`updated_by`),
  CONSTRAINT `tcmp_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `tcmp_need` FOREIGN KEY (`needles_id`) REFERENCES `needles_master` (`id`),
  CONSTRAINT `tcmp_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcmep_master`
--

LOCK TABLES `tcmep_master` WRITE;
/*!40000 ALTER TABLE `tcmep_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcmep_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template master`
--

DROP TABLE IF EXISTS `template master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `template_html` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_template master_company_id_idx` (`company_id`),
  CONSTRAINT `fk_template master_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template master`
--

LOCK TABLES `template master` WRITE;
/*!40000 ALTER TABLE `template master` DISABLE KEYS */;
INSERT INTO `template master` VALUES (1,'slug','test template name','template_html',1,'2021-02-03 10:07:42',1,'2021-02-03 10:07:42','127.0.0.1',NULL);
/*!40000 ALTER TABLE `template master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_history_alerts`
--

DROP TABLE IF EXISTS `transaction_history_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_history_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `modality_id` int(11) NOT NULL,
  `baseline_id` int(11) NOT NULL,
  `signal_change_id` int(11) NOT NULL,
  `array_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tr_modality` (`modality_id`),
  KEY `tr_base` (`baseline_id`),
  KEY `tr_singnal` (`signal_change_id`),
  KEY `tr_array` (`array_id`),
  KEY `tr_create` (`created_by`),
  KEY `tr_update` (`updated_by`),
  CONSTRAINT `tr_array` FOREIGN KEY (`array_id`) REFERENCES `array_master` (`id`),
  CONSTRAINT `tr_base` FOREIGN KEY (`baseline_id`) REFERENCES `baseline_master` (`id`),
  CONSTRAINT `tr_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `tr_modality` FOREIGN KEY (`modality_id`) REFERENCES `modality_master` (`id`),
  CONSTRAINT `tr_singnal` FOREIGN KEY (`signal_change_id`) REFERENCES `signal_change_master` (`id`),
  CONSTRAINT `tr_update` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_history_alerts`
--

LOCK TABLES `transaction_history_alerts` WRITE;
/*!40000 ALTER TABLE `transaction_history_alerts` DISABLE KEYS */;
INSERT INTO `transaction_history_alerts` VALUES (6,45,5,1,2,1,1,'2021-03-02 05:45:15',1,'2021-03-02 05:45:15','192.168.1.198',NULL),(7,45,4,2,4,2,1,'2021-03-02 05:45:57',1,'2021-03-04 07:00:45','192.168.1.198',NULL),(11,45,4,1,3,1,1,'2021-03-02 11:18:07',1,'2021-03-05 11:13:33','192.168.1.198',NULL),(14,45,2,2,2,1,1,'2021-03-02 14:31:58',1,'2021-03-05 11:16:04','37.139.13.14',NULL);
/*!40000 ALTER TABLE `transaction_history_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_credentials`
--

DROP TABLE IF EXISTS `user_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_credentials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credential_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `user_credentials_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_credentials_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `user_credentials_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_credentials`
--

LOCK TABLES `user_credentials` WRITE;
/*!40000 ALTER TABLE `user_credentials` DISABLE KEYS */;
INSERT INTO `user_credentials` VALUES (8,1,40,1,'2021-03-03 13:18:14',1,'2021-03-03 13:18:14','192.168.1.198'),(9,2,40,1,'2021-03-03 13:18:14',1,'2021-03-03 13:18:14','192.168.1.198'),(10,1,34,1,'2021-03-03 14:47:49',1,'2021-03-03 14:47:49','192.168.1.1'),(11,2,38,1,'2021-03-03 14:48:40',1,'2021-03-03 14:48:40','192.168.1.1'),(23,1,52,1,'2021-03-06 10:28:30',1,'2021-03-06 10:28:30','192.168.1.1'),(24,1,51,1,'2021-03-06 10:28:49',1,'2021-03-06 10:28:49','192.168.1.1'),(25,2,49,1,'2021-03-06 10:28:59',1,'2021-03-06 10:28:59','192.168.1.1'),(26,2,48,1,'2021-03-06 10:29:42',1,'2021-03-06 10:29:42','192.168.1.1'),(29,1,54,1,'2021-03-06 12:00:23',1,'2021-03-06 12:00:23','192.168.1.1'),(30,3,47,1,'2021-03-08 08:59:22',1,'2021-03-08 08:59:22','192.168.1.1'),(34,3,56,1,'2021-03-08 11:11:43',1,'2021-03-08 11:11:43','192.168.1.89'),(36,3,59,1,'2021-03-08 11:18:46',1,'2021-03-08 11:18:46','192.168.1.1'),(37,3,60,1,'2021-03-08 11:44:27',1,'2021-03-08 11:44:27','192.168.1.1'),(39,2,58,1,'2021-03-08 12:27:57',1,'2021-03-08 12:27:57','192.168.1.1'),(40,1,41,1,'2021-03-09 04:32:25',1,'2021-03-09 04:32:25','192.168.1.1'),(41,2,41,1,'2021-03-09 04:32:25',1,'2021-03-09 04:32:25','192.168.1.1');
/*!40000 ALTER TABLE `user_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_degrees`
--

DROP TABLE IF EXISTS `user_degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_degrees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `degrees_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_degree_user` (`user_id`),
  KEY `user_degree_create_by` (`created_by`),
  KEY `user_degree_update_by` (`updated_by`),
  KEY `fk_user_degrees_cmp_id_idx` (`company_id`),
  CONSTRAINT `fk_user_degrees_cmp_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_degree_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `user_degree_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `user_degree_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_degrees`
--

LOCK TABLES `user_degrees` WRITE;
/*!40000 ALTER TABLE `user_degrees` DISABLE KEYS */;
INSERT INTO `user_degrees` VALUES (1,1,1,1,'2021-02-03 10:07:42',1,'2021-02-03 10:07:42','127.0.0.1',NULL),(7,20,2,1,'2021-02-10 12:16:09',1,'2021-02-10 12:16:09','164.90.237.250',NULL),(15,26,1,1,'2021-02-16 09:23:09',1,'2021-02-16 09:23:09','192.168.1.1',NULL),(16,26,2,1,'2021-02-16 09:23:10',1,'2021-02-16 09:23:10','192.168.1.1',NULL),(24,27,1,1,'2021-02-24 13:05:46',1,'2021-02-24 13:05:46','192.168.1.182',NULL),(29,29,2,1,'2021-02-26 05:51:44',1,'2021-02-26 05:51:44','192.168.1.1',NULL),(31,28,2,1,'2021-02-26 05:52:45',1,'2021-02-26 05:52:45','192.168.1.1',NULL),(32,30,2,1,'2021-02-26 05:54:35',1,'2021-02-26 05:54:35','192.168.1.1',NULL),(34,32,2,1,'2021-02-26 09:16:40',1,'2021-02-26 09:16:40','192.168.1.1',NULL),(38,35,5,1,'2021-03-03 02:48:21',1,'2021-03-03 02:48:21','71.168.215.86',NULL),(42,37,2,1,'2021-03-03 05:50:30',1,'2021-03-03 05:50:30','49.34.43.50',NULL),(54,40,1,1,'2021-03-03 13:18:13',1,'2021-03-03 13:18:13','192.168.1.198',NULL),(59,39,3,1,'2021-03-03 14:34:57',1,'2021-03-03 14:34:57','192.168.1.1',NULL),(60,34,1,1,'2021-03-03 14:47:48',1,'2021-03-03 14:47:48','192.168.1.1',NULL),(61,38,2,1,'2021-03-03 14:48:40',1,'2021-03-03 14:48:40','192.168.1.1',NULL),(66,36,5,1,'2021-03-04 12:47:55',1,'2021-03-04 12:47:55','192.168.1.89',NULL),(69,42,2,1,'2021-03-05 10:35:41',1,'2021-03-05 10:35:41','192.168.1.198',NULL),(72,43,4,1,'2021-03-05 11:33:26',1,'2021-03-05 11:33:26','192.168.1.1',NULL),(74,44,3,1,'2021-03-06 05:54:30',1,'2021-03-06 05:54:30','192.168.1.89',NULL),(75,45,3,1,'2021-03-06 06:10:21',1,'2021-03-06 06:10:21','192.168.1.89',NULL),(99,52,3,1,'2021-03-06 10:28:30',1,'2021-03-06 10:28:30','192.168.1.1',NULL),(100,51,4,1,'2021-03-06 10:28:48',1,'2021-03-06 10:28:48','192.168.1.1',NULL),(101,49,3,1,'2021-03-06 10:28:59',1,'2021-03-06 10:28:59','192.168.1.1',NULL),(102,48,2,1,'2021-03-06 10:29:42',1,'2021-03-06 10:29:42','192.168.1.1',NULL),(104,53,2,1,'2021-03-06 10:48:11',1,'2021-03-06 10:48:11','192.168.1.1',NULL),(106,55,2,1,'2021-03-08 04:37:40',1,'2021-03-08 04:37:40','192.168.1.1',NULL),(107,47,1,1,'2021-03-08 08:59:22',1,'2021-03-08 08:59:22','192.168.1.1',NULL),(108,57,3,1,'2021-03-08 10:57:02',1,'2021-03-08 10:57:02','192.168.1.1',NULL),(110,58,2,1,'2021-03-08 12:27:57',1,'2021-03-08 12:27:57','192.168.1.1',NULL),(113,41,2,1,'2021-03-09 04:32:24',1,'2021-03-09 04:32:24','192.168.1.1',NULL),(115,61,4,1,'2021-03-09 05:09:15',1,'2021-03-09 05:09:15','192.168.1.1',NULL),(116,62,3,1,'2021-03-11 05:53:17',1,'2021-03-11 05:53:17','192.168.1.1',NULL),(117,63,1,62,'2021-03-11 08:48:10',62,'2021-03-11 08:48:10','192.168.1.1',NULL),(122,65,3,1,'2021-03-12 09:20:48',1,'2021-03-12 09:20:48','192.168.1.1',NULL),(123,65,4,1,'2021-03-12 09:20:48',1,'2021-03-12 09:20:48','192.168.1.1',NULL);
/*!40000 ALTER TABLE `user_degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_device`
--

DROP TABLE IF EXISTS `user_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_device_id` varchar(255) NOT NULL,
  `user_device_token` varchar(255) NOT NULL,
  `fcm_token` varchar(255) NOT NULL,
  `device_date` datetime DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `is_login` enum('Y','N') NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_device_user` (`user_id`),
  KEY `user_device_create_by` (`created_by`),
  KEY `user_device_update_by` (`updated_by`),
  CONSTRAINT `user_device_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `user_device_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `user_device_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_device`
--

LOCK TABLES `user_device` WRITE;
/*!40000 ALTER TABLE `user_device` DISABLE KEYS */;
INSERT INTO `user_device` VALUES (1,1,'user_device_id','user_device_token','fcm_token','2020-05-19 00:00:00','2021-02-03 10:07:42','Y',1,'2021-02-03 10:07:42',1,'2021-02-03 10:07:42','Y','127.0.0.1');
/*!40000 ALTER TABLE `user_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logs`
--

DROP TABLE IF EXISTS `user_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_log_hospital` (`user_id`),
  CONSTRAINT `user_log_hospital` FOREIGN KEY (`user_id`) REFERENCES `hospital_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logs`
--

LOCK TABLES `user_logs` WRITE;
/*!40000 ALTER TABLE `user_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_other_details`
--

DROP TABLE IF EXISTS `user_other_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_other_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_details_users` (`user_id`),
  KEY `user_detail_hospital` (`hospital_id`),
  KEY `user_detail_country` (`country_id`),
  KEY `user_detail_state` (`state_id`),
  KEY `user_detail_city` (`city_id`),
  KEY `user_detail_create_by` (`created_by`),
  KEY `user_detail_update_by` (`updated_by`),
  CONSTRAINT `user_detail_city` FOREIGN KEY (`city_id`) REFERENCES `city_master` (`id`),
  CONSTRAINT `user_detail_country` FOREIGN KEY (`country_id`) REFERENCES `country_master` (`id`),
  CONSTRAINT `user_detail_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `user_detail_hospital` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_master` (`id`),
  CONSTRAINT `user_detail_state` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`id`),
  CONSTRAINT `user_detail_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `user_details_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_other_details`
--

LOCK TABLES `user_other_details` WRITE;
/*!40000 ALTER TABLE `user_other_details` DISABLE KEYS */;
INSERT INTO `user_other_details` VALUES (17,20,1,'Ahmedabad','Satellite',1,1,1,'380015',1,'2021-02-10 12:16:08',1,'2021-02-10 12:19:12','164.90.237.250'),(18,1,1,'ahmedabad','test',1,1,1,'380005',1,'2021-02-10 13:44:55',1,'2021-02-10 13:45:00','0.0.0.0'),(19,2,1,'abad','test',1,1,1,'380005',1,'2021-02-10 13:45:48',1,'2021-02-10 13:45:53','0.0.0.0'),(25,26,1,'test adress','test address 2',1,1,1,'364521',1,'2021-02-16 09:23:09',1,'2021-02-16 09:23:09','192.168.1.1'),(26,27,1,'test adress','test address 2',2,3,3,'364521',1,'2021-02-16 10:22:48',1,'2021-02-24 13:05:44','192.168.1.182'),(27,28,1,'kudrat residency','nikol',1,1,1,'380005',1,'2021-02-25 05:22:54',1,'2021-02-26 05:52:44','192.168.1.1'),(28,3,1,'nehrunagar','ahemdabad',1,1,1,'380005',1,'2021-02-23 16:39:03',1,'2021-02-25 12:09:20','192.168.1.72'),(29,20,1,'nehrunagar','ahemdabad',1,1,1,'380005',1,'2021-02-23 16:39:03',1,'2021-02-25 12:09:20','192.168.1.72'),(30,29,1,'jaipur','rajasthan',2,3,3,'380023',1,'2021-02-26 05:49:14',1,'2021-02-26 05:51:44','192.168.1.1'),(31,30,1,'chandkheda','ahmedabad',1,1,1,'380005',1,'2021-02-26 05:54:35',1,'2021-02-26 05:54:35','192.168.1.1'),(33,32,1,'nikol','ahmedabad',1,2,2,'380011',1,'2021-02-26 09:16:39',1,'2021-02-26 09:16:39','192.168.1.1'),(34,33,1,'bapunagar','ahmedabad',2,3,3,'320098',1,'2021-02-26 09:22:28',1,'2021-02-26 09:22:28','192.168.1.1'),(35,34,1,'bapunagar','ahmedabad',1,1,1,'380020',1,'2021-02-26 09:27:20',1,'2021-03-03 14:47:48','192.168.1.1'),(36,35,1,'4 Clydesdale Ct.','Plainsboro',2,3,3,'08536',1,'2021-03-03 02:48:20',1,'2021-03-03 02:48:20','71.168.215.86'),(37,36,1,'4 Clydesdale Ct.','Plainsboro',2,3,3,'08536',1,'2021-03-03 02:48:22',1,'2021-03-04 12:47:55','192.168.1.89'),(38,37,1,'Gurukul Road','Ghatlodia',1,1,1,'380052',1,'2021-03-03 04:50:04',1,'2021-03-03 05:50:29','49.34.43.50'),(39,38,1,'nikol','ahmedabad',1,1,1,'380011',1,'2021-03-03 08:34:58',1,'2021-03-03 14:48:39','192.168.1.1'),(40,39,1,'nikol','ahmedabad',1,1,7,'320021',1,'2021-03-03 09:00:19',1,'2021-03-03 14:34:57','192.168.1.1'),(41,40,1,'sdf','dsfds',1,1,1,'123456',1,'2021-03-03 09:56:17',1,'2021-03-03 13:18:10','192.168.1.198'),(42,41,1,'nikol','INDIA',1,1,1,'874678',1,'2021-03-04 06:12:28',1,'2021-03-09 04:32:23','192.168.1.1'),(43,42,1,'Suragpara','Vadia',1,1,1,'365480',1,'2021-03-04 07:26:33',1,'2021-03-05 10:35:40','192.168.1.198'),(44,43,1,'sterling city','bopal',1,2,5,'321234253',1,'2021-03-05 11:08:14',1,'2021-03-05 11:33:26','192.168.1.1'),(45,44,1,'vatva','ahmedabad',1,2,5,'123456',1,'2021-03-05 13:47:35',1,'2021-03-06 05:54:29','192.168.1.89'),(46,45,1,'hirawadi','viratnagar',1,1,1,'342323',1,'2021-03-06 06:10:21',1,'2021-03-06 06:10:21','192.168.1.89'),(48,47,1,'a','a',1,1,1,'123654',1,'2021-03-06 07:02:17',1,'2021-03-08 08:59:21','192.168.1.1'),(49,48,1,'a','a',1,1,3,'321456',1,'2021-03-06 07:07:09',1,'2021-03-06 10:29:41','192.168.1.1'),(50,49,1,'a','a',1,1,3,'249371',1,'2021-03-06 07:17:11',1,'2021-03-06 10:28:59','192.168.1.1'),(52,51,1,'a','a',4,9,9,'163795',1,'2021-03-06 08:52:25',1,'2021-03-06 10:28:48','192.168.1.1'),(53,52,1,'a','a',1,2,5,'318527',1,'2021-03-06 08:54:43',1,'2021-03-06 10:28:30','192.168.1.1'),(54,53,1,'afsfe','efr',1,1,1,'123456',1,'2021-03-06 10:48:11',1,'2021-03-06 10:48:11','192.168.1.1'),(55,54,1,'jodhpur','satelite',1,1,3,'123456',1,'2021-03-06 12:00:23',1,'2021-03-06 12:00:23','192.168.1.1'),(56,55,1,'nikol','ahmedabad',4,9,12,'123456',1,'2021-03-08 04:37:39',1,'2021-03-08 04:37:39','192.168.1.1'),(57,56,1,'Sola','Civil',1,2,5,'402651',1,'2021-03-08 10:16:43',1,'2021-03-08 11:11:42','192.168.1.89'),(58,57,1,'vatva','ahmedabad',1,1,1,'380005',1,'2021-03-08 10:57:02',1,'2021-03-08 10:57:02','192.168.1.1'),(59,58,1,'gandhinagar',NULL,4,9,9,'893146',1,'2021-03-08 11:18:27',1,'2021-03-08 12:27:57','192.168.1.1'),(60,59,1,'bopal','INDIA',1,1,3,'874678',1,'2021-03-08 11:18:46',1,'2021-03-08 11:18:46','192.168.1.1'),(61,60,1,'civil',NULL,1,1,1,'258379',1,'2021-03-08 11:44:26',1,'2021-03-08 11:44:26','192.168.1.1'),(62,61,1,'ok','ok',2,3,10,'852103',1,'2021-03-08 12:32:05',1,'2021-03-09 05:09:14','192.168.1.1'),(63,62,1,'bopal','ahmedabad',2,3,6,'123456',1,'2021-03-11 05:53:17',1,'2021-03-11 05:53:17','192.168.1.1'),(64,63,1,'thaltej','ahmedabad',4,9,12,'123321',62,'2021-03-11 08:48:09',62,'2021-03-11 08:48:09','192.168.1.1'),(66,65,1,'paldi','ahmedabad',1,2,2,'543212',1,'2021-03-12 09:20:47',1,'2021-03-12 09:20:47','192.168.1.1');
/*!40000 ALTER TABLE `user_other_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_role_hospita` (`hospital_id`),
  CONSTRAINT `user_role_hospita` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,'Admin','2021-02-02 12:54:12','2021-03-10 13:58:32','Y','123.123.234'),(11,1,'Doctor','2021-02-04 13:12:20','2021-03-10 10:20:04','Y','192.168.1.193'),(12,1,'SNP','2021-02-05 09:42:13','2021-03-09 07:50:51','Y','192.168.1.193'),(13,1,'Patient','2021-02-06 07:35:59','2021-02-16 09:18:16','Y','192.168.1.193'),(14,1,'Test','2021-02-17 04:46:15','2021-03-03 02:09:01','Y','37.139.12.156'),(15,1,'Test Admin','2021-02-25 05:12:30','2021-02-25 05:13:22','Y','192.168.1.1'),(16,1,'tear','2021-03-03 02:42:26','2021-03-03 02:42:26','Y','71.168.215.86'),(17,1,'Big Bob','2021-03-03 02:44:24','2021-03-03 02:44:24','Y','68.133.24.100'),(18,1,'Doctor 2 much','2021-03-03 04:18:07','2021-03-03 04:18:07','Y','71.168.215.86'),(19,1,'SNP 556','2021-03-03 04:20:52','2021-03-03 04:20:52','Y','71.168.215.86'),(20,1,'operator','2021-03-05 04:46:28','2021-03-05 04:46:28','Y','192.168.1.89'),(21,1,'abc','2021-03-05 05:49:52','2021-03-05 05:49:52','Y','192.168.1.89'),(22,1,'Rony','2021-03-05 11:04:59','2021-03-05 11:04:59','Y','192.168.1.1'),(25,1,'AAAAA','2021-03-06 05:48:40','2021-03-06 06:17:41','Y','192.168.1.89'),(31,1,'sikhar','2021-03-08 04:25:05','2021-03-08 04:25:05','Y','192.168.1.1'),(32,1,'Doc','2021-03-08 09:01:45','2021-03-08 09:01:45','Y','192.168.1.89'),(33,1,'Dhruv','2021-03-08 10:12:40','2021-03-08 11:11:29','Y','192.168.1.89'),(34,1,'dinesh','2021-03-08 10:52:58','2021-03-08 10:52:58','Y','192.168.1.1'),(35,1,'ram','2021-03-08 11:13:14','2021-03-08 11:43:10','Y','192.168.1.89'),(36,1,'tara','2021-03-08 12:24:38','2021-03-08 12:24:38','Y','192.168.1.1'),(37,1,'Ravina','2021-03-08 12:29:20','2021-03-08 12:29:20','Y','192.168.1.1'),(38,1,'Tushar','2021-03-11 05:38:37','2021-03-12 09:11:33','Y','192.168.1.1'),(39,1,'prince','2021-03-11 08:45:59','2021-03-12 09:11:50','Y','192.168.1.1'),(41,1,'nilesh','2021-03-12 09:18:03','2021-03-12 09:23:23','Y','192.168.1.1');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_specialties`
--

DROP TABLE IF EXISTS `user_specialties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_specialties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `specialties_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_speciality_users` (`user_id`),
  KEY `user_speciality_speciality` (`specialties_id`),
  KEY `user_speciality_create_by` (`created_by`),
  KEY `users_speciality_update_by` (`updated_by`),
  KEY `fk_user_specialties_cmp_id_idx` (`company_id`),
  CONSTRAINT `fk_user_specialties_cmp_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_speciality_create_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `user_speciality_speciality` FOREIGN KEY (`specialties_id`) REFERENCES `specialties_master` (`id`),
  CONSTRAINT `user_speciality_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_speciality_update_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_specialties`
--

LOCK TABLES `user_specialties` WRITE;
/*!40000 ALTER TABLE `user_specialties` DISABLE KEYS */;
INSERT INTO `user_specialties` VALUES (21,20,1,1,'2021-02-10 12:16:08',1,'2021-02-10 12:16:08','164.90.237.250',NULL),(22,20,2,1,'2021-02-10 12:16:09',1,'2021-02-10 12:16:09','164.90.237.250',NULL),(33,26,1,1,'2021-02-16 09:23:09',1,'2021-02-16 09:23:09','192.168.1.1',NULL),(34,26,2,1,'2021-02-16 09:23:09',1,'2021-02-16 09:23:09','192.168.1.1',NULL),(47,27,2,1,'2021-02-24 13:05:45',1,'2021-02-24 13:05:45','192.168.1.182',NULL),(52,29,2,1,'2021-02-26 05:51:44',1,'2021-02-26 05:51:44','192.168.1.1',NULL),(54,28,2,1,'2021-02-26 05:52:45',1,'2021-02-26 05:52:45','192.168.1.1',NULL),(55,30,2,1,'2021-02-26 05:54:35',1,'2021-02-26 05:54:35','192.168.1.1',NULL),(57,32,2,1,'2021-02-26 09:16:39',1,'2021-02-26 09:16:39','192.168.1.1',NULL),(58,33,2,1,'2021-02-26 09:22:28',1,'2021-02-26 09:22:28','192.168.1.1',NULL),(62,35,2,1,'2021-03-03 02:48:21',1,'2021-03-03 02:48:21','71.168.215.86',NULL),(66,37,2,1,'2021-03-03 05:50:30',1,'2021-03-03 05:50:30','49.34.43.50',NULL),(83,40,2,1,'2021-03-03 13:18:12',1,'2021-03-03 13:18:12','192.168.1.198',NULL),(88,39,2,1,'2021-03-03 14:34:57',1,'2021-03-03 14:34:57','192.168.1.1',NULL),(89,34,2,1,'2021-03-03 14:47:48',1,'2021-03-03 14:47:48','192.168.1.1',NULL),(90,38,2,1,'2021-03-03 14:48:40',1,'2021-03-03 14:48:40','192.168.1.1',NULL),(100,36,2,1,'2021-03-04 12:47:55',1,'2021-03-04 12:47:55','192.168.1.89',NULL),(103,42,2,1,'2021-03-05 10:35:40',1,'2021-03-05 10:35:40','192.168.1.198',NULL),(106,43,2,1,'2021-03-05 11:33:26',1,'2021-03-05 11:33:26','192.168.1.1',NULL),(108,44,2,1,'2021-03-06 05:54:30',1,'2021-03-06 05:54:30','192.168.1.89',NULL),(109,45,2,1,'2021-03-06 06:10:21',1,'2021-03-06 06:10:21','192.168.1.89',NULL),(130,52,2,1,'2021-03-06 10:28:30',1,'2021-03-06 10:28:30','192.168.1.1',NULL),(131,51,2,1,'2021-03-06 10:28:48',1,'2021-03-06 10:28:48','192.168.1.1',NULL),(132,49,2,1,'2021-03-06 10:28:59',1,'2021-03-06 10:28:59','192.168.1.1',NULL),(133,48,2,1,'2021-03-06 10:29:41',1,'2021-03-06 10:29:41','192.168.1.1',NULL),(135,53,2,1,'2021-03-06 10:48:11',1,'2021-03-06 10:48:11','192.168.1.1',NULL),(137,54,2,1,'2021-03-06 12:00:23',1,'2021-03-06 12:00:23','192.168.1.1',NULL),(138,55,2,1,'2021-03-08 04:37:39',1,'2021-03-08 04:37:39','192.168.1.1',NULL),(139,47,2,1,'2021-03-08 08:59:21',1,'2021-03-08 08:59:21','192.168.1.1',NULL),(142,57,2,1,'2021-03-08 10:57:02',1,'2021-03-08 10:57:02','192.168.1.1',NULL),(144,56,2,1,'2021-03-08 11:11:43',1,'2021-03-08 11:11:43','192.168.1.89',NULL),(146,59,2,1,'2021-03-08 11:18:46',1,'2021-03-08 11:18:46','192.168.1.1',NULL),(147,60,2,1,'2021-03-08 11:44:26',1,'2021-03-08 11:44:26','192.168.1.1',NULL),(149,58,2,1,'2021-03-08 12:27:57',1,'2021-03-08 12:27:57','192.168.1.1',NULL),(152,41,2,1,'2021-03-09 04:32:23',1,'2021-03-09 04:32:23','192.168.1.1',NULL),(154,61,2,1,'2021-03-09 05:09:14',1,'2021-03-09 05:09:14','192.168.1.1',NULL),(155,62,1,1,'2021-03-11 05:53:17',1,'2021-03-11 05:53:17','192.168.1.1',NULL),(156,63,2,62,'2021-03-11 08:48:10',62,'2021-03-11 08:48:10','192.168.1.1',NULL),(161,65,2,1,'2021-03-12 09:20:47',1,'2021-03-12 09:20:47','192.168.1.1',NULL);
/*!40000 ALTER TABLE `user_specialties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_state_licence`
--

DROP TABLE IF EXISTS `user_state_licence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_state_licence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_state_licence`
--

LOCK TABLES `user_state_licence` WRITE;
/*!40000 ALTER TABLE `user_state_licence` DISABLE KEYS */;
INSERT INTO `user_state_licence` VALUES (15,2,35,1,'2021-03-03 02:48:21',1,'2021-03-03 02:48:21','71.168.215.86'),(19,1,37,1,'2021-03-03 05:50:30',1,'2021-03-03 05:50:30','49.34.43.50'),(30,1,40,1,'2021-03-03 13:18:13',1,'2021-03-03 13:18:13','192.168.1.198'),(35,1,39,1,'2021-03-03 14:34:57',1,'2021-03-03 14:34:57','192.168.1.1'),(36,2,34,1,'2021-03-03 14:47:48',1,'2021-03-03 14:47:48','192.168.1.1'),(37,6,38,1,'2021-03-03 14:48:40',1,'2021-03-03 14:48:40','192.168.1.1'),(54,2,36,1,'2021-03-04 12:47:55',1,'2021-03-04 12:47:55','192.168.1.89'),(61,1,42,1,'2021-03-05 10:35:41',1,'2021-03-05 10:35:41','192.168.1.198'),(62,2,42,1,'2021-03-05 10:35:41',1,'2021-03-05 10:35:41','192.168.1.198'),(63,3,42,1,'2021-03-05 10:35:41',1,'2021-03-05 10:35:41','192.168.1.198'),(67,1,43,1,'2021-03-05 11:33:26',1,'2021-03-05 11:33:26','192.168.1.1'),(68,2,43,1,'2021-03-05 11:33:26',1,'2021-03-05 11:33:26','192.168.1.1'),(71,2,44,1,'2021-03-06 05:54:30',1,'2021-03-06 05:54:30','192.168.1.89'),(72,6,44,1,'2021-03-06 05:54:30',1,'2021-03-06 05:54:30','192.168.1.89'),(73,1,45,1,'2021-03-06 06:10:21',1,'2021-03-06 06:10:21','192.168.1.89'),(74,6,46,1,'2021-03-06 06:11:25',1,'2021-03-06 06:11:25','192.168.1.198'),(79,1,50,1,'2021-03-06 07:46:17',1,'2021-03-06 07:46:17','192.168.1.198'),(94,1,52,1,'2021-03-06 10:28:30',1,'2021-03-06 10:28:30','192.168.1.1'),(95,1,51,1,'2021-03-06 10:28:48',1,'2021-03-06 10:28:48','192.168.1.1'),(96,2,49,1,'2021-03-06 10:28:59',1,'2021-03-06 10:28:59','192.168.1.1'),(97,1,48,1,'2021-03-06 10:29:42',1,'2021-03-06 10:29:42','192.168.1.1'),(99,6,53,1,'2021-03-06 10:48:11',1,'2021-03-06 10:48:11','192.168.1.1'),(101,7,55,1,'2021-03-08 04:37:40',1,'2021-03-08 04:37:40','192.168.1.1'),(102,1,47,1,'2021-03-08 08:59:21',1,'2021-03-08 08:59:21','192.168.1.1'),(104,6,57,1,'2021-03-08 10:57:02',1,'2021-03-08 10:57:02','192.168.1.1'),(106,2,56,1,'2021-03-08 11:11:43',1,'2021-03-08 11:11:43','192.168.1.89'),(108,2,58,1,'2021-03-08 12:27:57',1,'2021-03-08 12:27:57','192.168.1.1'),(115,1,41,1,'2021-03-09 04:32:24',1,'2021-03-09 04:32:24','192.168.1.1'),(116,2,41,1,'2021-03-09 04:32:24',1,'2021-03-09 04:32:24','192.168.1.1'),(120,2,61,1,'2021-03-09 05:09:15',1,'2021-03-09 05:09:15','192.168.1.1'),(121,3,61,1,'2021-03-09 05:09:15',1,'2021-03-09 05:09:15','192.168.1.1'),(122,6,61,1,'2021-03-09 05:09:15',1,'2021-03-09 05:09:15','192.168.1.1'),(123,1,62,1,'2021-03-11 05:53:18',1,'2021-03-11 05:53:18','192.168.1.1'),(124,2,62,1,'2021-03-11 05:53:18',1,'2021-03-11 05:53:18','192.168.1.1'),(125,1,63,62,'2021-03-11 08:48:10',62,'2021-03-11 08:48:10','192.168.1.1'),(126,7,63,62,'2021-03-11 08:48:11',62,'2021-03-11 08:48:11','192.168.1.1'),(128,1,64,1,'2021-03-12 09:00:09',1,'2021-03-12 09:00:09','192.168.1.1'),(129,1,65,1,'2021-03-12 09:20:48',1,'2021-03-12 09:20:48','192.168.1.1'),(130,2,65,1,'2021-03-12 09:20:48',1,'2021-03-12 09:20:48','192.168.1.1');
/*!40000 ALTER TABLE `user_state_licence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_wise_company`
--

DROP TABLE IF EXISTS `user_wise_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_wise_company` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `ip_address` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_wise_company_company_id_idx` (`company_id`),
  KEY `fk_user_wise_company_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_wise_company_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_wise_company_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_wise_company`
--

LOCK TABLES `user_wise_company` WRITE;
/*!40000 ALTER TABLE `user_wise_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_wise_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userrole_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `country_code_name` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `npi` varchar(255) DEFAULT NULL,
  `emr_id` int(11) DEFAULT NULL,
  `is_notification` enum('Y','N') NOT NULL,
  `about_user` text,
  `is_admin` enum('N','Y') NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_user_role` (`userrole_id`),
  KEY `users_create_by` (`created_by`),
  KEY `users_update_by` (`updated_by`),
  CONSTRAINT `user_user_role` FOREIGN KEY (`userrole_id`) REFERENCES `user_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'xceltec','admin','Male','xceltech','xceltec@admin.com','$2y$10$Zp7gEgC5CsLjDuWIpOK0xuVV6LKxm6eyeILlBMIrvhc2ygwcFhURa','1996-05-19','in','91','7226831083','1614949954_7.jpg','1',1,'Y','this is super admin account','Y',1,'2021-02-02 12:56:54',1,'2021-03-06 13:28:00','Y','192.168.1.1'),(2,11,'Hospital','Test','Male','hospital User','hospital@gmail.com','$2y$10$Zp7gEgC5CsLjDuWIpOK0xuVV6LKxm6eyeILlBMIrvhc2ygwcFhURa','2021-02-03','country_code_name','country_code','1231231235','1613629499_625.jpg','npi',1,'Y','about_user','N',1,'2021-02-03 06:17:14',2,'2021-03-08 10:40:02','Y','192.168.1.1'),(3,12,'operator','user','Male','operator','operator@gmail.com','$2y$10$Zp7gEgC5CsLjDuWIpOK0xuVV6LKxm6eyeILlBMIrvhc2ygwcFhURa','1996-05-19','91','91','1234567890','1613629499_625.jpg','npi',1,'Y','about_user','N',1,'2021-02-03 06:17:14',1,'2021-02-16 07:34:02','Y','12.23.42'),(20,12,'Keval','Shah','Male','kev','keval@mailinator.com','$2y$10$PoyTf0ktZcuSqsT9zw3W0uZzJDLwCLVMEbE9eUfyzTK4ukD/8whT2','1993-02-28',NULL,NULL,'8866993322','1614693622_945.jpg','1516565465465',-2,'Y','Hi I am doctor','N',1,'2021-02-10 12:16:08',20,'2021-03-02 14:00:22','Y','37.139.13.14'),(26,11,'ravi','parmar','Male',NULL,'ravi.ipopsolution@gmail.com','$2y$10$s7yTqQGvzJiR59TSB4dj3O3I.HW2zxrOr6xs9zlazjEK/biSffTpS','2021-02-16',NULL,NULL,'+917894561230','1613629499_625.jpg',NULL,NULL,'Y','this is test by ravi','N',1,'2021-02-16 09:23:07',1,'2021-03-06 05:45:22','Y','192.168.1.1'),(27,11,'test','test','Male',NULL,'ronak.parmar@xceltec.in','$2y$10$Be3GrNbDqy.FhPommLsihuJZ6t3yRn2sWUNDbM.jhxeBbyo3JfQEC','2021-02-16',NULL,NULL,'+917894561230','1613629499_625.jpg',NULL,NULL,'Y','asd','N',1,'2021-02-16 10:22:45',1,'2021-03-06 11:55:23','Y','192.168.1.182'),(28,11,'ronaK','parmar','Male',NULL,'ronak11@mailinator.com','$2y$10$xRD/S8eQBjut3yXls7Fsz.30yuotQcrVhYAbU7voqNRVs9T.rt.K.','1996-08-11',NULL,NULL,'7405119086',NULL,NULL,NULL,'Y','doctor speciality','N',1,'2021-02-25 05:22:50',1,'2021-02-26 05:52:44','Y','192.168.1.1'),(29,13,'ragav','juyal','Male',NULL,'ragav@mailinator.com','$2y$10$Y1q4Zj4P9hZ.jQ8M6vaEM.NppK35revUxHkr2vtpf//MccC9p9/ZG','1994-11-11',NULL,NULL,'9978876542',NULL,NULL,NULL,'Y',NULL,'N',1,'2021-02-26 05:49:11',1,'2021-02-26 05:51:44','Y','192.168.1.1'),(30,11,'mayur','parmar','Male',NULL,'mayur@mailinator.com','$2y$10$tnJamuUvD2UY/185Yle7QuADELgZbvzxCzP73GdFRA24SHT9V979m','1995-07-11',NULL,NULL,'9898675432','',NULL,NULL,'Y',NULL,'N',1,'2021-02-26 05:54:32',1,'2021-02-26 05:54:32','Y','192.168.1.1'),(32,11,'sunny','parmar','Male',NULL,'sunny11@mailinator.com','$2y$10$zB3UA5uTlfEYqktvPv1Vq.Ft72sdqZkhH2dGkuSjT807MqpaQR7g.','1994-08-04',NULL,NULL,'9876543210','',NULL,NULL,'Y',NULL,'N',1,'2021-02-26 09:16:37',1,'2021-02-26 10:20:34','Y','192.168.1.1'),(33,12,'Dhaval','chauhan','Male',NULL,'dhaval11@mailinator.com','$2y$10$3XD.lEXwl8mak3cQyvnCUONuiNa0gqJ0vewWcdCUjJZN9nxj.llg6','1992-01-15',NULL,NULL,'7405119086','','test',323,'Y',NULL,'N',1,'2021-02-26 09:22:25',1,'2021-02-26 09:22:25','Y','192.168.1.1'),(34,12,'meet','dalsaniya','Male',NULL,'meet11@mailinator.com','$2y$10$PXtTJTjM.m2M7KF6y09K8e1B2KRLPDk8YFlEmmLOJ.1kFGJDtpMJm','1996-12-24',NULL,NULL,'8967452398',NULL,'12',21,'Y',NULL,'N',1,'2021-02-26 09:27:18',1,'2021-03-03 14:47:48','Y','192.168.1.1'),(35,11,'Rahul','Gole','Male',NULL,'rgoolio32@gmail.com','$2y$10$I.LAAGdQEuU3VNtGSDGZYe3ODa1K.fL8ydsStAJ2Yc/SjZPdJRh4m','0002-07-04',NULL,NULL,'6099377484','',NULL,NULL,'Y','Test.','N',1,'2021-03-03 02:48:20',1,'2021-03-03 02:48:20','Y','71.168.215.86'),(36,11,'Rahul','Gole','Male',NULL,'rgoolio32@gmail.com','$2y$10$Hm0Cs7f002vgRTAO23vx7unInQDQKdA7chSlWZSIPEC1x.QGgF5pW','0002-07-04',NULL,NULL,'6099377484454',NULL,NULL,NULL,'Y','Test.','N',1,'2021-03-03 02:48:22',1,'2021-03-04 12:47:55','Y','192.168.1.89'),(37,1,'Kishan','Zala','Male',NULL,'kishan.zala@xceltec.in','$2y$10$4eIfKawZNSq6IGD5zavwaeFwd2.8AXmrMT3yTRH7Z6jNpZMQM5zzC','1995-02-11',NULL,NULL,'7600787089',NULL,NULL,NULL,'Y','Hola!','N',1,'2021-03-03 04:50:04',1,'2021-03-03 05:50:29','Y','49.34.43.50'),(38,12,'hardik','rajde','Male',NULL,'hardik111@mailinator.com','$2y$10$RCaTZkiUesaPOTf3HC8hneUxyN.e2G7Y7MrYkaIVIU0HJsQdCD1jO','1994-10-28',NULL,NULL,'85768676998',NULL,'21',12,'Y',NULL,'N',1,'2021-03-03 08:34:58',1,'2021-03-03 14:48:39','Y','192.168.1.1'),(39,13,'gaurav','patel','Male',NULL,'gaurav@mailinator.com','$2y$10$14xtKKmld9Ct3K3xbtzFQOWEeytZal.5HYS5mLu99ork/A/FF6KyG','1992-08-24',NULL,NULL,'9867452342',NULL,NULL,NULL,'Y',NULL,'N',1,'2021-03-03 09:00:19',1,'2021-03-03 14:34:57','Y','192.168.1.1'),(40,12,'dhaval1','Test','Male',NULL,'dhdholariya@gmail.com','$2y$10$qwWxkGxa3lbZhOmXQiGdBeWtbZ409wHM6u7e.Nr.Vfvxr.UGp3pyO','1995-08-10',NULL,NULL,'9898484123',NULL,'123',123,'Y',NULL,'N',1,'2021-03-03 09:56:17',1,'2021-03-03 13:18:10','Y','192.168.1.198'),(41,11,'raj','shah','Male',NULL,'raj11@mailinator.com','$2y$10$/UqxZ5ZXC7pMef0xM9N4bOXsWCTpjaIPkiraupexWhVgoPThHTeY2','1995-06-29',NULL,NULL,'9867453212',NULL,'21',12,'Y','Hello','N',1,'2021-03-04 06:12:25',1,'2021-03-09 04:32:23','Y','192.168.1.1'),(42,11,'Dhaval','patel','Male',NULL,'project.ipop@gmail.com','$2y$10$ynYDTg56x44RDXpTloDy9uRBMOOtkC6td.vPkZAfR0o2PljeHAz4a','1995-08-13',NULL,NULL,'98984841256',NULL,NULL,NULL,'Y','asdasdasd','N',1,'2021-03-04 07:26:30',1,'2021-03-05 10:35:40','Y','192.168.1.198'),(43,22,'rahul','parmar','Male',NULL,'rahul11@mailinator.com','$2y$10$ZPKeZj1KWcZqbdmQ0/G3beDfpGs.xOZICSHNVER5kro9YQ3lVKfyi','2022-09-27',NULL,NULL,'98672312433',NULL,NULL,NULL,'Y',NULL,'N',1,'2021-03-05 11:08:10',1,'2021-03-05 11:33:26','Y','192.168.1.1'),(44,25,'JAY','patel','Male',NULL,'jay@mailinator.com','$2y$10$PtgeP1tTVgB8Mfv6ctB75OpwCzU73BZ3.6vSwkJMMv9MgMgXu0sG6','2020-11-30',NULL,NULL,'9889782134',NULL,NULL,NULL,'Y',NULL,'N',1,'2021-03-05 13:47:32',1,'2021-03-06 05:54:29','Y','192.168.1.89'),(45,25,'JEEL','PATEL','Male',NULL,'jeelpatel@mailinator.com','$2y$10$lDDmJFQqg5LCQczI1qzWzOu5y8wH6Q1e/Su2ds0eCm9um/gmZxTpm','2009-01-06',NULL,NULL,'9898986565','',NULL,NULL,'Y',NULL,'N',1,'2021-03-06 06:10:17',1,'2021-03-06 06:10:17','Y','192.168.1.89'),(47,12,'Pankaj','A','Male',NULL,'rmail11@mailinator.com','$2y$10$MIxWUuzH6Eou.Cw7zHpQfO7ORzZquX5jRU0cvxQTpmRapUlBdwmsS','1999-01-06',NULL,NULL,'1478523690',NULL,'3',3,'Y','Hello','N',1,'2021-03-06 07:02:13',1,'2021-03-08 09:13:05','Y','192.168.1.1'),(48,12,'Quincy','A','Female',NULL,'rmail2@mailinator.com','$2y$10$mygwMPH9..deMTMWagTTAeSw1Ln4V.ZtyFnVwX4eZsjCusUts6bh.','2003-07-17',NULL,NULL,'3698741250',NULL,'2',2,'Y','Hello','N',1,'2021-03-06 07:07:06',1,'2021-03-06 10:29:41','Y','192.168.1.1'),(49,12,'Ramesh','A','Female',NULL,'rmail3@mailinator.com','$2y$10$jXWp.AQFqPA4Pk2lD25kEuWW7qtFx2DVb3RWKJJdGyiBktAHwU4Se','2002-07-28',NULL,NULL,'2589631470',NULL,'2',2,'Y','Hello','N',1,'2021-03-06 07:17:01',1,'2021-03-06 10:28:59','Y','192.168.1.1'),(51,12,'Sonam','A','Male',NULL,'rmail4@mailinator.com','$2y$10$YHo/lZAOvC4/k.cAb35KYe4Dpb5UOnBiT.JCisg7rLfeVVsHv/Owm','1999-02-09',NULL,NULL,'2341569780',NULL,'1',1,'Y','Hello','N',1,'2021-03-06 08:52:23',1,'2021-03-06 10:28:48','Y','192.168.1.1'),(52,11,'Tarun','A','Female',NULL,'rmail5@mailinator.com','$2y$10$Zp7gEgC5CsLjDuWIpOK0xuVV6LKxm6eyeILlBMIrvhc2ygwcFhURa','1990-01-09',NULL,NULL,'2837641590',NULL,'1',1,'Y','Hello','N',1,'2021-03-06 08:54:41',1,'2021-03-06 10:28:29','Y','192.168.1.1'),(53,11,'ronak','rkjho','Male',NULL,'ronak123@mailinator.com','$2y$10$moYygL6yA5oLaZOMD4nZy.Rv.2ax2HViGNRV6JtV8c8pRwLp4Cmjq','1993-04-22',NULL,NULL,'12345678','',NULL,NULL,'Y',NULL,'N',1,'2021-03-06 10:48:07',1,'2021-03-06 10:48:07','Y','192.168.1.1'),(54,12,'nikunj','parmar','Male',NULL,'nikunj11@mailinator.com','$2y$10$mfZ7bqxDcZgNi0aSomJNgeSVOJgE.OkLaRH5jxRwmzD3VDVKy/SgS','1995-06-14',NULL,NULL,'9896768761','','21',12,'Y',NULL,'N',1,'2021-03-06 12:00:20',1,'2021-03-08 04:52:33','N','192.168.1.1'),(55,11,'sikhar','choksi','Male',NULL,'sikhar11@mailinator.com','$2y$10$b1GGvillZgdvSbnFIxrbOO3z4CN2nzwDCruvOX.RoXoH7.1wCjN1.','1999-07-22',NULL,NULL,'9868761232','',NULL,NULL,'Y',NULL,'N',1,'2021-03-08 04:37:35',1,'2021-03-08 04:37:35','Y','192.168.1.1'),(56,12,'Dhruv','Patel','Male',NULL,'dhruvbro12@mailinator.com','$2y$10$U0tZegcc1zB7I.m3Ydlp8.9DJ6FtrS7u7/t6BxHh2YpybyxCQV2Ae','1995-06-15',NULL,NULL,'9078651234',NULL,'12',12,'Y',NULL,'N',1,'2021-03-08 10:16:40',1,'2021-03-08 11:11:42','Y','192.168.1.89'),(57,11,'dinesh','prajapati','Male',NULL,'dinesh11@mailinator.com','$2y$10$eikyNSGdApyxiaIX2XzOhOeAlZpEFCZmtrDatJ448NebCWsgiFEPa','2003-02-05',NULL,NULL,'86387687687','',NULL,NULL,'Y','test','N',1,'2021-03-08 10:56:59',1,'2021-03-08 10:56:59','Y','192.168.1.1'),(58,11,'Tara','kumari','Male',NULL,'tara12@mailinator.com','$2y$10$7mtyTowjKFmfHgBe.BCSv.sz.yLpoFvwH7X39OEv3ftFAZHVi55p6','2000-03-09',NULL,NULL,'8956237410',NULL,'12',44,'Y','Hello','N',1,'2021-03-08 11:18:22',1,'2021-03-08 12:27:57','Y','192.168.1.1'),(59,12,'amisha','chauhan','Female',NULL,'amisha11@mailinator.com','$2y$10$XnPLsLQ7HBh2mUFG0rrYO.UJcGUvJBNJ0dQpTrEPWFkX22k7F069K','1999-07-29',NULL,NULL,'675658658','','21',12,'Y',NULL,'N',1,'2021-03-08 11:18:43',1,'2021-03-08 11:18:43','Y','192.168.1.1'),(60,12,'Ram','Singh','Female',NULL,'ramsingh@mailinator.com','$2y$10$vJN3NCj5fZzVpZuTSiPiver4E14EHUlHjSsIzoxDLrph/A2h3574W','2000-07-20',NULL,NULL,'1597536482','','3',3,'Y',NULL,'N',1,'2021-03-08 11:44:24',1,'2021-03-08 11:44:24','Y','192.168.1.1'),(61,11,'Ravina','Yadav','Female',NULL,'ravina@mailinator.com','$2y$10$OtG4N94ITkqfbAJHvwDat.RdwedepUIldnoO5yyE3b5QB55Ig7UHS','2001-05-07',NULL,NULL,'1237894560',NULL,NULL,NULL,'Y','Hello','N',1,'2021-03-08 12:32:02',1,'2021-03-09 05:09:14','Y','192.168.1.1'),(62,38,'tushar','mistry','Male',NULL,'tushar@mailinator.com','$2y$10$xR5TykBWGR3aFZOTmghFDOfqrh8iJbt.0ReDvCB2ouvQYbTWHrRsS','1998-03-10',NULL,NULL,'7797987998','',NULL,NULL,'Y',NULL,'N',1,'2021-03-11 05:53:14',1,'2021-03-12 08:47:32','Y','192.168.1.1'),(63,39,'prince','patel','Male',NULL,'prince11@mailinator.com','$2y$10$n8j1SISQ31CTuyYa8EGBneWzgAp34E9tl.CQwESR7elCab53TiX.a','1995-06-15',NULL,NULL,'1234567894','',NULL,NULL,'Y',NULL,'N',62,'2021-03-11 08:48:05',65,'2021-03-12 10:16:30','N','192.168.1.1'),(65,41,'nilesh','shah','Male',NULL,'nilesh11@mailinator.com','$2y$10$aWwngjy1oaHxnwxNGmhJS.AqPXjPX7zQZ6QZiOwftGCEzOZjuaITW','1996-08-13',NULL,NULL,'98657454533','',NULL,NULL,'Y',NULL,'N',1,'2021-03-12 09:20:44',1,'2021-03-12 09:20:44','Y','192.168.1.1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vital_master`
--

DROP TABLE IF EXISTS `vital_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vital_master` (
  `id` int(11) NOT NULL,
  `vital_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vital_master_updated_by_idx` (`updated_by`),
  KEY `fk_vital_master_created_by_idx` (`created_by`),
  CONSTRAINT `fk_vital_master_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vital_master_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vital_master`
--

LOCK TABLES `vital_master` WRITE;
/*!40000 ALTER TABLE `vital_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `vital_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weakness_master`
--

DROP TABLE IF EXISTS `weakness_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weakness_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `weakness_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `weak_create` (`created_by`),
  CONSTRAINT `weak_create` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weakness_master`
--

LOCK TABLES `weakness_master` WRITE;
/*!40000 ALTER TABLE `weakness_master` DISABLE KEYS */;
INSERT INTO `weakness_master` VALUES (1,NULL,'test',1,'2021-02-23 11:25:52','2021-02-23 12:24:47','122.170.170.217','Y'),(2,NULL,'weakness 22',1,'2021-02-25 06:29:25','2021-03-05 09:57:06','192.168.1.198','Y'),(3,NULL,'weak23',1,'2021-03-05 09:57:24','2021-03-05 09:57:24','192.168.1.89','Y');
/*!40000 ALTER TABLE `weakness_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-14 17:13:18
