/*
Navicat MySQL Data Transfer

Source Server         : EastJordan
Source Server Version : 50090
Source Host           : localhost:3306
Source Database       : thenews

Target Server Type    : MYSQL
Target Server Version : 50090
File Encoding         : 65001

Date: 2016-11-08 11:47:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ID` mediumint(9) NOT NULL auto_increment,
  `Name` varchar(20) NOT NULL,
  `Password` char(20) NOT NULL,
  `Rank` char(20) NOT NULL,
  `Department` varchar(20) default NULL,
  `IsPass` enum('0','1') default '0' COMMENT '1通过，0不通过',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '123', '123', '1', '系统管理员', '1');

-- ----------------------------
-- Table structure for `clst`
-- ----------------------------
DROP TABLE IF EXISTS `clst`;
CREATE TABLE `clst` (
  `ID` mediumint(8) NOT NULL auto_increment,
  `ClassName` varchar(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clst
-- ----------------------------
INSERT INTO `clst` VALUES ('1', '手术');
INSERT INTO `clst` VALUES ('2', '整形管理');
INSERT INTO `clst` VALUES ('3', '皮肤管理');
INSERT INTO `clst` VALUES ('4', '其它');

-- ----------------------------
-- Table structure for `doctor`
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `ID` mediumint(8) NOT NULL auto_increment,
  `Name` varchar(10) NOT NULL,
  `ImageID` char(20) default NULL,
  `Zhichen` varchar(30) default NULL,
  `Touxian` varchar(30) default NULL,
  `Jieshao` varchar(200) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------

-- ----------------------------
-- Table structure for `members`
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `ID` int(10) NOT NULL auto_increment,
  `MemberID` char(10) NOT NULL,
  `Password` char(30) NOT NULL default '123456',
  `Tel` char(12) default NULL,
  `Birthday` char(10) default NULL COMMENT '生日',
  `Sex` enum('未知','女','男') default '未知',
  `Xfxm` varchar(20) default NULL,
  `ImageID` varchar(10) default NULL,
  `Ispass` int(1) unsigned zerofill NOT NULL,
  `AllnewsID` varchar(50) default NULL,
  `RDnewsID` varchar(50) default NULL,
  `MemberName` varchar(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of members
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `ID` mediumint(8) NOT NULL auto_increment,
  `Title` varchar(60) default NULL,
  `Label` varchar(60) default NULL,
  `NewsClass` int(5) default NULL,
  `Content` text,
  `IsPic` enum('0','1') default '0' COMMENT '1有图0无图',
  `IsVideo` enum('0','1') default '0' COMMENT '1有视频0没有视频',
  `ImageID` varchar(10) default NULL,
  `OPSTime` char(16) default NULL COMMENT '手术时间',
  `SendTime` char(16) default NULL COMMENT '发布时间',
  `Author` varchar(12) default NULL COMMENT '发布人',
  `Sendee` char(20) default NULL COMMENT '接收人ID',
  `IsA` enum('0','1') default '0' COMMENT '1客户发，0管理员发',
  `IsPass` enum('0','1') default '0' COMMENT '1通过，0不通过',
  `IsLook` enum('0','1') default '0' COMMENT '0未读，1已读',
  `OPSDr` char(20) default NULL COMMENT '手术医生',
  `Ord` int(5) default NULL COMMENT '排序',
  `Istop` enum('0','1') default '0' COMMENT '1置顶，0不置顶',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `pic`
-- ----------------------------
DROP TABLE IF EXISTS `pic`;
CREATE TABLE `pic` (
  `ID` mediumint(9) NOT NULL auto_increment,
  `PicB` char(100) default NULL,
  `PicE` char(100) default NULL,
  `VB` char(50) default NULL,
  `VE` char(50) default NULL,
  `Image` char(100) default NULL,
  `Uptime` char(12) NOT NULL,
  `IsPass` enum('0','1') default '0' COMMENT '1通过，0不通过',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pic
-- ----------------------------
