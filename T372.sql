/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t372`;
CREATE DATABASE IF NOT EXISTS `t372` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t372`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图111111', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-15 07:00:45'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-15 07:00:45'),
	(3, 'fangyuan_types', '房源', 1, '房源1', NULL, NULL, '2023-03-15 07:00:45'),
	(4, 'fangyuan_types', '房源', 2, '房源2', NULL, NULL, '2023-03-15 07:00:45'),
	(5, 'huxing_types', '户型', 1, '户型1', NULL, NULL, '2023-03-15 07:00:45'),
	(6, 'huxing_types', '户型', 2, '户型2', NULL, NULL, '2023-03-15 07:00:45'),
	(7, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-03-15 07:00:45'),
	(8, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-03-15 07:00:45'),
	(9, 'zhuangxiufengge_types', '装修风格类型', 1, '装修风格类型1', NULL, NULL, '2023-03-15 07:00:45'),
	(10, 'zhuangxiufengge_types', '装修风格类型', 2, '装修风格类型2', NULL, NULL, '2023-03-15 07:00:45'),
	(11, 'zhuangxiufengge_types', '装修风格类型', 3, '装修风格类型3', NULL, NULL, '2023-03-15 07:00:45'),
	(12, 'zhuangxiufengge_types', '装修风格类型', 4, '装修风格类型4', NULL, NULL, '2023-03-15 07:00:45'),
	(13, 'zhuangxiufengge_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-15 07:00:45'),
	(14, 'pinpai_types', '品牌', 1, '品牌1', NULL, NULL, '2023-03-15 07:00:45'),
	(15, 'pinpai_types', '品牌', 2, '品牌2', NULL, NULL, '2023-03-15 07:00:45'),
	(16, 'pinpai_types', '品牌', 3, '品牌3', NULL, NULL, '2023-03-15 07:00:45'),
	(17, 'pinpai_types', '品牌', 4, '品牌4', NULL, NULL, '2023-03-15 07:00:45'),
	(18, 'zhucai_types', '主材类型', 1, '主材类型1', NULL, NULL, '2023-03-15 07:00:45'),
	(19, 'zhucai_types', '主材类型', 2, '主材类型2', NULL, NULL, '2023-03-15 07:00:45'),
	(20, 'zhucai_types', '主材类型', 3, '主材类型3', NULL, NULL, '2023-03-15 07:00:45'),
	(21, 'zhucai_types', '主材类型', 4, '主材类型4', NULL, NULL, '2023-03-15 07:00:45'),
	(22, 'zhucai_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-15 07:00:45'),
	(23, 'yusuan_types', '预算类型', 1, '预算类型1', NULL, NULL, '2023-03-15 07:00:46'),
	(24, 'yusuan_types', '预算类型', 2, '预算类型2', NULL, NULL, '2023-03-15 07:00:46'),
	(25, 'yusuan_types', '预算类型', 3, '预算类型3', NULL, NULL, '2023-03-15 07:00:46'),
	(26, 'yusuan_types', '预算类型', 4, '预算类型4', NULL, NULL, '2023-03-15 07:00:46'),
	(27, 'hetong_types', '合同状态', 1, '已开具', NULL, NULL, '2023-03-15 07:00:46'),
	(28, 'hetong_types', '合同状态', 2, '已同意', NULL, NULL, '2023-03-15 07:00:46'),
	(29, 'hetong_types', '合同状态', 3, '已施工', NULL, NULL, '2023-03-15 07:00:46'),
	(30, 'hetong_types', '合同状态', 4, '已完工', NULL, NULL, '2023-03-15 07:00:46'),
	(31, 'hetong_types', '合同状态', 5, '已验收', NULL, NULL, '2023-03-15 07:00:46'),
	(32, 'gongchenganpai_types', '工程进度', 1, '已安排', NULL, NULL, '2023-03-15 07:00:46'),
	(33, 'gongchenganpai_types', '工程进度', 2, '停工中', NULL, NULL, '2023-03-15 07:00:46'),
	(34, 'gongchenganpai_types', '工程进度', 3, '已完工', NULL, NULL, '2023-03-15 07:00:46'),
	(35, 'gongchenganpai_types', '工程进度', 4, '进行中', NULL, NULL, '2023-03-15 07:00:46'),
	(36, 'shouhou_types', '服务类型', 1, '服务类型1', NULL, NULL, '2023-03-15 07:00:46'),
	(37, 'shouhou_types', '服务类型', 2, '服务类型2', NULL, NULL, '2023-03-15 07:00:46'),
	(38, 'shouhou_types', '服务类型', 3, '服务类型3', NULL, NULL, '2023-03-15 07:00:46'),
	(39, 'zhucai_types', '主材类型', 5, '主材类型5', NULL, '', '2023-03-15 07:27:52');

DROP TABLE IF EXISTS `gongchenganpai`;
CREATE TABLE IF NOT EXISTS `gongchenganpai` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `hetong_id` int DEFAULT NULL COMMENT '合同',
  `gongchenganpai_uuid_number` varchar(200) DEFAULT NULL COMMENT '工程安排编号',
  `gongchenganpai_name` varchar(200) DEFAULT NULL COMMENT '工程安排名称  Search111 ',
  `gongchenganpai_file` varchar(200) DEFAULT NULL COMMENT '工程安排附件',
  `gongchenganpai_fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人  Search111 ',
  `gongchenganpai_lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式  Search111 ',
  `gongchenganpai_types` int DEFAULT NULL COMMENT '工程进度 Search111',
  `gongchenganpai_content` text COMMENT '工程安排内容',
  `gongchenganpai_beizhu_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='工程安排';

DELETE FROM `gongchenganpai`;
INSERT INTO `gongchenganpai` (`id`, `yonghu_id`, `hetong_id`, `gongchenganpai_uuid_number`, `gongchenganpai_name`, `gongchenganpai_file`, `gongchenganpai_fuzeren`, `gongchenganpai_lianxifangshi`, `gongchenganpai_types`, `gongchenganpai_content`, `gongchenganpai_beizhu_content`, `insert_time`, `create_time`) VALUES
	(1, 3, 1, '1678863653436', '工程安排名称1', 'upload/file.rar', '负责人1', '联系方式1', 4, '工程安排内容1', '备注1', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(2, 3, 2, '1678863653369', '工程安排名称2', 'upload/file.rar', '负责人2', '联系方式2', 3, '工程安排内容2', '备注2', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(3, 2, 3, '1678863653410', '工程安排名称3', 'upload/file.rar', '负责人3', '联系方式3', 3, '工程安排内容3', '备注3', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(4, 3, 4, '1678863653412', '工程安排名称4', 'upload/file.rar', '负责人4', '联系方式4', 1, '工程安排内容4', '备注4', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(5, 2, 5, '1678863653438', '工程安排名称5', 'upload/file.rar', '负责人5', '联系方式5', 3, '工程安排内容5', '备注5', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(6, 2, 6, '1678863653392', '工程安排名称6', 'upload/file.rar', '负责人6', '联系方式6', 4, '工程安排内容6', '备注6', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(7, 2, 7, '1678863653380', '工程安排名称7', 'upload/file.rar', '负责人7', '联系方式7', 4, '工程安排内容7', '备注7', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(8, 3, 8, '1678863653398', '工程安排名称8', 'upload/file.rar', '负责人8', '联系方式8', 4, '工程安排内容8', '备注8', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(9, 3, 9, '1678863653451', '工程安排名称9', 'upload/file.rar', '负责人9', '联系方式9', 4, '工程安排内容9', '备注9', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(10, 1, 10, '1678863653384', '工程安排名称10', 'upload/file.rar', '负责人10', '联系方式10', 2, '工程安排内容10', '备注10', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(11, 1, 11, '1678863653466', '工程安排名称11', 'upload/file.rar', '负责人11', '联系方式11', 4, '工程安排内容11', '备注11', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(12, 3, 12, '1678863653448', '工程安排名称12', 'upload/file.rar', '负责人12', '联系方式12', 3, '工程安排内容12', '备注12', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(13, 2, 13, '1678863653421', '工程安排名称13', 'upload/file.rar', '负责人13', '联系方式13', 3, '工程安排内容13', '备注13', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(14, 2, 14, '1678863653420', '工程安排名称14', 'upload/file.rar', '负责人14', '联系方式14', 1, '工程安排内容14', '备注14', '2023-03-15 07:00:53', '2023-03-15 07:00:53');

DROP TABLE IF EXISTS `hetong`;
CREATE TABLE IF NOT EXISTS `hetong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `hetong_uuid_number` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `hetong_name` varchar(200) DEFAULT NULL COMMENT '合同名称  Search111 ',
  `hetong_file` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `hetong_types` int DEFAULT NULL COMMENT '合同状态 Search111',
  `hetong_huafei` decimal(10,2) DEFAULT NULL COMMENT '合同金额',
  `hetong_weiyuejin` decimal(10,2) DEFAULT NULL COMMENT '违约金',
  `hetong_content` text COMMENT '合同内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '开具时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='合同';

DELETE FROM `hetong`;
INSERT INTO `hetong` (`id`, `yonghu_id`, `hetong_uuid_number`, `hetong_name`, `hetong_file`, `hetong_types`, `hetong_huafei`, `hetong_weiyuejin`, `hetong_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '1678863653425', '合同名称1', 'upload/file.rar', 1, 401.07, 138.93, '合同内容1', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(2, 2, '1678863653440', '合同名称2', 'upload/file.rar', 1, 675.03, 427.01, '合同内容2', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(3, 1, '1678863653379', '合同名称3', 'upload/file.rar', 5, 984.82, 477.02, '合同内容3', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(4, 2, '1678863653409', '合同名称4', 'upload/file.rar', 1, 774.66, 520.11, '合同内容4', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(5, 2, '1678863653468', '合同名称5', 'upload/file.rar', 5, 34.58, 757.63, '合同内容5', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(6, 1, '1678863653407', '合同名称6', 'upload/file.rar', 4, 615.65, 15.73, '合同内容6', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(7, 1, '1678863653443', '合同名称7', 'upload/file.rar', 3, 345.92, 638.85, '合同内容7', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(8, 3, '1678863653387', '合同名称8', 'upload/file.rar', 4, 914.13, 864.18, '合同内容8', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(9, 3, '1678863653396', '合同名称9', 'upload/file.rar', 1, 883.06, 843.56, '合同内容9', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(10, 2, '1678863653395', '合同名称10', 'upload/file.rar', 1, 493.00, 423.87, '合同内容10', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(11, 2, '1678863653446', '合同名称11', 'upload/file.rar', 2, 460.19, 843.82, '合同内容11', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(12, 2, '1678863653441', '合同名称12', 'upload/file.rar', 3, 276.98, 623.17, '合同内容12', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(13, 1, '1678863653399', '合同名称13', 'upload/file.rar', 5, 689.99, 536.57, '合同内容13', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(14, 2, '1678863653431', '合同名称14', 'upload/file.rar', 5, 422.48, 205.72, '合同内容14', '2023-03-15 07:00:53', '2023-03-15 07:00:53');

DROP TABLE IF EXISTS `shouhou`;
CREATE TABLE IF NOT EXISTS `shouhou` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `hetong_id` int DEFAULT NULL COMMENT '合同',
  `shouhou_name` varchar(200) DEFAULT NULL COMMENT '售后服务名称  Search111 ',
  `shouhou_uuid_number` varchar(200) DEFAULT NULL COMMENT '售后服务编号',
  `shouhou_file` varchar(200) DEFAULT NULL COMMENT '售后服务附件',
  `shouhou_types` int DEFAULT NULL COMMENT '服务类型 Search111',
  `fuwu_time` timestamp NULL DEFAULT NULL COMMENT '服务时间',
  `shouhou_content` text COMMENT '售后服务内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='售后服务';

DELETE FROM `shouhou`;
INSERT INTO `shouhou` (`id`, `yonghu_id`, `hetong_id`, `shouhou_name`, `shouhou_uuid_number`, `shouhou_file`, `shouhou_types`, `fuwu_time`, `shouhou_content`, `insert_time`, `create_time`) VALUES
	(1, 2, 1, '售后服务名称1', '1678863653406', 'upload/file.rar', 3, '2023-03-15 07:00:53', '售后服务内容1', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(2, 1, 2, '售后服务名称2', '1678863653389', 'upload/file.rar', 1, '2023-03-15 07:00:53', '售后服务内容2', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(3, 2, 3, '售后服务名称3', '1678863653423', 'upload/file.rar', 1, '2023-03-15 07:00:53', '售后服务内容3', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(4, 1, 4, '售后服务名称4', '1678863653398', 'upload/file.rar', 1, '2023-03-15 07:00:53', '售后服务内容4', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(5, 1, 5, '售后服务名称5', '1678863653419', 'upload/file.rar', 2, '2023-03-15 07:00:53', '售后服务内容5', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(6, 1, 6, '售后服务名称6', '1678863653390', 'upload/file.rar', 2, '2023-03-15 07:00:53', '售后服务内容6', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(7, 2, 7, '售后服务名称7', '1678863653453', 'upload/file.rar', 2, '2023-03-15 07:00:53', '售后服务内容7', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(8, 2, 8, '售后服务名称8', '1678863653447', 'upload/file.rar', 1, '2023-03-15 07:00:53', '售后服务内容8', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(9, 2, 9, '售后服务名称9', '1678863653435', 'upload/file.rar', 3, '2023-03-15 07:00:53', '售后服务内容9', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(10, 1, 10, '售后服务名称10', '1678863653444', 'upload/file.rar', 1, '2023-03-15 07:00:53', '售后服务内容10', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(11, 1, 11, '售后服务名称11', '1678863653461', 'upload/file.rar', 1, '2023-03-15 07:00:53', '售后服务内容11', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(12, 3, 12, '售后服务名称12', '1678863653466', 'upload/file.rar', 3, '2023-03-15 07:00:53', '售后服务内容12', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(13, 1, 13, '售后服务名称13', '1678863653381', 'upload/file.rar', 3, '2023-03-15 07:00:53', '售后服务内容13', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(14, 1, 14, '售后服务名称14', '1678863653428', 'upload/file.rar', 2, '2023-03-15 07:00:53', '售后服务内容14', '2023-03-15 07:00:53', '2023-03-15 07:00:53');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', '51l58z3evtd6u18kb52kmyob0dn1lcie', '2023-03-15 07:01:28', '2024-08-12 07:57:19'),
	(2, 2, 'a2', 'yonghu', '用户', '0ki2zn60diwjf0373dp784usfssx0f3h', '2023-03-15 07:18:21', '2023-03-15 08:26:52'),
	(3, 4, 'a5', 'yonghu', '用户', 'hegb0x3pc214uh43k4c741d7vpzze5ub', '2023-03-15 07:25:58', '2023-03-15 08:25:58'),
	(4, 1, 'admin', 'users', '管理员', 'tpwnm2w7stygwmo95i18c9nf2f3xomz6', '2023-03-15 07:27:37', '2024-08-12 07:55:48');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-15 07:00:45');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `fangyuan_types` int DEFAULT NULL COMMENT '房源 Search111 ',
  `huxing_types` int DEFAULT NULL COMMENT '户型 Search111 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `fangyuan_types`, `huxing_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, 2, 1, '1@qq.com', '2023-03-15 07:00:53'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, 1, 1, '2@qq.com', '2023-03-15 07:00:53'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, 2, 2, '3@qq.com', '2023-03-15 07:00:53'),
	(4, '用户4', '123456', '张5', '17788889999', '410222666633331115', 'upload/1678865191498.jpg', 2, 1, 2, '5@qq.com', '2023-03-15 07:25:53');

DROP TABLE IF EXISTS `yusuan`;
CREATE TABLE IF NOT EXISTS `yusuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhuangxiufengge_id` int DEFAULT NULL COMMENT '风格',
  `yusuan_name` varchar(200) DEFAULT NULL COMMENT '预算名称  Search111 ',
  `yusuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '预算编号',
  `yusuan_types` int DEFAULT NULL COMMENT '预算类型 Search111',
  `yusuan_huafei` decimal(10,2) DEFAULT NULL COMMENT '预计花费',
  `yusuan_content` text COMMENT '预算详细介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '开具时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='预算';

DELETE FROM `yusuan`;
INSERT INTO `yusuan` (`id`, `yonghu_id`, `zhuangxiufengge_id`, `yusuan_name`, `yusuan_uuid_number`, `yusuan_types`, `yusuan_huafei`, `yusuan_content`, `insert_time`, `create_time`) VALUES
	(1, 2, 1, '预算名称1', '1678863653412', 4, 993.49, '预算详细介绍1', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(2, 2, 2, '预算名称2', '1678863653439', 3, 717.83, '预算详细介绍2', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(3, 2, 3, '预算名称3', '1678863653456', 3, 406.21, '预算详细介绍3', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(4, 3, 4, '预算名称4', '1678863653425', 1, 259.98, '预算详细介绍4', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(5, 3, 5, '预算名称5', '1678863653417', 2, 498.30, '预算详细介绍5', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(6, 3, 6, '预算名称6', '1678863653400', 1, 515.92, '预算详细介绍6', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(7, 2, 7, '预算名称7', '1678863653386', 1, 396.54, '预算详细介绍7', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(8, 1, 8, '预算名称8', '1678863653392', 2, 97.54, '预算详细介绍8', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(9, 1, 9, '预算名称9', '1678863653452', 4, 947.41, '预算详细介绍9', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(10, 1, 10, '预算名称10', '1678863653391', 1, 810.20, '预算详细介绍10', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(11, 1, 11, '预算名称11', '1678863653453', 3, 752.75, '预算详细介绍11', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(12, 2, 12, '预算名称12', '1678863653408', 2, 507.66, '预算详细介绍12', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(13, 3, 13, '预算名称13', '1678863653452', 4, 743.77, '预算详细介绍13', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(14, 3, 14, '预算名称14', '1678863653418', 2, 751.65, '预算详细介绍14', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(15, 2, 8, '预算标题11111', '1678865294125', 2, 999.00, '<p>答案是广东省广东省公司的个第三个第三个</p>', '2023-03-15 07:28:33', '2023-03-15 07:28:33');

DROP TABLE IF EXISTS `zhuangxiufengge`;
CREATE TABLE IF NOT EXISTS `zhuangxiufengge` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhuangxiufengge_name` varchar(200) DEFAULT NULL COMMENT '风格名称  Search111 ',
  `zhuangxiufengge_uuid_number` varchar(200) DEFAULT NULL COMMENT '装修风格编号',
  `zhuangxiufengge_photo` varchar(200) DEFAULT NULL COMMENT '装修风格照片',
  `zhuangxiufengge_types` int DEFAULT NULL COMMENT '装修风格类型 Search111',
  `huxing_types` int DEFAULT NULL COMMENT '户型 Search111 ',
  `zhuangxiufengge_kucun_number` int DEFAULT NULL COMMENT '装修风格库存',
  `zhuangxiufengge_clicknum` int DEFAULT NULL COMMENT '风格热度',
  `zhuangxiufengge_content` text COMMENT '装修风格详情',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `zhuangxiufengge_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='装修风格';

DELETE FROM `zhuangxiufengge`;
INSERT INTO `zhuangxiufengge` (`id`, `zhuangxiufengge_name`, `zhuangxiufengge_uuid_number`, `zhuangxiufengge_photo`, `zhuangxiufengge_types`, `huxing_types`, `zhuangxiufengge_kucun_number`, `zhuangxiufengge_clicknum`, `zhuangxiufengge_content`, `shangxia_types`, `zhuangxiufengge_delete`, `insert_time`, `create_time`) VALUES
	(1, '风格名称1', '1678863653462', 'upload/zhuangxiufengge1.jpg', 3, 2, 101, 1, '装修风格详情1', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(2, '风格名称2', '1678863653399', 'upload/zhuangxiufengge2.jpg', 1, 1, 102, 37, '装修风格详情2', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(3, '风格名称3', '1678863653453', 'upload/zhuangxiufengge3.jpg', 1, 2, 103, 77, '装修风格详情3', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(4, '风格名称4', '1678863653451', 'upload/zhuangxiufengge4.jpg', 2, 2, 104, 361, '装修风格详情4', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(5, '风格名称5', '1678863653390', 'upload/zhuangxiufengge5.jpg', 2, 1, 105, 180, '装修风格详情5', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(6, '风格名称6', '1678863653421', 'upload/zhuangxiufengge6.jpg', 2, 2, 106, 156, '装修风格详情6', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(7, '风格名称7', '1678863653431', 'upload/zhuangxiufengge7.jpg', 3, 1, 107, 478, '装修风格详情7', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(8, '风格名称8', '1678863653396', 'upload/zhuangxiufengge8.jpg', 3, 2, 108, 299, '装修风格详情8', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(9, '风格名称9', '1678863653447', 'upload/zhuangxiufengge9.jpg', 4, 1, 109, 163, '装修风格详情9', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(10, '风格名称10', '1678863653396', 'upload/zhuangxiufengge10.jpg', 1, 2, 1010, 185, '装修风格详情10', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(11, '风格名称11', '1678863653458', 'upload/zhuangxiufengge11.jpg', 4, 1, 1011, 330, '装修风格详情11', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(12, '风格名称12', '1678863653449', 'upload/zhuangxiufengge12.jpg', 1, 2, 1012, 342, '装修风格详情12', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(13, '风格名称13', '1678863653435', 'upload/zhuangxiufengge13.jpg', 1, 1, 1013, 136, '装修风格详情13', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(14, '风格名称14', '1678863653440', 'upload/zhuangxiufengge14.jpg', 3, 1, 1014, 262, '装修风格详情14', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53');

DROP TABLE IF EXISTS `zhuangxiufengge_collection`;
CREATE TABLE IF NOT EXISTS `zhuangxiufengge_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhuangxiufengge_id` int DEFAULT NULL COMMENT '装修风格',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhuangxiufengge_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='装修风格收藏';

DELETE FROM `zhuangxiufengge_collection`;
INSERT INTO `zhuangxiufengge_collection` (`id`, `zhuangxiufengge_id`, `yonghu_id`, `zhuangxiufengge_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(2, 2, 2, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(3, 3, 3, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(4, 4, 3, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(5, 5, 2, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(6, 6, 3, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(7, 7, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(8, 8, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(9, 9, 2, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(10, 10, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(12, 12, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(13, 13, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(14, 14, 3, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(15, 7, 4, 1, '2023-03-15 07:26:16', '2023-03-15 07:26:16');

DROP TABLE IF EXISTS `zhuangxiufengge_liuyan`;
CREATE TABLE IF NOT EXISTS `zhuangxiufengge_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhuangxiufengge_id` int DEFAULT NULL COMMENT '装修风格',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhuangxiufengge_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='装修风格留言';

DELETE FROM `zhuangxiufengge_liuyan`;
INSERT INTO `zhuangxiufengge_liuyan` (`id`, `zhuangxiufengge_id`, `yonghu_id`, `zhuangxiufengge_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-03-15 07:00:53', '回复信息1', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(2, 2, 3, '留言内容2', '2023-03-15 07:00:53', '回复信息2', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(3, 3, 3, '留言内容3', '2023-03-15 07:00:53', '回复信息3', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(4, 4, 1, '留言内容4', '2023-03-15 07:00:53', '回复信息4', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(5, 5, 1, '留言内容5', '2023-03-15 07:00:53', '回复信息5', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(6, 6, 3, '留言内容6', '2023-03-15 07:00:53', '回复信息6', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(7, 7, 2, '留言内容7', '2023-03-15 07:00:53', '回复信息7', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(8, 8, 1, '留言内容8', '2023-03-15 07:00:53', '回复信息8', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(9, 9, 3, '留言内容9', '2023-03-15 07:00:53', '回复信息9', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(10, 10, 2, '留言内容10', '2023-03-15 07:00:53', '回复信息10', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(11, 11, 1, '留言内容11', '2023-03-15 07:00:53', '回复信息11', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(12, 12, 3, '留言内容12', '2023-03-15 07:00:53', '回复信息12', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(13, 13, 3, '留言内容13', '2023-03-15 07:00:53', '回复信息13', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(14, 14, 1, '留言内容14', '2023-03-15 07:00:53', '回复信息14', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(15, 7, 4, '房东说个事', '2023-03-15 07:26:13', '骨灰盒', '2023-03-15 07:27:59', '2023-03-15 07:26:13');

DROP TABLE IF EXISTS `zhucai`;
CREATE TABLE IF NOT EXISTS `zhucai` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhucai_name` varchar(200) DEFAULT NULL COMMENT '主材名称  Search111 ',
  `zhucai_uuid_number` varchar(200) DEFAULT NULL COMMENT '主材编号',
  `zhucai_photo` varchar(200) DEFAULT NULL COMMENT '主材照片',
  `zhucai_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `zhucai_shengchanchangjia` varchar(200) DEFAULT NULL COMMENT '生产厂家',
  `zhucai_types` int DEFAULT NULL COMMENT '主材类型 Search111',
  `pinpai_types` int DEFAULT NULL COMMENT '品牌 Search111 ',
  `zhucai_jiage` decimal(10,2) DEFAULT NULL COMMENT '主材价格',
  `zhucai_clicknum` int DEFAULT NULL COMMENT '主材热度',
  `zhucai_content` text COMMENT '主材详情',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `zhucai_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='主材';

DELETE FROM `zhucai`;
INSERT INTO `zhucai` (`id`, `zhucai_name`, `zhucai_uuid_number`, `zhucai_photo`, `zhucai_danwei`, `zhucai_shengchanchangjia`, `zhucai_types`, `pinpai_types`, `zhucai_jiage`, `zhucai_clicknum`, `zhucai_content`, `shangxia_types`, `zhucai_delete`, `insert_time`, `create_time`) VALUES
	(1, '主材名称1', '1678863653423', 'upload/zhucai1.jpg', '个', '生产厂家1', 1, 4, 186.16, 472, '主材详情1', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(2, '主材名称2', '1678863653440', 'upload/zhucai2.jpg', '个', '生产厂家2', 1, 3, 233.27, 446, '主材详情2', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(3, '主材名称3', '1678863653398', 'upload/zhucai3.jpg', '个', '生产厂家3', 1, 2, 272.58, 283, '主材详情3', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(4, '主材名称4', '1678863653442', 'upload/zhucai4.jpg', '个', '生产厂家4', 4, 1, 490.33, 52, '主材详情4', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(5, '主材名称5', '1678863653463', 'upload/zhucai5.jpg', '个', '生产厂家5', 2, 1, 880.28, 293, '主材详情5', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(6, '主材名称6', '1678863653405', 'upload/zhucai6.jpg', '个', '生产厂家6', 2, 1, 407.75, 168, '主材详情6', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(7, '主材名称7', '1678863653449', 'upload/zhucai7.jpg', '个', '生产厂家7', 3, 1, 198.99, 296, '主材详情7', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(8, '主材名称8', '1678863653451', 'upload/zhucai8.jpg', '个', '生产厂家8', 3, 3, 417.60, 405, '主材详情8', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(9, '主材名称9', '1678863653431', 'upload/zhucai9.jpg', '个', '生产厂家9', 1, 3, 135.81, 99, '主材详情9', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(10, '主材名称10', '1678863653400', 'upload/zhucai10.jpg', '个', '生产厂家10', 2, 4, 772.58, 28, '主材详情10', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(11, '主材名称11', '1678863653426', 'upload/zhucai11.jpg', '个', '生产厂家11', 3, 2, 578.39, 122, '主材详情11', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(12, '主材名称12', '1678863653496', 'upload/zhucai12.jpg', '个', '生产厂家12', 2, 3, 167.93, 379, '主材详情12', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(13, '主材名称13', '1678863653428', 'upload/zhucai13.jpg', '个', '生产厂家13', 2, 2, 116.25, 8, '主材详情13', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(14, '主材名称14', '1678863653423', 'upload/zhucai14.jpg', '个', '生产厂家14', 3, 1, 934.94, 439, '主材详情14', 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53');

DROP TABLE IF EXISTS `zhucai_collection`;
CREATE TABLE IF NOT EXISTS `zhucai_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhucai_id` int DEFAULT NULL COMMENT '主材',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhucai_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='主材收藏';

DELETE FROM `zhucai_collection`;
INSERT INTO `zhucai_collection` (`id`, `zhucai_id`, `yonghu_id`, `zhucai_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(2, 2, 3, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(3, 3, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(4, 4, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(5, 5, 2, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(6, 6, 2, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(7, 7, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(8, 8, 3, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(9, 9, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(10, 10, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(11, 11, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(12, 12, 3, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(13, 13, 3, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(14, 14, 1, 1, '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(15, 2, 4, 1, '2023-03-15 07:26:25', '2023-03-15 07:26:25'),
	(16, 2, 1, 1, '2024-08-12 06:57:39', '2024-08-12 06:57:39');

DROP TABLE IF EXISTS `zhucai_liuyan`;
CREATE TABLE IF NOT EXISTS `zhucai_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhucai_id` int DEFAULT NULL COMMENT '主材',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhucai_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='主材留言';

DELETE FROM `zhucai_liuyan`;
INSERT INTO `zhucai_liuyan` (`id`, `zhucai_id`, `yonghu_id`, `zhucai_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-03-15 07:00:53', '回复信息1', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(2, 2, 2, '留言内容2', '2023-03-15 07:00:53', '回复信息2', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(3, 3, 2, '留言内容3', '2023-03-15 07:00:53', '回复信息3', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(4, 4, 1, '留言内容4', '2023-03-15 07:00:53', '回复信息4', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(5, 5, 1, '留言内容5', '2023-03-15 07:00:53', '回复信息5', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(6, 6, 1, '留言内容6', '2023-03-15 07:00:53', '回复信息6', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(7, 7, 2, '留言内容7', '2023-03-15 07:00:53', '回复信息7', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(8, 8, 3, '留言内容8', '2023-03-15 07:00:53', '回复信息8', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(9, 9, 1, '留言内容9', '2023-03-15 07:00:53', '回复信息9', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(10, 10, 1, '留言内容10', '2023-03-15 07:00:53', '回复信息10', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(11, 11, 1, '留言内容11', '2023-03-15 07:00:53', '回复信息11', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(12, 12, 1, '留言内容12', '2023-03-15 07:00:53', '回复信息12', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(13, 13, 2, '留言内容13', '2023-03-15 07:00:53', '回复信息13', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(14, 14, 2, '留言内容14', '2023-03-15 07:00:53', '回复信息14', '2023-03-15 07:00:53', '2023-03-15 07:00:53'),
	(15, 2, 4, '换个哈哈哈或', '2023-03-15 07:26:21', NULL, NULL, '2023-03-15 07:26:21');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
