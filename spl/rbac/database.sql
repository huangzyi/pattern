/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50617
Source Host           : 127.0.0.1:3306
Source Database       : database

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-04-01 23:13:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `arcid` int(64) NOT NULL AUTO_INCREMENT,
  `article` text,
  `author` varchar(20) DEFAULT NULL,
  `authorid` varchar(64) DEFAULT NULL,
  `now` datetime DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`arcid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur doloribus ipsum harum, modi quaerat est suscipit iste, quis nostrum vel facere odit dolore quidem maxime. Eos saepe suscipit architecto soluta.', '5445', '12', '2016-03-01 12:49:51', 'Lorem ipsum dolor sit amet');
INSERT INTO `article` VALUES ('2', 'nnnnnnnnnnnkjhikh', '5445', '12', '2016-03-05 13:48:58', 'nijnuiojhoiuh');
INSERT INTO `article` VALUES ('3', 'hhhhhhhhhhhhhhhhhhhhh', '5445', '12', '2016-03-05 13:49:23', 'gggggggggu');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comid` int(64) NOT NULL AUTO_INCREMENT,
  `arcid` int(64) NOT NULL,
  `userid` int(64) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`comid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '12', '5445', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur doloribus ipsum harum, modi quaerat est suscipit iste, quis nostrum vel facere odit dolore quidem maxime. Eos saepe suscipit architecto soluta', '2016-03-02 01:45:08');
INSERT INTO `comment` VALUES ('3', '10', '12', '5445', '说', '0000-00-00 00:00:00');
INSERT INTO `comment` VALUES ('6', '3', '12', '5445', '说点什么吧', '2016-03-10 03:27:29');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `id1` int(64) NOT NULL,
  `id2` int(64) NOT NULL,
  PRIMARY KEY (`id1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------

-- ----------------------------
-- Table structure for public
-- ----------------------------
DROP TABLE IF EXISTS `public`;
CREATE TABLE `public` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(200) NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public
-- ----------------------------

-- ----------------------------
-- Table structure for tpsc
-- ----------------------------
DROP TABLE IF EXISTS `tpsc`;
CREATE TABLE `tpsc` (
  `picid` int(64) NOT NULL,
  `topic` varchar(30) DEFAULT NULL,
  `file` blob NOT NULL,
  `autherid` varchar(64) NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`picid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tpsc
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `picture` varchar(255) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `blogname` varchar(20) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `userpassport` varchar(40) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postcode` varchar(5) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `wechat` varchar(20) DEFAULT NULL,
  `QQ` varchar(20) DEFAULT NULL,
  `homepage` varchar(100) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, '35435', null, null, null, '353543', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('2', null, ' 格尼尔', null, null, null, '5965984', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('4', null, 'bhyuy', null, null, null, '26265', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('7', null, 'frerf', null, null, null, 'effe', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('8', null, 'gyyug', null, null, null, '1586814', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('9', null, '35435', null, null, null, '554', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('10', null, '5487', null, null, null, '254', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('12', null, '5445', null, null, null, '514', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('13', null, '35435', null, null, null, '4554', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('14', null, 'rgtg', null, null, null, 'bgbg', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('15', null, 'ht', null, null, null, 'trhe', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('17', null, 'dede', null, null, null, 'cdffc', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('19', null, 'efefr', null, null, null, 'frerfre', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('20', null, 'fhueh', null, null, null, 'vff', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('21', null, 'huangziyi', null, null, null, 'dssd', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('22', null, 'cdscfd', null, null, null, 'dcvscvsdc', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('23', null, 'fdvdfv', null, null, null, 'vfdvdv', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('24', null, 'vfdvdfv', null, null, null, 'svdfvdfvd', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('25', null, 'efewfe', null, null, null, 'vfdvfdv', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('26', null, 'dfbvfgb', null, null, null, 'dfbsdfb', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('27', null, 'ddf', null, null, null, 'sdfs', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('28', null, 'fvdfv', null, null, null, 'vfdvf', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('29', null, 'dfsdsf', null, null, null, 'vfdvdfv', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('30', null, 'fgfdgdf', null, null, null, 'bggfbgfb', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('32', null, 'dcdsc', null, null, null, 'vfdvfdv', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('33', null, 'dscsdc', null, null, null, 'vdfvfv', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('34', null, 'gyuggygu', null, null, null, 'tfytyty', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('35', null, 'ht', null, null, null, '5959', null, null, null, null, null, null, null, null, null, null, null, null, null);
