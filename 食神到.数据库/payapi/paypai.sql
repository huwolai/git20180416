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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `open_id` varchar(255) DEFAULT NULL COMMENT '用户OpenID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `amount` decimal(20,0) DEFAULT NULL COMMENT '账户金额',
  `cashout_amount` decimal(20,0) DEFAULT NULL COMMENT '提现金额',
  `freeze_amount` decimal(20,0) DEFAULT NULL COMMENT '冻结金额',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `password` varchar(255) DEFAULT NULL COMMENT '账户密码',
  `status` int(11) DEFAULT '0' COMMENT '账户状态 1.正常 0.异常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `open_id` (`open_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'shopapi','8a4a1879c2ce401f98fb7da0b703aa1d','2016-09-25 18:21:35',0,0,0,'0000-00-00 00:00:00','',1),(2,'shopapi','2bd209e36084479cbbb7258f12fce02f','2016-09-25 21:29:11',0,0,0,'0000-00-00 00:00:00','',1),(3,'shopapi','8644c5f03c4d479a95fafa17221f55d3','2016-09-25 22:34:56',0,0,0,'0000-00-00 00:00:00','',1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_freeze`
--

DROP TABLE IF EXISTS `accounts_freeze`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_freeze` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '唯一编号',
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `open_id` varchar(255) DEFAULT NULL COMMENT '用户OpenID',
  `amount` decimal(20,0) DEFAULT NULL COMMENT '冻结金额',
  `status` int(11) DEFAULT NULL COMMENT '1.已冻结 0.解除冻结',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_freeze`
--

LOCK TABLES `accounts_freeze` WRITE;
/*!40000 ALTER TABLE `accounts_freeze` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_freeze` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_record`
--

DROP TABLE IF EXISTS `accounts_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sub_trade_no` varchar(255) DEFAULT NULL COMMENT '子交易号',
  `code` varchar(255) DEFAULT NULL COMMENT '预付款代号',
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `open_id` varchar(255) DEFAULT NULL COMMENT '用户openID',
  `account_id` bigint(20) DEFAULT NULL COMMENT '账户ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `amount_before` decimal(20,0) DEFAULT NULL COMMENT '金额变动前',
  `amount_after` decimal(20,0) DEFAULT NULL COMMENT '金额变动后',
  `changed_amount` decimal(20,0) DEFAULT NULL COMMENT '变动金额(单位:分)',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_record`
--

LOCK TABLES `accounts_record` WRITE;
/*!40000 ALTER TABLE `accounts_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app`
--

DROP TABLE IF EXISTS `app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(255) DEFAULT NULL COMMENT '用户的OPENID',
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `app_key` varchar(255) DEFAULT NULL COMMENT '应用KEY',
  `app_name` varchar(255) DEFAULT NULL COMMENT '应用名称',
  `app_desc` varchar(1000) DEFAULT NULL COMMENT '应用描述',
  `status` int(11) DEFAULT NULL COMMENT '应用状态 0.待审核 1.已审核',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_id` (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app`
--

LOCK TABLES `app` WRITE;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` VALUES (1,'232323','shopapi','4537C07A563C4899B5A592DA3CC84A10','呼我来','呼我来',1,'2016-09-06 09:30:24','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_out`
--

DROP TABLE IF EXISTS `cash_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cash_out` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cashoutcode` varchar(255) DEFAULT NULL COMMENT '提现代号',
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `open_id` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `amount` decimal(20,0) DEFAULT NULL COMMENT '金额',
  `status` int(11) DEFAULT '0' COMMENT '状态 0.等待提现 1.提现完成',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_out`
--

LOCK TABLES `cash_out` WRITE;
/*!40000 ALTER TABLE `cash_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_out` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `gorp_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imprest`
--

DROP TABLE IF EXISTS `imprest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imprest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `code` varchar(255) DEFAULT NULL COMMENT '付款码代号',
  `out_trade_no` varchar(255) DEFAULT '' COMMENT '第三方交易号',
  `trade_no` varchar(255) DEFAULT NULL COMMENT '交易编号',
  `trade_type` int(11) DEFAULT NULL COMMENT '交易类型',
  `open_id` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `type` int(11) DEFAULT NULL COMMENT '付款码类型 1.付款',
  `opr_open_ids` varchar(4000) DEFAULT NULL COMMENT '可以操作的人的ID集合例如: 1223,343545,4545',
  `amount` decimal(20,0) DEFAULT NULL COMMENT '金额',
  `balance` decimal(20,0) DEFAULT NULL COMMENT '余额',
  `status` int(11) DEFAULT '0' COMMENT '状态 1.进行中 0.等待生效 2.完成  -1.异常',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imprest`
--

LOCK TABLES `imprest` WRITE;
/*!40000 ALTER TABLE `imprest` DISABLE KEYS */;
INSERT INTO `imprest` VALUES (1,'shopapi','e132fb365d28486cb0e265c7263dbc95','2c0c3f8110df4f85a9376a3430e3768a','1160926525400027',1,'8644c5f03c4d479a95fafa17221f55d3','2016-09-25 22:35:41','2016-09-25 22:35:41',1,'',1,1,0,'账户充值','账户充值'),(2,'shopapi','2e39d810c1524a42a29ea99bc6de1a83','9f604a20e9964d8a99abd9168e59aff7','1160926525480028',1,'8644c5f03c4d479a95fafa17221f55d3','2016-09-25 22:35:48','2016-09-25 22:35:48',1,'',1,1,0,'账户充值','账户充值'),(3,'shopapi','aa853328a3dd4db184874c7548ffb6b7','075c29d1fa3c457a9ac8c7c8228a747a','1160926525570029',1,'8644c5f03c4d479a95fafa17221f55d3','2016-09-25 22:35:58','2016-09-25 22:35:58',1,'',1,1,0,'账户充值','账户充值'),(4,'shopapi','d70347823eef4db58936d879789c4ea4','ab4d92bc6ee64a40a166d0059a28c4b7','1160926525640030',1,'8644c5f03c4d479a95fafa17221f55d3','2016-09-25 22:36:04','2016-09-25 22:36:04',1,'',1,1,0,'账户充值','账户充值');
/*!40000 ALTER TABLE `imprest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imprest_record`
--

DROP TABLE IF EXISTS `imprest_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imprest_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `code` varchar(255) DEFAULT NULL COMMENT '付款码代号',
  `sub_trade_no` varchar(255) DEFAULT NULL COMMENT '子交易号',
  `trade_no` varchar(255) DEFAULT NULL COMMENT '交易编号',
  `open_id` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `opr_open_id` varchar(255) DEFAULT NULL COMMENT '操作者用户ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `type` int(11) DEFAULT NULL COMMENT '付款码类型 1.付款 2. 收款',
  `amount` decimal(20,0) DEFAULT NULL COMMENT '金额',
  `amount_after` decimal(20,0) DEFAULT NULL COMMENT '交易后',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imprest_record`
--

LOCK TABLES `imprest_record` WRITE;
/*!40000 ALTER TABLE `imprest_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `imprest_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trades`
--

DROP TABLE IF EXISTS `trades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trades` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trade_no` varchar(255) DEFAULT NULL COMMENT '交易号',
  `trade_type` int(11) DEFAULT NULL COMMENT '交易类型 1.充值 2.普通支出 3.预付款 4.收款',
  `out_trade_no` varchar(255) DEFAULT NULL COMMENT '第三方系统中的交易号',
  `out_trade_type` int(11) DEFAULT NULL COMMENT '第三方系统中的交易类型',
  `notify_url` varchar(1000) DEFAULT NULL COMMENT '交易通知地址',
  `notify_status` int(11) DEFAULT NULL COMMENT '通知状态(1.通知成功 0.等待通知 2.通知失败)',
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `open_id` varchar(255) DEFAULT NULL COMMENT '用户openID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `changed_amount` decimal(20,0) DEFAULT NULL COMMENT '变动金额(单位:分)',
  `actual_amount` decimal(20,0) DEFAULT NULL COMMENT '实际支付金额',
  `title` varchar(255) DEFAULT NULL COMMENT '交易标题',
  `remark` varchar(1000) DEFAULT NULL COMMENT '交易备注',
  `no_once` int(11) DEFAULT NULL COMMENT '是否需要一次性付清 0.不需要 1.需要',
  `status` int(11) DEFAULT NULL COMMENT '状态 1.交易成功 0.待交易 2.交易错误 3.交易欠付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_no` (`trade_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trades`
--

LOCK TABLES `trades` WRITE;
/*!40000 ALTER TABLE `trades` DISABLE KEYS */;
INSERT INTO `trades` VALUES (1,'1160926525400027',1,'2c0c3f8110df4f85a9376a3430e3768a',1,'http://shopapi.qiyunxin.svc.cluster.local:8080/v1/pay/payapi/callback',0,'shopapi','8644c5f03c4d479a95fafa17221f55d3','2016-09-25 22:35:41','2016-09-25 22:35:41',1,0,'账户充值','账户充值',0,0),(2,'1160926525480028',1,'9f604a20e9964d8a99abd9168e59aff7',1,'http://shopapi.qiyunxin.svc.cluster.local:8080/v1/pay/payapi/callback',0,'shopapi','8644c5f03c4d479a95fafa17221f55d3','2016-09-25 22:35:48','2016-09-25 22:35:48',1,0,'账户充值','账户充值',0,0),(3,'1160926525570029',1,'075c29d1fa3c457a9ac8c7c8228a747a',1,'http://shopapi.qiyunxin.svc.cluster.local:8080/v1/pay/payapi/callback',0,'shopapi','8644c5f03c4d479a95fafa17221f55d3','2016-09-25 22:35:58','2016-09-25 22:35:58',1,0,'账户充值','账户充值',0,0),(4,'1160926525640030',1,'ab4d92bc6ee64a40a166d0059a28c4b7',1,'http://shopapi.qiyunxin.svc.cluster.local:8080/v1/pay/payapi/callback',0,'shopapi','8644c5f03c4d479a95fafa17221f55d3','2016-09-25 22:36:04','2016-09-25 22:36:04',1,0,'账户充值','账户充值',0,0);
/*!40000 ALTER TABLE `trades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trades_pay`
--

DROP TABLE IF EXISTS `trades_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trades_pay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(255) DEFAULT NULL COMMENT '付款人的ID',
  `trade_no` varchar(255) DEFAULT NULL COMMENT '交易号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `pay_type` int(11) DEFAULT NULL COMMENT '支付类型 0.支付宝 1.微信 2.账户余额',
  `pay_amount` decimal(20,0) DEFAULT NULL COMMENT '实际付款金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trades_pay`
--

LOCK TABLES `trades_pay` WRITE;
/*!40000 ALTER TABLE `trades_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `trades_pay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-26 14:36:12
