-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ebook-app
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `book_dtls`
--

DROP TABLE IF EXISTS `book_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_dtls` (
  `bookId` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `bookCategory` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_dtls`
--

LOCK TABLES `book_dtls` WRITE;
/*!40000 ALTER TABLE `book_dtls` DISABLE KEYS */;
INSERT INTO `book_dtls` VALUES (31,'Programming with Java','Balagurusamy','558','New','Active','java.jpg','pratikpbhoyar'),(33,'Fundamentals of Database Systems','Shamkant B. Navathe','610','New','Active','DBMS.jpg','pratikpbhoyar'),(34,'Computer Organization and Architecture','Stallings','800','New','Active','CO.jpg','pratikpbhoyar'),(35,'Computer Networking','Kurose','819','New','Active','CN.jpg','pratikpbhoyar'),(36,'Fundamentals of computer algorithms','ellis horowitz','425','New','Active','DAA.jpg','pratikpbhoyar'),(37,'Introduction to Automata Theory','John E. Hopcroft','599','New','Active','TOC.jpg','pratikpbhoyar'),(38,'Data Mining','Jiawei Han and Micheline Kamber','900','New','Active','DMDW.jpg','pratikpbhoyar'),(39,'Software Engineering','Roger Pressman','410','New','Active','SE.jpg','pratikpbhoyar'),(40,'Data Structures Using C','Aaron M. Tenenbaum','755','Old','Active','DS.jpg','pratikbhoyar85@gmail.com'),(41,'Modern Digital Electronics','R P Jain','718','Old','Active','MPI.jpg','pratikbhoyar85@gmail.com'),(42,'Indian Polity','M Laxmikanth','595','Old','Active','Indian Polity.jpg','pratikbhoyar85@gmail.com'),(43,'Brief History of Modern India','Spectrum Books','1500','Old','Active','Spectrum Modern Indian History.jpeg','pratikbhoyar85@gmail.com'),(44,'Environment','Shankar IAS','295','Old','Active','Shankar IAS-Environment .jpg','pratikbhoyar85@gmail.com'),(46,'Jouney To Home','Radhanath Swami','250','New','Active','Jurney to Home.jpg','pratikpbhoyar'),(47,'Bhagavad Gita As It Is','Swami Prabhupada','200','Old','Active','Gita.jpg','pratikbhoyar85@gmail.com'),(48,'Operating System Concepts','Galvin','1228','New','Active','OS.jpg','pratikpbhoyar');
/*!40000 ALTER TABLE `book_dtls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 14:30:22
