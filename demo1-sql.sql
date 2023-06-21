-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: demo1
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
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorys`
--

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;
INSERT INTO `categorys` VALUES (1,'Vòng tay','Danh sách vòng tay'),(2,'Đồng hồ','Danh sách đồng hồ'),(3,'Nhẫn','Danh sách Nhẫn'),(4,'Khuyên tai','Danh sách khuyên tai');
/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_product_idx` (`id_product`),
  CONSTRAINT `id_product` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,1,'Vàng','#FFFF00','a.jpg'),(2,1,'Xanh','#FFFF00','b.jpg'),(3,2,'Vàng','#FFFF00','c.jpg'),(4,2,'Xanh','#FFFF00','d.jpg'),(5,5,'Vàng','#FFFF00','e.jpg'),(6,6,'Vàng','#FFFF00','g.jpg'),(7,7,'Vàng','#FFFF00','h.jpg'),(8,8,'Vàng','#FFFF00','i.jpg'),(9,9,'Vàng','#FFFF00','b.jpg'),(10,10,'Vàng','#FFFF00','b.jpg'),(11,11,'Vàng','#FFFF00','b.jpg'),(12,12,'Vàng','#FFFF00','b.jpg'),(13,13,'Vàng','#FFFF00','b.jpg'),(14,14,'Vàng','#FFFF00','b.jpg'),(15,15,'Vàng','#FFFF00','b.jpg'),(16,16,'Vàng','#FFFF00','b.jpg'),(17,17,'Vàng','#FFFF00','b.jpg'),(18,18,'Vàng','#FFFF00','b.jpg'),(19,19,'Vàng','#FFFF00','b.jpg'),(20,20,'Vàng','#FFFF00','b.jpg'),(21,21,'Vàng','#FFFF00','b.jpg'),(22,22,'Vàng','#FFFF00','b.jpg'),(23,23,'Vàng','#FFFF00','b.jpg'),(24,24,'Vàng','#FFFF00','b.jpg'),(25,25,'Vàng','#FFFF00','b.jpg');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Trang chủ',NULL),(2,'Sản phẩm',NULL),(3,'So sánh',NULL),(4,'Giỏ hàng',NULL),(5,'Bài viết',NULL),(6,'Liên hệ',NULL);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_category` int DEFAULT NULL,
  `sizes` varchar(45) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `sale` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `highlight` tinyint DEFAULT NULL,
  `new_product` tinyint DEFAULT NULL,
  `details` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_category_idx` (`id_category`),
  CONSTRAINT `id_category` FOREIGN KEY (`id_category`) REFERENCES `categorys` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'L,M,S','Manicure & Pedicure',20000,0,'Nowadays the lingerie industry is one of the most successful business spheres. Nowadays the lingerie industry is one of ...',1,0,'<div class=\"tab-pane fade active in\" id=\"home\">\r\n			  <h4>Product Information</h4>\r\n                <table class=\"table table-striped\">\r\n				<tbody>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Color:</td><td class=\"techSpecTD2\">Black</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Style:</td><td class=\"techSpecTD2\">Apparel,Sports</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Season:</td><td class=\"techSpecTD2\">spring/summer</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Usage:</td><td class=\"techSpecTD2\">fitness</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Sport:</td><td class=\"techSpecTD2\">122855031</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Brand:</td><td class=\"techSpecTD2\">Shock Absorber</td></tr>\r\n				</tbody>\r\n				</table>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n\r\n			</div>','2020-04-09 11:38:43','2020-04-09 11:47:31'),(2,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(3,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(4,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(5,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(6,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(7,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(8,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(9,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(10,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(11,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(12,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(13,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(14,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(15,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(16,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(17,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(18,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(19,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(20,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(21,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(22,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(23,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(24,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(25,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(26,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(27,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43'),(28,1,'L,S,M','Name',200000,0,'tital',1,0,'details','2020-04-09 11:38:43','2020-04-09 11:38:43');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'carousel1.png','Bootstrap Ecommerce template','Highly Google seo friendly'),(2,'bootstrap_free-ecommerce.png','Bootstrap shopping cart','Very clean simple to use'),(3,'carousel3.png','Twitter Bootstrap cart','Very easy to integrate and expand.'),(4,'bootstrap-templates.png','Bootstrap templates integration','Compitable to many more opensource cart');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-21 11:10:25
