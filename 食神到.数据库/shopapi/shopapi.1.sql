-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: sampledb
-- ------------------------------------------------------
-- Server version	5.6.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) DEFAULT '' COMMENT 'APPID',
  `open_id` varchar(100) DEFAULT '' COMMENT '用户ID',
  `mobile` varchar(255) DEFAULT '' COMMENT '手机号',
  `money` decimal(12,2) DEFAULT NULL COMMENT '账户金额',
  `password` varchar(255) DEFAULT '' COMMENT '账户密码',
  `status` int(11) DEFAULT NULL COMMENT '状态 1.正常 0.锁定 2.等待开通支付',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  KEY `open_id` (`open_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'shopapi','e6ec45b01a744fd4b0079cbf8c99014d','13800000000',0.00,'',1,'','2016-09-22 08:54:27','2016-09-22 08:54:27'),(2,'shopapi','d2a37b2a259d486b825fef7df40b8660','18659330003',0.00,'',2,'','2016-09-23 00:44:30','2016-09-23 00:44:30'),(3,'shopapi','8644c5f03c4d479a95fafa17221f55d3','13811111111',0.00,'',1,'','2016-09-23 03:21:02','2016-09-23 03:21:02'),(4,'shopapi','1957aaa9a46e4e14abd717bf0de4f865','13911111111',0.00,'',1,'','2016-09-23 03:42:12','2016-09-23 03:42:12'),(5,'shopapi','8c6ba245b64a4bd282d1ddb52156372b','13641677914',0.00,'',2,'','2016-09-23 03:52:30','2016-09-23 03:52:30'),(6,'shopapi','1c5020c7e4204196be7f9b8ce245f0fa','13641677913',0.00,'',1,'','2016-09-23 05:31:09','2016-09-23 05:31:09'),(7,'shopapi','5438aa46d2c04c0c8195c02e2de702e2','13833333333',0.00,'',1,'','2016-09-23 08:37:16','2016-09-23 08:37:16'),(8,'shopapi','8a4a1879c2ce401f98fb7da0b703aa1d','15921615913',0.00,'',1,'','2016-09-26 02:21:34','2016-09-26 02:21:34'),(9,'shopapi','2bd209e36084479cbbb7258f12fce02f','15280207045',0.00,'',1,'','2016-09-26 05:29:10','2016-09-26 05:29:10');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_recharge`
--

DROP TABLE IF EXISTS `account_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_recharge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `no` varchar(100) NOT NULL COMMENT '唯一编码',
  `app_id` varchar(255) DEFAULT '' COMMENT 'appID',
  `open_id` varchar(100) NOT NULL COMMENT '用户ID',
  `amount` decimal(12,2) DEFAULT NULL COMMENT '充值金额',
  `status` int(11) DEFAULT NULL COMMENT '1.完成 0.等待完成',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加数据',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_recharge`
--

LOCK TABLES `account_recharge` WRITE;
/*!40000 ALTER TABLE `account_recharge` DISABLE KEYS */;
INSERT INTO `account_recharge` VALUES (1,'0feb8790be0648b6abc0ab32e9a2da21','shopapi','',0.01,0,'','','2016-09-23 00:41:07','2016-09-23 00:41:07'),(2,'cada6740978d4ab9b6f06851516afdaf','shopapi','',0.01,0,'','','2016-09-23 03:54:37','2016-09-23 03:54:37'),(3,'b8c48cce0a9b49efbf3604fd9581365b','shopapi','',0.01,0,'','','2016-09-23 03:54:53','2016-09-23 03:54:53'),(4,'29891f56ae864f43b502ddea1d9216d1','shopapi','',0.01,0,'','','2016-09-23 03:55:00','2016-09-23 03:55:00'),(5,'3d2923f7f6a14e6eb00e89bd486f1f6e','shopapi','',0.01,0,'','','2016-09-26 05:43:17','2016-09-26 05:43:17'),(6,'f84abe45573f446fb51b661c4e60ad55','shopapi','',0.01,0,'','','2016-09-26 05:43:19','2016-09-26 05:43:19'),(7,'9edac2f857724446919c08f59e4b8558','shopapi','',0.01,0,'','','2016-09-26 05:43:28','2016-09-26 05:43:28'),(8,'ff7cbbbbbc6642f1a047da61e5871aae','shopapi','',0.01,0,'','','2016-09-26 05:43:30','2016-09-26 05:43:30'),(9,'ecf6c01514064e7499fa8c8efa76070b','shopapi','',0.01,0,'','','2016-09-26 05:43:33','2016-09-26 05:43:33'),(10,'b9b98ce81aab4564823b024c2e634bde','shopapi','',0.01,0,'','','2016-09-26 05:43:34','2016-09-26 05:43:34'),(11,'d6c7a0c59abf4449afd38a5df9a82f1f','shopapi','',0.01,0,'','','2016-09-26 06:07:03','2016-09-26 06:07:03'),(12,'df6977cfe7ad4c2ca8e017c2ae9f5fb6','shopapi','',0.01,0,'','','2016-09-26 06:07:05','2016-09-26 06:07:05'),(13,'53f40ff6e2c84e76ade82033025c7101','shopapi','',0.01,0,'','','2016-09-26 06:07:41','2016-09-26 06:07:41'),(14,'8a895415d5604766b74ebeb43259c1b3','shopapi','',0.01,0,'','','2016-09-26 06:08:18','2016-09-26 06:08:18'),(15,'11469f1f93024e51accf173efe2f28ca','shopapi','',0.01,0,'','','2016-09-26 06:10:19','2016-09-26 06:10:19'),(16,'fa8fe1b39a5c4f31852fb8515c91ec0d','shopapi','',0.01,0,'','','2016-09-26 06:10:21','2016-09-26 06:10:21'),(17,'b7b3afbdcb864e0b8dc1c75547fed5b2','shopapi','',0.01,0,'','','2016-09-26 06:10:33','2016-09-26 06:10:33');
/*!40000 ALTER TABLE `account_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) DEFAULT '' COMMENT 'APPID',
  `open_id` varchar(100) DEFAULT '' COMMENT '用户ID',
  `longitude` decimal(14,10) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(14,10) DEFAULT NULL COMMENT '维度',
  `name` varchar(255) DEFAULT '' COMMENT '姓名',
  `mobile` varchar(255) DEFAULT '' COMMENT '手机号',
  `address` varchar(255) DEFAULT '' COMMENT '地址',
  `weight` int(11) DEFAULT NULL COMMENT '地址权重 1.权重越高 越优先',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  KEY `open_id` (`open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(40) DEFAULT '' COMMENT 'APPID',
  `title` varchar(255) DEFAULT '' COMMENT '标题',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `icon` varchar(255) DEFAULT '' COMMENT '图标',
  `flag` varchar(255) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'shopapi','家常用餐','家常菜','../static/area_1.png','home','','2016-09-06 03:41:00','2016-09-06 03:41:00'),(2,'shopapi','系列套餐','私人订制','../static/area_2.png','home','','2016-09-06 03:41:00','2016-09-06 03:41:00'),(3,'shopapi','私人订制','家常菜','../static/area_3.png','home','','2016-09-06 03:41:00','2016-09-06 03:41:00'),(4,'shopapi','水果','水果','../../static/mall-icon1.png','mall','','2016-09-06 03:41:35','2016-09-26 00:51:41'),(5,'shopapi','干货','干货','../static/mall-icon2.png','mall','','2016-09-06 03:41:35','2016-09-26 00:51:51'),(6,'shopapi','海鲜','海鲜','../static/mall-icon3.png','mall','','2016-09-06 03:41:36','2016-09-06 03:41:36'),(7,'shopapi','食材','食材','../static/mall-icon4.png','mall','','2016-09-06 03:41:36','2016-09-13 10:48:01');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribution_product`
--

DROP TABLE IF EXISTS `distribution_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distribution_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(40) DEFAULT NULL COMMENT 'app_id',
  `prod_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `merchant_id` bigint(20) DEFAULT NULL COMMENT '商户ID',
  `csn_rate` decimal(2,2) DEFAULT NULL COMMENT '佣金比例',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribution_product`
--

LOCK TABLES `distribution_product` WRITE;
/*!40000 ALTER TABLE `distribution_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `distribution_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(100) DEFAULT NULL COMMENT '用户ID',
  `app_id` varchar(100) DEFAULT NULL COMMENT 'app_id',
  `title` varchar(255) DEFAULT NULL COMMENT '收藏标题',
  `cover_img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `remark` varchar(255) DEFAULT NULL COMMENT '收藏备注',
  `type` int(11) DEFAULT NULL COMMENT '收藏类型 1.厨师 2.商品',
  `obj_id` bigint(20) DEFAULT NULL COMMENT '对应的收藏类型的ID',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  KEY `open_app_id` (`open_id`,`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flags`
--

DROP TABLE IF EXISTS `flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(100) DEFAULT '' COMMENT 'APPID',
  `name` varchar(100) DEFAULT '' COMMENT '标记名称',
  `flag` varchar(100) DEFAULT '' COMMENT 'flag',
  `type` varchar(20) DEFAULT NULL COMMENT '类型',
  `status` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  KEY `flag` (`flag`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flags`
--

LOCK TABLES `flags` WRITE;
/*!40000 ALTER TABLE `flags` DISABLE KEYS */;
INSERT INTO `flags` VALUES (1,'shopapi','厨师服务','merchant_default','PRODUCT',1,'2016-09-10 06:52:47','2016-09-10 07:41:21');
/*!40000 ALTER TABLE `flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gorp_migrations`
--

DROP TABLE IF EXISTS `gorp_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gorp_migrations` (
  `id` varchar(255) NOT NULL,
  `applied_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gorp_migrations`
--

LOCK TABLES `gorp_migrations` WRITE;
/*!40000 ALTER TABLE `gorp_migrations` DISABLE KEYS */;
INSERT INTO `gorp_migrations` VALUES ('20160910.sql','2016-09-26 00:45:58');
/*!40000 ALTER TABLE `gorp_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '' COMMENT '商户名称',
  `app_id` varchar(40) DEFAULT '' COMMENT 'APPID',
  `open_id` varchar(40) DEFAULT '' COMMENT '商户open_id',
  `mobile` varchar(20) DEFAULT '' COMMENT '手机号',
  `longitude` decimal(14,10) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(14,10) DEFAULT NULL COMMENT '维度',
  `address` varchar(255) DEFAULT '' COMMENT '商户地址',
  `cover_distance` int(11) DEFAULT NULL COMMENT '覆盖距离 单位米',
  `weight` int(11) DEFAULT NULL COMMENT '商户权重',
  `status` int(11) DEFAULT NULL COMMENT '商户状态 1.正常 0.关闭',
  `flag` varchar(255) DEFAULT '' COMMENT '商户标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加数据',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (1,'默认商户','shopapi','75b3be97d0b749768bcb272e4684786a','',0.0000000000,0.0000000000,'',0,3,1,'default','','2016-09-05 19:47:58','2016-09-20 17:28:06'),(2,'厨神','shopapi','8644c5f03c4d479a95fafa17221f55d3','13811111111',118.0994990000,24.4718730000,'',25000,0,1,'','','2016-09-23 03:30:30','2016-09-23 07:42:52'),(3,'傅萍','shopapi','e6ec45b01a744fd4b0079cbf8c99014d','13800000000',118.1905690000,24.4844190000,'',25000,0,1,'','{\"name\":\"傅萍\",\"sex\":\"男\",\"goodCooks\":[\"闽菜\",\"家常菜\",\"湘菜\"],\"video_url\":\"我是八零后厨师，在酒店做过两年后厨，见惯了各种舌头，我的职责是让每一位吃过我的菜的顾客都能笑着夸奖我！\"}','2016-09-23 07:38:24','2016-09-23 10:08:51');
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_imgs`
--

DROP TABLE IF EXISTS `merchant_imgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant_imgs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(40) DEFAULT '' COMMENT 'APPID',
  `open_id` varchar(40) DEFAULT '' COMMENT 'open_id',
  `merchant_id` bigint(20) DEFAULT NULL COMMENT '商户ID',
  `flag` varchar(100) DEFAULT '' COMMENT '图片标记',
  `url` varchar(400) DEFAULT '' COMMENT '图片URL',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  PRIMARY KEY (`id`),
  KEY `open_app_id` (`open_id`,`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_imgs`
--

LOCK TABLES `merchant_imgs` WRITE;
/*!40000 ALTER TABLE `merchant_imgs` DISABLE KEYS */;
INSERT INTO `merchant_imgs` VALUES (1,'shopapi','8644c5f03c4d479a95fafa17221f55d3',2,'cradId','/images/201609/64432038584a40f993fa066e30892718',''),(2,'shopapi','8644c5f03c4d479a95fafa17221f55d3',2,'chefId','/images/201609/63c94e8c9a934142988b6794ba7a487f',''),(3,'shopapi','8644c5f03c4d479a95fafa17221f55d3',2,'healthId','/images/201609/3b397e2080d04b3fbb542fab41b9b084',''),(10,'shopapi','e6ec45b01a744fd4b0079cbf8c99014d',3,'works','/images/201609/09fe122cb0744f84ba5546657bf8c157',''),(11,'shopapi','e6ec45b01a744fd4b0079cbf8c99014d',3,'works','/images/201609/cf4ab3b1970d473aa64c793a1ef43112',''),(12,'shopapi','e6ec45b01a744fd4b0079cbf8c99014d',3,'works','/images/201609/eef2a437d48d436b83e0adcffc0bf9c5',''),(13,'shopapi','e6ec45b01a744fd4b0079cbf8c99014d',3,'works','/images/201609/ead2b20c5f4a4403b39ddd0606fafb9f',''),(14,'shopapi','e6ec45b01a744fd4b0079cbf8c99014d',3,'works','/images/201609/e37c088c5f1e4581baa91c1a3cdea60d',''),(15,'shopapi','e6ec45b01a744fd4b0079cbf8c99014d',3,'works','/images/201609/f71c60e1ad214e76835772f462a2e6cc',''),(16,'shopapi','e6ec45b01a744fd4b0079cbf8c99014d',3,'works','/images/201609/9120162a6089440eabe768b26c470def',''),(17,'shopapi','e6ec45b01a744fd4b0079cbf8c99014d',3,'works','/images/201609/d4d028c67d434ed28321499f1ade854a','');
/*!40000 ALTER TABLE `merchant_imgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_open`
--

DROP TABLE IF EXISTS `merchant_open`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant_open` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) DEFAULT '' COMMENT 'APPID',
  `merchant_id` int(11) NOT NULL COMMENT '商户ID',
  `is_open` int(11) DEFAULT NULL COMMENT '是否营业',
  `open_time_start` varchar(30) DEFAULT '' COMMENT '营业开始时间',
  `open_time_end` varchar(30) DEFAULT '' COMMENT '营业结束时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  UNIQUE KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_open`
--

LOCK TABLES `merchant_open` WRITE;
/*!40000 ALTER TABLE `merchant_open` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_open` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_prod`
--

DROP TABLE IF EXISTS `merchant_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant_prod` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(40) DEFAULT '' COMMENT 'APPID',
  `merchant_id` bigint(20) DEFAULT NULL COMMENT '商户ID',
  `prod_id` bigint(20) DEFAULT NULL COMMENT '产品ID',
  `flag` varchar(255) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  KEY `merchant_app_id` (`merchant_id`,`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_prod`
--

LOCK TABLES `merchant_prod` WRITE;
/*!40000 ALTER TABLE `merchant_prod` DISABLE KEYS */;
INSERT INTO `merchant_prod` VALUES (1,'shopapi',1,1,'','','2016-09-23 02:57:48','2016-09-23 02:57:48'),(2,'shopapi',1,2,'','','2016-09-23 03:01:34','2016-09-23 03:01:34'),(3,'shopapi',1,3,'','','2016-09-23 03:07:15','2016-09-23 03:07:15'),(4,'shopapi',1,4,'','','2016-09-23 03:16:05','2016-09-23 03:16:05'),(5,'shopapi',2,5,'','','2016-09-23 03:30:44','2016-09-23 03:30:44'),(6,'shopapi',1,6,'','','2016-09-23 03:36:33','2016-09-23 03:36:33'),(7,'shopapi',1,7,'','','2016-09-23 03:46:45','2016-09-23 03:46:45'),(8,'shopapi',1,8,'','','2016-09-23 07:22:34','2016-09-23 07:22:34'),(9,'shopapi',1,9,'','','2016-09-23 07:40:30','2016-09-23 07:40:30'),(10,'shopapi',3,10,'','','2016-09-23 07:46:29','2016-09-23 07:46:29'),(11,'shopapi',1,11,'','','2016-09-23 09:11:48','2016-09-23 09:11:48'),(12,'shopapi',1,12,'','','2016-09-23 09:42:05','2016-09-23 09:42:05'),(13,'shopapi',1,13,'','','2016-09-23 10:07:08','2016-09-23 10:07:08'),(14,'shopapi',1,14,'','','2016-09-23 10:10:37','2016-09-23 10:10:37'),(15,'shopapi',1,15,'','','2016-09-23 10:16:31','2016-09-23 10:16:31'),(16,'shopapi',1,16,'','','2016-09-23 10:19:05','2016-09-23 10:19:05'),(17,'shopapi',1,17,'','','2016-09-23 10:20:03','2016-09-23 10:20:03'),(18,'shopapi',3,18,'','','2016-09-23 11:11:44','2016-09-23 11:11:44'),(19,'shopapi',3,19,'','','2016-09-26 01:33:26','2016-09-26 01:33:26'),(20,'shopapi',3,20,'','','2016-09-26 01:48:46','2016-09-26 01:48:46'),(21,'shopapi',1,21,'','','2016-09-26 01:59:16','2016-09-26 01:59:16'),(22,'shopapi',1,22,'','','2016-09-26 02:17:34','2016-09-26 02:17:34'),(23,'shopapi',1,23,'','','2016-09-26 06:21:49','2016-09-26 06:21:49'),(24,'shopapi',1,24,'','','2016-09-26 06:22:12','2016-09-26 06:22:12');
/*!40000 ALTER TABLE `merchant_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_service_time`
--

DROP TABLE IF EXISTS `merchant_service_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant_service_time` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merchant_id` bigint(20) DEFAULT NULL COMMENT '商户ID',
  `stime` varchar(20) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_service_time`
--

LOCK TABLES `merchant_service_time` WRITE;
/*!40000 ALTER TABLE `merchant_service_time` DISABLE KEYS */;
INSERT INTO `merchant_service_time` VALUES (1,2,'10:00'),(2,2,'11:00'),(3,2,'12:00'),(4,2,'13:00'),(5,2,'14:00'),(6,2,'15:00'),(7,2,'16:00'),(8,2,'17:00'),(9,2,'18:00'),(10,2,'19:00'),(11,2,'20:00'),(12,3,'10:00'),(13,3,'11:00'),(14,3,'12:00'),(15,3,'13:00'),(16,3,'14:00'),(17,3,'15:00');
/*!40000 ALTER TABLE `merchant_service_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `no` varchar(40) DEFAULT '' COMMENT '订单编号',
  `prepay_no` varchar(40) DEFAULT '' COMMENT '预付款编号(主要针对第三方支付的)',
  `code` varchar(255) DEFAULT '' COMMENT '预付款编号',
  `address_id` varchar(255) DEFAULT '' COMMENT '地址ID',
  `address` varchar(255) DEFAULT '' COMMENT '配送地址',
  `payapi_no` varchar(255) DEFAULT '' COMMENT '支付中心的订单号',
  `coupon_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠掉的金额',
  `dbn_amount` decimal(10,2) DEFAULT NULL COMMENT '佣金',
  `merchant_amount` decimal(10,2) DEFAULT NULL COMMENT '商户实际应得金额',
  `price` decimal(14,2) DEFAULT NULL COMMENT '订单金额',
  `real_price` decimal(14,2) DEFAULT NULL COMMENT '真实价格',
  `pay_price` decimal(14,2) DEFAULT NULL COMMENT '实际支付金额',
  `merchant_id` varchar(255) DEFAULT '' COMMENT '商户ID',
  `m_open_id` varchar(255) DEFAULT '' COMMENT '商户OpenId',
  `merchant_name` varchar(255) DEFAULT '' COMMENT '商户名称',
  `open_id` varchar(255) DEFAULT '' COMMENT '用户ID',
  `app_id` varchar(255) DEFAULT '' COMMENT 'APPID',
  `title` varchar(255) DEFAULT '' COMMENT '订单标题',
  `omit_money` decimal(8,8) DEFAULT NULL COMMENT '省略金额',
  `order_status` int(11) DEFAULT NULL COMMENT '订单状态 0，未确认；1，已确认；2，已取消；3，无效；4，退货',
  `pay_status` int(11) DEFAULT NULL COMMENT '付款状态 支付状态；0，未付款；2，付款中；1，已付款',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '配送费用',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `cancel_reason` varchar(1000) DEFAULT '' COMMENT '取消订单原因',
  `reject_cancel_reason` varchar(1000) DEFAULT '' COMMENT '拒绝取消订单的原因(商户方)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`no`),
  KEY `order_status` (`order_status`),
  KEY `pay_status` (`pay_status`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2016923115340930402961','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'2','8644c5f03c4d479a95fafa17221f55d3','厨神','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-23 03:53:40','2016-09-23 04:25:00'),(2,'2016923115347647381679','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'2','8644c5f03c4d479a95fafa17221f55d3','厨神','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-23 03:53:47','2016-09-23 04:25:00'),(3,'201692311542293232787','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'2','8644c5f03c4d479a95fafa17221f55d3','厨神','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-23 03:54:02','2016-09-23 04:25:00'),(4,'2016923121420781249228','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'2','8644c5f03c4d479a95fafa17221f55d3','厨神','e6ec45b01a744fd4b0079cbf8c99014d','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-23 04:14:20','2016-09-23 04:45:00'),(5,'2016923152743375520762','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'2','8644c5f03c4d479a95fafa17221f55d3','厨神','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-23 07:27:43','2016-09-23 08:00:00'),(6,'2016923155024400705875','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'2','8644c5f03c4d479a95fafa17221f55d3','厨神','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-23 07:50:24','2016-09-23 08:25:00'),(7,'20169261115378733576','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'3','e6ec45b01a744fd4b0079cbf8c99014d','傅萍','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-26 03:15:03','2016-09-26 03:50:00');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_action`
--

DROP TABLE IF EXISTS `order_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_action` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(40) DEFAULT '' COMMENT '订单号',
  `action_open_id` varchar(40) DEFAULT '' COMMENT '操作用户openID',
  `order_status` int(11) DEFAULT NULL COMMENT '订单状态 0，未确认；1，已确认；2，已取消；3，无效；4，退货',
  `pay_status` int(11) DEFAULT NULL COMMENT '付款状态 支付状态；0，未付款；2，付款中；1，已付款',
  `action_note` varchar(255) DEFAULT '' COMMENT '操作备注',
  `action_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `order_no` (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='对订单操作日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_action`
--

LOCK TABLES `order_action` WRITE;
/*!40000 ALTER TABLE `order_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_address`
--

DROP TABLE IF EXISTS `order_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(255) DEFAULT '' COMMENT '订单号',
  `app_id` varchar(100) DEFAULT '' COMMENT 'APPID',
  `open_id` varchar(100) DEFAULT '' COMMENT '用户ID',
  `name` varchar(255) DEFAULT '' COMMENT '姓名',
  `mobile` varchar(255) DEFAULT '' COMMENT '手机号',
  `address` varchar(255) DEFAULT '' COMMENT '送货地址',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  KEY `open_app_id` (`open_id`,`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_address`
--

LOCK TABLES `order_address` WRITE;
/*!40000 ALTER TABLE `order_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_coupon`
--

DROP TABLE IF EXISTS `order_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_coupon` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(100) DEFAULT NULL,
  `open_id` varchar(40) DEFAULT NULL COMMENT '用户ID',
  `order_no` varchar(40) DEFAULT NULL COMMENT '订单号',
  `notify_url` varchar(100) DEFAULT NULL COMMENT '通知URL',
  `coupon_code` varchar(100) DEFAULT NULL COMMENT '优惠券代号',
  `track_code` varchar(100) DEFAULT NULL COMMENT '追踪码',
  `coupon_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠金额',
  `coupon_token` varchar(255) DEFAULT NULL COMMENT '优惠凭证',
  `status` int(11) DEFAULT NULL COMMENT '0.未激活 1.已激活',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  KEY `open_app_id` (`open_id`,`app_id`),
  KEY `order_no` (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_coupon`
--

LOCK TABLES `order_coupon` WRITE;
/*!40000 ALTER TABLE `order_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `no` varchar(40) DEFAULT '' COMMENT '订单编号',
  `dbn_no` varchar(40) DEFAULT '' COMMENT '分销码',
  `app_id` varchar(100) DEFAULT '' COMMENT 'APPID',
  `m_open_id` varchar(255) DEFAULT '' COMMENT '商家ID',
  `prod_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `sku_no` varchar(255) DEFAULT '' COMMENT '商品SKU编号',
  `num` int(11) DEFAULT NULL COMMENT '商品数量',
  `offer_unit_price` decimal(14,2) DEFAULT NULL COMMENT '单价报价',
  `offer_total_price` decimal(14,2) DEFAULT NULL COMMENT '总价格报价',
  `buy_unit_price` decimal(14,2) DEFAULT NULL COMMENT '购买单价',
  `buy_total_price` decimal(14,2) DEFAULT NULL COMMENT '购买总金额',
  `dbn_amount` decimal(10,2) DEFAULT NULL COMMENT '分销佣金',
  `omit_money` decimal(8,8) DEFAULT NULL COMMENT '省略金额',
  `coupon_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠金额',
  `merchant_amount` decimal(10,2) DEFAULT NULL COMMENT '商户得到的金额',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  KEY `sno` (`no`),
  KEY `app_id` (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,'2016923115340930402961','','shopapi','',5,'160f4db894b44c08a1d0ab42aa2a2384',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-23 21:00\",\"chef_name\":\"厨神\",\"goods_type\":\"chef\"}','2016-09-23 03:53:40','2016-09-23 03:53:40'),(2,'2016923115347647381679','','shopapi','',5,'160f4db894b44c08a1d0ab42aa2a2384',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-23 21:00\",\"chef_name\":\"厨神\",\"goods_type\":\"chef\"}','2016-09-23 03:53:47','2016-09-23 03:53:47'),(3,'201692311542293232787','','shopapi','',5,'160f4db894b44c08a1d0ab42aa2a2384',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-23 21:00\",\"chef_name\":\"厨神\",\"goods_type\":\"chef\"}','2016-09-23 03:54:02','2016-09-23 03:54:02'),(4,'2016923121420781249228','','shopapi','',5,'160f4db894b44c08a1d0ab42aa2a2384',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-23 21:00\",\"chef_name\":\"厨神\",\"goods_type\":\"chef\"}','2016-09-23 04:14:20','2016-09-23 04:14:20'),(5,'2016923152743375520762','','shopapi','',5,'160f4db894b44c08a1d0ab42aa2a2384',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-23 21:00\",\"chef_name\":\"厨神\",\"goods_type\":\"chef\"}','2016-09-23 07:27:43','2016-09-23 07:27:43'),(6,'2016923155024400705875','','shopapi','',5,'160f4db894b44c08a1d0ab42aa2a2384',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-23 21:00\",\"chef_name\":\"厨神\",\"goods_type\":\"chef\"}','2016-09-23 07:50:24','2016-09-23 07:50:24'),(7,'20169261115378733576','','shopapi','',10,'a46db4987d584f2b8dfe8b53dd293590',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-26 19:00\",\"chef_name\":\"傅萍\",\"goods_type\":\"chef\"}','2016-09-26 03:15:03','2016-09-26 03:15:03');
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_attr_key`
--

DROP TABLE IF EXISTS `prod_attr_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_attr_key` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prod_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `attr_key` varchar(255) DEFAULT '' COMMENT '属性唯一key',
  `attr_name` varchar(255) DEFAULT '' COMMENT '属性名',
  `status` int(11) DEFAULT NULL COMMENT '1.正常 0.关闭',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_attr_key`
--

LOCK TABLES `prod_attr_key` WRITE;
/*!40000 ALTER TABLE `prod_attr_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `prod_attr_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_attr_val`
--

DROP TABLE IF EXISTS `prod_attr_val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_attr_val` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prod_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `attr_key` varchar(255) DEFAULT '' COMMENT '属性key',
  `attr_value` varchar(255) DEFAULT '' COMMENT '属性值',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_attr_val`
--

LOCK TABLES `prod_attr_val` WRITE;
/*!40000 ALTER TABLE `prod_attr_val` DISABLE KEYS */;
INSERT INTO `prod_attr_val` VALUES (1,5,'time','201609232100','',''),(2,10,'time','201609261900','','');
/*!40000 ALTER TABLE `prod_attr_val` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_category`
--

DROP TABLE IF EXISTS `prod_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL COMMENT '类别ID',
  `app_id` varchar(40) DEFAULT '' COMMENT 'APPID',
  `prod_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`),
  KEY `prod_app_id` (`prod_id`,`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_category`
--

LOCK TABLES `prod_category` WRITE;
/*!40000 ALTER TABLE `prod_category` DISABLE KEYS */;
INSERT INTO `prod_category` VALUES (1,5,'shopapi',1,'','','2016-09-23 02:57:48','2016-09-23 02:57:48'),(2,5,'shopapi',2,'','','2016-09-23 03:01:34','2016-09-23 03:01:34'),(3,5,'shopapi',3,'','','2016-09-23 03:07:15','2016-09-23 03:07:15'),(4,5,'shopapi',4,'','','2016-09-23 03:16:05','2016-09-23 03:16:05'),(5,1,'shopapi',5,'','','2016-09-23 03:30:44','2016-09-23 03:30:44'),(6,5,'shopapi',6,'','','2016-09-23 03:36:33','2016-09-23 03:36:33'),(7,5,'shopapi',7,'','','2016-09-23 03:46:45','2016-09-23 03:46:45'),(8,5,'shopapi',8,'','','2016-09-23 07:22:34','2016-09-23 07:22:34'),(9,7,'shopapi',9,'','','2016-09-23 07:40:30','2016-09-23 07:40:30'),(10,1,'shopapi',10,'','','2016-09-23 07:46:29','2016-09-23 07:46:29'),(11,7,'shopapi',11,'','','2016-09-23 09:11:48','2016-09-23 09:11:48'),(12,7,'shopapi',12,'','','2016-09-23 09:42:05','2016-09-23 09:42:05'),(13,7,'shopapi',13,'','','2016-09-23 10:07:08','2016-09-23 10:07:08'),(14,7,'shopapi',14,'','','2016-09-23 10:10:37','2016-09-23 10:10:37'),(15,7,'shopapi',15,'','','2016-09-23 10:16:31','2016-09-23 10:16:31'),(16,7,'shopapi',16,'','','2016-09-23 10:19:05','2016-09-23 10:19:05'),(17,7,'shopapi',17,'','','2016-09-23 10:20:03','2016-09-23 10:20:03'),(18,7,'shopapi',18,'','','2016-09-23 11:11:44','2016-09-23 11:11:44'),(19,7,'shopapi',19,'','','2016-09-26 01:33:26','2016-09-26 01:33:26'),(20,7,'shopapi',20,'','','2016-09-26 01:48:46','2016-09-26 01:48:46'),(21,6,'shopapi',21,'','','2016-09-26 01:59:16','2016-09-26 01:59:16'),(22,6,'shopapi',22,'','','2016-09-26 02:17:34','2016-09-26 02:17:34'),(23,4,'shopapi',23,'','','2016-09-26 06:21:49','2016-09-26 06:21:49'),(24,4,'shopapi',24,'','','2016-09-26 06:22:12','2016-09-26 06:22:12');
/*!40000 ALTER TABLE `prod_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_imgs`
--

DROP TABLE IF EXISTS `prod_imgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_imgs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(40) DEFAULT '' COMMENT 'APPID',
  `prod_id` bigint(20) DEFAULT NULL COMMENT '产品ID',
  `flag` varchar(100) DEFAULT '' COMMENT '图片标记',
  `url` varchar(400) DEFAULT '' COMMENT '图片URL',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  PRIMARY KEY (`id`),
  KEY `prod_app_id` (`prod_id`,`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_imgs`
--

LOCK TABLES `prod_imgs` WRITE;
/*!40000 ALTER TABLE `prod_imgs` DISABLE KEYS */;
INSERT INTO `prod_imgs` VALUES (1,'shopapi',1,'','/images/201609/57b806a4db9149aaa5a9b0aee623bffd',''),(2,'shopapi',1,'','/images/201609/abf43ab0af7741ed9d3c650719f4945c',''),(3,'shopapi',2,'','/images/201609/81fb97353a1449a0957497f0bc3933cb',''),(4,'shopapi',2,'','/images/201609/234d7c1214664a6ea8aa9beb31ae0ff1',''),(5,'shopapi',3,'','/images/201609/9a7452dc4cde4f6fa70922a6a7fac485',''),(6,'shopapi',3,'','/images/201609/95ff631aae8a46a2ba0f5cd4654a2f15',''),(7,'shopapi',4,'','/images/201609/13b78f71eff14f189df59dc4503e1dfc',''),(8,'shopapi',4,'','/images/201609/8ade16d3355640449a281966532f6194',''),(11,'shopapi',7,'','/images/201609/cfea3273a575438a8de48c96328a3583',''),(12,'shopapi',7,'','',''),(13,'shopapi',8,'','/images/201609/f7b9dcebf70e40418caa8c4ac166bbe9',''),(14,'shopapi',9,'','/images/201609/70fe0f668a6c41b8a556964e0fb8d21e',''),(15,'shopapi',11,'','/images/201609/a141a5d9d6ff45239c62f45c4fc98b72',''),(16,'shopapi',12,'','/images/201609/5ef70df6604b4d4c8f720610d3306482',''),(17,'shopapi',13,'','/images/201609/8f27786861df483f8b311cb0dc557269',''),(18,'shopapi',13,'','/images/201609/521ba2cebc6046baa7e74b2a48a372ce',''),(19,'shopapi',14,'','/images/201609/10368f3321bb4c49b9e0e637fe583c72',''),(20,'shopapi',14,'','/images/201609/770c2312f6b04a70b69d615a6be9bd2f',''),(21,'shopapi',15,'','/images/201609/c6b707fce2e04867870108f4f380276b',''),(22,'shopapi',15,'','/images/201609/792502e79ac846029691066ff7093027',''),(23,'shopapi',16,'','/images/201609/2f0cb718d1dd4946845436c207d727da',''),(24,'shopapi',16,'','/images/201609/23e8fbe415564c3987dfc10c08c618a5',''),(25,'shopapi',17,'','/images/201609/d7e9fb2aeea3458ba1cec9565957cb9a',''),(26,'shopapi',17,'','/images/201609/9e9a61f5cc0e4c3e9b225179192aa58a',''),(27,'shopapi',18,'','/images/201609/66fa5d9fca9f4215bbbb5d15d0c66683',''),(28,'shopapi',18,'','/images/201609/24e90f7633c84ecf910c7980f59659b3',''),(29,'shopapi',19,'','/images/201609/395e42ef9f254d3ba6300117c6d4a38a',''),(30,'shopapi',19,'','/images/201609/a8e3a64192b14aa68ea62da3ec21fabf',''),(31,'shopapi',20,'','/images/201609/8c7acbc699804b19b9e019967eb11ae3',''),(32,'shopapi',20,'','/images/201609/2284db0d49b74d0dbf330c9f1171585d',''),(33,'shopapi',20,'','/images/201609/cf857e1ccb4d475089248fe69b4aa98e',''),(34,'shopapi',21,'','/images/201609/7f963a5566e6467db06915e29fa9896d',''),(35,'shopapi',21,'','/images/201609/5d2f672b83de4d49acbff6a27ebee0b7',''),(36,'shopapi',21,'','/images/201609/e07df4f757744c2783e462aaadd69077',''),(37,'shopapi',21,'','/images/201609/92a91ac2dab04202ac8e365ad281bcff',''),(38,'shopapi',21,'','/images/201609/ce7173b2882b4e1aa4186dd7c47c7e16',''),(39,'shopapi',21,'','/images/201609/b04f1ebc890e4c9c9ceedd9bc95ad2bc',''),(40,'shopapi',21,'','/images/201609/341ea630cd0248fd9c07f46c3195fc57',''),(41,'shopapi',21,'','/images/201609/3c7dff10e1614af6b16fc1b211ff9eaf',''),(42,'shopapi',21,'','/images/201609/2ee48ef7467a4ff1b6de62457103e02e',''),(43,'shopapi',22,'','/images/201609/3b5ed906b4c74ac5b0e5c73f463182d2',''),(44,'shopapi',22,'','/images/201609/f938f58b3a964a78b5beee795bcbb77d',''),(45,'shopapi',22,'','/images/201609/70eb21d96132490588473f57d1540812',''),(46,'shopapi',22,'','/images/201609/16d621fd18d848b1b9ae6bdbd5c53c2a',''),(47,'shopapi',22,'','/images/201609/0d8b68b46ff947f1901f0d6cc5d1eb46',''),(48,'shopapi',22,'','/images/201609/eda7488b735445b5b60f73ee1213c7fe',''),(49,'shopapi',22,'','/images/201609/b51d9db488c4463ca0d402258ac719d5',''),(50,'shopapi',22,'','/images/201609/1fb58b85daed49afb489594402528238',''),(51,'shopapi',22,'','/images/201609/ba766aca43f84cdabae3f69134d50e4b',''),(52,'shopapi',22,'','/images/201609/1bd6dfdf85254fe9b76d3f3cc0ee13a4',''),(53,'shopapi',22,'','/images/201609/7c20bb9db4db4ef8962ea8693279b605',''),(54,'shopapi',23,'','/images/201609/3243ffa8d5db427793b6c6a53aaadcc7',''),(55,'shopapi',23,'','/images/201609/9f28c408d67349f8afa91465b6020cef',''),(56,'shopapi',24,'','/images/201609/e204ab744bcf4f2e9948f7acc2244741',''),(57,'shopapi',24,'','/images/201609/e303eebcafb044a59acb3d20fec73466','');
/*!40000 ALTER TABLE `prod_imgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_sku`
--

DROP TABLE IF EXISTS `prod_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_sku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sku_no` varchar(40) DEFAULT '' COMMENT '唯一编号',
  `prod_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `app_id` varchar(40) DEFAULT '' COMMENT 'APPID',
  `price` decimal(14,2) DEFAULT NULL COMMENT '原价',
  `dis_price` decimal(14,2) DEFAULT NULL COMMENT '折扣价格',
  `attr_symbol_path` varchar(255) DEFAULT '' COMMENT '属性组合出的规格路径',
  `sold_num` int(11) DEFAULT NULL COMMENT '已售数量',
  `stock` int(11) DEFAULT NULL COMMENT '库存量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku_no` (`sku_no`),
  KEY `prod_app_id` (`prod_id`,`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_sku`
--

LOCK TABLES `prod_sku` WRITE;
/*!40000 ALTER TABLE `prod_sku` DISABLE KEYS */;
INSERT INTO `prod_sku` VALUES (1,'566c2926b5b94168bd0a8ee3e3a1fba2',1,'shopapi',100.00,100.00,'',0,999999,'2016-09-23 02:57:48','2016-09-23 02:57:48','',''),(2,'21969b56e35842898beb5605573d512b',2,'shopapi',100.00,100.00,'',0,999999,'2016-09-23 03:01:34','2016-09-23 03:01:34','',''),(3,'47ce5457e7e94319bebee3bdb93a44ac',3,'shopapi',100.00,100.00,'',0,999999,'2016-09-23 03:07:15','2016-09-23 03:07:15','',''),(4,'d35e8636f268414a8d882abce5be639d',4,'shopapi',100.00,100.00,'',0,999999,'2016-09-23 03:16:06','2016-09-23 03:16:06','',''),(6,'9505ccb0af784b74a2c93fe19ea844eb',7,'shopapi',100.00,100.00,'',0,999999,'2016-09-23 03:46:45','2016-09-23 03:46:45','',''),(7,'160f4db894b44c08a1d0ab42aa2a2384',5,'shopapi',158.00,158.00,'1',0,1,'2016-09-23 03:53:40','2016-09-23 03:53:40','',''),(8,'a2b6374beb3a4cdc8f3583bfca1360d7',8,'shopapi',12.00,11.00,'',0,999999,'2016-09-23 07:22:35','2016-09-23 07:22:35','',''),(9,'7929ce4855b04584aea013b2462a2b4a',9,'shopapi',14.00,12.00,'',0,999999,'2016-09-23 07:40:30','2016-09-23 07:40:30','',''),(10,'840e9913ea0a4b90a5cb9b6e0a3f0f48',11,'shopapi',12.00,11.00,'',0,999999,'2016-09-23 09:11:49','2016-09-23 09:11:49','',''),(11,'d55fc97c460649ab886643d9b305015d',12,'shopapi',12.00,11.00,'',0,999999,'2016-09-23 09:42:05','2016-09-23 09:42:05','',''),(12,'415eb1c9b0e84e7dbc8e99a2c368ae32',13,'shopapi',50.00,26.00,'',0,999999,'2016-09-23 10:07:08','2016-09-23 10:07:08','',''),(13,'dd470086676341c38048c5f1d2f2803e',14,'shopapi',99.00,49.00,'',0,999999,'2016-09-23 10:10:38','2016-09-23 10:10:38','',''),(14,'b6540ef5b2224e8b93cdfe3a6e39a7d7',15,'shopapi',99.00,49.00,'',0,999999,'2016-09-23 10:16:31','2016-09-23 10:16:31','',''),(15,'6dbe58f4a0e44ba8960630200e160980',16,'shopapi',100.00,69.00,'',0,999999,'2016-09-23 10:19:05','2016-09-23 10:19:05','',''),(16,'e2517bbd4ab540b6b25093e7d66ab7d1',17,'shopapi',100.00,59.00,'',0,999999,'2016-09-23 10:20:04','2016-09-23 10:20:04','',''),(17,'65ec97093a0b40fa87b9eb52a197049a',18,'shopapi',20.00,12.00,'',0,999999,'2016-09-23 11:11:44','2016-09-23 11:11:44','',''),(18,'349651a38a9241669f30887785675c0c',19,'shopapi',10.00,10.00,'',0,999999,'2016-09-26 01:33:26','2016-09-26 01:33:26','',''),(19,'d8837227c85746558e2ba4d66980bb22',20,'shopapi',10.00,10.00,'',0,999999,'2016-09-26 01:48:46','2016-09-26 01:48:46','',''),(20,'1f28355bb1cd463681078c2875ae0a76',21,'shopapi',200.00,0.00,'',0,999999,'2016-09-26 01:59:17','2016-09-26 01:59:17','',''),(21,'0c4d51ed560449deb30202a6dbb7d3fe',22,'shopapi',259.00,259.00,'',0,999999,'2016-09-26 02:17:34','2016-09-26 02:17:34','',''),(22,'a46db4987d584f2b8dfe8b53dd293590',10,'shopapi',158.00,158.00,'2',0,1,'2016-09-26 03:15:03','2016-09-26 03:15:03','',''),(23,'8113a37e18ea4375992d06a0427d7967',23,'shopapi',54.00,54.00,'',0,999999,'2016-09-26 06:21:49','2016-09-26 06:21:49','',''),(24,'b4f253e08efe4c1b98d11e62f0575005',24,'shopapi',11.00,11.00,'',0,999999,'2016-09-26 06:22:12','2016-09-26 06:22:12','','');
/*!40000 ALTER TABLE `prod_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(40) DEFAULT '' COMMENT 'APPID',
  `title` varchar(255) DEFAULT '' COMMENT '标题',
  `description` varchar(1000) DEFAULT '' COMMENT '描述',
  `price` decimal(14,2) DEFAULT NULL COMMENT '原价',
  `dis_price` decimal(14,2) DEFAULT NULL COMMENT '折扣价格',
  `status` int(11) DEFAULT NULL COMMENT '商品状态 1.上架 0.下架',
  `is_recom` int(11) DEFAULT NULL COMMENT '是否推荐 1.推荐 0.不推荐',
  `sold_num` int(11) DEFAULT NULL COMMENT '已售数量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  `flag` varchar(255) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (5,'shopapi','四菜一汤','四菜一汤',158.00,158.00,1,0,0,'2016-09-23 03:30:44','2016-09-26 00:48:32','merchant_default',''),(8,'shopapi','测试2','23',12.00,11.00,0,0,0,'2016-09-23 07:22:34','2016-09-23 07:43:02','',''),(9,'shopapi','测试2','4',14.00,12.00,0,0,0,'2016-09-23 07:40:30','2016-09-26 00:50:43','',''),(10,'shopapi','四菜一汤','四菜一汤',158.00,158.00,1,0,0,'2016-09-23 07:46:29','2016-09-23 07:46:29','merchant_default',''),(11,'shopapi','测试5','333',12.00,11.00,1,0,0,'2016-09-23 09:11:48','2016-09-23 09:11:48','',''),(12,'shopapi','测试6','',12.00,11.00,1,0,0,'2016-09-23 09:42:05','2016-09-23 09:42:05','',''),(13,'shopapi','桂圆','',50.00,26.00,1,0,0,'2016-09-23 10:07:08','2016-09-23 10:07:08','',''),(14,'shopapi','虫草花','茶树菇干货不开伞 500g 古田特产茶薪菇 冰菇苞',99.00,49.00,0,0,0,'2016-09-23 10:10:37','2016-09-26 00:49:31','',''),(15,'shopapi','古田特产茶树菇','',99.00,49.00,1,0,0,'2016-09-23 10:16:31','2016-09-26 06:22:27','',''),(16,'shopapi','宝元堂 虫草花','',100.00,69.00,1,0,0,'2016-09-23 10:19:05','2016-09-26 06:22:27','',''),(17,'shopapi','极品干贝','',100.00,59.00,1,0,0,'2016-09-23 10:20:03','2016-09-26 06:22:34','',''),(18,'shopapi','腐竹','',20.00,12.00,1,0,0,'2016-09-23 11:11:44','2016-09-26 06:22:35','',''),(19,'shopapi','胡萝卜','',10.00,10.00,1,0,0,'2016-09-26 01:33:26','2016-09-26 06:22:36','',''),(20,'shopapi','胡萝卜2','',10.00,10.00,1,0,0,'2016-09-26 01:48:46','2016-09-26 06:22:37','',''),(21,'shopapi','大连鲍鱼','',200.00,0.00,1,0,0,'2016-09-26 01:59:16','2016-09-26 06:22:41','',''),(22,'shopapi','进口波士顿龙虾','',259.00,259.00,1,0,0,'2016-09-26 02:17:34','2016-09-26 06:22:42','',''),(23,'shopapi','干贝54','',54.00,54.00,1,1,0,'2016-09-26 06:21:49','2016-09-26 06:22:39','',''),(24,'shopapi','干贝11','',11.00,11.00,1,1,0,'2016-09-26 06:22:12','2016-09-26 06:22:40','','');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suggest`
--

DROP TABLE IF EXISTS `suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suggest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(40) DEFAULT NULL COMMENT '用户ID',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `content` varchar(1000) DEFAULT NULL COMMENT '建议正文',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggest`
--

LOCK TABLES `suggest` WRITE;
/*!40000 ALTER TABLE `suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_bank`
--

DROP TABLE IF EXISTS `user_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_bank` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(40) DEFAULT NULL COMMENT 'appid',
  `open_id` varchar(40) DEFAULT NULL COMMENT '用户ID',
  `account_name` varchar(100) DEFAULT NULL COMMENT '开户人名称',
  `bank_name` varchar(100) DEFAULT NULL COMMENT '银行名称',
  `bank_no` varchar(40) DEFAULT NULL COMMENT '银行账号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_bank`
--

LOCK TABLES `user_bank` WRITE;
/*!40000 ALTER TABLE `user_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_distribution`
--

DROP TABLE IF EXISTS `user_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_distribution` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) DEFAULT NULL COMMENT '用户唯一分销码',
  `app_id` varchar(40) DEFAULT NULL,
  `open_id` varchar(40) DEFAULT NULL COMMENT '用户ID',
  `distribution_id` bigint(20) DEFAULT NULL COMMENT '分销ID',
  `prod_id` bigint(20) DEFAULT NULL COMMENT '分销的商品ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_distribution`
--

LOCK TABLES `user_distribution` WRITE;
/*!40000 ALTER TABLE `user_distribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_distribution` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-26 14:30:26
