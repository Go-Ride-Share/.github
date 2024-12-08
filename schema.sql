CREATE DATABASE  IF NOT EXISTS `go-ride-share` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `go-ride-share`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: go-ride-share.cj2u8ie68u2w.us-east-2.rds.amazonaws.com    Database: go-ride-share
-- ------------------------------------------------------
-- Server version	8.0.39

DROP TABLE IF EXISTS `vehicles`;
DROP TABLE IF EXISTS `posts`;
DROP TABLE IF EXISTS `users`;

--
-- Table structure for table `users`
--
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` char(36) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `bio` text,
  `preferences` json DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `number_of_ratings` int DEFAULT '0',
  `rating` decimal(3,2) DEFAULT '0.00',
  `photo` mediumtext,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `posts`
--
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` char(36) NOT NULL,
  `poster_id` char(36) DEFAULT NULL,
  `origin` point DEFAULT NULL,
  `origin_name` varchar(255) DEFAULT NULL,
  `origin_lat` decimal(10,8) DEFAULT NULL,
  `origin_lng` decimal(11,8) DEFAULT NULL,
  `destination` point DEFAULT NULL,
  `destination_name` varchar(255) DEFAULT NULL,
  `destination_lat` decimal(10,8) DEFAULT NULL,
  `destination_lng` decimal(11,8) DEFAULT NULL,
  `description` text,
  `seats_available` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `departure_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `poster_id` (`poster_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vehicles`
--
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehicle_id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `vehicle_type` enum('sedan','suv','truck','van','other') DEFAULT NULL,
  `vehicle_make` varchar(100) DEFAULT NULL,
  `vehicle_model` varchar(100) DEFAULT NULL,
  `vehicle_year` year DEFAULT NULL,
  `vehicle_color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
