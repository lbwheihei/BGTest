/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : bgroot

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2017-10-24 22:40:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `sgin` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(200) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `rolenum` varchar(20) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `permissionid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `contactphone` varchar(13) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `islock` varchar(1) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `creatTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `userInfoId` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;
