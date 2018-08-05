/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : shoestp

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 10/07/2018 10:23:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cnt_advertising
-- ----------------------------
DROP TABLE IF EXISTS `cnt_advertising`;
CREATE TABLE `cnt_advertising`  (
  `pkey` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `pagename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `adposition` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `piccount` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `showtype` tinyint(4) NOT NULL,
  `picpath` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `brief` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `number`(`number`) USING BTREE,
  UNIQUE INDEX `adposition`(`adposition`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cnt_advertising_line
-- ----------------------------
DROP TABLE IF EXISTS `cnt_advertising_line`;
CREATE TABLE `cnt_advertising_line`  (
  `pkey` bigint(20) NOT NULL AUTO_INCREMENT,
  `main` bigint(20) NOT NULL,
  `picpath` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `brief` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cnt_links
-- ----------------------------
DROP TABLE IF EXISTS `cnt_links`;
CREATE TABLE `cnt_links`  (
  `pkey` bigint(20) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(4) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_date_time` datetime(0) NOT NULL,
  `sequence` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cnt_page
-- ----------------------------
DROP TABLE IF EXISTS `cnt_page`;
CREATE TABLE `cnt_page`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `page_type` int(11) NOT NULL,
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rewrite_url` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `images` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `tag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `enabled` tinyint(4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cnt_page_type
-- ----------------------------
DROP TABLE IF EXISTS `cnt_page_type`;
CREATE TABLE `cnt_page_type`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cnt_page_type_line
-- ----------------------------
DROP TABLE IF EXISTS `cnt_page_type_line`;
CREATE TABLE `cnt_page_type_line`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `main` int(11) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cnt_sgl_page
-- ----------------------------
DROP TABLE IF EXISTS `cnt_sgl_page`;
CREATE TABLE `cnt_sgl_page`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `page_type` int(11) NOT NULL,
  `intro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `enabled` tinyint(4) NOT NULL,
  `orders` smallint(6) NOT NULL,
  `lang` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cnt_sgl_page_type
-- ----------------------------
DROP TABLE IF EXISTS `cnt_sgl_page_type`;
CREATE TABLE `cnt_sgl_page_type`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orders` smallint(6) NOT NULL,
  `tag` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `page_type_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `enabled` tinyint(4) NOT NULL,
  `lang` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for exp_base
-- ----------------------------
DROP TABLE IF EXISTS `exp_base`;
CREATE TABLE `exp_base`  (
  `pkey` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `opt` tinyint(4) NOT NULL,
  `kind` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exp_base
-- ----------------------------
INSERT INTO `exp_base` VALUES (1, 'test1', 'test1', 0, 1, 1, 1, '2018-06-14 18:23:00', 1);
INSERT INTO `exp_base` VALUES (2, 'test2', 'test2', 0, 1, 1, 1, '2018-06-14 18:23:17', 1);
INSERT INTO `exp_base` VALUES (3, '我的类型是222222', '我的类型是222222', 0, 2, 1, 1, '2018-06-15 10:55:26', 1);
INSERT INTO `exp_base` VALUES (4, '我的类型是333333', '我的类型是333333', 0, 3, 1, 1, '2018-06-15 10:55:55', 1);

-- ----------------------------
-- Table structure for exp_comp
-- ----------------------------
DROP TABLE IF EXISTS `exp_comp`;
CREATE TABLE `exp_comp`  (
  `pkey` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exp_comp
-- ----------------------------
INSERT INTO `exp_comp` VALUES (1, 'test1', 'test1', 1);
INSERT INTO `exp_comp` VALUES (2, 'test2', 'test2', 1);

-- ----------------------------
-- Table structure for exp_comp_line
-- ----------------------------
DROP TABLE IF EXISTS `exp_comp_line`;
CREATE TABLE `exp_comp_line`  (
  `pkey` bigint(20) NOT NULL AUTO_INCREMENT,
  `main` bigint(20) NOT NULL,
  `amt` decimal(16, 2) NOT NULL,
  `date_time` datetime(0) NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exp_comp_line
-- ----------------------------
INSERT INTO `exp_comp_line` VALUES (1, 1, 1.00, '2018-06-14 00:00:00', 1);
INSERT INTO `exp_comp_line` VALUES (2, 2, 4.00, '2018-06-13 00:00:00', 1);
INSERT INTO `exp_comp_line` VALUES (3, 2, 3.00, '2018-06-20 00:00:00', 1);
INSERT INTO `exp_comp_line` VALUES (4, 2, 1.00, '2018-06-12 00:00:00', 1);
INSERT INTO `exp_comp_line` VALUES (5, 2, 2.00, '2018-06-15 00:00:00', 1);

-- ----------------------------
-- Table structure for exp_kind
-- ----------------------------
DROP TABLE IF EXISTS `exp_kind`;
CREATE TABLE `exp_kind`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exp_kind
-- ----------------------------
INSERT INTO `exp_kind` VALUES (1, '11111', 1);
INSERT INTO `exp_kind` VALUES (2, '222222', 1);
INSERT INTO `exp_kind` VALUES (3, '333333', 1);
INSERT INTO `exp_kind` VALUES (4, '44444', 1);
INSERT INTO `exp_kind` VALUES (5, '55555', 1);

-- ----------------------------
-- Table structure for lg_attemper
-- ----------------------------
DROP TABLE IF EXISTS `lg_attemper`;
CREATE TABLE `lg_attemper`  (
  `pkey` int(11) NOT NULL,
  `date` date NOT NULL,
  `attemper` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `obj_pkey` int(11) NULL DEFAULT NULL,
  `result` tinyint(4) NOT NULL,
  `date_time` datetime(0) NOT NULL,
  `times` int(11) NOT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `date`(`date`, `attemper`, `type`, `obj_pkey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lg_login
-- ----------------------------
DROP TABLE IF EXISTS `lg_login`;
CREATE TABLE `lg_login`  (
  `pkey` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_time` datetime(0) NULL DEFAULT NULL,
  `user_sys` int(11) NOT NULL,
  `client` tinyint(4) NOT NULL,
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `system` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browser` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logout_time` datetime(0) NULL DEFAULT NULL,
  `count_proc_time` int(11) NOT NULL,
  `count_success` int(11) NOT NULL,
  `count_fail` int(11) NOT NULL,
  `load_success` int(11) NOT NULL,
  `load_fail` int(11) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  INDEX `user`(`user_sys`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lg_login
-- ----------------------------
INSERT INTO `lg_login` VALUES (1, '2015-05-12 16:42:08', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 809, 3, 0, 12, 0, 16);
INSERT INTO `lg_login` VALUES (2, '2015-05-13 10:20:02', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 630, 1, 0, 7, 0, 9);
INSERT INTO `lg_login` VALUES (3, '2015-05-13 10:29:14', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 4113, 42, 1, 80, 0, 124);
INSERT INTO `lg_login` VALUES (4, '2015-05-14 16:46:28', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 1132, 6, 0, 7, 0, 14);
INSERT INTO `lg_login` VALUES (5, '2015-05-19 08:37:36', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 797, 2, 0, 6, 0, 9);
INSERT INTO `lg_login` VALUES (6, '2015-05-19 08:42:20', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 551, 0, 0, 8, 0, 9);
INSERT INTO `lg_login` VALUES (7, '2015-05-19 08:47:53', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 1620, 1, 0, 7, 0, 9);
INSERT INTO `lg_login` VALUES (8, '2015-05-26 11:48:37', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 1902, 8, 2, 24, 1, 36);
INSERT INTO `lg_login` VALUES (9, '2015-05-26 13:31:31', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 81, 0, 0, 4, 0, 5);
INSERT INTO `lg_login` VALUES (10, '2015-05-26 13:41:45', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 1598, 23, 0, 17, 0, 41);
INSERT INTO `lg_login` VALUES (11, '2015-06-04 13:38:40', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 1642, 5, 0, 8, 0, 14);
INSERT INTO `lg_login` VALUES (12, '2015-06-05 11:24:31', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 784, 1, 0, 7, 0, 9);
INSERT INTO `lg_login` VALUES (13, '2015-06-05 11:46:08', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 699, 1, 0, 10, 0, 12);
INSERT INTO `lg_login` VALUES (14, '2015-06-05 14:24:52', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 1103, 1, 0, 7, 0, 9);
INSERT INTO `lg_login` VALUES (15, '2015-06-08 09:02:06', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 6531, 7, 0, 92, 0, 100);
INSERT INTO `lg_login` VALUES (16, '2015-06-08 09:55:26', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 8558, 1, 0, 170, 0, 172);
INSERT INTO `lg_login` VALUES (17, '2015-06-10 13:34:45', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 700, 4, 0, 9, 0, 14);
INSERT INTO `lg_login` VALUES (18, '2015-06-10 13:40:39', 1, 0, '127.0.0.1', 'Windows NT', 'Firefox', NULL, 616, 2, 0, 8, 0, 11);
INSERT INTO `lg_login` VALUES (19, '2015-09-16 11:16:00', 1, 0, '0:0:0:0:0:0:0:1', '', 'Firefox', NULL, 145, 3, 0, 9, 4, 17);
INSERT INTO `lg_login` VALUES (20, '2015-09-16 11:21:47', 1, 0, '0:0:0:0:0:0:0:1', '', 'Firefox', NULL, 51, 2, 0, 7, 0, 10);
INSERT INTO `lg_login` VALUES (21, '2015-09-16 11:23:47', 1, 0, '0:0:0:0:0:0:0:1', '', 'Firefox', NULL, 14, 1, 0, 6, 0, 8);
INSERT INTO `lg_login` VALUES (22, '2015-09-16 12:29:24', 1, 0, '0:0:0:0:0:0:0:1', '', 'Firefox', NULL, 53, 0, 0, 5, 0, 6);
INSERT INTO `lg_login` VALUES (23, '2015-09-17 14:31:12', 1, 0, '0:0:0:0:0:0:0:1', '', 'Firefox', NULL, 72, 0, 0, 6, 0, 7);
INSERT INTO `lg_login` VALUES (24, '2015-09-17 14:45:41', 1, 0, '0:0:0:0:0:0:0:1', '', 'Firefox', NULL, 115, 3, 0, 7, 0, 11);
INSERT INTO `lg_login` VALUES (25, '2015-09-17 15:04:50', 1, 0, '0:0:0:0:0:0:0:1', '', 'Firefox', NULL, 55, 0, 0, 5, 0, 6);
INSERT INTO `lg_login` VALUES (26, '2015-09-17 15:22:47', 1, 0, '0:0:0:0:0:0:0:1', '', 'Firefox', NULL, 79, 2, 0, 5, 0, 8);
INSERT INTO `lg_login` VALUES (27, '2015-09-17 16:58:20', 1, 0, '0:0:0:0:0:0:0:1', '', 'Firefox', NULL, 93, 1, 0, 6, 0, 8);
INSERT INTO `lg_login` VALUES (28, '2018-06-14 18:22:25', 1, 0, '0:0:0:0:0:0:0:1', 'Windows NT', 'Chrome', NULL, 551, 13, 0, 14, 0, 28);
INSERT INTO `lg_login` VALUES (29, '2018-06-14 18:39:13', 1, 0, '0:0:0:0:0:0:0:1', 'Windows NT', 'Chrome', NULL, 35, 0, 0, 6, 0, 7);
INSERT INTO `lg_login` VALUES (30, '2018-06-14 18:48:42', 1, 0, '0:0:0:0:0:0:0:1', 'Windows NT', 'Chrome', NULL, 615, 1, 0, 7, 0, 9);
INSERT INTO `lg_login` VALUES (31, '2018-06-14 18:50:11', 1, 0, '0:0:0:0:0:0:0:1', 'Windows NT', 'Chrome', NULL, 34, 0, 0, 6, 0, 7);
INSERT INTO `lg_login` VALUES (32, '2018-06-14 19:46:40', 1, 0, '0:0:0:0:0:0:0:1', 'Windows NT', 'Chrome', NULL, 214, 3, 0, 7, 0, 11);
INSERT INTO `lg_login` VALUES (33, '2018-06-14 20:14:28', 1, 0, '0:0:0:0:0:0:0:1', 'Windows NT', 'Chrome', NULL, 307, 3, 0, 26, 0, 30);
INSERT INTO `lg_login` VALUES (34, '2018-06-15 10:50:26', 1, 0, '0:0:0:0:0:0:0:1', 'Windows NT', 'Chrome', NULL, 83, 0, 0, 6, 0, 7);
INSERT INTO `lg_login` VALUES (35, '2018-06-15 10:54:57', 1, 0, '0:0:0:0:0:0:0:1', 'Windows NT', 'Chrome', NULL, 199, 2, 2, 8, 0, 13);
INSERT INTO `lg_login` VALUES (36, '2018-06-25 12:17:55', 1, 0, '0:0:0:0:0:0:0:1', 'Windows NT', 'Chrome', NULL, 128, 1, 0, 6, 0, 8);
INSERT INTO `lg_login` VALUES (37, '2018-07-10 10:22:37', 1, 0, '0:0:0:0:0:0:0:1', 'Windows NT', 'Firefox', NULL, 64, 0, 0, 8, 0, 9);

-- ----------------------------
-- Table structure for lg_tran
-- ----------------------------
DROP TABLE IF EXISTS `lg_tran`;
CREATE TABLE `lg_tran`  (
  `pkey` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` bigint(20) NOT NULL,
  `b_time` datetime(0) NOT NULL,
  `act` int(11) NULL DEFAULT NULL,
  `proc_time` int(11) NOT NULL,
  `success_flag` tinyint(4) NOT NULL,
  `obj_table` int(11) NULL DEFAULT NULL,
  `obj_pkey` int(11) NULL DEFAULT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  INDEX `login`(`login`, `b_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 789 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lg_tran
-- ----------------------------
INSERT INTO `lg_tran` VALUES (1, 1, '2015-05-12 16:42:08', NULL, 40, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (2, 1, '2015-05-12 16:42:09', NULL, 265, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (3, 1, '2015-05-12 16:42:09', NULL, 28, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (4, 1, '2015-05-12 16:42:10', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (5, 1, '2015-05-12 16:42:14', NULL, 66, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (6, 1, '2015-05-12 16:42:19', 1, 72, 1, NULL, NULL, '机构信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (7, 1, '2015-05-12 16:42:45', NULL, 5, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (8, 1, '2015-05-12 16:42:48', 138, 56, 1, NULL, NULL, '资产负债表 - 查询', 1);
INSERT INTO `lg_tran` VALUES (9, 1, '2015-05-12 16:42:49', NULL, 37, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (10, 1, '2015-05-12 16:42:52', 141, 57, 1, NULL, NULL, '利润表 - 查询', 1);
INSERT INTO `lg_tran` VALUES (11, 1, '2015-05-12 16:42:52', NULL, 34, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (12, 1, '2015-05-12 16:42:55', NULL, 53, 1, NULL, NULL, '其他加载 gl_GlReport_listZC', 1);
INSERT INTO `lg_tran` VALUES (13, 1, '2015-05-12 16:42:55', NULL, 46, 1, NULL, NULL, '其他加载 gl_GlReport_listFS', 1);
INSERT INTO `lg_tran` VALUES (14, 1, '2015-05-12 16:42:56', NULL, 44, 1, NULL, NULL, '其他加载 gl_GlReport_listLR', 1);
INSERT INTO `lg_tran` VALUES (15, 1, '2015-05-12 16:43:32', NULL, 4, 1, NULL, NULL, '其他加载 gl_GlReport_listLR', 1);
INSERT INTO `lg_tran` VALUES (16, 2, '2015-05-13 10:20:02', NULL, 27, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (17, 2, '2015-05-13 10:20:03', NULL, 250, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (18, 2, '2015-05-13 10:20:04', NULL, 34, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (19, 2, '2015-05-13 10:20:04', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (20, 2, '2015-05-13 10:20:13', NULL, 71, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (21, 2, '2015-05-13 10:20:16', 85, 166, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (22, 2, '2015-05-13 10:20:19', NULL, 44, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (23, 2, '2015-05-13 10:29:08', NULL, 36, 1, NULL, NULL, '其他加载 sys_SysUser_loginout', 1);
INSERT INTO `lg_tran` VALUES (24, 3, '2015-05-13 10:29:14', NULL, 63, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (25, 3, '2015-05-13 10:29:15', NULL, 3, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (26, 3, '2015-05-13 10:29:15', NULL, 6, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (27, 3, '2015-05-13 10:29:15', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (28, 3, '2015-05-13 10:30:45', NULL, 18, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (29, 3, '2015-05-13 10:30:47', 85, 33, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (30, 3, '2015-05-13 10:31:33', 85, 27, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (31, 3, '2015-05-13 10:31:37', NULL, 16, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (32, 3, '2015-05-13 10:31:38', 103, 85, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (33, 3, '2015-05-13 10:31:42', 103, 45, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (34, 3, '2015-05-13 10:31:45', 103, 32, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (35, 3, '2015-05-13 10:32:35', 103, 35, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (36, 3, '2015-05-13 10:37:20', 85, 47, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (37, 3, '2015-05-13 10:38:22', 85, 96, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (38, 3, '2015-05-13 10:45:08', NULL, 18, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (39, 3, '2015-05-13 10:45:12', 1, 45, 1, NULL, NULL, '机构信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (40, 3, '2015-05-13 10:45:19', NULL, 33, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (41, 3, '2015-05-13 10:45:19', NULL, 44, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (42, 3, '2015-05-13 10:46:49', 2, 95, 1, 1, 2, '机构信息 - 新增 编号:2', 1);
INSERT INTO `lg_tran` VALUES (43, 3, '2015-05-13 10:47:03', 7, 41, 1, NULL, NULL, '部门信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (44, 3, '2015-05-13 10:47:16', NULL, 23, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (45, 3, '2015-05-13 10:47:16', NULL, 43, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (46, 3, '2015-05-13 10:47:16', NULL, 34, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (47, 3, '2015-05-13 10:47:53', NULL, 7, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (48, 3, '2015-05-13 10:47:52', NULL, 43, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (49, 3, '2015-05-13 10:47:53', NULL, 12, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (50, 3, '2015-05-13 10:48:01', 9, 227, 1, 2, 1, '部门信息 - 修改 编号:1', 1);
INSERT INTO `lg_tran` VALUES (51, 3, '2015-05-13 10:48:03', NULL, 7, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (52, 3, '2015-05-13 10:48:03', NULL, 11, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (53, 3, '2015-05-13 10:48:03', NULL, 13, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (54, 3, '2015-05-13 10:48:15', 8, 163, 1, 2, 2, '部门信息 - 新增 编号:2', 1);
INSERT INTO `lg_tran` VALUES (55, 3, '2015-05-13 10:48:18', NULL, 5, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (56, 3, '2015-05-13 10:48:18', NULL, 5, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (57, 3, '2015-05-13 10:48:18', NULL, 13, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (58, 3, '2015-05-13 10:48:32', 8, 13, 0, NULL, NULL, '部门信息 - 新增', 1);
INSERT INTO `lg_tran` VALUES (59, 3, '2015-05-13 10:48:37', 8, 44, 1, 2, 3, '部门信息 - 新增 编号:3', 1);
INSERT INTO `lg_tran` VALUES (60, 3, '2015-05-13 10:49:19', NULL, 29, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (61, 3, '2015-05-13 10:49:19', NULL, 38, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (62, 3, '2015-05-13 10:49:19', NULL, 36, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (63, 3, '2015-05-13 10:54:33', 8, 45, 1, 2, 4, '部门信息 - 新增 编号:4', 1);
INSERT INTO `lg_tran` VALUES (64, 3, '2015-05-13 10:54:35', 7, 10, 1, NULL, NULL, '部门信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (65, 3, '2015-05-13 10:54:37', NULL, 8, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (66, 3, '2015-05-13 10:54:37', NULL, 18, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (67, 3, '2015-05-13 10:54:37', NULL, 26, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (68, 3, '2015-05-13 10:55:11', 8, 77, 1, 2, 5, '部门信息 - 新增 编号:5', 1);
INSERT INTO `lg_tran` VALUES (69, 3, '2015-05-13 10:55:14', 7, 10, 1, NULL, NULL, '部门信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (70, 3, '2015-05-13 10:55:15', NULL, 5, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (71, 3, '2015-05-13 10:55:15', NULL, 4, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (72, 3, '2015-05-13 10:55:15', NULL, 14, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (73, 3, '2015-05-13 10:55:30', NULL, 11, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (74, 3, '2015-05-13 10:55:30', NULL, 12, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (75, 3, '2015-05-13 10:55:30', NULL, 15, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (76, 3, '2015-05-13 10:55:44', 8, 66, 1, 2, 6, '部门信息 - 新增 编号:6', 1);
INSERT INTO `lg_tran` VALUES (77, 3, '2015-05-13 10:55:46', NULL, 8, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (78, 3, '2015-05-13 10:55:45', NULL, 12, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (79, 3, '2015-05-13 10:55:46', NULL, 11, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (80, 3, '2015-05-13 10:56:00', 8, 76, 1, 2, 7, '部门信息 - 新增 编号:7', 1);
INSERT INTO `lg_tran` VALUES (81, 3, '2015-05-13 10:56:02', NULL, 8, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (82, 3, '2015-05-13 10:56:02', NULL, 9, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (83, 3, '2015-05-13 10:56:02', NULL, 15, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (84, 3, '2015-05-13 10:56:11', 8, 57, 1, 2, 8, '部门信息 - 新增 编号:8', 1);
INSERT INTO `lg_tran` VALUES (85, 3, '2015-05-13 10:56:15', NULL, 14, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (86, 3, '2015-05-13 10:56:15', NULL, 6, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (87, 3, '2015-05-13 10:56:15', NULL, 15, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (88, 3, '2015-05-13 10:56:36', 8, 77, 1, 2, 9, '部门信息 - 新增 编号:9', 1);
INSERT INTO `lg_tran` VALUES (89, 3, '2015-05-13 10:56:38', NULL, 4, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (90, 3, '2015-05-13 10:56:38', NULL, 8, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (91, 3, '2015-05-13 10:56:38', NULL, 43, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (92, 3, '2015-05-13 10:57:45', 8, 132, 1, 2, 10, '部门信息 - 新增 编号:10', 1);
INSERT INTO `lg_tran` VALUES (93, 3, '2015-05-13 10:57:46', NULL, 6, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (94, 3, '2015-05-13 10:57:46', NULL, 15, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (95, 3, '2015-05-13 10:57:46', NULL, 43, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (96, 3, '2015-05-13 10:58:11', 8, 119, 1, 2, 11, '部门信息 - 新增 编号:11', 1);
INSERT INTO `lg_tran` VALUES (97, 3, '2015-05-13 10:58:12', NULL, 7, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (98, 3, '2015-05-13 10:58:12', NULL, 11, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (99, 3, '2015-05-13 10:58:12', NULL, 48, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (100, 3, '2015-05-13 10:58:39', 8, 69, 1, 2, 12, '部门信息 - 新增 编号:12', 1);
INSERT INTO `lg_tran` VALUES (101, 3, '2015-05-13 10:58:41', NULL, 6, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (102, 3, '2015-05-13 10:58:41', NULL, 5, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (103, 3, '2015-05-13 10:58:41', NULL, 31, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (104, 3, '2015-05-13 10:59:02', 8, 35, 1, 2, 13, '部门信息 - 新增 编号:13', 1);
INSERT INTO `lg_tran` VALUES (105, 3, '2015-05-13 10:59:04', 7, 16, 1, NULL, NULL, '部门信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (106, 3, '2015-05-13 10:59:12', NULL, 4, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (107, 3, '2015-05-13 10:59:14', 13, 77, 1, NULL, NULL, '职员信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (108, 3, '2015-05-13 10:59:16', NULL, 37, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (109, 3, '2015-05-13 10:59:16', NULL, 39, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (110, 3, '2015-05-13 10:59:57', 14, 105, 1, 3, 2, '职员信息 - 新增 编号:2', 1);
INSERT INTO `lg_tran` VALUES (111, 3, '2015-05-13 11:00:00', NULL, 6, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (112, 3, '2015-05-13 11:00:00', NULL, 29, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (113, 3, '2015-05-13 11:00:19', NULL, 7, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (114, 3, '2015-05-13 11:00:19', NULL, 10, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (115, 3, '2015-05-13 11:00:19', NULL, 29, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (116, 3, '2015-05-13 11:00:35', 8, 39, 1, 2, 14, '部门信息 - 新增 编号:14', 1);
INSERT INTO `lg_tran` VALUES (117, 3, '2015-05-13 11:00:58', NULL, 11, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (118, 3, '2015-05-13 11:00:58', NULL, 35, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (119, 3, '2015-05-13 11:02:11', 14, 69, 1, 3, 3, '职员信息 - 新增 编号:3', 1);
INSERT INTO `lg_tran` VALUES (120, 3, '2015-05-13 11:02:14', 13, 18, 1, NULL, NULL, '职员信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (121, 3, '2015-05-13 11:02:16', NULL, 5, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (122, 3, '2015-05-13 11:02:16', NULL, 34, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (123, 3, '2015-05-13 11:02:37', 14, 97, 1, 3, 4, '职员信息 - 新增 编号:4', 1);
INSERT INTO `lg_tran` VALUES (124, 3, '2015-05-13 11:02:40', 13, 29, 1, NULL, NULL, '职员信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (125, 3, '2015-05-13 11:02:41', NULL, 7, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (126, 3, '2015-05-13 11:02:41', NULL, 28, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (127, 3, '2015-05-13 11:02:49', NULL, 4, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (128, 3, '2015-05-13 11:02:49', 16, 39, 1, NULL, NULL, '用户管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (129, 3, '2015-05-13 11:02:53', 13, 35, 1, NULL, NULL, '职员信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (130, 3, '2015-05-13 11:02:55', NULL, 6, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (131, 3, '2015-05-13 11:02:55', NULL, 22, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (132, 3, '2015-05-13 11:03:50', 14, 76, 1, 3, 5, '职员信息 - 新增 编号:5', 1);
INSERT INTO `lg_tran` VALUES (133, 3, '2015-05-13 11:03:51', 13, 32, 1, NULL, NULL, '职员信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (134, 3, '2015-05-13 11:03:56', 16, 11, 1, NULL, NULL, '用户管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (135, 3, '2015-05-13 11:04:04', NULL, 45, 1, NULL, NULL, '加载关联数据 prv_PrvRole_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (136, 3, '2015-05-13 11:04:04', NULL, 46, 1, NULL, NULL, '其他加载 sys_SysUserRole_list', 1);
INSERT INTO `lg_tran` VALUES (137, 3, '2015-05-13 11:04:12', 16, 10, 1, NULL, NULL, '用户管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (138, 3, '2015-05-13 11:04:31', NULL, 40, 1, NULL, NULL, '其他加载 sys_SysTemplat_listGl', 1);
INSERT INTO `lg_tran` VALUES (139, 3, '2015-05-13 11:04:36', 22, 61, 1, NULL, NULL, '核算单元 - 查询', 1);
INSERT INTO `lg_tran` VALUES (140, 3, '2015-05-13 11:04:38', NULL, 7, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (141, 3, '2015-05-13 11:04:38', NULL, 21, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (142, 3, '2015-05-13 11:04:52', 23, 72, 1, 5, 2, '核算单元 - 新增 编号:2', 1);
INSERT INTO `lg_tran` VALUES (143, 3, '2015-05-13 11:04:58', NULL, 86, 1, NULL, NULL, '其他加载 sys_SysSupplier_list', 1);
INSERT INTO `lg_tran` VALUES (144, 3, '2015-05-13 11:06:19', NULL, 30, 1, NULL, NULL, '其他加载 sys_SysOrg_getFields', 1);
INSERT INTO `lg_tran` VALUES (145, 3, '2015-05-13 11:06:31', NULL, 4, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (146, 3, '2015-05-13 11:06:31', NULL, 3, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (147, 3, '2015-05-13 11:06:41', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_loginout', 1);
INSERT INTO `lg_tran` VALUES (148, 4, '2015-05-14 16:46:28', NULL, 46, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (149, 4, '2015-05-14 16:46:29', NULL, 292, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (150, 4, '2015-05-14 16:46:30', NULL, 34, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (151, 4, '2015-05-14 16:46:30', NULL, 3, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (152, 4, '2015-05-14 16:46:37', NULL, 74, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (153, 4, '2015-05-14 16:46:43', NULL, 64, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (154, 4, '2015-05-14 16:46:45', 103, 98, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (155, 4, '2015-05-14 16:46:59', 103, 107, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (156, 4, '2015-05-14 16:47:10', NULL, 6, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (157, 4, '2015-05-14 16:47:14', 85, 234, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (158, 4, '2015-05-14 16:47:34', 85, 16, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (159, 4, '2015-05-14 16:48:06', 85, 15, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (160, 4, '2015-05-14 16:48:16', 104, 143, 1, NULL, NULL, '科目别名 - 修改', 1);
INSERT INTO `lg_tran` VALUES (161, 5, '2015-05-19 08:37:36', NULL, 45, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (162, 5, '2015-05-19 08:37:38', NULL, 329, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (163, 5, '2015-05-19 08:37:39', NULL, 29, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (164, 5, '2015-05-19 08:37:39', NULL, 3, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (165, 5, '2015-05-19 08:37:43', NULL, 97, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (166, 5, '2015-05-19 08:37:45', 59, 172, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (167, 5, '2015-05-19 08:37:46', 59, 11, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (168, 5, '2015-05-19 08:37:49', NULL, 111, 1, NULL, NULL, '加载关联数据 prv_PrvTranGrp_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (169, 6, '2015-05-19 08:42:20', NULL, 34, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (170, 6, '2015-05-19 08:42:22', NULL, 276, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (171, 6, '2015-05-19 08:42:22', NULL, 31, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (172, 6, '2015-05-19 08:42:22', NULL, 3, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (173, 6, '2015-05-19 08:42:27', NULL, 106, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (174, 6, '2015-05-19 08:42:28', NULL, 23, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (175, 6, '2015-05-19 08:42:29', NULL, 23, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (176, 6, '2015-05-19 08:42:53', NULL, 55, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (177, 7, '2015-05-19 08:47:53', NULL, 45, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (178, 7, '2015-05-19 08:47:55', NULL, 654, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (179, 7, '2015-05-19 08:47:55', NULL, 29, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (180, 7, '2015-05-19 08:47:55', NULL, 3, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (181, 7, '2015-05-19 08:48:21', NULL, 59, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (182, 7, '2015-05-19 08:48:42', NULL, 49, 1, NULL, NULL, '其他加载 sys_SysTemplat_listGl', 1);
INSERT INTO `lg_tran` VALUES (183, 7, '2015-05-19 08:48:46', 59, 123, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (184, 7, '2015-05-19 08:49:25', NULL, 658, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (185, 8, '2015-05-26 11:48:37', NULL, 37, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (186, 8, '2015-05-26 11:48:39', NULL, 236, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (187, 8, '2015-05-26 11:48:39', NULL, 32, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (188, 8, '2015-05-26 11:48:39', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (189, 8, '2015-05-26 11:48:42', NULL, 56, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (190, 8, '2015-05-26 11:48:43', NULL, 41, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (191, 8, '2015-05-26 11:48:44', 630, 39, 1, NULL, NULL, '销售单 - 查询', 1);
INSERT INTO `lg_tran` VALUES (192, 8, '2015-05-26 11:48:48', NULL, 6, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (193, 8, '2015-05-26 11:48:53', 59, 122, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (194, 8, '2015-05-26 11:48:56', NULL, 658, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (195, 8, '2015-05-26 11:49:00', NULL, 38, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (196, 8, '2015-05-26 11:49:03', NULL, 31, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (197, 8, '2015-05-26 11:49:08', NULL, 20, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (198, 8, '2015-05-26 11:49:10', NULL, 11, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (199, 8, '2015-05-26 11:49:14', NULL, 19, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (200, 8, '2015-05-26 11:49:22', NULL, 23, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (201, 8, '2015-05-26 11:49:28', NULL, 12, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (202, 8, '2015-05-26 11:49:32', NULL, 10, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (203, 8, '2015-05-26 11:49:35', NULL, 10, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (204, 8, '2015-05-26 11:49:38', NULL, 12, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (205, 8, '2015-05-26 11:49:43', NULL, 40, 1, NULL, NULL, '加载关联数据 prv_PrvRole_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (206, 8, '2015-05-26 11:49:43', NULL, 63, 1, NULL, NULL, '其他加载 prv_PrvRoleLine_list', 1);
INSERT INTO `lg_tran` VALUES (207, 8, '2015-05-26 11:50:37', NULL, 4, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (208, 8, '2015-05-26 11:50:39', NULL, 33, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (209, 8, '2015-05-26 11:50:40', 103, 69, 0, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (210, 8, '2015-05-26 11:50:47', NULL, 4, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (211, 8, '2015-05-26 11:51:26', 103, 19, 0, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (212, 8, '2015-05-26 11:54:48', 103, 36, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (213, 8, '2015-05-26 11:54:52', NULL, 55, 0, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (214, 8, '2015-05-26 11:54:52', NULL, 46, 1, NULL, NULL, '加载关联数据 sys_SysCell_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (215, 8, '2015-05-26 11:54:53', 106, 33, 1, NULL, NULL, '普通分户账 - 查询', 1);
INSERT INTO `lg_tran` VALUES (216, 8, '2015-05-26 11:55:01', 103, 23, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (217, 8, '2015-05-26 11:55:53', 103, 22, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (218, 8, '2015-05-26 11:56:44', 103, 16, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (219, 8, '2015-05-26 11:56:50', 103, 24, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (220, 9, '2015-05-26 13:31:31', NULL, 74, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (221, 9, '2015-05-26 13:31:32', NULL, 3, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (222, 9, '2015-05-26 13:31:32', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (223, 9, '2015-05-26 13:31:32', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (224, 10, '2015-05-26 13:41:45', NULL, 42, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (225, 10, '2015-05-26 13:41:46', NULL, 206, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (226, 10, '2015-05-26 13:41:46', NULL, 23, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (227, 10, '2015-05-26 13:41:46', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (228, 10, '2015-05-26 13:43:59', NULL, 68, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (229, 10, '2015-05-26 13:44:02', NULL, 39, 1, NULL, NULL, '加载关联数据 sys_SysCell_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (230, 10, '2015-05-26 13:44:02', NULL, 46, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (231, 10, '2015-05-26 13:44:02', 106, 33, 1, NULL, NULL, '普通分户账 - 查询', 1);
INSERT INTO `lg_tran` VALUES (232, 10, '2015-05-26 13:44:04', NULL, 38, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (233, 10, '2015-05-26 13:44:05', 103, 60, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (234, 10, '2015-05-26 13:44:30', 103, 28, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (235, 10, '2015-05-26 13:44:43', NULL, 4, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (236, 10, '2015-05-26 13:44:45', 85, 56, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (237, 10, '2015-05-26 13:44:54', 85, 20, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (238, 10, '2015-05-26 13:44:59', 85, 19, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (239, 10, '2015-05-26 13:45:06', 103, 6, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (240, 10, '2015-05-26 13:45:10', NULL, 4, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (241, 10, '2015-05-26 13:45:14', 103, 28, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (242, 10, '2015-05-26 13:45:23', NULL, 4, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (243, 10, '2015-05-26 13:45:25', 85, 24, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (244, 10, '2015-05-26 13:45:31', 85, 8, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (245, 10, '2015-05-26 13:45:40', 104, 136, 1, NULL, NULL, '科目别名 - 修改', 1);
INSERT INTO `lg_tran` VALUES (246, 10, '2015-05-26 13:45:44', NULL, 4, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (247, 10, '2015-05-26 13:45:46', 85, 17, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (248, 10, '2015-05-26 13:45:53', 85, 6, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (249, 10, '2015-05-26 13:45:57', 104, 77, 1, NULL, NULL, '科目别名 - 修改', 1);
INSERT INTO `lg_tran` VALUES (250, 10, '2015-05-26 13:45:59', NULL, 3, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (251, 10, '2015-05-26 13:46:01', 85, 19, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (252, 10, '2015-05-26 13:46:07', 85, 7, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (253, 10, '2015-05-26 13:46:12', 104, 76, 1, NULL, NULL, '科目别名 - 修改', 1);
INSERT INTO `lg_tran` VALUES (254, 10, '2015-05-26 13:46:14', 103, 18, 1, NULL, NULL, '科目别名 - 查询', 1);
INSERT INTO `lg_tran` VALUES (255, 10, '2015-05-26 13:46:17', NULL, 4, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (256, 10, '2015-05-26 13:46:18', 85, 19, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (257, 10, '2015-05-26 13:46:38', 85, 7, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (258, 10, '2015-05-26 13:46:43', 104, 72, 1, NULL, NULL, '科目别名 - 修改', 1);
INSERT INTO `lg_tran` VALUES (259, 10, '2015-05-26 13:47:16', NULL, 5, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (260, 10, '2015-05-26 13:47:19', 7, 50, 1, NULL, NULL, '部门信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (261, 10, '2015-05-26 13:47:22', NULL, 18, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (262, 10, '2015-05-26 13:47:22', NULL, 31, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (263, 10, '2015-05-26 13:47:22', NULL, 48, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (264, 10, '2015-05-26 13:47:24', 9, 262, 1, 2, 1, '部门信息 - 修改 编号:1', 1);
INSERT INTO `lg_tran` VALUES (265, 11, '2015-06-04 13:38:40', NULL, 37, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (266, 11, '2015-06-04 13:38:41', NULL, 591, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (267, 11, '2015-06-04 13:38:41', NULL, 22, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (268, 11, '2015-06-04 13:38:42', NULL, 5, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (269, 11, '2015-06-04 13:40:06', NULL, 49, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (270, 11, '2015-06-04 13:40:09', 85, 100, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (271, 11, '2015-06-04 13:40:11', 85, 458, 1, NULL, NULL, '科目字典 - 查询', 1);
INSERT INTO `lg_tran` VALUES (272, 11, '2015-06-04 13:40:22', NULL, 84, 1, 2201, 157, '其他加载 gl_GlSubject_delMulti', 1);
INSERT INTO `lg_tran` VALUES (273, 11, '2015-06-04 13:41:24', NULL, 33, 1, NULL, NULL, '加载关联数据 sys_SysTemplat_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (274, 11, '2015-06-04 13:41:25', 142, 72, 1, NULL, NULL, '损益结转定义 - 查询', 1);
INSERT INTO `lg_tran` VALUES (275, 11, '2015-06-04 13:42:56', NULL, 83, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (276, 11, '2015-06-04 13:42:58', 146, 75, 1, NULL, NULL, '货物类别 - 查询', 1);
INSERT INTO `lg_tran` VALUES (277, 11, '2015-06-04 13:43:02', 162, 33, 1, NULL, NULL, '计量单位类型 - 查询', 1);
INSERT INTO `lg_tran` VALUES (278, 12, '2015-06-05 11:24:31', NULL, 35, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (279, 12, '2015-06-05 11:24:33', NULL, 446, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (280, 12, '2015-06-05 11:24:33', NULL, 43, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (281, 12, '2015-06-05 11:24:33', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (282, 12, '2015-06-05 11:24:56', NULL, 77, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (283, 12, '2015-06-05 11:24:56', NULL, 7, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (284, 12, '2015-06-05 11:25:00', 59, 109, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (285, 12, '2015-06-05 11:25:03', NULL, 65, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (286, 13, '2015-06-05 11:46:08', NULL, 39, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (287, 13, '2015-06-05 11:46:09', NULL, 226, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (288, 13, '2015-06-05 11:46:09', NULL, 26, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (289, 13, '2015-06-05 11:46:09', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (290, 13, '2015-06-05 11:46:41', NULL, 76, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (291, 13, '2015-06-05 11:48:40', NULL, 112, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (292, 13, '2015-06-05 11:48:48', 59, 109, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (293, 13, '2015-06-05 11:48:49', NULL, 59, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (294, 13, '2015-06-05 11:48:51', NULL, 24, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (295, 13, '2015-06-05 11:48:52', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (296, 13, '2015-06-05 11:48:54', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (297, 14, '2015-06-05 14:24:52', NULL, 59, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (298, 14, '2015-06-05 14:24:53', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (299, 14, '2015-06-05 14:24:53', NULL, 5, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (300, 14, '2015-06-05 14:24:53', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (301, 14, '2015-06-05 14:24:57', NULL, 3, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (302, 14, '2015-06-05 14:25:01', 59, 64, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (303, 14, '2015-06-05 14:25:02', NULL, 579, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (304, 14, '2015-06-05 14:25:06', NULL, 389, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (305, 15, '2015-06-08 09:02:07', NULL, 32, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (306, 15, '2015-06-08 09:02:08', NULL, 315, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (307, 15, '2015-06-08 09:02:08', NULL, 29, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (308, 15, '2015-06-08 09:02:09', NULL, 3, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (309, 15, '2015-06-08 09:02:18', NULL, 103, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (310, 15, '2015-06-08 09:02:20', 150, 176, 1, NULL, NULL, '货物 - 查询', 1);
INSERT INTO `lg_tran` VALUES (311, 15, '2015-06-08 09:02:21', NULL, 5, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (312, 15, '2015-06-08 09:02:25', NULL, 48, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (313, 15, '2015-06-08 09:02:25', NULL, 6, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (314, 15, '2015-06-08 09:02:25', NULL, 170, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (315, 15, '2015-06-08 09:02:25', NULL, 293, 1, NULL, NULL, '加载关联数据 sys_SysDept_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (316, 15, '2015-06-08 09:02:59', 59, 106, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (317, 15, '2015-06-08 09:03:05', NULL, 133, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (318, 15, '2015-06-08 09:03:18', NULL, 68, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (319, 15, '2015-06-08 09:03:38', NULL, 24, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (320, 15, '2015-06-08 09:03:54', 63, 243, 1, 601, 3, '角色管理 - 权限控制 编号:3', 1);
INSERT INTO `lg_tran` VALUES (321, 15, '2015-06-08 09:03:56', NULL, 59, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (322, 15, '2015-06-08 09:03:57', NULL, 80, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (323, 15, '2015-06-08 09:04:03', NULL, 12, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (324, 15, '2015-06-08 09:04:05', NULL, 14, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (325, 15, '2015-06-08 09:04:10', NULL, 15, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (326, 15, '2015-06-08 09:04:13', NULL, 69, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (327, 15, '2015-06-08 09:04:19', NULL, 12, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (328, 15, '2015-06-08 09:04:41', 63, 115, 1, 601, 2, '角色管理 - 权限控制 编号:2', 1);
INSERT INTO `lg_tran` VALUES (329, 15, '2015-06-08 09:04:45', NULL, 17, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (330, 15, '2015-06-08 09:04:49', NULL, 15, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (331, 15, '2015-06-08 09:04:52', NULL, 49, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (332, 15, '2015-06-08 09:04:54', NULL, 76, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (333, 15, '2015-06-08 09:04:58', NULL, 61, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (334, 15, '2015-06-08 09:05:03', NULL, 26, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (335, 15, '2015-06-08 09:05:08', NULL, 75, 1, NULL, NULL, '其他加载 prv_PrvRoleLine_list', 1);
INSERT INTO `lg_tran` VALUES (336, 15, '2015-06-08 09:05:08', NULL, 53, 1, NULL, NULL, '加载关联数据 prv_PrvRole_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (337, 15, '2015-06-08 09:07:22', NULL, 116, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (338, 15, '2015-06-08 09:07:30', NULL, 12, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (339, 15, '2015-06-08 09:07:45', 63, 111, 1, 601, 7, '角色管理 - 权限控制 编号:7', 1);
INSERT INTO `lg_tran` VALUES (340, 15, '2015-06-08 09:07:49', NULL, 13, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (341, 15, '2015-06-08 09:07:55', NULL, 11, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (342, 15, '2015-06-08 09:18:45', 66, 85, 1, NULL, NULL, '资源控制组 - 查询', 1);
INSERT INTO `lg_tran` VALUES (343, 15, '2015-06-08 09:18:50', 59, 35, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (344, 15, '2015-06-08 09:19:10', NULL, 98, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (345, 15, '2015-06-08 09:23:58', NULL, 272, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (346, 15, '2015-06-08 09:36:31', NULL, 55, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (347, 15, '2015-06-08 09:36:36', NULL, 995, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (348, 15, '2015-06-08 09:36:38', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (349, 15, '2015-06-08 09:36:42', NULL, 59, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (350, 15, '2015-06-08 09:36:43', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (351, 15, '2015-06-08 09:36:44', NULL, 16, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (352, 15, '2015-06-08 09:36:46', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (353, 15, '2015-06-08 09:36:49', NULL, 65, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (354, 15, '2015-06-08 09:36:50', NULL, 15, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (355, 15, '2015-06-08 09:36:54', NULL, 54, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (356, 15, '2015-06-08 09:36:55', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (357, 15, '2015-06-08 09:36:58', NULL, 92, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (358, 15, '2015-06-08 09:36:59', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (359, 15, '2015-06-08 09:37:01', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (360, 15, '2015-06-08 09:37:03', NULL, 17, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (361, 15, '2015-06-08 09:37:06', NULL, 95, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (362, 15, '2015-06-08 09:37:07', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (363, 15, '2015-06-08 09:37:08', NULL, 27, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (364, 15, '2015-06-08 09:37:10', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (365, 15, '2015-06-08 09:37:13', NULL, 57, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (366, 15, '2015-06-08 09:37:14', NULL, 14, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (367, 15, '2015-06-08 09:37:18', NULL, 106, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (368, 15, '2015-06-08 09:37:22', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (369, 15, '2015-06-08 09:37:25', NULL, 84, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (370, 15, '2015-06-08 09:37:27', NULL, 17, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (371, 15, '2015-06-08 09:37:30', NULL, 60, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (372, 15, '2015-06-08 09:37:31', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (373, 15, '2015-06-08 09:37:34', NULL, 84, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (374, 15, '2015-06-08 09:37:36', NULL, 14, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (375, 15, '2015-06-08 09:37:39', NULL, 62, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (376, 15, '2015-06-08 09:37:40', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (377, 15, '2015-06-08 09:37:41', NULL, 15, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (378, 15, '2015-06-08 09:37:44', NULL, 57, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (379, 15, '2015-06-08 09:37:46', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (380, 15, '2015-06-08 09:37:49', NULL, 59, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (381, 15, '2015-06-08 09:37:51', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (382, 15, '2015-06-08 09:37:54', NULL, 71, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (383, 15, '2015-06-08 09:37:55', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (384, 15, '2015-06-08 09:37:58', NULL, 59, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (385, 15, '2015-06-08 09:38:00', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (386, 15, '2015-06-08 09:38:04', NULL, 90, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (387, 15, '2015-06-08 09:38:06', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (388, 15, '2015-06-08 09:38:07', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (389, 15, '2015-06-08 09:38:09', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (390, 15, '2015-06-08 09:38:12', NULL, 46, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (391, 15, '2015-06-08 09:38:14', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (392, 15, '2015-06-08 09:38:17', NULL, 57, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (393, 15, '2015-06-08 09:38:18', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (394, 15, '2015-06-08 09:38:21', NULL, 92, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (395, 15, '2015-06-08 09:38:23', NULL, 17, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (396, 15, '2015-06-08 09:38:26', NULL, 115, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (397, 15, '2015-06-08 09:38:27', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (398, 15, '2015-06-08 09:38:30', NULL, 51, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (399, 15, '2015-06-08 09:38:32', NULL, 98, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (400, 15, '2015-06-08 09:38:35', NULL, 98, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (401, 15, '2015-06-08 09:38:37', NULL, 16, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (402, 15, '2015-06-08 09:38:40', NULL, 88, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (403, 15, '2015-06-08 09:38:42', NULL, 17, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (404, 16, '2015-06-08 09:55:26', NULL, 48, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (405, 16, '2015-06-08 09:55:27', NULL, 206, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (406, 16, '2015-06-08 09:55:27', NULL, 24, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (407, 16, '2015-06-08 09:55:27', NULL, 4, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (408, 16, '2015-06-08 09:55:31', NULL, 62, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (409, 16, '2015-06-08 09:55:48', 59, 117, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (410, 16, '2015-06-08 09:55:50', NULL, 57, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (411, 16, '2015-06-08 09:55:51', NULL, 19, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (412, 16, '2015-06-08 09:55:53', NULL, 16, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (413, 16, '2015-06-08 09:55:55', NULL, 14, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (414, 16, '2015-06-08 09:55:57', NULL, 18, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (415, 16, '2015-06-08 09:55:58', NULL, 23, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (416, 16, '2015-06-08 09:56:00', NULL, 15, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (417, 16, '2015-06-08 09:56:04', NULL, 131, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (418, 16, '2015-06-08 09:56:05', NULL, 22, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (419, 16, '2015-06-08 09:56:09', NULL, 71, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (420, 16, '2015-06-08 09:56:33', NULL, 65, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (421, 16, '2015-06-08 09:56:39', NULL, 14, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (422, 16, '2015-06-08 09:57:17', NULL, 122, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (423, 16, '2015-06-08 09:57:19', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (424, 16, '2015-06-08 09:57:27', NULL, 56, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (425, 16, '2015-06-08 09:58:23', NULL, 99, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (426, 16, '2015-06-08 09:58:25', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (427, 16, '2015-06-08 09:58:31', NULL, 93, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (428, 16, '2015-06-08 09:58:33', NULL, 15, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (429, 16, '2015-06-08 09:58:57', NULL, 92, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (430, 16, '2015-06-08 09:58:59', NULL, 14, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (431, 16, '2015-06-08 09:59:31', NULL, 96, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (432, 16, '2015-06-08 09:59:32', NULL, 26, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (433, 16, '2015-06-08 09:59:38', NULL, 111, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (434, 16, '2015-06-08 09:59:39', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (435, 16, '2015-06-08 09:59:45', NULL, 94, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (436, 16, '2015-06-08 09:59:47', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (437, 16, '2015-06-08 09:59:55', NULL, 97, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (438, 16, '2015-06-08 09:59:56', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (439, 16, '2015-06-08 10:00:02', NULL, 84, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (440, 16, '2015-06-08 10:00:09', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (441, 16, '2015-06-08 10:00:23', NULL, 118, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (442, 16, '2015-06-08 10:00:25', NULL, 15, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (443, 16, '2015-06-08 10:00:31', NULL, 57, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (444, 16, '2015-06-08 10:00:32', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (445, 16, '2015-06-08 10:00:38', NULL, 90, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (446, 16, '2015-06-08 10:00:39', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (447, 16, '2015-06-08 10:00:45', NULL, 59, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (448, 16, '2015-06-08 10:00:45', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (449, 16, '2015-06-08 10:00:51', NULL, 68, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (450, 16, '2015-06-08 10:00:52', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (451, 16, '2015-06-08 10:00:58', NULL, 90, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (452, 16, '2015-06-08 10:01:04', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (453, 16, '2015-06-08 10:01:08', NULL, 64, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (454, 16, '2015-06-08 10:01:12', NULL, 100, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (455, 16, '2015-06-08 10:01:14', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (456, 16, '2015-06-08 10:01:19', NULL, 90, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (457, 16, '2015-06-08 10:01:21', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (458, 16, '2015-06-08 10:01:27', NULL, 88, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (459, 16, '2015-06-08 10:01:29', NULL, 14, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (460, 16, '2015-06-08 10:01:36', NULL, 90, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (461, 16, '2015-06-08 10:01:37', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (462, 16, '2015-06-08 10:02:01', NULL, 55, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (463, 16, '2015-06-08 10:02:02', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (464, 16, '2015-06-08 10:02:08', NULL, 85, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (465, 16, '2015-06-08 10:02:10', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (466, 16, '2015-06-08 10:02:20', NULL, 126, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (467, 16, '2015-06-08 10:02:21', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (468, 16, '2015-06-08 10:02:26', NULL, 89, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (469, 16, '2015-06-08 10:02:27', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (470, 16, '2015-06-08 10:02:33', NULL, 91, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (471, 16, '2015-06-08 10:02:35', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (472, 16, '2015-06-08 10:02:40', NULL, 93, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (473, 16, '2015-06-08 10:02:41', NULL, 22, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (474, 16, '2015-06-08 10:02:54', NULL, 104, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (475, 16, '2015-06-08 10:03:29', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (476, 16, '2015-06-08 10:04:16', NULL, 86, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (477, 16, '2015-06-08 10:09:17', NULL, 150, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (478, 16, '2015-06-08 10:09:26', NULL, 26, 1, NULL, NULL, '加载关联数据 prv_PrvRole_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (479, 16, '2015-06-08 10:09:26', NULL, 48, 1, NULL, NULL, '其他加载 prv_PrvRoleLine_list', 1);
INSERT INTO `lg_tran` VALUES (480, 16, '2015-06-08 10:09:28', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (481, 16, '2015-06-08 10:09:30', NULL, 7, 1, NULL, NULL, '其他加载 prv_PrvRoleLine_list', 1);
INSERT INTO `lg_tran` VALUES (482, 16, '2015-06-08 10:09:30', NULL, 8, 1, NULL, NULL, '加载关联数据 prv_PrvRole_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (483, 16, '2015-06-08 10:09:32', NULL, 19, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (484, 16, '2015-06-08 10:09:41', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (485, 16, '2015-06-08 10:10:41', NULL, 89, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (486, 16, '2015-06-08 10:11:28', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (487, 16, '2015-06-08 10:11:56', NULL, 54, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (488, 16, '2015-06-08 10:12:49', NULL, 85, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (489, 16, '2015-06-08 10:18:11', NULL, 26, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (490, 16, '2015-06-08 10:18:34', NULL, 103, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (491, 16, '2015-06-08 10:19:07', NULL, 20, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (492, 16, '2015-06-08 10:19:08', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (493, 16, '2015-06-08 10:19:11', NULL, 26, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (494, 16, '2015-06-08 10:22:46', NULL, 100, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (495, 16, '2015-06-08 10:24:33', NULL, 17, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (496, 16, '2015-06-08 10:24:40', NULL, 95, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (497, 16, '2015-06-08 10:24:54', NULL, 28, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (498, 16, '2015-06-08 10:25:15', NULL, 108, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (499, 16, '2015-06-08 10:25:58', NULL, 61, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (500, 16, '2015-06-08 10:26:09', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (501, 16, '2015-06-08 10:26:19', NULL, 152, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (502, 16, '2015-06-08 10:26:21', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (503, 16, '2015-06-08 10:26:25', NULL, 122, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (504, 16, '2015-06-08 10:26:26', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (505, 16, '2015-06-08 10:26:31', NULL, 67, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (506, 16, '2015-06-08 10:26:35', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (507, 16, '2015-06-08 10:26:40', NULL, 102, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (508, 16, '2015-06-08 10:31:09', NULL, 16, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (509, 16, '2015-06-08 10:31:18', NULL, 92, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (510, 16, '2015-06-08 10:31:20', NULL, 9, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (511, 16, '2015-06-08 10:31:23', NULL, 80, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (512, 16, '2015-06-08 10:31:31', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (513, 16, '2015-06-08 10:31:37', NULL, 134, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (514, 16, '2015-06-08 10:31:39', NULL, 9, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (515, 16, '2015-06-08 10:31:42', NULL, 148, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (516, 16, '2015-06-08 10:35:18', NULL, 18, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (517, 16, '2015-06-08 10:35:22', NULL, 83, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (518, 16, '2015-06-08 10:35:24', NULL, 14, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (519, 16, '2015-06-08 10:35:28', NULL, 106, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (520, 16, '2015-06-08 10:35:42', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (521, 16, '2015-06-08 10:35:47', NULL, 54, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (522, 16, '2015-06-08 10:35:47', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (523, 16, '2015-06-08 10:35:55', NULL, 52, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (524, 16, '2015-06-08 10:35:56', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (525, 16, '2015-06-08 10:35:59', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (526, 16, '2015-06-08 10:36:02', NULL, 80, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (527, 16, '2015-06-08 10:36:27', NULL, 15, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (528, 16, '2015-06-08 10:36:34', NULL, 76, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (529, 16, '2015-06-08 10:36:36', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (530, 16, '2015-06-08 10:36:41', NULL, 74, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (531, 16, '2015-06-08 10:36:53', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (532, 16, '2015-06-08 10:37:01', NULL, 80, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (533, 16, '2015-06-08 10:37:13', NULL, 9, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (534, 16, '2015-06-08 10:37:18', NULL, 87, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (535, 16, '2015-06-08 10:37:18', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (536, 16, '2015-06-08 10:37:22', NULL, 54, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (537, 16, '2015-06-08 10:37:23', NULL, 13, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (538, 16, '2015-06-08 10:37:26', NULL, 90, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (539, 16, '2015-06-08 10:38:13', NULL, 12, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (540, 16, '2015-06-08 10:38:19', NULL, 93, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (541, 16, '2015-06-08 10:38:22', NULL, 9, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (542, 16, '2015-06-08 10:38:25', NULL, 54, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (543, 16, '2015-06-08 10:38:27', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (544, 16, '2015-06-08 10:38:32', NULL, 88, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (545, 16, '2015-06-08 10:38:54', NULL, 14, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (546, 16, '2015-06-08 10:38:58', NULL, 111, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (547, 16, '2015-06-08 10:39:01', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (548, 16, '2015-06-08 10:39:05', NULL, 76, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (549, 16, '2015-06-08 10:39:09', NULL, 19, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (550, 16, '2015-06-08 10:39:13', NULL, 89, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (551, 16, '2015-06-08 10:40:03', NULL, 15, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (552, 16, '2015-06-08 10:40:12', NULL, 101, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (553, 16, '2015-06-08 10:40:19', NULL, 9, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (554, 16, '2015-06-08 10:40:20', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (555, 16, '2015-06-08 10:40:25', NULL, 105, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (556, 16, '2015-06-08 10:40:25', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (557, 16, '2015-06-08 10:40:30', NULL, 46, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (558, 16, '2015-06-08 10:40:40', NULL, 26, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (559, 16, '2015-06-08 10:40:43', NULL, 82, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (560, 16, '2015-06-08 10:40:50', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (561, 16, '2015-06-08 10:40:55', NULL, 84, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (562, 16, '2015-06-08 10:40:57', NULL, 11, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (563, 16, '2015-06-08 10:41:00', NULL, 98, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (564, 16, '2015-06-08 10:41:40', NULL, 9, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (565, 16, '2015-06-08 10:41:42', NULL, 10, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (566, 16, '2015-06-08 10:41:51', NULL, 98, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (567, 16, '2015-06-08 10:41:52', NULL, 9, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (568, 16, '2015-06-08 10:41:59', NULL, 83, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (569, 16, '2015-06-08 10:42:06', NULL, 9, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (570, 16, '2015-06-08 10:42:11', NULL, 66, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (571, 16, '2015-06-08 10:42:13', NULL, 9, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (572, 16, '2015-06-08 10:42:22', NULL, 96, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_updCtrl', 1);
INSERT INTO `lg_tran` VALUES (573, 16, '2015-06-08 10:42:31', NULL, 18, 1, NULL, NULL, '其他加载 prv_PrvRoleLine_list', 1);
INSERT INTO `lg_tran` VALUES (574, 16, '2015-06-08 10:42:31', NULL, 20, 1, NULL, NULL, '加载关联数据 prv_PrvRole_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (575, 17, '2015-06-10 13:34:45', NULL, 30, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (576, 17, '2015-06-10 13:34:47', NULL, 190, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (577, 17, '2015-06-10 13:34:47', NULL, 38, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (578, 17, '2015-06-10 13:34:48', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (579, 17, '2015-06-10 13:34:53', NULL, 55, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (580, 17, '2015-06-10 13:34:56', 717, 35, 1, NULL, NULL, '客户信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (581, 17, '2015-06-10 13:35:03', 59, 97, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (582, 17, '2015-06-10 13:35:12', NULL, 88, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (583, 17, '2015-06-10 13:35:16', 59, 40, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (584, 17, '2015-06-10 13:35:18', NULL, 42, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (585, 17, '2015-06-10 13:36:04', NULL, 5, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (586, 17, '2015-06-10 13:36:07', 678, 52, 1, NULL, NULL, '折扣权限 - 查询', 1);
INSERT INTO `lg_tran` VALUES (587, 17, '2015-06-10 13:36:09', NULL, 26, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (588, 18, '2015-06-10 13:40:39', NULL, 34, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (589, 18, '2015-06-10 13:40:41', NULL, 229, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (590, 18, '2015-06-10 13:40:41', NULL, 35, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginUser', 1);
INSERT INTO `lg_tran` VALUES (591, 18, '2015-06-10 13:40:41', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (592, 18, '2015-06-10 13:40:51', NULL, 42, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (593, 18, '2015-06-10 13:40:55', 59, 107, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (594, 18, '2015-06-10 13:41:19', NULL, 62, 1, NULL, NULL, '其他加载 prv_PrvRoleTran_loadByRole', 1);
INSERT INTO `lg_tran` VALUES (595, 18, '2015-06-10 13:41:22', 59, 41, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (596, 18, '2015-06-10 13:41:24', NULL, 40, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (597, 18, '2015-06-10 13:41:30', NULL, 24, 1, NULL, NULL, '其他加载 sys_SysMenu_loadAuthorityByRole', 1);
INSERT INTO `lg_tran` VALUES (598, 19, '2015-09-16 11:16:00', NULL, 1, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (599, 19, '2015-09-16 11:16:01', NULL, 13, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (600, 19, '2015-09-16 11:16:01', NULL, 28, 0, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (601, 19, '2015-09-16 11:16:01', NULL, 5, 0, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (602, 19, '2015-09-16 11:16:31', NULL, 3, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (603, 19, '2015-09-16 11:16:31', NULL, 3, 0, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (604, 19, '2015-09-16 11:16:31', NULL, 2, 0, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (605, 19, '2015-09-16 11:20:15', NULL, 7, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (606, 19, '2015-09-16 11:20:15', NULL, 10, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (607, 19, '2015-09-16 11:20:15', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (608, 19, '2015-09-16 11:20:15', NULL, 12, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (609, 19, '2015-09-16 11:20:26', NULL, 19, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (610, 19, '2015-09-16 11:20:28', 1, 14, 1, NULL, NULL, '机构信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (611, 19, '2015-09-16 11:20:35', 7, 10, 1, NULL, NULL, '部门信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (612, 19, '2015-09-16 11:20:38', 13, 11, 1, NULL, NULL, '职员信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (613, 19, '2015-09-16 11:20:45', NULL, 6, 1, NULL, NULL, '其他加载 sys_SysUser_loginout', 1);
INSERT INTO `lg_tran` VALUES (614, 20, '2015-09-16 11:21:47', NULL, 1, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (615, 20, '2015-09-16 11:21:47', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (616, 20, '2015-09-16 11:21:47', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (617, 20, '2015-09-16 11:21:47', NULL, 0, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (618, 20, '2015-09-16 11:21:48', NULL, 1, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (619, 20, '2015-09-16 11:21:51', NULL, 7, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (620, 20, '2015-09-16 11:21:53', 57, 14, 1, NULL, NULL, '登录日志 - 查询', 1);
INSERT INTO `lg_tran` VALUES (621, 20, '2015-09-16 11:21:59', 58, 21, 1, NULL, NULL, '交易日志 - 查询', 1);
INSERT INTO `lg_tran` VALUES (622, 20, '2015-09-16 11:23:42', NULL, 4, 1, NULL, NULL, '其他加载 sys_SysUser_loginout', 1);
INSERT INTO `lg_tran` VALUES (623, 21, '2015-09-16 11:23:47', NULL, 1, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (624, 21, '2015-09-16 11:23:48', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (625, 21, '2015-09-16 11:23:48', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (626, 21, '2015-09-16 11:23:48', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (627, 21, '2015-09-16 11:23:48', NULL, 1, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (628, 21, '2015-09-16 11:23:55', NULL, 3, 1, NULL, NULL, '加载关联数据 sys_SysUser_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (629, 21, '2015-09-16 11:23:56', 57, 4, 1, NULL, NULL, '登录日志 - 查询', 1);
INSERT INTO `lg_tran` VALUES (630, 22, '2015-09-16 12:29:24', NULL, 3, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (631, 22, '2015-09-16 12:29:25', NULL, 13, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (632, 22, '2015-09-16 12:29:26', NULL, 24, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (633, 22, '2015-09-16 12:29:26', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (634, 22, '2015-09-16 12:29:26', NULL, 12, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (635, 23, '2015-09-17 14:31:12', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (636, 23, '2015-09-17 14:31:13', NULL, 14, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (637, 23, '2015-09-17 14:31:13', NULL, 29, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (638, 23, '2015-09-17 14:31:13', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (639, 23, '2015-09-17 14:31:13', NULL, 13, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (640, 23, '2015-09-17 14:31:16', NULL, 13, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (641, 24, '2015-09-17 14:45:41', NULL, 4, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (642, 24, '2015-09-17 14:45:41', NULL, 14, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (643, 24, '2015-09-17 14:45:41', NULL, 24, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (644, 24, '2015-09-17 14:45:41', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (645, 24, '2015-09-17 14:45:41', NULL, 13, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (646, 24, '2015-09-17 14:45:44', 1, 18, 1, NULL, NULL, '机构信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (647, 24, '2015-09-17 14:45:48', 715, 13, 1, NULL, NULL, '供应商信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (648, 24, '2015-09-17 14:45:49', NULL, 9, 1, NULL, NULL, '加载关联数据 sys_SysOrg_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (649, 24, '2015-09-17 14:45:50', 13, 13, 1, NULL, NULL, '职员信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (650, 24, '2015-09-17 14:45:52', NULL, 6, 1, NULL, NULL, '其他加载 sys_SysUser_loginout', 1);
INSERT INTO `lg_tran` VALUES (651, 25, '2015-09-17 15:04:50', NULL, 3, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (652, 25, '2015-09-17 15:04:50', NULL, 13, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (653, 25, '2015-09-17 15:04:50', NULL, 24, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (654, 25, '2015-09-17 15:04:50', NULL, 0, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (655, 25, '2015-09-17 15:04:50', NULL, 15, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (656, 26, '2015-09-17 15:22:47', NULL, 3, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (657, 26, '2015-09-17 15:22:48', NULL, 11, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (658, 26, '2015-09-17 15:22:48', NULL, 22, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (659, 26, '2015-09-17 15:22:48', NULL, 2, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (660, 26, '2015-09-17 15:22:48', NULL, 13, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (661, 26, '2015-09-17 15:22:54', 1, 17, 1, NULL, NULL, '机构信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (662, 26, '2015-09-17 15:22:56', 22, 11, 1, NULL, NULL, '核算单元 - 查询', 1);
INSERT INTO `lg_tran` VALUES (663, 27, '2015-09-17 16:58:20', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (664, 27, '2015-09-17 16:58:21', NULL, 21, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (665, 27, '2015-09-17 16:58:22', NULL, 31, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (666, 27, '2015-09-17 16:58:22', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (667, 27, '2015-09-17 16:58:22', NULL, 12, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (668, 27, '2015-09-17 16:58:55', 1, 19, 1, NULL, NULL, '机构信息 - 查询', 1);
INSERT INTO `lg_tran` VALUES (669, 27, '2015-09-17 16:58:58', NULL, 7, 1, NULL, NULL, '其他加载 sys_SysUser_loginout', 1);
INSERT INTO `lg_tran` VALUES (670, 28, '2018-06-14 18:22:25', NULL, 4, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (671, 28, '2018-06-14 18:22:26', NULL, 27, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (672, 28, '2018-06-14 18:22:26', NULL, 36, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (673, 28, '2018-06-14 18:22:26', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (674, 28, '2018-06-14 18:22:26', NULL, 27, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (675, 28, '2018-06-14 18:22:28', NULL, 8, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (676, 28, '2018-06-14 18:22:35', 822, 40, 1, 8202, 1, '测试类型 - 新增 编号:1', 1);
INSERT INTO `lg_tran` VALUES (677, 28, '2018-06-14 18:22:40', 822, 12, 1, 8202, 2, '测试类型 - 新增 编号:2', 1);
INSERT INTO `lg_tran` VALUES (678, 28, '2018-06-14 18:22:43', 822, 9, 1, 8202, 3, '测试类型 - 新增 编号:3', 1);
INSERT INTO `lg_tran` VALUES (679, 28, '2018-06-14 18:22:46', 822, 13, 1, 8202, 4, '测试类型 - 新增 编号:4', 1);
INSERT INTO `lg_tran` VALUES (680, 28, '2018-06-14 18:22:49', 822, 11, 1, 8202, 5, '测试类型 - 新增 编号:5', 1);
INSERT INTO `lg_tran` VALUES (681, 28, '2018-06-14 18:22:51', NULL, 22, 1, NULL, NULL, '加载关联数据 exp_ExpKind_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (682, 28, '2018-06-14 18:23:00', 814, 27, 1, 8201, 1, '测试菜单 - 新增 编号:1', 1);
INSERT INTO `lg_tran` VALUES (683, 28, '2018-06-14 18:23:02', NULL, 4, 1, NULL, NULL, '加载关联数据 exp_ExpKind_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (684, 28, '2018-06-14 18:23:17', 814, 5, 1, 8201, 2, '测试菜单 - 新增 编号:2', 1);
INSERT INTO `lg_tran` VALUES (685, 28, '2018-06-14 18:23:39', 826, 55, 1, 8203, 1, '复合界面 - 新增 编号:1', 1);
INSERT INTO `lg_tran` VALUES (686, 28, '2018-06-14 18:23:39', NULL, 26, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (687, 28, '2018-06-14 18:24:26', 826, 31, 1, 8203, 2, '复合界面 - 新增 编号:2', 1);
INSERT INTO `lg_tran` VALUES (688, 28, '2018-06-14 18:24:26', NULL, 10, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (689, 28, '2018-06-14 18:24:29', NULL, 14, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (690, 28, '2018-06-14 18:24:32', NULL, 13, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (691, 28, '2018-06-14 18:24:38', NULL, 11, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (692, 28, '2018-06-14 18:31:07', NULL, 69, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (693, 28, '2018-06-14 18:32:35', 825, 29, 1, NULL, NULL, '复合界面 - 查询', 1);
INSERT INTO `lg_tran` VALUES (694, 28, '2018-06-14 18:36:05', 825, 7, 1, NULL, NULL, '复合界面 - 查询', 1);
INSERT INTO `lg_tran` VALUES (695, 28, '2018-06-14 18:36:08', 825, 7, 1, NULL, NULL, '复合界面 - 查询', 1);
INSERT INTO `lg_tran` VALUES (696, 28, '2018-06-14 18:38:13', 813, 33, 1, NULL, NULL, '测试菜单 - 查询', 1);
INSERT INTO `lg_tran` VALUES (697, 29, '2018-06-14 18:39:13', NULL, 4, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (698, 29, '2018-06-14 18:39:14', NULL, 3, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (699, 29, '2018-06-14 18:39:14', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (700, 29, '2018-06-14 18:39:14', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (701, 29, '2018-06-14 18:39:14', NULL, 5, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (702, 29, '2018-06-14 18:39:15', NULL, 21, 1, NULL, NULL, '其他加载 sys_SysUser_loginout', 1);
INSERT INTO `lg_tran` VALUES (703, 30, '2018-06-14 18:48:42', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (704, 30, '2018-06-14 18:48:42', NULL, 17, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (705, 30, '2018-06-14 18:48:42', NULL, 38, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (706, 30, '2018-06-14 18:48:42', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (707, 30, '2018-06-14 18:48:42', NULL, 21, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (708, 30, '2018-06-14 18:48:47', 825, 37, 1, NULL, NULL, '复合界面 - 查询', 1);
INSERT INTO `lg_tran` VALUES (709, 30, '2018-06-14 18:49:03', NULL, 470, 1, NULL, NULL, '其他加载 exp_ExpBase_showWeb', 1);
INSERT INTO `lg_tran` VALUES (710, 30, '2018-06-14 18:50:05', NULL, 29, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (711, 31, '2018-06-14 18:50:11', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (712, 31, '2018-06-14 18:50:11', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (713, 31, '2018-06-14 18:50:11', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (714, 31, '2018-06-14 18:50:11', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (715, 31, '2018-06-14 18:50:11', NULL, 1, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (716, 31, '2018-06-14 18:50:12', NULL, 27, 1, NULL, NULL, '其他加载 sys_SysUser_loginout', 1);
INSERT INTO `lg_tran` VALUES (717, 32, '2018-06-14 19:46:40', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (718, 32, '2018-06-14 19:46:41', NULL, 20, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (719, 32, '2018-06-14 19:46:41', NULL, 30, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (720, 32, '2018-06-14 19:46:41', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (721, 32, '2018-06-14 19:46:41', NULL, 27, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (722, 32, '2018-06-14 19:46:49', 59, 66, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (723, 32, '2018-06-14 19:46:53', 59, 14, 1, NULL, NULL, '角色管理 - 查询', 1);
INSERT INTO `lg_tran` VALUES (724, 32, '2018-06-14 19:46:53', NULL, 10, 1, NULL, NULL, '其他加载 sys_SysMenu_getMenuName', 1);
INSERT INTO `lg_tran` VALUES (725, 32, '2018-06-14 19:47:01', 66, 39, 1, NULL, NULL, '资源控制组 - 查询', 1);
INSERT INTO `lg_tran` VALUES (726, 32, '2018-06-14 19:47:23', NULL, 5, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (727, 33, '2018-06-14 20:14:28', NULL, 3, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (728, 33, '2018-06-14 20:14:28', NULL, 16, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (729, 33, '2018-06-14 20:14:28', NULL, 39, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (730, 33, '2018-06-14 20:14:28', NULL, 0, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (731, 33, '2018-06-14 20:14:28', NULL, 26, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (732, 33, '2018-06-14 20:14:30', NULL, 4, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (733, 33, '2018-06-14 20:14:39', 825, 37, 1, NULL, NULL, '复合界面 - 查询', 1);
INSERT INTO `lg_tran` VALUES (734, 33, '2018-06-14 20:14:55', NULL, 3, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (735, 33, '2018-06-14 20:14:55', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (736, 33, '2018-06-14 20:14:55', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (737, 33, '2018-06-14 20:14:55', NULL, 2, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (738, 33, '2018-06-14 20:14:57', NULL, 3, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (739, 33, '2018-06-14 20:15:03', 825, 6, 1, NULL, NULL, '复合界面 - 查询', 1);
INSERT INTO `lg_tran` VALUES (740, 33, '2018-06-14 20:15:05', NULL, 41, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (741, 33, '2018-06-14 20:15:07', NULL, 5, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (742, 33, '2018-06-14 20:15:08', NULL, 17, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (743, 33, '2018-06-14 20:15:12', NULL, 21, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (744, 33, '2018-06-14 20:15:18', NULL, 18, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (745, 33, '2018-06-14 20:15:28', NULL, 13, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (746, 33, '2018-06-14 20:15:30', NULL, 11, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (747, 33, '2018-06-14 20:15:37', NULL, 10, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (748, 33, '2018-06-14 20:15:42', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (749, 33, '2018-06-14 20:15:42', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (750, 33, '2018-06-14 20:15:42', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (751, 33, '2018-06-14 20:15:42', NULL, 2, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (752, 33, '2018-06-14 20:15:43', NULL, 1, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (753, 33, '2018-06-14 20:15:50', 825, 5, 1, NULL, NULL, '复合界面 - 查询', 1);
INSERT INTO `lg_tran` VALUES (754, 33, '2018-06-14 20:15:54', NULL, 14, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (755, 33, '2018-06-14 20:16:29', NULL, 4, 1, NULL, NULL, '其他加载 exp_ExpCompLine_list', 1);
INSERT INTO `lg_tran` VALUES (756, 34, '2018-06-15 10:50:26', NULL, 4, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (757, 34, '2018-06-15 10:50:27', NULL, 15, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (758, 34, '2018-06-15 10:50:27', NULL, 36, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (759, 34, '2018-06-15 10:50:27', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (760, 34, '2018-06-15 10:50:27', NULL, 16, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (761, 34, '2018-06-15 10:50:29', NULL, 11, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (762, 35, '2018-06-15 10:54:57', NULL, 2, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (763, 35, '2018-06-15 10:54:57', NULL, 17, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (764, 35, '2018-06-15 10:54:57', NULL, 33, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (765, 35, '2018-06-15 10:54:57', NULL, 0, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (766, 35, '2018-06-15 10:54:57', NULL, 15, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (767, 35, '2018-06-15 10:54:58', NULL, 2, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (768, 35, '2018-06-15 10:55:00', NULL, 29, 1, NULL, NULL, '加载关联数据 exp_ExpKind_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (769, 35, '2018-06-15 10:55:26', 814, 32, 1, 8201, 3, '测试菜单 - 新增 编号:3', 1);
INSERT INTO `lg_tran` VALUES (770, 35, '2018-06-15 10:55:28', 813, 31, 0, NULL, NULL, '测试菜单 - 查询', 1);
INSERT INTO `lg_tran` VALUES (771, 35, '2018-06-15 10:55:31', 813, 3, 0, NULL, NULL, '测试菜单 - 查询', 1);
INSERT INTO `lg_tran` VALUES (772, 35, '2018-06-15 10:55:40', NULL, 14, 1, NULL, NULL, '加载关联数据 exp_ExpKind_getComboTrigger', 1);
INSERT INTO `lg_tran` VALUES (773, 35, '2018-06-15 10:55:55', 814, 21, 1, 8201, 4, '测试菜单 - 新增 编号:4', 1);
INSERT INTO `lg_tran` VALUES (774, 36, '2018-06-25 12:17:55', NULL, 5, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (775, 36, '2018-06-25 12:17:56', NULL, 23, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (776, 36, '2018-06-25 12:17:56', NULL, 37, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (777, 36, '2018-06-25 12:17:56', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (778, 36, '2018-06-25 12:17:56', NULL, 25, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (779, 36, '2018-06-25 12:17:58', NULL, 4, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (780, 36, '2018-06-25 12:18:11', 821, 33, 1, NULL, NULL, '测试类型 - 查询', 1);
INSERT INTO `lg_tran` VALUES (781, 37, '2018-07-10 10:22:37', NULL, 3, 1, NULL, NULL, '其他加载 sys_SysUser_login', 1);
INSERT INTO `lg_tran` VALUES (782, 37, '2018-07-10 10:22:37', NULL, 16, 1, NULL, NULL, '其他加载 sys_SysUser_getLoginMsg', 1);
INSERT INTO `lg_tran` VALUES (783, 37, '2018-07-10 10:22:37', NULL, 25, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (784, 37, '2018-07-10 10:22:37', NULL, 1, 1, NULL, NULL, '加载功能 sys_SysMenu_initAct', 1);
INSERT INTO `lg_tran` VALUES (785, 37, '2018-07-10 10:22:38', NULL, 14, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (786, 37, '2018-07-10 10:22:40', NULL, 2, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (787, 37, '2018-07-10 10:22:40', NULL, 1, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);
INSERT INTO `lg_tran` VALUES (788, 37, '2018-07-10 10:22:40', NULL, 2, 1, NULL, NULL, '加载菜单 sys_SysMenu_loadMenu', 1);

-- ----------------------------
-- Table structure for odr_odr
-- ----------------------------
DROP TABLE IF EXISTS `odr_odr`;
CREATE TABLE `odr_odr`  (
  `pkey` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `main` int(11) NULL DEFAULT NULL,
  `odrtime` datetime(0) NOT NULL,
  `paytime` datetime(0) NULL DEFAULT NULL,
  `delivertime` datetime(0) NULL DEFAULT NULL,
  `odrtype` tinyint(4) NOT NULL,
  `freightprice` decimal(14, 4) NOT NULL,
  `countprice` decimal(14, 4) NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `postalcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `odrcancel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for odr_odr_line
-- ----------------------------
DROP TABLE IF EXISTS `odr_odr_line`;
CREATE TABLE `odr_odr_line`  (
  `pkey` bigint(20) NOT NULL AUTO_INCREMENT,
  `productsize` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `countprice` decimal(14, 2) NULL DEFAULT NULL,
  `odrmanage` bigint(20) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pdt_appraise
-- ----------------------------
DROP TABLE IF EXISTS `pdt_appraise`;
CREATE TABLE `pdt_appraise`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `goods_pkey` int(11) NOT NULL,
  `users_pkey` int(11) NOT NULL,
  `appraise_content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image6` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `goods_satisfaction` tinyint(4) NOT NULL,
  `supplier_satisfaction` tinyint(4) NOT NULL,
  `appraise_time` datetime(0) NOT NULL,
  `appraise_ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pdt_ask
-- ----------------------------
DROP TABLE IF EXISTS `pdt_ask`;
CREATE TABLE `pdt_ask`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `photo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `county` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `supplier` int(11) NOT NULL,
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NOT NULL,
  `msg` tinyint(4) NOT NULL,
  `content` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pdt_ask_rob
-- ----------------------------
DROP TABLE IF EXISTS `pdt_ask_rob`;
CREATE TABLE `pdt_ask_rob`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `material` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `offer` decimal(14, 4) NOT NULL,
  `robcount` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ask` int(11) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pdt_attribute
-- ----------------------------
DROP TABLE IF EXISTS `pdt_attribute`;
CREATE TABLE `pdt_attribute`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdt_attribute
-- ----------------------------
INSERT INTO `pdt_attribute` VALUES (1, '风格类型', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (2, '适合季节', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (3, '内里材料', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (4, '鞋底材料', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (5, '鞋面材料', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (6, '鞋垫材料', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (7, '高跟鞋', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (8, '鞋头', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (9, '闭合方式', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (10, '制作工艺', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (11, '根底', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (12, '图案', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (13, '流行元素', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (14, '功能', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (15, '凉鞋-后帮', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (16, '凉鞋-侧帮', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (17, '开口深度', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (18, '筒高', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute` VALUES (19, '生产周期', 1, 1, '2018-07-10 10:21:35', 1);

-- ----------------------------
-- Table structure for pdt_attribute_category
-- ----------------------------
DROP TABLE IF EXISTS `pdt_attribute_category`;
CREATE TABLE `pdt_attribute_category`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdt_attribute_category
-- ----------------------------
INSERT INTO `pdt_attribute_category` VALUES (1, '通用鞋子', 1, '2018-07-10 10:21:35', 1);

-- ----------------------------
-- Table structure for pdt_attribute_line
-- ----------------------------
DROP TABLE IF EXISTS `pdt_attribute_line`;
CREATE TABLE `pdt_attribute_line`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `main` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 176 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdt_attribute_line
-- ----------------------------
INSERT INTO `pdt_attribute_line` VALUES (1, '青春潮流', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (2, '商务', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (3, '休闲', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (4, '运动', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (5, '民族风', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (6, '韩版', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (7, '英伦', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (8, '欧美', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (9, '复古', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (10, '春秋', 2, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (11, '夏季', 2, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (12, '冬季', 2, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (13, '四季', 2, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (14, '秋冬季', 2, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (15, '秋季', 2, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (16, '半粒面', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (17, '檫色皮', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (18, '樹膏皮', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (19, '磨砂皮', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (20, '壓花皮', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (21, '漆皮', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (22, '粒面皮', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (23, '搖粒絨', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (24, 'PU', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (25, '毛里', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (26, '仿羊羔毛', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (27, '纺织品', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (28, 'MESH', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (29, 'Fabric', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (30, 'Fur', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (31, '布', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (32, '网布', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (33, '帆布', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (34, '短毛绒', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (35, '绒布', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (36, '绒毛', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (37, '佳積布', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (38, '頭層豬皮', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (39, '金絲絨', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (40, '二層豬皮', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (41, '超纖布', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (42, '天鵝絨', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (43, '超纖', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (44, '頭層豬皮', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (45, '漆皮', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (46, '鹿皮', 3, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (47, 'EVA', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (48, 'EVA發泡膠', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (49, 'MD', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (50, 'PVC', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (51, 'TPR(牛筋）', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (52, 'TPU', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (53, '橡膠發泡', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (54, '煙膠', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (55, 'PU', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (56, '橡胶', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (57, '组合底', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (58, '聚氨酯', 4, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (59, 'PU', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (60, '二層牛皮（除牛反絨）', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (61, '二層豬皮', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (62, '亮片布', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (63, '太空革', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (64, '頭層牛皮（除牛反絨）', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (65, '頭層豬皮', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (66, '孔雀皮', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (67, '絨', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (68, '牛津布', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (69, '絨布', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (70, '毛', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (71, '紡織', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (72, '超纖', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (73, '帆布', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (74, '網', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (75, '韓國絨', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (76, '飛織', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (77, 'PE', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (78, '反絨', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (79, '豬八革', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (80, '瘋馬皮', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (81, '銀絲布', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (82, '超纖布', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (83, '牛絨', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (84, '超織', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (85, '牛仔布', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (86, '磨砂皮', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (87, '漆皮', 5, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (88, 'PU', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (89, '二層豬皮', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (90, '人造短毛絨', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (91, '人造長毛絨', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (92, '頭層牛皮', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (93, '頭層豬皮', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (94, '布', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (95, '純羊毛', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (96, '織布', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (97, '佳績布', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (98, '仿羊羔毛', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (99, '天鵝絨', 6, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (100, '低跟（1--3cm）', 7, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (101, '平跟（小於等於1cm）', 7, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (102, '中跟（3--5cm）', 7, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (103, '高跟（5cm及以上）', 7, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (104, '圓頭', 8, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (105, '方頭', 8, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (106, '尖頭', 8, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (107, '扁頭', 8, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (108, '魚嘴', 8, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (109, '拉鏈', 9, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (110, '繫帶', 9, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (111, '魔術貼', 9, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (112, '套腳', 9, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (113, '搭扣', 9, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (114, '鬆緊帶', 9, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (115, '固特異', 10, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (116, '縫製鞋', 10, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (117, '膠粘鞋', 10, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (118, '硫化鞋', 10, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (119, '注壓鞋', 10, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (120, '冷粘', 10, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (121, '平底', 11, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (122, '內增高', 11, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (123, '厚底', 11, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (124, '坡跟', 11, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (125, '高跟', 11, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (126, '摇摇底', 11, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (127, '純色', 12, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (128, '格子', 12, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (129, '拼色', 12, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (130, '手繪', 12, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (131, '奢華馬毛', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (132, '皮草裝飾', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (133, '素面', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (134, '編制', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (135, '馬銜扣', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (136, '圖騰', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (137, '鉚釘', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (138, '抽條', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (139, '飾釦', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (140, '流蘇', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (141, '鬆緊拼接', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (142, '透明跟', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (143, '電秀', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (144, '金屬跟', 13, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (145, '矯正', 14, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (146, '透氣', 14, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (147, '輕質', 14, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (148, '防水', 14, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (149, '保暖', 14, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (150, '耐磨', 14, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (151, '減震', 14, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (152, '增高', 14, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (153, '后空', 15, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (154, '前後絆帶', 15, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (155, '后絆帶', 15, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (156, '腳腕絆帶', 15, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (157, '包跟', 15, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (158, '中空', 16, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (159, '側空', 16, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (160, '滿幫', 16, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (161, '淺口', 17, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (162, '中口', 17, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (163, '深口', 17, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (164, '低筒', 18, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (165, '中筒', 18, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (166, '高筒', 18, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (167, '70天', 19, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (168, '30天', 19, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (169, '约50天', 19, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (170, '两个月', 19, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (171, '一个月', 19, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (172, '45天', 19, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (173, '7天', 19, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (174, '15天', 19, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_attribute_line` VALUES (175, '25天', 19, 1, '2018-07-10 10:21:35', 1);

-- ----------------------------
-- Table structure for pdt_color
-- ----------------------------
DROP TABLE IF EXISTS `pdt_color`;
CREATE TABLE `pdt_color`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdt_color
-- ----------------------------
INSERT INTO `pdt_color` VALUES (1, '红色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (2, '蓝色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (3, '緑色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (4, '黃色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (5, '橙色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (6, '紫色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (7, '黑色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (8, '白色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (9, '棕色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (10, '酒紅色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (11, '桃紅色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (12, '深緑色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (13, '深紫色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (14, '鮮紅色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (15, '灰色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (16, '杏色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (17, '深藍色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (18, '米色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (19, '驼色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (20, '金色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (21, '银色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (22, '军绿色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (23, '古铜色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (24, '深粉', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (25, '深灰', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (26, '粉色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (27, '深棕', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (28, '淺棕', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (29, '深灰', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (30, '卡其色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (31, '黑粗紋', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (32, '黑細紋', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (33, '紅棕', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (34, '黃褐色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (35, '槍色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (36, '淺藍', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (37, '咖啡色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (38, '紅棕色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (39, '灰褐色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (40, '淡紫色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (41, '亮黑色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (42, '玫瑰金', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (43, '紫紅色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (44, '淡粉色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (45, '红白色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (46, '黄金', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (47, '蓝白色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (48, '黑红', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (49, '裸色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (50, '银粉', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (51, '黄金白银', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (52, '黑白', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (53, '黄蓝', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (54, '玫瑰金', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (55, '枚红色', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (56, '黑金', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_color` VALUES (57, '藏蓝', 1, '2018-07-10 10:21:35', 1);

-- ----------------------------
-- Table structure for pdt_product
-- ----------------------------
DROP TABLE IF EXISTS `pdt_product`;
CREATE TABLE `pdt_product`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_verify` tinyint(4) NOT NULL,
  `verify_by` int(11) NULL DEFAULT NULL,
  `verify_time` datetime(0) NOT NULL,
  `category` int(11) NOT NULL,
  `category_diy` int(11) NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `supplier` int(11) NOT NULL,
  `member_level` int(11) NOT NULL,
  `picture` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cur_price` decimal(16, 2) NOT NULL,
  `ws_price` decimal(16, 2) NOT NULL,
  `min_oq` decimal(14, 4) NOT NULL,
  `max_oq` decimal(14, 4) NOT NULL,
  `sales` decimal(14, 4) NOT NULL,
  `stock` decimal(14, 4) NOT NULL,
  `warn_stock` decimal(14, 4) NOT NULL,
  `norm_attr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `size_attr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `color_attr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stock_out` tinyint(4) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `sold_in_time` tinyint(4) NOT NULL,
  `sold_time_b` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sold_time_e` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_default_review` tinyint(4) NOT NULL,
  `default_review_rating` decimal(16, 2) NOT NULL,
  `default_review_count` int(11) NOT NULL,
  `favorite_count` int(11) NOT NULL,
  `is_new` tinyint(4) NOT NULL,
  `is_index` tinyint(4) NOT NULL,
  `is_hot` tinyint(4) NOT NULL,
  `isbestdeals` tinyint(4) NOT NULL,
  `my_order` smallint(6) NOT NULL,
  `seo_title_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `seo_keyword_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `seo_description_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_free_shipping` tinyint(4) NOT NULL,
  `weight` decimal(16, 2) NOT NULL,
  `length` decimal(16, 2) NOT NULL,
  `width` decimal(16, 2) NOT NULL,
  `height` decimal(16, 2) NOT NULL,
  `brief_description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_show_tab1` tinyint(4) NOT NULL,
  `tabname1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tab1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_show_tab2` tinyint(4) NOT NULL,
  `tabname2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tab2` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_show_tab3` tinyint(4) NOT NULL,
  `tabname3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tab3` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pdt_product_category
-- ----------------------------
DROP TABLE IF EXISTS `pdt_product_category`;
CREATE TABLE `pdt_product_category`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_up` int(11) NULL DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL,
  `seo_title_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `seo_keyword_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `seo_description_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdt_product_category
-- ----------------------------
INSERT INTO `pdt_product_category` VALUES (1, 'Men Collections', NULL, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (2, 'Mens shoes', 1, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (3, 'Dress shoes', 2, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (4, 'Mens Leather Shoes', 2, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (5, 'Casual Shoes', 2, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (6, 'Loafers&amp;Slip-ons', 2, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (7, 'Sports Shoes', 2, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (8, 'Mens boots', 1, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (9, 'Safety Shoes', 8, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (10, 'Dress  boots', 8, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (11, 'Mens sandals', 1, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (12, 'Womens Collections', NULL, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (13, 'Womens shoes', 12, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (14, 'Sports shoes', 13, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (15, 'Casual shoes', 13, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (16, 'Loafers', 13, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (17, 'Heels', 13, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (18, 'Flats', 13, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (19, 'Dress shoes', 13, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (20, 'Wedges', 13, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (21, 'Womens boots', 12, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (22, 'Ankle Boots', 21, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (23, 'Mid calf boots', 21, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (24, 'Knee high boots', 21, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (25, 'Casual boots', 21, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (26, 'Womens sandals', 12, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (27, 'Flat sandals', 26, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (28, 'Wedge sandals', 26, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (29, 'Heel sandals', 26, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (30, 'Slippers', 26, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (31, 'Kids Collections', NULL, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (32, 'Boys Collections', 31, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (33, 'Boys boots', 32, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (34, 'Boys sports shoes', 32, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (35, 'Boys casual shoes', 32, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (36, 'Boys slippers', 32, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (37, 'Boys sandals', 32, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (38, 'Girls Collections', 31, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (39, 'Girls boots', 38, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (40, 'Girls sports shoes', 38, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (41, 'Girls casual shoes', 38, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (42, 'Girls sandals', 38, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (43, 'Girls slippers', 38, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (44, 'Girls dress shoes', 38, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (45, 'Babies Collections', 31, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_product_category` VALUES (46, 'Waterproof boots&amp;Rain boots', 31, 1, NULL, NULL, NULL, 1, '2018-07-10 10:21:35', 1);

-- ----------------------------
-- Table structure for pdt_product_spec
-- ----------------------------
DROP TABLE IF EXISTS `pdt_product_spec`;
CREATE TABLE `pdt_product_spec`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `key_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(16, 2) NOT NULL,
  `markup` decimal(16, 2) NOT NULL,
  `store_count` decimal(14, 4) NOT NULL,
  `weight` decimal(14, 4) NOT NULL,
  `pics` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pdt_size
-- ----------------------------
DROP TABLE IF EXISTS `pdt_size`;
CREATE TABLE `pdt_size`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdt_size
-- ----------------------------
INSERT INTO `pdt_size` VALUES (1, '定制28EU--35EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (2, '定制25EU--30EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (3, '定制31EU--36EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (4, '定制20EU--24EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (5, '定制19EU--24EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (6, '定制35EU--40EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (7, '定制40EU--48EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (8, '定制30EU--35EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (9, '定制37EU--43EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (10, '定制39EU--46EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (11, '定制36EU--41EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (12, '定制40EU--46EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (13, '定制40EU--45EU', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (14, '定制(38EU--44EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (15, '定制(38EU-46EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (16, '定制(38EU--43EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (17, '定制(38EU--45EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (18, '定制(39EU--46EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (19, '定制(35EU--46EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (20, '定制(28EU-35EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (21, '定制(36EU-40EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (22, '定制（21EU-25EU）', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (23, '定制（25EU-29EU）', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (24, '定制(26EU-36EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (25, '定制(21EU-31EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (26, '定制(35EU-43EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (27, '定制(35EU-42EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (28, '定制(34EU-40EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (29, '定制(34EU-39EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (30, '定制(35EU-39EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (31, '定制(44EU-47EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (32, '定制(24EU-37EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (33, '定制(37EU-44EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (34, '定制(36EU-42EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (35, '定制(18EU-23EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (36, '定制(34EU-47EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (37, '定制(39EU-44EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (38, '定制(41EU-46EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (39, '定制（35EU--41EU）', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (40, '定制（38-47）', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (41, '定制（40-44）', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (42, '40-45', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (43, '38-46', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (44, '36-44', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (45, '35-41', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (46, '定制（35EU-40EU)', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (47, '定制（36EU--44EU）', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (48, '定制（39EU--44EU）', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (49, '20-27', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (50, '5-10#,11-4#(美码）', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (51, '40', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (52, '41', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (53, '42', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (54, '43', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (55, '44', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (56, '45', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (57, '34-44', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (58, '34-44', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (59, '34-40', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (60, '34-44', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (61, '34-44', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (62, '34-44', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (63, '29-35', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (64, '39-45', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (65, '25-34', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (66, '29-35', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (67, '30-35', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (68, '39-45', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (69, '婴儿（美/欧）0.5-1码/16', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (70, '婴儿（美/欧）1.5-2码/17', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (71, '婴儿（美/欧）2.5-3码/18', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (72, '小童（美/欧）3.5-4码/19', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (73, '小童（美/欧）4.5-5码/20', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (74, '小童（美/欧）5.5/21', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (75, '小童（美/欧）6-6.5码/22', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (76, '小童（美/欧）7-7.5码/23', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (77, '小童（美/欧）8码/24', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (78, '小童（美/欧）8.5-9码/25', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (79, '小童（美/欧）9.5码/26', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (80, '小童（美/欧）10码/27', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (81, '中童（美/欧）10.5码/27', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (82, '中童（美/欧）11码/28', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (83, '中童（美/欧）11.5码/29', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (84, '中童（美/欧）12-12.5码/30', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (85, '中童（美/欧）13-13.5码/31', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (86, '中童（美/欧）1码/32', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (87, '中童（美/欧）1.5-2码/33', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (88, '中童（美/欧）2.5-3码/34', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (89, '大童（美/欧）3.5码/35', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (90, '大童（美/欧）4-4.5码/36', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (91, '大童（美/欧）5-5.5码/37', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (92, '大童（美/欧）6-6.5码/38', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (93, '大童（美/欧）7码/39', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (94, '女（美/欧）5/35', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (95, '女（美/欧）5.5/35.5', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (96, '女（美/欧）6/36', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (97, '女（美/欧）6.5/37', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (98, '女（美/欧）7/37.5', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (99, '女（美/欧）7.5/38', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (100, '女（美/欧）8/38.5', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (101, '女（美/欧）8.5/39', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (102, '女（美/欧）9/40', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (103, '女（美/欧）9.5/41', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (104, '女（美/欧）10/42', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (105, '男（美/欧）5/37.5', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (106, '男（美/欧）5.5/38', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (107, '男（美/欧）6/38.5', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (108, '男（美/欧）6.5/39', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (109, '男（美/欧）7/40', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (110, '男（美/欧）7.5/40.5', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (111, '男（美/欧）8/41', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (112, '男（美/欧）8.5/42', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (113, '男（美/欧）9/42.5', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (114, '男（美/欧）9.5/43', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (115, '男（美/欧）10/44', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (116, '男（美/欧）10.5/44.5', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (117, '男（美/欧）11/45', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (118, '男（美/欧）11.5/45.5', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (119, '男（美/欧）12/46', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (120, '男（美/欧）13/47.5', 1, '2018-07-10 10:21:35', 1);
INSERT INTO `pdt_size` VALUES (121, '38-44', 1, '2018-07-10 10:21:35', 1);

-- ----------------------------
-- Table structure for plt_country
-- ----------------------------
DROP TABLE IF EXISTS `plt_country`;
CREATE TABLE `plt_country`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ct` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ctnumber` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `money` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nationalflage` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL,
  `hot_country` tinyint(4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `country`(`country`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for plt_country_line
-- ----------------------------
DROP TABLE IF EXISTS `plt_country_line`;
CREATE TABLE `plt_country_line`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nameabridge` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `main` int(11) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for plt_erate
-- ----------------------------
DROP TABLE IF EXISTS `plt_erate`;
CREATE TABLE `plt_erate`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `curname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `symbol` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `defcur` tinyint(4) NOT NULL,
  `rate` decimal(8, 4) NOT NULL,
  `bcdefcur` tinyint(4) NOT NULL,
  `nowrate` decimal(8, 4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for plt_freight
-- ----------------------------
DROP TABLE IF EXISTS `plt_freight`;
CREATE TABLE `plt_freight`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL,
  `selerturl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sequence` int(11) NOT NULL,
  `useinterface` tinyint(4) NOT NULL,
  `weightmin` int(11) NOT NULL,
  `weightmax` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `company`(`company`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for plt_freight_line
-- ----------------------------
DROP TABLE IF EXISTS `plt_freight_line`;
CREATE TABLE `plt_freight_line`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `weightfirst` decimal(14, 4) NOT NULL,
  `weightprice` decimal(14, 4) NOT NULL,
  `aggravate` decimal(14, 4) NOT NULL,
  `aggravateprice` decimal(14, 4) NOT NULL,
  `main` int(11) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for plt_pay
-- ----------------------------
DROP TABLE IF EXISTS `plt_pay`;
CREATE TABLE `plt_pay`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `pay_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `poundage` decimal(8, 4) NOT NULL,
  `pay_online` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `add_cost` decimal(14, 4) NOT NULL,
  `min_cost` decimal(14, 4) NOT NULL,
  `max_cost` decimal(14, 4) NOT NULL,
  `det_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for prm_order
-- ----------------------------
DROP TABLE IF EXISTS `prm_order`;
CREATE TABLE `prm_order`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `purchalise` int(11) NOT NULL,
  `activity` int(11) NOT NULL,
  `productnum` bigint(20) NOT NULL,
  `price` decimal(14, 4) NOT NULL,
  `created_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for prm_order_line
-- ----------------------------
DROP TABLE IF EXISTS `prm_order_line`;
CREATE TABLE `prm_order_line`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `productnum` bigint(20) NOT NULL,
  `productprice` decimal(14, 4) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for prm_union
-- ----------------------------
DROP TABLE IF EXISTS `prm_union`;
CREATE TABLE `prm_union`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `start_time` datetime(0) NOT NULL,
  `end_time` datetime(0) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pre_time` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime(0) NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for prm_union_line
-- ----------------------------
DROP TABLE IF EXISTS `prm_union_line`;
CREATE TABLE `prm_union_line`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `main` int(11) NOT NULL,
  `goods_pkey` int(11) NOT NULL,
  `allcount` bigint(20) NOT NULL,
  `boughtcount` bigint(20) NOT NULL,
  `personcount` int(11) NOT NULL,
  `price` decimal(14, 4) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for prv_role
-- ----------------------------
DROP TABLE IF EXISTS `prv_role`;
CREATE TABLE `prv_role`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `range_type` tinyint(4) NOT NULL,
  `range_pkey` int(11) NULL DEFAULT NULL,
  `cell` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prv_role
-- ----------------------------
INSERT INTO `prv_role` VALUES (1, 'admin', '系统管理员', 1, 1, NULL, 1, 1, '2015-05-12 16:38:32', 1);
INSERT INTO `prv_role` VALUES (2, '0101', '会计', 1, 1, NULL, 1, 1, '2015-05-15 16:54:56', 1);
INSERT INTO `prv_role` VALUES (3, '0102', '出纳', 1, 1, NULL, 1, 1, '2015-05-15 16:55:15', 1);
INSERT INTO `prv_role` VALUES (4, '0103', '会计助理', 1, 1, NULL, 1, 1, '2015-05-15 16:55:37', 1);
INSERT INTO `prv_role` VALUES (5, '0104', '收银员', 1, 1, NULL, 1, 1, '2015-05-15 16:56:40', 1);
INSERT INTO `prv_role` VALUES (6, '0105', '会计主管', 1, 1, NULL, 1, 1, '2015-05-15 16:57:01', 1);
INSERT INTO `prv_role` VALUES (7, '0201', '采购员', 1, 1, NULL, 1, 1, '2015-05-15 16:57:36', 1);
INSERT INTO `prv_role` VALUES (8, '0202', '核价员', 1, 1, NULL, 1, 1, '2015-05-15 16:57:50', 1);
INSERT INTO `prv_role` VALUES (9, '0301', '业务经理', 1, 1, NULL, 1, 1, '2015-05-15 16:58:47', 1);
INSERT INTO `prv_role` VALUES (10, '0302', '业务主管', 1, 1, NULL, 1, 1, '2015-05-15 16:59:02', 1);
INSERT INTO `prv_role` VALUES (11, '0303', '业务员', 1, 1, NULL, 1, 1, '2015-05-15 16:59:27', 1);
INSERT INTO `prv_role` VALUES (12, '0304', '业务助理', 1, 1, NULL, 1, 1, '2015-05-15 16:59:39', 1);
INSERT INTO `prv_role` VALUES (13, '0401', '调拨员', 1, 1, NULL, 1, 1, '2015-05-15 16:59:59', 1);
INSERT INTO `prv_role` VALUES (14, '0501', '人事主管', 1, 1, NULL, 1, 1, '2015-05-15 17:00:18', 1);
INSERT INTO `prv_role` VALUES (15, '0601', '后勤主管', 1, 1, NULL, 1, 1, '2015-05-15 17:01:21', 1);
INSERT INTO `prv_role` VALUES (16, '0602', '库管员', 1, 1, NULL, 1, 1, '2015-05-15 17:01:31', 1);
INSERT INTO `prv_role` VALUES (17, '110', '总经理', 1, 1, NULL, 1, 1, '2015-05-15 17:20:19', 1);
INSERT INTO `prv_role` VALUES (18, '1101', '副总经理', 1, 1, NULL, 1, 1, '2015-05-15 17:22:02', 1);
INSERT INTO `prv_role` VALUES (19, '1102', '分公司经理', 1, 1, NULL, 1, 1, '2015-05-15 17:23:23', 1);
INSERT INTO `prv_role` VALUES (20, '201', '报表与汇总', 1, 1, NULL, 1, 1, '2015-05-15 17:24:30', 1);
INSERT INTO `prv_role` VALUES (21, '2011', '报表与汇总-财务', 1, 1, NULL, 1, 1, '2015-05-15 17:25:24', 1);
INSERT INTO `prv_role` VALUES (22, '2012', '报表与汇总-销售', 1, 1, NULL, 1, 1, '2015-05-15 17:25:38', 1);
INSERT INTO `prv_role` VALUES (23, '2013', '报表与汇总-采购', 1, 1, NULL, 1, 1, '2015-05-15 17:25:50', 1);
INSERT INTO `prv_role` VALUES (24, '2014', '报表与汇总-仓库', 1, 1, NULL, 1, 1, '2015-05-15 17:26:31', 1);
INSERT INTO `prv_role` VALUES (25, '9001', '公共查询', 1, 1, NULL, 1, 1, '2015-05-15 17:27:52', 1);
INSERT INTO `prv_role` VALUES (26, '9002', '货物管理员', 1, 1, NULL, 1, 1, '2015-05-15 17:28:10', 1);
INSERT INTO `prv_role` VALUES (27, '9003', 'CRM管理员', 1, 1, NULL, 1, 1, '2015-05-15 17:28:44', 1);

-- ----------------------------
-- Table structure for prv_role_act
-- ----------------------------
DROP TABLE IF EXISTS `prv_role_act`;
CREATE TABLE `prv_role_act`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) NOT NULL,
  `menu` int(11) NOT NULL,
  `act1` int(11) NULL DEFAULT NULL,
  `act2` int(11) NULL DEFAULT NULL,
  `act3` int(11) NULL DEFAULT NULL,
  `act4` int(11) NULL DEFAULT NULL,
  `act5` int(11) NULL DEFAULT NULL,
  `act6` int(11) NULL DEFAULT NULL,
  `act7` int(11) NULL DEFAULT NULL,
  `act8` int(11) NULL DEFAULT NULL,
  `act9` int(11) NULL DEFAULT NULL,
  `act10` int(11) NULL DEFAULT NULL,
  `act11` int(11) NULL DEFAULT NULL,
  `act12` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `role`(`role`, `menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 445 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prv_role_act
-- ----------------------------
INSERT INTO `prv_role_act` VALUES (1, 1, 1, 1, 2, 3, 5, 6, 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (3, 1, 3, 8, 9, 10, 12, 13, 14, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (4, 1, 4, 15, 16, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (5, 1, 5, 18, 19, 20, 21, 22, 23, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (6, 1, 6, 24, 25, 26, 28, 29, 27, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (8, 1, 8, 37, 38, 39, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (10, 1, 10, 44, 45, 47, 48, 49, 43, 46, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (11, 1, 11, 51, 52, 54, 55, 56, 50, 53, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (12, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (13, 1, 14, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (14, 1, 15, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (15, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (16, 1, 17, 59, 60, 61, 62, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (17, 1, 18, 64, 65, 66, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (18, 1, 19, 68, 69, 70, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (19, 1, 20, 72, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (20, 1, 21, 74, 75, 76, 77, 78, 79, 80, 81, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (21, 1, 22, 82, 83, 84, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (22, 1, 23, 86, 87, 88, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (23, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (24, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (25, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (26, 1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (27, 1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (28, 1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (29, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (30, 1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (31, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (32, 1, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (33, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (34, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (35, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (36, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (37, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (38, 1, 39, 136, 137, 138, 139, 140, 141, 142, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (40, 1, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (41, 1, 42, 147, 148, 149, 150, 151, 152, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (42, 1, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (43, 1, 44, 153, 154, 155, 156, 157, 158, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (44, 1, 45, 159, 160, 161, 162, 163, 164, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (45, 1, 46, 165, 166, 167, 168, 169, 170, 171, 172, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (46, 1, 47, 173, 174, 175, 176, 177, 178, 179, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (47, 1, 48, 180, 181, 182, 183, 184, 185, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (48, 1, 49, 186, 187, 188, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (49, 1, 50, 190, 191, 192, 193, 194, 195, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (50, 1, 51, 196, 197, 198, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (51, 1, 52, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (52, 1, 53, 201, 202, 203, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (53, 1, 54, 205, 206, 207, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (54, 1, 55, 209, 210, 211, 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (55, 1, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (56, 1, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (57, 1, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (58, 1, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (59, 1, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (60, 1, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (61, 1, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (62, 1, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (63, 1, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (64, 1, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (65, 1, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (66, 1, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (67, 1, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (68, 1, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (69, 1, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (70, 1, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (71, 1, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (72, 1, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (73, 1, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (74, 1, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (75, 1, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (76, 1, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (77, 1, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (78, 1, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (79, 1, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (80, 1, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (81, 1, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (82, 1, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (83, 1, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (84, 1, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (85, 1, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (86, 1, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (87, 1, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (88, 1, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (89, 1, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (90, 1, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (91, 1, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (92, 1, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (93, 1, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (94, 1, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (95, 1, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (96, 1, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (97, 1, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (98, 1, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (99, 1, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (100, 1, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (101, 1, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (102, 1, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (103, 1, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (104, 1, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (105, 1, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (106, 1, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (107, 1, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (108, 1, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (109, 1, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (110, 1, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (111, 1, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (112, 1, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (114, 1, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (115, 1, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (116, 1, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (117, 1, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (118, 1, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (119, 1, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (120, 1, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (121, 1, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (122, 2, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (123, 27, 10, 43, 44, 45, 46, 47, 48, 49, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (124, 27, 11, 50, 51, 52, 53, 54, 55, 56, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (125, 26, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (126, 25, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (127, 25, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (128, 2, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (129, 2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (130, 2, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (131, 2, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (132, 2, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (133, 2, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (134, 2, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (135, 2, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (136, 25, 4, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (137, 25, 5, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (138, 25, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (139, 25, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (140, 25, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (141, 2, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (142, 2, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (143, 2, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (144, 2, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (146, 2, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (147, 2, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (148, 2, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (149, 2, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (150, 25, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (151, 25, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (153, 25, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (154, 25, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (155, 19, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (156, 19, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (157, 19, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (158, 19, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (159, 19, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (160, 19, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (161, 19, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (162, 19, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (163, 16, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (164, 16, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (165, 16, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (166, 16, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (167, 16, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (168, 2, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (169, 2, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (170, 2, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (171, 2, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (172, 2, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (173, 2, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (174, 2, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (176, 2, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (177, 2, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (178, 2, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (179, 2, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (180, 2, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (181, 2, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (182, 2, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (183, 2, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (184, 2, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (185, 2, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (186, 2, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (187, 2, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (188, 2, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (189, 2, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (190, 16, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (191, 16, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (192, 16, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (193, 16, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (194, 16, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (195, 16, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (196, 14, 4, 15, 16, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (197, 14, 17, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (198, 14, 18, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (199, 14, 19, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (200, 14, 20, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (201, 14, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (202, 14, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (203, 14, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (204, 14, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (205, 14, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (206, 14, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (207, 14, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (208, 14, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (209, 13, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (210, 13, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (211, 13, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (212, 13, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (213, 2, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (214, 2, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (215, 2, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (216, 2, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (217, 2, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (218, 2, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (219, 2, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (220, 2, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (223, 2, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (224, 2, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (226, 2, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (229, 13, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (230, 13, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (231, 13, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (232, 13, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (233, 13, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (234, 13, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (235, 13, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (236, 13, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (237, 2, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (238, 2, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (239, 2, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (240, 2, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (241, 2, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (242, 2, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (243, 2, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (244, 2, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (245, 2, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (246, 2, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (247, 2, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (248, 2, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (249, 2, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (250, 2, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (251, 2, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (252, 2, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (253, 2, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (254, 2, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (255, 2, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (256, 2, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (257, 2, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (258, 2, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (259, 2, 10, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (260, 2, 11, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (261, 11, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (262, 11, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (263, 3, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (264, 3, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (265, 3, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (266, 3, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (267, 3, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (268, 3, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (269, 3, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (270, 3, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (271, 3, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (272, 11, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (273, 11, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (275, 11, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (276, 11, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (277, 3, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (278, 3, 11, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (279, 4, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (280, 4, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (281, 4, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (282, 4, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (283, 4, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (284, 4, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (285, 4, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (286, 4, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (287, 4, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (289, 4, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (290, 4, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (291, 4, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (292, 4, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (293, 4, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (294, 4, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (295, 4, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (296, 4, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (297, 4, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (298, 4, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (299, 4, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (300, 4, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (301, 4, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (302, 4, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (303, 4, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (304, 4, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (305, 4, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (306, 4, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (307, 4, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (308, 4, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (309, 4, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (310, 4, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (311, 4, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (312, 4, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (313, 4, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (314, 4, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (315, 4, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (316, 4, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (317, 4, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (319, 4, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (320, 4, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (321, 4, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (322, 4, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (323, 4, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (324, 4, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (325, 4, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (326, 4, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (328, 4, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (329, 4, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (330, 4, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (331, 4, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (332, 4, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (333, 4, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (334, 4, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (335, 4, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (336, 4, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (337, 4, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (338, 4, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (339, 4, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (340, 4, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (341, 4, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (342, 4, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (343, 4, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (344, 4, 11, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (345, 5, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (346, 5, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (347, 5, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (348, 5, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (350, 5, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (351, 5, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (352, 5, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (353, 5, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (354, 5, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (355, 5, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (356, 11, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (357, 11, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (358, 11, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (359, 11, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (360, 11, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (361, 11, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (362, 11, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (363, 11, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (364, 11, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (365, 7, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (366, 7, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (367, 7, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (368, 7, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (369, 7, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (370, 7, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (372, 7, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (373, 7, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (374, 7, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (375, 11, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (376, 11, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (377, 11, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (378, 11, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (379, 11, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (380, 11, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (381, 7, 10, 43, 44, 45, 46, 47, 48, 49, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (382, 7, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (383, 9, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (384, 9, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (385, 7, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (386, 7, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (387, 7, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (388, 7, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (389, 7, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (390, 7, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (391, 7, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (392, 7, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (393, 7, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (394, 9, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (395, 9, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (396, 9, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (397, 9, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (398, 9, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (399, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (400, 8, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (401, 8, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (402, 8, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (403, 8, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (404, 8, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (405, 8, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (406, 8, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (407, 8, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (408, 8, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (410, 8, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (411, 8, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (412, 8, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (413, 8, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (414, 8, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (415, 8, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (416, 8, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (417, 9, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (418, 1, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (419, 11, 11, 50, 52, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (420, 1, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (421, 11, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (422, 4, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (423, 5, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (424, 2, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (425, 1, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (426, 1, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (427, 1, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (428, 1, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (429, 1, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (430, 1, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (431, 1, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (432, 1, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (433, 1, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (434, 1, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (435, 1, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (436, 1, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (437, 1, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (438, 1, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (439, 1, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (440, 1, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (441, 1, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (442, 1, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (443, 14, 5, 18, 19, 20, 21, 22, 23, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `prv_role_act` VALUES (444, 1, 40, 143, 144, 145, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for prv_role_line
-- ----------------------------
DROP TABLE IF EXISTS `prv_role_line`;
CREATE TABLE `prv_role_line`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `role`(`role`, `child`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prv_role_line
-- ----------------------------
INSERT INTO `prv_role_line` VALUES (1, 2, 4);
INSERT INTO `prv_role_line` VALUES (2, 3, 25);
INSERT INTO `prv_role_line` VALUES (3, 4, 13);
INSERT INTO `prv_role_line` VALUES (4, 4, 25);
INSERT INTO `prv_role_line` VALUES (5, 5, 3);
INSERT INTO `prv_role_line` VALUES (6, 6, 2);
INSERT INTO `prv_role_line` VALUES (7, 7, 13);
INSERT INTO `prv_role_line` VALUES (8, 7, 25);
INSERT INTO `prv_role_line` VALUES (11, 8, 7);
INSERT INTO `prv_role_line` VALUES (10, 8, 26);
INSERT INTO `prv_role_line` VALUES (9, 8, 27);
INSERT INTO `prv_role_line` VALUES (12, 9, 10);
INSERT INTO `prv_role_line` VALUES (13, 10, 12);
INSERT INTO `prv_role_line` VALUES (14, 11, 25);
INSERT INTO `prv_role_line` VALUES (15, 12, 11);
INSERT INTO `prv_role_line` VALUES (16, 13, 25);
INSERT INTO `prv_role_line` VALUES (17, 14, 25);
INSERT INTO `prv_role_line` VALUES (18, 15, 16);
INSERT INTO `prv_role_line` VALUES (19, 16, 25);
INSERT INTO `prv_role_line` VALUES (20, 17, 18);
INSERT INTO `prv_role_line` VALUES (32, 18, 1);
INSERT INTO `prv_role_line` VALUES (25, 18, 2);
INSERT INTO `prv_role_line` VALUES (24, 18, 8);
INSERT INTO `prv_role_line` VALUES (23, 18, 9);
INSERT INTO `prv_role_line` VALUES (22, 18, 19);
INSERT INTO `prv_role_line` VALUES (21, 18, 20);
INSERT INTO `prv_role_line` VALUES (27, 19, 10);
INSERT INTO `prv_role_line` VALUES (26, 19, 27);
INSERT INTO `prv_role_line` VALUES (31, 20, 21);
INSERT INTO `prv_role_line` VALUES (30, 20, 22);
INSERT INTO `prv_role_line` VALUES (29, 20, 23);
INSERT INTO `prv_role_line` VALUES (28, 20, 24);

-- ----------------------------
-- Table structure for prv_role_tran
-- ----------------------------
DROP TABLE IF EXISTS `prv_role_tran`;
CREATE TABLE `prv_role_tran`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) NOT NULL,
  `grp` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `day` int(11) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `role`(`role`, `grp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 716 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prv_role_tran
-- ----------------------------
INSERT INTO `prv_role_tran` VALUES (365, 1, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (366, 1, 2, 99, 0);
INSERT INTO `prv_role_tran` VALUES (367, 1, 3, 99, 0);
INSERT INTO `prv_role_tran` VALUES (368, 1, 4, 99, 0);
INSERT INTO `prv_role_tran` VALUES (369, 1, 5, 99, 0);
INSERT INTO `prv_role_tran` VALUES (370, 1, 6, 99, 0);
INSERT INTO `prv_role_tran` VALUES (371, 1, 7, 99, 0);
INSERT INTO `prv_role_tran` VALUES (372, 1, 8, 99, 0);
INSERT INTO `prv_role_tran` VALUES (373, 1, 9, 99, 0);
INSERT INTO `prv_role_tran` VALUES (374, 1, 10, 99, 0);
INSERT INTO `prv_role_tran` VALUES (375, 1, 11, 99, 0);
INSERT INTO `prv_role_tran` VALUES (376, 1, 12, 99, 0);
INSERT INTO `prv_role_tran` VALUES (377, 1, 13, 99, 0);
INSERT INTO `prv_role_tran` VALUES (378, 2, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (379, 2, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (380, 2, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (381, 2, 4, 32, 0);
INSERT INTO `prv_role_tran` VALUES (382, 2, 5, 32, 0);
INSERT INTO `prv_role_tran` VALUES (383, 2, 6, 32, 0);
INSERT INTO `prv_role_tran` VALUES (384, 2, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (385, 2, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (386, 2, 9, 32, 0);
INSERT INTO `prv_role_tran` VALUES (387, 2, 10, 32, 0);
INSERT INTO `prv_role_tran` VALUES (388, 2, 11, 32, 0);
INSERT INTO `prv_role_tran` VALUES (389, 2, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (390, 2, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (391, 3, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (392, 3, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (393, 3, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (394, 3, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (395, 3, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (396, 3, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (397, 3, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (398, 3, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (399, 3, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (400, 3, 10, 32, 0);
INSERT INTO `prv_role_tran` VALUES (401, 3, 11, 32, 0);
INSERT INTO `prv_role_tran` VALUES (402, 3, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (403, 3, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (404, 4, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (405, 4, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (406, 4, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (407, 4, 4, 32, 0);
INSERT INTO `prv_role_tran` VALUES (408, 4, 5, 32, 0);
INSERT INTO `prv_role_tran` VALUES (409, 4, 6, 32, 0);
INSERT INTO `prv_role_tran` VALUES (410, 4, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (411, 4, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (412, 4, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (413, 4, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (414, 4, 11, 32, 0);
INSERT INTO `prv_role_tran` VALUES (415, 4, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (416, 4, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (417, 5, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (418, 5, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (419, 5, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (420, 5, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (421, 5, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (422, 5, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (423, 5, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (424, 5, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (425, 5, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (426, 5, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (427, 5, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (428, 5, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (429, 5, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (430, 6, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (431, 6, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (432, 6, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (433, 6, 4, 99, 0);
INSERT INTO `prv_role_tran` VALUES (434, 6, 5, 99, 0);
INSERT INTO `prv_role_tran` VALUES (435, 6, 6, 99, 0);
INSERT INTO `prv_role_tran` VALUES (436, 6, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (437, 6, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (438, 6, 9, 99, 0);
INSERT INTO `prv_role_tran` VALUES (439, 6, 10, 99, 0);
INSERT INTO `prv_role_tran` VALUES (440, 6, 11, 32, 0);
INSERT INTO `prv_role_tran` VALUES (441, 6, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (442, 6, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (443, 7, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (444, 7, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (445, 7, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (446, 7, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (447, 7, 5, 99, 0);
INSERT INTO `prv_role_tran` VALUES (448, 7, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (449, 7, 7, 99, 0);
INSERT INTO `prv_role_tran` VALUES (450, 7, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (451, 7, 9, 99, 0);
INSERT INTO `prv_role_tran` VALUES (452, 7, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (453, 7, 11, 32, 0);
INSERT INTO `prv_role_tran` VALUES (454, 7, 12, 32, 0);
INSERT INTO `prv_role_tran` VALUES (455, 7, 13, 99, 0);
INSERT INTO `prv_role_tran` VALUES (456, 8, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (457, 8, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (458, 8, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (459, 8, 4, 99, 0);
INSERT INTO `prv_role_tran` VALUES (460, 8, 5, 32, 0);
INSERT INTO `prv_role_tran` VALUES (461, 8, 6, 99, 0);
INSERT INTO `prv_role_tran` VALUES (462, 8, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (463, 8, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (464, 8, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (465, 8, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (466, 8, 11, 32, 0);
INSERT INTO `prv_role_tran` VALUES (467, 8, 12, 32, 0);
INSERT INTO `prv_role_tran` VALUES (468, 8, 13, 99, 0);
INSERT INTO `prv_role_tran` VALUES (469, 9, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (470, 9, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (471, 9, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (472, 9, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (473, 9, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (474, 9, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (475, 9, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (476, 9, 8, 32, 0);
INSERT INTO `prv_role_tran` VALUES (477, 9, 9, 99, 0);
INSERT INTO `prv_role_tran` VALUES (478, 9, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (479, 9, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (480, 9, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (481, 9, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (482, 10, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (483, 10, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (484, 10, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (485, 10, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (486, 10, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (487, 10, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (488, 10, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (489, 10, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (490, 10, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (491, 10, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (492, 10, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (493, 10, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (494, 10, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (495, 11, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (496, 11, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (497, 11, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (498, 11, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (499, 11, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (500, 11, 6, 1, 0);
INSERT INTO `prv_role_tran` VALUES (501, 11, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (502, 11, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (503, 11, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (504, 11, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (505, 11, 11, 1, 0);
INSERT INTO `prv_role_tran` VALUES (506, 11, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (507, 11, 13, 11, 0);
INSERT INTO `prv_role_tran` VALUES (508, 12, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (509, 12, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (510, 12, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (511, 12, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (512, 12, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (513, 12, 6, 12, 0);
INSERT INTO `prv_role_tran` VALUES (514, 12, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (515, 12, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (516, 12, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (517, 12, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (518, 12, 11, 12, 0);
INSERT INTO `prv_role_tran` VALUES (519, 12, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (520, 12, 13, 12, 0);
INSERT INTO `prv_role_tran` VALUES (521, 13, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (522, 13, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (523, 13, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (524, 13, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (525, 13, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (526, 13, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (527, 13, 7, 99, 0);
INSERT INTO `prv_role_tran` VALUES (528, 13, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (529, 13, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (530, 13, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (531, 13, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (532, 13, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (533, 13, 13, 31, 0);
INSERT INTO `prv_role_tran` VALUES (534, 14, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (535, 14, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (536, 14, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (537, 14, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (538, 14, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (539, 14, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (540, 14, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (541, 14, 8, 32, 0);
INSERT INTO `prv_role_tran` VALUES (542, 14, 9, 99, 0);
INSERT INTO `prv_role_tran` VALUES (543, 14, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (544, 14, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (545, 14, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (546, 14, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (547, 15, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (548, 15, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (549, 15, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (550, 15, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (551, 15, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (552, 15, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (553, 15, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (554, 15, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (555, 15, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (556, 15, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (557, 15, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (558, 15, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (559, 15, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (560, 16, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (561, 16, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (562, 16, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (563, 16, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (564, 16, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (565, 16, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (566, 16, 7, 99, 0);
INSERT INTO `prv_role_tran` VALUES (567, 16, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (568, 16, 9, 32, 0);
INSERT INTO `prv_role_tran` VALUES (569, 16, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (570, 16, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (571, 16, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (572, 16, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (573, 17, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (574, 17, 2, 99, 0);
INSERT INTO `prv_role_tran` VALUES (575, 17, 3, 99, 0);
INSERT INTO `prv_role_tran` VALUES (576, 17, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (577, 17, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (578, 17, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (579, 17, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (580, 17, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (581, 17, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (582, 17, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (583, 17, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (584, 17, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (585, 17, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (586, 18, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (587, 18, 2, 99, 0);
INSERT INTO `prv_role_tran` VALUES (588, 18, 3, 99, 0);
INSERT INTO `prv_role_tran` VALUES (589, 18, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (590, 18, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (591, 18, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (592, 18, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (593, 18, 8, 99, 0);
INSERT INTO `prv_role_tran` VALUES (594, 18, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (595, 18, 10, 99, 0);
INSERT INTO `prv_role_tran` VALUES (596, 18, 11, 99, 0);
INSERT INTO `prv_role_tran` VALUES (597, 18, 12, 99, 0);
INSERT INTO `prv_role_tran` VALUES (598, 18, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (599, 19, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (600, 19, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (601, 19, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (602, 19, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (603, 19, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (604, 19, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (605, 19, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (606, 19, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (607, 19, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (608, 19, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (609, 19, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (610, 19, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (611, 19, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (612, 20, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (613, 20, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (614, 20, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (615, 20, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (616, 20, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (617, 20, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (618, 20, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (619, 20, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (620, 20, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (621, 20, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (622, 20, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (623, 20, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (624, 20, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (625, 21, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (626, 21, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (627, 21, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (628, 21, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (629, 21, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (630, 21, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (631, 21, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (632, 21, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (633, 21, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (634, 21, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (635, 21, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (636, 21, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (637, 21, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (638, 22, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (639, 22, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (640, 22, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (641, 22, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (642, 22, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (643, 22, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (644, 22, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (645, 22, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (646, 22, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (647, 22, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (648, 22, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (649, 22, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (650, 22, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (651, 23, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (652, 23, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (653, 23, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (654, 23, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (655, 23, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (656, 23, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (657, 23, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (658, 23, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (659, 23, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (660, 23, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (661, 23, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (662, 23, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (663, 23, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (664, 24, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (665, 24, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (666, 24, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (667, 24, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (668, 24, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (669, 24, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (670, 24, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (671, 24, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (672, 24, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (673, 24, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (674, 24, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (675, 24, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (676, 24, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (677, 25, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (678, 25, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (679, 25, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (680, 25, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (681, 25, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (682, 25, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (683, 25, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (684, 25, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (685, 25, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (686, 25, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (687, 25, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (688, 25, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (689, 25, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (690, 26, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (691, 26, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (692, 26, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (693, 26, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (694, 26, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (695, 26, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (696, 26, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (697, 26, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (698, 26, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (699, 26, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (700, 26, 11, 0, 0);
INSERT INTO `prv_role_tran` VALUES (701, 26, 12, 0, 0);
INSERT INTO `prv_role_tran` VALUES (702, 26, 13, 0, 0);
INSERT INTO `prv_role_tran` VALUES (703, 27, 1, 99, 0);
INSERT INTO `prv_role_tran` VALUES (704, 27, 2, 32, 0);
INSERT INTO `prv_role_tran` VALUES (705, 27, 3, 1, 0);
INSERT INTO `prv_role_tran` VALUES (706, 27, 4, 0, 0);
INSERT INTO `prv_role_tran` VALUES (707, 27, 5, 0, 0);
INSERT INTO `prv_role_tran` VALUES (708, 27, 6, 0, 0);
INSERT INTO `prv_role_tran` VALUES (709, 27, 7, 0, 0);
INSERT INTO `prv_role_tran` VALUES (710, 27, 8, 0, 0);
INSERT INTO `prv_role_tran` VALUES (711, 27, 9, 0, 0);
INSERT INTO `prv_role_tran` VALUES (712, 27, 10, 0, 0);
INSERT INTO `prv_role_tran` VALUES (713, 27, 11, 32, 0);
INSERT INTO `prv_role_tran` VALUES (714, 27, 12, 32, 0);
INSERT INTO `prv_role_tran` VALUES (715, 27, 13, 0, 0);

-- ----------------------------
-- Table structure for prv_tran_data
-- ----------------------------
DROP TABLE IF EXISTS `prv_tran_data`;
CREATE TABLE `prv_tran_data`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tran` int(11) NOT NULL,
  `tran_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tran_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_form` tinyint(4) NOT NULL,
  `grp` int(11) NULL DEFAULT NULL,
  `user_fld` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dept_fld` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cell_fld` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cell_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `org_fld` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `org_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `tran`(`tran`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prv_tran_data
-- ----------------------------
INSERT INTO `prv_tran_data` VALUES (1, '编号', 1, 'irille.core.sys.SysOrg', '机构信息', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'pkey', '编号', 32);
INSERT INTO `prv_tran_data` VALUES (2, '编号', 2, 'irille.core.sys.SysDept', '部门信息', 0, 1, NULL, NULL, 'pkey', '编号', NULL, NULL, 'org', '所属机构', 32);
INSERT INTO `prv_tran_data` VALUES (3, '用户', 3, 'irille.core.sys.SysEm', '职员信息', 0, 1, 'userSys', '用户', 'dept', '部门', 'cell', '核算单元', 'org', '机构', 32);
INSERT INTO `prv_tran_data` VALUES (4, '编号', 4, 'irille.core.sys.SysUser', '用户管理', 0, 1, 'pkey', '编号', 'dept', '部门', 'dept.cell', '部门核算单元', 'org', '机构', 32);
INSERT INTO `prv_tran_data` VALUES (5, '编号', 5, 'irille.core.sys.SysCell', '核算单元', 0, 1, NULL, NULL, NULL, NULL, 'pkey', '编号', 'org', '机构', 32);
INSERT INTO `prv_tran_data` VALUES (6, '管理单元', 6, 'irille.core.sys.SysTemplat', '财务模板', 0, 1, NULL, NULL, NULL, NULL, 'mngCell', '管理单元', NULL, NULL, 32);
INSERT INTO `prv_tran_data` VALUES (9, '业务代表', 15, 'irille.core.sys.SysCustom', '客户信息', 0, 11, 'businessMember', '业务代表', 'mngDept', '管理部门', NULL, NULL, 'mngOrg', '管理机构', 32);
INSERT INTO `prv_tran_data` VALUES (10, '用户部门', 202, 'irille.core.lg.LgLogin', '登录日志', 0, 1, NULL, NULL, 'userSys.dept', '用户部门', NULL, NULL, 'userSys.org', '用户机构', 32);
INSERT INTO `prv_tran_data` VALUES (11, '登录记录用户', 203, 'irille.core.lg.LgTran', '交易日志', 0, 1, 'login.userSys', '登录记录用户', 'login.userSys.dept', '登录记录用户部门', NULL, NULL, 'login.userSys.org', '登录记录用户机构', 32);
INSERT INTO `prv_tran_data` VALUES (12, '管理核算单元', 601, 'irille.core.prv.PrvRole', '角色管理', 0, 8, NULL, NULL, NULL, NULL, 'cell', '管理核算单元', 'cell.org', '管理核算单元机构', 32);
INSERT INTO `prv_tran_data` VALUES (13, '默认', 602, 'irille.core.prv.PrvTranData', '资源数据', 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33);
INSERT INTO `prv_tran_data` VALUES (14, '默认', 603, 'irille.core.prv.PrvTranGrp', '资源控制组', 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33);
INSERT INTO `prv_tran_data` VALUES (121, '默认', 16, 'irille.core.sys.SysSeq', '序号主表', 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31);
INSERT INTO `prv_tran_data` VALUES (122, '默认', 18, 'irille.core.sys.SysCtype', '系统参数', 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32);
INSERT INTO `prv_tran_data` VALUES (128, '业务代表', 14, 'irille.core.sys.SysSupplier', '供应商信息', 0, 12, 'businessMember', '业务代表', 'mngDept', '管理部门', NULL, NULL, 'mngOrg', '管理机构', 25);

-- ----------------------------
-- Table structure for prv_tran_grp
-- ----------------------------
DROP TABLE IF EXISTS `prv_tran_grp`;
CREATE TABLE `prv_tran_grp`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prv_tran_grp
-- ----------------------------
INSERT INTO `prv_tran_grp` VALUES (1, '不限制', '', 1);
INSERT INTO `prv_tran_grp` VALUES (2, '按机构', '', 1);
INSERT INTO `prv_tran_grp` VALUES (3, '本人', '', 1);
INSERT INTO `prv_tran_grp` VALUES (4, '财务普通单据', '', 1);
INSERT INTO `prv_tran_grp` VALUES (5, '采购普通单据', '', 1);
INSERT INTO `prv_tran_grp` VALUES (6, '营销普通单据', '', 1);
INSERT INTO `prv_tran_grp` VALUES (7, '调拨普通单据', '', 1);
INSERT INTO `prv_tran_grp` VALUES (8, '重要人事操作', '', 1);
INSERT INTO `prv_tran_grp` VALUES (9, '后勤普通单据', '', 1);
INSERT INTO `prv_tran_grp` VALUES (10, '出纳普通单据', '', 1);
INSERT INTO `prv_tran_grp` VALUES (11, '客户', '', 1);
INSERT INTO `prv_tran_grp` VALUES (12, '供应商', '', 1);
INSERT INTO `prv_tran_grp` VALUES (13, '请购单', '', 1);

-- ----------------------------
-- Table structure for sys_attemper
-- ----------------------------
DROP TABLE IF EXISTS `sys_attemper`;
CREATE TABLE `sys_attemper`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `clazz` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` smallint(6) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `period` tinyint(4) NOT NULL,
  `value` tinyint(4) NOT NULL,
  `skipable` tinyint(4) NOT NULL,
  `para` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `clazz`(`clazz`) USING BTREE,
  UNIQUE INDEX `sort`(`sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_cell
-- ----------------------------
DROP TABLE IF EXISTS `sys_cell`;
CREATE TABLE `sys_cell`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `year` smallint(6) NOT NULL,
  `org` int(11) NOT NULL,
  `dept` int(11) NULL DEFAULT NULL,
  `templat` int(11) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  UNIQUE INDEX `org`(`org`, `dept`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_cell
-- ----------------------------
INSERT INTO `sys_cell` VALUES (1, '101', '上海单元', 2015, 1, NULL, 1, 1);

-- ----------------------------
-- Table structure for sys_com
-- ----------------------------
DROP TABLE IF EXISTS `sys_com`;
CREATE TABLE `sys_com`  (
  `pkey` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zip_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date_time` datetime(0) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_com
-- ----------------------------
INSERT INTO `sys_com` VALUES (100001, '律雅视觉文化（上海）有限公司', '律雅视觉', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-08-11 14:33:45', 1, '2015-08-11 14:33:45', 1);

-- ----------------------------
-- Table structure for sys_ctype
-- ----------------------------
DROP TABLE IF EXISTS `sys_ctype`;
CREATE TABLE `sys_ctype`  (
  `pkey` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ctype_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ctype_des` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctype_len` tinyint(4) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_ctype_code
-- ----------------------------
DROP TABLE IF EXISTS `sys_ctype_code`;
CREATE TABLE `sys_ctype_code`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `ctype_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_value` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_des` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_custom
-- ----------------------------
DROP TABLE IF EXISTS `sys_custom`;
CREATE TABLE `sys_custom`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_person_flag` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `mng_org` int(11) NOT NULL,
  `mng_dept` int(11) NULL DEFAULT NULL,
  `business_member` int(11) NULL DEFAULT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_custom_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_custom_org`;
CREATE TABLE `sys_custom_org`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `custom` int(11) NOT NULL,
  `org` int(11) NOT NULL,
  `dept` int(11) NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  INDEX `custom`(`custom`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `org` int(11) NOT NULL,
  `manager` int(11) NULL DEFAULT NULL,
  `dept_up` int(11) NULL DEFAULT NULL,
  `cell` int(11) NULL DEFAULT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  INDEX `org`(`org`, `code`) USING BTREE,
  INDEX `dept_up`(`dept_up`, `code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, '10101', '财务部', 1, 1, NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for sys_em
-- ----------------------------
DROP TABLE IF EXISTS `sys_em`;
CREATE TABLE `sys_em`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` tinyint(4) NOT NULL,
  `org` int(11) NOT NULL,
  `dept` int(11) NOT NULL,
  `user_sys` int(11) NULL DEFAULT NULL,
  `cell` int(11) NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  INDEX `org`(`org`, `dept`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_em
-- ----------------------------
INSERT INTO `sys_em` VALUES (1, '001', '管理员', NULL, NULL, 1, 1, 1, 1, NULL, 2);

-- ----------------------------
-- Table structure for sys_file_stock
-- ----------------------------
DROP TABLE IF EXISTS `sys_file_stock`;
CREATE TABLE `sys_file_stock`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `md5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `path` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `md5`(`md5`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_grp
-- ----------------------------
DROP TABLE IF EXISTS `sys_grp`;
CREATE TABLE `sys_grp`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `disp_scope4` tinyint(4) NOT NULL,
  `scope_obj_pkey` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `menu_up` int(11) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` smallint(6) NOT NULL,
  `ico` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  INDEX `menu_up`(`menu_up`, `sort`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, NULL, '机构信息', 'view.sys.SysOrg.List', 'sys', 10, NULL, 31);
INSERT INTO `sys_menu` VALUES (3, NULL, '部门信息', 'view.sys.SysDept.List', 'sys', 20, NULL, 31);
INSERT INTO `sys_menu` VALUES (4, NULL, '职员信息', 'view.sys.SysEm.List', 'sys', 30, NULL, 31);
INSERT INTO `sys_menu` VALUES (5, NULL, '用户管理', 'view.sys.SysUser.List', 'sys', 40, NULL, 31);
INSERT INTO `sys_menu` VALUES (6, NULL, '财务模板', 'view.sys.SysTemplat.List', 'sys', 60, NULL, 31);
INSERT INTO `sys_menu` VALUES (8, NULL, '核算单元', 'view.sys.SysCell.List', 'sys', 70, NULL, 31);
INSERT INTO `sys_menu` VALUES (10, NULL, '供应商信息', 'view.sys.SysSupplier.List', 'sys', 100, NULL, 31);
INSERT INTO `sys_menu` VALUES (11, NULL, '客户信息', 'view.sys.SysCustom.List', 'sys', 110, NULL, 31);
INSERT INTO `sys_menu` VALUES (13, NULL, '系统日志', NULL, 'sys', 900, NULL, 31);
INSERT INTO `sys_menu` VALUES (14, 13, '登录日志', 'view.lg.LgLogin.List', 'sys', 910, NULL, 31);
INSERT INTO `sys_menu` VALUES (15, 13, '交易日志', 'view.lg.LgTran.List', 'sys', 920, NULL, 31);
INSERT INTO `sys_menu` VALUES (16, NULL, '权限管理', NULL, 'sys', 400, NULL, 31);
INSERT INTO `sys_menu` VALUES (17, 16, '功能权限管理', 'view.prv.PrvRole.List', 'sys', 401, NULL, 31);
INSERT INTO `sys_menu` VALUES (18, 16, '资源权限管理', 'view.prv.PrvRoleTran.List', 'sys', 402, NULL, 31);
INSERT INTO `sys_menu` VALUES (19, 16, '资源控制组', 'view.prv.PrvTranGrp.List', 'sys', 403, NULL, 31);
INSERT INTO `sys_menu` VALUES (20, 16, '资源数据', 'view.prv.PrvTranData.List', 'sys', 404, NULL, 31);
INSERT INTO `sys_menu` VALUES (21, NULL, '测试菜单', 'view.exp.ExpBase.List', 'exp', 10, NULL, 3);
INSERT INTO `sys_menu` VALUES (22, NULL, '测试类型', 'view.exp.ExpKind.List', 'exp', 20, NULL, 3);
INSERT INTO `sys_menu` VALUES (23, NULL, '复合界面', 'view.exp.ExpComp.List', 'exp', 30, NULL, 3);
INSERT INTO `sys_menu` VALUES (39, 56, '供应商', 'view.usr.UsrSupplier.List', 'usr', 20, NULL, 2);
INSERT INTO `sys_menu` VALUES (40, 56, '供应商分类', 'view.usr.UsrSupplierCategory.List', 'usr', 30, NULL, 2);
INSERT INTO `sys_menu` VALUES (41, NULL, '采购商', NULL, 'usr', 40, NULL, 2);
INSERT INTO `sys_menu` VALUES (42, 41, '会员等级', 'view.usr.UsrMemberLevel.List', 'usr', 50, NULL, 2);
INSERT INTO `sys_menu` VALUES (43, NULL, '权限管理', NULL, 'usr', 70, NULL, 2);
INSERT INTO `sys_menu` VALUES (44, 43, '供应商角色', 'view.usr.UsrSupplierRole.List', 'usr', 80, NULL, 2);
INSERT INTO `sys_menu` VALUES (45, NULL, '支付设置', 'view.plt.PltPay.List', 'plt', 30, NULL, 2);
INSERT INTO `sys_menu` VALUES (46, NULL, '费率设置', 'view.plt.PltErate.List', 'plt', 20, NULL, 2);
INSERT INTO `sys_menu` VALUES (47, NULL, '国家管理', 'view.plt.PltCountry.List', 'plt', 40, NULL, 2);
INSERT INTO `sys_menu` VALUES (48, NULL, '运费管理', 'view.plt.PltFreight.List', 'plt', 50, NULL, 2);
INSERT INTO `sys_menu` VALUES (49, NULL, '产品', 'view.pdt.PdtProduct.List', 'pdt', 20, NULL, 2);
INSERT INTO `sys_menu` VALUES (50, NULL, '产品类目', 'view.pdt.PdtProductCategory.List', 'pdt', 30, NULL, 2);
INSERT INTO `sys_menu` VALUES (51, NULL, '店铺-产品类目', 'view.usr.UsrProductCategory.List', 'pdt', 40, NULL, 2);
INSERT INTO `sys_menu` VALUES (52, NULL, '产品属性', 'view.pdt.PdtAttribute.List', 'pdt', 50, NULL, 2);
INSERT INTO `sys_menu` VALUES (53, NULL, '产品顏色', 'view.pdt.PdtColor.List', 'pdt', 60, NULL, 2);
INSERT INTO `sys_menu` VALUES (54, NULL, '产品尺寸', 'view.pdt.PdtSize.List', 'pdt', 70, NULL, 2);
INSERT INTO `sys_menu` VALUES (55, NULL, '订单管理', 'view.odr.OdrOdr.List', 'odr', 10, NULL, 2);
INSERT INTO `sys_menu` VALUES (56, NULL, '供应商', NULL, 'usr', 10, NULL, 1);

-- ----------------------------
-- Table structure for sys_menu_act
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_act`;
CREATE TABLE `sys_menu_act`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `menu` int(11) NOT NULL,
  `act` int(11) NOT NULL,
  `table_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `css` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` smallint(6) NOT NULL,
  `ico` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `menu`(`menu`, `act`) USING BTREE,
  INDEX `menu_2`(`menu`, `sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 213 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu_act
-- ----------------------------
INSERT INTO `sys_menu_act` VALUES (1, 1, 1, 'irille.core.sys.SysOrg', '机构信息', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (2, 1, 2, 'irille.core.sys.SysOrg', '机构信息', 'ins', '新增', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (3, 1, 3, 'irille.core.sys.SysOrg', '机构信息', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (4, 1, 712, 'irille.core.sys.SysOrg', '机构信息', 'del', '删除', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (5, 1, 4, 'irille.core.sys.SysOrg', '机构信息', 'doEnabled', '启用', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (6, 1, 5, 'irille.core.sys.SysOrg', '机构信息', 'unEnabled', '停用', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (8, 3, 7, 'irille.core.sys.SysDept', '部门信息', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (9, 3, 8, 'irille.core.sys.SysDept', '部门信息', 'ins', '新增', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (10, 3, 9, 'irille.core.sys.SysDept', '部门信息', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (11, 3, 713, 'irille.core.sys.SysDept', '部门信息', 'del', '删除', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (12, 3, 10, 'irille.core.sys.SysDept', '部门信息', 'edit', '联系人', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (13, 3, 11, 'irille.core.sys.SysDept', '部门信息', 'doEnabled', '启用', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (14, 3, 12, 'irille.core.sys.SysDept', '部门信息', 'unEnabled', '停用', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (15, 4, 13, 'irille.core.sys.SysEm', '职员信息', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (16, 4, 14, 'irille.core.sys.SysEm', '职员信息', 'ins', '新增', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (17, 4, 15, 'irille.core.sys.SysEm', '职员信息', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (18, 5, 16, 'irille.core.sys.SysUser', '用户管理', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (19, 5, 17, 'irille.core.sys.SysUser', '用户管理', 'ins', '新增', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (20, 5, 18, 'irille.core.sys.SysUser', '用户管理', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (21, 5, 19, 'irille.core.sys.SysUser', '用户管理', 'del', '删除', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (22, 5, 20, 'irille.core.sys.SysUser', '用户管理', 'pwd', '密码修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (23, 5, 21, 'irille.core.sys.SysUser', '用户管理', 'role', '角色设置', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (24, 6, 26, 'irille.core.sys.SysTemplat', '财务模板', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (25, 6, 27, 'irille.core.sys.SysTemplat', '财务模板', 'ins', '新增', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (26, 6, 28, 'irille.core.sys.SysTemplat', '财务模板', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (27, 6, 714, 'irille.core.sys.SysTemplat', '财务模板', 'del', '删除', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (28, 6, 30, 'irille.core.sys.SysTemplat', '财务模板', 'doEnabled', '启用', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (29, 6, 31, 'irille.core.sys.SysTemplat', '财务模板', 'unEnabled', '停用', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (37, 8, 22, 'irille.core.sys.SysCell', '核算单元', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (38, 8, 23, 'irille.core.sys.SysCell', '核算单元', 'ins', '新增', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (39, 8, 24, 'irille.core.sys.SysCell', '核算单元', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (40, 8, 25, 'irille.core.sys.SysCell', '核算单元', 'del', '删除', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (43, 10, 715, 'irille.core.sys.SysSupplier', '供应商信息', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (44, 10, 44, 'irille.core.sys.SysSupplier', '供应商信息', 'ins', '新增', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (45, 10, 45, 'irille.core.sys.SysSupplier', '供应商信息', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (46, 10, 716, 'irille.core.sys.SysSupplier', '供应商信息', 'del', '删除', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (47, 10, 46, 'irille.core.sys.SysSupplier', '供应商信息', 'edit', '联系人', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (48, 10, 47, 'irille.core.sys.SysSupplier', '供应商信息', 'doEnabled', '启用', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (49, 10, 48, 'irille.core.sys.SysSupplier', '供应商信息', 'unEnabled', '停用', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (50, 11, 717, 'irille.core.sys.SysCustom', '客户信息', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (51, 11, 49, 'irille.core.sys.SysCustom', '客户信息', 'ins', '新增', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (52, 11, 50, 'irille.core.sys.SysCustom', '客户信息', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (53, 11, 718, 'irille.core.sys.SysCustom', '客户信息', 'del', '删除', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (54, 11, 51, 'irille.core.sys.SysCustom', '客户信息', 'edit', '联系人', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (55, 11, 52, 'irille.core.sys.SysCustom', '客户信息', 'doEnabled', '启用', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (56, 11, 53, 'irille.core.sys.SysCustom', '客户信息', 'unEnabled', '停用', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (57, 14, 57, 'irille.core.lg.LgLogin', '登录日志', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (58, 15, 58, 'irille.core.lg.LgTran', '交易日志', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (59, 17, 59, 'irille.core.prv.PrvRole', '角色管理', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (60, 17, 60, 'irille.core.prv.PrvRole', '角色管理', 'ins', '新增', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (61, 17, 61, 'irille.core.prv.PrvRole', '角色管理', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (62, 17, 62, 'irille.core.prv.PrvRole', '角色管理', 'del', '删除', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (63, 17, 63, 'irille.core.prv.PrvRole', '角色管理', 'updCtrl', '权限控制', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (64, 18, 70, 'irille.core.prv.PrvRoleTran', '交易资源权限', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (65, 18, 71, 'irille.core.prv.PrvRoleTran', '交易资源权限', 'ins', '新增', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (66, 18, 72, 'irille.core.prv.PrvRoleTran', '交易资源权限', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (67, 18, 73, 'irille.core.prv.PrvRoleTran', '交易资源权限', 'del', '删除', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (68, 19, 66, 'irille.core.prv.PrvTranGrp', '资源控制组', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (69, 19, 67, 'irille.core.prv.PrvTranGrp', '资源控制组', 'ins', '新增', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (70, 19, 68, 'irille.core.prv.PrvTranGrp', '资源控制组', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (71, 19, 69, 'irille.core.prv.PrvTranGrp', '资源控制组', 'del', '删除', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (72, 20, 64, 'irille.core.prv.PrvTranData', '资源数据', 'list', '查询', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (73, 20, 65, 'irille.core.prv.PrvTranData', '资源数据', 'upd', '修改', NULL, 0, NULL, 16);
INSERT INTO `sys_menu_act` VALUES (74, 21, 813, 'irille.exp.exp.ExpBase', '测试菜单', 'list', '查询', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (75, 21, 814, 'irille.exp.exp.ExpBase', '测试菜单', 'ins', '新增', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (76, 21, 815, 'irille.exp.exp.ExpBase', '测试菜单', 'upd', '修改', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (77, 21, 816, 'irille.exp.exp.ExpBase', '测试菜单', 'del', '删除', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (78, 21, 817, 'irille.exp.exp.ExpBase', '测试菜单', 'doEnabled', '启用', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (79, 21, 818, 'irille.exp.exp.ExpBase', '测试菜单', 'unEnabled', '停用', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (80, 21, 819, 'irille.exp.exp.ExpBase', '测试菜单', 'todo', '处理', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (81, 21, 820, 'irille.exp.exp.ExpBase', '测试菜单', 'undo', '撤销', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (82, 22, 821, 'irille.exp.exp.ExpKind', '测试类型', 'list', '查询', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (83, 22, 822, 'irille.exp.exp.ExpKind', '测试类型', 'ins', '新增', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (84, 22, 823, 'irille.exp.exp.ExpKind', '测试类型', 'upd', '修改', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (85, 22, 824, 'irille.exp.exp.ExpKind', '测试类型', 'del', '删除', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (86, 23, 825, 'irille.exp.exp.ExpComp', '复合界面', 'list', '查询', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (87, 23, 826, 'irille.exp.exp.ExpComp', '复合界面', 'ins', '新增', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (88, 23, 827, 'irille.exp.exp.ExpComp', '复合界面', 'upd', '修改', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (89, 23, 828, 'irille.exp.exp.ExpComp', '复合界面', 'del', '删除', NULL, 0, NULL, 3);
INSERT INTO `sys_menu_act` VALUES (136, 39, 905, 'irille.shop.usr.UsrSupplier', '供应商', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (137, 39, 906, 'irille.shop.usr.UsrSupplier', '供应商', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (138, 39, 907, 'irille.shop.usr.UsrSupplier', '供应商', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (139, 39, 908, 'irille.shop.usr.UsrSupplier', '供应商', 'updBase', '基本信息', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (140, 39, 909, 'irille.shop.usr.UsrSupplier', '供应商', 'updPage', '页面资料', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (141, 39, 910, 'irille.shop.usr.UsrSupplier', '供应商', 'updDiy', '个性装修', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (142, 39, 911, 'irille.shop.usr.UsrSupplier', '供应商', 'updMarketing', '营销设置', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (143, 40, 901, 'irille.shop.usr.UsrSupplierCategory', '供应商分类', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (144, 40, 902, 'irille.shop.usr.UsrSupplierCategory', '供应商分类', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (145, 40, 903, 'irille.shop.usr.UsrSupplierCategory', '供应商分类', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (146, 40, 904, 'irille.shop.usr.UsrSupplierCategory', '供应商分类', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (147, 42, 916, 'irille.shop.usr.UsrMemberLevel', '会员等级', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (148, 42, 917, 'irille.shop.usr.UsrMemberLevel', '会员等级', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (149, 42, 918, 'irille.shop.usr.UsrMemberLevel', '会员等级', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (150, 42, 919, 'irille.shop.usr.UsrMemberLevel', '会员等级', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (151, 42, 920, 'irille.shop.usr.UsrMemberLevel', '会员等级', 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (152, 42, 921, 'irille.shop.usr.UsrMemberLevel', '会员等级', 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (153, 44, 927, 'irille.shop.usr.UsrSupplierRole', '供应商角色', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (154, 44, 928, 'irille.shop.usr.UsrSupplierRole', '供应商角色', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (155, 44, 929, 'irille.shop.usr.UsrSupplierRole', '供应商角色', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (156, 44, 930, 'irille.shop.usr.UsrSupplierRole', '供应商角色', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (157, 44, 931, 'irille.shop.usr.UsrSupplierRole', '供应商角色', 'setDefault', '设为默认', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (158, 44, 932, 'irille.shop.usr.UsrSupplierRole', '供应商角色', 'updCtrl', '权限控制', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (159, 45, 937, 'irille.shop.plt.PltPay', '支付设置', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (160, 45, 938, 'irille.shop.plt.PltPay', '支付设置', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (161, 45, 939, 'irille.shop.plt.PltPay', '支付设置', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (162, 45, 940, 'irille.shop.plt.PltPay', '支付设置', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (163, 45, 941, 'irille.shop.plt.PltPay', '支付设置', 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (164, 45, 942, 'irille.shop.plt.PltPay', '支付设置', 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (165, 46, 943, 'irille.shop.plt.PltErate', '费率设置', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (166, 46, 944, 'irille.shop.plt.PltErate', '费率设置', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (167, 46, 945, 'irille.shop.plt.PltErate', '费率设置', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (168, 46, 946, 'irille.shop.plt.PltErate', '费率设置', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (169, 46, 947, 'irille.shop.plt.PltErate', '费率设置', 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (170, 46, 948, 'irille.shop.plt.PltErate', '费率设置', 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (171, 46, 949, 'irille.shop.plt.PltErate', '费率设置', 'defcur', '网站默认货币', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (172, 46, 950, 'irille.shop.plt.PltErate', '费率设置', 'bcdefcur', '后台默认货币', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (173, 47, 951, 'irille.shop.plt.PltCountry', '国家管理', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (174, 47, 952, 'irille.shop.plt.PltCountry', '国家管理', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (175, 47, 953, 'irille.shop.plt.PltCountry', '国家管理', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (176, 47, 954, 'irille.shop.plt.PltCountry', '国家管理', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (177, 47, 955, 'irille.shop.plt.PltCountry', '国家管理', 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (178, 47, 956, 'irille.shop.plt.PltCountry', '国家管理', 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (179, 47, 957, 'irille.shop.plt.PltCountry', '国家管理', 'hot', '热门国家', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (180, 48, 958, 'irille.shop.plt.PltFreight', '运费管理', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (181, 48, 959, 'irille.shop.plt.PltFreight', '运费管理', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (182, 48, 960, 'irille.shop.plt.PltFreight', '运费管理', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (183, 48, 961, 'irille.shop.plt.PltFreight', '运费管理', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (184, 48, 962, 'irille.shop.plt.PltFreight', '运费管理', 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (185, 48, 963, 'irille.shop.plt.PltFreight', '运费管理', 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (186, 49, 964, 'irille.shop.pdt.PdtProduct', '产品', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (187, 49, 965, 'irille.shop.pdt.PdtProduct', '产品', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (188, 49, 966, 'irille.shop.pdt.PdtProduct', '产品', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (189, 49, 967, 'irille.shop.pdt.PdtProduct', '产品', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (190, 50, 968, 'irille.shop.pdt.PdtProductCategory', '产品类目', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (191, 50, 969, 'irille.shop.pdt.PdtProductCategory', '产品类目', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (192, 50, 970, 'irille.shop.pdt.PdtProductCategory', '产品类目', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (193, 50, 971, 'irille.shop.pdt.PdtProductCategory', '产品类目', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (194, 50, 972, 'irille.shop.pdt.PdtProductCategory', '产品类目', 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (195, 50, 973, 'irille.shop.pdt.PdtProductCategory', '产品类目', 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (196, 51, 912, 'irille.shop.usr.UsrProductCategory', '店铺-产品类目', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (197, 51, 913, 'irille.shop.usr.UsrProductCategory', '店铺-产品类目', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (198, 51, 914, 'irille.shop.usr.UsrProductCategory', '店铺-产品类目', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (199, 51, 915, 'irille.shop.usr.UsrProductCategory', '店铺-产品类目', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (200, 52, 978, 'irille.shop.pdt.PdtAttribute', '产品属性', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (201, 53, 979, 'irille.shop.pdt.PdtColor', '产品顏色', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (202, 53, 980, 'irille.shop.pdt.PdtColor', '产品顏色', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (203, 53, 981, 'irille.shop.pdt.PdtColor', '产品顏色', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (204, 53, 982, 'irille.shop.pdt.PdtColor', '产品顏色', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (205, 54, 983, 'irille.shop.pdt.PdtSize', '产品尺寸', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (206, 54, 984, 'irille.shop.pdt.PdtSize', '产品尺寸', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (207, 54, 985, 'irille.shop.pdt.PdtSize', '产品尺寸', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (208, 54, 986, 'irille.shop.pdt.PdtSize', '产品尺寸', 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (209, 55, 996, 'irille.shop.odr.OdrOdr', '订单管理', 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (210, 55, 997, 'irille.shop.odr.OdrOdr', '订单管理', 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (211, 55, 998, 'irille.shop.odr.OdrOdr', '订单管理', 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_menu_act` VALUES (212, 55, 999, 'irille.shop.odr.OdrOdr', '订单管理', 'del', '删除', NULL, 0, NULL, 2);

-- ----------------------------
-- Table structure for sys_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module`  (
  `pkey` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `licenses` int(11) NOT NULL,
  `menus` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_module
-- ----------------------------
INSERT INTO `sys_module` VALUES ('Exp', '测试模块', 0, 'exp-测试管理-800', 3);
INSERT INTO `sys_module` VALUES ('Lg', '日志模块', 0, NULL, 5);
INSERT INTO `sys_module` VALUES ('Odr', '订单管理', 0, 'odr-订单管理-300', 2);
INSERT INTO `sys_module` VALUES ('Pdt', '产品', 0, 'pdt-产品-500', 2);
INSERT INTO `sys_module` VALUES ('Plt', '平台管理', 0, 'plt-平台管理-100', 2);
INSERT INTO `sys_module` VALUES ('Prv', '权限管理', 0, NULL, 5);
INSERT INTO `sys_module` VALUES ('Sys', '系统模块', 0, 'sys-系统管理-999', 5);
INSERT INTO `sys_module` VALUES ('Usr', '用户', 0, 'usr-用户-400', 2);

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL,
  `org_up` int(11) NULL DEFAULT NULL,
  `work_date` date NOT NULL,
  `state` tinyint(4) NOT NULL,
  `templat` int(11) NOT NULL,
  `valuation_methods` tinyint(4) NOT NULL,
  `internation_trade` tinyint(4) NOT NULL,
  `currency` tinyint(4) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  INDEX `org_up`(`org_up`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES (1, '101', '律雅视觉文化（上海）有限公司', '律雅视觉', 1, NULL, '2015-08-11', 2, 1, 1, 1, 1, 1);

-- ----------------------------
-- Table structure for sys_person
-- ----------------------------
DROP TABLE IF EXISTS `sys_person`;
CREATE TABLE `sys_person`  (
  `pkey` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pe_card_type` tinyint(4) NULL DEFAULT NULL,
  `pe_card_numb` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_mobile_other` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_wx` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_qq` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_wb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_msn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_sex` tinyint(4) NULL DEFAULT NULL,
  `pe_birthday` date NULL DEFAULT NULL,
  `pe_merry` tinyint(4) NULL DEFAULT NULL,
  `pe_edu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_degree` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_positional_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_driving_license` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_party` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_belief` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_company_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_dept_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_website` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_zip_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ho_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ho_addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ho_zip_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date_time` datetime(0) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_person
-- ----------------------------
INSERT INTO `sys_person` VALUES (100003, '管理员', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2015-08-11 14:33:45', 1, '2015-08-11 14:33:45', 1);

-- ----------------------------
-- Table structure for sys_person_link
-- ----------------------------
DROP TABLE IF EXISTS `sys_person_link`;
CREATE TABLE `sys_person_link`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tb_obj_long` bigint(20) NOT NULL,
  `type` tinyint(4) NULL DEFAULT NULL,
  `pe_card_type` tinyint(4) NULL DEFAULT NULL,
  `pe_card_numb` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_mobile_other` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_wx` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_qq` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_wb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_msn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_sex` tinyint(4) NULL DEFAULT NULL,
  `pe_birthday` date NULL DEFAULT NULL,
  `pe_merry` tinyint(4) NULL DEFAULT NULL,
  `pe_edu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_degree` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_positional_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_driving_license` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_party` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pe_belief` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_company_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_dept_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_website` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_zip_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date_time` datetime(0) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `disp_scope2` tinyint(4) NOT NULL,
  `scope_obj_pkey` int(11) NULL DEFAULT NULL,
  `postlevel` smallint(6) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  INDEX `code`(`code`) USING BTREE,
  INDEX `disp_scope2`(`disp_scope2`, `scope_obj_pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_project
-- ----------------------------
DROP TABLE IF EXISTS `sys_project`;
CREATE TABLE `sys_project`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` tinyint(4) NOT NULL,
  `org` int(11) NOT NULL,
  `dept` int(11) NOT NULL,
  `manager` int(11) NULL DEFAULT NULL,
  `plan_b_date` date NULL DEFAULT NULL,
  `plan_e_date` date NULL DEFAULT NULL,
  `reality_b_date` date NULL DEFAULT NULL,
  `reality_e_date` date NULL DEFAULT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  INDEX `org`(`org`, `dept`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_seq
-- ----------------------------
DROP TABLE IF EXISTS `sys_seq`;
CREATE TABLE `sys_seq`  (
  `pkey` int(11) NOT NULL,
  `org_flag` tinyint(4) NOT NULL,
  `first_str` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_seq
-- ----------------------------
INSERT INTO `sys_seq` VALUES (14, 0, NULL, 1, 1);
INSERT INTO `sys_seq` VALUES (15, 0, NULL, 1, 1);
INSERT INTO `sys_seq` VALUES (2001, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2204, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2402, 0, NULL, 1, 1);
INSERT INTO `sys_seq` VALUES (2451, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2452, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2453, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2454, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2455, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2458, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2459, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2460, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2461, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2602, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2605, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2613, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (2614, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4411, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4412, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4415, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4416, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4418, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4419, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4611, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4612, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4615, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4616, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4618, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (4619, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6201, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6202, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6203, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6204, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6205, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6206, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6207, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6208, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6209, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6210, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6801, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6802, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6803, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6804, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6806, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6808, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6809, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (6810, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (7001, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (7002, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (7003, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (7004, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (7005, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (7006, 1, NULL, 4, 1);
INSERT INTO `sys_seq` VALUES (7014, 1, NULL, 4, 1);

-- ----------------------------
-- Table structure for sys_seq_line
-- ----------------------------
DROP TABLE IF EXISTS `sys_seq_line`;
CREATE TABLE `sys_seq_line`  (
  `pkey` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `org` int(11) NULL DEFAULT NULL,
  `ymd` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seqnum` int(11) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_shiping
-- ----------------------------
DROP TABLE IF EXISTS `sys_shiping`;
CREATE TABLE `sys_shiping`  (
  `pkey` bigint(20) NOT NULL,
  `shiping_form` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time_ship_plan` datetime(0) NULL DEFAULT NULL,
  `time_ship` datetime(0) NULL DEFAULT NULL,
  `time_arr_plan` datetime(0) NULL DEFAULT NULL,
  `time_arr` datetime(0) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_supplier
-- ----------------------------
DROP TABLE IF EXISTS `sys_supplier`;
CREATE TABLE `sys_supplier`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_person_flag` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `mng_org` int(11) NOT NULL,
  `mng_dept` int(11) NULL DEFAULT NULL,
  `business_member` int(11) NULL DEFAULT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  INDEX `short_name`(`short_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_supplier_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_supplier_org`;
CREATE TABLE `sys_supplier_org`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `supplier` int(11) NOT NULL,
  `org` int(11) NOT NULL,
  `dept` int(11) NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_system
-- ----------------------------
DROP TABLE IF EXISTS `sys_system`;
CREATE TABLE `sys_system`  (
  `pkey` int(11) NOT NULL,
  `product_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `licence_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_date` date NOT NULL,
  `sys_state` tinyint(4) NOT NULL,
  `ctrl` tinyint(4) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_table
-- ----------------------------
DROP TABLE IF EXISTS `sys_table`;
CREATE TABLE `sys_table`  (
  `pkey` int(11) NOT NULL,
  `code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `buf_type` tinyint(4) NOT NULL,
  `seqnum` bigint(20) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_table
-- ----------------------------
INSERT INTO `sys_table` VALUES (1, 'irille.core.sys.SysOrg', '机构信息', '机构', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (2, 'irille.core.sys.SysDept', '部门信息', '部门', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (3, 'irille.core.sys.SysEm', '职员信息', '职员', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (4, 'irille.core.sys.SysUser', '用户管理', '用户', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (5, 'irille.core.sys.SysCell', '核算单元', '核算单元', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (6, 'irille.core.sys.SysTemplat', '财务模板', '财务模板', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (7, 'irille.core.sys.SysProject', '项目信息', '项目', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (9, 'irille.core.sys.SysGrp', '用户组管理', '用户组管理', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (10, 'irille.core.sys.SysPost', '职位管理', '职位', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (11, 'irille.core.sys.SysMenu', '系统菜单', '系统菜单', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (12, 'irille.core.sys.SysMenuAct', '菜单功能', '菜单功能', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (13, 'irille.core.sys.SysPersonLink', '联系人', '联系人', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (14, 'irille.core.sys.SysSupplier', '供应商信息', '供应商', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (15, 'irille.core.sys.SysCustom', '客户信息', '客户', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (16, 'irille.core.sys.SysSeq', '序号主表', '序号主表', 1, 0, 0, 30);
INSERT INTO `sys_table` VALUES (17, 'irille.core.sys.SysTable', '数据表信息', '表', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (18, 'irille.core.sys.SysCtype', '系统参数', '系统参数', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (19, 'irille.core.sys.SysAccessory', '附件表', '附件表', 1, 0, 0, 5);
INSERT INTO `sys_table` VALUES (201, 'irille.core.lg.LgAttemper', '周期调度日志', '周期调度日志', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (202, 'irille.core.lg.LgLogin', '登录日志', '登录日志', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (203, 'irille.core.lg.LgTran', '交易日志', '交易日志', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (601, 'irille.core.prv.PrvRole', '角色管理', '角色管理', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (602, 'irille.core.prv.PrvTranData', '资源数据', '资源数据', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (603, 'irille.core.prv.PrvTranGrp', '资源控制组', '资源控制组', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (604, 'irille.core.prv.PrvRoleTran', '交易资源权限', '交易资源权限', 1, 0, 0, 31);
INSERT INTO `sys_table` VALUES (1101, 'irille.shop.plt.PltPay', '支付设置', '支付设置', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1102, 'irille.shop.plt.PltErate', '费率设置', '费率设置', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1110, 'irille.shop.plt.PltCountry', '国家管理', '国家管理', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1120, 'irille.shop.plt.PltFreight', '运费管理', '运费管理', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1201, 'irille.shop.pdt.PdtProduct', '产品', '产品', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1202, 'irille.shop.pdt.PdtProductCategory', '产品类目', '产品类目', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1203, 'irille.shop.pdt.PdtAttributeCategory', '属性分类', '属性分类', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1204, 'irille.shop.pdt.PdtAttribute', '产品属性', '产品属性', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1205, 'irille.shop.pdt.PdtColor', '产品顏色', '产品顏色', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1206, 'irille.shop.pdt.PdtSize', '产品尺寸', '产品尺寸', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1207, 'irille.shop.pdt.PdtAppraise', '评论', '评论', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1208, 'irille.shop.pdt.PdtAsk', '询盘', '询盘', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1301, 'irille.shop.odr.OdrOdr', '订单管理', '订单管理', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (1302, 'irille.shop.odr.OdrOdrLine', '订单详情', '订单详情', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (8201, 'irille.exp.exp.ExpBase', '测试菜单', '测试菜单', 1, 0, 0, 3);
INSERT INTO `sys_table` VALUES (8202, 'irille.exp.exp.ExpKind', '测试类型', '测试类型', 1, 0, 0, 3);
INSERT INTO `sys_table` VALUES (8203, 'irille.exp.exp.ExpComp', '复合界面', '复合界面', 1, 0, 0, 3);
INSERT INTO `sys_table` VALUES (8301, 'irille.shop.usr.UsrSupplierCategory', '供应商分类', '供应商分类', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (8302, 'irille.shop.usr.UsrSupplier', '供应商', '供应商', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (8303, 'irille.shop.usr.UsrProductCategory', '店铺-产品类目', '店铺-产品类目', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (8305, 'irille.shop.usr.UsrMemberLevel', '会员等级', '会员等级', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (8306, 'irille.shop.usr.UsrPurchase', '采购商', '采购商', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (8307, 'irille.shop.usr.UsrSupplierRole', '供应商角色', '供应商角色', 1, 0, 0, 2);
INSERT INTO `sys_table` VALUES (8308, 'irille.shop.usr.UsrSupplierRoleAct', '交易功能权限', '交易功能权限', 1, 0, 0, 2);

-- ----------------------------
-- Table structure for sys_table_act
-- ----------------------------
DROP TABLE IF EXISTS `sys_table_act`;
CREATE TABLE `sys_table_act`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `sys_table` int(11) NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `css` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` smallint(6) NOT NULL,
  `ico` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `sys_table`(`sys_table`, `code`) USING BTREE,
  INDEX `sys_table_2`(`sys_table`, `sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1004 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_table_act
-- ----------------------------
INSERT INTO `sys_table_act` VALUES (1, 1, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (2, 1, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (3, 1, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (4, 1, 'doEnabled', '启用', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (5, 1, 'unEnabled', '停用', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (6, 1, 'ded', '日终处理', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (7, 2, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (8, 2, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (9, 2, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (10, 2, 'edit', '联系人', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (11, 2, 'doEnabled', '启用', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (12, 2, 'unEnabled', '停用', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (13, 3, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (14, 3, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (15, 3, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (16, 4, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (17, 4, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (18, 4, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (19, 4, 'del', '删除', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (20, 4, 'pwd', '密码修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (21, 4, 'role', '角色设置', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (22, 5, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (23, 5, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (24, 5, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (25, 5, 'del', '删除', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (26, 6, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (27, 6, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (28, 6, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (29, 6, 'edit', '编辑', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (30, 6, 'doEnabled', '启用', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (31, 6, 'unEnabled', '停用', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (32, 7, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (33, 7, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (34, 7, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (35, 7, 'del', '删除', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (36, 9, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (37, 9, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (38, 9, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (39, 9, 'del', '删除', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (40, 10, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (41, 10, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (42, 10, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (43, 10, 'del', '删除', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (44, 14, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (45, 14, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (46, 14, 'edit', '联系人', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (47, 14, 'doEnabled', '启用', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (48, 14, 'unEnabled', '停用', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (49, 15, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (50, 15, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (51, 15, 'edit', '联系人', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (52, 15, 'doEnabled', '启用', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (53, 15, 'unEnabled', '停用', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (54, 17, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (55, 18, 'edit', '编辑', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (56, 18, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (57, 202, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (58, 203, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (59, 601, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (60, 601, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (61, 601, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (62, 601, 'del', '删除', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (63, 601, 'updCtrl', '权限控制', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (64, 602, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (65, 602, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (66, 603, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (67, 603, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (68, 603, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (69, 603, 'del', '删除', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (70, 604, 'list', '查询', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (71, 604, 'ins', '新增', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (72, 604, 'upd', '修改', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (73, 604, 'del', '删除', NULL, 0, NULL, 31);
INSERT INTO `sys_table_act` VALUES (707, 16, 'list', '查询', NULL, 0, NULL, 30);
INSERT INTO `sys_table_act` VALUES (712, 1, 'del', '删除', NULL, 0, NULL, 18);
INSERT INTO `sys_table_act` VALUES (713, 2, 'del', '删除', NULL, 0, NULL, 18);
INSERT INTO `sys_table_act` VALUES (714, 6, 'del', '删除', NULL, 0, NULL, 18);
INSERT INTO `sys_table_act` VALUES (715, 14, 'list', '查询', NULL, 0, NULL, 18);
INSERT INTO `sys_table_act` VALUES (716, 14, 'del', '删除', NULL, 0, NULL, 18);
INSERT INTO `sys_table_act` VALUES (717, 15, 'list', '查询', NULL, 0, NULL, 18);
INSERT INTO `sys_table_act` VALUES (718, 15, 'del', '删除', NULL, 0, NULL, 18);
INSERT INTO `sys_table_act` VALUES (809, 19, 'list', '查询', NULL, 0, NULL, 5);
INSERT INTO `sys_table_act` VALUES (810, 19, 'ins', '新增', NULL, 0, NULL, 5);
INSERT INTO `sys_table_act` VALUES (811, 19, 'upd', '修改', NULL, 0, NULL, 5);
INSERT INTO `sys_table_act` VALUES (812, 19, 'del', '删除', NULL, 0, NULL, 5);
INSERT INTO `sys_table_act` VALUES (813, 8201, 'list', '查询', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (814, 8201, 'ins', '新增', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (815, 8201, 'upd', '修改', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (816, 8201, 'del', '删除', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (817, 8201, 'doEnabled', '启用', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (818, 8201, 'unEnabled', '停用', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (819, 8201, 'todo', '处理', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (820, 8201, 'undo', '撤销', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (821, 8202, 'list', '查询', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (822, 8202, 'ins', '新增', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (823, 8202, 'upd', '修改', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (824, 8202, 'del', '删除', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (825, 8203, 'list', '查询', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (826, 8203, 'ins', '新增', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (827, 8203, 'upd', '修改', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (828, 8203, 'del', '删除', NULL, 0, NULL, 3);
INSERT INTO `sys_table_act` VALUES (901, 8301, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (902, 8301, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (903, 8301, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (904, 8301, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (905, 8302, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (906, 8302, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (907, 8302, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (908, 8302, 'updBase', '基本信息', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (909, 8302, 'updPage', '页面资料', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (910, 8302, 'updDiy', '个性装修', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (911, 8302, 'updMarketing', '营销设置', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (912, 8303, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (913, 8303, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (914, 8303, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (915, 8303, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (916, 8305, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (917, 8305, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (918, 8305, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (919, 8305, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (920, 8305, 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (921, 8305, 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (922, 8306, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (923, 8306, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (924, 8306, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (925, 8306, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (926, 8306, 'uda', '修改密码', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (927, 8307, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (928, 8307, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (929, 8307, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (930, 8307, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (931, 8307, 'setDefault', '设为默认', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (932, 8307, 'updCtrl', '权限控制', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (933, 8308, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (934, 8308, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (935, 8308, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (936, 8308, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (937, 1101, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (938, 1101, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (939, 1101, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (940, 1101, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (941, 1101, 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (942, 1101, 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (943, 1102, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (944, 1102, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (945, 1102, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (946, 1102, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (947, 1102, 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (948, 1102, 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (949, 1102, 'defcur', '网站默认货币', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (950, 1102, 'bcdefcur', '后台默认货币', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (951, 1110, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (952, 1110, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (953, 1110, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (954, 1110, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (955, 1110, 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (956, 1110, 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (957, 1110, 'hot', '热门国家', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (958, 1120, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (959, 1120, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (960, 1120, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (961, 1120, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (962, 1120, 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (963, 1120, 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (964, 1201, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (965, 1201, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (966, 1201, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (967, 1201, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (968, 1202, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (969, 1202, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (970, 1202, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (971, 1202, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (972, 1202, 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (973, 1202, 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (974, 1203, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (975, 1203, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (976, 1203, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (977, 1203, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (978, 1204, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (979, 1205, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (980, 1205, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (981, 1205, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (982, 1205, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (983, 1206, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (984, 1206, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (985, 1206, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (986, 1206, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (987, 1207, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (988, 1207, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (989, 1208, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (990, 1208, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (991, 1208, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (992, 1208, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (993, 1208, 'doEnabled', '启用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (994, 1208, 'unEnabled', '停用', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (995, 1208, 'msg', '新消息', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (996, 1301, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (997, 1301, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (998, 1301, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (999, 1301, 'del', '删除', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (1000, 1302, 'list', '查询', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (1001, 1302, 'ins', '新增', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (1002, 1302, 'upd', '修改', NULL, 0, NULL, 2);
INSERT INTO `sys_table_act` VALUES (1003, 1302, 'del', '删除', NULL, 0, NULL, 2);

-- ----------------------------
-- Table structure for sys_templat
-- ----------------------------
DROP TABLE IF EXISTS `sys_templat`;
CREATE TABLE `sys_templat`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `year` smallint(6) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mng_cell` int(11) NULL DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL,
  `rem` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `code`(`code`, `year`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_templat
-- ----------------------------
INSERT INTO `sys_templat` VALUES (1, 1, 'T01', 2015, '标准模板', NULL, 1, NULL, 1);

-- ----------------------------
-- Table structure for sys_templat_cell
-- ----------------------------
DROP TABLE IF EXISTS `sys_templat_cell`;
CREATE TABLE `sys_templat_cell`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `templat` int(11) NOT NULL,
  `cell` int(11) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `templat`(`templat`, `cell`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_state` tinyint(4) NOT NULL,
  `org` int(11) NOT NULL,
  `dept` int(11) NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tb_obj` bigint(20) NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `login_name`(`login_name`) USING BTREE,
  INDEX `org`(`org`, `dept`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '管理员', NULL, 1, 1, 1, NULL, 100003, 22);

-- ----------------------------
-- Table structure for sys_user_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_login`;
CREATE TABLE `sys_user_login`  (
  `pkey` int(11) NOT NULL,
  `pc_last_login_time` datetime(0) NULL DEFAULT NULL,
  `pc_last_login_ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mo_last_login_time` datetime(0) NULL DEFAULT NULL,
  `mo_last_login_ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_type` tinyint(4) NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `law_less_count` tinyint(4) NOT NULL,
  `law_less_date_time` datetime(0) NULL DEFAULT NULL,
  `cookies_keep_days` smallint(6) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_login
-- ----------------------------
INSERT INTO `sys_user_login` VALUES (1, NULL, NULL, NULL, NULL, 1, 'eeafb716f93fa090d7716749a6eefa72', NULL, 0, NULL, 0, 1, '2015-08-11', 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `user_sys` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `user`(`user_sys`, `role`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, 1, 1);

-- ----------------------------
-- Table structure for usr_member_level
-- ----------------------------
DROP TABLE IF EXISTS `usr_member_level`;
CREATE TABLE `usr_member_level`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL,
  `discount` decimal(16, 2) NOT NULL,
  `conditolevel` decimal(16, 2) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime(0) NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usr_product_category
-- ----------------------------
DROP TABLE IF EXISTS `usr_product_category`;
CREATE TABLE `usr_product_category`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_up` int(11) NULL DEFAULT NULL,
  `supplier` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `seo_title_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `seo_keyword_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `seo_description_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usr_purchase
-- ----------------------------
DROP TABLE IF EXISTS `usr_purchase`;
CREATE TABLE `usr_purchase`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `reg_time` datetime(0) NULL DEFAULT NULL,
  `memberlevel` int(11) NULL DEFAULT NULL,
  `password` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login_time` datetime(0) NULL DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `note` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `reg_ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usr_purchase_line
-- ----------------------------
DROP TABLE IF EXISTS `usr_purchase_line`;
CREATE TABLE `usr_purchase_line`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `note` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `main` int(11) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usr_supplier
-- ----------------------------
DROP TABLE IF EXISTS `usr_supplier`;
CREATE TABLE `usr_supplier`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) NOT NULL,
  `login_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` int(11) NOT NULL,
  `is_auth` tinyint(4) NOT NULL,
  `sort` int(11) NOT NULL,
  `seo_title_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `seo_content_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `auth_time` datetime(0) NULL DEFAULT NULL,
  `show_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `entity` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `company_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `company_nature` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `credit_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_establish_time` date NULL DEFAULT NULL,
  `operation_term` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `main_sales_area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `main_prod` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `prod_pattern` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `des` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contacts` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qq` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cert_photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_card_front_photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_card_back_photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `coop_cert_photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `business_typ` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `production` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `developer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_employees` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `annual_sales` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `top3_markets` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `materials` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `head_pic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `department` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `job_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `website` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_pro` tinyint(4) NOT NULL,
  `logo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sign_backgd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ad_photo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ad_photo_mobile` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ad_photo_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_photo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_photo_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `home_page_diy` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_page_diy` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_page_diy` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `home_page_diy_mobile` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_page_diy_mobile` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_page_diy_mobile` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `trace_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `web_size_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `web_site` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tongji_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tongji_pwd` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `login_name`(`login_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usr_supplier_category
-- ----------------------------
DROP TABLE IF EXISTS `usr_supplier_category`;
CREATE TABLE `usr_supplier_category`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `show_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_up` int(11) NULL DEFAULT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usr_supplier_category
-- ----------------------------
INSERT INTO `usr_supplier_category` VALUES (6, '冷粘鞋', '冷粘鞋', NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `usr_supplier_category` VALUES (7, '模压鞋', '模压鞋', NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `usr_supplier_category` VALUES (8, '硫化鞋', '硫化鞋', NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `usr_supplier_category` VALUES (9, '注塑鞋', '注塑鞋', NULL, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `usr_supplier_category` VALUES (10, '缝纫鞋', '缝纫鞋', NULL, 1, '2018-07-10 10:21:35', 1);

-- ----------------------------
-- Table structure for usr_supplier_role
-- ----------------------------
DROP TABLE IF EXISTS `usr_supplier_role`;
CREATE TABLE `usr_supplier_role`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_default` tinyint(4) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_time` datetime(0) NOT NULL,
  `row_version` smallint(6) NOT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usr_supplier_role
-- ----------------------------
INSERT INTO `usr_supplier_role` VALUES (1, '01', '一级供应商', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `usr_supplier_role` VALUES (2, '02', '二级供应商', 1, 1, '2018-07-10 10:21:35', 1);
INSERT INTO `usr_supplier_role` VALUES (3, '03', '三级供应商', 1, 1, '2018-07-10 10:21:35', 1);

-- ----------------------------
-- Table structure for usr_supplier_role_act
-- ----------------------------
DROP TABLE IF EXISTS `usr_supplier_role_act`;
CREATE TABLE `usr_supplier_role_act`  (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) NOT NULL,
  `menu` int(11) NOT NULL,
  `act1` int(11) NULL DEFAULT NULL,
  `act2` int(11) NULL DEFAULT NULL,
  `act3` int(11) NULL DEFAULT NULL,
  `act4` int(11) NULL DEFAULT NULL,
  `act5` int(11) NULL DEFAULT NULL,
  `act6` int(11) NULL DEFAULT NULL,
  `act7` int(11) NULL DEFAULT NULL,
  `act8` int(11) NULL DEFAULT NULL,
  `act9` int(11) NULL DEFAULT NULL,
  `act10` int(11) NULL DEFAULT NULL,
  `act11` int(11) NULL DEFAULT NULL,
  `act12` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`pkey`) USING BTREE,
  UNIQUE INDEX `role`(`role`, `menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Procedure structure for getDicName
-- ----------------------------
DROP PROCEDURE IF EXISTS `getDicName`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDicName`(IN _in varchar(100), IN _inType varchar(100), OUT _out varchar(100))
BEGIN
   select `name` into _out from jc_dictionary where type=_inType and value=_in;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
