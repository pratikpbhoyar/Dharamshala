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
-- Table structure for table `book_order`
--

DROP TABLE IF EXISTS `book_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phno` varchar(45) DEFAULT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order`
--

LOCK TABLES `book_order` WRITE;
/*!40000 ALTER TABLE `book_order` DISABLE KEYS */;
INSERT INTO `book_order` VALUES (1,'BOOK-CRD-0085','Pratik Bhoyar','pratikbhoyar85@gmail.com','Shivaji Chouk,Lala Control,Yavatmal,Maharashtra,445001','1111111111','Theory of Computation','Hopcroft','599.0','COD'),(2,'BOOK-CRD-00385','Pratik Bhoyar','pratikbhoyar85@gmail.com','Shivaji Chouk,Lala Control,Yavatmal,Maharashtra,445001','1111111111','Data Mining & Warehousing','Han and Jiawei','1090.0','COD'),(3,'BOOK-CRD-00582','Pratik Bhoyar','pratikbhoyar85@gmail.com','J Towar,J Towar,Sambhajinagar,Maharashtra,431005','1111111111','Theory of Computation','Hopcroft','599.0','COD'),(4,'BOOK-CRD-00813','Pratik Bhoyar','pratikbhoyar85@gmail.com','J Towar,J Towar,Sambhajinagar,Maharashtra,431005','1111111111','Data Mining & Warehousing','Han and Jiawei','1090.0','COD'),(5,'BOOK-CRD-00123','Pratik Bhoyar','pratikbhoyar85@gmail.com','Pune,Pune,Pune,Pune,Pune','1111111111','Computer Networking','Kurose','832.0','COD'),(6,'BOOK-CRD-00610','Chaitanya','chaitanyadeshmukha10@gmail.com','Parli,Parli,Parli,Parli,Parli','3333333333','Data Mining & Warehousing','Han and Jiawei','1090.0','COD'),(7,'BOOK-CRD-00178','Pratik Bhoyar','pratikbhoyar85@gmail.com','dsdsd,dasda,efed,fewf,455545','1111111111','Data Mining & Warehousing','Han and Jiawei','1090.0','COD'),(8,'BOOK-CRD-00947','Pratik Bhoyar','pratikbhoyar85@gmail.com','Shivaji Chowk,State Bank of India,Yavatmal,Maharashtra,445001','1111111111','Data Mining & Warehousing','Han and Jiawei','1090.0','COD'),(9,'BOOK-CRD-00398','Pratik Bhoyar','pratikbhoyar85@gmail.com','Shivaji Chowk,State Bank of India,Yavatmal,Maharashtra,445001','1111111111','Theory of Computation','Hopcroft','599.0','COD'),(10,'BOOK-CRD-00797','Pratik Bhoyar','pratikbhoyar85@gmail.com','Shivaji Chowk,State Bank of India,Yavatmal,Maharashtra,445001','1111111111','Data Mining & Warehousing','Han and Jiawei','1090.0','COD'),(11,'BOOK-CRD-00358','Pratik Bhoyar','pratikbhoyar85@gmail.com','Shivaji Chowk,lala control,Yavatmal,Maharashtra,445001','1111111111','Data Mining & Warehousing','Han and Jiawei','1090.0','COD'),(12,'BOOK-CRD-0023','Pratik Bhoyar','pratikbhoyar85@gmail.com','yavatmal,lala control,yavatmal,maharashtra,445001','8317201705','Data Mining','Jiawei Han and Micheline Kamber','900.0','COD'),(13,'BOOK-CRD-00577','Pratik Bhoyar','pratikbhoyar85@gmail.com','yavatmal,lala control,yavatmal,maharashtra,445001','8317201705','Introduction to Automata Theory','John E. Hopcroft','599.0','COD'),(14,'BOOK-CRD-00748','Pratik Bhoyar','pratikbhoyar85@gmail.com','yavatmal,lala control,yavatmal,maharashtra,445001','8317201705','Data Mining','Jiawei Han and Micheline Kamber','900.0','COD'),(15,'BOOK-CRD-00779','Pratik Bhoyar','pratikbhoyar85@gmail.com','Yavatmal,Yavatmal,Yavatmal,Yavatmal,445001','8317201702','Software Engineering','Roger Pressman','410.0','COD'),(16,'BOOK-CRD-00750','Pratik Bhoyar','pratikbhoyar85@gmail.com','yavatmal,yavatmal,yavatmal,yavatmal,445001','8317201702','Software Engineering','Roger Pressman','410.0','COD'),(17,'BOOK-CRD-00534','Pratik Bhoyar','pratikbhoyar85@gmail.com','Maharashtra,control,Maharashtra,Maharashtra,445001','8317201702','Introduction to Automata Theory','John E. Hopcroft','599.0','COD');
/*!40000 ALTER TABLE `book_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 14:30:23
