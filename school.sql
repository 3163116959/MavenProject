/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3308
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3308
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 07/08/2020 20:49:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provinceid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '石家庄市', 1);
INSERT INTO `city` VALUES (2, '秦皇岛', 1);
INSERT INTO `city` VALUES (3, '保定市', 1);
INSERT INTO `city` VALUES (4, '张家口', 1);
INSERT INTO `city` VALUES (5, '南昌市', 9);
INSERT INTO `city` VALUES (6, '九江市', 9);
INSERT INTO `city` VALUES (7, '宜春市', 9);
INSERT INTO `city` VALUES (8, '福州市', 8);
INSERT INTO `city` VALUES (9, '厦门市', 8);
INSERT INTO `city` VALUES (10, '泉州市', 8);
INSERT INTO `city` VALUES (11, '龙岩市', 8);
INSERT INTO `city` VALUES (12, '太原', 2);
INSERT INTO `city` VALUES (13, '大同', 2);
INSERT INTO `city` VALUES (14, '呼和浩特', 3);
INSERT INTO `city` VALUES (15, '包头', 3);
INSERT INTO `city` VALUES (16, '呼伦贝尔', 3);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `classId` int(11) NOT NULL,
  `className` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`classId`) USING BTREE,
  INDEX `className`(`className`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '软件工程1班');
INSERT INTO `class` VALUES (2, '软件工程2班');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('ls', '123456');
INSERT INTO `login` VALUES ('wg', '123456');
INSERT INTO `login` VALUES ('zs', '123456');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份名称',
  `jiancheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简称',
  `shenghui` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, '河北', '冀', '石家庄');
INSERT INTO `province` VALUES (2, '山西', '晋', '太原市');
INSERT INTO `province` VALUES (3, '内蒙古', '蒙', '呼和浩特市	');
INSERT INTO `province` VALUES (4, '辽宁', '辽', '沈阳');
INSERT INTO `province` VALUES (5, '江苏', '苏', '南京');
INSERT INTO `province` VALUES (6, '浙江', '浙', '杭州');
INSERT INTO `province` VALUES (7, '安徽', '皖', '合肥');
INSERT INTO `province` VALUES (8, '福建', '闽', '福州');
INSERT INTO `province` VALUES (9, '江西', '赣', '南昌');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stuId` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stuName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stuAge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stuSex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homeAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `className` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`stuId`) USING BTREE,
  INDEX `className`(`className`) USING BTREE,
  CONSTRAINT `className` FOREIGN KEY (`className`) REFERENCES `class` (`classname`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201801', '张三', '20', '男', '河北省邯郸市', '软件工程1班');
INSERT INTO `student` VALUES ('201802', '李四', '15', '女', '河北省邯郸市', '软件工程2班');
INSERT INTO `student` VALUES ('201803', '王五', '25', '男', '河北省邯郸市', '软件工程2班');
INSERT INTO `student` VALUES ('201804', '刘老根2', '21', '女', '河北省', '软件工程1班');
INSERT INTO `student` VALUES ('201805', '赵六', '500', '女', '河北省', '软件工程2班');
INSERT INTO `student` VALUES ('201806', '李狗蛋3', '700', '女', '河北省', '软件工程2班');

SET FOREIGN_KEY_CHECKS = 1;
