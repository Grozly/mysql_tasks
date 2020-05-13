-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: citilink
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `accounts_email_phone_idx` (`email`,`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'alex@mail.ru','89091236545','123123','2019-03-18 03:36:22','2020-05-10 21:32:24'),(2,'bob@mail.ru','89024856765','312321','2020-05-10 03:36:22','2020-05-10 22:51:44'),(3,'victoriya@gmail.ru','89021216576','111222','2020-05-10 03:36:22','2020-05-10 22:51:44'),(4,'gerda@mail.ru','89084561234','222111','2020-05-10 03:36:22','2020-05-10 22:51:44'),(5,'dmitri@gmail.ru','89029924512','333333','2020-05-10 03:36:22','2020-05-10 22:51:44'),(6,'Elena@mail.ru','89126571211','12314567890','2020-05-10 03:36:22','2020-05-10 22:51:44'),(7,'Jane@gmail.ru','89024810092','0987654321qwe','2020-05-10 03:36:22','2020-05-10 22:51:44'),(8,'Zoya@mail.ru','89096981222','qwe1234567890','2020-05-10 03:36:22','2020-05-10 22:51:44'),(9,'Konstantin@gmail.ru','89996541198','qweasdzxc','2020-05-10 03:36:22','2020-05-10 22:51:44'),(10,'lora@yandex.ru','89106789146','ewqfghjkl','2020-05-10 03:36:22','2020-05-10 22:51:44'),(11,'mihail@yandex.ru','89926890011','zxcasdvbnfgh','2020-05-10 03:36:22','2020-05-10 22:51:44');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Товары первой необходимости'),(2,'Смартфоны и гаджеты'),(3,'Ноутбуки и компьютеры'),(4,'Телевизоры, аудио-видео, Hi-Fi'),(5,'Бытовая техника для дома и кухни'),(6,'Садовая техника и электроинструмент'),(7,'Фото, видео, системы безопасности'),(8,'Автомобильная электроника'),(9,'Канцтовары, Мебель и Офисная техника'),(10,'Красота и здоровье'),(11,'Активны отдых, спорт и хобби'),(12,'Товары для геймеров');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characteristics`
--

DROP TABLE IF EXISTS `characteristics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characteristics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `characteristics_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characteristics`
--

LOCK TABLES `characteristics` WRITE;
/*!40000 ALTER TABLE `characteristics` DISABLE KEYS */;
INSERT INTO `characteristics` VALUES (1,'Класс','смартфон'),(2,'Тип корпуса	','смартфон'),(3,'Класс','моноблок'),(4,'Технология GSM 850','есть'),(5,'Технология GSM 900/1800','есть'),(6,'Технология GSM 1900','есть'),(7,'Технология 3G','есть'),(8,'Технология 4G (LTE)','есть'),(9,'Количество SIM-карт	','1SIM'),(10,'Тип SIM-карты','нано-SIM + eSIM'),(11,'Операционная система','iPhone iOS 13'),(12,'Дисплей','6.1\", IPS'),(13,'Разрешение дисплея','1792×828'),(14,'Число пикселей на дюйм','326PPI'),(15,'Сенсорный экран','Multitouch'),(16,'Защитное покрытие экрана','стекло'),(17,'Смартфон с «Монобровью»','ДА'),(18,'Основная камера','12Мп'),(19,'Диафрагма, основная камера','F/1.8'),(20,'Вспышка','есть'),(21,'Тип вспышки','светодиодная'),(22,'Цифровой зум','5х'),(23,'Запись видео','4K'),(24,'Фронтальная камера','7Мп'),(25,'Диафрагма, фронтальная камера','F/2.2'),(26,'Особенности камер','Режим «Портрет» с улучшенным эффектом боке и функцией «Глубина», Портретное освещение, Функция Smart HDR для фотосъёмки, Оптическая стабилизация изображения, Шестилинзовый объектив, Панорамная съёмка (с разрешением до 63 Мп), Сенсор BSI'),(27,'MP3 плеер','есть'),(28,'MP3 мелодии вызова','есть'),(29,'Поддерживаемые аудиоформаты','AAC-LC, HE-AAC, HE-AAC v2, защищённый AAC, MP3, линейный PCM, Apple Lossless, FLAC, Dolby Digital (AC-3), Dolby Digital Plus (E-AC-3) и Audible (форматы 2, 3, 4, Audible Enhanced Audio, AAX и AAX+)'),(30,'Цвет','черный'),(31,'Материал корпуса','стекло/алюминий'),(32,'Размеры (ШхВхТ)	','75.7 х 150.9 х 8.3 мм'),(33,'Вес','	194 г'),(34,'Гарантия','12 мес.'),(35,'Страна производитель','Китай'),(36,'Цвет','красный'),(37,'Размеры (ШхВхТ)	','75.7 х 150.9 х 8.3 мм'),(38,'Количество SIM-карт','2SIM'),(39,'Операционная система','Android 10'),(40,'Дисплей','6.2\", Dynamic AMOLED'),(41,'Разрешение дисплея','3200×1440'),(42,'Число пикселей на дюйм','563PPI'),(43,'Защитное покрытие экрана','стекло Corning Gorilla Glass 6'),(44,'Частота обновления','120 Гц'),(45,'Цвет','серый'),(46,'Размеры (ШхВхТ)','69.1 х 151.7 х 7.9 мм'),(47,'Вес','163 г'),(48,'Страна производитель','Вьетнам'),(49,'Число пикселей на дюйм','511PPI'),(50,'Дисплей','6.9\", Dynamic AMOLED'),(51,'Размеры (ШхВхТ)','76 х 166.9 х 8.8 мм'),(52,'Вес','220 г'),(53,'Операционная система','	Android 9.0'),(54,'Дисплей','6.47\", AMOLED'),(55,'Разрешение дисплея','2340×1080'),(56,'Число пикселей на дюйм','398PPI'),(57,'Защитное покрытие экрана','стекло Corning Gorilla Glass 5'),(58,'Размеры (ШхВхТ)','74.2 х 157.8 х 9.67 мм'),(59,'Вес','208 г'),(60,'Цвет','белый'),(61,'Цвет','синий');
/*!40000 ALTER TABLE `characteristics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name_delivery` varchar(100) NOT NULL,
  `lastname_delivery` varchar(100) NOT NULL,
  `phone_delivery` varchar(11) NOT NULL,
  `last_phone_delivery` varchar(11) NOT NULL DEFAULT '',
  `city_delivery` varchar(50) NOT NULL,
  `street_delivery` varchar(120) NOT NULL,
  `house_delivery` int unsigned NOT NULL,
  `housing_delivery` varchar(3) NOT NULL DEFAULT '',
  `structure_delivery` varchar(3) NOT NULL DEFAULT '',
  `flat_delivery` varchar(3) NOT NULL DEFAULT '',
  `porch_delivery` varchar(3) NOT NULL DEFAULT '',
  `floor_delivery` varchar(3) NOT NULL DEFAULT '',
  `delivery_type_id` int unsigned NOT NULL,
  `date_delivery` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deliveries_delivery_type_id_fk` (`delivery_type_id`),
  KEY `deliveries_name_lastname_phone_city_street_house_idx` (`name_delivery`,`lastname_delivery`,`phone_delivery`,`city_delivery`,`street_delivery`,`house_delivery`),
  CONSTRAINT `deliveries_delivery_type_id_fk` FOREIGN KEY (`delivery_type_id`) REFERENCES `delivery_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (1,'Александр','Иванов','89091236545','89091236546','Пермь','Стахановская',55,'','','','4','1',1,'2020-05-11','11:00:00'),(2,'Виктория','Смик','89021216576','','Анапа','Мира',84,'','','','2','1',2,'2020-05-12','15:00:00');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_types`
--

DROP TABLE IF EXISTS `delivery_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_types`
--

LOCK TABLES `delivery_types` WRITE;
/*!40000 ALTER TABLE `delivery_types` DISABLE KEYS */;
INSERT INTO `delivery_types` VALUES (1,'Стандартная доставка'),(2,'Доставка курьером'),(3,'Доставка DPD');
/*!40000 ALTER TABLE `delivery_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subcategory_id` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manufacturers_subcategory_id_fk` (`subcategory_id`),
  KEY `manufacturers_name_idx` (`name`),
  CONSTRAINT `manufacturers_subcategory_id_fk` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,8,'ALCATEL'),(2,8,'APPLE'),(3,8,'ARK'),(4,8,'BQ'),(5,8,'CLEVERCEL'),(6,8,'DIGMA'),(7,8,'FLY'),(8,8,'HAIER'),(9,8,'HONOR'),(10,8,'HTC'),(11,8,'HUAWEI'),(12,8,'LEECO'),(13,8,'LENOVO'),(14,8,'MEIZU'),(15,8,'MICROMAX'),(16,8,'MOTOROLA'),(17,8,'NOKIA'),(18,8,'NUBIA'),(19,8,'OPPO'),(20,8,'PHILIPS'),(21,8,'PRESTIGIO'),(22,8,'REALME'),(23,8,'SAMSUNG'),(24,8,'TCL'),(25,8,'VERTEX'),(26,8,'VIVO'),(27,8,'XIAOMI'),(28,8,'ZTE'),(29,9,'APPLE'),(30,9,'ARIAN'),(31,9,'BQ'),(32,9,'DELL'),(33,9,'DIGMA'),(34,9,'HUAWEI'),(35,9,'IRBIS'),(36,9,'LENOVO'),(37,9,'PRESTIGIO'),(38,9,'SAMSUNG'),(39,9,'TURBO'),(40,9,'XIAOMI');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int unsigned NOT NULL,
  `profile_account_id` int unsigned NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `size` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `media_media_type_id_fk` (`media_type_id`),
  KEY `media_profile_account_id_fk` (`profile_account_id`),
  KEY `media_size_idx` (`size`),
  CONSTRAINT `media_media_type_id_fk` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `media_profile_account_id_fk` FOREIGN KEY (`profile_account_id`) REFERENCES `profiles` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,1,'https://citilink.ru/images/file_76.jpg',2764426,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(2,1,1,'https://citilink.ru/images/file_761.jpg',203193706,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(3,1,1,'https://citilink.ru/images/file_726.jpg',486892,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(4,1,1,'https://citilink.ru/images/file_376.jpg',9933079,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(5,1,1,'https://citilink.ru/images/file_476.jpg',1272125,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(6,1,1,'https://citilink.ru/images/file_756.jpg',6461384,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(7,1,1,'https://citilink.ru/images/file_766.jpg',8390550,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(8,1,1,'https://citilink.ru/images/file_776.jpg',2468603,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(9,1,1,'https://citilink.ru/images/file_786.jpg',272519,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(10,1,1,'https://citilink.ru/images/file_716.jpg',39508962,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(11,1,1,'https://citilink.ru/images/file_726.jpg',7071364,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(12,1,1,'https://citilink.ru/images/file_761.jpg',6051869,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(13,1,1,'https://citilink.ru/images/file_176.jpg',8022819,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(14,1,1,'https://citilink.ru/images/file_276.jpg',2764426,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(15,1,1,'https://citilink.ru/images/file_376.jpg',158642831,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(16,1,1,'https://citilink.ru/images/file_476.jpg',2764426,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(17,1,2,'https://citilink.ru/images/file_576.jpg',3225176,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(18,1,3,'https://citilink.ru/images/file_676.jpg',3764426,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(19,1,4,'https://citilink.ru/images/file_111.jpg',2787426,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(20,1,5,'https://citilink.ru/images/file_112.jpg',2765526,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(21,1,6,'https://citilink.ru/images/file_124.jpg',2764526,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(22,1,7,'https://citilink.ru/images/file_125.jpg',2768826,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(23,1,8,'https://citilink.ru/images/file_126.jpg',2764426,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(24,1,9,'https://citilink.ru/images/file_131.jpg',170903,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(25,1,10,'https://citilink.ru/images/file_132.jpg',74795,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(26,1,11,'https://citilink.ru/images/file_161.jpg',2764426,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(27,1,1,'https://citilink.ru/images/file_178.jpg',2764411,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(28,1,1,'https://citilink.ru/images/file_129.jpg',276442,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(29,1,1,'https://citilink.ru/images/file_881.jpg',27614426,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(30,2,1,'https://citilink.ru/video/file_761.mp4',104813198,'2020-05-12 15:58:15','2020-05-12 15:58:15'),(31,2,1,'https://citilink.ru/video/file_901.mp4',214813198,'2020-05-12 15:58:15','2020-05-12 15:58:15');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_products`
--

DROP TABLE IF EXISTS `media_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_products` (
  `media_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  KEY `media_products_media_id_fk` (`media_id`),
  KEY `media_products_product_id_fk` (`product_id`),
  CONSTRAINT `media_products_media_id_fk` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `media_products_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_products`
--

LOCK TABLES `media_products` WRITE;
/*!40000 ALTER TABLE `media_products` DISABLE KEYS */;
INSERT INTO `media_products` VALUES (3,1),(4,1),(5,2),(6,2),(7,3),(8,3),(9,3),(10,4),(11,5),(12,5),(13,6),(14,6),(15,7),(16,7),(17,8),(19,9),(20,10),(21,10),(22,11),(23,12),(24,12),(25,12),(26,12),(27,13),(28,14),(29,15),(30,16),(31,17);
/*!40000 ALTER TABLE `media_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'image'),(2,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `value` int unsigned NOT NULL DEFAULT '1',
  `profile_account_id` int unsigned NOT NULL,
  `pickup_id` int unsigned DEFAULT NULL,
  `delivery_id` int unsigned DEFAULT NULL,
  `payment_method_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_product_id_fk` (`product_id`),
  KEY `orders_profile_account_id_fk` (`profile_account_id`),
  KEY `orders_pickup_id_fk` (`pickup_id`),
  KEY `orders_delivery_id_fk` (`delivery_id`),
  KEY `orders_payment_method_id_fk` (`payment_method_id`),
  KEY `orders_created_at_updated_at_idx` (`created_at`,`updated_at`),
  CONSTRAINT `orders_delivery_id_fk` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`id`),
  CONSTRAINT `orders_payment_method_id_fk` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  CONSTRAINT `orders_pickup_id_fk` FOREIGN KEY (`pickup_id`) REFERENCES `pickup` (`id`),
  CONSTRAINT `orders_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `orders_profile_account_id_fk` FOREIGN KEY (`profile_account_id`) REFERENCES `profiles` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,15,2,1,NULL,1,1,'2020-05-12 14:36:17','2020-05-12 14:36:17'),(2,7,1,3,NULL,2,2,'2020-05-12 14:36:17','2020-05-12 14:36:17'),(3,17,1,3,NULL,2,2,'2020-05-12 14:36:17','2020-05-12 14:36:17'),(4,27,1,8,1,NULL,2,'2020-05-12 14:36:17','2020-05-12 14:36:17'),(5,30,1,8,1,NULL,2,'2020-05-12 14:36:17','2020-05-12 14:36:17'),(6,22,4,11,2,NULL,3,'2020-05-12 14:36:17','2020-05-12 14:36:17');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overviews`
--

DROP TABLE IF EXISTS `overviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overviews` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `profile_account_id` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `assessment` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `overviews_product_id_fk` (`product_id`),
  KEY `overviews_profile_account_id_fk` (`profile_account_id`),
  CONSTRAINT `overviews_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `overviews_profile_account_id_fk` FOREIGN KEY (`profile_account_id`) REFERENCES `profiles` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overviews`
--

LOCK TABLES `overviews` WRITE;
/*!40000 ALTER TABLE `overviews` DISABLE KEYS */;
INSERT INTO `overviews` VALUES (1,15,1,'Лучший смартфон','Купил данный телефон, APPLE всегда на высоте, недостатков нет.',5),(2,7,3,'Не покупайте это','Приобрела SAMSUNG Galaxy A10, дешевый пластик, тормозит, лучше не покупайте его',1);
/*!40000 ALTER TABLE `overviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overviews_media`
--

DROP TABLE IF EXISTS `overviews_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overviews_media` (
  `overview_id` int unsigned NOT NULL,
  `media_id` int unsigned NOT NULL,
  KEY `overviews_media_overview_id_fk` (`overview_id`),
  KEY `overviews_media_media_id_fk` (`media_id`),
  CONSTRAINT `overviews_media_media_id_fk` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `overviews_media_overview_id_fk` FOREIGN KEY (`overview_id`) REFERENCES `overviews` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overviews_media`
--

LOCK TABLES `overviews_media` WRITE;
/*!40000 ALTER TABLE `overviews_media` DISABLE KEYS */;
INSERT INTO `overviews_media` VALUES (1,1),(1,2),(2,18);
/*!40000 ALTER TABLE `overviews_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pay_method` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'Банковской картой (онлайн)'),(2,'Наличными или банковской картой при получении'),(3,'Покупка в кредит'),(4,'Яндекс.Деньги'),(5,'Терминалы и кассы'),(6,'WebMoney (комиссия +2.5%)'),(7,'Оплата от юридического лица'),(8,'Оплата через Сбербанк Бизнес Онлайн');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickup`
--

DROP TABLE IF EXISTS `pickup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickup` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `shop_delivery_point_id` int unsigned NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `name_will_pickup` varchar(100) NOT NULL,
  `lastname_will_pickup` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `last_phone` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pickup_shop_delivery_point_id_fk` (`shop_delivery_point_id`),
  KEY `pickup_name_will_pickup_lastname_will_pickup_phone_idx` (`name_will_pickup`,`lastname_will_pickup`,`phone`),
  CONSTRAINT `pickup_shop_delivery_point_id_fk` FOREIGN KEY (`shop_delivery_point_id`) REFERENCES `shops_delivery_points` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickup`
--

LOCK TABLES `pickup` WRITE;
/*!40000 ALTER TABLE `pickup` DISABLE KEYS */;
INSERT INTO `pickup` VALUES (1,1,'15 мая 2020 г. с 15-00 до 18-00','Зоя','Пальчик','89096981222',''),(2,3,'12 мая 2020 г. с 12-00 до 20-00','Миша','Валуев','89926890011','89926890055');
/*!40000 ALTER TABLE `pickup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `subcategory_id` int unsigned NOT NULL,
  `manufacturer_id` int unsigned NOT NULL,
  `product_type_id` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `products_category_id_fk` (`category_id`),
  KEY `products_subcategory_id_fk` (`subcategory_id`),
  KEY `products_manufacturer_id_fk` (`manufacturer_id`),
  KEY `products_product_type_id_fk` (`product_type_id`),
  KEY `products_name_price_idx` (`name`,`price`),
  CONSTRAINT `products_category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_manufacturer_id_fk` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`),
  CONSTRAINT `products_product_type_id_fk` FOREIGN KEY (`product_type_id`) REFERENCES `products_types` (`id`),
  CONSTRAINT `products_subcategory_id_fk` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,2,8,2,46,'Смартфон APPLE iPhone XR 64Gb, MRY42RU/A, черный','ОС iPhone iOS 13, экран: 6.1\", IPS, 1792×828, процессор: Apple A12 Bionic, GPS, ГЛОНАСС, с защитой от пыли и влаги, время работы в режиме разговора, до: 25ч, встроенная память: 64Гб',46545.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(2,2,8,2,46,'Смартфон APPLE iPhone 11 64Gb, MWLV2RU/A, красный','ОС iPhone iOS 13, экран: 6.1\", IPS, 1792×828, процессор: Apple A13 Bionic, GPS, ГЛОНАСС, с защитой от пыли и влаги, встроенная память: 64Гб',56745.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(3,2,8,23,46,'Смартфон SAMSUNG Galaxy S20 8/128Gb, SM-G980F, серый','ОС Android 10, экран: 6.2\", Dynamic AMOLED, 3200×1440, процессор: Exynos 990, 8-ми ядерный, GPS, ГЛОНАСС, с защитой от пыли и влаги, оперативная память: 8Гб, встроенная память: 128Гб',69990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(4,2,8,23,46,'Смартфон SAMSUNG Galaxy S20 Ultra 12/128Gb, SM-G988F, черный','ОС Android 10, экран: 6.9\", Dynamic AMOLED, 3200×1440, процессор: Exynos 990, 8-ми ядерный, GPS, ГЛОНАСС, с защитой от пыли и влаги, оперативная память: 12Гб, встроенная память: 128Гб',99990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(5,2,8,27,46,'Смартфон XIAOMI Mi Note 10 Pro 256Gb, черный','ОС Android 9.0, экран: 6.47\", AMOLED, 2340×1080, процессор: Qualcomm Snapdragon 730G, 2200МГц, 8-ми ядерный, GPS, ГЛОНАСС, чехол в комплекте, оперативная память: 8Гб, встроенная память: 256Гб',44160.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(6,2,8,15,46,'Смартфон MICROMAX Q306, черный','ОСAndroid8.1, экран:4, TN, 800×480, процессор: MediaTekMT6580M, 1300МГц, 4-х ядерный, FM-радио, GPS, время работы в режиме разговора, до:6ч, в режиме ожидания, до:150ч, оперативная память:512Мб, встроенная память: 4Гб',1297.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(7,2,8,23,46,'Смартфон SAMSUNG Galaxy A10 32Gb, SM-A105F, черный','ОС Android 9, экран: 6.2\"\", TFT, 1520×720, процессор: Exynos 7884B, 1600МГц, 8-ми ядерный, GPS, ГЛОНАСС, оперативная память: 2Гб, встроенная память: 32Гб',7990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(8,2,8,9,46,'Смартфон HONOR 10i 128Gb, синий','ОС Android 9, экран: 6.21\"\", 2340×1080, процессор: Kirin 710F, 2200МГц, 8-ми ядерный, FM-радио, GPS, ГЛОНАСС, чехол в комплекте, оперативная память: 4Гб, встроенная память: 128Гб',12990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(9,2,8,9,46,'Смартфон HONOR 8A 32Gb, черный','ОС Android 9.0, экран: 6.09\"\", TFT, 1560×720, процессор: MediaTek MT6765, 2300МГц, 8-ми ядерный, GPS, ГЛОНАСС, время работы в режиме разговора, до: 39ч, в режиме ожидания, до: 640ч, оперативная память: 2Гб, встроенная память: 32Гб',7990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(10,2,8,9,46,'Смартфон HONOR 10i 128Gb, красный','ОС Android 9, экран: 6.21\"\", 2340×1080, процессор: Kirin 710F, 2200МГц, 8-ми ядерный, FM-радио, GPS, ГЛОНАСС, чехол в комплекте, оперативная память: 4Гб, встроенная память: 128Гб',12990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(11,2,8,27,46,'Смартфон XIAOMI Redmi Note 8 Pro 6/64Gb, серый/минеральный','ОС Android 9.0, экран: 6.53\"\", IPS, 2340×1080, процессор: MediaTek Helio G90T, 2000МГц, 8-ми ядерный, FM-радио, GPS, ГЛОНАСС, время работы в режиме разговора, до: 24ч, в режиме ожидания, до: 260ч, чехол в комплекте, оперативная память: 6Гб, встроенная...',17990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(12,2,8,2,46,'Смартфон APPLE iPhone 7 32Gb, MN8X2RU/A, черный','ОС iPhone iOS 12, экран: 4.7\"\", Retina, 1334×750, процессор: Apple A10 Fusion, + Встроенный сопроцессор движения M10, ГЛОНАСС, с защитой от пыли и влаги, время работы в режиме разговора, до: 14ч, в режиме ожидания, до: 240ч, встроенная память:...',25990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(13,2,8,12,46,'Смартфон LEECO Le 2 64Gb, X527, серый','ОС Android 6.0, экран: 5.5\"\", IPS, 1920×1080, процессор: Qualcomm Snapdragon 652, 1800МГц, 8-ми ядерный, FM-радио, GPS, ГЛОНАСС, оперативная память: 3Гб, встроенная память: 64Гб',6290.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(14,2,8,28,46,'Смартфон ZTE Blade V9 Vita 16Gb','ОС Android 8.1, экран: 5.45\"\", IPS, 1440×720, процессор: Qualcomm Snapdragon 435, 1400МГц, 8-ми ядерный, FM-радио, GPS, ГЛОНАСС, время работы в режиме разговора, до: 8ч, в режиме ожидания, до: 150ч, оперативная память: 2Гб, встроенная память: 16Гб',5490.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(15,2,8,2,46,'Смартфон APPLE iPhone XR 64Gb, MRY42RU/A, черный','ОС iPhone iOS 13, экран: 6.1\"\", IPS, 1792×828, процессор: Apple A12 Bionic, , GPS, ГЛОНАСС, с защитой от пыли и влаги, время работы в режиме разговора, до: 25ч, встроенная память: 64Гб',46545.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(16,2,8,27,46,'Смартфон XIAOMI Redmi 7A 16Gb, черный','ОС Android 9.0, экран: 5.45\"\", IPS, 1440×720, процессор: Qualcomm Snapdragon 439, 2000МГц, 8-ми ядерный, GPS, ГЛОНАСС, оперативная память: 2Гб, встроенная память: 16Гб',5990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(17,2,8,2,46,'Смартфон APPLE iPhone 11 64Gb, MWLT2RU/A, черный','ОС iPhone iOS 13, экран: 6.1\"\", IPS, 1792×828, процессор: Apple A13 Bionic, , GPS, ГЛОНАСС, с защитой от пыли и влаги, встроенная память: 64Гб',56745.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(18,2,8,9,46,'Смартфон HONOR 10i 128Gb, черный','ОС Android 9, экран: 6.21\"\", 2340×1080, процессор: Kirin 710F, 2200МГц, 8-ми ядерный, FM-радио, GPS, ГЛОНАСС, чехол в комплекте, оперативная память: 4Гб, встроенная память: 128Гб',12990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(19,2,8,27,46,'Смартфон XIAOMI Redmi Note 8 Pro 6/64Gb, зеленый/лесной','ОС Android 9.0, экран: 6.53\"\", IPS, 2340×1080, процессор: MediaTek Helio G90T, 2000МГц, 8-ми ядерный, FM-радио, GPS, ГЛОНАСС, время работы в режиме разговора, до: 24ч, в режиме ожидания, до: 260ч, чехол в комплекте, оперативная память: 6Гб, встроенная...',17990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(20,2,8,22,46,'Смартфон REALME XT 128Gb, RMX1921, синий','ОС Android 9.0, экран: 6.4\"\", Super AMOLED, 2340×1080, процессор: Qualcomm Snapdragon 712, 2300МГц, 8-ми ядерный, FM-радио, GPS, ГЛОНАСС, время работы в режиме разговора, до: 15ч, в режиме ожидания, до: 669ч, чехол в комплекте, оперативная память:...',18490.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(21,3,9,33,47,'Планшет DIGMA Plane 7700T 4G, 1GB, 8GB, 4G черный','сенсорный экран 7\" (17.78 см), разрешение: 1280 x 800, Multitouch, поддержка 3G, поддержка 4G, Wi-Fi, Bluetooth, GPS, фронтальная камера: 0.3Мп, FM-тюнер, встроенная память: 8Гб, операционная система: Android 7.1',3490.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(22,3,9,34,47,'Планшет HUAWEI MediaPad M5 Lite 8, 3Гб, 32GB, 4G серый','(Jordan2-L09B), сенсорный экран 8\" (20.32 см), разрешение: 1920 x 1200, Multitouch, поддержка 3G, поддержка 4G, Wi-Fi, Bluetooth, GPS, A-GPS, ГЛОНАСС, основная камера: 13Мп, фронтальная камера: 8Мп, fingerprint, встроенная память: 32Гб, операционная...',15720.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(23,3,9,33,47,'Планшет DIGMA CITI 8592 3G, 2GB, 32GB черный','сенсорный экран 8\" (20.32 см), разрешение: 1280 x 800, Multitouch, поддержка 3G, Wi-Fi, Bluetooth, GPS, основная камера: 2Мп, фронтальная камера: 0.3Мп, FM-тюнер, встроенная память: 32Гб, операционная система: Android 9.0',5290.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(24,3,9,29,47,'Планшет APPLE iPad 2019 32Gb Wi-Fi MW742RU/A, 2GB, 32GB темно-серый','сенсорный экран 10.2\" (25.9 см), разрешение: 2160 x 1620, Multitouch, Wi-Fi, Bluetooth, основная камера: 8Мп, фронтальная камера: 1.2Мп, fingerprint, встроенная память: 32Гб, операционная система: iOS',27990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(25,3,9,34,47,'Планшет HUAWEI MediaPad T3 8.0, 2GB, 16GB, 4G серый','(Kobe-L09A), сенсорный экран 8\" (20.32 см), разрешение: 1280 x 800, Multitouch, поддержка 3G, поддержка 4G, Wi-Fi, Bluetooth, GPS, ГЛОНАСС, основная камера: 5Мп, фронтальная камера: 2Мп, встроенная память: 16Гб, операционная система: Android...',9990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(26,3,9,35,47,'Планшет IRBIS TZ721e, 1GB, 16GB черный','сенсорный экран 7\" (17.78 см), разрешение: 1024 x 600, Multitouch, поддержка 3G, Wi-Fi, Bluetooth, GPRS, EDGE, GPS, A-GPS, фронтальная камера: 0.3Мп, FM-тюнер, встроенная память: 16Гб, операционная система: Android 7.0',2530.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(27,3,9,34,47,'Планшет HUAWEI MediaPad T5 10, 3Гб, 32GB, 4G черный','(AGS2-L09), сенсорный экран 10.1\" (25.7 см), разрешение: 1920 x 1200, Multitouch, поддержка 3G, поддержка 4G, Wi-Fi, Bluetooth, GPRS, EDGE, GPS, A-GPS, ГЛОНАСС, основная камера: 5Мп, фронтальная камера: 2Мп, встроенная память: 32Гб, операционная...',16990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(28,3,9,35,47,'Планшет IRBIS TW51, 1GB, 32GB черный','сенсорный экран 10.1\" (25.7 см), разрешение: 1280 x 800, Multitouch, Wi-Fi, Bluetooth, основная камера: 2Мп, фронтальная камера: 0.3Мп, док-станция, встроенная память: 32Гб, операционная система: Windows 10',7990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(29,3,9,37,47,'Планшет PRESTIGIO Muze 3831 4G, 1GB, 8GB, 4G черный','сенсорный экран 10.1\" (25.7 см), разрешение: 1280 x 800, Multitouch, поддержка 3G, поддержка 4G, Wi-Fi, Bluetooth, основная камера: 2Мп, фронтальная камера: 0.3Мп, FM-тюнер, встроенная память: 8Гб, операционная система: Android 8.1',5990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33'),(30,3,9,37,47,'Планшет PRESTIGIO Wize 10 3G, 1GB, 8GB черный','сенсорный экран 10.1\" (25.7 см), разрешение: 1280 x 800, Multitouch, поддержка 3G, Wi-Fi, Bluetooth, GPS, основная камера: 2Мп, фронтальная камера: 0.3Мп, встроенная память: 8Гб, операционная система: Android 8.1',4990.00,'2020-05-11 22:17:33','2020-05-11 22:17:33');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_attributes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `characteristic_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_characteristic_id_fk` (`characteristic_id`),
  KEY `products_attributes_product_id_fk` (`product_id`),
  CONSTRAINT `products_attributes_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `products_characteristic_id_fk` FOREIGN KEY (`characteristic_id`) REFERENCES `characteristics` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_attributes`
--

LOCK TABLES `products_attributes` WRITE;
/*!40000 ALTER TABLE `products_attributes` DISABLE KEYS */;
INSERT INTO `products_attributes` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,2,1),(37,2,2),(38,2,3),(39,2,4),(40,2,5),(41,2,6),(42,2,7),(43,2,8),(44,2,9),(45,2,10),(46,2,11),(47,2,36),(48,2,37),(49,3,1),(50,3,2),(51,3,3),(52,3,4),(53,3,5),(54,3,6),(55,3,7),(56,3,8),(57,3,9);
/*!40000 ALTER TABLE `products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `products_categories_subcategories`
--

DROP TABLE IF EXISTS `products_categories_subcategories`;
/*!50001 DROP VIEW IF EXISTS `products_categories_subcategories`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `products_categories_subcategories` AS SELECT 
 1 AS `product_name`,
 1 AS `subcat_name`,
 1 AS `cat_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products_types`
--

DROP TABLE IF EXISTS `products_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_types_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_types`
--

LOCK TABLES `products_types` WRITE;
/*!40000 ALTER TABLE `products_types` DISABLE KEYS */;
INSERT INTO `products_types` VALUES (68,'microSD'),(69,'microSDHC'),(70,'microSDXC'),(71,'SDHC'),(72,'Автомобильное з/у'),(65,'Автомобильный держатель'),(58,'Адаптер'),(59,'Адаптер OTG'),(7,'Антисептик'),(34,'Батарейка литиевая'),(35,'Батарейка солевая'),(36,'Батарейка щелочная'),(73,'Беспроводное з/у'),(9,'Бумага туалетная'),(45,'Внешний аккумулятор'),(84,'Внешний мод батарея'),(1,'Вода'),(78,'Гарнитура bluetooth'),(42,'Генератор бензиновый'),(43,'Генератор бензиновый/газовый'),(86,'Держатель'),(56,'Зарядная док-станция'),(53,'Зарядное устройство'),(10,'Зубная паста'),(11,'Зубная щетка'),(24,'Ингалятор компрессорный'),(25,'Ингалятор паровой'),(26,'Ингалятор ультразвуковой'),(27,'Ингалятор электронно-сетчатый (меш)'),(60,'Кабель'),(89,'Кабель Lightning'),(90,'Кабель micro USB'),(88,'Кабель USB Type-C'),(87,'Карта SIM'),(74,'Комплект з/у'),(40,'Контейнер'),(82,'Контроллер игровой'),(2,'Крупа'),(33,'Лампа'),(3,'Макароны'),(4,'Масло'),(12,'Мыло'),(75,'Настольное з/у'),(80,'Наушники'),(79,'Наушники с микрофоном'),(49,'Очки виртуальной реальности'),(13,'Пеленки'),(61,'Переходник'),(47,'Планшет'),(14,'Платки носовые'),(57,'Пленка защитная'),(15,'Подгузники'),(64,'Подставка'),(16,'Порошок стиральный'),(85,'Портативная колонка'),(17,'Прокладки'),(54,'Ремешок'),(83,'Ресивер'),(18,'Салфетки бумажные'),(19,'Салфетки влажные'),(81,'Селфи-палка'),(76,'Сетевое з/у'),(37,'Сетевой разветвитель'),(38,'Сетевой удлинитель'),(39,'Сетевой фильтр'),(52,'Смарт-браслет'),(50,'Смарт-часы'),(46,'Смартфон'),(5,'Соль'),(8,'Средства защиты'),(77,'Стедикам'),(55,'Стекло защитное'),(23,'Стетоскоп'),(67,'Стилус'),(66,'Стилус-ручка'),(62,'Сумка'),(44,'Сушилка для овощей и фруктов'),(32,'Тепловизор'),(22,'Термометр'),(21,'Тонометр'),(48,'Умная колонка'),(93,'Усилитель для наушников'),(51,'Фитнес-трекер'),(6,'Чай'),(41,'Чайник электрический'),(63,'Чехол'),(20,'Шампунь'),(91,'Штатив-монопод'),(92,'Штатив-трипод'),(28,'Электрическая грелка'),(29,'Электрическая простыня'),(30,'Электрический плед'),(31,'Электрическое одеяло');
/*!40000 ALTER TABLE `products_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `account_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `nickname` varchar(150) NOT NULL DEFAULT '',
  `gender` varchar(7) NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'https://static.citilink.ru/media/global/noavatar.jpg?1588273340',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_id`),
  CONSTRAINT `profiles_account_id_fk` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Александр','Alex666','Мужской','1975-05-10','https://static.citilink.ru/media/global/noavatar.jpg?1588273340','2019-03-18 03:36:22','2020-05-10 21:32:24'),(2,'Боб','','Мужской','1978-11-11','https://static.citilink.ru/media/global/noavatar.jpg?1588273340','2019-03-18 03:36:22','2020-05-10 21:32:24'),(3,'Виктория','Tory','Женский','1992-08-16','https://static.citilink.ru/media/global/noavatar.jpg?1588273340','2019-03-18 03:36:22','2020-05-10 21:32:24'),(4,'Герда',' ','Женский','1991-02-12','https://static.citilink.ru/media/global/noavatar.jpg?1588273340','2019-03-18 03:36:22','2020-05-10 21:32:24'),(5,'Дмитрий','Dim0n','Мужской','1994-05-10','https://static.citilink.ru/media/global/noavatar.jpg?1588273340','2019-03-18 03:36:22','2020-05-10 21:32:24'),(6,'Елена',' ','Мужской','1975-05-25','https://static.citilink.ru/media/global/noavatar.jpg?1588273340','2019-03-18 03:36:22','2020-05-10 21:32:24'),(7,'Женя',' ','Женский','1984-10-08','https://static.citilink.ru/media/global/noavatar.jpg?1588273340','2019-03-18 03:36:22','2020-05-10 21:32:24'),(8,'Зоя',' ','Женский','1964-02-01','https://static.citilink.ru/media/global/noavatar.jpg?1588273340','2019-03-18 03:36:22','2020-05-10 21:32:24'),(9,'Константин','Kost','Мужской','1961-06-10','https://static.citilink.ru/media/global/noavatar.jpg?1588273340','2019-03-18 03:36:22','2020-05-10 21:32:24'),(10,'Лора',' ','Женский','1989-05-10','https://static.citilink.ru/media/global/noavatar.jpg?1588273340','2019-03-18 03:36:22','2020-05-10 21:32:24'),(11,'Миша','Zetsu','Мужской','2000-01-25','https://static.citilink.ru/media/global/noavatar.jpg?1588273340','2019-03-18 03:36:22','2020-05-10 21:32:24');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `profiles_orders_pay_methods`
--

DROP TABLE IF EXISTS `profiles_orders_pay_methods`;
/*!50001 DROP VIEW IF EXISTS `profiles_orders_pay_methods`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `profiles_orders_pay_methods` AS SELECT 
 1 AS `username`,
 1 AS `user_birthday`,
 1 AS `pay_method`,
 1 AS `product_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `profile_account_id` int unsigned NOT NULL,
  `assessment` int unsigned NOT NULL,
  `advantages` text NOT NULL,
  `limitations` text NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `reviews_product_id_fk` (`product_id`),
  KEY `reviews_profile_account_id_fk` (`profile_account_id`),
  CONSTRAINT `reviews_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `reviews_profile_account_id_fk` FOREIGN KEY (`profile_account_id`) REFERENCES `profiles` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,27,8,5,'HUAWEI MediaPad оказался лучшим решением, стильный дизайн, быстрый в работе','Нет','Советую к покупке'),(2,17,3,4,'Лучшая цена-качество','Плохо держит батарею на холоде','Кому нужен стильный и производительный телефон, выбирайте этот');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops_delivery_points`
--

DROP TABLE IF EXISTS `shops_delivery_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops_delivery_points` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops_delivery_points`
--

LOCK TABLES `shops_delivery_points` WRITE;
/*!40000 ALTER TABLE `shops_delivery_points` DISABLE KEYS */;
INSERT INTO `shops_delivery_points` VALUES (1,'г.Пермь, ул. Маршала Рыбалко, д.90'),(2,'г.Москва, ул. Пушкина, д.17'),(3,'г.Омск, ул. Мира, д.55');
/*!40000 ALTER TABLE `shops_delivery_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategories_category_id_fk` (`category_id`),
  KEY `subcategories_name_idx` (`name`),
  CONSTRAINT `subcategories_category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,1,'Продукты питания'),(2,1,'Антисептики'),(3,1,'Средства защиты'),(4,1,'Чистота и гигиена'),(5,1,'Медицинские приборы'),(6,1,'Товары для автономной жизни'),(7,1,'Уход за полостью рта'),(8,2,'Смартфоны'),(9,2,'Планшеты'),(10,2,'Мобильные телефоны'),(11,2,'Гаджеты'),(12,2,'Аксессуары для планшетов'),(13,2,'Аксессуары для смартфонов'),(14,2,'Электронные книги и аксессуары'),(15,2,'Bluetooth гарнитуры'),(16,2,'Наушники'),(17,2,'Зарядные устройства'),(18,2,'Усилители для наушников'),(19,2,'Аксессуары для наушников'),(20,3,'Ноутбуки'),(21,3,'Ноутбуки-трансформеры'),(22,3,'Ультрабуки'),(23,3,'Моноблоки'),(24,3,'Системные блоки'),(25,3,'Комплектующие для ПК'),(26,3,'Жесткие диски и SSD'),(27,3,'Мониторы'),(28,3,'Компьютеры'),(29,3,'Компьютеры Ситилинк'),(30,3,'Оргтехника'),(31,3,'Расходные материалы для оргтехники'),(32,3,'Манипуляторы и устройства ввода'),(33,3,'Носители информации'),(34,3,'Защита питания'),(35,3,'Сетевое оборудование'),(36,3,'Колонки для компьютера'),(37,3,'Веб-камеры'),(38,3,'Наушники с микрофоном'),(39,3,'Серверы и СХД'),(40,3,'Программное обеспечение'),(41,3,'Чистящие средства'),(42,3,'Аксессуары для ноутбуков и ПК'),(43,3,'Игровые аксессуары'),(44,4,'Телевизоры'),(45,4,'Техника Hi-Fi'),(46,4,'Спутниковое и цифровое ТВ'),(47,4,'Видеотехника'),(48,4,'Аудиотехника'),(49,4,'Проекторы и экраны'),(50,4,'LED панели'),(51,4,'Наушники'),(52,4,'Аксессуары для телевизоров'),(53,4,'Музыкальные инструменты'),(54,4,'Кронштейны'),(55,4,'Аудио-видео кабели'),(56,4,'Аксессуары для LFD-панелей'),(57,5,'Крупная бытовая техника'),(58,5,'Встраиваемая техника'),(59,5,'Вытяжки'),(60,5,'Кофемашины, кофеварки'),(61,5,'Мелкая бытовая техника'),(62,5,'Принадлежности для бытовой техники'),(63,5,'Посуда'),(64,5,'Техника для дома'),(65,5,'Швейное оборудование'),(66,5,'Кондиционеры'),(67,5,'Обогреватели'),(68,5,'Климатическая техника'),(69,5,'Водонагреватели'),(70,5,'Очистка воды'),(71,6,'Садовая техника'),(72,6,'Садовый инвентарь'),(73,6,'Электроинструмент'),(74,6,'Аккумуляторы и зарядные устройства'),(75,6,'Шлифовальные машины'),(76,6,'Пилы'),(77,6,'Измерительный инструмент'),(78,6,'Наборы инструментов'),(79,6,'Расходные материалы'),(80,6,'Силовая техника'),(81,6,'Пневматический инструмент'),(82,6,'Фонари'),(83,6,'Домкраты и аксессуары'),(84,6,'Станки'),(85,6,'Товары для дачи'),(86,6,'Отпугиватели и уничтожители'),(87,6,'Ручные инструменты'),(88,6,'Поливочное оборудование'),(89,6,'Снегоуборщики'),(90,7,'Фотоаппараты'),(91,7,'Объективы для фотоаппаратов'),(92,7,'Вспышки для фотоаппаратов'),(93,7,'Видеокамеры'),(94,7,'Экшн камеры'),(95,7,'Стедикамы'),(96,7,'Аксессуары для стедикамов'),(97,7,'Цифровые фоторамки'),(98,7,'Умный дом'),(99,7,'Системы безопасности'),(100,7,'Футляры и сумки'),(101,7,'Оптические приборы'),(102,7,'Бинокли'),(103,7,'Аксессуары'),(104,8,'Автокресла'),(105,8,'Навигаторы'),(106,8,'Автомагнитолы'),(107,8,'Автоакустика'),(108,8,'Телевизоры автомобильные'),(109,8,'Автомобильные мониторы'),(110,8,'Видеорегистраторы'),(111,8,'Видеорегистраторы с радар-детектором'),(112,8,'Радар-детекторы'),(113,8,'Устройства громкой связи'),(114,8,'Парктроники'),(115,8,'Автомобильные холодильники'),(116,8,'Автомобильные пылесосы'),(117,8,'Автосигнализации'),(118,8,'Камеры заднего вида'),(119,8,'Компрессоры и манометры'),(120,8,'Аксессуары для автомобиля'),(121,9,'Мебель'),(122,9,'Аксессуары для мебели и интерьера >'),(123,9,'Освещение'),(124,9,'Конференц-связь и call-центры'),(125,9,'Офисная техника'),(126,9,'АТС и модули'),(127,9,'Телефоны'),(128,9,'Офисная канцелярия'),(129,9,'Письменные принадлежности'),(130,9,'Изделия из бумаги для офиса '),(131,9,'Папки, файлы, системы архивации'),(132,9,'Кожгалантерея'),(133,9,'Сувениры и бизнес-подарки '),(134,9,'Демонстрационное оборудование'),(135,9,'Офисная эргономика'),(136,9,'Канцтовары для школы'),(137,9,'Ножи и аксессуары'),(138,10,'Товары для укладки и стрижки'),(139,10,'Товары для здоровья'),(140,10,'Товары для красоты'),(141,10,'Фены'),(142,10,'Средства личной гигиены'),(143,10,'Антисептики'),(144,10,'Средства защиты'),(145,10,'Продукты'),(146,10,'Бритвы и эпиляторы'),(147,10,'Зубные щетки и аксессуары'),(148,10,'Медицинское оборудование'),(149,11,'Спорт'),(150,11,'Хобби'),(151,11,'Рюкзаки, чемоданы, сумки'),(152,11,'Аксессуары для путешествий'),(153,11,'Товары для путешествий'),(154,11,'Аксессуары для спорта и отдыха'),(155,12,'Игровые ноутбуки'),(156,12,'Игровые смартфоны'),(157,12,'Игровые маршрутизаторы'),(158,12,'Игровые планшеты'),(159,12,'Игровые моноблоки'),(160,12,'Игровые компьютеры'),(161,12,'Игровые мониторы'),(162,12,'Игровые телевизоры'),(163,12,'Игровые аксессуары'),(164,12,'Игровые комплектующие'),(165,12,'Игровые консоли и аксессуары');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `products_categories_subcategories`
--

/*!50001 DROP VIEW IF EXISTS `products_categories_subcategories`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `products_categories_subcategories` AS select `p`.`name` AS `product_name`,`s`.`name` AS `subcat_name`,`c`.`name` AS `cat_name` from ((`products` `p` join `categories` `c` on((`p`.`category_id` = `c`.`id`))) join `subcategories` `s` on((`p`.`subcategory_id` = `s`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `profiles_orders_pay_methods`
--

/*!50001 DROP VIEW IF EXISTS `profiles_orders_pay_methods`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `profiles_orders_pay_methods` AS select `p`.`name` AS `username`,`p`.`birthday` AS `user_birthday`,`py`.`pay_method` AS `pay_method`,`pr`.`name` AS `product_name` from (((`profiles` `p` join `orders` `o` on((`p`.`account_id` = `o`.`profile_account_id`))) join `products` `pr` on((`o`.`product_id` = `pr`.`id`))) join `payment_methods` `py` on((`py`.`id` = `o`.`payment_method_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-13 14:22:58
