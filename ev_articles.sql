/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : my_db_01

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 21/02/2023 09:48:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ev_articles
-- ----------------------------
DROP TABLE IF EXISTS `ev_articles`;
CREATE TABLE `ev_articles`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cover_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pub_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `cate_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE INDEX `id`(`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ev_articles
-- ----------------------------
INSERT INTO `ev_articles` VALUES (1, 'abc', 'abcdefg', '\\uploads\\7ecc5481f94c95cbac14449e3086bf22', '2023-02-20 00:35:02.367', '草稿', 0, 3, 3);
INSERT INTO `ev_articles` VALUES (2, 'abc', 'abcdefg', '\\uploads\\df0ff98e373c5357e53d3e7cc97e82dd', '2023-02-20 00:39:08.191', '草稿', 0, 3, 3);
INSERT INTO `ev_articles` VALUES (3, 'abc', 'abcdefg', '\\uploads\\8997acbbd5230572a71ba8ed822701e4', '2023-02-20 00:44:17.095', '草稿', 0, 3, 3);
INSERT INTO `ev_articles` VALUES (4, 'abc', '没有什么可说的', '\\uploads\\d568b4ef5607cead12971c433417f5b3', '2023-02-20 16:44:49.118', '草稿', 0, 1, 3);

SET FOREIGN_KEY_CHECKS = 1;
