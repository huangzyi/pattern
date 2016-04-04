/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50617
Source Host           : 127.0.0.1:3306
Source Database       : database

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-04-04 23:51:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `arcid` int(64) NOT NULL AUTO_INCREMENT,
  `article` text NOT NULL,
  `author` varchar(20) DEFAULT NULL,
  `authorid` varchar(64) NOT NULL,
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
  `username` varchar(20) DEFAULT NULL,
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
  `username` varchar(20) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `userpassport` varchar(40) NOT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `permission` tinyint(3) unsigned zerofill DEFAULT NULL COMMENT '数字越高权限越大：默认为0，无法修改他人博客；在自己博客为1；管理员权限为2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, '35435', null, '353543', null, '000');
INSERT INTO `user` VALUES ('2', null, ' 格尼尔', null, '5965984', null, '000');
INSERT INTO `user` VALUES ('4', null, 'bhyuy', null, '26265', null, '000');
INSERT INTO `user` VALUES ('7', null, 'frerf', null, 'effe', null, '000');
INSERT INTO `user` VALUES ('8', null, 'gyyug', null, '1586814', null, '000');
INSERT INTO `user` VALUES ('9', null, '35435', null, '554', null, '000');
INSERT INTO `user` VALUES ('10', null, '5487', null, '254', null, '000');
INSERT INTO `user` VALUES ('12', null, '5445', null, '514', null, '002');
INSERT INTO `user` VALUES ('13', null, '35435', null, '4554', null, '000');
INSERT INTO `user` VALUES ('14', null, 'rgtg', null, 'bgbg', null, '000');
INSERT INTO `user` VALUES ('15', null, 'ht', null, 'trhe', null, '000');
INSERT INTO `user` VALUES ('17', null, 'dede', '', 'cdffc', null, '000');
INSERT INTO `user` VALUES ('19', null, 'efefr', '', 'frerfre', null, '000');
INSERT INTO `user` VALUES ('20', null, 'fhueh', '', 'vff', null, '000');
INSERT INTO `user` VALUES ('21', null, 'huangziyi', '', 'dssd', null, '000');
INSERT INTO `user` VALUES ('22', null, 'cdscfd', '', 'dcvscvsdc', null, '000');
INSERT INTO `user` VALUES ('23', null, 'fdvdfv', '', 'vfdvdv', null, '000');
INSERT INTO `user` VALUES ('24', null, 'vfdvdfv', '', 'svdfvdfvd', null, '000');
INSERT INTO `user` VALUES ('25', null, 'efewfe', null, 'vfdvfdv', null, '000');
INSERT INTO `user` VALUES ('26', null, 'dfbvfgb', null, 'dfbsdfb', null, '000');
INSERT INTO `user` VALUES ('27', null, 'ddf', null, 'sdfs', null, '000');
INSERT INTO `user` VALUES ('28', null, 'fvdfv', null, 'vfdvf', null, '000');
INSERT INTO `user` VALUES ('29', null, 'dfsdsf', null, 'vfdvdfv', null, '000');
INSERT INTO `user` VALUES ('30', null, 'fgfdgdf', null, 'bggfbgfb', null, '000');
INSERT INTO `user` VALUES ('32', null, 'dcdsc', null, 'vfdvfdv', null, '000');
INSERT INTO `user` VALUES ('33', null, 'dscsdc', null, 'vdfvfv', null, '000');
INSERT INTO `user` VALUES ('34', null, 'gyuggygu', null, 'tfytyty', null, '000');
INSERT INTO `user` VALUES ('35', null, 'ht', null, '5959', null, '000');
