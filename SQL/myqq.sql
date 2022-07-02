/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50738
 Source Host           : localhost:3306
 Source Schema         : myqq

 Target Server Type    : MySQL
 Target Server Version : 50738
 File Encoding         : 65001

 Date: 27/06/2022 16:22:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blood
-- ----------------------------
DROP TABLE IF EXISTS `blood`;
CREATE TABLE `blood`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `blood_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '血型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blood
-- ----------------------------
INSERT INTO `blood` VALUES (1, 'A');
INSERT INTO `blood` VALUES (2, 'B');
INSERT INTO `blood` VALUES (3, 'AB');
INSERT INTO `blood` VALUES (4, 'O');
INSERT INTO `blood` VALUES (5, 'RH阳');
INSERT INTO `blood` VALUES (6, 'RH阴');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `me` int(11) NULL DEFAULT NULL,
  `friend` int(11) NULL DEFAULT NULL,
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES (143, 305, 307, '2022-06-27 13:29:46', '2022-06-27 13:29:46');
INSERT INTO `friend` VALUES (144, 307, 305, '2022-06-27 13:29:46', '2022-06-27 13:29:46');
INSERT INTO `friend` VALUES (147, 308, 307, '2022-06-27 16:02:40', '2022-06-27 16:02:40');
INSERT INTO `friend` VALUES (148, 307, 308, '2022-06-27 16:02:40', '2022-06-27 16:02:40');
INSERT INTO `friend` VALUES (149, 308, 305, '2022-06-27 16:07:29', '2022-06-27 16:07:29');
INSERT INTO `friend` VALUES (150, 305, 308, '2022-06-27 16:07:29', '2022-06-27 16:07:29');

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for groupid
-- ----------------------------
DROP TABLE IF EXISTS `groupid`;
CREATE TABLE `groupid`  (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of groupid
-- ----------------------------

-- ----------------------------
-- Table structure for groupmsg
-- ----------------------------
DROP TABLE IF EXISTS `groupmsg`;
CREATE TABLE `groupmsg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NULL DEFAULT NULL,
  `member_id` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of groupmsg
-- ----------------------------

-- ----------------------------
-- Table structure for lobby
-- ----------------------------
DROP TABLE IF EXISTS `lobby`;
CREATE TABLE `lobby`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lobby
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NULL DEFAULT NULL,
  `member_id` int(11) NULL DEFAULT NULL,
  `time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of member
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `from` int(11) NULL DEFAULT NULL COMMENT '消息发送方',
  `to` int(11) NULL DEFAULT NULL COMMENT '消息接收方',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '消息内容',
  `gmt_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (4, 307, 306, '我是 test1', '2022-06-27 16:00:51', '2022-06-27 16:00:51');
INSERT INTO `message` VALUES (7, 305, 307, '1', '2022-06-27 16:01:43', '2022-06-27 16:01:43');
INSERT INTO `message` VALUES (8, 307, 305, '1', '2022-06-27 16:01:44', '2022-06-27 16:01:44');
INSERT INTO `message` VALUES (9, 308, 307, '我是jack', '2022-06-27 16:02:58', '2022-06-27 16:02:58');
INSERT INTO `message` VALUES (10, 307, 308, '你好', '2022-06-27 16:03:04', '2022-06-27 16:03:04');
INSERT INTO `message` VALUES (12, 308, 305, '你是不是一个猪', '2022-06-27 16:07:59', '2022-06-27 16:07:59');
INSERT INTO `message` VALUES (13, 305, 308, '憨憨', '2022-06-27 16:08:04', '2022-06-27 16:08:04');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `from` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发起方id',
  `to` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收方id',
  `msg` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息',
  `type` int(2) NULL DEFAULT NULL COMMENT '类型，0：添加好友申请；1：完成好友申请',
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息发送日期',
  `gmt_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 324 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (311, '305', '306', NULL, 1, '6.26', '2022-06-27 15:41:09', '2022-06-27 15:41:14');
INSERT INTO `notice` VALUES (313, '306', '305', NULL, 3, '6.26', '2022-06-27 15:41:21', '2022-06-27 15:41:26');
INSERT INTO `notice` VALUES (317, '307', '305', NULL, 1, '6.27', '2022-06-27 15:41:32', '2022-06-27 15:41:38');
INSERT INTO `notice` VALUES (319, '306', '307', NULL, 1, '6.27', '2022-06-27 16:00:14', '2022-06-27 15:58:58');
INSERT INTO `notice` VALUES (321, '307', '308', NULL, 1, '6.27', '2022-06-27 16:02:40', '2022-06-27 16:02:32');
INSERT INTO `notice` VALUES (323, '305', '308', NULL, 1, '6.27', '2022-06-27 16:07:29', '2022-06-27 16:07:23');

-- ----------------------------
-- Table structure for star
-- ----------------------------
DROP TABLE IF EXISTS `star`;
CREATE TABLE `star`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `star_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '星座',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of star
-- ----------------------------
INSERT INTO `star` VALUES (1, '白羊座');
INSERT INTO `star` VALUES (2, '金牛座');
INSERT INTO `star` VALUES (3, '双子座');
INSERT INTO `star` VALUES (4, '巨蟹座');
INSERT INTO `star` VALUES (5, '狮子座');
INSERT INTO `star` VALUES (6, '处女座');
INSERT INTO `star` VALUES (7, '天秤座');
INSERT INTO `star` VALUES (8, '天蝎座');
INSERT INTO `star` VALUES (9, '射手座');
INSERT INTO `star` VALUES (10, '摩羯座');
INSERT INTO `star` VALUES (11, '水瓶座');
INSERT INTO `star` VALUES (12, '双鱼座');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户邮箱号',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `signature` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '个性签名',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别，0：男；1：女',
  `blood_type_id` int(11) NULL DEFAULT NULL COMMENT '血型id',
  `friendship_policy` tinyint(1) NULL DEFAULT NULL COMMENT '0：允许任何人加我好友；1：需要身份验证才能加我好友；2：任何人都不能加我好友',
  `star_id` int(11) NULL DEFAULT NULL COMMENT '星座id',
  `gmt_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 309 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (305, 'haha@163.com', 'haha', 'hhhh', '/images/user-1.png', '17513579877', '哈哈哈哈，生活开朗，万物可爱', 0, 3, 0, 9, '2022-06-26 21:59:58', '2022-06-26 21:59:58');
INSERT INTO `user` VALUES (307, 'test1@163.com', 'test1', 'test1', '/images/user-5.png', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 13:27:49', '2022-06-27 13:27:49');
INSERT INTO `user` VALUES (308, 'jack@163.com', 'jack', 'jack', '/images/user-2.png', '17126312432', '吃饭、睡觉', 0, 1, NULL, 6, '2022-06-27 16:09:52', '2022-06-27 16:02:14');

-- ----------------------------
-- Table structure for verifycode
-- ----------------------------
DROP TABLE IF EXISTS `verifycode`;
CREATE TABLE `verifycode`  (
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of verifycode
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
