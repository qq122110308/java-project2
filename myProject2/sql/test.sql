/*
Navicat MySQL Data Transfer

Source Server         : 1204
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-23 08:56:11
*/ 

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `role_type` varchar(10) DEFAULT NULL COMMENT '是否可用',
  `role_createtime` varchar(20) DEFAULT NULL COMMENT '角色创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', '1', '2017-12-21');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `subjectname` varchar(50) NOT NULL,
  `score` float NOT NULL,
  `examTime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '1', '数学', '92', '2017-12-10');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `score_sum` varchar(50) DEFAULT NULL,
  `score_avg` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `score` varchar(50) DEFAULT NULL,
  `sum` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '阮洋', '508', '92', '18', '92', '5');
INSERT INTO `student` VALUES ('2', '张三', '516', '93', '19', '93', '5');
INSERT INTO `student` VALUES ('3', '李四', '515', '93', '20', '94', '4');

-- ----------------------------
-- Table structure for `sys`
-- ----------------------------
DROP TABLE IF EXISTS `sys`;
CREATE TABLE `sys` (
  `sys_id` int(11) NOT NULL,
  `sys_name` varchar(50) DEFAULT NULL COMMENT '功能名称',
  `sys_type` int(11) DEFAULT '0' COMMENT '是否启用',
  `sys_url` varchar(50) DEFAULT NULL COMMENT '功能地址',
  `sys_icon` varchar(50) DEFAULT NULL COMMENT '功能图标',
  `sys_last` varchar(50) DEFAULT '0' COMMENT '上级id',
  PRIMARY KEY (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys
-- ----------------------------
INSERT INTO `sys` VALUES ('1', '系统功能', '1', '', null, '0');
INSERT INTO `sys` VALUES ('2', '系统功能', '1', '/sys/goIndex', null, '1');
INSERT INTO `sys` VALUES ('3', '用户功能', '1', null, null, '0');
INSERT INTO `sys` VALUES ('4', '用户功能', '1', '/user/goIndex', null, '3');
INSERT INTO `sys` VALUES ('5', '角色功能', '1', null, null, '0');
INSERT INTO `sys` VALUES ('6', '角色功能', '1', '/role/goIndex', null, '5');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL COMMENT '登录账号',
  `user_realName` varchar(10) DEFAULT NULL COMMENT '用户昵称',
  `user_pass` varchar(15) DEFAULT NULL COMMENT '用户密码',
  `user_sex` int(11) DEFAULT NULL COMMENT '用户性别',
  `user_create` varchar(50) DEFAULT NULL COMMENT '用户创建时间',
  `user_lastTime` varchar(50) DEFAULT NULL COMMENT '最后登录时间',
  `user_email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '13545152390', 'Admin', '123456', '1', '2017-12-15', '2017-12-15', '772917198@qq.com');
INSERT INTO `user` VALUES ('2', '13545152391', 'Admin', '123456', '1', '2017-12-15', '2017-12-15', '772917198@qq.com');
INSERT INTO `user` VALUES ('3', '13545152392', 'Admin', '123456', '1', '2017-12-15', '2017-12-15', '772917198@qq.com');
INSERT INTO `user` VALUES ('4', '13545152393', 'Admin', '123456', '1', '2017-12-15', '2017-12-15', '772917198@qq.com');
INSERT INTO `user` VALUES ('5', '13545152394', 'Admin', '123456', '1', '2017-12-15', '2017-12-15', '772917198@qq.com');
INSERT INTO `user` VALUES ('6', '13545152395', 'Admin', '123456', '1', '2017-12-15', '2017-12-15', '772917198@qq.com');
INSERT INTO `user` VALUES ('7', '13545152396', 'Admin', '123456', '1', '2017-12-15', '2017-12-15', '772917198@qq.com');
INSERT INTO `user` VALUES ('8', '13545152397', 'Admin', '123456', '1', '2017-12-15', '2017-12-15', '772917198@qq.com');
INSERT INTO `user` VALUES ('9', '13545152398', 'Admin', '123456', '1', '2017-12-15', '2017-12-15', '772917198@qq.com');
INSERT INTO `user` VALUES ('10', '13545152399', 'Admin', '123456', '1', '2017-12-15', '2017-12-15', '772917198@qq.com');
INSERT INTO `user` VALUES ('11', '13545152400', 'Admin', '123456', '1', '2017-12-15', '2017-12-15', '772917198@qq.com');
