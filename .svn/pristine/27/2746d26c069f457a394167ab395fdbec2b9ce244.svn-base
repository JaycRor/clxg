/*
Navicat MySQL Data Transfer

Source Server         : qwe
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : clxj

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-09-22 21:54:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `a_id` int(11) NOT NULL,
  `a_title` varchar(20) NOT NULL,
  `a_content` varchar(225) NOT NULL,
  `a_date` datetime NOT NULL,
  `a_key` varchar(20) NOT NULL,
  `a_read_state` smallint(6) NOT NULL,
  `u_name` varchar(15) NOT NULL,
  `a_back` text,
  `a_back_monk` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `ar_fk_user` (`u_name`),
  KEY `ar_fk_monk` (`a_back_monk`),
  CONSTRAINT `ar_fk_monk` FOREIGN KEY (`a_back_monk`) REFERENCES `monk` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ar_fk_user` FOREIGN KEY (`u_name`) REFERENCES `user` (`u_name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(15) NOT NULL,
  `b_password` varchar(15) NOT NULL,
  `b_tel` varchar(12) NOT NULL,
  `b_offical_name` varchar(21) NOT NULL,
  `b_location` varchar(50) NOT NULL,
  `b_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of business
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL,
  `c_date` datetime NOT NULL,
  `c_name` varchar(15) NOT NULL,
  `c_content` text NOT NULL,
  `u_id` int(11) NOT NULL,
  `u_name` varchar(15) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `com_fk_user_1` (`u_id`),
  KEY `com_fk_user_2` (`u_name`),
  CONSTRAINT `com_fk_user_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `com_fk_user_2` FOREIGN KEY (`u_name`) REFERENCES `user` (`u_name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_name` varchar(20) NOT NULL,
  `h_cover` varchar(30) DEFAULT NULL,
  `h_introduction` text NOT NULL,
  `h_price` int(11) NOT NULL,
  `h_mark` int(11) DEFAULT NULL,
  `h_common_count` int(11) DEFAULT NULL,
  `h_location` varchar(120) NOT NULL,
  `h_type` int(11) NOT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel
-- ----------------------------

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(15) NOT NULL,
  `m_password` varchar(15) NOT NULL,
  `m_type` int(11) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', 'admin', '1');

-- ----------------------------
-- Table structure for monk
-- ----------------------------
DROP TABLE IF EXISTS `monk`;
CREATE TABLE `monk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `t_name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `mo_fk_temple` (`t_name`),
  CONSTRAINT `mo_fk_temple` FOREIGN KEY (`t_name`) REFERENCES `temple` (`t_name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of monk
-- ----------------------------

-- ----------------------------
-- Table structure for temple
-- ----------------------------
DROP TABLE IF EXISTS `temple`;
CREATE TABLE `temple` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(15) NOT NULL,
  `t_localtion` varchar(225) NOT NULL,
  PRIMARY KEY (`t_id`),
  KEY `t_name` (`t_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temple
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) NOT NULL,
  `u_password` varchar(20) NOT NULL,
  `u_sex` varchar(2) NOT NULL,
  `u_tel` varchar(12) NOT NULL,
  PRIMARY KEY (`u_id`),
  KEY `u_name` (`u_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
