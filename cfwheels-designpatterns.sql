/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50141
Source Host           : localhost:3306
Source Database       : cfwheels-designpatterns

Target Server Type    : MYSQL
Target Server Version : 50141
File Encoding         : 65001

Date: 2012-08-20 10:53:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `companies`
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES ('1', 'Apple', '2012-08-06 12:27:26', null, null);

-- ----------------------------
-- Table structure for `contactcompanies`
-- ----------------------------
DROP TABLE IF EXISTS `contactcompanies`;
CREATE TABLE `contactcompanies` (
  `contactid` int(11) NOT NULL DEFAULT '0',
  `companyid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactid`,`companyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contactcompanies
-- ----------------------------
INSERT INTO `contactcompanies` VALUES ('1', '0');
INSERT INTO `contactcompanies` VALUES ('5', '0');

-- ----------------------------
-- Table structure for `contacts`
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Contacts main ID',
  `firstname` varchar(255) NOT NULL COMMENT 'First Name',
  `lastname` varchar(255) NOT NULL COMMENT 'Last Name',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'Bob', 'Builder', '2012-07-30 10:39:48', '2012-07-30 10:59:32', null);
INSERT INTO `contacts` VALUES ('2', 'Bob', 'Builder', '2012-07-30 11:10:59', '2012-07-30 11:10:59', '2012-07-30 11:13:44');
INSERT INTO `contacts` VALUES ('3', 'test', 'tr', '2012-07-30 11:18:04', '2012-07-30 11:18:04', '2012-07-30 11:18:18');
INSERT INTO `contacts` VALUES ('4', 'Bob', 'Builder', '2012-07-30 11:29:59', '2012-07-30 11:29:59', null);
INSERT INTO `contacts` VALUES ('5', 'test', 'asdasd', '2012-07-30 12:54:09', '2012-07-30 13:28:49', null);

-- ----------------------------
-- Table structure for `contacttechnologies`
-- ----------------------------
DROP TABLE IF EXISTS `contacttechnologies`;
CREATE TABLE `contacttechnologies` (
  `contactid` int(11) NOT NULL DEFAULT '0',
  `technologyid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactid`,`technologyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacttechnologies
-- ----------------------------
INSERT INTO `contacttechnologies` VALUES ('1', '1');
INSERT INTO `contacttechnologies` VALUES ('1', '3');
INSERT INTO `contacttechnologies` VALUES ('1', '7');
INSERT INTO `contacttechnologies` VALUES ('5', '0');
INSERT INTO `contacttechnologies` VALUES ('5', '3');

-- ----------------------------
-- Table structure for `emailaddresses`
-- ----------------------------
DROP TABLE IF EXISTS `emailaddresses`;
CREATE TABLE `emailaddresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(500) NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `contactid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emailaddresses
-- ----------------------------
INSERT INTO `emailaddresses` VALUES ('1', 'bob@bob.cm', '2012-07-30 11:55:36', '2012-07-30 11:55:38', '1');
INSERT INTO `emailaddresses` VALUES ('2', 'joe3@bloggers.com', '2012-08-06 13:22:46', '2012-08-06 13:11:19', '5');
INSERT INTO `emailaddresses` VALUES ('3', 'joe2@bloggers.com', '2012-08-06 13:12:27', '2012-08-06 13:12:32', '5');

-- ----------------------------
-- Table structure for `technologies`
-- ----------------------------
DROP TABLE IF EXISTS `technologies`;
CREATE TABLE `technologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of technologies
-- ----------------------------
INSERT INTO `technologies` VALUES ('1', 'ColdFusion');
INSERT INTO `technologies` VALUES ('2', 'MySQL');
INSERT INTO `technologies` VALUES ('3', 'PHP');
INSERT INTO `technologies` VALUES ('4', 'CSS');
INSERT INTO `technologies` VALUES ('5', 'HTML5');
INSERT INTO `technologies` VALUES ('6', 'jQuery');
INSERT INTO `technologies` VALUES ('7', 'JAVA2');
