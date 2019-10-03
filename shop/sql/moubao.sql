/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : moubao

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2019-10-15 13:36:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `postId` char(6) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `saleUserId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `orderId` varchar(50) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `saleNum` int(11) DEFAULT NULL,
  `saleDate` date DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `saleUserId` (`saleUserId`),
  KEY `productId` (`productId`),
  KEY `addressId` (`addressId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('14', '17', '1', '7', null, '20191015133501088', '0', null, '2019-10-15', '55.00');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `picUrl` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `state` char(1) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `dateOnSale` date DEFAULT NULL,
  `dateSubmit` datetime DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '2', '儿童眼镜 吉林销量过万', 'img/22.jpg', 'yanjing', '25.00', '这是一个儿童眼镜', '1', '100', '2019-10-24', '2019-10-24 10:33:06', '长春');
INSERT INTO `product` VALUES ('2', '2', '外出车上儿童安全座椅', 'img/10177.jpg', 'zuoyi', '598.00', '这是一个儿童安全座椅', '1', '33', '2019-10-24', '2019-10-24 11:16:09', '北京');
INSERT INTO `product` VALUES ('3', '2', '即热智能马桶全自动', 'img/1277.jpg', 'matong', '2680.00', '这是一个马桶', '0', '55', '2019-11-07', '2019-10-15 14:29:48', '佛山');
INSERT INTO `product` VALUES ('4', '1', '现代简约沙发超柔软', 'img/1880.jpg', 'shafa', '825.00', '这是一个沙发', '0', '55', '2019-10-08', '2019-10-08 14:30:39', '上海');
INSERT INTO `product` VALUES ('5', '1', '男士手表', 'img/6427.jpg', 'shoubiao', '154.00', '这是一个手表', '1', '1564', '2019-10-04', '2019-10-04 00:04:02', '深圳');
INSERT INTO `product` VALUES ('6', '1', '男士皮鞋', 'img/8276.jpg', 'pixie', '156.00', '这是一个鞋子', '1', '185', '2019-09-19', '2019-10-07 00:04:19', '广西');
INSERT INTO `product` VALUES ('7', '1', '墨镜男炫酷', 'img/9540.jpg', 'mojing', '55.00', '这是一个墨镜', '1', '6623', '2019-09-12', '2019-09-20 00:07:17', '广东');
INSERT INTO `product` VALUES ('8', '1', '男士西服定制韩版修身', 'img/7663.jpg', 'xifu', '1854.00', '这是一个西服', '1', '1517', '2019-10-01', '2019-10-01 00:09:24', '杭州');
INSERT INTO `product` VALUES ('9', '1', '男生手提包', 'img/7043.jpg', 'shoutibao', '56.00', '这是一个手提包', '1', '898', '2019-10-01', '2019-10-01 00:10:36', '上海');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'dm', '123456', '0');
INSERT INTO `user` VALUES ('2', '333', '3', '1');
INSERT INTO `user` VALUES ('17', 'y', 'y', '1');
