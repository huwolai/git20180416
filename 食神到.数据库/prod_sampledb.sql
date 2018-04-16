/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : sampledb

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-09-27 10:55:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('10', 'shopapi', '8a4a1879c2ce401f98fb7da0b703aa1d', '15921615913', '0.00', '', '1', '', '2016-09-26 14:34:02', '2016-09-26 14:47:50');
INSERT INTO `account` VALUES ('11', 'shopapi', '8644c5f03c4d479a95fafa17221f55d3', '13811111111', '0.00', '', '1', '', '2016-09-26 14:34:56', '2016-09-26 14:34:56');
INSERT INTO `account` VALUES ('12', 'shopapi', 'e6ec45b01a744fd4b0079cbf8c99014d', '13800000000', '0.00', '123456', '1', '', '2016-09-26 14:46:26', '2016-09-27 09:13:42');
INSERT INTO `account` VALUES ('13', 'shopapi', '8c6ba245b64a4bd282d1ddb52156372b', '13641677914', '0.00', '', '1', '', '2016-09-27 10:48:51', '2016-09-27 10:48:52');

-- ----------------------------
-- Table structure for `account_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `account_recharge`;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of account_recharge
-- ----------------------------
INSERT INTO `account_recharge` VALUES ('18', '8f447ad7c0c2423790d795c619699273', 'shopapi', '', '0.01', '0', '', '', '2016-09-26 14:35:37', '2016-09-26 14:35:37');
INSERT INTO `account_recharge` VALUES ('19', '2c0c3f8110df4f85a9376a3430e3768a', 'shopapi', '', '0.01', '0', '', '', '2016-09-26 14:35:40', '2016-09-26 14:35:40');
INSERT INTO `account_recharge` VALUES ('20', '9f604a20e9964d8a99abd9168e59aff7', 'shopapi', '', '0.01', '0', '', '', '2016-09-26 14:35:48', '2016-09-26 14:35:48');
INSERT INTO `account_recharge` VALUES ('21', '075c29d1fa3c457a9ac8c7c8228a747a', 'shopapi', '', '0.01', '0', '', '', '2016-09-26 14:35:57', '2016-09-26 14:35:57');
INSERT INTO `account_recharge` VALUES ('22', 'ab4d92bc6ee64a40a166d0059a28c4b7', 'shopapi', '', '0.01', '0', '', '', '2016-09-26 14:36:04', '2016-09-26 14:36:04');
INSERT INTO `account_recharge` VALUES ('23', '497c1b2499b94fa0b924f5267984440e', 'shopapi', '', '0.01', '0', '', '', '2016-09-27 10:53:34', '2016-09-27 10:53:34');

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', 'shopapi', 'e6ec45b01a744fd4b0079cbf8c99014d', '118.1614580000', '24.6532010000', '啦啦', '1663737883', '哦哦哦', '0', null, '{\"name\":\"啦啦\",\"mobile_phone\":\"1663737883\",\"select_location\":\"安思通(厦门)制动系统有限公司\"}', '2016-09-27 09:10:20', '2016-09-27 09:10:20');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
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

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'shopapi', '家常用餐', '家常菜', '../static/area_1.png', 'home', '', '2016-09-06 03:41:00', '2016-09-06 03:41:00');
INSERT INTO `category` VALUES ('2', 'shopapi', '系列套餐', '私人订制', '../static/area_2.png', 'home', '', '2016-09-06 03:41:00', '2016-09-06 03:41:00');
INSERT INTO `category` VALUES ('3', 'shopapi', '私人订制', '家常菜', '../static/area_3.png', 'home', '', '2016-09-06 03:41:00', '2016-09-06 03:41:00');
INSERT INTO `category` VALUES ('4', 'shopapi', '水果', '水果', '../../static/mall-icon1.png', 'mall', '', '2016-09-06 03:41:35', '2016-09-26 00:51:41');
INSERT INTO `category` VALUES ('5', 'shopapi', '干货', '干货', '../static/mall-icon2.png', 'mall', '', '2016-09-06 03:41:35', '2016-09-26 00:51:51');
INSERT INTO `category` VALUES ('6', 'shopapi', '海鲜', '海鲜', '../static/mall-icon3.png', 'mall', '', '2016-09-06 03:41:36', '2016-09-06 03:41:36');
INSERT INTO `category` VALUES ('7', 'shopapi', '食材', '食材', '../static/mall-icon4.png', 'mall', '', '2016-09-06 03:41:36', '2016-09-13 10:48:01');

-- ----------------------------
-- Table structure for `distribution_product`
-- ----------------------------
DROP TABLE IF EXISTS `distribution_product`;
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

-- ----------------------------
-- Records of distribution_product
-- ----------------------------

-- ----------------------------
-- Table structure for `favorites`
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
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

-- ----------------------------
-- Records of favorites
-- ----------------------------

-- ----------------------------
-- Table structure for `flags`
-- ----------------------------
DROP TABLE IF EXISTS `flags`;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of flags
-- ----------------------------
INSERT INTO `flags` VALUES ('2', 'shopapi', '厨师服务', 'merchant_default', 'PRODUCT', '1', '2016-09-26 17:57:48', '2016-09-26 17:58:18');

-- ----------------------------
-- Table structure for `gorp_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `gorp_migrations`;
CREATE TABLE `gorp_migrations` (
  `id` varchar(255) NOT NULL,
  `applied_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gorp_migrations
-- ----------------------------
INSERT INTO `gorp_migrations` VALUES ('20160910.sql', '2016-09-26 09:32:22');

-- ----------------------------
-- Table structure for `merchant`
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES ('1', '默认商户', 'shopapi', '75b3be97d0b749768bcb272e4684786a', '', '0.0000000000', '0.0000000000', '', '0', '3', '1', 'default', '', '2016-09-05 19:47:58', '2016-09-20 17:28:06');
INSERT INTO `merchant` VALUES ('4', '啦啦啦', 'shopapi', '8644c5f03c4d479a95fafa17221f55d3', '13811111111', '118.1606062083', '24.6521140373', '', '20000', '0', '1', '', '{\"name\":\"啦啦啦\",\"sex\":\"男\",\"goodCooks\":[\"家常菜\",\"鲁菜\",\"粤菜\"],\"video_url\":\"嘎嘎嘎嘎\"}', '2016-09-26 17:35:16', '2016-09-26 17:36:44');

-- ----------------------------
-- Table structure for `merchant_imgs`
-- ----------------------------
DROP TABLE IF EXISTS `merchant_imgs`;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of merchant_imgs
-- ----------------------------
INSERT INTO `merchant_imgs` VALUES ('21', 'shopapi', '8644c5f03c4d479a95fafa17221f55d3', '4', 'works', '/images/201609/6d99301ea6cf4a62af8f8a83f6689b38', '');
INSERT INTO `merchant_imgs` VALUES ('22', 'shopapi', '8644c5f03c4d479a95fafa17221f55d3', '4', 'works', '/images/201609/8b29822b0f8e4cb1af9ce015794678de', '');
INSERT INTO `merchant_imgs` VALUES ('23', 'shopapi', '8644c5f03c4d479a95fafa17221f55d3', '4', 'works', '/images/201609/22a83aa8760047f2b910306bdf279a73', '');

-- ----------------------------
-- Table structure for `merchant_open`
-- ----------------------------
DROP TABLE IF EXISTS `merchant_open`;
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

-- ----------------------------
-- Records of merchant_open
-- ----------------------------

-- ----------------------------
-- Table structure for `merchant_prod`
-- ----------------------------
DROP TABLE IF EXISTS `merchant_prod`;
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of merchant_prod
-- ----------------------------
INSERT INTO `merchant_prod` VALUES ('25', 'shopapi', '1', '25', '', '', '2016-09-26 15:23:13', '2016-09-26 15:23:13');
INSERT INTO `merchant_prod` VALUES ('26', 'shopapi', '1', '26', '', '', '2016-09-26 15:33:29', '2016-09-26 15:33:29');
INSERT INTO `merchant_prod` VALUES ('27', 'shopapi', '1', '27', '', '', '2016-09-26 15:46:33', '2016-09-26 15:46:33');
INSERT INTO `merchant_prod` VALUES ('28', 'shopapi', '1', '28', '', '', '2016-09-26 16:19:14', '2016-09-26 16:19:14');
INSERT INTO `merchant_prod` VALUES ('29', 'shopapi', '1', '29', '', '', '2016-09-26 16:27:27', '2016-09-26 16:27:27');
INSERT INTO `merchant_prod` VALUES ('30', 'shopapi', '1', '30', '', '', '2016-09-26 16:41:28', '2016-09-26 16:41:28');
INSERT INTO `merchant_prod` VALUES ('31', 'shopapi', '1', '31', '', '', '2016-09-26 16:52:49', '2016-09-26 16:52:49');
INSERT INTO `merchant_prod` VALUES ('32', 'shopapi', '1', '32', '', '', '2016-09-26 17:01:10', '2016-09-26 17:01:10');
INSERT INTO `merchant_prod` VALUES ('33', 'shopapi', '1', '33', '', '', '2016-09-26 17:09:53', '2016-09-26 17:09:53');
INSERT INTO `merchant_prod` VALUES ('34', 'shopapi', '1', '34', '', '', '2016-09-26 17:21:40', '2016-09-26 17:21:40');
INSERT INTO `merchant_prod` VALUES ('35', 'shopapi', '4', '35', '', '', '2016-09-26 17:35:54', '2016-09-26 17:35:54');
INSERT INTO `merchant_prod` VALUES ('36', 'shopapi', '1', '36', '', '', '2016-09-27 09:00:30', '2016-09-27 09:00:30');
INSERT INTO `merchant_prod` VALUES ('37', 'shopapi', '1', '37', '', '', '2016-09-27 09:31:55', '2016-09-27 09:31:55');

-- ----------------------------
-- Table structure for `merchant_service_time`
-- ----------------------------
DROP TABLE IF EXISTS `merchant_service_time`;
CREATE TABLE `merchant_service_time` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merchant_id` bigint(20) DEFAULT NULL COMMENT '商户ID',
  `stime` varchar(20) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of merchant_service_time
-- ----------------------------

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('8', '2016926155726629969976', '', '', '0', '', '', '0.00', '0.00', '0.00', '71.50', '68.80', '0.00', '1', '75b3be97d0b749768bcb272e4684786a', '默认商户', 'd2a37b2a259d486b825fef7df40b8660', 'shopapi', '购买商品', '0.00000000', '2', '0', '0.00', '', '', '', '', '2016-09-26 15:57:26', '2016-09-26 16:30:00');
INSERT INTO `order` VALUES ('9', '20169279912747710244', '', '2cd8d4110e364ef985e76ae9949922e3', '1', '哦哦哦', '', '0.00', '0.00', '158.00', '158.00', '158.00', '158.00', '4', '8644c5f03c4d479a95fafa17221f55d3', '啦啦啦', 'e6ec45b01a744fd4b0079cbf8c99014d', 'shopapi', '预定厨师', '0.00000000', '2', '2', '0.00', '', '', '', '', '2016-09-27 09:09:12', '2016-09-27 09:45:00');
INSERT INTO `order` VALUES ('10', '20169279122233232393', '', 'a310ee4161fa46b383715d89dbad8dc0', '1', '哦哦哦', '', '0.00', '0.00', '158.00', '158.00', '158.00', '158.00', '4', '8644c5f03c4d479a95fafa17221f55d3', '啦啦啦', 'e6ec45b01a744fd4b0079cbf8c99014d', 'shopapi', '预定厨师', '0.00000000', '2', '2', '0.00', '', '', '', '', '2016-09-27 09:12:22', '2016-09-27 09:45:00');
INSERT INTO `order` VALUES ('11', '201692792621183311875', '', '2dd7452aa2a04a5f835769dd37b8f985', '1', '哦哦哦', '', '0.00', '0.00', '158.00', '158.00', '158.00', '158.00', '4', '8644c5f03c4d479a95fafa17221f55d3', '啦啦啦', 'e6ec45b01a744fd4b0079cbf8c99014d', 'shopapi', '预定厨师', '0.00000000', '2', '2', '0.00', '', '', '', '', '2016-09-27 09:26:21', '2016-09-27 10:00:00');

-- ----------------------------
-- Table structure for `order_action`
-- ----------------------------
DROP TABLE IF EXISTS `order_action`;
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

-- ----------------------------
-- Records of order_action
-- ----------------------------

-- ----------------------------
-- Table structure for `order_address`
-- ----------------------------
DROP TABLE IF EXISTS `order_address`;
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

-- ----------------------------
-- Records of order_address
-- ----------------------------

-- ----------------------------
-- Table structure for `order_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `order_coupon`;
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

-- ----------------------------
-- Records of order_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `order_item`
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('8', '2016926155726629969976', '', 'shopapi', '', '27', 'd38c74c37f284105ba3d787f39f3fc3f', '1', '71.50', '71.50', '68.80', '68.80', '0.00', '0.00000000', '0.00', '0.00', '', '{\"goods_type\":\"mall\"}', '2016-09-26 15:57:26', '2016-09-26 15:57:26');
INSERT INTO `order_item` VALUES ('9', '20169279912747710244', '', 'shopapi', '', '35', '63e62f6784ee4e5c8394bf9cbda7abde', '1', '158.00', '158.00', '158.00', '158.00', '0.00', '0.00000000', '0.00', '158.00', '', '{\"dinner_time\":\"2016-09-27 16:00\",\"chef_name\":\"啦啦啦\",\"goods_type\":\"chef\"}', '2016-09-27 09:09:12', '2016-09-27 09:14:31');
INSERT INTO `order_item` VALUES ('10', '20169279122233232393', '', 'shopapi', '', '35', '63e62f6784ee4e5c8394bf9cbda7abde', '1', '158.00', '158.00', '158.00', '158.00', '0.00', '0.00000000', '0.00', '158.00', '', '{\"dinner_time\":\"2016-09-27 16:00\",\"chef_name\":\"啦啦啦\",\"goods_type\":\"chef\"}', '2016-09-27 09:12:22', '2016-09-27 09:13:46');
INSERT INTO `order_item` VALUES ('11', '201692792621183311875', '', 'shopapi', '', '35', '63e62f6784ee4e5c8394bf9cbda7abde', '1', '158.00', '158.00', '158.00', '158.00', '0.00', '0.00000000', '0.00', '158.00', '', '{\"dinner_time\":\"2016-09-27 16:00\",\"chef_name\":\"啦啦啦\",\"goods_type\":\"chef\"}', '2016-09-27 09:26:21', '2016-09-27 09:26:32');

-- ----------------------------
-- Table structure for `prod_attr_key`
-- ----------------------------
DROP TABLE IF EXISTS `prod_attr_key`;
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

-- ----------------------------
-- Records of prod_attr_key
-- ----------------------------

-- ----------------------------
-- Table structure for `prod_attr_val`
-- ----------------------------
DROP TABLE IF EXISTS `prod_attr_val`;
CREATE TABLE `prod_attr_val` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prod_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `attr_key` varchar(255) DEFAULT '' COMMENT '属性key',
  `attr_value` varchar(255) DEFAULT '' COMMENT '属性值',
  `flag` varchar(100) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of prod_attr_val
-- ----------------------------
INSERT INTO `prod_attr_val` VALUES ('3', '35', 'time', '201609271600', '', '');

-- ----------------------------
-- Table structure for `prod_category`
-- ----------------------------
DROP TABLE IF EXISTS `prod_category`;
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of prod_category
-- ----------------------------
INSERT INTO `prod_category` VALUES ('25', '4', 'shopapi', '25', '', '', '2016-09-26 15:23:13', '2016-09-26 15:23:13');
INSERT INTO `prod_category` VALUES ('26', '4', 'shopapi', '26', '', '', '2016-09-26 15:33:29', '2016-09-26 15:33:29');
INSERT INTO `prod_category` VALUES ('27', '7', 'shopapi', '27', '', '', '2016-09-26 15:46:33', '2016-09-26 17:51:20');
INSERT INTO `prod_category` VALUES ('28', '7', 'shopapi', '28', '', '', '2016-09-26 16:19:14', '2016-09-26 16:19:14');
INSERT INTO `prod_category` VALUES ('29', '7', 'shopapi', '29', '', '', '2016-09-26 16:27:27', '2016-09-26 16:27:27');
INSERT INTO `prod_category` VALUES ('30', '5', 'shopapi', '30', '', '', '2016-09-26 16:41:28', '2016-09-26 16:41:28');
INSERT INTO `prod_category` VALUES ('31', '5', 'shopapi', '31', '', '', '2016-09-26 16:52:49', '2016-09-26 16:52:49');
INSERT INTO `prod_category` VALUES ('32', '7', 'shopapi', '32', '', '', '2016-09-26 17:01:10', '2016-09-26 17:01:10');
INSERT INTO `prod_category` VALUES ('33', '6', 'shopapi', '33', '', '', '2016-09-26 17:09:53', '2016-09-26 17:09:53');
INSERT INTO `prod_category` VALUES ('34', '6', 'shopapi', '34', '', '', '2016-09-26 17:21:40', '2016-09-26 17:21:40');
INSERT INTO `prod_category` VALUES ('35', '1', 'shopapi', '35', '', '', '2016-09-26 17:35:54', '2016-09-26 17:35:54');
INSERT INTO `prod_category` VALUES ('36', '7', 'shopapi', '36', '', '', '2016-09-27 09:00:30', '2016-09-27 09:00:30');
INSERT INTO `prod_category` VALUES ('37', '5', 'shopapi', '37', '', '', '2016-09-27 09:31:55', '2016-09-27 09:31:55');

-- ----------------------------
-- Table structure for `prod_imgs`
-- ----------------------------
DROP TABLE IF EXISTS `prod_imgs`;
CREATE TABLE `prod_imgs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(40) DEFAULT '' COMMENT 'APPID',
  `prod_id` bigint(20) DEFAULT NULL COMMENT '产品ID',
  `flag` varchar(100) DEFAULT '' COMMENT '图片标记',
  `url` varchar(400) DEFAULT '' COMMENT '图片URL',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  PRIMARY KEY (`id`),
  KEY `prod_app_id` (`prod_id`,`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of prod_imgs
-- ----------------------------
INSERT INTO `prod_imgs` VALUES ('58', 'shopapi', '25', '', '/images/201609/5d8a7ec601e44bada3cf82b50d9dd24c', '');
INSERT INTO `prod_imgs` VALUES ('59', 'shopapi', '25', '', '/images/201609/856e39a012d744a3abf2acb54dca35c8', '');
INSERT INTO `prod_imgs` VALUES ('60', 'shopapi', '25', '', '/images/201609/f325d28b035945a1b005a05036d0dbbf', '');
INSERT INTO `prod_imgs` VALUES ('61', 'shopapi', '25', '', '/images/201609/213f37c1587e431a9738a508778a536f', '');
INSERT INTO `prod_imgs` VALUES ('62', 'shopapi', '25', '', '/images/201609/394172f2773e4fdeacfc7f4ba65d661a', '');
INSERT INTO `prod_imgs` VALUES ('63', 'shopapi', '26', '', '/images/201609/19586e53799742b0b3a6d8ab3b06a02a', '');
INSERT INTO `prod_imgs` VALUES ('64', 'shopapi', '26', '', '/images/201609/7b5cb4dec3a14bceb0ed46106efc10af', '');
INSERT INTO `prod_imgs` VALUES ('65', 'shopapi', '26', '', '/images/201609/629c8bb7629441bd9f1682b640a6f356', '');
INSERT INTO `prod_imgs` VALUES ('66', 'shopapi', '26', '', '/images/201609/2fc057e062d94f158a2656bab7561263', '');
INSERT INTO `prod_imgs` VALUES ('67', 'shopapi', '26', '', '/images/201609/4950aae78c2b4a58a4ad0fe5ebef713f', '');
INSERT INTO `prod_imgs` VALUES ('68', 'shopapi', '26', '', '/images/201609/f980cd7884a64dbc940cd0f5078933cb', '');
INSERT INTO `prod_imgs` VALUES ('69', 'shopapi', '26', '', '/images/201609/0ff872d7d27641049d4947042d0fca7c', '');
INSERT INTO `prod_imgs` VALUES ('70', 'shopapi', '26', '', '/images/201609/6d0283e41c0c4f6f9fd412f07b0ef4af', '');
INSERT INTO `prod_imgs` VALUES ('71', 'shopapi', '26', '', '/images/201609/a14c423e17464f14ae3aa444fbdb023b', '');
INSERT INTO `prod_imgs` VALUES ('72', 'shopapi', '26', '', '/images/201609/7217d9ab515f48879086b477b1d2d161', '');
INSERT INTO `prod_imgs` VALUES ('73', 'shopapi', '26', '', '/images/201609/9a2b876f8fe04fabb43df5e7a58aae0b', '');
INSERT INTO `prod_imgs` VALUES ('74', 'shopapi', '27', '', '/images/201609/e3b733ca45934527b209ae463414ab7d', '');
INSERT INTO `prod_imgs` VALUES ('75', 'shopapi', '27', '', '/images/201609/46864c0d4e984fb88e0413dea3301e02', '');
INSERT INTO `prod_imgs` VALUES ('76', 'shopapi', '27', '', '/images/201609/50c72585560141c89106f0c8cce9c314', '');
INSERT INTO `prod_imgs` VALUES ('77', 'shopapi', '27', '', '/images/201609/226833a61a8349e0b2de957316427e30', '');
INSERT INTO `prod_imgs` VALUES ('78', 'shopapi', '27', '', '/images/201609/681b83eeb0834acdb01e3184b62e95c0', '');
INSERT INTO `prod_imgs` VALUES ('79', 'shopapi', '27', '', '/images/201609/4fa5f83c5e1446d290c6716920b5b162', '');
INSERT INTO `prod_imgs` VALUES ('80', 'shopapi', '27', '', '/images/201609/52ae69f6c0b44ddc899bb0f5f0457631', '');
INSERT INTO `prod_imgs` VALUES ('81', 'shopapi', '27', '', '/images/201609/c87aa66a7eb542179c0b554cd39cd8be', '');
INSERT INTO `prod_imgs` VALUES ('82', 'shopapi', '27', '', '/images/201609/93075649a2a94dd7aae8c0ca87713bc0', '');
INSERT INTO `prod_imgs` VALUES ('83', 'shopapi', '27', '', '/images/201609/b5c40a8b4c72404ebb07dacd8b2fe2da', '');
INSERT INTO `prod_imgs` VALUES ('84', 'shopapi', '27', '', '/images/201609/226c94344c4e4ea0a9e5fe04f137c10d', '');
INSERT INTO `prod_imgs` VALUES ('85', 'shopapi', '27', '', '/images/201609/3ffb4ec1fc3546afa052c5112a148e04', '');
INSERT INTO `prod_imgs` VALUES ('86', 'shopapi', '28', '', '/images/201609/ea19215ea4344264b8f0f66d0aa1cc63', '');
INSERT INTO `prod_imgs` VALUES ('87', 'shopapi', '28', '', '/images/201609/28ae3bf90ab34c019049b70e81632fc2', '');
INSERT INTO `prod_imgs` VALUES ('88', 'shopapi', '28', '', '/images/201609/bfb6604a4ba9430bba3a2bb20ee4295e', '');
INSERT INTO `prod_imgs` VALUES ('89', 'shopapi', '28', '', '/images/201609/d60c1b1e4ad643c3a65eee9028898f8f', '');
INSERT INTO `prod_imgs` VALUES ('90', 'shopapi', '28', '', '/images/201609/637b6edbc82c440d82dfb27d436b77c2', '');
INSERT INTO `prod_imgs` VALUES ('91', 'shopapi', '28', '', '/images/201609/f4e06a40ea93431780b08a66c92ffbde', '');
INSERT INTO `prod_imgs` VALUES ('92', 'shopapi', '28', '', '/images/201609/21644c413fd643c99bc88fed8065b337', '');
INSERT INTO `prod_imgs` VALUES ('93', 'shopapi', '29', '', '/images/201609/aa5470bd46c843f5aef15847cd6f7ce2', '');
INSERT INTO `prod_imgs` VALUES ('94', 'shopapi', '29', '', '/images/201609/dde3368f56b94d0480078bdd2d8fe151', '');
INSERT INTO `prod_imgs` VALUES ('95', 'shopapi', '29', '', '/images/201609/b579cce5ef574f5b88131820869d5305', '');
INSERT INTO `prod_imgs` VALUES ('96', 'shopapi', '29', '', '/images/201609/7989f37445564ce0880ab803ccceff93', '');
INSERT INTO `prod_imgs` VALUES ('97', 'shopapi', '29', '', '/images/201609/c13c20146d214431ae8439144517b92c', '');
INSERT INTO `prod_imgs` VALUES ('98', 'shopapi', '29', '', '/images/201609/55a3a153dd0440b78ee821f4e3127f98', '');
INSERT INTO `prod_imgs` VALUES ('99', 'shopapi', '29', '', '/images/201609/e2117c6e1d0c4997a405654fdde98f7e', '');
INSERT INTO `prod_imgs` VALUES ('100', 'shopapi', '29', '', '/images/201609/34c644841dcf472eaa8a21277ab26cec', '');
INSERT INTO `prod_imgs` VALUES ('101', 'shopapi', '30', '', '/images/201609/b358b103d68e4e3d834cd8ef8bb8eca0', '');
INSERT INTO `prod_imgs` VALUES ('102', 'shopapi', '30', '', '/images/201609/81bed05e24ee4458acd900b8a670467c', '');
INSERT INTO `prod_imgs` VALUES ('103', 'shopapi', '30', '', '/images/201609/8fe5ce7555f347ab8dd5bb93a96f58f9', '');
INSERT INTO `prod_imgs` VALUES ('104', 'shopapi', '30', '', '/images/201609/ab5e730224114415a6b8a754781a9b22', '');
INSERT INTO `prod_imgs` VALUES ('105', 'shopapi', '30', '', '/images/201609/f42e43302a18466cbb85d59afa4b9c08', '');
INSERT INTO `prod_imgs` VALUES ('106', 'shopapi', '30', '', '/images/201609/5e4707318b8b41a6846f84765e62a075', '');
INSERT INTO `prod_imgs` VALUES ('107', 'shopapi', '30', '', '/images/201609/f29b78e8f43548c4b993409c2ad895df', '');
INSERT INTO `prod_imgs` VALUES ('108', 'shopapi', '30', '', '/images/201609/271d6c4c0aaa499d90fab9a171b44cb1', '');
INSERT INTO `prod_imgs` VALUES ('109', 'shopapi', '30', '', '/images/201609/051e2488a15348cfb9fb1872d374e9be', '');
INSERT INTO `prod_imgs` VALUES ('110', 'shopapi', '30', '', '/images/201609/d712c4bffab0439abb44e415c7f4242e', '');
INSERT INTO `prod_imgs` VALUES ('111', 'shopapi', '30', '', '/images/201609/f6245e63d7af4da9a529ad95d4f46ff3', '');
INSERT INTO `prod_imgs` VALUES ('112', 'shopapi', '30', '', '/images/201609/120e228f3f134629a0e8e3b48055a566', '');
INSERT INTO `prod_imgs` VALUES ('113', 'shopapi', '30', '', '/images/201609/8be863d9f68b46e0812de354397362fa', '');
INSERT INTO `prod_imgs` VALUES ('114', 'shopapi', '30', '', '/images/201609/f8e4354f8baa4f3d948d1243d8caf15e', '');
INSERT INTO `prod_imgs` VALUES ('115', 'shopapi', '30', '', '/images/201609/9ae83c0cb0ea43b0a3d490bb9a6485f0', '');
INSERT INTO `prod_imgs` VALUES ('116', 'shopapi', '31', '', '/images/201609/9f5a11fbb4504e34a1a7c952942bb41b', '');
INSERT INTO `prod_imgs` VALUES ('117', 'shopapi', '31', '', '/images/201609/681db1ebd2414e69bee2b072b43fa5bf', '');
INSERT INTO `prod_imgs` VALUES ('118', 'shopapi', '31', '', '/images/201609/c8eeff54ce3746e3994a51c78aeb011d', '');
INSERT INTO `prod_imgs` VALUES ('119', 'shopapi', '31', '', '/images/201609/c2fde0eb6ed7458b8e8bc276c77fe09e', '');
INSERT INTO `prod_imgs` VALUES ('120', 'shopapi', '31', '', '/images/201609/f3472d56261b456c9122809a384bf73b', '');
INSERT INTO `prod_imgs` VALUES ('121', 'shopapi', '31', '', '/images/201609/1cda176c162d4752902c2c648d3d20ad', '');
INSERT INTO `prod_imgs` VALUES ('122', 'shopapi', '31', '', '/images/201609/f6301eefeb23412a8cdf12bdad8c7089', '');
INSERT INTO `prod_imgs` VALUES ('123', 'shopapi', '31', '', '/images/201609/2bd103381c074e12b39f3b7cf1bef1b2', '');
INSERT INTO `prod_imgs` VALUES ('124', 'shopapi', '31', '', '/images/201609/209b9a5474b94f16bd94faf1b11e876a', '');
INSERT INTO `prod_imgs` VALUES ('125', 'shopapi', '31', '', '/images/201609/78f1feec8c07440b8eb441419b80a38c', '');
INSERT INTO `prod_imgs` VALUES ('126', 'shopapi', '31', '', '/images/201609/21c49f1776ba4b929406d70b0342b240', '');
INSERT INTO `prod_imgs` VALUES ('127', 'shopapi', '31', '', '/images/201609/2b61bdf9e1df49f1b1720885298298bf', '');
INSERT INTO `prod_imgs` VALUES ('128', 'shopapi', '32', '', '/images/201609/07d318197c69483f80d4e753f6c3a4dc', '');
INSERT INTO `prod_imgs` VALUES ('129', 'shopapi', '33', '', '/images/201609/67032c9e1c014527b58a2e84bee4fccd', '');
INSERT INTO `prod_imgs` VALUES ('130', 'shopapi', '33', '', '/images/201609/8fda553d288c411a99ce37bd1cdf40e7', '');
INSERT INTO `prod_imgs` VALUES ('131', 'shopapi', '33', '', '/images/201609/03dd9aeb44b2403998ee66f4f86e1d13', '');
INSERT INTO `prod_imgs` VALUES ('132', 'shopapi', '33', '', '/images/201609/5cdfcd3657a842b39d0de79aa9f6dad0', '');
INSERT INTO `prod_imgs` VALUES ('133', 'shopapi', '33', '', '/images/201609/f50c5062720e4504852ea7a4cbfa7665', '');
INSERT INTO `prod_imgs` VALUES ('134', 'shopapi', '33', '', '/images/201609/652da735883d405cbc1a16d10f24fb70', '');
INSERT INTO `prod_imgs` VALUES ('135', 'shopapi', '33', '', '/images/201609/9c8b514a31604f439d22c97403f72175', '');
INSERT INTO `prod_imgs` VALUES ('136', 'shopapi', '33', '', '/images/201609/360857039d6c4ac198bcdd44f791d316', '');
INSERT INTO `prod_imgs` VALUES ('137', 'shopapi', '33', '', '/images/201609/0b69567e32af420fa444f08022bd43f8', '');
INSERT INTO `prod_imgs` VALUES ('138', 'shopapi', '33', '', '/images/201609/f94e47bede0346c0a351f342d959c48c', '');
INSERT INTO `prod_imgs` VALUES ('139', 'shopapi', '33', '', '/images/201609/4f1ff5eaa71c4178b85483455f5a57d3', '');
INSERT INTO `prod_imgs` VALUES ('140', 'shopapi', '33', '', '/images/201609/f67eb6d6269048008316cb81224e14bb', '');
INSERT INTO `prod_imgs` VALUES ('141', 'shopapi', '33', '', '/images/201609/f96aed34ea534960adcbc2cbec276176', '');
INSERT INTO `prod_imgs` VALUES ('142', 'shopapi', '33', '', '/images/201609/61d6269f829046459d914a15018b09bb', '');
INSERT INTO `prod_imgs` VALUES ('143', 'shopapi', '34', '', '/images/201609/85da968d7cac44af87bdc947046b805a', '');
INSERT INTO `prod_imgs` VALUES ('144', 'shopapi', '34', '', '/images/201609/baac2c8c192545f79652d3a65ba1ed63', '');
INSERT INTO `prod_imgs` VALUES ('145', 'shopapi', '34', '', '/images/201609/41fed3dc75f044c193b98d1e76a92979', '');
INSERT INTO `prod_imgs` VALUES ('146', 'shopapi', '34', '', '/images/201609/6ec2a256dcdb4a549f1d59e428228545', '');
INSERT INTO `prod_imgs` VALUES ('147', 'shopapi', '34', '', '/images/201609/b4fc56c9c40647f69596c5d178ed061b', '');
INSERT INTO `prod_imgs` VALUES ('148', 'shopapi', '34', '', '/images/201609/289746a9763c4b2491c9761e81392c7a', '');
INSERT INTO `prod_imgs` VALUES ('149', 'shopapi', '34', '', '/images/201609/c7027b725618488c9e6c0921ee8391da', '');
INSERT INTO `prod_imgs` VALUES ('150', 'shopapi', '34', '', '/images/201609/3ac86db5f91a4a88b3bb76eee02be1e0', '');
INSERT INTO `prod_imgs` VALUES ('151', 'shopapi', '34', '', '/images/201609/f85b7504ad75420d962a01de64ec441d', '');
INSERT INTO `prod_imgs` VALUES ('152', 'shopapi', '34', '', '/images/201609/73fe254c7b374dc993ffc763e9be9416', '');
INSERT INTO `prod_imgs` VALUES ('153', 'shopapi', '34', '', '/images/201609/580cf9f01b80453cb594a143985b654a', '');
INSERT INTO `prod_imgs` VALUES ('154', 'shopapi', '34', '', '/images/201609/0722013020674bd3ac906a3b82a1ce94', '');
INSERT INTO `prod_imgs` VALUES ('155', 'shopapi', '34', '', '/images/201609/03f2edfb236e442e954e1f3916efbaae', '');
INSERT INTO `prod_imgs` VALUES ('156', 'shopapi', '36', '', '/images/201609/6fc1136517f34334a37094e4e024b98c', '');
INSERT INTO `prod_imgs` VALUES ('157', 'shopapi', '36', '', '/images/201609/f76b2676fb384d91a5bad61d4ca194de', '');
INSERT INTO `prod_imgs` VALUES ('158', 'shopapi', '36', '', '/images/201609/c16169a91c6b42c4ac7231507d9ebf2b', '');
INSERT INTO `prod_imgs` VALUES ('159', 'shopapi', '36', '', '/images/201609/cf2f86f4c63a43cc98ad6dc7d6b59548', '');
INSERT INTO `prod_imgs` VALUES ('160', 'shopapi', '36', '', '/images/201609/b66351ed8dbc4e268066c570bccbde54', '');
INSERT INTO `prod_imgs` VALUES ('161', 'shopapi', '36', '', '/images/201609/f6be8d441aa44e6c88ef520b6fd63245', '');
INSERT INTO `prod_imgs` VALUES ('162', 'shopapi', '36', '', '/images/201609/a62c319e6d1e4761b581c68b8b811d7c', '');
INSERT INTO `prod_imgs` VALUES ('163', 'shopapi', '36', '', '/images/201609/50bbe14bb4334457bba9954f14e9c649', '');
INSERT INTO `prod_imgs` VALUES ('164', 'shopapi', '36', '', '/images/201609/a0ec20b23f4b438b8967669795828e98', '');
INSERT INTO `prod_imgs` VALUES ('165', 'shopapi', '36', '', '/images/201609/dbba8e7883594c7dacb97e69445a1bc5', '');
INSERT INTO `prod_imgs` VALUES ('166', 'shopapi', '36', '', '/images/201609/656b1561708248608ee40a9e8bce8dde', '');
INSERT INTO `prod_imgs` VALUES ('167', 'shopapi', '36', '', '/images/201609/4050238d0539430ebf9dd1b1f4cce931', '');
INSERT INTO `prod_imgs` VALUES ('168', 'shopapi', '37', '', '/images/201609/5da79050a8ae4d289b6e01d9a06fd3de', '');
INSERT INTO `prod_imgs` VALUES ('169', 'shopapi', '37', '', '/images/201609/ddb1a7fa7cc84eecb8ae315852a63ba6', '');
INSERT INTO `prod_imgs` VALUES ('170', 'shopapi', '37', '', '/images/201609/8999178c2d9c4c6486fb42aacd8f085b', '');
INSERT INTO `prod_imgs` VALUES ('171', 'shopapi', '37', '', '/images/201609/5329594570a34f15920cd2fb5103eaf0', '');
INSERT INTO `prod_imgs` VALUES ('172', 'shopapi', '37', '', '/images/201609/f46f4e96634a4614902f343c79ea33e2', '');
INSERT INTO `prod_imgs` VALUES ('173', 'shopapi', '37', '', '/images/201609/2383ad8b69854485903c43b55e2983c4', '');
INSERT INTO `prod_imgs` VALUES ('174', 'shopapi', '37', '', '/images/201609/2bd7bdbb9f3e4af085d70ad84bfe4909', '');

-- ----------------------------
-- Table structure for `prod_sku`
-- ----------------------------
DROP TABLE IF EXISTS `prod_sku`;
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of prod_sku
-- ----------------------------
INSERT INTO `prod_sku` VALUES ('24', 'd38c74c37f284105ba3d787f39f3fc3f', '27', 'shopapi', '71.50', '68.80', '', '0', '999999', '2016-09-26 15:46:33', '2016-09-26 17:50:24', '', '');
INSERT INTO `prod_sku` VALUES ('25', 'd6b969cf30b7415c8c40a23d2883040b', '25', 'shopapi', '68.00', '29.90', '', '0', '999999', '2016-09-26 15:23:13', '2016-09-26 15:23:13', '', '');
INSERT INTO `prod_sku` VALUES ('26', 'a2ed5fc80dfe41babb675d073a26dbc8', '26', 'shopapi', '49.90', '0.00', '', '0', '999999', '2016-09-26 15:33:29', '2016-09-26 15:33:29', '', '');
INSERT INTO `prod_sku` VALUES ('28', '5a4d2639b6534ebaa39b9d078d6a2838', '28', 'shopapi', '299.00', '99.00', '', '0', '999999', '2016-09-26 16:19:14', '2016-09-26 16:19:14', '', '');
INSERT INTO `prod_sku` VALUES ('29', '4bdb16121bf744c2a58694fe46c5d4f9', '29', 'shopapi', '99.00', '99.00', '', '0', '999999', '2016-09-26 16:27:28', '2016-09-26 16:27:28', '', '');
INSERT INTO `prod_sku` VALUES ('30', '6d5fbec1431b49bba6cdad441c68968c', '30', 'shopapi', '112.00', '42.80', '', '0', '999999', '2016-09-26 16:41:28', '2016-09-26 16:41:28', '', '');
INSERT INTO `prod_sku` VALUES ('31', '660edcc7a2174aefa34625f8da67b094', '31', 'shopapi', '98.00', '49.00', '', '0', '999999', '2016-09-26 16:52:50', '2016-09-26 16:52:50', '', '');
INSERT INTO `prod_sku` VALUES ('32', 'd65877b555c945eab0b61ba4aeb38fb8', '32', 'shopapi', '12.00', '12.00', '', '0', '999999', '2016-09-26 17:01:10', '2016-09-26 17:01:10', '', '');
INSERT INTO `prod_sku` VALUES ('33', 'bc5246970dfb4c429adf0cea442c8115', '33', 'shopapi', '61.00', '61.00', '', '0', '999999', '2016-09-26 17:09:53', '2016-09-26 17:09:53', '', '');
INSERT INTO `prod_sku` VALUES ('34', 'dfe2324e595547b7923650292ba5b2e5', '34', 'shopapi', '698.00', '299.00', '', '0', '999999', '2016-09-26 17:21:41', '2016-09-26 17:21:41', '', '');
INSERT INTO `prod_sku` VALUES ('35', 'cfafd76d39f24f228480780b2330871b', '36', 'shopapi', '99.00', '76.00', '', '0', '999999', '2016-09-27 09:00:30', '2016-09-27 09:00:30', '', '');
INSERT INTO `prod_sku` VALUES ('36', '63e62f6784ee4e5c8394bf9cbda7abde', '35', 'shopapi', '158.00', '158.00', '3', '0', '1', '2016-09-27 09:09:12', '2016-09-27 09:09:12', '', '');
INSERT INTO `prod_sku` VALUES ('37', '7adb61b4538a4e63a31d927e0e00bbe9', '37', 'shopapi', '89.00', '44.50', '', '0', '999999', '2016-09-27 09:31:55', '2016-09-27 09:31:55', '', '');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(40) DEFAULT '' COMMENT 'APPID',
  `title` varchar(255) DEFAULT '' COMMENT '标题',
  `sub_title` varchar(400) NOT NULL,
  `description` varchar(1000) DEFAULT '' COMMENT '描述',
  `price` decimal(14,2) DEFAULT NULL COMMENT '原价',
  `dis_price` decimal(14,2) DEFAULT NULL COMMENT '折扣价格',
  `status` int(11) DEFAULT NULL COMMENT '商品状态 1.上架 0.下架',
  `is_recom` int(11) DEFAULT NULL COMMENT '是否推荐 1.推荐 0.不推荐',
  `sold_num` int(11) unsigned DEFAULT NULL COMMENT '已售数量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  `flag` varchar(255) DEFAULT '' COMMENT '标记',
  `json` varchar(1000) DEFAULT '' COMMENT '附加字段',
  `sold_num_init` int(11) unsigned DEFAULT NULL COMMENT '已售数量  初始化',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('26', 'shopapi', '澳大利亚脐橙', '阳光鲜橙 澳洲进口', '澳洲脐橙 新鲜水果12个 越160g', '49.90', '49.90', '1', '1', '44', '2016-09-26 15:33:29', '2016-09-27 10:35:30', '', '', '44');
INSERT INTO `product` VALUES ('29', 'shopapi', '内蒙古羊肉', '新鲜蒙羊 涮羊肉', '蒙羊 羊肉卷1000g 内蒙草原新鲜火锅食材羊肉片 涮锅生羊肉', '99.00', '99.00', '1', '1', '47', '2016-09-26 16:27:27', '2016-09-27 10:37:28', '', '', '47');
INSERT INTO `product` VALUES ('31', 'shopapi', '古田特产茶树菇', '不开伞 味纯清香', '茶树菇干货不开伞 500g 古田农家特产茶薪菇', '98.00', '49.00', '1', '1', '38', '2016-09-26 16:52:49', '2016-09-27 10:37:43', '', '', '38');
INSERT INTO `product` VALUES ('32', 'shopapi', '测试3', '', '侧是是是', '12.00', '12.00', '1', '0', '37', '2016-09-26 17:01:10', '2016-09-27 10:39:00', '', '', '37');
INSERT INTO `product` VALUES ('33', 'shopapi', '威海野生蛏子', '肉质饱满 新鲜美味', '正宗威海本地海鲜 水产特产 鲜活野生蛏子', '61.00', '61.00', '1', '1', '27', '2016-09-26 17:09:53', '2016-09-27 10:38:04', '', '', '27');
INSERT INTO `product` VALUES ('34', 'shopapi', '威海海参', '有机野生 冷冻速食', '好当家即食海参500g 有机威海海参 野生海参 鲜食海参 冷冻速食海参', '698.00', '299.00', '1', '1', '21', '2016-09-26 17:21:40', '2016-09-27 10:38:33', '', '', '21');
INSERT INTO `product` VALUES ('35', 'shopapi', '四菜一汤', '', '四菜一汤', '158.00', '158.00', '1', '0', '13', '2016-09-26 17:35:54', '2016-09-27 10:38:58', 'merchant_default', '', '13');
INSERT INTO `product` VALUES ('36', 'shopapi', '澳大利亚进口牛肉', '整块牛腱 肉中骄子', '【喵鲜生】澳洲进口牛腱子肉1kg 冷冻', '99.00', '76.00', '1', '1', '40', '2016-09-27 09:00:30', '2016-09-27 10:38:50', '', '', '40');
INSERT INTO `product` VALUES ('37', 'shopapi', '东北特产山货香菇', '人工精挑细选 无添加', '雪中王东北山货食用菌菇伊春特产200克袋装干货香菇3件包邮', '89.00', '44.50', '1', '0', '22', '2016-09-27 09:31:55', '2016-09-27 10:38:21', '', '', '22');

-- ----------------------------
-- Table structure for `suggest`
-- ----------------------------
DROP TABLE IF EXISTS `suggest`;
CREATE TABLE `suggest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(40) DEFAULT NULL COMMENT '用户ID',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `content` varchar(1000) DEFAULT NULL COMMENT '建议正文',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of suggest
-- ----------------------------

-- ----------------------------
-- Table structure for `user_bank`
-- ----------------------------
DROP TABLE IF EXISTS `user_bank`;
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

-- ----------------------------
-- Records of user_bank
-- ----------------------------

-- ----------------------------
-- Table structure for `user_distribution`
-- ----------------------------
DROP TABLE IF EXISTS `user_distribution`;
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

-- ----------------------------
-- Records of user_distribution
-- ----------------------------

-- ----------------------------
-- Function structure for `getDistance`
-- ----------------------------
DROP FUNCTION IF EXISTS `getDistance`;
DELIMITER ;;
CREATE DEFINER=`qiyunxin`@`%` FUNCTION `getDistance`(
   lon1 float(10,7)
  ,lat1 float(10,7)
  ,lon2 float(10,7)
  ,lat2 float(10,7)
) RETURNS double
begin
    declare d double;
    declare radius int;
    set radius = 6378140; #假设地球为正球形，直径为6378140米
    set d = (2*ATAN2(SQRT(SIN((lat1-lat2)*PI()/180/2)
                          *SIN((lat1-lat2)*PI()/180/2)+
                          COS(lat2*PI()/180)*COS(lat1*PI()/180)
                          *SIN((lon1-lon2)*PI()/180/2)
                          *SIN((lon1-lon2)*PI()/180/2)),
                     SQRT(1-SIN((lat1-lat2)*PI()/180/2)
                            *SIN((lat1-lat2)*PI()/180/2)
                          +COS(lat2*PI()/180)*COS(lat1*PI()/180)
                           *SIN((lon1-lon2)*PI()/180/2)
                           *SIN((lon1-lon2)*PI()/180/2))))*radius;
    return d;
  end
;;
DELIMITER ;
