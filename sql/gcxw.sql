/*
Navicat MySQL Data Transfer

Source Server         : 47.99.149.209
Source Server Version : 50725
Source Host           : 47.99.149.209:3306
Source Database       : gcxw

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-01-07 10:30:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('25', 't_xq_info', '小区信息', 'XqInfo', 'crud', 'com.ruoyi.manage', 'manage', 'xqinfo', '小区管理', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-02 21:37:36', '', '2019-12-02 21:40:54', '');
INSERT INTO `gen_table` VALUES ('26', 't_xq_vr', '小区全景配置', 'XqVr', 'crud', 'com.ruoyi.manage', 'manage', 'xqvr', '小区全景配置', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-04 17:04:29', '', '2019-12-04 17:09:56', '');
INSERT INTO `gen_table` VALUES ('27', 't_xq_floor', '小区楼栋', 'XqFloor', 'crud', 'com.ruoyi.manage', 'floormanage', 'floor', '楼栋管理', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-05 14:10:09', '', '2019-12-05 14:29:51', '');
INSERT INTO `gen_table` VALUES ('28', 't_xq_property', '物业费信息表', 'TXqProperty', 'crud', 'com.ruoyi.manage', 'manage', 'property', '物业费', 'zhangchengcai', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-05 15:26:30', '', '2019-12-05 15:30:35', '');
INSERT INTO `gen_table` VALUES ('29', 't_xq_property_detail', '物业费明细', 'TXqPropertyDetail', 'crud', 'com.ruoyi.manage', 'manage', 'detail', '物业明细', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-05 16:29:17', '', '2019-12-05 16:30:50', '');
INSERT INTO `gen_table` VALUES ('30', 't_zx_banner_video', '装修首页视频', 'ZxBannerVideo', 'crud', 'com.ruoyi.manage', 'manage', 'zxbannervideo', '装修首页视频管理', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-05 16:41:16', '', '2019-12-05 16:48:05', '');
INSERT INTO `gen_table` VALUES ('31', 't_xq_parking_space', '停车费', 'TXqParkingSpace', 'crud', 'com.ruoyi.manage', 'manage', 'space', '停车费', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-05 16:57:55', '', '2019-12-05 16:59:02', '');
INSERT INTO `gen_table` VALUES ('33', 't_zx_show_home', '装修效果', 'ZxShowHome', 'crud', 'com.ruoyi.manage', 'manage', 'showhome', '装修效果', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-09 13:38:08', '', '2019-12-09 13:40:23', '');
INSERT INTO `gen_table` VALUES ('34', 't_xq_notice', '公告', 'XqNotice', 'crud', 'com.ruoyi.manage', 'manage', 'notice', '小区公告', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-09 15:34:47', '', '2019-12-09 15:36:03', '');
INSERT INTO `gen_table` VALUES ('35', 't_xq_jssb', '急事速办', 'TXqJssb', 'crud', 'com.ruoyi.manage', 'manage', 'jssb', '急事速办', 'zhangchengcai', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-10 09:43:24', '', '2019-12-10 09:45:42', '');
INSERT INTO `gen_table` VALUES ('37', 't_zx_company', '装修公司', 'ZxCompany', 'crud', 'com.ruoyi.manage', 'manage', 'zxcompany', '装修公司管理', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-10 14:26:30', '', '2019-12-10 14:36:40', '');
INSERT INTO `gen_table` VALUES ('38', 't_gzh_user', '公众号', 'TGzhUser', 'crud', 'com.ruoyi.gzh', 'gzh', 'gzhuser', '公众号关注用户', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-10 17:04:29', '', '2019-12-10 17:06:08', '');
INSERT INTO `gen_table` VALUES ('39', 't_zx_banner_img', '装修首页banner', 'ZxBannerImg', 'crud', 'com.ruoyi.manage', 'manage', 'zxbannerimg', '装修首页banner', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-17 20:52:55', '', '2019-12-17 20:56:03', '');
INSERT INTO `gen_table` VALUES ('40', 't_xq_complaints', '投诉建议', 'XqComplaints', 'crud', 'com.ruoyi.manage', 'manage', 'complaints', '投诉/建议管理', 'zhangchengcai', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-18 15:51:55', '', '2019-12-18 15:54:42', '');
INSERT INTO `gen_table` VALUES ('41', 't_xq_bx_info', '小区报修', 'TXqBxInfo', 'crud', 'com.ruoyi.manage', 'manage', 'bxinfo', '报修管理', 'zhangchengcai', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-18 17:12:07', '', '2019-12-18 17:19:38', '');
INSERT INTO `gen_table` VALUES ('42', 't_zx_designer', '设计师', 'ZxDesigner', 'crud', 'com.ruoyi.manage', 'manage', 'zxdesigner', '设计师管理', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-19 09:59:21', '', '2019-12-19 10:04:10', '');
INSERT INTO `gen_table` VALUES ('43', 't_esbus_info', '二手交易', 'TEsbusInfo', 'crud', 'com.ruoyi.manage', 'manage', 'businfo', '二手交易管理', 'zhangchengcai', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-19 10:06:23', '', '2019-12-19 10:43:40', '');
INSERT INTO `gen_table` VALUES ('44', 't_zx_material_store', '入驻建材商', 'ZxMaterialStore', 'crud', 'com.ruoyi.manage', 'manage', 'materialstore', '建材商管理', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-19 11:34:12', '', '2019-12-19 11:36:12', '');
INSERT INTO `gen_table` VALUES ('46', 't_zx_material', '建材商品', 'ZxMaterial', 'crud', 'com.ruoyi.manage', 'manage', 'zxmaterial', '建材商品管理', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-19 14:12:59', '', '2019-12-19 14:17:56', '');
INSERT INTO `gen_table` VALUES ('47', 't_xq_birth_prize', '生日奖品管理', 'TXqBirthPrize', 'crud', 'com.ruoyi.manage', 'manage', 'prize', '生日奖品管理', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-19 14:59:16', '', '2019-12-19 15:01:33', '');
INSERT INTO `gen_table` VALUES ('48', 't_xq_push_fee', '业主缴费管理', 'TXqPushFee', 'crud', 'com.ruoyi.manage', 'manage', 'fee', '业主缴费', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-20 09:03:24', '', '2019-12-20 09:06:33', '');
INSERT INTO `gen_table` VALUES ('50', 't_zx_forum', '装修日志', 'ZxForum', 'crud', 'com.ruoyi.manage', 'manage', 'zxforum', '装修日志管理', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-21 12:10:03', '', '2019-12-21 12:11:34', '');
INSERT INTO `gen_table` VALUES ('51', 't_forum_reply', '装修日志回复', 'ForumReply', 'crud', 'com.ruoyi.manage', 'manage', 'zxforumreply', '评论管理', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-21 14:03:59', '', '2019-12-21 14:06:01', '');
INSERT INTO `gen_table` VALUES ('53', 't_zx_case', '装修案例', 'ZxCase', 'crud', 'com.ruoyi.manage', 'manage', 'zxcase', '装修案例', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-12-31 12:01:47', '', '2019-12-31 12:02:37', '');
INSERT INTO `gen_table` VALUES ('54', 't_wxuser_info_apply', '微信用户审核', 'WxUserInfoApply', 'crud', 'com.ruoyi.manage', 'manage', 'wxuserapply', '微信用户审核', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-03 16:32:38', '', '2020-01-03 16:39:00', '');
INSERT INTO `gen_table` VALUES ('55', 't_zx_material_banner', '主材推荐banner', 'ZxMaterialBanner', 'crud', 'com.ruoyi.manage', 'manage', 'zxmaterialbanner', '主材推荐banner', 'yanbs', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-06 14:11:12', '', '2020-01-06 14:12:59', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('212', '25', 'xq_info_id', 'ID', 'int(11)', 'Long', 'xqInfoId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-02 21:37:36', null, '2019-12-02 21:40:54');
INSERT INTO `gen_table_column` VALUES ('213', '25', 'dept_id', '小区', 'int(11)', 'Long', 'deptId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2019-12-02 21:37:36', null, '2019-12-02 21:40:54');
INSERT INTO `gen_table_column` VALUES ('214', '25', 'build_num', '楼栋号', 'int(11)', 'Long', 'buildNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-12-02 21:37:36', null, '2019-12-02 21:40:54');
INSERT INTO `gen_table_column` VALUES ('215', '25', 'unit_num', '单元号', 'int(11)', 'Long', 'unitNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-12-02 21:37:36', null, '2019-12-02 21:40:54');
INSERT INTO `gen_table_column` VALUES ('216', '25', 'door_num', '房间号', 'int(11)', 'Long', 'doorNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2019-12-02 21:37:36', null, '2019-12-02 21:40:54');
INSERT INTO `gen_table_column` VALUES ('217', '25', 'area', '面积', 'varchar(255)', 'String', 'area', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2019-12-02 21:37:36', null, '2019-12-02 21:40:54');
INSERT INTO `gen_table_column` VALUES ('218', '25', 'door_type', '户型', 'varchar(255)', 'String', 'doorType', '0', '0', null, '1', '1', '1', null, 'EQ', 'select', '', '7', 'admin', '2019-12-02 21:37:36', null, '2019-12-02 21:40:54');
INSERT INTO `gen_table_column` VALUES ('219', '25', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '8', 'admin', '2019-12-02 21:37:36', null, '2019-12-02 21:40:54');
INSERT INTO `gen_table_column` VALUES ('220', '25', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '9', 'admin', '2019-12-02 21:37:36', null, '2019-12-02 21:40:54');
INSERT INTO `gen_table_column` VALUES ('221', '25', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '10', 'admin', '2019-12-02 21:37:36', null, '2019-12-02 21:40:54');
INSERT INTO `gen_table_column` VALUES ('222', '25', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '11', 'admin', '2019-12-02 21:37:36', null, '2019-12-02 21:40:54');
INSERT INTO `gen_table_column` VALUES ('223', '26', 'xq_vr_id', 'ID', 'int(11)', 'Long', 'xqVrId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-04 17:04:29', null, '2019-12-04 17:09:56');
INSERT INTO `gen_table_column` VALUES ('224', '26', 'dept_id', '小区', 'int(11)', 'Long', 'deptId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2019-12-04 17:04:29', null, '2019-12-04 17:09:56');
INSERT INTO `gen_table_column` VALUES ('225', '26', 'vr_url', '地址', 'varchar(255)', 'String', 'vrUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-12-04 17:04:29', null, '2019-12-04 17:09:56');
INSERT INTO `gen_table_column` VALUES ('226', '26', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '4', 'admin', '2019-12-04 17:04:29', null, '2019-12-04 17:09:56');
INSERT INTO `gen_table_column` VALUES ('227', '26', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '5', 'admin', '2019-12-04 17:04:29', null, '2019-12-04 17:09:56');
INSERT INTO `gen_table_column` VALUES ('228', '26', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-04 17:04:30', null, '2019-12-04 17:09:56');
INSERT INTO `gen_table_column` VALUES ('229', '26', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '7', 'admin', '2019-12-04 17:04:30', null, '2019-12-04 17:09:56');
INSERT INTO `gen_table_column` VALUES ('230', '27', 'floor_id', '信息ID', 'int(11)', 'Long', 'floorId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-05 14:10:09', null, '2019-12-05 14:29:51');
INSERT INTO `gen_table_column` VALUES ('231', '27', 'dept_id', '小区', 'int(11)', 'Long', 'deptId', '0', '0', null, null, null, '1', '1', 'EQ', 'input', '', '2', 'admin', '2019-12-05 14:10:09', null, '2019-12-05 14:29:51');
INSERT INTO `gen_table_column` VALUES ('232', '27', 'build_num', '楼栋号', 'int(11)', 'Long', 'buildNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-12-05 14:10:09', null, '2019-12-05 14:29:51');
INSERT INTO `gen_table_column` VALUES ('233', '27', 'bulid_name', '楼栋名', 'varchar(128)', 'String', 'bulidName', '0', '0', null, null, null, null, null, 'LIKE', 'input', '', '4', 'admin', '2019-12-05 14:10:09', null, '2019-12-05 14:29:51');
INSERT INTO `gen_table_column` VALUES ('234', '27', 'unit_num', '单元号', 'int(11)', 'Long', 'unitNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2019-12-05 14:10:09', null, '2019-12-05 14:29:51');
INSERT INTO `gen_table_column` VALUES ('235', '27', 'door_num', '房间号', 'int(11)', 'Long', 'doorNum', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2019-12-05 14:10:10', null, '2019-12-05 14:29:51');
INSERT INTO `gen_table_column` VALUES ('236', '27', 'area', '面积', 'varchar(32)', 'String', 'area', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2019-12-05 14:10:10', null, '2019-12-05 14:29:52');
INSERT INTO `gen_table_column` VALUES ('237', '27', 'door_type', '户型', 'varchar(128)', 'String', 'doorType', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '8', 'admin', '2019-12-05 14:10:10', null, '2019-12-05 14:29:52');
INSERT INTO `gen_table_column` VALUES ('238', '27', 'create_by', 'null', 'varchar(128)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '9', 'admin', '2019-12-05 14:10:10', null, '2019-12-05 14:29:52');
INSERT INTO `gen_table_column` VALUES ('239', '27', 'create_time', 'null', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '10', 'admin', '2019-12-05 14:10:10', null, '2019-12-05 14:29:52');
INSERT INTO `gen_table_column` VALUES ('240', '27', 'update_by', 'null', 'varchar(128)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '11', 'admin', '2019-12-05 14:10:10', null, '2019-12-05 14:29:52');
INSERT INTO `gen_table_column` VALUES ('241', '27', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '12', 'admin', '2019-12-05 14:10:10', null, '2019-12-05 14:29:52');
INSERT INTO `gen_table_column` VALUES ('242', '28', 'id', 'null', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('243', '28', 'floor_id', '楼栋ID', 'int(11)', 'Long', 'floorId', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '2', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('244', '28', 'property_name', '物业费名称', 'varchar(128)', 'String', 'propertyName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('245', '28', 'property_fee', '物业费金额（分）', 'bigint(20)', 'Long', 'propertyFee', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '4', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('246', '28', 'start_time', '生效时间', 'date', 'Date', 'startTime', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '5', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('247', '28', 'end_time', '失效时间', 'date', 'Date', 'endTime', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '6', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('248', '28', 'state', '状态', 'int(11)', 'Long', 'state', '0', '0', null, '1', null, null, '1', 'EQ', 'select', 'sys_xq_property', '7', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('249', '28', 'push_date', '推送时间', 'datetime', 'Date', 'pushDate', '0', '0', null, null, null, null, null, 'EQ', 'datetime', '', '8', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('250', '28', 'create_by', 'null', 'varchar(128)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '9', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('251', '28', 'create_time', 'null', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '10', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('252', '28', 'update_by', 'null', 'varchar(128)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '11', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('253', '28', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '12', 'admin', '2019-12-05 15:26:31', null, '2019-12-05 15:30:36');
INSERT INTO `gen_table_column` VALUES ('254', '29', 'id', 'null', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-05 16:29:17', null, '2019-12-05 16:30:50');
INSERT INTO `gen_table_column` VALUES ('255', '29', 'property', '物业ID', 'int(11)', 'Long', 'property', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '2', 'admin', '2019-12-05 16:29:17', null, '2019-12-05 16:30:50');
INSERT INTO `gen_table_column` VALUES ('256', '29', 'detail_name', '费用名称', 'varchar(128)', 'String', 'detailName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2019-12-05 16:29:17', null, '2019-12-05 16:30:50');
INSERT INTO `gen_table_column` VALUES ('257', '29', 'detail_fee', '费用金额', 'bigint(20)', 'Long', 'detailFee', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '4', 'admin', '2019-12-05 16:29:17', null, '2019-12-05 16:30:50');
INSERT INTO `gen_table_column` VALUES ('258', '29', 'remark', '备注', 'varchar(128)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '5', 'admin', '2019-12-05 16:29:18', null, '2019-12-05 16:30:50');
INSERT INTO `gen_table_column` VALUES ('259', '29', 'create_by', 'null', 'varchar(128)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-05 16:29:18', null, '2019-12-05 16:30:50');
INSERT INTO `gen_table_column` VALUES ('260', '29', 'create_time', 'null', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '7', 'admin', '2019-12-05 16:29:18', null, '2019-12-05 16:30:50');
INSERT INTO `gen_table_column` VALUES ('261', '29', 'update_by', 'null', 'varchar(128)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '8', 'admin', '2019-12-05 16:29:18', null, '2019-12-05 16:30:50');
INSERT INTO `gen_table_column` VALUES ('262', '29', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '9', 'admin', '2019-12-05 16:29:18', null, '2019-12-05 16:30:50');
INSERT INTO `gen_table_column` VALUES ('263', '30', 'zx_banner_video_id', 'ID', 'int(11)', 'Long', 'zxBannerVideoId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-05 16:41:16', null, '2019-12-05 16:48:05');
INSERT INTO `gen_table_column` VALUES ('264', '30', 'title_img_url', '封面', 'varchar(255)', 'String', 'titleImgUrl', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '2', 'admin', '2019-12-05 16:41:16', null, '2019-12-05 16:48:05');
INSERT INTO `gen_table_column` VALUES ('265', '30', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2019-12-05 16:41:16', null, '2019-12-05 16:48:05');
INSERT INTO `gen_table_column` VALUES ('266', '30', 'video_url', '视频路径', 'varchar(255)', 'String', 'videoUrl', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '4', 'admin', '2019-12-05 16:41:16', null, '2019-12-05 16:48:05');
INSERT INTO `gen_table_column` VALUES ('267', '30', 'status', '展示开关', 'int(11)', 'Long', 'status', '0', '0', null, null, null, '1', null, 'EQ', 'radio', '', '5', 'admin', '2019-12-05 16:41:16', null, '2019-12-05 16:48:05');
INSERT INTO `gen_table_column` VALUES ('268', '30', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-05 16:41:16', null, '2019-12-05 16:48:05');
INSERT INTO `gen_table_column` VALUES ('269', '30', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '7', 'admin', '2019-12-05 16:41:16', null, '2019-12-05 16:48:05');
INSERT INTO `gen_table_column` VALUES ('270', '30', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '8', 'admin', '2019-12-05 16:41:16', null, '2019-12-05 16:48:05');
INSERT INTO `gen_table_column` VALUES ('271', '30', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '9', 'admin', '2019-12-05 16:41:16', null, '2019-12-05 16:48:06');
INSERT INTO `gen_table_column` VALUES ('272', '30', 'flag_del', 'null', 'int(11)', 'Long', 'flagDel', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '10', 'admin', '2019-12-05 16:41:16', null, '2019-12-05 16:48:06');
INSERT INTO `gen_table_column` VALUES ('273', '31', 'id', 'null', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-05 16:57:55', null, '2019-12-05 16:59:02');
INSERT INTO `gen_table_column` VALUES ('274', '31', 'floor_id', '楼栋ID', 'int(11)', 'Long', 'floorId', '0', '0', null, '1', null, null, '1', 'EQ', 'input', '', '2', 'admin', '2019-12-05 16:57:55', null, '2019-12-05 16:59:02');
INSERT INTO `gen_table_column` VALUES ('275', '31', 'parking_fee', '费用', 'bigint(20)', 'Long', 'parkingFee', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '3', 'admin', '2019-12-05 16:57:55', null, '2019-12-05 16:59:02');
INSERT INTO `gen_table_column` VALUES ('276', '31', 'parking_num', '车位号', 'int(11)', 'Long', 'parkingNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-12-05 16:57:55', null, '2019-12-05 16:59:02');
INSERT INTO `gen_table_column` VALUES ('277', '31', 'start_time', '生效时间', 'date', 'Date', 'startTime', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '5', 'admin', '2019-12-05 16:57:55', null, '2019-12-05 16:59:02');
INSERT INTO `gen_table_column` VALUES ('278', '31', 'end_time', '失效时间', 'date', 'Date', 'endTime', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '6', 'admin', '2019-12-05 16:57:55', null, '2019-12-05 16:59:02');
INSERT INTO `gen_table_column` VALUES ('279', '31', 'create_by', 'null', 'varchar(128)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '7', 'admin', '2019-12-05 16:57:55', null, '2019-12-05 16:59:02');
INSERT INTO `gen_table_column` VALUES ('280', '31', 'create_time', 'null', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '8', 'admin', '2019-12-05 16:57:55', null, '2019-12-05 16:59:03');
INSERT INTO `gen_table_column` VALUES ('281', '31', 'update_by', 'null', 'varchar(128)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '9', 'admin', '2019-12-05 16:57:55', null, '2019-12-05 16:59:03');
INSERT INTO `gen_table_column` VALUES ('282', '31', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '10', 'admin', '2019-12-05 16:57:55', null, '2019-12-05 16:59:03');
INSERT INTO `gen_table_column` VALUES ('296', '33', 'show_home_id', 'ID', 'int(11)', 'Long', 'showHomeId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:23');
INSERT INTO `gen_table_column` VALUES ('297', '33', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:23');
INSERT INTO `gen_table_column` VALUES ('298', '33', 'type', '类型', 'varchar(255)', 'String', 'type', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 't_zx_showhome_type', '3', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:23');
INSERT INTO `gen_table_column` VALUES ('299', '33', 'detail', '介绍', 'varchar(2000)', 'String', 'detail', '0', '0', null, '1', '1', null, null, 'EQ', 'textarea', '', '4', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:23');
INSERT INTO `gen_table_column` VALUES ('300', '33', 'dept_id', '小区', 'int(11)', 'Long', 'deptId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '5', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:23');
INSERT INTO `gen_table_column` VALUES ('301', '33', 'build_num', '楼号', 'int(11)', 'Long', 'buildNum', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:23');
INSERT INTO `gen_table_column` VALUES ('302', '33', 'unit_num', '单元号', 'int(11)', 'Long', 'unitNum', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '7', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:23');
INSERT INTO `gen_table_column` VALUES ('303', '33', 'door_num', '房间号', 'int(11)', 'Long', 'doorNum', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '8', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:23');
INSERT INTO `gen_table_column` VALUES ('304', '33', 'bud', '楼栋-单元-房间(1-1-101)', 'varchar(255)', 'String', 'bud', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '9', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:24');
INSERT INTO `gen_table_column` VALUES ('305', '33', 'area', '面积', 'varchar(255)', 'String', 'area', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '10', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:24');
INSERT INTO `gen_table_column` VALUES ('306', '33', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '11', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:24');
INSERT INTO `gen_table_column` VALUES ('307', '33', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '12', 'admin', '2019-12-09 13:38:08', null, '2019-12-09 13:40:24');
INSERT INTO `gen_table_column` VALUES ('308', '33', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '13', 'admin', '2019-12-09 13:38:09', null, '2019-12-09 13:40:24');
INSERT INTO `gen_table_column` VALUES ('309', '33', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '14', 'admin', '2019-12-09 13:38:09', null, '2019-12-09 13:40:24');
INSERT INTO `gen_table_column` VALUES ('310', '34', 'id', 'null', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-09 15:34:47', null, '2019-12-09 15:36:03');
INSERT INTO `gen_table_column` VALUES ('311', '34', 'title', '公告标题', 'varchar(256)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2019-12-09 15:34:47', null, '2019-12-09 15:36:03');
INSERT INTO `gen_table_column` VALUES ('312', '34', 'content', '内容', 'longtext', 'String', 'content', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '3', 'admin', '2019-12-09 15:34:47', null, '2019-12-09 15:36:03');
INSERT INTO `gen_table_column` VALUES ('313', '34', 'create_by', 'null', 'varchar(128)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '4', 'admin', '2019-12-09 15:34:47', null, '2019-12-09 15:36:03');
INSERT INTO `gen_table_column` VALUES ('314', '34', 'create_date', 'null', 'date', 'Date', 'createDate', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '5', 'admin', '2019-12-09 15:34:47', null, '2019-12-09 15:36:03');
INSERT INTO `gen_table_column` VALUES ('315', '34', 'update_by', 'null', 'varchar(128)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-09 15:34:47', null, '2019-12-09 15:36:03');
INSERT INTO `gen_table_column` VALUES ('316', '34', 'update_date', 'null', 'date', 'Date', 'updateDate', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '7', 'admin', '2019-12-09 15:34:47', null, '2019-12-09 15:36:03');
INSERT INTO `gen_table_column` VALUES ('317', '35', 'id', 'null', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-10 09:43:24', null, '2019-12-10 09:45:42');
INSERT INTO `gen_table_column` VALUES ('318', '35', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '2', 'admin', '2019-12-10 09:43:24', null, '2019-12-10 09:45:42');
INSERT INTO `gen_table_column` VALUES ('319', '35', 'type', '类型', 'int(11)', 'Long', 'type', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 'sys_jssb_type', '3', 'admin', '2019-12-10 09:43:24', null, '2019-12-10 09:45:42');
INSERT INTO `gen_table_column` VALUES ('320', '35', 'bus_name', '商家名称', 'varchar(128)', 'String', 'busName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2019-12-10 09:43:24', null, '2019-12-10 09:45:42');
INSERT INTO `gen_table_column` VALUES ('321', '35', 'bus_mobile', '联系方式', 'varchar(13)', 'String', 'busMobile', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2019-12-10 09:43:24', null, '2019-12-10 09:45:42');
INSERT INTO `gen_table_column` VALUES ('322', '35', 'content', '内容', 'longtext', 'String', 'content', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2019-12-10 09:43:24', null, '2019-12-10 09:45:42');
INSERT INTO `gen_table_column` VALUES ('323', '35', 'create_by', 'null', 'varchar(36)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '7', 'admin', '2019-12-10 09:43:24', null, '2019-12-10 09:45:42');
INSERT INTO `gen_table_column` VALUES ('324', '35', 'create_time', 'null', 'date', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '8', 'admin', '2019-12-10 09:43:24', null, '2019-12-10 09:45:43');
INSERT INTO `gen_table_column` VALUES ('325', '35', 'update_by', 'null', 'varchar(36)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '9', 'admin', '2019-12-10 09:43:24', null, '2019-12-10 09:45:43');
INSERT INTO `gen_table_column` VALUES ('326', '35', 'update_time', 'null', 'date', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '10', 'admin', '2019-12-10 09:43:24', null, '2019-12-10 09:45:43');
INSERT INTO `gen_table_column` VALUES ('338', '37', 'zx_company_id', 'ID', 'int(11)', 'Long', 'zxCompanyId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-10 14:26:30', null, '2019-12-10 14:36:40');
INSERT INTO `gen_table_column` VALUES ('339', '37', 'company_name', '公司名称', 'varchar(255)', 'String', 'companyName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-12-10 14:26:30', null, '2019-12-10 14:36:41');
INSERT INTO `gen_table_column` VALUES ('340', '37', 'logo', '品牌logo', 'varchar(255)', 'String', 'logo', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '3', 'admin', '2019-12-10 14:26:30', null, '2019-12-10 14:36:41');
INSERT INTO `gen_table_column` VALUES ('341', '37', 'is_main', '首页推荐', 'int(11)', 'Long', 'isMain', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '4', 'admin', '2019-12-10 14:26:30', null, '2019-12-10 14:36:41');
INSERT INTO `gen_table_column` VALUES ('342', '37', 'address', '公司地址', 'varchar(255)', 'String', 'address', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '5', 'admin', '2019-12-10 14:26:31', null, '2019-12-10 14:36:41');
INSERT INTO `gen_table_column` VALUES ('343', '37', 'rec_num', '推荐指数', 'int(11)', 'Long', 'recNum', '0', '0', null, '1', '1', '1', null, 'EQ', 'select', 'sys_zx_company_recnum', '6', 'admin', '2019-12-10 14:26:31', null, '2019-12-10 14:36:41');
INSERT INTO `gen_table_column` VALUES ('344', '37', 'detail', '公司介绍', 'varchar(2000)', 'String', 'detail', '0', '0', null, '1', '1', null, null, 'EQ', 'textarea', '', '7', 'admin', '2019-12-10 14:26:31', null, '2019-12-10 14:36:41');
INSERT INTO `gen_table_column` VALUES ('345', '37', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '8', 'admin', '2019-12-10 14:26:31', null, '2019-12-10 14:36:41');
INSERT INTO `gen_table_column` VALUES ('346', '37', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '9', 'admin', '2019-12-10 14:26:31', null, '2019-12-10 14:36:41');
INSERT INTO `gen_table_column` VALUES ('347', '37', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '10', 'admin', '2019-12-10 14:26:31', null, '2019-12-10 14:36:41');
INSERT INTO `gen_table_column` VALUES ('348', '37', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '11', 'admin', '2019-12-10 14:26:31', null, '2019-12-10 14:36:41');
INSERT INTO `gen_table_column` VALUES ('349', '38', 'id', 'null', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-10 17:04:29', null, '2019-12-10 17:06:08');
INSERT INTO `gen_table_column` VALUES ('350', '38', 'subscribe', '', 'varchar(256)', 'String', 'subscribe', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '2', 'admin', '2019-12-10 17:04:29', null, '2019-12-10 17:06:08');
INSERT INTO `gen_table_column` VALUES ('351', '38', 'openid', '标识', 'varchar(128)', 'String', 'openid', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '3', 'admin', '2019-12-10 17:04:29', null, '2019-12-10 17:06:08');
INSERT INTO `gen_table_column` VALUES ('352', '38', 'nickname', '名称', 'varchar(128)', 'String', 'nickname', '0', '0', null, null, null, '1', '1', 'LIKE', 'input', '', '4', 'admin', '2019-12-10 17:04:29', null, '2019-12-10 17:06:08');
INSERT INTO `gen_table_column` VALUES ('353', '38', 'sex', '性别', 'varchar(2)', 'String', 'sex', '0', '0', null, null, null, null, null, 'EQ', 'select', '', '5', 'admin', '2019-12-10 17:04:29', null, '2019-12-10 17:06:08');
INSERT INTO `gen_table_column` VALUES ('354', '38', 'city', '城市', 'varchar(128)', 'String', 'city', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '6', 'admin', '2019-12-10 17:04:29', null, '2019-12-10 17:06:08');
INSERT INTO `gen_table_column` VALUES ('355', '38', 'country', '国家', 'varchar(128)', 'String', 'country', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '7', 'admin', '2019-12-10 17:04:29', null, '2019-12-10 17:06:08');
INSERT INTO `gen_table_column` VALUES ('356', '38', 'province', '城市', 'varchar(128)', 'String', 'province', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '8', 'admin', '2019-12-10 17:04:29', null, '2019-12-10 17:06:08');
INSERT INTO `gen_table_column` VALUES ('357', '38', 'headimgurl', '头像', 'varchar(256)', 'String', 'headimgurl', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '9', 'admin', '2019-12-10 17:04:29', null, '2019-12-10 17:06:09');
INSERT INTO `gen_table_column` VALUES ('358', '38', 'wx_type', '维修类型', 'varchar(128)', 'String', 'wxType', '0', '0', null, '1', '1', '1', null, 'EQ', 'select', '', '10', 'admin', '2019-12-10 17:04:29', null, '2019-12-10 17:06:09');
INSERT INTO `gen_table_column` VALUES ('359', '38', 'wx_dept', '维修小区', 'varchar(128)', 'String', 'wxDept', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '11', 'admin', '2019-12-10 17:04:29', null, '2019-12-10 17:06:09');
INSERT INTO `gen_table_column` VALUES ('360', '39', 'zx_banner_img_id', 'ID', 'int(11)', 'Long', 'zxBannerImgId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-17 20:52:55', null, '2019-12-17 20:56:03');
INSERT INTO `gen_table_column` VALUES ('361', '39', 'title_img_url', '封面', 'varchar(255)', 'String', 'titleImgUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2019-12-17 20:52:55', null, '2019-12-17 20:56:03');
INSERT INTO `gen_table_column` VALUES ('362', '39', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-12-17 20:52:55', null, '2019-12-17 20:56:03');
INSERT INTO `gen_table_column` VALUES ('363', '39', 'detail', '详情', 'mediumtext', 'String', 'detail', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '4', 'admin', '2019-12-17 20:52:56', null, '2019-12-17 20:56:03');
INSERT INTO `gen_table_column` VALUES ('364', '39', 'status', '首页显示', 'int(11)', 'Long', 'status', '0', '0', null, null, null, '1', null, 'EQ', 'radio', '', '5', 'admin', '2019-12-17 20:52:56', null, '2019-12-17 20:56:03');
INSERT INTO `gen_table_column` VALUES ('365', '39', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-17 20:52:56', null, '2019-12-17 20:56:03');
INSERT INTO `gen_table_column` VALUES ('366', '39', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '7', 'admin', '2019-12-17 20:52:56', null, '2019-12-17 20:56:03');
INSERT INTO `gen_table_column` VALUES ('367', '39', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '8', 'admin', '2019-12-17 20:52:56', null, '2019-12-17 20:56:03');
INSERT INTO `gen_table_column` VALUES ('368', '39', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '9', 'admin', '2019-12-17 20:52:56', null, '2019-12-17 20:56:03');
INSERT INTO `gen_table_column` VALUES ('369', '39', 'flag_del', 'null', 'int(11)', 'Long', 'flagDel', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '10', 'admin', '2019-12-17 20:52:56', null, '2019-12-17 20:56:03');
INSERT INTO `gen_table_column` VALUES ('370', '40', 'id', 'null', 'int(11)', 'Long', 'id', '1', '1', null, null, null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-18 15:51:55', null, '2019-12-18 15:54:42');
INSERT INTO `gen_table_column` VALUES ('371', '40', 'type', '建议类型', 'int(11)', 'Long', 'type', '0', '0', null, null, '1', '1', '1', 'EQ', 'select', 'sys_ts_type', '2', 'admin', '2019-12-18 15:51:55', null, '2019-12-18 15:54:42');
INSERT INTO `gen_table_column` VALUES ('372', '40', 'content', '具体描述', 'varchar(512)', 'String', 'content', '0', '0', null, null, '1', '1', '1', 'EQ', 'textarea', '', '3', 'admin', '2019-12-18 15:51:55', null, '2019-12-18 15:54:42');
INSERT INTO `gen_table_column` VALUES ('373', '40', 'presented_id', '提出人openId', 'varchar(128)', 'String', 'presentedId', '0', '0', null, null, '1', null, '1', 'EQ', 'input', '', '4', 'admin', '2019-12-18 15:51:55', null, '2019-12-18 15:54:42');
INSERT INTO `gen_table_column` VALUES ('374', '40', 'presented_dept', '提出人小区', 'varchar(128)', 'String', 'presentedDept', '0', '0', null, null, '1', null, '1', 'EQ', 'input', '', '5', 'admin', '2019-12-18 15:51:55', null, '2019-12-18 15:54:42');
INSERT INTO `gen_table_column` VALUES ('375', '40', 'presented_date', '提出时间', 'date', 'Date', 'presentedDate', '0', '0', null, null, '1', null, '1', 'EQ', 'datetime', '', '6', 'admin', '2019-12-18 15:51:55', null, '2019-12-18 15:54:42');
INSERT INTO `gen_table_column` VALUES ('376', '40', 'reply', '回复内容', 'varchar(248)', 'String', 'reply', '0', '0', null, null, '1', null, '1', 'EQ', 'input', '', '7', 'admin', '2019-12-18 15:51:56', null, '2019-12-18 15:54:42');
INSERT INTO `gen_table_column` VALUES ('377', '40', 'reply_date', '回复时间', 'date', 'Date', 'replyDate', '0', '0', null, null, '1', null, '1', 'EQ', 'datetime', '', '8', 'admin', '2019-12-18 15:51:56', null, '2019-12-18 15:54:42');
INSERT INTO `gen_table_column` VALUES ('378', '40', 'state', '状态', 'int(11)', 'Long', 'state', '0', '0', null, null, '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2019-12-18 15:51:56', null, '2019-12-18 15:54:42');
INSERT INTO `gen_table_column` VALUES ('379', '41', 'id', 'null', 'int(11)', 'Long', 'id', '1', '1', null, null, null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-18 17:12:07', null, '2019-12-18 17:19:38');
INSERT INTO `gen_table_column` VALUES ('380', '41', 'type', '类型', 'int(11)', 'Long', 'type', '0', '0', null, null, '1', '1', '1', 'EQ', 'select', 'sys_wx_type', '2', 'admin', '2019-12-18 17:12:08', null, '2019-12-18 17:19:38');
INSERT INTO `gen_table_column` VALUES ('381', '41', 'appointment', '预约时间', 'datetime', 'Date', 'appointment', '0', '0', null, null, '1', '1', null, 'EQ', 'datetime', '', '3', 'admin', '2019-12-18 17:12:08', null, '2019-12-18 17:19:39');
INSERT INTO `gen_table_column` VALUES ('382', '41', 'introduced', '具体描述', 'varchar(512)', 'String', 'introduced', '0', '0', null, null, '1', '1', null, 'EQ', 'textarea', '', '4', 'admin', '2019-12-18 17:12:08', null, '2019-12-18 17:19:39');
INSERT INTO `gen_table_column` VALUES ('383', '41', 'additional', '追加描述', 'varchar(512)', 'String', 'additional', '0', '0', null, null, '1', '1', null, 'EQ', 'textarea', '', '5', 'admin', '2019-12-18 17:12:08', null, '2019-12-18 17:19:39');
INSERT INTO `gen_table_column` VALUES ('384', '41', 'presented_id', '发布人openId', 'varchar(128)', 'String', 'presentedId', '0', '0', null, null, '1', null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-18 17:12:08', null, '2019-12-18 17:19:39');
INSERT INTO `gen_table_column` VALUES ('385', '41', 'presented_dept', '发布人小区', 'varchar(32)', 'String', 'presentedDept', '0', '0', null, null, '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2019-12-18 17:12:08', null, '2019-12-18 17:19:39');
INSERT INTO `gen_table_column` VALUES ('386', '41', 'presented_date', '发布日期', 'date', 'Date', 'presentedDate', '0', '0', null, null, '1', null, null, 'EQ', 'datetime', '', '8', 'admin', '2019-12-18 17:12:08', null, '2019-12-18 17:19:39');
INSERT INTO `gen_table_column` VALUES ('387', '41', 'presented_mobile', '发布人联系方式', 'varchar(32)', 'String', 'presentedMobile', '0', '0', null, null, '1', '1', null, 'EQ', 'input', '', '9', 'admin', '2019-12-18 17:12:08', null, '2019-12-18 17:19:39');
INSERT INTO `gen_table_column` VALUES ('388', '41', 'state', '状态', 'int(11)', 'Long', 'state', '0', '0', null, null, '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2019-12-18 17:12:08', null, '2019-12-18 17:19:39');
INSERT INTO `gen_table_column` VALUES ('389', '42', 'designer_id', 'ID', 'int(11)', 'Long', 'designerId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-19 09:59:21', null, '2019-12-19 10:04:10');
INSERT INTO `gen_table_column` VALUES ('390', '42', 'head_img', '头像', 'varchar(255)', 'String', 'headImg', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '2', 'admin', '2019-12-19 09:59:21', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('391', '42', 'name', '姓名', 'varchar(255)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2019-12-19 09:59:21', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('392', '42', 'zx_company_id', '装修公司', 'int(11)', 'Long', 'zxCompanyId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-12-19 09:59:21', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('393', '42', 'work_year', '工作年限', 'int(11)', 'Long', 'workYear', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '5', 'admin', '2019-12-19 09:59:21', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('394', '42', 'sex', '性别', 'int(11)', 'Long', 'sex', '0', '0', null, '1', '1', '1', null, 'EQ', 'radio', 't_sex', '6', 'admin', '2019-12-19 09:59:22', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('395', '42', 'rec_reason', '推荐理由', 'varchar(2000)', 'String', 'recReason', '0', '0', null, '1', '1', null, null, 'EQ', 'textarea', '', '7', 'admin', '2019-12-19 09:59:22', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('396', '42', 'position', '职位', 'varchar(255)', 'String', 'position', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '8', 'admin', '2019-12-19 09:59:22', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('397', '42', 'status', '首页展示', 'int(11)', 'Long', 'status', '0', '0', null, '1', '1', '1', null, 'EQ', 'radio', '', '9', 'admin', '2019-12-19 09:59:22', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('398', '42', 'detail', '介绍', 'varchar(2000)', 'String', 'detail', '0', '0', null, '1', '1', null, null, 'EQ', 'textarea', '', '10', 'admin', '2019-12-19 09:59:22', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('399', '42', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '11', 'admin', '2019-12-19 09:59:22', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('400', '42', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '12', 'admin', '2019-12-19 09:59:22', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('401', '42', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '13', 'admin', '2019-12-19 09:59:22', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('402', '42', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '14', 'admin', '2019-12-19 09:59:22', null, '2019-12-19 10:04:11');
INSERT INTO `gen_table_column` VALUES ('403', '43', 'id', 'null', 'int(11)', 'Long', 'id', '1', '1', null, null, null, '1', null, 'EQ', 'input', '', '1', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:40');
INSERT INTO `gen_table_column` VALUES ('404', '43', 'uu_id', 'UUID标识', 'varchar(64)', 'String', 'uuId', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '2', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:40');
INSERT INTO `gen_table_column` VALUES ('405', '43', 'type', '类型', 'int(11)', 'Long', 'type', '0', '0', null, null, '1', '1', '1', 'EQ', 'select', 'sys_essp_type', '3', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:40');
INSERT INTO `gen_table_column` VALUES ('406', '43', 'title', '标题', 'varchar(128)', 'String', 'title', '0', '0', null, null, '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:40');
INSERT INTO `gen_table_column` VALUES ('407', '43', 'introduced', '介绍', 'varchar(512)', 'String', 'introduced', '0', '0', null, null, '1', null, null, 'EQ', 'textarea', '', '5', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:40');
INSERT INTO `gen_table_column` VALUES ('408', '43', 'presented_id', '发布人openId', 'varchar(128)', 'String', 'presentedId', '0', '0', null, null, '1', null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:40');
INSERT INTO `gen_table_column` VALUES ('409', '43', 'presented_dept', '发布人小区', 'varchar(32)', 'String', 'presentedDept', '0', '0', null, null, '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:41');
INSERT INTO `gen_table_column` VALUES ('410', '43', 'presented_date', '发布日期', 'date', 'Date', 'presentedDate', '0', '0', null, null, '1', '1', null, 'EQ', 'datetime', '', '8', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:41');
INSERT INTO `gen_table_column` VALUES ('411', '43', 'presented_mobile', '发布人联系方式', 'varchar(32)', 'String', 'presentedMobile', '0', '0', null, null, '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:41');
INSERT INTO `gen_table_column` VALUES ('412', '43', 'state', '状态：1 发布；2 已审核； 3 结单', 'int(11)', 'Long', 'state', '0', '0', null, null, '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:41');
INSERT INTO `gen_table_column` VALUES ('413', '43', 'sh_date', '审核日期', 'date', 'Date', 'shDate', '0', '0', null, null, '1', null, null, 'EQ', 'datetime', '', '11', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:41');
INSERT INTO `gen_table_column` VALUES ('414', '43', 'sh_oper', '审核人', 'varchar(128)', 'String', 'shOper', '0', '0', null, null, '1', null, null, 'EQ', 'input', '', '12', 'admin', '2019-12-19 10:06:23', null, '2019-12-19 10:43:41');
INSERT INTO `gen_table_column` VALUES ('415', '44', 'material_store_id', 'ID', 'int(11)', 'Long', 'materialStoreId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-19 11:34:12', null, '2019-12-19 11:36:12');
INSERT INTO `gen_table_column` VALUES ('416', '44', 'store_name', '商家名称', 'varchar(255)', 'String', 'storeName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-12-19 11:34:12', null, '2019-12-19 11:36:12');
INSERT INTO `gen_table_column` VALUES ('417', '44', 'address', '地址', 'varchar(255)', 'String', 'address', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '3', 'admin', '2019-12-19 11:34:12', null, '2019-12-19 11:36:12');
INSERT INTO `gen_table_column` VALUES ('418', '44', 'lxr_name', '联系人', 'varchar(255)', 'String', 'lxrName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2019-12-19 11:34:12', null, '2019-12-19 11:36:12');
INSERT INTO `gen_table_column` VALUES ('419', '44', 'lxr_phone', '联系电话', 'varchar(255)', 'String', 'lxrPhone', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '5', 'admin', '2019-12-19 11:34:12', null, '2019-12-19 11:36:12');
INSERT INTO `gen_table_column` VALUES ('420', '44', 'zyfw', '主营范围', 'varchar(255)', 'String', 'zyfw', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2019-12-19 11:34:12', null, '2019-12-19 11:36:12');
INSERT INTO `gen_table_column` VALUES ('421', '44', 'detail', '商家介绍', 'mediumtext', 'String', 'detail', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '7', 'admin', '2019-12-19 11:34:13', null, '2019-12-19 11:36:12');
INSERT INTO `gen_table_column` VALUES ('422', '44', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '8', 'admin', '2019-12-19 11:34:13', null, '2019-12-19 11:36:12');
INSERT INTO `gen_table_column` VALUES ('423', '44', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '9', 'admin', '2019-12-19 11:34:13', null, '2019-12-19 11:36:12');
INSERT INTO `gen_table_column` VALUES ('424', '44', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '10', 'admin', '2019-12-19 11:34:13', null, '2019-12-19 11:36:12');
INSERT INTO `gen_table_column` VALUES ('425', '44', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '11', 'admin', '2019-12-19 11:34:13', null, '2019-12-19 11:36:12');
INSERT INTO `gen_table_column` VALUES ('439', '46', 'material_id', 'ID', 'int(11)', 'Long', 'materialId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('440', '46', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('441', '46', 'img_url', '标题图片', 'varchar(255)', 'String', 'imgUrl', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '4', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('442', '46', 'type', '建材类型', 'varchar(255)', 'String', 'type', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 't_material_type', '5', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('443', '46', 'label', '标签', 'varchar(255)', 'String', 'label', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 't_material_label', '6', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('444', '46', 'price', '价格（元）', 'int(11)', 'Long', 'price', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('445', '46', 'unit', '单位', 'int(255)', 'Double', 'unit', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '8', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('446', '46', 'material_store_id', '商家', 'int(11)', 'Long', 'materialStoreId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('447', '46', 'status', '首页展示', 'int(11)', 'Long', 'status', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '9', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('448', '46', 'detail', '商品详情', 'mediumtext', 'String', 'detail', '0', '0', null, '1', '1', null, null, 'EQ', 'textarea', '', '10', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('449', '46', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '11', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('450', '46', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '12', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('451', '46', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '13', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('452', '46', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '14', 'admin', '2019-12-19 14:12:59', null, '2019-12-19 14:17:56');
INSERT INTO `gen_table_column` VALUES ('453', '47', 'id', 'null', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-19 14:59:16', null, '2019-12-19 15:01:33');
INSERT INTO `gen_table_column` VALUES ('454', '47', 'title', '商品名称', 'varchar(128)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-12-19 14:59:16', null, '2019-12-19 15:01:33');
INSERT INTO `gen_table_column` VALUES ('455', '47', 'Introduced', '简介', 'varchar(256)', 'String', 'introduced', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '3', 'admin', '2019-12-19 14:59:16', null, '2019-12-19 15:01:33');
INSERT INTO `gen_table_column` VALUES ('456', '47', 'content', '内容', 'longtext', 'String', 'content', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '4', 'admin', '2019-12-19 14:59:17', null, '2019-12-19 15:01:33');
INSERT INTO `gen_table_column` VALUES ('457', '47', 'num', '库存', 'int(11)', 'Long', 'num', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '5', 'admin', '2019-12-19 14:59:17', null, '2019-12-19 15:01:33');
INSERT INTO `gen_table_column` VALUES ('458', '47', 'state', '状态：0 录入，1上架，2下架', 'int(11)', 'Long', 'state', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2019-12-19 14:59:17', null, '2019-12-19 15:01:33');
INSERT INTO `gen_table_column` VALUES ('459', '47', 'create_by', 'null', 'varchar(128)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '7', 'admin', '2019-12-19 14:59:17', null, '2019-12-19 15:01:33');
INSERT INTO `gen_table_column` VALUES ('460', '47', 'create_date', 'null', 'date', 'Date', 'createDate', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '8', 'admin', '2019-12-19 14:59:17', null, '2019-12-19 15:01:33');
INSERT INTO `gen_table_column` VALUES ('461', '47', 'update_by', 'null', 'varchar(128)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '9', 'admin', '2019-12-19 14:59:17', null, '2019-12-19 15:01:33');
INSERT INTO `gen_table_column` VALUES ('462', '47', 'update_date', 'null', 'date', 'Date', 'updateDate', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '10', 'admin', '2019-12-19 14:59:17', null, '2019-12-19 15:01:33');
INSERT INTO `gen_table_column` VALUES ('463', '48', 'id', 'null', 'int(11)', 'Long', 'id', '1', '1', null, null, null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:33');
INSERT INTO `gen_table_column` VALUES ('464', '48', 'type', '类型:1 物业费，2 停车费', 'int(11)', 'Long', 'type', '0', '0', null, null, '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:33');
INSERT INTO `gen_table_column` VALUES ('465', '48', 'fee', '费用（分）', 'bigint(20)', 'Long', 'fee', '0', '0', null, null, '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:33');
INSERT INTO `gen_table_column` VALUES ('466', '48', 'fee_id', '费用指向ID', 'int(11)', 'Long', 'feeId', '0', '0', null, null, '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:33');
INSERT INTO `gen_table_column` VALUES ('467', '48', 'dept_id', '小区ID', 'int(11)', 'Long', 'deptId', '0', '0', null, null, '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:33');
INSERT INTO `gen_table_column` VALUES ('468', '48', 'build_num', '楼栋ＩＤ', 'int(11)', 'Long', 'buildNum', '0', '0', null, null, '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:33');
INSERT INTO `gen_table_column` VALUES ('469', '48', 'unit_num', '单元号', 'int(11)', 'Long', 'unitNum', '0', '0', null, null, '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:33');
INSERT INTO `gen_table_column` VALUES ('470', '48', 'door_num', '门牌号', 'int(11)', 'Long', 'doorNum', '0', '0', null, null, '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:33');
INSERT INTO `gen_table_column` VALUES ('471', '48', 'start_time', '费用生效时间', 'date', 'Date', 'startTime', '0', '0', null, null, '1', '1', '1', 'EQ', 'datetime', '', '9', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:34');
INSERT INTO `gen_table_column` VALUES ('472', '48', 'end_time', '费用结束时间', 'date', 'Date', 'endTime', '0', '0', null, null, '1', '1', '1', 'EQ', 'datetime', '', '10', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:34');
INSERT INTO `gen_table_column` VALUES ('473', '48', 'push_time', '推送时间', 'datetime', 'Date', 'pushTime', '0', '0', null, null, '1', null, '1', 'EQ', 'datetime', '', '11', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:34');
INSERT INTO `gen_table_column` VALUES ('474', '48', 'out_trade_no', '订单号', 'varchar(255)', 'String', 'outTradeNo', '0', '0', null, null, '1', null, '1', 'EQ', 'input', '', '12', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:34');
INSERT INTO `gen_table_column` VALUES ('475', '48', 'total_fee', '实付款', 'bigint(20)', 'Long', 'totalFee', '0', '0', null, null, '1', null, '1', 'EQ', 'input', '', '13', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:34');
INSERT INTO `gen_table_column` VALUES ('476', '48', 'time_end', '支付完成时间', 'varchar(16)', 'String', 'timeEnd', '0', '0', null, null, '1', null, '1', 'EQ', 'input', '', '14', 'admin', '2019-12-20 09:03:24', null, '2019-12-20 09:06:34');
INSERT INTO `gen_table_column` VALUES ('484', '50', 'forum_id', 'ID', 'int(11)', 'Long', 'forumId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-21 12:10:03', null, '2019-12-21 12:11:34');
INSERT INTO `gen_table_column` VALUES ('485', '50', 'openid', 'null', 'int(11)', 'Long', 'openid', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '2', 'admin', '2019-12-21 12:10:03', null, '2019-12-21 12:11:35');
INSERT INTO `gen_table_column` VALUES ('486', '50', 'head_img', '头像', 'varchar(255)', 'String', 'headImg', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '3', 'admin', '2019-12-21 12:10:03', null, '2019-12-21 12:11:35');
INSERT INTO `gen_table_column` VALUES ('487', '50', 'nickname', '昵称', 'varchar(255)', 'String', 'nickname', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2019-12-21 12:10:03', null, '2019-12-21 12:11:35');
INSERT INTO `gen_table_column` VALUES ('488', '50', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2019-12-21 12:10:03', null, '2019-12-21 12:11:35');
INSERT INTO `gen_table_column` VALUES ('489', '50', 'content', '内容', 'varchar(2000)', 'String', 'content', '0', '0', null, '1', '1', null, null, 'EQ', 'textarea', '', '6', 'admin', '2019-12-21 12:10:03', null, '2019-12-21 12:11:35');
INSERT INTO `gen_table_column` VALUES ('490', '50', 'read_num', '阅读人数', 'int(11)', 'Long', 'readNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2019-12-21 12:10:03', null, '2019-12-21 12:11:35');
INSERT INTO `gen_table_column` VALUES ('491', '50', 'create_time', '发表时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '8', 'admin', '2019-12-21 12:10:03', null, '2019-12-21 12:11:35');
INSERT INTO `gen_table_column` VALUES ('492', '51', 'forum_reply_id', 'ID', 'int(11)', 'Long', 'forumReplyId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-21 14:03:59', null, '2019-12-21 14:06:01');
INSERT INTO `gen_table_column` VALUES ('493', '51', 'forum_id', '装修日志ID', 'int(11)', 'Long', 'forumId', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '2', 'admin', '2019-12-21 14:03:59', null, '2019-12-21 14:06:01');
INSERT INTO `gen_table_column` VALUES ('494', '51', 'reply_openid', 'null', 'int(11)', 'Long', 'replyOpenid', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '3', 'admin', '2019-12-21 14:03:59', null, '2019-12-21 14:06:01');
INSERT INTO `gen_table_column` VALUES ('495', '51', 'reply_head_img', '头像', 'varchar(255)', 'String', 'replyHeadImg', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '4', 'admin', '2019-12-21 14:03:59', null, '2019-12-21 14:06:01');
INSERT INTO `gen_table_column` VALUES ('496', '51', 'reply_nickname', '昵称', 'varchar(255)', 'String', 'replyNickname', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2019-12-21 14:03:59', null, '2019-12-21 14:06:01');
INSERT INTO `gen_table_column` VALUES ('497', '51', 'reply_content', '回复内容', 'varchar(2000)', 'String', 'replyContent', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '6', 'admin', '2019-12-21 14:03:59', null, '2019-12-21 14:06:01');
INSERT INTO `gen_table_column` VALUES ('498', '51', 'create_time', '回复时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '7', 'admin', '2019-12-21 14:03:59', null, '2019-12-21 14:06:02');
INSERT INTO `gen_table_column` VALUES ('509', '53', 'case_id', 'ID', 'int(11)', 'Long', 'caseId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-31 12:01:47', null, '2019-12-31 12:02:37');
INSERT INTO `gen_table_column` VALUES ('510', '53', 'company_id', '装修公司', 'int(11)', 'Long', 'companyId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2019-12-31 12:01:47', null, '2019-12-31 12:02:37');
INSERT INTO `gen_table_column` VALUES ('511', '53', 'designer_id', '设计师', 'int(11)', 'Long', 'designerId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '3', 'admin', '2019-12-31 12:01:47', null, '2019-12-31 12:02:37');
INSERT INTO `gen_table_column` VALUES ('512', '53', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2019-12-31 12:01:47', null, '2019-12-31 12:02:38');
INSERT INTO `gen_table_column` VALUES ('513', '53', 'content', '介绍', 'varchar(2000)', 'String', 'content', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '5', 'admin', '2019-12-31 12:01:47', null, '2019-12-31 12:02:38');
INSERT INTO `gen_table_column` VALUES ('514', '53', 'img_urls', '附图', 'varchar(255)', 'String', 'imgUrls', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2019-12-31 12:01:47', null, '2019-12-31 12:02:38');
INSERT INTO `gen_table_column` VALUES ('515', '53', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '7', 'admin', '2019-12-31 12:01:47', null, '2019-12-31 12:02:38');
INSERT INTO `gen_table_column` VALUES ('516', '53', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '8', 'admin', '2019-12-31 12:01:47', null, '2019-12-31 12:02:38');
INSERT INTO `gen_table_column` VALUES ('517', '53', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '9', 'admin', '2019-12-31 12:01:47', null, '2019-12-31 12:02:38');
INSERT INTO `gen_table_column` VALUES ('518', '53', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '10', 'admin', '2019-12-31 12:01:47', null, '2019-12-31 12:02:38');
INSERT INTO `gen_table_column` VALUES ('519', '54', 'wxuser_info_apply_id', 'ID', 'int(11)', 'Long', 'wxuserInfoApplyId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-03 16:32:38', null, '2020-01-03 16:39:00');
INSERT INTO `gen_table_column` VALUES ('520', '54', 'openid', '微信id', 'varchar(255)', 'String', 'openid', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '2', 'admin', '2020-01-03 16:32:38', null, '2020-01-03 16:39:00');
INSERT INTO `gen_table_column` VALUES ('521', '54', 'name', '姓名', 'varchar(255)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2020-01-03 16:32:38', null, '2020-01-03 16:39:00');
INSERT INTO `gen_table_column` VALUES ('522', '54', 'phone', '电话', 'varchar(255)', 'String', 'phone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2020-01-03 16:32:38', null, '2020-01-03 16:39:00');
INSERT INTO `gen_table_column` VALUES ('523', '54', 'birthday', '出生日期', 'datetime', 'Date', 'birthday', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '5', 'admin', '2020-01-03 16:32:38', null, '2020-01-03 16:39:00');
INSERT INTO `gen_table_column` VALUES ('524', '54', 'dept_id', '绑定当前小区ID', 'int(11)', 'Long', 'deptId', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '6', 'admin', '2020-01-03 16:32:38', null, '2020-01-03 16:39:01');
INSERT INTO `gen_table_column` VALUES ('525', '54', 'build_num', '楼栋号', 'int(11)', 'Long', 'buildNum', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2020-01-03 16:32:38', null, '2020-01-03 16:39:01');
INSERT INTO `gen_table_column` VALUES ('526', '54', 'unit_num', '单元号', 'int(11)', 'Long', 'unitNum', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '8', 'admin', '2020-01-03 16:32:38', null, '2020-01-03 16:39:01');
INSERT INTO `gen_table_column` VALUES ('527', '54', 'door_num', '房间号', 'int(11)', 'Long', 'doorNum', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '9', 'admin', '2020-01-03 16:32:39', null, '2020-01-03 16:39:01');
INSERT INTO `gen_table_column` VALUES ('528', '54', 'apply_status', '审核状态', 'int(11)', 'Long', 'applyStatus', '0', '0', null, '1', '1', '1', null, 'EQ', 'select', 'sys_wxuseapply_status', '10', 'admin', '2020-01-03 16:32:39', null, '2020-01-03 16:39:01');
INSERT INTO `gen_table_column` VALUES ('529', '54', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '11', 'admin', '2020-01-03 16:32:39', null, '2020-01-03 16:39:01');
INSERT INTO `gen_table_column` VALUES ('530', '54', 'create_time', 'null', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '12', 'admin', '2020-01-03 16:32:39', null, '2020-01-03 16:39:01');
INSERT INTO `gen_table_column` VALUES ('531', '54', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '13', 'admin', '2020-01-03 16:32:39', null, '2020-01-03 16:39:01');
INSERT INTO `gen_table_column` VALUES ('532', '54', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '14', 'admin', '2020-01-03 16:32:39', null, '2020-01-03 16:39:01');
INSERT INTO `gen_table_column` VALUES ('533', '55', 'material_banner_id', 'ID', 'int(11)', 'Long', 'materialBannerId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-06 14:11:12', null, '2020-01-06 14:12:59');
INSERT INTO `gen_table_column` VALUES ('534', '55', 'title_img_url', '封面', 'varchar(255)', 'String', 'titleImgUrl', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '2', 'admin', '2020-01-06 14:11:12', null, '2020-01-06 14:12:59');
INSERT INTO `gen_table_column` VALUES ('535', '55', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2020-01-06 14:11:12', null, '2020-01-06 14:12:59');
INSERT INTO `gen_table_column` VALUES ('536', '55', 'detail', '详情', 'varchar(255)', 'String', 'detail', '0', '0', '1', '1', '1', '1', null, 'EQ', 'textarea', '', '4', 'admin', '2020-01-06 14:11:12', null, '2020-01-06 14:12:59');
INSERT INTO `gen_table_column` VALUES ('537', '55', 'status', '首页展示', 'int(11)', 'Long', 'status', '0', '0', null, '1', '1', '1', null, 'EQ', 'radio', '', '5', 'admin', '2020-01-06 14:11:12', null, '2020-01-06 14:12:59');
INSERT INTO `gen_table_column` VALUES ('538', '55', 'create_by', 'null', 'varchar(255)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '6', 'admin', '2020-01-06 14:11:12', null, '2020-01-06 14:12:59');
INSERT INTO `gen_table_column` VALUES ('539', '55', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '7', 'admin', '2020-01-06 14:11:12', null, '2020-01-06 14:12:59');
INSERT INTO `gen_table_column` VALUES ('540', '55', 'update_by', 'null', 'varchar(255)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '8', 'admin', '2020-01-06 14:11:13', null, '2020-01-06 14:12:59');
INSERT INTO `gen_table_column` VALUES ('541', '55', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '9', 'admin', '2020-01-06 14:11:13', null, '2020-01-06 14:12:59');

-- ----------------------------
-- Table structure for ls_gzh_user
-- ----------------------------
DROP TABLE IF EXISTS `ls_gzh_user`;
CREATE TABLE `ls_gzh_user` (
  `id` int(11) NOT NULL DEFAULT '0',
  `subscribe` varchar(256) DEFAULT NULL,
  `openid` varchar(128) DEFAULT NULL COMMENT '标识',
  `nickname` varchar(128) DEFAULT NULL COMMENT '名称',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `city` varchar(128) DEFAULT NULL COMMENT '城市',
  `country` varchar(128) DEFAULT NULL COMMENT '国家',
  `province` varchar(128) DEFAULT NULL COMMENT '城市',
  `headimgurl` varchar(256) DEFAULT NULL COMMENT '头像',
  `wx_type` varchar(128) DEFAULT NULL COMMENT '维修类型',
  `wx_dept` varchar(128) DEFAULT NULL COMMENT '维修小区'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ls_gzh_user
-- ----------------------------
INSERT INTO `ls_gzh_user` VALUES ('0', null, 'o3Qcywd0TPqpNUP4YlDez2w-tdkA', 'ฅ?ฅ', '2', null, '荷兰', '鹿特丹', 'http://thirdwx.qlogo.cn/mmopen/ZiaO5HhpkQ7gciaEjRgaciaPtgnUXfnqGqw9MicqJ639tK6PEpmfHhg4QOYgbkFys7OHvB0Ne2n53XbqImMjWZibzug/132', null, null);
INSERT INTO `ls_gzh_user` VALUES ('0', null, 'o3QcywbppoHld2cqvfMJtJO0Mdh8', '张晨', '2', null, '爱尔兰', '利特里姆', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEKjmmh7ibEcfuxB9CepOdGEfMdoVkAqFibpXZxGcN2fPyxhjYtics97zbU0zOWlldpMbWlia6ruk0ZcOg/132', null, null);
INSERT INTO `ls_gzh_user` VALUES ('0', null, 'o3QcywYcgB881psfeY9e25zYLS5E', 'JOKER', '1', '南京', '中国', '江苏', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEL7d6DPg0QcOTyHfzKQWw9EXMyAmZaKn5eZ6zmKO6FJSKHGWjr1DyrOiatBPOUykfMqxb2vH7hFAzw/132', null, null);
INSERT INTO `ls_gzh_user` VALUES ('0', null, 'o3QcywYb6lYNsdwjfcmXYy8M_5Vo', '星期六', '1', '连云港', '中国', '江苏', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEIUIxakgtpu2HgEvbZDSS8YR0HZLy3O4JiawmHVnEjOl5T2ApYNTZb0SogyWm488OBnjfICiana5FEg/132', null, null);
INSERT INTO `ls_gzh_user` VALUES ('0', null, 'o3QcywQDcs8mIPt1hh6waeCHMVXg', '??蜂蜜糖??', '2', null, '直布罗陀', null, 'http://thirdwx.qlogo.cn/mmopen/WRibickWFyicPGHYgUV6ibqfbBLDEQeuT86OmndUHnJNJWwrEtaCauCoGaY9dsFW91FnUo0dJ3tmXLr2GvECsRcicYmJVOaq0zObK/132', null, null);
INSERT INTO `ls_gzh_user` VALUES ('0', null, 'o3QcywZCwgVfEH4QMHtVOlB0KXU4', '瑶迪', '2', null, '阿拉伯联合酋长国', '迪拜', 'http://thirdwx.qlogo.cn/mmopen/3KFwEVlJhRC8j1jmZTNR5FFLS1I3OzBG5RjnicdUV4yvwgqgLpd8ojiazfd8uaXeFdCOI2mZTbONYW4pYvBymLbcCydIzSrhC9/132', null, null);
INSERT INTO `ls_gzh_user` VALUES ('0', null, 'o3QcywRefsvvBaIs8_BNqdODXvJ0', '颜丙胜', '1', '连云港', '中国', '江苏', 'http://thirdwx.qlogo.cn/mmopen/ZiaO5HhpkQ7g8j5JSXUnM19pKW46fCft0OhGVUOa5yX6oAia6ACjBMHIDkl9diafmek1PGljXObnq9dCb4Gib6h2FcY93mCjoakv/132', null, null);
INSERT INTO `ls_gzh_user` VALUES ('0', null, 'o3QcywY6mHw1EJivhTuXSswIYjK8', '王雨蒙', '2', '连云港', '中国', '江苏', 'http://thirdwx.qlogo.cn/mmopen/ZiaO5HhpkQ7iaRbFj9yvQd9nxV1wKjZwWrs92rcMA7EZriakpaMRrRztas5JlgIlHhhaZ7DYXAEHPpcGzy3lqZa3tNzf7bE81QE/132', null, null);
INSERT INTO `ls_gzh_user` VALUES ('0', null, 'o3QcywXeCKfmC6zqLvwB-M0sY-xg', '㏒ν', '1', null, '百慕大', null, 'http://thirdwx.qlogo.cn/mmopen/3KFwEVlJhRC8j1jmZTNR5B6JSQZdRl4DZQdKXwDFb6xsFgMR8VfzLe0vSXdUudWDuIoBn93kgMqxS31P1jv7FLiab0Mm1QOdd/132', null, null);
INSERT INTO `ls_gzh_user` VALUES ('0', null, 'o3QcywWHQIR-J76S1vrS7JxDJmwE', '于蒙瑶', '2', '连云港', '中国', '江苏', 'http://thirdwx.qlogo.cn/mmopen/ZiaO5HhpkQ7iaRbFj9yvQd9j80CvOkUpSLzM2OQH0QM4jJpEY5fb7wK0AmH9ZbevhwKTAc40llNzlP3Tflxau2q1dQ55FF6pgX/132', null, null);
INSERT INTO `ls_gzh_user` VALUES ('0', null, 'o3QcywYDkO56_NAYaZr69HiWJCkU', '王贵芝', '0', null, '埃及', null, 'http://thirdwx.qlogo.cn/mmopen/ZiaO5HhpkQ7iaRbFj9yvQd9sZSurCtbc4My9yRKxicic1b1OlQ5xxkgb7cuH6oLcluK1xLrjcPgyNAZ8XWgthQwlsyCRicth16hTe/132', null, null);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'iZbp154nar7frxw6xkm9l4Z1578296540108', '1578364216452', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1578296540000', '-1', '5', 'PAUSED', 'CRON', '1578296540000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1578296550000', '-1', '5', 'PAUSED', 'CRON', '1578296540000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1578296540000', '-1', '5', 'PAUSED', 'CRON', '1578296540000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-22 09:30:24', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-22 09:27:15', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '港城小窝', '0', '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', '10000', '2019-12-02 19:57:12');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '片区1', '1', '', '', '', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-12-02 19:50:14');
INSERT INTO `sys_dept` VALUES ('112', '101', '0,100,101', '小区1', '1', '', '', '', '0', '0', 'admin', '2019-11-28 13:55:46', 'admin', '2019-12-02 19:33:25');
INSERT INTO `sys_dept` VALUES ('113', '101', '0,100,101', '小区2', '2', '', '', '', '0', '0', 'admin', '2019-11-28 13:55:54', 'admin', '2019-12-02 19:33:29');
INSERT INTO `sys_dept` VALUES ('114', '101', '0,100,101', '小区3', '3', '', '', '', '0', '0', 'admin', '2019-12-02 11:15:25', 'admin', '2019-12-02 19:33:33');
INSERT INTO `sys_dept` VALUES ('115', '101', '0,100,101', '小区4', '4', '', '', '', '0', '0', 'admin', '2019-12-02 11:15:34', 'admin', '2019-12-02 19:33:37');
INSERT INTO `sys_dept` VALUES ('117', '100', '0,100', '片区2', '2', null, null, null, '0', '0', 'admin', '2019-12-02 19:53:38', '10000', '2019-12-02 19:57:12');
INSERT INTO `sys_dept` VALUES ('118', '117', '0,100,117', '小区5', '5', '', '', '', '0', '0', 'admin', '2019-12-02 19:53:50', '10000', '2019-12-02 19:57:06');
INSERT INTO `sys_dept` VALUES ('119', '117', '0,100,117', '小区6', '6', '', '', '', '0', '0', 'admin', '2019-12-02 19:53:58', '10000', '2019-12-02 19:57:12');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-28 14:36:03', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-28 14:36:08', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('29', '1', '可推送', '1', 'sys_xq_property', null, 'default', 'Y', '0', 'admin', '2019-12-05 15:28:46', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('30', '2', '已推送', '2', 'sys_xq_property', null, 'default', 'Y', '0', 'admin', '2019-12-05 15:28:59', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('31', '3', '已缴费', '3', 'sys_xq_property', null, 'default', 'Y', '0', 'admin', '2019-12-05 15:29:14', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('32', '1', '中式', '1', 't_zx_showhome_type', null, null, 'N', '0', 'admin', '2019-12-09 13:37:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('33', '2', '现代', '2', 't_zx_showhome_type', '', '', 'N', '0', 'admin', '2019-12-09 13:37:48', 'admin', '2019-12-24 10:06:45', '');
INSERT INTO `sys_dict_data` VALUES ('34', '3', '简约', '3', 't_zx_showhome_type', null, null, 'N', '0', 'admin', '2019-12-09 13:37:57', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('35', '1', '开锁', '1', 'sys_jssb_type', null, 'default', 'Y', '0', 'admin', '2019-12-10 09:35:43', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('36', '2', '通下水道', '2', 'sys_jssb_type', null, 'default', 'Y', '0', 'admin', '2019-12-10 09:35:57', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('37', '3', '保洁', '3', 'sys_jssb_type', null, 'default', 'Y', '0', 'admin', '2019-12-10 09:36:10', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('38', '4', '月嫂', '4', 'sys_jssb_type', null, 'default', 'Y', '0', 'admin', '2019-12-10 09:36:22', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('39', '5', '家电维修', '5', 'sys_jssb_type', null, 'default', 'Y', '0', 'admin', '2019-12-10 09:36:38', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('40', '6', '清洗', '6', 'sys_jssb_type', null, 'default', 'Y', '0', 'admin', '2019-12-10 09:36:57', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('41', '7', '干洗', '7', 'sys_jssb_type', null, 'default', 'Y', '0', 'admin', '2019-12-10 09:37:11', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('42', '1', '1', '1', 'sys_zx_company_recnum', null, null, 'N', '0', 'admin', '2019-12-10 14:21:16', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('43', '2', '2', '2', 'sys_zx_company_recnum', null, null, 'N', '0', 'admin', '2019-12-10 14:21:23', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('44', '3', '3', '3', 'sys_zx_company_recnum', null, null, 'N', '0', 'admin', '2019-12-10 14:21:31', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('45', '4', '4', '4', 'sys_zx_company_recnum', null, null, 'N', '0', 'admin', '2019-12-10 14:21:37', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('46', '5', '5', '5', 'sys_zx_company_recnum', null, null, 'N', '0', 'admin', '2019-12-10 14:21:46', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('47', '1', '水电', '1', 'sys_wx_type', null, 'default', 'Y', '0', 'admin', '2019-12-11 15:38:14', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('48', '2', '家具', '2', 'sys_wx_type', null, 'default', 'Y', '0', 'admin', '2019-12-11 15:38:26', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('49', '1', '公共区域', '1', 'sys_ts_type', null, 'default', 'Y', '0', 'admin', '2019-12-16 16:32:21', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('50', '2', '私人空间', '2', 'sys_ts_type', null, 'default', 'Y', '0', 'admin', '2019-12-16 16:32:40', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('51', '1', '旧家具', '1', 'sys_essp_type', null, 'default', 'Y', '0', 'admin', '2019-12-17 09:19:28', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('52', '2', '旧家电', '2', 'sys_essp_type', null, 'default', 'Y', '0', 'admin', '2019-12-17 09:19:42', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('53', '1', '男', '1', 't_sex', null, null, 'N', '0', 'admin', '2019-12-19 10:01:54', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('54', '2', '女', '0', 't_sex', null, null, 'N', '0', 'admin', '2019-12-19 10:02:06', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('55', '1', '灯具', '1', 't_material_type', null, null, 'N', '0', 'admin', '2019-12-19 14:02:33', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('56', '2', '地板', '2', 't_material_type', null, null, 'N', '0', 'admin', '2019-12-19 14:02:47', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('57', '3', '墙纸', '3', 't_material_type', null, null, 'N', '0', 'admin', '2019-12-19 14:03:03', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('58', '4', '卫浴', '4', 't_material_type', null, null, 'N', '0', 'admin', '2019-12-19 14:03:39', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('59', '5', '窗帘', '5', 't_material_type', null, null, 'N', '0', 'admin', '2019-12-19 14:03:47', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('60', '1', '限时特惠', '1', 't_material_label', null, null, 'N', '0', 'admin', '2019-12-19 14:05:30', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('61', '2', '热卖', '2', 't_material_label', null, null, 'N', '0', 'admin', '2019-12-19 14:05:53', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('62', '3', '新品', '3', 't_material_label', null, null, 'N', '0', 'admin', '2019-12-19 14:06:03', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('63', '2', '审核通过', '1', 't_zx_forum_status', null, null, 'N', '0', 'admin', '2019-12-21 12:48:54', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('64', '1', '待审核', '0', 't_zx_forum_status', null, null, 'N', '0', 'admin', '2019-12-21 12:49:05', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('65', '3', '驳回', '2', 't_zx_forum_status', null, null, 'N', '0', 'admin', '2019-12-21 12:49:36', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('66', '1', '待审核', '0', 'sys_wxuseapply_status', null, null, 'N', '0', 'admin', '2020-01-03 16:35:59', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('67', '2', '已通过', '1', 'sys_wxuseapply_status', null, null, 'N', '0', 'admin', '2020-01-03 16:36:10', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('68', '3', '已驳回', '2', 'sys_wxuseapply_status', null, null, 'N', '0', 'admin', '2020-01-03 16:36:21', '', null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '物业费状态', 'sys_xq_property', '0', 'admin', '2019-12-05 15:28:22', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('12', '装修风格', 't_zx_showhome_type', '0', 'admin', '2019-12-09 13:37:07', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('13', '急事速办', 'sys_jssb_type', '0', 'admin', '2019-12-10 09:35:10', 'admin', '2019-12-10 09:35:24', '');
INSERT INTO `sys_dict_type` VALUES ('14', '装修公司推荐指数', 'sys_zx_company_recnum', '0', 'admin', '2019-12-10 14:21:01', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('15', '维修类型', 'sys_wx_type', '0', 'admin', '2019-12-11 15:37:59', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('16', '投诉类型', 'sys_ts_type', '0', 'admin', '2019-12-16 16:31:49', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('17', '二手商品类型', 'sys_essp_type', '0', 'admin', '2019-12-17 09:17:30', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('18', '性别', 't_sex', '0', 'admin', '2019-12-19 10:01:37', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('19', '建材类型', 't_material_type', '0', 'admin', '2019-12-19 14:02:12', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('20', '建材商品标签', 't_material_label', '0', 'admin', '2019-12-19 14:05:10', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('21', '装修日志审核', 't_zx_forum_status', '0', 'admin', '2019-12-21 12:48:31', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('22', '微信用户审核状态', 'sys_wxuseapply_status', '0', 'admin', '2020-01-03 16:35:45', '', null, null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2019-12-17 15:20:10');
INSERT INTO `sys_job_log` VALUES ('2', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:20:20');
INSERT INTO `sys_job_log` VALUES ('3', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:20:30');
INSERT INTO `sys_job_log` VALUES ('4', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:20:40');
INSERT INTO `sys_job_log` VALUES ('5', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-12-17 15:20:50');
INSERT INTO `sys_job_log` VALUES ('6', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:21:00');
INSERT INTO `sys_job_log` VALUES ('7', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:21:10');
INSERT INTO `sys_job_log` VALUES ('8', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:21:20');
INSERT INTO `sys_job_log` VALUES ('9', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-12-17 15:21:30');
INSERT INTO `sys_job_log` VALUES ('10', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:21:40');
INSERT INTO `sys_job_log` VALUES ('11', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:21:50');
INSERT INTO `sys_job_log` VALUES ('12', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:22:00');
INSERT INTO `sys_job_log` VALUES ('13', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:22:10');
INSERT INTO `sys_job_log` VALUES ('14', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:22:20');
INSERT INTO `sys_job_log` VALUES ('15', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-12-17 15:22:30');
INSERT INTO `sys_job_log` VALUES ('16', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-12-17 15:22:40');
INSERT INTO `sys_job_log` VALUES ('17', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:22:50');
INSERT INTO `sys_job_log` VALUES ('18', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:23:00');
INSERT INTO `sys_job_log` VALUES ('19', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:23:10');
INSERT INTO `sys_job_log` VALUES ('20', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:23:20');
INSERT INTO `sys_job_log` VALUES ('21', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:23:30');
INSERT INTO `sys_job_log` VALUES ('22', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:23:40');
INSERT INTO `sys_job_log` VALUES ('23', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:23:50');
INSERT INTO `sys_job_log` VALUES ('24', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:24:00');
INSERT INTO `sys_job_log` VALUES ('25', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:24:10');
INSERT INTO `sys_job_log` VALUES ('26', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:24:20');
INSERT INTO `sys_job_log` VALUES ('27', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:24:30');
INSERT INTO `sys_job_log` VALUES ('28', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:24:40');
INSERT INTO `sys_job_log` VALUES ('29', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:24:50');
INSERT INTO `sys_job_log` VALUES ('30', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 15:25:00');
INSERT INTO `sys_job_log` VALUES ('31', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2019-12-17 16:15:10');
INSERT INTO `sys_job_log` VALUES ('32', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:15:20');
INSERT INTO `sys_job_log` VALUES ('33', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:15:30');
INSERT INTO `sys_job_log` VALUES ('34', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:15:40');
INSERT INTO `sys_job_log` VALUES ('35', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:15:50');
INSERT INTO `sys_job_log` VALUES ('36', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:16:00');
INSERT INTO `sys_job_log` VALUES ('37', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:16:10');
INSERT INTO `sys_job_log` VALUES ('38', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:16:20');
INSERT INTO `sys_job_log` VALUES ('39', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:16:30');
INSERT INTO `sys_job_log` VALUES ('40', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:16:40');
INSERT INTO `sys_job_log` VALUES ('41', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:16:50');
INSERT INTO `sys_job_log` VALUES ('42', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:17:00');
INSERT INTO `sys_job_log` VALUES ('43', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:17:10');
INSERT INTO `sys_job_log` VALUES ('44', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:17:20');
INSERT INTO `sys_job_log` VALUES ('45', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:17:30');
INSERT INTO `sys_job_log` VALUES ('46', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:17:40');
INSERT INTO `sys_job_log` VALUES ('47', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:17:50');
INSERT INTO `sys_job_log` VALUES ('48', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:18:00');
INSERT INTO `sys_job_log` VALUES ('49', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-12-17 16:18:10');
INSERT INTO `sys_job_log` VALUES ('50', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-12-17 16:18:20');
INSERT INTO `sys_job_log` VALUES ('51', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:18:30');
INSERT INTO `sys_job_log` VALUES ('52', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:18:40');
INSERT INTO `sys_job_log` VALUES ('53', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:18:50');
INSERT INTO `sys_job_log` VALUES ('54', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:19:00');
INSERT INTO `sys_job_log` VALUES ('55', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-12-17 16:19:10');
INSERT INTO `sys_job_log` VALUES ('56', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-12-17 16:19:20');
INSERT INTO `sys_job_log` VALUES ('57', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:19:30');
INSERT INTO `sys_job_log` VALUES ('58', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:19:40');
INSERT INTO `sys_job_log` VALUES ('59', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:19:50');
INSERT INTO `sys_job_log` VALUES ('60', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:20:00');
INSERT INTO `sys_job_log` VALUES ('61', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:20:10');
INSERT INTO `sys_job_log` VALUES ('62', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:20:20');
INSERT INTO `sys_job_log` VALUES ('63', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:20:30');
INSERT INTO `sys_job_log` VALUES ('64', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:20:40');
INSERT INTO `sys_job_log` VALUES ('65', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-12-17 16:20:50');
INSERT INTO `sys_job_log` VALUES ('66', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:21:00');
INSERT INTO `sys_job_log` VALUES ('67', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:21:10');
INSERT INTO `sys_job_log` VALUES ('68', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:21:20');
INSERT INTO `sys_job_log` VALUES ('69', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:21:30');
INSERT INTO `sys_job_log` VALUES ('70', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:21:40');
INSERT INTO `sys_job_log` VALUES ('71', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:21:50');
INSERT INTO `sys_job_log` VALUES ('72', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:22:00');
INSERT INTO `sys_job_log` VALUES ('73', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:22:10');
INSERT INTO `sys_job_log` VALUES ('74', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:22:20');
INSERT INTO `sys_job_log` VALUES ('75', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:22:30');
INSERT INTO `sys_job_log` VALUES ('76', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:22:40');
INSERT INTO `sys_job_log` VALUES ('77', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:22:50');
INSERT INTO `sys_job_log` VALUES ('78', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:23:00');
INSERT INTO `sys_job_log` VALUES ('79', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:23:10');
INSERT INTO `sys_job_log` VALUES ('80', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:23:20');
INSERT INTO `sys_job_log` VALUES ('81', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:23:30');
INSERT INTO `sys_job_log` VALUES ('82', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:23:40');
INSERT INTO `sys_job_log` VALUES ('83', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:23:50');
INSERT INTO `sys_job_log` VALUES ('84', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-12-17 16:24:00');
INSERT INTO `sys_job_log` VALUES ('85', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:24:10');
INSERT INTO `sys_job_log` VALUES ('86', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:24:20');
INSERT INTO `sys_job_log` VALUES ('87', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:24:30');
INSERT INTO `sys_job_log` VALUES ('88', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:24:40');
INSERT INTO `sys_job_log` VALUES ('89', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:24:50');
INSERT INTO `sys_job_log` VALUES ('90', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:25:00');
INSERT INTO `sys_job_log` VALUES ('91', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:25:10');
INSERT INTO `sys_job_log` VALUES ('92', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:25:20');
INSERT INTO `sys_job_log` VALUES ('93', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:25:30');
INSERT INTO `sys_job_log` VALUES ('94', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:25:40');
INSERT INTO `sys_job_log` VALUES ('95', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:25:50');
INSERT INTO `sys_job_log` VALUES ('96', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-12-17 16:26:00');
INSERT INTO `sys_job_log` VALUES ('97', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:26:10');
INSERT INTO `sys_job_log` VALUES ('98', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:26:20');
INSERT INTO `sys_job_log` VALUES ('99', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:26:30');
INSERT INTO `sys_job_log` VALUES ('100', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:26:40');
INSERT INTO `sys_job_log` VALUES ('101', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:26:50');
INSERT INTO `sys_job_log` VALUES ('102', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:27:00');
INSERT INTO `sys_job_log` VALUES ('103', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:27:10');
INSERT INTO `sys_job_log` VALUES ('104', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:27:20');
INSERT INTO `sys_job_log` VALUES ('105', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:27:30');
INSERT INTO `sys_job_log` VALUES ('106', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:27:40');
INSERT INTO `sys_job_log` VALUES ('107', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:27:50');
INSERT INTO `sys_job_log` VALUES ('108', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:28:00');
INSERT INTO `sys_job_log` VALUES ('109', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:28:10');
INSERT INTO `sys_job_log` VALUES ('110', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:28:20');
INSERT INTO `sys_job_log` VALUES ('111', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:28:30');
INSERT INTO `sys_job_log` VALUES ('112', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:28:40');
INSERT INTO `sys_job_log` VALUES ('113', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:28:50');
INSERT INTO `sys_job_log` VALUES ('114', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:29:00');
INSERT INTO `sys_job_log` VALUES ('115', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:29:10');
INSERT INTO `sys_job_log` VALUES ('116', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:29:20');
INSERT INTO `sys_job_log` VALUES ('117', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:29:30');
INSERT INTO `sys_job_log` VALUES ('118', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:29:40');
INSERT INTO `sys_job_log` VALUES ('119', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:29:50');
INSERT INTO `sys_job_log` VALUES ('120', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:30:00');
INSERT INTO `sys_job_log` VALUES ('121', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:30:10');
INSERT INTO `sys_job_log` VALUES ('122', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:30:20');
INSERT INTO `sys_job_log` VALUES ('123', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:30:30');
INSERT INTO `sys_job_log` VALUES ('124', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:30:40');
INSERT INTO `sys_job_log` VALUES ('125', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:30:50');
INSERT INTO `sys_job_log` VALUES ('126', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:31:00');
INSERT INTO `sys_job_log` VALUES ('127', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:31:10');
INSERT INTO `sys_job_log` VALUES ('128', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:31:20');
INSERT INTO `sys_job_log` VALUES ('129', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-17 16:31:30');
INSERT INTO `sys_job_log` VALUES ('130', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-12-19 09:52:16');
INSERT INTO `sys_job_log` VALUES ('131', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-12-19 09:52:30');
INSERT INTO `sys_job_log` VALUES ('132', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-12-19 09:52:45');
INSERT INTO `sys_job_log` VALUES ('133', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-12-19 09:53:00');
INSERT INTO `sys_job_log` VALUES ('134', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-12-19 09:53:15');
INSERT INTO `sys_job_log` VALUES ('135', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-12-19 09:53:30');
INSERT INTO `sys_job_log` VALUES ('136', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：11毫秒', '0', '', '2019-12-19 09:53:52');
INSERT INTO `sys_job_log` VALUES ('137', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-12-19 09:54:01');
INSERT INTO `sys_job_log` VALUES ('138', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-12-19 09:54:16');
INSERT INTO `sys_job_log` VALUES ('139', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-12-19 09:54:31');
INSERT INTO `sys_job_log` VALUES ('140', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-12-19 09:54:46');
INSERT INTO `sys_job_log` VALUES ('141', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-12-19 09:55:01');
INSERT INTO `sys_job_log` VALUES ('142', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：20毫秒', '0', '', '2019-12-19 09:55:15');
INSERT INTO `sys_job_log` VALUES ('143', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2019-12-23 11:48:40');
INSERT INTO `sys_job_log` VALUES ('144', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-23 11:48:50');
INSERT INTO `sys_job_log` VALUES ('145', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-12-23 11:49:00');
INSERT INTO `sys_job_log` VALUES ('146', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：23毫秒', '0', '', '2019-12-24 09:36:21');
INSERT INTO `sys_job_log` VALUES ('147', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-12-24 09:59:16');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=592 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-12 21:11:27');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-13 08:44:34');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-13 08:44:41');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-13 08:46:52');
INSERT INTO `sys_logininfor` VALUES ('104', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-13 08:47:05');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 09:07:33');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 11:23:43');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-14 11:23:52');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-14 11:43:49');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-14 11:43:51');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 11:44:17');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 12:22:45');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 17:24:08');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-14 17:26:22');
INSERT INTO `sys_logininfor` VALUES ('114', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 17:26:31');
INSERT INTO `sys_logininfor` VALUES ('115', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-14 17:26:38');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 17:26:55');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-14 17:28:08');
INSERT INTO `sys_logininfor` VALUES ('118', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 17:28:17');
INSERT INTO `sys_logininfor` VALUES ('119', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-14 17:28:29');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 17:28:32');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-14 17:51:27');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2019-08-15 08:46:41');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误2次', '2019-08-15 08:46:49');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 08:46:58');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-15 08:52:42');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 08:56:14');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 08:56:37');
INSERT INTO `sys_logininfor` VALUES ('128', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 09:12:15');
INSERT INTO `sys_logininfor` VALUES ('129', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 09:13:31');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-15 09:14:37');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 09:14:40');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 09:17:58');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 13:48:33');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-15 17:23:21');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-16 08:47:07');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 08:47:09');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-16 09:47:07');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 09:48:09');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 10:23:03');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 10:27:36');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-16 10:28:10');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 10:28:14');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 10:56:00');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 16:18:15');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2019-08-16 17:27:08');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误2次', '2019-08-16 17:27:15');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-16 17:27:20');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误3次', '2019-08-16 17:27:24');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 17:27:42');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-16 17:38:08');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-16 17:38:11');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-16 17:51:15');
INSERT INTO `sys_logininfor` VALUES ('153', null, '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 11:50:18');
INSERT INTO `sys_logininfor` VALUES ('154', null, '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 11:50:23');
INSERT INTO `sys_logininfor` VALUES ('155', null, '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 11:50:30');
INSERT INTO `sys_logininfor` VALUES ('156', null, '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 11:50:38');
INSERT INTO `sys_logininfor` VALUES ('157', null, '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 11:50:43');
INSERT INTO `sys_logininfor` VALUES ('158', null, '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '* 必须填写', '2019-08-17 11:53:20');
INSERT INTO `sys_logininfor` VALUES ('159', null, '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 11:53:52');
INSERT INTO `sys_logininfor` VALUES ('160', null, '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '* 必须填写', '2019-08-17 11:55:20');
INSERT INTO `sys_logininfor` VALUES ('161', null, '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '* 必须填写', '2019-08-17 11:55:34');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 11:57:41');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-17 12:00:08');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 12:00:19');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-17 12:00:36');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 12:00:49');
INSERT INTO `sys_logininfor` VALUES ('167', '1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 12:03:23');
INSERT INTO `sys_logininfor` VALUES ('168', '1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 12:13:07');
INSERT INTO `sys_logininfor` VALUES ('169', '1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 12:29:49');
INSERT INTO `sys_logininfor` VALUES ('170', '1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 12:30:16');
INSERT INTO `sys_logininfor` VALUES ('171', '1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 12:30:59');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 12:31:19');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-17 12:31:23');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 12:31:33');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-17 12:31:59');
INSERT INTO `sys_logininfor` VALUES ('176', '1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 12:32:02');
INSERT INTO `sys_logininfor` VALUES ('177', '1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 12:33:37');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 12:37:56');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-17 12:38:15');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 12:38:54');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-17 12:38:59');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 12:39:16');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-17 12:39:24');
INSERT INTO `sys_logininfor` VALUES ('184', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 12:39:52');
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-17 12:43:26');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 12:43:37');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-17 12:43:40');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 12:49:12');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 13:39:22');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 13:39:27');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 13:43:13');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 13:59:26');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 14:08:34');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-17 16:43:08');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 16:43:11');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 17:18:19');
INSERT INTO `sys_logininfor` VALUES ('197', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 19:35:46');
INSERT INTO `sys_logininfor` VALUES ('198', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 19:51:52');
INSERT INTO `sys_logininfor` VALUES ('199', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:09:11');
INSERT INTO `sys_logininfor` VALUES ('200', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:20:49');
INSERT INTO `sys_logininfor` VALUES ('201', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:29:10');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:31:41');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:45:13');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:46:54');
INSERT INTO `sys_logininfor` VALUES ('205', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:49:33');
INSERT INTO `sys_logininfor` VALUES ('206', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:50:11');
INSERT INTO `sys_logininfor` VALUES ('207', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:50:36');
INSERT INTO `sys_logininfor` VALUES ('208', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:53:16');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:54:39');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 20:56:32');
INSERT INTO `sys_logininfor` VALUES ('211', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 21:03:41');
INSERT INTO `sys_logininfor` VALUES ('212', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-17 21:07:19');
INSERT INTO `sys_logininfor` VALUES ('213', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-18 09:26:32');
INSERT INTO `sys_logininfor` VALUES ('214', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-18 09:28:02');
INSERT INTO `sys_logininfor` VALUES ('215', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-18 10:57:05');
INSERT INTO `sys_logininfor` VALUES ('216', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-19 09:23:03');
INSERT INTO `sys_logininfor` VALUES ('217', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-19 17:39:21');
INSERT INTO `sys_logininfor` VALUES ('218', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-23 14:18:14');
INSERT INTO `sys_logininfor` VALUES ('219', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-23 14:20:18');
INSERT INTO `sys_logininfor` VALUES ('220', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2019-08-23 14:20:25');
INSERT INTO `sys_logininfor` VALUES ('221', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-23 14:20:33');
INSERT INTO `sys_logininfor` VALUES ('222', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-23 14:23:38');
INSERT INTO `sys_logininfor` VALUES ('223', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-23 14:23:47');
INSERT INTO `sys_logininfor` VALUES ('224', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-23 16:31:06');
INSERT INTO `sys_logininfor` VALUES ('225', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 16:03:02');
INSERT INTO `sys_logininfor` VALUES ('226', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 16:10:14');
INSERT INTO `sys_logininfor` VALUES ('227', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 16:10:18');
INSERT INTO `sys_logininfor` VALUES ('228', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 16:10:23');
INSERT INTO `sys_logininfor` VALUES ('229', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 16:10:26');
INSERT INTO `sys_logininfor` VALUES ('230', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 16:13:10');
INSERT INTO `sys_logininfor` VALUES ('231', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 16:13:17');
INSERT INTO `sys_logininfor` VALUES ('232', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 16:13:27');
INSERT INTO `sys_logininfor` VALUES ('233', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 16:13:29');
INSERT INTO `sys_logininfor` VALUES ('234', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 16:13:57');
INSERT INTO `sys_logininfor` VALUES ('235', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 16:13:58');
INSERT INTO `sys_logininfor` VALUES ('236', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 16:49:20');
INSERT INTO `sys_logininfor` VALUES ('237', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 16:49:31');
INSERT INTO `sys_logininfor` VALUES ('238', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 16:49:44');
INSERT INTO `sys_logininfor` VALUES ('239', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 16:52:46');
INSERT INTO `sys_logininfor` VALUES ('240', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:05:46');
INSERT INTO `sys_logininfor` VALUES ('241', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:08:15');
INSERT INTO `sys_logininfor` VALUES ('242', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:08:17');
INSERT INTO `sys_logininfor` VALUES ('243', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:08:23');
INSERT INTO `sys_logininfor` VALUES ('244', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:29:33');
INSERT INTO `sys_logininfor` VALUES ('245', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:29:40');
INSERT INTO `sys_logininfor` VALUES ('246', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:30:22');
INSERT INTO `sys_logininfor` VALUES ('247', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:30:23');
INSERT INTO `sys_logininfor` VALUES ('248', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:30:42');
INSERT INTO `sys_logininfor` VALUES ('249', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:30:48');
INSERT INTO `sys_logininfor` VALUES ('250', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:32:12');
INSERT INTO `sys_logininfor` VALUES ('251', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:32:15');
INSERT INTO `sys_logininfor` VALUES ('252', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:33:02');
INSERT INTO `sys_logininfor` VALUES ('253', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:33:12');
INSERT INTO `sys_logininfor` VALUES ('254', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:34:31');
INSERT INTO `sys_logininfor` VALUES ('255', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:34:32');
INSERT INTO `sys_logininfor` VALUES ('256', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:34:45');
INSERT INTO `sys_logininfor` VALUES ('257', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:34:50');
INSERT INTO `sys_logininfor` VALUES ('258', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:35:08');
INSERT INTO `sys_logininfor` VALUES ('259', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:35:14');
INSERT INTO `sys_logininfor` VALUES ('260', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:35:20');
INSERT INTO `sys_logininfor` VALUES ('261', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:35:21');
INSERT INTO `sys_logininfor` VALUES ('262', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:35:57');
INSERT INTO `sys_logininfor` VALUES ('263', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:36:02');
INSERT INTO `sys_logininfor` VALUES ('264', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:40:12');
INSERT INTO `sys_logininfor` VALUES ('265', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:40:17');
INSERT INTO `sys_logininfor` VALUES ('266', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '验证码错误', '2019-08-28 17:40:21');
INSERT INTO `sys_logininfor` VALUES ('267', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:40:24');
INSERT INTO `sys_logininfor` VALUES ('268', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:44:42');
INSERT INTO `sys_logininfor` VALUES ('269', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:46:56');
INSERT INTO `sys_logininfor` VALUES ('270', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:47:03');
INSERT INTO `sys_logininfor` VALUES ('271', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:49:37');
INSERT INTO `sys_logininfor` VALUES ('272', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:49:38');
INSERT INTO `sys_logininfor` VALUES ('273', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:53:16');
INSERT INTO `sys_logininfor` VALUES ('274', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:53:22');
INSERT INTO `sys_logininfor` VALUES ('275', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:57:32');
INSERT INTO `sys_logininfor` VALUES ('276', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 17:57:34');
INSERT INTO `sys_logininfor` VALUES ('277', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 17:57:39');
INSERT INTO `sys_logininfor` VALUES ('278', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 18:05:52');
INSERT INTO `sys_logininfor` VALUES ('279', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-28 18:05:59');
INSERT INTO `sys_logininfor` VALUES ('280', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 18:06:07');
INSERT INTO `sys_logininfor` VALUES ('281', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-28 18:07:53');
INSERT INTO `sys_logininfor` VALUES ('282', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-29 08:31:43');
INSERT INTO `sys_logininfor` VALUES ('283', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-29 08:31:47');
INSERT INTO `sys_logininfor` VALUES ('284', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-29 08:31:54');
INSERT INTO `sys_logininfor` VALUES ('285', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-08-29 08:32:11');
INSERT INTO `sys_logininfor` VALUES ('286', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-08-29 08:32:13');
INSERT INTO `sys_logininfor` VALUES ('287', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-17 11:18:01');
INSERT INTO `sys_logininfor` VALUES ('288', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-17 14:04:23');
INSERT INTO `sys_logininfor` VALUES ('289', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-17 14:34:13');
INSERT INTO `sys_logininfor` VALUES ('290', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-17 14:39:21');
INSERT INTO `sys_logininfor` VALUES ('291', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-10-17 14:54:03');
INSERT INTO `sys_logininfor` VALUES ('292', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-17 14:54:10');
INSERT INTO `sys_logininfor` VALUES ('293', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-21 10:10:32');
INSERT INTO `sys_logininfor` VALUES ('294', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-21 10:45:21');
INSERT INTO `sys_logininfor` VALUES ('295', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-21 10:49:24');
INSERT INTO `sys_logininfor` VALUES ('296', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-23 08:48:05');
INSERT INTO `sys_logininfor` VALUES ('297', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-28 11:57:18');
INSERT INTO `sys_logininfor` VALUES ('298', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-28 13:56:01');
INSERT INTO `sys_logininfor` VALUES ('299', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-28 14:44:40');
INSERT INTO `sys_logininfor` VALUES ('300', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-28 15:42:58');
INSERT INTO `sys_logininfor` VALUES ('301', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-28 16:11:41');
INSERT INTO `sys_logininfor` VALUES ('302', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-28 16:36:59');
INSERT INTO `sys_logininfor` VALUES ('303', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-29 09:17:33');
INSERT INTO `sys_logininfor` VALUES ('304', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-29 09:38:27');
INSERT INTO `sys_logininfor` VALUES ('305', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-10-29 09:44:55');
INSERT INTO `sys_logininfor` VALUES ('306', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-01 11:20:59');
INSERT INTO `sys_logininfor` VALUES ('307', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-01 12:07:58');
INSERT INTO `sys_logininfor` VALUES ('308', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-04 09:27:29');
INSERT INTO `sys_logininfor` VALUES ('309', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-04 14:21:08');
INSERT INTO `sys_logininfor` VALUES ('310', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-05 11:26:55');
INSERT INTO `sys_logininfor` VALUES ('311', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-05 11:52:17');
INSERT INTO `sys_logininfor` VALUES ('312', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-05 15:49:32');
INSERT INTO `sys_logininfor` VALUES ('313', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-05 16:38:23');
INSERT INTO `sys_logininfor` VALUES ('314', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-06 11:56:33');
INSERT INTO `sys_logininfor` VALUES ('315', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-12 11:13:06');
INSERT INTO `sys_logininfor` VALUES ('316', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-12 11:47:31');
INSERT INTO `sys_logininfor` VALUES ('317', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-12 13:42:28');
INSERT INTO `sys_logininfor` VALUES ('318', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-12 15:50:21');
INSERT INTO `sys_logininfor` VALUES ('319', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-20 14:23:07');
INSERT INTO `sys_logininfor` VALUES ('320', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-20 15:14:20');
INSERT INTO `sys_logininfor` VALUES ('321', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-20 15:25:40');
INSERT INTO `sys_logininfor` VALUES ('322', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-20 17:23:19');
INSERT INTO `sys_logininfor` VALUES ('323', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-21 08:45:38');
INSERT INTO `sys_logininfor` VALUES ('324', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-21 08:51:55');
INSERT INTO `sys_logininfor` VALUES ('325', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-21 11:24:45');
INSERT INTO `sys_logininfor` VALUES ('326', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-21 13:31:56');
INSERT INTO `sys_logininfor` VALUES ('327', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-21 16:18:40');
INSERT INTO `sys_logininfor` VALUES ('328', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-22 09:26:10');
INSERT INTO `sys_logininfor` VALUES ('329', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-22 15:02:37');
INSERT INTO `sys_logininfor` VALUES ('330', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-22 15:40:18');
INSERT INTO `sys_logininfor` VALUES ('331', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 08:54:16');
INSERT INTO `sys_logininfor` VALUES ('332', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 10:44:59');
INSERT INTO `sys_logininfor` VALUES ('333', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 15:03:50');
INSERT INTO `sys_logininfor` VALUES ('334', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 15:21:52');
INSERT INTO `sys_logininfor` VALUES ('335', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 15:50:43');
INSERT INTO `sys_logininfor` VALUES ('336', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 16:48:46');
INSERT INTO `sys_logininfor` VALUES ('337', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 16:51:06');
INSERT INTO `sys_logininfor` VALUES ('338', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 16:51:11');
INSERT INTO `sys_logininfor` VALUES ('339', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 16:54:08');
INSERT INTO `sys_logininfor` VALUES ('340', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 16:54:12');
INSERT INTO `sys_logininfor` VALUES ('341', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 16:54:56');
INSERT INTO `sys_logininfor` VALUES ('342', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 16:55:00');
INSERT INTO `sys_logininfor` VALUES ('343', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 16:57:41');
INSERT INTO `sys_logininfor` VALUES ('344', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 16:57:45');
INSERT INTO `sys_logininfor` VALUES ('345', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 16:57:59');
INSERT INTO `sys_logininfor` VALUES ('346', '10002', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 16:58:04');
INSERT INTO `sys_logininfor` VALUES ('347', '10002', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 16:59:43');
INSERT INTO `sys_logininfor` VALUES ('348', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 16:59:47');
INSERT INTO `sys_logininfor` VALUES ('349', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 17:25:53');
INSERT INTO `sys_logininfor` VALUES ('350', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 17:29:55');
INSERT INTO `sys_logininfor` VALUES ('351', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 17:30:02');
INSERT INTO `sys_logininfor` VALUES ('352', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 17:30:20');
INSERT INTO `sys_logininfor` VALUES ('353', '10002', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 17:30:26');
INSERT INTO `sys_logininfor` VALUES ('354', '10002', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 17:30:42');
INSERT INTO `sys_logininfor` VALUES ('355', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 17:30:46');
INSERT INTO `sys_logininfor` VALUES ('356', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 17:31:08');
INSERT INTO `sys_logininfor` VALUES ('357', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 17:31:12');
INSERT INTO `sys_logininfor` VALUES ('358', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 17:31:34');
INSERT INTO `sys_logininfor` VALUES ('359', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 17:31:40');
INSERT INTO `sys_logininfor` VALUES ('360', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 17:33:59');
INSERT INTO `sys_logininfor` VALUES ('361', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 17:34:04');
INSERT INTO `sys_logininfor` VALUES ('362', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-25 17:34:15');
INSERT INTO `sys_logininfor` VALUES ('363', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-25 17:34:19');
INSERT INTO `sys_logininfor` VALUES ('364', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-26 14:56:44');
INSERT INTO `sys_logininfor` VALUES ('365', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 13:40:38');
INSERT INTO `sys_logininfor` VALUES ('366', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 13:54:12');
INSERT INTO `sys_logininfor` VALUES ('367', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 13:54:17');
INSERT INTO `sys_logininfor` VALUES ('368', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 13:54:45');
INSERT INTO `sys_logininfor` VALUES ('369', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 13:54:50');
INSERT INTO `sys_logininfor` VALUES ('370', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 13:56:17');
INSERT INTO `sys_logininfor` VALUES ('371', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 13:56:23');
INSERT INTO `sys_logininfor` VALUES ('372', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 14:07:57');
INSERT INTO `sys_logininfor` VALUES ('373', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 14:08:01');
INSERT INTO `sys_logininfor` VALUES ('374', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 14:12:22');
INSERT INTO `sys_logininfor` VALUES ('375', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 14:12:30');
INSERT INTO `sys_logininfor` VALUES ('376', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 14:12:45');
INSERT INTO `sys_logininfor` VALUES ('377', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 14:12:53');
INSERT INTO `sys_logininfor` VALUES ('378', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 14:13:40');
INSERT INTO `sys_logininfor` VALUES ('379', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 14:13:44');
INSERT INTO `sys_logininfor` VALUES ('380', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 14:13:49');
INSERT INTO `sys_logininfor` VALUES ('381', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 14:13:56');
INSERT INTO `sys_logininfor` VALUES ('382', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 14:14:04');
INSERT INTO `sys_logininfor` VALUES ('383', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 14:16:54');
INSERT INTO `sys_logininfor` VALUES ('384', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 14:32:20');
INSERT INTO `sys_logininfor` VALUES ('385', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 14:32:24');
INSERT INTO `sys_logininfor` VALUES ('386', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 14:32:50');
INSERT INTO `sys_logininfor` VALUES ('387', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 14:32:56');
INSERT INTO `sys_logininfor` VALUES ('388', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-11-28 14:33:52');
INSERT INTO `sys_logininfor` VALUES ('389', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 14:33:55');
INSERT INTO `sys_logininfor` VALUES ('390', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-11-28 16:23:18');
INSERT INTO `sys_logininfor` VALUES ('391', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 11:01:55');
INSERT INTO `sys_logininfor` VALUES ('392', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 11:42:23');
INSERT INTO `sys_logininfor` VALUES ('393', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-12-02 11:44:36');
INSERT INTO `sys_logininfor` VALUES ('394', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 11:44:41');
INSERT INTO `sys_logininfor` VALUES ('395', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 15:26:29');
INSERT INTO `sys_logininfor` VALUES ('396', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 15:50:23');
INSERT INTO `sys_logininfor` VALUES ('397', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 16:04:16');
INSERT INTO `sys_logininfor` VALUES ('398', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 16:27:02');
INSERT INTO `sys_logininfor` VALUES ('399', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 17:06:18');
INSERT INTO `sys_logininfor` VALUES ('400', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 19:31:51');
INSERT INTO `sys_logininfor` VALUES ('401', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-12-02 19:55:43');
INSERT INTO `sys_logininfor` VALUES ('402', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 19:55:50');
INSERT INTO `sys_logininfor` VALUES ('403', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-12-02 19:56:08');
INSERT INTO `sys_logininfor` VALUES ('404', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2019-12-02 19:56:16');
INSERT INTO `sys_logininfor` VALUES ('405', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误2次', '2019-12-02 19:56:20');
INSERT INTO `sys_logininfor` VALUES ('406', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 19:56:22');
INSERT INTO `sys_logininfor` VALUES ('407', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-12-02 19:56:36');
INSERT INTO `sys_logininfor` VALUES ('408', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 19:56:42');
INSERT INTO `sys_logininfor` VALUES ('409', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-12-02 19:58:32');
INSERT INTO `sys_logininfor` VALUES ('410', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 19:58:38');
INSERT INTO `sys_logininfor` VALUES ('411', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-12-02 19:59:18');
INSERT INTO `sys_logininfor` VALUES ('412', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '1', '密码输入错误1次', '2019-12-02 19:59:26');
INSERT INTO `sys_logininfor` VALUES ('413', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 19:59:28');
INSERT INTO `sys_logininfor` VALUES ('414', '10000', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-12-02 20:29:21');
INSERT INTO `sys_logininfor` VALUES ('415', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 20:29:25');
INSERT INTO `sys_logininfor` VALUES ('416', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 21:37:19');
INSERT INTO `sys_logininfor` VALUES ('417', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-02 21:45:50');
INSERT INTO `sys_logininfor` VALUES ('418', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-04 16:42:27');
INSERT INTO `sys_logininfor` VALUES ('419', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-04 17:04:15');
INSERT INTO `sys_logininfor` VALUES ('420', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-04 17:14:14');
INSERT INTO `sys_logininfor` VALUES ('421', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '1', '密码输入错误1次', '2019-12-04 17:20:26');
INSERT INTO `sys_logininfor` VALUES ('422', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2019-12-04 17:21:03');
INSERT INTO `sys_logininfor` VALUES ('423', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 13:57:25');
INSERT INTO `sys_logininfor` VALUES ('424', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-12-05 13:58:40');
INSERT INTO `sys_logininfor` VALUES ('425', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 13:58:56');
INSERT INTO `sys_logininfor` VALUES ('426', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 14:02:30');
INSERT INTO `sys_logininfor` VALUES ('427', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 14:12:14');
INSERT INTO `sys_logininfor` VALUES ('428', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-05 14:18:55');
INSERT INTO `sys_logininfor` VALUES ('429', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 14:19:11');
INSERT INTO `sys_logininfor` VALUES ('430', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 15:58:18');
INSERT INTO `sys_logininfor` VALUES ('431', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 16:46:11');
INSERT INTO `sys_logininfor` VALUES ('432', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 16:49:41');
INSERT INTO `sys_logininfor` VALUES ('433', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 19:29:22');
INSERT INTO `sys_logininfor` VALUES ('434', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 19:36:21');
INSERT INTO `sys_logininfor` VALUES ('435', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 19:51:31');
INSERT INTO `sys_logininfor` VALUES ('436', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 19:57:32');
INSERT INTO `sys_logininfor` VALUES ('437', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 20:24:36');
INSERT INTO `sys_logininfor` VALUES ('438', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-05 21:19:40');
INSERT INTO `sys_logininfor` VALUES ('439', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 14:46:05');
INSERT INTO `sys_logininfor` VALUES ('440', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 15:10:28');
INSERT INTO `sys_logininfor` VALUES ('441', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-06 15:16:57');
INSERT INTO `sys_logininfor` VALUES ('442', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 15:17:02');
INSERT INTO `sys_logininfor` VALUES ('443', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-06 15:17:06');
INSERT INTO `sys_logininfor` VALUES ('444', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 15:17:10');
INSERT INTO `sys_logininfor` VALUES ('445', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-06 15:17:46');
INSERT INTO `sys_logininfor` VALUES ('446', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 15:17:52');
INSERT INTO `sys_logininfor` VALUES ('447', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 15:20:21');
INSERT INTO `sys_logininfor` VALUES ('448', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 15:29:32');
INSERT INTO `sys_logininfor` VALUES ('449', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 15:37:25');
INSERT INTO `sys_logininfor` VALUES ('450', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 16:07:43');
INSERT INTO `sys_logininfor` VALUES ('451', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 16:19:46');
INSERT INTO `sys_logininfor` VALUES ('452', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 16:24:19');
INSERT INTO `sys_logininfor` VALUES ('453', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 16:32:15');
INSERT INTO `sys_logininfor` VALUES ('454', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 16:39:21');
INSERT INTO `sys_logininfor` VALUES ('455', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 16:41:11');
INSERT INTO `sys_logininfor` VALUES ('456', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 16:45:32');
INSERT INTO `sys_logininfor` VALUES ('457', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 16:50:38');
INSERT INTO `sys_logininfor` VALUES ('458', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 17:26:47');
INSERT INTO `sys_logininfor` VALUES ('459', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 17:32:53');
INSERT INTO `sys_logininfor` VALUES ('460', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 17:36:14');
INSERT INTO `sys_logininfor` VALUES ('461', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 17:40:34');
INSERT INTO `sys_logininfor` VALUES ('462', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 17:44:36');
INSERT INTO `sys_logininfor` VALUES ('463', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-07 17:10:24');
INSERT INTO `sys_logininfor` VALUES ('464', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-07 18:05:57');
INSERT INTO `sys_logininfor` VALUES ('465', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 10:07:21');
INSERT INTO `sys_logininfor` VALUES ('466', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 10:09:25');
INSERT INTO `sys_logininfor` VALUES ('467', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 10:45:28');
INSERT INTO `sys_logininfor` VALUES ('468', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 10:47:12');
INSERT INTO `sys_logininfor` VALUES ('469', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 10:52:34');
INSERT INTO `sys_logininfor` VALUES ('470', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-12-09 11:02:02');
INSERT INTO `sys_logininfor` VALUES ('471', 'pianqu1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 11:02:09');
INSERT INTO `sys_logininfor` VALUES ('472', 'pianqu1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '退出成功', '2019-12-09 11:02:28');
INSERT INTO `sys_logininfor` VALUES ('473', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 11:02:33');
INSERT INTO `sys_logininfor` VALUES ('474', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 11:10:23');
INSERT INTO `sys_logininfor` VALUES ('475', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 13:32:38');
INSERT INTO `sys_logininfor` VALUES ('476', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 13:43:18');
INSERT INTO `sys_logininfor` VALUES ('477', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 13:54:01');
INSERT INTO `sys_logininfor` VALUES ('478', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 14:21:36');
INSERT INTO `sys_logininfor` VALUES ('479', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 14:32:27');
INSERT INTO `sys_logininfor` VALUES ('480', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 14:36:06');
INSERT INTO `sys_logininfor` VALUES ('481', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 14:41:12');
INSERT INTO `sys_logininfor` VALUES ('482', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 14:44:26');
INSERT INTO `sys_logininfor` VALUES ('483', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 14:50:43');
INSERT INTO `sys_logininfor` VALUES ('484', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 14:54:30');
INSERT INTO `sys_logininfor` VALUES ('485', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 14:57:37');
INSERT INTO `sys_logininfor` VALUES ('486', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 16:02:53');
INSERT INTO `sys_logininfor` VALUES ('487', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 16:20:46');
INSERT INTO `sys_logininfor` VALUES ('488', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-09 16:20:56');
INSERT INTO `sys_logininfor` VALUES ('489', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 16:21:01');
INSERT INTO `sys_logininfor` VALUES ('490', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-09 16:21:05');
INSERT INTO `sys_logininfor` VALUES ('491', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 16:21:10');
INSERT INTO `sys_logininfor` VALUES ('492', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-09 16:21:36');
INSERT INTO `sys_logininfor` VALUES ('493', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 16:21:44');
INSERT INTO `sys_logininfor` VALUES ('494', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-09 16:25:47');
INSERT INTO `sys_logininfor` VALUES ('495', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 16:25:51');
INSERT INTO `sys_logininfor` VALUES ('496', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 16:30:40');
INSERT INTO `sys_logininfor` VALUES ('497', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-12-09 16:32:47');
INSERT INTO `sys_logininfor` VALUES ('498', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 16:32:52');
INSERT INTO `sys_logininfor` VALUES ('499', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 16:34:44');
INSERT INTO `sys_logininfor` VALUES ('500', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-12-09 16:36:28');
INSERT INTO `sys_logininfor` VALUES ('501', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 16:36:32');
INSERT INTO `sys_logininfor` VALUES ('502', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-09 16:36:45');
INSERT INTO `sys_logininfor` VALUES ('503', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 16:36:52');
INSERT INTO `sys_logininfor` VALUES ('504', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 18:06:53');
INSERT INTO `sys_logininfor` VALUES ('505', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 18:43:51');
INSERT INTO `sys_logininfor` VALUES ('506', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-09 19:15:16');
INSERT INTO `sys_logininfor` VALUES ('507', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 09:33:14');
INSERT INTO `sys_logininfor` VALUES ('508', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 09:49:03');
INSERT INTO `sys_logininfor` VALUES ('509', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 10:06:08');
INSERT INTO `sys_logininfor` VALUES ('510', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-10 10:13:44');
INSERT INTO `sys_logininfor` VALUES ('511', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-10 11:33:20');
INSERT INTO `sys_logininfor` VALUES ('512', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-10 13:40:22');
INSERT INTO `sys_logininfor` VALUES ('513', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-10 13:52:40');
INSERT INTO `sys_logininfor` VALUES ('514', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-10 14:00:52');
INSERT INTO `sys_logininfor` VALUES ('515', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-10 14:32:29');
INSERT INTO `sys_logininfor` VALUES ('516', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-10 14:59:21');
INSERT INTO `sys_logininfor` VALUES ('517', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-10 15:37:48');
INSERT INTO `sys_logininfor` VALUES ('518', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 17:04:17');
INSERT INTO `sys_logininfor` VALUES ('519', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 17:11:55');
INSERT INTO `sys_logininfor` VALUES ('520', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-10 17:22:36');
INSERT INTO `sys_logininfor` VALUES ('521', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 09:55:09');
INSERT INTO `sys_logininfor` VALUES ('522', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 10:01:56');
INSERT INTO `sys_logininfor` VALUES ('523', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 10:06:22');
INSERT INTO `sys_logininfor` VALUES ('524', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 10:09:40');
INSERT INTO `sys_logininfor` VALUES ('525', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-11 11:54:23');
INSERT INTO `sys_logininfor` VALUES ('526', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 13:42:32');
INSERT INTO `sys_logininfor` VALUES ('527', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 13:54:52');
INSERT INTO `sys_logininfor` VALUES ('528', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 14:54:28');
INSERT INTO `sys_logininfor` VALUES ('529', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-11 15:23:20');
INSERT INTO `sys_logininfor` VALUES ('530', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 7', '0', '登录成功', '2019-12-12 16:16:36');
INSERT INTO `sys_logininfor` VALUES ('531', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 14:18:24');
INSERT INTO `sys_logininfor` VALUES ('532', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-16 15:08:39');
INSERT INTO `sys_logininfor` VALUES ('533', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 09:14:37');
INSERT INTO `sys_logininfor` VALUES ('534', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 09:22:36');
INSERT INTO `sys_logininfor` VALUES ('535', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 13:58:56');
INSERT INTO `sys_logininfor` VALUES ('536', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 14:44:31');
INSERT INTO `sys_logininfor` VALUES ('537', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 15:09:12');
INSERT INTO `sys_logininfor` VALUES ('538', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 16:15:34');
INSERT INTO `sys_logininfor` VALUES ('539', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 17:55:34');
INSERT INTO `sys_logininfor` VALUES ('540', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-12-17 20:08:43');
INSERT INTO `sys_logininfor` VALUES ('541', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-17 20:08:46');
INSERT INTO `sys_logininfor` VALUES ('542', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 13:58:18');
INSERT INTO `sys_logininfor` VALUES ('543', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 14:47:24');
INSERT INTO `sys_logininfor` VALUES ('544', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 17:14:03');
INSERT INTO `sys_logininfor` VALUES ('545', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:28:56');
INSERT INTO `sys_logininfor` VALUES ('546', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:43:54');
INSERT INTO `sys_logininfor` VALUES ('547', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 09:59:05');
INSERT INTO `sys_logininfor` VALUES ('548', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 10:08:08');
INSERT INTO `sys_logininfor` VALUES ('549', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 11:19:09');
INSERT INTO `sys_logininfor` VALUES ('550', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 11:37:54');
INSERT INTO `sys_logininfor` VALUES ('551', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 11:39:36');
INSERT INTO `sys_logininfor` VALUES ('552', 'admin', '117.92.94.207', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 11:48:15');
INSERT INTO `sys_logininfor` VALUES ('553', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 13:47:37');
INSERT INTO `sys_logininfor` VALUES ('554', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 14:56:17');
INSERT INTO `sys_logininfor` VALUES ('555', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 15:09:33');
INSERT INTO `sys_logininfor` VALUES ('556', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 08:54:41');
INSERT INTO `sys_logininfor` VALUES ('557', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 09:10:56');
INSERT INTO `sys_logininfor` VALUES ('558', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-20 09:56:20');
INSERT INTO `sys_logininfor` VALUES ('559', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 09:56:26');
INSERT INTO `sys_logininfor` VALUES ('560', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 09:57:51');
INSERT INTO `sys_logininfor` VALUES ('561', '10001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-20 09:57:59');
INSERT INTO `sys_logininfor` VALUES ('562', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 09:58:03');
INSERT INTO `sys_logininfor` VALUES ('563', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 11:15:28');
INSERT INTO `sys_logininfor` VALUES ('564', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 13:40:07');
INSERT INTO `sys_logininfor` VALUES ('565', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 14:12:07');
INSERT INTO `sys_logininfor` VALUES ('566', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 16:33:38');
INSERT INTO `sys_logininfor` VALUES ('567', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 11:53:11');
INSERT INTO `sys_logininfor` VALUES ('568', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 14:01:48');
INSERT INTO `sys_logininfor` VALUES ('569', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 15:37:45');
INSERT INTO `sys_logininfor` VALUES ('570', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 15:51:32');
INSERT INTO `sys_logininfor` VALUES ('571', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 16:48:22');
INSERT INTO `sys_logininfor` VALUES ('572', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 17:03:15');
INSERT INTO `sys_logininfor` VALUES ('573', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 17:06:19');
INSERT INTO `sys_logininfor` VALUES ('574', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-24 09:39:13');
INSERT INTO `sys_logininfor` VALUES ('575', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 09:14:12');
INSERT INTO `sys_logininfor` VALUES ('576', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-12-25 09:56:45');
INSERT INTO `sys_logininfor` VALUES ('577', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 09:56:50');
INSERT INTO `sys_logininfor` VALUES ('578', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 10:58:27');
INSERT INTO `sys_logininfor` VALUES ('579', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 11:32:06');
INSERT INTO `sys_logininfor` VALUES ('580', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-31 13:44:07');
INSERT INTO `sys_logininfor` VALUES ('581', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 09:18:54');
INSERT INTO `sys_logininfor` VALUES ('582', 'admin', '47.99.149.209', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 11:08:13');
INSERT INTO `sys_logininfor` VALUES ('583', 'admin', '47.99.149.209', 'XX XX', 'Firefox 7', 'Mac OS X', '0', '登录成功', '2020-01-03 11:15:07');
INSERT INTO `sys_logininfor` VALUES ('584', 'admin', '47.99.149.209', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 11:15:11');
INSERT INTO `sys_logininfor` VALUES ('585', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 13:40:03');
INSERT INTO `sys_logininfor` VALUES ('586', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 16:32:23');
INSERT INTO `sys_logininfor` VALUES ('587', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 10:25:15');
INSERT INTO `sys_logininfor` VALUES ('588', 'admin', '47.99.149.209', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 12:24:47');
INSERT INTO `sys_logininfor` VALUES ('589', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 13:49:21');
INSERT INTO `sys_logininfor` VALUES ('590', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 15:22:59');
INSERT INTO `sys_logininfor` VALUES ('591', 'admin', '47.99.149.209', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-07 09:52:51');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1219 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '组织管理', '1', '4', '/system/dept', 'menuItem', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2019-12-02 20:39:05', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '任务详细', '110', '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务导出', '110', '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成查询', '114', '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成修改', '114', '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '生成删除', '114', '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '114', '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '114', '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1074', '我的社区', '0', '4', '#', 'menuItem', 'M', '0', '', 'fa fa-tv', 'admin', '2019-10-17 14:49:04', 'admin', '2019-12-04 17:10:24', '');
INSERT INTO `sys_menu` VALUES ('1087', '找装修', '0', '5', '#', 'menuItem', 'M', '0', null, 'fa fa-binoculars', 'admin', '2019-12-04 17:10:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1088', '小区全景配置', '1087', '1', '/manage/xqvr', 'menuItem', 'C', '0', 'manage:xqvr:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-04 17:14:29', '小区全景配置菜单');
INSERT INTO `sys_menu` VALUES ('1089', '小区全景配置查询', '1088', '1', '#', '', 'F', '0', 'manage:xqvr:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1090', '小区全景配置新增', '1088', '2', '#', '', 'F', '0', 'manage:xqvr:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1091', '小区全景配置修改', '1088', '3', '#', '', 'F', '0', 'manage:xqvr:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1092', '小区全景配置删除', '1088', '4', '#', '', 'F', '0', 'manage:xqvr:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1093', '楼栋管理', '1074', '1', '/floormanage/floor', 'menuItem', 'C', '0', 'floormanage:floor:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-05 14:27:12', '楼栋管理菜单');
INSERT INTO `sys_menu` VALUES ('1094', '楼栋管理查询', '1093', '1', '#', '', 'F', '0', 'floormanage:floor:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1095', '楼栋管理新增', '1093', '2', '#', '', 'F', '0', 'floormanage:floor:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1096', '楼栋管理修改', '1093', '3', '#', '', 'F', '0', 'floormanage:floor:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1097', '楼栋管理删除', '1093', '4', '#', '', 'F', '0', 'floormanage:floor:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1098', '物业费', '1074', '2', '/manage/property', 'menuItem', 'C', '1', 'manage:property:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-05 17:12:15', '物业费菜单');
INSERT INTO `sys_menu` VALUES ('1099', '物业费查询', '1098', '1', '#', '', 'F', '0', 'manage:property:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1100', '物业费新增', '1098', '2', '#', '', 'F', '0', 'manage:property:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1101', '物业费修改', '1098', '3', '#', '', 'F', '0', 'manage:property:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1102', '物业费删除', '1098', '4', '#', '', 'F', '0', 'manage:property:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1103', '物业明细', '1074', '3', '/manage/detail', 'menuItem', 'C', '1', 'manage:detail:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-05 17:12:25', '物业明细菜单');
INSERT INTO `sys_menu` VALUES ('1104', '物业明细查询', '1103', '1', '#', '', 'F', '0', 'manage:detail:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1105', '物业明细新增', '1103', '2', '#', '', 'F', '0', 'manage:detail:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1106', '物业明细修改', '1103', '3', '#', '', 'F', '0', 'manage:detail:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1107', '物业明细删除', '1103', '4', '#', '', 'F', '0', 'manage:detail:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1108', '居家风水视频管理', '1087', '3', '/manage/zxbannervideo', 'menuItem', 'C', '0', 'manage:zxbannervideo:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-09 13:50:42', '装修首页视频管理菜单');
INSERT INTO `sys_menu` VALUES ('1109', '装修首页视频管理查询', '1108', '1', '#', '', 'F', '0', 'manage:zxbannervideo:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1110', '装修首页视频管理新增', '1108', '2', '#', '', 'F', '0', 'manage:zxbannervideo:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1111', '装修首页视频管理修改', '1108', '3', '#', '', 'F', '0', 'manage:zxbannervideo:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1112', '装修首页视频管理删除', '1108', '4', '#', '', 'F', '0', 'manage:zxbannervideo:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1113', '停车费', '1074', '4', '/manage/space', 'menuItem', 'C', '1', 'manage:space:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-05 17:12:33', '停车费菜单');
INSERT INTO `sys_menu` VALUES ('1114', '停车费查询', '1113', '1', '#', '', 'F', '0', 'manage:space:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1115', '停车费新增', '1113', '2', '#', '', 'F', '0', 'manage:space:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1116', '停车费修改', '1113', '3', '#', '', 'F', '0', 'manage:space:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1117', '停车费删除', '1113', '4', '#', '', 'F', '0', 'manage:space:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1118', '装修效果', '1087', '2', '/manage/showhome', 'menuItem', 'C', '0', 'manage:showhome:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-09 13:50:49', '装修效果菜单');
INSERT INTO `sys_menu` VALUES ('1119', '装修效果查询', '1118', '1', '#', '', 'F', '0', 'manage:showhome:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1120', '装修效果新增', '1118', '2', '#', '', 'F', '0', 'manage:showhome:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1121', '装修效果修改', '1118', '3', '#', '', 'F', '0', 'manage:showhome:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1122', '装修效果删除', '1118', '4', '#', '', 'F', '0', 'manage:showhome:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1123', '小区公告', '1074', '2', '/manage/notice', 'menuItem', 'C', '0', 'manage:notice:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-09 15:39:31', '小区公告菜单');
INSERT INTO `sys_menu` VALUES ('1124', '小区公告查询', '1123', '1', '#', '', 'F', '0', 'manage:notice:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1125', '小区公告新增', '1123', '2', '#', '', 'F', '0', 'manage:notice:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1126', '小区公告修改', '1123', '3', '#', '', 'F', '0', 'manage:notice:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1127', '小区公告删除', '1123', '4', '#', '', 'F', '0', 'manage:notice:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1128', '急事速办', '1074', '6', '/manage/jssb', 'menuItem', 'C', '0', 'manage:jssb:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-10 09:49:34', '急事速办菜单');
INSERT INTO `sys_menu` VALUES ('1129', '急事速办查询', '1128', '1', '#', '', 'F', '0', 'manage:jssb:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1130', '急事速办新增', '1128', '2', '#', '', 'F', '0', 'manage:jssb:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1131', '急事速办修改', '1128', '3', '#', '', 'F', '0', 'manage:jssb:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1132', '急事速办删除', '1128', '4', '#', '', 'F', '0', 'manage:jssb:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1133', '装修公司管理', '1087', '4', '/manage/zxcompany', 'menuItem', 'C', '0', 'manage:zxcompany:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-10 14:32:59', '装修公司管理菜单');
INSERT INTO `sys_menu` VALUES ('1134', '装修公司管理查询', '1133', '1', '#', '', 'F', '0', 'manage:zxcompany:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1135', '装修公司管理新增', '1133', '2', '#', '', 'F', '0', 'manage:zxcompany:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1136', '装修公司管理修改', '1133', '3', '#', '', 'F', '0', 'manage:zxcompany:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1137', '装修公司管理删除', '1133', '4', '#', '', 'F', '0', 'manage:zxcompany:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1138', '公众号关注用户', '1143', '1', '/gzh/gzhuser', 'menuItem', 'C', '0', 'gzh:gzhuser:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-10 17:13:02', '公众号关注用户菜单');
INSERT INTO `sys_menu` VALUES ('1139', '公众号关注用户查询', '1138', '1', '#', '', 'F', '0', 'gzh:gzhuser:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1140', '公众号关注用户新增', '1138', '2', '#', '', 'F', '0', 'gzh:gzhuser:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1141', '公众号关注用户修改', '1138', '3', '#', '', 'F', '0', 'gzh:gzhuser:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1142', '公众号关注用户删除', '1138', '4', '#', '', 'F', '0', 'gzh:gzhuser:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1143', '维修人员管理', '0', '6', '#', 'menuItem', 'M', '0', null, 'fa fa-drivers-license', 'admin', '2019-12-10 17:12:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('1144', '装修首页banner', '1087', '0', '/manage/zxbannerimg', 'menuItem', 'C', '0', 'manage:zxbannerimg:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-18 13:59:55', '装修首页banner菜单');
INSERT INTO `sys_menu` VALUES ('1145', '装修首页banner查询', '1144', '1', '#', '', 'F', '0', 'manage:zxbannerimg:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1146', '装修首页banner新增', '1144', '2', '#', '', 'F', '0', 'manage:zxbannerimg:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1147', '装修首页banner修改', '1144', '3', '#', '', 'F', '0', 'manage:zxbannerimg:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1148', '装修首页banner删除', '1144', '4', '#', '', 'F', '0', 'manage:zxbannerimg:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1149', '投诉/建议管理', '1074', '7', '/manage/complaints', 'menuItem', 'C', '0', 'manage:complaints:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-18 15:59:31', '投诉/建议管理菜单');
INSERT INTO `sys_menu` VALUES ('1150', '投诉/建议管理查询', '1149', '1', '#', '', 'F', '0', 'manage:complaints:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1151', '投诉/建议管理新增', '1149', '2', '#', '', 'F', '0', 'manage:complaints:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1152', '投诉/建议管理修改', '1149', '3', '#', '', 'F', '0', 'manage:complaints:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1153', '投诉/建议管理删除', '1149', '4', '#', '', 'F', '0', 'manage:complaints:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1154', '报修管理', '1074', '9', '/manage/bxinfo', 'menuItem', 'C', '0', 'manage:bxinfo:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-18 17:22:08', '报修管理菜单');
INSERT INTO `sys_menu` VALUES ('1155', '报修管理查询', '1154', '1', '#', '', 'F', '0', 'manage:bxinfo:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1156', '报修管理新增', '1154', '2', '#', '', 'F', '0', 'manage:bxinfo:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1157', '报修管理修改', '1154', '3', '#', '', 'F', '0', 'manage:bxinfo:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1158', '报修管理删除', '1154', '4', '#', '', 'F', '0', 'manage:bxinfo:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1159', '设计师管理', '1087', '5', '/manage/zxdesigner', 'menuItem', 'C', '0', 'manage:zxdesigner:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-19 10:08:52', '设计师管理菜单');
INSERT INTO `sys_menu` VALUES ('1160', '设计师管理查询', '1159', '1', '#', '', 'F', '0', 'manage:zxdesigner:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1161', '设计师管理新增', '1159', '2', '#', '', 'F', '0', 'manage:zxdesigner:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1162', '设计师管理修改', '1159', '3', '#', '', 'F', '0', 'manage:zxdesigner:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1163', '设计师管理删除', '1159', '4', '#', '', 'F', '0', 'manage:zxdesigner:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1164', '二手交易管理', '1074', '11', '/manage/businfo', 'menuItem', 'C', '0', 'manage:businfo:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-19 10:16:22', '二手交易管理菜单');
INSERT INTO `sys_menu` VALUES ('1165', '二手交易管理查询', '1164', '1', '#', '', 'F', '0', 'manage:businfo:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1166', '二手交易管理新增', '1164', '2', '#', '', 'F', '0', 'manage:businfo:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1167', '二手交易管理修改', '1164', '3', '#', '', 'F', '0', 'manage:businfo:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1168', '二手交易管理删除', '1164', '4', '#', '', 'F', '0', 'manage:businfo:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1169', '建材商管理', '1087', '6', '/manage/materialstore', 'menuItem', 'C', '0', 'manage:materialstore:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-19 11:38:39', '建材商管理菜单');
INSERT INTO `sys_menu` VALUES ('1170', '建材商管理查询', '1169', '1', '#', '', 'F', '0', 'manage:materialstore:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1171', '建材商管理新增', '1169', '2', '#', '', 'F', '0', 'manage:materialstore:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1172', '建材商管理修改', '1169', '3', '#', '', 'F', '0', 'manage:materialstore:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1173', '建材商管理删除', '1169', '4', '#', '', 'F', '0', 'manage:materialstore:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1174', '建材商品管理', '1087', '7', '/manage/zxmaterial', 'menuItem', 'C', '0', 'manage:zxmaterial:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-19 14:20:36', '建材商品管理菜单');
INSERT INTO `sys_menu` VALUES ('1175', '建材商品管理查询', '1174', '1', '#', '', 'F', '0', 'manage:zxmaterial:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1176', '建材商品管理新增', '1174', '2', '#', '', 'F', '0', 'manage:zxmaterial:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1177', '建材商品管理修改', '1174', '3', '#', '', 'F', '0', 'manage:zxmaterial:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1178', '建材商品管理删除', '1174', '4', '#', '', 'F', '0', 'manage:zxmaterial:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1179', '生日奖品管理', '1074', '13', '/manage/prize', 'menuItem', 'C', '0', 'manage:prize:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-19 15:07:23', '生日奖品管理菜单');
INSERT INTO `sys_menu` VALUES ('1180', '生日奖品管理查询', '1179', '1', '#', '', 'F', '0', 'manage:prize:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1181', '生日奖品管理新增', '1179', '2', '#', '', 'F', '0', 'manage:prize:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1182', '生日奖品管理修改', '1179', '3', '#', '', 'F', '0', 'manage:prize:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1183', '生日奖品管理删除', '1179', '4', '#', '', 'F', '0', 'manage:prize:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1189', '业主缴费', '1074', '14', '/manage/fee', 'menuItem', 'C', '0', 'manage:fee:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-20 09:12:50', '业主缴费菜单');
INSERT INTO `sys_menu` VALUES ('1190', '业主缴费查询', '1189', '1', '#', '', 'F', '0', 'manage:fee:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1191', '业主缴费新增', '1189', '2', '#', '', 'F', '0', 'manage:fee:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1192', '业主缴费修改', '1189', '3', '#', '', 'F', '0', 'manage:fee:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1193', '业主缴费删除', '1189', '4', '#', '', 'F', '0', 'manage:fee:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1194', '装修日志管理', '1087', '8', '/manage/zxforum', 'menuItem', 'C', '0', 'manage:zxforum:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-21 12:14:07', '装修日志管理菜单');
INSERT INTO `sys_menu` VALUES ('1195', '装修日志管理查询', '1194', '1', '#', '', 'F', '0', 'manage:zxforum:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1196', '装修日志管理新增', '1194', '2', '#', '', 'F', '0', 'manage:zxforum:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1197', '装修日志管理修改', '1194', '3', '#', '', 'F', '0', 'manage:zxforum:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1198', '装修日志管理删除', '1194', '4', '#', '', 'F', '0', 'manage:zxforum:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1199', '评论管理', '1087', '9', '/manage/zxforumreply', 'menuItem', 'C', '0', 'manage:zxforumreply:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-21 14:09:47', '评论管理菜单');
INSERT INTO `sys_menu` VALUES ('1200', '评论管理查询', '1199', '1', '#', '', 'F', '0', 'manage:zxforumreply:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1201', '评论管理新增', '1199', '2', '#', '', 'F', '0', 'manage:zxforumreply:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1202', '评论管理修改', '1199', '3', '#', '', 'F', '0', 'manage:zxforumreply:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1203', '评论管理删除', '1199', '4', '#', '', 'F', '0', 'manage:zxforumreply:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1204', '装修案例', '1087', '5', '/manage/zxcase', 'menuItem', 'C', '0', 'manage:zxcase:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-01-02 09:20:46', '装修案例菜单');
INSERT INTO `sys_menu` VALUES ('1205', '装修案例查询', '1204', '1', '#', '', 'F', '0', 'manage:zxcase:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1206', '装修案例新增', '1204', '2', '#', '', 'F', '0', 'manage:zxcase:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1207', '装修案例修改', '1204', '3', '#', '', 'F', '0', 'manage:zxcase:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1208', '装修案例删除', '1204', '4', '#', '', 'F', '0', 'manage:zxcase:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1209', '微信用户审核', '1074', '0', '/manage/wxuserapply', 'menuItem', 'C', '0', 'manage:wxuserapply:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-01-03 16:44:36', '微信用户审核菜单');
INSERT INTO `sys_menu` VALUES ('1210', '微信用户审核查询', '1209', '1', '#', '', 'F', '0', 'manage:wxuserapply:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1211', '微信用户审核新增', '1209', '2', '#', '', 'F', '0', 'manage:wxuserapply:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1212', '微信用户审核修改', '1209', '3', '#', '', 'F', '0', 'manage:wxuserapply:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1213', '微信用户审核删除', '1209', '4', '#', '', 'F', '0', 'manage:wxuserapply:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1214', '主材推荐banner', '1087', '7', '/manage/zxmaterialbanner', 'menuItem', 'C', '0', 'manage:zxmaterialbanner:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-01-06 14:15:39', '主材推荐banner菜单');
INSERT INTO `sys_menu` VALUES ('1215', '主材推荐banner查询', '1214', '1', '#', '', 'F', '0', 'manage:zxmaterialbanner:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1216', '主材推荐banner新增', '1214', '2', '#', '', 'F', '0', 'manage:zxmaterialbanner:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1217', '主材推荐banner修改', '1214', '3', '#', '', 'F', '0', 'manage:zxmaterialbanner:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1218', '主材推荐banner删除', '1214', '4', '#', '', 'F', '0', 'manage:zxmaterialbanner:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=917 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-green\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '0', null, '2019-08-12 21:37:43');
INSERT INTO `sys_oper_log` VALUES ('101', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '0', null, '2019-08-12 21:38:13');
INSERT INTO `sys_oper_log` VALUES ('102', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"3\" ],\r\n  \"configName\" : [ \"主框架页-侧边栏主题\" ],\r\n  \"configKey\" : [ \"sys.index.sideTheme\" ],\r\n  \"configValue\" : [ \"theme-light\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"深色主题theme-dark，浅色主题theme-light\" ]\r\n}', '0', null, '2019-08-12 21:38:35');
INSERT INTO `sys_oper_log` VALUES ('103', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"3\" ],\r\n  \"configName\" : [ \"主框架页-侧边栏主题\" ],\r\n  \"configKey\" : [ \"sys.index.sideTheme\" ],\r\n  \"configValue\" : [ \"theme-dark\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"深色主题theme-dark，浅色主题theme-light\" ]\r\n}', '0', null, '2019-08-12 21:38:58');
INSERT INTO `sys_oper_log` VALUES ('104', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"theme-dark\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '0', null, '2019-08-12 21:39:02');
INSERT INTO `sys_oper_log` VALUES ('105', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.editSave()', '1', 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '0', null, '2019-08-12 21:39:35');
INSERT INTO `sys_oper_log` VALUES ('106', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', '1', 'admin', '研发部门', '/ruoyi-admin/system/user/resetPwd/2', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-08-13 08:46:42');
INSERT INTO `sys_oper_log` VALUES ('107', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', '1', 'admin', '研发部门', '/ruoyi-admin/system/user/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"password\" : [ \"123456\" ]\r\n}', '0', null, '2019-08-13 08:46:49');
INSERT INTO `sys_oper_log` VALUES ('108', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', '1', 'admin', '研发部门', '/ruoyi/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"手机用户\"],\"deptName\":[\"研发部门\"],\"phonenumber\":[\"13888888888\"],\"email\":[\"2252743889@qq.com\"],\"loginName\":[\"10001\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-08-14 17:26:09');
INSERT INTO `sys_oper_log` VALUES ('109', '角色管理', '1', 'com.ruoyi.project.system.role.controller.RoleController.addSave()', '1', 'admin', '研发部门', '/ruoyi/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"手机用户\"],\"roleKey\":[\"mobileuser\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '0', null, '2019-08-14 17:27:27');
INSERT INTO `sys_oper_log` VALUES ('110', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', '1', 'admin', '研发部门', '/ruoyi/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"deptId\":[\"103\"],\"userName\":[\"手机用户\"],\"dept.deptName\":[\"研发部门\"],\"phonenumber\":[\"13888888888\"],\"email\":[\"2252743889@qq.com\"],\"loginName\":[\"10001\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '0', null, '2019-08-14 17:28:06');
INSERT INTO `sys_oper_log` VALUES ('111', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '研发部门', '/ruoyi/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"手机用户\"],\"roleKey\":[\"mobileuser\"],\"dataScope\":[\"5\"],\"deptIds\":[\"\"]}', '0', null, '2019-08-14 17:29:37');
INSERT INTO `sys_oper_log` VALUES ('112', '角色管理', '4', 'com.ruoyi.project.system.role.controller.RoleController.cancelAuthUser()', '1', 'admin', '研发部门', '/ruoyi/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"userId\":[\"3\"]}', '0', null, '2019-08-14 17:29:55');
INSERT INTO `sys_oper_log` VALUES ('113', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', '1', 'admin', '研发部门', '/ruoyi/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"deptId\":[\"103\"],\"userName\":[\"手机用户\"],\"dept.deptName\":[\"研发部门\"],\"phonenumber\":[\"13888888888\"],\"email\":[\"2252743889@qq.com\"],\"loginName\":[\"10001\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '0', null, '2019-08-14 17:30:18');
INSERT INTO `sys_oper_log` VALUES ('114', '在线用户', '7', 'com.ruoyi.project.monitor.online.controller.UserOnlineController.forceLogout()', '1', 'ry', '测试部门', '/ruoyi/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\"sessionId\":[\"affb0d84-f365-4833-8e6b-acc12298d184\"]}', '0', null, '2019-08-15 09:12:41');
INSERT INTO `sys_oper_log` VALUES ('115', '在线用户', '7', 'com.ruoyi.project.monitor.online.controller.UserOnlineController.forceLogout()', '1', 'admin', null, '/ruoyi/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\"sessionId\":[\"affb0d84-f365-4833-8e6b-acc12298d184\"]}', '1', 'com.ruoyi.project.monitor.online.domain.OnlineSession cannot be cast to com.ruoyi.project.monitor.online.domain.OnlineSession', '2019-08-15 09:13:56');
INSERT INTO `sys_oper_log` VALUES ('116', '在线用户', '7', 'com.ruoyi.project.monitor.online.controller.UserOnlineController.forceLogout()', '1', 'admin', '研发部门', '/ruoyi/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\"sessionId\":[\"affb0d84-f365-4833-8e6b-acc12298d184\"]}', '1', 'com.ruoyi.project.monitor.online.domain.OnlineSession cannot be cast to com.ruoyi.project.monitor.online.domain.OnlineSession', '2019-08-15 09:15:14');
INSERT INTO `sys_oper_log` VALUES ('117', '重置密码', '2', 'com.ruoyi.project.system.user.controller.UserController.resetPwd()', '1', 'admin', null, '/ruoyi/system/user/resetPwd/3', '127.0.0.1', '内网IP', '{}', '0', null, '2019-08-15 09:49:22');
INSERT INTO `sys_oper_log` VALUES ('118', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.changeStatus()', '1', 'admin', null, '/ruoyi/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"status\":[\"1\"]}', '0', null, '2019-08-15 10:06:34');
INSERT INTO `sys_oper_log` VALUES ('119', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.changeStatus()', '1', 'admin', null, '/ruoyi/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"status\":[\"0\"]}', '0', null, '2019-08-15 10:06:55');
INSERT INTO `sys_oper_log` VALUES ('120', '用户管理', '5', 'com.ruoyi.project.system.user.controller.UserController.export()', '1', 'admin', '研发部门', '/ruoyi/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '0', null, '2019-08-15 13:48:49');
INSERT INTO `sys_oper_log` VALUES ('121', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_config\"]}', '0', null, '2019-08-16 08:47:43');
INSERT INTO `sys_oper_log` VALUES ('122', '代码生成', '3', 'com.ruoyi.project.tool.gen.controller.GenController.remove()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-08-16 08:50:14');
INSERT INTO `sys_oper_log` VALUES ('123', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_wx_joinpoker\"]}', '0', null, '2019-08-16 08:50:23');
INSERT INTO `sys_oper_log` VALUES ('124', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"t_wx_joinpoker\"],\"tableComment\":[\"报名比赛\"],\"className\":[\"WxJoinpoker\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"null\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"joinName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"null\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"joinPhone\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"null\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"idcardNum\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"15\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"null\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"totalFee\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"16\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"null\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"status\"],\"columns[5].isInse', '0', null, '2019-08-16 08:53:58');
INSERT INTO `sys_oper_log` VALUES ('125', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/genCode/t_wx_joinpoker', '127.0.0.1', '内网IP', '{}', '0', null, '2019-08-16 08:54:29');
INSERT INTO `sys_oper_log` VALUES ('126', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"t_wx_joinpoker\"],\"tableComment\":[\"报名比赛\"],\"className\":[\"WxJoinpoker\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"null\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"joinName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"null\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"joinPhone\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"null\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"idcardNum\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"15\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"null\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"totalFee\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"16\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"null\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"status\"],\"columns[5].isInse', '0', null, '2019-08-16 09:48:36');
INSERT INTO `sys_oper_log` VALUES ('127', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/genCode/t_wx_joinpoker', '127.0.0.1', '内网IP', '{}', '0', null, '2019-08-16 09:48:39');
INSERT INTO `sys_oper_log` VALUES ('128', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"t_wx_joinpoker\"],\"tableComment\":[\"报名比赛\"],\"className\":[\"WxJoinpoker\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"null\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"joinName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"null\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"joinPhone\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"null\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"idcardNum\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"15\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"null\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"totalFee\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"16\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"null\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"status\"],\"columns[5].isInse', '0', null, '2019-08-16 10:24:07');
INSERT INTO `sys_oper_log` VALUES ('129', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/genCode/t_wx_joinpoker', '127.0.0.1', '内网IP', '{}', '0', null, '2019-08-16 10:24:10');
INSERT INTO `sys_oper_log` VALUES ('130', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"t_wx_joinpoker\"],\"tableComment\":[\"报名比赛\"],\"className\":[\"WxJoinpoker\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"报名人1\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"joinName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"报名电话1\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"joinPhone\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"身份证号码1\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"idcardNum\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"15\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"费用\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"totalFee\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"16\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"状态\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"status\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":', '0', null, '2019-08-16 11:00:30');
INSERT INTO `sys_oper_log` VALUES ('131', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/genCode/t_wx_joinpoker', '127.0.0.1', '内网IP', '{}', '0', null, '2019-08-16 11:00:33');
INSERT INTO `sys_oper_log` VALUES ('132', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"t_wx_joinpoker\"],\"tableComment\":[\"报名比赛\"],\"className\":[\"WxJoinpoker\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"报名人1\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"joinName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"报名电话1\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"joinPhone\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"身份证号码1\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"idcardNum\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"15\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"费用\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"totalFee\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"16\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"状态\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"status\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":', '0', null, '2019-08-16 11:01:19');
INSERT INTO `sys_oper_log` VALUES ('133', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '研发部门', '/ruoyi/tool/gen/genCode/t_wx_joinpoker', '127.0.0.1', '内网IP', '{}', '0', null, '2019-08-16 11:01:22');
INSERT INTO `sys_oper_log` VALUES ('134', '报名比赛', '2', 'com.ruoyi.project.joinpoker.controller.WxJoinpokerController.editSave()', '1', 'admin', null, '/ruoyi/joinpoker/joinpoker/edit', '127.0.0.1', '内网IP', '{\"id\":[\"0153df81a10748a8994173713f58262c\"],\"joinName\":[\"李纯智\"],\"joinPhone\":[\"15252828554\"],\"idcardNum\":[\"320704196403193516\"],\"totalFee\":[\"4000\"],\"status\":[\"1\"],\"openid\":[\"odPtF56XTSdLxn6Rc3CoVbaf40hM\"],\"recordDate\":[\"2019-08-12\"],\"payDate\":[\"2019-08-12\"],\"baomingNum\":[\"\"],\"joinType\":[\"\"],\"joinName2\":[\"纪义\"],\"joinPhone2\":[\"15951257025\"],\"idcardNum2\":[\"320704197003240019\"]}', '0', null, '2019-08-16 11:38:53');
INSERT INTO `sys_oper_log` VALUES ('135', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', '1', 'admin', null, '/ruoyi/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"手机用户\"],\"deptName\":[\"研发部门\"],\"phonenumber\":[\"13888888889\"],\"email\":[\"2252743899@qq.com\"],\"loginName\":[\"10002\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"wq\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-08-16 13:07:34');
INSERT INTO `sys_oper_log` VALUES ('136', '在线用户', '7', 'com.ruoyi.project.monitor.online.controller.UserOnlineController.forceLogout()', '1', 'admin', '研发部门', '/ruoyi/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\"sessionId\":[\"cce6d09a-1d69-4d46-9181-571cf71723f0\"]}', '0', null, '2019-08-19 17:40:36');
INSERT INTO `sys_oper_log` VALUES ('137', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', '1', 'admin', '研发部门', '/ruoyi/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"若依\"],\"dept.deptName\":[\"测试部门\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\",\"3\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2,3\"],\"postIds\":[\"2\"]}', '0', null, '2019-08-23 14:18:33');
INSERT INTO `sys_oper_log` VALUES ('138', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '研发部门', '/ruoyi/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011\"]}', '0', null, '2019-08-23 14:20:04');
INSERT INTO `sys_oper_log` VALUES ('139', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '研发部门', '/ruoyi/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"手机用户\"],\"roleKey\":[\"mobileuser\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,103,1016,1017,1018,1019\"]}', '0', null, '2019-08-23 14:20:14');
INSERT INTO `sys_oper_log` VALUES ('140', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/zgl-onlinesales/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"在线采购系统\"],\"deptName\":[\"在线采购\"],\"orderNum\":[\"1\"],\"leader\":[\"采购1\"],\"phone\":[\"15888888888\"],\"email\":[\"12345678@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-08-28 16:05:00');
INSERT INTO `sys_oper_log` VALUES ('141', '用户管理', '3', 'com.ruoyi.project.system.user.controller.UserController.remove()', '1', 'admin', '研发部门', '/zgl-onlinesales/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-08-28 16:05:14');
INSERT INTO `sys_oper_log` VALUES ('142', '用户管理', '3', 'com.ruoyi.project.system.user.controller.UserController.remove()', '1', 'admin', '研发部门', '/zgl-onlinesales/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2019-08-28 16:05:19');
INSERT INTO `sys_oper_log` VALUES ('143', '用户管理', '3', 'com.ruoyi.project.system.user.controller.UserController.remove()', '1', 'admin', '研发部门', '/zgl-onlinesales/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '0', null, '2019-08-28 16:05:21');
INSERT INTO `sys_oper_log` VALUES ('144', '角色管理', '3', 'com.ruoyi.project.system.role.controller.RoleController.remove()', '1', 'admin', '研发部门', '/zgl-onlinesales/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2019-08-28 16:05:32');
INSERT INTO `sys_oper_log` VALUES ('145', '角色管理', '3', 'com.ruoyi.project.system.role.controller.RoleController.remove()', '1', 'admin', '研发部门', '/zgl-onlinesales/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2019-08-28 16:05:41');
INSERT INTO `sys_oper_log` VALUES ('146', '角色管理', '1', 'com.ruoyi.project.system.role.controller.RoleController.addSave()', '1', 'admin', '研发部门', '/zgl-onlinesales/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"数据管理员\"],\"roleKey\":[\"datamanage\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"管理前台显示数据信息\"],\"menuIds\":[\"\"]}', '0', null, '2019-08-28 16:07:28');
INSERT INTO `sys_oper_log` VALUES ('147', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', '1', 'admin', '研发部门', '/zgl-onlinesales/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"userName\":[\"10001\"],\"deptName\":[\"在线采购\"],\"phonenumber\":[\"13800000000\"],\"email\":[\"13800000000@qq.com\"],\"loginName\":[\"10001\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"4\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"4\"],\"postIds\":[\"\"]}', '0', null, '2019-08-28 16:10:09');
INSERT INTO `sys_oper_log` VALUES ('148', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', null, '/zgl-onlinesales/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"数据管理员\"],\"roleKey\":[\"datamanage\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"管理前台显示数据信息\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019\"]}', '0', null, '2019-08-28 16:11:08');
INSERT INTO `sys_oper_log` VALUES ('149', '岗位管理', '3', 'com.ruoyi.project.system.post.controller.PostController.remove()', '1', 'admin', null, '/zgl-onlinesales/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '0', null, '2019-08-28 16:12:19');
INSERT INTO `sys_oper_log` VALUES ('150', '岗位管理', '3', 'com.ruoyi.project.system.post.controller.PostController.remove()', '1', 'admin', null, '/zgl-onlinesales/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2019-08-28 16:12:21');
INSERT INTO `sys_oper_log` VALUES ('151', '岗位管理', '3', 'com.ruoyi.project.system.post.controller.PostController.remove()', '1', 'admin', null, '/zgl-onlinesales/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-08-28 16:12:29');
INSERT INTO `sys_oper_log` VALUES ('152', '岗位管理', '3', 'com.ruoyi.project.system.post.controller.PostController.remove()', '1', 'admin', null, '/zgl-onlinesales/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-08-28 16:12:33');
INSERT INTO `sys_oper_log` VALUES ('153', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', null, '/zgl-onlinesales/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"在线采购系统\"],\"deptName\":[\"部门一\"],\"orderNum\":[\"1\"],\"leader\":[\"采购1\"],\"phone\":[\"15888888888\"],\"email\":[\"12345678@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-08-28 16:15:29');
INSERT INTO `sys_oper_log` VALUES ('154', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '在线采购系统', '/zgl-onlinesales/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"数据管理员\"],\"roleKey\":[\"datamanage\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '0', null, '2019-08-28 17:30:39');
INSERT INTO `sys_oper_log` VALUES ('155', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', '1', 'admin', '在线采购系统', '/zgl-onlinesales/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"101\"],\"deptName\":[\"分部门1\"],\"orderNum\":[\"1\"],\"leader\":[\"1\"],\"phone\":[\"13800000000\"],\"email\":[\"13800000000@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-08-28 17:32:58');
INSERT INTO `sys_oper_log` VALUES ('156', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '在线采购系统', '/zgl-onlinesales/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"数据管理员\"],\"roleKey\":[\"datamanage\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', '0', null, '2019-08-28 17:34:42');
INSERT INTO `sys_oper_log` VALUES ('157', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '在线采购系统', '/zgl-onlinesales/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"数据管理员\"],\"roleKey\":[\"datamanage\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '0', null, '2019-08-28 17:35:55');
INSERT INTO `sys_oper_log` VALUES ('158', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '在线采购系统', '/zgl-onlinesales/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"数据管理员\"],\"roleKey\":[\"datamanage\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"管理前台显示数据信息\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019\"]}', '0', null, '2019-08-28 17:44:58');
INSERT INTO `sys_oper_log` VALUES ('159', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', '1', 'admin', '在线采购系统', '/zgl-onlinesales/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"在线采购系统管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-window-restore\"],\"visible\":[\"0\"]}', '0', null, '2019-08-29 08:35:50');
INSERT INTO `sys_oper_log` VALUES ('160', '角色管理', '1', 'com.ruoyi.project.system.role.controller.RoleController.addSave()', '1', 'admin', '在线采购系统', '/zgl-onlinesales/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"客服\"],\"roleKey\":[\"customerService\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '0', null, '2019-08-29 08:44:02');
INSERT INTO `sys_oper_log` VALUES ('161', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '在线采购系统', '/jssgyqysy/system/menu/remove/1068', '127.0.0.1', '内网IP', '{}', '0', null, '2019-10-17 11:19:34');
INSERT INTO `sys_oper_log` VALUES ('338', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', null, '/lygfljg/system/dept/remove/110', '127.0.0.1', '内网IP', '{}', '0', null, '2019-11-28 11:42:27');
INSERT INTO `sys_oper_log` VALUES ('339', '用户管理', '3', 'com.ruoyi.project.system.user.controller.UserController.remove()', '1', 'admin', null, '/lygfljg/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '0', null, '2019-11-28 11:42:35');
INSERT INTO `sys_oper_log` VALUES ('340', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', null, '/lygfljg/system/dept/remove/110', '127.0.0.1', '内网IP', '{}', '0', null, '2019-11-28 11:42:40');
INSERT INTO `sys_oper_log` VALUES ('341', '用户管理', '3', 'com.ruoyi.project.system.user.controller.UserController.remove()', '1', 'admin', null, '/lygfljg/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '0', null, '2019-11-28 11:42:47');
INSERT INTO `sys_oper_log` VALUES ('342', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', null, '/lygfljg/system/dept/remove/110', '127.0.0.1', '内网IP', '{}', '0', null, '2019-11-28 11:42:51');
INSERT INTO `sys_oper_log` VALUES ('343', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"防雷监管\"],\"orderNum\":[\"0\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-11-28 13:41:05');
INSERT INTO `sys_oper_log` VALUES ('344', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"防雷监管\"],\"deptName\":[\"部门一\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-11-28 13:41:13');
INSERT INTO `sys_oper_log` VALUES ('345', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"防雷监管\"],\"deptName\":[\"机构部门1\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-11-28 13:41:47');
INSERT INTO `sys_oper_log` VALUES ('346', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', '1', 'admin', '防雷监管', '/lygfljg/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"100\"],\"deptName\":[\"机构部门2\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-11-28 13:41:58');
INSERT INTO `sys_oper_log` VALUES ('347', '角色管理', '3', 'com.ruoyi.project.system.role.controller.RoleController.remove()', '1', 'admin', '防雷监管', '/lygfljg/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '0', null, '2019-11-28 13:43:23');
INSERT INTO `sys_oper_log` VALUES ('348', '角色管理', '3', 'com.ruoyi.project.system.role.controller.RoleController.remove()', '1', 'admin', '防雷监管', '/lygfljg/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '0', null, '2019-11-28 13:43:25');
INSERT INTO `sys_oper_log` VALUES ('349', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"监管管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"\"]}', '0', null, '2019-11-28 13:43:49');
INSERT INTO `sys_oper_log` VALUES ('350', '角色管理', '1', 'com.ruoyi.project.system.role.controller.RoleController.addSave()', '1', 'admin', '防雷监管', '/lygfljg/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"机构管理员\"],\"roleKey\":[\"jgadmin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '0', null, '2019-11-28 13:44:20');
INSERT INTO `sys_oper_log` VALUES ('351', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '防雷监管', '/lygfljg/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"机构管理员\"],\"roleKey\":[\"jgadmin\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '0', null, '2019-11-28 13:44:28');
INSERT INTO `sys_oper_log` VALUES ('352', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"101\"],\"userName\":[\"10001\"],\"dept.deptName\":[\"机构部门1\"],\"phonenumber\":[\"13800000000\"],\"email\":[\"13800000000@qq.com\"],\"loginName\":[\"10001\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"\"]}', '0', null, '2019-11-28 13:44:41');
INSERT INTO `sys_oper_log` VALUES ('353', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"6\"],\"deptId\":[\"111\"],\"userName\":[\"10002\"],\"dept.deptName\":[\"机构部门2\"],\"phonenumber\":[\"13800000001\"],\"email\":[\"2252743888@qq.com\"],\"loginName\":[\"10002\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"\"]}', '0', null, '2019-11-28 13:44:45');
INSERT INTO `sys_oper_log` VALUES ('354', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', '1', 'admin', '防雷监管', '/lygfljg/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"userName\":[\"10000\"],\"deptName\":[\"防雷监管\"],\"phonenumber\":[\"13888888888\"],\"email\":[\"2252743889@qq.com\"],\"loginName\":[\"10000\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"\"]}', '0', null, '2019-11-28 13:47:06');
INSERT INTO `sys_oper_log` VALUES ('355', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"\"]}', '0', null, '2019-11-28 13:48:59');
INSERT INTO `sys_oper_log` VALUES ('356', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"监管管理员\"],\"roleKey\":[\"jgadmin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '0', null, '2019-11-28 13:49:11');
INSERT INTO `sys_oper_log` VALUES ('357', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"系统管理员\"],\"roleKey\":[\"sysadmin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '0', null, '2019-11-28 13:49:44');
INSERT INTO `sys_oper_log` VALUES ('358', '角色管理', '1', 'com.ruoyi.project.system.role.controller.RoleController.addSave()', '1', 'admin', '防雷监管', '/lygfljg/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"机构管理员\"],\"roleKey\":[\"jgadmin\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '0', null, '2019-11-28 13:49:58');
INSERT INTO `sys_oper_log` VALUES ('359', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"后台管理系统\"],\"orderNum\":[\"0\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-11-28 13:51:25');
INSERT INTO `sys_oper_log` VALUES ('360', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', '防雷监管', '/lygfljg/system/dept/remove/111', '127.0.0.1', '内网IP', '{}', '0', null, '2019-11-28 13:51:30');
INSERT INTO `sys_oper_log` VALUES ('361', '用户管理', '3', 'com.ruoyi.project.system.user.controller.UserController.remove()', '1', 'admin', '防雷监管', '/lygfljg/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '0', null, '2019-11-28 13:51:38');
INSERT INTO `sys_oper_log` VALUES ('362', '部门管理', '3', 'com.ruoyi.project.system.dept.controller.DeptController.remove()', '1', 'admin', '防雷监管', '/lygfljg/system/dept/remove/111', '127.0.0.1', '内网IP', '{}', '0', null, '2019-11-28 13:51:43');
INSERT INTO `sys_oper_log` VALUES ('363', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"后台管理系统\"],\"deptName\":[\"监管部门\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-11-28 13:52:02');
INSERT INTO `sys_oper_log` VALUES ('364', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '防雷监管', '/lygfljg/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"系统管理员\"],\"roleKey\":[\"sysadmin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', '0', null, '2019-11-28 13:53:57');
INSERT INTO `sys_oper_log` VALUES ('365', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"7\"],\"roleName\":[\"机构管理员\"],\"roleKey\":[\"jgadmin\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '0', null, '2019-11-28 13:54:10');
INSERT INTO `sys_oper_log` VALUES ('366', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"系统管理员\"],\"roleKey\":[\"sysadmin\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '0', null, '2019-11-28 13:55:03');
INSERT INTO `sys_oper_log` VALUES ('367', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"101\"],\"deptName\":[\"机构部门1\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-11-28 13:55:46');
INSERT INTO `sys_oper_log` VALUES ('368', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"101\"],\"deptName\":[\"机构部门2\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-11-28 13:55:54');
INSERT INTO `sys_oper_log` VALUES ('369', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"7\"],\"deptId\":[\"101\"],\"userName\":[\"10000\"],\"dept.deptName\":[\"监管部门\"],\"phonenumber\":[\"13888888888\"],\"email\":[\"2252743889@qq.com\"],\"loginName\":[\"10000\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"\"]}', '0', null, '2019-11-28 13:56:15');
INSERT INTO `sys_oper_log` VALUES ('370', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"112\"],\"userName\":[\"10001\"],\"dept.deptName\":[\"机构部门1\"],\"phonenumber\":[\"13800000000\"],\"email\":[\"13800000000@qq.com\"],\"loginName\":[\"10001\"],\"sex\":[\"0\"],\"role\":[\"7\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"7\"],\"postIds\":[\"\"]}', '0', null, '2019-11-28 14:13:29');
INSERT INTO `sys_oper_log` VALUES ('371', '重置密码', '2', 'com.ruoyi.project.system.user.controller.UserController.resetPwd()', '1', '10000', '监管部门', '/lygfljg/system/user/resetPwd/7', '127.0.0.1', '内网IP', '{}', '0', null, '2019-11-28 14:27:29');
INSERT INTO `sys_oper_log` VALUES ('372', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"系统管理员\"],\"roleKey\":[\"sysadmin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019\"]}', '0', null, '2019-11-28 14:32:48');
INSERT INTO `sys_oper_log` VALUES ('373', '字典类型', '3', 'com.ruoyi.project.system.dict.controller.DictTypeController.remove()', '1', 'admin', '后台管理系统', '/lygfljg/system/dict/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15,14,13,12,11\"]}', '0', null, '2019-11-28 14:34:24');
INSERT INTO `sys_oper_log` VALUES ('374', '字典数据', '3', 'com.ruoyi.project.system.dict.controller.DictDataController.remove()', '1', 'admin', '后台管理系统', '/lygfljg/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"43,42,41\"]}', '0', null, '2019-11-28 14:34:36');
INSERT INTO `sys_oper_log` VALUES ('375', '字典数据', '3', 'com.ruoyi.project.system.dict.controller.DictDataController.remove()', '1', 'admin', '后台管理系统', '/lygfljg/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"40,39,38,37\"]}', '0', null, '2019-11-28 14:34:50');
INSERT INTO `sys_oper_log` VALUES ('376', '字典数据', '3', 'com.ruoyi.project.system.dict.controller.DictDataController.remove()', '1', 'admin', '后台管理系统', '/lygfljg/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"36,35,34\"]}', '0', null, '2019-11-28 14:34:56');
INSERT INTO `sys_oper_log` VALUES ('377', '字典数据', '3', 'com.ruoyi.project.system.dict.controller.DictDataController.remove()', '1', 'admin', '后台管理系统', '/lygfljg/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"33,32\"]}', '0', null, '2019-11-28 14:35:05');
INSERT INTO `sys_oper_log` VALUES ('378', '字典数据', '3', 'com.ruoyi.project.system.dict.controller.DictDataController.remove()', '1', 'admin', '后台管理系统', '/lygfljg/system/dict/data/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"31,30,29\"]}', '0', null, '2019-11-28 14:35:12');
INSERT INTO `sys_oper_log` VALUES ('379', '字典类型', '3', 'com.ruoyi.project.system.dict.controller.DictTypeController.remove()', '1', 'admin', '后台管理系统', '/lygfljg/system/dict/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15,14,13,12,11\"]}', '0', null, '2019-11-28 14:35:25');
INSERT INTO `sys_oper_log` VALUES ('380', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"6\"],\"dictLabel\":[\"正常\"],\"dictValue\":[\"0\"],\"dictType\":[\"sys_normal_disable\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"正常状态\"]}', '0', null, '2019-11-28 14:36:03');
INSERT INTO `sys_oper_log` VALUES ('381', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"7\"],\"dictLabel\":[\"停用\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_normal_disable\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"停用状态\"]}', '0', null, '2019-11-28 14:36:08');
INSERT INTO `sys_oper_log` VALUES ('382', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1074\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"后台管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-tv\"],\"visible\":[\"0\"]}', '0', null, '2019-11-28 14:48:08');
INSERT INTO `sys_oper_log` VALUES ('383', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"后台管理系统\"],\"deptName\":[\"小区\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 11:15:02');
INSERT INTO `sys_oper_log` VALUES ('384', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"parentId\":[\"101\"],\"parentName\":[\"小区\"],\"deptName\":[\"小区1\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 11:15:10');
INSERT INTO `sys_oper_log` VALUES ('385', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"113\"],\"parentId\":[\"101\"],\"parentName\":[\"小区\"],\"deptName\":[\"小区2\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 11:15:17');
INSERT INTO `sys_oper_log` VALUES ('386', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"101\"],\"deptName\":[\"小区3\"],\"orderNum\":[\"3\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 11:15:25');
INSERT INTO `sys_oper_log` VALUES ('387', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"101\"],\"deptName\":[\"小区4\"],\"orderNum\":[\"4\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 11:15:34');
INSERT INTO `sys_oper_log` VALUES ('388', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"后台管理系统\"],\"deptName\":[\"监管部门\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 11:16:16');
INSERT INTO `sys_oper_log` VALUES ('389', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"parentId\":[\"101\"],\"parentName\":[\"监管部门\"],\"deptName\":[\"部门1\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 11:16:23');
INSERT INTO `sys_oper_log` VALUES ('390', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"113\"],\"parentId\":[\"101\"],\"parentName\":[\"监管部门\"],\"deptName\":[\"部门2\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 11:16:32');
INSERT INTO `sys_oper_log` VALUES ('391', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"parentId\":[\"101\"],\"parentName\":[\"监管部门\"],\"deptName\":[\"部门3\"],\"orderNum\":[\"3\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 11:16:38');
INSERT INTO `sys_oper_log` VALUES ('392', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"115\"],\"parentId\":[\"101\"],\"parentName\":[\"监管部门\"],\"deptName\":[\"部门4\"],\"orderNum\":[\"4\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 11:16:45');
INSERT INTO `sys_oper_log` VALUES ('393', '代码生成', '3', 'com.ruoyi.project.tool.gen.controller.GenController.remove()', '1', 'admin', '后台管理系统', '/lygfljg/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"21,20,19,16,14,12,10\"]}', '0', null, '2019-12-02 15:39:55');
INSERT INTO `sys_oper_log` VALUES ('394', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '后台管理系统', '/lygfljg/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_wxjgoper_user\"]}', '0', null, '2019-12-02 15:39:59');
INSERT INTO `sys_oper_log` VALUES ('395', '代码生成', '3', 'com.ruoyi.project.tool.gen.controller.GenController.remove()', '1', 'admin', '后台管理系统', '/lygfljg/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"22\"]}', '0', null, '2019-12-02 15:42:34');
INSERT INTO `sys_oper_log` VALUES ('396', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '后台管理系统', '/lygfljg/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xcjcoper_user\"]}', '0', null, '2019-12-02 15:42:37');
INSERT INTO `sys_oper_log` VALUES ('397', '代码生成', '3', 'com.ruoyi.project.tool.gen.controller.GenController.remove()', '1', 'admin', '后台管理系统', '/lygfljg/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"23\"]}', '0', null, '2019-12-02 15:43:48');
INSERT INTO `sys_oper_log` VALUES ('398', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '后台管理系统', '/lygfljg/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xcjcoper_user\"]}', '0', null, '2019-12-02 15:43:57');
INSERT INTO `sys_oper_log` VALUES ('399', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"24\"],\"tableName\":[\"t_xcjcoper_user\"],\"tableComment\":[\"现场检查人员\"],\"className\":[\"XcjcoperUser\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"201\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"202\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"微信ID\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openid\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"203\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"operName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"204\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"手机号码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"operPhone\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"205\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"备注\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"remark\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"206\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"null\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"createBy\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"c', '0', null, '2019-12-02 15:47:26');
INSERT INTO `sys_oper_log` VALUES ('400', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '后台管理系统', '/lygfljg/tool/gen/genCode/t_xcjcoper_user', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-02 15:47:34');
INSERT INTO `sys_oper_log` VALUES ('401', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1075\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"现场检测人员审核\"],\"url\":[\"/project/xcjcoperuser\"],\"target\":[\"menuItem\"],\"perms\":[\"project:xcjcoperuser:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-02 15:50:42');
INSERT INTO `sys_oper_log` VALUES ('402', '现场检测人员审核', '1', 'com.ruoyi.project.xcjcoperuser.controller.XcjcoperUserController.addSave()', '1', 'admin', null, '/lygfljg/project/xcjcoperuser/add', '127.0.0.1', '内网IP', '{\"operName\":[\"1\"],\"operPhone\":[\"23\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.xcjcoperuser.mapper.XcjcoperUserMapper.insertXcjcoperUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_xcjcoper_user          ( oper_name,             oper_phone,                                       create_time,                          update_time )           values ( ?,             ?,                                       ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-12-02 15:52:29');
INSERT INTO `sys_oper_log` VALUES ('403', '现场检测人员审核', '1', 'com.ruoyi.project.xcjcoperuser.controller.XcjcoperUserController.addSave()', '1', 'admin', null, '/lygfljg/project/xcjcoperuser/add', '127.0.0.1', '内网IP', '{\"operName\":[\"1\"],\"operPhone\":[\"23\"]}', '0', null, '2019-12-02 15:52:59');
INSERT INTO `sys_oper_log` VALUES ('404', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1075\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"现场检测人员管理\"],\"url\":[\"/project/xcjcoperuser\"],\"target\":[\"menuItem\"],\"perms\":[\"project:xcjcoperuser:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-02 16:04:33');
INSERT INTO `sys_oper_log` VALUES ('405', '现场检测人员', '2', 'com.ruoyi.project.xcjcoperuser.controller.XcjcoperUserController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/project/xcjcoperuser/edit', '127.0.0.1', '内网IP', '{\"xcjcUserId\":[\"1\"],\"operName\":[\"1\"],\"operPhone\":[\"233\"]}', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'id\' in \'class com.ruoyi.project.xcjcoperuser.domain.XcjcoperUser\'', '2019-12-02 16:27:08');
INSERT INTO `sys_oper_log` VALUES ('406', '现场检测人员', '2', 'com.ruoyi.project.xcjcoperuser.controller.XcjcoperUserController.editSave()', '1', 'admin', null, '/lygfljg/project/xcjcoperuser/edit', '127.0.0.1', '内网IP', '{\"xcjcUserId\":[\"1\"],\"operName\":[\"1\"],\"operPhone\":[\"233\"]}', '0', null, '2019-12-02 16:28:43');
INSERT INTO `sys_oper_log` VALUES ('407', '现场检测人员', '2', 'com.ruoyi.project.xcjcoperuser.controller.XcjcoperUserController.editSave()', '1', 'admin', null, '/lygfljg/project/xcjcoperuser/edit', '127.0.0.1', '内网IP', '{\"xcjcUserId\":[\"1\"],\"operName\":[\"12\"],\"operPhone\":[\"233\"]}', '0', null, '2019-12-02 16:28:55');
INSERT INTO `sys_oper_log` VALUES ('408', '现场检测人员', '3', 'com.ruoyi.project.xcjcoperuser.controller.XcjcoperUserController.remove()', '1', 'admin', null, '/lygfljg/project/xcjcoperuser/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-12-02 16:29:03');
INSERT INTO `sys_oper_log` VALUES ('409', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"检测人员审核\"],\"url\":[\"/project/xcjcuserapply\"],\"target\":[\"menuItem\"],\"perms\":[\"project:xcjcuserapply:view\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-12-02 17:07:22');
INSERT INTO `sys_oper_log` VALUES ('410', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1080\"],\"menuType\":[\"F\"],\"menuName\":[\"查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"project:xcjcuserapply:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-12-02 17:07:53');
INSERT INTO `sys_oper_log` VALUES ('411', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1075\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"现场检测人员管理\"],\"url\":[\"/project/xcjcoperuser\"],\"target\":[\"menuItem\"],\"perms\":[\"project:xcjcoperuser:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-02 17:08:11');
INSERT INTO `sys_oper_log` VALUES ('412', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '后台管理系统', '/lygfljg/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1080\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"检测人员审核\"],\"url\":[\"/project/xcjcuserapply\"],\"target\":[\"menuItem\"],\"perms\":[\"project:xcjcuserapply:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-02 17:08:19');
INSERT INTO `sys_oper_log` VALUES ('413', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/gcxw/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"后台管理系统\"],\"deptName\":[\"小区\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:33:16');
INSERT INTO `sys_oper_log` VALUES ('414', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/gcxw/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"parentId\":[\"101\"],\"parentName\":[\"小区\"],\"deptName\":[\"小区1\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:33:25');
INSERT INTO `sys_oper_log` VALUES ('415', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/gcxw/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"113\"],\"parentId\":[\"101\"],\"parentName\":[\"小区\"],\"deptName\":[\"小区2\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:33:29');
INSERT INTO `sys_oper_log` VALUES ('416', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/gcxw/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"parentId\":[\"101\"],\"parentName\":[\"小区\"],\"deptName\":[\"小区3\"],\"orderNum\":[\"3\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:33:33');
INSERT INTO `sys_oper_log` VALUES ('417', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/gcxw/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"115\"],\"parentId\":[\"101\"],\"parentName\":[\"小区\"],\"deptName\":[\"小区4\"],\"orderNum\":[\"4\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:33:38');
INSERT INTO `sys_oper_log` VALUES ('418', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '后台管理系统', '/gcxw/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"7\"],\"roleName\":[\"小区管理员\"],\"roleKey\":[\"xqadmin\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '0', null, '2019-12-02 19:35:24');
INSERT INTO `sys_oper_log` VALUES ('419', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '后台管理系统', '/gcxw/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"7\"],\"roleName\":[\"小区管理员\"],\"roleKey\":[\"xqadmin\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,112,113,114\"]}', '0', null, '2019-12-02 19:35:35');
INSERT INTO `sys_oper_log` VALUES ('420', '角色管理', '1', 'com.ruoyi.project.system.role.controller.RoleController.addSave()', '1', 'admin', '后台管理系统', '/gcxw/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"装修管理员\"],\"roleKey\":[\"zxadmin\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '0', null, '2019-12-02 19:36:06');
INSERT INTO `sys_oper_log` VALUES ('421', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '后台管理系统', '/gcxw/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"8\"],\"roleName\":[\"装修管理员\"],\"roleKey\":[\"zxadmin\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,116\"]}', '0', null, '2019-12-02 19:36:15');
INSERT INTO `sys_oper_log` VALUES ('422', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', '1', 'admin', '后台管理系统', '/gcxw/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"112\"],\"dept.deptName\":[\"小区1\"],\"loginName\":[\"10001\"],\"userName\":[\"10001\"],\"phonenumber\":[\"13800000000\"],\"sex\":[\"0\"],\"role\":[\"7\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"7\"],\"postIds\":[\"\"]}', '0', null, '2019-12-02 19:37:22');
INSERT INTO `sys_oper_log` VALUES ('423', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', '1', 'admin', '后台管理系统', '/gcxw/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"116\"],\"deptName\":[\"装修\"],\"loginName\":[\"11001\"],\"userName\":[\"装修管理\"],\"phonenumber\":[\"13888888887\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"8\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"8\"],\"postIds\":[\"\"]}', '0', null, '2019-12-02 19:38:24');
INSERT INTO `sys_oper_log` VALUES ('424', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '后台管理系统', '/gcxw/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"7\"],\"roleName\":[\"小区管理员\"],\"roleKey\":[\"xqadmin\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '0', null, '2019-12-02 19:41:06');
INSERT INTO `sys_oper_log` VALUES ('425', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '后台管理系统', '/gcxw/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"后台管理系统\"],\"deptName\":[\"片区1\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:50:14');
INSERT INTO `sys_oper_log` VALUES ('426', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', '1', 'admin', null, '/gcxw/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"100\"],\"deptName\":[\"片区2\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:53:39');
INSERT INTO `sys_oper_log` VALUES ('427', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', '1', 'admin', null, '/gcxw/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"117\"],\"deptName\":[\"小区5\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:53:50');
INSERT INTO `sys_oper_log` VALUES ('428', '部门管理', '1', 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', '1', 'admin', null, '/gcxw/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"117\"],\"deptName\":[\"小区6\"],\"orderNum\":[\"6\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:53:59');
INSERT INTO `sys_oper_log` VALUES ('429', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', 'admin', null, '/gcxw/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"119\"],\"parentId\":[\"117\"],\"parentName\":[\"片区2\"],\"deptName\":[\"小区6\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:54:03');
INSERT INTO `sys_oper_log` VALUES ('430', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '港城小窝', '/gcxw/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"7\"],\"roleName\":[\"小区管理员\"],\"roleKey\":[\"xqadmin\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '0', null, '2019-12-02 19:54:34');
INSERT INTO `sys_oper_log` VALUES ('431', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '港城小窝', '/gcxw/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"8\"],\"roleName\":[\"装修管理员\"],\"roleKey\":[\"zxadmin\"],\"dataScope\":[\"4\"],\"deptIds\":[\"\"]}', '0', null, '2019-12-02 19:54:43');
INSERT INTO `sys_oper_log` VALUES ('432', '用户管理', '2', 'com.ruoyi.project.system.user.controller.UserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"7\"],\"deptId\":[\"100\"],\"dept.deptName\":[\"港城小窝\"],\"loginName\":[\"10000\"],\"userName\":[\"10000\"],\"phonenumber\":[\"13888888888\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"\"]}', '0', null, '2019-12-02 19:56:32');
INSERT INTO `sys_oper_log` VALUES ('433', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', '10000', '港城小窝', '/gcxw/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"118\"],\"parentId\":[\"117\"],\"parentName\":[\"片区2\"],\"deptName\":[\"小区5\"],\"orderNum\":[\"5\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:57:07');
INSERT INTO `sys_oper_log` VALUES ('434', '部门管理', '2', 'com.ruoyi.project.system.dept.controller.DeptController.editSave()', '1', '10000', '港城小窝', '/gcxw/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"119\"],\"parentId\":[\"117\"],\"parentName\":[\"片区2\"],\"deptName\":[\"小区6\"],\"orderNum\":[\"6\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-12-02 19:57:12');
INSERT INTO `sys_oper_log` VALUES ('435', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"deptName\":[\"港城小窝\"],\"loginName\":[\"11001\"],\"userName\":[\"装修管理用户\"],\"phonenumber\":[\"13888888887\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"8\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"8\"],\"postIds\":[\"\"]}', '0', null, '2019-12-02 19:59:13');
INSERT INTO `sys_oper_log` VALUES ('436', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"103\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"小区管理\"],\"url\":[\"/system/dept\"],\"target\":[\"menuItem\"],\"perms\":[\"system:dept:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-02 20:29:45');
INSERT INTO `sys_oper_log` VALUES ('437', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', null, '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"103\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"组织管理\"],\"url\":[\"/system/dept\"],\"target\":[\"menuItem\"],\"perms\":[\"system:dept:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-02 20:39:05');
INSERT INTO `sys_oper_log` VALUES ('438', '代码生成', '3', 'com.ruoyi.project.tool.gen.controller.GenController.remove()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"24\"]}', '0', null, '2019-12-02 21:37:32');
INSERT INTO `sys_oper_log` VALUES ('439', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_info\"]}', '0', null, '2019-12-02 21:37:36');
INSERT INTO `sys_oper_log` VALUES ('440', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"25\"],\"tableName\":[\"t_xq_info\"],\"tableComment\":[\"小区信息\"],\"className\":[\"XqInfo\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"212\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"xqInfoId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"213\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"小区\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"deptId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"214\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"楼栋号\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"buildNum\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"215\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"单元号\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"unitNum\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"216\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"房间号\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"doorNum\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"217\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"面积\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"area\"],\"columns[5].isInsert\":[\"1\"],\"columns[5]', '0', null, '2019-12-02 21:40:54');
INSERT INTO `sys_oper_log` VALUES ('441', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_info', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-02 21:41:02');
INSERT INTO `sys_oper_log` VALUES ('442', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1082\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"小区管理\"],\"url\":[\"/manage/xqinfo\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:xqinfo:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-02 21:46:21');
INSERT INTO `sys_oper_log` VALUES ('443', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_vr\"]}', '0', null, '2019-12-04 17:04:30');
INSERT INTO `sys_oper_log` VALUES ('444', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"26\"],\"tableName\":[\"t_xq_vr\"],\"tableComment\":[\"小区全景配置\"],\"className\":[\"XqVr\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"223\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"xqVrId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"224\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"小区\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"deptId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"225\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"地址\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"vrUrl\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"226\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"null\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"createBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"227\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"228\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"null\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"updateBy\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].colum', '0', null, '2019-12-04 17:09:56');
INSERT INTO `sys_oper_log` VALUES ('445', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1074\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"我的社区\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-tv\"],\"visible\":[\"0\"]}', '0', null, '2019-12-04 17:10:24');
INSERT INTO `sys_oper_log` VALUES ('446', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"找装修\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-binoculars\"],\"visible\":[\"0\"]}', '0', null, '2019-12-04 17:10:50');
INSERT INTO `sys_oper_log` VALUES ('447', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_vr', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-04 17:12:14');
INSERT INTO `sys_oper_log` VALUES ('448', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1088\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"小区全景配置\"],\"url\":[\"/manage/xqvr\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:xqvr:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-04 17:14:29');
INSERT INTO `sys_oper_log` VALUES ('449', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1082', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 14:04:49');
INSERT INTO `sys_oper_log` VALUES ('450', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1083', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 14:04:55');
INSERT INTO `sys_oper_log` VALUES ('451', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1084', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 14:05:00');
INSERT INTO `sys_oper_log` VALUES ('452', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1085', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 14:05:05');
INSERT INTO `sys_oper_log` VALUES ('453', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1086', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 14:05:09');
INSERT INTO `sys_oper_log` VALUES ('454', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1082', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 14:05:13');
INSERT INTO `sys_oper_log` VALUES ('455', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_floor\"]}', '0', null, '2019-12-05 14:10:10');
INSERT INTO `sys_oper_log` VALUES ('456', '小区全景配置', '1', 'com.ruoyi.manage.xqvr.controller.XqVrController.addSave()', '1', 'admin', null, '/gcxw/manage/xqvr/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"vrUrl\":[\"https://www.baidu.com\"]}', '0', null, '2019-12-05 14:18:21');
INSERT INTO `sys_oper_log` VALUES ('457', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"27\"],\"tableName\":[\"t_xq_floor\"],\"tableComment\":[\"小区楼栋\"],\"className\":[\"XqFloor\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"230\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"信息ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"floorId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"231\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"小区\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"deptId\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"232\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"楼栋号\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"buildNum\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"233\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"楼栋名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bulidName\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"234\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"单元号\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"unitNum\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"235\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"房间号\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"doorNum\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\"', '0', null, '2019-12-05 14:22:13');
INSERT INTO `sys_oper_log` VALUES ('458', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_floor', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 14:22:38');
INSERT INTO `sys_oper_log` VALUES ('459', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1093\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"楼栋管理\"],\"url\":[\"/floormanage/floor\"],\"target\":[\"menuItem\"],\"perms\":[\"floormanage:floor:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-05 14:27:13');
INSERT INTO `sys_oper_log` VALUES ('460', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"buildNum\":[\"123\"],\"unitNum\":[\"123\"],\"doorNum\":[\"123\"],\"area\":[\"123\"],\"doorType\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'floor_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.manage.floor.mapper.XqFloorMapper.insertXqFloor-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_xq_floor          ( build_num,                          unit_num,             door_num,             area,                                       create_time,                          update_time )           values ( ?,                          ?,             ?,             ?,                                       ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'floor_id\' doesn\'t have a default value\n; Field \'floor_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'floor_id\' doesn\'t have a default value', '2019-12-05 14:28:07');
INSERT INTO `sys_oper_log` VALUES ('461', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"27\"],\"tableName\":[\"t_xq_floor\"],\"tableComment\":[\"小区楼栋\"],\"className\":[\"XqFloor\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"230\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"信息ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"floorId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"231\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"小区\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"deptId\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"232\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"楼栋号\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"buildNum\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"233\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"楼栋名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bulidName\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"234\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"单元号\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"unitNum\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"235\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"房间号\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"doorNum\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\"', '0', null, '2019-12-05 14:29:52');
INSERT INTO `sys_oper_log` VALUES ('462', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_floor', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 14:29:56');
INSERT INTO `sys_oper_log` VALUES ('463', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"buildNum\":[\"123\"],\"unitNum\":[\"123\"],\"doorNum\":[\"123\"],\"area\":[\"123\"],\"doorType\":[\"123\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'floor_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.manage.floor.mapper.XqFloorMapper.insertXqFloor-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_xq_floor          ( build_num,                          unit_num,             door_num,             area,             door_type,                          create_time,                          update_time )           values ( ?,                          ?,             ?,             ?,             ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'floor_id\' doesn\'t have a default value\n; Field \'floor_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'floor_id\' doesn\'t have a default value', '2019-12-05 14:33:32');
INSERT INTO `sys_oper_log` VALUES ('464', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"buildNum\":[\"123\"],\"unitNum\":[\"123\"],\"doorNum\":[\"123\"],\"area\":[\"123\"],\"doorType\":[\"123\"]}', '0', null, '2019-12-05 14:34:28');
INSERT INTO `sys_oper_log` VALUES ('465', '楼栋管理', '2', 'com.ruoyi.manage.floor.controller.XqFloorController.editSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/edit', '127.0.0.1', '内网IP', '{\"floorId\":[\"1\"],\"buildNum\":[\"123\"],\"unitNum\":[\"123\"],\"doorNum\":[\"123\"],\"area\":[\"123\"],\"doorType\":[\"12366\"]}', '0', null, '2019-12-05 14:34:39');
INSERT INTO `sys_oper_log` VALUES ('466', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"buildNum\":[\"123\"],\"unitNum\":[\"123\"],\"doorNum\":[\"234\"],\"area\":[\"345\"],\"doorType\":[\"456\"]}', '1', '', '2019-12-05 14:46:59');
INSERT INTO `sys_oper_log` VALUES ('467', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"buildNum\":[\"123\"],\"unitNum\":[\"123\"],\"doorNum\":[\"123\"],\"area\":[\"123\"],\"doorType\":[\"123\"]}', '1', '', '2019-12-05 14:48:30');
INSERT INTO `sys_oper_log` VALUES ('468', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"buildNum\":[\"123\"],\"unitNum\":[\"123\"],\"doorNum\":[\"123\"],\"area\":[\"123\"],\"doorType\":[\"123\"]}', '0', null, '2019-12-05 14:53:41');
INSERT INTO `sys_oper_log` VALUES ('469', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"buildNum\":[\"123\"],\"unitNum\":[\"123\"],\"doorNum\":[\"123\"],\"area\":[\"123\"],\"doorType\":[\"123\"]}', '0', null, '2019-12-05 14:54:54');
INSERT INTO `sys_oper_log` VALUES ('470', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"buildNum\":[\"123\"],\"unitNum\":[\"123\"],\"doorNum\":[\"123\"],\"area\":[\"123\"],\"doorType\":[\"123\"]}', '0', null, '2019-12-05 14:57:38');
INSERT INTO `sys_oper_log` VALUES ('471', '楼栋管理', '2', 'com.ruoyi.manage.floor.controller.XqFloorController.editSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/edit', '127.0.0.1', '内网IP', '{\"floorId\":[\"1\"],\"buildNum\":[\"1231\"],\"unitNum\":[\"1231\"],\"doorNum\":[\"1231\"],\"area\":[\"1231\"],\"doorType\":[\"123661\"]}', '0', null, '2019-12-05 15:07:14');
INSERT INTO `sys_oper_log` VALUES ('472', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-12-05 15:09:00');
INSERT INTO `sys_oper_log` VALUES ('473', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-12-05 15:09:02');
INSERT INTO `sys_oper_log` VALUES ('474', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '0', null, '2019-12-05 15:09:05');
INSERT INTO `sys_oper_log` VALUES ('475', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_property\"]}', '0', null, '2019-12-05 15:26:31');
INSERT INTO `sys_oper_log` VALUES ('476', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"物业费状态\"],\"dictType\":[\"sys_xq_property\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-05 15:28:22');
INSERT INTO `sys_oper_log` VALUES ('477', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"可推送\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_xq_property\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-05 15:28:47');
INSERT INTO `sys_oper_log` VALUES ('478', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已推送\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_xq_property\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-05 15:28:59');
INSERT INTO `sys_oper_log` VALUES ('479', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已缴费\"],\"dictValue\":[\"3\"],\"dictType\":[\"sys_xq_property\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-05 15:29:14');
INSERT INTO `sys_oper_log` VALUES ('480', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"28\"],\"tableName\":[\"t_xq_property\"],\"tableComment\":[\"物业费信息表\"],\"className\":[\"TXqProperty\"],\"functionAuthor\":[\"zhangchengcai\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"242\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"243\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"楼栋ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"floorId\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"244\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"物业费名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"propertyName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"245\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"物业费金额（分）\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"propertyFee\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"246\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"生效时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"startTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"247\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"失效时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"endTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"datetime\"],\"columns[5', '0', null, '2019-12-05 15:30:36');
INSERT INTO `sys_oper_log` VALUES ('481', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_property', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 15:30:41');
INSERT INTO `sys_oper_log` VALUES ('482', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1098\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"物业费\"],\"url\":[\"/manage/property\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:property:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-05 15:33:35');
INSERT INTO `sys_oper_log` VALUES ('483', '小区全景配置', '2', 'com.ruoyi.manage.xqvr.controller.XqVrController.editSave()', '1', 'admin', null, '/gcxw/manage/xqvr/edit', '127.0.0.1', '内网IP', '{\"xqVrId\":[\"1\"],\"deptId\":[\"113\"],\"vrUrl\":[\"https://www.baidu.com\"]}', '0', null, '2019-12-05 16:03:26');
INSERT INTO `sys_oper_log` VALUES ('484', '小区全景配置', '2', 'com.ruoyi.manage.xqvr.controller.XqVrController.editSave()', '1', 'admin', null, '/gcxw/manage/xqvr/edit', '127.0.0.1', '内网IP', '{\"xqVrId\":[\"1\"],\"deptId\":[\"112\"],\"vrUrl\":[\"https://www.baidu.com\"]}', '0', null, '2019-12-05 16:03:31');
INSERT INTO `sys_oper_log` VALUES ('485', '小区全景配置', '1', 'com.ruoyi.manage.xqvr.controller.XqVrController.addSave()', '1', 'admin', null, '/gcxw/manage/xqvr/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"113\"],\"vrUrl\":[\"www.google.com\"]}', '0', null, '2019-12-05 16:03:41');
INSERT INTO `sys_oper_log` VALUES ('486', '小区全景配置', '2', 'com.ruoyi.manage.xqvr.controller.XqVrController.editSave()', '1', 'admin', null, '/gcxw/manage/xqvr/edit', '127.0.0.1', '内网IP', '{\"xqVrId\":[\"2\"],\"deptId\":[\"112\"],\"vrUrl\":[\"www.google.com\"]}', '0', null, '2019-12-05 16:03:48');
INSERT INTO `sys_oper_log` VALUES ('487', '小区全景配置', '2', 'com.ruoyi.manage.xqvr.controller.XqVrController.editSave()', '1', 'admin', null, '/gcxw/manage/xqvr/edit', '127.0.0.1', '内网IP', '{\"xqVrId\":[\"2\"],\"deptId\":[\"113\"],\"vrUrl\":[\"www.google.com\"]}', '0', null, '2019-12-05 16:03:57');
INSERT INTO `sys_oper_log` VALUES ('488', '小区全景配置', '2', 'com.ruoyi.manage.xqvr.controller.XqVrController.editSave()', '1', 'admin', null, '/gcxw/manage/xqvr/edit', '127.0.0.1', '内网IP', '{\"xqVrId\":[\"2\"],\"deptId\":[\"114\"],\"vrUrl\":[\"www.google.com\"]}', '0', null, '2019-12-05 16:05:39');
INSERT INTO `sys_oper_log` VALUES ('489', '物业费', '1', 'com.ruoyi.manage.property.controller.TXqPropertyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/add', '127.0.0.1', '内网IP', '{\"floorId\":[\"3\"],\"propertyName\":[\"123\"],\"propertyFee\":[\"123\"],\"startTime\":[\"2019-12-03\"],\"endTime\":[\"2019-12-20\"],\"state\":[\"1\"]}', '0', null, '2019-12-05 16:16:45');
INSERT INTO `sys_oper_log` VALUES ('490', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"buildNum\":[\"2\"],\"unitNum\":[\"2\"],\"doorNum\":[\"2\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-05 16:18:09');
INSERT INTO `sys_oper_log` VALUES ('491', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"propertyName\":[\"1233\"],\"propertyFee\":[\"1233\"],\"startTime\":[\"2019-11-28\"],\"endTime\":[\"2020-07-16\"]}', '0', null, '2019-12-05 16:20:39');
INSERT INTO `sys_oper_log` VALUES ('492', '物业费', '1', 'com.ruoyi.manage.property.controller.TXqPropertyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/add', '127.0.0.1', '内网IP', '{\"floorId\":[\"4\"],\"propertyName\":[\"1231\"],\"propertyFee\":[\"123\"],\"startTime\":[\"2019-12-10\"],\"endTime\":[\"2019-12-17\"],\"state\":[\"1\"]}', '0', null, '2019-12-05 16:21:36');
INSERT INTO `sys_oper_log` VALUES ('493', '楼栋管理', '2', 'com.ruoyi.manage.floor.controller.XqFloorController.editSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/edit', '127.0.0.1', '内网IP', '{\"floorId\":[\"3\"],\"buildNum\":[\"123\"],\"unitNum\":[\"123\"],\"doorNum\":[\"123589485\"],\"area\":[\"123\"],\"doorType\":[\"123\"]}', '0', null, '2019-12-05 16:23:08');
INSERT INTO `sys_oper_log` VALUES ('494', '物业费', '3', 'com.ruoyi.manage.property.controller.TXqPropertyController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/property/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-12-05 16:27:13');
INSERT INTO `sys_oper_log` VALUES ('495', '物业费', '1', 'com.ruoyi.manage.property.controller.TXqPropertyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/add', '127.0.0.1', '内网IP', '{\"floorId\":[\"3\"],\"propertyName\":[\"1\"],\"propertyFee\":[\"1\"],\"startTime\":[\"2019-12-04\"],\"endTime\":[\"2019-12-05\"],\"state\":[\"1\"]}', '0', null, '2019-12-05 16:27:29');
INSERT INTO `sys_oper_log` VALUES ('496', '物业费', '1', 'com.ruoyi.manage.property.controller.TXqPropertyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/add', '127.0.0.1', '内网IP', '{\"floorId\":[\"3\"],\"propertyName\":[\"2\"],\"propertyFee\":[\"2\"],\"startTime\":[\"2019-12-04\"],\"endTime\":[\"2019-12-13\"],\"state\":[\"1\"]}', '0', null, '2019-12-05 16:27:36');
INSERT INTO `sys_oper_log` VALUES ('497', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_property_detail\"]}', '0', null, '2019-12-05 16:29:18');
INSERT INTO `sys_oper_log` VALUES ('498', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"29\"],\"tableName\":[\"t_xq_property_detail\"],\"tableComment\":[\"物业费明细\"],\"className\":[\"TXqPropertyDetail\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"254\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"255\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"物业ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"property\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"256\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"费用名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"detailName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"257\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"费用金额\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"detailFee\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"258\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"备注\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"remark\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"259\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"null\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"createBy\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].colum', '0', null, '2019-12-05 16:30:51');
INSERT INTO `sys_oper_log` VALUES ('499', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_property_detail', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 16:31:16');
INSERT INTO `sys_oper_log` VALUES ('500', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1103\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"物业明细\"],\"url\":[\"/manage/detail\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:detail:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-05 16:33:59');
INSERT INTO `sys_oper_log` VALUES ('501', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', null, '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_banner_video\"]}', '0', null, '2019-12-05 16:41:16');
INSERT INTO `sys_oper_log` VALUES ('502', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', null, '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"30\"],\"tableName\":[\"t_zx_banner_video\"],\"tableComment\":[\"装修首页视频\"],\"className\":[\"ZxBannerVideo\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"263\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"zxBannerVideoId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"264\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"封面\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"titleImgUrl\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"265\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"标题\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"title\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"266\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"视频路径\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"videoUrl\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"267\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"展示开关\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"status\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"268\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"null\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"createBy\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":', '0', null, '2019-12-05 16:43:30');
INSERT INTO `sys_oper_log` VALUES ('503', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', null, '/gcxw/tool/gen/genCode/t_zx_banner_video', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 16:43:38');
INSERT INTO `sys_oper_log` VALUES ('504', '物业明细', '1', 'com.ruoyi.manage.detail.controller.TXqPropertyDetailController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/detail/add', '127.0.0.1', '内网IP', '{\"detailName\":[\"12\"],\"property\":[\"3\"],\"detailFee\":[\"111\"]}', '0', null, '2019-12-05 16:44:52');
INSERT INTO `sys_oper_log` VALUES ('505', '物业明细', '1', 'com.ruoyi.manage.detail.controller.TXqPropertyDetailController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/detail/add', '127.0.0.1', '内网IP', '{\"detailName\":[\"13\"],\"property\":[\"3\"],\"detailFee\":[\"1111\"]}', '0', null, '2019-12-05 16:44:58');
INSERT INTO `sys_oper_log` VALUES ('506', '物业明细', '2', 'com.ruoyi.manage.detail.controller.TXqPropertyDetailController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/detail/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"detailName\":[\"134\"],\"detailFee\":[\"1111\"]}', '0', null, '2019-12-05 16:45:03');
INSERT INTO `sys_oper_log` VALUES ('507', '物业明细', '2', 'com.ruoyi.manage.detail.controller.TXqPropertyDetailController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/detail/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"detailName\":[\"14\"],\"detailFee\":[\"1111\"]}', '0', null, '2019-12-05 16:45:10');
INSERT INTO `sys_oper_log` VALUES ('508', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1108\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"装修首页视频管理\"],\"url\":[\"/manage/zxbannervideo\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxbannervideo:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-05 16:46:31');
INSERT INTO `sys_oper_log` VALUES ('509', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"30\"],\"tableName\":[\"t_zx_banner_video\"],\"tableComment\":[\"装修首页视频\"],\"className\":[\"ZxBannerVideo\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"263\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"zxBannerVideoId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"264\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"封面\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"titleImgUrl\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"265\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"标题\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"title\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"266\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"视频路径\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"videoUrl\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"267\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"展示开关\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"status\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"268\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"null\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"createBy\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].colum', '0', null, '2019-12-05 16:48:06');
INSERT INTO `sys_oper_log` VALUES ('510', '物业明细', '2', 'com.ruoyi.manage.detail.controller.TXqPropertyDetailController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/detail/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"detailName\":[\"电费\"],\"detailFee\":[\"111\"],\"remark\":[\"这里是11月份电费\"]}', '0', null, '2019-12-05 16:48:07');
INSERT INTO `sys_oper_log` VALUES ('511', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_zx_banner_video', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 16:48:08');
INSERT INTO `sys_oper_log` VALUES ('512', '物业明细', '2', 'com.ruoyi.manage.detail.controller.TXqPropertyDetailController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/detail/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"detailName\":[\"物业费\"],\"detailFee\":[\"55\"],\"remark\":[\"这里是物业费\"]}', '0', null, '2019-12-05 16:48:22');
INSERT INTO `sys_oper_log` VALUES ('513', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"propertyName\":[\"测试物业费\"],\"propertyFee\":[\"1222\"],\"startTime\":[\"2019-12-04\"],\"endTime\":[\"2019-12-05\"]}', '0', null, '2019-12-05 16:49:14');
INSERT INTO `sys_oper_log` VALUES ('514', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_parking_space\"]}', '0', null, '2019-12-05 16:57:55');
INSERT INTO `sys_oper_log` VALUES ('515', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"31\"],\"tableName\":[\"t_xq_parking_space\"],\"tableComment\":[\"停车费\"],\"className\":[\"TXqParkingSpace\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"273\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"274\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"楼栋ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"floorId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"275\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"费用\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"parkingFee\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"276\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"车位号\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"parkingNum\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"277\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"生效时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"startTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"278\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"失效时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"endTime\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"column', '0', null, '2019-12-05 16:59:03');
INSERT INTO `sys_oper_log` VALUES ('516', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_parking_space', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-05 16:59:07');
INSERT INTO `sys_oper_log` VALUES ('517', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1113\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"停车费\"],\"url\":[\"/manage/space\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:space:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-05 17:01:45');
INSERT INTO `sys_oper_log` VALUES ('518', '停车费', '1', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/space/add', '127.0.0.1', '内网IP', '{\"parkingFee\":[\"1212\"],\"floorId\":[\"3\"],\"parkingNum\":[\"1\"],\"startTime\":[\"2019-12-04\"],\"endTime\":[\"2019-12-27\"]}', '0', null, '2019-12-05 17:10:50');
INSERT INTO `sys_oper_log` VALUES ('519', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1098\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"物业费\"],\"url\":[\"/manage/property\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:property:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '0', null, '2019-12-05 17:12:15');
INSERT INTO `sys_oper_log` VALUES ('520', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1103\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"物业明细\"],\"url\":[\"/manage/detail\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:detail:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '0', null, '2019-12-05 17:12:25');
INSERT INTO `sys_oper_log` VALUES ('521', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1113\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"停车费\"],\"url\":[\"/manage/space\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:space:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '0', null, '2019-12-05 17:12:33');
INSERT INTO `sys_oper_log` VALUES ('522', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"系统管理员\"],\"roleKey\":[\"sysadmin\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019,1074,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1113,1114,1115,1116,1117\"]}', '0', null, '2019-12-05 17:12:48');
INSERT INTO `sys_oper_log` VALUES ('523', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"7\"],\"roleName\":[\"小区管理员\"],\"roleKey\":[\"xqadmin\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1074,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1113,1114,1115,1116,1117\"]}', '0', null, '2019-12-05 17:12:57');
INSERT INTO `sys_oper_log` VALUES ('524', '装修首页视频管理', '1', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannervideo/add', '127.0.0.1', '内网IP', '{\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/c61751b250c26e7f2402e11aec91c09e.jpg\"],\"title\":[\"风水大师讲解\"],\"videoUrl\":[\"\",\"http://localhost:8081/gcxw/profile/upload/2019/12/05/f326629c24b655ea95664b6fd9311d74.mp4\"],\"videoTime\":[\"15\"]}', '0', null, '2019-12-05 19:36:58');
INSERT INTO `sys_oper_log` VALUES ('525', '装修首页视频管理', '1', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.addSave()', '1', 'admin', null, '/gcxw/manage/zxbannervideo/add', '127.0.0.1', '内网IP', '{\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/eb438b90c7b8693b58d1be42909efda4.jpg\"],\"title\":[\"测\"],\"videoUrl\":[\"\",\"http://localhost:8081/gcxw/profile/upload/2019/12/05/3a5fcdfc2176c2d305b8fcdc40c214bb.mp4\"],\"videoTime\":[\"15\"]}', '0', null, '2019-12-05 19:40:04');
INSERT INTO `sys_oper_log` VALUES ('526', '装修首页视频管理', '1', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannervideo/add', '127.0.0.1', '内网IP', '{\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/63d4721935418152f8ae567a87221562.png\"],\"title\":[\"测\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/5248ed855559cfd921799429a728c4af.mp4\"]}', '0', null, '2019-12-05 19:56:38');
INSERT INTO `sys_oper_log` VALUES ('527', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannervideo/edit', '127.0.0.1', '内网IP', '{\"zxBannerVideoId\":[\"2\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/eb438b90c7b8693b58d1be42909efda4.jpg\"],\"title\":[\"测\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/3a5fcdfc2176c2d305b8fcdc40c214bb.mp4\"]}', '0', null, '2019-12-05 20:10:01');
INSERT INTO `sys_oper_log` VALUES ('528', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannervideo/edit', '127.0.0.1', '内网IP', '{\"zxBannerVideoId\":[\"2\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/eb438b90c7b8693b58d1be42909efda4.jpg\"],\"title\":[\"测\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/3a5fcdfc2176c2d305b8fcdc40c214bb.mp4\"]}', '0', null, '2019-12-05 20:10:06');
INSERT INTO `sys_oper_log` VALUES ('529', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannervideo/edit', '127.0.0.1', '内网IP', '{\"zxBannerVideoId\":[\"3\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/63d4721935418152f8ae567a87221562.png\"],\"title\":[\"测\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/5248ed855559cfd921799429a728c4af.mp4\"]}', '0', null, '2019-12-05 20:10:26');
INSERT INTO `sys_oper_log` VALUES ('530', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannervideo/edit', '127.0.0.1', '内网IP', '{\"zxBannerVideoId\":[\"3\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/63d4721935418152f8ae567a87221562.png\"],\"title\":[\"测2\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/5248ed855559cfd921799429a728c4af.mp4\"]}', '0', null, '2019-12-05 20:10:32');
INSERT INTO `sys_oper_log` VALUES ('531', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', '10001', '小区1', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"buildNum\":[\"11111111111\"],\"unitNum\":[\"11111111111\"],\"doorNum\":[\"111111111111111\"],\"area\":[\"111111111111\"],\"doorType\":[\"111111111111111\"]}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'build_num\' at row 1\r\n### The error may involve com.ruoyi.manage.floor.mapper.XqFloorMapper.insertXqFloor-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_xq_floor          ( dept_id,             build_num,                          unit_num,             door_num,             area,             door_type,                          create_time,                          update_time )           values ( ?,             ?,                          ?,             ?,             ?,             ?,                          ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'build_num\' at row 1\n; Data truncation: Out of range value for column \'build_num\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'build_num\' at row 1', '2019-12-06 15:20:42');
INSERT INTO `sys_oper_log` VALUES ('532', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', '10001', '小区1', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"11\"],\"doorType\":[\"11\"]}', '0', null, '2019-12-06 15:21:12');
INSERT INTO `sys_oper_log` VALUES ('533', '楼栋管理', '2', 'com.ruoyi.manage.floor.controller.XqFloorController.editSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/edit', '127.0.0.1', '内网IP', '{\"floorId\":[\"5\"],\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"11\"],\"doorType\":[\"11\"]}', '0', null, '2019-12-06 15:37:43');
INSERT INTO `sys_oper_log` VALUES ('534', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:15:46');
INSERT INTO `sys_oper_log` VALUES ('535', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:20:09');
INSERT INTO `sys_oper_log` VALUES ('536', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '0', null, '2019-12-06 16:24:26');
INSERT INTO `sys_oper_log` VALUES ('537', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '0', null, '2019-12-06 16:24:28');
INSERT INTO `sys_oper_log` VALUES ('538', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:25:09');
INSERT INTO `sys_oper_log` VALUES ('539', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', '0', null, '2019-12-06 16:34:21');
INSERT INTO `sys_oper_log` VALUES ('540', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:36:05');
INSERT INTO `sys_oper_log` VALUES ('541', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', '0', null, '2019-12-06 16:37:05');
INSERT INTO `sys_oper_log` VALUES ('542', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:37:25');
INSERT INTO `sys_oper_log` VALUES ('543', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', '0', null, '2019-12-06 16:39:34');
INSERT INTO `sys_oper_log` VALUES ('544', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:39:45');
INSERT INTO `sys_oper_log` VALUES ('545', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', '0', null, '2019-12-06 16:41:28');
INSERT INTO `sys_oper_log` VALUES ('546', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:41:38');
INSERT INTO `sys_oper_log` VALUES ('547', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"12\"]}', '0', null, '2019-12-06 16:45:38');
INSERT INTO `sys_oper_log` VALUES ('548', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:45:54');
INSERT INTO `sys_oper_log` VALUES ('549', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', '0', null, '2019-12-06 16:47:47');
INSERT INTO `sys_oper_log` VALUES ('550', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:47:59');
INSERT INTO `sys_oper_log` VALUES ('551', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14\"]}', '0', null, '2019-12-06 16:50:45');
INSERT INTO `sys_oper_log` VALUES ('552', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:50:56');
INSERT INTO `sys_oper_log` VALUES ('553', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', '0', null, '2019-12-06 16:51:55');
INSERT INTO `sys_oper_log` VALUES ('554', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:52:07');
INSERT INTO `sys_oper_log` VALUES ('555', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"16\"]}', '0', null, '2019-12-06 16:52:25');
INSERT INTO `sys_oper_log` VALUES ('556', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:52:50');
INSERT INTO `sys_oper_log` VALUES ('557', '楼栋管理', '3', 'com.ruoyi.manage.floor.controller.XqFloorController.remove()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"17\"]}', '0', null, '2019-12-06 16:54:13');
INSERT INTO `sys_oper_log` VALUES ('558', '楼栋管理', '1', 'com.ruoyi.manage.floor.controller.XqFloorController.addSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"1111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:54:29');
INSERT INTO `sys_oper_log` VALUES ('559', '楼栋管理', '2', 'com.ruoyi.manage.floor.controller.XqFloorController.editSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/edit', '127.0.0.1', '内网IP', '{\"floorId\":[\"18\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"1111\"],\"area\":[\"\"],\"doorType\":[\"\"]}', '0', null, '2019-12-06 16:59:24');
INSERT INTO `sys_oper_log` VALUES ('560', '楼栋管理', '2', 'com.ruoyi.manage.floor.controller.XqFloorController.editSave()', '1', 'admin', '港城小窝', '/gcxw/floormanage/floor/edit', '127.0.0.1', '内网IP', '{\"floorId\":[\"18\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"1111\"],\"area\":[\"4848cm²\"],\"doorType\":[\"111111111111111111111111111111\"]}', '0', null, '2019-12-06 16:59:39');
INSERT INTO `sys_oper_log` VALUES ('561', '停车费', '1', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/space/add', '127.0.0.1', '内网IP', '{\"parkingFee\":[\"1\"],\"floorId\":[\"4\"],\"parkingNum\":[\"1\"],\"startTime\":[\"2019-12-04\"],\"endTime\":[\"2019-12-27\"]}', '0', null, '2019-12-06 17:28:17');
INSERT INTO `sys_oper_log` VALUES ('562', '停车费', '3', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/space/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-12-06 17:29:16');
INSERT INTO `sys_oper_log` VALUES ('563', '停车费', '1', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/space/add', '127.0.0.1', '内网IP', '{\"parkingFee\":[\"1\"],\"floorId\":[\"4\"],\"parkingNum\":[\"1\"],\"startTime\":[\"1899-12-26\"],\"endTime\":[\"2019-12-17\"]}', '0', null, '2019-12-06 17:29:35');
INSERT INTO `sys_oper_log` VALUES ('564', '停车费', '3', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/space/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-12-06 17:33:08');
INSERT INTO `sys_oper_log` VALUES ('565', '停车费', '1', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/space/add', '127.0.0.1', '内网IP', '{\"parkingFee\":[\"1\"],\"floorId\":[\"3\"],\"parkingNum\":[\"1\"],\"startTime\":[\"2019-12-11\"],\"endTime\":[\"2019-12-19\"]}', '0', null, '2019-12-06 17:33:47');
INSERT INTO `sys_oper_log` VALUES ('566', '停车费', '3', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/space/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '0', null, '2019-12-06 17:36:24');
INSERT INTO `sys_oper_log` VALUES ('567', '停车费', '1', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/space/add', '127.0.0.1', '内网IP', '{\"parkingFee\":[\"1\"],\"floorId\":[\"3\"],\"parkingNum\":[\"1\"],\"startTime\":[\"2019-12-11\"],\"endTime\":[\"2019-12-19\"]}', '0', null, '2019-12-06 17:36:54');
INSERT INTO `sys_oper_log` VALUES ('568', '停车费', '3', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/space/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2019-12-06 17:40:46');
INSERT INTO `sys_oper_log` VALUES ('569', '停车费', '1', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/space/add', '127.0.0.1', '内网IP', '{\"parkingFee\":[\"1\"],\"floorId\":[\"4\"],\"parkingNum\":[\"1\"],\"startTime\":[\"2019-12-12\"],\"endTime\":[\"2019-12-27\"]}', '0', null, '2019-12-06 17:41:33');
INSERT INTO `sys_oper_log` VALUES ('570', '停车费', '3', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/space/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '0', null, '2019-12-06 17:44:45');
INSERT INTO `sys_oper_log` VALUES ('571', '停车费', '1', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/space/add', '127.0.0.1', '内网IP', '{\"parkingFee\":[\"1\"],\"floorId\":[\"4\"],\"parkingNum\":[\"11\"],\"startTime\":[\"2019-12-04\"],\"endTime\":[\"2019-12-12\"]}', '0', null, '2019-12-06 17:44:59');
INSERT INTO `sys_oper_log` VALUES ('572', '用户管理', '1', 'com.ruoyi.project.system.user.controller.UserController.addSave()', '1', 'admin', null, '/gcxw/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"deptName\":[\"片区1\"],\"loginName\":[\"pianqu1\"],\"userName\":[\"pianqu1\"],\"phonenumber\":[\"13888888880\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"7\",\"8\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"7,8\"],\"postIds\":[\"\"]}', '0', null, '2019-12-09 11:01:39');
INSERT INTO `sys_oper_log` VALUES ('573', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', null, '/gcxw/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"8\"],\"roleName\":[\"装修管理员\"],\"roleKey\":[\"zxadmin\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1087,1088,1089,1090,1091,1092,1108,1109,1110,1111,1112\"]}', '0', null, '2019-12-09 11:01:59');
INSERT INTO `sys_oper_log` VALUES ('574', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_show_home\"]}', '0', null, '2019-12-09 13:33:08');
INSERT INTO `sys_oper_log` VALUES ('575', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"32\"],\"tableName\":[\"t_zx_show_home\"],\"tableComment\":[\"装修效果\"],\"className\":[\"ZxShowHome\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"283\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"showHomeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"284\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"285\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"介绍\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"detail\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"286\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"小区\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"deptId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"287\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"楼号\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"buildNum\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"288\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"单元号\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"unitNum\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].d', '0', null, '2019-12-09 13:35:14');
INSERT INTO `sys_oper_log` VALUES ('576', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_zx_show_home', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-09 13:35:16');
INSERT INTO `sys_oper_log` VALUES ('577', '代码生成', '3', 'com.ruoyi.project.tool.gen.controller.GenController.remove()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"32\"]}', '0', null, '2019-12-09 13:35:27');
INSERT INTO `sys_oper_log` VALUES ('578', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"装修风格\"],\"dictType\":[\"t_zx_showhome_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-09 13:37:07');
INSERT INTO `sys_oper_log` VALUES ('579', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"中式\"],\"dictValue\":[\"1\"],\"dictType\":[\"t_zx_showhome_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-09 13:37:32');
INSERT INTO `sys_oper_log` VALUES ('580', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"欧式\"],\"dictValue\":[\"2\"],\"dictType\":[\"t_zx_showhome_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-09 13:37:48');
INSERT INTO `sys_oper_log` VALUES ('581', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"简约\"],\"dictValue\":[\"3\"],\"dictType\":[\"t_zx_showhome_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-09 13:37:57');
INSERT INTO `sys_oper_log` VALUES ('582', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_show_home\"]}', '0', null, '2019-12-09 13:38:09');
INSERT INTO `sys_oper_log` VALUES ('583', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"33\"],\"tableName\":[\"t_zx_show_home\"],\"tableComment\":[\"装修效果\"],\"className\":[\"ZxShowHome\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"296\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"showHomeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"297\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"298\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"t_zx_showhome_type\"],\"columns[3].columnId\":[\"299\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"介绍\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"detail\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"300\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"小区\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"deptId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"301\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"楼号\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"buildNum\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"colu', '0', null, '2019-12-09 13:40:24');
INSERT INTO `sys_oper_log` VALUES ('584', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_zx_show_home', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-09 13:40:26');
INSERT INTO `sys_oper_log` VALUES ('585', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1118\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"装修效果\"],\"url\":[\"/manage/showhome\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:showhome:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-09 13:43:51');
INSERT INTO `sys_oper_log` VALUES ('586', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1108\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"居家风水视频管理\"],\"url\":[\"/manage/zxbannervideo\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxbannervideo:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-09 13:48:25');
INSERT INTO `sys_oper_log` VALUES ('587', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1108\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"居家风水视频管理\"],\"url\":[\"/manage/zxbannervideo\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxbannervideo:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-09 13:50:42');
INSERT INTO `sys_oper_log` VALUES ('588', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1118\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"装修效果\"],\"url\":[\"/manage/showhome\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:showhome:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-09 13:50:49');
INSERT INTO `sys_oper_log` VALUES ('589', '物业费', '1', 'com.ruoyi.manage.property.controller.TXqPropertyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/add', '127.0.0.1', '内网IP', '{\"floorId\":[\"3\"],\"propertyName\":[\"1231\"],\"propertyFee\":[\"123\"],\"startTime\":[\"2019-12-01\"],\"endTime\":[\"2019-12-25\"],\"state\":[\"1\"]}', '0', null, '2019-12-09 13:59:51');
INSERT INTO `sys_oper_log` VALUES ('590', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"5\"]}', '0', null, '2019-12-09 14:29:36');
INSERT INTO `sys_oper_log` VALUES ('591', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"3\"]}', '0', null, '2019-12-09 14:30:46');
INSERT INTO `sys_oper_log` VALUES ('592', '物业费', '1', 'com.ruoyi.manage.property.controller.TXqPropertyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/add', '127.0.0.1', '内网IP', '{\"floorId\":[\"3\"],\"propertyName\":[\"11\"],\"propertyFee\":[\"111\"],\"startTime\":[\"2019-12-09\"],\"endTime\":[\"2019-12-26\"],\"state\":[\"1\"]}', '0', null, '2019-12-09 14:32:40');
INSERT INTO `sys_oper_log` VALUES ('593', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"6\"]}', '1', 'Invalid bound statement (not found): com.ruoyi.manage.property.mapper.TXqPropertyMapper.PushTXqPropertyById', '2019-12-09 14:32:47');
INSERT INTO `sys_oper_log` VALUES ('594', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"6\"]}', '1', 'Invalid bound statement (not found): com.ruoyi.manage.property.mapper.TXqPropertyMapper.PushTXqPropertyById', '2019-12-09 14:36:20');
INSERT INTO `sys_oper_log` VALUES ('595', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"6\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'state\' in \'field list\'\r\n### The error may involve com.ruoyi.manage.property.mapper.TXqPropertyMapper.PushTXqPropertyById-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update t_xq_property_detail set state = 2, push_date = sysdate() where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'state\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'state\' in \'field list\'', '2019-12-09 14:41:22');
INSERT INTO `sys_oper_log` VALUES ('596', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"6\"]}', '0', null, '2019-12-09 14:44:37');
INSERT INTO `sys_oper_log` VALUES ('597', '物业费', '1', 'com.ruoyi.manage.property.controller.TXqPropertyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/add', '127.0.0.1', '内网IP', '{\"floorId\":[\"3\"],\"propertyName\":[\"11\"],\"propertyFee\":[\"111\"],\"startTime\":[\"2019-12-10\"],\"endTime\":[\"2019-12-18\"],\"state\":[\"1\"]}', '0', null, '2019-12-09 14:51:01');
INSERT INTO `sys_oper_log` VALUES ('598', '物业明细', '1', 'com.ruoyi.manage.detail.controller.TXqPropertyDetailController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/detail/add', '127.0.0.1', '内网IP', '{\"detailName\":[\"22\"],\"property\":[\"7\"],\"detailFee\":[\"22222\"],\"remark\":[\"2222\"]}', '0', null, '2019-12-09 15:03:14');
INSERT INTO `sys_oper_log` VALUES ('599', '物业明细', '2', 'com.ruoyi.manage.detail.controller.TXqPropertyDetailController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/detail/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"detailName\":[\"22\"],\"detailFee\":[\"22222.3\"],\"remark\":[\"2222\"]}', '0', null, '2019-12-09 15:03:31');
INSERT INTO `sys_oper_log` VALUES ('600', '停车费', '1', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/space/add', '127.0.0.1', '内网IP', '{\"parkingFee\":[\"60.3\"],\"floorId\":[\"3\"],\"parkingNum\":[\"13\"],\"startTime\":[\"2019-12-02\"],\"endTime\":[\"2019-12-19\"]}', '0', null, '2019-12-09 15:09:25');
INSERT INTO `sys_oper_log` VALUES ('601', '停车费', '2', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/space/push', '127.0.0.1', '内网IP', '{\"id\":[\"5\"]}', '0', null, '2019-12-09 15:23:59');
INSERT INTO `sys_oper_log` VALUES ('602', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_notice\"]}', '0', null, '2019-12-09 15:34:48');
INSERT INTO `sys_oper_log` VALUES ('603', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"34\"],\"tableName\":[\"t_xq_notice\"],\"tableComment\":[\"公告\"],\"className\":[\"XqNotice\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"310\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"311\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"公告标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"312\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"内容\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"content\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"313\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"null\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"createBy\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"314\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"null\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createDate\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"315\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"null\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"updateBy\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"316\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"null\"],', '0', null, '2019-12-09 15:36:03');
INSERT INTO `sys_oper_log` VALUES ('604', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_notice', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-09 15:36:07');
INSERT INTO `sys_oper_log` VALUES ('605', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1123\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"小区公告\"],\"url\":[\"/manage/notice\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:notice:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-09 15:39:31');
INSERT INTO `sys_oper_log` VALUES ('606', '小区公告', '1', 'com.ruoyi.manage.notice.controller.XqNoticeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/notice/add', '127.0.0.1', '内网IP', '{\"title\":[\"\"],\"content\":[\"\"]}', '0', null, '2019-12-09 16:09:12');
INSERT INTO `sys_oper_log` VALUES ('607', '小区公告', '1', 'com.ruoyi.manage.notice.controller.XqNoticeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/notice/add', '127.0.0.1', '内网IP', '{\"title\":[\"11111111111\"],\"content\":[\"<p>11111111111111111111111111111111111111111111111111<img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/09/f50d5cd23b823a5059d4c66efe12e70d.jpg\\\" data-filename=\\\"/profile/upload/2019/12/09/f50d5cd23b823a5059d4c66efe12e70d.jpg\\\" style=\\\"width: 959px;\\\"></p>\"]}', '0', null, '2019-12-09 16:11:27');
INSERT INTO `sys_oper_log` VALUES ('608', '小区公告', '3', 'com.ruoyi.manage.notice.controller.XqNoticeController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/notice/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-12-09 16:11:50');
INSERT INTO `sys_oper_log` VALUES ('609', '小区公告', '2', 'com.ruoyi.manage.notice.controller.XqNoticeController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/notice/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"title\":[\"11111111111\"],\"content\":[\"<p>11111111111111111111111111111111111111111111111111<img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/09/f50d5cd23b823a5059d4c66efe12e70d.jpg\\\" data-filename=\\\"/profile/upload/2019/12/09/f50d5cd23b823a5059d4c66efe12e70d.jpg\\\" style=\\\"width: 959px;\\\"></p>\"]}', '0', null, '2019-12-09 16:15:20');
INSERT INTO `sys_oper_log` VALUES ('610', '小区公告', '2', 'com.ruoyi.manage.notice.controller.XqNoticeController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/notice/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"title\":[\"11111111111\"],\"content\":[\"<p>111111112222222222223333333333333333333333333333<img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/09/3b102a77dec92032faad50b28dc1ceab.jpg\\\" data-filename=\\\"/profile/upload/2019/12/09/3b102a77dec92032faad50b28dc1ceab.jpg\\\" style=\\\"width: 812px;\\\"><img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/09/f50d5cd23b823a5059d4c66efe12e70d.jpg\\\" data-filename=\\\"/profile/upload/2019/12/09/f50d5cd23b823a5059d4c66efe12e70d.jpg\\\" style=\\\"width: 959px;\\\"></p>\"]}', '0', null, '2019-12-09 16:16:41');
INSERT INTO `sys_oper_log` VALUES ('611', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"7\"],\"roleName\":[\"小区管理员\"],\"roleKey\":[\"xqadmin\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1074,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1123,1124,1125,1126,1127,1103,1104,1105,1106,1107,1113,1114,1115,1116,1117\"]}', '0', null, '2019-12-09 16:21:35');
INSERT INTO `sys_oper_log` VALUES ('612', '小区公告', '1', 'com.ruoyi.manage.notice.controller.XqNoticeController.addSave()', '1', '10001', '小区1', '/gcxw/manage/notice/add', '127.0.0.1', '内网IP', '{\"title\":[\"11111111111111111\"],\"content\":[\"<p>111111111111111111111111111111</p>\"]}', '0', null, '2019-12-09 16:24:52');
INSERT INTO `sys_oper_log` VALUES ('613', '小区公告', '1', 'com.ruoyi.manage.notice.controller.XqNoticeController.addSave()', '1', '10001', '小区1', '/gcxw/manage/notice/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"title\":[\"11111111\"],\"content\":[\"<p>111111111111111111111111</p>\"]}', '0', null, '2019-12-09 16:37:01');
INSERT INTO `sys_oper_log` VALUES ('614', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"急事速办\"],\"dictType\":[\"sys_jssb\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 09:35:10');
INSERT INTO `sys_oper_log` VALUES ('615', '字典类型', '2', 'com.ruoyi.project.system.dict.controller.DictTypeController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"13\"],\"dictName\":[\"急事速办\"],\"dictType\":[\"sys_jssb_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 09:35:24');
INSERT INTO `sys_oper_log` VALUES ('616', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"开锁\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_jssb_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 09:35:43');
INSERT INTO `sys_oper_log` VALUES ('617', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"通下水道\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_jssb_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 09:35:57');
INSERT INTO `sys_oper_log` VALUES ('618', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"保洁\"],\"dictValue\":[\"3\"],\"dictType\":[\"sys_jssb_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 09:36:10');
INSERT INTO `sys_oper_log` VALUES ('619', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"月嫂\"],\"dictValue\":[\"4\"],\"dictType\":[\"sys_jssb_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 09:36:22');
INSERT INTO `sys_oper_log` VALUES ('620', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"家电维修\"],\"dictValue\":[\"5\"],\"dictType\":[\"sys_jssb_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 09:36:38');
INSERT INTO `sys_oper_log` VALUES ('621', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"清洗\"],\"dictValue\":[\"6\"],\"dictType\":[\"sys_jssb_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"6\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 09:36:57');
INSERT INTO `sys_oper_log` VALUES ('622', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"干洗\"],\"dictValue\":[\"7\"],\"dictType\":[\"sys_jssb_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"7\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 09:37:11');
INSERT INTO `sys_oper_log` VALUES ('623', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_jssb\"]}', '0', null, '2019-12-10 09:43:25');
INSERT INTO `sys_oper_log` VALUES ('624', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"35\"],\"tableName\":[\"t_xq_jssb\"],\"tableComment\":[\"急事速办\"],\"className\":[\"TXqJssb\"],\"functionAuthor\":[\"zhangchengcai\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"317\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"318\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"319\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"类型\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_jssb_type\"],\"columns[3].columnId\":[\"320\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"商家名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"busName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"321\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"联系方式\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"busMobile\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"322\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"内容\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"content\"],\"columns[5].isInsert\":[\"1\"],\"columns[5]', '0', null, '2019-12-10 09:45:43');
INSERT INTO `sys_oper_log` VALUES ('625', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_jssb', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-10 09:45:47');
INSERT INTO `sys_oper_log` VALUES ('626', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1128\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"急事速办\"],\"url\":[\"/manage/jssb\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:jssb:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-10 09:49:34');
INSERT INTO `sys_oper_log` VALUES ('627', '急事速办', '1', 'com.ruoyi.manage.jssb.controller.TXqJssbController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/jssb/add', '127.0.0.1', '内网IP', '{\"title\":[\"测试\"],\"type\":[\"3\"],\"busName\":[\"商家名称\"],\"busMobile\":[\"13585283047\"],\"content\":[\"<p>9999999999999999999999999999999999999999999<img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/10/e9d6bc25bba2b283c0864dae936b5a55.jpg\\\" data-filename=\\\"/profile/upload/2019/12/10/e9d6bc25bba2b283c0864dae936b5a55.jpg\\\" style=\\\"width: 808px;\\\"></p>\"]}', '0', null, '2019-12-10 09:59:08');
INSERT INTO `sys_oper_log` VALUES ('628', '急事速办', '2', 'com.ruoyi.manage.jssb.controller.TXqJssbController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/jssb/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"title\":[\"测试111\"],\"type\":[\"4\"],\"busName\":[\"商家名称111\"],\"busMobile\":[\"13585283047\"],\"content\":[\"<p>999999999111111111111111<img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/10/e9d6bc25bba2b283c0864dae936b5a55.jpg\\\" data-filename=\\\"/profile/upload/2019/12/10/e9d6bc25bba2b283c0864dae936b5a55.jpg\\\" style=\\\"width: 808px;\\\"></p>\"]}', '0', null, '2019-12-10 10:08:55');
INSERT INTO `sys_oper_log` VALUES ('629', '装修效果', '1', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/showhome/add', '127.0.0.1', '内网IP', '{\"title\":[\"测试1\"],\"type\":[\"1\"],\"deptId\":[\"114\"],\"bud\":[\"11-1-111\"],\"area\":[\"11\"],\"doorType\":[\"11\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"detail\":[\"略\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/10/6a7df9f0ede7929f4620b31e994ff22a.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/85aacb3ee505b82aac6d39a7b5f76caf.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/a181927716e4debdd50123dd91b0608b.png\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/40271d0816da62e666a15a015d932675.jpg\"]}', '1', 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'door_type\' in \'class com.ruoyi.manage.showhome.domain.ZxShowHome\'', '2019-12-10 11:33:49');
INSERT INTO `sys_oper_log` VALUES ('630', '装修效果', '1', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.addSave()', '1', 'admin', null, '/gcxw/manage/showhome/add', '127.0.0.1', '内网IP', '{\"title\":[\"测试1\"],\"type\":[\"1\"],\"deptId\":[\"114\"],\"bud\":[\"11-1-111\"],\"area\":[\"11\"],\"doorType\":[\"11\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"detail\":[\"略\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/10/6a7df9f0ede7929f4620b31e994ff22a.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/85aacb3ee505b82aac6d39a7b5f76caf.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/a181927716e4debdd50123dd91b0608b.png\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/40271d0816da62e666a15a015d932675.jpg\"]}', '1', '', '2019-12-10 11:46:08');
INSERT INTO `sys_oper_log` VALUES ('631', '装修效果', '1', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.addSave()', '1', 'admin', null, '/gcxw/manage/showhome/add', '127.0.0.1', '内网IP', '{\"title\":[\"测试1\"],\"type\":[\"1\"],\"deptId\":[\"114\"],\"bud\":[\"11-1-1111\"],\"area\":[\"4848cm²\"],\"doorType\":[\"111111111111111111111111111111\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"1111\"],\"detail\":[\"测试\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/10/3cc312f8aa258bf0a653209e1d66f0f8.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/a881b0464a65fc6019ce79871c04094f.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/b2eb4f3e8cc3a99cccb7b974d6a96a70.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/2fecd4daee4bfafc9d146163fc6b5b49.png\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/6d8bfdee9e0eeb90b097581cab90ce31.jpg\"]}', '0', null, '2019-12-10 11:47:48');
INSERT INTO `sys_oper_log` VALUES ('632', '装修效果', '2', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/showhome/edit', '127.0.0.1', '内网IP', '{\"showHomeId\":[\"2\"],\"title\":[\"测试12\"],\"type\":[\"2\"],\"deptId\":[\"114\"],\"bud\":[\"11-1-111\"],\"area\":[\"11\"],\"doorType\":[\"11\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"detail\":[\"测试2\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/10/a881b0464a65fc6019ce79871c04094f.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/2fecd4daee4bfafc9d146163fc6b5b49.png\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/760425e0ca3258d0b7197aed10a3c393.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/dd454af6b63e59ca6a9ae093a4802633.jpg\"]}', '0', null, '2019-12-10 14:01:22');
INSERT INTO `sys_oper_log` VALUES ('633', '装修效果', '3', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/showhome/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-12-10 14:18:55');
INSERT INTO `sys_oper_log` VALUES ('634', '装修效果', '1', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/showhome/add', '127.0.0.1', '内网IP', '{\"title\":[\"测试1\"],\"type\":[\"1\"],\"deptId\":[\"114\"],\"bud\":[\"11-1-111\"],\"area\":[\"11\"],\"doorType\":[\"11\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"detail\":[\"效果极佳\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/10/516b02e3bbbccac7369f5e631a01c137.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/10/a450dacec9fb49ca4459266e28b3320c.png\"]}', '0', null, '2019-12-10 14:19:32');
INSERT INTO `sys_oper_log` VALUES ('635', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"装修公司推荐指数\"],\"dictType\":[\"sys_zx_company_recnum\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 14:21:01');
INSERT INTO `sys_oper_log` VALUES ('636', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"1\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_zx_company_recnum\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 14:21:16');
INSERT INTO `sys_oper_log` VALUES ('637', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"2\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_zx_company_recnum\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 14:21:23');
INSERT INTO `sys_oper_log` VALUES ('638', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"3\"],\"dictValue\":[\"3\"],\"dictType\":[\"sys_zx_company_recnum\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 14:21:31');
INSERT INTO `sys_oper_log` VALUES ('639', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"4\"],\"dictValue\":[\"4\"],\"dictType\":[\"sys_zx_company_recnum\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 14:21:37');
INSERT INTO `sys_oper_log` VALUES ('640', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"5\"],\"dictValue\":[\"5\"],\"dictType\":[\"sys_zx_company_recnum\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-10 14:21:46');
INSERT INTO `sys_oper_log` VALUES ('641', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zc_company\"]}', '0', null, '2019-12-10 14:22:15');
INSERT INTO `sys_oper_log` VALUES ('642', '代码生成', '3', 'com.ruoyi.project.tool.gen.controller.GenController.remove()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"36\"]}', '0', null, '2019-12-10 14:25:23');
INSERT INTO `sys_oper_log` VALUES ('643', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_company\"]}', '0', null, '2019-12-10 14:26:31');
INSERT INTO `sys_oper_log` VALUES ('644', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"37\"],\"tableName\":[\"t_zx_company\"],\"tableComment\":[\"装修公司\"],\"className\":[\"ZxCompany\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"338\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"zxCompanyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"339\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"公司名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"companyName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"340\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"品牌logo\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"logo\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"341\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"首页推荐\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"isMain\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"342\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"公司地址\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"address\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"343\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"推荐指数\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"recNum\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"sys_zx_co', '0', null, '2019-12-10 14:29:08');
INSERT INTO `sys_oper_log` VALUES ('645', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_zx_company', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-10 14:29:14');
INSERT INTO `sys_oper_log` VALUES ('646', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"37\"],\"tableName\":[\"t_zx_company\"],\"tableComment\":[\"装修公司\"],\"className\":[\"ZxCompany\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"338\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"zxCompanyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"339\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"公司名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"companyName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"340\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"品牌logo\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"logo\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"341\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"首页推荐\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"isMain\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"342\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"公司地址\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"address\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"343\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"推荐指数\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"recNum\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"column', '0', null, '2019-12-10 14:30:03');
INSERT INTO `sys_oper_log` VALUES ('647', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_zx_company', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-10 14:30:06');
INSERT INTO `sys_oper_log` VALUES ('648', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1133\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"装修公司管理\"],\"url\":[\"/manage/zxcompany\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxcompany:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-10 14:32:50');
INSERT INTO `sys_oper_log` VALUES ('649', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1133\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"装修公司管理\"],\"url\":[\"/manage/zxcompany\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxcompany:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-10 14:32:59');
INSERT INTO `sys_oper_log` VALUES ('650', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"37\"],\"tableName\":[\"t_zx_company\"],\"tableComment\":[\"装修公司\"],\"className\":[\"ZxCompany\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"338\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"zxCompanyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"339\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"公司名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"companyName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"340\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"品牌logo\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"logo\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"341\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"首页推荐\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"isMain\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"342\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"公司地址\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"address\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"343\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"推荐指数\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"recNum\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"select\"],\"colum', '0', null, '2019-12-10 14:36:41');
INSERT INTO `sys_oper_log` VALUES ('651', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_zx_company', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-10 14:36:44');
INSERT INTO `sys_oper_log` VALUES ('652', '装修公司管理', '1', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxcompany/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"装修公司1\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/10/ed279c552426f44a400b0e97e9e13f99.jpg\"],\"address\":[\"测试公司地址\"],\"recNum\":[\"5\"],\"detail\":[\"该公司贼厉害\"]}', '0', null, '2019-12-10 14:46:07');
INSERT INTO `sys_oper_log` VALUES ('653', '装修公司管理', '2', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxcompany/edit', '127.0.0.1', '内网IP', '{\"zxCompanyId\":[\"1\"],\"companyName\":[\"装修公司1\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/10/ed279c552426f44a400b0e97e9e13f99.jpg\"],\"address\":[\"测试公司地址\"],\"recNum\":[\"5\"],\"detail\":[\"该公司贼厉害\"]}', '0', null, '2019-12-10 14:46:17');
INSERT INTO `sys_oper_log` VALUES ('654', '装修公司管理', '2', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxcompany/edit', '127.0.0.1', '内网IP', '{\"zxCompanyId\":[\"1\"],\"companyName\":[\"装修公司12\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/10/87e19e1d1ee8458d552048d1b1dc2fe9.jpg\"],\"address\":[\"测试公司地址2\"],\"recNum\":[\"4\"],\"detail\":[\"该公司贼厉害2\"]}', '0', null, '2019-12-10 15:01:13');
INSERT INTO `sys_oper_log` VALUES ('655', '装修公司管理', '2', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxcompany/edit', '127.0.0.1', '内网IP', '{\"zxCompanyId\":[\"1\"],\"companyName\":[\"装修公司12\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/10/87e19e1d1ee8458d552048d1b1dc2fe9.jpg\"],\"address\":[\"测试公司地址2\"],\"recNum\":[\"4\"],\"detail\":[\"该公司贼厉害2\"]}', '0', null, '2019-12-10 15:01:20');
INSERT INTO `sys_oper_log` VALUES ('656', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_gzh_user\"]}', '0', null, '2019-12-10 17:04:29');
INSERT INTO `sys_oper_log` VALUES ('657', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"38\"],\"tableName\":[\"t_gzh_user\"],\"tableComment\":[\"公众号\"],\"className\":[\"TGzhUser\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"349\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"350\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"subscribe\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"351\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"标识\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"openid\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"352\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"nickname\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"353\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"性别\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"sex\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"354\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"城市\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"city\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"355\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"国家\"],\"columns[6].javaType\":[\"String\"],\"columns[6].javaField\":[\"country\"],\"columns[6].isList\":[\"1\"],\"columns[6].queryType\":[\"EQ\"],\"columns[6].htmlType\":[\"input\"],\"columns[6].dictType\":[\"\"],\"columns[7].columnId\":[\"356', '0', null, '2019-12-10 17:06:09');
INSERT INTO `sys_oper_log` VALUES ('658', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_gzh_user', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-10 17:06:52');
INSERT INTO `sys_oper_log` VALUES ('659', '菜单管理', '1', 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"维修人员管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-drivers-license\"],\"visible\":[\"0\"]}', '0', null, '2019-12-10 17:12:47');
INSERT INTO `sys_oper_log` VALUES ('660', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1138\"],\"parentId\":[\"1143\"],\"menuType\":[\"C\"],\"menuName\":[\"公众号关注用户\"],\"url\":[\"/gzh/gzhuser\"],\"target\":[\"menuItem\"],\"perms\":[\"gzh:gzhuser:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-10 17:13:02');
INSERT INTO `sys_oper_log` VALUES ('661', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.download()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/download', '127.0.0.1', '内网IP', '{}', '1', 'java.lang.String cannot be cast to java.lang.Integer', '2019-12-11 10:02:39');
INSERT INTO `sys_oper_log` VALUES ('662', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.download()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/download', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-11 10:06:50');
INSERT INTO `sys_oper_log` VALUES ('663', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.download()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/download', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-11 10:09:58');
INSERT INTO `sys_oper_log` VALUES ('664', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.download()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/download', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-11 10:12:22');
INSERT INTO `sys_oper_log` VALUES ('665', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.download()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/download', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-11 10:17:50');
INSERT INTO `sys_oper_log` VALUES ('666', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.download()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/download', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-11 10:20:12');
INSERT INTO `sys_oper_log` VALUES ('667', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.download()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/download', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-11 11:02:20');
INSERT INTO `sys_oper_log` VALUES ('668', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.download()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/download', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-11 11:57:44');
INSERT INTO `sys_oper_log` VALUES ('669', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"31\"],\"wxType\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = 31\' at line 3\r\n### The error may involve com.ruoyi.gzh.gzhuser.mapper.TGzhUserMapper.updateTGzhUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update t_gzh_user                    where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = 31\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = 31\' at line 3', '2019-12-11 14:11:46');
INSERT INTO `sys_oper_log` VALUES ('670', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"31\"],\"wxType\":[\"\"],\"wxDept\":[\"113\",\"114\",\"118\"]}', '0', null, '2019-12-11 14:12:56');
INSERT INTO `sys_oper_log` VALUES ('671', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"31\"],\"wxType\":[\"\"],\"wxDept\":[\"113\",\"115\",\"119\"]}', '0', null, '2019-12-11 15:36:40');
INSERT INTO `sys_oper_log` VALUES ('672', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"维修类型\"],\"dictType\":[\"sys_wx_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-11 15:37:59');
INSERT INTO `sys_oper_log` VALUES ('673', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"水电\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_wx_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-11 15:38:14');
INSERT INTO `sys_oper_log` VALUES ('674', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"家具\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_wx_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-11 15:38:27');
INSERT INTO `sys_oper_log` VALUES ('675', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"31\"],\"wxType\":[\"1\",\"2\"]}', '0', null, '2019-12-11 15:53:48');
INSERT INTO `sys_oper_log` VALUES ('676', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"31\"],\"wxType\":[\"2\"],\"wxDept\":[\"113\"]}', '0', null, '2019-12-11 16:08:16');
INSERT INTO `sys_oper_log` VALUES ('677', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.download()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/download', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-11 16:10:04');
INSERT INTO `sys_oper_log` VALUES ('678', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"76\"],\"wxType\":[\"1\"],\"wxDept\":[\"113\",\"115\"]}', '0', null, '2019-12-11 16:15:06');
INSERT INTO `sys_oper_log` VALUES ('679', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.download()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/download', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-11 16:15:18');
INSERT INTO `sys_oper_log` VALUES ('680', '小区公告', '1', 'com.ruoyi.manage.notice.controller.XqNoticeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/notice/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"title\":[\"公告标题\"],\"content\":[\"<p><b>公告内容</b></p>\"]}', '0', null, '2019-12-16 14:19:12');
INSERT INTO `sys_oper_log` VALUES ('681', '急事速办', '1', 'com.ruoyi.manage.jssb.controller.TXqJssbController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/jssb/add', '127.0.0.1', '内网IP', '{\"title\":[\"13585283047\"],\"deptId\":[\"113\",\"114\",\"115\"],\"type\":[\"2\"],\"busName\":[\"654654\"],\"busMobile\":[\"654654\"],\"content\":[\"<p>6454545454545454545454545454545454545454545645645646414515</p>\"]}', '0', null, '2019-12-16 15:22:02');
INSERT INTO `sys_oper_log` VALUES ('682', '急事速办', '2', 'com.ruoyi.manage.jssb.controller.TXqJssbController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/jssb/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"title\":[\"13585283047\"],\"type\":[\"2\"],\"busName\":[\"654654\"],\"busMobile\":[\"654654\"],\"content\":[\"neirong yayayayayayay\"]}', '0', null, '2019-12-16 15:31:44');
INSERT INTO `sys_oper_log` VALUES ('683', '急事速办', '2', 'com.ruoyi.manage.jssb.controller.TXqJssbController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/jssb/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"title\":[\"13585283047\"],\"deptId\":[\"113\",\"114\"],\"type\":[\"2\"],\"busName\":[\"654654\"],\"busMobile\":[\"654654\"],\"content\":[\"neirong yayayayayayay\"]}', '0', null, '2019-12-16 15:36:16');
INSERT INTO `sys_oper_log` VALUES ('684', '急事速办', '2', 'com.ruoyi.manage.jssb.controller.TXqJssbController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/jssb/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"title\":[\"13585283047\"],\"deptId\":[\"114\",\"119\"],\"type\":[\"2\"],\"busName\":[\"654654\"],\"busMobile\":[\"654654\"],\"content\":[\"neirong yayayayayayay0000000000000000000000000000000\"]}', '0', null, '2019-12-16 15:37:51');
INSERT INTO `sys_oper_log` VALUES ('685', '急事速办', '2', 'com.ruoyi.manage.jssb.controller.TXqJssbController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/jssb/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"title\":[\"13585283047\"],\"type\":[\"2\"],\"busName\":[\"654654\"],\"busMobile\":[\"654654\"],\"content\":[\"neirong yayayayayayay000000000000000000000000000000044444444444444444\"]}', '0', null, '2019-12-16 15:37:58');
INSERT INTO `sys_oper_log` VALUES ('686', '急事速办', '3', 'com.ruoyi.manage.jssb.controller.TXqJssbController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/jssb/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-12-16 15:38:08');
INSERT INTO `sys_oper_log` VALUES ('687', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"投诉类型\"],\"dictType\":[\"sys_ts_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-16 16:31:49');
INSERT INTO `sys_oper_log` VALUES ('688', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"公共区域\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_ts_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-16 16:32:21');
INSERT INTO `sys_oper_log` VALUES ('689', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"私人空间\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_ts_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-16 16:32:40');
INSERT INTO `sys_oper_log` VALUES ('690', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"二手商品类型\"],\"dictType\":[\"sys_essp_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-17 09:17:30');
INSERT INTO `sys_oper_log` VALUES ('691', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"旧家具\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_essp_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-17 09:19:28');
INSERT INTO `sys_oper_log` VALUES ('692', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"旧家电\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_essp_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-17 09:19:42');
INSERT INTO `sys_oper_log` VALUES ('693', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"76\"],\"wxDept\":[\"119\"]}', '0', null, '2019-12-17 14:44:56');
INSERT INTO `sys_oper_log` VALUES ('694', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"84\"],\"wxType\":[\"1\"],\"wxDept\":[\"112\",\"113\",\"114\",\"115\",\"118\",\"119\"]}', '0', null, '2019-12-17 14:45:13');
INSERT INTO `sys_oper_log` VALUES ('695', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"84\"],\"wxType\":[\"1\",\"2\"]}', '0', null, '2019-12-17 14:45:23');
INSERT INTO `sys_oper_log` VALUES ('696', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"78\"],\"wxType\":[\"1\"],\"wxDept\":[\"113\",\"114\"]}', '0', null, '2019-12-17 14:49:40');
INSERT INTO `sys_oper_log` VALUES ('697', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"82\"],\"wxType\":[\"1\"],\"wxDept\":[\"114\"]}', '0', null, '2019-12-17 14:49:48');
INSERT INTO `sys_oper_log` VALUES ('698', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"77\"],\"wxDept\":[\"119\"]}', '0', null, '2019-12-17 14:53:05');
INSERT INTO `sys_oper_log` VALUES ('699', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"78\"],\"wxType\":[\"1\"],\"wxDept\":[\"119\"]}', '0', null, '2019-12-17 14:54:41');
INSERT INTO `sys_oper_log` VALUES ('700', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"84\"],\"wxDept\":[\"119\"]}', '0', null, '2019-12-17 14:54:48');
INSERT INTO `sys_oper_log` VALUES ('701', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"82\"],\"wxType\":[\"1\"],\"wxDept\":[\"119\"]}', '0', null, '2019-12-17 14:55:07');
INSERT INTO `sys_oper_log` VALUES ('702', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"84\"],\"wxDept\":[\"112\",\"113\",\"114\",\"115\",\"119\"]}', '0', null, '2019-12-17 14:55:16');
INSERT INTO `sys_oper_log` VALUES ('703', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"82\"],\"wxType\":[\"1\"],\"wxDept\":[\"114\",\"119\"]}', '0', null, '2019-12-17 14:57:58');
INSERT INTO `sys_oper_log` VALUES ('704', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"78\"],\"wxType\":[\"1\"],\"wxDept\":[\"114\",\"119\"]}', '0', null, '2019-12-17 14:58:33');
INSERT INTO `sys_oper_log` VALUES ('705', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"78\"],\"wxType\":[\"1\"],\"wxDept\":[\"119\"]}', '0', null, '2019-12-17 15:32:53');
INSERT INTO `sys_oper_log` VALUES ('706', '公众号关注用户', '2', 'com.ruoyi.gzh.gzhuser.controller.TGzhUserController.editSave()', '1', 'admin', '港城小窝', '/gcxw/gzh/gzhuser/edit', '127.0.0.1', '内网IP', '{\"id\":[\"82\"],\"wxType\":[\"1\"],\"wxDept\":[\"119\"]}', '0', null, '2019-12-17 15:33:02');
INSERT INTO `sys_oper_log` VALUES ('707', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"7\"]}', '0', null, '2019-12-17 17:08:43');
INSERT INTO `sys_oper_log` VALUES ('708', '物业费', '1', 'com.ruoyi.manage.property.controller.TXqPropertyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/add', '127.0.0.1', '内网IP', '{\"floorId\":[\"3\"],\"propertyName\":[\"2\"],\"propertyFee\":[\"222\"],\"startTime\":[\"2019-12-16\"],\"endTime\":[\"2019-12-19\"],\"state\":[\"1\"]}', '0', null, '2019-12-17 17:09:25');
INSERT INTO `sys_oper_log` VALUES ('709', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"8\"]}', '0', null, '2019-12-17 17:09:31');
INSERT INTO `sys_oper_log` VALUES ('710', '物业费', '1', 'com.ruoyi.manage.property.controller.TXqPropertyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/add', '127.0.0.1', '内网IP', '{\"floorId\":[\"3\"],\"propertyName\":[\"3\"],\"propertyFee\":[\"3333\"],\"startTime\":[\"2019-11-28\"],\"endTime\":[\"2019-12-19\"],\"state\":[\"1\"]}', '0', null, '2019-12-17 17:11:28');
INSERT INTO `sys_oper_log` VALUES ('711', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"9\"]}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1\r\n### The error may involve com.ruoyi.manage.property.mapper.TXqPropertyMapper.savePush-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_xq_push_fee(type, fee, fee_id, dept_id, build_num, unit_num, door_num, start_time, end_time, push_time)   values(1, ?, ?, ?, ?, ?, ?, ?, ?, sysdate())\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1\n; Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1', '2019-12-17 17:11:43');
INSERT INTO `sys_oper_log` VALUES ('712', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"9\"]}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1\r\n### The error may involve com.ruoyi.manage.property.mapper.TXqPropertyMapper.savePush-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_xq_push_fee(type, fee, fee_id, dept_id, build_num, unit_num, door_num, start_time, end_time, push_time)   values(1, ?, ?, ?, ?, ?, ?, ?, ?, sysdate())\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1\n; Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1', '2019-12-17 17:15:36');
INSERT INTO `sys_oper_log` VALUES ('713', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"9\"]}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1\r\n### The error may involve com.ruoyi.manage.property.mapper.TXqPropertyMapper.savePush-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_xq_push_fee(type, fee, fee_id, dept_id, build_num, unit_num, door_num, start_time, end_time, push_time)   values(1, ?, ?, ?, ?, ?, ?, ?, ?, sysdate())\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1\n; Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu Nov 28 00:00:00 CST 2019\' for column \'start_time\' at row 1', '2019-12-17 17:16:41');
INSERT INTO `sys_oper_log` VALUES ('714', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"9\"]}', '0', null, '2019-12-17 17:18:11');
INSERT INTO `sys_oper_log` VALUES ('715', '停车费', '2', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/space/push', '127.0.0.1', '内网IP', '{\"id\":[\"8\"]}', '0', null, '2019-12-17 17:31:27');
INSERT INTO `sys_oper_log` VALUES ('716', '停车费', '1', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/space/add', '127.0.0.1', '内网IP', '{\"parkingFee\":[\"333333333333\"],\"floorId\":[\"3\"],\"parkingNum\":[\"333\"],\"startTime\":[\"2019-12-16\"],\"endTime\":[\"2019-12-26\"]}', '0', null, '2019-12-17 17:33:56');
INSERT INTO `sys_oper_log` VALUES ('717', '停车费', '2', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/space/push', '127.0.0.1', '内网IP', '{\"id\":[\"9\"]}', '0', null, '2019-12-17 17:34:00');
INSERT INTO `sys_oper_log` VALUES ('718', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', null, '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_banner_img\"]}', '0', null, '2019-12-17 20:52:57');
INSERT INTO `sys_oper_log` VALUES ('719', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', null, '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"39\"],\"tableName\":[\"t_zx_banner_img\"],\"tableComment\":[\"装修首页banner\"],\"className\":[\"ZxBannerImg\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"360\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"zxBannerImgId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"361\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"封面\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"titleImgUrl\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"362\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"标题\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"title\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"363\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"详情\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"detail\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"364\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"首页显示\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"status\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"365\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"null\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"createBy\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"', '0', null, '2019-12-17 20:56:03');
INSERT INTO `sys_oper_log` VALUES ('720', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', null, '/gcxw/tool/gen/genCode/t_zx_banner_img', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-17 20:56:06');
INSERT INTO `sys_oper_log` VALUES ('721', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1144\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"装修首页banner\"],\"url\":[\"/manage/zxbannerimg\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxbannerimg:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-17 20:58:48');
INSERT INTO `sys_oper_log` VALUES ('722', '装修首页banner', '1', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.addSave()', '1', 'admin', null, '/gcxw/manage/zxbannerimg/add', '127.0.0.1', '内网IP', '{\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/17/820bdd34a89050a07eeff816fd9af6d8.jpg\"],\"title\":[\"测试1\"],\"detail\":[\"详情1111\"]}', '0', null, '2019-12-17 21:11:30');
INSERT INTO `sys_oper_log` VALUES ('723', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', null, '/gcxw/manage/zxbannerimg/edit', '127.0.0.1', '内网IP', '{\"zxBannerImgId\":[\"1\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/17/820bdd34a89050a07eeff816fd9af6d8.jpg\"],\"title\":[\"测试12\"],\"detail\":[\"详情11112\"]}', '0', null, '2019-12-17 21:16:46');
INSERT INTO `sys_oper_log` VALUES ('724', '停车费', '1', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/space/add', '127.0.0.1', '内网IP', '{\"parkingFee\":[\"1111\"],\"floorId\":[\"3\"],\"parkingNum\":[\"111\"],\"startTime\":[\"2019-12-02\"],\"endTime\":[\"2019-12-18\"]}', '0', null, '2019-12-18 08:56:55');
INSERT INTO `sys_oper_log` VALUES ('725', '停车费', '2', 'com.ruoyi.manage.space.controller.TXqParkingSpaceController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/space/push', '127.0.0.1', '内网IP', '{\"id\":[\"10\"]}', '0', null, '2019-12-18 08:57:00');
INSERT INTO `sys_oper_log` VALUES ('726', '物业费', '1', 'com.ruoyi.manage.property.controller.TXqPropertyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/property/add', '127.0.0.1', '内网IP', '{\"floorId\":[\"3\"],\"propertyName\":[\"1111\"],\"propertyFee\":[\"11111\"],\"startTime\":[\"2019-12-09\"],\"endTime\":[\"2019-12-25\"],\"state\":[\"1\"]}', '0', null, '2019-12-18 09:01:40');
INSERT INTO `sys_oper_log` VALUES ('727', '物业费', '2', 'com.ruoyi.manage.property.controller.TXqPropertyController.push()', '1', 'admin', '港城小窝', '/gcxw/manage/property/push', '127.0.0.1', '内网IP', '{\"id\":[\"10\"]}', '0', null, '2019-12-18 09:01:47');
INSERT INTO `sys_oper_log` VALUES ('728', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', null, '/gcxw/manage/zxbannerimg/edit', '127.0.0.1', '内网IP', '{\"zxBannerImgId\":[\"1\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/18/e8793bbbaba176718566d83eba536409.jpg\"],\"title\":[\"测试12\"],\"detail\":[\"详情11112\"]}', '0', null, '2019-12-18 13:59:17');
INSERT INTO `sys_oper_log` VALUES ('729', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', null, '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1144\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"装修首页banner\"],\"url\":[\"/manage/zxbannerimg\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxbannerimg:view\"],\"orderNum\":[\"0\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-18 13:59:55');
INSERT INTO `sys_oper_log` VALUES ('730', '装修首页banner', '1', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.addSave()', '1', 'admin', null, '/gcxw/manage/zxbannerimg/add', '127.0.0.1', '内网IP', '{\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/18/33a9938742e7d9fa66b5f6f2bb1e8a2f.jpg\"],\"title\":[\"测试2\"],\"detail\":[\"3333\"]}', '0', null, '2019-12-18 14:00:12');
INSERT INTO `sys_oper_log` VALUES ('731', '装修首页banner', '1', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.addSave()', '1', 'admin', null, '/gcxw/manage/zxbannerimg/add', '127.0.0.1', '内网IP', '{\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/18/1353d102baaf5d33523e46fcd38d888e.jpg\"],\"title\":[\"测试3\"],\"detail\":[\"2恶趣味<img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/18/e50c6e258aedb01ed22b76813ae751b9.jpg\\\" alt=\\\"\\\" />\"]}', '0', null, '2019-12-18 14:00:31');
INSERT INTO `sys_oper_log` VALUES ('732', '装修首页banner', '1', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.addSave()', '1', 'admin', null, '/gcxw/manage/zxbannerimg/add', '127.0.0.1', '内网IP', '{\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/18/59882f223c50063a9b931953a6c30741.jpg\"],\"title\":[\"测55\"],\"detail\":[\"5555\"]}', '0', null, '2019-12-18 14:00:42');
INSERT INTO `sys_oper_log` VALUES ('733', '装修公司管理', '2', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxcompany/edit', '127.0.0.1', '内网IP', '{\"zxCompanyId\":[\"1\"],\"companyName\":[\"装修公司12\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/18/7bca8a9dbaf17db5f98626b9aa6b3a94.jpg\"],\"address\":[\"测试公司地址2\"],\"recNum\":[\"4\"],\"detail\":[\"该公司贼厉害2\"]}', '0', null, '2019-12-18 14:47:42');
INSERT INTO `sys_oper_log` VALUES ('734', '装修公司管理', '1', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxcompany/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"装修工233\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/18/973354bdea0ae5b4bfa0087d12e009c5.jpg\"],\"address\":[\"朝阳路100号\"],\"recNum\":[\"5\"],\"detail\":[\"666\"]}', '0', null, '2019-12-18 14:48:13');
INSERT INTO `sys_oper_log` VALUES ('735', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_complaints\"]}', '0', null, '2019-12-18 15:51:56');
INSERT INTO `sys_oper_log` VALUES ('736', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"40\"],\"tableName\":[\"t_xq_complaints\"],\"tableComment\":[\"投诉建议\"],\"className\":[\"XqComplaints\"],\"functionAuthor\":[\"zhangchengcai\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"370\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"371\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"建议类型\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"type\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"sys_ts_type\"],\"columns[2].columnId\":[\"372\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"具体描述\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"content\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"373\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"提出人openId\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"presentedId\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"374\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"提出人小区\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"presentedDept\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"375\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"提出时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"presentedDate\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"datetime\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[', '0', null, '2019-12-18 15:54:42');
INSERT INTO `sys_oper_log` VALUES ('737', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_complaints', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-18 15:55:02');
INSERT INTO `sys_oper_log` VALUES ('738', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1149\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"投诉/建议管理\"],\"url\":[\"/manage/complaints\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:complaints:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-18 15:59:31');
INSERT INTO `sys_oper_log` VALUES ('739', '投诉/建议管理', '2', 'com.ruoyi.manage.complaints.controller.XqComplaintsController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/complaints/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"content\":[\"我要瞎反馈\"],\"presentedDept\":[\"114\"],\"reply\":[\"555555555555555555555555555555555555555555555555555\"],\"state\":[\"2\"]}', '0', null, '2019-12-18 16:20:25');
INSERT INTO `sys_oper_log` VALUES ('740', '投诉/建议管理', '2', 'com.ruoyi.manage.complaints.controller.XqComplaintsController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/complaints/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"content\":[\"我要瞎反馈\"],\"presentedDept\":[\"114\"],\"reply\":[\"555555555555555555555555555555555555555555555555555\"],\"state\":[\"2\"]}', '0', null, '2019-12-18 16:20:34');
INSERT INTO `sys_oper_log` VALUES ('741', '投诉/建议管理', '2', 'com.ruoyi.manage.complaints.controller.XqComplaintsController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/complaints/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"content\":[\"74848545\"],\"presentedDept\":[\"小区3\"],\"state\":[\"2\"],\"reply\":[\"99999999999999999999999999999995655555555555555555554\"]}', '0', null, '2019-12-18 16:50:01');
INSERT INTO `sys_oper_log` VALUES ('742', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_bx_info\"]}', '0', null, '2019-12-18 17:12:08');
INSERT INTO `sys_oper_log` VALUES ('743', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"41\"],\"tableName\":[\"t_xq_bx_info\"],\"tableComment\":[\"小区报修\"],\"className\":[\"TXqBxInfo\"],\"functionAuthor\":[\"zhangchengcai\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"379\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"380\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"类型\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"type\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"sys_wx_type\"],\"columns[2].columnId\":[\"381\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"预约时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"appointment\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"382\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"具体描述\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"introduced\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"383\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"追加描述\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"additional\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"384\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"发布人openId\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"presentedId\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"385\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"发布人小', '0', null, '2019-12-18 17:19:39');
INSERT INTO `sys_oper_log` VALUES ('744', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_bx_info', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-18 17:19:45');
INSERT INTO `sys_oper_log` VALUES ('745', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1154\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"报修管理\"],\"url\":[\"/manage/bxinfo\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:bxinfo:view\"],\"orderNum\":[\"9\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-18 17:22:08');
INSERT INTO `sys_oper_log` VALUES ('746', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannerimg/edit', '127.0.0.1', '内网IP', '{\"zxBannerImgId\":[\"4\"],\"titleImgUrl\":[\"http://127.0.0.1:8086/profile/upload/2019/12/19/d08525791473ab2ddbe38f5ab36f7bf3.jpg\"],\"title\":[\"测55\"],\"detail\":[\"5555\"]}', '0', null, '2019-12-19 09:44:39');
INSERT INTO `sys_oper_log` VALUES ('747', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannerimg/edit', '127.0.0.1', '内网IP', '{\"zxBannerImgId\":[\"4\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/eda96a9a8e16d21cf26492cb40151a5d.jpg\"],\"title\":[\"测55\"],\"detail\":[\"5555\"]}', '0', null, '2019-12-19 09:48:57');
INSERT INTO `sys_oper_log` VALUES ('748', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannerimg/edit', '127.0.0.1', '内网IP', '{\"zxBannerImgId\":[\"3\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/dd8d83512b54b9ef52849ecb819cbaaa.jpg\"],\"title\":[\"测试3\"],\"detail\":[\"2恶趣味<img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/18/e50c6e258aedb01ed22b76813ae751b9.jpg\\\" alt=\\\"\\\" />\"]}', '0', null, '2019-12-19 09:50:25');
INSERT INTO `sys_oper_log` VALUES ('749', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannerimg/edit', '127.0.0.1', '内网IP', '{\"zxBannerImgId\":[\"2\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/060a7fd55cfa95ecfc846999e0956fc2.jpg\"],\"title\":[\"测试2\"],\"detail\":[\"3333\"]}', '0', null, '2019-12-19 09:50:30');
INSERT INTO `sys_oper_log` VALUES ('750', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannerimg/edit', '127.0.0.1', '内网IP', '{\"zxBannerImgId\":[\"1\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/3a66e1aaf6de925882fe3e051ee896d9.jpg\"],\"title\":[\"测试12\"],\"detail\":[\"详情11112\"]}', '0', null, '2019-12-19 09:50:35');
INSERT INTO `sys_oper_log` VALUES ('751', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannervideo/edit', '127.0.0.1', '内网IP', '{\"zxBannerVideoId\":[\"3\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/e6bfb1e05d6cf4835b6534a9aaccc22c.jpg\"],\"title\":[\"测2\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/5248ed855559cfd921799429a728c4af.mp4\"],\"detail\":[\"\"]}', '0', null, '2019-12-19 09:51:06');
INSERT INTO `sys_oper_log` VALUES ('752', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannervideo/edit', '127.0.0.1', '内网IP', '{\"zxBannerVideoId\":[\"2\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/2e6674b1feb7e6de5f45a17e751589d6.jpg\"],\"title\":[\"测\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/3a5fcdfc2176c2d305b8fcdc40c214bb.mp4\"],\"detail\":[\"\"]}', '0', null, '2019-12-19 09:51:12');
INSERT INTO `sys_oper_log` VALUES ('753', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxbannervideo/edit', '127.0.0.1', '内网IP', '{\"zxBannerVideoId\":[\"1\"],\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/725ee9f7bf3dd557bbed52a020b6fa40.jpg\"],\"title\":[\"风水大师讲解\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/f326629c24b655ea95664b6fd9311d74.mp4\"],\"detail\":[\"\"]}', '0', null, '2019-12-19 09:51:19');
INSERT INTO `sys_oper_log` VALUES ('754', '装修公司管理', '2', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxcompany/edit', '127.0.0.1', '内网IP', '{\"zxCompanyId\":[\"1\"],\"companyName\":[\"装修公司12\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/c15103a07ef41ea40eec84eca7fe6613.jpg\"],\"address\":[\"测试公司地址2\"],\"recNum\":[\"4\"],\"detail\":[\"该公司贼厉害2\"]}', '0', null, '2019-12-19 09:51:26');
INSERT INTO `sys_oper_log` VALUES ('755', '装修公司管理', '2', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/zxcompany/edit', '127.0.0.1', '内网IP', '{\"zxCompanyId\":[\"2\"],\"companyName\":[\"装修工233\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/7c73de5f2a95238125b6a2e3923c683d.jpg\"],\"address\":[\"朝阳路100号\"],\"recNum\":[\"5\"],\"detail\":[\"666\"]}', '0', null, '2019-12-19 09:51:31');
INSERT INTO `sys_oper_log` VALUES ('756', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannerimg/edit', '127.0.0.1', '内网IP', '{\"zxBannerImgId\":[\"3\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/6b5b6a5516bc1becf147b0bf16eb54d1.jpg\"],\"title\":[\"测试3\"],\"detail\":[\"2恶趣味<img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/18/e50c6e258aedb01ed22b76813ae751b9.jpg\\\" alt=\\\"\\\" />\"]}', '0', null, '2019-12-19 09:52:01');
INSERT INTO `sys_oper_log` VALUES ('757', '报修管理', '2', 'com.ruoyi.manage.bxinfo.controller.TXqBxInfoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/bxinfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"appointment\":[\"2019-01-01\"],\"introduced\":[\"这里是错误描述\"],\"additional\":[\"\"],\"presentedId\":[\"qwqwewq\"],\"presentedDept\":[\"114\"],\"presentedDate\":[\"2019-12-17\"],\"presentedMobile\":[\"444444\"],\"state\":[\"2\"]}', '0', null, '2019-12-19 09:53:24');
INSERT INTO `sys_oper_log` VALUES ('758', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_designer\"]}', '0', null, '2019-12-19 09:59:22');
INSERT INTO `sys_oper_log` VALUES ('759', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"性别\"],\"dictType\":[\"t_sex\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 10:01:37');
INSERT INTO `sys_oper_log` VALUES ('760', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"男\"],\"dictValue\":[\"1\"],\"dictType\":[\"t_sex\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 10:01:54');
INSERT INTO `sys_oper_log` VALUES ('761', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"女\"],\"dictValue\":[\"0\"],\"dictType\":[\"t_sex\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 10:02:06');
INSERT INTO `sys_oper_log` VALUES ('762', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"42\"],\"tableName\":[\"t_zx_designer\"],\"tableComment\":[\"设计师\"],\"className\":[\"ZxDesigner\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"389\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"designerId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"390\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"头像\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"headImg\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"391\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"392\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"装修公司\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"zxCompanyId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"393\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"工作年限\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"workYear\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"394\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"性别\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"sex\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"]', '0', null, '2019-12-19 10:04:11');
INSERT INTO `sys_oper_log` VALUES ('763', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_zx_designer', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-19 10:04:17');
INSERT INTO `sys_oper_log` VALUES ('764', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_esbus_info\"]}', '0', null, '2019-12-19 10:06:24');
INSERT INTO `sys_oper_log` VALUES ('765', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1159\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"设计师管理\"],\"url\":[\"/manage/zxdesigner\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxdesigner:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-19 10:08:39');
INSERT INTO `sys_oper_log` VALUES ('766', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1159\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"设计师管理\"],\"url\":[\"/manage/zxdesigner\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxdesigner:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-19 10:08:52');
INSERT INTO `sys_oper_log` VALUES ('767', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"43\"],\"tableName\":[\"t_esbus_info\"],\"tableComment\":[\"二手交易\"],\"className\":[\"TEsbusInfo\"],\"functionAuthor\":[\"zhangchengcai\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"403\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"404\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"UUID标识\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"uuId\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"405\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"类型\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_essp_type\"],\"columns[3].columnId\":[\"406\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"标题\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"title\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"407\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"介绍\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"introduced\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"408\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"发布人openId\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"presentedId\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[7].columnId\":[\"410\"],\"columns[7].sort\":[\"8\"],\"columns[7].columnComment\":[\"发布日期\"],\"columns[7].javaType\":[\"Date\"],\"columns[7].javaField\":[\"presentedDate\"],\"columns[7].isList\":[\"1\"],\"columns[7].query', '0', null, '2019-12-19 10:09:24');
INSERT INTO `sys_oper_log` VALUES ('768', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_esbus_info', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-19 10:09:27');
INSERT INTO `sys_oper_log` VALUES ('769', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1164\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"二手交易管理\"],\"url\":[\"/manage/businfo\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:businfo:view\"],\"orderNum\":[\"11\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-19 10:16:22');
INSERT INTO `sys_oper_log` VALUES ('770', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"43\"],\"tableName\":[\"t_esbus_info\"],\"tableComment\":[\"二手交易\"],\"className\":[\"TEsbusInfo\"],\"functionAuthor\":[\"zhangchengcai\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"403\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"404\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"UUID标识\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"uuId\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"405\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"类型\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"sys_essp_type\"],\"columns[3].columnId\":[\"406\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"标题\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"title\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"407\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"介绍\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"introduced\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"408\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"发布人openId\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"presentedId\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"409\"],\"columns[6].sort\":[\"7\"],\"columns[6].columnComment\":[\"发布人小区\"],\"columns[6', '0', null, '2019-12-19 10:43:41');
INSERT INTO `sys_oper_log` VALUES ('771', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_esbus_info', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-19 10:43:44');
INSERT INTO `sys_oper_log` VALUES ('772', '二手交易管理', '2', 'com.ruoyi.manage.businfo.controller.TEsbusInfoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/businfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"state\":[\"2\"],\"title\":[\"测试发布标题1\"],\"introduced\":[\"测试文字简介\"],\"presentedDept\":[\"114\"],\"presentedDate\":[\"2019-12-17\"],\"presentedMobile\":[\"444444\"]}', '0', null, '2019-12-19 10:49:31');
INSERT INTO `sys_oper_log` VALUES ('773', '二手交易管理', '2', 'com.ruoyi.manage.businfo.controller.TEsbusInfoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/businfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"state\":[\"\"],\"title\":[\"测试发布标题1\"],\"introduced\":[\"测试文字简介\"],\"presentedDept\":[\"114\"],\"presentedDate\":[\"2019-12-17\"],\"presentedMobile\":[\"444444\"]}', '0', null, '2019-12-19 10:49:40');
INSERT INTO `sys_oper_log` VALUES ('774', '设计师管理', '1', 'com.ruoyi.manage.zxdesigner.controller.ZxDesignerController.addSave()', '1', 'admin', null, '/gcxw/manage/zxdesigner/add', '127.0.0.1', '内网IP', '{\"headImg\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/027f29a8d13bae5733ad5c8d595cac69.jpg\"],\"name\":[\"设计1\"],\"zxCompanyId\":[\"1\"],\"workYear\":[\"5\"],\"sex\":[\"1\"],\"recReason\":[\"棒棒的\"],\"position\":[\"普通设计是\"],\"detail\":[\"非常厉害\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'designer_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.manage.zxdesigner.mapper.ZxDesignerMapper.insertZxDesigner-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_zx_designer          ( head_img,             name,             zx_company_id,             work_year,             sex,             rec_reason,             position,                          detail,                          create_time,                          update_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'designer_id\' doesn\'t have a default value\n; Field \'designer_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'designer_id\' doesn\'t have a default value', '2019-12-19 10:55:24');
INSERT INTO `sys_oper_log` VALUES ('775', '设计师管理', '1', 'com.ruoyi.manage.zxdesigner.controller.ZxDesignerController.addSave()', '1', 'admin', null, '/gcxw/manage/zxdesigner/add', '127.0.0.1', '内网IP', '{\"headImg\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/1554d5a57972e5bc94952bc7eac4f9dd.jpg\"],\"name\":[\"设计1\"],\"zxCompanyId\":[\"1\"],\"workYear\":[\"5\"],\"sex\":[\"1\"],\"recReason\":[\"棒棒的\"],\"position\":[\"设计总监\"],\"detail\":[\"人很合\"]}', '0', null, '2019-12-19 11:00:23');
INSERT INTO `sys_oper_log` VALUES ('776', '装修效果', '1', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/showhome/add', '127.0.0.1', '内网IP', '{\"title\":[\"ceshi\"],\"type\":[\"1\"],\"deptId\":[\"114\"],\"bud\":[\"11-1-111\"],\"area\":[\"11\"],\"doorType\":[\"11\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"detail\":[\"111111111111111111111111111111111\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/cd3678de3ea24555c9cf1f3a68d75edc.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/19/ca524d6cad696aadb95e01e468c71749.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/19/34c96158011d67afb9793276d0441a85.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/19/9ca838b04c4c98bd04c8f511c07730d8.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/19/4ca1b298f7d052a9c7acdab255aea1f8.jpg\"]}', '0', null, '2019-12-19 11:00:33');
INSERT INTO `sys_oper_log` VALUES ('777', '设计师管理', '2', 'com.ruoyi.manage.zxdesigner.controller.ZxDesignerController.editSave()', '1', 'admin', null, '/gcxw/manage/zxdesigner/edit', '127.0.0.1', '内网IP', '{\"designerId\":[\"2\"],\"headImg\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/25a3f720c539e9afec7e763b642e015d.jpg\"],\"name\":[\"测试名\"],\"zxCompanyId\":[\"1\"],\"workYear\":[\"5\"],\"sex\":[\"0\"],\"recReason\":[\"推荐\"],\"position\":[\"首席设计师\"],\"detail\":[\"ewer\"]}', '0', null, '2019-12-19 11:00:47');
INSERT INTO `sys_oper_log` VALUES ('778', '设计师管理', '2', 'com.ruoyi.manage.zxdesigner.controller.ZxDesignerController.editSave()', '1', 'admin', null, '/gcxw/manage/zxdesigner/edit', '127.0.0.1', '内网IP', '{\"designerId\":[\"1\"],\"headImg\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/b35d00e9f65cf4c0ba10f1c89d7816be.jpg\"],\"name\":[\"323\"],\"zxCompanyId\":[\"2\"],\"workYear\":[\"1\"],\"sex\":[\"1\"],\"recReason\":[\"强烈推荐\"],\"position\":[\"首席设计师\"],\"detail\":[\"2132\"]}', '0', null, '2019-12-19 11:00:56');
INSERT INTO `sys_oper_log` VALUES ('779', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', null, '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_material_store\"]}', '0', null, '2019-12-19 11:34:13');
INSERT INTO `sys_oper_log` VALUES ('780', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', null, '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"44\"],\"tableName\":[\"t_zx_material_store\"],\"tableComment\":[\"入住建材商\"],\"className\":[\"ZxMaterialStore\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"415\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"materialStoreId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"416\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"商家名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"storeName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"417\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"地址\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"address\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"418\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系人\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"lxrName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"419\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"联系电话\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"lxrPhone\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"420\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"主营范围\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"zyfw\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":', '0', null, '2019-12-19 11:36:00');
INSERT INTO `sys_oper_log` VALUES ('781', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', null, '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"44\"],\"tableName\":[\"t_zx_material_store\"],\"tableComment\":[\"入驻建材商\"],\"className\":[\"ZxMaterialStore\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"415\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"materialStoreId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"416\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"商家名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"storeName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"417\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"地址\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"address\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"418\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系人\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"lxrName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"419\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"联系电话\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"lxrPhone\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"420\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"主营范围\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"zyfw\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":', '0', null, '2019-12-19 11:36:13');
INSERT INTO `sys_oper_log` VALUES ('782', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', null, '/gcxw/tool/gen/genCode/t_zx_material_store', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-19 11:36:17');
INSERT INTO `sys_oper_log` VALUES ('783', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1169\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"建材商管理\"],\"url\":[\"/manage/materialstore\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:materialstore:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-19 11:38:39');
INSERT INTO `sys_oper_log` VALUES ('784', '建材商管理', '1', 'com.ruoyi.manage.materialstore.controller.ZxMaterialStoreController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/materialstore/add', '127.0.0.1', '内网IP', '{\"storeName\":[\"测试商家\"],\"address\":[\"地址1111\"],\"lxrName\":[\"联系人\"],\"lxrPhone\":[\"12456\"],\"zyfw\":[\"建材全部\"],\"detail\":[\"这家是黑店\"]}', '0', null, '2019-12-19 11:43:35');
INSERT INTO `sys_oper_log` VALUES ('785', '建材商管理', '2', 'com.ruoyi.manage.materialstore.controller.ZxMaterialStoreController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/materialstore/edit', '127.0.0.1', '内网IP', '{\"materialStoreId\":[\"1\"],\"storeName\":[\"测试商家\"],\"address\":[\"地址1111\"],\"lxrName\":[\"联系人\"],\"lxrPhone\":[\"12456\"],\"zyfw\":[\"建材全部\"],\"detail\":[\"这家不是黑店\"]}', '0', null, '2019-12-19 11:43:47');
INSERT INTO `sys_oper_log` VALUES ('786', '建材商管理', '1', 'com.ruoyi.manage.materialstore.controller.ZxMaterialStoreController.addSave()', '1', 'admin', null, '/gcxw/manage/materialstore/add', '127.0.0.1', '内网IP', '{\"storeName\":[\"测试商家2\"],\"address\":[\"朝阳路1号\"],\"lxrName\":[\"我自己\"],\"lxrPhone\":[\"45613\"],\"zyfw\":[\"板材\"],\"detail\":[\"10年老店\"]}', '0', null, '2019-12-19 11:45:21');
INSERT INTO `sys_oper_log` VALUES ('787', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannerimg/edit', '117.92.94.207', 'XX XX', '{\"zxBannerImgId\":[\"2\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/74097f5f862761679c4def4961fa819b.jpg\"],\"title\":[\"测试2\"],\"detail\":[\"3333\"]}', '0', null, '2019-12-19 11:48:17');
INSERT INTO `sys_oper_log` VALUES ('788', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannerimg/edit', '117.92.94.207', 'XX XX', '{\"zxBannerImgId\":[\"1\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/f5bfeee54d22b36e2324da10df40a8c6.jpg\"],\"title\":[\"测试12\"],\"detail\":[\"详情11112\"]}', '0', null, '2019-12-19 11:48:26');
INSERT INTO `sys_oper_log` VALUES ('789', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannervideo/edit', '117.92.94.207', '江苏 连云港', '{\"zxBannerVideoId\":[\"3\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/e26192d43cef71210ac24909a9267702.jpg\"],\"title\":[\"测2\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/5248ed855559cfd921799429a728c4af.mp4\"],\"detail\":[\"\"]}', '0', null, '2019-12-19 11:49:08');
INSERT INTO `sys_oper_log` VALUES ('790', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannervideo/edit', '117.92.94.207', '江苏 连云港', '{\"zxBannerVideoId\":[\"2\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/9eafce6b31f1a26af7123c30c90bdb7e.jpg\"],\"title\":[\"测\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/3a5fcdfc2176c2d305b8fcdc40c214bb.mp4\"],\"detail\":[\"\"]}', '0', null, '2019-12-19 11:49:16');
INSERT INTO `sys_oper_log` VALUES ('791', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannervideo/edit', '117.92.94.207', '江苏 连云港', '{\"zxBannerVideoId\":[\"1\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/0bfa0a2c04be7f96a69faae5d3ecb6e7.jpg\"],\"title\":[\"风水大师讲解\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/f326629c24b655ea95664b6fd9311d74.mp4\"],\"detail\":[\"\"]}', '0', null, '2019-12-19 11:49:20');
INSERT INTO `sys_oper_log` VALUES ('792', '二手交易管理', '2', 'com.ruoyi.manage.businfo.controller.TEsbusInfoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/businfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"state\":[\"2\"],\"title\":[\"测试发布标题12\"],\"introduced\":[\"测试文字简介2\"],\"presentedDept\":[\"小区3\"],\"presentedDate\":[\"2019-12-17\"],\"presentedMobile\":[\"444444\"]}', '0', null, '2019-12-19 13:41:27');
INSERT INTO `sys_oper_log` VALUES ('793', '二手交易管理', '2', 'com.ruoyi.manage.businfo.controller.TEsbusInfoController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/businfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"state\":[\"2\"],\"title\":[\"测试发布标题1\"],\"introduced\":[\"测试文字简介\"],\"presentedDept\":[\"小区3\"],\"presentedDate\":[\"2019-12-17\"],\"presentedMobile\":[\"444444\"]}', '0', null, '2019-12-19 13:48:41');
INSERT INTO `sys_oper_log` VALUES ('794', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_material\"]}', '0', null, '2019-12-19 13:56:16');
INSERT INTO `sys_oper_log` VALUES ('795', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"建材类型\"],\"dictType\":[\"t_material_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 14:02:12');
INSERT INTO `sys_oper_log` VALUES ('796', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"灯具\"],\"dictValue\":[\"1\"],\"dictType\":[\"t_material_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 14:02:34');
INSERT INTO `sys_oper_log` VALUES ('797', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"地板\"],\"dictValue\":[\"2\"],\"dictType\":[\"t_material_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 14:02:47');
INSERT INTO `sys_oper_log` VALUES ('798', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"墙纸\"],\"dictValue\":[\"3\"],\"dictType\":[\"t_material_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 14:03:03');
INSERT INTO `sys_oper_log` VALUES ('799', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"卫浴\"],\"dictValue\":[\"4\"],\"dictType\":[\"t_material_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 14:03:39');
INSERT INTO `sys_oper_log` VALUES ('800', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"窗帘\"],\"dictValue\":[\"5\"],\"dictType\":[\"t_material_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 14:03:47');
INSERT INTO `sys_oper_log` VALUES ('801', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"建材商品标签\"],\"dictType\":[\"t_material_label\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 14:05:10');
INSERT INTO `sys_oper_log` VALUES ('802', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"限时特惠\"],\"dictValue\":[\"1\"],\"dictType\":[\"t_material_label\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 14:05:30');
INSERT INTO `sys_oper_log` VALUES ('803', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"热卖\"],\"dictValue\":[\"2\"],\"dictType\":[\"t_material_label\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 14:05:53');
INSERT INTO `sys_oper_log` VALUES ('804', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"新品\"],\"dictValue\":[\"3\"],\"dictType\":[\"t_material_label\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-19 14:06:03');
INSERT INTO `sys_oper_log` VALUES ('805', '代码生成', '3', 'com.ruoyi.project.tool.gen.controller.GenController.remove()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"45\"]}', '0', null, '2019-12-19 14:12:56');
INSERT INTO `sys_oper_log` VALUES ('806', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_material\"]}', '0', null, '2019-12-19 14:12:59');
INSERT INTO `sys_oper_log` VALUES ('807', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"46\"],\"tableName\":[\"t_zx_material\"],\"tableComment\":[\"建材商品\"],\"className\":[\"ZxMaterial\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"439\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"materialId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[7].columnId\":[\"446\"],\"columns[7].sort\":[\"2\"],\"columns[7].columnComment\":[\"商家\"],\"columns[7].javaType\":[\"Long\"],\"columns[7].javaField\":[\"materialStoreId\"],\"columns[7].isInsert\":[\"1\"],\"columns[7].isEdit\":[\"1\"],\"columns[7].isList\":[\"1\"],\"columns[7].isQuery\":[\"1\"],\"columns[7].queryType\":[\"EQ\"],\"columns[7].htmlType\":[\"select\"],\"columns[7].dictType\":[\"\"],\"columns[1].columnId\":[\"440\"],\"columns[1].sort\":[\"3\"],\"columns[1].columnComment\":[\"标题\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"441\"],\"columns[2].sort\":[\"4\"],\"columns[2].columnComment\":[\"标题图片\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"imgUrl\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"442\"],\"columns[3].sort\":[\"5\"],\"columns[3].columnComment\":[\"建材类型\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"type\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"t_material_type\"],\"columns[4].columnId\":[\"443\"],\"columns[4].sort\":[\"6\"],\"columns[4].columnComment\":[\"标签\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"label\"],\"columns[4].isInsert\":[\"1\"],\"c', '0', null, '2019-12-19 14:17:56');
INSERT INTO `sys_oper_log` VALUES ('808', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_zx_material', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-19 14:18:01');
INSERT INTO `sys_oper_log` VALUES ('809', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', null, '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1174\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"建材商品管理\"],\"url\":[\"/manage/zxmaterial\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxmaterial:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-19 14:20:36');
INSERT INTO `sys_oper_log` VALUES ('810', '建材商品管理', '1', 'com.ruoyi.manage.zxmaterial.controller.ZxMaterialController.addSave()', '1', 'admin', null, '/gcxw/manage/zxmaterial/add', '127.0.0.1', '内网IP', '{\"title\":[\"大白兔板材\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/591f30bd59b90ad4877e1361058629c4.jpg\"],\"type\":[\"1\"],\"label\":[\"1\"],\"price\":[\"12\"],\"unit\":[\"箱\"],\"materialStoreId\":[\"2\"],\"detail\":[\"号\"]}', '0', null, '2019-12-19 14:44:53');
INSERT INTO `sys_oper_log` VALUES ('811', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_birth_prize\"]}', '0', null, '2019-12-19 14:59:17');
INSERT INTO `sys_oper_log` VALUES ('812', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"47\"],\"tableName\":[\"t_xq_birth_prize\"],\"tableComment\":[\"生日奖品管理\"],\"className\":[\"TXqBirthPrize\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"453\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"454\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"商品名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"title\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"455\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"简介\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"introduced\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"456\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"content\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"457\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"库存\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"num\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"458\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"状态：0 录入，1上架，2下架\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"state\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].', '0', null, '2019-12-19 15:01:34');
INSERT INTO `sys_oper_log` VALUES ('813', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_birth_prize', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-19 15:02:16');
INSERT INTO `sys_oper_log` VALUES ('814', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1179\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"生日奖品管理\"],\"url\":[\"/manage/prize\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:prize:view\"],\"orderNum\":[\"13\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-19 15:07:23');
INSERT INTO `sys_oper_log` VALUES ('815', '建材商品管理', '1', 'com.ruoyi.manage.zxmaterial.controller.ZxMaterialController.addSave()', '1', 'admin', null, '/gcxw/manage/zxmaterial/add', '127.0.0.1', '内网IP', '{\"title\":[\"绿洲地板\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/fbc995c2c5b6e4ebbde687169dfa7003.jpg\"],\"type\":[\"2\"],\"label\":[\"2\"],\"price\":[\"15\"],\"unit\":[\"块\"],\"materialStoreId\":[\"1\"],\"detail\":[\"测试内容\"]}', '0', null, '2019-12-19 15:13:19');
INSERT INTO `sys_oper_log` VALUES ('816', '建材商品管理', '2', 'com.ruoyi.manage.zxmaterial.controller.ZxMaterialController.editSave()', '1', 'admin', null, '/gcxw/manage/zxmaterial/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"2\"],\"title\":[\"绿洲地板\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/fbc995c2c5b6e4ebbde687169dfa7003.jpg\"],\"type\":[\"2\"],\"label\":[\"2\"],\"price\":[\"19.5\"],\"unit\":[\"块\"],\"materialStoreId\":[\"2\"],\"detail\":[\"测试内容2\"]}', '0', null, '2019-12-19 15:13:51');
INSERT INTO `sys_oper_log` VALUES ('817', '建材商品管理', '2', 'com.ruoyi.manage.zxmaterial.controller.ZxMaterialController.editSave()', '1', 'admin', null, '/gcxw/manage/zxmaterial/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"2\"],\"title\":[\"绿洲地板\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/fbc995c2c5b6e4ebbde687169dfa7003.jpg\"],\"type\":[\"2\"],\"label\":[\"2\"],\"price\":[\"19.50\"],\"unit\":[\"块\"],\"materialStoreId\":[\"1\"],\"detail\":[\"测试内容2\"]}', '0', null, '2019-12-19 15:14:48');
INSERT INTO `sys_oper_log` VALUES ('818', '建材商品管理', '2', 'com.ruoyi.manage.zxmaterial.controller.ZxMaterialController.editSave()', '1', 'admin', null, '/gcxw/manage/zxmaterial/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"1\"],\"title\":[\"大白兔\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/591f30bd59b90ad4877e1361058629c4.jpg\"],\"type\":[\"1\"],\"label\":[\"1\"],\"price\":[\"0.12\"],\"unit\":[\"箱\"],\"materialStoreId\":[\"2\"],\"detail\":[\"号\"]}', '0', null, '2019-12-19 15:15:01');
INSERT INTO `sys_oper_log` VALUES ('819', '生日奖品管理', '1', 'com.ruoyi.manage.prize.controller.TXqBirthPrizeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/manage/prize/add', '127.0.0.1', '内网IP', '{\"title\":[\"ceshimingcheng\"],\"introduced\":[\"ceshijianjie\"],\"content\":[\"<p><img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" data-filename=\\\"/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" style=\\\"width: 640px;\\\"><br></p>\"],\"num\":[\"111\"],\"state\":[\"0\"]}', '0', null, '2019-12-19 15:21:56');
INSERT INTO `sys_oper_log` VALUES ('820', '生日奖品管理', '2', 'com.ruoyi.manage.prize.controller.TXqBirthPrizeController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/prize/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"state\":[\"1\"],\"title\":[\"ceshimingcheng\"],\"introduced\":[\"ceshijianjie\"],\"content\":[\"<p><img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" data-filename=\\\"/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" style=\\\"width: 640px;\\\"><br></p>\"],\"num\":[\"111\"]}', '0', null, '2019-12-19 15:31:04');
INSERT INTO `sys_oper_log` VALUES ('821', '生日奖品管理', '2', 'com.ruoyi.manage.prize.controller.TXqBirthPrizeController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/prize/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"state\":[\"2\"],\"title\":[\"ceshimingcheng\"],\"introduced\":[\"ceshijianjie\"],\"content\":[\"<p><img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" data-filename=\\\"/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" style=\\\"width: 640px;\\\"><br></p>\"],\"num\":[\"111\"]}', '0', null, '2019-12-19 15:32:22');
INSERT INTO `sys_oper_log` VALUES ('822', '生日奖品管理', '2', 'com.ruoyi.manage.prize.controller.TXqBirthPrizeController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/prize/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"state\":[\"1\"],\"title\":[\"ceshimingcheng\"],\"introduced\":[\"ceshijianjie\"],\"content\":[\"<p><img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" data-filename=\\\"/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" style=\\\"width: 640px;\\\"><br></p>\"],\"num\":[\"111\"]}', '0', null, '2019-12-19 16:42:25');
INSERT INTO `sys_oper_log` VALUES ('823', '生日奖品管理', '2', 'com.ruoyi.manage.prize.controller.TXqBirthPrizeController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/prize/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"state\":[\"2\"],\"title\":[\"ceshimingcheng\"],\"introduced\":[\"ceshijianjie\"],\"content\":[\"<p><img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" data-filename=\\\"/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" style=\\\"width: 640px;\\\"><br></p>\"],\"num\":[\"111\"]}', '0', null, '2019-12-19 16:42:46');
INSERT INTO `sys_oper_log` VALUES ('824', '生日奖品管理', '2', 'com.ruoyi.manage.prize.controller.TXqBirthPrizeController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/prize/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"state\":[\"1\"],\"title\":[\"ceshimingcheng\"],\"introduced\":[\"ceshijianjie\"],\"content\":[\"<p><img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" data-filename=\\\"/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" style=\\\"width: 640px;\\\"><br></p>\"],\"num\":[\"111\"]}', '0', null, '2019-12-19 16:42:58');
INSERT INTO `sys_oper_log` VALUES ('825', '生日奖品管理', '2', 'com.ruoyi.manage.prize.controller.TXqBirthPrizeController.editSave()', '1', 'admin', '港城小窝', '/gcxw/manage/prize/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"state\":[\"2\"],\"title\":[\"ceshimingcheng\"],\"introduced\":[\"ceshijianjie\"],\"content\":[\"<p><img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" data-filename=\\\"/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\\\" style=\\\"width: 640px;\\\"><br></p>\"],\"num\":[\"111\"]}', '0', null, '2019-12-19 16:43:03');
INSERT INTO `sys_oper_log` VALUES ('826', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_xq_push_fee\"]}', '0', null, '2019-12-20 09:03:25');
INSERT INTO `sys_oper_log` VALUES ('827', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"48\"],\"tableName\":[\"t_xq_push_fee\"],\"tableComment\":[\"业主缴费管理\"],\"className\":[\"TXqPushFee\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"463\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"464\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"类型:1 物业费，2 停车费\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"type\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"465\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"费用（分）\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"fee\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"466\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"费用指向ID\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"feeId\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"467\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"小区ID\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"deptId\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"468\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"楼栋ＩＤ\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"buildNum\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType', '0', null, '2019-12-20 09:06:34');
INSERT INTO `sys_oper_log` VALUES ('828', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_xq_push_fee', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-20 09:06:37');
INSERT INTO `sys_oper_log` VALUES ('829', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1184', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-20 09:11:54');
INSERT INTO `sys_oper_log` VALUES ('830', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1185', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-20 09:11:59');
INSERT INTO `sys_oper_log` VALUES ('831', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1186', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-20 09:12:06');
INSERT INTO `sys_oper_log` VALUES ('832', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1187', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-20 09:12:12');
INSERT INTO `sys_oper_log` VALUES ('833', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1188', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-20 09:12:19');
INSERT INTO `sys_oper_log` VALUES ('834', '菜单管理', '3', 'com.ruoyi.project.system.menu.controller.MenuController.remove()', '1', 'admin', '港城小窝', '/gcxw/system/menu/remove/1184', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-20 09:12:25');
INSERT INTO `sys_oper_log` VALUES ('835', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1189\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"业主缴费\"],\"url\":[\"/manage/fee\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:fee:view\"],\"orderNum\":[\"14\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-20 09:12:50');
INSERT INTO `sys_oper_log` VALUES ('836', '角色管理', '2', 'com.ruoyi.project.system.role.controller.RoleController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"7\"],\"roleName\":[\"小区管理员\"],\"roleKey\":[\"xqadmin\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1074,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1123,1124,1125,1126,1127,1103,1104,1105,1106,1107,1113,1114,1115,1116,1117,1128,1129,1130,1131,1132,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1164,1165,1166,1167,1168,1179,1180,1181,1182,1183,1189,1190,1191,1192,1193\"]}', '0', null, '2019-12-20 09:56:11');
INSERT INTO `sys_oper_log` VALUES ('837', '装修公司管理', '2', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.editSave()', '1', 'admin', null, '/gcxw/manage/zxcompany/edit', '127.0.0.1', '内网IP', '{\"zxCompanyId\":[\"1\"],\"companyName\":[\"装修公司12\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/20/3e7e068f643287327a0f592fa05418f3.jpg\"],\"address\":[\"测试公司地址2\"],\"recNum\":[\"4\"],\"detail\":[\"该公司贼厉害2\"]}', '0', null, '2019-12-20 14:33:38');
INSERT INTO `sys_oper_log` VALUES ('838', '装修公司管理', '2', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.editSave()', '1', 'admin', null, '/gcxw/manage/zxcompany/edit', '127.0.0.1', '内网IP', '{\"zxCompanyId\":[\"2\"],\"companyName\":[\"装修工233\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/20/a7e86907758e6542ac388c8f87f237a7.jpg\"],\"address\":[\"朝阳路100号\"],\"recNum\":[\"5\"],\"detail\":[\"666\"]}', '0', null, '2019-12-20 14:33:42');
INSERT INTO `sys_oper_log` VALUES ('839', '装修公司管理', '1', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.addSave()', '1', 'admin', null, '/gcxw/manage/zxcompany/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"公司3\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/20/d7b631ef512ed131e8b0c63ccf6f9078.jpg\"],\"address\":[\"呵呵的\"],\"recNum\":[\"1\"],\"detail\":[\"垃圾公司\"]}', '0', null, '2019-12-20 14:34:13');
INSERT INTO `sys_oper_log` VALUES ('840', '装修公司管理', '1', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.addSave()', '1', 'admin', null, '/gcxw/manage/zxcompany/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"公司4\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/20/f8691fabec6e1bde68ec049eb5cf5a2d.jpg\"],\"address\":[\"上海路\"],\"recNum\":[\"3\"],\"detail\":[\"一般般的小公司\"]}', '0', null, '2019-12-20 14:34:38');
INSERT INTO `sys_oper_log` VALUES ('841', '装修公司管理', '1', 'com.ruoyi.manage.zxcompany.controller.ZxCompanyController.addSave()', '1', 'admin', null, '/gcxw/manage/zxcompany/add', '127.0.0.1', '内网IP', '{\"companyName\":[\"菜鸡有限公司\"],\"logo\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/20/404312bf9eb363f9b4f0ed9a48988b6b.jpg\"],\"address\":[\"北京路\"],\"recNum\":[\"5\"],\"detail\":[\"菜鸡\"]}', '0', null, '2019-12-20 14:35:05');
INSERT INTO `sys_oper_log` VALUES ('842', '建材商品管理', '1', 'com.ruoyi.manage.zxmaterial.controller.ZxMaterialController.addSave()', '1', 'admin', null, '/gcxw/manage/zxmaterial/add', '127.0.0.1', '内网IP', '{\"title\":[\"商品3\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/21/fe24a5078c616212b5d4502d8573ad58.jpg\"],\"type\":[\"1\"],\"label\":[\"1\"],\"price\":[\"150\"],\"unit\":[\"平米\"],\"materialStoreId\":[\"2\"],\"detail\":[\"好<img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/21/fe6030883b6794260ada60b78938840f.jpg\\\" alt=\\\"\\\" />\"],\"detailImgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/21/b73efc295e75c05af546af04755d4a89.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/92a3fe05c595bd9afd8b7785967b43b2.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/7cd0751da73f40fb2be775d55e98d686.jpg\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'material_img_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.manage.zxmaterial.mapper.ZxMaterialMapper.insertZxMaterialImgs-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_zx_material_img       (material_id, detail_img_url)      values       (?, ?)\r\n### Cause: java.sql.SQLException: Field \'material_img_id\' doesn\'t have a default value\n; Field \'material_img_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'material_img_id\' doesn\'t have a default value', '2019-12-21 11:17:43');
INSERT INTO `sys_oper_log` VALUES ('843', '建材商品管理', '1', 'com.ruoyi.manage.zxmaterial.controller.ZxMaterialController.addSave()', '1', 'admin', null, '/gcxw/manage/zxmaterial/add', '127.0.0.1', '内网IP', '{\"title\":[\"商品3\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/21/fe24a5078c616212b5d4502d8573ad58.jpg\"],\"type\":[\"1\"],\"label\":[\"1\"],\"price\":[\"150\"],\"unit\":[\"平米\"],\"materialStoreId\":[\"2\"],\"detail\":[\"好<img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/21/fe6030883b6794260ada60b78938840f.jpg\\\" alt=\\\"\\\" />\"],\"detailImgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/21/b73efc295e75c05af546af04755d4a89.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/92a3fe05c595bd9afd8b7785967b43b2.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/7cd0751da73f40fb2be775d55e98d686.jpg\"]}', '0', null, '2019-12-21 11:17:58');
INSERT INTO `sys_oper_log` VALUES ('844', '建材商品管理', '2', 'com.ruoyi.manage.zxmaterial.controller.ZxMaterialController.editSave()', '1', 'admin', null, '/gcxw/manage/zxmaterial/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"4\"],\"title\":[\"商品3\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/21/fe24a5078c616212b5d4502d8573ad58.jpg\"],\"type\":[\"1\"],\"label\":[\"1\"],\"price\":[\"150.00\"],\"unit\":[\"平米\"],\"materialStoreId\":[\"2\"],\"detail\":[\"好<img src=\\\"http://localhost:8081/gcxw/profile/upload/2019/12/21/fe6030883b6794260ada60b78938840f.jpg\\\" alt=\\\"\\\" />\"],\"detailImgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/21/b73efc295e75c05af546af04755d4a89.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/7cd0751da73f40fb2be775d55e98d686.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/113eb1141d35a989be50cbb0224403ea.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/9931261f0a20c63dccbf54ce1d79e91e.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/59b036df0e79a74beefa80838d606a6b.jpg\"]}', '0', null, '2019-12-21 11:29:57');
INSERT INTO `sys_oper_log` VALUES ('845', '建材商品管理', '2', 'com.ruoyi.manage.zxmaterial.controller.ZxMaterialController.editSave()', '1', 'admin', null, '/gcxw/manage/zxmaterial/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"1\"],\"title\":[\"大白兔\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/591f30bd59b90ad4877e1361058629c4.jpg\"],\"type\":[\"1\"],\"label\":[\"1\"],\"price\":[\"0.12\"],\"unit\":[\"箱\"],\"materialStoreId\":[\"2\"],\"detail\":[\"号\"],\"detailImgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/21/cfad531e02ab8716d33eb11ed1dce149.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/ca23546049429c1d5f8ef5af424d4411.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/4e30bc82a2757c86e5e3737c17d9a470.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/07a2604a630f1f9e8864bf42e779a619.jpg\"]}', '0', null, '2019-12-21 11:33:13');
INSERT INTO `sys_oper_log` VALUES ('846', '建材商品管理', '2', 'com.ruoyi.manage.zxmaterial.controller.ZxMaterialController.editSave()', '1', 'admin', null, '/gcxw/manage/zxmaterial/edit', '127.0.0.1', '内网IP', '{\"materialId\":[\"1\"],\"title\":[\"大白兔\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/21/a5fe6a14dcdac4aae50a57deb9865345.jpg\"],\"type\":[\"1\"],\"label\":[\"1\"],\"price\":[\"0.12\"],\"unit\":[\"箱\"],\"materialStoreId\":[\"2\"],\"detail\":[\"号\"],\"detailImgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/21/cfad531e02ab8716d33eb11ed1dce149.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/ca23546049429c1d5f8ef5af424d4411.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/4e30bc82a2757c86e5e3737c17d9a470.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/21/07a2604a630f1f9e8864bf42e779a619.jpg\"]}', '0', null, '2019-12-21 11:33:21');
INSERT INTO `sys_oper_log` VALUES ('847', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', null, '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_forum\"]}', '0', null, '2019-12-21 12:06:48');
INSERT INTO `sys_oper_log` VALUES ('848', '代码生成', '3', 'com.ruoyi.project.tool.gen.controller.GenController.remove()', '1', 'admin', null, '/gcxw/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"49\"]}', '0', null, '2019-12-21 12:09:54');
INSERT INTO `sys_oper_log` VALUES ('849', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', null, '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_forum\"]}', '0', null, '2019-12-21 12:10:03');
INSERT INTO `sys_oper_log` VALUES ('850', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', null, '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"50\"],\"tableName\":[\"t_zx_forum\"],\"tableComment\":[\"装修日志\"],\"className\":[\"ZxForum\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"484\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"forumId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"485\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"null\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"openid\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"486\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"头像\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"headImg\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"487\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"昵称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"nickname\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"488\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"标题\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"title\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"489\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"内容\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"content\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"tex', '0', null, '2019-12-21 12:11:35');
INSERT INTO `sys_oper_log` VALUES ('851', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', null, '/gcxw/tool/gen/genCode/t_zx_forum', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-21 12:11:38');
INSERT INTO `sys_oper_log` VALUES ('852', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', null, '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1194\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"装修日志管理\"],\"url\":[\"/manage/zxforum\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxforum:view\"],\"orderNum\":[\"8\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-21 12:14:07');
INSERT INTO `sys_oper_log` VALUES ('853', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', null, '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"装修日志审核\"],\"dictType\":[\"t_zx_forum_status\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-21 12:48:31');
INSERT INTO `sys_oper_log` VALUES ('854', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', null, '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"审核通过\"],\"dictValue\":[\"1\"],\"dictType\":[\"t_zx_forum_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-21 12:48:54');
INSERT INTO `sys_oper_log` VALUES ('855', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', null, '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"待审核\"],\"dictValue\":[\"0\"],\"dictType\":[\"t_zx_forum_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-21 12:49:05');
INSERT INTO `sys_oper_log` VALUES ('856', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', null, '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"驳回\"],\"dictValue\":[\"2\"],\"dictType\":[\"t_zx_forum_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-21 12:49:36');
INSERT INTO `sys_oper_log` VALUES ('857', '装修日志管理', '2', 'com.ruoyi.manage.zxforum.controller.ZxForumController.editSave()', '1', 'admin', null, '/gcxw/manage/zxforum/edit', '127.0.0.1', '内网IP', '{\"forumId\":[\"1\"],\"status\":[\"1\"],\"remark\":[\"123\"]}', '0', null, '2019-12-21 13:38:35');
INSERT INTO `sys_oper_log` VALUES ('858', '装修日志管理', '2', 'com.ruoyi.manage.zxforum.controller.ZxForumController.editSave()', '1', 'admin', null, '/gcxw/manage/zxforum/edit', '127.0.0.1', '内网IP', '{\"forumId\":[\"1\"],\"status\":[\"2\"],\"remark\":[\"111\"]}', '0', null, '2019-12-21 13:38:44');
INSERT INTO `sys_oper_log` VALUES ('859', '批量通过装修日志', '3', 'com.ruoyi.manage.zxforum.controller.ZxForumController.dealAll()', '1', 'admin', null, '/gcxw/manage/zxforum/dealAll', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-12-21 13:45:33');
INSERT INTO `sys_oper_log` VALUES ('860', '批量通过装修日志', '3', 'com.ruoyi.manage.zxforum.controller.ZxForumController.dealAll()', '1', 'admin', null, '/gcxw/manage/zxforum/dealAll', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-12-21 13:46:51');
INSERT INTO `sys_oper_log` VALUES ('861', '装修日志管理', '3', 'com.ruoyi.manage.zxforum.controller.ZxForumController.remove()', '1', 'admin', null, '/gcxw/manage/zxforum/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-12-21 13:58:49');
INSERT INTO `sys_oper_log` VALUES ('862', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', null, '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_forum_reply\"]}', '0', null, '2019-12-21 14:03:59');
INSERT INTO `sys_oper_log` VALUES ('863', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', null, '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"51\"],\"tableName\":[\"t_forum_reply\"],\"tableComment\":[\"装修日志回复\"],\"className\":[\"ForumReply\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"492\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"forumReplyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"493\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"装修日志ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"forumId\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"494\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"null\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"replyOpenid\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"495\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"头像\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"replyHeadImg\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"496\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"昵称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"replyNickname\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"497\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"回复内容\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"replyContent\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"LIKE\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"498\"],\"colu', '0', null, '2019-12-21 14:06:02');
INSERT INTO `sys_oper_log` VALUES ('864', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', null, '/gcxw/tool/gen/genCode/t_forum_reply', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-21 14:06:05');
INSERT INTO `sys_oper_log` VALUES ('865', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', null, '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1199\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"评论管理\"],\"url\":[\"/manage/zxforumreply\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxforumreply:view\"],\"orderNum\":[\"9\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-12-21 14:09:47');
INSERT INTO `sys_oper_log` VALUES ('866', '评论管理', '3', 'com.ruoyi.manage.zxforumreply.controller.ForumReplyController.remove()', '1', 'admin', null, '/gcxw/manage/zxforumreply/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2019-12-21 15:00:04');
INSERT INTO `sys_oper_log` VALUES ('867', '装修效果', '1', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.addSave()', '1', 'admin', null, '/gcxw/manage/showhome/add', '127.0.0.1', '内网IP', '{\"title\":[\"d123\"],\"type\":[\"1\"],\"deptId\":[\"114\"],\"bud\":[\"11-1-111\"],\"area\":[\"11\"],\"doorType\":[\"11\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"detail\":[\"qwqw\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/23/4fa2b566871b80ea2c6f56acb2a477e3.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/23/b2b48389c960c4bd5e5b6c0501eceb3c.jpg\"]}', '0', null, '2019-12-23 16:09:01');
INSERT INTO `sys_oper_log` VALUES ('868', '装修效果', '2', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.editSave()', '1', 'admin', null, '/gcxw/manage/showhome/edit', '127.0.0.1', '内网IP', '{\"showHomeId\":[\"5\"],\"title\":[\"d123\"],\"type\":[\"1\"],\"deptId\":[\"114\"],\"bud\":[\"11-1-111\"],\"area\":[\"11\"],\"doorType\":[\"11\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"detail\":[\"qwqw\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/23/73dccef73df03b2e3107f829514d1628.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/23/1c6ddccab8698065fd52c551ab1cfd55.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/23/6c03af58c4dc4df60aec3d66f88ba106.jpg\"]}', '0', null, '2019-12-23 16:56:41');
INSERT INTO `sys_oper_log` VALUES ('869', '字典数据', '2', 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', '1', 'admin', null, '/gcxw/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"33\"],\"dictLabel\":[\"现代\"],\"dictValue\":[\"2\"],\"dictType\":[\"t_zx_showhome_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-12-24 10:06:46');
INSERT INTO `sys_oper_log` VALUES ('870', '装修效果', '2', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.editSave()', '1', 'admin', null, '/gcxw/manage/showhome/edit', '127.0.0.1', '内网IP', '{\"showHomeId\":[\"4\"],\"title\":[\"ceshi\"],\"type\":[\"2\"],\"deptId\":[\"114\"],\"bud\":[\"11-1-111\"],\"area\":[\"11\"],\"doorType\":[\"11\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"detail\":[\"111111111111111111111111111111111\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/19/cd3678de3ea24555c9cf1f3a68d75edc.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/19/ca524d6cad696aadb95e01e468c71749.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/19/34c96158011d67afb9793276d0441a85.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/19/9ca838b04c4c98bd04c8f511c07730d8.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/19/4ca1b298f7d052a9c7acdab255aea1f8.jpg\"]}', '0', null, '2019-12-24 10:37:48');
INSERT INTO `sys_oper_log` VALUES ('871', '装修效果', '2', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.editSave()', '1', 'admin', null, '/gcxw/manage/showhome/edit', '127.0.0.1', '内网IP', '{\"showHomeId\":[\"5\"],\"title\":[\"d123\"],\"type\":[\"3\"],\"deptId\":[\"114\"],\"bud\":[\"11-1-111\"],\"area\":[\"11\"],\"doorType\":[\"11\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"111\"],\"detail\":[\"qwqw\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/23/73dccef73df03b2e3107f829514d1628.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/23/1c6ddccab8698065fd52c551ab1cfd55.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/23/6c03af58c4dc4df60aec3d66f88ba106.jpg\"]}', '0', null, '2019-12-24 10:38:00');
INSERT INTO `sys_oper_log` VALUES ('872', '装修效果', '1', 'com.ruoyi.manage.showhome.controller.ZxShowHomeController.addSave()', '1', 'admin', null, '/gcxw/manage/showhome/add', '127.0.0.1', '内网IP', '{\"title\":[\"测试装修\"],\"type\":[\"1\"],\"deptId\":[\"114\"],\"bud\":[\"11-1-1111\"],\"area\":[\"4848cm²\"],\"doorType\":[\"111111111111111111111111111111\"],\"buildNum\":[\"11\"],\"unitNum\":[\"1\"],\"doorNum\":[\"1111\"],\"detail\":[\"11114444444\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/24/2be0be9a27e5ab3e37ef267ea8d59906.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/24/d1effb9d2ce8169133d64673fa0737f9.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/24/a405e6ed983664be9d99a81a96c51932.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/24/66049fd43eaa4b9b299833c4a6257795.jpg\",\"http://localhost:8081/gcxw/profile/upload/2019/12/24/eb461fe79e47f1b5f6d8132eb88489cb.jpg\"]}', '0', null, '2019-12-24 11:01:27');
INSERT INTO `sys_oper_log` VALUES ('873', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', null, '/gcxw/manage/zxbannervideo/edit', '127.0.0.1', '内网IP', '{\"zxBannerVideoId\":[\"2\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/9eafce6b31f1a26af7123c30c90bdb7e.jpg\"],\"title\":[\"测\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/3a5fcdfc2176c2d305b8fcdc40c214bb.mp4\"],\"detail\":[\"驱蚊器翁\"]}', '0', null, '2019-12-24 11:47:48');
INSERT INTO `sys_oper_log` VALUES ('874', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', null, '/gcxw/manage/zxbannervideo/edit', '127.0.0.1', '内网IP', '{\"zxBannerVideoId\":[\"1\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/0bfa0a2c04be7f96a69faae5d3ecb6e7.jpg\"],\"title\":[\"风水大师讲解\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/f326629c24b655ea95664b6fd9311d74.mp4\"],\"detail\":[\"驱蚊器翁\"]}', '0', null, '2019-12-24 11:47:52');
INSERT INTO `sys_oper_log` VALUES ('875', '装修首页视频管理', '2', 'com.ruoyi.manage.zxbannervideo.controller.ZxBannerVideoController.editSave()', '1', 'admin', null, '/gcxw/manage/zxbannervideo/edit', '127.0.0.1', '内网IP', '{\"zxBannerVideoId\":[\"3\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/e26192d43cef71210ac24909a9267702.jpg\"],\"title\":[\"测2\"],\"videoTime\":[\"15\"],\"videoUrl\":[\"http://localhost:8081/gcxw/profile/upload/2019/12/05/5248ed855559cfd921799429a728c4af.mp4\"],\"detail\":[\"11111\"]}', '0', null, '2019-12-24 11:48:03');
INSERT INTO `sys_oper_log` VALUES ('876', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_designer_case\"]}', '0', null, '2019-12-31 11:47:34');
INSERT INTO `sys_oper_log` VALUES ('877', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"52\"],\"tableName\":[\"t_zx_designer_case\"],\"tableComment\":[\"装修案例\"],\"className\":[\"ZxDesignerCase\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"499\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"designerCaseId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"500\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"装修公司\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"companyId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"501\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"设计师\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"designerId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"502\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"标题\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"title\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"503\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"介绍\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"content\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"504\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"附图\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"imgUrls\"],\"columns[5].isInsert\":[\"1\"]', '0', null, '2019-12-31 11:50:27');
INSERT INTO `sys_oper_log` VALUES ('878', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_zx_designer_case', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-31 11:50:51');
INSERT INTO `sys_oper_log` VALUES ('879', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', null, '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"52\"],\"tableName\":[\"t_zx_designer_case\"],\"tableComment\":[\"装修案例\"],\"className\":[\"ZxDesignerCase\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"499\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"designerCaseId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"500\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"装修公司\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"companyId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"501\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"设计师\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"designerId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"502\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"标题\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"title\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"503\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"介绍\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"content\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"504\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"附图\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"imgUrls\"],\"columns[5].isInsert\":[\"1\"]', '0', null, '2019-12-31 11:52:34');
INSERT INTO `sys_oper_log` VALUES ('880', '代码生成', '3', 'com.ruoyi.project.tool.gen.controller.GenController.remove()', '1', 'admin', null, '/gcxw/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"52\"]}', '0', null, '2019-12-31 12:01:43');
INSERT INTO `sys_oper_log` VALUES ('881', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', null, '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_case\"]}', '0', null, '2019-12-31 12:01:47');
INSERT INTO `sys_oper_log` VALUES ('882', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', null, '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"53\"],\"tableName\":[\"t_zx_case\"],\"tableComment\":[\"装修案例\"],\"className\":[\"ZxCase\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"509\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"caseId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"510\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"装修公司\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"companyId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"511\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"设计师\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"designerId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"512\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"标题\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"title\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"513\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"介绍\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"content\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"514\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"附图\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"imgUrls\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"', '0', null, '2019-12-31 12:02:38');
INSERT INTO `sys_oper_log` VALUES ('883', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', null, '/gcxw/tool/gen/genCode/t_zx_case', '127.0.0.1', '内网IP', '{}', '0', null, '2019-12-31 12:02:42');
INSERT INTO `sys_oper_log` VALUES ('884', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '港城小窝', '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1204\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"装修案例\"],\"url\":[\"/manage/zxcase\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxcase:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2020-01-02 09:20:47');
INSERT INTO `sys_oper_log` VALUES ('885', '装修案例', '1', 'com.ruoyi.manage.zxcase.controller.ZxCaseController.addSave()', '1', 'admin', null, '/gcxw/manage/zxcase/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"1\"],\"designerId\":[\"3\"],\"title\":[\"测试案例1\"],\"content\":[\"测1\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/f06b83a9c855de83fd152e450c81da65.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/54ac3907800822cae3cb91a8e949bf31.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/bf70f0f76317700f5ffbf5a43d51d629.jpg\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/f06b83a9c855de83fd152e450c81da65.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/54ac3907800822cae3cb91a8e949bf31.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/bf70f0f76317700f5ffbf5a43d51d629.jpg\"]}', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'img_urls\' at row 1\r\n### The error may involve com.ruoyi.manage.zxcase.mapper.ZxCaseMapper.insertZxCase-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_zx_case          ( company_id,             designer_id,             title,             content,             img_urls,             create_time,                          update_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'img_urls\' at row 1\n; Data truncation: Data too long for column \'img_urls\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'img_urls\' at row 1', '2020-01-02 10:41:45');
INSERT INTO `sys_oper_log` VALUES ('886', '装修案例', '1', 'com.ruoyi.manage.zxcase.controller.ZxCaseController.addSave()', '1', 'admin', null, '/gcxw/manage/zxcase/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"1\"],\"designerId\":[\"3\"],\"title\":[\"测试案例1\"],\"content\":[\"测1\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/f06b83a9c855de83fd152e450c81da65.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/54ac3907800822cae3cb91a8e949bf31.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/bf70f0f76317700f5ffbf5a43d51d629.jpg\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/f06b83a9c855de83fd152e450c81da65.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/54ac3907800822cae3cb91a8e949bf31.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/bf70f0f76317700f5ffbf5a43d51d629.jpg\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'case_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.manage.zxcase.mapper.ZxCaseMapper.insertZxCase-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_zx_case          ( company_id,             designer_id,             title,             content,             img_urls,             create_time,                          update_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'case_id\' doesn\'t have a default value\n; Field \'case_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'case_id\' doesn\'t have a default value', '2020-01-02 10:43:23');
INSERT INTO `sys_oper_log` VALUES ('887', '装修案例', '1', 'com.ruoyi.manage.zxcase.controller.ZxCaseController.addSave()', '1', 'admin', null, '/gcxw/manage/zxcase/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"1\"],\"designerId\":[\"3\"],\"title\":[\"测试案例1\"],\"content\":[\"测1\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/f06b83a9c855de83fd152e450c81da65.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/54ac3907800822cae3cb91a8e949bf31.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/bf70f0f76317700f5ffbf5a43d51d629.jpg\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/f06b83a9c855de83fd152e450c81da65.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/54ac3907800822cae3cb91a8e949bf31.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/bf70f0f76317700f5ffbf5a43d51d629.jpg\"]}', '0', null, '2020-01-02 10:43:34');
INSERT INTO `sys_oper_log` VALUES ('888', '装修案例', '1', 'com.ruoyi.manage.zxcase.controller.ZxCaseController.addSave()', '1', 'admin', null, '/gcxw/manage/zxcase/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"1\"],\"designerId\":[\"2\"],\"title\":[\"测试案例2\"],\"content\":[\"12恶趣味群\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/10400984f56d913e49c3628197495e3c.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/6262c3c599c8da8510a9d05591581a0f.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/ed331cbc1a9e74e35af038559fde1ae5.jpg\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/10400984f56d913e49c3628197495e3c.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/6262c3c599c8da8510a9d05591581a0f.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/ed331cbc1a9e74e35af038559fde1ae5.jpg\"]}', '0', null, '2020-01-02 10:46:19');
INSERT INTO `sys_oper_log` VALUES ('889', '装修案例', '1', 'com.ruoyi.manage.zxcase.controller.ZxCaseController.addSave()', '1', 'admin', null, '/gcxw/manage/zxcase/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"1\"],\"designerId\":[\"3\"],\"title\":[\"擦擦擦\"],\"content\":[\"222\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/7f0f46ec1b780dd0686197c021fe582d.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/518b6a29a5a266b572d0f5f8d3167c1c.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/116f0266fa582f7f16b7b20ae9021575.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/ebb06ac478dcbd4b97489ce1a6d078fe.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/360eae570b0784b783e0f489960ed20a.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/3cb58d81aabfa0dac6a98bbfc4aee8d2.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/33a95eeeafe29c592e4df6d63dc6fdcb.jpg\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/7f0f46ec1b780dd0686197c021fe582d.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/518b6a29a5a266b572d0f5f8d3167c1c.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/116f0266fa582f7f16b7b20ae9021575.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/ebb06ac478dcbd4b97489ce1a6d078fe.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/360eae570b0784b783e0f489960ed20a.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/3cb58d81aabfa0dac6a98bbfc4aee8d2.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/33a95eeeafe29c592e4df6d63dc6fdcb.jpg\"]}', '0', null, '2020-01-02 11:13:08');
INSERT INTO `sys_oper_log` VALUES ('890', '装修案例', '1', 'com.ruoyi.manage.zxcase.controller.ZxCaseController.addSave()', '1', 'admin', null, '/gcxw/manage/zxcase/add', '127.0.0.1', '内网IP', '{\"companyId\":[\"1\"],\"designerId\":[\"3\"],\"title\":[\"12211\"],\"content\":[\"驱蚊器翁\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/40942aaa88886c91d2b9db20628f3941.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/cecee4f56519733e62c8211d68ab17ba.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/1592302426041d5d9e2951baaa3c89d1.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/6e6d647753aeaae3db622e0a65651381.jpg\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/40942aaa88886c91d2b9db20628f3941.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/cecee4f56519733e62c8211d68ab17ba.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/1592302426041d5d9e2951baaa3c89d1.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/6e6d647753aeaae3db622e0a65651381.jpg\"]}', '0', null, '2020-01-02 11:14:15');
INSERT INTO `sys_oper_log` VALUES ('891', '装修案例', '2', 'com.ruoyi.manage.zxcase.controller.ZxCaseController.editSave()', '1', 'admin', null, '/gcxw/manage/zxcase/edit', '127.0.0.1', '内网IP', '{\"caseId\":[\"2\"],\"companyId\":[\"1\"],\"designerId\":[\"2\"],\"title\":[\"测试案例2\"],\"content\":[\"12恶趣味群\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/10400984f56d913e49c3628197495e3c.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/ed331cbc1a9e74e35af038559fde1ae5.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/e3c8c65336f6e1c13d067da350272cb3.jpg\"]}', '0', null, '2020-01-02 11:19:34');
INSERT INTO `sys_oper_log` VALUES ('892', '装修案例', '2', 'com.ruoyi.manage.zxcase.controller.ZxCaseController.editSave()', '1', 'admin', null, '/gcxw/manage/zxcase/edit', '127.0.0.1', '内网IP', '{\"caseId\":[\"2\"],\"companyId\":[\"1\"],\"designerId\":[\"2\"],\"title\":[\"测试案例2\"],\"content\":[\"12恶趣味群\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/10400984f56d913e49c3628197495e3c.jpg\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/10400984f56d913e49c3628197495e3c.jpg\"]}', '0', null, '2020-01-02 11:20:31');
INSERT INTO `sys_oper_log` VALUES ('893', '装修案例', '2', 'com.ruoyi.manage.zxcase.controller.ZxCaseController.editSave()', '1', 'admin', null, '/gcxw/manage/zxcase/edit', '127.0.0.1', '内网IP', '{\"caseId\":[\"2\"],\"companyId\":[\"2\"],\"designerId\":[\"1\"],\"title\":[\"测试案例333\"],\"content\":[\"12恶趣味群\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/10400984f56d913e49c3628197495e3c.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/383aad0c238f771866969f30d53ef422.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/5718935990d0f42f7fa077201fd66feb.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/c32db755b9214f60e2d035afcf725092.jpg\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/10400984f56d913e49c3628197495e3c.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/383aad0c238f771866969f30d53ef422.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/5718935990d0f42f7fa077201fd66feb.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/c32db755b9214f60e2d035afcf725092.jpg\"]}', '0', null, '2020-01-02 11:20:57');
INSERT INTO `sys_oper_log` VALUES ('894', '装修案例', '2', 'com.ruoyi.manage.zxcase.controller.ZxCaseController.editSave()', '1', 'admin', null, '/gcxw/manage/zxcase/edit', '127.0.0.1', '内网IP', '{\"caseId\":[\"1\"],\"companyId\":[\"2\"],\"designerId\":[\"1\"],\"title\":[\"测试案例1\"],\"content\":[\"测1\"],\"imgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/f06b83a9c855de83fd152e450c81da65.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/54ac3907800822cae3cb91a8e949bf31.jpg\",\"http://localhost:8081/gcxw/profile/upload/2020/01/02/bf70f0f76317700f5ffbf5a43d51d629.jpg\"],\"imgUrls\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/02/f06b83a9c855de83fd152e450c81da65.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/54ac3907800822cae3cb91a8e949bf31.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/bf70f0f76317700f5ffbf5a43d51d629.jpg\"]}', '0', null, '2020-01-02 11:21:17');
INSERT INTO `sys_oper_log` VALUES ('895', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannerimg/edit', '47.99.149.209', 'XX XX', '{\"zxBannerImgId\":[\"4\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2020/01/03/301f034fb31319e1a2a54c318cec6a1d.png\"],\"title\":[\"测55\"],\"detail\":[\"<p>\\r\\n\\tbanner1\\r\\n</p>\\r\\n<p>\\r\\n\\t查看banner1点击跳转样式\\r\\n</p>\"]}', '0', null, '2020-01-03 11:19:24');
INSERT INTO `sys_oper_log` VALUES ('896', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannerimg/edit', '47.99.149.209', 'XX XX', '{\"zxBannerImgId\":[\"4\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2020/01/03/301f034fb31319e1a2a54c318cec6a1d.png\"],\"title\":[\"banner1\"],\"detail\":[\"<p>\\r\\n\\tbanner1\\r\\n</p>\\r\\n<p>\\r\\n\\t查看banner1点击跳转样式\\r\\n</p>\"]}', '0', null, '2020-01-03 11:19:34');
INSERT INTO `sys_oper_log` VALUES ('897', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannerimg/edit', '47.99.149.209', 'XX XX', '{\"zxBannerImgId\":[\"3\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2020/01/03/68cd05569b7d0af5572fecca688f512b.jpg\"],\"title\":[\"banner2\"],\"detail\":[\"<div align=\\\"center\\\">\\r\\n\\t<h1>\\r\\n\\t\\tbanner\\r\\n\\t</h1>\\r\\n\\t<div align=\\\"left\\\">\\r\\n\\t\\t<p>\\r\\n\\t\\t\\t测试banner2，有图片\\r\\n\\t\\t</p>\\r\\n\\t\\t<p>\\r\\n\\t\\t\\t<br />\\r\\n\\t\\t</p>\\r\\n\\t\\t<p>\\r\\n\\t\\t\\t<img src=\\\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAASABIAAD/4QCMRXhpZgAATU0AKgAAAAgABQESAAMAAAABAAEAAAEaAAUAAAABAAAASgEbAAUAAAABAAAAUgEoAAMAAAABAAIAAIdpAAQAAAABAAAAWgAAAAAAAABIAAAAAQAAAEgAAAABAAOgAQADAAAAAQABAACgAgAEAAAAAQAAAu6gAwAEAAAAAQAAAVQAAAAA/+0AOFBob3Rvc2hvcCAzLjAAOEJJTQQEAAAAAAAAOEJJTQQlAAAAAAAQ1B2M2Y8AsgTpgAmY7PhCfv/AABEIAVQC7gMBIgACEQEDEQH/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/3QAEAC//2gAMAwEAAhEDEQA/AKgt2zSSRbDzWgahn2kAHr9K95M+QnGxSFOCgmtKLTmksnuAVAQ4KnrVMoAapmNxAvpUqrQq1Kq0AAWnhacoqRVobAaq1IFpQtSKKVwGhacEqULTxHnpUspJkSpT0hJFXraxMmOK04dOCjkVEppG0KTZgeSw7U5YC3at97JfSkSzwelT7TQ1WHZlx2pA6VMttWqLbA6UGEDtUuRrGjYzfJwKZswa1DECOlQPb80uYpwKBbBpQQRmrTWvFV2iKmgi1hcjFQSU4E5xSkZppEtlQqTTSlWivFMK1aJKxSk2c1YK80myncCHbSFasbaQrSuBXK0LHk1LtqWNOelJsa3ES3LD6U77KS3Sr0Kip9q1m5HQoXMs6cM5qdLMRjNXjijik2XyJFcRgLWZeQkscVsNgDpVWZNwoTJlG6Ofkgf0qs0JB5FdD5IbtTGs0PJArVSMHSOeZMVCyHNdBJZRHOBWbcWuxuKtSIcDNKknAFTW9i7uGxWlZ2W8gkVrJbpG', '0', null, '2020-01-03 11:21:40');
INSERT INTO `sys_oper_log` VALUES ('898', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannerimg/edit', '47.99.149.209', 'XX XX', '{\"zxBannerImgId\":[\"2\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2020/01/03/2bca8f40a491e184589df3f81b9799e2.jpg\"],\"title\":[\"banner3\"],\"detail\":[\"banner3\\r\\n<div id=\\\"SL_balloon_obj\\\">\\r\\n\\t<div id=\\\"SL_button\\\" class=\\\"SL_ImTranslatorLogo\\\" style=\\\"background:rgba(0, 0, 0, 0) url(&quot;\\\">\\r\\n\\t</div>\\r\\n\\t<div id=\\\"SL_shadow_translation_result2\\\">\\r\\n\\t</div>\\r\\n\\t<div id=\\\"SL_shadow_translator\\\">\\r\\n\\t\\t<div id=\\\"SL_planshet\\\">\\r\\n\\t\\t\\t<div id=\\\"SL_arrow_up\\\" style=\\\"background:rgba(0, 0, 0, 0) url(&quot;\\\">\\r\\n\\t\\t\\t</div>\\r\\n\\t\\t\\t<div id=\\\"SL_Bproviders\\\">\\r\\n\\t\\t\\t</div>\\r\\n\\t\\t\\t<div id=\\\"SL_alert_bbl\\\">\\r\\n\\t\\t\\t\\t<div id=\\\"SLHKclose\\\" style=\\\"background:rgba(0, 0, 0, 0) url(&quot;\\\">\\r\\n\\t\\t\\t\\t</div>\\r\\n\\t\\t\\t\\t<div id=\\\"SL_alert_cont\\\">\\r\\n\\t\\t\\t\\t</div>\\r\\n\\t\\t\\t</div>\\r\\n\\t\\t\\t<div id=\\\"SL_TB\\\">\\r\\n\\t\\t\\t\\t<table id=\\\"SL_tables\\\" cellspacing=\\\"1\\\">\\r\\n\\t\\t\\t\\t\\t<tr>\\r\\n\\t\\t\\t\\t\\t\\t<td class=\\\"SL_td\\\" width=\\\"10%\\\" align=\\\"right\\\">\\r\\n\\t\\t\\t\\t\\t\\t</td>\\r\\n\\t\\t\\t\\t\\t\\t<td class=\\\"SL_td\\\" width=\\\"20%\\\" align=\\\"left\\\">\\r\\n\\t\\t\\t\\t\\t\\t\\t检测语言世界语中文简体中文繁体丹麦语乌克兰语乌兹别克语乌尔都语亚美尼亚语伊博语俄语保加利亚语信德语修纳语僧伽罗语克罗地亚语冰岛语加利西亚语加泰罗尼亚语匈牙利语南非祖鲁语卡纳达语卢森堡语印地语印尼巽他语印尼爪哇语印尼语古吉拉特语吉尔吉斯语哈萨克语土耳其语塔吉克语塞尔维亚语塞索托语夏威夷语威尔士语孟加拉语宿务语尼泊尔语巴斯克语布尔语(南非荷兰语)希伯来语希腊语库尔德语弗里西语德语意大利语意第绪语拉丁语拉脱维亚语挪威语捷克语斯洛伐克语斯洛文尼亚语斯瓦希里语旁遮普语日语普什图语格鲁吉亚语毛利语法语波兰语波斯尼亚语波斯语泰卢固语泰米尔语泰语海地克里奥尔语爱尔兰语爱沙尼亚语瑞典语白俄罗斯语科萨科西嘉语立陶宛语索马里语约鲁巴语缅甸语罗马尼亚语老挝语芬兰语苏格兰盖尔语苗语英语荷兰语菲律宾语萨摩亚语葡萄牙语蒙古语西班牙语豪萨语越南语阿塞拜疆语阿姆哈拉语阿尔巴尼亚语阿拉伯语韩语马其顿语马尔加什语马拉地语马拉雅拉姆语马来语马耳他语高棉语齐切瓦语\\r\\n\\t\\t\\t\\t\\t\\t</td>\\r\\n\\t\\t\\t\\t\\t\\t<td class=\\\"SL_td\\\" width=\\\"3\\\" align=\\\"center\\\">\\r\\n\\t\\t\\t\\t\\t\\t\\t<div id=\\\"SL_switch_b\\\" style=\\\"background:rgba(0, 0, 0, 0) url(&quot;\\\">\\r\\n\\t\\t\\t\\t\\t\\t\\t</div>\\r\\n\\t\\t\\t\\t\\t\\t</td>\\r\\n\\t\\t\\t\\t\\t\\t<td class=\\\"SL_td\\\" width=\\\"20%\\\" align=\\\"left\\\">\\r\\n\\t\\t\\t\\t\\t\\t\\t世界语中文简体中文繁体丹麦语乌克兰语乌兹别克语乌尔都语亚美尼亚语伊博语俄语保加利亚语信德语修纳语僧伽罗语克罗地亚语冰岛语加利西亚语加泰罗尼亚语匈牙利语南非祖鲁语卡纳达语卢森堡语印地语印尼巽他语印尼爪哇语印尼语古吉拉特语吉尔吉斯语哈萨克语土耳其语塔吉克语塞尔维亚语塞索托语夏威夷语威尔士语孟加拉语宿务语尼泊尔语巴斯克语布尔语(南非荷兰语)希伯来语希腊语库尔德语弗里西语德语意大利语意第绪语拉丁语', '0', null, '2020-01-03 11:23:07');
INSERT INTO `sys_oper_log` VALUES ('899', '装修首页banner', '2', 'com.ruoyi.manage.zxbannerimg.controller.ZxBannerImgController.editSave()', '1', 'admin', '港城小窝', '/manage/zxbannerimg/edit', '47.99.149.209', 'XX XX', '{\"zxBannerImgId\":[\"1\"],\"titleImgUrl\":[\"http://gcxw.altmoose.com:8086/profile/upload/2020/01/03/91cd940384bee35c6a79fe235b1b4c38.png\"],\"title\":[\"banner4\"],\"detail\":[\"详情11112\"]}', '0', null, '2020-01-03 11:25:16');
INSERT INTO `sys_oper_log` VALUES ('900', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_wxuser_info_apply\"]}', '0', null, '2020-01-03 16:32:39');
INSERT INTO `sys_oper_log` VALUES ('901', '字典类型', '1', 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"微信用户审核状态\"],\"dictType\":[\"sys_wxuseapply_status\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2020-01-03 16:35:45');
INSERT INTO `sys_oper_log` VALUES ('902', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"待审核\"],\"dictValue\":[\"0\"],\"dictType\":[\"sys_wxuseapply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2020-01-03 16:35:59');
INSERT INTO `sys_oper_log` VALUES ('903', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已通过\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_wxuseapply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2020-01-03 16:36:10');
INSERT INTO `sys_oper_log` VALUES ('904', '字典数据', '1', 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', '1', 'admin', '港城小窝', '/gcxw/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已驳回\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_wxuseapply_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"N\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2020-01-03 16:36:21');
INSERT INTO `sys_oper_log` VALUES ('905', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"54\"],\"tableName\":[\"t_wxuser_info_apply\"],\"tableComment\":[\"微信用户审核\"],\"className\":[\"WxUserInfoApply\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"519\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"wxuserInfoApplyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"520\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"微信id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"openid\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"521\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"522\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"电话\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"phone\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"523\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"出生日期\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"birthday\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"524\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"绑定当前小区ID\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"deptId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[', '0', null, '2020-01-03 16:39:01');
INSERT INTO `sys_oper_log` VALUES ('906', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', '港城小窝', '/gcxw/tool/gen/genCode/t_wxuser_info_apply', '127.0.0.1', '内网IP', '{}', '0', null, '2020-01-03 16:39:06');
INSERT INTO `sys_oper_log` VALUES ('907', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', null, '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1209\"],\"parentId\":[\"1074\"],\"menuType\":[\"C\"],\"menuName\":[\"微信用户审核\"],\"url\":[\"/manage/wxuserapply\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:wxuserapply:view\"],\"orderNum\":[\"0\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2020-01-03 16:44:36');
INSERT INTO `sys_oper_log` VALUES ('908', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', '1', 'admin', null, '/gcxw/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_zx_material_banner\"]}', '0', null, '2020-01-06 14:11:14');
INSERT INTO `sys_oper_log` VALUES ('909', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', '1', 'admin', null, '/gcxw/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"55\"],\"tableName\":[\"t_zx_material_banner\"],\"tableComment\":[\"主材推荐banner\"],\"className\":[\"ZxMaterialBanner\"],\"functionAuthor\":[\"yanbs\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"533\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"materialBannerId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"534\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"封面\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"titleImgUrl\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"535\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"标题\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"title\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"536\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"详情\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"detail\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"537\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"首页展示\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"status\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"radio\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"538\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"null\"],\"columns[5].javaType\":[\"String\"],\"columns[5].java', '0', null, '2020-01-06 14:13:00');
INSERT INTO `sys_oper_log` VALUES ('910', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', '1', 'admin', null, '/gcxw/tool/gen/genCode/t_zx_material_banner', '127.0.0.1', '内网IP', '{}', '0', null, '2020-01-06 14:13:08');
INSERT INTO `sys_oper_log` VALUES ('911', '菜单管理', '2', 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', '1', 'admin', null, '/gcxw/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1214\"],\"parentId\":[\"1087\"],\"menuType\":[\"C\"],\"menuName\":[\"主材推荐banner\"],\"url\":[\"/manage/zxmaterialbanner\"],\"target\":[\"menuItem\"],\"perms\":[\"manage:zxmaterialbanner:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2020-01-06 14:15:39');
INSERT INTO `sys_oper_log` VALUES ('912', '主材推荐banner', '1', 'com.ruoyi.manage.zxmaterialbanner.controller.ZxMaterialBannerController.addSave()', '1', 'admin', null, '/gcxw/manage/zxmaterialbanner/add', '127.0.0.1', '内网IP', '{\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/06/6cd1a4bd8feddd5ab4658bb2a50bc709.jpg\"],\"title\":[\"测试标题1\"],\"detail\":[\"1111\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'material_banner_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.manage.zxmaterialbanner.mapper.ZxMaterialBannerMapper.insertZxMaterialBanner-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_zx_material_banner          ( title_img_url,             title,             detail,                                       create_time,                          update_time )           values ( ?,             ?,             ?,                                       ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'material_banner_id\' doesn\'t have a default value\n; Field \'material_banner_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'material_banner_id\' doesn\'t have a default value', '2020-01-06 14:21:45');
INSERT INTO `sys_oper_log` VALUES ('913', '主材推荐banner', '1', 'com.ruoyi.manage.zxmaterialbanner.controller.ZxMaterialBannerController.addSave()', '1', 'admin', null, '/gcxw/manage/zxmaterialbanner/add', '127.0.0.1', '内网IP', '{\"titleImgUrl\":[\"http://localhost:8081/gcxw/profile/upload/2020/01/06/6cd1a4bd8feddd5ab4658bb2a50bc709.jpg\"],\"title\":[\"测试标题1\"],\"detail\":[\"1111\"]}', '0', null, '2020-01-06 14:24:06');
INSERT INTO `sys_oper_log` VALUES ('914', '评论管理', '3', 'com.ruoyi.manage.zxforumreply.controller.ForumReplyController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/zxforumreply/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '0', null, '2020-01-06 15:23:41');
INSERT INTO `sys_oper_log` VALUES ('915', '评论管理', '3', 'com.ruoyi.manage.zxforumreply.controller.ForumReplyController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/zxforumreply/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2020-01-06 15:23:44');
INSERT INTO `sys_oper_log` VALUES ('916', '评论管理', '3', 'com.ruoyi.manage.zxforumreply.controller.ForumReplyController.remove()', '1', 'admin', '港城小窝', '/gcxw/manage/zxforumreply/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2020-01-06 15:23:45');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-28 13:48:59', '管理员');
INSERT INTO `sys_role` VALUES ('4', '数据管理员', 'datamanage', '2', '4', '0', '2', 'admin', '2019-08-28 16:07:28', 'admin', '2019-08-28 17:44:57', '管理前台显示数据信息');
INSERT INTO `sys_role` VALUES ('5', '客服', 'customerService', '3', '1', '0', '2', 'admin', '2019-08-29 08:44:02', '', null, null);
INSERT INTO `sys_role` VALUES ('6', '系统管理员', 'sysadmin', '2', '4', '0', '0', 'admin', '2019-11-28 13:44:20', 'admin', '2019-12-05 17:12:48', '');
INSERT INTO `sys_role` VALUES ('7', '小区管理员', 'xqadmin', '3', '4', '0', '0', 'admin', '2019-11-28 13:49:57', 'admin', '2019-12-20 09:56:11', '');
INSERT INTO `sys_role` VALUES ('8', '装修管理员', 'zxadmin', '4', '4', '0', '0', 'admin', '2019-12-02 19:36:06', 'admin', '2019-12-09 11:01:59', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('6', '1');
INSERT INTO `sys_role_menu` VALUES ('6', '100');
INSERT INTO `sys_role_menu` VALUES ('6', '103');
INSERT INTO `sys_role_menu` VALUES ('6', '1000');
INSERT INTO `sys_role_menu` VALUES ('6', '1001');
INSERT INTO `sys_role_menu` VALUES ('6', '1002');
INSERT INTO `sys_role_menu` VALUES ('6', '1003');
INSERT INTO `sys_role_menu` VALUES ('6', '1004');
INSERT INTO `sys_role_menu` VALUES ('6', '1005');
INSERT INTO `sys_role_menu` VALUES ('6', '1006');
INSERT INTO `sys_role_menu` VALUES ('6', '1016');
INSERT INTO `sys_role_menu` VALUES ('6', '1017');
INSERT INTO `sys_role_menu` VALUES ('6', '1018');
INSERT INTO `sys_role_menu` VALUES ('6', '1019');
INSERT INTO `sys_role_menu` VALUES ('6', '1074');
INSERT INTO `sys_role_menu` VALUES ('6', '1093');
INSERT INTO `sys_role_menu` VALUES ('6', '1094');
INSERT INTO `sys_role_menu` VALUES ('6', '1095');
INSERT INTO `sys_role_menu` VALUES ('6', '1096');
INSERT INTO `sys_role_menu` VALUES ('6', '1097');
INSERT INTO `sys_role_menu` VALUES ('6', '1098');
INSERT INTO `sys_role_menu` VALUES ('6', '1099');
INSERT INTO `sys_role_menu` VALUES ('6', '1100');
INSERT INTO `sys_role_menu` VALUES ('6', '1101');
INSERT INTO `sys_role_menu` VALUES ('6', '1102');
INSERT INTO `sys_role_menu` VALUES ('6', '1103');
INSERT INTO `sys_role_menu` VALUES ('6', '1104');
INSERT INTO `sys_role_menu` VALUES ('6', '1105');
INSERT INTO `sys_role_menu` VALUES ('6', '1106');
INSERT INTO `sys_role_menu` VALUES ('6', '1107');
INSERT INTO `sys_role_menu` VALUES ('6', '1113');
INSERT INTO `sys_role_menu` VALUES ('6', '1114');
INSERT INTO `sys_role_menu` VALUES ('6', '1115');
INSERT INTO `sys_role_menu` VALUES ('6', '1116');
INSERT INTO `sys_role_menu` VALUES ('6', '1117');
INSERT INTO `sys_role_menu` VALUES ('7', '1074');
INSERT INTO `sys_role_menu` VALUES ('7', '1093');
INSERT INTO `sys_role_menu` VALUES ('7', '1094');
INSERT INTO `sys_role_menu` VALUES ('7', '1095');
INSERT INTO `sys_role_menu` VALUES ('7', '1096');
INSERT INTO `sys_role_menu` VALUES ('7', '1097');
INSERT INTO `sys_role_menu` VALUES ('7', '1098');
INSERT INTO `sys_role_menu` VALUES ('7', '1099');
INSERT INTO `sys_role_menu` VALUES ('7', '1100');
INSERT INTO `sys_role_menu` VALUES ('7', '1101');
INSERT INTO `sys_role_menu` VALUES ('7', '1102');
INSERT INTO `sys_role_menu` VALUES ('7', '1103');
INSERT INTO `sys_role_menu` VALUES ('7', '1104');
INSERT INTO `sys_role_menu` VALUES ('7', '1105');
INSERT INTO `sys_role_menu` VALUES ('7', '1106');
INSERT INTO `sys_role_menu` VALUES ('7', '1107');
INSERT INTO `sys_role_menu` VALUES ('7', '1113');
INSERT INTO `sys_role_menu` VALUES ('7', '1114');
INSERT INTO `sys_role_menu` VALUES ('7', '1115');
INSERT INTO `sys_role_menu` VALUES ('7', '1116');
INSERT INTO `sys_role_menu` VALUES ('7', '1117');
INSERT INTO `sys_role_menu` VALUES ('7', '1123');
INSERT INTO `sys_role_menu` VALUES ('7', '1124');
INSERT INTO `sys_role_menu` VALUES ('7', '1125');
INSERT INTO `sys_role_menu` VALUES ('7', '1126');
INSERT INTO `sys_role_menu` VALUES ('7', '1127');
INSERT INTO `sys_role_menu` VALUES ('7', '1128');
INSERT INTO `sys_role_menu` VALUES ('7', '1129');
INSERT INTO `sys_role_menu` VALUES ('7', '1130');
INSERT INTO `sys_role_menu` VALUES ('7', '1131');
INSERT INTO `sys_role_menu` VALUES ('7', '1132');
INSERT INTO `sys_role_menu` VALUES ('7', '1149');
INSERT INTO `sys_role_menu` VALUES ('7', '1150');
INSERT INTO `sys_role_menu` VALUES ('7', '1151');
INSERT INTO `sys_role_menu` VALUES ('7', '1152');
INSERT INTO `sys_role_menu` VALUES ('7', '1153');
INSERT INTO `sys_role_menu` VALUES ('7', '1154');
INSERT INTO `sys_role_menu` VALUES ('7', '1155');
INSERT INTO `sys_role_menu` VALUES ('7', '1156');
INSERT INTO `sys_role_menu` VALUES ('7', '1157');
INSERT INTO `sys_role_menu` VALUES ('7', '1158');
INSERT INTO `sys_role_menu` VALUES ('7', '1164');
INSERT INTO `sys_role_menu` VALUES ('7', '1165');
INSERT INTO `sys_role_menu` VALUES ('7', '1166');
INSERT INTO `sys_role_menu` VALUES ('7', '1167');
INSERT INTO `sys_role_menu` VALUES ('7', '1168');
INSERT INTO `sys_role_menu` VALUES ('7', '1179');
INSERT INTO `sys_role_menu` VALUES ('7', '1180');
INSERT INTO `sys_role_menu` VALUES ('7', '1181');
INSERT INTO `sys_role_menu` VALUES ('7', '1182');
INSERT INTO `sys_role_menu` VALUES ('7', '1183');
INSERT INTO `sys_role_menu` VALUES ('7', '1189');
INSERT INTO `sys_role_menu` VALUES ('7', '1190');
INSERT INTO `sys_role_menu` VALUES ('7', '1191');
INSERT INTO `sys_role_menu` VALUES ('7', '1192');
INSERT INTO `sys_role_menu` VALUES ('7', '1193');
INSERT INTO `sys_role_menu` VALUES ('8', '1087');
INSERT INTO `sys_role_menu` VALUES ('8', '1088');
INSERT INTO `sys_role_menu` VALUES ('8', '1089');
INSERT INTO `sys_role_menu` VALUES ('8', '1090');
INSERT INTO `sys_role_menu` VALUES ('8', '1091');
INSERT INTO `sys_role_menu` VALUES ('8', '1092');
INSERT INTO `sys_role_menu` VALUES ('8', '1108');
INSERT INTO `sys_role_menu` VALUES ('8', '1109');
INSERT INTO `sys_role_menu` VALUES ('8', '1110');
INSERT INTO `sys_role_menu` VALUES ('8', '1111');
INSERT INTO `sys_role_menu` VALUES ('8', '1112');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `token` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '100', 'admin', '超级管理员', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '47.99.149.209', '2020-01-07 09:52:51', 'admin', '2018-03-16 11:33:00', 'ry', '2020-01-07 09:52:51', '管理员', null);
INSERT INTO `sys_user` VALUES ('5', '112', '10001', '10001', '00', '13800000000@qq.com', '13800000000', '0', '', '5ecc53f4c4d325ededb295e2df03cbf3', 'b32ad2', '0', '0', '127.0.0.1', '2019-12-20 09:57:50', 'admin', '2019-08-28 16:10:09', 'admin', '2019-12-20 09:57:51', '', null);
INSERT INTO `sys_user` VALUES ('6', '111', '10002', '10002', '00', '2252743888@qq.com', '13800000001', '0', '', '2e0094f5f21ac29b6aded2437fe4cea5', '9c00e6', '0', '2', '127.0.0.1', '2019-11-25 17:30:26', 'admin', '2019-11-22 09:34:19', 'admin', '2019-11-28 13:44:45', '', null);
INSERT INTO `sys_user` VALUES ('7', '100', '10000', '10000', '00', '2252743889@qq.com', '13888888888', '0', '', '5a4c8e2086985e71d5e96fda558fd5c2', 'a22b33', '0', '0', '127.0.0.1', '2019-12-02 19:59:29', 'admin', '2019-11-28 13:47:06', 'admin', '2019-12-02 19:59:28', '', null);
INSERT INTO `sys_user` VALUES ('9', '100', '11001', '装修管理用户', '00', '', '13888888887', '0', '', 'e7dc4374cbe21bb7f5c6cb18bfc8d06e', '8130e9', '0', '0', '', null, 'admin', '2019-12-02 19:59:13', '', null, null, null);
INSERT INTO `sys_user` VALUES ('10', '101', 'pianqu1', 'pianqu1', '00', '', '13888888880', '0', '', '8dca432107f14b9118eed1fc39a1f21e', '2cc58b', '0', '0', '127.0.0.1', '2019-12-09 11:02:09', 'admin', '2019-12-09 11:01:39', '', '2019-12-09 11:02:09', null, null);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('3f4bf4d8-ec8c-469e-ab8b-2119f9c34e5b', 'admin', '港城小窝', '47.99.149.209', 'XX XX', 'Chrome', 'Windows 10', 'on_line', '2020-01-07 09:52:43', '2020-01-07 09:52:52', '3600000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('2', '3');
INSERT INTO `sys_user_role` VALUES ('3', '3');
INSERT INTO `sys_user_role` VALUES ('4', '2');
INSERT INTO `sys_user_role` VALUES ('5', '7');
INSERT INTO `sys_user_role` VALUES ('6', '6');
INSERT INTO `sys_user_role` VALUES ('7', '6');
INSERT INTO `sys_user_role` VALUES ('8', '8');
INSERT INTO `sys_user_role` VALUES ('9', '8');
INSERT INTO `sys_user_role` VALUES ('10', '7');
INSERT INTO `sys_user_role` VALUES ('10', '8');

-- ----------------------------
-- Table structure for t_esbus_banner_info
-- ----------------------------
DROP TABLE IF EXISTS `t_esbus_banner_info`;
CREATE TABLE `t_esbus_banner_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uu_id` varchar(64) DEFAULT NULL COMMENT 'UUID标识',
  `img_url` varchar(256) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_esbus_banner_info
-- ----------------------------
INSERT INTO `t_esbus_banner_info` VALUES ('5', '551acc804af343a4808ca942999538eb', 'https://hgdxcx.altmoose.com/e4c7dff81aa24ae3b14111666a21d3f4');
INSERT INTO `t_esbus_banner_info` VALUES ('6', '551acc804af343a4808ca942999538eb', 'https://hgdxcx.altmoose.com/e4c7dff81aa24ae3b14111666a21d3f4');
INSERT INTO `t_esbus_banner_info` VALUES ('7', 'ad54381996ec4526b907da18e602ae45', 'https://hgdxcx.altmoose.com/e4c7dff81aa24ae3b14111666a21d3f4');
INSERT INTO `t_esbus_banner_info` VALUES ('8', 'ad54381996ec4526b907da18e602ae45', 'https://hgdxcx.altmoose.com/e4c7dff81aa24ae3b14111666a21d3f4');

-- ----------------------------
-- Table structure for t_esbus_img_info
-- ----------------------------
DROP TABLE IF EXISTS `t_esbus_img_info`;
CREATE TABLE `t_esbus_img_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uu_id` varchar(64) DEFAULT NULL COMMENT 'UUID标识',
  `img_url` varchar(256) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_esbus_img_info
-- ----------------------------
INSERT INTO `t_esbus_img_info` VALUES ('1', '551acc804af343a4808ca942999538eb', 'https://hgdxcx.altmoose.com/e4c7dff81aa24ae3b14111666a21d3f4');
INSERT INTO `t_esbus_img_info` VALUES ('2', '551acc804af343a4808ca942999538eb', 'https://hgdxcx.altmoose.com/e4c7dff81aa24ae3b14111666a21d3f4');
INSERT INTO `t_esbus_img_info` VALUES ('3', 'ad54381996ec4526b907da18e602ae45', 'https://hgdxcx.altmoose.com/e4c7dff81aa24ae3b14111666a21d3f4');
INSERT INTO `t_esbus_img_info` VALUES ('4', 'ad54381996ec4526b907da18e602ae45', 'https://hgdxcx.altmoose.com/e4c7dff81aa24ae3b14111666a21d3f4');

-- ----------------------------
-- Table structure for t_esbus_info
-- ----------------------------
DROP TABLE IF EXISTS `t_esbus_info`;
CREATE TABLE `t_esbus_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uu_id` varchar(64) DEFAULT NULL COMMENT 'UUID标识',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `introduced` varchar(512) DEFAULT NULL COMMENT '介绍',
  `presented_id` varchar(128) DEFAULT NULL COMMENT '发布人openId',
  `presented_dept` varchar(32) DEFAULT NULL COMMENT '发布人小区',
  `presented_date` date DEFAULT NULL COMMENT '发布日期',
  `presented_mobile` varchar(32) DEFAULT NULL COMMENT '发布人联系方式',
  `state` int(11) DEFAULT NULL COMMENT '状态：1 发布；2 已审核； 3 结单',
  `sh_date` date DEFAULT NULL COMMENT '审核日期',
  `sh_oper` varchar(128) DEFAULT NULL COMMENT '审核人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_esbus_info
-- ----------------------------
INSERT INTO `t_esbus_info` VALUES ('1', '551acc804af343a4808ca942999538eb', null, '测试发布标题1', '测试文字简介', 'qwqwewq', '114', '2019-12-17', '444444', '2', '2019-12-19', 'admin');
INSERT INTO `t_esbus_info` VALUES ('2', 'ad54381996ec4526b907da18e602ae45', null, '测试发布标题12', '测试文字简介2', 'qwqwewq', '114', '2019-12-17', '444444', '1', null, null);

-- ----------------------------
-- Table structure for t_forum_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_forum_reply`;
CREATE TABLE `t_forum_reply` (
  `forum_reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) DEFAULT NULL,
  `reply_openid` varchar(255) DEFAULT NULL,
  `reply_head_img` varchar(255) DEFAULT NULL,
  `reply_nickname` varchar(255) DEFAULT NULL,
  `reply_content` varchar(2000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`forum_reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_forum_reply
-- ----------------------------

-- ----------------------------
-- Table structure for t_gzh_user
-- ----------------------------
DROP TABLE IF EXISTS `t_gzh_user`;
CREATE TABLE `t_gzh_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscribe` varchar(256) DEFAULT NULL,
  `openid` varchar(128) DEFAULT NULL COMMENT '标识',
  `nickname` varchar(128) DEFAULT NULL COMMENT '名称',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `city` varchar(128) DEFAULT NULL COMMENT '城市',
  `country` varchar(128) DEFAULT NULL COMMENT '国家',
  `province` varchar(128) DEFAULT NULL COMMENT '城市',
  `headimgurl` varchar(256) DEFAULT NULL COMMENT '头像',
  `wx_type` varchar(128) DEFAULT NULL COMMENT '维修类型',
  `wx_dept` varchar(128) DEFAULT NULL COMMENT '维修小区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_gzh_user
-- ----------------------------
INSERT INTO `t_gzh_user` VALUES ('76', null, 'o3Qcywd0TPqpNUP4YlDez2w-tdkA', 'ฅ?ฅ', '2', null, '荷兰', '鹿特丹', 'http://thirdwx.qlogo.cn/mmopen/ZiaO5HhpkQ7gciaEjRgaciaPtgnUXfnqGqw9MicqJ639tK6PEpmfHhg4QOYgbkFys7OHvB0Ne2n53XbqImMjWZibzug/132', '1', '119');
INSERT INTO `t_gzh_user` VALUES ('77', null, 'o3QcywbppoHld2cqvfMJtJO0Mdh8', '张晨', '2', null, '爱尔兰', '利特里姆', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEKjmmh7ibEcfuxB9CepOdGEfMdoVkAqFibpXZxGcN2fPyxhjYtics97zbU0zOWlldpMbWlia6ruk0ZcOg/132', '2', '119');
INSERT INTO `t_gzh_user` VALUES ('78', null, 'o3QcywYcgB881psfeY9e25zYLS5E', 'JOKER', '1', '南京', '中国', '江苏', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEL7d6DPg0QcOTyHfzKQWw9EXMyAmZaKn5eZ6zmKO6FJSKHGWjr1DyrOiatBPOUykfMqxb2vH7hFAzw/132', '1', '119');
INSERT INTO `t_gzh_user` VALUES ('79', null, 'o3QcywYb6lYNsdwjfcmXYy8M_5Vo', '星期六', '1', '连云港', '中国', '江苏', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEIUIxakgtpu2HgEvbZDSS8YR0HZLy3O4JiawmHVnEjOl5T2ApYNTZb0SogyWm488OBnjfICiana5FEg/132', null, null);
INSERT INTO `t_gzh_user` VALUES ('80', null, 'o3QcywQDcs8mIPt1hh6waeCHMVXg', '??蜂蜜糖??', '2', null, '直布罗陀', null, 'http://thirdwx.qlogo.cn/mmopen/WRibickWFyicPGHYgUV6ibqfbBLDEQeuT86OmndUHnJNJWwrEtaCauCoGaY9dsFW91FnUo0dJ3tmXLr2GvECsRcicYmJVOaq0zObK/132', null, null);
INSERT INTO `t_gzh_user` VALUES ('81', null, 'o3QcywZCwgVfEH4QMHtVOlB0KXU4', '瑶迪', '2', null, '阿拉伯联合酋长国', '迪拜', 'http://thirdwx.qlogo.cn/mmopen/3KFwEVlJhRC8j1jmZTNR5FFLS1I3OzBG5RjnicdUV4yvwgqgLpd8ojiazfd8uaXeFdCOI2mZTbONYW4pYvBymLbcCydIzSrhC9/132', null, null);
INSERT INTO `t_gzh_user` VALUES ('82', null, 'o3QcywRefsvvBaIs8_BNqdODXvJ0', '颜丙胜', '1', '连云港', '中国', '江苏', 'http://thirdwx.qlogo.cn/mmopen/ZiaO5HhpkQ7g8j5JSXUnM19pKW46fCft0OhGVUOa5yX6oAia6ACjBMHIDkl9diafmek1PGljXObnq9dCb4Gib6h2FcY93mCjoakv/132', '1', '119');
INSERT INTO `t_gzh_user` VALUES ('83', null, 'o3QcywY6mHw1EJivhTuXSswIYjK8', '王雨蒙', '2', '连云港', '中国', '江苏', 'http://thirdwx.qlogo.cn/mmopen/ZiaO5HhpkQ7iaRbFj9yvQd9nxV1wKjZwWrs92rcMA7EZriakpaMRrRztas5JlgIlHhhaZ7DYXAEHPpcGzy3lqZa3tNzf7bE81QE/132', null, null);
INSERT INTO `t_gzh_user` VALUES ('84', null, 'o3QcywXeCKfmC6zqLvwB-M0sY-xg', '㏒ν', '1', null, '百慕大', null, 'http://thirdwx.qlogo.cn/mmopen/3KFwEVlJhRC8j1jmZTNR5B6JSQZdRl4DZQdKXwDFb6xsFgMR8VfzLe0vSXdUudWDuIoBn93kgMqxS31P1jv7FLiab0Mm1QOdd/132', '1,2', '112,113,114,115,119');
INSERT INTO `t_gzh_user` VALUES ('85', null, 'o3QcywWHQIR-J76S1vrS7JxDJmwE', '于蒙瑶', '2', '连云港', '中国', '江苏', 'http://thirdwx.qlogo.cn/mmopen/ZiaO5HhpkQ7iaRbFj9yvQd9j80CvOkUpSLzM2OQH0QM4jJpEY5fb7wK0AmH9ZbevhwKTAc40llNzlP3Tflxau2q1dQ55FF6pgX/132', null, null);
INSERT INTO `t_gzh_user` VALUES ('86', null, 'o3QcywYDkO56_NAYaZr69HiWJCkU', '王贵芝', '0', null, '埃及', null, 'http://thirdwx.qlogo.cn/mmopen/ZiaO5HhpkQ7iaRbFj9yvQd9sZSurCtbc4My9yRKxicic1b1OlQ5xxkgb7cuH6oLcluK1xLrjcPgyNAZ8XWgthQwlsyCRicth16hTe/132', null, null);

-- ----------------------------
-- Table structure for t_gzh_user_xq
-- ----------------------------
DROP TABLE IF EXISTS `t_gzh_user_xq`;
CREATE TABLE `t_gzh_user_xq` (
  `openid` varchar(128) DEFAULT NULL,
  `dept_id` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_gzh_user_xq
-- ----------------------------

-- ----------------------------
-- Table structure for t_my_collection
-- ----------------------------
DROP TABLE IF EXISTS `t_my_collection`;
CREATE TABLE `t_my_collection` (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `forum_title` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_my_collection
-- ----------------------------

-- ----------------------------
-- Table structure for t_pay_info
-- ----------------------------
DROP TABLE IF EXISTS `t_pay_info`;
CREATE TABLE `t_pay_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `out_trade_no` varchar(64) DEFAULT NULL COMMENT '订单号',
  `total_fee` varchar(12) DEFAULT NULL COMMENT '付款金额',
  `time_end` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_pay_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_wxuser
-- ----------------------------
DROP TABLE IF EXISTS `t_wxuser`;
CREATE TABLE `t_wxuser` (
  `wxuser_id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `now_dept_id` int(11) DEFAULT NULL COMMENT '绑定当前小区ID',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wxuser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_wxuser
-- ----------------------------
INSERT INTO `t_wxuser` VALUES ('1', 'o3QcywYcgB881psfeY9e25zYLS5E', '测试人', '123', '2019-12-12 17:08:23', '114', null, null, null, null);
INSERT INTO `t_wxuser` VALUES ('2', 'o3Qcywd0TPqpNUP4YlDez2w-tdkA', '测试人2', '444444', '2019-12-13 15:04:12', '114', null, null, null, null);
INSERT INTO `t_wxuser` VALUES ('3', 'qwqwewq11133', null, null, null, '114', null, null, null, null);
INSERT INTO `t_wxuser` VALUES ('4', 'qwqwewqq3r135s1133', '小名', '12345678', '2001-01-01 00:00:00', '114', null, null, '2019-12-17 17:56:06', null);
INSERT INTO `t_wxuser` VALUES ('6', 'o3QcywRefsvvBaIs8_BNqdODXvJ0', '演播室', '13800000001', '2001-01-01 00:00:00', '114', '2020-01-03 11:23:58', null, '2020-01-06 10:49:02', null);
INSERT INTO `t_wxuser` VALUES ('7', 'o3Qcywe0Y61YeTiz908d6MSlac2k', null, null, null, '114', '2020-01-06 09:58:15', null, null, null);

-- ----------------------------
-- Table structure for t_wxuser_floor
-- ----------------------------
DROP TABLE IF EXISTS `t_wxuser_floor`;
CREATE TABLE `t_wxuser_floor` (
  `wxuser_floor_id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL COMMENT '小区ID',
  `is_bind` int(11) DEFAULT NULL COMMENT '是否为当前绑定小区',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `build_num` int(11) DEFAULT NULL,
  `unit_num` int(11) DEFAULT NULL,
  `door_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`wxuser_floor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_wxuser_floor
-- ----------------------------
INSERT INTO `t_wxuser_floor` VALUES ('1', '11111111222222222222qwqwewq', '114', '1', null, null, null, null, '1', '1', '101');
INSERT INTO `t_wxuser_floor` VALUES ('2', 'qwqwewq', '114', '1', null, null, null, null, '1', '1', '102');
INSERT INTO `t_wxuser_floor` VALUES ('3', 'qwqwewqq3r135s1133', '114', '1', null, '2019-12-17 17:56:06', null, null, '11', '1', '111');
INSERT INTO `t_wxuser_floor` VALUES ('7', 'o3QcywRefsvvBaIs8_BNqdODXvJ0', '114', '1', null, '2020-01-06 10:49:02', null, null, '11', '1', '101');

-- ----------------------------
-- Table structure for t_wxuser_info_apply
-- ----------------------------
DROP TABLE IF EXISTS `t_wxuser_info_apply`;
CREATE TABLE `t_wxuser_info_apply` (
  `wxuser_info_apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL COMMENT '绑定当前小区ID',
  `build_num` int(11) DEFAULT NULL COMMENT '楼栋号',
  `unit_num` int(11) DEFAULT NULL COMMENT '单元号',
  `door_num` int(11) DEFAULT NULL COMMENT '房间号',
  `apply_status` int(11) DEFAULT '0' COMMENT '0:待审核，1：通过，2：驳回',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_adddept` int(11) DEFAULT '0' COMMENT '是否为添加小区（默认为完善信息） 1：添加小区，0：第一次完善信息',
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`wxuser_info_apply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_wxuser_info_apply
-- ----------------------------
INSERT INTO `t_wxuser_info_apply` VALUES ('1', '11111111222222222222qwqwewq', '12', '23', '2019-12-12 17:11:23', '114', null, null, null, '1', null, null, null, null, '0', null);
INSERT INTO `t_wxuser_info_apply` VALUES ('2', 'qwqwewq', '测试人2', '444444', '2019-12-13 15:08:21', '114', null, null, null, '1', null, null, null, null, '0', null);
INSERT INTO `t_wxuser_info_apply` VALUES ('4', 'o3QcywRefsvvBaIs8_BNqdODXvJ0', '演播室', '13800000001', '2001-01-01 00:00:00', '114', '11', '1', '101', '2', null, '2020-01-06 10:48:47', null, '2020-01-06 12:25:07', '0', 'ces ');

-- ----------------------------
-- Table structure for t_xq_birth_prize
-- ----------------------------
DROP TABLE IF EXISTS `t_xq_birth_prize`;
CREATE TABLE `t_xq_birth_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL COMMENT '商品名称',
  `Introduced` varchar(256) DEFAULT NULL COMMENT '简介',
  `content` longtext COMMENT '内容',
  `num` int(11) DEFAULT NULL COMMENT '库存',
  `state` int(11) DEFAULT NULL COMMENT '状态：0 录入，1上架，2下架',
  `create_by` varchar(128) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_xq_birth_prize
-- ----------------------------
INSERT INTO `t_xq_birth_prize` VALUES ('1', 'ceshimingcheng', 'ceshijianjie', '<p><img src=\"http://localhost:8081/gcxw/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\" data-filename=\"/profile/upload/2019/12/19/f3a26d6c4d07b3603584b6bea476650c.jpg\" style=\"width: 640px;\"><br></p>', '111', '2', null, null, null, null);

-- ----------------------------
-- Table structure for t_xq_bx_info
-- ----------------------------
DROP TABLE IF EXISTS `t_xq_bx_info`;
CREATE TABLE `t_xq_bx_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `appointment` datetime DEFAULT NULL COMMENT '预约时间',
  `introduced` varchar(512) DEFAULT NULL COMMENT '具体描述',
  `additional` varchar(512) DEFAULT NULL COMMENT '追加描述',
  `presented_id` varchar(128) DEFAULT NULL COMMENT '发布人openId',
  `presented_dept` varchar(32) DEFAULT NULL COMMENT '发布人小区',
  `presented_date` date DEFAULT NULL COMMENT '发布日期',
  `presented_mobile` varchar(32) DEFAULT NULL COMMENT '发布人联系方式',
  `state` int(11) DEFAULT NULL COMMENT '状态：1 已提交；2 已受理； 3 结束',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_xq_bx_info
-- ----------------------------
INSERT INTO `t_xq_bx_info` VALUES ('1', '1', '2019-01-01 11:11:00', '这里是错误描述', null, 'qwqwewq', '114', '2019-12-17', '444444', '2');
INSERT INTO `t_xq_bx_info` VALUES ('2', '1', '2019-01-01 11:11:00', '这里是错误描述', null, 'qwqwewq', '114', '2019-12-17', '444444', '1');
INSERT INTO `t_xq_bx_info` VALUES ('3', '1', '2019-01-01 11:11:00', '这里是错误描述', null, 'qwqwewq', '114', '2019-12-17', '444444', '1');
INSERT INTO `t_xq_bx_info` VALUES ('4', '1', '2019-01-01 11:11:00', '这里是错误描述', null, 'qwqwewq', '114', '2019-12-17', '444444', '1');
INSERT INTO `t_xq_bx_info` VALUES ('5', '1', '2019-01-01 11:11:00', '这里是错误描述', null, 'qwqwewq', '114', '2019-12-17', '444444', '1');
INSERT INTO `t_xq_bx_info` VALUES ('6', '1', '2019-01-01 11:11:00', '这里是错误描述', '这里是补充说明，追加内容测试；这里是补充说明，追加内容测试；这里是补充说明，追加内容测试；这里是补充说明，追加内容测试；', 'qwqwewq', '114', '2019-12-17', '444444', '3');
INSERT INTO `t_xq_bx_info` VALUES ('7', '1', '2019-01-01 11:11:00', '这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述', null, 'qwqwewq', '114', '2019-12-17', '444444', '1');
INSERT INTO `t_xq_bx_info` VALUES ('8', '1', '2019-01-01 11:11:00', '这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述这里是错误描述', null, 'qwqwewq', '114', '2019-12-17', '444444', '1');
INSERT INTO `t_xq_bx_info` VALUES ('9', '2', '2020-01-02 10:00:00', '家里水电有问题了。', null, 'o3Qcywe0Y61YeTiz908d6MSlac2k', '114', '2020-01-02', '13800000000', '1');

-- ----------------------------
-- Table structure for t_xq_complaints
-- ----------------------------
DROP TABLE IF EXISTS `t_xq_complaints`;
CREATE TABLE `t_xq_complaints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '建议类型',
  `content` varchar(512) DEFAULT NULL COMMENT '具体描述',
  `presented_id` varchar(128) DEFAULT NULL COMMENT '提出人openId',
  `presented_dept` varchar(128) DEFAULT NULL COMMENT '提出人小区',
  `presented_date` date DEFAULT NULL COMMENT '提出时间',
  `reply` varchar(248) DEFAULT NULL COMMENT '回复内容',
  `reply_date` date DEFAULT NULL COMMENT '回复时间',
  `state` int(11) DEFAULT NULL COMMENT '状态：1 已提交，2已受理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_xq_complaints
-- ----------------------------
INSERT INTO `t_xq_complaints` VALUES ('1', '1', '我要瞎反馈', 'qwqwewq', '114', '2019-12-16', '555555555555555555555555555555555555555555555555555', null, '2');

-- ----------------------------
-- Table structure for t_xq_floor
-- ----------------------------
DROP TABLE IF EXISTS `t_xq_floor`;
CREATE TABLE `t_xq_floor` (
  `floor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '信息ID',
  `dept_id` int(11) DEFAULT NULL COMMENT '组织（小区）ID',
  `build_num` int(11) DEFAULT NULL COMMENT '楼栋号',
  `bulid_name` varchar(128) DEFAULT NULL COMMENT '楼栋名',
  `unit_num` int(11) DEFAULT NULL COMMENT '单元号',
  `door_num` int(11) DEFAULT NULL COMMENT '房间号',
  `area` varchar(32) DEFAULT NULL COMMENT '面积',
  `door_type` varchar(128) DEFAULT NULL COMMENT '户型',
  `create_by` varchar(128) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`floor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_xq_floor
-- ----------------------------
INSERT INTO `t_xq_floor` VALUES ('3', '100', '123', null, '123', '123589485', '123', '123', null, '2019-12-05 14:54:54', null, '2019-12-05 16:23:08');
INSERT INTO `t_xq_floor` VALUES ('4', '100', '2', null, '2', '2', null, null, null, '2019-12-05 16:18:09', null, '2019-12-05 16:18:09');
INSERT INTO `t_xq_floor` VALUES ('5', '114', '11', null, '1', '111', '11', '11', null, '2019-12-06 15:21:12', null, '2019-12-06 15:37:43');
INSERT INTO `t_xq_floor` VALUES ('18', '114', '11', null, '1', '1111', '4848cm²', '111111111111111111111111111111', null, '2019-12-06 16:54:29', null, '2019-12-06 16:59:38');

-- ----------------------------
-- Table structure for t_xq_jssb
-- ----------------------------
DROP TABLE IF EXISTS `t_xq_jssb`;
CREATE TABLE `t_xq_jssb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` varchar(255) DEFAULT NULL COMMENT '小区ID（多）',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `bus_name` varchar(128) DEFAULT NULL COMMENT '商家名称',
  `bus_mobile` varchar(13) DEFAULT NULL COMMENT '联系方式',
  `content` longtext COMMENT '内容',
  `create_by` varchar(36) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_xq_jssb
-- ----------------------------
INSERT INTO `t_xq_jssb` VALUES ('2', '114,119', '13585283047', '2', '654654', '654654', 'neirong yayayayayayay000000000000000000000000000000044444444444444444', 'admin', '2019-12-16', null, '2019-12-16');

-- ----------------------------
-- Table structure for t_xq_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_xq_notice`;
CREATE TABLE `t_xq_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) DEFAULT NULL COMMENT '小区ID',
  `title` varchar(256) DEFAULT NULL COMMENT '公告标题',
  `content` longtext COMMENT '内容',
  `read_num` int(11) DEFAULT '0' COMMENT '阅读次数',
  `create_by` varchar(128) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_xq_notice
-- ----------------------------
INSERT INTO `t_xq_notice` VALUES ('2', null, '11111111111', '<p>111111112222222222223333333333333333333333333333<img src=\"http://localhost:8081/gcxw/profile/upload/2019/12/09/3b102a77dec92032faad50b28dc1ceab.jpg\" data-filename=\"/profile/upload/2019/12/09/3b102a77dec92032faad50b28dc1ceab.jpg\" style=\"width: 812px;\"><img src=\"http://localhost:8081/gcxw/profile/upload/2019/12/09/f50d5cd23b823a5059d4c66efe12e70d.jpg\" data-filename=\"/profile/upload/2019/12/09/f50d5cd23b823a5059d4c66efe12e70d.jpg\" style=\"width: 959px;\"></p>', null, 'admin', null, 'admin', null);
INSERT INTO `t_xq_notice` VALUES ('3', null, '11111111111111111', '<p>111111111111111111111111111111</p>', null, '10001', '2019-12-09', null, null);
INSERT INTO `t_xq_notice` VALUES ('4', '112', '11111111', '<p>111111111111111111111111</p>', null, '10001', '2019-12-09', null, null);
INSERT INTO `t_xq_notice` VALUES ('5', '114', '公告标题', '<p><b>公告内容</b></p>', '7', 'admin', '2019-12-16', null, null);
INSERT INTO `t_xq_notice` VALUES ('6', '114', '1', '1', '1', 'admin', '2019-12-16', null, null);

-- ----------------------------
-- Table structure for t_xq_parking_space
-- ----------------------------
DROP TABLE IF EXISTS `t_xq_parking_space`;
CREATE TABLE `t_xq_parking_space` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL COMMENT '楼栋ID',
  `parking_fee` bigint(20) DEFAULT NULL COMMENT '费用',
  `parking_num` int(11) DEFAULT NULL COMMENT '车位号',
  `start_time` date DEFAULT NULL COMMENT '生效时间',
  `end_time` date DEFAULT NULL COMMENT '失效时间',
  `state` int(255) DEFAULT '1' COMMENT '状态：1 可推送；2 已推送； 3 已缴费',
  `create_by` varchar(128) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_xq_parking_space
-- ----------------------------
INSERT INTO `t_xq_parking_space` VALUES ('5', '100', '3', '1', '1', '2019-12-11', '2019-12-19', '2', null, '2019-12-06 17:36:53', null, '2019-12-06 17:36:53');
INSERT INTO `t_xq_parking_space` VALUES ('7', '100', '4', '1', '11', '2019-12-04', '2019-12-12', '1', null, '2019-12-06 17:44:58', null, '2019-12-06 17:44:58');
INSERT INTO `t_xq_parking_space` VALUES ('8', '100', '3', '6030', '13', '2019-12-02', '2019-12-19', '2', null, '2019-12-09 15:09:25', null, '2019-12-09 15:09:25');
INSERT INTO `t_xq_parking_space` VALUES ('9', '100', '3', '33333333500000', '333', '2019-12-16', '2019-12-26', '2', null, '2019-12-17 17:33:56', null, '2019-12-17 17:33:56');
INSERT INTO `t_xq_parking_space` VALUES ('10', '100', '3', '111100', '111', '2019-12-02', '2019-12-18', '2', null, '2019-12-18 08:56:55', null, '2019-12-18 08:56:55');

-- ----------------------------
-- Table structure for t_xq_property
-- ----------------------------
DROP TABLE IF EXISTS `t_xq_property`;
CREATE TABLE `t_xq_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `floor_id` int(11) DEFAULT NULL COMMENT '楼栋ID',
  `property_name` varchar(128) DEFAULT NULL COMMENT '物业费名称',
  `property_fee` bigint(20) DEFAULT NULL COMMENT '物业费金额（分）',
  `start_time` date DEFAULT NULL COMMENT '生效时间',
  `end_time` date DEFAULT NULL COMMENT '失效时间',
  `state` int(11) DEFAULT NULL COMMENT '状态：1 可推送；2 已推送； 3 已缴费',
  `push_date` datetime DEFAULT NULL COMMENT '推送时间',
  `create_by` varchar(128) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_xq_property
-- ----------------------------
INSERT INTO `t_xq_property` VALUES ('2', '4', '1231', '123', '2019-12-10', '2019-12-17', '1', null, null, '2019-12-05 16:21:36', null, '2019-12-05 16:21:36');
INSERT INTO `t_xq_property` VALUES ('4', '3', '2', '2', '2019-12-04', '2019-12-13', '3', null, null, '2019-12-05 16:27:36', null, '2019-12-05 16:27:36');
INSERT INTO `t_xq_property` VALUES ('6', '3', '11', '111', '2019-12-09', '2019-12-26', '2', '2019-12-09 14:44:36', '超级管理员', '2019-12-09 14:32:40', null, null);
INSERT INTO `t_xq_property` VALUES ('7', '3', '11', '11100', '2019-12-10', '2019-12-18', '2', '2019-12-17 17:08:43', '超级管理员', '2019-12-09 14:51:01', null, null);
INSERT INTO `t_xq_property` VALUES ('8', '3', '2', '22200', '2019-12-16', '2019-12-19', '2', '2019-12-17 17:09:31', '超级管理员', '2019-12-17 17:09:25', null, null);
INSERT INTO `t_xq_property` VALUES ('9', '3', '3', '333300', '2019-11-28', '2019-12-19', '2', '2019-12-17 17:18:11', '超级管理员', '2019-12-17 17:11:28', null, null);
INSERT INTO `t_xq_property` VALUES ('10', '3', '1111', '1111100', '2019-12-09', '2019-12-25', '2', '2019-12-18 09:01:47', '超级管理员', '2019-12-18 09:01:39', null, null);

-- ----------------------------
-- Table structure for t_xq_property_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_xq_property_detail`;
CREATE TABLE `t_xq_property_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property` int(11) DEFAULT NULL COMMENT '物业ID',
  `detail_name` varchar(128) DEFAULT NULL COMMENT '费用名称',
  `detail_fee` bigint(20) DEFAULT NULL COMMENT '费用金额（分）',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(128) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_xq_property_detail
-- ----------------------------
INSERT INTO `t_xq_property_detail` VALUES ('1', '3', '电费', '111', '这里是11月份电费', null, '2019-12-05 16:44:53', null, '2019-12-05 16:48:08');
INSERT INTO `t_xq_property_detail` VALUES ('2', '3', '物业费', '55', '这里是物业费', null, '2019-12-05 16:44:59', null, '2019-12-05 16:48:23');
INSERT INTO `t_xq_property_detail` VALUES ('3', '7', '22', '2222230', '2222', null, '2019-12-09 15:03:14', null, '2019-12-09 15:03:31');

-- ----------------------------
-- Table structure for t_xq_push_fee
-- ----------------------------
DROP TABLE IF EXISTS `t_xq_push_fee`;
CREATE TABLE `t_xq_push_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '类型:1 物业费，2 停车费',
  `fee` bigint(20) DEFAULT NULL COMMENT '费用（分）',
  `fee_id` int(11) DEFAULT NULL COMMENT '费用指向ID',
  `dept_id` int(11) DEFAULT NULL COMMENT '小区ID',
  `build_num` int(11) DEFAULT NULL COMMENT '楼栋ＩＤ',
  `unit_num` int(11) DEFAULT NULL COMMENT '单元号',
  `door_num` int(11) DEFAULT NULL COMMENT '门牌号',
  `start_time` date DEFAULT NULL COMMENT '费用生效时间',
  `end_time` date DEFAULT NULL COMMENT '费用结束时间',
  `push_time` datetime DEFAULT NULL,
  `out_trade_no` varchar(255) DEFAULT NULL COMMENT '订单号',
  `total_fee` bigint(20) DEFAULT NULL COMMENT '实付款',
  `time_end` varchar(16) DEFAULT NULL COMMENT '支付完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_xq_push_fee
-- ----------------------------
INSERT INTO `t_xq_push_fee` VALUES ('1', '1', '3333', '9', '114', '1', '1', '102', '2019-11-28', '2019-12-19', '2019-12-17 17:18:11', null, null, null);
INSERT INTO `t_xq_push_fee` VALUES ('2', '2', '333333335000', '9', '100', '123', '123', '123589485', '2019-12-16', '2019-12-26', '2019-12-17 17:34:00', null, null, null);
INSERT INTO `t_xq_push_fee` VALUES ('3', '2', '111100', '10', '100', '123', '123', '123589485', '2019-12-02', '2019-12-18', '2019-12-18 08:57:00', null, null, null);
INSERT INTO `t_xq_push_fee` VALUES ('4', '1', '1111100', '10', '100', '123', '123', '123589485', '2019-12-09', '2019-12-25', '2019-12-18 09:01:47', null, null, null);

-- ----------------------------
-- Table structure for t_xq_vr
-- ----------------------------
DROP TABLE IF EXISTS `t_xq_vr`;
CREATE TABLE `t_xq_vr` (
  `xq_vr_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) DEFAULT NULL,
  `vr_url` varchar(255) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`xq_vr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_xq_vr
-- ----------------------------
INSERT INTO `t_xq_vr` VALUES ('1', '112', 'https://www.baidu.com', null, '2019-12-05 14:18:18', null, '2019-12-05 16:03:28');
INSERT INTO `t_xq_vr` VALUES ('2', '114', 'www.google.com', null, '2019-12-05 16:03:38', null, '2019-12-05 16:05:36');

-- ----------------------------
-- Table structure for t_zx_banner_img
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_banner_img`;
CREATE TABLE `t_zx_banner_img` (
  `zx_banner_img_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `detail` mediumtext,
  `status` int(11) DEFAULT '0' COMMENT '0:展示到首页 1不展示到首页',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `flag_del` int(11) DEFAULT '0',
  PRIMARY KEY (`zx_banner_img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_banner_img
-- ----------------------------
INSERT INTO `t_zx_banner_img` VALUES ('1', 'http://gcxw.altmoose.com:8086/profile/upload/2020/01/03/91cd940384bee35c6a79fe235b1b4c38.png', 'banner4', '详情11112', '1', null, '2019-12-17 21:11:30', 'admin', '2020-01-03 11:25:17', '0');
INSERT INTO `t_zx_banner_img` VALUES ('2', 'http://gcxw.altmoose.com:8086/profile/upload/2020/01/03/2bca8f40a491e184589df3f81b9799e2.jpg', 'banner3', 'banner3\r\n<div id=\"SL_balloon_obj\">\r\n	<div id=\"SL_button\" class=\"SL_ImTranslatorLogo\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n	</div>\r\n	<div id=\"SL_shadow_translation_result2\">\r\n	</div>\r\n	<div id=\"SL_shadow_translator\">\r\n		<div id=\"SL_planshet\">\r\n			<div id=\"SL_arrow_up\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n			</div>\r\n			<div id=\"SL_Bproviders\">\r\n			</div>\r\n			<div id=\"SL_alert_bbl\">\r\n				<div id=\"SLHKclose\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n				</div>\r\n				<div id=\"SL_alert_cont\">\r\n				</div>\r\n			</div>\r\n			<div id=\"SL_TB\">\r\n				<table id=\"SL_tables\" cellspacing=\"1\">\r\n					<tr>\r\n						<td class=\"SL_td\" width=\"10%\" align=\"right\">\r\n						</td>\r\n						<td class=\"SL_td\" width=\"20%\" align=\"left\">\r\n							检测语言世界语中文简体中文繁体丹麦语乌克兰语乌兹别克语乌尔都语亚美尼亚语伊博语俄语保加利亚语信德语修纳语僧伽罗语克罗地亚语冰岛语加利西亚语加泰罗尼亚语匈牙利语南非祖鲁语卡纳达语卢森堡语印地语印尼巽他语印尼爪哇语印尼语古吉拉特语吉尔吉斯语哈萨克语土耳其语塔吉克语塞尔维亚语塞索托语夏威夷语威尔士语孟加拉语宿务语尼泊尔语巴斯克语布尔语(南非荷兰语)希伯来语希腊语库尔德语弗里西语德语意大利语意第绪语拉丁语拉脱维亚语挪威语捷克语斯洛伐克语斯洛文尼亚语斯瓦希里语旁遮普语日语普什图语格鲁吉亚语毛利语法语波兰语波斯尼亚语波斯语泰卢固语泰米尔语泰语海地克里奥尔语爱尔兰语爱沙尼亚语瑞典语白俄罗斯语科萨科西嘉语立陶宛语索马里语约鲁巴语缅甸语罗马尼亚语老挝语芬兰语苏格兰盖尔语苗语英语荷兰语菲律宾语萨摩亚语葡萄牙语蒙古语西班牙语豪萨语越南语阿塞拜疆语阿姆哈拉语阿尔巴尼亚语阿拉伯语韩语马其顿语马尔加什语马拉地语马拉雅拉姆语马来语马耳他语高棉语齐切瓦语\r\n						</td>\r\n						<td class=\"SL_td\" width=\"3\" align=\"center\">\r\n							<div id=\"SL_switch_b\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n							</div>\r\n						</td>\r\n						<td class=\"SL_td\" width=\"20%\" align=\"left\">\r\n							世界语中文简体中文繁体丹麦语乌克兰语乌兹别克语乌尔都语亚美尼亚语伊博语俄语保加利亚语信德语修纳语僧伽罗语克罗地亚语冰岛语加利西亚语加泰罗尼亚语匈牙利语南非祖鲁语卡纳达语卢森堡语印地语印尼巽他语印尼爪哇语印尼语古吉拉特语吉尔吉斯语哈萨克语土耳其语塔吉克语塞尔维亚语塞索托语夏威夷语威尔士语孟加拉语宿务语尼泊尔语巴斯克语布尔语(南非荷兰语)希伯来语希腊语库尔德语弗里西语德语意大利语意第绪语拉丁语拉脱维亚语挪威语捷克语斯洛伐克语斯洛文尼亚语斯瓦希里语旁遮普语日语普什图语格鲁吉亚语毛利语法语波兰语波斯尼亚语波斯语泰卢固语泰米尔语泰语海地克里奥尔语爱尔兰语爱沙尼亚语瑞典语白俄罗斯语科萨科西嘉语立陶宛语索马里语约鲁巴语缅甸语罗马尼亚语老挝语芬兰语苏格兰盖尔语苗语英语荷兰语菲律宾语萨摩亚语葡萄牙语蒙古语西班牙语豪萨语越南语阿塞拜疆语阿姆哈拉语阿尔巴尼亚语阿拉伯语韩语马其顿语马尔加什语马拉地语马拉雅拉姆语马来语马耳他语高棉语齐切瓦语\r\n						</td>\r\n						<td class=\"SL_td\" width=\"8%\" align=\"center\">\r\n							<div id=\"SL_TTS_voice\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n							</div>\r\n						</td>\r\n						<td class=\"SL_td\" width=\"8%\" align=\"center\">\r\n							<div id=\"SL_copy\" class=\"SL_copy\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n								<div id=\"SL_copy_tip\">\r\n								</div>\r\n							</div>\r\n						</td>\r\n						<td class=\"SL_td\" width=\"8%\" align=\"center\">\r\n							<div id=\"SL_bbl_font_patch\">\r\n							</div>\r\n							<div id=\"SL_bbl_font\" class=\"SL_bbl_font\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n							</div>\r\n						</td>\r\n						<td class=\"SL_td\" width=\"8%\" align=\"center\">\r\n							<div id=\"SL_bbl_help\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n							</div>\r\n						</td>\r\n						<td class=\"SL_td\" width=\"15%\" align=\"right\">\r\n							<div id=\"SL_pin\" class=\"SL_pin_off\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n							</div>\r\n						</td>\r\n					</tr>\r\n				</table>\r\n			</div>\r\n		</div>\r\n		<div id=\"SL_shadow_translation_result\">\r\n		</div>\r\n		<div id=\"SL_loading\" class=\"SL_loading\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n		</div>\r\n		<div id=\"SL_player2\">\r\n		</div>\r\n		<div id=\"SL_alert100\">\r\n			文本转语音功能仅限200个字符\r\n		</div>\r\n		<div id=\"SL_Balloon_options\" style=\"background:#FFFFFF url(&quot;\">\r\n			<div id=\"SL_arrow_down\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n			</div>\r\n			<table id=\"SL_tbl_opt\" width=\"100%\">\r\n				<tr>\r\n					<td class=\"SL_td\" width=\"5%\" align=\"center\">\r\n					</td>\r\n					<td class=\"SL_td\" width=\"5%\" align=\"left\">\r\n						<div id=\"SL_BBL_IMG\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n						</div>\r\n					</td>\r\n					<td class=\"SL_td\" width=\"70%\" align=\"center\">\r\n						<a href=\"https://gcxw.altmoose.com/manage/zxbannerimg/edit/moz-extension:/abc217dc-e5f2-e742-8d71-ca2b80416810/content/html/options/options.html?bbl\" target=\"_blank\" class=\"SL_options\" id=\"SL_opt1\">选项</a> : <a href=\"https://gcxw.altmoose.com/manage/zxbannerimg/edit/moz-extension:/abc217dc-e5f2-e742-8d71-ca2b80416810/content/html/options/options.html?hist\" target=\"_blank\" class=\"SL_options\" id=\"SL_opt2\">历史</a> : <a href=\"https://gcxw.altmoose.com/manage/zxbannerimg/edit/moz-extension:/abc217dc-e5f2-e742-8d71-ca2b80416810/content/html/options/options.html?feed\" target=\"_blank\" class=\"SL_options\" id=\"SL_opt3\">反馈</a> : <a href=\"http://imtranslator.net/extensions/?tp=ff-ImTranslator&amp;a=0\" target=\"_blank\" class=\"SL_options\" id=\"SL_opt4\">Donate</a>\r\n					</td>\r\n					<td class=\"SL_td\" width=\"15%\" align=\"right\">\r\n						<span id=\"SL_Balloon_Close\" class=\"SL_options\">关闭</span>\r\n					</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n	</div>\r\n</div>', '1', 'admin', '2019-12-18 14:00:13', 'admin', '2020-01-03 11:23:07', '0');
INSERT INTO `t_zx_banner_img` VALUES ('3', 'http://gcxw.altmoose.com:8086/profile/upload/2020/01/03/68cd05569b7d0af5572fecca688f512b.jpg', 'banner2', '<div align=\"center\">\r\n	<h1>\r\n		banner\r\n	</h1>\r\n	<div align=\"left\">\r\n		<p>\r\n			测试banner2，有图片\r\n		</p>\r\n		<p>\r\n			<br />\r\n		</p>\r\n		<p>\r\n			<img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAASABIAAD/4QCMRXhpZgAATU0AKgAAAAgABQESAAMAAAABAAEAAAEaAAUAAAABAAAASgEbAAUAAAABAAAAUgEoAAMAAAABAAIAAIdpAAQAAAABAAAAWgAAAAAAAABIAAAAAQAAAEgAAAABAAOgAQADAAAAAQABAACgAgAEAAAAAQAAAu6gAwAEAAAAAQAAAVQAAAAA/+0AOFBob3Rvc2hvcCAzLjAAOEJJTQQEAAAAAAAAOEJJTQQlAAAAAAAQ1B2M2Y8AsgTpgAmY7PhCfv/AABEIAVQC7gMBIgACEQEDEQH/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/3QAEAC//2gAMAwEAAhEDEQA/AKgt2zSSRbDzWgahn2kAHr9K95M+QnGxSFOCgmtKLTmksnuAVAQ4KnrVMoAapmNxAvpUqrQq1Kq0AAWnhacoqRVobAaq1IFpQtSKKVwGhacEqULTxHnpUspJkSpT0hJFXraxMmOK04dOCjkVEppG0KTZgeSw7U5YC3at97JfSkSzwelT7TQ1WHZlx2pA6VMttWqLbA6UGEDtUuRrGjYzfJwKZswa1DECOlQPb80uYpwKBbBpQQRmrTWvFV2iKmgi1hcjFQSU4E5xSkZppEtlQqTTSlWivFMK1aJKxSk2c1YK80myncCHbSFasbaQrSuBXK0LHk1LtqWNOelJsa3ES3LD6U77KS3Sr0Kip9q1m5HQoXMs6cM5qdLMRjNXjijik2XyJFcRgLWZeQkscVsNgDpVWZNwoTJlG6Ofkgf0qs0JB5FdD5IbtTGs0PJArVSMHSOeZMVCyHNdBJZRHOBWbcWuxuKtSIcDNKknAFTW9i7uGxWlZ2W8gkVrJbpGMACplMqMCnFaKiDNI1mgOcVfKimEcVk5XN1HQqCJVHFI0YqduKYxGM4podtDMvLfdVKRPKjJNa0zCqEyhvpWiMZGNIPOzkVmzRbWPFdEyoOAKzbyA5JFaIxZkEc0hqdlwaZjnpVCIqniApPL4zSoMUFJkhFNIzTh9aUlRSHcrsKbnmpHxUVAXJl5prULTyvFJlJkOKMU8jmlApCGbaQjFTbajbrjFDLRCRzSYqTac08JSHciUGpQmaUKKfikARrg1YA4qBTzUwNIojlFVn61bkHFVWHNNCZERzQF5p5phpiA8UmM0pOQKcnpQAAcUGn9qaaAACrEXBqBTUqGkMt7uKgkNKWwKhds0BcXdSDk03IzTx0oGh3QU1qazYppfigGHQ08DIqEHJqQNgUCEkGKixxT3bNMFMBoFBpxpKAP/9CUjNRTK3GGIA56UqzDbSiTdxXupHx0pXI0kbbtGdrc9aANxp5QDFKq1ZlsKFqRVoVakVaVxgq1KFpVTmp1gJGaTY0rkQWpFU07yyKmiTLClcajqPhtjIQK04NPAwSKktYcAHFXegGKwlJ9DuhSSV2Oht1UcVZVOKrpJg4qbzKxldnXDlSFKA9qcsYx0pquCamUip1NFYYY/aomjq0ajbihMGkV/KpDEKm3VFI+2mmQ9CF8Y6VQmweKsPLnvVV8nmtoo5qjTICnNAWpcUbasxsQMtNK1Oy0wrQBDso2VLto20DsRbKQpU22kK0irFfZzU8aGl21KgpNjSHLkU4saUCgpmpaNU2M3kUgm5prA1G3FAuZosF80nDVArE1Mmc0mrDUriiMUx0qekIpF3KTxEGq72+9uRWkaYQPSmnYlxIIohGvSnEU80xjRuAhFNYcUoNFNDuVZFquz4FXXHFUJxg00RIrSkZqtJUklQ961SOeTK5BD0kkYkSpGHNNq0S2ZF1CEequBmtW7jyCazSuGqkiGw25OKjdCtSBqV+RQNMq7zRvqQxj0phjoHcQ4NNHWnFcUAUhpjlGKkPSmig0rFITipABioTwaeG4oGOcgCocgmnucio8YpWKuPGKcMYqMHinA0rCuOopAaXPtRYpAOtSA8VFnmnFqLFXB2zUDH5qe5qEsKQDzUbUF6YTnvTEA61OlQg4qRTQBIelRE0pPHWmGgBwNPVqhzinKcmkBY35ppNCrxQVoCw1aduptITQMR2puaax5pM0DJB1p2aYDS7qBCnpTaC1JmmAE0maQmkoA//RrrUqjvTUGalC19BY+JHAZqVFpqrUyrQIULUiihRiplX2qWUh0YGeashxgCq4Ug1Kq5pMtEoAY4q1a2+X6VBFGd3ArSgV8gAVlM6KcLs0I4giU0nnFSxxuVGasRWhLAmudyszvjTuij5LnkUoVs4NbP2dduAKgNtyeKXtEX7JmdkqamRz0qeS154p8dvt6ihyVgjBpkRYgc1EZM1YnGOMVVK4pxsxTFDc02Vdw4pDnPFLnNXoZt6WKDqc00KSKvGIGm+UB2qlIycGyltIoxVloz6U0QnPSnzE8hXK5puw+lXhbk9qcLUntS5xqm2Z2w+lGw+laYtTjpS/Yz6Uc5apMyth9KTafStU2Z9KY1oR2pc4/ZMzdtPRBVs2xHak8ojtS5ri5GhiIKUoaeBilIouUtCm61Ay1fZAajeL5aaM5Ipxr81WSMCojGVbiplGVGabHFWGg0po24oqS0xpFMJqQ9KhbrRYbYh4qNzUjDIqBjg00iGxOaUGoy9AkFOwuYe/Ss+errSAiqsoGM00TJmdJVdjirMo5qq9bI55PUYzZqFiQaV2wajLZqkiWyKaTKkVRZfmq6wyaiZRmrIbIFh3CrCwrt5oAAFJvIqRpkckHHFVXQqautJTCoegq5R+tLsOM44q00QFSRopGKBplEClKmrEkYU8VHxSKTIWBxTACKsMBioxjNIdxMcUxutPZsVHuoKQ3NOBpDQKQxwOKXdTaKAuTxRlwSMcetRsfSmiVlzjvTSePegaEc1ERTyDSYpFDPrTCfSnt0puMmgA5p6mlVMinFcCgBCabS0mKACnKMGkA5qVVoAep4oJxSAc05lOKAIicUwnipGTiom4pDIyeaTNOIppoAcDxRmm9qM4pgO5oJpu7ikzQA7NGabmlFAH/9J8du3XtUvknOAK1LK2EwxWj/ZiqoOK9t1D5ONFswVtm25xTghB6VvfYwUIC1Uaxbf0o57kyoMopGT2q/BaFhyKv2+m8AkVpw2YVelQ6qRrSwze5gNaEHpVmDT2btW2LIMeRVyG0VR0rKVU6Y4NXMy300qMkVfhsgDnbV9YuMVMqYrCVRs7YYdRK624A6VMsftUwXmnge1ZtnRGnYh2Y7U0p7VZ200rU3KcSsUGelL5ftU22jFVchxM24iJNVTGc1ruoNVWQZrSMzCcDPK4qJuKvSIKrOlbJ3OacbEYangZ7U1I8npVyGAt0GaUpJDpwctCFYcjipY7RmPStGCzCjJq0IwvQVi6h1RoGcth61KLRFHIq6R60wjnpUczZr7JIqG2TqFpvkD0q5tzTGXnijmYezRW+zj0phtwT0q3ikx607sHFFFrUelQPajHArTYVGUoUrGcqdzGktyKiKEDmtl4QRyKqyW4rWMznlSMsjFJnirUsJHaqzDFaKRjJNEZA9KTAFONJ2qhJjGHFMNSEU0igY2o2XmpDxUDyYNMTYMcCqkrc1M8nHWqsjZppGUmRMx9aZvxSMeajarSM3Ik833pkkmR1qEtUTPnvVWJcgkINVnNPZjzURqkQ2V5RUJOKsuKhZefeqRLISc1E1TMMHB4NRPTJIy+KZ5nvSPUdMCUnIp6jAqIdKlU5GKTGIx9aRBg5qXYO9OCAUiiCXnrUGCDVx1FQOtBSIH6VCetTtUbCgaIWphqVqjagoQU4GkXk0/bUspMM0hNB4pvWgAzS9aZyKUEigB4XNIQKcppGpFpkLU1etSEUwDmgZMvApCcnmkB4oByeOaVgsIcCkoagdKYNCjrUy9KiFOB5pMGyZRk1KRxUSMKkZuKBjTiq0g5qRmOajY5NIBhHFRkVMaYRQA0CmkVKBTWFMCPFGKdiigBpFApxFGKQH//0+q0uMhulbyorLiqNlCVUcVpImDXozZ41GKS1GeQB2o+yqTkirqrnHFSiPPas+dmvs0yvHCAo4qysY9Keq+1SAVDkaKFthqxDPSpgtKoxTwKi5pGIgWnhaUCngUi0rABTgKdtGKMVLLQ3FGKdSHpSGRkYpp6VI3NMK1SZMloQtULLmp2XmoyKtGLIGjyKrtEc1eKk05bfdV81iHT5inDbFj0rTgt1RenNSxQhBwKkxispTua06XKNwAMUdqWkNRc2GGkxTsUYp3E0NxSFakxRii4rEOygrUuKaadwaICtNK1MetNK0ybELCo2UVaCjmmvGMZp3IcTPlhDVnzQEE1rEYJqCWPcDWsZGFSncxWBGaj7Vcmixmqb8Gt4s5JKwmaaWxSk1GxqibjXaqz1O1QsKaIbIHNQNU7ioWFUjJkDdajccVKRzUbCrRm7ldhURHNTsKiI5qhERFMK1MRTCuadxWIQmWqe4tES1jl8wHcPuDqKbgjpTGPfHNFxWKTpgnHAqvItXXGck81XkSquKxSYVHirLJUZSqQWGKKlRcGmDg1OmGFSFhSeKKXbQeKRQhxioJPYVIxpFwx5oGiq6nGQKhOc4NaixqQaqy25LHFBdii9RkZq00B71AUINAxi8Gn7qNuRRsoYC4zRtxTkGKeVzUlFcjNAGasKmRzTGXBouAwDFBFLmlPSkMiNR96lYVGRzTC4A1JHEzjgGo8ciul8OLYyXKLfErFg5IOPpQTKdjnXTb1BpBWxrSW4upBbHMY6VjDpSCEm9xaVc0AZqRRQy7CDNP5Ip6rUix0ikisVNM2VcKVEyVIyDZTCKmOBUZpoBlI3NKaSmA3FAHNOxxSgUWATFAFOwaTHrRYD//U9Jt4sKKtqlNjX5RVhRXY5XPNhFCouKmUU1akFQ2aIMU8LSiniobLSACnUgpwoGhwp1NBpR1oKJAeKWminA1LLQoHFB6GjNNY8UkgY00mOKaW5oL1diGxrCmkCn5zSYprQhoRFycVaSPaKjiTnJqfvUyZcIic0HNPxSVBqNxRilNJQIbilApaSgAxRilFFAWGEVG1TEU0rmmmJohApccVJsppXiquTYgzyalABWm7OacBRcLFWRaiZflq6yioXXjirTIcbmXPFkGsuZME1vSJwazLqLkmtoSOOpAym4NMY1NKAKgetkcktxjGo2pzVGxqjNkb1C1TGomqiGQkVGwqRhTDVIhkLCoyvPSpzTDVEkBFNIxUrVGelMCMmozUjCmEUBYiKioZFqwRUL0wsVWXmoytWGHNRkVSYrFdkxTUcqcVOw4qs6mlcLE5lGOtIJQahEZK0mCpoHYmIyKYwxUqkbRmmuBSKSI1mIyKPOxyaY680xjxQUT71Ze1U5gBmml9rUjvu5oAapp4xUJOamiANAD8CnouaHUAZpYWpMdw24FROtW1XNI6AA0guZ5Xml7VMRiomFAmyPvTCOakI4ppFAuYb0Ip6ysmcUmKMUBdMWSRn3cYpuOBS4pcUCQiipVNNFHeg1TJg2KkV6hUZqTFSy0yYc01lpA1KXzSGQPFzULR4FWmPpUTDIpoCqRzRinstGD6UxEZpUUscAGnEcgCtDS4I5LhVkOFJAJpik7FBkZeoI/CmV1HiTT7KykRLSbzU25Jz0NcuTz0oYou5//V9WRCBUyipdmaTbiuk4eVAvFSCmU4UmNIkzTgaZTxUstC0oNJRQMeKeKjBpwNA0SZpQaj3cUBqLDuS5pjNkUmeKYTSBsQimnIp9I3FMzY0NT15Oaj25NTwr82KGOOpaVcKKcBg5o9qKyOhKyCkNBpKBMQ0lKaSmIDSZpTSYzQAA0ZoIppOKdhXHZo60ganClYYmKaRmn0hNAMYRSbadmjNMQwio2WpiKYaaYmVXTtVG7jG01ot1qtcJla0i9TCoro5y4XkiqbHnFaV2mGNZj9TXXDY82pGzIn61Gae1RtVmTGE1GakNRmqIaIm61G1SN1qNulNEMZTDTjTGNWSMaozTzTDQIYaYaeaYTTKGGonFSHrTWFAiAioyKsbcimFaLhYrsKhYVOwqJhmi47EZOBioGfFTlagdaYrDRIc1JvqEDBpWbFAyYndxULg0qvipMbhmgoosvOajJqzIvWqx60wDtUiHbzTBU4QbKAF35Xk0KcU0JuPFSiPApMknhbinvyOlQx/LU24bakLkJQAVXfAqxIeKqMcmmQ2Hak25p6jNTxx5oW5Ep2K/lkAGgpgfWulsvDNzeaeLwfIG4jH98VjS27Rlgy7HDbGU+1SmrhdpXKGKMVK64pmKZcXcbS0YooZomODYp281HjNLikbRHbj6Uuacq5oK1JQoNNalxTGoHYEXcfwrRutKltbWOeXAikHBHWqMR2tnGasTX0jxbWcyIvAT0pkNMzyuGOakhkaM5U81GR3oXrRcdrrUllmLLtHAPX3qvtz0qbbmjbjincFFLY/9b2XFNNJmjeOlb3OQAOalC01RUy80mxpCBaNpqUCjFIqxFilxUu0Um2mIZRSkUYoASjFOooDUTtTSacaiY4oE2P3Uhao80ZqrENkoNWIBVNTV63+7Uy2Nae5OKDRmkJrI3EJpM8UjdaKCQopM0Z4pgJS5wKTNNJppCY4tkVGTRnFNNUkIcDTwahpwNDQiYGmtzTc4pQcilYY2nKaSm5xQA8mmN0pRzTW4oQMhNQzH5amNV5TwatGUjGvRyax5B8xrbvOhNYsx+Y11QPPqrUrk0xqc1MNao52MNRmnk0wmqJZE3WmN0p7UxulNGbRGaiY1ITUTGrRDQ0moyaVqjJoJA0w08c07bxQUV+9Linkc05VzRdDSIthJ6UhiPpV1I+KeUAqGzRRMh4iD0qu6YNasoFUJQM1SYmiqeKicVI/Woyc1SZNiE8VXYnNWWFQOKYWG78AVIsnFV2pFbFAE0hJFVmGKn35FRuO9MCMGpVfoKiIIpRQBoJjZRuFU/NOKBIc0iWXyvyZqBpCOKaZyRgUwZapM27Di5NNxUiKGp4jweeKqxm5DEU1egiDMoP8TAUxIG6gZUdTW5pGlveyuysqJFh9zdD7Ck3ZESlfRHdafCIbZF/hRBHXHeL9NW0vlkT7si8/WuwhkxblM/x5P5Vz/jEhrO3/v7z+IxXLBvmO2q4+zVjgZF5NQ4qxMCCaqMSDzXSc8GOIpKM8UDmkzVBilVsUoHFKFFI2iyRSStBFSKoxikK4FI1RGTTStKeDQWFA2HQVGetPLDFMJphcMZpQlNByalDcYxQSJto25oJpA1AH//X9bMgxxTBIN3JqrvOOtR7m3Zya7OVHmuZsxyLip0YGseObGKvwS5qJxNYSLw6UtNU5p9ZI3CgUzJ9aUH3piHcUmKM0ZoACKTFOpDQAw1A9Tk1EwzVIhohzSF6eyGoiMVRk0Soa0IPuis2OtK3PyVMtjWluWKaaWisDpGsKMUtFUSNIoxTsU09aAGmmmnmmkU0wYw9aSlIpAKq5ImKBwaU9KZmgljyaTdim5ooBMkHNG0U3NBNFh3F+7SE5FNLH1qMsfWkhNiN0NVpPumrBNV5qtGcjMvB8tYkw+c1tXh4IrGlHzGuqmcVUrMKjYcVOQfQYNRuMZBFWczRAajapGqI1RIw0x+lPNRv0qkRIhaomPNStUD1aMxhNMzTmNRE1RJIp5qdcbRVMHnrUnmhBlmwPc1MmkrsuEXJ2irsmZQadGoBqutwjH5XVj7GpVmFRGUZK8Xc1lTnTdppp+ZbwAKhkpVlB70OQelIasU5elUpavygYqlKKpMlopt1qJqlfg1CSOneqRDQbCRwM1DKpHVa6TQLK1vLjZcyeWu3OfWs/WIIoLiWGF9wU8NVIjmZhuvFREVO9NCZp3LIc0A881IyVGRii4WJ9gZeKaV2inwuCKbNKoGMUrjsRE56UzNM8zrTS9FxNEwYE1NHjIY84qmrVYhbn19qRjNWR23h7wqmrWjXEt55aj+ECr7eE7OPKxXpB/2gayPCWvHSrja3McnGOwrvXEMw8yMh0bk4rnlOSehpGEJxOZt/DIglZrvdJb4+UxHnNWdO0ky+YLYM49H/AIea3obDznLWrlCBW1o0EcbM23D9Gb1olVaREcN7613OeETxXpjcZVl6gYGa5fxJcG6uhGqnZFx+Nem63aAQiWNQG6Fs4A965WbRIFQq6u7Mc7933jRTqKWpdeg4z5TzOWElvmBz2qpcW7J94YNdtrmkGweGNSrs53ZPUCsLWJPtMgcxJGVUJ+7GAcf1rdanI5crsc8PSnUjZAJPBzQDSZumPBp61EDzUocDtQbRZMGpGYVCZPSmlye9I2QrHJqMkinUxjQNiFjSZNNzRmmImQ4FPLcVApp+6gdhWJpAaTOTTgKAsf/Q9QCcU5YgRSqQRTlYA113PMsJ5OKtW64pi4YirMagUpM1iiynSn5pg4FIWrI6B1GcVGT70madibkuaAajDUoNILkuaRjTd1MZ6dguKTSe9RGTmgScVViHIkNQuKfv4qNnFMiTVgWtC2Py471mBxmrdtIN/WpktCqctTRooHSisbHWJRSmmimKwtJilooEJikIpxpKQDCKaRgVI1RmqRIw9Kbg08ijFUIjxQacRimkUCEBpcikNJTEITTD1p5ph60gEPSoZOlSsarTPhTVomSVjMvWBJxWU+Cxq9cyZY1QIy1dMNDgqasckcbIxkcr6cVTkzjHep2JqB6u5i0V2BqMg1OwqIiqRDITUT1MwqJ6pENEDVC9WWXNRmImqIaKjGmBSxxU8sR7U1Eweaq5NiC4YWsBkYZPRR6mqcFlPfDzXbC9if6CrmoWk9yYxEoKrnPOK0Y4xFCiDooArxKuHnjMVKNZP2cdlsmz6/C46llOWwqYVp16jd3o3FLpbpfzMWbSXjXdG+4jsRiksrhnbyn+8OhNbLCsXAOtYTpv/pzWGIw8cDWp1MPopOzXc7cFjqmdYSvh8daThFyjKyTTXp/W5oqCBUyISKeqDPSrCKAOle6z4lRKkkJK8VQlTGa23UbazrmMdqSKaMeQHNVX61flWqci1qiGC3TIuFJz2qKecy4B/E001E1URyIYetSKMDNQk4NPVuKRVgeoWBNSsc0w4oHYhLMp4qNyW5NTuBTNmRQIrmgDd0qUQlm4q1FahRzSE2VVibPSp44XznFXI4RnpVryVC5xQYykQQfu22g8etbNnrV3YD93KQv9096ygADmmTygDrTdjF3ex2ln4tuCyqkeJG4yO9dRYajM2N0n3jyPevLNJnU38O+TaN3WvSLS6toZFidlxjls96ylFbGlNSbu3sTav4mjXT7iykjLyHIx0wPWucsfFBijFndfNAnMbjhhWxrGnW17cn7NPGQq/Nk1wOrIttcMsciuB1I7VUKcUjOdWpOrzNm1r2qw6nqMTxOWhVAqkcfNSazF5WmW8ciRhvvbkINcmLllbBPy1N9oknGzeW3cDParjoRJczuylKmGZs55xio884rRuoNqriMowHOe9ZjcNSkbw1Q/NKpHeow1OBFI3SJSAaULTN1LupGyBuKgdqkcmoGBJoQxM05eaQITUgjIphYUCgilCnNOKmlcoatS0xVOanVMii4WP//R9RHApAcml6imgEGus80tRdqtxmqcdWUNSzaJaB4prMBSBhjrUb1mi2x2fegECoQTTs1ZNyYGlzUIbFO3UrDTJM0x+aTNIaaE2MI5pOR9Kf2qJ2qkZsC1Rs1IWph5q0jJsC+Knt5cMDVQ9aej4NEo6ChOzOghk3JxU2eKzrObkD1rQ3AmuaSszvhK6A0gpxptSWLRRSc5oAWkopTSAYaYTTjTDVIlhSUlLVCEPNIaU000CYhptOplAgNMNPJFRM2AeaEDGO1ULyXapwatOcITmsa9n6jNbQV2YVJ2RTnly1Q7hUcj5aoy+K6UtDglPUmYjtULik8z3prSD1pCchj0zGaR5qRZc1RLdxjjBqIjNWDhqYVppktEGMUVMFzQYz6U7i5SuyAioGjq4VNRmMmncmxEi1Jt4qRIsVXv7uOxh3Ny5+6vrWdSrClBzm7JHRhsNVxNWNGkryexV1C7W0iwOZG+6P61V0q0Yk3MnVvu5/nUdlaSahObm4zsz+ft9K3kQDAA4rysPGeMrLE1FaK+FfqfUY+pRynCvLsO71JfxJf+2r9f+Do1EqXtTtuKa1eu2fLJEbtxVOYgirErYHWs+WT3oRLKs4qhIauyPkVnyN71qjMibFRPTyajamBAw5oBIp5FJigoUc01hg07pTGNDCwxjSBqaxpu6puJonR9pqwku7iqO6poTg0GckakWCMkVM5GyqqSALQ8+F60zFxEkkCiqE0hI606abiqTSEilcpQsWoZzGQ3Bx61b/tScyM+87T23VX0+xlvpkhiQu7dFHetyXwnepbyyNbsqwjL5/h+tUkRNxUtSgmtTgcMwyMHB61BLeK6kMvzHvVOZHhcqQc+lQOWHfOaTLjRp7otbwat2c3lSBiAQD0rIEmOtTLIwPGRUpjdO50ur6wdSWPeqKUXaNq44rnnIOcHmlVi3fdn0rX0zR5dUk8qFCz4zgVRCXLoYQYelODVb1GyazuHhfhl4I9KoA4PtSOiLLIYUoNRJzT+lI1SHE00AE00mlBxQVYsJGKm8vioY5OetWVcY60hkLRkcim49asFgahfGaBAo5qdRgc1VD4NSiQkUAf/0vUIjkVMEwKhi4qbfxXWzz0xwwKkRqgzT1bmkVctBqCaiDUpepaKuO6UhYCoy1ML4ppEuRNupN9Q+YKb5gquUnmLQel31V83FHmijlE5lhpPeq7yc01pKgZ+c5qkjOUyUyUxpahLjFMMlapGTnoSGXmlEvNVy1CtRYy5zUgnIII7VtW8wkUZPNcvHJhq0ba5KNnNZVKdzro1raG+Dmg9ahhlWVcqeKl6/SuVqzPRTTVxQaU02jNIVw70E0ZppagdxGNRk04moyapIlsXNLniowxpc0ybjiaQ4ppNNJoC44mmFqQtTCfWnYlscxGKrSyccU6WQDiqM0oAPNXGJlOY24n2oRmsW4l3E1PdT7s81nO2a6YxOSpO4x2qJjSs2TUbGtEjnbEZjUTMaeaiPWnYi4xmpu/FK1MNFhXLCSDFSZFUt2KlEwNHKNMsqMmrGwFaqRyqDzUpuV6ZqWmWpKw5owKiK80plBpu4UAQ3l3FZW5kkPPRV7k1ywnS8vfNvZCqegGePQV0l1YW124kmDMQMAbuBVN9KslzhD/31Xj47CYvE1Fy25V0b39T6/JMzyvL6D5+b2klZySWnkrv8bB/a1giBUYhQMABTSx6tas4VXOScD5TVc6fZD+E/wDfVM+yWqOGRTkHI5rWMcyVl7tvmc1SfDzTadS/y3NwSjGM0x3qkkpJqVnGK9Vo+Z5hk78VmTPVud+KouRTSIbK0jnFVWq1JVV6okibpTCDTyaeACKZSKxzTM81YMZJNRPGQKLjSIy+KiZ+aSQ7TURbNK5SQrNTc81Gzc0gbmgdifPNTRk1AhyKnQ4pEtE/m4FQvPTXfFUpZOaCOTUtNIHFRbaijept4pXG0aGnXrWUySIcOPun0NdpY+K4DDdrfNv81McdM150XpnnsoADEDuPWqTMXQu7mrqLpNcZQAj60kEcU8HlLD++Y4U+9ZfnA4PerFtdtblWUklTkU7l8jSLeo6NdacVE0PluwyM96oRREvxkDu1a9zq9xrLx/aJDLt4X1FSS6fJYOGlTYxG4Z9DTsReS0NDTvC9zd28kyRl1iXcSeO2apJfS6ZciSJyjjjg1fPie6jgdEl2K4AIX2rmbu685+Tk5zTvYUYNu7H3l4bpy7El2PzE1WAJFR7uc1YiINZs6VGyFjBFSbTTgAKduGKCiPy6PLNTKVPU1IADSKKwUrT1Jqcw5GRURBU0APDcc01jSZpp60yQwSaeAcUq07NAH//T9NU8U8NUAYAUeZzXZY829ifdTt2DVYyULJk0WDmLgYmnZqJWFSbuKloq4hJqMt608kYqBmFUiGwaQCmeZUTEZpAatIzciYyUnm1GTULEg1ViHIsGX3qMyVDuzRmqUTNyuS7+KaWpm6jPFUiWxd1KDTM0oNMglB5qeOXBqqDTgaTRUXqbNrdlDwflrXhuBKvFcqkhBq7DdFCCDXNUp3O6nWtodFmkzVKG+VgAxqwHVvumudwaOuM0yXNNJpm8dCPxo3UJFXFPSmnrS5BoOMUxDSKbmndaTaAKBDSaYxpWIFRM+B1qkhNi7wOtRSTAConlwDVOa52DrVqFzKU0iWWYDvWXc3OcimT3GTVKSTJraMbHLOpcbJJkmoC1OdqiJrU5mwJqNjSk0wmqTJYhNRMakJqJjTIY0mmE0rGoWamiQZuaTfioyeamjgaReBVAmM833pPMIbNWlsWPWmvaMpqW0VyyEVyalBwOamgtwqciorv5F4FK6ehVmhrSDFVJputVnuCGIqGSbNUokOQkkx5pqS5NQsQahL7DVWJuaqyAUklwB3rKa8IFVnvCTSsNSNOSfd3qAsSaqRylzVlRkc0WHca5qu9WZFGKquQtAyI1JGM0zGanQYFBSF21G68VKzcVCzVJSM65XmqjcHFX7g1RbrQUQNTQeakK0xgBQVYkD7akE1U2b0oD4oDlLTzVVkkyaY0majzmgaRMj4NS+cKqilzUicSfzhTDJk1FzRTGkTK2DVhPm74qmp5q9CAQM0CsXrBMSLs4561uagbicA3LMWCgAsMcdqybA+XNxtBByCa6PVZZ7yK2muHQ8bAFHOBWiOao7M5K6JBwOgqnjc1dvb+H4b3R7m689UaE8K3U1yEsYSbA6Umi4SIhGaswx00AZ5qwpVRUN2N2gfioS5pzHcKjCZNBNhyuasxP0qJIqeODQMvIwxUE5HanIMimSR0ARA5GaQnBpcYppyTTJJUOamSEuM1FbxFmGa14YwqUMEf/1O/STNSK1RtCUXNQGUq2K77Hktl3k0gUg0yKUtgVehj3dqWw4rmIlLAVIHNWvs/tUclvipbNHBldnyOOaru5q8tujLktg1UliwxHb1q0ZSRWL80BjSFDmniIirMthCx9aYW5pXVgKgJINUkZtj8804VEG4o30ybk9IelQ76N9MRKKUCmoc07digQvSlBpm7NKDQBJuNPVyO9Qg06lYpNltJcHNWUumGNrYrNBpRJg9ahxTNY1WjdS/4+fmplu4274rnxNjvTxOR3FZukbrEWOg89OzUvnKe9YH2ojqaX7V71Lpmirm75qD+KmtcLjrWG1370w3R9aFTB1zVkuBnrVaS5wOtZzXBPeoHmJ71apGcq5bluuKoSzE96Yz5qFjnvWijYwlNsGYnvUTNmlY1ExqkjHmEJphNDNTCaqwrhnmms1ITTGNNIlsCaiY04momNOxLYjGoXNPY1Hgs2KrYjcWNC7YFbdtEFSqNpAQckVqKQFrOTN4QENRMwzk05z8tVyCahXNL9hGuAGwOKq3su5KfLFnkdao3O4xkVcY6mUrmfK4JPaqxfjrRcEoxqsZK2SMWyVnwOtVpZfekkk61UkfNVYQskvaq5fnrQxFRkiixSLkEuO9XVmAHWsVZNtO+0kDrSaKRry3AAzWbNc7jwagkuSVquGyc1JSNGGfnBrTiwyZrn0fBGK2LafMWKTLSJJDjNVXY+lWyNwpPs2akpIz2QvURg961TAFFQSIAaBmc0OKrSx4rSkAFVZQDQNGewxUZNWJFxVdutBQzpQOaWlC0AAFKBntUipUixGnYTZH5ZxSGI1cWI0GMikK5TCYNWoew/lTWTmnJ8uOcUDNOwO6UA7Sc9DXbazEi6FaS/Z0j6gOGGSa88Wby3JAOfUVs22rRzKIrx5HiCHYvOA1XE5qkbspyajImYsnnORmqLy723HrUlxE+3zSpRCflY9/WqjE0mzWELIm304SVWBzThmpNC7GwNPIAOapK5BqcPkUhFtTkUHGaiRqlUAmgC1CRinyAFajQcYFKeKAIyny0xY/mFTgZpxAUUCsPiUKM1OJaqb6ATQB//1fTJFyhrMljIck1cjuN30p7qjjiu1No82UUyKyh3EGtqOMKtZlt+6NaSyAr1qZXZUIpEwIGM0yVgaaTkUzac1FzRsj201lB4qwRUbLVpmbiVTCAc00gCrLD1qvJiqTMpJIrOAc1RmGDV1yFqq5BNbROaZWJNNyc1KcUxiMGtTAAaevWogaepzQHMWkYYpkj4NMBNLjI5pFXBTT91RdDS5pEku6nBhUIzS5oKJd1G4VFmkzSsFybdSbqizRmiw7km7mjJ9aavNSDFKxSY3HvRincUhNBQ1hURPFSM1V2agTAmo2p2ckU5o+KoRWY1Expz8ZqFmoRDBjUZNBamE1RNwJpjGgmmFqaRLAt2qJmpWNNxmmA0nPFWbe3JOarHhhWpaMu2k9girslSMrUwGBUg2mmSECsjpS0ImNQO+Kez1WlkxVdRMSWTANZlxcgA066uMKawp5mYnmtFHqYSn0EuZwzHFU2kIoc1XZq0RFhzSVC7UjN1qMmmNICaYTQTUbNSKSAtTc07bTlhLEDFDZSRCTRg+lXRagdRTxAPSpuUiioOau27kcU8wgDpSImDQM0bds4q+qjFZMT7TV2Of3rNlImmwFrOmarcsoK1RcgtQUVpSaqyPVyUBulVZEzQIqSHNVyOauNGTUfkkmmHNYgC1KqVYS3zk44FWY7Ulh8tNK5nKaII4MjJXNWUtz1U4HckVp2Ol+YkkspKxx4z6n6V1Vj4N+0Sxs0w+xkbsjqfanKVjGVSU3aJwohwhKhsdMkVG0ZD/N6V69qOhW0ujSxLCqxxoWVwOcj1ryu4j2MR3BIqU76mrvF2ZmMOM0we/NTyDrUIUk9aZonoIuWGSc9sVI8Twkb1KdwDSDgjgDHepJp3nUFzuI496SAja4eRAjElR0BPAqE9accgcj8qaeTTaGrDlp9Rr1qQDNSVsC9asL2qHGDUqGmIlI5p6kimjmn4FITJ4pKlZsiqyCrAHFAhUalc5pnSkJoAXNKDUeaN1AH/1ukt9TX+9V1NTH96uDjunXHzGrUd6/8AeNew6J85HEncR6mv96r0N8rAfNXAx3j56mtO1vXGOTUSpmkcRdnbrdLjrUguRXPW1y0g5rQDELXPKB1qpdGmbhPWomuVHes8sxHWmZOetNITmW5bketVZLj3ppGaY8WRVpGUpNkUtxVYz9ealeHPU1GLYZrWLSOWdyPzSaUMSKmFquKUQgVVyVFkShqlRWzUipUyKAalstQIlQ5qTZxVgKKVlGOKm5py6FJlIoVqmZahKnPFNMza1H8GmsuKcq0MaYmRmmFuaVjzTCaZNx26jNMJxTS1Ow7kyuM9afvFVC3NHmYpco+ctGQetMaWqplphl96XKPnLJlqIsTUQenKcnii1gvclUHIqwPu1EnFSkjFSzVIrTKMGqD9cVenOAao5y9UjOREc03aTVgpkUiJjrVXIUWVWBWot3WrsyDaeKoMDuOKpMl6DSaFPFIVOKAMUE3H4zVy1jYVSVgG5q9DcLjGaT2NIuzLw471XlkIpTMMZzVeaUEVnY2voNaWq8rlqRm54qaKDf1GaohamdLbtIDWfJYsCTiunaEKOgqjOBzxVKQnA5O5iKMRVN62tQh5JxWPKuM1omQ0VmNRMTT2NRsTimOw1jikUbqack9amiTjNBSRKicVaiRRioUFTIcVLY0TEAnpSBKVTmlLVNyiMiomGDUrHNMoAYCRT0lNGOKZtPakMsF8r1qAtzilPC1AW5oGWMZFMZAaWNsjmlPJpAQGP0FOSDPapgAe1dD4asbS6uTHdKr+gahuxlJNmbpWlC+uhEVBYDOMHBrWTT7R7g2zwGCTOCw6Gu9gsYYREI7WFSB3HNWBptpcuFktIxk/eA5qPapMzlRk1ucmNDlXS4oUQsGcgvjrzxXX6fapawJFuMcMQBy3c10tnp1vHZCHAKjpntWXfSxwQOpBVUPHvWTq8zsaRoSoR5mzktf8Q2sEFxb2pZnYYb0rzG5f5if7xzXa+I7bz91xCiI7csB3HrXC3BJzkYx6V0QWhlKUpSuynIeTUJapHFRAEmqOiOiAk5FXLe1knO1Mn1AFV9mWFdN4e1Eac7uIUlLLt2v2J700iKrshlh4Vub2GR4ISwRSWJ7CsK8s3t5GQjpXo9nrlpa6ZdAMy3svTGMY7iubi086xqKQxsvmv1LdBVGEajucoBgDing1rappZsLh4HKlk4JFZ3l84rNnUpcyIyKFOKeRTdtBZIr1IGJqJVqZVoEyVDU4bioVGKkFIQ4mmk8U7bxTStADCaaXxTytRsvNMR//18xYXOOKtw27EdK0EtxgcVZiiHYV7TkfLqmQWtkWIzWvDZKtRwrtq5GwxzWcpG0IWJ4RsHFWRPxzVFpQvSojc+9Ty3NnOxqC4HrSGTNZPnNng1ZSU45NLlsHOX9/FNMnvVcPkdakQFqB3FZuKaH56U1/lNRlwFNNGUmiYSjPNDOoqhJIckg0RzFiMmqsZc5oBzjNOWXmoVcbaXIPOaViuYtrLx1oMwx1qpuNJk0WK5tCd5femh81FgmpFXFBG7uWEHFMlwBxQsmKHYMtMp7FUnmmk0PUeTVIxehKqlj04prqVyPSrunzQxShpV3LjpUN9JHJM5jXaKBXKZNMNKTSZqguNIppBqUDNLsqRpMr8jrViLFMZRRGcUFxLQPrRvqLfxUbSVLRrzCynNVwnzZpzSVHvp2JkybIApmajMlMMnNArj5G4IqoVyxqVm5qPPJpohkZGKhc81YPNQOtURYhdqRJSrdacV9aaVGKdguWlmLDrTly5rP3lTxWjaHd1qGrGkW2TR2+Tkira7UXiomdUXrVd7jnrU2uarQmmkzkCqEpznNSNMPWqU84GeaLA5FW7G4GsS6jPPFaM9xnNUpXVl5raJk9zM8vJ6UNGMVa+UVDJjNMpFRouafGMU89KbnBouUkWEFSCoUan7qljSJN2KN3vUBb3pA9SOxOzcVHv5ppeoi/NMLFnf70bqrh6cHpDJHbNQN1p5OaaaAFRsVOGBqsDzUgbFAFhCQetaNncvBKJUOGHSskPU6TYpmUkegW/jGZLTyxApmx/rGra0jUma0E7Numc9ewry5Lr37V0miXxmgWAyhMMOtZyhczTlc9Dk8RfZ4Q5YFuntWTrutraop81Z1k5YD+GuP1zUc3PkxMrBcdO5rCub+SRtrMTVwpxMqlWpJ2OgudbsGs5lZ8znhR7VxUsmS2BjJ71s2ek3GoozQxs+0ZO3sKyL6BoJCjFtw/hNVa2hpCV9ys+KiAApS3HTHtTc1J0EinB5q7bzMECcbdwPTmqA5IrY0y0M4dxIq+WCcHvTSZNRqwyd3DEnIJ7Z7GmW2oPburKxVh3HWlv5HnbcyqMADiqHTrTbsRBRaLtxdtc5ZiSx6k96rgc5pq9KkFSbJWGlaTZTxTgtAXGKuOtSik20o4oESCpFGahBqVWxQBJ04ppPFIWppPFAATTcjFITSUAf/QsiccCpo5ADWQJQSDmrKzg969lxPmlM2UlBxipvNAFY6XAXvUouN3elylc5oNN6Gq7y4NVjMRUElxzVKJnORppMuaspIDWCk5Bq7BdAHk0nEUahsb8VcgkAXmsnz1IHIqNrwrwDU8hsqiRqzyqSapGQkmqv2hmHWpIixoUTNy5h7E8mmBtvSnFWPam+Wc9DVXJcSVLg9CanWaoEt8jNKybaBWaLatmplGapRtirCy1LLTLGAKYXHemNLx1qBnJNCQ+ZFkvSb6gyaXpT0JbHkioicE0rNxURNUiGO3EdCRTSxJJJ60maQmnYSF7UmeaQmm5pWGTBsUu6q5ak3mlYpMmZqbuxUZemlqLFXJS9Rsxpu6mk0WC4E00mgmmFsd6LCuLQaZvoLZosNAzUzNI1NJosIcWqJmoZqiZqYhGNMPSlzSEZpghqrk1djmEaZqrnFIclaRaJJLosTg1XMrZpwUYpj4WlYbbEeY+tVJn5PNSSPVOaSqSEV5TkmqjsafLJ1qs0gxVDFLUxmppkFRvIKGUhzNgVB5nNNeTNMAzzUstIuRyZFOLmqasVqXfkUh2JC5pvmc1GWplAFjfxTS1RjpSgH0oAkDU8NzUQU09VOaQEuaCaQCg0AJ3pc03NFAh+6jeRTM00mgLE6S4NWI5yvRsHtWeGxU0Pztx6/lTM5aamnDLIrBwoLZyCR3qvcO4kLOACeTgV2PhzSbQktfZVFXcueM/Suf16APcu0Qwm47fcZq0rHNz3ZLoviGfTEk+zuFLrsOR2rK1CZrqZpGOWY8moIo+Tnj2qfaMYqXI3jT1uZpjNATFXmjFREYNK5s9CsBySM47cVp2KEktjjHOOtV7eJHnjjkcqp6nFbek6Ybq9MFvJkFsAnvVpHPWdkbup6BYRaDFfw3KySPgGMdRXCyxATEdhXV6tYzabI0EnDhcnFcy3LkmpkhUXciAxSk+lDduKQZNI6mODU8NUWMUo4oJJs03NMzTc0AS5pwaoN1OU0CLANITTAaCaBik0maYTzS0E3P/9HCWdhUq3LVSBp4PNe+0j5Ntl77SasQXRzzWYDTgxBzmlYm7NtpwV61VeU561TEx6E0GT3qkgbuWxMc1ILggVn7zTw3vTaRGqNFLuQdTxT/ALQxNUFf1NWIhuPWp0Gm2aUEjZ5rSt3zWZCMAVdiODWUjWGhpDFNJGajVs084qDZscGwKY75pG6VCxpohskV6d5vNV80ueaZNyyJMinpVdOBTw9A0XFGaVl4qOGQU9mzSKViJhxUDGpXNQNzVImQm6gtUZJFN3VRmSbhSFhURamFqdguSmSm+ZUJaoy1KwJlrzKaZOarhzSFs0WKuWRKKQuKrHpTSxFFguWd9Rs9M3UhFIodupQ1RYpRQUiRjxULNUvUVC4oAYWyaaTRt5oKUCG5pwPFN20hOBSGhSRRuFRFqaWOKCkSM4qCR6Qk1DK2KaAjlkqlLIaldiTUUkeRVAUZWyagNWJFOarkUDSITSFcilfviow2KTZohNmDUqqMU3Ipc1JaGSDBpAeKVzmmbqQ7D80Co91ORuaGFidAM81OFGKhSrC9KQAEp20UZpC1IB20YpjYpC9MLU0JgaQmmk0hNMkUtRgnoKj3YB9q6Hw9Z2d5dLFeTmGJlJ3rjOfxqkROVjAYMD1qW3lEb7j93oTVzVoYIruSOFi0anCsepqxpug3GoRO8ERcIMtjsKpIylNWszo4PE9xPYx2kiwtCBjcAMgVHqN1pj6UI44GFxnhiTVbRZLO0ndb+LdC6FM91PsKydQAUt5bZUMdpJ5xniqa0OaKvPQrMQr9fwpyvUHJOSacDisWj0NickVXenb6YxosMaCc1r6RevaTrIpwVOay05PSrceA1NSM5wUkbuuaq+puJXXaSuM+tc4Rg1fmuDJGikDCjiqTDLYobuOMVFEJ60mavpp0zwNMI3aNTgsBwKqOu0+1A1K5ETRmneXnvTWXFAxCaTNNOaAM0ALT0JJoC06MYagRIE4o21JuFNJFAmN20YoLUm6gR//S5cGnZqJTTs1758o0TBuKUNUQNLupk2Jd3NBaoS1OQE0BYlVtxqyiE0yJMGraLmhsGiMIaswAilVBUiDaaknYuwnIxVpDyKqRsMZq3CQeayky0y0nXNSjJYVDxtweST+VdL4at4riS4hniDqFGDWU5W1NKS53YwX6VXY1r6vYCyu2VRmPqB6VjSHGfQ9K0g7oifuysA608DmoA9PV6qwJplgcCm7uaYHo3UWBliOTmp93FUFcA1OJRiixSY9jTcZppkpA4oSBtAycVA64qR3GKiZ+KohkRODUZald+aiLVRAu40o5NR7qN3Oc0hokYYpmeaXzC3ao2cBuRg0FEuaKg8zOc9KBLSGrE4FLmq5lxSecTxSsNMsGgGq/mUb6GVcsbuKjY80zfSFjSGPFDDio9xo30wEaom5p7MKYDSAYVpp6VI9QseaBiZAPNMkAYVG7cmozIcU0Ax1waY5GMUSPkVAXwKoYyRRg1Rm4zVqR+KpTNmkWiu3JzTMZNSE0qpmkykR4wKaSc1bEfFRvHSLRVZqjJqeRMVERSKEWpUXmliiJqwIjSAEU9qlAOKVI6kEdAEOWppY1Z8qmmKgTK+6kzUxj5ppjoJISabUxj4pAlNARAdj0PFTo7pwAeOhBoCjvS5AovqTJJiMWlkAY57mu28INcTyfZ7acQmVSpJ7iuKVGb7q8mtCzvJrJupXjnFaRuYVktkd03hQ3FxcoJBiJc+Z7iuF1GPyZmTO7BIz61onxNdNbG38w7fXNYtxI075obIpU2mRqx9KdmoyhBpwqDrFpB1p1KOtAiRBxUqtg1GG4pd9ICwMEU1oipDGofNx2zV+28+/MFoCHY5VR6ZoJk9CaHWZoLGS0R1WOQ5YEck4xWS7Asdo/Gpr+1e1uHjk++vXFUg2aYoEwekYg1GWphag0HE0gNMJpN1BJNvwKA9Vy1G+gC15nFN8yq26jdTEWS9NMhzUIal3UAf/T5EZBxg5pwatPVtLFgYw06yBxnK9qx9xBIPY19AfKp3Jt1Jmot1ODUBYlHJq3EuBVJW5q2j4FICyrAGp0aqqkE1OuAKGJlpW460pkFVvMxUZck8UkjKRqwvuIX14rStl3SJGOueaw7abaw9R0rbsX/wBIZj98DOKxqJiU7Gi4AuSq8jp+Ndrpdn/ZOkrMFJmlGTntXL6HZte3ombAtYW3SMa7S4u47mALEwKngEelctRt6Hdg0lBylv0MO9VphctIMtjj2rkZFKqMg9K7ua3f7O79dwrlZ7SR5iuG29NoFb0pK2pzYnnUrW3McCndMevpWwmgXcgLhVjQc/P1qJtEuM/ukMhPpW3PEhRqJcttTO3Uoakmikt5DHKjIw6g1A0mKL32K1WjJS9J5vpVYyU0yVVhplvzT60ebVPzKPMosJlvzKQtmqvm0ebTsTcnbpUJxTWl4qPzKAHsaZnNOQbzU/lDFGhSiVxKU6VHJIztlqmkiGaiKAGkOxFv7UZPrTZMA8Uzfg07CJn3Kuc5pFPNEP7wFaeq7Tg1KKQopx4GaccBahZ+KCxd9KHqHdSF8UWC5MXqMuaiMlMaSnYLkxekD1WMlJ5lKwXLZbPeonYdajElJI4xRYZDI/WoGc4olf0quZOKLDBnNV5JTih5M1WdiaZQ55TioHYk5pTmmmkUhjdakiYdDUZ603JBpMpF3dxUTvzUPmGmliTSLQ5jmmhcsKXbk1KiY60h3LMEYxUu0VGjBRQZKQEop2cVX82l82gZMWppcVAZajMtBJMzUzdk4qPfmm7+aLCZNnJpxQjluFxndUcJ3OB711UOk282iy3AO2WI52t3XFWkZynY5Yc496mS3eQfKpJ9hmkuI2WVmxj1A7Va0+/ayDFFBLDB3UWByutC3olpHNexxynAyBmt3xT4eTTWG3DB1DBhXK2979nc7TyMEGta6124v4CJ33BFAX2p3sYcrbuYnlhWbjgjFPQDFG8EZNR78VDdzojtqK+BUY60jtmkU80xkuKTpSB+aCc0ALvozzTABmpABSGOBFWLeZ7cq8bFWU5yOtVSRSh6BNJktzcPO5ZyWJ7mqoFTdaCoFAJW2ISDTCKmaoic0wIycU0mpCKaRxQFhhNNzStTc0AOopBzTttMLBmnds4zTQOaeFz3oCx//9TkpJXZcMc1Xyalb7tQ1758tAcKcDTRSigoeDUyMQKgFTL0oJZOrtnrUwdsdarr1qYfdpsljg5J61NGKgXrViKkjOQ/O1sit+wO9JGP3tuMisA9a3tN/wBVJ9KioYSPQ9BhjHhaYbR8ynPvxWZZyvbyosZ+UHoela2hf8ivJ9D/ACrHi/1y/WuFbs9CvpThY7KNQ9orEdRVc2kKZdV+arMH/Hkn0pj/AHKmO56UkuWLMu9QSKdxJwOmav2wWDSBNGoDqOuKpXX3T9KvJ/yAj9KUhUviZwGu3st9db5VQFePlGKwZCa1dR/17fWsqSu+n8KPIq/GyAsaYWNONMNakoUMaTcaBSdqAYu40FjSUhoEBY0qkmm0q0AWYjzVnJqrF1qzUM2iNc1WlJqw9VpaEJlVzTM809ulR96tEstWv3s1K/8ArKitfvVLJ/rKzZaEfhah7VNJ92oaaGI3SoWqZulQtQIjJqNiakaompiGMcUzcae9R0Ah4Y0OxxSDrQ/SkWipJ1qBqnfrUD9aYyFxzTGAp7daY9BSImNMNOammkUiM0004000mUhDTlppp60i0SqOalFRL1qUdKQATSE8Uppp6UhoYSaMn1oNJQMQmmEmnmo6ZIuTSZNFFNCZIjEEEVtG8nkjVDIdpGCB3FYi1qL0SrRz1DUisYJ9Ilu3DGZXKg54x9K5+UAHPvXVWv8AyLc//XU/yrlpun40mEdhKmgPyyD/AGahqaDpJ9Kl7GqIwx2rz2puT60fwr9KKSGwNJmlPSkpiQZoBOetHagdaBi0oJ9aSlFIYZNKCaSlFAD9x45pdxpvcUtADHY1Hk096jpgBJpjMfWnd6Y1ADGJIpF60HpQvWgCQVMvSoRUyUAMx8xp6mm/xmlXvQB//9k=\" alt=\"\" />\r\n		</p>\r\n	</div>\r\n</div>\r\n<div id=\"SL_balloon_obj\">\r\n	<div id=\"SL_button\" class=\"SL_ImTranslatorLogo\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n	</div>\r\n	<div id=\"SL_shadow_translation_result2\">\r\n	</div>\r\n	<div id=\"SL_shadow_translator\">\r\n		<div id=\"SL_planshet\">\r\n			<div id=\"SL_arrow_up\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n			</div>\r\n			<div id=\"SL_Bproviders\">\r\n				<div class=\"SL_BL_LABLE_ON\" id=\"SL_P0\">\r\n					<div id=\"SL_PN0\">\r\n						G\r\n					</div>\r\n				</div>\r\n				<div class=\"SL_BL_LABLE_ON\" id=\"SL_P1\">\r\n					<div id=\"SL_PN1\">\r\n						M\r\n					</div>\r\n				</div>\r\n				<div class=\"SL_BL_LABLE_ON\" id=\"SL_P2\">\r\n					<div id=\"SL_PN2\">\r\n						T\r\n					</div>\r\n				</div>\r\n				<div class=\"SL_BL_LABLE_ON\" id=\"SL_P3\">\r\n					<div id=\"SL_PN3\">\r\n						Y\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div id=\"SL_alert_bbl\">\r\n				<div id=\"SLHKclose\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n				</div>\r\n				<div id=\"SL_alert_cont\">\r\n				</div>\r\n			</div>\r\n			<div id=\"SL_TB\">\r\n				<table id=\"SL_tables\" cellspacing=\"1\">\r\n					<tr>\r\n						<td class=\"SL_td\" width=\"10%\" align=\"right\">\r\n						</td>\r\n						<td class=\"SL_td\" width=\"20%\" align=\"left\">\r\n							检测语言世界语中文简体中文繁体丹麦语乌克兰语乌兹别克语乌尔都语亚美尼亚语伊博语俄语保加利亚语信德语修纳语僧伽罗语克罗地亚语冰岛语加利西亚语加泰罗尼亚语匈牙利语南非祖鲁语卡纳达语卢森堡语印地语印尼巽他语印尼爪哇语印尼语古吉拉特语吉尔吉斯语哈萨克语土耳其语塔吉克语塞尔维亚语塞索托语夏威夷语威尔士语孟加拉语宿务语尼泊尔语巴斯克语布尔语(南非荷兰语)希伯来语希腊语库尔德语弗里西语德语意大利语意第绪语拉丁语拉脱维亚语挪威语捷克语斯洛伐克语斯洛文尼亚语斯瓦希里语旁遮普语日语普什图语格鲁吉亚语毛利语法语波兰语波斯尼亚语波斯语泰卢固语泰米尔语泰语海地克里奥尔语爱尔兰语爱沙尼亚语瑞典语白俄罗斯语科萨科西嘉语立陶宛语索马里语约鲁巴语缅甸语罗马尼亚语老挝语芬兰语苏格兰盖尔语苗语英语荷兰语菲律宾语萨摩亚语葡萄牙语蒙古语西班牙语豪萨语越南语阿塞拜疆语阿姆哈拉语阿尔巴尼亚语阿拉伯语韩语马其顿语马尔加什语马拉地语马拉雅拉姆语马来语马耳他语高棉语齐切瓦语\r\n						</td>\r\n						<td class=\"SL_td\" width=\"3\" align=\"center\">\r\n							<div id=\"SL_switch_b\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n							</div>\r\n						</td>\r\n						<td class=\"SL_td\" width=\"20%\" align=\"left\">\r\n							世界语中文简体中文繁体丹麦语乌克兰语乌兹别克语乌尔都语亚美尼亚语伊博语俄语保加利亚语信德语修纳语僧伽罗语克罗地亚语冰岛语加利西亚语加泰罗尼亚语匈牙利语南非祖鲁语卡纳达语卢森堡语印地语印尼巽他语印尼爪哇语印尼语古吉拉特语吉尔吉斯语哈萨克语土耳其语塔吉克语塞尔维亚语塞索托语夏威夷语威尔士语孟加拉语宿务语尼泊尔语巴斯克语布尔语(南非荷兰语)希伯来语希腊语库尔德语弗里西语德语意大利语意第绪语拉丁语拉脱维亚语挪威语捷克语斯洛伐克语斯洛文尼亚语斯瓦希里语旁遮普语日语普什图语格鲁吉亚语毛利语法语波兰语波斯尼亚语波斯语泰卢固语泰米尔语泰语海地克里奥尔语爱尔兰语爱沙尼亚语瑞典语白俄罗斯语科萨科西嘉语立陶宛语索马里语约鲁巴语缅甸语罗马尼亚语老挝语芬兰语苏格兰盖尔语苗语英语荷兰语菲律宾语萨摩亚语葡萄牙语蒙古语西班牙语豪萨语越南语阿塞拜疆语阿姆哈拉语阿尔巴尼亚语阿拉伯语韩语马其顿语马尔加什语马拉地语马拉雅拉姆语马来语马耳他语高棉语齐切瓦语\r\n						</td>\r\n						<td class=\"SL_td\" width=\"8%\" align=\"center\">\r\n							<div id=\"SL_TTS_voice\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n							</div>\r\n						</td>\r\n						<td class=\"SL_td\" width=\"8%\" align=\"center\">\r\n							<div id=\"SL_copy\" class=\"SL_copy\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n								<div id=\"SL_copy_tip\">\r\n								</div>\r\n							</div>\r\n						</td>\r\n						<td class=\"SL_td\" width=\"8%\" align=\"center\">\r\n							<div id=\"SL_bbl_font_patch\">\r\n							</div>\r\n							<div id=\"SL_bbl_font\" class=\"SL_bbl_font\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n							</div>\r\n						</td>\r\n						<td class=\"SL_td\" width=\"8%\" align=\"center\">\r\n							<div id=\"SL_bbl_help\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n							</div>\r\n						</td>\r\n						<td class=\"SL_td\" width=\"15%\" align=\"right\">\r\n							<div id=\"SL_pin\" class=\"SL_pin_off\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n							</div>\r\n						</td>\r\n					</tr>\r\n				</table>\r\n			</div>\r\n		</div>\r\n		<div id=\"SL_shadow_translation_result\">\r\n		</div>\r\n		<div id=\"SL_loading\" class=\"SL_loading\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n		</div>\r\n		<div id=\"SL_player2\">\r\n		</div>\r\n		<div id=\"SL_alert100\">\r\n			文本转语音功能仅限200个字符\r\n		</div>\r\n		<div id=\"SL_Balloon_options\" style=\"background:#FFFFFF url(&quot;\">\r\n			<div id=\"SL_arrow_down\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n			</div>\r\n			<table id=\"SL_tbl_opt\" width=\"100%\">\r\n				<tr>\r\n					<td class=\"SL_td\" width=\"5%\" align=\"center\">\r\n					</td>\r\n					<td class=\"SL_td\" width=\"5%\" align=\"left\">\r\n						<div id=\"SL_BBL_IMG\" style=\"background:rgba(0, 0, 0, 0) url(&quot;\">\r\n						</div>\r\n					</td>\r\n					<td class=\"SL_td\" width=\"70%\" align=\"center\">\r\n						<a href=\"https://gcxw.altmoose.com/manage/zxbannerimg/edit/moz-extension:/abc217dc-e5f2-e742-8d71-ca2b80416810/content/html/options/options.html?bbl\" target=\"_blank\" class=\"SL_options\" id=\"SL_opt1\">选项</a> : <a href=\"https://gcxw.altmoose.com/manage/zxbannerimg/edit/moz-extension:/abc217dc-e5f2-e742-8d71-ca2b80416810/content/html/options/options.html?hist\" target=\"_blank\" class=\"SL_options\" id=\"SL_opt2\">历史</a> : <a href=\"https://gcxw.altmoose.com/manage/zxbannerimg/edit/moz-extension:/abc217dc-e5f2-e742-8d71-ca2b80416810/content/html/options/options.html?feed\" target=\"_blank\" class=\"SL_options\" id=\"SL_opt3\">反馈</a> : <a href=\"http://imtranslator.net/extensions/?tp=ff-ImTranslator&amp;a=0\" target=\"_blank\" class=\"SL_options\" id=\"SL_opt4\">Donate</a>\r\n					</td>\r\n					<td class=\"SL_td\" width=\"15%\" align=\"right\">\r\n						<span id=\"SL_Balloon_Close\" class=\"SL_options\">关闭</span>\r\n					</td>\r\n				</tr>\r\n			</table>\r\n		</div>\r\n	</div>\r\n</div>', '1', 'admin', '2019-12-18 14:00:31', 'admin', '2020-01-03 11:21:41', '0');
INSERT INTO `t_zx_banner_img` VALUES ('4', 'http://gcxw.altmoose.com:8086/profile/upload/2020/01/03/301f034fb31319e1a2a54c318cec6a1d.png', 'banner1', '<p>\r\n	banner1\r\n</p>\r\n<p>\r\n	查看banner1点击跳转样式\r\n</p>', '1', 'admin', '2019-12-18 14:00:43', 'admin', '2020-01-03 11:19:35', '0');

-- ----------------------------
-- Table structure for t_zx_banner_img_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_banner_img_dept`;
CREATE TABLE `t_zx_banner_img_dept` (
  `zx_banner_img_dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `zx_banner_img_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`zx_banner_img_dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_banner_img_dept
-- ----------------------------
INSERT INTO `t_zx_banner_img_dept` VALUES ('12', '1', '114');
INSERT INTO `t_zx_banner_img_dept` VALUES ('13', '1', '118');
INSERT INTO `t_zx_banner_img_dept` VALUES ('14', '4', '112');
INSERT INTO `t_zx_banner_img_dept` VALUES ('15', '4', '113');
INSERT INTO `t_zx_banner_img_dept` VALUES ('16', '4', '114');
INSERT INTO `t_zx_banner_img_dept` VALUES ('17', '4', '115');
INSERT INTO `t_zx_banner_img_dept` VALUES ('18', '4', '118');
INSERT INTO `t_zx_banner_img_dept` VALUES ('19', '4', '119');
INSERT INTO `t_zx_banner_img_dept` VALUES ('20', '3', '112');
INSERT INTO `t_zx_banner_img_dept` VALUES ('21', '3', '113');
INSERT INTO `t_zx_banner_img_dept` VALUES ('22', '3', '114');
INSERT INTO `t_zx_banner_img_dept` VALUES ('23', '3', '115');
INSERT INTO `t_zx_banner_img_dept` VALUES ('24', '3', '118');
INSERT INTO `t_zx_banner_img_dept` VALUES ('25', '3', '119');
INSERT INTO `t_zx_banner_img_dept` VALUES ('26', '2', '112');
INSERT INTO `t_zx_banner_img_dept` VALUES ('27', '2', '113');
INSERT INTO `t_zx_banner_img_dept` VALUES ('28', '2', '114');
INSERT INTO `t_zx_banner_img_dept` VALUES ('29', '2', '115');
INSERT INTO `t_zx_banner_img_dept` VALUES ('30', '2', '118');
INSERT INTO `t_zx_banner_img_dept` VALUES ('31', '2', '119');

-- ----------------------------
-- Table structure for t_zx_banner_video
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_banner_video`;
CREATE TABLE `t_zx_banner_video` (
  `zx_banner_video_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_img_url` varchar(255) DEFAULT NULL COMMENT '封面',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频路径',
  `detail` mediumtext,
  `video_time` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '展示开关 0:关，1：开',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `flag_del` int(11) DEFAULT '0',
  PRIMARY KEY (`zx_banner_video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_banner_video
-- ----------------------------
INSERT INTO `t_zx_banner_video` VALUES ('1', 'http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/0bfa0a2c04be7f96a69faae5d3ecb6e7.jpg', '风水大师讲解', 'http://localhost:8081/gcxw/profile/upload/2019/12/05/f326629c24b655ea95664b6fd9311d74.mp4', '123', '15', '0', null, '2019-12-05 19:36:54', null, '2019-12-24 11:47:52', '0');
INSERT INTO `t_zx_banner_video` VALUES ('2', 'http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/9eafce6b31f1a26af7123c30c90bdb7e.jpg', '测', 'http://localhost:8081/gcxw/profile/upload/2019/12/05/3a5fcdfc2176c2d305b8fcdc40c214bb.mp4', '驱蚊器翁', '15', '0', null, '2019-12-05 19:40:00', null, '2019-12-24 11:47:48', '0');
INSERT INTO `t_zx_banner_video` VALUES ('3', 'http://gcxw.altmoose.com:8086/profile/upload/2019/12/19/e26192d43cef71210ac24909a9267702.jpg', '测2', 'http://localhost:8081/gcxw/profile/upload/2019/12/05/5248ed855559cfd921799429a728c4af.mp4', '11111', '15', '1', null, '2019-12-05 19:56:35', null, '2019-12-24 11:48:03', '0');

-- ----------------------------
-- Table structure for t_zx_banner_video_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_banner_video_dept`;
CREATE TABLE `t_zx_banner_video_dept` (
  `zx_banner_video_dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `zx_banner_video_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`zx_banner_video_dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_banner_video_dept
-- ----------------------------
INSERT INTO `t_zx_banner_video_dept` VALUES ('20', '3', '114');
INSERT INTO `t_zx_banner_video_dept` VALUES ('21', '3', '115');
INSERT INTO `t_zx_banner_video_dept` VALUES ('24', '2', '114');
INSERT INTO `t_zx_banner_video_dept` VALUES ('25', '2', '115');
INSERT INTO `t_zx_banner_video_dept` VALUES ('26', '2', '119');
INSERT INTO `t_zx_banner_video_dept` VALUES ('27', '1', '114');

-- ----------------------------
-- Table structure for t_zx_case
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_case`;
CREATE TABLE `t_zx_case` (
  `case_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_id` int(11) DEFAULT NULL COMMENT '装修公司',
  `designer_id` int(11) DEFAULT NULL COMMENT '设计师',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) DEFAULT NULL COMMENT '介绍',
  `img_urls` varchar(2000) DEFAULT NULL COMMENT '附图',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`case_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_case
-- ----------------------------
INSERT INTO `t_zx_case` VALUES ('1', '2', '1', '测试案例1', '测1', 'http://localhost:8081/gcxw/profile/upload/2020/01/02/f06b83a9c855de83fd152e450c81da65.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/54ac3907800822cae3cb91a8e949bf31.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/bf70f0f76317700f5ffbf5a43d51d629.jpg', '2020-01-02 10:43:35', null, '2020-01-02 11:21:17', null);
INSERT INTO `t_zx_case` VALUES ('2', '2', '1', '测试案例333', '12恶趣味群', 'http://localhost:8081/gcxw/profile/upload/2020/01/02/10400984f56d913e49c3628197495e3c.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/383aad0c238f771866969f30d53ef422.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/5718935990d0f42f7fa077201fd66feb.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/c32db755b9214f60e2d035afcf725092.jpg', '2020-01-02 10:46:19', null, '2020-01-02 11:20:57', null);
INSERT INTO `t_zx_case` VALUES ('3', '1', '3', '擦擦擦', '222', 'http://localhost:8081/gcxw/profile/upload/2020/01/02/7f0f46ec1b780dd0686197c021fe582d.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/518b6a29a5a266b572d0f5f8d3167c1c.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/116f0266fa582f7f16b7b20ae9021575.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/ebb06ac478dcbd4b97489ce1a6d078fe.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/360eae570b0784b783e0f489960ed20a.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/3cb58d81aabfa0dac6a98bbfc4aee8d2.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/33a95eeeafe29c592e4df6d63dc6fdcb.jpg', '2020-01-02 11:13:09', null, '2020-01-02 11:13:09', null);
INSERT INTO `t_zx_case` VALUES ('4', '1', '3', '12211', '驱蚊器翁', 'http://localhost:8081/gcxw/profile/upload/2020/01/02/40942aaa88886c91d2b9db20628f3941.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/cecee4f56519733e62c8211d68ab17ba.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/1592302426041d5d9e2951baaa3c89d1.jpg,http://localhost:8081/gcxw/profile/upload/2020/01/02/6e6d647753aeaae3db622e0a65651381.jpg', '2020-01-02 11:14:15', null, '2020-01-02 11:14:15', null);

-- ----------------------------
-- Table structure for t_zx_company
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_company`;
CREATE TABLE `t_zx_company` (
  `zx_company_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `company_name` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `logo` varchar(255) DEFAULT NULL COMMENT '品牌logo',
  `is_main` int(11) DEFAULT '0' COMMENT '首页推荐 1：是， 0：否',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `rec_num` int(11) DEFAULT NULL COMMENT '推荐指数',
  `detail` varchar(2000) DEFAULT NULL COMMENT '公司介绍',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`zx_company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_company
-- ----------------------------
INSERT INTO `t_zx_company` VALUES ('1', '装修公司12', 'http://localhost:8081/gcxw/profile/upload/2019/12/20/3e7e068f643287327a0f592fa05418f3.jpg', '1', '测试公司地址2', '4', '该公司贼厉害2', null, '2019-12-10 14:46:07', null, '2019-12-20 14:33:38');
INSERT INTO `t_zx_company` VALUES ('2', '装修工233', 'http://localhost:8081/gcxw/profile/upload/2019/12/20/a7e86907758e6542ac388c8f87f237a7.jpg', '1', '朝阳路100号', '5', '666', null, '2019-12-18 14:48:13', null, '2019-12-20 14:33:42');
INSERT INTO `t_zx_company` VALUES ('3', '公司3', 'http://localhost:8081/gcxw/profile/upload/2019/12/20/d7b631ef512ed131e8b0c63ccf6f9078.jpg', '1', '呵呵的', '1', '垃圾公司', null, '2019-12-20 14:34:13', null, '2019-12-20 14:34:13');
INSERT INTO `t_zx_company` VALUES ('4', '公司4', 'http://localhost:8081/gcxw/profile/upload/2019/12/20/f8691fabec6e1bde68ec049eb5cf5a2d.jpg', '1', '上海路', '3', '一般般的小公司', null, '2019-12-20 14:34:38', null, '2019-12-20 14:34:38');
INSERT INTO `t_zx_company` VALUES ('5', '菜鸡有限公司', 'http://localhost:8081/gcxw/profile/upload/2019/12/20/404312bf9eb363f9b4f0ed9a48988b6b.jpg', '0', '北京路', '5', '菜鸡', null, '2019-12-20 14:35:05', null, '2019-12-20 14:35:05');

-- ----------------------------
-- Table structure for t_zx_company_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_company_dept`;
CREATE TABLE `t_zx_company_dept` (
  `zx_company_dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `zx_company_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`zx_company_dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_company_dept
-- ----------------------------
INSERT INTO `t_zx_company_dept` VALUES ('13', '1', '113');
INSERT INTO `t_zx_company_dept` VALUES ('14', '1', '114');
INSERT INTO `t_zx_company_dept` VALUES ('15', '1', '115');
INSERT INTO `t_zx_company_dept` VALUES ('16', '2', '114');
INSERT INTO `t_zx_company_dept` VALUES ('17', '3', '114');
INSERT INTO `t_zx_company_dept` VALUES ('18', '4', '114');
INSERT INTO `t_zx_company_dept` VALUES ('19', '5', '114');

-- ----------------------------
-- Table structure for t_zx_designer
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_designer`;
CREATE TABLE `t_zx_designer` (
  `designer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `head_img` varchar(255) DEFAULT NULL COMMENT '头像',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `zx_company_id` int(11) DEFAULT NULL COMMENT '装修公司',
  `work_year` int(11) DEFAULT NULL COMMENT '工作时间',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `rec_reason` varchar(2000) DEFAULT NULL COMMENT '推荐理由',
  `position` varchar(255) DEFAULT NULL COMMENT '职位',
  `status` int(11) DEFAULT '0' COMMENT '0首页不展示，1首页展示',
  `detail` varchar(2000) DEFAULT NULL COMMENT '介绍',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`designer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_designer
-- ----------------------------
INSERT INTO `t_zx_designer` VALUES ('1', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/b35d00e9f65cf4c0ba10f1c89d7816be.jpg', '323', '2', '1', '1', '强烈推荐', '首席设计师', '1', '2132', null, null, null, '2019-12-19 11:00:57');
INSERT INTO `t_zx_designer` VALUES ('2', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/25a3f720c539e9afec7e763b642e015d.jpg', '测试名', '1', '5', '0', '推荐', '首席设计师', '1', 'ewer', null, null, null, '2019-12-19 11:00:46');
INSERT INTO `t_zx_designer` VALUES ('3', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/1554d5a57972e5bc94952bc7eac4f9dd.jpg', '设计1', '1', '5', '1', '棒棒的', '设计总监', '1', '人很合', null, '2019-12-19 11:00:24', null, '2019-12-19 11:00:24');

-- ----------------------------
-- Table structure for t_zx_forum
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_forum`;
CREATE TABLE `t_zx_forum` (
  `forum_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `openid` varchar(255) DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) DEFAULT NULL COMMENT '内容',
  `status` int(11) DEFAULT '0' COMMENT '0：待审核，1：审核通过, 2:驳回',
  `read_num` int(11) DEFAULT '0' COMMENT '阅读人数',
  `create_time` datetime DEFAULT NULL COMMENT '发表时间',
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`forum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_forum
-- ----------------------------
INSERT INTO `t_zx_forum` VALUES ('2', '2', '3', '4', '5好', '6', '1', '7', '2019-12-21 14:29:43', null);
INSERT INTO `t_zx_forum` VALUES ('3', '212', '2323', '323', '23', '2323', '1', '0', '2019-12-23 16:39:30', null);

-- ----------------------------
-- Table structure for t_zx_forum_img
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_forum_img`;
CREATE TABLE `t_zx_forum_img` (
  `forum_img_id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`forum_img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_forum_img
-- ----------------------------
INSERT INTO `t_zx_forum_img` VALUES ('1', '1', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/4ca1b298f7d052a9c7acdab255aea1f8.jpg');
INSERT INTO `t_zx_forum_img` VALUES ('2', '1', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/4ca1b298f7d052a9c7acdab255aea1f8.jpg');
INSERT INTO `t_zx_forum_img` VALUES ('3', '3', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/4ca1b298f7d052a9c7acdab255aea1f8.jpg');
INSERT INTO `t_zx_forum_img` VALUES ('4', '3', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/4ca1b298f7d052a9c7acdab255aea1f8.jpg');
INSERT INTO `t_zx_forum_img` VALUES ('5', '3', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/4ca1b298f7d052a9c7acdab255aea1f8.jpg');
INSERT INTO `t_zx_forum_img` VALUES ('6', '4', 'http://localhost:8081/gcxw/profile/upload/2019/12/10/a881b0464a65fc6019ce79871c04094f.jpg');
INSERT INTO `t_zx_forum_img` VALUES ('7', '4', 'http://localhost:8081/gcxw/profile/upload/2019/12/10/a881b0464a65fc6019ce79871c04094f.jpg');

-- ----------------------------
-- Table structure for t_zx_material
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_material`;
CREATE TABLE `t_zx_material` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `img_url` varchar(255) DEFAULT NULL COMMENT '标题图片',
  `type` varchar(255) DEFAULT NULL COMMENT '建材类型',
  `label` varchar(255) DEFAULT NULL COMMENT '标签',
  `price` int(11) DEFAULT NULL COMMENT '价格（单位分）',
  `unit` varchar(255) DEFAULT NULL COMMENT '单位',
  `material_store_id` int(11) DEFAULT NULL COMMENT '商家',
  `status` int(11) DEFAULT '0' COMMENT '0：首页不显示，1：首页显示',
  `detail` mediumtext COMMENT '商品详情',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_material
-- ----------------------------
INSERT INTO `t_zx_material` VALUES ('1', '大白兔', 'http://localhost:8081/gcxw/profile/upload/2019/12/21/a5fe6a14dcdac4aae50a57deb9865345.jpg', '1', '1', '12', '箱', '2', '1', '号', null, '2019-12-19 14:44:53', null, '2019-12-21 11:33:23');
INSERT INTO `t_zx_material` VALUES ('2', '绿洲地板', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/fbc995c2c5b6e4ebbde687169dfa7003.jpg', '2', '2', '1950', '块', '1', '0', '测试内容2', null, '2019-12-19 15:13:19', null, '2019-12-19 15:14:48');
INSERT INTO `t_zx_material` VALUES ('4', '商品3', 'http://localhost:8081/gcxw/profile/upload/2019/12/21/fe24a5078c616212b5d4502d8573ad58.jpg', '1', '1', '15000', '平米', '2', '1', '好<img src=\"http://localhost:8081/gcxw/profile/upload/2019/12/21/fe6030883b6794260ada60b78938840f.jpg\" alt=\"\" />', null, '2019-12-21 11:17:59', null, '2019-12-21 11:29:58');

-- ----------------------------
-- Table structure for t_zx_material_banner
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_material_banner`;
CREATE TABLE `t_zx_material_banner` (
  `material_banner_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title_img_url` varchar(255) DEFAULT NULL COMMENT '封面',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `detail` varchar(255) DEFAULT NULL COMMENT '详情',
  `status` int(11) DEFAULT '0' COMMENT '首页展示',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`material_banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_material_banner
-- ----------------------------
INSERT INTO `t_zx_material_banner` VALUES ('1', 'http://localhost:8081/gcxw/profile/upload/2020/01/06/6cd1a4bd8feddd5ab4658bb2a50bc709.jpg', '测试标题1', '1111', '1', null, '2020-01-06 14:24:07', null, '2020-01-06 14:24:07');

-- ----------------------------
-- Table structure for t_zx_material_banner_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_material_banner_dept`;
CREATE TABLE `t_zx_material_banner_dept` (
  `material_banner_dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_banner_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`material_banner_dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_material_banner_dept
-- ----------------------------
INSERT INTO `t_zx_material_banner_dept` VALUES ('1', '1', '113');
INSERT INTO `t_zx_material_banner_dept` VALUES ('2', '1', '114');

-- ----------------------------
-- Table structure for t_zx_material_img
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_material_img`;
CREATE TABLE `t_zx_material_img` (
  `material_img_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_id` int(11) DEFAULT NULL,
  `detail_img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`material_img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_material_img
-- ----------------------------
INSERT INTO `t_zx_material_img` VALUES ('1', '4', 'http://localhost:8081/gcxw/profile/upload/2019/12/21/b73efc295e75c05af546af04755d4a89.jpg');
INSERT INTO `t_zx_material_img` VALUES ('2', '4', 'http://localhost:8081/gcxw/profile/upload/2019/12/21/92a3fe05c595bd9afd8b7785967b43b2.jpg');
INSERT INTO `t_zx_material_img` VALUES ('3', '4', 'http://localhost:8081/gcxw/profile/upload/2019/12/21/7cd0751da73f40fb2be775d55e98d686.jpg');
INSERT INTO `t_zx_material_img` VALUES ('8', '1', 'http://localhost:8081/gcxw/profile/upload/2019/12/21/cfad531e02ab8716d33eb11ed1dce149.jpg');
INSERT INTO `t_zx_material_img` VALUES ('9', '1', 'http://localhost:8081/gcxw/profile/upload/2019/12/21/ca23546049429c1d5f8ef5af424d4411.jpg');
INSERT INTO `t_zx_material_img` VALUES ('10', '1', 'http://localhost:8081/gcxw/profile/upload/2019/12/21/4e30bc82a2757c86e5e3737c17d9a470.jpg');
INSERT INTO `t_zx_material_img` VALUES ('11', '1', 'http://localhost:8081/gcxw/profile/upload/2019/12/21/07a2604a630f1f9e8864bf42e779a619.jpg');

-- ----------------------------
-- Table structure for t_zx_material_store
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_material_store`;
CREATE TABLE `t_zx_material_store` (
  `material_store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) DEFAULT NULL COMMENT '商家名称',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `lxr_name` varchar(255) DEFAULT NULL COMMENT '联系人',
  `lxr_phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `zyfw` varchar(255) DEFAULT NULL COMMENT '主营范围',
  `detail` mediumtext COMMENT '商家介绍',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`material_store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_material_store
-- ----------------------------
INSERT INTO `t_zx_material_store` VALUES ('1', '测试商家', '地址1111', '联系人', '12456', '建材全部', '这家不是黑店', null, '2019-12-19 11:43:36', null, '2019-12-19 11:43:47');
INSERT INTO `t_zx_material_store` VALUES ('2', '测试商家2', '朝阳路1号', '我自己', '45613', '板材', '10年老店', null, '2019-12-19 11:45:21', null, '2019-12-19 11:45:21');

-- ----------------------------
-- Table structure for t_zx_material_store_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_material_store_dept`;
CREATE TABLE `t_zx_material_store_dept` (
  `material_store_dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_store_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`material_store_dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_material_store_dept
-- ----------------------------
INSERT INTO `t_zx_material_store_dept` VALUES ('4', '2', '113');
INSERT INTO `t_zx_material_store_dept` VALUES ('5', '2', '114');
INSERT INTO `t_zx_material_store_dept` VALUES ('6', '2', '115');
INSERT INTO `t_zx_material_store_dept` VALUES ('7', '2', '119');
INSERT INTO `t_zx_material_store_dept` VALUES ('8', '1', '114');

-- ----------------------------
-- Table structure for t_zx_show_home
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_show_home`;
CREATE TABLE `t_zx_show_home` (
  `show_home_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `detail` varchar(2000) DEFAULT NULL COMMENT '介绍',
  `dept_id` int(11) DEFAULT NULL COMMENT '小区',
  `floor_id` int(11) DEFAULT NULL,
  `build_num` int(11) DEFAULT NULL COMMENT '楼号',
  `unit_num` int(11) DEFAULT NULL COMMENT '单元号',
  `door_num` int(11) DEFAULT NULL COMMENT '房间号',
  `bud` varchar(255) DEFAULT NULL COMMENT '楼栋-单元-房间(1-1-101)',
  `area` varchar(255) DEFAULT NULL COMMENT '面积',
  `door_type` varchar(255) DEFAULT NULL COMMENT '户型',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`show_home_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_show_home
-- ----------------------------
INSERT INTO `t_zx_show_home` VALUES ('3', '测试1', '1', '效果极佳', '114', null, '11', '1', '111', '11-1-111', '11', '11', 'admin', '2019-12-10 14:19:32', null, '2019-12-10 14:19:32');
INSERT INTO `t_zx_show_home` VALUES ('4', 'ceshi', '2', '111111111111111111111111111111111', '114', null, '11', '1', '111', '11-1-111', '11', '11', 'admin', '2019-12-19 11:00:32', 'admin', '2019-12-24 10:37:48');
INSERT INTO `t_zx_show_home` VALUES ('5', 'd123', '3', 'qwqw', '114', null, '11', '1', '111', '11-1-111', '11', '11', 'admin', '2019-12-23 16:09:01', 'admin', '2019-12-24 10:38:00');
INSERT INTO `t_zx_show_home` VALUES ('6', '测试装修', '1', '11114444444', '114', null, '11', '1', '1111', '11-1-1111', '4848cm²', '111111111111111111111111111111', 'admin', '2019-12-24 11:01:27', null, '2019-12-24 11:01:27');

-- ----------------------------
-- Table structure for t_zx_show_home_img
-- ----------------------------
DROP TABLE IF EXISTS `t_zx_show_home_img`;
CREATE TABLE `t_zx_show_home_img` (
  `show_home_img_id` int(11) NOT NULL AUTO_INCREMENT,
  `show_home_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`show_home_img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_zx_show_home_img
-- ----------------------------
INSERT INTO `t_zx_show_home_img` VALUES ('6', '2', 'http://localhost:8081/gcxw/profile/upload/2019/12/10/a881b0464a65fc6019ce79871c04094f.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('7', '2', 'http://localhost:8081/gcxw/profile/upload/2019/12/10/2fecd4daee4bfafc9d146163fc6b5b49.png');
INSERT INTO `t_zx_show_home_img` VALUES ('8', '2', 'http://localhost:8081/gcxw/profile/upload/2019/12/10/760425e0ca3258d0b7197aed10a3c393.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('9', '2', 'http://localhost:8081/gcxw/profile/upload/2019/12/10/dd454af6b63e59ca6a9ae093a4802633.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('10', '3', 'http://localhost:8081/gcxw/profile/upload/2019/12/10/516b02e3bbbccac7369f5e631a01c137.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('11', '3', 'http://localhost:8081/gcxw/profile/upload/2019/12/10/a450dacec9fb49ca4459266e28b3320c.png');
INSERT INTO `t_zx_show_home_img` VALUES ('22', '4', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/cd3678de3ea24555c9cf1f3a68d75edc.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('23', '4', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/ca524d6cad696aadb95e01e468c71749.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('24', '4', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/34c96158011d67afb9793276d0441a85.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('25', '4', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/9ca838b04c4c98bd04c8f511c07730d8.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('26', '4', 'http://localhost:8081/gcxw/profile/upload/2019/12/19/4ca1b298f7d052a9c7acdab255aea1f8.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('27', '5', 'http://localhost:8081/gcxw/profile/upload/2019/12/23/73dccef73df03b2e3107f829514d1628.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('28', '5', 'http://localhost:8081/gcxw/profile/upload/2019/12/23/1c6ddccab8698065fd52c551ab1cfd55.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('29', '5', 'http://localhost:8081/gcxw/profile/upload/2019/12/23/6c03af58c4dc4df60aec3d66f88ba106.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('30', '6', 'http://localhost:8081/gcxw/profile/upload/2019/12/24/2be0be9a27e5ab3e37ef267ea8d59906.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('31', '6', 'http://localhost:8081/gcxw/profile/upload/2019/12/24/d1effb9d2ce8169133d64673fa0737f9.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('32', '6', 'http://localhost:8081/gcxw/profile/upload/2019/12/24/a405e6ed983664be9d99a81a96c51932.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('33', '6', 'http://localhost:8081/gcxw/profile/upload/2019/12/24/66049fd43eaa4b9b299833c4a6257795.jpg');
INSERT INTO `t_zx_show_home_img` VALUES ('34', '6', 'http://localhost:8081/gcxw/profile/upload/2019/12/24/eb461fe79e47f1b5f6d8132eb88489cb.jpg');
