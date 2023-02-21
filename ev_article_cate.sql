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

 Date: 21/02/2023 09:48:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ev_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `ev_article_cate`;
CREATE TABLE `ev_article_cate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_delete` tinyint(255) NOT NULL DEFAULT 0 COMMENT '数据是否被标记删除：\r\n0 没有被删除，\r\n1 被删除\r\n',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `alias`(`alias`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ev_article_cate
-- ----------------------------
INSERT INTO `ev_article_cate` VALUES (1, '科技', 'KeJi', 1);
INSERT INTO `ev_article_cate` VALUES (2, '历史', 'LiShi', 0);
INSERT INTO `ev_article_cate` VALUES (3, '新闻', 'XinWen', 0);
INSERT INTO `ev_article_cate` VALUES (4, '军事', 'JunShi', 0);
INSERT INTO `ev_article_cate` VALUES (5, '科研', 'KeYan', 0);
INSERT INTO `ev_article_cate` VALUES (6, '战争', 'ZhanZheng', 0);

SET FOREIGN_KEY_CHECKS = 1;
