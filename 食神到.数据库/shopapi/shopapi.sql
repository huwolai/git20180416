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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'shopapi','8a4a1879c2ce401f98fb7da0b703aa1d','15921615913',0.00,'111111',1,'','2016-09-06 03:53:52','2016-09-18 05:14:54'),(2,'shopapi','86d1232cef434ffa8e30c1d97cba6f11','18659330001',0.00,'',1,'','2016-09-06 08:19:00','2016-09-06 08:19:00'),(3,'shopapi','ebe6a2245e6e4ece888688f81beaa4df','18659330002',0.00,'080976',1,'','2016-09-06 09:04:27','2016-09-12 03:34:23'),(4,'shopapi','d2a37b2a259d486b825fef7df40b8660','18659330003',0.00,'123456',1,'','2016-09-06 09:17:31','2016-09-12 09:00:44'),(5,'shopapi','2bd209e36084479cbbb7258f12fce02f','15280207045',0.00,'111111',1,'','2016-09-06 09:18:02','2016-09-06 09:44:57'),(6,'shopapi','8c6ba245b64a4bd282d1ddb52156372b','13641677914',0.00,'111111',1,'','2016-09-07 02:07:02','2016-09-12 03:40:35'),(7,'shopapi','308afdc460d242bb9e328286e185a67c','18659330000',0.00,'',1,'','2016-09-07 02:12:28','2016-09-07 02:12:28'),(8,'shopapi','86bd9576a18d493ead9b5b6e945f4f04','15899972862',0.00,'223456',1,'','2016-09-07 02:24:11','2016-09-07 03:09:19'),(9,'shopapi','75e8f083ce674590bc8380ec0679e742','13609560003',0.00,'576088',1,'','2016-09-07 03:06:29','2016-09-07 03:58:26'),(10,'shopapi','b286deddde3d49a3abbca8de02059817','15138066795',0.00,'',1,'','2016-09-07 05:28:46','2016-09-07 05:28:46'),(11,'shopapi','05b52d0c5dbe4a7abbc73b374bae3630','15138066798',0.00,'',1,'','2016-09-07 05:31:06','2016-09-07 05:31:06'),(12,'shopapi','4f69bebe884248d2a72fb13a4fffc989','15703976031',0.00,'',1,'','2016-09-08 06:35:50','2016-09-08 06:35:50'),(13,'shopapi','aa711d464b6f4f50a2e9ab5639a4a7b2','18659330004',0.00,'',1,'','2016-09-12 03:08:10','2016-09-12 03:08:10'),(14,'shopapi','a4fa102b921341e2bfec50f53b69a129','18659330005',0.00,'',1,'','2016-09-12 03:10:16','2016-09-12 03:10:16'),(15,'shopapi','4fa0a626c6a640898ff56064df938f22','15921615911',0.00,'',1,'','2016-09-12 04:02:09','2016-09-12 04:02:09'),(16,'shopapi','4593d4d7ad4b48a7893bc2233d321165','18559054076',0.00,'',1,'','2016-09-12 07:51:19','2016-09-12 07:51:19'),(17,'shopapi','29df44dc59f14e6a89c4fbd66d9a4bea','18659330006',0.00,'123456',1,'','2016-09-12 09:02:51','2016-09-12 09:03:35'),(18,'shopapi','46ac15de93d74d828b87ef861300fd0f','18659330041',0.00,'',1,'','2016-09-13 02:24:28','2016-09-13 02:24:28'),(19,'shopapi','5feed1b70b7f49c6a4b9e02201f46c48','15921615910',0.00,'',1,'','2016-09-13 07:24:02','2016-09-13 07:24:02'),(20,'shopapi','2f56a1b693894a49af5a667daeb27c37','18917375583',0.00,'111111',1,'','2016-09-13 09:56:35','2016-09-13 10:13:22'),(21,'shopapi','9a451a5a94e147dd8d17c35adf5f95e4','15921615915',0.00,'',1,'','2016-09-18 05:53:31','2016-09-18 05:53:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_recharge`
--

LOCK TABLES `account_recharge` WRITE;
/*!40000 ALTER TABLE `account_recharge` DISABLE KEYS */;
INSERT INTO `account_recharge` VALUES (1,'2d0a3fab928f4728a24e5742afd82312','shopapi','',1000.00,0,'','','2016-09-06 09:29:09','2016-09-06 09:29:09'),(2,'774e92614d594407a9954e24a2b6ba7a','shopapi','',1000.00,0,'','','2016-09-06 09:29:11','2016-09-06 09:29:11'),(3,'886a73d2ba714af981a65907cd0949b3','shopapi','',1000.00,0,'','','2016-09-06 09:29:24','2016-09-06 09:29:24'),(4,'d5eb1f2662004992a7ed2e3851c2bf0c','shopapi','',1000.00,0,'','','2016-09-06 09:47:21','2016-09-06 09:47:21'),(5,'05ffde7452524f8287c8c95cdbe01a22','shopapi','',300.00,0,'','','2016-09-06 11:12:21','2016-09-06 11:12:21'),(6,'cfd880fd8fe24db79b8d2dae12f53038','shopapi','',300.00,0,'','','2016-09-06 11:12:28','2016-09-06 11:12:28'),(7,'91627ea912bc4eb59199353eb944850f','shopapi','',300.00,0,'','','2016-09-06 11:13:08','2016-09-06 11:13:08'),(8,'987a9079450343e28e307c9ebfeb73bb','shopapi','',1000.00,0,'','','2016-09-07 01:40:43','2016-09-07 01:40:43'),(9,'78c674e9d9014b88914fea270c461308','shopapi','',1000.00,0,'','','2016-09-07 01:40:52','2016-09-07 01:40:52'),(10,'9c66ee135d3045bb88fc30acba85ff44','shopapi','',1000.00,0,'','','2016-09-07 01:41:03','2016-09-07 01:41:03'),(11,'1bf8bad0439545a58bd6a1f98a143906','shopapi','',300.00,0,'','','2016-09-07 03:05:51','2016-09-07 03:05:51'),(12,'70037a2434d14c578806019403d68e0d','shopapi','',300.00,0,'','','2016-09-07 03:06:07','2016-09-07 03:06:07'),(13,'72e0277f66934ab4bf2d473ccb9c63b3','shopapi','',1000.00,0,'','','2016-09-07 03:06:29','2016-09-07 03:06:29'),(14,'4bf3d5d91c87468b8fc91e5b7ef092ef','shopapi','',300.00,0,'','','2016-09-07 03:06:39','2016-09-07 03:06:39'),(15,'40cf4dab84454646b486ce175ae297ea','shopapi','',1000.00,0,'','','2016-09-07 03:57:27','2016-09-07 03:57:27'),(16,'433ce25bf4504aa7963034b946dc99d8','shopapi','',1000.00,0,'','','2016-09-07 03:57:30','2016-09-07 03:57:30'),(17,'795cd461d7234906924859cd74fe5097','shopapi','',1000.00,0,'','','2016-09-07 03:57:32','2016-09-07 03:57:32'),(18,'a28930da758a4ced85e50bbc793dd076','shopapi','',300.00,0,'','','2016-09-07 04:26:51','2016-09-07 04:26:51'),(19,'ca7ced14253e462a8d1becfeb02aeef3','shopapi','',300.00,0,'','','2016-09-07 04:27:01','2016-09-07 04:27:01'),(20,'fa15fec4e48a491daa7d60202fd34461','shopapi','',300.00,0,'','','2016-09-07 04:27:26','2016-09-07 04:27:26'),(21,'b939ac5b55d647bb98f73baaf65daf89','shopapi','',300.00,0,'','','2016-09-07 04:27:30','2016-09-07 04:27:30'),(22,'3317e32768ae4737999863b2b198a4ba','shopapi','',1000.00,0,'','','2016-09-07 04:46:34','2016-09-07 04:46:34'),(23,'4605063a3d6c46129407cd23f2a329c3','shopapi','',1000.00,0,'','','2016-09-07 04:46:42','2016-09-07 04:46:42'),(24,'d10ce77af08f421c9db96a245393ed60','shopapi','',1000.00,0,'','','2016-09-07 04:46:55','2016-09-07 04:46:55'),(25,'b54f10e389f3479691b17fa566ee5881','shopapi','',1000.00,0,'','','2016-09-07 04:47:05','2016-09-07 04:47:05'),(26,'fee4ca4ce91d43d9a0db6a3f76ea96ce','shopapi','',1000.00,0,'','','2016-09-07 05:25:04','2016-09-07 05:25:04'),(27,'29811bdb6d66422c8975339ed4a48362','shopapi','',300.00,0,'','','2016-09-07 05:25:55','2016-09-07 05:25:55'),(28,'8450fd036f774a12994119e931c4298a','shopapi','',1000.00,0,'','','2016-09-07 05:26:37','2016-09-07 05:26:37'),(29,'2f394dbe92a243c5b44001f9242e6c1c','shopapi','',500.00,0,'','','2016-09-07 05:30:04','2016-09-07 05:30:04'),(30,'f6cf0822516a49cc88901ebe034764b2','shopapi','',500.00,0,'','','2016-09-07 05:30:13','2016-09-07 05:30:13'),(31,'ad1c4c0b41604558b601195fd51bd3b2','shopapi','',300.00,0,'','','2016-09-07 05:31:11','2016-09-07 05:31:11'),(32,'f6431797fd2c4d83a7cd8143df18d514','shopapi','',300.00,0,'','','2016-09-07 05:31:17','2016-09-07 05:31:17'),(33,'d8f6bb6926b44acba21614290eab6eb5','shopapi','',300.00,0,'','','2016-09-07 05:31:25','2016-09-07 05:31:25'),(34,'048e8f138ad6431d815839701ff16aa7','shopapi','',300.00,0,'','','2016-09-07 05:47:09','2016-09-07 05:47:09'),(35,'03166006414747eaa3f7fa0f61b00568','shopapi','',300.00,0,'','','2016-09-07 05:47:18','2016-09-07 05:47:18'),(36,'e26d68fce8a34bd29c3094f12a7d42eb','shopapi','',300.00,0,'','','2016-09-08 01:24:29','2016-09-08 01:24:29'),(37,'cc664c3ef6164100b2cab6033727647a','shopapi','',1000.00,0,'','','2016-09-08 01:24:52','2016-09-08 01:24:52'),(38,'8f1443e046ee4cac9ad94bedbf6c4d53','shopapi','',1000.00,0,'','','2016-09-08 01:24:59','2016-09-08 01:24:59'),(39,'05f6734195ad4ac4b49f394d6bba107b','shopapi','',1000.00,0,'','','2016-09-08 01:25:06','2016-09-08 01:25:06'),(40,'8aa1b5020d744126b135c3e7b026548b','shopapi','',300.00,0,'','','2016-09-08 01:25:14','2016-09-08 01:25:14'),(41,'895ae104f0f6461d90e77a944298739b','shopapi','',300.00,0,'','','2016-09-08 01:25:32','2016-09-08 01:25:32'),(42,'504f7f98de9c4e7e871d0425f14868d8','shopapi','',300.00,0,'','','2016-09-08 01:25:35','2016-09-08 01:25:35'),(43,'e68b494fffb641468ccb5ac57ee53356','shopapi','',300.00,0,'','','2016-09-08 01:25:37','2016-09-08 01:25:37'),(44,'3f55ea659aee411dbdba94c83ca5effb','shopapi','',300.00,0,'','','2016-09-08 01:25:39','2016-09-08 01:25:39'),(45,'4b423839de9a41c88f4335eed2ade69a','shopapi','',300.00,0,'','','2016-09-08 01:25:42','2016-09-08 01:25:42'),(46,'cdc526552bbd45d5afaa2a9153d5101d','shopapi','',300.00,0,'','','2016-09-08 01:25:44','2016-09-08 01:25:44'),(47,'3995b56441d94b5e9d517027ef44ecd1','shopapi','',300.00,0,'','','2016-09-08 01:25:47','2016-09-08 01:25:47'),(48,'a7a738a94c3a42618f2f520079b66d76','shopapi','',300.00,0,'','','2016-09-08 01:26:05','2016-09-08 01:26:05'),(49,'72244660828a440db108880a5dad75e8','shopapi','',300.00,0,'','','2016-09-08 01:26:50','2016-09-08 01:26:50'),(50,'2d5196509cda47638a7fb1ffa5823739','shopapi','',500.00,0,'','','2016-09-08 01:27:07','2016-09-08 01:27:07'),(51,'893da1d97d074ca9ba12030d850f64dc','shopapi','',300.00,0,'','','2016-09-08 01:27:25','2016-09-08 01:27:25'),(52,'afba3d924087473f990a2221af7d3f30','shopapi','',300.00,0,'','','2016-09-08 01:27:34','2016-09-08 01:27:34'),(53,'8816fe832fb446a284f0a442e5e9baa1','shopapi','',300.00,0,'','','2016-09-08 01:27:51','2016-09-08 01:27:51'),(54,'84200d2036f445f381e0e2458f2c8946','shopapi','',1000.00,0,'','','2016-09-08 02:12:55','2016-09-08 02:12:55'),(55,'4ad9f3b7f5c3455d8e3794ba716e1ba0','shopapi','',1000.00,0,'','','2016-09-08 02:13:07','2016-09-08 02:13:07'),(56,'dcc8a635172140398c8215b973025d82','shopapi','',300.00,0,'','','2016-09-08 02:13:19','2016-09-08 02:13:19'),(57,'fb0b5166f11542089aaaa20846c1a581','shopapi','',300.00,0,'','','2016-09-08 02:13:31','2016-09-08 02:13:31'),(58,'86084c52a8454347b9b22eacd4e82ce3','shopapi','',1000.00,0,'','','2016-09-09 06:37:28','2016-09-09 06:37:28'),(59,'26e6b931a0174fc7abeacee8e9fc42a5','shopapi','',1000.00,0,'','','2016-09-09 06:37:31','2016-09-09 06:37:31'),(60,'e2c092194b734d4baf71fd9439b2625f','shopapi','',1000.00,0,'','','2016-09-09 06:37:49','2016-09-09 06:37:49'),(61,'e13432e9956d42b598198ee0e9839ea5','shopapi','',1000.00,0,'','','2016-09-09 06:37:57','2016-09-09 06:37:57'),(62,'bc5fb258eec14cf5805d1dd4e6cec0e1','shopapi','',1000.00,0,'','','2016-09-09 06:38:07','2016-09-09 06:38:07'),(63,'bd1cd530fd2b459ba4b13c2c43947c62','shopapi','',300.00,0,'','','2016-09-09 06:38:29','2016-09-09 06:38:29'),(64,'b7564367d7c849ffa625ed0e11c6dc62','shopapi','',300.00,0,'','','2016-09-12 01:12:59','2016-09-12 01:12:59'),(65,'4e129a2299ba4d6c980460550b36d000','shopapi','',10000.00,0,'','','2016-09-12 01:22:49','2016-09-12 01:22:49'),(66,'6fabbd220ed74b92849255997ed54378','shopapi','',1.00,0,'','','2016-09-12 01:23:37','2016-09-12 01:23:37'),(67,'1db0d3d717d340119aa6983312f48d87','shopapi','',1.00,0,'','','2016-09-12 01:23:43','2016-09-12 01:23:43'),(68,'0ce3674edb0c4f32b97752a96cb86505','shopapi','',300.00,0,'','','2016-09-12 01:24:57','2016-09-12 01:24:57'),(69,'41d95308f2d54497bfadfa4aa0049673','shopapi','',500.00,0,'','','2016-09-12 01:25:04','2016-09-12 01:25:04'),(70,'c1464324f25d4477a2fe9e27f9e47edc','shopapi','',1000.00,0,'','','2016-09-12 01:25:43','2016-09-12 01:25:43'),(71,'f61d89ae73e04dc2abca9892bc5067b1','shopapi','',300.00,0,'','','2016-09-12 01:25:49','2016-09-12 01:25:49'),(72,'96786475a7b64220a759a124cd28790d','shopapi','',2.00,0,'','','2016-09-12 01:26:14','2016-09-12 01:26:14'),(73,'1c322474534046988b200cf070c593fc','shopapi','',0.01,0,'','','2016-09-12 01:27:33','2016-09-12 01:27:33'),(74,'a35b6f06deb04c95933f000e712bcebc','shopapi','',300.00,0,'','','2016-09-12 01:29:17','2016-09-12 01:29:17'),(75,'b958167d9ced46cb9fa7d522ccbed89b','shopapi','',300.00,0,'','','2016-09-12 02:04:00','2016-09-12 02:04:00'),(76,'1c013ef3b7ae49afba8b885d4d3c1d42','shopapi','',0.01,0,'','','2016-09-12 02:09:33','2016-09-12 02:09:33'),(77,'3da4e62333cf400aaca514d35a744e62','shopapi','',0.01,0,'','','2016-09-12 02:09:38','2016-09-12 02:09:38'),(78,'f38dcb6c9ce9425fbe4981f5a0551feb','shopapi','',0.01,0,'','','2016-09-12 02:10:06','2016-09-12 02:10:06'),(79,'106aca3e6b9a45f9b1a90c6eee10d490','shopapi','',0.01,0,'','','2016-09-12 02:10:15','2016-09-12 02:10:15'),(80,'3374a272de664865aff867f7f8e7521f','shopapi','',0.01,0,'','','2016-09-12 02:10:46','2016-09-12 02:10:46'),(81,'12289b0bd19a4a0bbbda4b8f1070278d','shopapi','',0.01,0,'','','2016-09-12 02:13:22','2016-09-12 02:13:22'),(82,'7f4cf04abe814371a486da96a3c5023f','shopapi','',0.01,0,'','','2016-09-12 02:19:51','2016-09-12 02:19:51'),(83,'36e9f578fcc4480db7017fe307321aaa','shopapi','',0.01,0,'','','2016-09-12 02:20:58','2016-09-12 02:20:58'),(84,'7edf23f035a04820ae4ad4a9db1b1f60','shopapi','',0.01,0,'','','2016-09-12 02:21:51','2016-09-12 02:21:51'),(85,'f92de2cc00644a8f9e65378c60327e82','shopapi','',0.01,0,'','','2016-09-12 02:22:42','2016-09-12 02:22:42'),(86,'e57f2cfa829a4627a75d2b79621196e0','shopapi','',0.01,0,'','','2016-09-12 02:22:52','2016-09-12 02:22:52'),(87,'560576c9f8014592b3765cc8818aa6df','shopapi','',0.01,0,'','','2016-09-12 02:24:36','2016-09-12 02:24:36'),(88,'361b4a0216c940d5ac0bbc90ea266af2','shopapi','',0.01,0,'','','2016-09-12 02:24:58','2016-09-12 02:24:58'),(89,'f8265a2ad8ef43fd87c5ccb32fdbbd52','shopapi','',0.01,0,'','','2016-09-12 02:26:28','2016-09-12 02:26:28'),(90,'96ec97a40cbd4662978e0cf5b1e8ce5f','shopapi','',0.01,0,'','','2016-09-12 02:27:04','2016-09-12 02:27:04'),(91,'c198980f476749caae3d94259522390c','shopapi','',0.01,0,'','','2016-09-12 02:27:23','2016-09-12 02:27:23'),(92,'95672f4c4daf410c8d2cf23b58beba55','shopapi','',0.01,0,'','','2016-09-12 02:27:34','2016-09-12 02:27:34'),(93,'4bfb0bd8d3ea458aa7edd05dbefd7e71','shopapi','',0.01,0,'','','2016-09-12 09:47:51','2016-09-12 09:47:51'),(94,'eb7651d8c71d4976af78de4c70791d19','shopapi','',0.01,0,'','','2016-09-12 09:50:13','2016-09-12 09:50:13'),(95,'5e368dbc6ee7441f99576fc65e1c1bfa','shopapi','',0.01,0,'','','2016-09-13 01:55:17','2016-09-13 01:55:17'),(96,'48a7e9c984104bb8a1ce2875bd5c40b3','shopapi','',0.01,0,'','','2016-09-13 01:56:45','2016-09-13 01:56:45'),(97,'430614d85c2e42ba98e3c0536a98b9b6','shopapi','',0.01,0,'','','2016-09-13 02:16:44','2016-09-13 02:16:44'),(98,'ec5d29a4998347deae6b9874cc6be24b','shopapi','',0.01,0,'','','2016-09-13 02:28:15','2016-09-13 02:28:15'),(99,'f1ec2baa9c514f90864daca5666764b6','shopapi','',0.01,0,'','','2016-09-13 02:30:06','2016-09-13 02:30:06'),(100,'da6c2331b50c44b19fa6b45abc9058a7','shopapi','',0.01,0,'','','2016-09-13 02:30:56','2016-09-13 02:30:56'),(101,'49f77567db7e4a709b953fcd1c172665','shopapi','',0.01,0,'','','2016-09-13 02:32:26','2016-09-13 02:32:26'),(102,'2d20102f429a46bc8b0fbaee97862770','shopapi','',0.01,0,'','','2016-09-13 02:43:57','2016-09-13 02:43:57'),(103,'7037180f4ba84e50a7d0171b1c5e113d','shopapi','',0.01,0,'','','2016-09-13 03:25:58','2016-09-13 03:25:58'),(104,'aaff837bc661445b8ce1b228ea70bc8b','shopapi','',0.01,0,'','','2016-09-13 03:32:30','2016-09-13 03:32:30'),(105,'5f666318e32a477aa98d6ed9f22dea56','shopapi','',0.01,0,'','','2016-09-13 03:34:19','2016-09-13 03:34:19'),(106,'f729e94eeae14a5998378307b1bfe3ec','shopapi','',0.01,0,'','','2016-09-13 03:35:25','2016-09-13 03:35:25'),(107,'583a497d66344e7ba2c35b65b7ea2dc0','shopapi','',0.01,0,'','','2016-09-13 04:18:53','2016-09-13 04:18:53'),(108,'7b250c80904a4d64b63dd61199481058','shopapi','',0.01,0,'','','2016-09-13 06:15:17','2016-09-13 06:15:17'),(109,'4fdd9a83dbf94b49a3a06316fa0fd38c','shopapi','',0.01,0,'','','2016-09-13 09:51:28','2016-09-13 09:51:28'),(110,'19eeacd88ab64145b45156b5dc2f3d84','shopapi','',0.01,0,'','','2016-09-18 05:30:28','2016-09-18 05:30:28'),(111,'eb48f7888f004ba28c83c15205d9f004','shopapi','',0.01,0,'','','2016-09-18 05:31:00','2016-09-18 05:31:00'),(112,'19eacd5e4c6f4ca28e0c0e9832310e93','shopapi','',0.01,0,'','','2016-09-19 01:51:48','2016-09-19 01:51:48'),(113,'13820c324627404fa1eb687807ad1725','shopapi','',0.01,0,'','','2016-09-19 01:51:52','2016-09-19 01:51:52'),(114,'5fb5add4de4046cab2e7cfde0f8fdd2c','shopapi','',0.01,0,'','','2016-09-19 01:51:59','2016-09-19 01:51:59'),(115,'6733b3ac6a714c089379b02bb5302b69','shopapi','',0.01,0,'','','2016-09-19 01:52:12','2016-09-19 01:52:12'),(116,'280b0df6c4474435ad0d509cdda28a60','shopapi','',0.01,0,'','','2016-09-19 06:33:03','2016-09-19 06:33:03'),(117,'d144fccd8ad5476c9bcc41d2315f91f3','shopapi','',0.01,0,'','','2016-09-19 06:33:12','2016-09-19 06:33:12'),(118,'c81089846de843b89cba4b696d923cb2','shopapi','',0.01,0,'','','2016-09-19 08:06:13','2016-09-19 08:06:13');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'shopapi','86d1232cef434ffa8e30c1d97cba6f11',0.0000000000,0.0000000000,'尽量','555','某',0,NULL,'{\"name\":\"尽量\",\"mobile_phone\":\"555\",\"select_location\":\"选择地区\"}','2016-09-06 09:12:36','2016-09-06 09:12:36'),(2,'shopapi','2bd209e36084479cbbb7258f12fce02f',118.1606062083,24.6521140373,'嘻嘻嘻','545','吧',0,NULL,'{\"name\":\"嘻嘻嘻\",\"mobile_phone\":\"545\",\"select_location\":\"新恒源超市\"}','2016-09-06 09:18:34','2016-09-06 09:18:34'),(3,'shopapi','75e8f083ce674590bc8380ec0679e742',118.1615240000,24.6530590000,'黄','13609560003','',0,NULL,'{\"name\":\"黄\",\"mobile_phone\":\"13609560003\",\"select_location\":\"安思通(厦门)制动系统有限公司\"}','2016-09-07 03:08:31','2016-09-07 03:08:31'),(4,'shopapi','d2a37b2a259d486b825fef7df40b8660',118.1606062083,24.6521140373,'JJ','55555','4554545',0,NULL,'{\"name\":\"JJ\",\"mobile_phone\":\"55555\",\"select_location\":\"新恒源超市\"}','2016-09-07 04:49:25','2016-09-21 07:02:50'),(5,'shopapi','ebe6a2245e6e4ece888688f81beaa4df',118.1616330000,24.6531940000,'斤斤计较','1223334','啦啦啦',0,NULL,'{\"name\":\"斤斤计较\",\"mobile_phone\":\"1223334\",\"select_location\":\"安思通(厦门)制动系统有限公司\"}','2016-09-12 03:34:02','2016-09-12 03:34:02'),(6,'shopapi','8c6ba245b64a4bd282d1ddb52156372b',121.5867670576,31.2078014072,'宋伦','13641677914','上海市浦东新区张江',0,NULL,'{\"name\":\"宋伦\",\"mobile_phone\":\"13641677914\",\"select_location\":\"胡姬花园\"}','2016-09-12 03:40:00','2016-09-12 03:40:00'),(7,'shopapi','4f69bebe884248d2a72fb13a4fffc989',0.0000000000,0.0000000000,'aa','11','11',0,NULL,'{\"name\":\"aa\",\"mobile_phone\":\"11\",\"select_location\":\"选择地区\"}','2016-09-12 06:44:02','2016-09-12 06:44:02'),(8,'shopapi','29df44dc59f14e6a89c4fbd66d9a4bea',0.0000000000,0.0000000000,'777','777','7777',0,NULL,'{\"name\":\"777\",\"mobile_phone\":\"777\",\"select_location\":\"选择地区\"}','2016-09-12 09:03:15','2016-09-12 09:03:15'),(9,'shopapi','99076c05f63c41df8177f5da17c7e159',114.4147300000,23.1040250000,'我','13641677914','上海啊',0,NULL,'{\"name\":\"我\",\"mobile_phone\":\"13641677914\",\"select_location\":\"华贸天地\"}','2016-09-13 09:24:36','2016-09-13 09:24:36'),(10,'shopapi','2f56a1b693894a49af5a667daeb27c37',121.4079130000,31.2070160000,'李金','18636589658','咯哦哦目录吐了咯啦',0,NULL,'{\"name\":\"李金\",\"mobile_phone\":\"18636589658\",\"select_location\":\"虹桥南丰城\"}','2016-09-13 10:12:59','2016-09-13 10:12:59'),(11,'shopapi','8a4a1879c2ce401f98fb7da0b703aa1d',121.5866681502,31.2082164454,'测试','1921615913','测试',0,NULL,'{\"name\":\"测试\",\"mobile_phone\":\"1921615913\",\"select_location\":\"胡姬花园\"}','2016-09-18 05:25:33','2016-09-18 05:25:33'),(12,'shopapi','2bd209e36084479cbbb7258f12fce02f',118.1461310000,24.6572470000,'哦名哦','1161616616','秘密哦哦哦哦哦',0,NULL,'{\"name\":\"哦名哦\",\"mobile_phone\":\"1161616616\",\"select_location\":\"一百分教育\"}','2016-09-19 07:53:29','2016-09-19 07:53:29');
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
INSERT INTO `category` VALUES (1,'shopapi','家常用餐','家常菜','../static/area_1.png','home','','2016-09-06 03:41:00','2016-09-06 03:41:00'),(2,'shopapi','系列套餐','私人订制','../static/area_2.png','home','','2016-09-06 03:41:00','2016-09-06 03:41:00'),(3,'shopapi','私人订制','家常菜','../static/area_3.png','home','','2016-09-06 03:41:00','2016-09-06 03:41:00'),(4,'shopapi','优惠','优惠','../../static/mall-icon1.png','mall','','2016-09-06 03:41:35','2016-09-06 03:41:35'),(5,'shopapi','促销','促销','../static/mall-icon2.png','mall','','2016-09-06 03:41:35','2016-09-06 03:41:35'),(6,'shopapi','海鲜','海鲜','../static/mall-icon3.png','mall','','2016-09-06 03:41:36','2016-09-06 03:41:36'),(7,'shopapi','食材','食材','../static/mall-icon4.png','mall','','2016-09-06 03:41:36','2016-09-13 10:48:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (3,'8c6ba245b64a4bd282d1ddb52156372b','shopapi','','http://api.huwolai.com/upload/merchant/2bd209e36084479cbbb7258f12fce02f','',2,5,'','{\"name\":\"哈哈\",\"open_id\":\"2bd209e36084479cbbb7258f12fce02f\",\"goodat\":\"擅长：粤菜\"}','2016-09-12 02:40:21','2016-09-12 02:40:21'),(5,'8c6ba245b64a4bd282d1ddb52156372b','shopapi','','http://api.huwolai.com/upload/merchant/d2a37b2a259d486b825fef7df40b8660','',2,4,'','{\"name\":\"fgg\",\"open_id\":\"d2a37b2a259d486b825fef7df40b8660\",\"goodat\":\"擅长：bdfg\"}','2016-09-12 02:53:43','2016-09-12 02:53:43'),(6,'8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','','http://api.huwolai.com/upload/merchant/86d1232cef434ffa8e30c1d97cba6f11','',2,2,'','{\"name\":\"朱军\",\"open_id\":\"86d1232cef434ffa8e30c1d97cba6f11\",\"goodat\":\"擅长：粤菜\"}','2016-09-12 02:54:31','2016-09-12 02:54:31'),(9,'ebe6a2245e6e4ece888688f81beaa4df','shopapi','','http://api.huwolai.com/upload/merchant/8a4a1879c2ce401f98fb7da0b703aa1d','',2,6,'','{\"name\":\"涛\",\"open_id\":\"8a4a1879c2ce401f98fb7da0b703aa1d\",\"goodat\":\"擅长：湘菜\"}','2016-09-12 06:57:20','2016-09-12 06:57:20');
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
INSERT INTO `gorp_migrations` VALUES ('20160910.sql','2016-09-10 15:20:00'),('init.sql','2016-09-05 18:31:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (1,'默认商户','shopapi','75b3be97d0b749768bcb272e4684786a','',0.0000000000,0.0000000000,'',0,3,1,'default','','2016-09-06 03:47:58','2016-09-21 01:28:06'),(2,'朱军','shopapi','86d1232cef434ffa8e30c1d97cba6f11','18659330001',0.0000000000,0.0000000000,'',5000,2,1,'','{\"name\":\"朱军\",\"sex\":\"男\",\"goodCooks\":[\"粤菜\",\"苏菜\",\"闽菜\"],\"video_url\":\"\"}','2016-09-06 08:21:28','2016-09-22 02:28:34'),(3,'马红涛','shopapi','ebe6a2245e6e4ece888688f81beaa4df','18659330002',0.0000000000,0.0000000000,'',10000,0,0,'','','2016-09-06 09:06:20','2016-09-06 09:06:20'),(4,'fgg','shopapi','d2a37b2a259d486b825fef7df40b8660','18659330003',118.1478061130,24.5115295483,'',10000,1,1,'','{\"name\":\"fgg\",\"sex\":\"男\",\"goodCooks\":[\"苏菜\",\"闽菜\"],\"video_url\":\"111\"}','2016-09-06 09:19:57','2016-09-22 02:22:56'),(6,'涛','shopapi','8a4a1879c2ce401f98fb7da0b703aa1d','15921615913',121.5855579758,31.2098862235,'',100000,5,1,'','{\"name\":\"涛\",\"sex\":\"男\",\"goodCooks\":[\"湘菜\"],\"video_url\":\"\"}','2016-09-12 03:28:13','2016-09-22 02:28:38'),(7,'流量了','shopapi','a4fa102b921341e2bfec50f53b69a129','18659330005',118.1606062083,24.6521140373,'',15000,0,1,'','','2016-09-12 03:56:10','2016-09-12 03:58:40'),(8,'11','shopapi','4fa0a626c6a640898ff56064df938f22','15921615911',0.0000000000,0.0000000000,'',22000,0,1,'','','2016-09-12 04:02:46','2016-09-12 04:03:23'),(9,'说了','shopapi','8c6ba245b64a4bd282d1ddb52156372b','13641677914',0.0000000000,0.0000000000,'',11000,0,1,'','{\"name\":\"说了\",\"sex\":\"男\",\"goodCooks\":[\"粤菜\"],\"video_url\":\"www.baidu.com\"}','2016-09-12 04:11:13','2016-09-22 02:28:43'),(10,'哈哈','shopapi','2bd209e36084479cbbb7258f12fce02f','15280207045',0.0000000000,0.0000000000,'',4000000,0,1,'','','2016-09-20 08:41:38','2016-09-20 08:42:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_imgs`
--

LOCK TABLES `merchant_imgs` WRITE;
/*!40000 ALTER TABLE `merchant_imgs` DISABLE KEYS */;
INSERT INTO `merchant_imgs` VALUES (1,'shopapi','86d1232cef434ffa8e30c1d97cba6f11',2,'cradId','/images/201609/10f2fd7abffd40218bafac30d1913d6b',''),(2,'shopapi','86d1232cef434ffa8e30c1d97cba6f11',2,'chefId','/images/201609/368656d7c44140a0969ca5940cbec2a0',''),(3,'shopapi','86d1232cef434ffa8e30c1d97cba6f11',2,'healthId','/images/201609/456fa00b83b74dd78bd5ad0dd80a2b33',''),(4,'shopapi','ebe6a2245e6e4ece888688f81beaa4df',3,'cradId','/images/201609/19bf749a6fc044b4a8f019a04e0cdd93',''),(5,'shopapi','ebe6a2245e6e4ece888688f81beaa4df',3,'chefId','/images/201609/1ab8fd151e4d4b51af6dd65442d34c0f',''),(6,'shopapi','ebe6a2245e6e4ece888688f81beaa4df',3,'healthId','/images/201609/102b04f273374200b0ee6385f78aa325',''),(10,'shopapi','2bd209e36084479cbbb7258f12fce02f',5,'cradId','/images/201609/56de0c31bad94358ba6ebe759123689c',''),(11,'shopapi','2bd209e36084479cbbb7258f12fce02f',5,'chefId','/images/201609/5f5c5474e4d941f7ad9224fc175ae0e5',''),(12,'shopapi','2bd209e36084479cbbb7258f12fce02f',5,'healthId','/images/201609/70b69a93cee64243874a7ddcbe006e6d',''),(13,'shopapi','2bd209e36084479cbbb7258f12fce02f',5,'works','/images/201609/8e3a0af3d111409287db8d2bf5f8f74b',''),(14,'shopapi','2bd209e36084479cbbb7258f12fce02f',5,'works','/images/201609/a5fe130285de4d7a8b1a19a0473af6a3',''),(15,'shopapi','2bd209e36084479cbbb7258f12fce02f',5,'works','/images/201609/3cee547e486d4bcdbbabbb92bbd65f4a',''),(16,'shopapi','86d1232cef434ffa8e30c1d97cba6f11',2,'works','/images/201609/d0fa1b165c43455bbd09cf14d7a3f7c1',''),(17,'shopapi','86d1232cef434ffa8e30c1d97cba6f11',2,'works','/images/201609/e2181dd578eb4ed4a7d6378d374aefc4',''),(18,'shopapi','86d1232cef434ffa8e30c1d97cba6f11',2,'works','/images/201609/dd9a79cd5e504f7d8494f333392ad583',''),(19,'shopapi','86d1232cef434ffa8e30c1d97cba6f11',2,'works','/images/201609/d0fa1b165c43455bbd09cf14d7a3f7c1',''),(20,'shopapi','86d1232cef434ffa8e30c1d97cba6f11',2,'works','/images/201609/e2181dd578eb4ed4a7d6378d374aefc4',''),(21,'shopapi','86d1232cef434ffa8e30c1d97cba6f11',2,'works','/images/201609/dd9a79cd5e504f7d8494f333392ad583',''),(22,'shopapi','86d1232cef434ffa8e30c1d97cba6f11',2,'works','/images/201609/8c7d34d8245c4ebfae35546d0af39546',''),(23,'shopapi','2bd209e36084479cbbb7258f12fce02f',5,'works','/images/201609/8e3a0af3d111409287db8d2bf5f8f74b',''),(24,'shopapi','2bd209e36084479cbbb7258f12fce02f',5,'works','/images/201609/a5fe130285de4d7a8b1a19a0473af6a3',''),(25,'shopapi','2bd209e36084479cbbb7258f12fce02f',5,'works','/images/201609/3cee547e486d4bcdbbabbb92bbd65f4a',''),(26,'shopapi','2bd209e36084479cbbb7258f12fce02f',5,'works','/images/201609/04e83f5724e843ec912be0376fa9e9c0',''),(40,'shopapi','a4fa102b921341e2bfec50f53b69a129',7,'cradId','/images/201609/55302fd83d5644f7a94028b19b2697c0',''),(41,'shopapi','a4fa102b921341e2bfec50f53b69a129',7,'chefId','/images/201609/1d602a0b89af4da08d40278d04a35309',''),(42,'shopapi','a4fa102b921341e2bfec50f53b69a129',7,'healthId','/images/201609/e41cb27ea41841178796c0c8aa18f2c3',''),(43,'shopapi','a4fa102b921341e2bfec50f53b69a129',7,'','/images/201609/53123fef20d04a3ab8a88e6ea53b9fc9',''),(44,'shopapi','4fa0a626c6a640898ff56064df938f22',8,'cradId','/images/201609/826899881dfc43aeb185181cc1eb52ca',''),(45,'shopapi','4fa0a626c6a640898ff56064df938f22',8,'chefId','/images/201609/4adb2a9a72ab45078aef5c563a396bed',''),(46,'shopapi','4fa0a626c6a640898ff56064df938f22',8,'healthId','/images/201609/d998dad74dc24710b14658488d3e70ce',''),(47,'shopapi','8c6ba245b64a4bd282d1ddb52156372b',9,'cradId','/images/201609/99095e2541f243258370ac9132f7f9eb',''),(48,'shopapi','8c6ba245b64a4bd282d1ddb52156372b',9,'chefId','/images/201609/0675bdb8b19947adbe8ac6e68c5881b0',''),(49,'shopapi','8c6ba245b64a4bd282d1ddb52156372b',9,'healthId','/images/201609/690860a7dcdc46bdaf6844146898bf5f',''),(50,'shopapi','8c6ba245b64a4bd282d1ddb52156372b',9,'works','/images/201609/481141c6866d42cf9f6a5c253621369f',''),(51,'shopapi','8c6ba245b64a4bd282d1ddb52156372b',9,'works','/images/201609/1143a2a0841c4d9394b6fe3c1c955936',''),(52,'shopapi','8c6ba245b64a4bd282d1ddb52156372b',9,'works','/images/201609/ecf30b15a7514aa787ad3651aec2680b',''),(115,'shopapi','8a4a1879c2ce401f98fb7da0b703aa1d',6,'works','/images/201609/3ae5d629387c4f899ca0d5d7e42500f6',''),(116,'shopapi','8a4a1879c2ce401f98fb7da0b703aa1d',6,'works','/images/201609/605be952981748b286d8af18a6ef246f',''),(117,'shopapi','8a4a1879c2ce401f98fb7da0b703aa1d',6,'works','/images/201609/8e58c53a12bc485da3150bb29b40238f',''),(118,'shopapi','2bd209e36084479cbbb7258f12fce02f',10,'cradId','/images/201609/68e2613978d14662b5de7213ba467a42',''),(119,'shopapi','2bd209e36084479cbbb7258f12fce02f',10,'chefId','/images/201609/21faebf46e0742df8f30ae14363f3040',''),(120,'shopapi','2bd209e36084479cbbb7258f12fce02f',10,'healthId','/images/201609/147a17e53f6b48e78a349496195107c5',''),(121,'shopapi','d2a37b2a259d486b825fef7df40b8660',4,'works','/images/201609/ed9d7ca522364b5ab6d9c75b6ccf9d58',''),(122,'shopapi','d2a37b2a259d486b825fef7df40b8660',4,'works','/images/201609/6409a90b4cd8445898f2c86064022d96',''),(123,'shopapi','d2a37b2a259d486b825fef7df40b8660',4,'works','/images/201609/e6347750a7654cd5bc396fcedd80d585','');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_prod`
--

LOCK TABLES `merchant_prod` WRITE;
/*!40000 ALTER TABLE `merchant_prod` DISABLE KEYS */;
INSERT INTO `merchant_prod` VALUES (3,'shopapi',1,3,'','','2016-09-06 08:10:21','2016-09-06 08:10:21'),(4,'shopapi',1,4,'','','2016-09-06 08:57:30','2016-09-06 08:57:30'),(5,'shopapi',2,5,'','','2016-09-06 08:58:17','2016-09-06 08:58:17'),(6,'shopapi',4,6,'','','2016-09-06 09:20:37','2016-09-06 09:20:37'),(7,'shopapi',5,7,'','','2016-09-07 03:02:24','2016-09-07 03:02:24'),(8,'shopapi',1,8,'','','2016-09-07 06:11:40','2016-09-07 06:11:40'),(9,'shopapi',1,9,'','','2016-09-07 06:18:49','2016-09-07 06:18:49'),(10,'shopapi',5,10,'','','2016-09-07 06:22:16','2016-09-07 06:22:16'),(11,'shopapi',1,11,'','','2016-09-07 06:40:01','2016-09-07 06:40:01'),(12,'shopapi',1,12,'','','2016-09-07 06:44:08','2016-09-07 06:44:08'),(13,'shopapi',3,13,'','','2016-09-07 06:46:13','2016-09-07 06:46:13'),(14,'shopapi',1,14,'','','2016-09-09 06:33:01','2016-09-09 06:33:01'),(15,'shopapi',1,15,'','','2016-09-09 07:57:08','2016-09-09 07:57:08'),(16,'shopapi',2,16,'','','2016-09-10 08:57:22','2016-09-10 08:57:22'),(17,'shopapi',2,17,'','','2016-09-10 09:02:36','2016-09-10 09:02:36'),(18,'shopapi',5,18,'','','2016-09-12 03:02:08','2016-09-12 03:02:08'),(19,'shopapi',6,19,'','','2016-09-12 03:31:10','2016-09-12 03:31:10'),(20,'shopapi',7,20,'','','2016-09-12 03:58:40','2016-09-12 03:58:40'),(21,'shopapi',8,21,'','','2016-09-12 04:03:23','2016-09-12 04:03:23'),(22,'shopapi',9,22,'','','2016-09-12 04:11:32','2016-09-12 04:11:32'),(23,'shopapi',6,23,'','','2016-09-18 06:32:06','2016-09-18 06:32:06'),(24,'shopapi',10,24,'','','2016-09-20 08:42:53','2016-09-20 08:42:53'),(25,'shopapi',4,25,'','','2016-09-21 01:31:10','2016-09-21 01:31:10'),(26,'shopapi',1,26,'','','2016-09-21 07:38:38','2016-09-21 07:38:38'),(27,'shopapi',1,27,'','','2016-09-22 06:44:45','2016-09-22 06:44:45'),(28,'shopapi',1,28,'','','2016-09-22 06:51:13','2016-09-22 06:51:13'),(29,'shopapi',1,29,'','','2016-09-22 07:57:14','2016-09-22 07:57:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_service_time`
--

LOCK TABLES `merchant_service_time` WRITE;
/*!40000 ALTER TABLE `merchant_service_time` DISABLE KEYS */;
INSERT INTO `merchant_service_time` VALUES (1,2,'10:00'),(2,2,'11:00'),(3,2,'12:00'),(4,2,'13:00'),(5,2,'14:00'),(6,2,'15:00'),(13,4,'10:00'),(14,4,'11:00'),(15,4,'12:00'),(16,4,'13:00'),(17,4,'14:00'),(18,4,'15:00'),(19,4,'21:00'),(20,9,'12:00'),(21,9,'15:00'),(22,9,'16:00'),(23,9,'19:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'201696171124837356105','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','86d1232cef434ffa8e30c1d97cba6f11','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-06 09:11:24','2016-09-06 09:15:06'),(2,'2016961719327628467','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-06 09:19:32','2016-09-06 09:45:49'),(3,'201696172223473690493','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-06 09:22:23','2016-09-06 09:45:41'),(4,'201696172459391138268','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-06 09:24:59','2016-09-06 09:45:37'),(5,'20169617254057096967','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-06 09:25:40','2016-09-06 09:45:33'),(6,'20169617269608907986','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-06 09:26:09','2016-09-06 10:00:00'),(7,'20169617274160318622','','','0','','',0.00,0.00,0.00,1000.00,500.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-06 09:27:41','2016-09-06 09:45:26'),(8,'201696173628795854905','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-06 09:36:28','2016-09-06 09:45:23'),(9,'201696173643219486952','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-06 09:36:43','2016-09-06 09:45:20'),(10,'20169617455692782866','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-06 09:45:56','2016-09-06 10:20:00'),(11,'201696174611313716627','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-06 09:46:11','2016-09-06 10:20:00'),(12,'201696174611672929129','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-06 09:46:11','2016-09-06 10:20:00'),(13,'201696174634167686993','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-06 09:46:34','2016-09-06 10:20:00'),(14,'20169793939299892001','','95a0b50e5df84feda372595f8bbc1183','2','吧','',0.00,0.00,158.00,158.00,158.00,158.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,2,0.00,'','','','','2016-09-07 01:39:39','2016-09-07 02:10:00'),(15,'2016979431727236682','','6ef2ee861d174033b2e427bb431cb75f','2','吧','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','d2a37b2a259d486b825fef7df40b8660','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-07 01:43:01','2016-09-07 02:15:00'),(16,'2016971171585580823','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','75e8f083ce674590bc8380ec0679e742','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-07 03:07:01','2016-09-07 03:40:00'),(17,'20169711581955293499','','51807b1feb624693ba62fb1c58330208','3','','',0.00,0.00,500.00,1000.00,500.00,500.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','75e8f083ce674590bc8380ec0679e742','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-07 03:58:01','2016-09-07 04:30:00'),(18,'201697115845154715279','','714ffb4a120b48fdb49d58161d1b343e','2','吧','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-07 03:58:45','2016-09-07 04:30:00'),(19,'201697115928532132539','','0aec91fc782f427b8489437f61a8469b','2','吧','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-07 03:59:28','2016-09-07 04:30:00'),(20,'201697115933867611986','','e3d5cc5d88e246a9abeeea99ec9fddf3','2','吧','',0.00,0.00,500.00,1000.00,500.00,500.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-07 03:59:33','2016-09-07 04:30:00'),(21,'201697122524760937','','f77cb1357dd84ab3aa4fe2b9147ee146','2','吧','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-07 04:02:05','2016-09-07 04:35:00'),(22,'20169712497620458034','','fcc05cad6c074988b8017966045a7620','4','','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','d2a37b2a259d486b825fef7df40b8660','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-07 04:49:07','2016-09-07 05:20:00'),(23,'20169712504924098594','','0f622893e010470e8f6de2024ed03aa9','4','','',0.00,0.00,158.00,158.00,158.00,158.00,'5','2bd209e36084479cbbb7258f12fce02f','哦哦','d2a37b2a259d486b825fef7df40b8660','shopapi','预定厨师',0.00000000,2,2,0.00,'','','','','2016-09-07 04:50:04','2016-09-07 05:25:00'),(24,'201697125014519430101','','f208d9ed01ff4ed1bb0f3abd5d3ceac6','2','吧','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-07 04:50:14','2016-09-07 05:25:00'),(25,'201697142442452385711','','','0','','',0.00,0.00,0.00,8888.00,6666.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-07 06:24:42','2016-09-07 06:55:00'),(26,'201697144449223629947','','','0','','',0.00,0.00,0.00,666.00,55.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-07 06:44:49','2016-09-07 07:15:00'),(27,'201697145741939968061','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','d2a37b2a259d486b825fef7df40b8660','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-07 06:57:41','2016-09-07 07:30:00'),(28,'20169714588679698105','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','d2a37b2a259d486b825fef7df40b8660','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-07 06:58:08','2016-09-07 07:30:00'),(29,'20169892635311155300','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','陈根发','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-08 01:26:35','2016-09-08 02:00:00'),(30,'20169892652235264041','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-08 01:26:52','2016-09-08 02:00:00'),(31,'201699143257884525859','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','86d1232cef434ffa8e30c1d97cba6f11','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-09 06:32:57','2016-09-09 07:05:00'),(32,'201699143420919638115','','4d8ff8185a1e4a19b6d79087a7906ed6','4','','',0.00,0.00,500.00,1000.00,500.00,500.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','d2a37b2a259d486b825fef7df40b8660','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-09 06:34:20','2016-09-09 07:05:00'),(33,'201699143526706173795','','601ed234e9cc4d7d892555b289e6e8cc','4','','',0.00,0.00,500.00,1000.00,500.00,500.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','d2a37b2a259d486b825fef7df40b8660','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-09 06:35:26','2016-09-09 07:10:00'),(34,'201699143646187452826','','5d8a32731d964072aeb67b6abf38a722','3','','',0.00,0.00,500.00,1000.00,500.00,500.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','75e8f083ce674590bc8380ec0679e742','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-09 06:36:46','2016-09-09 07:10:00'),(35,'201699144034657066557','','','0','','',0.00,0.00,0.00,68.00,68.00,0.00,'3','ebe6a2245e6e4ece888688f81beaa4df','马红涛','75e8f083ce674590bc8380ec0679e742','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-09 06:40:34','2016-09-09 07:15:00'),(36,'201691017345872571878','','','0','','',0.00,0.00,0.00,178.00,178.00,0.00,'2','86d1232cef434ffa8e30c1d97cba6f11','朱军','75b3be97d0b749768bcb272e4684786a','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-10 09:03:45','2016-09-10 09:35:00'),(37,'2016911215650577243623','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','86bd9576a18d493ead9b5b6e945f4f04','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-11 13:56:50','2016-09-11 14:30:00'),(38,'20169112157640183014','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','86bd9576a18d493ead9b5b6e945f4f04','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-11 13:57:06','2016-09-11 14:30:00'),(39,'2016912102829619269978','','','0','','',0.00,0.00,0.00,666.00,55.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','d2a37b2a259d486b825fef7df40b8660','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-12 02:28:29','2016-09-12 03:00:00'),(40,'20169121136574668389','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','d2a37b2a259d486b825fef7df40b8660','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-12 03:03:06','2016-09-12 03:35:00'),(41,'2016912112510389214634','','','0','','',0.00,0.00,0.00,168.00,168.00,0.00,'2','86d1232cef434ffa8e30c1d97cba6f11','朱军','4f69bebe884248d2a72fb13a4fffc989','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-12 03:25:10','2016-09-12 04:00:00'),(42,'2016912113315418261913','','70b6216e64894f558b5b3e4b07329ad7','5','啦啦啦','',0.00,0.00,240.00,240.00,240.00,240.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','ebe6a2245e6e4ece888688f81beaa4df','shopapi','预定厨师',0.00000000,2,2,0.00,'','','','','2016-09-12 03:33:15','2016-09-12 04:05:00'),(43,'2016912113832456087239','','268562d3d72347058c86ef03cb18f8d5','5','啦啦啦','',0.00,0.00,158.00,158.00,158.00,158.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','ebe6a2245e6e4ece888688f81beaa4df','shopapi','预定厨师',0.00000000,2,2,0.00,'','','','','2016-09-12 03:38:32','2016-09-12 04:10:00'),(44,'201691211397712504472','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','fgg','8c6ba245b64a4bd282d1ddb52156372b','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-12 03:39:07','2016-09-12 04:10:00'),(45,'2016912114018861838198','','2dfcda2b121f4c5780edbee64ba33ddd','6','上海市浦东新区张江','',0.00,0.00,158.00,158.00,158.00,158.00,'6','8a4a1879c2ce401f98fb7da0b703aa1d','涛','8c6ba245b64a4bd282d1ddb52156372b','shopapi','预定厨师',0.00000000,2,2,0.00,'','','','','2016-09-12 03:40:18','2016-09-12 04:15:00'),(46,'2016912114139825719003','','4f1ca3ee161f4881861300223c6007f5','6','上海市浦东新区张江','',0.00,0.00,168.00,168.00,168.00,168.00,'2','86d1232cef434ffa8e30c1d97cba6f11','朱军','8c6ba245b64a4bd282d1ddb52156372b','shopapi','预定厨师',0.00000000,2,2,0.00,'','','','','2016-09-12 03:41:39','2016-09-12 04:15:00'),(47,'20169121222561405357','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','4f69bebe884248d2a72fb13a4fffc989','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-12 04:02:25','2016-09-12 04:35:00'),(48,'201691212238464849558','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','4f69bebe884248d2a72fb13a4fffc989','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-12 04:02:38','2016-09-12 04:35:00'),(49,'20169121278150432594','','c27d84d9c4f64c7592d8c187e1c00853','4','','',0.00,0.00,158.00,158.00,158.00,158.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','d2a37b2a259d486b825fef7df40b8660','shopapi','预定厨师',0.00000000,2,2,0.00,'','','','','2016-09-12 04:07:08','2016-09-12 04:40:00'),(50,'2016912121217403419818','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'9','8c6ba245b64a4bd282d1ddb52156372b','说了','4f69bebe884248d2a72fb13a4fffc989','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-12 04:12:17','2016-09-12 04:45:00'),(51,'201691213241051039802','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 05:24:10','2016-09-12 05:55:00'),(52,'2016912132446439919430','','eb35a801be83468b826415dec85ab6c4','4','','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','d2a37b2a259d486b825fef7df40b8660','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-12 05:24:46','2016-09-12 05:55:00'),(53,'2016912132734433483132','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','4f69bebe884248d2a72fb13a4fffc989','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-12 05:27:34','2016-09-12 06:00:00'),(54,'2016912133340185224345','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 05:33:40','2016-09-12 06:05:00'),(55,'2016912133734282947255','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 05:37:34','2016-09-12 06:10:00'),(56,'2016912134151170361203','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','4f69bebe884248d2a72fb13a4fffc989','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-12 05:41:51','2016-09-12 06:15:00'),(57,'201691213490964343700','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 05:49:00','2016-09-12 06:20:00'),(58,'201691214104613855983','','890802214d004ad2ace035ec0f89a631','6','上海市浦东新区张江','',0.00,0.00,333.00,444.00,333.00,333.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,1,1,0.00,'','','','','2016-09-12 06:10:04','2016-09-12 08:48:00'),(59,'2016912142119551648890','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 06:21:19','2016-09-12 06:55:00'),(60,'201691214229117295167','','124119bb394f4c0aa953ec5b1a063a30','6','上海市浦东新区张江','',0.00,0.00,333.00,444.00,333.00,333.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,2,0.00,'','','','','2016-09-12 06:22:09','2016-09-12 06:55:00'),(61,'2016912142416769881516','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 06:24:16','2016-09-12 06:55:00'),(62,'201691214271117513331','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 06:27:11','2016-09-12 07:00:00'),(63,'2016912142730644568249','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 06:27:30','2016-09-12 07:00:00'),(64,'2016912142812294626234','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 06:28:12','2016-09-12 07:00:00'),(65,'2016912142952353304437','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 06:29:52','2016-09-12 07:00:00'),(66,'201691214300851012982','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 06:30:00','2016-09-12 07:00:00'),(67,'2016912144347467853311','','','0','','',0.00,0.00,0.00,1000.00,500.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','4f69bebe884248d2a72fb13a4fffc989','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-12 06:43:47','2016-09-12 07:15:00'),(68,'2016912144354678200171','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 06:43:54','2016-09-12 07:15:00'),(69,'2016912144415707417058','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 06:44:15','2016-09-12 07:15:00'),(70,'2016912151524800398012','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','99076c05f63c41df8177f5da17c7e159','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 07:15:24','2016-09-12 07:50:00'),(71,'2016912151532226522317','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','99076c05f63c41df8177f5da17c7e159','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 07:15:32','2016-09-12 07:50:00'),(72,'2016912155228125552948','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','4593d4d7ad4b48a7893bc2233d321165','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-12 07:52:28','2016-09-12 08:25:00'),(73,'201691216646209466348','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','fgg','4f69bebe884248d2a72fb13a4fffc989','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-12 08:06:46','2016-09-12 08:40:00'),(74,'201691216930817528906','','','0','','',0.00,0.00,0.00,1288.00,1188.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 08:09:30','2016-09-12 08:40:00'),(75,'201691216439950854086','','f7f41bee99814e0985fd7bb583e38384','6','上海市浦东新区张江','',0.00,0.00,333.00,444.00,333.00,333.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,1,1,0.00,'','','','','2016-09-12 08:43:09','2016-09-12 09:18:00'),(76,'20169121718242746665','','0f5d0fc528074c10aa477c11eb0bc477','4','','',0.00,0.00,158.00,158.00,158.00,158.00,'2','86d1232cef434ffa8e30c1d97cba6f11','朱军','d2a37b2a259d486b825fef7df40b8660','shopapi','预定厨师',0.00000000,1,1,0.00,'','','','','2016-09-12 09:01:08','2016-09-12 09:42:00'),(77,'20169121733475759434','','a8931c978e63439181cb3f1ad7932d13','8','7777','',0.00,0.00,158.00,158.00,158.00,158.00,'2','86d1232cef434ffa8e30c1d97cba6f11','朱军','29df44dc59f14e6a89c4fbd66d9a4bea','shopapi','预定厨师',0.00000000,2,2,0.00,'','','','','2016-09-12 09:03:03','2016-09-12 09:35:00'),(78,'201691217538857060589','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'2','86d1232cef434ffa8e30c1d97cba6f11','朱军','29df44dc59f14e6a89c4fbd66d9a4bea','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-12 09:05:38','2016-09-12 09:40:00'),(79,'2016912174550340901666','','','0','','',0.00,0.00,0.00,1288.00,1188.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-12 09:45:50','2016-09-12 10:20:00'),(80,'20169121864643244409','','a3c236c8bb5846b6b3f1b24be7ba3f3b','6','上海市浦东新区张江','',0.00,0.00,333.00,444.00,333.00,333.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,1,1,0.00,'','','','','2016-09-12 10:06:04','2016-09-12 10:42:00'),(81,'2016912181315306976830','','3be174f277a24dd1ac75e5b5b1c1ebe4','6','上海市浦东新区张江','',0.00,0.00,333.00,444.00,333.00,333.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,1,1,0.00,'','','','','2016-09-12 10:13:15','2016-09-12 10:48:00'),(82,'201691218235500976779','','9fd9dc44e40c483db463ba3d9beae13b','6','上海市浦东新区张江','',0.00,0.00,333.00,444.00,333.00,333.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','8c6ba245b64a4bd282d1ddb52156372b','shopapi','系列套餐/私人定制',0.00000000,1,1,0.00,'{\"goods_type\":\"tailor\",\"remark\":\"11111\",\"chef_time\":\"2016-09-12\"}','','','','2016-09-12 10:23:05','2016-09-12 10:54:00'),(83,'201691310344855361861','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','d2a37b2a259d486b825fef7df40b8660','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-13 02:34:04','2016-09-13 03:05:00'),(84,'20169131404289828232','','','0','','',0.00,0.00,0.00,8888.00,6666.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-13 06:00:42','2016-09-13 06:35:00'),(85,'2016913141327796421681','','','0','','',0.00,0.00,0.00,888.00,666.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','86bd9576a18d493ead9b5b6e945f4f04','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-13 06:13:27','2016-09-13 06:45:00'),(86,'2016913151550358094031','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-13 07:15:50','2016-09-13 07:50:00'),(87,'2016913151626944391606','','','0','','',0.00,0.00,0.00,8888.00,6666.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-13 07:16:26','2016-09-13 07:50:00'),(88,'201691316214276491249','','','0','','',0.00,0.00,0.00,8888.00,6666.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-13 08:02:14','2016-09-13 08:35:00'),(89,'201691316234453887501','','','0','','',0.00,0.00,0.00,8888.00,6666.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','4fa0a626c6a640898ff56064df938f22','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-13 08:02:34','2016-09-13 08:35:00'),(90,'201691316316567910305','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','4fa0a626c6a640898ff56064df938f22','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-13 08:03:16','2016-09-13 08:35:00'),(91,'201691316640841417701','','','0','','',0.00,0.00,0.00,8888.00,6666.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-13 08:06:40','2016-09-13 08:40:00'),(92,'2016913172355570083212','','ac20fd3c9d4a47e59cab36eb8d6230ae','9','上海啊','',0.00,0.00,6666.00,8888.00,6666.00,6666.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','99076c05f63c41df8177f5da17c7e159','shopapi','系列套餐/私人定制',0.00000000,2,2,0.00,'{\"goods_type\":\"tailor\",\"remark\":\"我的\",\"chef_time\":\"2016-09-24\"}','','','','2016-09-13 09:23:55','2016-09-13 09:55:00'),(93,'2016913175357257695651','','fbf96e9f56144e09abdfa6e3b4f81cd6','4','','',0.00,0.00,6666.00,8888.00,6666.00,6666.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','d2a37b2a259d486b825fef7df40b8660','shopapi','系列套餐/私人定制',0.00000000,1,1,0.00,'{\"goods_type\":\"tailor\",\"remark\":\"\",\"chef_time\":\"2016-09-13\"}','','','','2016-09-13 09:53:57','2016-09-13 10:30:00'),(94,'201691318149379409463','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-13 10:01:49','2016-09-13 10:35:00'),(95,'201691318157949388315','','c324dcf19cfd466596695d05116e1d14','2','吧','',0.00,0.00,1188.00,1288.00,1188.00,1188.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','系列套餐/私人定制',0.00000000,2,2,0.00,'{\"goods_type\":\"tailor\",\"remark\":\"\",\"chef_time\":\"2016-12-31\"}','','','','2016-09-13 10:01:57','2016-09-13 10:35:00'),(96,'201691318242602448087','','','0','','',0.00,0.00,0.00,1288.00,1188.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','d2a37b2a259d486b825fef7df40b8660','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-13 10:02:42','2016-09-13 10:35:00'),(97,'2016913181151829745205','','0353910004e34e03af7c0d7b14dd3759','10','咯哦哦目录吐了咯啦','',0.00,0.00,55.00,666.00,55.00,55.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2f56a1b693894a49af5a667daeb27c37','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-13 10:11:51','2016-09-13 11:05:00'),(98,'2016913184623178589049','','','0','','',0.00,0.00,0.00,8888.00,6666.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-13 10:46:23','2016-09-13 11:20:00'),(99,'201691813143966789747','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-18 05:14:39','2016-09-18 05:45:00'),(100,'201691813152475824178','','a7b646eb104b40688486fe51d85ac091','1','某','',0.00,0.00,500.00,1000.00,500.00,500.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-18 05:15:02','2016-09-18 05:50:00'),(101,'2016918131513101263594','','92457eb2324d4651846a4c173b76df6a','1','某','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-18 05:15:13','2016-09-18 05:50:00'),(102,'2016918132510804038973','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-18 05:25:10','2016-09-18 06:00:00'),(103,'201691813261158938545','','b7a22b61093e41b2b754f7670a4d555b','11','测试','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-18 05:26:01','2016-09-18 06:00:00'),(104,'2016918145829513451818','','','0','','',0.00,0.00,0.00,8888.00,6666.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-18 06:58:29','2016-09-18 07:30:00'),(105,'201691815013313745429','','','0','','',0.00,0.00,0.00,8888.00,6666.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','8a4a1879c2ce401f98fb7da0b703aa1d','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-18 07:00:13','2016-09-18 07:35:00'),(106,'2016918212351927759924','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','86bd9576a18d493ead9b5b6e945f4f04','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-18 13:23:51','2016-09-18 13:55:00'),(107,'201691995052142419084','','ccb748a9c25446baa6cc626fdcece720','2','吧','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,1,1,0.00,'','','','','2016-09-19 01:50:52','2016-09-19 02:24:00'),(108,'201691995455661554422','','','0','','',0.00,0.00,0.00,8888.00,6666.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-19 01:54:55','2016-09-19 02:25:00'),(109,'201691995622600736563','','','0','','',0.00,0.00,0.00,444.00,333.00,0.00,'5','2bd209e36084479cbbb7258f12fce02f','哈哈','2bd209e36084479cbbb7258f12fce02f','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-19 01:56:22','2016-09-19 02:30:00'),(110,'2016919105734529953480','','713b69bc1a2e42b18a32dc08715fb7ec','2','吧','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-19 02:57:34','2016-09-19 03:30:00'),(111,'201691911238250717653','','f8aac63c9322473d83720467dc408185','2','吧','',0.00,0.00,158.00,158.00,158.00,158.00,'6','8a4a1879c2ce401f98fb7da0b703aa1d','涛','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,5,1,0.00,'','','哈哈哈哈不要了就是不要了','','2016-09-19 03:02:38','2016-09-19 03:04:48'),(112,'2016919111238321534932','','5ace73d36d1146bbad9a5f0a487a2f3c','2','吧','',0.00,0.00,158.00,158.00,158.00,158.00,'6','8a4a1879c2ce401f98fb7da0b703aa1d','涛','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,2,0.00,'','','','','2016-09-19 03:12:38','2016-09-19 03:45:00'),(113,'2016919111311451129725','','e4fd3da8c7a3484f879e9d7efb46dd12','2','吧','',0.00,0.00,158.00,158.00,158.00,158.00,'6','8a4a1879c2ce401f98fb7da0b703aa1d','涛','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,1,1,0.00,'','','','','2016-09-19 03:13:11','2016-09-19 03:48:00'),(114,'2016919111342649542638','','8887a27898374dd68eb7a3b8eb044f29','2','吧','',0.00,0.00,158.00,158.00,158.00,158.00,'6','8a4a1879c2ce401f98fb7da0b703aa1d','涛','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,1,1,0.00,'','','','','2016-09-19 03:13:42','2016-09-19 03:48:00'),(115,'201691914327192549288','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-19 06:32:07','2016-09-19 06:32:33'),(116,'2016919143216717361980','','','0','','',0.00,0.00,0.00,1000.00,500.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-19 06:32:16','2016-09-19 06:32:37'),(117,'2016919143221578652458','','2c8da443655d434a92c4a68b2be973b9','2','吧','',0.00,0.00,500.00,1000.00,500.00,500.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,2,0.00,'','','','','2016-09-19 06:32:21','2016-09-19 06:32:41'),(118,'2016919154918466280466','','','0','','',0.00,0.00,0.00,100.00,90.00,0.00,'6','8a4a1879c2ce401f98fb7da0b703aa1d','涛','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-19 07:49:18','2016-09-19 08:20:00'),(119,'20169191635895862193','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'9','8c6ba245b64a4bd282d1ddb52156372b','说了','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-19 08:03:05','2016-09-19 08:35:00'),(120,'201691916428173825705','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','2bd209e36084479cbbb7258f12fce02f','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-19 08:04:28','2016-09-19 08:35:00'),(121,'201692192734637951714','','','0','','',0.00,0.00,0.00,138.00,69.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','86bd9576a18d493ead9b5b6e945f4f04','shopapi','购买商品',0.00000000,2,0,0.00,'','','','','2016-09-21 01:27:34','2016-09-21 02:00:00'),(122,'201692192754442669308','','f6a76fcb79694e6a9e8934ab9de24a4e','4','','',0.00,0.00,69.00,138.00,69.00,69.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','d2a37b2a259d486b825fef7df40b8660','shopapi','购买商品',0.00000000,1,1,0.00,'','','','','2016-09-21 01:27:54','2016-09-21 02:00:00'),(123,'201692193158918126923','','613bcde166d8450a83ca3e015632543d','4','','',0.00,0.00,138.00,138.00,138.00,138.00,'4','d2a37b2a259d486b825fef7df40b8660','fgg','d2a37b2a259d486b825fef7df40b8660','shopapi','购买商品',0.00000000,1,1,0.00,'','','','','2016-09-21 01:31:58','2016-09-21 02:06:00'),(124,'201692110277324781782','','','0','','',0.00,0.00,0.00,158.00,158.00,0.00,'4','d2a37b2a259d486b825fef7df40b8660','fgg','2bd209e36084479cbbb7258f12fce02f','shopapi','预定厨师',0.00000000,2,0,0.00,'','','','','2016-09-21 02:27:07','2016-09-21 03:00:00'),(125,'2016921162329120569169','','a20c69b9230c42e49f47819edb822d8b','4','4554545','',0.00,0.00,158.00,158.00,158.00,158.00,'6','8a4a1879c2ce401f98fb7da0b703aa1d','涛','d2a37b2a259d486b825fef7df40b8660','shopapi','预定厨师',0.00000000,1,1,0.00,'','','','','2016-09-21 08:23:29','2016-09-21 08:54:00'),(126,'2016921162418124174968','','5a76d8a2c5af4e30aa02fd5dfa809259','4','4554545','',0.00,0.00,158.00,158.00,158.00,158.00,'6','8a4a1879c2ce401f98fb7da0b703aa1d','涛','d2a37b2a259d486b825fef7df40b8660','shopapi','预定厨师',0.00000000,1,1,0.00,'','','','','2016-09-21 08:24:18','2016-09-21 09:00:00'),(127,'2016921165134533317419','','4cd297fddcb74957aed3b8c93a8299c8','4','4554545','',0.00,0.00,158.00,158.00,158.00,158.00,'2','86d1232cef434ffa8e30c1d97cba6f11','朱军','d2a37b2a259d486b825fef7df40b8660','shopapi','预定厨师',0.00000000,1,1,0.00,'','','','','2016-09-21 08:51:34','2016-09-21 09:24:00'),(128,'2016922142749694446601','','','0','','',0.00,0.00,0.00,1288.00,1188.00,0.00,'1','75b3be97d0b749768bcb272e4684786a','默认商户','86d1232cef434ffa8e30c1d97cba6f11','shopapi','系列套餐/私人定制',0.00000000,2,0,0.00,'','','','','2016-09-22 06:27:49','2016-09-22 07:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,'201696171124837356105','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-06 09:11:24','2016-09-06 09:11:24'),(2,'2016961719327628467','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-06 09:19:32','2016-09-06 09:19:32'),(3,'201696172223473690493','','shopapi','',6,'4e81bde70afa43e3b6b79c212fa124ef',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-06 21:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-06 09:22:23','2016-09-06 09:22:23'),(4,'201696172459391138268','','shopapi','',6,'f7e7a14f25d04ecca56ddf907cdf69d9',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-07 21:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-06 09:24:59','2016-09-06 09:24:59'),(5,'20169617254057096967','','shopapi','',6,'1db5f1218a5f4e0ca6eb96eb15a70e47',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-07 20:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-06 09:25:40','2016-09-06 09:25:40'),(6,'20169617269608907986','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-06 09:26:09','2016-09-06 09:26:09'),(7,'20169617274160318622','','shopapi','',4,'4f430666fc0a4cef96ce962984b0131d',1,1000.00,1000.00,500.00,500.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-06 09:27:41','2016-09-06 09:27:41'),(8,'201696173628795854905','','shopapi','',6,'a78dc21ce6974ea49c9e204bfbae2a96',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-07 16:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-06 09:36:28','2016-09-06 09:36:28'),(9,'201696173643219486952','','shopapi','',6,'a78dc21ce6974ea49c9e204bfbae2a96',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-07 16:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-06 09:36:43','2016-09-06 09:36:43'),(10,'20169617455692782866','','shopapi','',6,'d5ac3ecb52a14722b353f49c22f15128',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-06 11:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-06 09:45:56','2016-09-06 09:45:56'),(11,'201696174611313716627','','shopapi','',6,'a78dc21ce6974ea49c9e204bfbae2a96',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-07 16:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-06 09:46:11','2016-09-06 09:46:11'),(12,'201696174611672929129','','shopapi','',6,'a78dc21ce6974ea49c9e204bfbae2a96',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-07 16:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-06 09:46:11','2016-09-06 09:46:11'),(13,'201696174634167686993','','shopapi','',6,'a78dc21ce6974ea49c9e204bfbae2a96',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-07 16:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-06 09:46:34','2016-09-06 09:46:34'),(14,'20169793939299892001','','shopapi','',6,'a78dc21ce6974ea49c9e204bfbae2a96',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-07 16:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-07 01:39:39','2016-09-07 01:39:41'),(15,'2016979431727236682','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-07 01:43:01','2016-09-07 01:43:28'),(16,'2016971171585580823','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-07 03:07:01','2016-09-07 03:07:01'),(17,'20169711581955293499','','shopapi','',4,'4f430666fc0a4cef96ce962984b0131d',1,1000.00,1000.00,500.00,500.00,0.00,0.00000000,0.00,500.00,'','{\"goods_type\":\"mall\"}','2016-09-07 03:58:01','2016-09-07 03:58:33'),(18,'201697115845154715279','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-07 03:58:45','2016-09-07 03:59:00'),(19,'201697115928532132539','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-07 03:59:28','2016-09-07 03:59:29'),(20,'201697115933867611986','','shopapi','',4,'4f430666fc0a4cef96ce962984b0131d',1,1000.00,1000.00,500.00,500.00,0.00,0.00000000,0.00,500.00,'','{\"goods_type\":\"mall\"}','2016-09-07 03:59:33','2016-09-07 03:59:34'),(21,'201697122524760937','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-07 04:02:05','2016-09-07 04:02:05'),(22,'20169712497620458034','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-07 04:49:07','2016-09-07 04:49:36'),(23,'20169712504924098594','','shopapi','',7,'6fd815fd1aaa433998b95075947d9d7e',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-07 20:00\",\"chef_name\":\"哦哦\",\"goods_type\":\"chef\"}','2016-09-07 04:50:04','2016-09-07 04:50:09'),(24,'201697125014519430101','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-07 04:50:14','2016-09-07 04:50:15'),(25,'201697142442452385711','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-07 06:24:42','2016-09-07 06:24:42'),(26,'201697144449223629947','','shopapi','',12,'9debc258345148599139abff744e6337',1,666.00,666.00,55.00,55.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-07 06:44:49','2016-09-07 06:44:49'),(27,'201697145741939968061','','shopapi','',7,'4fa3ea42e49f4b1398a5d3c3da2266ed',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-07 19:00\",\"chef_name\":\"哈哈\",\"goods_type\":\"chef\"}','2016-09-07 06:57:41','2016-09-07 06:57:41'),(28,'20169714588679698105','','shopapi','',6,'1d8d0676a619425cb3b618b88611d99e',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-07 19:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-07 06:58:08','2016-09-07 06:58:08'),(29,'20169892635311155300','','shopapi','',6,'47b89ce958cc4256a9b65636c0b7840b',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-08 16:00\",\"chef_name\":\"陈根发\",\"goods_type\":\"chef\"}','2016-09-08 01:26:35','2016-09-08 01:26:35'),(30,'20169892652235264041','','shopapi','',7,'e0170020568c4e55bac6b2edcfc08908',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-08 16:00\",\"chef_name\":\"哈哈\",\"goods_type\":\"chef\"}','2016-09-08 01:26:52','2016-09-08 01:26:52'),(31,'201699143257884525859','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-09 06:32:57','2016-09-09 06:32:57'),(32,'201699143420919638115','','shopapi','',4,'4f430666fc0a4cef96ce962984b0131d',1,1000.00,1000.00,500.00,500.00,0.00,0.00000000,0.00,500.00,'','{\"goods_type\":\"mall\"}','2016-09-09 06:34:20','2016-09-09 06:34:23'),(33,'201699143526706173795','','shopapi','',4,'4f430666fc0a4cef96ce962984b0131d',1,1000.00,1000.00,500.00,500.00,0.00,0.00000000,0.00,500.00,'','{\"goods_type\":\"mall\"}','2016-09-09 06:35:26','2016-09-09 06:35:29'),(34,'201699143646187452826','','shopapi','',4,'4f430666fc0a4cef96ce962984b0131d',1,1000.00,1000.00,500.00,500.00,0.00,0.00000000,0.00,500.00,'','{\"goods_type\":\"mall\"}','2016-09-09 06:36:46','2016-09-09 06:36:51'),(35,'201699144034657066557','','shopapi','',13,'e34fff6504094339988c305e55160b21',1,68.00,68.00,68.00,68.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-09 06:40:34','2016-09-09 06:40:34'),(36,'201691017345872571878','','shopapi','',17,'44021fe5d8084e3183c83d7568fee99f',1,178.00,178.00,178.00,178.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-11 21:00\",\"chef_name\":\"朱军\",\"goods_type\":\"chef\"}','2016-09-10 09:03:45','2016-09-10 09:03:45'),(37,'2016911215650577243623','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-11 13:56:50','2016-09-11 13:56:50'),(38,'20169112157640183014','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-11 13:57:06','2016-09-11 13:57:06'),(39,'2016912102829619269978','','shopapi','',12,'9debc258345148599139abff744e6337',1,666.00,666.00,55.00,55.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-12 02:28:29','2016-09-12 02:28:29'),(40,'20169121136574668389','','shopapi','',7,'bd87972208544311a8afe4a104d94a67',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-12 15:00\",\"chef_name\":\"哈哈\",\"goods_type\":\"chef\"}','2016-09-12 03:03:06','2016-09-12 03:03:06'),(41,'2016912112510389214634','','shopapi','',16,'a298308670f340459fac18be4a424cb4',1,168.00,168.00,168.00,168.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-12 20:00\",\"chef_name\":\"朱军\",\"goods_type\":\"chef\"}','2016-09-12 03:25:10','2016-09-12 03:25:10'),(42,'2016912113315418261913','','shopapi','',18,'0fce1baf229e4ac28fcc60f79f00c3db',1,240.00,240.00,240.00,240.00,0.00,0.00000000,0.00,240.00,'','{\"dinner_time\":\"2016-09-12 15:00\",\"chef_name\":\"哈哈\",\"goods_type\":\"chef\"}','2016-09-12 03:33:15','2016-09-12 03:34:29'),(43,'2016912113832456087239','','shopapi','',7,'bd87972208544311a8afe4a104d94a67',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-12 15:00\",\"chef_name\":\"哈哈\",\"goods_type\":\"chef\"}','2016-09-12 03:38:32','2016-09-12 03:38:34'),(44,'201691211397712504472','','shopapi','',6,'51e8443d011d4df887f7a34c021aa48a',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-12 16:00\",\"chef_name\":\"fgg\",\"goods_type\":\"chef\"}','2016-09-12 03:39:07','2016-09-12 03:39:07'),(45,'2016912114018861838198','','shopapi','',19,'4fb5406fa87a439b9bfa93750140e65c',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-12 20:00\",\"chef_name\":\"涛\",\"goods_type\":\"chef\"}','2016-09-12 03:40:18','2016-09-12 03:40:59'),(46,'2016912114139825719003','','shopapi','',16,'70dc2c6de4ec41bca26fb71d07e1513c',1,168.00,168.00,168.00,168.00,0.00,0.00000000,0.00,168.00,'','{\"dinner_time\":\"2016-09-12 19:00\",\"chef_name\":\"朱军\",\"goods_type\":\"chef\"}','2016-09-12 03:41:39','2016-09-12 03:42:15'),(47,'20169121222561405357','','shopapi','',7,'b61a8f4d582846ea91967c9019784857',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-12 16:00\",\"chef_name\":\"哈哈\",\"goods_type\":\"chef\"}','2016-09-12 04:02:25','2016-09-12 04:02:25'),(48,'201691212238464849558','','shopapi','',7,'3087122de7d744c6848b979f2a0ad41d',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-12 20:00\",\"chef_name\":\"哈哈\",\"goods_type\":\"chef\"}','2016-09-12 04:02:38','2016-09-12 04:02:38'),(49,'20169121278150432594','','shopapi','',7,'b61a8f4d582846ea91967c9019784857',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-12 16:00\",\"chef_name\":\"哈哈\",\"goods_type\":\"chef\"}','2016-09-12 04:07:08','2016-09-12 04:07:16'),(50,'2016912121217403419818','','shopapi','',22,'10a79a266df046f2a69e076349286ec3',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-12 21:00\",\"chef_name\":\"说了\",\"goods_type\":\"chef\"}','2016-09-12 04:12:17','2016-09-12 04:12:17'),(51,'201691213241051039802','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 05:24:10','2016-09-12 05:24:10'),(52,'2016912132446439919430','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-12 05:24:46','2016-09-12 05:24:59'),(53,'2016912132734433483132','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-12 05:27:34','2016-09-12 05:27:34'),(54,'2016912133340185224345','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 05:33:40','2016-09-12 05:33:40'),(55,'2016912133734282947255','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 05:37:34','2016-09-12 05:37:34'),(56,'2016912134151170361203','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-12 05:41:51','2016-09-12 05:41:51'),(57,'201691213490964343700','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 05:49:00','2016-09-12 05:49:00'),(58,'201691214104613855983','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,333.00,'','{\"goods_type\":\"chef\"}','2016-09-12 06:10:04','2016-09-12 08:13:10'),(59,'2016912142119551648890','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 06:21:19','2016-09-12 06:21:19'),(60,'201691214229117295167','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,333.00,'','{\"goods_type\":\"chef\"}','2016-09-12 06:22:09','2016-09-12 06:22:13'),(61,'2016912142416769881516','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 06:24:16','2016-09-12 06:24:16'),(62,'201691214271117513331','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 06:27:11','2016-09-12 06:27:11'),(63,'2016912142730644568249','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 06:27:30','2016-09-12 06:27:30'),(64,'2016912142812294626234','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 06:28:12','2016-09-12 06:28:12'),(65,'2016912142952353304437','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 06:29:52','2016-09-12 06:29:52'),(66,'201691214300851012982','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 06:30:00','2016-09-12 06:30:00'),(67,'2016912144347467853311','','shopapi','',4,'4f430666fc0a4cef96ce962984b0131d',1,1000.00,1000.00,500.00,500.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-12 06:43:47','2016-09-12 06:43:47'),(68,'2016912144354678200171','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 06:43:54','2016-09-12 06:43:54'),(69,'2016912144415707417058','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 06:44:15','2016-09-12 06:44:15'),(70,'2016912151524800398012','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 07:15:24','2016-09-12 07:15:24'),(71,'2016912151532226522317','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 07:15:32','2016-09-12 07:15:32'),(72,'2016912155228125552948','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-12 07:52:28','2016-09-12 07:52:28'),(73,'201691216646209466348','','shopapi','',6,'fcc9348dda6f420baaf51f3f00d80dc2',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-12 20:00\",\"chef_name\":\"fgg\",\"goods_type\":\"chef\"}','2016-09-12 08:06:46','2016-09-12 08:06:46'),(74,'201691216930817528906','','shopapi','',8,'30abb35428cb4bc9b58f2ca3d89fd18a',1,1288.00,1288.00,1188.00,1188.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"chef\"}','2016-09-12 08:09:30','2016-09-12 08:09:30'),(75,'201691216439950854086','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,333.00,'','{\"goods_type\":\"chef\"}','2016-09-12 08:43:09','2016-09-12 08:43:20'),(76,'20169121718242746665','','shopapi','',5,'6b4ab9c160114b8388a5c10116ca1482',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-12 21:00\",\"chef_name\":\"朱军\",\"goods_type\":\"chef\"}','2016-09-12 09:01:08','2016-09-12 09:01:09'),(77,'20169121733475759434','','shopapi','',5,'b3d9b4fccb14446390c18af9bb21ba82',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-13 16:00\",\"chef_name\":\"朱军\",\"goods_type\":\"chef\"}','2016-09-12 09:03:03','2016-09-12 09:03:45'),(78,'201691217538857060589','','shopapi','',5,'b3d9b4fccb14446390c18af9bb21ba82',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-13 16:00\",\"chef_name\":\"朱军\",\"goods_type\":\"chef\"}','2016-09-12 09:05:38','2016-09-12 09:05:38'),(79,'2016912174550340901666','','shopapi','',8,'30abb35428cb4bc9b58f2ca3d89fd18a',1,1288.00,1288.00,1188.00,1188.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-12 09:45:50','2016-09-12 09:45:50'),(80,'20169121864643244409','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,333.00,'','{\"goods_type\":\"chef\"}','2016-09-12 10:06:04','2016-09-12 10:06:18'),(81,'2016912181315306976830','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,333.00,'','{\"goods_type\":\"tailor\"}','2016-09-12 10:13:15','2016-09-12 10:13:38'),(82,'201691218235500976779','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,333.00,'','{\"goods_type\":\"tailor\"}','2016-09-12 10:23:05','2016-09-12 10:23:11'),(83,'201691310344855361861','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 02:34:04','2016-09-13 02:34:04'),(84,'20169131404289828232','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 06:00:42','2016-09-13 06:00:42'),(85,'2016913141327796421681','','shopapi','',10,'ec71c1021d114112972a7060df07e991',2,444.00,888.00,333.00,666.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-13 06:13:27','2016-09-13 06:13:27'),(86,'2016913151550358094031','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-13 07:15:50','2016-09-13 07:15:50'),(87,'2016913151626944391606','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 07:16:26','2016-09-13 07:16:26'),(88,'201691316214276491249','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 08:02:14','2016-09-13 08:02:14'),(89,'201691316234453887501','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 08:02:34','2016-09-13 08:02:34'),(90,'201691316316567910305','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 08:03:16','2016-09-13 08:03:16'),(91,'201691316640841417701','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 08:06:40','2016-09-13 08:06:40'),(92,'2016913172355570083212','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,6666.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 09:23:55','2016-09-13 09:24:59'),(93,'2016913175357257695651','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,6666.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 09:53:57','2016-09-13 09:54:35'),(94,'201691318149379409463','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-13 10:01:49','2016-09-13 10:01:49'),(95,'201691318157949388315','','shopapi','',8,'30abb35428cb4bc9b58f2ca3d89fd18a',1,1288.00,1288.00,1188.00,1188.00,0.00,0.00000000,0.00,1188.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 10:01:57','2016-09-13 10:03:27'),(96,'201691318242602448087','','shopapi','',8,'30abb35428cb4bc9b58f2ca3d89fd18a',1,1288.00,1288.00,1188.00,1188.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 10:02:42','2016-09-13 10:02:42'),(97,'2016913181151829745205','','shopapi','',12,'9debc258345148599139abff744e6337',1,666.00,666.00,55.00,55.00,0.00,0.00000000,0.00,55.00,'','{\"goods_type\":\"mall\"}','2016-09-13 10:11:51','2016-09-13 10:31:53'),(98,'2016913184623178589049','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-13 10:46:23','2016-09-13 10:46:23'),(99,'201691813143966789747','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-18 05:14:39','2016-09-18 05:14:39'),(100,'201691813152475824178','','shopapi','',4,'4f430666fc0a4cef96ce962984b0131d',1,1000.00,1000.00,500.00,500.00,0.00,0.00000000,0.00,500.00,'','{\"goods_type\":\"mall\"}','2016-09-18 05:15:02','2016-09-18 05:15:05'),(101,'2016918131513101263594','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-18 05:15:13','2016-09-18 05:15:14'),(102,'2016918132510804038973','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-18 05:25:10','2016-09-18 05:25:10'),(103,'201691813261158938545','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-18 05:26:01','2016-09-18 05:26:07'),(104,'2016918145829513451818','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-18 06:58:29','2016-09-18 06:58:29'),(105,'201691815013313745429','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-18 07:00:13','2016-09-18 07:00:13'),(106,'2016918212351927759924','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-18 13:23:51','2016-09-18 13:23:51'),(107,'201691995052142419084','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-19 01:50:52','2016-09-19 01:50:54'),(108,'201691995455661554422','','shopapi','',9,'969f2f646b0542ed8a783abc1666bce3',1,8888.00,8888.00,6666.00,6666.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-19 01:54:55','2016-09-19 01:54:55'),(109,'201691995622600736563','','shopapi','',10,'ec71c1021d114112972a7060df07e991',1,444.00,444.00,333.00,333.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-19 01:56:22','2016-09-19 01:56:22'),(110,'2016919105734529953480','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-19 02:57:34','2016-09-19 02:58:10'),(111,'201691911238250717653','','shopapi','',19,'d59f3180f03845ef8ad51d50106294ec',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-19 16:00\",\"chef_name\":\"涛\",\"goods_type\":\"chef\"}','2016-09-19 03:02:38','2016-09-19 03:02:40'),(112,'2016919111238321534932','','shopapi','',19,'dc89300f508948ee9409eb704e288333',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-19 15:00\",\"chef_name\":\"涛\",\"goods_type\":\"chef\"}','2016-09-19 03:12:38','2016-09-19 03:12:43'),(113,'2016919111311451129725','','shopapi','',19,'f5a9d32770e345e1b5f3e1aa765cf3a9',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-19 17:00\",\"chef_name\":\"涛\",\"goods_type\":\"chef\"}','2016-09-19 03:13:11','2016-09-19 03:13:14'),(114,'2016919111342649542638','','shopapi','',19,'dc89300f508948ee9409eb704e288333',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-19 15:00\",\"chef_name\":\"涛\",\"goods_type\":\"chef\"}','2016-09-19 03:13:42','2016-09-19 03:13:55'),(115,'201691914327192549288','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-19 06:32:07','2016-09-19 06:32:07'),(116,'2016919143216717361980','','shopapi','',4,'4f430666fc0a4cef96ce962984b0131d',1,1000.00,1000.00,500.00,500.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-19 06:32:16','2016-09-19 06:32:16'),(117,'2016919143221578652458','','shopapi','',4,'4f430666fc0a4cef96ce962984b0131d',1,1000.00,1000.00,500.00,500.00,0.00,0.00000000,0.00,500.00,'','{\"goods_type\":\"mall\"}','2016-09-19 06:32:21','2016-09-19 06:32:22'),(118,'2016919154918466280466','','shopapi','',23,'3ca30abfe4034713927ec7525621ead9',1,100.00,100.00,90.00,90.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-19 07:49:18','2016-09-19 07:49:18'),(119,'20169191635895862193','','shopapi','',22,'aa06f4491576456e90cf64c87d7f21d9',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-19 21:00\",\"chef_name\":\"说了\",\"goods_type\":\"chef\"}','2016-09-19 08:03:05','2016-09-19 08:03:05'),(120,'201691916428173825705','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-19 08:04:28','2016-09-19 08:04:28'),(121,'201692192734637951714','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"mall\"}','2016-09-21 01:27:34','2016-09-21 01:27:34'),(122,'201692192754442669308','','shopapi','',3,'c8a5778b7a3c4c8d90785262f76df7f6',1,138.00,138.00,69.00,69.00,0.00,0.00000000,0.00,69.00,'','{\"goods_type\":\"mall\"}','2016-09-21 01:27:54','2016-09-21 01:27:59'),(123,'201692193158918126923','','shopapi','',25,'477f8a5a8788499a9c54072ac283c28f',1,138.00,138.00,138.00,138.00,0.00,0.00000000,0.00,138.00,'','{\"goods_type\":\"mall\"}','2016-09-21 01:31:58','2016-09-21 01:32:01'),(124,'201692110277324781782','','shopapi','',6,'35504a21f4cc41d38db89e00afd6d9c5',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,0.00,'','{\"dinner_time\":\"2016-09-22 16:00\",\"chef_name\":\"fgg\",\"goods_type\":\"chef\"}','2016-09-21 02:27:07','2016-09-21 02:27:07'),(125,'2016921162329120569169','','shopapi','',19,'18e88973eefa4ccaab137bf823714bc7',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-23 12:00\",\"chef_name\":\"涛\",\"goods_type\":\"chef\"}','2016-09-21 08:23:29','2016-09-21 08:23:31'),(126,'2016921162418124174968','','shopapi','',19,'fbcea8dbe30148db98a58291ac5a7185',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-25 13:00\",\"chef_name\":\"涛\",\"goods_type\":\"chef\"}','2016-09-21 08:24:18','2016-09-21 08:24:20'),(127,'2016921165134533317419','','shopapi','',5,'1899739ff0b1477888776ebe39f16546',1,158.00,158.00,158.00,158.00,0.00,0.00000000,0.00,158.00,'','{\"dinner_time\":\"2016-09-22 16:00\",\"chef_name\":\"朱军\",\"goods_type\":\"chef\"}','2016-09-21 08:51:34','2016-09-21 08:51:36'),(128,'2016922142749694446601','','shopapi','',8,'30abb35428cb4bc9b58f2ca3d89fd18a',1,1288.00,1288.00,1188.00,1188.00,0.00,0.00000000,0.00,0.00,'','{\"goods_type\":\"tailor\"}','2016-09-22 06:27:49','2016-09-22 06:27:49');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_attr_key`
--

LOCK TABLES `prod_attr_key` WRITE;
/*!40000 ALTER TABLE `prod_attr_key` DISABLE KEYS */;
INSERT INTO `prod_attr_key` VALUES (1,1,'time','时间',1,'','');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_attr_val`
--

LOCK TABLES `prod_attr_val` WRITE;
/*!40000 ALTER TABLE `prod_attr_val` DISABLE KEYS */;
INSERT INTO `prod_attr_val` VALUES (1,6,'time','201609062100','',''),(2,6,'time','201609072100','',''),(3,6,'time','201609072000','',''),(4,6,'time','201609071600','',''),(5,6,'time','201609061100','',''),(6,7,'time','201609072000','',''),(7,7,'time','201609071900','',''),(8,6,'time','201609071900','',''),(9,6,'time','201609081600','',''),(10,7,'time','201609081600','',''),(11,17,'time','201609112100','',''),(12,7,'time','201609121500','',''),(13,16,'time','201609122000','',''),(14,18,'time','201609121500','',''),(15,6,'time','201609121600','',''),(16,19,'time','201609122000','',''),(17,16,'time','201609121900','',''),(18,7,'time','201609121600','',''),(19,7,'time','201609122000','',''),(20,22,'time','201609122100','',''),(21,6,'time','201609122000','',''),(22,5,'time','201609122100','',''),(23,5,'time','201609131600','',''),(24,19,'time','201609191600','',''),(25,19,'time','201609191500','',''),(26,19,'time','201609191700','',''),(27,22,'time','201609192100','',''),(28,6,'time','201609221600','',''),(29,19,'time','201609231200','',''),(30,19,'time','201609251300','',''),(31,5,'time','201609221600','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_category`
--

LOCK TABLES `prod_category` WRITE;
/*!40000 ALTER TABLE `prod_category` DISABLE KEYS */;
INSERT INTO `prod_category` VALUES (3,5,'shopapi',3,'','','2016-09-06 08:10:21','2016-09-06 08:10:21'),(4,6,'shopapi',4,'','','2016-09-06 08:57:30','2016-09-06 08:57:30'),(5,1,'shopapi',5,'','','2016-09-06 08:58:17','2016-09-06 08:58:17'),(6,1,'shopapi',6,'','','2016-09-06 09:20:37','2016-09-06 09:20:37'),(7,1,'shopapi',7,'','','2016-09-07 03:02:24','2016-09-07 03:02:24'),(8,3,'shopapi',8,'','','2016-09-07 06:11:40','2016-09-07 06:11:40'),(9,1,'shopapi',9,'','','2016-09-07 06:18:49','2016-09-07 06:18:49'),(10,2,'shopapi',10,'','','2016-09-07 06:22:16','2016-09-07 06:22:16'),(11,1,'shopapi',11,'','','2016-09-07 06:40:01','2016-09-07 06:40:01'),(12,4,'shopapi',12,'','','2016-09-07 06:44:08','2016-09-07 06:44:08'),(13,7,'shopapi',13,'','','2016-09-07 06:46:13','2016-09-07 06:46:13'),(14,5,'shopapi',14,'','','2016-09-09 06:33:01','2016-09-09 06:33:01'),(15,7,'shopapi',15,'','','2016-09-09 07:57:08','2016-09-09 07:57:08'),(16,1,'shopapi',16,'','','2016-09-10 08:57:22','2016-09-10 08:57:22'),(17,1,'shopapi',17,'','','2016-09-10 09:02:36','2016-09-10 09:02:36'),(18,1,'shopapi',18,'','','2016-09-12 03:02:08','2016-09-12 03:02:08'),(19,1,'shopapi',19,'','','2016-09-12 03:31:10','2016-09-12 03:31:10'),(20,1,'shopapi',20,'','','2016-09-12 03:58:40','2016-09-12 03:58:40'),(21,1,'shopapi',21,'','','2016-09-12 04:03:23','2016-09-12 04:03:23'),(22,1,'shopapi',22,'','','2016-09-12 04:11:32','2016-09-12 04:11:32'),(23,4,'shopapi',23,'','','2016-09-18 06:32:06','2016-09-18 06:32:06'),(24,1,'shopapi',24,'','','2016-09-20 08:42:53','2016-09-20 08:42:53'),(25,6,'shopapi',25,'','','2016-09-21 01:31:10','2016-09-21 01:31:10'),(26,7,'shopapi',26,'','','2016-09-21 07:38:38','2016-09-21 07:38:38'),(27,3,'shopapi',27,'','','2016-09-22 06:44:45','2016-09-22 06:44:45'),(28,3,'shopapi',28,'','','2016-09-22 06:51:13','2016-09-22 06:51:13'),(29,2,'shopapi',29,'','','2016-09-22 07:57:14','2016-09-22 07:57:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_imgs`
--

LOCK TABLES `prod_imgs` WRITE;
/*!40000 ALTER TABLE `prod_imgs` DISABLE KEYS */;
INSERT INTO `prod_imgs` VALUES (13,'shopapi',3,'','/images/201609/d5cf8b3d3fcf4f5591f5c44777fd4d0d',''),(14,'shopapi',3,'','/images/201609/74b8a591ae944a97b6c8ea7740558485',''),(15,'shopapi',3,'','/images/201609/3286cb527581480cadcac64acf96a5e5',''),(16,'shopapi',3,'','/images/201609/4f91dc11a6f246389b51bd9311e2e49f',''),(17,'shopapi',3,'','/images/201609/e0b5592893ca42c98197827ee3eccaa6',''),(18,'shopapi',3,'','/images/201609/3d1c4b06e1a14165964eddc2fc20d650',''),(19,'shopapi',4,'','/images/201609/15eeb784b37f434db8363541cf0392db',''),(20,'shopapi',4,'','/images/201609/6b1460f7180d4bda8f6c23f9e1a29c40',''),(21,'shopapi',4,'','/images/201609/3f229826eb8b4d75bdbe4f485068c026',''),(22,'shopapi',8,'','/images/201609/1ae0eea51cf74229964e7b3668571396',''),(23,'shopapi',8,'','/images/201609/7b72a1b902ce441a94058d79316ebfc9',''),(24,'shopapi',8,'','/images/201609/059ed47a65c44bcf8804ca344a53b28a',''),(25,'shopapi',8,'','/images/201609/fa84b19a047346eca5acd380be97c2d6',''),(26,'shopapi',8,'','/images/201609/6a0efc5a7f864a5baa3009d1e774c559',''),(27,'shopapi',8,'','/images/201609/6e6ea521b4ef4539985a3debcfb84740',''),(28,'shopapi',8,'','/images/201609/5f84cac0a13243298e385c4c6a68ff4b',''),(29,'shopapi',8,'','/images/201609/9502e6ec6dec415385acecd288e974e7',''),(30,'shopapi',9,'','/images/201609/a7032d6679d040ab85834035a4777111',''),(31,'shopapi',9,'','/images/201609/e299730ef7bd4cc5af67c9ec925eb428',''),(32,'shopapi',9,'','/images/201609/b9e66ffafed64720b8254f8ded4a903c',''),(33,'shopapi',9,'','/images/201609/b497d53fb8a646008cbfc0cc627cc4dd',''),(34,'shopapi',9,'','/images/201609/a4f2ece2f6b24ee0b3f6a57a7d697b87',''),(35,'shopapi',9,'','/images/201609/3ac5a7997c0747eeb50ef59d66275ff2',''),(36,'shopapi',9,'','/images/201609/512c4859892e4ba6b9eade95412a3aae',''),(37,'shopapi',9,'','/images/201609/e8b3479b543a4d8bbd703ddfeb13bf44',''),(38,'shopapi',9,'','/images/201609/0114fd538f9f4ac297d08e4de86fea43',''),(39,'shopapi',9,'','/images/201609/504934636de24346b3ce8b519528ce48',''),(40,'shopapi',9,'','/images/201609/85a204a4475e40c28e7853ee46540a82',''),(41,'shopapi',9,'','/images/201609/e6c9093cd1554e0fad42e847f0d31015',''),(42,'shopapi',9,'','/images/201609/0975c8eb7d8f42afb75d6d87ae9e6f0c',''),(43,'shopapi',10,'','/images/201609/e0c76c55ed094eabbaad9de025549b61',''),(44,'shopapi',10,'','/images/201609/d7fef5cab605427bb03dc48286c9383e',''),(45,'shopapi',10,'','/images/201609/3c6bcfe53fcf40699c0d171b2983656a',''),(46,'shopapi',10,'','/images/201609/f903c10597494046a47689b603832f80',''),(47,'shopapi',10,'','/images/201609/f3551ac56d52455bab2d4c044b1beea2',''),(48,'shopapi',10,'','/images/201609/eb462a75823b4a9ab4d010ab6022c8c5',''),(49,'shopapi',10,'','/images/201609/686db48d4ecf4730974aa6fae4a97933',''),(50,'shopapi',10,'','/images/201609/000fdbaf854c406b8d4db4b35d61d3bb',''),(51,'shopapi',10,'','/images/201609/de4ab7e40c9f47dfbe648460592ec0e5',''),(52,'shopapi',11,'','/images/201609/9beac61367754a438769601e9206f856',''),(53,'shopapi',12,'','/images/201609/9ab1c35f9794478a97566ea00f4a60d8',''),(54,'shopapi',12,'','/images/201609/d8b84ea719004fdc9a0683dcac6f3848',''),(55,'shopapi',12,'','/images/201609/11c56d14eaba4fbdba236aed5e5403cc',''),(56,'shopapi',12,'','/images/201609/aa8a427c4e0d4ff99f35395c88eb2dee',''),(57,'shopapi',12,'','/images/201609/76e7809f33804eeda16052b6a5c31531',''),(58,'shopapi',13,'','',''),(59,'shopapi',14,'','/images/201609/39dd0d1fb2a94970873a7df5c62ffd89',''),(60,'shopapi',14,'','/images/201609/b7982d267477444cafcc3d3337c874c9',''),(61,'shopapi',14,'','/images/201609/72a60cf0e36141618a16bf3b2fea0815',''),(62,'shopapi',15,'','/images/201609/a30a473797b44ec3852937ebdace05e5',''),(63,'shopapi',15,'','/images/201609/b3d19816151046f2ba577c5b2bdb09cf',''),(64,'shopapi',15,'','/images/201609/2a2489dcd1654635815d618f52e5d0ed',''),(65,'shopapi',23,'','/images/201609/0f7a2245a0264a839afe807957fe3028',''),(66,'shopapi',23,'','/images/201609/9df93c4d38d84a57b057d899680974f7',''),(67,'shopapi',23,'','/images/201609/9e77a2ddc59243a7b977e80439db43bd',''),(68,'shopapi',25,'','/images/201609/b431b783b9104120a52aceefc1fe606f',''),(69,'shopapi',25,'','/images/201609/12c06174a85a4c35b9efbc0971a28477',''),(70,'shopapi',26,'','/images/201609/77873554ea8548318b37c9b6281c1f18',''),(71,'shopapi',26,'','/images/201609/181322ef77944ee6906c834307cb95a2',''),(72,'shopapi',26,'','/images/201609/bbf9b78efc694e7c83a8889a53b1e780',''),(73,'shopapi',26,'','/images/201609/3dcfe9475a8441b6b97d6da0783b2249',''),(74,'shopapi',27,'','/images/201609/0599af045c4e43b4bd22fa7abb95786f',''),(75,'shopapi',27,'','/images/201609/e8fc80cf9b4546d4b6e17d38a78f1133',''),(76,'shopapi',28,'','/images/201609/422025c158c34685bc704c1fa601f4b2',''),(77,'shopapi',28,'','/images/201609/a66e26ed477a4378addf968c011068b1',''),(78,'shopapi',28,'','/images/201609/30982c9bd58e48ce906d3f757375e7a8',''),(79,'shopapi',28,'','/images/201609/61e76a9406614c9dbd6e08d4fafbc01a',''),(80,'shopapi',28,'','/images/201609/5d1671bb0ed1470ab4bfe63d18ab1192',''),(81,'shopapi',28,'','/images/201609/c707e71629964bf0bb219cb449e97da7',''),(82,'shopapi',28,'','/images/201609/e4cb69a0a0fa488bb61c39bec6dfb545',''),(83,'shopapi',29,'','/images/201609/32c4beadda46480282ee54508d2f11c5','');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_sku`
--

LOCK TABLES `prod_sku` WRITE;
/*!40000 ALTER TABLE `prod_sku` DISABLE KEYS */;
INSERT INTO `prod_sku` VALUES (3,'c8a5778b7a3c4c8d90785262f76df7f6',3,'shopapi',138.00,69.00,'',2,999997,'2016-09-06 08:10:21','2016-09-21 01:28:06','',''),(4,'4f430666fc0a4cef96ce962984b0131d',4,'shopapi',1000.00,500.00,'',0,999999,'2016-09-06 08:57:31','2016-09-06 08:57:31','',''),(5,'4e81bde70afa43e3b6b79c212fa124ef',6,'shopapi',158.00,158.00,'1',0,1,'2016-09-06 09:22:23','2016-09-06 09:22:23','',''),(6,'f7e7a14f25d04ecca56ddf907cdf69d9',6,'shopapi',158.00,158.00,'2',0,1,'2016-09-06 09:24:59','2016-09-06 09:24:59','',''),(7,'1db5f1218a5f4e0ca6eb96eb15a70e47',6,'shopapi',158.00,158.00,'3',0,1,'2016-09-06 09:25:39','2016-09-06 09:25:39','',''),(8,'a78dc21ce6974ea49c9e204bfbae2a96',6,'shopapi',158.00,158.00,'4',0,1,'2016-09-06 09:36:28','2016-09-06 09:36:28','',''),(9,'d5ac3ecb52a14722b353f49c22f15128',6,'shopapi',158.00,158.00,'5',0,1,'2016-09-06 09:45:55','2016-09-06 09:45:55','',''),(10,'6fd815fd1aaa433998b95075947d9d7e',7,'shopapi',158.00,158.00,'6',0,1,'2016-09-07 04:50:04','2016-09-07 04:50:04','',''),(11,'30abb35428cb4bc9b58f2ca3d89fd18a',8,'shopapi',1288.00,1188.00,'',0,999999,'2016-09-07 06:11:40','2016-09-07 06:11:40','',''),(12,'969f2f646b0542ed8a783abc1666bce3',9,'shopapi',8888.00,6666.00,'',1,999998,'2016-09-07 06:18:49','2016-09-13 09:55:01','',''),(13,'ec71c1021d114112972a7060df07e991',10,'shopapi',444.00,333.00,'',5,999994,'2016-09-07 06:22:16','2016-09-12 10:23:14','',''),(14,'0e203f79b7484cb6907d437642d9adfc',11,'shopapi',2222.00,222.00,'',0,999999,'2016-09-07 06:40:01','2016-09-07 06:40:01','',''),(15,'9debc258345148599139abff744e6337',12,'shopapi',666.00,55.00,'',0,999999,'2016-09-07 06:44:08','2016-09-07 06:44:08','',''),(16,'e34fff6504094339988c305e55160b21',13,'shopapi',68.00,68.00,'',0,999999,'2016-09-07 06:46:15','2016-09-07 06:46:15','',''),(17,'4fa3ea42e49f4b1398a5d3c3da2266ed',7,'shopapi',158.00,158.00,'7',0,1,'2016-09-07 06:57:41','2016-09-07 06:57:41','',''),(18,'1d8d0676a619425cb3b618b88611d99e',6,'shopapi',158.00,158.00,'8',0,1,'2016-09-07 06:58:08','2016-09-07 06:58:08','',''),(19,'47b89ce958cc4256a9b65636c0b7840b',6,'shopapi',158.00,158.00,'9',0,1,'2016-09-08 01:26:35','2016-09-08 01:26:35','',''),(20,'e0170020568c4e55bac6b2edcfc08908',7,'shopapi',158.00,158.00,'10',0,1,'2016-09-08 01:26:52','2016-09-08 01:26:52','',''),(21,'bb59942f1b914071a168a6c99f28fe54',14,'shopapi',32.00,16.00,'',0,999999,'2016-09-09 06:33:01','2016-09-09 06:33:01','',''),(22,'309481f4aaa0478e81f4c891cc9671de',15,'shopapi',88.00,66.00,'',0,999999,'2016-09-09 07:57:08','2016-09-09 07:57:08','',''),(23,'4efd2dab994c4185b35861d833cb26d4',16,'shopapi',168.00,168.00,'',0,999999,'2016-09-10 08:57:22','2016-09-10 08:57:22','',''),(24,'2f0ede9cf9d0448ca99d10e9be84d567',17,'shopapi',178.00,178.00,'',0,999999,'2016-09-10 09:02:36','2016-09-10 09:02:36','',''),(25,'44021fe5d8084e3183c83d7568fee99f',17,'shopapi',178.00,178.00,'11',0,1,'2016-09-10 09:03:45','2016-09-10 09:03:45','',''),(26,'8f1c56d7ea4e4712aed3223df99cc788',18,'shopapi',240.00,240.00,'',0,999999,'2016-09-12 03:02:08','2016-09-12 03:02:08','',''),(27,'bd87972208544311a8afe4a104d94a67',7,'shopapi',158.00,158.00,'12',0,1,'2016-09-12 03:03:06','2016-09-12 03:03:06','',''),(28,'a298308670f340459fac18be4a424cb4',16,'shopapi',168.00,168.00,'13',0,1,'2016-09-12 03:25:10','2016-09-12 03:25:10','',''),(29,'0fce1baf229e4ac28fcc60f79f00c3db',18,'shopapi',240.00,240.00,'14',0,1,'2016-09-12 03:33:15','2016-09-12 03:33:15','',''),(30,'51e8443d011d4df887f7a34c021aa48a',6,'shopapi',158.00,158.00,'15',0,1,'2016-09-12 03:39:07','2016-09-12 03:39:07','',''),(31,'4fb5406fa87a439b9bfa93750140e65c',19,'shopapi',158.00,158.00,'16',0,1,'2016-09-12 03:40:18','2016-09-12 03:40:18','',''),(32,'70dc2c6de4ec41bca26fb71d07e1513c',16,'shopapi',168.00,168.00,'17',0,1,'2016-09-12 03:41:39','2016-09-12 03:41:39','',''),(33,'b61a8f4d582846ea91967c9019784857',7,'shopapi',158.00,158.00,'18',0,1,'2016-09-12 04:02:25','2016-09-12 04:02:25','',''),(34,'3087122de7d744c6848b979f2a0ad41d',7,'shopapi',158.00,158.00,'19',0,1,'2016-09-12 04:02:38','2016-09-12 04:02:38','',''),(35,'10a79a266df046f2a69e076349286ec3',22,'shopapi',158.00,158.00,'20',0,1,'2016-09-12 04:12:17','2016-09-12 04:12:17','',''),(36,'fcc9348dda6f420baaf51f3f00d80dc2',6,'shopapi',158.00,158.00,'21',0,1,'2016-09-12 08:06:46','2016-09-12 08:06:46','',''),(37,'6b4ab9c160114b8388a5c10116ca1482',5,'shopapi',158.00,158.00,'22',1,0,'2016-09-12 09:01:08','2016-09-12 09:01:14','',''),(38,'b3d9b4fccb14446390c18af9bb21ba82',5,'shopapi',158.00,158.00,'23',0,1,'2016-09-12 09:03:03','2016-09-12 09:03:03','',''),(39,'3ca30abfe4034713927ec7525621ead9',23,'shopapi',100.00,90.00,'',0,999999,'2016-09-18 06:32:06','2016-09-18 06:32:06','',''),(40,'d59f3180f03845ef8ad51d50106294ec',19,'shopapi',158.00,158.00,'24',1,0,'2016-09-19 03:02:38','2016-09-19 03:02:56','',''),(41,'dc89300f508948ee9409eb704e288333',19,'shopapi',158.00,158.00,'25',1,0,'2016-09-19 03:12:38','2016-09-19 03:14:01','',''),(42,'f5a9d32770e345e1b5f3e1aa765cf3a9',19,'shopapi',158.00,158.00,'26',1,0,'2016-09-19 03:13:11','2016-09-19 03:13:21','',''),(43,'aa06f4491576456e90cf64c87d7f21d9',22,'shopapi',158.00,158.00,'27',0,1,'2016-09-19 08:03:05','2016-09-19 08:03:05','',''),(44,'477f8a5a8788499a9c54072ac283c28f',25,'shopapi',138.00,138.00,'',1,999998,'2016-09-21 01:31:10','2016-09-21 01:32:05','',''),(45,'35504a21f4cc41d38db89e00afd6d9c5',6,'shopapi',158.00,158.00,'28',0,1,'2016-09-21 02:27:07','2016-09-21 02:27:07','',''),(46,'8713831a58ab4348af55ba8dc8edcf2b',26,'shopapi',128.00,128.00,'',0,999999,'2016-09-21 07:38:38','2016-09-21 07:38:38','',''),(47,'18e88973eefa4ccaab137bf823714bc7',19,'shopapi',158.00,158.00,'29',1,0,'2016-09-21 08:23:29','2016-09-21 08:23:37','',''),(48,'fbcea8dbe30148db98a58291ac5a7185',19,'shopapi',158.00,158.00,'30',1,0,'2016-09-21 08:24:18','2016-09-21 08:24:24','',''),(49,'1899739ff0b1477888776ebe39f16546',5,'shopapi',158.00,158.00,'31',1,0,'2016-09-21 08:51:34','2016-09-21 08:51:42','',''),(50,'1bc8ec51c44d4bde93878ebdb815fe06',27,'shopapi',12888.00,12888.00,'',0,999999,'2016-09-22 06:44:45','2016-09-22 06:44:45','',''),(51,'80025242a82d4061aa0ab6cbe11e592c',28,'shopapi',13888.00,13888.00,'',0,999999,'2016-09-22 06:51:14','2016-09-22 06:51:14','',''),(52,'16a4bb59c3214f7599ea7130bc1593fe',29,'shopapi',11.00,11.00,'',0,999999,'2016-09-22 07:57:14','2016-09-22 07:57:14','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,'shopapi','2016新品雪中王有机秋木耳盒装','东北特产干货，2盒包邮，伊春黑木耳',138.00,69.00,0,1,2,'2016-09-06 08:10:21','2016-09-21 01:28:06','',''),(4,'shopapi','螃蟹','这是螃蟹',1000.00,500.00,0,1,0,'2016-09-06 08:57:30','2016-09-18 06:30:49','',''),(5,'shopapi','四菜一汤','四菜一汤',158.00,158.00,1,0,2,'2016-09-06 08:58:17','2016-09-21 08:51:42','merchant_default',''),(6,'shopapi','四菜一汤','四菜一汤',158.00,158.00,1,0,0,'2016-09-06 09:20:37','2016-09-06 09:20:37','merchant_default',''),(7,'shopapi','四菜一汤','四菜一汤',158.00,158.00,1,0,0,'2016-09-07 03:02:24','2016-09-07 03:02:24','merchant_default',''),(8,'shopapi','繁花似锦','含食材，适合4至6人享用/n\nRMB1288/套/n\n宴会菜单/n\n凉菜/n\n凤尾毛肚/n\n川椒皮蛋/n\n/n\n热菜/n\n李鸿章烧海参/n\n葱烧香辣千叶豆腐/n\n清蒸多宝鱼/n\n好味汁爆澳洲牛肉/n\n上汤鸡毛菜/n\n/n\n汤羹/n\n无花果老火靓汤/n\n/n\n主食/n\n炝锅面/n',1288.00,1188.00,1,0,0,'2016-09-07 06:11:40','2016-09-07 07:22:42','',''),(9,'shopapi','百花生宴','宴会菜单\n\n凉菜\n果仁菠菜\n夫妻肺片\n\n热菜\n红烧肉焖干豆角\n山城辣子鸡\n清蒸多宝鱼\n荷塘小炒\n花蛤蒸水蛋\n油焖海白虾\n小炒黑山羊\n白灼菜心\n\n汤羹\n酸辣乌鱼蛋汤\n\n主食\n重庆小面\n\n\n菜品展示\n\n\n服务须知\n费用包含食材及厨师服务费\n如有疑问，请联系呼我来客服\n成品以实物为准，图片仅供参考\n\n服务流程\n用户线上下单预约，支付全款\n客户专员联系和确认\n厨师团队上门服务\n电话：888-88888888',8888.00,6666.00,1,0,1,'2016-09-07 06:18:49','2016-09-13 09:55:01','',''),(10,'shopapi','满堂欢喜','满堂欢喜\n\n宴会菜单\n\n凉菜\n爽口碧绿翠\n水晶肴肉\n\n热菜\n沸腾牛柳\n五彩素丁\n干烧大黄鱼\n京酱肉丝\n上汤娃娃菜\n\n汤羹\n西湖牛肉羹\n\n主食\n酱油炒饭\n\n菜品展示\n\n服务须知\n费用包含食材及厨师服务费\n如有疑问，请联系呼我来客服\n成品以实物为准，图片仅供参考\n\n服务流程\n用户线上下单预约，支付全款\n客户专员联系和确认\n厨师团队上门服务\n电话：888-88888888',444.00,333.00,0,1,5,'2016-09-07 06:22:16','2016-09-18 06:30:55','',''),(11,'shopapi','dd','22',2222.00,222.00,1,0,0,'2016-09-07 06:40:01','2016-09-07 06:40:01','',''),(12,'shopapi','龙虾','爱大厨小龙虾 双人欢乐套餐\n\n价格¥218/份 免运费\n\n麻辣小龙虾10到12只，香辣花蛤和特制老坛凤爪各一份，另配花生、毛豆、龙虾面、百威啤酒四瓶\n\n麻辣小龙虾 10〜12只/份，个大体肥，肉质鲜嫩\n\n麻辣花蛤 约500g/份，麻辣鲜香\n\n四川老坛凤爪 约500g/份，酸辣爽口\n\n花毛配 约500g/份，咸香微辣，经典搭配\n\n龙虾面 约200g/份，搭配小龙虾汤汁食用\n\n啤酒 百威(Budweiser)四瓶，330ml/瓶\n\n购买须知：\n1、为保证口感和准时用餐，请提前两小时预定；\n2、限北京地区六环以内享用；\n3、配送时间：  11：30-22：00\n4、晚上20点以后预定，请拨客服电话：66666666',666.00,55.00,1,0,0,'2016-09-07 06:44:08','2016-09-07 06:44:08','',''),(13,'shopapi','有机食材','37546',68.00,68.00,0,0,0,'2016-09-07 06:46:13','2016-09-18 06:31:08','',''),(14,'shopapi','胡萝卜','胡萝卜的相关商品描述，胡萝卜的相关商品描述，胡萝卜的相关商品描述，胡萝卜的相关商品描述，胡萝卜的相关商品描述，胡萝卜的相关商品描述，胡萝卜的相关商品描述，胡萝卜的相关商品描述，胡萝卜的相关商品描述，胡萝卜的相关商品描述。',32.00,16.00,0,0,0,'2016-09-09 06:33:01','2016-09-18 06:31:07','',''),(15,'shopapi','最新胡萝卜二','最新胡萝卜二最新胡萝卜二最新胡萝卜二最新胡萝卜二最新胡萝卜二最新胡萝卜二，最新胡萝卜二最新胡萝卜二最新胡萝卜二最新胡萝卜二最新胡萝卜二最新胡萝卜二最新胡萝卜二最新胡萝卜二最新胡萝卜二最新胡萝卜二。',88.00,66.00,0,1,0,'2016-09-09 07:57:08','2016-09-18 06:31:10','',''),(16,'shopapi','六菜一汤','',168.00,168.00,1,0,0,'2016-09-10 08:57:22','2016-09-10 08:58:09','merchant_default',''),(17,'shopapi','七菜一汤','ces',178.00,178.00,1,0,0,'2016-09-10 09:02:36','2016-09-10 09:05:05','merchant_default',''),(18,'shopapi','六菜一汤','六菜一汤',240.00,240.00,1,0,0,'2016-09-12 03:02:08','2016-09-12 03:02:08','merchant_default',''),(19,'shopapi','四菜一汤','四菜一汤',158.00,158.00,1,0,5,'2016-09-12 03:31:10','2016-09-21 08:24:24','merchant_default',''),(20,'shopapi','四菜一汤','四菜一汤',158.00,158.00,1,0,0,'2016-09-12 03:58:40','2016-09-12 03:58:40','merchant_default',''),(21,'shopapi','四菜一汤','四菜一汤',158.00,158.00,1,0,0,'2016-09-12 04:03:23','2016-09-12 04:03:23','merchant_default',''),(22,'shopapi','四菜一汤','四菜一汤',158.00,158.00,1,0,0,'2016-09-12 04:11:32','2016-09-12 04:11:32','merchant_default',''),(23,'shopapi','测试商品','描述',100.00,90.00,0,1,0,'2016-09-18 06:32:06','2016-09-21 07:34:36','',''),(24,'shopapi','四菜一汤','四菜一汤',158.00,158.00,1,0,0,'2016-09-20 08:42:53','2016-09-20 08:42:53','merchant_default',''),(25,'shopapi','猴头菇3','大法师法',138.00,138.00,0,0,1,'2016-09-21 01:31:10','2016-09-21 07:34:33','',''),(26,'shopapi','胡萝卜最新测试','中医认为胡萝卜性温 味甘，性平。胡萝卜具有健脾消食、补肝明目、清热解毒、透疹、降气止咳的功效。具体的介绍如下：1. 胡萝卜有益肝明目功效：胡萝卜含有大量胡萝卜素，有补肝明目的作用，可治疗夜盲症;2. 胡萝卜有利膈宽肠功效：胡萝卜含有植物纤维，吸水性强，在肠道中体积容易膨胀，是肠道中的“充盈物质”，可加强肠道的蠕动，从而利膈宽肠，通便防癌;3. 胡萝卜有健脾除疳功效：维生素A是骨骼正常生长发育的必需物质，有助于细胞增殖与生长，是机体生长的要素，对促进婴幼儿的生长发育具有重要意义;4. 胡萝卜能增强免疫功能：胡萝卜素转变成维生素A，有助于增强机体的免疫功能，在预防上皮细胞癌变的过程中具有重要作用。胡萝卜中的木质素也能提高机体免疫机制，间接消灭癌细胞;5. 胡萝卜有降糖降脂功效：胡萝卜还含有降糖物质，是糖尿病人的良好食品，其所含的某些成分;如懈皮素、山标酚能增加冠状动脉血流量，降低血脂，促进肾上腺素的合成，还有降压，强心作用，是高血压、冠心病患者的食疗佳品。知道了胡萝卜的功效与作用有这么多，中医认为胡萝卜一般人都可食用。尤其是更适宜癌症、高血压、夜盲症、干眼症患者、营养不良、食欲不振者、皮肤粗糙者。好文推荐：秋季养肺宜吃白色食物 秋季养生 远离秋乏',128.00,128.00,1,0,0,'2016-09-21 07:38:38','2016-09-21 07:38:38','',''),(27,'shopapi','私人定制测试','测试',12888.00,12888.00,1,0,0,'2016-09-22 06:44:45','2016-09-22 06:44:45','',''),(28,'shopapi','私人定制二','',13888.00,13888.00,1,0,0,'2016-09-22 06:51:13','2016-09-22 06:51:13','',''),(29,'shopapi','发','',11.00,11.00,1,0,0,'2016-09-22 07:57:14','2016-09-22 07:57:14','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggest`
--

LOCK TABLES `suggest` WRITE;
/*!40000 ALTER TABLE `suggest` DISABLE KEYS */;
INSERT INTO `suggest` VALUES (1,'86bd9576a18d493ead9b5b6e945f4f04','15897972828','好的','2016-09-07 03:05:27','2016-09-07 03:05:27'),(2,'2bd209e36084479cbbb7258f12fce02f','18659330000','可以留捣乱 ','2016-09-12 01:10:21','2016-09-12 01:10:21');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_bank`
--

LOCK TABLES `user_bank` WRITE;
/*!40000 ALTER TABLE `user_bank` DISABLE KEYS */;
INSERT INTO `user_bank` VALUES (1,'shopapi','8a4a1879c2ce401f98fb7da0b703aa1d','简单的','都快','11111','2016-09-18 09:34:04','2016-09-18 09:34:04'),(4,'shopapi','d2a37b2a259d486b825fef7df40b8660','11111','建设银行','2222','2016-09-21 07:01:37','2016-09-21 07:01:37');
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

-- Dump completed on 2016-09-22 16:02:22
