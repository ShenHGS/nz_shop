/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : nz_shop

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2020-10-10 17:36:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `base_dict`
-- ----------------------------
DROP TABLE IF EXISTS `base_dict`;
CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(50) NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(50) NOT NULL COMMENT '数据字典项目名称',
  `dict_item_code` varchar(10) DEFAULT NULL COMMENT '数据字典项目代码(可为空)',
  `dict_sort` int(10) DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) NOT NULL COMMENT '1:使用 0:停用',
  `dict_memo` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dict
-- ----------------------------
INSERT INTO `base_dict` VALUES ('1', '001', '客户行业', '教育培训 ', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('10', '003', '公司性质', '民企', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('12', '004', '年营业额', '1-10万', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('13', '004', '年营业额', '10-20万', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('14', '004', '年营业额', '20-50万', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('15', '004', '年营业额', '50-100万', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('16', '004', '年营业额', '100-500万', null, '5', '1', null);
INSERT INTO `base_dict` VALUES ('17', '004', '年营业额', '500-1000万', null, '6', '1', null);
INSERT INTO `base_dict` VALUES ('18', '005', '客户状态', '基础客户', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('19', '005', '客户状态', '潜在客户', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('2', '001', '客户行业', '电子商务', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('20', '005', '客户状态', '成功客户', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('21', '005', '客户状态', '无效客户', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('22', '006', '客户级别', '普通客户', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('23', '006', '客户级别', 'VIP客户', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('24', '007', '商机状态', '意向客户', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('25', '007', '商机状态', '初步沟通', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('26', '007', '商机状态', '深度沟通', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('27', '007', '商机状态', '签订合同', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('3', '001', '客户行业', '对外贸易', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('30', '008', '商机类型', '新业务', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('31', '008', '商机类型', '现有业务', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('32', '009', '商机来源', '电话营销', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('33', '009', '商机来源', '网络营销', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('34', '009', '商机来源', '推广活动', null, '3', '1', null);
INSERT INTO `base_dict` VALUES ('4', '001', '客户行业', '酒店旅游', null, '4', '1', null);
INSERT INTO `base_dict` VALUES ('5', '001', '客户行业', '房地产', null, '5', '1', null);
INSERT INTO `base_dict` VALUES ('6', '002', '客户信息来源', '电话营销', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('7', '002', '客户信息来源', '网络营销', null, '2', '1', null);
INSERT INTO `base_dict` VALUES ('8', '003', '公司性质', '合资', null, '1', '1', null);
INSERT INTO `base_dict` VALUES ('9', '003', '公司性质', '国企', null, '2', '1', null);

-- ----------------------------
-- Table structure for `collect`
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `coid` int(11) NOT NULL,
  `gid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  PRIMARY KEY (`coid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cust_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(50) NOT NULL COMMENT '客户名称',
  `cust_user_id` int(32) DEFAULT NULL COMMENT '负责人id',
  `cust_create_id` int(32) DEFAULT NULL COMMENT '创建人id',
  `cust_source` varchar(50) DEFAULT NULL COMMENT '客户信息来源',
  `cust_industry` varchar(50) DEFAULT NULL COMMENT '客户所属行业',
  `cust_level` varchar(32) DEFAULT NULL COMMENT '客户级别',
  `cust_linkman` varchar(50) DEFAULT NULL COMMENT '联系人',
  `cust_phone` varchar(64) DEFAULT NULL COMMENT '固定电话',
  `cust_mobile` varchar(16) DEFAULT NULL COMMENT '移动电话',
  `cust_zipcode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `cust_address` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `cust_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('15', '小韩1', null, '2', '6', '1', '22', '小雪1', '010-888888871', '138888888881', '1000961', '北京昌平区西三旗1', '2016-04-08 16:32:01');
INSERT INTO `customer` VALUES ('16', '小李', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:01');
INSERT INTO `customer` VALUES ('17', '小赵', null, '4', '6', '4', '23', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:02');
INSERT INTO `customer` VALUES ('22', '小明', null, '3', '6', '2', '23', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:03');
INSERT INTO `customer` VALUES ('24', '小伟', null, '2', '7', '5', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:03');
INSERT INTO `customer` VALUES ('25', 'Tom', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:03');
INSERT INTO `customer` VALUES ('26', 'jack', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:03');
INSERT INTO `customer` VALUES ('28', 'Rose', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES ('29', '小韩', null, '1', '7', '1', '23', '小雪', '010-88888886', '13888888886', '100096', '北京昌平区西三旗', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES ('30', '小叶', null, '2', '6', '2', '23', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES ('31', '小韩', null, '4', '7', '1', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES ('33', '小海', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES ('34', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES ('35', '小姜', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES ('36', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES ('37', '小梦', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES ('38', '小孙', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES ('39', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES ('40', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES ('41', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES ('42', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES ('43', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES ('44', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('45', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('46', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('47', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('48', '小高', null, '5', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('49', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES ('50', '小钱', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('51', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('52', '小周', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('53', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('54', '小丽', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('55', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES ('56', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:09');
INSERT INTO `customer` VALUES ('57', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:09');
INSERT INTO `customer` VALUES ('58', '张三', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:09');
INSERT INTO `customer` VALUES ('59', '李四', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES ('60', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES ('61', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES ('62', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES ('63', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('64', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('65', '王五', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('66', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('67', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('68', '赵六', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES ('69', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES ('70', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES ('71', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES ('72', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES ('73', '小七', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES ('74', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('75', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('76', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('77', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('78', '小郑', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('79', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES ('80', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES ('81', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES ('82', '小吴', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES ('83', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES ('144', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:44');
INSERT INTO `customer` VALUES ('145', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:44');
INSERT INTO `customer` VALUES ('146', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:44');
INSERT INTO `customer` VALUES ('147', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES ('148', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES ('149', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES ('150', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES ('151', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES ('152', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('153', '晶晶', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('154', '倩倩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('155', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('156', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('157', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES ('158', '小韩', null, '1', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES ('159', '小韩', null, '2', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES ('160', '小韩', null, '3', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES ('161', '小韩', null, '4', '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '北京昌平区西三旗', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES ('171', '小韩', null, '3', '7', '1', '23', '小雪', '010-8235438', '13755555555', '100000', '北京昌平区西三旗', '2017-05-05 10:23:07');
INSERT INTO `customer` VALUES ('172', '小韩', null, '2', '6', '2', '22', '小雪', '010-0000000', '13288546521', '100859', '北京昌平区西三旗', '2017-05-05 10:51:08');
INSERT INTO `customer` VALUES ('173', '小洛', null, '1', '6', '1', '22', '小雪', '01062872234', '13521023333', '100000', '北京昌平区西三旗', '2017-05-05 10:57:09');
INSERT INTO `customer` VALUES ('174', '小月', null, '1', '6', '1', '22', '小雪', '0482-8235438', '13848399998', '137400', '内蒙古兴安盟乌兰浩特市', '2017-05-05 11:33:27');
INSERT INTO `customer` VALUES ('175', '小韩', null, '1', '6', '1', '22', '小石', '0791-88130000', '15179105961', '330098', '江西省南昌市瑶湖高校园区', '2017-05-05 13:17:11');
INSERT INTO `customer` VALUES ('176', '小智', null, '1', '7', '1', '23', '小黑', '400-618-4000', '13520203625', '100091', '北京市海淀区', '2017-05-16 15:49:07');
INSERT INTO `customer` VALUES ('177', '小程', null, '1', '6', '1', '23', '小韩', '010-88886616', '13718026541', '100000', '北京市昌平区', '2017-05-16 16:25:59');
INSERT INTO `customer` VALUES ('178', '郭仕华', null, '1', '6', '1', '23', 'gsh', '87780030', '13375008689', '350001', '福州软件园', '2020-07-28 12:06:44');
INSERT INTO `customer` VALUES ('179', '', null, '1', '', '', '', '', '', '', '', '', '2020-09-20 15:18:35');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `n_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(10) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `n_time` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('9', '大减价', '清仓大减价', '2020-10-07');
INSERT INTO `notice` VALUES ('12', '忘记密码修改方式', '联系客服qq123456 或 qq.com电话100100 或邮箱8888@qq.com', '2020-10-07');
INSERT INTO `notice` VALUES ('16', '大减价', '全场5折', '2020-10-8');
INSERT INTO `notice` VALUES ('17', '33', '清仓大减价', '1');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `buynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `money` double DEFAULT NULL,
  `receiverAddress` varchar(255) DEFAULT NULL,
  `receiverName` varchar(20) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `paystate` int(11) DEFAULT NULL,
  `ordertime` timestamp NULL DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2', '188', '福建农业职业技术学院', '尻信汶', '17926585999', '2', '2020-09-27 10:22:23', null);
INSERT INTO `orders` VALUES ('4', '155', '福建农业职业技术学院', '郑', '13422415663', '1', '2020-09-29 10:26:24', null);

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` varchar(100) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) NOT NULL COMMENT '用户账号',
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) NOT NULL COMMENT '用户密码',
  `user_state` int(1) NOT NULL COMMENT '1:正常,0:暂停',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'm0001', '小韩', '123', '1');
INSERT INTO `sys_user` VALUES ('2', 'm0002', '小雪', '123', '1');
INSERT INTO `sys_user` VALUES ('3', 'm0003', '小石', '123', '1');
INSERT INTO `sys_user` VALUES ('4', 'm0004', '小陈', '123', '1');

-- ----------------------------
-- Table structure for `t_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '手表', null);
INSERT INTO `t_category` VALUES ('2', '手机', null);
INSERT INTO `t_category` VALUES ('3', '相机', null);
INSERT INTO `t_category` VALUES ('17', '电子', null);
INSERT INTO `t_category` VALUES ('18', '图书', null);

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `gid` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `inPrice` decimal(10,2) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `description` text,
  `stock` int(11) DEFAULT NULL,
  `identifier` varchar(20) DEFAULT NULL,
  `recycle` tinyint(4) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `is_best` tinyint(4) DEFAULT NULL,
  `inTime` datetime DEFAULT NULL COMMENT '进货时间',
  `hits` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('00000000062', '正品瑞士手表男士', '888.00', '800.00', 'g_1.jpg', null, '正品瑞士手表男士2020新款全自动机械表镂空陀飞轮精钢带品牌男表\r\n\r\n瑞士认证 3TAM防水功能 下单送终身保修', '12', 'wqe', null, '1', null, null, '12121');
INSERT INTO `t_goods` VALUES ('00000000063', '卡西欧男士手表EFR-303', '1533.00', '1233.00', 'g_2.jpg', null, '卡西欧男士手表EFR-303防水皮带石英表Edifice品牌正品名牌男表 ', '500', '1', null, '1', null, null, '13000');
INSERT INTO `t_goods` VALUES ('00000000064', '智能手表男多功能', '396.00', '285.00', 'g_3.jpg', null, '智能手表男多功能圆屏测血压心率跑步黑科技运动手环男士圆形电子蓝牙手表可接电话苹果vivo小米荣耀安卓通用 ', '300', '1', null, '1', null, null, '6002');
INSERT INTO `t_goods` VALUES ('00000000065', '纽曼正品老人机', '168.00', '96.00', 'g_4.jpg', null, '【4G全网通】纽曼 M560正品老人机超长待机直板老年手机大屏大字大声音移动联通电信版女小学生按键智能手机', '150', '1', null, '2', null, null, '5528');
INSERT INTO `t_goods` VALUES ('00000000066', '佳能 80D18-135USM', '5888.00', '3980.00', 'g_5.jpg', null, '佳能EOS 80D18-135USM 中端单反 高清旅游专业数码照相机 77D 90D ', '156', '1', null, '3', null, null, '8989');
INSERT INTO `t_goods` VALUES ('00000000068', '兰博基尼男士手表男', '5800.00', '5500.00', 'g_7.jpg', '1', ' 兰博基尼男士手表男表 三角盾牌时尚霸气个性运动男款石英腕表  兰博基尼男士手表男表 三角盾牌时尚霸气个性运动男款石英腕表 ', '500', '1', null, '1', null, '2020-09-16 00:00:00', '15454');
INSERT INTO `t_goods` VALUES ('00000000069', ' Redmi K30 至尊版', '2779.00', '2379.00', 'g_8.jpg', '1', '【当天发货+24期分期】红米Redmi K30至尊纪念版手机小米官方旗舰 店小来5g游戏手机官网k30pro尊享版小米10', '5500', '1', null, '2', null, '2020-09-29 00:00:00', '21003');
INSERT INTO `t_goods` VALUES ('00000000070', '华为 nova 7 Pro 5G', '4028.00', '3678.00', 'g_9.jpg', '1', 'Huawei/华为 nova 7 Pro 5G正品手机新款上市华为nova7se8pro系列 Huawei/华为 nova 7 Pro 5G正品手机新款上市华为nova7se8pro系列 ', '655', '1', null, '2', null, '2020-09-30 00:00:00', '22800');
INSERT INTO `t_goods` VALUES ('00000000071', 'Fujifilm/富士 X-T3', '8599.00', '7990.00', 'g_10.jpg', '1', '【旗舰店】富士X-T3机身微单相机复古相机 VLOG视频富士xt3 单机身需自选XF系列镜头高速连拍4K/60P【旗舰店】富士X-T3机身微单相机复古相机 VLOG视频富士xt3 单机身需自选XF系列镜头高速连拍4K/60P', '166', '1', null, '3', null, '2020-09-30 00:00:00', '5600');
INSERT INTO `t_goods` VALUES ('00000000080', 'break情侣手表情', '488.00', '288.00', 'g_12.jpg', '1', '	break情侣手表情侣款一对男女学生防水生日礼物实用潮流个性对表  原创设计 国家外观专利 礼盒包装 代写贺卡 ', '366', '1', null, '1', null, '2020-10-05 00:00:00', '15661');
INSERT INTO `t_goods` VALUES ('00000000081', '冠琴手表男士防水', '688.00', '378.00', 'g_13.jpg', '1', '	冠琴手表男士防水2019新款机械表全自动镂空潮十大品牌男国产腕表  官方旗舰店正品 质保2年 终身维修 全国包邮 ', '544', '1', null, '1', null, '2020-10-05 00:00:00', '9885');
INSERT INTO `t_goods` VALUES ('00000000082', '小天才黑猫电话手表', '468.00', '338.00', 'g_14.jpg', '1', '4G全网通小天才黑猫电话手表智能儿童多功能防水高中学生z5初中生z6官方定位z1旗舰店官网男女孩适用华为小米 ', '896', '1', null, '1', null, '2020-10-04 00:00:00', '18888');
INSERT INTO `t_goods` VALUES ('00000000083', '瑞士正品劳力士手表男士', '2650.00', '1780.00', 'g_15.jpg', '1', '	瑞士正品劳力士手表男士自动机械表防水夜光真钻男表蜜色伊人腕表  时尚真钻 质保十年 终身保修 ', '322', '1', null, '1', null, '2020-10-03 00:00:00', '20030');
INSERT INTO `t_goods` VALUES ('00000000084', 'skmei无指针概念手表', '188.00', '108.00', 'g_16.jpg', '1', '	skmei无指针概念手表男虫洞学生机械男士潮流简约石英表防水男表  限时优惠 买就送豪礼 无指针设计 ', '655', '1', null, '1', null, '2020-10-05 00:00:00', '16666');
INSERT INTO `t_goods` VALUES ('00000000085', '新款冠琴手表女', '288.00', '198.00', 'g_17.jpg', '1', '2019新款冠琴手表女学生简约超薄防水时尚潮流气质女士手表水钻 ', '368', '1', null, '1', null, '2020-10-06 00:00:00', '12345');
INSERT INTO `t_goods` VALUES ('00000000086', 'babyg运动手表', '990.00', '693.00', 'g_18.jpg', '1', '防震防磁防水babyg运动手表女学生樱花粉ins风女表GMA-S120MF-4A ', '521', '1', null, '1', null, '2020-10-02 00:00:00', '16850');
INSERT INTO `t_goods` VALUES ('00000000087', '小型专业摄像机高清', '768.00', '328.00', 'g_19.jpg', '1', '小型专业摄像机高清小随身带记录仪便携式运动相机穿戴微形录像手表 迷你摄影头神器视频DV 一键操作方便携带画面高清', '685', '1', null, '3', null, '2020-10-07 00:00:00', '21100');
INSERT INTO `t_goods` VALUES ('00000000088', 'GoPro MAX运动相机', '5089.00', '3988.00', 'g_20.jpg', '1', 'GoPro MAX运动相机防水防抖360度5.6k全景相机vlog数码摄像机骑行 ', '328', '1', null, '3', null, '2020-10-05 00:00:00', '10000');
INSERT INTO `t_goods` VALUES ('00000000089', '诺基亚老年老人手机', '299.00', '289.00', 'g_21.jpg', '1', '【4G全网通】诺基亚2204g老年老人手机直板按键大字大声超长待机 电信迷你小学生备用老年机官方旗舰店正品', '500', '1', null, '2', null, '2020-09-29 00:00:00', '6666');

-- ----------------------------
-- Table structure for `t_member`
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member` (
  `mid` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '会员表id',
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `loginname` varchar(20) DEFAULT NULL,
  `loginpwd` varchar(20) DEFAULT NULL,
  `salt` varchar(20) DEFAULT NULL,
  `reg_time` datetime DEFAULT NULL,
  `consignee` varchar(20) DEFAULT NULL,
  `address` varchar(160) DEFAULT NULL,
  `vipl` int(11) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES ('00000000011', '黄金', '男', '13100123111', 'aqwewqe@qq.com', 'qwe', '123456', '学生', '2020-10-08 11:35:21', '黄健', '福建农院', '0');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单表id',
  `mid` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `consignee` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_payed` tinyint(4) DEFAULT NULL,
  `payid` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('39', '9', '2020-10-07 00:00:00', '林嘉豪', '福建农院', '131001231111', '1', '1', '1');
INSERT INTO `t_order` VALUES ('40', '11', '2020-10-08 00:00:00', '黄健', '福建农院', '13100123111', '1', '1', '2');
INSERT INTO `t_order` VALUES ('41', '12', '2020-10-08 00:00:00', '小飞侠', '福建农院', '17720674521', '1', '1', '8');
INSERT INTO `t_order` VALUES ('42', '12', '2020-10-08 00:00:00', '123', '13', '123', '1', '1', '1');

-- ----------------------------
-- Table structure for `t_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_order_detail`;
CREATE TABLE `t_order_detail` (
  `otid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单详情表id',
  `oid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`otid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `t_shopcart`
-- ----------------------------
DROP TABLE IF EXISTS `t_shopcart`;
CREATE TABLE `t_shopcart` (
  `scid` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车表id',
  `mid` int(11) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`scid`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shopcart
-- ----------------------------
INSERT INTO `t_shopcart` VALUES ('224', '3', '2020-10-03 00:00:00', '72', '8', '10086', '80688');
INSERT INTO `t_shopcart` VALUES ('225', '3', '2020-10-03 00:00:00', '70', '1', '3678', '3678');
INSERT INTO `t_shopcart` VALUES ('226', '3', '2020-10-03 00:00:00', '70', '1', '3678', '3678');
INSERT INTO `t_shopcart` VALUES ('280', '10', '2020-10-08 00:00:00', '70', '3', '3678', '11034');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `activeCode` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `role` varchar(10) DEFAULT '',
  `registTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
