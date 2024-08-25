-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: hbnb_dev_db
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
-- Current Database: `hbnb_dev_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbnb_dev_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbnb_dev_db`;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `name` varchar(128) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  `state_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('521a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','Akron','421a55f4-7d82-47d9-b54c-a76916479545'),('521a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:42:40','2017-03-25 19:42:40','Douglas','421a55f4-7d82-47d9-b54c-a76916479546'),('521a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','San Francisco','421a55f4-7d82-47d9-b54c-a76916479547'),('521a55f4-7d82-47d9-b54c-a76916479548','2017-03-25 19:42:41','2017-03-25 19:42:41','Denver','421a55f4-7d82-47d9-b54c-a76916479548'),('521a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:42:41','2017-03-25 19:42:41','Miami','421a55f4-7d82-47d9-b54c-a76916479549'),('521a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:42:41','2017-03-25 19:42:41','Honolulu','421a55f4-7d82-47d9-b54c-a76916479551'),('521a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','Chicago','421a55f4-7d82-47d9-b54c-a76916479552'),('521a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:42:41','2017-03-25 19:42:41','New Orleans','421a55f4-7d82-47d9-b54c-a76916479554'),('521a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:42:41','2017-03-25 19:42:41','Saint Paul','421a55f4-7d82-47d9-b54c-a76916479555'),('521a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:42:41','2017-03-25 19:42:41','Jackson','421a55f4-7d82-47d9-b54c-a76916479556'),('521a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:42:41','2017-03-25 19:42:41','Portland','421a55f4-7d82-47d9-b54c-a76916479557'),('531a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','Babbie','421a55f4-7d82-47d9-b54c-a76916479545'),('531a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:42:40','2017-03-25 19:42:40','Kearny','421a55f4-7d82-47d9-b54c-a76916479546'),('531a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','San Jose','421a55f4-7d82-47d9-b54c-a76916479547'),('531a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:42:41','2017-03-25 19:42:41','Orlando','421a55f4-7d82-47d9-b54c-a76916479549'),('531a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:42:41','2017-03-25 19:42:41','Kailua','421a55f4-7d82-47d9-b54c-a76916479551'),('531a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','Peoria','421a55f4-7d82-47d9-b54c-a76916479552'),('531a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:42:41','2017-03-25 19:42:41','Baton rouge','421a55f4-7d82-47d9-b54c-a76916479554'),('531a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:42:41','2017-03-25 19:42:41','Tupelo','421a55f4-7d82-47d9-b54c-a76916479556'),('531a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:42:41','2017-03-25 19:42:41','Eugene','421a55f4-7d82-47d9-b54c-a76916479557'),('541a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','Calera','421a55f4-7d82-47d9-b54c-a76916479545'),('541a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:42:40','2017-03-25 19:42:40','Tempe','421a55f4-7d82-47d9-b54c-a76916479546'),('541a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','Fremont','421a55f4-7d82-47d9-b54c-a76916479547'),('541a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:42:41','2017-03-25 19:42:41','Pearl city','421a55f4-7d82-47d9-b54c-a76916479551'),('541a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','Naperville','421a55f4-7d82-47d9-b54c-a76916479552'),('541a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:42:41','2017-03-25 19:42:41','Lafayette','421a55f4-7d82-47d9-b54c-a76916479554'),('541a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:42:41','2017-03-25 19:42:41','Meridian','421a55f4-7d82-47d9-b54c-a76916479556'),('551a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','Fairfield','421a55f4-7d82-47d9-b54c-a76916479545'),('551a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','Napa','421a55f4-7d82-47d9-b54c-a76916479547'),('551a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','Urbana','421a55f4-7d82-47d9-b54c-a76916479552'),('561a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','Sonoma','421a55f4-7d82-47d9-b54c-a76916479547'),('561a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','Joliet','421a55f4-7d82-47d9-b54c-a76916479552');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_amenity`
--

DROP TABLE IF EXISTS `place_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_amenity` (
  `place_id` varchar(60) NOT NULL,
  `amenity_id` varchar(60) NOT NULL,
  PRIMARY KEY (`place_id`,`amenity_id`),
  KEY `amenity_id` (`amenity_id`),
  CONSTRAINT `place_amenity_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `place_amenity_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_amenity`
--

LOCK TABLES `place_amenity` WRITE;
/*!40000 ALTER TABLE `place_amenity` DISABLE KEYS */;
/*!40000 ALTER TABLE `place_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `city_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `number_rooms` int NOT NULL,
  `number_bathrooms` int NOT NULL,
  `max_guest` int NOT NULL,
  `price_by_night` int NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `places_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `places_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `text` varchar(1024) NOT NULL,
  `place_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('028b4563-fb93-4052-89b3-968ab884207e','2016-03-25 19:42:40','2016-03-25 19:42:40','RazvrlcfpMNvhWheJDXL'),('04921cf3-4d4d-4eb4-854d-68c75c640963','2016-03-25 19:42:40','2016-03-25 19:42:40','OxYaGUytnDrtpJotVxuQ'),('069c65b5-a770-49bb-9084-47dff0e76efc','2016-03-25 19:42:40','2016-03-25 19:42:40','PrzQgwwRvaIzKEEVLTAH'),('06a0b88d-0d82-4eba-9539-1167f315d218','2016-03-25 19:42:40','2016-03-25 19:42:40','XqjFFHnHuZGgybArELig'),('06ca4de4-8e8e-4bbf-a6dc-d94ed0d59880','2016-03-25 19:42:40','2016-03-25 19:42:40','QnBjZUxlFQIylJdyIkHS'),('0e52aeb9-03ff-4b9b-b365-e4d6313471a7','2016-03-25 19:42:40','2016-03-25 19:42:40','JtdWFYWbyCzRzVjnvQdk'),('0fccdf2c-c5bd-48ec-aa82-874381d13283','2016-03-25 19:42:40','2016-03-25 19:42:40','GaXdlzZHnoLgJCdMWLij'),('103459d9-de48-4cc2-8c20-d03960b8b9ed','2016-03-25 19:42:40','2016-03-25 19:42:40','CfLrhdByzmzGxQdWYkBT'),('11193dd5-12ad-4fd1-8582-7bf7c1f40cb6','2016-03-25 19:42:40','2016-03-25 19:42:40','DquEtySWwiVOztMbhjJy'),('12367838-fddb-4814-a4c0-b5e3c98304ea','2016-03-25 19:42:40','2016-03-25 19:42:40','GsbHzBSWsDNFAeijAMoT'),('19b0e4c8-9385-40f1-9073-fe55bb82c1ac','2016-03-25 19:42:40','2016-03-25 19:42:40','SscNErjzHeQaYIMHhUiF'),('1aa7506e-3a3a-4649-807c-bb383fee847a','2016-03-25 19:42:40','2016-03-25 19:42:40','DlVYNgrAwaWlsDBNIsfk'),('1e13298b-2311-4130-a4ad-f9181fbea28c','2016-03-25 19:42:40','2016-03-25 19:42:40','QzqOvsCgVGMLbjvlZjJO'),('1f1a5886-3c28-4631-996d-dd0faf8bd108','2016-03-25 19:42:40','2016-03-25 19:42:40','RtAenXHfyNwLANnHZAjq'),('2070dcf7-f14b-4e5f-8bb3-f3fde2307ba6','2016-03-25 19:42:40','2016-03-25 19:42:40','YrAoxxsvgJjCCZHNAszq'),('22005f31-dfaf-4b0f-ae36-4edcd92f3223','2016-03-25 19:42:40','2016-03-25 19:42:40','QywjWwtjiThdJdNkrQtW'),('2342dd3e-cb3c-45bc-a841-175fb7a6fffb','2016-03-25 19:42:40','2016-03-25 19:42:40','LdcmDxCpKqbbEMoxeFJH'),('26e9475f-59bd-45ee-ad67-c8d843a25fd4','2016-03-25 19:42:40','2016-03-25 19:42:40','ApGdLZZVNyeLJajXrbzf'),('29f8a6d1-d059-459a-b408-56279def6121','2016-03-25 19:42:40','2016-03-25 19:42:40','HkHeuWkKvCZEUcDziLWd'),('2f4b69cd-f1e6-4c4c-94c1-c6872361a139','2016-03-25 19:42:40','2016-03-25 19:42:40','RfjbODGhCgnSuYxbxGvH'),('2fc51f18-45ab-4dfb-931a-47a0da13ab33','2016-03-25 19:42:40','2016-03-25 19:42:40','ZjqjfhTaplEnkKAivgor'),('31c5fac0-deb3-4c1d-9792-8b53d23bf292','2016-03-25 19:42:40','2016-03-25 19:42:40','VqUHGjjrcqeEKgddraDD'),('33632396-41ba-4a88-b0f4-dbd350951f49','2016-03-25 19:42:40','2016-03-25 19:42:40','ErwbjJJzfyFNDiMYnSAl'),('3806bed8-0244-4a43-8d57-e31ca5098d4d','2016-03-25 19:42:40','2016-03-25 19:42:40','TtCRhTRcLpjwxNCfSOQq'),('38184ae4-6202-4398-9558-598e3ae4edad','2016-03-25 19:42:40','2016-03-25 19:42:40','GbvuYzKPufYtqFbYpups'),('3826a82a-962e-49e4-84df-2362023ceeae','2016-03-25 19:42:40','2016-03-25 19:42:40','QcTwxjXozujkeXNohOPO'),('399b4716-dbb3-4c7f-a86a-83bf806a08d4','2016-03-25 19:42:40','2016-03-25 19:42:40','RgjbyyoVNRSqaKwlQbLH'),('3ddc9a21-5f78-4231-a9f8-1e50f1f385d7','2016-03-25 19:42:40','2016-03-25 19:42:40','BwSgOREgamofbQBeExyo'),('426d30ef-9e8c-40d7-8be6-3e9800a930a6','2016-03-25 19:42:40','2016-03-25 19:42:40','OmDpKAZSnwrRxVPZNYwm'),('43dea875-d10c-4ba4-a033-469e3dc55f2b','2016-03-25 19:42:40','2016-03-25 19:42:40','YfewYxJPsejnIbpQlhcm'),('467495f5-e987-4bad-a8d8-03cc05e3da34','2016-03-25 19:42:40','2016-03-25 19:42:40','GrfqrdzeTyoFGZNsIDMO'),('490bc338-2bc9-4831-b6d1-5824cc0a0857','2016-03-25 19:42:40','2016-03-25 19:42:40','NxCzpgJQnLbUdVLPxWQt'),('551ed7b5-25e2-4030-8022-902d4a4bd81b','2016-03-25 19:42:40','2016-03-25 19:42:40','VasPPAWYvrNYfuUgZZbU'),('56b5aaaa-86dc-4427-b500-90cc3ff7e2aa','2016-03-25 19:42:40','2016-03-25 19:42:40','KdQtNWbSdSvkimwnMWax'),('580381ba-ce7b-424c-a697-51769c965d87','2016-03-25 19:42:40','2016-03-25 19:42:40','KaAAEOkODOlVtHMHwXaB'),('5b4415ea-178e-4151-b886-c2ba97e5c780','2016-03-25 19:42:40','2016-03-25 19:42:40','XflxKWfcoEJDUJYijNRG'),('5e7b75e6-afa4-42e7-9b14-6143c719ba66','2016-03-25 19:42:40','2016-03-25 19:42:40','ErsQxGUUQpxeOraEOHIH'),('604bc4f7-546c-4d40-a712-62ab500009ff','2016-03-25 19:42:40','2016-03-25 19:42:40','FuAmdeoqnrZSIqcgEqBm'),('61e5873a-fee1-411f-96c0-270d7a6cd515','2016-03-25 19:42:40','2016-03-25 19:42:40','JbXNgKmYzhQGKytrCFnQ'),('6475cd23-4ae7-42af-8a9b-d9e5c4327d20','2016-03-25 19:42:40','2016-03-25 19:42:40','EtXnioxqmrqreJfCAwJf'),('6530930d-8c9c-46bf-8fea-764262d0364d','2016-03-25 19:42:40','2016-03-25 19:42:40','LuwTjzKGIKuafffhBpDJ'),('66754635-c033-45af-adbb-d0862cde5456','2016-03-25 19:42:40','2016-03-25 19:42:40','UagToFPTYdgxLHinonvE'),('67ef5d39-9190-4364-bc7b-7b70d7d38a77','2016-03-25 19:42:40','2016-03-25 19:42:40','CzhicHnoNRxfQOvtYSiq'),('6a9f984c-3693-4e8c-853c-4537d3a074bd','2016-03-25 19:42:40','2016-03-25 19:42:40','DkAgpIjzAeYeWJGDyWJB'),('71221ccd-4524-4b1c-81d8-4d38017a506d','2016-03-25 19:42:40','2016-03-25 19:42:40','XasiTgSUCAgwDtboZtph'),('73de5dd8-38cc-4e8a-b247-6cc0b7481f0b','2016-03-25 19:42:40','2016-03-25 19:42:40','FkeIlfAWgNojeNkAIOQL'),('791a7a9a-2842-4343-98a3-663241fd5dd7','2016-03-25 19:42:40','2016-03-25 19:42:40','KtHtZuITMHRrACWmvCGF'),('7c595edb-c69c-4fee-afc1-04cd50b4d49e','2016-03-25 19:42:40','2016-03-25 19:42:40','RhIJuAFNEPcDwSPmmgOl'),('7ca80219-f06c-4663-af12-0538db72ee88','2016-03-25 19:42:40','2016-03-25 19:42:40','PpzRRIeNiZZaovwyBOeF'),('7e02a59c-8349-4981-be46-22f23aefdf65','2016-03-25 19:42:40','2016-03-25 19:42:40','UeGxeJwXOkspgxqQiZPC'),('7e26fdb3-d0f7-4225-9ac3-01f81a79075a','2016-03-25 19:42:40','2016-03-25 19:42:40','UcpZlAogNhzMdYwiwdeh'),('7f44c4dc-4cb3-444f-bc27-71d8d331b72b','2016-03-25 19:42:40','2016-03-25 19:42:40','MlrewLfDFanbMuSijLLJ'),('821bb528-ca4c-4855-9c0f-f82d1b624ffe','2016-03-25 19:42:40','2016-03-25 19:42:40','RzUsRlAgZTbgabHFORtZ'),('828a5163-3d59-43ee-9c8d-72ca26d1f3c8','2016-03-25 19:42:40','2016-03-25 19:42:40','YsXlDVOqQDHYQTzYbwaP'),('83630e99-a097-4afc-80b4-0b562e359e80','2016-03-25 19:42:40','2016-03-25 19:42:40','MvhvgRhJhjnqYadQOjah'),('84795171-794f-48b7-b50f-ef423ab4136e','2016-03-25 19:42:40','2016-03-25 19:42:40','HoSzeuMThOxiIVDQnSVZ'),('86a776c6-0d37-447d-aabb-98e42d954343','2016-03-25 19:42:40','2016-03-25 19:42:40','FuwEhNcPyajfjnsjrJJL'),('89318e6d-e454-4ac0-bb6d-7d0316748d26','2016-03-25 19:42:40','2016-03-25 19:42:40','RbGumzZaZMvOFssCpMKe'),('898c79df-15d3-4ebd-81d8-c0d24ee66b54','2016-03-25 19:42:40','2016-03-25 19:42:40','XpCHGjgdZWAGIkMBYpRA'),('8b4c1c92-0daf-46cc-8c25-0fdf8ac28599','2016-03-25 19:42:40','2016-03-25 19:42:40','UrZMjpVDaLRbegoiwOLk'),('8b5cb170-faa2-465f-8260-01eafff82666','2016-03-25 19:42:40','2016-03-25 19:42:40','AbTgYiXzuCytANztHldx'),('8e304ca6-f979-4128-a576-119277344de9','2016-03-25 19:42:40','2016-03-25 19:42:40','HuozPtKDxYuuypeqxCZU'),('8eebe9d2-4303-41e4-90a7-91a4bc52b450','2016-03-25 19:42:40','2016-03-25 19:42:40','KrvDSdCjDVAypvJsVvZG'),('91a73216-0568-4448-b224-2dd6ee7d090d','2016-03-25 19:42:40','2016-03-25 19:42:40','PoAvZAoeMBGtdSyOQRQz'),('9bc4640a-ac62-418b-a6bc-20f98568db8a','2016-03-25 19:42:40','2016-03-25 19:42:40','PdQHxdRRsjfOydsfGTv'),('9d7eebf5-441e-44ce-91aa-4cce1b7ad840','2016-03-25 19:42:40','2016-03-25 19:42:40','TkPAbiwUXzVPiTpZRVuE'),('a0e47ba5-c646-4c86-888a-02f6c7084c18','2016-03-25 19:42:40','2016-03-25 19:42:40','IkvzKsxMixcioareRcMt'),('a49d6de7-9828-4a58-a06b-4db6bfe36a8e','2016-03-25 19:42:40','2016-03-25 19:42:40','DhymLIYEEjsmXEjdZVUu'),('a5a968c5-8bde-4424-bf8a-ce0c28ec45c0','2016-03-25 19:42:40','2016-03-25 19:42:40','RcGFCoNQiMpDXvJHQFkS'),('ad0cb557-8533-4408-83d5-c5aeb9618a2f','2016-03-25 19:42:40','2016-03-25 19:42:40','VopKqWRTJfFgmLqldITm'),('ae961bda-dfd8-427f-9f7b-668ff961dff8','2016-03-25 19:42:40','2016-03-25 19:42:40','IdOoCAyVJpJHGfiwjvzL'),('af01222e-832a-454b-9da3-b00b545f5ac7','2016-03-25 19:42:40','2016-03-25 19:42:40','SqIosJNcMZRMCQNFkiiF'),('af54cabe-8530-4ef1-aceb-96a3ce5f0e88','2016-03-25 19:42:40','2016-03-25 19:42:40','IrDWmhlpcytDvlzoqngj'),('b6a6b90c-8844-4697-b6e5-2068ec7e11e1','2016-03-25 19:42:40','2016-03-25 19:42:40','RelplmcOuwhruoqhdZSv'),('b9170d3d-2731-4bfd-8045-137ab389fe36','2016-03-25 19:42:40','2016-03-25 19:42:40','LektKNHhmYVuXhQSMjux'),('c038ccb6-26e9-4690-a1ab-c778679a24dc','2016-03-25 19:42:40','2016-03-25 19:42:40','AeIXOaMhDANpKORcMegR'),('c0a22f59-e8d2-4375-b2a0-13e9b2026d0a','2016-03-25 19:42:40','2016-03-25 19:42:40','EkMKHKlruaeCLvixKwmJ'),('c139ac66-1f97-42b4-88b8-9ad530e11c23','2016-03-25 19:42:40','2016-03-25 19:42:40','AdQADlZFpiZmYpqfmvkl'),('c3ba8b0b-4261-4b25-8fb1-931f22933fdf','2016-03-25 19:42:40','2016-03-25 19:42:40','EbtrMvQdSShCQQHUeXIN'),('c53f12c9-8986-451d-a8e6-18365861722e','2016-03-25 19:42:40','2016-03-25 19:42:40','WMIrmiuIEmINmuOGYEIY'),('c87dc046-b40a-4fc5-8b99-29deb11aa503','2016-03-25 19:42:40','2016-03-25 19:42:40','BaGTOWpTGMKHJwcJxKzl'),('cae4abbd-9f0b-4d37-b36c-9f2384bb7162','2016-03-25 19:42:40','2016-03-25 19:42:40','QdGMABZBbqFSWWHDAsjm'),('cfa4325a-bd8a-4b03-ad2e-f71598f6c893','2016-03-25 19:42:40','2016-03-25 19:42:40','NwueTaorIsYOWhKjmSmW'),('d1badf19-433b-45a5-aa00-92ed1cdcd497','2016-03-25 19:42:40','2016-03-25 19:42:40','JcTTuIHcvuNVQoGhKDro'),('d653d163-ca48-434a-ae0c-321bac8279b3','2016-03-25 19:42:40','2016-03-25 19:42:40','VfrmIOIEYGXQmGQrBjsv'),('dbaeaeaf-14c0-41bb-86a3-ab3da5ba6af9','2016-03-25 19:42:40','2016-03-25 19:42:40','BcaHPlOptRVGqUEPAqtu'),('dbc93795-e59f-4532-a09e-c3f50b8e3770','2016-03-25 19:42:40','2016-03-25 19:42:40','KblHqFwKYjWyVLPNffIy'),('dda3e4c9-1c19-4d7a-bcc7-5202a5043b41','2016-03-25 19:42:40','2016-03-25 19:42:40','PaQwRcHagwNyBqoEwoZO'),('deb3f633-189b-4138-aa6d-5d39a64f7fc0','2016-03-25 19:42:40','2016-03-25 19:42:40','GtcSdbyeSZMSuypeGfZY'),('dfd26720-d5db-49d6-84f7-150e4f999f30','2016-03-25 19:42:40','2016-03-25 19:42:40','SdtstpwpGmldwuhoLySb'),('e05646b1-489d-4c5e-9fe6-ebf9676efba7','2016-03-25 19:42:40','2016-03-25 19:42:40','FbRfgmOBdHpjGZjAeHId'),('e138ca8f-9c52-44f5-acce-ef178c3106b9','2016-03-25 19:42:40','2016-03-25 19:42:40','DaqqQeIunZRrMkJKfGrX'),('e6b24870-745e-43ee-9544-b5e50b702c1a','2016-03-25 19:42:40','2016-03-25 19:42:40','OrhKmyFASaARmYRYEfxi'),('e9fc9741-447a-4123-8265-86ae2fa31d9c','2016-03-25 19:42:40','2016-03-25 19:42:40','EsJWavMpqceyMbcDZyQd'),('ec25ffd5-357f-4182-a382-180a25e9719f','2016-03-25 19:42:40','2016-03-25 19:42:40','SzPLhpUTfdhgVcmzyvwb'),('ef0f3e04-9848-43e5-8514-dcc13964c287','2016-03-25 19:42:40','2016-03-25 19:42:40','DmnIrjlPIljUxErWOYUP'),('f836250c-68b9-4770-b686-5fe0b43d7a81','2016-03-25 19:42:40','2016-03-25 19:42:40','SbmHepilkodpWpfgwDdT'),('f9cc9def-4bf2-4f09-9d7d-06b7284047a3','2016-03-25 19:42:40','2016-03-25 19:42:40','NvLbHqKdxqWWHhLAcPGa'),('fd9da8c2-fd9d-4dbd-a8c5-dca561a75131','2016-03-25 19:42:40','2016-03-25 19:42:40','LeauBGaGKsfwRIYqLoyk'),('fe76212c-55a5-49ef-84f4-f1b82a709e5b','2016-03-25 19:42:40','2016-03-25 19:42:40','EaSsmvvzztnSmzDIcRBZ');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbnb_test_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbnb_test_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbnb_test_db`;

--
-- Current Database: `hbtn_0c_0`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0c_0` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0c_0`;

--
-- Table structure for table `first_table`
--

DROP TABLE IF EXISTS `first_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `first_table` (
  `id` int DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `first_table`
--

LOCK TABLES `first_table` WRITE;
/*!40000 ALTER TABLE `first_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `first_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0d_2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0d_2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0d_2`;

--
-- Table structure for table `force_name`
--

DROP TABLE IF EXISTS `force_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `force_name` (
  `id` int DEFAULT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `force_name`
--

LOCK TABLES `force_name` WRITE;
/*!40000 ALTER TABLE `force_name` DISABLE KEYS */;
INSERT INTO `force_name` VALUES (89,'Best School');
/*!40000 ALTER TABLE `force_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_not_null`
--

DROP TABLE IF EXISTS `id_not_null`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_not_null` (
  `id` int DEFAULT '1',
  `name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_not_null`
--

LOCK TABLES `id_not_null` WRITE;
/*!40000 ALTER TABLE `id_not_null` DISABLE KEYS */;
INSERT INTO `id_not_null` VALUES (89,'Best School'),(1,'Best');
/*!40000 ALTER TABLE `id_not_null` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unique_id`
--

DROP TABLE IF EXISTS `unique_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unique_id` (
  `id` int DEFAULT '1',
  `name` varchar(256) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unique_id`
--

LOCK TABLES `unique_id` WRITE;
/*!40000 ALTER TABLE `unique_id` DISABLE KEYS */;
INSERT INTO `unique_id` VALUES (89,'Best School');
/*!40000 ALTER TABLE `unique_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0d_tvshows`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0d_tvshows` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0d_tvshows`;

--
-- Table structure for table `tv_genres`
--

DROP TABLE IF EXISTS `tv_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_genres`
--

LOCK TABLES `tv_genres` WRITE;
/*!40000 ALTER TABLE `tv_genres` DISABLE KEYS */;
INSERT INTO `tv_genres` VALUES (1,'Drama'),(2,'Mystery'),(3,'Adventure'),(4,'Fantasy'),(5,'Comedy'),(6,'Crime'),(7,'Suspense'),(8,'Thriller');
/*!40000 ALTER TABLE `tv_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show_genres`
--

DROP TABLE IF EXISTS `tv_show_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_show_genres` (
  `show_id` int NOT NULL,
  `genre_id` int NOT NULL,
  KEY `show_id` (`show_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `tv_show_genres_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `tv_shows` (`id`),
  CONSTRAINT `tv_show_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `tv_genres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show_genres`
--

LOCK TABLES `tv_show_genres` WRITE;
/*!40000 ALTER TABLE `tv_show_genres` DISABLE KEYS */;
INSERT INTO `tv_show_genres` VALUES (1,1),(1,2),(2,3),(2,1),(2,4),(3,5),(4,5),(5,5),(6,6),(6,1),(6,7),(6,8),(8,6),(8,1),(8,2),(8,7),(8,8),(10,5),(10,1);
/*!40000 ALTER TABLE `tv_show_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_shows`
--

DROP TABLE IF EXISTS `tv_shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_shows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_shows`
--

LOCK TABLES `tv_shows` WRITE;
/*!40000 ALTER TABLE `tv_shows` DISABLE KEYS */;
INSERT INTO `tv_shows` VALUES (1,'House'),(2,'Game of Thrones'),(3,'The Big Bang Theory'),(4,'New Girl'),(5,'Silicon Valley'),(6,'Breaking Bad'),(7,'Better Call Saul'),(8,'Dexter'),(9,'Homeland'),(10,'The Last Man on Earth');
/*!40000 ALTER TABLE `tv_shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0d_tvshows_rate`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0d_tvshows_rate` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0d_tvshows_rate`;

--
-- Table structure for table `tv_genres`
--

DROP TABLE IF EXISTS `tv_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_genres`
--

LOCK TABLES `tv_genres` WRITE;
/*!40000 ALTER TABLE `tv_genres` DISABLE KEYS */;
INSERT INTO `tv_genres` VALUES (1,'Drama'),(2,'Mystery'),(3,'Adventure'),(4,'Fantasy'),(5,'Comedy'),(6,'Crime'),(7,'Suspense'),(8,'Thriller');
/*!40000 ALTER TABLE `tv_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show_genres`
--

DROP TABLE IF EXISTS `tv_show_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_show_genres` (
  `show_id` int NOT NULL,
  `genre_id` int NOT NULL,
  KEY `show_id` (`show_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `tv_show_genres_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `tv_shows` (`id`),
  CONSTRAINT `tv_show_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `tv_genres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show_genres`
--

LOCK TABLES `tv_show_genres` WRITE;
/*!40000 ALTER TABLE `tv_show_genres` DISABLE KEYS */;
INSERT INTO `tv_show_genres` VALUES (2,1),(2,2),(3,3),(3,1),(3,4),(4,5),(5,5),(6,5),(7,6),(7,1),(7,7),(7,8),(9,6),(9,1),(9,2),(9,7),(9,8),(11,5),(11,1);
/*!40000 ALTER TABLE `tv_show_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show_ratings`
--

DROP TABLE IF EXISTS `tv_show_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_show_ratings` (
  `show_id` int NOT NULL,
  `rate` int NOT NULL DEFAULT '0',
  KEY `show_id` (`show_id`),
  CONSTRAINT `tv_show_ratings_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `tv_shows` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show_ratings`
--

LOCK TABLES `tv_show_ratings` WRITE;
/*!40000 ALTER TABLE `tv_show_ratings` DISABLE KEYS */;
INSERT INTO `tv_show_ratings` VALUES (2,0),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(3,0),(3,1),(3,2),(3,0),(3,0),(3,1),(3,2),(3,0),(3,0),(3,1),(3,2),(3,3),(3,4),(3,0),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,0),(3,1),(3,2),(3,0),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,0),(3,1),(3,2),(4,0),(5,0),(6,0),(6,0),(6,1),(6,2),(6,3),(6,4),(6,0),(6,0),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,0),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(7,0),(7,1),(7,2),(7,0),(7,1),(7,2),(7,3),(7,4),(7,0),(7,1),(7,2),(8,0),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,0),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,0),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,0),(8,1),(8,2),(8,0),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,0),(8,1),(8,2),(8,3),(8,4),(8,0),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(9,0),(9,1),(9,2),(9,0),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,0),(10,0),(10,0),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,0),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,0),(10,0),(10,1),(10,2),(10,0),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,0),(10,1),(10,2),(10,3),(10,4),(10,0),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,0),(10,1),(10,2),(11,0),(11,1),(11,2),(11,3),(11,4);
/*!40000 ALTER TABLE `tv_show_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_shows`
--

DROP TABLE IF EXISTS `tv_shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_shows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_shows`
--

LOCK TABLES `tv_shows` WRITE;
/*!40000 ALTER TABLE `tv_shows` DISABLE KEYS */;
INSERT INTO `tv_shows` VALUES (2,'House'),(3,'Game of Thrones'),(4,'The Big Bang Theory'),(5,'New Girl'),(6,'Silicon Valley'),(7,'Breaking Bad'),(8,'Better Call Saul'),(9,'Dexter'),(10,'Homeland'),(11,'The Last Man on Earth');
/*!40000 ALTER TABLE `tv_shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0d_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0d_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0d_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_0_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_0_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0e_0_usa`;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_100_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_100_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0e_100_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `state_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'San Francisco',1),(2,'San Francisco',2),(3,'San Francisco',3);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'California'),(3,'California');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_101_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_101_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0e_101_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(3,1,'Los Angeles'),(4,1,'Fremont'),(5,1,'Livermore'),(6,2,'Page'),(7,2,'Phoenix'),(8,3,'Dallas'),(9,3,'Houston'),(10,3,'Austin'),(11,4,'New York'),(12,5,'Las Vegas'),(13,5,'Reno'),(14,5,'Henderson'),(15,5,'Carson City');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_14_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_14_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0e_14_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(3,1,'Los Angeles'),(4,1,'Fremont'),(5,1,'Livermore'),(6,2,'Page'),(7,2,'Phoenix'),(8,3,'Dallas'),(9,3,'Houston'),(10,3,'Austin'),(11,4,'New York'),(12,5,'Las Vegas'),(13,5,'Reno'),(14,5,'Henderson'),(15,5,'Carson City');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_4_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_4_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0e_4_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(3,1,'Los Angeles'),(4,1,'Fremont'),(5,1,'Livermore'),(6,2,'Page'),(7,2,'Phoenix'),(8,3,'Dallas'),(9,3,'Houston'),(10,3,'Austin'),(11,4,'New York'),(12,5,'Las Vegas'),(13,5,'Reno'),(14,5,'Henderson'),(15,5,'Carson City');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_6_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_6_usa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hbtn_0e_6_usa`;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (2,'New Mexico'),(4,'New York'),(9,'New York');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `test_101`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test_101` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `test_101`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(3,1,'Los Angeles'),(4,1,'Fremont'),(5,1,'Livermore'),(6,2,'Page'),(7,2,'Phoenix'),(8,3,'Dallas'),(9,3,'Huston'),(10,3,'Austin'),(11,4,'New York'),(12,5,'Las Vegas'),(13,5,'Reno'),(14,5,'Henderson'),(15,5,'Carson City');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-25  5:25:22
