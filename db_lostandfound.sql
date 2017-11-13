/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_lostandfound

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-28 17:07:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(20) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(20) NOT NULL COMMENT '管理员名称',
  `adminPassword` varchar(20) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123');

-- ----------------------------
-- Table structure for `lost`
-- ----------------------------
DROP TABLE IF EXISTS `lost`;
CREATE TABLE `lost` (
  `lost_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `lname` varchar(40) NOT NULL COMMENT '丢失物品名称',
  `lost_trait` varchar(25) NOT NULL COMMENT '丢失物品特征',
  `lost_time` varchar(20) NOT NULL COMMENT '丢失时间',
  `lost_placel` varchar(100) NOT NULL COMMENT '物品丢失地点',
  `lost_name` varchar(20) NOT NULL COMMENT '丢失人姓名',
  `lcontact_way` varchar(20) NOT NULL COMMENT '丢失人联系方式',
  `ldata` varchar(40) NOT NULL COMMENT '丢失物品上报时间',
  `result` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lost_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lost
-- ----------------------------
INSERT INTO `lost` VALUES ('1', 'HTC M8', '黑色', '2015-12-14', '竞知楼804', 'huyuxin', 'QQ8851313063', '2015-12-01', '1');
INSERT INTO `lost` VALUES ('2', '手机', '黑色', '2015-01-05', '三食堂', 'huyuxin', '901234667', '2015-12-02', '0');
INSERT INTO `lost` VALUES ('3', 'MP3', 'ipod nano 银色', '2015-12-14', '701', 'huyuxin', '15179242490', '2015-12-15', '0');
INSERT INTO `lost` VALUES ('4', '钥匙', '三个钥匙', '2015-12-11', '23栋', '老胡', '9765328653522', '2015-12-15', '0');
INSERT INTO `lost` VALUES ('5', '校园卡', '红色校园卡', '2015-12-10', '竞知楼701', '老胡', '8764316536532', '2015-12-14', '0');
INSERT INTO `lost` VALUES ('6', '饭卡', '31班', '6.21', '11111', 'huyuxin', '1111111', '2017-05-28', '1');

-- ----------------------------
-- Table structure for `pick`
-- ----------------------------
DROP TABLE IF EXISTS `pick`;
CREATE TABLE `pick` (
  `pick_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `pick_Name` varchar(40) NOT NULL COMMENT '拾取人姓名',
  `pname` varchar(10) NOT NULL COMMENT '拾取物品名称',
  `pick_trait` varchar(100) DEFAULT NULL COMMENT '失物特征',
  `pick_time` varchar(20) DEFAULT NULL COMMENT '拾取时间',
  `pick_place` varchar(100) DEFAULT NULL,
  `pcontact_way` varchar(20) NOT NULL COMMENT '联系人方式',
  `hanway` int(2) NOT NULL DEFAULT '0' COMMENT '物品处理结果',
  PRIMARY KEY (`pick_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pick
-- ----------------------------
INSERT INTO `pick` VALUES ('1', '老胡', 'U盘', '32G金士顿', '2015-12-15', '打印店', '87542145252QQ', '0');
INSERT INTO `pick` VALUES ('2', 'yuxin', '校园卡', '校园卡', '2015-12-08', '竞知楼701', '电话15179242490', '0');
INSERT INTO `pick` VALUES ('8', 'huyuxin', '魅族MX3', '熊猫机', '2015-12-14', '803', 'QQ98465132', '0');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID，系统自动生成，主键',
  `Name` varchar(20) NOT NULL COMMENT '用户名',
  `Password` varchar(18) NOT NULL COMMENT '用户密码',
  `QQ` varchar(12) NOT NULL COMMENT '用户QQ',
  `E_mail` varchar(40) NOT NULL COMMENT '用户邮箱',
  `Phone` varchar(20) NOT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'huyuxin', '1234', '851313', '851313063@qq.com', '75385985622');
INSERT INTO `user_info` VALUES ('8', 'wll', '123456', '333000', '1192235168@qq.com', '13007292303');
INSERT INTO `user_info` VALUES ('15', '翁大大', '666666', '2568357300', '2568357300@qq.com', '13333333333');
