/*
Navicat MySQL Data Transfer

Source Server         : shop
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mmall

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-06-04 19:03:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1', 'admin', 'admin');
INSERT INTO `admin_user` VALUES ('2', 'lixl', 'lixl');

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('12', '客厅', '0', '1');
INSERT INTO `classification` VALUES ('13', '卧室', '0', '1');
INSERT INTO `classification` VALUES ('14', '书房', '0', '1');
INSERT INTO `classification` VALUES ('15', '餐厅', '0', '1');
INSERT INTO `classification` VALUES ('16', '中式', '12', '2');
INSERT INTO `classification` VALUES ('17', '田园', '12', '2');
INSERT INTO `classification` VALUES ('18', '欧式', '12', '2');
INSERT INTO `classification` VALUES ('19', '简欧', '12', '2');
INSERT INTO `classification` VALUES ('20', '中式', '13', '2');
INSERT INTO `classification` VALUES ('21', '田园', '13', '2');
INSERT INTO `classification` VALUES ('22', '欧式', '13', '2');
INSERT INTO `classification` VALUES ('23', '简欧', '13', '2');
INSERT INTO `classification` VALUES ('24', '新中式', '13', '2');
INSERT INTO `classification` VALUES ('28', '中式', '14', '2');
INSERT INTO `classification` VALUES ('29', '田园', '14', '2');
INSERT INTO `classification` VALUES ('30', '欧式', '14', '2');
INSERT INTO `classification` VALUES ('31', '简欧', '14', '2');
INSERT INTO `classification` VALUES ('35', '中式', '15', '2');
INSERT INTO `classification` VALUES ('36', '田园', '15', '2');
INSERT INTO `classification` VALUES ('37', '欧式', '15', '2');
INSERT INTO `classification` VALUES ('38', '简欧', '15', '2');

-- ----------------------------
-- Table structure for communication
-- ----------------------------
DROP TABLE IF EXISTS `communication`;
CREATE TABLE `communication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of communication
-- ----------------------------
INSERT INTO `communication` VALUES ('13', 'lixl', '20', '666666666666666');
INSERT INTO `communication` VALUES ('14', 'lixl', '20', '777777777777777');
INSERT INTO `communication` VALUES ('15', 'lixl', '20', '8888888888888');
INSERT INTO `communication` VALUES ('16', 'lixl', '41', '               ');
INSERT INTO `communication` VALUES ('17', 'lixl', '41', '3333333333333');
INSERT INTO `communication` VALUES ('18', 'mzh', '43', 'qqqqqqqqqq');
INSERT INTO `communication` VALUES ('19', 'mzh', '43', 'zzzzzzzzzzzzz');
INSERT INTO `communication` VALUES ('20', 'mzh', '36', 'xxxxxxxxxxxzzzzz');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('6', '河北省燕山大学', 'lixl', '2019-06-03 15:06:54', '15028581225', '3', '5999', '4');
INSERT INTO `order` VALUES ('7', '河北燕大4舍', '小明', '2019-06-04 14:49:13', '15932575861', '1', '199', '4');
INSERT INTO `order` VALUES ('8', '燕大小区100', 'qq', '2019-06-04 14:50:12', '15028581225', '3', '1992', '4');
INSERT INTO `order` VALUES ('9', '河北大街302', 'boy', '2019-06-04 14:51:43', '13333945055', '4', '9216', '5');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('7', '1', '6', '13', '5999');
INSERT INTO `order_item` VALUES ('8', '1', '7', '20', '199');
INSERT INTO `order_item` VALUES ('9', '4', '8', '41', '1992');
INSERT INTO `order_item` VALUES ('10', '6', '9', '36', '3808');
INSERT INTO `order_item` VALUES ('11', '6', '9', '43', '5408');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `csid` int(11) DEFAULT NULL,
  `desc` varchar(1000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `shop_price` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('16', '37', '优质工艺 环保材质 原创设计 \r\n零甲醛 环保壁纸 整屋定制', '/mall/admin/product/img/AC3A6BD754061784B17B0819E1F5C3.jpg', '0', '209', '2019-06-03 21:58:34', '179', '摩登欧式餐厅5.3m2');
INSERT INTO `product` VALUES ('17', '35', '优质工艺 环保材质 原创设计 \r\n零甲醛 环保壁纸 整屋定制', '/mall/admin/product/img/2B101F86F25534105550E208CA51DC.jpg', '0', '119', '2019-06-03 21:59:55', '99', '雅欣中式餐厅');
INSERT INTO `product` VALUES ('18', '36', '优质工艺 环保材质 原创设计 \r\n零甲醛 环保壁纸 整屋定制', '/mall/admin/product/img/5B819BCDD9F5B97D653942523A3C83.jpg', '0', '299', '2019-06-03 22:02:11', '269', '良印田园餐厅10m2');
INSERT INTO `product` VALUES ('19', '36', '优质工艺 环保材质 原创设计 \r\n零甲醛 环保壁纸 整屋定制', '/mall/admin/product/img/CF65FB6F49C1FB4E637F3A74ABC340.jpg', '0', '199', '2019-06-03 22:03:16', '168', '雅心田园餐厅5.3m2');
INSERT INTO `product` VALUES ('20', '19', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/E2FE271BFB6334C6128F415A03F523.jpg', '1', '229', '2019-06-03 22:06:31', '199', '匠艺简欧客厅');
INSERT INTO `product` VALUES ('21', '19', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/B1B1C1C4DE65A00BB2748728808AF6.jpg', '0', '329', '2019-06-03 22:07:09', '299', '摩登简欧客厅');
INSERT INTO `product` VALUES ('22', '18', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/ADD574C947CB65CB33360FA85B3ACF.jpg', '0', '288', '2019-06-03 22:08:33', '268', '歌诗欧式客厅');
INSERT INTO `product` VALUES ('23', '18', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/DC1FE5CA7634C89A202D33854721ED.jpg', '0', '219', '2019-06-03 22:09:45', '199', '迈科欧式客厅5.3m2');
INSERT INTO `product` VALUES ('24', '17', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/B79CA66CAB95126E67EE409BBDF073.jpg', '0', '99', '2019-06-03 22:10:59', '79', '壁画大师田园客厅5.3m2');
INSERT INTO `product` VALUES ('25', '17', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/1AD69E68CD65095ABEE06EF38F0D30.jpg', '0', '199', '2019-06-03 22:11:41', '189', '典格田园客厅5.3m2');
INSERT INTO `product` VALUES ('26', '24', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/CA69694C4A14E21E88AFA7CA2AE78B.jpg', '0', '399', '2019-06-03 22:13:28', '359', 'SUMGAR新中式');
INSERT INTO `product` VALUES ('27', '23', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/44BE8A6E15C1D4825F93CDC7DEE671.jpg', '0', '189', '2019-06-03 22:15:51', '159', '梁佳简欧卧室5.3m2');
INSERT INTO `product` VALUES ('28', '16', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/3AF15DD0734FF5FCB1088850573D04.jpg', '0', '199', '2019-06-03 22:43:36', '179', '梁佳中式客厅');
INSERT INTO `product` VALUES ('29', '23', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/788CBA34999CA5C1CF9B99B23D3809.jpg', '0', '239', '2019-06-03 22:48:00', '199', '文雅简欧卧室5.3');
INSERT INTO `product` VALUES ('31', '22', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/B4B921FED2982CC1AF511B5E2D1C3D.jpg', '0', '329', '2019-06-03 22:51:15', '319', 'misu欧式卧室');
INSERT INTO `product` VALUES ('32', '21', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/2CE2D0E724C307EFEA9D25598A2B56.jpg', '1', '349', '2019-06-03 22:52:38', '309', '梁佳田园卧室5.3');
INSERT INTO `product` VALUES ('33', '21', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/3DEAF3B841A250D5FAB23CC207BC3E.jpg', '0', '279', '2019-06-03 23:07:20', '259', '黄绿江田园卧室5.3');
INSERT INTO `product` VALUES ('34', '20', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/92174C1066DD114CDB1C31DEBCD61E.jpg', '0', '229', '2019-06-03 22:54:10', '189', '1+1中式卧室');
INSERT INTO `product` VALUES ('35', '20', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/EE420241F9DDBA1C45E5C4B856AD96.jpg', '0', '289', '2019-06-03 22:54:57', '249', '米素中式卧室');
INSERT INTO `product` VALUES ('36', '31', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/651AA295D442627D95096D59F73020.jpg', '1', '149', '2019-06-03 22:59:43', '119', '乐活简欧书房');
INSERT INTO `product` VALUES ('37', '31', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/79147E317B65EB939A0C189AC1F345.jpg', '0', '299', '2019-06-03 23:01:02', '269', '欣饰简欧书房');
INSERT INTO `product` VALUES ('38', '30', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/9C03B75BF9B351D4C4F079117411C9.jpg', '0', '189', '2019-06-03 23:01:47', '169', '顺美欧式书房');
INSERT INTO `product` VALUES ('39', '30', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/82DFE52A74CFEC436F82AD2A78D05E.jpg', '0', '209', '2019-06-03 23:02:23', '199', '金戈欧式书房');
INSERT INTO `product` VALUES ('40', '29', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/EE9C02212660E0E2D3E69DECA70A7B.jpg', '0', '279', '2019-06-03 23:03:22', '259', '辛格田园书房5.3');
INSERT INTO `product` VALUES ('41', '29', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/553020D1C679C5F8FB73445CAF0129.jpg', '1', '259', '2019-06-03 23:03:58', '249', '梁佳田园书房5.3');
INSERT INTO `product` VALUES ('42', '28', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/DA3654F059F090F9C6FB6DDBE52451.jpg', '0', '168', '2019-06-03 23:04:58', '149', '雅风中式书房');
INSERT INTO `product` VALUES ('43', '28', '温馨浪漫 零甲醛 环保壁纸 整屋定制  原创设计', '/mall/admin/product/img/61519CBC1FA9CB7CA642CBE160D097.jpg', '0', '199', '2019-06-03 23:05:46', '169', '雅心中式书房5.3');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', '河北省燕山大学', '309828829@qq.com', '李小龙', '123456', '15028581225', 'lixl');
INSERT INTO `user` VALUES ('5', '河北yad', '123@qq.com', '马志浩', '123456', '13333954109', 'mzh');
