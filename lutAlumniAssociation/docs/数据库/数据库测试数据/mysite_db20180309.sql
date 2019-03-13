/*
Navicat MySQL Data Transfer

Source Server         : mysite
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : mysite_db

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-03-09 21:55:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add user', '1', 'add_user');
INSERT INTO `auth_permission` VALUES ('2', 'Can change user', '1', 'change_user');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete user', '1', 'delete_user');
INSERT INTO `auth_permission` VALUES ('4', 'Can add collage', '2', 'add_collage');
INSERT INTO `auth_permission` VALUES ('5', 'Can change collage', '2', 'change_collage');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete collage', '2', 'delete_collage');
INSERT INTO `auth_permission` VALUES ('7', 'Can add d_city', '3', 'add_d_city');
INSERT INTO `auth_permission` VALUES ('8', 'Can change d_city', '3', 'change_d_city');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete d_city', '3', 'delete_d_city');
INSERT INTO `auth_permission` VALUES ('10', 'Can add d_country', '4', 'add_d_country');
INSERT INTO `auth_permission` VALUES ('11', 'Can change d_country', '4', 'change_d_country');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete d_country', '4', 'delete_d_country');
INSERT INTO `auth_permission` VALUES ('13', 'Can add d_industrial', '5', 'add_d_industrial');
INSERT INTO `auth_permission` VALUES ('14', 'Can change d_industrial', '5', 'change_d_industrial');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete d_industrial', '5', 'delete_d_industrial');
INSERT INTO `auth_permission` VALUES ('16', 'Can add d_province', '6', 'add_d_province');
INSERT INTO `auth_permission` VALUES ('17', 'Can change d_province', '6', 'change_d_province');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete d_province', '6', 'delete_d_province');
INSERT INTO `auth_permission` VALUES ('19', 'Can add organization', '7', 'add_organization');
INSERT INTO `auth_permission` VALUES ('20', 'Can change organization', '7', 'change_organization');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete organization', '7', 'delete_organization');
INSERT INTO `auth_permission` VALUES ('22', 'Can add specialty', '8', 'add_specialty');
INSERT INTO `auth_permission` VALUES ('23', 'Can change specialty', '8', 'change_specialty');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete specialty', '8', 'delete_specialty');
INSERT INTO `auth_permission` VALUES ('25', 'Can add user_author', '9', 'add_user_author');
INSERT INTO `auth_permission` VALUES ('26', 'Can change user_author', '9', 'change_user_author');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete user_author', '9', 'delete_user_author');
INSERT INTO `auth_permission` VALUES ('28', 'Can add user_edu', '10', 'add_user_edu');
INSERT INTO `auth_permission` VALUES ('29', 'Can change user_edu', '10', 'change_user_edu');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete user_edu', '10', 'delete_user_edu');
INSERT INTO `auth_permission` VALUES ('31', 'Can add user_history', '11', 'add_user_history');
INSERT INTO `auth_permission` VALUES ('32', 'Can change user_history', '11', 'change_user_history');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete user_history', '11', 'delete_user_history');
INSERT INTO `auth_permission` VALUES ('34', 'Can add log entry', '12', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('35', 'Can change log entry', '12', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete log entry', '12', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('37', 'Can add permission', '13', 'add_permission');
INSERT INTO `auth_permission` VALUES ('38', 'Can change permission', '13', 'change_permission');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete permission', '13', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('40', 'Can add group', '14', 'add_group');
INSERT INTO `auth_permission` VALUES ('41', 'Can change group', '14', 'change_group');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete group', '14', 'delete_group');
INSERT INTO `auth_permission` VALUES ('43', 'Can add content type', '15', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('44', 'Can change content type', '15', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete content type', '15', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('46', 'Can add session', '16', 'add_session');
INSERT INTO `auth_permission` VALUES ('47', 'Can change session', '16', 'change_session');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete session', '16', 'delete_session');
INSERT INTO `auth_permission` VALUES ('49', 'Can add school', '17', 'add_school');
INSERT INTO `auth_permission` VALUES ('50', 'Can change school', '17', 'change_school');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete school', '17', 'delete_school');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_oneapp_user_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_oneapp_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `oneapp_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('12', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('14', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('13', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('15', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('2', 'oneapp', 'collage');
INSERT INTO `django_content_type` VALUES ('3', 'oneapp', 'd_city');
INSERT INTO `django_content_type` VALUES ('4', 'oneapp', 'd_country');
INSERT INTO `django_content_type` VALUES ('5', 'oneapp', 'd_industrial');
INSERT INTO `django_content_type` VALUES ('6', 'oneapp', 'd_province');
INSERT INTO `django_content_type` VALUES ('7', 'oneapp', 'organization');
INSERT INTO `django_content_type` VALUES ('17', 'oneapp', 'school');
INSERT INTO `django_content_type` VALUES ('8', 'oneapp', 'specialty');
INSERT INTO `django_content_type` VALUES ('1', 'oneapp', 'user');
INSERT INTO `django_content_type` VALUES ('9', 'oneapp', 'user_author');
INSERT INTO `django_content_type` VALUES ('10', 'oneapp', 'user_edu');
INSERT INTO `django_content_type` VALUES ('11', 'oneapp', 'user_history');
INSERT INTO `django_content_type` VALUES ('16', 'sessions', 'session');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'oneapp', '0001_initial', '2017-09-04 08:18:33.296446');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0001_initial', '2017-09-04 08:18:33.348811');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-09-04 08:18:33.434640');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-09-04 08:18:33.480610');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-09-04 08:18:33.566743');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0001_initial', '2017-09-04 08:18:33.778557');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2017-09-04 08:18:33.808356');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2017-09-04 08:18:33.819109');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2017-09-04 08:18:33.829183');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2017-09-04 08:18:33.844460');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2017-09-04 08:18:33.847764');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2017-09-04 08:18:33.861657');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2017-09-04 08:18:33.874704');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2017-09-04 08:18:33.907507');
INSERT INTO `django_migrations` VALUES ('15', 'oneapp', '0002_auto_20170904_1257', '2017-09-04 12:57:42.437258');
INSERT INTO `django_migrations` VALUES ('16', 'oneapp', '0003_auto_20171129_0921', '2017-11-29 09:22:05.888214');
INSERT INTO `django_migrations` VALUES ('17', 'oneapp', '0004_auto_20171129_0932', '2017-11-29 09:32:40.928242');
INSERT INTO `django_migrations` VALUES ('18', 'oneapp', '0005_auto_20171129_0933', '2017-11-29 09:33:06.174472');
INSERT INTO `django_migrations` VALUES ('19', 'oneapp', '0006_auto_20171130_0305', '2017-11-30 03:06:00.780768');
INSERT INTO `django_migrations` VALUES ('20', 'oneapp', '0002_auto_20171202_0940', '2017-12-02 09:41:02.628437');
INSERT INTO `django_migrations` VALUES ('21', 'oneapp', '0003_auto_20171219_0656', '2017-12-19 06:56:59.279721');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for `oneapp_collage`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_collage`;
CREATE TABLE `oneapp_collage` (
  `collage_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `collage_name_cn` varchar(50) DEFAULT NULL,
  `collage_name_es` varchar(100) DEFAULT NULL,
  `collage_desc` varchar(100) DEFAULT NULL,
  `collage_name_history` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`collage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oneapp_collage
-- ----------------------------
INSERT INTO `oneapp_collage` VALUES ('1', '2017-06-28 01:25:20.718915', '2017-06-28 01:25:20.726357', '材料科学与工程学院', 'college material science and engineering school', null, null);
INSERT INTO `oneapp_collage` VALUES ('2', '2017-06-28 01:37:56.997296', '2017-06-28 01:37:56.998040', '机电工程学院', 'college mechanical and electrical engineering', null, null);
INSERT INTO `oneapp_collage` VALUES ('3', '2017-06-28 01:37:57.023434', '2017-06-28 01:37:57.024470', '石油化工学院', 'college petrochemical institute', null, null);
INSERT INTO `oneapp_collage` VALUES ('4', '2017-06-28 01:37:57.018350', '2017-06-28 01:37:57.019018', '能源与动力工程学院', 'college school of energy and power engineering', null, null);
INSERT INTO `oneapp_collage` VALUES ('5', '2017-06-28 01:37:56.986462', '2017-06-28 01:37:56.987341', '电气工程与信息工程学院', 'college school of electrical engineering and information engineering', null, null);
INSERT INTO `oneapp_collage` VALUES ('6', '2017-06-28 01:37:57.020747', '2017-06-28 01:37:57.021402', '计算机与通信学院', 'college school of computer and communications', null, null);
INSERT INTO `oneapp_collage` VALUES ('7', '2017-06-28 01:37:57.026192', '2017-06-28 01:37:57.026661', '土木工程学院', 'college civil engineering college', null, null);
INSERT INTO `oneapp_collage` VALUES ('8', '2017-06-28 01:37:57.004567', '2017-06-28 01:37:57.005180', '设计艺术学院', 'college design art institute', null, null);
INSERT INTO `oneapp_collage` VALUES ('9', '2017-06-28 01:37:57.027945', '2017-06-28 01:37:57.028561', '经济管理学院', 'college school of economics and management', null, null);
INSERT INTO `oneapp_collage` VALUES ('10', '2017-06-28 01:37:57.009298', '2017-06-28 01:37:57.009854', '法学院', 'college law school', null, null);
INSERT INTO `oneapp_collage` VALUES ('11', '2017-06-28 01:37:57.030141', '2017-06-28 01:37:57.030774', '外国语学院', 'college foreign language school', null, null);
INSERT INTO `oneapp_collage` VALUES ('12', '2017-06-28 01:37:56.999979', '2017-06-28 01:37:57.000703', '理学院', 'college college of science', null, null);
INSERT INTO `oneapp_collage` VALUES ('13', '2017-06-28 01:37:57.002350', '2017-06-28 01:37:57.002983', '生命科学与工程学院', 'college school of life science and engineering', null, null);
INSERT INTO `oneapp_collage` VALUES ('14', '2017-06-28 01:37:57.006631', '2017-06-28 01:37:57.007093', '文学院', 'college international institute of education', null, null);
INSERT INTO `oneapp_collage` VALUES ('15', '2017-06-28 01:37:57.011287', '2017-06-28 01:37:57.011919', '马克思主义学院', 'college academy of marxism', null, null);
INSERT INTO `oneapp_collage` VALUES ('16', '2017-06-28 01:37:57.034878', '2017-06-28 01:37:57.035400', '体育教学研究部', 'college department of physical education and teaching', null, null);
INSERT INTO `oneapp_collage` VALUES ('17', '2017-06-28 01:37:57.013514', '2017-06-28 01:37:57.014313', '继续教育学院', 'college continuing education', null, null);
INSERT INTO `oneapp_collage` VALUES ('18', '2017-09-04 21:37:33.388000', '2017-09-04 21:37:35.763000', '技术工程学院', null, null, null);
INSERT INTO `oneapp_collage` VALUES ('19', '2017-06-28 01:37:57.032515', '2017-06-28 01:37:57.033183', '软件学院', 'college software college', null, '软件职业技术学院');
INSERT INTO `oneapp_collage` VALUES ('20', '2017-06-28 01:37:57.037029', '2017-06-28 01:37:57.037607', 'MBA/MPAcc教育中心', 'college mba / mpacc education center', null, null);
INSERT INTO `oneapp_collage` VALUES ('21', '2017-06-28 01:37:57.039302', '2017-06-28 01:37:57.039864', '新能源学院（酒泉）', 'college new energy college (jiuquan)', null, null);
INSERT INTO `oneapp_collage` VALUES ('22', '2017-09-04 15:52:48.000000', '2017-09-04 15:52:51.000000', '国际教育学院', null, null, null);

-- ----------------------------
-- Table structure for `oneapp_d_city`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_d_city`;
CREATE TABLE `oneapp_d_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `n_city_id` int(11) NOT NULL,
  `city_name` varchar(20) NOT NULL,
  `n_province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `oneapp_d_city_n_province_id_8f8cd4ae_fk_oneapp_d_` (`n_province_id`),
  CONSTRAINT `oneapp_d_city_n_province_id_8f8cd4ae_fk_oneapp_d_` FOREIGN KEY (`n_province_id`) REFERENCES `oneapp_d_province` (`n_province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oneapp_d_city
-- ----------------------------
INSERT INTO `oneapp_d_city` VALUES ('1', '110100', '市辖区', '110000');
INSERT INTO `oneapp_d_city` VALUES ('2', '110200', '县', '110000');
INSERT INTO `oneapp_d_city` VALUES ('3', '120100', '市辖区', '120000');
INSERT INTO `oneapp_d_city` VALUES ('4', '120200', '县', '120000');
INSERT INTO `oneapp_d_city` VALUES ('5', '130100', '石家庄市', '130000');
INSERT INTO `oneapp_d_city` VALUES ('6', '130200', '唐山市', '130000');
INSERT INTO `oneapp_d_city` VALUES ('7', '130300', '秦皇岛市', '130000');
INSERT INTO `oneapp_d_city` VALUES ('8', '130400', '邯郸市', '130000');
INSERT INTO `oneapp_d_city` VALUES ('9', '130500', '邢台市', '130000');
INSERT INTO `oneapp_d_city` VALUES ('10', '130600', '保定市', '130000');
INSERT INTO `oneapp_d_city` VALUES ('11', '130700', '张家口市', '130000');
INSERT INTO `oneapp_d_city` VALUES ('12', '130800', '承德市', '130000');
INSERT INTO `oneapp_d_city` VALUES ('13', '130900', '沧州市', '130000');
INSERT INTO `oneapp_d_city` VALUES ('14', '131000', '廊坊市', '130000');
INSERT INTO `oneapp_d_city` VALUES ('15', '131100', '衡水市', '130000');
INSERT INTO `oneapp_d_city` VALUES ('16', '140100', '太原市', '140000');
INSERT INTO `oneapp_d_city` VALUES ('17', '140200', '大同市', '140000');
INSERT INTO `oneapp_d_city` VALUES ('18', '140300', '阳泉市', '140000');
INSERT INTO `oneapp_d_city` VALUES ('19', '140400', '长治市', '140000');
INSERT INTO `oneapp_d_city` VALUES ('20', '140500', '晋城市', '140000');
INSERT INTO `oneapp_d_city` VALUES ('21', '140600', '朔州市', '140000');
INSERT INTO `oneapp_d_city` VALUES ('22', '140700', '晋中市', '140000');
INSERT INTO `oneapp_d_city` VALUES ('23', '140800', '运城市', '140000');
INSERT INTO `oneapp_d_city` VALUES ('24', '140900', '忻州市', '140000');
INSERT INTO `oneapp_d_city` VALUES ('25', '141000', '临汾市', '140000');
INSERT INTO `oneapp_d_city` VALUES ('26', '141100', '吕梁市', '140000');
INSERT INTO `oneapp_d_city` VALUES ('27', '150100', '呼和浩特市', '150000');
INSERT INTO `oneapp_d_city` VALUES ('28', '150200', '包头市', '150000');
INSERT INTO `oneapp_d_city` VALUES ('29', '150300', '乌海市', '150000');
INSERT INTO `oneapp_d_city` VALUES ('30', '150400', '赤峰市', '150000');
INSERT INTO `oneapp_d_city` VALUES ('31', '150500', '通辽市', '150000');
INSERT INTO `oneapp_d_city` VALUES ('32', '150600', '鄂尔多斯市', '150000');
INSERT INTO `oneapp_d_city` VALUES ('33', '150700', '呼伦贝尔市', '150000');
INSERT INTO `oneapp_d_city` VALUES ('34', '150800', '巴彦淖尔市', '150000');
INSERT INTO `oneapp_d_city` VALUES ('35', '150900', '乌兰察布市', '150000');
INSERT INTO `oneapp_d_city` VALUES ('36', '152200', '兴安盟', '150000');
INSERT INTO `oneapp_d_city` VALUES ('37', '152500', '锡林郭勒盟', '150000');
INSERT INTO `oneapp_d_city` VALUES ('38', '152900', '阿拉善盟', '150000');
INSERT INTO `oneapp_d_city` VALUES ('39', '210100', '沈阳市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('40', '210200', '大连市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('41', '210300', '鞍山市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('42', '210400', '抚顺市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('43', '210500', '本溪市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('44', '210600', '丹东市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('45', '210700', '锦州市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('46', '210800', '营口市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('47', '210900', '阜新市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('48', '211000', '辽阳市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('49', '211100', '盘锦市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('50', '211200', '铁岭市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('51', '211300', '朝阳市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('52', '211400', '葫芦岛市', '210000');
INSERT INTO `oneapp_d_city` VALUES ('53', '220100', '长春市', '220000');
INSERT INTO `oneapp_d_city` VALUES ('54', '220200', '吉林市', '220000');
INSERT INTO `oneapp_d_city` VALUES ('55', '220300', '四平市', '220000');
INSERT INTO `oneapp_d_city` VALUES ('56', '220400', '辽源市', '220000');
INSERT INTO `oneapp_d_city` VALUES ('57', '220500', '通化市', '220000');
INSERT INTO `oneapp_d_city` VALUES ('58', '220600', '白山市', '220000');
INSERT INTO `oneapp_d_city` VALUES ('59', '220700', '松原市', '220000');
INSERT INTO `oneapp_d_city` VALUES ('60', '220800', '白城市', '220000');
INSERT INTO `oneapp_d_city` VALUES ('61', '222400', '延边朝鲜族自治州', '220000');
INSERT INTO `oneapp_d_city` VALUES ('62', '230100', '哈尔滨市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('63', '230200', '齐齐哈尔市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('64', '230300', '鸡西市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('65', '230400', '鹤岗市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('66', '230500', '双鸭山市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('67', '230600', '大庆市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('68', '230700', '伊春市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('69', '230800', '佳木斯市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('70', '230900', '七台河市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('71', '231000', '牡丹江市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('72', '231100', '黑河市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('73', '231200', '绥化市', '230000');
INSERT INTO `oneapp_d_city` VALUES ('74', '232700', '大兴安岭地区', '230000');
INSERT INTO `oneapp_d_city` VALUES ('75', '310100', '市辖区', '310000');
INSERT INTO `oneapp_d_city` VALUES ('76', '310200', '县', '310000');
INSERT INTO `oneapp_d_city` VALUES ('77', '320100', '南京市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('78', '320200', '无锡市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('79', '320300', '徐州市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('80', '320400', '常州市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('81', '320500', '苏州市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('82', '320600', '南通市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('83', '320700', '连云港市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('84', '320800', '淮安市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('85', '320900', '盐城市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('86', '321000', '扬州市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('87', '321100', '镇江市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('88', '321200', '泰州市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('89', '321300', '宿迁市', '320000');
INSERT INTO `oneapp_d_city` VALUES ('90', '330100', '杭州市', '330000');
INSERT INTO `oneapp_d_city` VALUES ('91', '330200', '宁波市', '330000');
INSERT INTO `oneapp_d_city` VALUES ('92', '330300', '温州市', '330000');
INSERT INTO `oneapp_d_city` VALUES ('93', '330400', '嘉兴市', '330000');
INSERT INTO `oneapp_d_city` VALUES ('94', '330500', '湖州市', '330000');
INSERT INTO `oneapp_d_city` VALUES ('95', '330600', '绍兴市', '330000');
INSERT INTO `oneapp_d_city` VALUES ('96', '330700', '金华市', '330000');
INSERT INTO `oneapp_d_city` VALUES ('97', '330800', '衢州市', '330000');
INSERT INTO `oneapp_d_city` VALUES ('98', '330900', '舟山市', '330000');
INSERT INTO `oneapp_d_city` VALUES ('99', '331000', '台州市', '330000');
INSERT INTO `oneapp_d_city` VALUES ('100', '331100', '丽水市', '330000');
INSERT INTO `oneapp_d_city` VALUES ('101', '340100', '合肥市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('102', '340200', '芜湖市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('103', '340300', '蚌埠市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('104', '340400', '淮南市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('105', '340500', '马鞍山市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('106', '340600', '淮北市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('107', '340700', '铜陵市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('108', '340800', '安庆市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('109', '341000', '黄山市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('110', '341100', '滁州市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('111', '341200', '阜阳市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('112', '341300', '宿州市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('113', '341400', '巢湖市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('114', '341500', '六安市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('115', '341600', '亳州市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('116', '341700', '池州市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('117', '341800', '宣城市', '340000');
INSERT INTO `oneapp_d_city` VALUES ('118', '350100', '福州市', '350000');
INSERT INTO `oneapp_d_city` VALUES ('119', '350200', '厦门市', '350000');
INSERT INTO `oneapp_d_city` VALUES ('120', '350300', '莆田市', '350000');
INSERT INTO `oneapp_d_city` VALUES ('121', '350400', '三明市', '350000');
INSERT INTO `oneapp_d_city` VALUES ('122', '350500', '泉州市', '350000');
INSERT INTO `oneapp_d_city` VALUES ('123', '350600', '漳州市', '350000');
INSERT INTO `oneapp_d_city` VALUES ('124', '350700', '南平市', '350000');
INSERT INTO `oneapp_d_city` VALUES ('125', '350800', '龙岩市', '350000');
INSERT INTO `oneapp_d_city` VALUES ('126', '350900', '宁德市', '350000');
INSERT INTO `oneapp_d_city` VALUES ('127', '360100', '南昌市', '360000');
INSERT INTO `oneapp_d_city` VALUES ('128', '360200', '景德镇市', '360000');
INSERT INTO `oneapp_d_city` VALUES ('129', '360300', '萍乡市', '360000');
INSERT INTO `oneapp_d_city` VALUES ('130', '360400', '九江市', '360000');
INSERT INTO `oneapp_d_city` VALUES ('131', '360500', '新余市', '360000');
INSERT INTO `oneapp_d_city` VALUES ('132', '360600', '鹰潭市', '360000');
INSERT INTO `oneapp_d_city` VALUES ('133', '360700', '赣州市', '360000');
INSERT INTO `oneapp_d_city` VALUES ('134', '360800', '吉安市', '360000');
INSERT INTO `oneapp_d_city` VALUES ('135', '360900', '宜春市', '360000');
INSERT INTO `oneapp_d_city` VALUES ('136', '361000', '抚州市', '360000');
INSERT INTO `oneapp_d_city` VALUES ('137', '361100', '上饶市', '360000');
INSERT INTO `oneapp_d_city` VALUES ('138', '370100', '济南市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('139', '370200', '青岛市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('140', '370300', '淄博市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('141', '370400', '枣庄市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('142', '370500', '东营市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('143', '370600', '烟台市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('144', '370700', '潍坊市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('145', '370800', '济宁市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('146', '370900', '泰安市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('147', '371000', '威海市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('148', '371100', '日照市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('149', '371200', '莱芜市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('150', '371300', '临沂市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('151', '371400', '德州市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('152', '371500', '聊城市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('153', '371600', '滨州市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('154', '371700', '荷泽市', '370000');
INSERT INTO `oneapp_d_city` VALUES ('155', '410100', '郑州市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('156', '410200', '开封市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('157', '410300', '洛阳市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('158', '410400', '平顶山市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('159', '410500', '安阳市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('160', '410600', '鹤壁市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('161', '410700', '新乡市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('162', '410800', '焦作市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('163', '410900', '濮阳市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('164', '411000', '许昌市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('165', '411100', '漯河市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('166', '411200', '三门峡市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('167', '411300', '南阳市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('168', '411400', '商丘市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('169', '411500', '信阳市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('170', '411600', '周口市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('171', '411700', '驻马店市', '410000');
INSERT INTO `oneapp_d_city` VALUES ('172', '420100', '武汉市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('173', '420200', '黄石市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('174', '420300', '十堰市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('175', '420500', '宜昌市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('176', '420600', '襄樊市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('177', '420700', '鄂州市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('178', '420800', '荆门市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('179', '420900', '孝感市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('180', '421000', '荆州市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('181', '421100', '黄冈市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('182', '421200', '咸宁市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('183', '421300', '随州市', '420000');
INSERT INTO `oneapp_d_city` VALUES ('184', '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `oneapp_d_city` VALUES ('185', '429000', '省直辖行政单位', '420000');
INSERT INTO `oneapp_d_city` VALUES ('186', '430100', '长沙市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('187', '430200', '株洲市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('188', '430300', '湘潭市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('189', '430400', '衡阳市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('190', '430500', '邵阳市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('191', '430600', '岳阳市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('192', '430700', '常德市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('193', '430800', '张家界市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('194', '430900', '益阳市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('195', '431000', '郴州市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('196', '431100', '永州市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('197', '431200', '怀化市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('198', '431300', '娄底市', '430000');
INSERT INTO `oneapp_d_city` VALUES ('199', '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `oneapp_d_city` VALUES ('200', '440100', '广州市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('201', '440200', '韶关市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('202', '440300', '深圳市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('203', '440400', '珠海市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('204', '440500', '汕头市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('205', '440600', '佛山市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('206', '440700', '江门市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('207', '440800', '湛江市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('208', '440900', '茂名市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('209', '441200', '肇庆市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('210', '441300', '惠州市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('211', '441400', '梅州市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('212', '441500', '汕尾市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('213', '441600', '河源市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('214', '441700', '阳江市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('215', '441800', '清远市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('216', '441900', '东莞市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('217', '442000', '中山市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('218', '445100', '潮州市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('219', '445200', '揭阳市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('220', '445300', '云浮市', '440000');
INSERT INTO `oneapp_d_city` VALUES ('221', '450100', '南宁市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('222', '450200', '柳州市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('223', '450300', '桂林市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('224', '450400', '梧州市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('225', '450500', '北海市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('226', '450600', '防城港市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('227', '450700', '钦州市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('228', '450800', '贵港市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('229', '450900', '玉林市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('230', '451000', '百色市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('231', '451100', '贺州市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('232', '451200', '河池市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('233', '451300', '来宾市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('234', '451400', '崇左市', '450000');
INSERT INTO `oneapp_d_city` VALUES ('235', '460100', '海口市', '460000');
INSERT INTO `oneapp_d_city` VALUES ('236', '460200', '三亚市', '460000');
INSERT INTO `oneapp_d_city` VALUES ('237', '469000', '省直辖县级行政单位', '460000');
INSERT INTO `oneapp_d_city` VALUES ('238', '500100', '市辖区', '500000');
INSERT INTO `oneapp_d_city` VALUES ('239', '500200', '县', '500000');
INSERT INTO `oneapp_d_city` VALUES ('240', '500300', '市', '500000');
INSERT INTO `oneapp_d_city` VALUES ('241', '510100', '成都市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('242', '510300', '自贡市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('243', '510400', '攀枝花市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('244', '510500', '泸州市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('245', '510600', '德阳市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('246', '510700', '绵阳市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('247', '510800', '广元市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('248', '510900', '遂宁市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('249', '511000', '内江市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('250', '511100', '乐山市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('251', '511300', '南充市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('252', '511400', '眉山市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('253', '511500', '宜宾市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('254', '511600', '广安市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('255', '511700', '达州市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('256', '511800', '雅安市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('257', '511900', '巴中市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('258', '512000', '资阳市', '510000');
INSERT INTO `oneapp_d_city` VALUES ('259', '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `oneapp_d_city` VALUES ('260', '513300', '甘孜藏族自治州', '510000');
INSERT INTO `oneapp_d_city` VALUES ('261', '513400', '凉山彝族自治州', '510000');
INSERT INTO `oneapp_d_city` VALUES ('262', '520100', '贵阳市', '520000');
INSERT INTO `oneapp_d_city` VALUES ('263', '520200', '六盘水市', '520000');
INSERT INTO `oneapp_d_city` VALUES ('264', '520300', '遵义市', '520000');
INSERT INTO `oneapp_d_city` VALUES ('265', '520400', '安顺市', '520000');
INSERT INTO `oneapp_d_city` VALUES ('266', '522200', '铜仁地区', '520000');
INSERT INTO `oneapp_d_city` VALUES ('267', '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `oneapp_d_city` VALUES ('268', '522400', '毕节地区', '520000');
INSERT INTO `oneapp_d_city` VALUES ('269', '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `oneapp_d_city` VALUES ('270', '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `oneapp_d_city` VALUES ('271', '530100', '昆明市', '530000');
INSERT INTO `oneapp_d_city` VALUES ('272', '530300', '曲靖市', '530000');
INSERT INTO `oneapp_d_city` VALUES ('273', '530400', '玉溪市', '530000');
INSERT INTO `oneapp_d_city` VALUES ('274', '530500', '保山市', '530000');
INSERT INTO `oneapp_d_city` VALUES ('275', '530600', '昭通市', '530000');
INSERT INTO `oneapp_d_city` VALUES ('276', '530700', '丽江市', '530000');
INSERT INTO `oneapp_d_city` VALUES ('277', '530800', '思茅市', '530000');
INSERT INTO `oneapp_d_city` VALUES ('278', '530900', '临沧市', '530000');
INSERT INTO `oneapp_d_city` VALUES ('279', '532300', '楚雄彝族自治州', '530000');
INSERT INTO `oneapp_d_city` VALUES ('280', '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `oneapp_d_city` VALUES ('281', '532600', '文山壮族苗族自治州', '530000');
INSERT INTO `oneapp_d_city` VALUES ('282', '532800', '西双版纳傣族自治州', '530000');
INSERT INTO `oneapp_d_city` VALUES ('283', '532900', '大理白族自治州', '530000');
INSERT INTO `oneapp_d_city` VALUES ('284', '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `oneapp_d_city` VALUES ('285', '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `oneapp_d_city` VALUES ('286', '533400', '迪庆藏族自治州', '530000');
INSERT INTO `oneapp_d_city` VALUES ('287', '540100', '拉萨市', '540000');
INSERT INTO `oneapp_d_city` VALUES ('288', '542100', '昌都地区', '540000');
INSERT INTO `oneapp_d_city` VALUES ('289', '542200', '山南地区', '540000');
INSERT INTO `oneapp_d_city` VALUES ('290', '542300', '日喀则地区', '540000');
INSERT INTO `oneapp_d_city` VALUES ('291', '542400', '那曲地区', '540000');
INSERT INTO `oneapp_d_city` VALUES ('292', '542500', '阿里地区', '540000');
INSERT INTO `oneapp_d_city` VALUES ('293', '542600', '林芝地区', '540000');
INSERT INTO `oneapp_d_city` VALUES ('294', '610100', '西安市', '610000');
INSERT INTO `oneapp_d_city` VALUES ('295', '610200', '铜川市', '610000');
INSERT INTO `oneapp_d_city` VALUES ('296', '610300', '宝鸡市', '610000');
INSERT INTO `oneapp_d_city` VALUES ('297', '610400', '咸阳市', '610000');
INSERT INTO `oneapp_d_city` VALUES ('298', '610500', '渭南市', '610000');
INSERT INTO `oneapp_d_city` VALUES ('299', '610600', '延安市', '610000');
INSERT INTO `oneapp_d_city` VALUES ('300', '610700', '汉中市', '610000');
INSERT INTO `oneapp_d_city` VALUES ('301', '610800', '榆林市', '610000');
INSERT INTO `oneapp_d_city` VALUES ('302', '610900', '安康市', '610000');
INSERT INTO `oneapp_d_city` VALUES ('303', '611000', '商洛市', '610000');
INSERT INTO `oneapp_d_city` VALUES ('304', '620100', '兰州市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('305', '620200', '嘉峪关市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('306', '620300', '金昌市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('307', '620400', '白银市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('308', '620500', '天水市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('309', '620600', '武威市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('310', '620700', '张掖市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('311', '620800', '平凉市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('312', '620900', '酒泉市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('313', '621000', '庆阳市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('314', '621100', '定西市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('315', '621200', '陇南市', '620000');
INSERT INTO `oneapp_d_city` VALUES ('316', '622900', '临夏回族自治州', '620000');
INSERT INTO `oneapp_d_city` VALUES ('317', '623000', '甘南藏族自治州', '620000');
INSERT INTO `oneapp_d_city` VALUES ('318', '630100', '西宁市', '630000');
INSERT INTO `oneapp_d_city` VALUES ('319', '632100', '海东地区', '630000');
INSERT INTO `oneapp_d_city` VALUES ('320', '632200', '海北藏族自治州', '630000');
INSERT INTO `oneapp_d_city` VALUES ('321', '632300', '黄南藏族自治州', '630000');
INSERT INTO `oneapp_d_city` VALUES ('322', '632500', '海南藏族自治州', '630000');
INSERT INTO `oneapp_d_city` VALUES ('323', '632600', '果洛藏族自治州', '630000');
INSERT INTO `oneapp_d_city` VALUES ('324', '632700', '玉树藏族自治州', '630000');
INSERT INTO `oneapp_d_city` VALUES ('325', '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `oneapp_d_city` VALUES ('326', '640100', '银川市', '640000');
INSERT INTO `oneapp_d_city` VALUES ('327', '640200', '石嘴山市', '640000');
INSERT INTO `oneapp_d_city` VALUES ('328', '640300', '吴忠市', '640000');
INSERT INTO `oneapp_d_city` VALUES ('329', '640400', '固原市', '640000');
INSERT INTO `oneapp_d_city` VALUES ('330', '640500', '中卫市', '640000');
INSERT INTO `oneapp_d_city` VALUES ('331', '650100', '乌鲁木齐市', '650000');
INSERT INTO `oneapp_d_city` VALUES ('332', '650200', '克拉玛依市', '650000');
INSERT INTO `oneapp_d_city` VALUES ('333', '652100', '吐鲁番地区', '650000');
INSERT INTO `oneapp_d_city` VALUES ('334', '652200', '哈密地区', '650000');
INSERT INTO `oneapp_d_city` VALUES ('335', '652300', '昌吉回族自治州', '650000');
INSERT INTO `oneapp_d_city` VALUES ('336', '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `oneapp_d_city` VALUES ('337', '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `oneapp_d_city` VALUES ('338', '652900', '阿克苏地区', '650000');
INSERT INTO `oneapp_d_city` VALUES ('339', '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `oneapp_d_city` VALUES ('340', '653100', '喀什地区', '650000');
INSERT INTO `oneapp_d_city` VALUES ('341', '653200', '和田地区', '650000');
INSERT INTO `oneapp_d_city` VALUES ('342', '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `oneapp_d_city` VALUES ('343', '654200', '塔城地区', '650000');
INSERT INTO `oneapp_d_city` VALUES ('344', '654300', '阿勒泰地区', '650000');
INSERT INTO `oneapp_d_city` VALUES ('345', '659000', '省直辖行政单位', '650000');

-- ----------------------------
-- Table structure for `oneapp_d_country`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_d_country`;
CREATE TABLE `oneapp_d_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `country_name_cn` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `country_code1` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `country_code2` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of oneapp_d_country
-- ----------------------------
INSERT INTO `oneapp_d_country` VALUES ('1', 'Afghanistan', '阿富汗', 'AF', '93');
INSERT INTO `oneapp_d_country` VALUES ('2', 'Albania', '阿尔巴尼亚', 'AL', '355');
INSERT INTO `oneapp_d_country` VALUES ('3', 'Algeria', '阿尔及利亚', 'DZ', '213');
INSERT INTO `oneapp_d_country` VALUES ('4', 'American Samoa', '萨摩亚', 'AS', '684');
INSERT INTO `oneapp_d_country` VALUES ('5', 'Andorra', '安道尔共和国', 'AD', '376');
INSERT INTO `oneapp_d_country` VALUES ('6', 'Angola', '安哥拉', 'AO', '244');
INSERT INTO `oneapp_d_country` VALUES ('7', 'Anguilla', '安圭拉', 'AI', '1-264');
INSERT INTO `oneapp_d_country` VALUES ('8', 'Antarctica', '南极洲', 'AQ', '672');
INSERT INTO `oneapp_d_country` VALUES ('9', 'Antigua and Barbuda', '安提瓜和巴布达', 'AG', '1-268');
INSERT INTO `oneapp_d_country` VALUES ('10', 'Argentina', '阿根廷', 'AR', '54');
INSERT INTO `oneapp_d_country` VALUES ('11', 'Armenia', '亚美尼亚', 'AM', '374');
INSERT INTO `oneapp_d_country` VALUES ('12', 'Aruba', '阿鲁巴', 'AW', '297');
INSERT INTO `oneapp_d_country` VALUES ('13', 'Australia', '澳大利亚', 'AU', '61');
INSERT INTO `oneapp_d_country` VALUES ('14', 'Austria', '奥地利', 'AT', '43');
INSERT INTO `oneapp_d_country` VALUES ('15', 'Azerbaijan', '阿塞拜疆', 'AZ', '994');
INSERT INTO `oneapp_d_country` VALUES ('16', 'Bahamas', '巴哈马', 'BS', '1-242');
INSERT INTO `oneapp_d_country` VALUES ('17', 'Bahrain', '巴林', 'BH', '973');
INSERT INTO `oneapp_d_country` VALUES ('18', 'Bangladesh', '孟加拉国', 'BD', '880');
INSERT INTO `oneapp_d_country` VALUES ('19', 'Barbados', '巴巴多斯', 'BB', '1-246');
INSERT INTO `oneapp_d_country` VALUES ('20', 'Belarus', '白俄罗斯', 'BY', '375');
INSERT INTO `oneapp_d_country` VALUES ('21', 'Belgium', '比利时', 'BE', '32');
INSERT INTO `oneapp_d_country` VALUES ('22', 'Belize', '伯利兹城', 'BZ', '501');
INSERT INTO `oneapp_d_country` VALUES ('23', 'Benin', '贝宁', 'BJ', '229');
INSERT INTO `oneapp_d_country` VALUES ('24', 'Bermuda', '百慕大', 'BM', '1-441');
INSERT INTO `oneapp_d_country` VALUES ('25', 'Bhutan', '不丹', 'BT', '975');
INSERT INTO `oneapp_d_country` VALUES ('26', 'Bolivia', '玻利维亚', 'BO', '591');
INSERT INTO `oneapp_d_country` VALUES ('27', 'Bosnia and Herzegovina', '波斯尼亚和黑塞哥维那', 'BA', '387');
INSERT INTO `oneapp_d_country` VALUES ('28', 'Botswana', '博茨瓦纳', 'BW', '267');
INSERT INTO `oneapp_d_country` VALUES ('29', 'Bouvet Island', '布维岛', 'BV', '');
INSERT INTO `oneapp_d_country` VALUES ('30', 'Brazil', '巴西', 'BR', '55');
INSERT INTO `oneapp_d_country` VALUES ('31', 'British Indian Ocean Territory', '英属印度洋领地', 'IO', '1-284');
INSERT INTO `oneapp_d_country` VALUES ('32', 'Brunei Darussalam', '文莱达鲁萨兰国', 'BN', '673');
INSERT INTO `oneapp_d_country` VALUES ('33', 'Bulgaria', '保加利亚', 'BG', '359');
INSERT INTO `oneapp_d_country` VALUES ('34', 'Burkina Faso', '布基纳法索', 'BF', '226');
INSERT INTO `oneapp_d_country` VALUES ('35', 'Burundi', '布隆迪', 'BI', '257');
INSERT INTO `oneapp_d_country` VALUES ('36', 'Cambodia', '柬埔寨', 'KH', '855');
INSERT INTO `oneapp_d_country` VALUES ('37', 'Cameroon', '喀麦隆', 'CM', '237');
INSERT INTO `oneapp_d_country` VALUES ('38', 'Canada', '加拿大', 'CA', '1');
INSERT INTO `oneapp_d_country` VALUES ('39', 'Cape Verde', '佛得角', 'CV', '238');
INSERT INTO `oneapp_d_country` VALUES ('40', 'Cayman Islands', '开曼群岛', 'KY', '1-345');
INSERT INTO `oneapp_d_country` VALUES ('41', 'Central African Republic', '中非共和国', 'CF', '236');
INSERT INTO `oneapp_d_country` VALUES ('42', 'Chad', '乍得', 'TD', '235');
INSERT INTO `oneapp_d_country` VALUES ('43', 'Chile', '智利', 'CL', '56');
INSERT INTO `oneapp_d_country` VALUES ('44', 'China', '中国', 'CN', '86');
INSERT INTO `oneapp_d_country` VALUES ('45', 'Christmas Island', '圣延岛', 'CX', '61');
INSERT INTO `oneapp_d_country` VALUES ('46', 'Cocos (Keeling) Islands', '科科斯群岛', 'CC', '61');
INSERT INTO `oneapp_d_country` VALUES ('47', 'Colombia', '哥伦比亚', 'CO', '57');
INSERT INTO `oneapp_d_country` VALUES ('48', 'Comoros', '科摩罗', 'KM', '269');
INSERT INTO `oneapp_d_country` VALUES ('49', 'Congo', '刚果', 'CG', '242');
INSERT INTO `oneapp_d_country` VALUES ('50', 'Congo, The Democratic Republic Of The', '刚果民主共和国', 'ZR', '243');
INSERT INTO `oneapp_d_country` VALUES ('51', 'Cook Islands', '库克群岛', 'CK', '682');
INSERT INTO `oneapp_d_country` VALUES ('52', 'Costa Rica', '哥斯达黎加', 'CR', '506');
INSERT INTO `oneapp_d_country` VALUES ('53', 'Cote D\'Ivoire', '科特迪瓦', 'CI', '225');
INSERT INTO `oneapp_d_country` VALUES ('54', 'Croatia (local name: Hrvatska)', '克罗地亚', 'HR', '385');
INSERT INTO `oneapp_d_country` VALUES ('55', 'Cuba', '古巴', 'CU', '53');
INSERT INTO `oneapp_d_country` VALUES ('56', 'Cyprus', '塞浦路斯', 'CY', '357');
INSERT INTO `oneapp_d_country` VALUES ('57', 'Czech Republic', '捷克', 'CZ', '420');
INSERT INTO `oneapp_d_country` VALUES ('58', 'Denmark', '丹麦', 'DK', '45');
INSERT INTO `oneapp_d_country` VALUES ('59', 'Djibouti', '吉布提', 'DJ', '253');
INSERT INTO `oneapp_d_country` VALUES ('60', 'Dominica', '多米尼克国', 'DM', '1-767');
INSERT INTO `oneapp_d_country` VALUES ('61', 'Dominican Republic', '多米尼加共和国', 'DO', '1-809');
INSERT INTO `oneapp_d_country` VALUES ('62', 'East Timor', '东帝汶', 'TP', '670');
INSERT INTO `oneapp_d_country` VALUES ('63', 'Ecuador', '厄瓜多尔', 'EC', '593');
INSERT INTO `oneapp_d_country` VALUES ('64', 'Egypt', '埃及', 'EG', '20');
INSERT INTO `oneapp_d_country` VALUES ('65', 'El Salvador', '萨尔瓦多', 'SV', '503');
INSERT INTO `oneapp_d_country` VALUES ('66', 'Equatorial Guinea', '赤道几内亚', 'GQ', '240');
INSERT INTO `oneapp_d_country` VALUES ('67', 'Eritrea', '厄立特里亚国', 'ER', '291');
INSERT INTO `oneapp_d_country` VALUES ('68', 'Estonia', '爱沙尼亚', 'EE', '372');
INSERT INTO `oneapp_d_country` VALUES ('69', 'Ethiopia', '埃塞俄比亚', 'ET', '251');
INSERT INTO `oneapp_d_country` VALUES ('70', 'Falkland Islands (Malvinas)', '福克兰群岛', 'FK', '500');
INSERT INTO `oneapp_d_country` VALUES ('71', 'Faroe Islands', '法罗群岛', 'FO', '298');
INSERT INTO `oneapp_d_country` VALUES ('72', 'Fiji', '斐济', 'FJ', '679');
INSERT INTO `oneapp_d_country` VALUES ('73', 'Finland', '芬兰', 'FI', '358');
INSERT INTO `oneapp_d_country` VALUES ('74', 'France', '法国', 'FR', '33');
INSERT INTO `oneapp_d_country` VALUES ('75', 'France Metropolitan', '法国大都会', 'FX', '33');
INSERT INTO `oneapp_d_country` VALUES ('76', 'French Guiana', '法属圭亚那', 'GF', '594');
INSERT INTO `oneapp_d_country` VALUES ('77', 'French Polynesia', '法属玻里尼西亚', 'PF', '689');
INSERT INTO `oneapp_d_country` VALUES ('78', 'French Southern Territories', '法国南部地区', 'TF', '');
INSERT INTO `oneapp_d_country` VALUES ('79', 'Gabon', '加蓬', 'GA', '241');
INSERT INTO `oneapp_d_country` VALUES ('80', 'Gambia', ' 冈比亚', 'GM', '220');
INSERT INTO `oneapp_d_country` VALUES ('81', 'Georgia', '格鲁吉亚', 'GE', '995');
INSERT INTO `oneapp_d_country` VALUES ('82', 'Germany', '德国', 'DE', '49');
INSERT INTO `oneapp_d_country` VALUES ('83', 'Ghana', '加纳', 'GH', '233');
INSERT INTO `oneapp_d_country` VALUES ('84', 'Gibraltar', '直布罗陀', 'GI', '350');
INSERT INTO `oneapp_d_country` VALUES ('85', 'Greece', '希腊', 'GR', '30');
INSERT INTO `oneapp_d_country` VALUES ('86', 'Greenland', '格陵兰', 'GL', '299');
INSERT INTO `oneapp_d_country` VALUES ('87', 'Grenada', '格林纳达', 'GD', '1-473');
INSERT INTO `oneapp_d_country` VALUES ('88', 'Guadeloupe', '瓜德罗普岛', 'GP', '590');
INSERT INTO `oneapp_d_country` VALUES ('89', 'Guam', '关岛', 'GU', '1-671');
INSERT INTO `oneapp_d_country` VALUES ('90', 'Guatemala', '危地马拉', 'GT', '502');
INSERT INTO `oneapp_d_country` VALUES ('91', 'Guinea', '几内亚', 'GN', '224');
INSERT INTO `oneapp_d_country` VALUES ('92', 'Guinea-Bissau', '几内亚比绍', 'GW', '245');
INSERT INTO `oneapp_d_country` VALUES ('93', 'Guyana', '圭亚那', 'GY', '592');
INSERT INTO `oneapp_d_country` VALUES ('94', 'Haiti', '海地', 'HT', '509');
INSERT INTO `oneapp_d_country` VALUES ('95', 'Heard and Mc Donald Islands', '赫德岛和麦克唐纳群岛', 'HM', '');
INSERT INTO `oneapp_d_country` VALUES ('96', 'Honduras', '洪都拉斯', 'HN', '504');
INSERT INTO `oneapp_d_country` VALUES ('97', 'Hong Kong', '香港', 'HK', '852');
INSERT INTO `oneapp_d_country` VALUES ('98', 'Hungary', '匈牙利', 'HU', '36');
INSERT INTO `oneapp_d_country` VALUES ('99', 'Iceland', '冰岛', 'IS', '354');
INSERT INTO `oneapp_d_country` VALUES ('100', 'India', '印度', 'IN', '91');
INSERT INTO `oneapp_d_country` VALUES ('101', 'Indonesia', '印度尼西亚', 'ID', '62');
INSERT INTO `oneapp_d_country` VALUES ('102', 'Iran (Islamic Republic of)', '伊朗(伊斯兰共和国)', 'IR', '98');
INSERT INTO `oneapp_d_country` VALUES ('103', 'Iraq', '伊拉克', 'IQ', '964');
INSERT INTO `oneapp_d_country` VALUES ('104', 'Ireland', '爱尔兰', 'IE', '353');
INSERT INTO `oneapp_d_country` VALUES ('105', 'Isle of Man', '英国属地曼岛', 'IM', '');
INSERT INTO `oneapp_d_country` VALUES ('106', 'Israel', '以色列', 'IL', '972');
INSERT INTO `oneapp_d_country` VALUES ('107', 'Italy', '意大利', 'IT', '39');
INSERT INTO `oneapp_d_country` VALUES ('108', 'Jamaica', '牙买加', 'JM', '1-876');
INSERT INTO `oneapp_d_country` VALUES ('109', 'Japan', '日本', 'JP', '81');
INSERT INTO `oneapp_d_country` VALUES ('110', 'Jordan', '约旦', 'JO', '962');
INSERT INTO `oneapp_d_country` VALUES ('111', 'Kazakhstan', '哈萨克', 'KZ', '7');
INSERT INTO `oneapp_d_country` VALUES ('112', 'Kenya', '肯尼亚', 'KE', '254');
INSERT INTO `oneapp_d_country` VALUES ('113', 'Kiribati', '吉尔巴斯', 'KI', '686');
INSERT INTO `oneapp_d_country` VALUES ('114', 'Kuwait', '科威特', 'KW', '965');
INSERT INTO `oneapp_d_country` VALUES ('115', 'Kyrgyzstan', '吉尔吉斯', 'KG', '996');
INSERT INTO `oneapp_d_country` VALUES ('116', 'Lao People\'s Democratic Republic', '老挝人民民主共和国', 'LA', '');
INSERT INTO `oneapp_d_country` VALUES ('117', 'Latvia', '拉脱维亚', 'LV', '371');
INSERT INTO `oneapp_d_country` VALUES ('118', 'Lebanon', '黎巴嫩', 'LB', '961');
INSERT INTO `oneapp_d_country` VALUES ('119', 'Lesotho', '莱索托', 'LS', '266');
INSERT INTO `oneapp_d_country` VALUES ('120', 'Liberia', '利比里亚', 'LR', '231');
INSERT INTO `oneapp_d_country` VALUES ('121', 'Libyan Arab Jamahiriya', '利比亚', 'LY', '218');
INSERT INTO `oneapp_d_country` VALUES ('122', 'Liechtenstein', '列支敦士登', 'LI', '423');
INSERT INTO `oneapp_d_country` VALUES ('123', 'Lithuania', '立陶宛', 'LT', '370');
INSERT INTO `oneapp_d_country` VALUES ('124', 'Luxembourg', '卢森堡', 'LU', '352');
INSERT INTO `oneapp_d_country` VALUES ('125', 'Macau', '澳门地区', 'MO', '853');
INSERT INTO `oneapp_d_country` VALUES ('126', 'Madagascar', '马达加斯加', 'MG', '261');
INSERT INTO `oneapp_d_country` VALUES ('127', 'Malawi', '马拉维', 'MW', '265');
INSERT INTO `oneapp_d_country` VALUES ('128', 'Malaysia', '马来西亚', 'MY', '60');
INSERT INTO `oneapp_d_country` VALUES ('129', 'Maldives', '马尔代夫', 'MV', '960');
INSERT INTO `oneapp_d_country` VALUES ('130', 'Mali', '马里', 'ML', '223');
INSERT INTO `oneapp_d_country` VALUES ('131', 'Malta', '马尔他', 'MT', '356');
INSERT INTO `oneapp_d_country` VALUES ('132', 'Marshall Islands', '马绍尔群岛', 'MH', '692');
INSERT INTO `oneapp_d_country` VALUES ('133', 'Martinique', '马提尼克岛', 'MQ', '596');
INSERT INTO `oneapp_d_country` VALUES ('134', 'Mauritania', '毛里塔尼亚', 'MR', '222');
INSERT INTO `oneapp_d_country` VALUES ('135', 'Mauritius', '毛里求斯', 'MU', '230');
INSERT INTO `oneapp_d_country` VALUES ('136', 'Mayotte', '马约特', 'YT', '269');
INSERT INTO `oneapp_d_country` VALUES ('137', 'Mexico', '墨西哥', 'MX', '52');
INSERT INTO `oneapp_d_country` VALUES ('138', 'Micronesia', '密克罗尼西亚', 'FM', '691');
INSERT INTO `oneapp_d_country` VALUES ('139', 'Moldova', '摩尔多瓦', 'MD', '373');
INSERT INTO `oneapp_d_country` VALUES ('140', 'Monaco', '摩纳哥', 'MC', '377');
INSERT INTO `oneapp_d_country` VALUES ('141', 'Mongolia', '外蒙古', 'MN', '976');
INSERT INTO `oneapp_d_country` VALUES ('142', 'Montenegro', '黑山共和国', 'MNE', '382');
INSERT INTO `oneapp_d_country` VALUES ('143', 'Montserrat', '蒙特色纳', 'MS', '1-664');
INSERT INTO `oneapp_d_country` VALUES ('144', 'Morocco', '摩洛哥', 'MA', '212');
INSERT INTO `oneapp_d_country` VALUES ('145', 'Mozambique', '莫桑比克', 'MZ', '258');
INSERT INTO `oneapp_d_country` VALUES ('146', 'Myanmar', '缅甸', 'MM', '95');
INSERT INTO `oneapp_d_country` VALUES ('147', 'Namibia', '那米比亚', 'NA', '264');
INSERT INTO `oneapp_d_country` VALUES ('148', 'Nauru', '瑙鲁', 'NR', '674');
INSERT INTO `oneapp_d_country` VALUES ('149', 'Nepal', '尼泊尔', 'NP', '977');
INSERT INTO `oneapp_d_country` VALUES ('150', 'Netherlands', '荷兰', 'NL', '31');
INSERT INTO `oneapp_d_country` VALUES ('151', 'Netherlands Antilles', '荷兰安的列斯群岛', 'AN', '599');
INSERT INTO `oneapp_d_country` VALUES ('152', 'New Caledonia', '新加勒多尼亚', 'NC', '687');
INSERT INTO `oneapp_d_country` VALUES ('153', 'New Zealand', '新西兰', 'NZ', '64');
INSERT INTO `oneapp_d_country` VALUES ('154', 'Nicaragua', '尼加拉瓜', 'NI', '505');
INSERT INTO `oneapp_d_country` VALUES ('155', 'Niger', '尼日尔', 'NE', '227');
INSERT INTO `oneapp_d_country` VALUES ('156', 'Nigeria', '尼日利亚', 'NG', '234');
INSERT INTO `oneapp_d_country` VALUES ('157', 'Niue', '纽鄂岛', 'NU', '683');
INSERT INTO `oneapp_d_country` VALUES ('158', 'Norfolk Island', '诺福克岛', 'NF', '672');
INSERT INTO `oneapp_d_country` VALUES ('159', 'North Korea', '朝鲜', 'KP', '850');
INSERT INTO `oneapp_d_country` VALUES ('160', 'Northern Mariana Islands', '北马里亚纳群岛', 'MP', '1670');
INSERT INTO `oneapp_d_country` VALUES ('161', 'Norway', '挪威', 'NO', '47');
INSERT INTO `oneapp_d_country` VALUES ('162', 'Oman', '阿曼', 'OM', '968');
INSERT INTO `oneapp_d_country` VALUES ('163', 'Pakistan', '巴基斯坦', 'PK', '92');
INSERT INTO `oneapp_d_country` VALUES ('164', 'Palau', '帛琉', 'PW', '680');
INSERT INTO `oneapp_d_country` VALUES ('165', 'Palestine', '巴勒斯坦', 'PS', '970');
INSERT INTO `oneapp_d_country` VALUES ('166', 'Panama', '巴拿马', 'PA', '507');
INSERT INTO `oneapp_d_country` VALUES ('167', 'Papua New Guinea', '巴布亚新几内亚', 'PG', '675');
INSERT INTO `oneapp_d_country` VALUES ('168', 'Paraguay', '巴拉圭', 'PY', '595');
INSERT INTO `oneapp_d_country` VALUES ('169', 'Peru', '秘鲁', 'PE', '51');
INSERT INTO `oneapp_d_country` VALUES ('170', 'Philippines', '菲律宾共和国', 'PH', '63');
INSERT INTO `oneapp_d_country` VALUES ('171', 'Pitcairn', '皮特凯恩岛', 'PN', '872');
INSERT INTO `oneapp_d_country` VALUES ('172', 'Poland', '波兰', 'PL', '48');
INSERT INTO `oneapp_d_country` VALUES ('173', 'Portugal', '葡萄牙', 'PT', '351');
INSERT INTO `oneapp_d_country` VALUES ('174', 'Puerto Rico', '波多黎各', 'PR', '1-787');
INSERT INTO `oneapp_d_country` VALUES ('175', 'Qatar', '卡塔尔', 'QA', '974');
INSERT INTO `oneapp_d_country` VALUES ('176', 'Reunion', '留尼汪岛', 'RE', '262');
INSERT INTO `oneapp_d_country` VALUES ('177', 'Romania', '罗马尼亚', 'RO', '40');
INSERT INTO `oneapp_d_country` VALUES ('178', 'Russian Federation', '俄罗斯联邦', 'RU', '7');
INSERT INTO `oneapp_d_country` VALUES ('179', 'Rwanda', '卢旺达', 'RW', '250');
INSERT INTO `oneapp_d_country` VALUES ('180', 'Saint Kitts and Nevis', '圣吉斯和尼维斯', 'KN', '');
INSERT INTO `oneapp_d_country` VALUES ('181', 'Saint Lucia', '圣卢西亚', 'LC', '');
INSERT INTO `oneapp_d_country` VALUES ('182', 'Saint Vincent and the Grenadines', '圣文森和格林纳丁斯', 'VC', '');
INSERT INTO `oneapp_d_country` VALUES ('183', 'Samoa', '美属萨摩亚', 'WS', '685');
INSERT INTO `oneapp_d_country` VALUES ('184', 'San Marino', 'San Marino', 'SM', '378');
INSERT INTO `oneapp_d_country` VALUES ('185', 'Sao Tome and Principe', '圣多美和普林西比', 'ST', '');
INSERT INTO `oneapp_d_country` VALUES ('186', 'Saudi Arabia', '沙特阿拉伯', 'SA', '966');
INSERT INTO `oneapp_d_country` VALUES ('187', 'Senegal', '塞内加尔', 'SN', '221');
INSERT INTO `oneapp_d_country` VALUES ('188', 'Serbia', '塞尔维亚共和国', 'SRB', '381');
INSERT INTO `oneapp_d_country` VALUES ('189', 'Seychelles', '塞锡尔群岛', 'SC', '248');
INSERT INTO `oneapp_d_country` VALUES ('190', 'Sierra Leone', '塞拉利昂', 'SL', '232');
INSERT INTO `oneapp_d_country` VALUES ('191', 'Singapore', '新加坡', 'SG', '65');
INSERT INTO `oneapp_d_country` VALUES ('192', 'Slovakia (Slovak Republic)', '斯洛伐克（斯洛伐克人的共和国）', 'SK', '421');
INSERT INTO `oneapp_d_country` VALUES ('193', 'Slovenia', '斯洛文尼亚', 'SI', '386');
INSERT INTO `oneapp_d_country` VALUES ('194', 'Solomon Islands', '索罗门群岛', 'SB', '677');
INSERT INTO `oneapp_d_country` VALUES ('195', 'Somalia', '索马里', 'SO', '252');
INSERT INTO `oneapp_d_country` VALUES ('196', 'South Africa', '南非', 'ZA', '27');
INSERT INTO `oneapp_d_country` VALUES ('197', 'South Korea', '韩国', 'KR', '82');
INSERT INTO `oneapp_d_country` VALUES ('198', 'Spain', '西班牙', 'ES', '34');
INSERT INTO `oneapp_d_country` VALUES ('199', 'Sri Lanka', '斯里兰卡', 'LK', '94');
INSERT INTO `oneapp_d_country` VALUES ('200', 'St. Helena', '圣海伦娜', 'SH', '290');
INSERT INTO `oneapp_d_country` VALUES ('201', 'St. Pierre and Miquelon', '圣皮埃尔和密克罗', 'PM', '508');
INSERT INTO `oneapp_d_country` VALUES ('202', 'Sudan', '苏丹', 'SD', '249');
INSERT INTO `oneapp_d_country` VALUES ('203', 'Suriname', '苏里南', 'SR', '597');
INSERT INTO `oneapp_d_country` VALUES ('204', 'Svalbard and Jan Mayen Islands', '冷岸和央麦恩群岛', 'SJ', '');
INSERT INTO `oneapp_d_country` VALUES ('205', 'Swaziland', '斯威士兰', 'SZ', '268');
INSERT INTO `oneapp_d_country` VALUES ('206', 'Sweden', '瑞典', 'SE', '46');
INSERT INTO `oneapp_d_country` VALUES ('207', 'Switzerland', '瑞士', 'CH', '41');
INSERT INTO `oneapp_d_country` VALUES ('208', 'Syrian Arab Republic', '叙利亚', 'SY', '963');
INSERT INTO `oneapp_d_country` VALUES ('209', 'Taiwan', '台湾地区', 'TW', '886');
INSERT INTO `oneapp_d_country` VALUES ('210', 'Tajikistan', '塔吉克', 'TJ', '992');
INSERT INTO `oneapp_d_country` VALUES ('211', 'Tanzania', '坦桑尼亚', 'TZ', '255');
INSERT INTO `oneapp_d_country` VALUES ('212', 'Thailand', '泰国', 'TH', '66');
INSERT INTO `oneapp_d_country` VALUES ('213', 'The former Yugoslav Republic of Macedonia', '前马其顿南斯拉夫共和国', 'MK', '389');
INSERT INTO `oneapp_d_country` VALUES ('214', 'Togo', '多哥', 'TG', '228');
INSERT INTO `oneapp_d_country` VALUES ('215', 'Tokelau', '托克劳', 'TK', '690');
INSERT INTO `oneapp_d_country` VALUES ('216', 'Tonga', '汤加', 'TO', '676');
INSERT INTO `oneapp_d_country` VALUES ('217', 'Trinidad and Tobago', '千里达托贝哥共和国', 'TT', '1-868');
INSERT INTO `oneapp_d_country` VALUES ('218', 'Tunisia', '北非共和国', 'TN', '216');
INSERT INTO `oneapp_d_country` VALUES ('219', 'Turkey', '土耳其', 'TR', '90');
INSERT INTO `oneapp_d_country` VALUES ('220', 'Turkmenistan', '土库曼', 'TM', '993');
INSERT INTO `oneapp_d_country` VALUES ('221', 'Turks and Caicos Islands', '土克斯和开科斯群岛', 'TC', '1-649');
INSERT INTO `oneapp_d_country` VALUES ('222', 'Tuvalu', '图瓦卢', 'TV', '688');
INSERT INTO `oneapp_d_country` VALUES ('223', 'Uganda', '乌干达', 'UG', '256');
INSERT INTO `oneapp_d_country` VALUES ('224', 'Ukraine', '乌克兰', 'UA', '380');
INSERT INTO `oneapp_d_country` VALUES ('225', 'United Arab Emirates', '阿拉伯联合酋长国', 'AE', '971');
INSERT INTO `oneapp_d_country` VALUES ('226', 'United Kingdom', '英国', 'UK', '44');
INSERT INTO `oneapp_d_country` VALUES ('227', 'United States', '美国', 'US', '1');
INSERT INTO `oneapp_d_country` VALUES ('228', 'United States Minor Outlying Islands', '美国小离岛', 'UM', '');
INSERT INTO `oneapp_d_country` VALUES ('229', 'Uruguay', '乌拉圭', 'UY', '598');
INSERT INTO `oneapp_d_country` VALUES ('230', 'Uzbekistan', '乌兹别克斯坦', 'UZ', '998');
INSERT INTO `oneapp_d_country` VALUES ('231', 'Vanuatu', '瓦努阿图', 'VU', '678');
INSERT INTO `oneapp_d_country` VALUES ('232', 'Vatican City State (Holy See)', '梵蒂冈(罗马教廷)', 'VA', '39');
INSERT INTO `oneapp_d_country` VALUES ('233', 'Venezuela', '委内瑞拉', 'VE', '58');
INSERT INTO `oneapp_d_country` VALUES ('234', 'Vietnam', '越南', 'VN', '84');
INSERT INTO `oneapp_d_country` VALUES ('235', 'Virgin Islands (British)', '维尔京群岛(英国)', 'VG', '1284');
INSERT INTO `oneapp_d_country` VALUES ('236', 'Virgin Islands (U.S.)', '维尔京群岛(美国)', 'VI', '1340');
INSERT INTO `oneapp_d_country` VALUES ('237', 'Wallis And Futuna Islands', '沃利斯和富图纳群岛', 'WF', '681');
INSERT INTO `oneapp_d_country` VALUES ('238', 'Western Sahara', '西撒哈拉', 'EH', '685');
INSERT INTO `oneapp_d_country` VALUES ('239', 'Yemen', '也门', 'YE', '967');
INSERT INTO `oneapp_d_country` VALUES ('240', 'Yugoslavia', '南斯拉夫', 'YU', '381');
INSERT INTO `oneapp_d_country` VALUES ('241', 'Zambia', '赞比亚', 'ZM', '260');
INSERT INTO `oneapp_d_country` VALUES ('242', 'Zimbabwe', '津巴布韦', 'ZW', '263');

-- ----------------------------
-- Table structure for `oneapp_d_industrial`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_d_industrial`;
CREATE TABLE `oneapp_d_industrial` (
  `industrial_id` int(11) NOT NULL AUTO_INCREMENT,
  `grand_code` varchar(1) DEFAULT NULL,
  `grand_name` varchar(32) DEFAULT NULL,
  `father_code` varchar(32) DEFAULT NULL,
  `father_name` varchar(32) DEFAULT NULL,
  `industrial_code` varchar(4) NOT NULL,
  `industrial_name` varchar(32) NOT NULL,
  `industrial_desc` varchar(200) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`industrial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=596 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oneapp_d_industrial
-- ----------------------------
INSERT INTO `oneapp_d_industrial` VALUES ('1', 'A', '农、林、牧、渔业', '01', '农业', 'A011', '谷物及其他作物的种植', '包括谷物、薯类、油料、豆类、棉花、麻类、糖料、烟草及其他作物的种植。', '2017-06-29 00:38:40.309849', '2017-06-29 00:38:40.311014');
INSERT INTO `oneapp_d_industrial` VALUES ('2', 'A', '农、林、牧、渔业', '01', '农业', 'A012', '蔬菜、园艺作物的种植', '包括蔬菜、花卉及其他园艺作物的种植。', '2017-06-29 00:38:40.334739', '2017-06-29 00:38:40.335153');
INSERT INTO `oneapp_d_industrial` VALUES ('3', 'A', '农、林、牧、渔业', '01', '农业', 'A013', '水果、坚果、饮料和香料作物的种植', '包括水果、坚果的种植，茶及其他饮料作物的种植，香料作物的种植。', '2017-06-29 00:38:40.337331', '2017-06-29 00:38:40.337843');
INSERT INTO `oneapp_d_industrial` VALUES ('4', 'A', '农、林、牧、渔业', '01', '农业', 'A014', '中药材的种植', null, '2017-06-29 00:38:40.340820', '2017-06-29 00:38:40.341236');
INSERT INTO `oneapp_d_industrial` VALUES ('5', 'A', '农、林、牧、渔业', '02', '林业', 'A021', '林木的培育和种植', '包括育种和育苗，造林，林木的抚育和管理。', '2017-06-29 00:38:40.343229', '2017-06-29 00:38:40.343608');
INSERT INTO `oneapp_d_industrial` VALUES ('6', 'A', '农、林、牧、渔业', '02', '林业', 'A022', '木材和竹材的采运', '包括木材的采运，竹材的采运。', '2017-06-29 00:38:40.345968', '2017-06-29 00:38:40.346478');
INSERT INTO `oneapp_d_industrial` VALUES ('7', 'A', '农、林、牧、渔业', '02', '林业', 'A023', '林产品的采集', null, '2017-06-29 00:38:40.348587', '2017-06-29 00:38:40.348953');
INSERT INTO `oneapp_d_industrial` VALUES ('8', 'A', '农、林、牧、渔业', '03', '畜牧业', 'A031', '牲畜的饲养', null, '2017-06-29 00:38:40.350872', '2017-06-29 00:38:40.351264');
INSERT INTO `oneapp_d_industrial` VALUES ('9', 'A', '农、林、牧、渔业', '03', '畜牧业', 'A032', '猪的饲养', null, '2017-06-29 00:38:40.353323', '2017-06-29 00:38:40.353682');
INSERT INTO `oneapp_d_industrial` VALUES ('10', 'A', '农、林、牧、渔业', '03', '畜牧业', 'A033', '家禽的饲养', null, '2017-06-29 00:38:40.355621', '2017-06-29 00:38:40.355999');
INSERT INTO `oneapp_d_industrial` VALUES ('11', 'A', '农、林、牧、渔业', '03', '畜牧业', 'A034', '狩猎和捕捉动物', null, '2017-06-29 00:38:40.357695', '2017-06-29 00:38:40.358070');
INSERT INTO `oneapp_d_industrial` VALUES ('12', 'A', '农、林、牧、渔业', '03', '畜牧业', 'A039', '其他畜牧业', null, '2017-06-29 00:38:40.361769', '2017-06-29 00:38:40.362256');
INSERT INTO `oneapp_d_industrial` VALUES ('13', 'A', '农、林、牧、渔业', '04', '渔业', 'A041', '海洋渔业', '包括海水养殖，海洋捕捞。', '2017-06-29 00:38:40.364486', '2017-06-29 00:38:40.364849');
INSERT INTO `oneapp_d_industrial` VALUES ('14', 'A', '农、林、牧、渔业', '04', '渔业', 'A042', '内陆渔业', '包括内陆养殖，内陆捕捞。', '2017-06-29 00:38:40.366682', '2017-06-29 00:38:40.367198');
INSERT INTO `oneapp_d_industrial` VALUES ('15', 'A', '农、林、牧、渔业', '05', '农、林、牧、渔服务业', 'A051', '农业服务业', '包括灌溉服务，农产品初加工服务，其他农业服务。', '2017-06-29 00:38:40.369174', '2017-06-29 00:38:40.369627');
INSERT INTO `oneapp_d_industrial` VALUES ('16', 'A', '农、林、牧、渔业', '05', '农、林、牧、渔服务业', 'A052', '林业服务业', null, '2017-06-29 00:38:40.372543', '2017-06-29 00:38:40.373008');
INSERT INTO `oneapp_d_industrial` VALUES ('17', 'A', '农、林、牧、渔业', '05', '农、林、牧、渔服务业', 'A053', '畜牧服务业', '包括兽医服务，其他畜牧服务。', '2017-06-29 00:38:40.375585', '2017-06-29 00:38:40.376318');
INSERT INTO `oneapp_d_industrial` VALUES ('18', 'A', '农、林、牧、渔业', '05', '农、林、牧、渔服务业', 'A054', '渔业服务业', null, '2017-06-29 00:38:40.383305', '2017-06-29 00:38:40.383771');
INSERT INTO `oneapp_d_industrial` VALUES ('19', 'B', '采矿业', '06', '煤炭开采和洗选业', 'B061', '烟煤和无烟煤的开采洗选', null, '2017-06-29 00:38:40.386480', '2017-06-29 00:38:40.387068');
INSERT INTO `oneapp_d_industrial` VALUES ('20', 'B', '采矿业', '06', '煤炭开采和洗选业', 'B062', '褐煤的开采洗选', null, '2017-06-29 00:38:40.389552', '2017-06-29 00:38:40.389939');
INSERT INTO `oneapp_d_industrial` VALUES ('21', 'B', '采矿业', '06', '煤炭开采和洗选业', 'B069', '其他煤炭采选', null, '2017-06-29 00:38:40.392927', '2017-06-29 00:38:40.393966');
INSERT INTO `oneapp_d_industrial` VALUES ('22', 'B', '采矿业', '07', '石油和天然气开采业', 'B071', '天然原油和天然气开采', null, '2017-06-29 00:38:40.398729', '2017-06-29 00:38:40.399312');
INSERT INTO `oneapp_d_industrial` VALUES ('23', 'B', '采矿业', '07', '石油和天然气开采业', 'B079', '与石油和天然气开采有关的服务活动', null, '2017-06-29 00:38:40.402183', '2017-06-29 00:38:40.402609');
INSERT INTO `oneapp_d_industrial` VALUES ('24', 'B', '采矿业', '08', '黑色金属矿采选业', 'B081', '铁矿采选', null, '2017-06-29 00:38:40.405539', '2017-06-29 00:38:40.406151');
INSERT INTO `oneapp_d_industrial` VALUES ('25', 'B', '采矿业', '08', '黑色金属矿采选业', 'B089', '其他黑色金属矿采选', null, '2017-06-29 00:38:40.414071', '2017-06-29 00:38:40.415598');
INSERT INTO `oneapp_d_industrial` VALUES ('26', 'B', '采矿业', '09', '有色金属矿采选业', 'B091', '常用有色金属矿采选', '包括铜矿采选，铅锌矿采选，镍钴矿采选，锡矿采选，锑矿采选，铝矿采选，镁矿采选，其他常用有色金属矿采选。', '2017-06-29 00:38:40.419244', '2017-06-29 00:38:40.419918');
INSERT INTO `oneapp_d_industrial` VALUES ('27', 'B', '采矿业', '09', '有色金属矿采选业', 'B092', '贵金属矿采选', '包括金矿采选，银矿采选，其他贵金属矿采选。', '2017-06-29 00:38:40.424744', '2017-06-29 00:38:40.425366');
INSERT INTO `oneapp_d_industrial` VALUES ('28', 'B', '采矿业', '09', '有色金属矿采选业', 'B093', '稀有稀土金属矿采选', '包括钨钼矿采选，稀土金属矿采选，放射性金属矿采选，其他稀有金属矿采选。', '2017-06-29 00:38:40.427605', '2017-06-29 00:38:40.427983');
INSERT INTO `oneapp_d_industrial` VALUES ('29', 'B', '采矿业', '10', '非金属矿采选业', 'B101', '土砂石开采', '包括石灰石、石膏开采，建筑装饰用石开采，耐火土石开采，粘土及其他土砂石开采。', '2017-06-29 00:38:40.429907', '2017-06-29 00:38:40.430377');
INSERT INTO `oneapp_d_industrial` VALUES ('30', 'B', '采矿业', '10', '非金属矿采选业', 'B102', '化学矿采选', null, '2017-06-29 00:38:40.433598', '2017-06-29 00:38:40.434083');
INSERT INTO `oneapp_d_industrial` VALUES ('31', 'B', '采矿业', '10', '非金属矿采选业', 'B103', '采盐', null, '2017-06-29 00:38:40.436780', '2017-06-29 00:38:40.437177');
INSERT INTO `oneapp_d_industrial` VALUES ('32', 'B', '采矿业', '10', '非金属矿采选业', 'B109', '石棉及其他非金属矿采选', '包括石棉、云母矿采选，石墨、滑石采选，宝石、玉石开采，其他非金属矿采选。', '2017-06-29 00:38:40.441262', '2017-06-29 00:38:40.441705');
INSERT INTO `oneapp_d_industrial` VALUES ('33', 'B', '采矿业', '11', '其他采矿业', 'B110', '其他采矿业', null, '2017-06-29 00:38:40.444341', '2017-06-29 00:38:40.444852');
INSERT INTO `oneapp_d_industrial` VALUES ('34', 'C', '制造业', '13', '农副食品加工业', 'C131', '谷物磨制', null, '2017-06-29 00:38:40.447461', '2017-06-29 00:38:40.447983');
INSERT INTO `oneapp_d_industrial` VALUES ('35', 'C', '制造业', '13', '农副食品加工业', 'C132', '饲料加工', null, '2017-06-29 00:38:40.450256', '2017-06-29 00:38:40.450679');
INSERT INTO `oneapp_d_industrial` VALUES ('36', 'C', '制造业', '13', '农副食品加工业', 'C133', '植物油加工', '包括食用植物油加工，非食用植物油加工。', '2017-06-29 00:38:40.453065', '2017-06-29 00:38:40.453450');
INSERT INTO `oneapp_d_industrial` VALUES ('37', 'C', '制造业', '13', '农副食品加工业', 'C134', '制糖', null, '2017-06-29 00:38:40.455600', '2017-06-29 00:38:40.456057');
INSERT INTO `oneapp_d_industrial` VALUES ('38', 'C', '制造业', '13', '农副食品加工业', 'C135', '屠宰及肉类加工', '包括畜禽屠宰，肉制品及副产品加工。', '2017-06-29 00:38:40.458275', '2017-06-29 00:38:40.458659');
INSERT INTO `oneapp_d_industrial` VALUES ('39', 'C', '制造业', '13', '农副食品加工业', 'C136', '水产品加工', '包括水产品冷冻加工，鱼糜制品及水产品干腌制加工，水产饲料制造，鱼油提取及制品的制造，其他水产品加工。', '2017-06-29 00:38:40.460824', '2017-06-29 00:38:40.461301');
INSERT INTO `oneapp_d_industrial` VALUES ('40', 'C', '制造业', '13', '农副食品加工业', 'C137', '蔬菜、水果和坚果加工', null, '2017-06-29 00:38:40.465521', '2017-06-29 00:38:40.465953');
INSERT INTO `oneapp_d_industrial` VALUES ('41', 'C', '制造业', '13', '农副食品加工业', 'C139', '其他农副食品加工', '包括淀粉及淀粉制品的制造，豆制品制造，蛋品加工，其他未列明的农副食品加工。', '2017-06-29 00:38:40.467716', '2017-06-29 00:38:40.468091');
INSERT INTO `oneapp_d_industrial` VALUES ('42', 'C', '制造业', '14', '食品制造业', 'C141', '焙烤食品制造', '包括糕点、面包制造，饼干及其他焙烤食品制造。', '2017-06-29 00:38:40.470248', '2017-06-29 00:38:40.470883');
INSERT INTO `oneapp_d_industrial` VALUES ('43', 'C', '制造业', '14', '食品制造业', 'C142', '糖果、巧克力及蜜饯制造', '包括糖果、巧克力制造，蜜饯制作。', '2017-06-29 00:38:40.473402', '2017-06-29 00:38:40.473796');
INSERT INTO `oneapp_d_industrial` VALUES ('44', 'C', '制造业', '14', '食品制造业', 'C143', '方便食品制造', '包括米、面制品制造，速冻食品制造，方便面及其他方便食品制造。', '2017-06-29 00:38:40.475908', '2017-06-29 00:38:40.476305');
INSERT INTO `oneapp_d_industrial` VALUES ('45', 'C', '制造业', '14', '食品制造业', 'C144', '液体乳及乳制品制造', null, '2017-06-29 00:38:40.481556', '2017-06-29 00:38:40.482075');
INSERT INTO `oneapp_d_industrial` VALUES ('46', 'C', '制造业', '14', '食品制造业', 'C145', '罐头制造', '包括肉、禽类罐头制造，水产品罐头制造，蔬菜、水果罐头制造，其他罐头食品制造。', '2017-06-29 00:38:40.484325', '2017-06-29 00:38:40.484746');
INSERT INTO `oneapp_d_industrial` VALUES ('47', 'C', '制造业', '14', '食品制造业', 'C146', '调味品、发酵制品制造', '包括味精制造，酱油、食醋及类似制品的制造，其他调味品、发酵制品制造。', '2017-06-29 00:38:40.486575', '2017-06-29 00:38:40.486915');
INSERT INTO `oneapp_d_industrial` VALUES ('48', 'C', '制造业', '14', '食品制造业', 'C149', '其他食品制造', '包括营养、保健食品制造，冷冻饮品及食用冰制造，盐加工，食品及饲料添加剂制造，其他未列明的食品制造。', '2017-06-29 00:38:40.490163', '2017-06-29 00:38:40.491318');
INSERT INTO `oneapp_d_industrial` VALUES ('49', 'C', '制造业', '15', '饮料制造业', 'C151', '酒精制造', null, '2017-06-29 00:38:40.494445', '2017-06-29 00:38:40.494898');
INSERT INTO `oneapp_d_industrial` VALUES ('50', 'C', '制造业', '15', '饮料制造业', 'C152', '酒的制造', '包括白酒制造，啤酒制造，黄酒制造，葡萄酒制造，其他酒制造。', '2017-06-29 00:38:40.496839', '2017-06-29 00:38:40.497211');
INSERT INTO `oneapp_d_industrial` VALUES ('51', 'C', '制造业', '15', '饮料制造业', 'C153', '软饮料制造', '包括碳酸饮料制造，瓶（罐）装饮用水制造，果菜汁及果菜汁饮料制造，含乳饮料和植物蛋白饮料制造，固体饮料制造，茶饮料及其他软饮料制造。', '2017-06-29 00:38:40.498848', '2017-06-29 00:38:40.499224');
INSERT INTO `oneapp_d_industrial` VALUES ('52', 'C', '制造业', '15', '饮料制造业', 'C154', '精制茶加工', null, '2017-06-29 00:38:40.500835', '2017-06-29 00:38:40.501197');
INSERT INTO `oneapp_d_industrial` VALUES ('53', 'C', '制造业', '16', '烟草制品业', 'C161', '烟叶复烤', null, '2017-06-29 00:38:40.502937', '2017-06-29 00:38:40.503316');
INSERT INTO `oneapp_d_industrial` VALUES ('54', 'C', '制造业', '16', '烟草制品业', 'C162', '卷烟制造', null, '2017-06-29 00:38:40.505340', '2017-06-29 00:38:40.506315');
INSERT INTO `oneapp_d_industrial` VALUES ('55', 'C', '制造业', '16', '烟草制品业', 'C169', '其他烟草制品加工', null, '2017-06-29 00:38:40.510846', '2017-06-29 00:38:40.511299');
INSERT INTO `oneapp_d_industrial` VALUES ('56', 'C', '制造业', '17', '纺织业', 'C171', '棉、化纤纺织及印染精加工', '包括棉、化纤纺织加工，棉、化纤印染精加工。', '2017-06-29 00:38:40.513175', '2017-06-29 00:38:40.513578');
INSERT INTO `oneapp_d_industrial` VALUES ('57', 'C', '制造业', '17', '纺织业', 'C172', '毛纺织和染整精加工', '包括毛条加工，毛纺织，毛染整精加工。', '2017-06-29 00:38:40.515359', '2017-06-29 00:38:40.515705');
INSERT INTO `oneapp_d_industrial` VALUES ('58', 'C', '制造业', '17', '纺织业', 'C173', '麻纺织', null, '2017-06-29 00:38:40.517316', '2017-06-29 00:38:40.517660');
INSERT INTO `oneapp_d_industrial` VALUES ('59', 'C', '制造业', '17', '纺织业', 'C174', '丝绢纺织及精加工', '包括缫丝加工，绢纺和丝织加工，丝印染精加工。', '2017-06-29 00:38:40.519389', '2017-06-29 00:38:40.519734');
INSERT INTO `oneapp_d_industrial` VALUES ('60', 'C', '制造业', '17', '纺织业', 'C175', '纺织制成品制造', '包括棉及化纤制品制造，毛制品制造，麻制品制造，丝制品制造，绳、索、缆的制造，纺织带和帘子布制造，无纺布制造，其他纺织制成品制造。', '2017-06-29 00:38:40.521335', '2017-06-29 00:38:40.521957');
INSERT INTO `oneapp_d_industrial` VALUES ('61', 'C', '制造业', '17', '纺织业', 'C176', '针织品、编织品及其制品制造', '包括棉、化纤针织品及编织品制造，毛针织品及编织品制造，丝针织品及编织品制造，其他针织品及编织品制造。', '2017-06-29 00:38:40.524899', '2017-06-29 00:38:40.525330');
INSERT INTO `oneapp_d_industrial` VALUES ('62', 'C', '制造业', '18', '纺织服装、鞋、帽制造业', 'C181', '纺织服装制造', null, '2017-06-29 00:38:40.527139', '2017-06-29 00:38:40.527496');
INSERT INTO `oneapp_d_industrial` VALUES ('63', 'C', '制造业', '18', '纺织服装、鞋、帽制造业', 'C182', '纺织面料鞋的制造', null, '2017-06-29 00:38:40.529198', '2017-06-29 00:38:40.529570');
INSERT INTO `oneapp_d_industrial` VALUES ('64', 'C', '制造业', '18', '纺织服装、鞋、帽制造业', 'C183', '制帽', null, '2017-06-29 00:38:40.531111', '2017-06-29 00:38:40.531475');
INSERT INTO `oneapp_d_industrial` VALUES ('65', 'C', '制造业', '19', '皮革、毛皮、羽毛(绒)及其制品业', 'C191', '皮革鞣制加工', null, '2017-06-29 00:38:40.533017', '2017-06-29 00:38:40.533380');
INSERT INTO `oneapp_d_industrial` VALUES ('66', 'C', '制造业', '19', '皮革、毛皮、羽毛(绒)及其制品业', 'C192', '皮革制品制造', '包括皮鞋制造，皮革服装制造，皮箱、包(袋)制造，皮手套及皮装饰制品制造，其他皮革制品制造。', '2017-06-29 00:38:40.535054', '2017-06-29 00:38:40.535385');
INSERT INTO `oneapp_d_industrial` VALUES ('67', 'C', '制造业', '19', '皮革、毛皮、羽毛(绒)及其制品业', 'C193', '毛皮鞣制及制品加工', '包括毛皮鞣制加工，毛皮服装加工，其他毛皮制品加工。', '2017-06-29 00:38:40.537027', '2017-06-29 00:38:40.537371');
INSERT INTO `oneapp_d_industrial` VALUES ('68', 'C', '制造业', '19', '皮革、毛皮、羽毛(绒)及其制品业', 'C194', '羽毛(绒)加工及制品制造', '包括羽毛(绒)加工，羽毛(绒)制品加工。', '2017-06-29 00:38:40.539063', '2017-06-29 00:38:40.539409');
INSERT INTO `oneapp_d_industrial` VALUES ('69', 'C', '制造业', '20', '木材加工及木、竹、藤、棕、草制品业', 'C201', '锯材、木片加工', '包括锯材加工，木片加工。', '2017-06-29 00:38:40.541125', '2017-06-29 00:38:40.541476');
INSERT INTO `oneapp_d_industrial` VALUES ('70', 'C', '制造业', '20', '木材加工及木、竹、藤、棕、草制品业', 'C202', '人造板制造', '包括胶合板制造，纤维板制造，刨花板制造，其他人造板、材制造。', '2017-06-29 00:38:40.543119', '2017-06-29 00:38:40.543427');
INSERT INTO `oneapp_d_industrial` VALUES ('71', 'C', '制造业', '20', '木材加工及木、竹、藤、棕、草制品业', 'C203', '木制品制造', '包括建筑用木料及木材组件加工，木容器制造，软木制品及其他木制品制造。', '2017-06-29 00:38:40.544950', '2017-06-29 00:38:40.545277');
INSERT INTO `oneapp_d_industrial` VALUES ('72', 'C', '制造业', '20', '木材加工及木、竹、藤、棕、草制品业', 'C204', '竹、藤、棕、草制品制造', null, '2017-06-29 00:38:40.546911', '2017-06-29 00:38:40.547242');
INSERT INTO `oneapp_d_industrial` VALUES ('73', 'C', '制造业', '21', '家具制造业', 'C211', '木质家具制造', null, '2017-06-29 00:38:40.548735', '2017-06-29 00:38:40.549056');
INSERT INTO `oneapp_d_industrial` VALUES ('74', 'C', '制造业', '21', '家具制造业', 'C212', '竹、藤家具制造', null, '2017-06-29 00:38:40.550520', '2017-06-29 00:38:40.550869');
INSERT INTO `oneapp_d_industrial` VALUES ('75', 'C', '制造业', '21', '家具制造业', 'C213', '金属家具制造', null, '2017-06-29 00:38:40.552491', '2017-06-29 00:38:40.552823');
INSERT INTO `oneapp_d_industrial` VALUES ('76', 'C', '制造业', '21', '家具制造业', 'C214', '塑料家具制造', null, '2017-06-29 00:38:40.554376', '2017-06-29 00:38:40.554745');
INSERT INTO `oneapp_d_industrial` VALUES ('77', 'C', '制造业', '21', '家具制造业', 'C219', '其他家具制造', null, '2017-06-29 00:38:40.556323', '2017-06-29 00:38:40.556667');
INSERT INTO `oneapp_d_industrial` VALUES ('78', 'C', '制造业', '22', '造纸及纸制品业', 'C221', '纸浆制造', null, '2017-06-29 00:38:40.558284', '2017-06-29 00:38:40.558662');
INSERT INTO `oneapp_d_industrial` VALUES ('79', 'C', '制造业', '22', '造纸及纸制品业', 'C222', '造纸', '包括机制纸及纸板制造，手工纸制造，加工纸制造。', '2017-06-29 00:38:40.560242', '2017-06-29 00:38:40.560562');
INSERT INTO `oneapp_d_industrial` VALUES ('80', 'C', '制造业', '22', '造纸及纸制品业', 'C223', '纸制品制造', '包括纸和纸板容器的制造，其他纸制品制造。', '2017-06-29 00:38:40.562102', '2017-06-29 00:38:40.562429');
INSERT INTO `oneapp_d_industrial` VALUES ('81', 'C', '制造业', '23', '印刷业和记录媒介的复制', 'C231', '印刷', '包括书、报、刊印刷，本册印制，包装装潢及其他印刷。', '2017-06-29 00:38:40.563912', '2017-06-29 00:38:40.564232');
INSERT INTO `oneapp_d_industrial` VALUES ('82', 'C', '制造业', '23', '印刷业和记录媒介的复制', 'C232', '装订及其他印刷服务活动', null, '2017-06-29 00:38:40.565698', '2017-06-29 00:38:40.566032');
INSERT INTO `oneapp_d_industrial` VALUES ('83', 'C', '制造业', '23', '印刷业和记录媒介的复制', 'C233', '记录媒介的复制', null, '2017-06-29 00:38:40.567568', '2017-06-29 00:38:40.567880');
INSERT INTO `oneapp_d_industrial` VALUES ('84', 'C', '制造业', '24', '文教体育用品制造业', 'C241', '文化用品制造', '包括文具制造，笔的制造，教学用模型及教具制造，墨水、墨汁制造，其他文化用品制造。', '2017-06-29 00:38:40.569502', '2017-06-29 00:38:40.569852');
INSERT INTO `oneapp_d_industrial` VALUES ('85', 'C', '制造业', '24', '文教体育用品制造业', 'C242', '体育用品制造', '包括球类制造，体育器材及配件制造，训练健身器材制造，运动防护用具制造，其他体育用品制造。', '2017-06-29 00:38:40.571457', '2017-06-29 00:38:40.571754');
INSERT INTO `oneapp_d_industrial` VALUES ('86', 'C', '制造业', '24', '文教体育用品制造业', 'C243', '乐器制造', '包括中乐器制造，西乐器制造，电子乐器制造，其他乐器及零件制造。', '2017-06-29 00:38:40.573474', '2017-06-29 00:38:40.573848');
INSERT INTO `oneapp_d_industrial` VALUES ('87', 'C', '制造业', '24', '文教体育用品制造业', 'C244', '玩具制造', null, '2017-06-29 00:38:40.575432', '2017-06-29 00:38:40.575756');
INSERT INTO `oneapp_d_industrial` VALUES ('88', 'C', '制造业', '24', '文教体育用品制造业', 'C245', '游艺器材及娱乐用品制造', '包括露天游乐场所游乐设备制造，游艺用品及室内游艺器材制造。', '2017-06-29 00:38:40.577338', '2017-06-29 00:38:40.577670');
INSERT INTO `oneapp_d_industrial` VALUES ('89', 'C', '制造业', '25', '石油加工、炼焦及核燃料加工业', 'C251', '精炼石油产品的制造', '包括原油加工及石油制品制造，人造原油生产。', '2017-06-29 00:38:40.579174', '2017-06-29 00:38:40.579515');
INSERT INTO `oneapp_d_industrial` VALUES ('90', 'C', '制造业', '25', '石油加工、炼焦及核燃料加工业', 'C252', '炼焦', null, '2017-06-29 00:38:40.581093', '2017-06-29 00:38:40.581417');
INSERT INTO `oneapp_d_industrial` VALUES ('91', 'C', '制造业', '25', '石油加工、炼焦及核燃料加工业', 'C253', '核燃料加工', null, '2017-06-29 00:38:40.583003', '2017-06-29 00:38:40.583337');
INSERT INTO `oneapp_d_industrial` VALUES ('92', 'C', '制造业', '26', '化学原料及化学制品制造业', 'C261', '基础化学原料制造', '包括无机酸制造，无机碱制造，无机盐制造，有机化学原料制造，其他基础化学原料制造。', '2017-06-29 00:38:40.584885', '2017-06-29 00:38:40.585210');
INSERT INTO `oneapp_d_industrial` VALUES ('93', 'C', '制造业', '26', '化学原料及化学制品制造业', 'C262', '肥料制造', '包括氮肥制造，磷肥制造，钾肥制造，复混肥料制造，有机肥料及微生物肥料制造，其他肥料制造。', '2017-06-29 00:38:40.586857', '2017-06-29 00:38:40.587203');
INSERT INTO `oneapp_d_industrial` VALUES ('94', 'C', '制造业', '26', '化学原料及化学制品制造业', 'C263', '农药制造', '包括化学农药制造，生物化学农药及微生物农药制造。', '2017-06-29 00:38:40.588957', '2017-06-29 00:38:40.589294');
INSERT INTO `oneapp_d_industrial` VALUES ('95', 'C', '制造业', '26', '化学原料及化学制品制造业', 'C264', '涂料、油墨、颜料及类似产品制造', '包括涂料制造，油墨及类似产品制造，颜料制造，染料制造，密封用填料及类似品制造。', '2017-06-29 00:38:40.590803', '2017-06-29 00:38:40.591165');
INSERT INTO `oneapp_d_industrial` VALUES ('96', 'C', '制造业', '26', '化学原料及化学制品制造业', 'C265', '合成材料制造', '包括初级形态的塑料及合成树脂制造，合成橡胶制造，合成纤维单(聚合)体的制造，其他合成材料制造。', '2017-06-29 00:38:40.592702', '2017-06-29 00:38:40.593035');
INSERT INTO `oneapp_d_industrial` VALUES ('97', 'C', '制造业', '26', '化学原料及化学制品制造业', 'C266', '专用化学产品制造', '包括化学试剂和助剂制造，专项化学用品制造，林产化学产品制造，炸药及火工产品制造，信息化学品制造，环境污染处理专用药剂材料制造，动物胶制造，其他专用化学产品制造。', '2017-06-29 00:38:40.597862', '2017-06-29 00:38:40.598298');
INSERT INTO `oneapp_d_industrial` VALUES ('98', 'C', '制造业', '26', '化学原料及化学制品制造业', 'C267', '日用化学产品制造', '包括肥皂及合成洗涤剂制造，化妆品制造，口腔清洁用品制造，香料、香精制造，其他日用化学产品制造。', '2017-06-29 00:38:40.600496', '2017-06-29 00:38:40.600927');
INSERT INTO `oneapp_d_industrial` VALUES ('99', 'C', '制造业', '27', '医药制造业', 'C271', '化学药品原药制造', null, '2017-06-29 00:38:40.602919', '2017-06-29 00:38:40.603277');
INSERT INTO `oneapp_d_industrial` VALUES ('100', 'C', '制造业', '27', '医药制造业', 'C272', '化学药品制剂制造', null, '2017-06-29 00:38:40.604931', '2017-06-29 00:38:40.605270');
INSERT INTO `oneapp_d_industrial` VALUES ('101', 'C', '制造业', '27', '医药制造业', 'C273', '中药饮片加工', null, '2017-06-29 00:38:40.606792', '2017-06-29 00:38:40.607129');
INSERT INTO `oneapp_d_industrial` VALUES ('102', 'C', '制造业', '27', '医药制造业', 'C274', '中成药制造', null, '2017-06-29 00:38:40.608848', '2017-06-29 00:38:40.609194');
INSERT INTO `oneapp_d_industrial` VALUES ('103', 'C', '制造业', '27', '医药制造业', 'C275', '兽用药品制造', null, '2017-06-29 00:38:40.610891', '2017-06-29 00:38:40.611236');
INSERT INTO `oneapp_d_industrial` VALUES ('104', 'C', '制造业', '27', '医药制造业', 'C276', '生物、生化制品的制造', null, '2017-06-29 00:38:40.612879', '2017-06-29 00:38:40.613221');
INSERT INTO `oneapp_d_industrial` VALUES ('105', 'C', '制造业', '27', '医药制造业', 'C277', '卫生材料及医药用品制造', null, '2017-06-29 00:38:40.614923', '2017-06-29 00:38:40.615288');
INSERT INTO `oneapp_d_industrial` VALUES ('106', 'C', '制造业', '28', '化学纤维制造业', 'C281', '纤维素纤维原料及纤维制造', '包括化纤浆粕制造，人造纤维（纤维素纤维）制造。', '2017-06-29 00:38:40.617017', '2017-06-29 00:38:40.617362');
INSERT INTO `oneapp_d_industrial` VALUES ('107', 'C', '制造业', '28', '化学纤维制造业', 'C282', '合成纤维制造', '包括锦纶纤维制造，涤纶纤维制造，腈纶纤维制造，维纶纤维制造，其他合成纤维制造。', '2017-06-29 00:38:40.618972', '2017-06-29 00:38:40.619315');
INSERT INTO `oneapp_d_industrial` VALUES ('108', 'C', '制造业', '29', '橡胶制品业', 'C291', '轮胎制造', '包括车辆、飞机及工程机械轮胎制造，力车胎制造，轮胎翻新加工。', '2017-06-29 00:38:40.620936', '2017-06-29 00:38:40.621268');
INSERT INTO `oneapp_d_industrial` VALUES ('109', 'C', '制造业', '29', '橡胶制品业', 'C292', '橡胶板、管、带的制造', null, '2017-06-29 00:38:40.622818', '2017-06-29 00:38:40.623194');
INSERT INTO `oneapp_d_industrial` VALUES ('110', 'C', '制造业', '29', '橡胶制品业', 'C293', '橡胶零件制造', null, '2017-06-29 00:38:40.624875', '2017-06-29 00:38:40.625223');
INSERT INTO `oneapp_d_industrial` VALUES ('111', 'C', '制造业', '29', '橡胶制品业', 'C294', '再生橡胶制造', null, '2017-06-29 00:38:40.626785', '2017-06-29 00:38:40.627142');
INSERT INTO `oneapp_d_industrial` VALUES ('112', 'C', '制造业', '29', '橡胶制品业', 'C295', '日用及医用橡胶制品制造', null, '2017-06-29 00:38:40.628741', '2017-06-29 00:38:40.629077');
INSERT INTO `oneapp_d_industrial` VALUES ('113', 'C', '制造业', '29', '橡胶制品业', 'C296', '橡胶靴鞋制造', null, '2017-06-29 00:38:40.630891', '2017-06-29 00:38:40.631218');
INSERT INTO `oneapp_d_industrial` VALUES ('114', 'C', '制造业', '29', '橡胶制品业', 'C299', '其他橡胶制品制造', null, '2017-06-29 00:38:40.632901', '2017-06-29 00:38:40.633262');
INSERT INTO `oneapp_d_industrial` VALUES ('115', 'C', '制造业', '30', '塑料制品业', 'C301', '塑料薄膜制造', null, '2017-06-29 00:38:40.635039', '2017-06-29 00:38:40.635425');
INSERT INTO `oneapp_d_industrial` VALUES ('116', 'C', '制造业', '30', '塑料制品业', 'C302', '塑料板、管、型材的制造', null, '2017-06-29 00:38:40.637099', '2017-06-29 00:38:40.637480');
INSERT INTO `oneapp_d_industrial` VALUES ('117', 'C', '制造业', '30', '塑料制品业', 'C303', '塑料丝、绳及编织品的制造', null, '2017-06-29 00:38:40.639114', '2017-06-29 00:38:40.639453');
INSERT INTO `oneapp_d_industrial` VALUES ('118', 'C', '制造业', '30', '塑料制品业', 'C304', '泡沫塑料制造', null, '2017-06-29 00:38:40.641066', '2017-06-29 00:38:40.641456');
INSERT INTO `oneapp_d_industrial` VALUES ('119', 'C', '制造业', '30', '塑料制品业', 'C305', '塑料人造革、合成革制造', null, '2017-06-29 00:38:40.643138', '2017-06-29 00:38:40.643467');
INSERT INTO `oneapp_d_industrial` VALUES ('120', 'C', '制造业', '30', '塑料制品业', 'C306', '塑料包装箱及容器制造', null, '2017-06-29 00:38:40.645115', '2017-06-29 00:38:40.645467');
INSERT INTO `oneapp_d_industrial` VALUES ('121', 'C', '制造业', '30', '塑料制品业', 'C307', '塑料零件制造', null, '2017-06-29 00:38:40.647201', '2017-06-29 00:38:40.647535');
INSERT INTO `oneapp_d_industrial` VALUES ('122', 'C', '制造业', '30', '塑料制品业', 'C308', '日用塑料制造', '包括塑料鞋制造，日用塑料杂品制造。', '2017-06-29 00:38:40.649012', '2017-06-29 00:38:40.649370');
INSERT INTO `oneapp_d_industrial` VALUES ('123', 'C', '制造业', '30', '塑料制品业', 'C309', '其他塑料制品制造', null, '2017-06-29 00:38:40.650969', '2017-06-29 00:38:40.651300');
INSERT INTO `oneapp_d_industrial` VALUES ('124', 'C', '制造业', '31', '非金属矿物制品业', 'C311', '水泥、石灰和石膏的制造', '包括水泥制造，石灰和石膏制造。', '2017-06-29 00:38:40.652809', '2017-06-29 00:38:40.653141');
INSERT INTO `oneapp_d_industrial` VALUES ('125', 'C', '制造业', '31', '非金属矿物制品业', 'C312', '水泥及石膏制品制造', '包括水泥制品制造，砼结构构件制造，石棉水泥制品制造，轻质建筑材料制造，其他水泥制品制造。', '2017-06-29 00:38:40.654917', '2017-06-29 00:38:40.655257');
INSERT INTO `oneapp_d_industrial` VALUES ('126', 'C', '制造业', '31', '非金属矿物制品业', 'C313', '砖瓦、石材及其他建筑材料制造', '包括粘土砖瓦及建筑砌块制造，建筑陶瓷制品制造，建筑用石加工，防水建筑材料制造，隔热和隔音材料制造，其他建筑材料制造。', '2017-06-29 00:38:40.656907', '2017-06-29 00:38:40.657243');
INSERT INTO `oneapp_d_industrial` VALUES ('127', 'C', '制造业', '31', '非金属矿物制品业', 'C314', '玻璃及玻璃制品制造', '包括平板玻璃制造，技术玻璃制品制造，光学玻璃制造，玻璃仪器制造，日用玻璃制品及玻璃包装容器制造，玻璃保温容器制造，玻璃纤维及制品制造，玻璃纤维增强塑料制品制造，其他玻璃制品制造。', '2017-06-29 00:38:40.658883', '2017-06-29 00:38:40.659216');
INSERT INTO `oneapp_d_industrial` VALUES ('128', 'C', '制造业', '31', '非金属矿物制品业', 'C315', '陶瓷制品制造', '包括卫生陶瓷制品制造，特种陶瓷制品制造，日用陶瓷制品制造，园林、陈设艺术及其他陶瓷制品制造。', '2017-06-29 00:38:40.660828', '2017-06-29 00:38:40.661161');
INSERT INTO `oneapp_d_industrial` VALUES ('129', 'C', '制造业', '31', '非金属矿物制品业', 'C316', '耐火材料制品制造', '包括石棉制品制造，云母制品制造，耐火陶瓷制品及其他耐火材料制造。', '2017-06-29 00:38:40.662682', '2017-06-29 00:38:40.663013');
INSERT INTO `oneapp_d_industrial` VALUES ('130', 'C', '制造业', '31', '非金属矿物制品业', 'C319', '石墨及其他非金属矿物制品制造', '包括石墨及碳素制品制造，其他非金属矿物制品制造。', '2017-06-29 00:38:40.664639', '2017-06-29 00:38:40.665007');
INSERT INTO `oneapp_d_industrial` VALUES ('131', 'C', '制造业', '32', '黑色金属冶炼及压延加工业', 'C321', '炼铁', null, '2017-06-29 00:38:40.666634', '2017-06-29 00:38:40.666969');
INSERT INTO `oneapp_d_industrial` VALUES ('132', 'C', '制造业', '32', '黑色金属冶炼及压延加工业', 'C322', '炼钢', null, '2017-06-29 00:38:40.668508', '2017-06-29 00:38:40.668834');
INSERT INTO `oneapp_d_industrial` VALUES ('133', 'C', '制造业', '32', '黑色金属冶炼及压延加工业', 'C323', '钢压延加工', null, '2017-06-29 00:38:40.670671', '2017-06-29 00:38:40.671022');
INSERT INTO `oneapp_d_industrial` VALUES ('134', 'C', '制造业', '32', '黑色金属冶炼及压延加工业', 'C324', '铁合金冶炼', null, '2017-06-29 00:38:40.672633', '2017-06-29 00:38:40.672970');
INSERT INTO `oneapp_d_industrial` VALUES ('135', 'C', '制造业', '33', '有色金属冶炼及压延加工业', 'C331', '常用有色金属冶炼', '包括铜冶炼，铅锌冶炼，镍钴冶炼，锡冶炼，锑冶炼，铝冶炼，镁冶炼，其他常用有色金属冶炼。', '2017-06-29 00:38:40.674541', '2017-06-29 00:38:40.674870');
INSERT INTO `oneapp_d_industrial` VALUES ('136', 'C', '制造业', '33', '有色金属冶炼及压延加工业', 'C332', '贵金属冶炼', '包括金冶炼，银冶炼，其他贵金属冶炼。', '2017-06-29 00:38:40.676429', '2017-06-29 00:38:40.676752');
INSERT INTO `oneapp_d_industrial` VALUES ('137', 'C', '制造业', '33', '有色金属冶炼及压延加工业', 'C333', '稀有稀土金属冶炼', '包括钨钼冶炼，稀土金属冶炼，其他稀有金属冶炼。', '2017-06-29 00:38:40.678234', '2017-06-29 00:38:40.678543');
INSERT INTO `oneapp_d_industrial` VALUES ('138', 'C', '制造业', '33', '有色金属冶炼及压延加工业', 'C334', '有色金属合金制造', null, '2017-06-29 00:38:40.680206', '2017-06-29 00:38:40.680547');
INSERT INTO `oneapp_d_industrial` VALUES ('139', 'C', '制造业', '33', '有色金属冶炼及压延加工业', 'C335', '有色金属压延加工', '包括常用有色金属压延加工，贵金属压延加工，稀有稀土金属压延加工。', '2017-06-29 00:38:40.682245', '2017-06-29 00:38:40.682574');
INSERT INTO `oneapp_d_industrial` VALUES ('140', 'C', '制造业', '34', '金属制品业', 'C341', '结构性金属制品制造', '包括金属结构制造，金属门窗制造。', '2017-06-29 00:38:40.684170', '2017-06-29 00:38:40.684471');
INSERT INTO `oneapp_d_industrial` VALUES ('141', 'C', '制造业', '34', '金属制品业', 'C342', '金属工具制造', '包括切削工具制造，手工具制造，农用及园林用金属工具制造，刀剪及类似日用金属工具制造，其他金属工具制造。', '2017-06-29 00:38:40.685996', '2017-06-29 00:38:40.686339');
INSERT INTO `oneapp_d_industrial` VALUES ('142', 'C', '制造业', '34', '金属制品业', 'C343', '集装箱及金属包装容器制造', '包括集装箱制造，金属压力容器制造，金属包装容器制造。', '2017-06-29 00:38:40.687903', '2017-06-29 00:38:40.688229');
INSERT INTO `oneapp_d_industrial` VALUES ('143', 'C', '制造业', '34', '金属制品业', 'C344', '金属丝绳及其制品的制造', null, '2017-06-29 00:38:40.689749', '2017-06-29 00:38:40.690070');
INSERT INTO `oneapp_d_industrial` VALUES ('144', 'C', '制造业', '34', '金属制品业', 'C345', '建筑、安全用金属制品制造', '包括建筑、家具用金属配件制造，建筑装饰及水暖管道零件制造，安全、消防用金属制品制造，其他建筑、安全用金属制品制造。', '2017-06-29 00:38:40.691580', '2017-06-29 00:38:40.691912');
INSERT INTO `oneapp_d_industrial` VALUES ('145', 'C', '制造业', '34', '金属制品业', 'C346', '金属表面处理及热处理加工', null, '2017-06-29 00:38:40.693444', '2017-06-29 00:38:40.693765');
INSERT INTO `oneapp_d_industrial` VALUES ('146', 'C', '制造业', '34', '金属制品业', 'C347', '搪瓷制品制造', '包括工业生产配套用搪瓷制品制造，搪瓷卫生洁具制造，搪瓷日用品及其他搪瓷制品制造。', '2017-06-29 00:38:40.695314', '2017-06-29 00:38:40.695642');
INSERT INTO `oneapp_d_industrial` VALUES ('147', 'C', '制造业', '34', '金属制品业', 'C348', '不锈钢及类似日用金属制品制造', '包括金属制厨房调理及卫生器具制造，金属制厨用器皿及餐具制造，其他日用金属制品制造。', '2017-06-29 00:38:40.697254', '2017-06-29 00:38:40.697588');
INSERT INTO `oneapp_d_industrial` VALUES ('148', 'C', '制造业', '34', '金属制品业', 'C349', '其他金属制品制造', '包括铸币及贵金属制实验室用品制造，其他未列明的金属制品制造。', '2017-06-29 00:38:40.699120', '2017-06-29 00:38:40.699432');
INSERT INTO `oneapp_d_industrial` VALUES ('149', 'C', '制造业', '35', '通用设备制造业', 'C351', '锅炉及原动机制造', '包括锅炉及辅助设备制造，内燃机及配件制造，汽轮机及辅机制造，水轮机及辅机制造，其他原动机制造。', '2017-06-29 00:38:40.701109', '2017-06-29 00:38:40.701457');
INSERT INTO `oneapp_d_industrial` VALUES ('150', 'C', '制造业', '35', '通用设备制造业', 'C352', '金属加工机械制造', '包括金属切削机床制造，金属成形机床制造，铸造机械制造，金属切割及焊接设备制造，机床附件制造，其他金属加工机械制造。', '2017-06-29 00:38:40.703162', '2017-06-29 00:38:40.703502');
INSERT INTO `oneapp_d_industrial` VALUES ('151', 'C', '制造业', '35', '通用设备制造业', 'C353', '起重运输设备制造', null, '2017-06-29 00:38:40.705038', '2017-06-29 00:38:40.705381');
INSERT INTO `oneapp_d_industrial` VALUES ('152', 'C', '制造业', '35', '通用设备制造业', 'C354', '泵、阀门、压缩机及类似机械的制造', '包括泵及真空设备制造，气体压缩机械制造，阀门和旋塞的制造，液压和气压动力机械及元件制造。', '2017-06-29 00:38:40.706888', '2017-06-29 00:38:40.707190');
INSERT INTO `oneapp_d_industrial` VALUES ('153', 'C', '制造业', '35', '通用设备制造业', 'C355', '轴承、齿轮、传动和驱动部件的制造', '包括轴承制造，齿轮、传动和驱动部件制造。', '2017-06-29 00:38:40.708658', '2017-06-29 00:38:40.708983');
INSERT INTO `oneapp_d_industrial` VALUES ('154', 'C', '制造业', '35', '通用设备制造业', 'C356', '烘炉、熔炉及电炉制造', null, '2017-06-29 00:38:40.710539', '2017-06-29 00:38:40.710876');
INSERT INTO `oneapp_d_industrial` VALUES ('155', 'C', '制造业', '35', '通用设备制造业', 'C357', '风机、衡器、包装设备等通用设备制造', '包括风机、风扇制造，气体、液体分离及纯净设备制造，制冷、空调设备制造，风动和电动工具制造，喷枪及类似器具制造，包装专用设备制造，衡器制造，其他通用设备制造。', '2017-06-29 00:38:40.712524', '2017-06-29 00:38:40.712867');
INSERT INTO `oneapp_d_industrial` VALUES ('156', 'C', '制造业', '35', '通用设备制造业', 'C358', '通用零部件制造及机械修理', '包括金属密封件制造，紧固件、弹簧制造，机械零部件加工及设备修理，其他通用零部件制造。', '2017-06-29 00:38:40.714467', '2017-06-29 00:38:40.714800');
INSERT INTO `oneapp_d_industrial` VALUES ('157', 'C', '制造业', '35', '通用设备制造业', 'C359', '金属铸、锻加工', '包括钢铁铸件制造，锻件及粉末冶金制品制造。', '2017-06-29 00:38:40.716334', '2017-06-29 00:38:40.716688');
INSERT INTO `oneapp_d_industrial` VALUES ('158', 'C', '制造业', '36', '专用设备制造业', 'C361', '矿山、冶金、建筑专用设备制造', '包括采矿、采石设备制造，石油钻采专用设备制造，建筑工程用机械制造，建筑材料生产专用机械制造，冶金专用设备制造。', '2017-06-29 00:38:40.718394', '2017-06-29 00:38:40.718740');
INSERT INTO `oneapp_d_industrial` VALUES ('159', 'C', '制造业', '36', '专用设备制造业', 'C362', '化工、木材、非金属加工专用设备制造', '包括炼油、化工生产专用设备制造，橡胶加工专用设备制造，塑料加工专用设备制造，木材加工机械制造，模具制造，其他非金属加工专用设备制造。', '2017-06-29 00:38:40.720308', '2017-06-29 00:38:40.720667');
INSERT INTO `oneapp_d_industrial` VALUES ('160', 'C', '制造业', '36', '专用设备制造业', 'C363', '食品、饮料、烟草及饲料生产专用设备制造', '包括食品、饮料、烟草工业专用设备制造，农副食品加工专用设备制造，饲料生产专用设备制造。', '2017-06-29 00:38:40.722446', '2017-06-29 00:38:40.722774');
INSERT INTO `oneapp_d_industrial` VALUES ('161', 'C', '制造业', '36', '专用设备制造业', 'C364', '印刷、制药、日化生产专用设备制造', '包括制浆和造纸专用设备制造，印刷专用设备制造，日用化工专用设备制造，制药专用设备制造，照明器具生产专用设备制造，玻璃、陶瓷和搪瓷制品生产专用设备制造，其他日用品生产专用设备制造。', '2017-06-29 00:38:40.724333', '2017-06-29 00:38:40.724653');
INSERT INTO `oneapp_d_industrial` VALUES ('162', 'C', '制造业', '36', '专用设备制造业', 'C365', '纺织、服装和皮革工业专用设备制造', '包括纺织专用设备制造，皮革、毛皮及其制品加工专用设备制造，缝纫机械制造，其他服装加工专用设备制造。', '2017-06-29 00:38:40.726164', '2017-06-29 00:38:40.726497');
INSERT INTO `oneapp_d_industrial` VALUES ('163', 'C', '制造业', '36', '专用设备制造业', 'C366', '电子和电工机械专用设备制造', '包括电工机械专用设备制造，电子工业专用设备制造，武器弹药制造，航空、航天及其他专用设备制造。', '2017-06-29 00:38:40.728211', '2017-06-29 00:38:40.728568');
INSERT INTO `oneapp_d_industrial` VALUES ('164', 'C', '制造业', '36', '专用设备制造业', 'C367', '农、林、牧、渔专用机械制造', '包括拖拉机制造，机械化农业及园艺机具制造，营林及木竹采伐机械制造，畜牧机械制造，渔业机械制造，农林牧渔机械配件制造，其他农林牧渔业机械制造及机械修理。', '2017-06-29 00:38:40.730146', '2017-06-29 00:38:40.730514');
INSERT INTO `oneapp_d_industrial` VALUES ('165', 'C', '制造业', '36', '专用设备制造业', 'C368', '医疗仪器设备及器械制造', '包括医疗诊断、监护及治疗设备制造，口腔科用设备及器具制造，实验室及医用消毒设备和器具的制造，医疗、外科及兽医用器械制造，机械治疗及病房护理设备制造，假肢、人工器官及植（介）入器械制造，其他医疗设备及器械制造。', '2017-06-29 00:38:40.732244', '2017-06-29 00:38:40.732550');
INSERT INTO `oneapp_d_industrial` VALUES ('166', 'C', '制造业', '36', '专用设备制造业', 'C369', '环保、社会公共安全及其他专用设备制造', '包括环境污染防治专用设备制造，地质勘查专用设备制造，邮政专用机械及器材制造，商业、饮食、服务业专用设备制造，社会公共安全设备及器材制造，交通安全及管制专用设备制造，水资源专用机械制造，其他专用设备制造。', '2017-06-29 00:38:40.734033', '2017-06-29 00:38:40.734358');
INSERT INTO `oneapp_d_industrial` VALUES ('167', 'C', '制造业', '37', '交通运输设备制造业', 'C371', '铁路运输设备制造', '包括铁路机车车辆及动车组制造，工矿有轨专用车辆制造，铁路机车车辆配件制造，铁路专用设备及器材、配件制造，其他铁路设备制造及设备修理。', '2017-06-29 00:38:40.735919', '2017-06-29 00:38:40.736255');
INSERT INTO `oneapp_d_industrial` VALUES ('168', 'C', '制造业', '37', '交通运输设备制造业', 'C372', '汽车制造', '包括汽车整车制造，改装汽车制造，电车制造，汽车车身、挂车的制造，汽车零部件及配件制造，汽车修理。', '2017-06-29 00:38:40.737945', '2017-06-29 00:38:40.738281');
INSERT INTO `oneapp_d_industrial` VALUES ('169', 'C', '制造业', '37', '交通运输设备制造业', 'C373', '摩托车制造', '包括摩托车整车制造，摩托车零部件及配件制造。', '2017-06-29 00:38:40.739958', '2017-06-29 00:38:40.740297');
INSERT INTO `oneapp_d_industrial` VALUES ('170', 'C', '制造业', '37', '交通运输设备制造业', 'C374', '自行车制造', '包括脚踏自行车及残疾人座车制造，助动自行车制造。', '2017-06-29 00:38:40.741948', '2017-06-29 00:38:40.742242');
INSERT INTO `oneapp_d_industrial` VALUES ('171', 'C', '制造业', '37', '交通运输设备制造业', 'C375', '船舶及浮动装置制造', '包括金属船舶制造，非金属船舶制造，娱乐船和运动船的建造和修理，船用配套设备制造，船舶修理及拆船，航标器材及其他浮动装置的制造。', '2017-06-29 00:38:40.743854', '2017-06-29 00:38:40.744209');
INSERT INTO `oneapp_d_industrial` VALUES ('172', 'C', '制造业', '37', '交通运输设备制造业', 'C376', '航空航天器制造', '包括飞机制造及修理，航天器制造，其他飞行器制造。', '2017-06-29 00:38:40.745816', '2017-06-29 00:38:40.746143');
INSERT INTO `oneapp_d_industrial` VALUES ('173', 'C', '制造业', '37', '交通运输设备制造业', 'C379', '交通器材及其他交通运输设备制造', '包括潜水及水下救捞装备制造，交通管理用金属标志及设施制造，其他交通运输设备制造。', '2017-06-29 00:38:40.747738', '2017-06-29 00:38:40.748110');
INSERT INTO `oneapp_d_industrial` VALUES ('174', 'C', '制造业', '39', '电气机械及器材制造业', 'C391', '电机制造', '包括发电机及发电机组制造，电动机制造，微电机及其他电机制造。', '2017-06-29 00:38:40.749713', '2017-06-29 00:38:40.750037');
INSERT INTO `oneapp_d_industrial` VALUES ('175', 'C', '制造业', '39', '电气机械及器材制造业', 'C392', '输配电及控制设备制造', '包括变压器、整流器和电感器制造，电容器及其配套设备制造，配电开关控制设备制造，电力电子元器件制造，其他输配电及控制设备制造。', '2017-06-29 00:38:40.751539', '2017-06-29 00:38:40.751864');
INSERT INTO `oneapp_d_industrial` VALUES ('176', 'C', '制造业', '39', '电气机械及器材制造业', 'C393', '电线、电缆、光缆及电工器材制造', '包括电线电缆制造，光纤、光缆制造，绝缘制品制造，其他电工器材制造。', '2017-06-29 00:38:40.753414', '2017-06-29 00:38:40.753746');
INSERT INTO `oneapp_d_industrial` VALUES ('177', 'C', '制造业', '39', '电气机械及器材制造业', 'C394', '电池制造', null, '2017-06-29 00:38:40.755282', '2017-06-29 00:38:40.755645');
INSERT INTO `oneapp_d_industrial` VALUES ('178', 'C', '制造业', '39', '电气机械及器材制造业', 'C395', '家用电力器具制造', '包括家用制冷电器具制造，家用空气调节器制造，家用通风电器具制造，家用厨房电器具制造，家用清洁卫生电器具制造，家用美容、保健电器具制造，家用电力器具专用配件制造，其他家用电力器具制造。', '2017-06-29 00:38:40.757164', '2017-06-29 00:38:40.757543');
INSERT INTO `oneapp_d_industrial` VALUES ('179', 'C', '制造业', '39', '电气机械及器材制造业', 'C396', '非电力家用器具制造', '包括燃气、太阳能及类似能源的器具制造，其他非电力家用器具制造。', '2017-06-29 00:38:40.759367', '2017-06-29 00:38:40.759730');
INSERT INTO `oneapp_d_industrial` VALUES ('180', 'C', '制造业', '39', '电气机械及器材制造业', 'C397', '照明器具制造', '包括电光源制造，照明灯具制造，灯用电器附件及其他照明器具制造。', '2017-06-29 00:38:40.761409', '2017-06-29 00:38:40.761736');
INSERT INTO `oneapp_d_industrial` VALUES ('181', 'C', '制造业', '39', '电气机械及器材制造业', 'C399', '其他电气机械及器材制造', '包括车辆专用照明及电气信号设备装置制造，其他未列明的电气机械制造。', '2017-06-29 00:38:40.763428', '2017-06-29 00:38:40.763764');
INSERT INTO `oneapp_d_industrial` VALUES ('182', 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C401', '通信设备制造', '包括通信传输设备制造，通信交换设备制造，通信终端设备制造，移动通信及终端设备制造，其他通信设备制造。', '2017-06-29 00:38:40.765420', '2017-06-29 00:38:40.765748');
INSERT INTO `oneapp_d_industrial` VALUES ('183', 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C402', '雷达及配套设备制造', null, '2017-06-29 00:38:40.767399', '2017-06-29 00:38:40.767768');
INSERT INTO `oneapp_d_industrial` VALUES ('184', 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C403', '广播电视设备制造', '包括广播电视节目制作及发射设备制造, 广播电视接收设备及器材制造，应用电视设备及其他广播电视设备制造。', '2017-06-29 00:38:40.769549', '2017-06-29 00:38:40.769888');
INSERT INTO `oneapp_d_industrial` VALUES ('185', 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C404', '电子计算机制造', '包括电子计算机整机制造，计算机网络设备制造，电子计算机外部设备制造。', '2017-06-29 00:38:40.771446', '2017-06-29 00:38:40.771843');
INSERT INTO `oneapp_d_industrial` VALUES ('186', 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C405', '电子器件制造', '包括电子真空器件制造，半导体分立器件制造，集成电路制造，光电子器件及其他电子器件制造。', '2017-06-29 00:38:40.773484', '2017-06-29 00:38:40.773818');
INSERT INTO `oneapp_d_industrial` VALUES ('187', 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C406', '电子元件制造', '包括电子元件及组件制造，印制电路板制造。', '2017-06-29 00:38:40.775513', '2017-06-29 00:38:40.775861');
INSERT INTO `oneapp_d_industrial` VALUES ('188', 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C407', '家用视听设备制造', '包括家用影视设备制造，家用音响设备制造。', '2017-06-29 00:38:40.777418', '2017-06-29 00:38:40.777734');
INSERT INTO `oneapp_d_industrial` VALUES ('189', 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C409', '其他电子设备制造', null, '2017-06-29 00:38:40.779258', '2017-06-29 00:38:40.779584');
INSERT INTO `oneapp_d_industrial` VALUES ('190', 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C411', '通用仪器仪表制造', '包括工业自动控制系统装置制造，电工仪器仪表制造，绘图、计算及测量仪器制造，实验分析仪器制造，试验机制造，供应用仪表及其他通用仪器制造。', '2017-06-29 00:38:40.781194', '2017-06-29 00:38:40.781519');
INSERT INTO `oneapp_d_industrial` VALUES ('191', 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C412', '专用仪器仪表制造', '包括环境监测专用仪器仪表制造，汽车及其他用计数仪表制造，导航、气象及海洋专用仪器制造，农林牧渔专用仪器仪表制造，地质勘探和地震专用仪器制造，教学专用仪器制造，核子及核辐射测量仪器制造，电子测量仪器制造，其他专用仪器制造。', '2017-06-29 00:38:40.783053', '2017-06-29 00:38:40.783376');
INSERT INTO `oneapp_d_industrial` VALUES ('192', 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C413', '钟表与计时仪器制造', null, '2017-06-29 00:38:40.784968', '2017-06-29 00:38:40.785291');
INSERT INTO `oneapp_d_industrial` VALUES ('193', 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C414', '光学仪器及眼镜制造', '包括光学仪器制造，眼镜制造。', '2017-06-29 00:38:40.786747', '2017-06-29 00:38:40.787061');
INSERT INTO `oneapp_d_industrial` VALUES ('194', 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C415', '文化、办公用机械制造', '包括电影机械制造，幻灯及投影设备制造，照相机及器材制造，复印和胶印设备制造，计算器及货币专用设备制造，其他文化、办公用机械制造。', '2017-06-29 00:38:40.788683', '2017-06-29 00:38:40.789031');
INSERT INTO `oneapp_d_industrial` VALUES ('195', 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C419', '其他仪器仪表的制造及修理', null, '2017-06-29 00:38:40.790778', '2017-06-29 00:38:40.791146');
INSERT INTO `oneapp_d_industrial` VALUES ('196', 'C', '制造业', '42', '工艺品及其他制造业', 'C421', '工艺美术品制造', '包括雕塑工艺品制造，金属工艺品制造，漆器工艺品制造，花画工艺品制造，天然植物纤维编织工艺品制造，抽纱刺绣工艺品制造，地毯、挂毯制造，珠宝首饰及有关物品的制造，其他工艺美术品制造。', '2017-06-29 00:38:40.792813', '2017-06-29 00:38:40.793153');
INSERT INTO `oneapp_d_industrial` VALUES ('197', 'C', '制造业', '42', '工艺品及其他制造业', 'C422', '日用杂品制造', '包括制镜及类似品加工，鬃毛加工、制刷及清扫工具的制造，其他日用杂品制造。', '2017-06-29 00:38:40.794690', '2017-06-29 00:38:40.795120');
INSERT INTO `oneapp_d_industrial` VALUES ('198', 'C', '制造业', '42', '工艺品及其他制造业', 'C423', '煤制品制造', null, '2017-06-29 00:38:40.796720', '2017-06-29 00:38:40.797063');
INSERT INTO `oneapp_d_industrial` VALUES ('199', 'C', '制造业', '42', '工艺品及其他制造业', 'C424', '核辐射加工', null, '2017-06-29 00:38:40.798750', '2017-06-29 00:38:40.799077');
INSERT INTO `oneapp_d_industrial` VALUES ('200', 'C', '制造业', '42', '工艺品及其他制造业', 'C429', '其他未列明的制造业', null, '2017-06-29 00:38:40.800626', '2017-06-29 00:38:40.800952');
INSERT INTO `oneapp_d_industrial` VALUES ('201', 'C', '制造业', '43', '废弃资源和废旧材料回收加工业', 'C431', '金属废料和碎屑的加工处理', null, '2017-06-29 00:38:40.802482', '2017-06-29 00:38:40.802807');
INSERT INTO `oneapp_d_industrial` VALUES ('202', 'C', '制造业', '43', '废弃资源和废旧材料回收加工业', 'C432', '非金属废料和碎屑的加工处理', null, '2017-06-29 00:38:40.804342', '2017-06-29 00:38:40.804662');
INSERT INTO `oneapp_d_industrial` VALUES ('203', 'D', '电力、燃气及水的生产和供应业', '44', '电力、热力的生产和供应业', 'D441', '电力生产', '包括火力发电，水力发电，核力发电，其他能源发电。', '2017-06-29 00:38:40.806154', '2017-06-29 00:38:40.806475');
INSERT INTO `oneapp_d_industrial` VALUES ('204', 'D', '电力、燃气及水的生产和供应业', '44', '电力、热力的生产和供应业', 'D442', '电力供应', null, '2017-06-29 00:38:40.807926', '2017-06-29 00:38:40.808234');
INSERT INTO `oneapp_d_industrial` VALUES ('205', 'D', '电力、燃气及水的生产和供应业', '44', '电力、热力的生产和供应业', 'D443', '热力生产和供应', null, '2017-06-29 00:38:40.809661', '2017-06-29 00:38:40.809984');
INSERT INTO `oneapp_d_industrial` VALUES ('206', 'D', '电力、燃气及水的生产和供应业', '45', '燃气生产和供应业', 'D450', '燃气生产和供应业', null, '2017-06-29 00:38:40.811600', '2017-06-29 00:38:40.811924');
INSERT INTO `oneapp_d_industrial` VALUES ('207', 'D', '电力、燃气及水的生产和供应业', '46', '水的生产和供应业', 'D461', '自来水的生产和供应', null, '2017-06-29 00:38:40.813512', '2017-06-29 00:38:40.813844');
INSERT INTO `oneapp_d_industrial` VALUES ('208', 'D', '电力、燃气及水的生产和供应业', '46', '水的生产和供应业', 'D462', '污水处理及其再生利用', null, '2017-06-29 00:38:40.815623', '2017-06-29 00:38:40.815998');
INSERT INTO `oneapp_d_industrial` VALUES ('209', 'D', '电力、燃气及水的生产和供应业', '46', '水的生产和供应业', 'D469', '其他水的处理、利用与分配', null, '2017-06-29 00:38:40.817670', '2017-06-29 00:38:40.818001');
INSERT INTO `oneapp_d_industrial` VALUES ('210', 'E', '建筑业', '47', '房屋和土木工程建筑业', 'E471', '房屋工程建筑', null, '2017-06-29 00:38:40.819551', '2017-06-29 00:38:40.819874');
INSERT INTO `oneapp_d_industrial` VALUES ('211', 'E', '建筑业', '47', '房屋和土木工程建筑业', 'E472', '土木工程建筑', '包括铁路、道路、隧道和桥梁工程建筑，水利和港口工程建筑，工矿工程建筑，架线和管道工程建筑，其他土木工程建筑。', '2017-06-29 00:38:40.821323', '2017-06-29 00:38:40.821658');
INSERT INTO `oneapp_d_industrial` VALUES ('212', 'E', '建筑业', '48', '建筑安装业', 'E480', '建筑安装业', null, '2017-06-29 00:38:40.823156', '2017-06-29 00:38:40.823476');
INSERT INTO `oneapp_d_industrial` VALUES ('213', 'E', '建筑业', '49', '建筑装饰业', 'E490', '建筑装饰业', null, '2017-06-29 00:38:40.825057', '2017-06-29 00:38:40.825398');
INSERT INTO `oneapp_d_industrial` VALUES ('214', 'E', '建筑业', '50', '其他建筑业', 'E501', '工程准备', null, '2017-06-29 00:38:40.826998', '2017-06-29 00:38:40.827320');
INSERT INTO `oneapp_d_industrial` VALUES ('215', 'E', '建筑业', '50', '其他建筑业', 'E502', '提供施工设备服务', null, '2017-06-29 00:38:40.828833', '2017-06-29 00:38:40.829154');
INSERT INTO `oneapp_d_industrial` VALUES ('216', 'E', '建筑业', '50', '其他建筑业', 'E509', '其他未列明的建筑活动', null, '2017-06-29 00:38:40.830713', '2017-06-29 00:38:40.831017');
INSERT INTO `oneapp_d_industrial` VALUES ('217', 'F', '交通运输、仓储和邮政业', '51', '铁路运输业', 'F511', '铁路旅客运输', null, '2017-06-29 00:38:40.832622', '2017-06-29 00:38:40.832957');
INSERT INTO `oneapp_d_industrial` VALUES ('218', 'F', '交通运输、仓储和邮政业', '51', '铁路运输业', 'F512', '铁路货物运输', null, '2017-06-29 00:38:40.834548', '2017-06-29 00:38:40.834880');
INSERT INTO `oneapp_d_industrial` VALUES ('219', 'F', '交通运输、仓储和邮政业', '51', '铁路运输业', 'F513', '铁路运输辅助活动', '包括客运火车站，货运火车站，其他铁路运输辅助活动。', '2017-06-29 00:38:40.836370', '2017-06-29 00:38:40.836739');
INSERT INTO `oneapp_d_industrial` VALUES ('220', 'F', '交通运输、仓储和邮政业', '52', '道路运输业', 'F521', '公路旅客运输', null, '2017-06-29 00:38:40.838568', '2017-06-29 00:38:40.838892');
INSERT INTO `oneapp_d_industrial` VALUES ('221', 'F', '交通运输、仓储和邮政业', '52', '道路运输业', 'F522', '道路货物运输', null, '2017-06-29 00:38:40.840456', '2017-06-29 00:38:40.840823');
INSERT INTO `oneapp_d_industrial` VALUES ('222', 'F', '交通运输、仓储和邮政业', '52', '道路运输业', 'F523', '道路运输辅助活动', '包括客运汽车站，公路管理与养护，其他道路运输辅助活动。', '2017-06-29 00:38:40.842505', '2017-06-29 00:38:40.842903');
INSERT INTO `oneapp_d_industrial` VALUES ('223', 'F', '交通运输、仓储和邮政业', '53', '城市公共交通业', 'F531', '公共电汽车客运', null, '2017-06-29 00:38:40.844552', '2017-06-29 00:38:40.844877');
INSERT INTO `oneapp_d_industrial` VALUES ('224', 'F', '交通运输、仓储和邮政业', '53', '城市公共交通业', 'F532', '轨道交通', null, '2017-06-29 00:38:40.846336', '2017-06-29 00:38:40.846659');
INSERT INTO `oneapp_d_industrial` VALUES ('225', 'F', '交通运输、仓储和邮政业', '53', '城市公共交通业', 'F533', '出租车客运', null, '2017-06-29 00:38:40.848155', '2017-06-29 00:38:40.848482');
INSERT INTO `oneapp_d_industrial` VALUES ('226', 'F', '交通运输、仓储和邮政业', '53', '城市公共交通业', 'F534', '城市轮渡', null, '2017-06-29 00:38:40.850126', '2017-06-29 00:38:40.850453');
INSERT INTO `oneapp_d_industrial` VALUES ('227', 'F', '交通运输、仓储和邮政业', '53', '城市公共交通业', 'F539', '其他城市公共交通', null, '2017-06-29 00:38:40.851966', '2017-06-29 00:38:40.852305');
INSERT INTO `oneapp_d_industrial` VALUES ('228', 'F', '交通运输、仓储和邮政业', '54', '水上运输业', 'F541', '水上旅客运输', '包括远洋旅客运输，沿海旅客运输，内河旅客运输。', '2017-06-29 00:38:40.854009', '2017-06-29 00:38:40.854351');
INSERT INTO `oneapp_d_industrial` VALUES ('229', 'F', '交通运输、仓储和邮政业', '54', '水上运输业', 'F542', '水上货物运输', '包括远洋货物运输，沿海货物运输，内河货物运输。', '2017-06-29 00:38:40.855961', '2017-06-29 00:38:40.856284');
INSERT INTO `oneapp_d_industrial` VALUES ('230', 'F', '交通运输、仓储和邮政业', '54', '水上运输业', 'F543', '水上运输辅助活动', '包括客运港口，货运港口，其他水上运输辅助活动。', '2017-06-29 00:38:40.857832', '2017-06-29 00:38:40.858240');
INSERT INTO `oneapp_d_industrial` VALUES ('231', 'F', '交通运输、仓储和邮政业', '55', '航空运输业', 'F551', '航空客货运输', '包括航空旅客运输，航空货物运输。', '2017-06-29 00:38:40.860003', '2017-06-29 00:38:40.860338');
INSERT INTO `oneapp_d_industrial` VALUES ('232', 'F', '交通运输、仓储和邮政业', '55', '航空运输业', 'F552', '通用航空服务', null, '2017-06-29 00:38:40.861921', '2017-06-29 00:38:40.862252');
INSERT INTO `oneapp_d_industrial` VALUES ('233', 'F', '交通运输、仓储和邮政业', '55', '航空运输业', 'F553', '航空运输辅助活动', '包括机场，空中交通管理，其他航空运输辅助活动。', '2017-06-29 00:38:40.863768', '2017-06-29 00:38:40.864108');
INSERT INTO `oneapp_d_industrial` VALUES ('234', 'F', '交通运输、仓储和邮政业', '56', '管道运输业', 'F560', '管道运输业', null, '2017-06-29 00:38:40.865744', '2017-06-29 00:38:40.866087');
INSERT INTO `oneapp_d_industrial` VALUES ('235', 'F', '交通运输、仓储和邮政业', '57', '装卸搬运和其他运输服务业', 'F571', '装卸搬运', null, '2017-06-29 00:38:40.867706', '2017-06-29 00:38:40.868031');
INSERT INTO `oneapp_d_industrial` VALUES ('236', 'F', '交通运输、仓储和邮政业', '57', '装卸搬运和其他运输服务业', 'F572', '运输代理服务', null, '2017-06-29 00:38:40.869546', '2017-06-29 00:38:40.869873');
INSERT INTO `oneapp_d_industrial` VALUES ('237', 'F', '交通运输、仓储和邮政业', '58', '仓储业', 'F581', '谷物、棉花等农产品仓储', null, '2017-06-29 00:38:40.871459', '2017-06-29 00:38:40.871802');
INSERT INTO `oneapp_d_industrial` VALUES ('238', 'F', '交通运输、仓储和邮政业', '58', '仓储业', 'F589', '其他仓储', null, '2017-06-29 00:38:40.873401', '2017-06-29 00:38:40.873723');
INSERT INTO `oneapp_d_industrial` VALUES ('239', 'F', '交通运输、仓储和邮政业', '59', '邮政业', 'F591', '国家邮政', null, '2017-06-29 00:38:40.875294', '2017-06-29 00:38:40.875619');
INSERT INTO `oneapp_d_industrial` VALUES ('240', 'F', '交通运输、仓储和邮政业', '59', '邮政业', 'F599', '其他寄递服务', null, '2017-06-29 00:38:40.877131', '2017-06-29 00:38:40.877456');
INSERT INTO `oneapp_d_industrial` VALUES ('241', 'G', '信息传输、计算机服务和软件业', '60', '电信和其他信息传输服务业', 'G601', '电信', '包括固定电信服务，移动电信服务，其他电信服务。', '2017-06-29 00:38:40.878885', '2017-06-29 00:38:40.879205');
INSERT INTO `oneapp_d_industrial` VALUES ('242', 'G', '信息传输、计算机服务和软件业', '60', '电信和其他信息传输服务业', 'G602', '互联网信息服务', null, '2017-06-29 00:38:40.880777', '2017-06-29 00:38:40.881102');
INSERT INTO `oneapp_d_industrial` VALUES ('243', 'G', '信息传输、计算机服务和软件业', '60', '电信和其他信息传输服务业', 'G603', '广播电视传输服务', '包括有线广播电视传输服务，无线广播电视传输服务。', '2017-06-29 00:38:40.882727', '2017-06-29 00:38:40.883064');
INSERT INTO `oneapp_d_industrial` VALUES ('244', 'G', '信息传输、计算机服务和软件业', '60', '电信和其他信息传输服务业', 'G604', '卫星传输服务', null, '2017-06-29 00:38:40.884576', '2017-06-29 00:38:40.884897');
INSERT INTO `oneapp_d_industrial` VALUES ('245', 'G', '信息传输、计算机服务和软件业', '61', '计算机服务业', 'G611', '计算机系统服务', null, '2017-06-29 00:38:40.886426', '2017-06-29 00:38:40.886807');
INSERT INTO `oneapp_d_industrial` VALUES ('246', 'G', '信息传输、计算机服务和软件业', '61', '计算机服务业', 'G612', '数据处理', null, '2017-06-29 00:38:40.888810', '2017-06-29 00:38:40.889172');
INSERT INTO `oneapp_d_industrial` VALUES ('247', 'G', '信息传输、计算机服务和软件业', '61', '计算机服务业', 'G613', '计算机维修', null, '2017-06-29 00:38:40.890828', '2017-06-29 00:38:40.891181');
INSERT INTO `oneapp_d_industrial` VALUES ('248', 'G', '信息传输、计算机服务和软件业', '61', '计算机服务业', 'G619', '其他计算机服务', null, '2017-06-29 00:38:40.892756', '2017-06-29 00:38:40.893093');
INSERT INTO `oneapp_d_industrial` VALUES ('249', 'G', '信息传输、计算机服务和软件业', '62', '软件业', 'G621', '公共软件服务', '包括基础软件服务，应用软件服务。', '2017-06-29 00:38:40.894709', '2017-06-29 00:38:40.895056');
INSERT INTO `oneapp_d_industrial` VALUES ('250', 'G', '信息传输、计算机服务和软件业', '62', '软件业', 'G629', '其他软件服务', null, '2017-06-29 00:38:40.896606', '2017-06-29 00:38:40.896930');
INSERT INTO `oneapp_d_industrial` VALUES ('251', 'H', '批发和零售业', '63', '批发业', 'H631', '农畜产品批发', '包括谷物、豆及薯类批发，种子、饲料批发，棉、麻批发，牲畜批发，其他农畜产品批发。', '2017-06-29 00:38:40.898645', '2017-06-29 00:38:40.899008');
INSERT INTO `oneapp_d_industrial` VALUES ('252', 'H', '批发和零售业', '63', '批发业', 'H632', '食品、饮料及烟草制品批发', '包括米、面制品及食用油批发，糕点、糖果及糖批发，果品、蔬菜批发，肉、禽、蛋及水产品批发，盐及调味品批发，饮料及茶叶批发，烟草制品批发，其他食品批发。', '2017-06-29 00:38:40.900603', '2017-06-29 00:38:40.900919');
INSERT INTO `oneapp_d_industrial` VALUES ('253', 'H', '批发和零售业', '63', '批发业', 'H633', '纺织、服装及日用品批发', '包括纺织品、针织品及原料批发，服装批发，鞋帽批发，厨房、卫生间用具及日用杂货批发，化妆品及卫生用品批发，其他日用品批发。', '2017-06-29 00:38:40.902535', '2017-06-29 00:38:40.902897');
INSERT INTO `oneapp_d_industrial` VALUES ('254', 'H', '批发和零售业', '63', '批发业', 'H634', '文化、体育用品及器材批发', '包括文具用品批发，体育用品批发，图书批发，报刊批发，音像制品及电子出版物批发，首饰、工艺品及收藏品批发，其他文化用品批发。', '2017-06-29 00:38:40.904510', '2017-06-29 00:38:40.904826');
INSERT INTO `oneapp_d_industrial` VALUES ('255', 'H', '批发和零售业', '63', '批发业', 'H635', '医药及医疗器材批发', '包括西药批发，中药材及中成药批发，医疗用品及器材批发。', '2017-06-29 00:38:40.906666', '2017-06-29 00:38:40.907040');
INSERT INTO `oneapp_d_industrial` VALUES ('256', 'H', '批发和零售业', '63', '批发业', 'H636', '矿产品、建材及化工产品批发', '包括煤炭及制品批发，石油及制品批发，非金属矿及制品批发，金属及金属矿批发，建材批发，化肥批发，农药批发，农用薄膜批发，其他化工产品批发。', '2017-06-29 00:38:40.908791', '2017-06-29 00:38:40.909173');
INSERT INTO `oneapp_d_industrial` VALUES ('257', 'H', '批发和零售业', '63', '批发业', 'H637', '机械设备、五金交电及电子产品批发', '包括农业机械批发，汽车、摩托车及零配件批发，五金、交电批发，家用电器批发，计算机、软件及辅助设备批发，通讯及广播电视设备批发，其他机械设备及电子产品批发。', '2017-06-29 00:38:40.910954', '2017-06-29 00:38:40.911283');
INSERT INTO `oneapp_d_industrial` VALUES ('258', 'H', '批发和零售业', '63', '批发业', 'H638', '贸易经纪与代理', null, '2017-06-29 00:38:40.913021', '2017-06-29 00:38:40.913375');
INSERT INTO `oneapp_d_industrial` VALUES ('259', 'H', '批发和零售业', '63', '批发业', 'H639', '其他批发', '包括再生物资回收与批发，其他未列明的批发。', '2017-06-29 00:38:40.915080', '2017-06-29 00:38:40.915419');
INSERT INTO `oneapp_d_industrial` VALUES ('260', 'H', '批发和零售业', '65', '零售业', 'H651', '综合零售', '包括百货零售，超级市场零售，其他综合零售。', '2017-06-29 00:38:40.916962', '2017-06-29 00:38:40.917341');
INSERT INTO `oneapp_d_industrial` VALUES ('261', 'H', '批发和零售业', '65', '零售业', 'H652', '食品、饮料及烟草制品专门零售', '包括粮油零售，糕点、面包零售，果品、蔬菜零售，肉、禽、蛋及水产品零售，饮料及茶叶零售，烟草制品零售，其他食品零售。', '2017-06-29 00:38:40.919262', '2017-06-29 00:38:40.919634');
INSERT INTO `oneapp_d_industrial` VALUES ('262', 'H', '批发和零售业', '65', '零售业', 'H653', '纺织、服装及日用品专门零售', '包括纺织品及针织品零售，服装零售，鞋帽零售，钟表、眼镜零售，化妆品及卫生用品零售，其他日用品零售。', '2017-06-29 00:38:40.921385', '2017-06-29 00:38:40.921832');
INSERT INTO `oneapp_d_industrial` VALUES ('263', 'H', '批发和零售业', '65', '零售业', 'H654', '文化、体育用品及器材专门零售', '包括文具用品零售，体育用品零售，图书零售，报刊零售，音像制品及电子出版物零售，珠宝首饰零售，工艺美术品及收藏品零售，照相器材零售，其他文化用品零售。', '2017-06-29 00:38:40.923794', '2017-06-29 00:38:40.924148');
INSERT INTO `oneapp_d_industrial` VALUES ('264', 'H', '批发和零售业', '65', '零售业', 'H655', '医药及医疗器材专门零售', '包括药品零售，医疗用品及器材零售。', '2017-06-29 00:38:40.925752', '2017-06-29 00:38:40.926086');
INSERT INTO `oneapp_d_industrial` VALUES ('265', 'H', '批发和零售业', '65', '零售业', 'H656', '汽车、摩托车、燃料及零配件专门零售', '包括汽车零售，汽车零配件零售，摩托车及零配件零售，机动车燃料零售。', '2017-06-29 00:38:40.927741', '2017-06-29 00:38:40.928078');
INSERT INTO `oneapp_d_industrial` VALUES ('266', 'H', '批发和零售业', '65', '零售业', 'H657', '家用电器及电子产品专门零售', '包括家用电器零售，计算机、软件及辅助设备零售，通信设备零售，其他电子产品零售。', '2017-06-29 00:38:40.929775', '2017-06-29 00:38:40.930129');
INSERT INTO `oneapp_d_industrial` VALUES ('267', 'H', '批发和零售业', '65', '零售业', 'H658', '五金、家具及室内装修材料专门零售', '包括五金零售，家具零售，涂料零售，其他室内装修材料零售。', '2017-06-29 00:38:40.931937', '2017-06-29 00:38:40.932268');
INSERT INTO `oneapp_d_industrial` VALUES ('268', 'H', '批发和零售业', '65', '零售业', 'H659', '无店铺及其他零售', '包括流动货摊零售，邮购及电子销售，生活用燃料零售，花卉零售，旧货零售，其他未列明的零售。', '2017-06-29 00:38:40.933886', '2017-06-29 00:38:40.934219');
INSERT INTO `oneapp_d_industrial` VALUES ('269', 'I', '住宿和餐饮业', '66', '住宿业', 'I661', '旅游饭店', null, '2017-06-29 00:38:40.935761', '2017-06-29 00:38:40.936086');
INSERT INTO `oneapp_d_industrial` VALUES ('270', 'I', '住宿和餐饮业', '66', '住宿业', 'I662', '一般旅馆', null, '2017-06-29 00:38:40.937637', '2017-06-29 00:38:40.937968');
INSERT INTO `oneapp_d_industrial` VALUES ('271', 'I', '住宿和餐饮业', '66', '住宿业', 'I669', '其他住宿服务', null, '2017-06-29 00:38:40.939597', '2017-06-29 00:38:40.939941');
INSERT INTO `oneapp_d_industrial` VALUES ('272', 'I', '住宿和餐饮业', '67', '餐饮业', 'I671', '正餐服务', null, '2017-06-29 00:38:40.941632', '2017-06-29 00:38:40.941975');
INSERT INTO `oneapp_d_industrial` VALUES ('273', 'I', '住宿和餐饮业', '67', '餐饮业', 'I672', '快餐服务', null, '2017-06-29 00:38:40.943526', '2017-06-29 00:38:40.943877');
INSERT INTO `oneapp_d_industrial` VALUES ('274', 'I', '住宿和餐饮业', '67', '餐饮业', 'I673', '饮料及冷饮服务', null, '2017-06-29 00:38:40.945526', '2017-06-29 00:38:40.945974');
INSERT INTO `oneapp_d_industrial` VALUES ('275', 'I', '住宿和餐饮业', '67', '餐饮业', 'I679', '其他餐饮服务', null, '2017-06-29 00:38:40.947642', '2017-06-29 00:38:40.948000');
INSERT INTO `oneapp_d_industrial` VALUES ('276', 'J', '金融业', '68', '银行业', 'J681', '中央银行', null, '2017-06-29 00:38:40.949718', '2017-06-29 00:38:40.950055');
INSERT INTO `oneapp_d_industrial` VALUES ('277', 'J', '金融业', '68', '银行业', 'J682', '商业银行', null, '2017-06-29 00:38:40.951744', '2017-06-29 00:38:40.952101');
INSERT INTO `oneapp_d_industrial` VALUES ('278', 'J', '金融业', '68', '银行业', 'J689', '其他银行', null, '2017-06-29 00:38:40.953754', '2017-06-29 00:38:40.954120');
INSERT INTO `oneapp_d_industrial` VALUES ('279', 'J', '金融业', '69', '证券业', 'J691', '证券市场管理', null, '2017-06-29 00:38:40.955795', '2017-06-29 00:38:40.956810');
INSERT INTO `oneapp_d_industrial` VALUES ('280', 'J', '金融业', '69', '证券业', 'J692', '证券经纪与交易', null, '2017-06-29 00:38:40.958999', '2017-06-29 00:38:40.959354');
INSERT INTO `oneapp_d_industrial` VALUES ('281', 'J', '金融业', '69', '证券业', 'J693', '证券投资', null, '2017-06-29 00:38:40.960979', '2017-06-29 00:38:40.961346');
INSERT INTO `oneapp_d_industrial` VALUES ('282', 'J', '金融业', '69', '证券业', 'J694', '证券分析与咨询', null, '2017-06-29 00:38:40.963026', '2017-06-29 00:38:40.963452');
INSERT INTO `oneapp_d_industrial` VALUES ('283', 'J', '金融业', '70', '保险业', 'J701', '人寿保险', null, '2017-06-29 00:38:40.965282', '2017-06-29 00:38:40.965620');
INSERT INTO `oneapp_d_industrial` VALUES ('284', 'J', '金融业', '70', '保险业', 'J702', '非人寿保险', null, '2017-06-29 00:38:40.967216', '2017-06-29 00:38:40.967541');
INSERT INTO `oneapp_d_industrial` VALUES ('285', 'J', '金融业', '70', '保险业', 'J703', '保险辅助服务', null, '2017-06-29 00:38:40.969107', '2017-06-29 00:38:40.969443');
INSERT INTO `oneapp_d_industrial` VALUES ('286', 'J', '金融业', '71', '其他金融活动', 'J711', '金融信托与管理', null, '2017-06-29 00:38:40.971337', '2017-06-29 00:38:40.972093');
INSERT INTO `oneapp_d_industrial` VALUES ('287', 'J', '金融业', '71', '其他金融活动', 'J712', '金融租赁', null, '2017-06-29 00:38:40.974617', '2017-06-29 00:38:40.975017');
INSERT INTO `oneapp_d_industrial` VALUES ('288', 'J', '金融业', '71', '其他金融活动', 'J713', '财务公司', null, '2017-06-29 00:38:40.976736', '2017-06-29 00:38:40.977128');
INSERT INTO `oneapp_d_industrial` VALUES ('289', 'J', '金融业', '71', '其他金融活动', 'J714', '邮政储蓄', null, '2017-06-29 00:38:40.979030', '2017-06-29 00:38:40.979400');
INSERT INTO `oneapp_d_industrial` VALUES ('290', 'J', '金融业', '71', '其他金融活动', 'J715', '典当', null, '2017-06-29 00:38:40.981076', '2017-06-29 00:38:40.981437');
INSERT INTO `oneapp_d_industrial` VALUES ('291', 'J', '金融业', '71', '其他金融活动', 'J719', '其他未列明的金融活动', null, '2017-06-29 00:38:40.983379', '2017-06-29 00:38:40.983775');
INSERT INTO `oneapp_d_industrial` VALUES ('292', 'K', '房地产业', '72', '房地产业', 'K721', '房地产开发经营', null, '2017-06-29 00:38:40.985587', '2017-06-29 00:38:40.985957');
INSERT INTO `oneapp_d_industrial` VALUES ('293', 'K', '房地产业', '72', '房地产业', 'K722', '物业管理', null, '2017-06-29 00:38:40.987656', '2017-06-29 00:38:40.987989');
INSERT INTO `oneapp_d_industrial` VALUES ('294', 'K', '房地产业', '72', '房地产业', 'K723', '房地产中介服务', null, '2017-06-29 00:38:40.989726', '2017-06-29 00:38:40.990070');
INSERT INTO `oneapp_d_industrial` VALUES ('295', 'K', '房地产业', '72', '房地产业', 'K729', '其他房地产活动', null, '2017-06-29 00:38:40.991636', '2017-06-29 00:38:40.991935');
INSERT INTO `oneapp_d_industrial` VALUES ('296', 'L', '租赁和商务服务业', '73', '租赁业', 'L731', '机械设备租赁', '包括汽车租赁，农业机械租赁，建筑工程机械与设备租赁，计算机及通讯设备租赁，其他机械与设备租赁。', '2017-06-29 00:38:40.993411', '2017-06-29 00:38:40.993715');
INSERT INTO `oneapp_d_industrial` VALUES ('297', 'L', '租赁和商务服务业', '73', '租赁业', 'L732', '文化及日用品出租', '包括图书及音像制品出租，其他文化及日用品出租。', '2017-06-29 00:38:40.995224', '2017-06-29 00:38:40.995526');
INSERT INTO `oneapp_d_industrial` VALUES ('298', 'L', '租赁和商务服务业', '74', '商务服务业', 'L741', '企业管理服务', '包括企业管理机构，投资与资产管理，其他企业管理服务。', '2017-06-29 00:38:40.996999', '2017-06-29 00:38:40.997295');
INSERT INTO `oneapp_d_industrial` VALUES ('299', 'L', '租赁和商务服务业', '74', '商务服务业', 'L742', '法律服务', '包括律师及相关的法律服务，公证服务，其他法律服务。', '2017-06-29 00:38:40.998834', '2017-06-29 00:38:40.999138');
INSERT INTO `oneapp_d_industrial` VALUES ('300', 'L', '租赁和商务服务业', '74', '商务服务业', 'L743', '咨询与调查', '包括会计、审计及税务服务，市场调查，社会经济咨询，其他专业咨询。', '2017-06-29 00:38:41.000749', '2017-06-29 00:38:41.001079');
INSERT INTO `oneapp_d_industrial` VALUES ('301', 'L', '租赁和商务服务业', '74', '商务服务业', 'L744', '广告业', null, '2017-06-29 00:38:41.002823', '2017-06-29 00:38:41.003182');
INSERT INTO `oneapp_d_industrial` VALUES ('302', 'L', '租赁和商务服务业', '74', '商务服务业', 'L745', '知识产权服务', null, '2017-06-29 00:38:41.006329', '2017-06-29 00:38:41.006981');
INSERT INTO `oneapp_d_industrial` VALUES ('303', 'L', '租赁和商务服务业', '74', '商务服务业', 'L746', '职业中介服务', null, '2017-06-29 00:38:41.009169', '2017-06-29 00:38:41.009515');
INSERT INTO `oneapp_d_industrial` VALUES ('304', 'L', '租赁和商务服务业', '74', '商务服务业', 'L747', '市场管理', null, '2017-06-29 00:38:41.011336', '2017-06-29 00:38:41.011676');
INSERT INTO `oneapp_d_industrial` VALUES ('305', 'L', '租赁和商务服务业', '74', '商务服务业', 'L748', '旅行社', null, '2017-06-29 00:38:41.013346', '2017-06-29 00:38:41.013683');
INSERT INTO `oneapp_d_industrial` VALUES ('306', 'L', '租赁和商务服务业', '74', '商务服务业', 'L749', '其他商务服务', '包括会议及展览服务，包装服务，保安服务，办公服务，其他未列明的商务服务。', '2017-06-29 00:38:41.015331', '2017-06-29 00:38:41.015646');
INSERT INTO `oneapp_d_industrial` VALUES ('307', 'M', '科学研究、技术服务和地质勘查业', '75', '研究与试验发展', 'M751', '自然科学研究与试验发展', null, '2017-06-29 00:38:41.017271', '2017-06-29 00:38:41.017726');
INSERT INTO `oneapp_d_industrial` VALUES ('308', 'M', '科学研究、技术服务和地质勘查业', '75', '研究与试验发展', 'M752', '工程和技术研究与试验发展', null, '2017-06-29 00:38:41.019999', '2017-06-29 00:38:41.020516');
INSERT INTO `oneapp_d_industrial` VALUES ('309', 'M', '科学研究、技术服务和地质勘查业', '75', '研究与试验发展', 'M753', '农业科学研究与试验发展', null, '2017-06-29 00:38:41.024902', '2017-06-29 00:38:41.025746');
INSERT INTO `oneapp_d_industrial` VALUES ('310', 'M', '科学研究、技术服务和地质勘查业', '75', '研究与试验发展', 'M754', '医学研究与试验发展', null, '2017-06-29 00:38:41.028219', '2017-06-29 00:38:41.028576');
INSERT INTO `oneapp_d_industrial` VALUES ('311', 'M', '科学研究、技术服务和地质勘查业', '75', '研究与试验发展', 'M755', '社会人文科学研究与试验发展', null, '2017-06-29 00:38:41.030424', '2017-06-29 00:38:41.030795');
INSERT INTO `oneapp_d_industrial` VALUES ('312', 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M761', '气象服务', null, '2017-06-29 00:38:41.032543', '2017-06-29 00:38:41.032886');
INSERT INTO `oneapp_d_industrial` VALUES ('313', 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M762', '地震服务', null, '2017-06-29 00:38:41.036381', '2017-06-29 00:38:41.037649');
INSERT INTO `oneapp_d_industrial` VALUES ('314', 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M763', '海洋服务', null, '2017-06-29 00:38:41.039605', '2017-06-29 00:38:41.040000');
INSERT INTO `oneapp_d_industrial` VALUES ('315', 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M764', '测绘服务', null, '2017-06-29 00:38:41.042264', '2017-06-29 00:38:41.042734');
INSERT INTO `oneapp_d_industrial` VALUES ('316', 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M765', '技术检测', null, '2017-06-29 00:38:41.044597', '2017-06-29 00:38:41.044968');
INSERT INTO `oneapp_d_industrial` VALUES ('317', 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M766', '环境监测', null, '2017-06-29 00:38:41.046955', '2017-06-29 00:38:41.047713');
INSERT INTO `oneapp_d_industrial` VALUES ('318', 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M767', '工程技术与规划管理', '包括工程管理服务，工程勘察设计，规划管理。', '2017-06-29 00:38:41.052209', '2017-06-29 00:38:41.052612');
INSERT INTO `oneapp_d_industrial` VALUES ('319', 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M769', '其他专业技术服务', null, '2017-06-29 00:38:41.054785', '2017-06-29 00:38:41.055165');
INSERT INTO `oneapp_d_industrial` VALUES ('320', 'M', '科学研究、技术服务和地质勘查业', '77', '科技交流和推广服务业', 'M771', '技术推广服务', null, '2017-06-29 00:38:41.059277', '2017-06-29 00:38:41.059862');
INSERT INTO `oneapp_d_industrial` VALUES ('321', 'M', '科学研究、技术服务和地质勘查业', '77', '科技交流和推广服务业', 'M772', '科技中介服务', null, '2017-06-29 00:38:41.062768', '2017-06-29 00:38:41.063246');
INSERT INTO `oneapp_d_industrial` VALUES ('322', 'M', '科学研究、技术服务和地质勘查业', '77', '科技交流和推广服务业', 'M779', '其他科技服务', null, '2017-06-29 00:38:41.065376', '2017-06-29 00:38:41.066039');
INSERT INTO `oneapp_d_industrial` VALUES ('323', 'M', '科学研究、技术服务和地质勘查业', '78', '地质勘查业', 'M781', '矿产地质勘查', '包括能源矿产地质勘查，固体矿产地质勘查，其他矿产地质勘查。', '2017-06-29 00:38:41.070839', '2017-06-29 00:38:41.071462');
INSERT INTO `oneapp_d_industrial` VALUES ('324', 'M', '科学研究、技术服务和地质勘查业', '78', '地质勘查业', 'M782', '基础地质勘查', null, '2017-06-29 00:38:41.073573', '2017-06-29 00:38:41.074163');
INSERT INTO `oneapp_d_industrial` VALUES ('325', 'M', '科学研究、技术服务和地质勘查业', '78', '地质勘查业', 'M783', '地质勘查技术服务', null, '2017-06-29 00:38:41.076106', '2017-06-29 00:38:41.076436');
INSERT INTO `oneapp_d_industrial` VALUES ('326', 'N', '水利、环境和公共设施管理业', '79', '水利管理业', 'N791', '防洪管理', null, '2017-06-29 00:38:41.078267', '2017-06-29 00:38:41.078725');
INSERT INTO `oneapp_d_industrial` VALUES ('327', 'N', '水利、环境和公共设施管理业', '79', '水利管理业', 'N792', '水资源管理', '包括水库管理，调水、引水管理，其他水资源管理。', '2017-06-29 00:38:41.083048', '2017-06-29 00:38:41.083492');
INSERT INTO `oneapp_d_industrial` VALUES ('328', 'N', '水利、环境和公共设施管理业', '79', '水利管理业', 'N799', '其他水利管理', null, '2017-06-29 00:38:41.085358', '2017-06-29 00:38:41.085708');
INSERT INTO `oneapp_d_industrial` VALUES ('329', 'N', '水利、环境和公共设施管理业', '80', '环境管理业', 'N801', '自然保护', '包括自然保护区管理，野生动植物保护，其他自然保护。', '2017-06-29 00:38:41.089706', '2017-06-29 00:38:41.090256');
INSERT INTO `oneapp_d_industrial` VALUES ('330', 'N', '水利、环境和公共设施管理业', '80', '环境管理业', 'N802', '环境治理', '包括城市市容管理，城市环境卫生管理，水污染治理，危险废物治理，其他环境治理。', '2017-06-29 00:38:41.096825', '2017-06-29 00:38:41.098042');
INSERT INTO `oneapp_d_industrial` VALUES ('331', 'N', '水利、环境和公共设施管理业', '81', '公共设施管理业', 'N813', '游览景区管理', '包括风景名胜区管理，公园管理，其他游览景区管理。', '2017-06-29 00:38:41.101498', '2017-06-29 00:38:41.101913');
INSERT INTO `oneapp_d_industrial` VALUES ('332', 'O', '居民服务和其他服务业', '82', '居民服务业', 'O821', '家庭服务', null, '2017-06-29 00:38:41.103608', '2017-06-29 00:38:41.104020');
INSERT INTO `oneapp_d_industrial` VALUES ('333', 'O', '居民服务和其他服务业', '82', '居民服务业', 'O822', '托儿所', null, '2017-06-29 00:38:41.107437', '2017-06-29 00:38:41.107833');
INSERT INTO `oneapp_d_industrial` VALUES ('334', 'O', '居民服务和其他服务业', '82', '居民服务业', 'O823', '洗染服务', null, '2017-06-29 00:38:41.110199', '2017-06-29 00:38:41.110593');
INSERT INTO `oneapp_d_industrial` VALUES ('335', 'O', '居民服务和其他服务业', '82', '居民服务业', 'O824', '理发及美容保健服务', null, '2017-06-29 00:38:41.112391', '2017-06-29 00:38:41.112804');
INSERT INTO `oneapp_d_industrial` VALUES ('336', 'O', '居民服务和其他服务业', '82', '居民服务业', 'O825', '洗浴服务', null, '2017-06-29 00:38:41.116348', '2017-06-29 00:38:41.117189');
INSERT INTO `oneapp_d_industrial` VALUES ('337', 'O', '居民服务和其他服务业', '82', '居民服务业', 'O826', '婚姻服务', null, '2017-06-29 00:38:41.119211', '2017-06-29 00:38:41.119583');
INSERT INTO `oneapp_d_industrial` VALUES ('338', 'O', '居民服务和其他服务业', '82', '居民服务业', 'O827', '殡葬服务', null, '2017-06-29 00:38:41.122932', '2017-06-29 00:38:41.123352');
INSERT INTO `oneapp_d_industrial` VALUES ('339', 'O', '居民服务和其他服务业', '82', '居民服务业', 'O828', '摄影扩印服务', null, '2017-06-29 00:38:41.125726', '2017-06-29 00:38:41.126157');
INSERT INTO `oneapp_d_industrial` VALUES ('340', 'O', '居民服务和其他服务业', '82', '居民服务业', 'O829', '其他居民服务', null, '2017-06-29 00:38:41.127996', '2017-06-29 00:38:41.128347');
INSERT INTO `oneapp_d_industrial` VALUES ('341', 'O', '居民服务和其他服务业', '83', '其他服务业', 'O831', '修理与维护', '包括汽车、摩托车维护与保养，办公设备维修，家用电器修理，其他日用品修理。', '2017-06-29 00:38:41.131892', '2017-06-29 00:38:41.132456');
INSERT INTO `oneapp_d_industrial` VALUES ('342', 'O', '居民服务和其他服务业', '83', '其他服务业', 'O832', '清洁服务', '包括建筑物清洁服务，其他清洁服务。', '2017-06-29 00:38:41.137152', '2017-06-29 00:38:41.137748');
INSERT INTO `oneapp_d_industrial` VALUES ('343', 'O', '居民服务和其他服务业', '83', '其他服务业', 'O839', '其他未列明的服务', null, '2017-06-29 00:38:41.139882', '2017-06-29 00:38:41.140370');
INSERT INTO `oneapp_d_industrial` VALUES ('344', 'P', '教育', '84', '教育', 'P841', '学前教育', null, '2017-06-29 00:38:41.143623', '2017-06-29 00:38:41.144730');
INSERT INTO `oneapp_d_industrial` VALUES ('345', 'P', '教育', '84', '教育', 'P842', '初等教育', null, '2017-06-29 00:38:41.148285', '2017-06-29 00:38:41.148671');
INSERT INTO `oneapp_d_industrial` VALUES ('346', 'P', '教育', '84', '教育', 'P843', '中等教育', '包括初中教育，高中教育，中等专业教育，职业中学教育，技工学校教育，其他中等教育。', '2017-06-29 00:38:41.150856', '2017-06-29 00:38:41.152185');
INSERT INTO `oneapp_d_industrial` VALUES ('347', 'P', '教育', '84', '教育', 'P844', '高等教育', '包括普通高等教育，成人高等教育。', '2017-06-29 00:38:41.155582', '2017-06-29 00:38:41.155960');
INSERT INTO `oneapp_d_industrial` VALUES ('348', 'P', '教育', '84', '教育', 'P849', '其他教育', '包括职业技能培训，特殊教育，其他未列明的教育。', '2017-06-29 00:38:41.158221', '2017-06-29 00:38:41.158669');
INSERT INTO `oneapp_d_industrial` VALUES ('349', 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q851', '医院', '包括综合医院，中医医院，中西医结合医院，民族医院，专科医院，疗养院。', '2017-06-29 00:38:41.161061', '2017-06-29 00:38:41.162470');
INSERT INTO `oneapp_d_industrial` VALUES ('350', 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q852', '卫生院及社区医疗活动', null, '2017-06-29 00:38:41.166662', '2017-06-29 00:38:41.167038');
INSERT INTO `oneapp_d_industrial` VALUES ('351', 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q853', '门诊部医疗活动', null, '2017-06-29 00:38:41.168865', '2017-06-29 00:38:41.169356');
INSERT INTO `oneapp_d_industrial` VALUES ('352', 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q854', '计划生育技术服务活动', null, '2017-06-29 00:38:41.172026', '2017-06-29 00:38:41.172388');
INSERT INTO `oneapp_d_industrial` VALUES ('353', 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q855', '妇幼保健活动', null, '2017-06-29 00:38:41.176091', '2017-06-29 00:38:41.176458');
INSERT INTO `oneapp_d_industrial` VALUES ('354', 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q856', '专科疾病防治活动', null, '2017-06-29 00:38:41.178563', '2017-06-29 00:38:41.179586');
INSERT INTO `oneapp_d_industrial` VALUES ('355', 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q857', '疾病预防控制及防疫活动', null, '2017-06-29 00:38:41.183860', '2017-06-29 00:38:41.184273');
INSERT INTO `oneapp_d_industrial` VALUES ('356', 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q859', '其他卫生活动', null, '2017-06-29 00:38:41.186156', '2017-06-29 00:38:41.186544');
INSERT INTO `oneapp_d_industrial` VALUES ('357', 'Q', '卫生、社会保障和社会福利业', '86', '社会保障业', 'Q860', '社会保障业', null, '2017-06-29 00:38:41.189169', '2017-06-29 00:38:41.189582');
INSERT INTO `oneapp_d_industrial` VALUES ('358', 'Q', '卫生、社会保障和社会福利业', '87', '社会福利业', 'Q871', '提供住宿的社会福利', '包括干部休养所，收养收容服务。', '2017-06-29 00:38:41.193169', '2017-06-29 00:38:41.193634');
INSERT INTO `oneapp_d_industrial` VALUES ('359', 'Q', '卫生、社会保障和社会福利业', '87', '社会福利业', 'Q872', '不提供住宿的社会福利', null, '2017-06-29 00:38:41.195920', '2017-06-29 00:38:41.196498');
INSERT INTO `oneapp_d_industrial` VALUES ('360', 'R', '文化、体育和娱乐业', '88', '新闻出版业', 'R881', '新闻业', null, '2017-06-29 00:38:41.198466', '2017-06-29 00:38:41.198820');
INSERT INTO `oneapp_d_industrial` VALUES ('361', 'R', '文化、体育和娱乐业', '88', '新闻出版业', 'R882', '出版业', '包括图书出版，报纸出版，期刊出版，音像制品出版，电子出版物出版，其他出版。', '2017-06-29 00:38:41.200628', '2017-06-29 00:38:41.201501');
INSERT INTO `oneapp_d_industrial` VALUES ('362', 'R', '文化、体育和娱乐业', '89', '广播、电视、电影和音像业', 'R891', '广播', null, '2017-06-29 00:38:41.206598', '2017-06-29 00:38:41.207007');
INSERT INTO `oneapp_d_industrial` VALUES ('363', 'R', '文化、体育和娱乐业', '89', '广播、电视、电影和音像业', 'R892', '电视', null, '2017-06-29 00:38:41.209386', '2017-06-29 00:38:41.210289');
INSERT INTO `oneapp_d_industrial` VALUES ('364', 'R', '文化、体育和娱乐业', '89', '广播、电视、电影和音像业', 'R893', '电影', '包括电影制作与发行，电影放映。', '2017-06-29 00:38:41.213083', '2017-06-29 00:38:41.213558');
INSERT INTO `oneapp_d_industrial` VALUES ('365', 'R', '文化、体育和娱乐业', '89', '广播、电视、电影和音像业', 'R894', '音像制作', null, '2017-06-29 00:38:41.216032', '2017-06-29 00:38:41.216430');
INSERT INTO `oneapp_d_industrial` VALUES ('366', 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R901', '文艺创作与表演', null, '2017-06-29 00:38:41.218373', '2017-06-29 00:38:41.219144');
INSERT INTO `oneapp_d_industrial` VALUES ('367', 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R902', '艺术表演场馆', null, '2017-06-29 00:38:41.224456', '2017-06-29 00:38:41.224846');
INSERT INTO `oneapp_d_industrial` VALUES ('368', 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R903', '图书馆与档案馆', '包括图书馆，档案馆。', '2017-06-29 00:38:41.226740', '2017-06-29 00:38:41.227081');
INSERT INTO `oneapp_d_industrial` VALUES ('369', 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R904', '文物及文化保护', null, '2017-06-29 00:38:41.228993', '2017-06-29 00:38:41.229383');
INSERT INTO `oneapp_d_industrial` VALUES ('370', 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R905', '博物馆', null, '2017-06-29 00:38:41.233501', '2017-06-29 00:38:41.233999');
INSERT INTO `oneapp_d_industrial` VALUES ('371', 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R906', '烈士陵园、纪念馆', null, '2017-06-29 00:38:41.235870', '2017-06-29 00:38:41.236278');
INSERT INTO `oneapp_d_industrial` VALUES ('372', 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R907', '群众文化活动', null, '2017-06-29 00:38:41.241356', '2017-06-29 00:38:41.241863');
INSERT INTO `oneapp_d_industrial` VALUES ('373', 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R908', '文化艺术经纪代理', null, '2017-06-29 00:38:41.244337', '2017-06-29 00:38:41.244719');
INSERT INTO `oneapp_d_industrial` VALUES ('374', 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R909', '其他文化艺术', null, '2017-06-29 00:38:41.246598', '2017-06-29 00:38:41.246969');
INSERT INTO `oneapp_d_industrial` VALUES ('375', 'R', '文化、体育和娱乐业', '91', '体育', 'R911', '体育组织', null, '2017-06-29 00:38:41.249881', '2017-06-29 00:38:41.251334');
INSERT INTO `oneapp_d_industrial` VALUES ('376', 'R', '文化、体育和娱乐业', '91', '体育', 'R912', '体育场馆', null, '2017-06-29 00:38:41.253952', '2017-06-29 00:38:41.254357');
INSERT INTO `oneapp_d_industrial` VALUES ('377', 'R', '文化、体育和娱乐业', '91', '体育', 'R919', '其他体育', null, '2017-06-29 00:38:41.256298', '2017-06-29 00:38:41.256663');
INSERT INTO `oneapp_d_industrial` VALUES ('378', 'R', '文化、体育和娱乐业', '92', '娱乐业', 'R921', '室内娱乐活动', null, '2017-06-29 00:38:41.259971', '2017-06-29 00:38:41.260419');
INSERT INTO `oneapp_d_industrial` VALUES ('379', 'R', '文化、体育和娱乐业', '92', '娱乐业', 'R922', '游乐园', null, '2017-06-29 00:38:41.264774', '2017-06-29 00:38:41.265315');
INSERT INTO `oneapp_d_industrial` VALUES ('380', 'R', '文化、体育和娱乐业', '92', '娱乐业', 'R923', '休闲健身娱乐活动', null, '2017-06-29 00:38:41.268247', '2017-06-29 00:38:41.269528');
INSERT INTO `oneapp_d_industrial` VALUES ('381', 'R', '文化、体育和娱乐业', '92', '娱乐业', 'R929', '其他娱乐活动', null, '2017-06-29 00:38:41.273879', '2017-06-29 00:38:41.274355');
INSERT INTO `oneapp_d_industrial` VALUES ('382', 'S', '公共管理和社会组织', '93', '中国共产党机关', 'S930', '中国共产党机关', null, '2017-06-29 00:38:41.276340', '2017-06-29 00:38:41.276842');
INSERT INTO `oneapp_d_industrial` VALUES ('383', 'S', '公共管理和社会组织', '94', '国家机构', 'S941', '国家权力机构', null, '2017-06-29 00:38:41.279737', '2017-06-29 00:38:41.281611');
INSERT INTO `oneapp_d_industrial` VALUES ('384', 'S', '公共管理和社会组织', '94', '国家机构', 'S942', '国家行政机构', '包括综合事务管理机构，对外事务管理机构，公共安全管理机构，社会事务管理机构，经济事务管理机构，政府事务管理机构，行政监督检查机构。', '2017-06-29 00:38:41.284317', '2017-06-29 00:38:41.284686');
INSERT INTO `oneapp_d_industrial` VALUES ('385', 'S', '公共管理和社会组织', '94', '国家机构', 'S943', '人民法院和人民检察院', '包括人民法院，人民检察院。', '2017-06-29 00:38:41.286530', '2017-06-29 00:38:41.286937');
INSERT INTO `oneapp_d_industrial` VALUES ('386', 'S', '公共管理和社会组织', '94', '国家机构', 'S949', '其他国家机构', null, '2017-06-29 00:38:41.289429', '2017-06-29 00:38:41.290515');
INSERT INTO `oneapp_d_industrial` VALUES ('387', 'S', '公共管理和社会组织', '95', '人民政协和民主党派', 'S951', '人民政协', null, '2017-06-29 00:38:41.295281', '2017-06-29 00:38:41.295658');
INSERT INTO `oneapp_d_industrial` VALUES ('388', 'S', '公共管理和社会组织', '95', '人民政协和民主党派', 'S952', '民主党派', null, '2017-06-29 00:38:41.297627', '2017-06-29 00:38:41.298490');
INSERT INTO `oneapp_d_industrial` VALUES ('389', 'S', '公共管理和社会组织', '96', '群众团体、社会团体和宗教组织', 'S961', '群众团体', '包括工会，妇联，共青团，其他群众团体。', '2017-06-29 00:38:41.301433', '2017-06-29 00:38:41.301961');
INSERT INTO `oneapp_d_industrial` VALUES ('390', 'S', '公共管理和社会组织', '96', '群众团体、社会团体和宗教组织', 'S962', '社会团体', '包括专业性团体，行业性团体，其他社会团体。', '2017-06-29 00:38:41.305646', '2017-06-29 00:38:41.306054');
INSERT INTO `oneapp_d_industrial` VALUES ('391', 'S', '公共管理和社会组织', '96', '群众团体、社会团体和宗教组织', 'S963', '宗教组织', null, '2017-06-29 00:38:41.308036', '2017-06-29 00:38:41.308444');
INSERT INTO `oneapp_d_industrial` VALUES ('392', 'S', '公共管理和社会组织', '97', '基层群众自治组织', 'S971', '社区自治组织', null, '2017-06-29 00:38:41.313027', '2017-06-29 00:38:41.313435');
INSERT INTO `oneapp_d_industrial` VALUES ('393', 'S', '公共管理和社会组织', '97', '基层群众自治组织', 'S972', '村民自治组织', null, '2017-06-29 00:38:41.315268', '2017-06-29 00:38:41.315625');
INSERT INTO `oneapp_d_industrial` VALUES ('394', 'T', '国际组织', '98', '国际组织', 'T980', '国际组织', null, '2017-06-29 00:38:41.317587', '2017-06-29 00:38:41.317990');
INSERT INTO `oneapp_d_industrial` VALUES ('395', 'N', '水利、环境和公共设施管理业', '81', '公共设施管理业', 'N811', '市政公共设施管理', null, '2017-06-29 00:38:41.322712', '2017-06-29 00:38:41.324272');
INSERT INTO `oneapp_d_industrial` VALUES ('396', 'N', '水利、环境和公共设施管理业', '81', '公共设施管理业', 'N812', '城市绿化管理', null, '2017-06-29 00:38:41.326342', '2017-06-29 00:38:41.326711');
INSERT INTO `oneapp_d_industrial` VALUES ('401', null, null, null, null, 'A', '农、林、牧、渔业', null, '2017-06-29 00:38:41.330143', '2017-06-29 00:38:41.330825');
INSERT INTO `oneapp_d_industrial` VALUES ('402', null, null, null, null, 'C', '制造业', null, '2017-06-29 00:38:41.333223', '2017-06-29 00:38:41.333597');
INSERT INTO `oneapp_d_industrial` VALUES ('403', null, null, null, null, 'B', '采矿业', null, '2017-06-29 00:38:41.335473', '2017-06-29 00:38:41.335856');
INSERT INTO `oneapp_d_industrial` VALUES ('404', null, null, null, null, 'D', '电力、燃气及水的生产和供应业', null, '2017-06-29 00:38:41.340001', '2017-06-29 00:38:41.341571');
INSERT INTO `oneapp_d_industrial` VALUES ('405', null, null, null, null, 'E', '建筑业', null, '2017-06-29 00:38:41.344228', '2017-06-29 00:38:41.344614');
INSERT INTO `oneapp_d_industrial` VALUES ('406', null, null, null, null, 'F', '交通运输、仓储和邮政业', null, '2017-06-29 00:38:41.346507', '2017-06-29 00:38:41.346869');
INSERT INTO `oneapp_d_industrial` VALUES ('407', null, null, null, null, 'G', '信息传输、计算机服务和软件业', null, '2017-06-29 00:38:41.349052', '2017-06-29 00:38:41.349440');
INSERT INTO `oneapp_d_industrial` VALUES ('408', null, null, null, null, 'H', '批发和零售业', null, '2017-06-29 00:38:41.353624', '2017-06-29 00:38:41.354079');
INSERT INTO `oneapp_d_industrial` VALUES ('409', null, null, null, null, 'I', '住宿和餐饮业', null, '2017-06-29 00:38:41.356016', '2017-06-29 00:38:41.357126');
INSERT INTO `oneapp_d_industrial` VALUES ('410', null, null, null, null, 'J', '金融业', null, '2017-06-29 00:38:41.361195', '2017-06-29 00:38:41.361660');
INSERT INTO `oneapp_d_industrial` VALUES ('411', null, null, null, null, 'K', '房地产业', null, '2017-06-29 00:38:41.363546', '2017-06-29 00:38:41.363931');
INSERT INTO `oneapp_d_industrial` VALUES ('412', null, null, null, null, 'L', '租赁和商务服务业', null, '2017-06-29 00:38:41.365779', '2017-06-29 00:38:41.366171');
INSERT INTO `oneapp_d_industrial` VALUES ('413', null, null, null, null, 'M', '科学研究、技术服务和地质勘查业', null, '2017-06-29 00:38:41.368095', '2017-06-29 00:38:41.369052');
INSERT INTO `oneapp_d_industrial` VALUES ('414', null, null, null, null, 'N', '水利、环境和公共设施管理业', null, '2017-06-29 00:38:41.372918', '2017-06-29 00:38:41.373307');
INSERT INTO `oneapp_d_industrial` VALUES ('415', null, null, null, null, 'O', '居民服务和其他服务业', null, '2017-06-29 00:38:41.375105', '2017-06-29 00:38:41.375466');
INSERT INTO `oneapp_d_industrial` VALUES ('416', null, null, null, null, 'P', '教育', null, '2017-06-29 00:38:41.377801', '2017-06-29 00:38:41.378247');
INSERT INTO `oneapp_d_industrial` VALUES ('417', null, null, null, null, 'Q', '卫生、社会保障和社会福利业', null, '2017-06-29 00:38:41.380796', '2017-06-29 00:38:41.381241');
INSERT INTO `oneapp_d_industrial` VALUES ('418', null, null, null, null, 'R', '文化、体育和娱乐业', null, '2017-06-29 00:38:41.384736', '2017-06-29 00:38:41.385154');
INSERT INTO `oneapp_d_industrial` VALUES ('419', null, null, null, null, 'S', '公共管理和社会组织', null, '2017-06-29 00:38:41.386911', '2017-06-29 00:38:41.387272');
INSERT INTO `oneapp_d_industrial` VALUES ('420', null, null, null, null, 'T', '国际组织', null, '2017-06-29 00:38:41.390268', '2017-06-29 00:38:41.390693');
INSERT INTO `oneapp_d_industrial` VALUES ('501', null, null, 'A', '农、林、牧、渔业', 'A01', '农业', null, '2017-06-29 00:38:41.392446', '2017-06-29 00:38:41.392792');
INSERT INTO `oneapp_d_industrial` VALUES ('502', null, null, 'A', '农、林、牧、渔业', 'A02', '林业', null, '2017-06-29 00:38:41.394354', '2017-06-29 00:38:41.394722');
INSERT INTO `oneapp_d_industrial` VALUES ('503', null, null, 'A', '农、林、牧、渔业', 'A03', '畜牧业', null, '2017-06-29 00:38:41.396380', '2017-06-29 00:38:41.396742');
INSERT INTO `oneapp_d_industrial` VALUES ('504', null, null, 'A', '农、林、牧、渔业', 'A04', '渔业', null, '2017-06-29 00:38:41.398432', '2017-06-29 00:38:41.398793');
INSERT INTO `oneapp_d_industrial` VALUES ('505', null, null, 'A', '农、林、牧、渔业', 'A05', '农、林、牧、渔服务业', null, '2017-06-29 00:38:41.400549', '2017-06-29 00:38:41.400908');
INSERT INTO `oneapp_d_industrial` VALUES ('506', null, null, 'B', '采矿业', 'B06', '煤炭开采和洗选业', null, '2017-06-29 00:38:41.402501', '2017-06-29 00:38:41.402912');
INSERT INTO `oneapp_d_industrial` VALUES ('507', null, null, 'B', '采矿业', 'B07', '石油和天然气开采业', null, '2017-06-29 00:38:41.404691', '2017-06-29 00:38:41.405055');
INSERT INTO `oneapp_d_industrial` VALUES ('508', null, null, 'B', '采矿业', 'B08', '黑色金属矿采选业', null, '2017-06-29 00:38:41.406635', '2017-06-29 00:38:41.407024');
INSERT INTO `oneapp_d_industrial` VALUES ('509', null, null, 'B', '采矿业', 'B09', '有色金属矿采选业', null, '2017-06-29 00:38:41.408664', '2017-06-29 00:38:41.408963');
INSERT INTO `oneapp_d_industrial` VALUES ('510', null, null, 'B', '采矿业', 'B10', '非金属矿采选业', null, '2017-06-29 00:38:41.410802', '2017-06-29 00:38:41.411200');
INSERT INTO `oneapp_d_industrial` VALUES ('511', null, null, 'B', '采矿业', 'B11', '其他采矿业', null, '2017-06-29 00:38:41.412863', '2017-06-29 00:38:41.413196');
INSERT INTO `oneapp_d_industrial` VALUES ('512', null, null, 'C', '制造业', 'C13', '农副食品加工业', null, '2017-06-29 00:38:41.414697', '2017-06-29 00:38:41.414995');
INSERT INTO `oneapp_d_industrial` VALUES ('513', null, null, 'C', '制造业', 'C14', '食品制造业', null, '2017-06-29 00:38:41.416513', '2017-06-29 00:38:41.416844');
INSERT INTO `oneapp_d_industrial` VALUES ('514', null, null, 'C', '制造业', 'C15', '饮料制造业', null, '2017-06-29 00:38:41.418425', '2017-06-29 00:38:41.418753');
INSERT INTO `oneapp_d_industrial` VALUES ('515', null, null, 'C', '制造业', 'C16', '烟草制品业', null, '2017-06-29 00:38:41.420265', '2017-06-29 00:38:41.420624');
INSERT INTO `oneapp_d_industrial` VALUES ('516', null, null, 'C', '制造业', 'C17', '纺织业', null, '2017-06-29 00:38:41.422186', '2017-06-29 00:38:41.422508');
INSERT INTO `oneapp_d_industrial` VALUES ('517', null, null, 'C', '制造业', 'C18', '纺织服装、鞋、帽制造业', null, '2017-06-29 00:38:41.424126', '2017-06-29 00:38:41.424444');
INSERT INTO `oneapp_d_industrial` VALUES ('518', null, null, 'C', '制造业', 'C19', '皮革、毛皮、羽毛(绒)及其制品业', null, '2017-06-29 00:38:41.425964', '2017-06-29 00:38:41.426262');
INSERT INTO `oneapp_d_industrial` VALUES ('519', null, null, 'C', '制造业', 'C20', '木材加工及木、竹、藤、棕、草制品业', null, '2017-06-29 00:38:41.427848', '2017-06-29 00:38:41.428205');
INSERT INTO `oneapp_d_industrial` VALUES ('520', null, null, 'C', '制造业', 'C21', '家具制造业', null, '2017-06-29 00:38:41.429866', '2017-06-29 00:38:41.430210');
INSERT INTO `oneapp_d_industrial` VALUES ('521', null, null, 'C', '制造业', 'C22', '造纸及纸制品业', null, '2017-06-29 00:38:41.431804', '2017-06-29 00:38:41.432152');
INSERT INTO `oneapp_d_industrial` VALUES ('522', null, null, 'C', '制造业', 'C23', '印刷业和记录媒介的复制', null, '2017-06-29 00:38:41.433896', '2017-06-29 00:38:41.434190');
INSERT INTO `oneapp_d_industrial` VALUES ('523', null, null, 'C', '制造业', 'C24', '文教体育用品制造业', null, '2017-06-29 00:38:41.435687', '2017-06-29 00:38:41.436006');
INSERT INTO `oneapp_d_industrial` VALUES ('524', null, null, 'C', '制造业', 'C25', '石油加工、炼焦及核燃料加工业', null, '2017-06-29 00:38:41.437512', '2017-06-29 00:38:41.437850');
INSERT INTO `oneapp_d_industrial` VALUES ('525', null, null, 'C', '制造业', 'C26', '化学原料及化学制品制造业', null, '2017-06-29 00:38:41.439389', '2017-06-29 00:38:41.439731');
INSERT INTO `oneapp_d_industrial` VALUES ('526', null, null, 'C', '制造业', 'C27', '医药制造业', null, '2017-06-29 00:38:41.441355', '2017-06-29 00:38:41.441693');
INSERT INTO `oneapp_d_industrial` VALUES ('527', null, null, 'C', '制造业', 'C28', '化学纤维制造业', null, '2017-06-29 00:38:41.443450', '2017-06-29 00:38:41.443784');
INSERT INTO `oneapp_d_industrial` VALUES ('528', null, null, 'C', '制造业', 'C29', '橡胶制品业', null, '2017-06-29 00:38:41.445341', '2017-06-29 00:38:41.445692');
INSERT INTO `oneapp_d_industrial` VALUES ('529', null, null, 'C', '制造业', 'C30', '塑料制品业', null, '2017-06-29 00:38:41.447538', '2017-06-29 00:38:41.447912');
INSERT INTO `oneapp_d_industrial` VALUES ('530', null, null, 'C', '制造业', 'C31', '非金属矿物制品业', null, '2017-06-29 00:38:41.449549', '2017-06-29 00:38:41.449883');
INSERT INTO `oneapp_d_industrial` VALUES ('531', null, null, 'C', '制造业', 'C32', '黑色金属冶炼及压延加工业', null, '2017-06-29 00:38:41.451509', '2017-06-29 00:38:41.451872');
INSERT INTO `oneapp_d_industrial` VALUES ('532', null, null, 'C', '制造业', 'C33', '有色金属冶炼及压延加工业', null, '2017-06-29 00:38:41.453563', '2017-06-29 00:38:41.453896');
INSERT INTO `oneapp_d_industrial` VALUES ('533', null, null, 'C', '制造业', 'C34', '金属制品业', null, '2017-06-29 00:38:41.455500', '2017-06-29 00:38:41.455849');
INSERT INTO `oneapp_d_industrial` VALUES ('534', null, null, 'C', '制造业', 'C35', '通用设备制造业', null, '2017-06-29 00:38:41.457635', '2017-06-29 00:38:41.458066');
INSERT INTO `oneapp_d_industrial` VALUES ('535', null, null, 'C', '制造业', 'C36', '专用设备制造业', null, '2017-06-29 00:38:41.461417', '2017-06-29 00:38:41.461792');
INSERT INTO `oneapp_d_industrial` VALUES ('536', null, null, 'C', '制造业', 'C37', '交通运输设备制造业', null, '2017-06-29 00:38:41.463519', '2017-06-29 00:38:41.463854');
INSERT INTO `oneapp_d_industrial` VALUES ('537', null, null, 'C', '制造业', 'C39', '电气机械及器材制造业', null, '2017-06-29 00:38:41.465440', '2017-06-29 00:38:41.465795');
INSERT INTO `oneapp_d_industrial` VALUES ('538', null, null, 'C', '制造业', 'C40', '通信设备、计算机及其他电子设备制造业', null, '2017-06-29 00:38:41.467337', '2017-06-29 00:38:41.467667');
INSERT INTO `oneapp_d_industrial` VALUES ('539', null, null, 'C', '制造业', 'C41', '仪器仪表及文化、办公用机械制造业', null, '2017-06-29 00:38:41.469194', '2017-06-29 00:38:41.469520');
INSERT INTO `oneapp_d_industrial` VALUES ('540', null, null, 'C', '制造业', 'C42', '工艺品及其他制造业', null, '2017-06-29 00:38:41.471099', '2017-06-29 00:38:41.471713');
INSERT INTO `oneapp_d_industrial` VALUES ('541', null, null, 'C', '制造业', 'C43', '废弃资源和废旧材料回收加工业', null, '2017-06-29 00:38:41.474702', '2017-06-29 00:38:41.475165');
INSERT INTO `oneapp_d_industrial` VALUES ('542', null, null, 'D', '电力、燃气及水的生产和供应业', 'D44', '电力、热力的生产和供应业', null, '2017-06-29 00:38:41.476859', '2017-06-29 00:38:41.477257');
INSERT INTO `oneapp_d_industrial` VALUES ('543', null, null, 'D', '电力、燃气及水的生产和供应业', 'D45', '燃气生产和供应业', null, '2017-06-29 00:38:41.479030', '2017-06-29 00:38:41.479459');
INSERT INTO `oneapp_d_industrial` VALUES ('544', null, null, 'D', '电力、燃气及水的生产和供应业', 'D46', '水的生产和供应业', null, '2017-06-29 00:38:41.481215', '2017-06-29 00:38:41.481613');
INSERT INTO `oneapp_d_industrial` VALUES ('545', null, null, 'E', '建筑业', 'E47', '房屋和土木工程建筑业', null, '2017-06-29 00:38:41.483482', '2017-06-29 00:38:41.483866');
INSERT INTO `oneapp_d_industrial` VALUES ('546', null, null, 'E', '建筑业', 'E48', '建筑安装业', null, '2017-06-29 00:38:41.485502', '2017-06-29 00:38:41.485837');
INSERT INTO `oneapp_d_industrial` VALUES ('547', null, null, 'E', '建筑业', 'E49', '建筑装饰业', null, '2017-06-29 00:38:41.487468', '2017-06-29 00:38:41.487811');
INSERT INTO `oneapp_d_industrial` VALUES ('548', null, null, 'E', '建筑业', 'E50', '其他建筑业', null, '2017-06-29 00:38:41.489343', '2017-06-29 00:38:41.489721');
INSERT INTO `oneapp_d_industrial` VALUES ('549', null, null, 'F', '交通运输、仓储和邮政业', 'F51', '铁路运输业', null, '2017-06-29 00:38:41.491380', '2017-06-29 00:38:41.491733');
INSERT INTO `oneapp_d_industrial` VALUES ('550', null, null, 'F', '交通运输、仓储和邮政业', 'F52', '道路运输业', null, '2017-06-29 00:38:41.493338', '2017-06-29 00:38:41.493635');
INSERT INTO `oneapp_d_industrial` VALUES ('551', null, null, 'F', '交通运输、仓储和邮政业', 'F53', '城市公共交通业', null, '2017-06-29 00:38:41.495171', '2017-06-29 00:38:41.495507');
INSERT INTO `oneapp_d_industrial` VALUES ('552', null, null, 'F', '交通运输、仓储和邮政业', 'F54', '水上运输业', null, '2017-06-29 00:38:41.497140', '2017-06-29 00:38:41.497569');
INSERT INTO `oneapp_d_industrial` VALUES ('553', null, null, 'F', '交通运输、仓储和邮政业', 'F55', '航空运输业', null, '2017-06-29 00:38:41.499398', '2017-06-29 00:38:41.499737');
INSERT INTO `oneapp_d_industrial` VALUES ('554', null, null, 'F', '交通运输、仓储和邮政业', 'F56', '管道运输业', null, '2017-06-29 00:38:41.501239', '2017-06-29 00:38:41.501572');
INSERT INTO `oneapp_d_industrial` VALUES ('555', null, null, 'F', '交通运输、仓储和邮政业', 'F57', '装卸搬运和其他运输服务业', null, '2017-06-29 00:38:41.503279', '2017-06-29 00:38:41.503635');
INSERT INTO `oneapp_d_industrial` VALUES ('556', null, null, 'F', '交通运输、仓储和邮政业', 'F58', '仓储业', null, '2017-06-29 00:38:41.507396', '2017-06-29 00:38:41.507864');
INSERT INTO `oneapp_d_industrial` VALUES ('557', null, null, 'F', '交通运输、仓储和邮政业', 'F59', '邮政业', null, '2017-06-29 00:38:41.511055', '2017-06-29 00:38:41.511461');
INSERT INTO `oneapp_d_industrial` VALUES ('558', null, null, 'G', '信息传输、计算机服务和软件业', 'G60', '电信和其他信息传输服务业', null, '2017-06-29 00:38:41.513194', '2017-06-29 00:38:41.513534');
INSERT INTO `oneapp_d_industrial` VALUES ('559', null, null, 'G', '信息传输、计算机服务和软件业', 'G61', '计算机服务业', null, '2017-06-29 00:38:41.515092', '2017-06-29 00:38:41.515427');
INSERT INTO `oneapp_d_industrial` VALUES ('560', null, null, 'G', '信息传输、计算机服务和软件业', 'G62', '软件业', null, '2017-06-29 00:38:41.516953', '2017-06-29 00:38:41.517278');
INSERT INTO `oneapp_d_industrial` VALUES ('561', null, null, 'H', '批发和零售业', 'H63', '批发业', null, '2017-06-29 00:38:41.518832', '2017-06-29 00:38:41.519165');
INSERT INTO `oneapp_d_industrial` VALUES ('562', null, null, 'H', '批发和零售业', 'H65', '零售业', null, '2017-06-29 00:38:41.520793', '2017-06-29 00:38:41.521302');
INSERT INTO `oneapp_d_industrial` VALUES ('563', null, null, 'I', '住宿和餐饮业', 'I66', '住宿业', null, '2017-06-29 00:38:41.523755', '2017-06-29 00:38:41.524187');
INSERT INTO `oneapp_d_industrial` VALUES ('564', null, null, 'I', '住宿和餐饮业', 'I67', '餐饮业', null, '2017-06-29 00:38:41.525927', '2017-06-29 00:38:41.526268');
INSERT INTO `oneapp_d_industrial` VALUES ('565', null, null, 'J', '金融业', 'J68', '银行业', null, '2017-06-29 00:38:41.527925', '2017-06-29 00:38:41.528320');
INSERT INTO `oneapp_d_industrial` VALUES ('566', null, null, 'J', '金融业', 'J69', '证券业', null, '2017-06-29 00:38:41.530025', '2017-06-29 00:38:41.530367');
INSERT INTO `oneapp_d_industrial` VALUES ('567', null, null, 'J', '金融业', 'J70', '保险业', null, '2017-06-29 00:38:41.532106', '2017-06-29 00:38:41.532473');
INSERT INTO `oneapp_d_industrial` VALUES ('568', null, null, 'J', '金融业', 'J71', '其他金融活动', null, '2017-06-29 00:38:41.534107', '2017-06-29 00:38:41.534446');
INSERT INTO `oneapp_d_industrial` VALUES ('569', null, null, 'K', '房地产业', 'K72', '房地产业', null, '2017-06-29 00:38:41.536073', '2017-06-29 00:38:41.536446');
INSERT INTO `oneapp_d_industrial` VALUES ('570', null, null, 'L', '租赁和商务服务业', 'L73', '租赁业', null, '2017-06-29 00:38:41.538144', '2017-06-29 00:38:41.538551');
INSERT INTO `oneapp_d_industrial` VALUES ('571', null, null, 'L', '租赁和商务服务业', 'L74', '商务服务业', null, '2017-06-29 00:38:41.540251', '2017-06-29 00:38:41.540574');
INSERT INTO `oneapp_d_industrial` VALUES ('572', null, null, 'M', '科学研究、技术服务和地质勘查业', 'M75', '研究与试验发展', null, '2017-06-29 00:38:41.542106', '2017-06-29 00:38:41.542546');
INSERT INTO `oneapp_d_industrial` VALUES ('573', null, null, 'M', '科学研究、技术服务和地质勘查业', 'M76', '专业技术服务业', null, '2017-06-29 00:38:41.544313', '2017-06-29 00:38:41.544625');
INSERT INTO `oneapp_d_industrial` VALUES ('574', null, null, 'M', '科学研究、技术服务和地质勘查业', 'M77', '科技交流和推广服务业', null, '2017-06-29 00:38:41.546247', '2017-06-29 00:38:41.546661');
INSERT INTO `oneapp_d_industrial` VALUES ('575', null, null, 'M', '科学研究、技术服务和地质勘查业', 'M78', '地质勘查业', null, '2017-06-29 00:38:41.548676', '2017-06-29 00:38:41.549028');
INSERT INTO `oneapp_d_industrial` VALUES ('576', null, null, 'N', '水利、环境和公共设施管理业', 'N79', '水利管理业', null, '2017-06-29 00:38:41.550749', '2017-06-29 00:38:41.551118');
INSERT INTO `oneapp_d_industrial` VALUES ('577', null, null, 'N', '水利、环境和公共设施管理业', 'N80', '环境管理业', null, '2017-06-29 00:38:41.552794', '2017-06-29 00:38:41.553123');
INSERT INTO `oneapp_d_industrial` VALUES ('578', null, null, 'N', '水利、环境和公共设施管理业', 'N81', '公共设施管理业', null, '2017-06-29 00:38:41.554727', '2017-06-29 00:38:41.555102');
INSERT INTO `oneapp_d_industrial` VALUES ('579', null, null, 'O', '居民服务和其他服务业', 'O82', '居民服务业', null, '2017-06-29 00:38:41.556887', '2017-06-29 00:38:41.557245');
INSERT INTO `oneapp_d_industrial` VALUES ('580', null, null, 'O', '居民服务和其他服务业', 'O83', '其他服务业', null, '2017-06-29 00:38:41.559103', '2017-06-29 00:38:41.559449');
INSERT INTO `oneapp_d_industrial` VALUES ('581', null, null, 'P', '教育', 'P84', '教育', null, '2017-06-29 00:38:41.561216', '2017-06-29 00:38:41.561934');
INSERT INTO `oneapp_d_industrial` VALUES ('582', null, null, 'Q', '卫生、社会保障和社会福利业', 'Q85', '卫生', null, '2017-06-29 00:38:41.564484', '2017-06-29 00:38:41.564919');
INSERT INTO `oneapp_d_industrial` VALUES ('583', null, null, 'Q', '卫生、社会保障和社会福利业', 'Q86', '社会保障业', null, '2017-06-29 00:38:41.566685', '2017-06-29 00:38:41.567080');
INSERT INTO `oneapp_d_industrial` VALUES ('584', null, null, 'Q', '卫生、社会保障和社会福利业', 'Q87', '社会福利业', null, '2017-06-29 00:38:41.568853', '2017-06-29 00:38:41.569192');
INSERT INTO `oneapp_d_industrial` VALUES ('585', null, null, 'R', '文化、体育和娱乐业', 'R88', '新闻出版业', null, '2017-06-29 00:38:41.570765', '2017-06-29 00:38:41.571113');
INSERT INTO `oneapp_d_industrial` VALUES ('586', null, null, 'R', '文化、体育和娱乐业', 'R89', '广播、电视、电影和音像业', null, '2017-06-29 00:38:41.572827', '2017-06-29 00:38:41.573170');
INSERT INTO `oneapp_d_industrial` VALUES ('587', null, null, 'R', '文化、体育和娱乐业', 'R90', '文化艺术业', null, '2017-06-29 00:38:41.574805', '2017-06-29 00:38:41.575224');
INSERT INTO `oneapp_d_industrial` VALUES ('588', null, null, 'R', '文化、体育和娱乐业', 'R91', '体育', null, '2017-06-29 00:38:41.576945', '2017-06-29 00:38:41.577293');
INSERT INTO `oneapp_d_industrial` VALUES ('589', null, null, 'R', '文化、体育和娱乐业', 'R92', '娱乐业', null, '2017-06-29 00:38:41.579079', '2017-06-29 00:38:41.579430');
INSERT INTO `oneapp_d_industrial` VALUES ('590', null, null, 'S', '公共管理和社会组织', 'S93', '中国共产党机关', null, '2017-06-29 00:38:41.581092', '2017-06-29 00:38:41.581422');
INSERT INTO `oneapp_d_industrial` VALUES ('591', null, null, 'S', '公共管理和社会组织', 'S94', '国家机构', null, '2017-06-29 00:38:41.583168', '2017-06-29 00:38:41.583507');
INSERT INTO `oneapp_d_industrial` VALUES ('592', null, null, 'S', '公共管理和社会组织', 'S95', '人民政协和民主党派', null, '2017-06-29 00:38:41.585260', '2017-06-29 00:38:41.585625');
INSERT INTO `oneapp_d_industrial` VALUES ('593', null, null, 'S', '公共管理和社会组织', 'S96', '群众团体、社会团体和宗教组织', null, '2017-06-29 00:38:41.587580', '2017-06-29 00:38:41.587925');
INSERT INTO `oneapp_d_industrial` VALUES ('594', null, null, 'S', '公共管理和社会组织', 'S97', '基层群众自治组织', null, '2017-06-29 00:38:41.591702', '2017-06-29 00:38:41.592217');
INSERT INTO `oneapp_d_industrial` VALUES ('595', null, null, 'T', '国际组织', 'T98', '国际组织', null, '2017-06-29 00:38:41.594391', '2017-06-29 00:38:41.595059');

-- ----------------------------
-- Table structure for `oneapp_d_province`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_d_province`;
CREATE TABLE `oneapp_d_province` (
  `province_id` int(11) DEFAULT NULL,
  `n_province_id` int(11) NOT NULL,
  `province_name` varchar(20) NOT NULL,
  PRIMARY KEY (`n_province_id`),
  UNIQUE KEY `province_name` (`province_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oneapp_d_province
-- ----------------------------
INSERT INTO `oneapp_d_province` VALUES ('1', '110000', '北京市');
INSERT INTO `oneapp_d_province` VALUES ('2', '120000', '天津市');
INSERT INTO `oneapp_d_province` VALUES ('3', '130000', '河北省');
INSERT INTO `oneapp_d_province` VALUES ('4', '140000', '山西省');
INSERT INTO `oneapp_d_province` VALUES ('5', '150000', '内蒙古自治区');
INSERT INTO `oneapp_d_province` VALUES ('6', '210000', '辽宁省');
INSERT INTO `oneapp_d_province` VALUES ('7', '220000', '吉林省');
INSERT INTO `oneapp_d_province` VALUES ('8', '230000', '黑龙江省');
INSERT INTO `oneapp_d_province` VALUES ('9', '310000', '上海市');
INSERT INTO `oneapp_d_province` VALUES ('10', '320000', '江苏省');
INSERT INTO `oneapp_d_province` VALUES ('11', '330000', '浙江省');
INSERT INTO `oneapp_d_province` VALUES ('12', '340000', '安徽省');
INSERT INTO `oneapp_d_province` VALUES ('13', '350000', '福建省');
INSERT INTO `oneapp_d_province` VALUES ('14', '360000', '江西省');
INSERT INTO `oneapp_d_province` VALUES ('15', '370000', '山东省');
INSERT INTO `oneapp_d_province` VALUES ('16', '410000', '河南省');
INSERT INTO `oneapp_d_province` VALUES ('17', '420000', '湖北省');
INSERT INTO `oneapp_d_province` VALUES ('18', '430000', '湖南省');
INSERT INTO `oneapp_d_province` VALUES ('19', '440000', '广东省');
INSERT INTO `oneapp_d_province` VALUES ('20', '450000', '广西壮族自治区');
INSERT INTO `oneapp_d_province` VALUES ('21', '460000', '海南省');
INSERT INTO `oneapp_d_province` VALUES ('22', '500000', '重庆市');
INSERT INTO `oneapp_d_province` VALUES ('23', '510000', '四川省');
INSERT INTO `oneapp_d_province` VALUES ('24', '520000', '贵州省');
INSERT INTO `oneapp_d_province` VALUES ('25', '530000', '云南省');
INSERT INTO `oneapp_d_province` VALUES ('26', '540000', '西藏自治区');
INSERT INTO `oneapp_d_province` VALUES ('27', '610000', '陕西省');
INSERT INTO `oneapp_d_province` VALUES ('28', '620000', '甘肃省');
INSERT INTO `oneapp_d_province` VALUES ('29', '630000', '青海省');
INSERT INTO `oneapp_d_province` VALUES ('30', '640000', '宁夏回族自治区');
INSERT INTO `oneapp_d_province` VALUES ('31', '650000', '新疆维吾尔自治区');
INSERT INTO `oneapp_d_province` VALUES ('32', '710000', '台湾省');
INSERT INTO `oneapp_d_province` VALUES ('33', '810000', '香港特别行政区');
INSERT INTO `oneapp_d_province` VALUES ('34', '820000', '澳门特别行政区');

-- ----------------------------
-- Table structure for `oneapp_organization`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_organization`;
CREATE TABLE `oneapp_organization` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `org_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `org_found_time` date DEFAULT NULL,
  `org_province` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `org_city` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `user_admin_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `org_contact_info` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `org_member_num` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `user_admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`org_id`),
  KEY `oneapp_organization_city_id_bae1fff4_fk_oneapp_d_city_city_id` (`city_id`),
  KEY `oneapp_organization_province_id_dbae5a47_fk_oneapp_d_` (`province_id`),
  KEY `oneapp_organization_user_admin_id_3da956dd_fk_oneapp_us` (`user_admin_id`),
  CONSTRAINT `oneapp_organization_city_id_bae1fff4_fk_oneapp_d_city_city_id` FOREIGN KEY (`city_id`) REFERENCES `oneapp_d_city` (`city_id`),
  CONSTRAINT `oneapp_organization_province_id_dbae5a47_fk_oneapp_d_` FOREIGN KEY (`province_id`) REFERENCES `oneapp_d_province` (`n_province_id`),
  CONSTRAINT `oneapp_organization_user_admin_id_3da956dd_fk_oneapp_us` FOREIGN KEY (`user_admin_id`) REFERENCES `oneapp_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of oneapp_organization
-- ----------------------------

-- ----------------------------
-- Table structure for `oneapp_school`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_school`;
CREATE TABLE `oneapp_school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `school_name_cn` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of oneapp_school
-- ----------------------------

-- ----------------------------
-- Table structure for `oneapp_specialty`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_specialty`;
CREATE TABLE `oneapp_specialty` (
  `specialty_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `specialty_name_cn` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `specialty_name_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `specialty_desc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `is_old` tinyint(1) NOT NULL,
  `specialty_level` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `specialty_name_history` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `collage_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`specialty_id`),
  KEY `oneapp_specialty_collage_id_35fe06a6_fk_oneapp_co` (`collage_id`),
  CONSTRAINT `oneapp_specialty_collage_id_35fe06a6_fk_oneapp_co` FOREIGN KEY (`collage_id`) REFERENCES `oneapp_collage` (`collage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of oneapp_specialty
-- ----------------------------
INSERT INTO `oneapp_specialty` VALUES ('1', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '冶金工程（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('2', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '金属材料工程（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('3', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '无机非金属材料工程（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('4', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '高分子材料与工程（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('5', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '焊接技术与工程（焊接工艺及设备 ）（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('6', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '功能材料（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('7', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '材料成型及控制工程（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('8', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '材料科学与工程 （本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('9', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '冶炼（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('10', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '铸造工艺（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('11', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '冲锻工艺与模具设计（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('12', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '金属压力加工（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('13', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '高新技术材料（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('14', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '高新材料（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('15', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '模具设计与制造（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('16', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '金属材料与热处理（本科专业）', null, null, '0', '本科专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('17', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '材料物理与化学（硕士专业）', null, null, '0', '硕士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('18', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '材料学（硕士专业）', null, null, '0', '硕士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('19', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '材料加工工程（硕士专业）', null, null, '0', '硕士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('20', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '先进材料及制备技术（硕士专业）', null, null, '0', '硕士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('21', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '先进高分子材料（硕士专业）', null, null, '0', '硕士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('22', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '冶金物理化学（硕士专业）', null, null, '0', '硕士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('23', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '有色金属冶金（硕士专业）', null, null, '0', '硕士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('24', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '材料物理与化学（博士专业）', null, null, '0', '博士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('25', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '材料学（博士专业）', null, null, '0', '博士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('26', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '材料加工工程（博士专业）', null, null, '0', '博士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('27', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '先进材料及制备技术（博士专业）', null, null, '0', '博士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('28', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '先进高分子材料（博士专业）', null, null, '0', '博士专业', '', '1');
INSERT INTO `oneapp_specialty` VALUES ('29', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '包装工程（本科专业）', null, null, '0', '本科专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('30', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械设计制造及其自动化（本科专业）', null, null, '0', '本科专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('31', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '纺织工程（本科专业）', null, null, '0', '本科专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('32', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械制造工艺与设备（本科专业）', null, null, '0', '本科专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('33', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械设计及制造（石油矿场机械）（本科专业）', null, null, '0', '本科专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('34', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机电一体化（本科专业）', null, null, '0', '本科专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('35', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业工程（本科专业）', null, null, '0', '本科专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('36', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业设计（本科专业）', null, null, '0', '本科专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('37', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械制造（本科专业）', null, null, '0', '本科专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('38', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械设计及理论（硕士专业）', null, null, '0', '硕士专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('39', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械制造及自动化（硕士专业）', null, null, '0', '硕士专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('40', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '车辆工程（硕士专业）', null, null, '0', '硕士专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('41', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业工程（硕士专业）', null, null, '0', '硕士专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('42', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '测试计量技术与仪器（硕士专业）', null, null, '0', '硕士专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('43', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '仪器仪表工程领域（硕士专业）', null, null, '0', '硕士专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('44', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业工程领域（硕士专业）', null, null, '0', '硕士专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('45', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '纺织工程领域（硕士专业）', null, null, '0', '硕士专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('46', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械工程领域（硕士专业）', null, null, '0', '硕士专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('47', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械设计及理论（博士专业）', null, null, '0', '博士专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('48', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械制造及自动化（博士专业）', null, null, '0', '博士专业', '', '2');
INSERT INTO `oneapp_specialty` VALUES ('49', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '过程装备与控制工程（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('50', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '化学工程与工艺（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('51', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '环境工程（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('52', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '应用化学（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('53', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '安全工程（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('54', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '化工设备与机械（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('55', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '无机物工学（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('56', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '基本有机合成（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('57', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '精细化工（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('58', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '油气储运工程（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('59', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '采矿（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('60', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '供热与制冷（本科专业）', null, null, '0', '本科专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('61', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '过程装备与控制工程（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('62', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '化学工程与工艺（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('63', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '环境工程（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('64', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '应用化学（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('65', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '安全工程（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('66', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '化机（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('67', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '精细化工（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('68', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '油气储运工程（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('69', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '化工机械与设备（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('70', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业催化（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('71', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '生物化工（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('72', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '制冷及低温工程（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('73', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '动力工程（硕士专业）', null, null, '0', '硕士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('74', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '流体机械及工程（博士专业）', null, null, '0', '博士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('75', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工程热物理（博士专业）', null, null, '0', '博士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('76', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '化工过程机械（博士专业）', null, null, '0', '博士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('77', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '可再生能源与环境（博士专业）', null, null, '0', '博士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('78', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '制冷及低温工程（博士专业）', null, null, '0', '博士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('79', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '化工过程技术与系统工程（博士专业）', null, null, '0', '博士专业', '', '3');
INSERT INTO `oneapp_specialty` VALUES ('80', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '能源与动力工程（水机）（本科专业）', null, null, '0', '本科专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('81', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械电子工程（液压）（本科专业）', null, null, '0', '本科专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('82', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '水利水电工程（本科专业）', null, null, '0', '本科专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('83', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '测控技术与仪器（本科专业）', null, null, '0', '本科专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('84', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '新能源科学与工程（本科专业）', null, null, '0', '本科专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('85', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '流体机械及工程（硕士专业）', null, null, '0', '硕士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('86', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械电子工程（液压）（硕士专业）', null, null, '0', '硕士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('87', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '水利水电工程（硕士专业）', null, null, '0', '硕士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('88', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '流体力学（硕士专业）', null, null, '0', '硕士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('89', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工程热物理（硕士专业）', null, null, '0', '硕士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('90', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '热能工程（硕士专业）', null, null, '0', '硕士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('91', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '可再生能源与环境工程（硕士专业）', null, null, '0', '硕士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('92', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '动力机械及工程 （硕士专业）', null, null, '0', '硕士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('93', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '动力工程（水机 液压）（硕士专业）', null, null, '0', '硕士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('94', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '水利工程（硕士专业）', null, null, '0', '硕士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('95', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '流体机械及工程（博士专业）', null, null, '0', '博士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('96', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械电子工程（液压）（博士专业）', null, null, '0', '博士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('97', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工程热物理（博士专业）', null, null, '0', '博士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('98', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '热能工程 （博士专业）', null, null, '0', '博士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('99', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '动力机械及工程 （博士专业）', null, null, '0', '博士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('100', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '可再生能源与环境工程（博士专业）', null, null, '0', '博士专业', '', '4');
INSERT INTO `oneapp_specialty` VALUES ('101', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电子信息科学与技术（本科专业）', null, null, '0', '本科专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('102', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电气工程及其自动化（本科专业）', null, null, '0', '本科专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('103', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '自动化（本科专业）', null, null, '0', '本科专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('104', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电气技术（本科专业）', null, null, '0', '本科专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('105', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业电气自动化（本科专业）', null, null, '0', '本科专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('106', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业电气及其自动化（本科专业）', null, null, '0', '本科专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('107', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电机电器控制（本科专业）', null, null, '0', '本科专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('108', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '动力工程及自动化（本科专业）', null, null, '0', '本科专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('109', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业自动化（本科专业）', null, null, '0', '本科专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('110', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '控制工程（本科专业）', null, null, '0', '本科专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('111', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '控制理论与控制工程（硕士专业）', null, null, '0', '硕士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('112', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电工理论与新技术（硕士专业）', null, null, '0', '硕士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('113', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电力电子与电力传动（硕士专业）', null, null, '0', '硕士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('114', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电力系统及其自动化（硕士专业）', null, null, '0', '硕士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('115', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电路与系统（硕士专业）', null, null, '0', '硕士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('116', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电气工程（硕士专业）', null, null, '0', '硕士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('117', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '检测技术与自动化装置（硕士专业）', null, null, '0', '硕士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('118', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '控制工程（硕士专业）', null, null, '0', '硕士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('119', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '模式识别与智能系统（硕士专业）', null, null, '0', '硕士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('120', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '系统工程（硕士专业）', null, null, '0', '硕士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('121', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '系统分析与集成（硕士专业）', null, null, '0', '硕士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('122', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '控制理论与控制工程（博士专业）', null, null, '0', '博士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('123', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '可再生能源发电与智能电网（博士专业）', null, null, '0', '博士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('124', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '模式识别与智能系统（博士专业）', null, null, '0', '博士专业', '', '5');
INSERT INTO `oneapp_specialty` VALUES ('125', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '通信工程（本科专业）', null, null, '0', '本科专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('126', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '计算机科学与技术（本科专业）', null, null, '0', '本科专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('127', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '软件工程（本科专业）', null, null, '0', '本科专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('128', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '物联网工程（本科专业）', null, null, '0', '本科专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('129', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '计算机应用（本科专业）', null, null, '0', '本科专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('130', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '计算机通信（本科专业）', null, null, '0', '本科专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('131', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '网络技术与信息处理（本科专业）', null, null, '0', '本科专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('132', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电子计算机应用（本科专业）', null, null, '0', '本科专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('133', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '通信与信息系统（硕士专业）', null, null, '0', '硕士专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('134', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '信号与信息处理（硕士专业）', null, null, '0', '硕士专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('135', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '计算机系统结构（硕士专业）', null, null, '0', '硕士专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('136', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '计算机应用技术（硕士专业）', null, null, '0', '硕士专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('137', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '计算机软件与理论（硕士专业）', null, null, '0', '硕士专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('138', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '物联网工程（硕士专业）', null, null, '0', '硕士专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('139', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '计算机技术（硕士专业）', null, null, '0', '硕士专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('140', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电子与通信工程（硕士专业）', null, null, '0', '硕士专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('141', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '软件工程（硕士专业）', null, null, '0', '硕士专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('142', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '制造业信息化系统（博士专业）', null, null, '0', '博士专业', '', '6');
INSERT INTO `oneapp_specialty` VALUES ('143', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业与民用建筑工程（专科专业）', null, null, '0', '专科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('144', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '建筑经济与企业管理（专科专业）', null, null, '0', '专科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('145', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '土木工程（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('146', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '建筑环境与设备工程（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('147', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '建筑环境与能源应用工程（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('148', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '给排水科学与工程（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('149', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '测绘工程（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('150', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工程管理（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('151', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '道路桥梁与渡河工程（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('152', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工程造价（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('153', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '公路道路与桥梁（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('154', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '给水与排水（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('155', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业管理（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('156', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '管理工程（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('157', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '建筑工程（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('158', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '供热与制冷（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('159', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '供热通风与空调（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('160', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '交通土建（本科专业）', null, null, '0', '本科专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('161', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '岩土工程（硕士专业）', null, null, '0', '硕士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('162', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '结构工程（硕士专业）', null, null, '0', '硕士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('163', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '市政工程（硕士专业）', null, null, '0', '硕士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('164', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '供热、供燃气、通风及空调工程（硕士专业）', null, null, '0', '硕士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('165', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '防灾减灾工程及防护工程（硕士专业）', null, null, '0', '硕士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('166', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '桥梁与隧道工程（硕士专业）', null, null, '0', '硕士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('167', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '土木工程材料（硕士专业）', null, null, '0', '硕士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('168', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '土木工程建造与管理（硕士专业）', null, null, '0', '硕士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('169', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '土木工程监测与评估（硕士专业）', null, null, '0', '硕士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('170', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '建筑与土木工程（硕士专业）', null, null, '0', '硕士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('171', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '岩土工程（博士专业）', null, null, '0', '博士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('172', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '结构工程（博士专业）', null, null, '0', '博士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('173', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '防灾减灾工程及防护工程（博士专业）', null, null, '0', '博士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('174', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '桥梁与隧道工程（博士专业）', null, null, '0', '博士专业', '', '7');
INSERT INTO `oneapp_specialty` VALUES ('175', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '建筑学（本科专业）', null, null, '0', '本科专业', '', '8');
INSERT INTO `oneapp_specialty` VALUES ('176', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '城市规划（本科专业）', null, null, '0', '本科专业', '', '8');
INSERT INTO `oneapp_specialty` VALUES ('177', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '城乡规划（本科专业）', null, null, '0', '本科专业', '', '8');
INSERT INTO `oneapp_specialty` VALUES ('178', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '产品设计（本科专业）', null, null, '0', '本科专业', '', '8');
INSERT INTO `oneapp_specialty` VALUES ('179', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '艺术设计（本科专业）', null, null, '0', '本科专业', '', '8');
INSERT INTO `oneapp_specialty` VALUES ('180', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业设计（本科专业）', null, null, '0', '本科专业', '', '8');
INSERT INTO `oneapp_specialty` VALUES ('181', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '视觉传达设计（本科专业）', null, null, '0', '本科专业', '', '8');
INSERT INTO `oneapp_specialty` VALUES ('182', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '环境设计（本科专业）', null, null, '0', '本科专业', '', '8');
INSERT INTO `oneapp_specialty` VALUES ('183', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '建筑工程与设计（硕士专业）', null, null, '0', '硕士专业', '', '8');
INSERT INTO `oneapp_specialty` VALUES ('184', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业设计（硕士专业）', null, null, '0', '硕士专业', '', '8');
INSERT INTO `oneapp_specialty` VALUES ('185', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '艺术（视觉传达、产品设计、环境设计）（硕士专业）', null, null, '0', '硕士专业', '', '8');
INSERT INTO `oneapp_specialty` VALUES ('186', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '证券投资（专科专业）', null, null, '0', '专科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('187', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业会计（专科专业）', null, null, '0', '专科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('188', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工商管理（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('189', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '市场营销（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('190', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '会计学（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('191', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '财务管理（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('192', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '信息管理与信息系统（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('193', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '国际经济与贸易（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('194', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '金融学（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('195', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '人力资源管理（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('196', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业会计（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('197', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '旅游管理（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('198', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '管理工程（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('199', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业外贸（本科专业）', null, null, '0', '本科专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('200', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '企业管理学（硕士专业）', null, null, '0', '硕士专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('201', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '会计学（硕士专业）', null, null, '0', '硕士专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('202', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '管理科学与工程（硕士专业）', null, null, '0', '硕士专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('203', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工商管理硕士（MBA）（硕士专业）', null, null, '0', '硕士专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('204', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '会计学硕士（MPAcc）（硕士专业）', null, null, '0', '硕士专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('205', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '国际商务硕士（MIB）（硕士专业）', null, null, '0', '硕士专业', '', '9');
INSERT INTO `oneapp_specialty` VALUES ('206', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '法学（本科专业）', null, null, '0', '本科专业', '', '10');
INSERT INTO `oneapp_specialty` VALUES ('207', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '行政管理（本科专业）', null, null, '0', '本科专业', '', '10');
INSERT INTO `oneapp_specialty` VALUES ('208', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '经济法（本科专业）', null, null, '0', '本科专业', '', '10');
INSERT INTO `oneapp_specialty` VALUES ('209', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '知识产权（本科专业）', null, null, '0', '本科专业', '', '10');
INSERT INTO `oneapp_specialty` VALUES ('210', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '英语（本科专业）', null, null, '0', '本科专业', '', '11');
INSERT INTO `oneapp_specialty` VALUES ('211', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '日语（本科专业）', null, null, '0', '本科专业', '', '11');
INSERT INTO `oneapp_specialty` VALUES ('212', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '俄语（本科专业）', null, null, '0', '本科专业', '', '11');
INSERT INTO `oneapp_specialty` VALUES ('213', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '科技英语（本科专业）', null, null, '0', '本科专业', '', '11');
INSERT INTO `oneapp_specialty` VALUES ('214', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '信息与计算科学（本科专业）', null, null, '0', '本科专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('215', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '应用物理学（本科专业）', null, null, '0', '本科专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('216', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工程力学（本科专业）', null, null, '0', '本科专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('217', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工程力学（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('218', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '固体力学（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('219', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '光学（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('220', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '凝聚态物理（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('221', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '物理电子学（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('222', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '理论物理（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('223', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '原子与分子物理（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('224', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '基础数学（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('225', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '应用数学（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('226', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '计算数学（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('227', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '概率论与数理统计（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('228', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '运筹学与控制论（硕士专业）', null, null, '0', '硕士专业', '', '12');
INSERT INTO `oneapp_specialty` VALUES ('229', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '制药工程（本科专业）', null, null, '0', '本科专业', '', '13');
INSERT INTO `oneapp_specialty` VALUES ('230', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '食品科学与工程（本科专业）', null, null, '0', '本科专业', '', '13');
INSERT INTO `oneapp_specialty` VALUES ('231', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '生物工程（本科专业）', null, null, '0', '本科专业', '', '13');
INSERT INTO `oneapp_specialty` VALUES ('232', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '微生物与生化药学（硕士专业）', null, null, '0', '硕士专业', '', '13');
INSERT INTO `oneapp_specialty` VALUES ('233', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '食品科学（硕士专业）', null, null, '0', '硕士专业', '', '13');
INSERT INTO `oneapp_specialty` VALUES ('234', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '生物化学和分子生物学（硕士专业）', null, null, '0', '硕士专业', '', '13');
INSERT INTO `oneapp_specialty` VALUES ('235', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '制药工程（硕士专业）', null, null, '0', '硕士专业', '', '13');
INSERT INTO `oneapp_specialty` VALUES ('236', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '生物工程（硕士专业）', null, null, '0', '硕士专业', '', '13');
INSERT INTO `oneapp_specialty` VALUES ('237', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '汉语言文学（本科专业）', null, null, '0', '本科专业', '', '14');
INSERT INTO `oneapp_specialty` VALUES ('238', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '马克思主义基本原理（硕士专业）', null, null, '0', '硕士专业', '', '15');
INSERT INTO `oneapp_specialty` VALUES ('239', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '思想政治教育（硕士专业）', null, null, '0', '硕士专业', '', '15');
INSERT INTO `oneapp_specialty` VALUES ('240', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '马克思主义中国化研究（硕士专业）', null, null, '0', '硕士专业', '', '15');
INSERT INTO `oneapp_specialty` VALUES ('241', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '马克思主义发展史（硕士专业）', null, null, '0', '硕士专业', '', '15');
INSERT INTO `oneapp_specialty` VALUES ('242', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '中国近现代史基本问题研究（硕士专业）', null, null, '0', '硕士专业', '', '15');
INSERT INTO `oneapp_specialty` VALUES ('243', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '体育人文社会学（硕士专业）', null, null, '0', '硕士专业', '', '16');
INSERT INTO `oneapp_specialty` VALUES ('244', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机电一体化（本科专业）', null, null, '0', '本科专业', '', '17');
INSERT INTO `oneapp_specialty` VALUES ('245', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工业与民用建筑（本科专业）', null, null, '0', '本科专业', '', '17');
INSERT INTO `oneapp_specialty` VALUES ('246', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '建筑装饰（本科专业）', null, null, '0', '本科专业', '', '17');
INSERT INTO `oneapp_specialty` VALUES ('247', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '信息与计算机科学（本科专业）', null, null, '0', '本科专业', '', '17');
INSERT INTO `oneapp_specialty` VALUES ('248', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '会计学（本科专业）', null, null, '0', '本科专业', '', '17');
INSERT INTO `oneapp_specialty` VALUES ('249', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '土木工程（本科专业）', null, null, '0', '本科专业', '', '17');
INSERT INTO `oneapp_specialty` VALUES ('250', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电气工程及其自动化（本科专业）', null, null, '0', '本科专业', '', '17');
INSERT INTO `oneapp_specialty` VALUES ('251', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机设及其自动化（本科专业）', null, null, '0', '本科专业', '', '17');
INSERT INTO `oneapp_specialty` VALUES ('252', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '信息管理（本科专业）', null, null, '0', '本科专业', '', '17');
INSERT INTO `oneapp_specialty` VALUES ('253', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械设计制造及其自动化（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('254', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '机械电子工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('255', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '测控技术与仪器（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('256', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '汽车服务工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('257', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '能源与动力工程（热能与动力工程）（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('258', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电气工程及其自动化（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('259', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '计算机科学与技术（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('260', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '信息与计算科学（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('261', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '自动化（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('262', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电子信息工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('263', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '通信工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('264', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '经济统计学（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('265', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '信息工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('266', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '软件工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('267', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '物联网工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('268', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '土木工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('269', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '道路桥梁与渡河工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('270', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工程管理（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('271', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '测绘工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('272', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '给排水科学与工程（给水排水工程）（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('273', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '建筑环境与设备工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('274', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '水利水电工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('275', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '材料成型及控制工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('276', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '材料科学与工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('277', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '金属材料工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('278', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '冶金工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('279', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '食品科学与工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('280', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '食品质量与安全（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('281', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '过程装备与控制工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('282', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '化学工程与工艺（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('283', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '应用化学（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('284', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '纺织工程（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('285', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '英语（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('286', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '市场营销（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('287', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '财务管理（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('288', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电子商务（专科专业）', null, null, '0', '专科专业', '', '18');
INSERT INTO `oneapp_specialty` VALUES ('289', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '软件技术（专科专业）', null, null, '0', '专科专业', '', '19');
INSERT INTO `oneapp_specialty` VALUES ('290', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '数字媒体（专科专业）', null, null, '0', '专科专业', '', '19');
INSERT INTO `oneapp_specialty` VALUES ('291', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '网络技术（专科专业）', null, null, '0', '专科专业', '', '19');
INSERT INTO `oneapp_specialty` VALUES ('292', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '动漫设计与制作（专科专业）', null, null, '0', '专科专业', '', '19');
INSERT INTO `oneapp_specialty` VALUES ('293', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '会计(MPAcc)（硕士专业）', null, null, '0', '硕士专业', '', '20');
INSERT INTO `oneapp_specialty` VALUES ('294', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '工商管理(MBA)（硕士专业）', null, null, '0', '硕士专业', '', '20');
INSERT INTO `oneapp_specialty` VALUES ('295', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '国际商务(MIB)（硕士专业）', null, null, '0', '硕士专业', '', '20');
INSERT INTO `oneapp_specialty` VALUES ('296', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '电气工程及其自动化（本科专业）', null, null, '0', '本科专业', '', '21');
INSERT INTO `oneapp_specialty` VALUES ('297', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '新能源科学与工程（本科专业）', null, null, '0', '本科专业', '', '21');
INSERT INTO `oneapp_specialty` VALUES ('298', '2017-09-04 00:00:00.000000', '2017-09-04 00:00:00.000000', '留学生涉及所有学院和专业', null, null, '0', '本科专业', '', '22');

-- ----------------------------
-- Table structure for `oneapp_user`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_user`;
CREATE TABLE `oneapp_user` (
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(100) COLLATE utf8_bin NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `user_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `user_gender` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `user_birthday` date DEFAULT NULL,
  `user_nation` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `country_name_cn` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `user_post` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `user_workunit` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `industrial_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `user_workplace` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `user_province` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `user_city` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `user_officephone` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `user_wechat` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `user_qq` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `user_email` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_cellphone` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `industrial_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_account` (`user_account`),
  KEY `oneapp_user_author_id_a325a041_fk_oneapp_user_author_author_id` (`author_id`),
  KEY `oneapp_user_city_id_97bce27a_fk_oneapp_d_city_city_id` (`city_id`),
  KEY `oneapp_user_country_id_338df368_fk_oneapp_d_country_country_id` (`country_id`),
  KEY `oneapp_user_industrial_id_42ccdbf6_fk_oneapp_d_` (`industrial_id`),
  KEY `oneapp_user_province_id_f0faa8c3_fk_oneapp_d_` (`province_id`),
  CONSTRAINT `oneapp_user_author_id_a325a041_fk_oneapp_user_author_author_id` FOREIGN KEY (`author_id`) REFERENCES `oneapp_user_author` (`author_id`),
  CONSTRAINT `oneapp_user_city_id_97bce27a_fk_oneapp_d_city_city_id` FOREIGN KEY (`city_id`) REFERENCES `oneapp_d_city` (`city_id`),
  CONSTRAINT `oneapp_user_country_id_338df368_fk_oneapp_d_country_country_id` FOREIGN KEY (`country_id`) REFERENCES `oneapp_d_country` (`country_id`),
  CONSTRAINT `oneapp_user_industrial_id_42ccdbf6_fk_oneapp_d_` FOREIGN KEY (`industrial_id`) REFERENCES `oneapp_d_industrial` (`industrial_id`),
  CONSTRAINT `oneapp_user_province_id_f0faa8c3_fk_oneapp_d_` FOREIGN KEY (`province_id`) REFERENCES `oneapp_d_province` (`n_province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=666 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of oneapp_user
-- ----------------------------
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$Ps1S5gS6mUye$oInBBrrxazYo3wD+C5h8pG38eSgx9YK48QAURB+n/Jw=', null, '3', 'cl@lut.cn', '1', '2017-09-04 12:06:03.819056', '2017-09-04 12:06:03.889444', '材料科学与工程学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$KP9n1FHogJft$q8Z6d5wV318Ur7kItmTe8LazTsj16q3kQVu9AIzxWPo=', null, '4', 'jd@lut.cn', '1', '2017-09-04 12:06:03.897832', '2017-09-04 12:06:03.957667', '机电工程学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$yW5dWvN6Ym4m$0K6GRzfLp4nMmisegXxjq/JaQzrMv39a7t5zuEqslNc=', null, '5', 'sy@lut.cn', '1', '2017-09-04 12:06:03.963953', '2017-09-04 12:06:04.024912', '石油化工学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$DJJ8LZr7RlL0$IY0ZIgTvXUz5SM2jyktlJWQ8vJ+XWrvUGPnCTbbdhTA=', null, '6', 'nd@lut.cn', '1', '2017-09-04 12:06:04.034179', '2017-09-04 12:06:04.093424', '能源与动力工程学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$CKpMBEgvomaR$gbyZkUpLzFhZBaYTuLyIkJCkYqERskTiAxVc1t/G20E=', null, '7', 'dx@lut.cn', '1', '2017-09-04 12:06:04.100111', '2017-09-04 12:06:04.160432', '电气工程与信息工程学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$Nr3TOoiGx0k5$w6R325xekSUNb77ljk5z3AONE3nEpuwr0Ya5r83LuD4=', null, '8', 'jt@lut.cn', '1', '2017-09-04 12:06:04.168186', '2017-09-04 12:06:04.225545', '计算机与通信学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$Tykur0xVneSj$7FUj0y50/y+2qHSwfoTDevCtaHV3LpPFvNMokxqG3Pc=', null, '9', 'tm@lut.cn', '1', '2017-09-04 12:06:04.232596', '2017-09-04 12:06:04.292992', '土木工程学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$aIpmfADJSrf4$n9aoty4IidBKHNcfYySkDPeNgyhnZtE3H/DC0h344Z0=', null, '10', 'sj@lut.cn', '1', '2017-09-04 12:06:04.301019', '2017-09-04 12:06:04.371710', '设计艺术学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$zZ88zBQcUnGC$O8EjY9U6GyxQS/TfT2TqYZ2aYrgxdrdhUACgbwwfLco=', null, '11', 'jg@lut.cn', '1', '2017-09-04 12:06:04.378938', '2017-09-04 12:06:04.455600', '经济管理学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$wFyL1SA2g15I$9AxeIbfEZEMHDvHN+epDGvC3UJFtfPc4l71r+iZup1I=', null, '12', 'faxy@lut.cn', '1', '2017-09-04 12:06:04.463166', '2017-09-04 12:06:04.534421', '法学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$4qHtdEIkeYUz$ErQLHZOxNzHsY6vqguYkM9dSr6gw+Va2NWXohjdGPRk=', null, '13', 'wgy@lut.cn', '1', '2017-09-04 12:06:04.541947', '2017-09-04 12:06:04.603798', '外国语学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$LsuTpM3XzT6N$9aWNmxL5u324uAYkqfCavtpOFd4/de7jMGmKx14/ck0=', null, '14', 'li@lut.cn', '1', '2017-09-04 12:06:04.611303', '2017-09-04 12:06:04.679364', '理学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$bey9QlIhr1sO$vM30scqncZKH3TD4yBxpHPxWwGm8Ekrqhx03TNsH+ik=', null, '15', 'sky@lut.cn', '1', '2017-09-04 12:06:04.686960', '2017-09-04 12:06:04.744762', '生命科学与工程学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$dv9GybeRt476$4oFC4Jbr+0aORuBLNu7yuT+l5Jmv1K2anpU+vIg12sA=', null, '16', 'Wen@lut.cn', '1', '2017-09-04 12:06:04.752086', '2017-09-04 12:06:04.821033', '文学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$721mg1RnoaT7$0Ey77mGqBBrUoNVz46WjNQbY7Bqj7aSlUR7U32TOJ2M=', null, '17', 'mks@lut.cn', '1', '2017-09-04 12:06:04.827236', '2017-09-04 12:06:04.885920', '马克思主义学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$Ww98oFWTFXlS$nlxVDDMkZ8A12k3dStyVc36mKC2mFEhNoaOLF7QaDmU=', null, '18', 'ty@lut.cn', '1', '2017-09-04 12:06:04.896596', '2017-09-04 12:06:04.973953', '体育教学研究部', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$bMcvc1jue1cu$21uhGi4/SfBG6yVsy402eBOB8/CfBxsorrTJAZKi0M0=', null, '19', 'jx@lut.cn', '1', '2017-09-04 12:06:04.982563', '2017-09-04 12:06:05.042083', '继续教育学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$zFCRQHifQG1F$KR4RWDpbirK7IgYi/syV2gK8cS0ddhsMO+MMIQSXaJk=', null, '20', 'jgy@lut.cn', '1', '2017-09-04 12:06:05.049595', '2017-09-04 12:06:05.104948', '技术工程学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$fwlEy4iSWRwn$UvL9oBBAkaTU+aHcHoBu4Uy+DphsFl6mTiQZ16/9hJw=', null, '21', 'rj@lut.cn', '1', '2017-09-04 12:06:05.111833', '2017-09-04 12:06:05.172735', '软件学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$GcJXULYFuWr6$Ijrq2w2M+4nHIicUXic9K4G0/S87Rj4yc1kLUqdmIPg=', null, '22', 'mba@lut.cn', '1', '2017-09-04 12:06:05.179241', '2017-09-04 12:06:05.230468', 'MBA/MPAcc教育中心', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$kRNGP1liKypF$hPdtML86fPVL8iX5Q9ZosT2oLIXViu+jcRy/msGazTY=', null, '23', 'xny@lut.cn', '1', '2017-09-04 12:06:05.236704', '2017-09-04 12:06:05.301248', '新能源学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$2fG5EqEHjGH7$/uxyuvkDPfAGhLXZcK9tbqygBBi9dn+44uQ4ArdgDVI=', null, '24', 'gjjy@lut.cn', '1', '2017-09-04 12:06:05.307651', '2017-09-04 12:06:05.368268', '国际教育学院', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$ekJN6QTB7u9R$TU6WN1HPmoAdUl3wzeyseItU7qQeiKZyfVsAxnVaatI=', null, '25', 'admin@lut.cn', '1', '2017-09-04 12:06:05.384436', '2017-10-23 15:22:06.676955', '超级管理员', '', null, '', null, '', '', '', '', '', '', '', '', '', '', '', '1', '1', null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$4DhGlicgOiwe$VabC8Y1UFXfA0rjzPADoih7yiEMERx9rROL4N/9Uofs=', null, '26', 'xyh@lut.cn', '1', '2017-09-04 12:06:05.453697', '2017-09-04 12:06:05.533507', '兰州理工大学校友会', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$nVaAOdudDgFw$DENZu3cf6BqeIfWpZ/AVlrNqxwS0P0oFxezAR0yNCEE=', null, '27', 'zd@lut.cn', '1', '2017-09-04 12:06:05.539756', '2017-09-04 12:06:05.602639', '张迪', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$36khzN5a6Wdk$kxnq6RdXUc/4IHfx9WRbxCng85l5qQ4ar+sse+9ZGRo=', null, '28', 'wjl@lut.cn', '1', '2017-09-04 12:06:05.609102', '2017-09-04 12:06:05.676402', '汪江龙', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$SQQJXyWEkdLq$HQBTzDNQrVKysXS/vTATDnHeaOWKaEgpxPqM0RJb29k=', null, '29', 'cx@lut.cn', '1', '2017-09-04 12:06:05.682827', '2017-09-04 12:06:05.749230', '陈轩', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$wHIfcL7nN3tQ$dj9D81zmz3VDzXxpQF7zvP0aeR1SuKNYvtLdPWv1t3c=', null, '30', 'hwt@lut.cn', '1', '2017-09-04 12:06:05.755737', '2017-09-04 12:06:05.821317', '郝文涛', '', null, '', null, '', '', '', '', '', '', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$FztiVASGxwZM$K26Gu30Zrydt/VcjHrvflZreHx5knhE4rbVcC+gu8mI=', null, '508', '34247908@qq.com', '1', '2017-10-11 08:26:13.495087', '2017-10-23 15:22:33.004203', '余政', '男', '1988-09-09', '裕固族', '中国', '营销总监', '上海华讯网络系统有限公司', '信息传输、计算机服务和软件业', '上海市嘉定区江桥镇海波路118弄54号', '上海市', '', '021-58989999', 'yuzheng', '34247908', null, '15003775556', '1', null, null, null, '407', '310000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$Rv2BVq0OTLL9$GQjm+vJYjXWQjUMpN6StzIBblA7E0Hq2WU/GfJFP4QE=', null, '509', '378423874@qq.com', '1', '2017-10-11 08:26:13.580791', '2017-10-23 15:22:33.077350', '余养炎', '男', '1988-09-10', '彝族', '中国', '生产工程师', '中科软科技股份有限公司', '信息传输、计算机服务和软件业', '昌平区北七家蓬莱苑别墅D区9号', '北京市', '', '010-68993058', 'clyinyue ', '272265713', null, '15003777518', '1', null, null, null, '407', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$LdXnEmGUtOPQ$esY+d1QQnXv+LKQ/IjbPQO74Cf1o06rGHzaTPD7TXWw=', null, '510', 'yongmengzhe@163.com', '1', '2017-10-11 08:26:13.669001', '2017-10-11 08:26:13.746918', '测试2', '女', '1988-09-11', '彝族', '中国', '技术主管', '上海银环国际贸易有限公司', '批发和零售业', '上海市宝山区联苏路3号', '上海市', '', '021-51082273', 'lengiii', '858986158', null, null, '1', null, null, null, '408', '310000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$WIhQ348V4IHT$ABeD4Ek1/qLzlwkw16vHPxwiRKNLkBr/ZU71elXo4FU=', null, '511', 'yangyun105@163.com', '1', '2017-10-11 08:26:13.772547', '2017-10-11 08:26:13.843822', '张磊', '女', '1988-09-12', '锡伯族', '中国', '产品设备工程师 ', '民航局数据通信工程系有限公司', '信息传输、计算机服务和软件业', '江苏省常州市武进区洛阳工业开发区创盛路9号', '江苏省', '常州市', '0532-81907703', 'zyxinli', '859785886', null, '15003777678', '1', null, '80', null, '407', '320000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$CrkUWDRbUl4I$5or4T7P1bpuEIbWFMFTqVOwO7uDeAiR6wKEasVOqXWY=', null, '512', 'phoebus.y@163.com', '1', '2017-10-11 08:26:13.861311', '2017-10-11 08:26:13.925430', '姜文', '男', '1988-09-13', '瑶族', '中国', '研发主管', '北京市工业设计系研究院', '科学研究、技术服务和地质勘查业', '北京市大兴西红门九龙家园东区5-2', '北京市', '', '010—58186722', 'Minixingzuo', '622009235', null, '15083388288', '1', null, null, null, '413', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$BlyUsxUP6Z1P$gFXYJWZWbxEaGpSGqcqhz3S9H4h8z6nrxJh5CB6GJCY=', null, '513', '53539627@qq.com', '1', '2017-10-11 08:26:13.957067', '2017-10-11 08:26:14.019577', '杨宏梅', '男', '1988-09-14', '壮族', '中国', '技术支持经理 ', '中国人民解放军后勤指挥学院', '教育', '', '', '', null, 'Vzhihui', '860042156', null, '13569220009', '1', null, null, null, '416', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$eowdXgfdCpdz$czq5+Vtfi7LLp7wfwjrQzGeNhvUiD0OJVsv1oExTnXA=', null, '514', 'rudyjut@qq.com', '1', '2017-10-11 08:26:14.049367', '2017-10-11 08:26:14.113190', '杨云', '男', '1988-09-15', '瑶族', '中国', '产品开发技术员 ', '北京市龙图软件学院科技有限公司', '信息传输、计算机服务和软件业', '北京市市朝阳区常惠路北辰福第V中心D座8层', '北京市', '', '010-87461256', 'meishicc ', '826127378', null, '13525671118', '1', null, null, null, '407', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$AjG4ehX5KHoN$j/BFt8dsFlSCNpyPMlYRABJvz4pKTeBpJJEnkID2yGA=', null, '515', 'birdie0331@sina.com', '1', '2017-10-11 08:26:14.145355', '2017-10-11 08:26:14.209602', '薛朱鹏', '女', '1988-09-16', '乌孜别克族', '中国', '质量工程师', '兰州理学院工大学', '教育', '', '', '', null, null, '860388784', null, '13663996518', '1', null, null, null, '416', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$TQVkEfiDVGg4$SmpEO9Qfw43LhzBpSo5sa0vmpJgMMOf6CcAmdpczN34=', null, '516', 'xuhanbo@cctv.com', '1', '2017-10-11 08:26:14.239585', '2017-10-11 08:26:14.303768', '徐汉族铂', '女', '1988-09-17', '维吾尔族', '中国', '机械工程师', '上海盈影展览展示有限公司', '居民服务和其他服务业', '上海市松江区九干路168号1幢', '上海市', '', '021-62159733', null, '543348491', null, '13663996519', '1', null, null, null, '415', '310000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$XCZbPNx0nQKJ$bahIs/iIDalLjCxdt/s5ez/jXSWBLy4aUqaSD6p1KFA=', null, '517', 'onnes@126.com', '1', '2017-10-11 08:26:14.332357', '2017-10-11 08:26:14.403827', '谢小军', '男', '1988-09-18', '佤族', '中国', '工艺工程师', '北京市盛峰', '信息传输、计算机服务和软件业', '北京市市大兴区 大兴区西红门镇金星工业开发区', '北京市', '', '010-66083260', null, '1191020006', null, '13663996520', '1', null, null, null, '407', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$XcAVNmCmV1ar$nabCioKOK+/Vh1WwmFH00t/089jkySwAowEKhJ+8ik0=', null, '518', 'xieli@fzgz.edu.cn', '1', '2017-10-11 08:26:14.435326', '2017-10-11 08:26:14.495006', '谢力', '男', '1988-09-19', '土家族', '中国', '安全工程师', '防灾技术高等专科学校', '教育', '', '', '', null, 'enread', '920287982', null, '13663996521', '1', null, null, null, '416', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$PopaRuBk8hwM$JemC7Lti+qAb53ReJa9VrbzIJTAfZbnb87MKgqm0aKI=', null, '519', '63129577@qq.com', '1', '2017-10-11 08:26:14.524047', '2017-10-11 08:26:14.586086', '伍建军', '男', '1988-09-20', '土族', '中国', '电子工程师 ', '松江区税务局', '公共管理和社会组织', '上海市嘉定区外冈镇望安公路615号', '上海市', '', '021-62999601', null, '806166022', null, '13663996522', '1', null, null, null, '419', '310000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$SA8Api8kwyaE$rVx7rm2zldbhzNkAaub2V+OIizFmkvX+YAabn5HnP2Q=', null, '520', 'wzxzzm@yahoo.cn', '1', '2017-10-11 08:26:14.613860', '2017-10-11 08:26:14.677523', '邬建军', '男', '1988-09-21', '塔塔尔族', '中国', '硬件工程师 ', '达内', '信息传输、计算机服务和软件业', '南京市江宁区东山镇中宁巷61号1-50', '江苏省', '南京市', '025-83493854', 'cypuzi ', '113676179', null, '13663996523', '1', null, '77', null, '407', '320000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$hgXbs7UnqhSP$zC+o6AWqPMLmRRx71Jli3b0l9FDi27pfDWRSwBp5G9k=', null, '521', 'wangzw@china.com.cn', '1', '2017-10-11 08:26:14.704688', '2017-10-11 08:26:14.761043', '王志伟', '男', '1988-09-22', '水族', '中国', '通讯工程师 ', '瑞斯康达科技发展股份有限公司', '制造业', '苏州市吴中区迎春南路112号', '江苏省', '苏州市', '0512-62880966', null, '858168586', null, '13663996524', '1', null, '81', null, '402', '320000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$tFZX4WrYlz7N$ftZLSMbfBmIWqDRJkoW84ruKavnVYqDkFXX1o2RZtGs=', null, '522', 'mopbt@tom.com', '1', '2017-10-11 08:26:14.788067', '2017-10-11 08:26:14.858635', '王艺', '男', '1988-09-23', '畲族', '中国', '软件工程师 ', '五矿', '采矿业', '江苏省南京市玄武区', '江苏省', '南京市', '025-83693859', null, '75429054', null, '13663996525', '1', null, '77', null, '403', '320000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$kwoBmh8soItZ$opcwYDxlLJAe++JgP/FuK7mgyu8MV2JFoOwFFLuwkjY=', null, '523', 'wcnmbd@163.com', '1', '2017-10-11 08:26:14.888689', '2017-10-11 08:26:14.944518', '王娜', '男', '1988-09-24', '撒拉族', '中国', '软件测试工程师', '上海汇奔驰卡车配件有限公司', '租赁和商务服务业', '上海嘉定区曹安公路2698', '上海市', '', '021-63355533', 'appvip', '86197314', null, '15136666010', '1', null, null, null, '412', '310000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$92MjHA7PtY08$wT6NXKA/0+H9LLgmb57lvWlNKmmkxviVs73AlsXwKos=', null, '524', 'wwwaaa6604@263.net', '1', '2017-10-11 08:26:14.972221', '2017-10-11 08:26:15.035175', '王立斌', '女', '1998-03-01', '汉族', '中国', '网络工程师 ', '中石油化工学院工程建设公司', '建筑业', '哈尔滨市道北区', '黑龙江省', '哈尔滨市', null, null, '860890865', null, '15136666011', '1', null, '62', null, '405', '230000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$iTqNTmTstxBT$FhKJN7p6Rk4uKqGSziSzbDUSWiBvdLc+BNp0kRFWXds=', null, '525', 'wangjing20081996@sina.com', '1', '2017-10-11 08:26:15.065095', '2017-10-11 08:26:15.134840', '王静', '女', '1998-03-02', '彝族', '中国', '网络安全工程师 ', '360.0', '信息传输、计算机服务和软件业', '深圳市龙岗区', '广东省', '', null, 'mmyulu', null, null, '15136666012', '1', null, null, null, '407', '440000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$3a8Qxg670tPy$sc2y+CR2t8hR7pCYxQkIUtvdtWMR7FieipqtzpGHT74=', null, '526', 'fanghappyfang@yahoo.com.cn', '1', '2017-10-11 08:26:15.164287', '2017-10-11 08:26:15.229397', '王芳', '女', '1998-03-03', '柯尔克孜族', '中国', '造价工程师 ', '中铁二十一局', '建筑业', '西安市未央区', '陕西省', '西安市', '029-88220419', null, '622009404', null, '15136666013', '1', null, '294', null, '405', '610000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$ZCpQwaSUnsmV$u6cXBCFOeGqbOu0B80R6sKUeigapVYNUMc4NAO9zNl4=', null, '527', 'superdreamer2008@hotmail.com', '1', '2017-10-11 08:26:15.257311', '2017-10-11 08:26:15.320597', '王定祥', '男', '1998-03-04', '纳西族', '中国', '土木建筑工程师 ', '中水八局', '建筑业', '上海市浦东新区大团镇工业区南芦公路642号', '上海市', '', '021-66058069', 'miniyangmi ', null, null, '15136666014', '1', null, null, null, '405', '310000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$OwoSfjfJPB5S$HiNW5cftTvsIVdKrjQuDhH1c3fnt+uSTBUs8N2gwjFE=', null, '528', 'tong2333@163.com', '1', '2017-10-11 08:26:15.351860', '2017-10-11 08:26:15.415653', '仝力敏', '女', '1998-03-05', '羌族', '中国', '道路桥梁工程师 ', '北京市邮电大学', '教育', '北京市市朝阳区大望路soho现代城D座2110室', '北京市', '', '010-64035547', null, '622009112', null, '15136666015', '1', null, null, null, '416', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$HGnsCUEeq1GA$IcWn+HN2LjLADwB7wQggZcYV++O9Xv4o2IVlnwDjmIY=', null, '529', 'young04240208@163.com', '1', '2017-10-11 08:26:15.441444', '2017-10-11 08:26:15.502688', '唐勇', '男', '1998-03-06', '仫佬族', '中国', '城镇规划设计工程师 ', '北京市利达智通', '信息传输、计算机服务和软件业', '北京市市海淀区西四环北路146号', '北京市', '', '010-65543149', null, '622009331', null, '15136666016', '1', null, null, null, '407', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$lkrqh9c2j7Uc$7xxb8x0pG4+xN0kJNfJOlsZOdcQJ3E+0F19UFm9oiw0=', null, '530', 'vilqd@163.com', '1', '2017-10-11 08:26:15.532059', '2017-10-11 08:26:15.592790', '覃迪', '女', '1998-03-07', '珞巴族', '中国', '水利水电工程师', '北京市海威新诺动漫科技有限公司', '居民服务和其他服务业', '北京市市朝阳区大望路SOHO3810', '', '', null, 'wlhmusicman ', '622009332', null, '15136666017', '1', null, null, null, '415', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$zfzWEuiGvqnR$my11gp7ywP9JG/V1K3B3FCLBUWYM/+aS5ImpQZE3dbo=', null, '531', 'songyl525@sina163.com', '1', '2017-10-11 08:26:15.619051', '2017-10-11 08:26:15.677055', '宋永利', '男', '1998-03-08', '拉祜族', '中国', '给排水工程师', '京天威', '租赁和商务服务业', '北京市市房山区天星街', '北京市', '', '010-62381118', 'chilinglin ', null, null, '15136666018', '1', null, null, null, '412', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$Eo2EfHqE03dl$ykeS/bOzoruAC+RLs729lu1ZFZ6nAQ6Fz7JJl/DaoFo=', null, '532', 'shangxiaoying317@163.com', '1', '2017-10-11 08:26:15.702619', '2017-10-11 08:26:15.764735', '尚晓英', '男', '1998-03-09', '基诺族', '中国', '暧通工程师', '中交桥梁技术有限公司试验检测中心', '科学研究、技术服务和地质勘查业', '天水市秦州区麦积路', '甘肃省', '天水市', '0938-2720001', null, null, null, '18739000003', '1', null, '308', null, '413', '620000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$xM6m3QK55K7v$4SyHKmouxD1DqRRH+3TKMYYOnOUXEkVCSMXAkHLRAik=', null, '533', 'lanyun0208@hotmail.com', '1', '2017-10-11 08:26:15.792032', '2017-10-11 08:26:15.860656', '任雯婧', '女', '1998-03-10', '锡伯族', '中国', '项目经理', '国家通信工程系计量中心', '科学研究、技术服务和地质勘查业', '广州市黄浦区黄岗大道', '广东省', '广州市', '020-2720246', 'by2youyou01', '622009225', null, '18739000004', '1', null, '200', null, '413', '440000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$UJ6aWfNQYg7c$gVJg87036gEG8L14RypHhsyDgGJEdMW0Xi7smMqqdUQ=', null, '534', 'wunaisheng@foxmail.com', '1', '2017-10-11 08:26:15.888262', '2017-10-11 08:26:15.956963', '祁建军', '女', '1998-03-11', '汉族', '中国', '项目助理 ', '威发系统中国有限公司', '电力、燃气及水的生产和供应业', '成都市青羊区', '四川省', '成都市', '028-68073734', 'qw735439846 ', null, null, '18739000005', '1', null, '241', null, '404', '510000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$YJkySEn4YMly$U4Gsol7ZVwljw0E7QfOICCX17WOPaCnjj+G3C6aczsk=', null, '535', 'yngz@163.com', '1', '2017-10-11 08:26:15.982757', '2017-10-11 08:26:16.042570', '庞旭辉', '女', '1998-03-12', '彝族', '中国', '统计分析专员 ', '广东边防东莞边检站', '卫生、社会保障和社会福利业', '东莞市莞城区', '广东省', '东莞市', '0769-89003056', null, '622009302', null, '18739000006', '1', null, '216', null, '417', '440000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$WyKpmmx778Pj$pkSpBDvLNYuKbf+P6Dny2uD0cR0ArT17WL0N4F24VYI=', null, '536', 'Lzzhikui@163.com', '1', '2017-10-11 08:26:16.069557', '2017-10-11 08:26:16.139345', '马智魁', '男', '1998-03-13', '汉族', '中国', '副总经理', '航信', '交通运输、仓储和邮政业', '中山市三角镇', '广东省', '中山市', '0760-85582737', 'lovemingzone ', null, null, '18739000007', '1', null, '217', null, '406', '440000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$nBVxmlHRmcTu$yh2KCD5JJ2PtIzmHUt4LUk2EA7CWbsGS6Lhn4qCeYTQ=', null, '537', 'lv_dong_liang@163.com', '1', '2017-10-11 08:26:16.165554', '2017-10-11 08:26:16.225128', '吕东亮', '女', '1998-03-14', '裕固族', '中国', '人力资源经理', '上海柯滤压缩机械有限公司', '电力、燃气及水的生产和供应业', '上海市嘉定区宝安公路2999弄38号', '上海市', '', '021-61017878', 'to_get_her_fanfan ', '970186073', null, '13683903939', '1', null, null, null, '404', '310000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$LXS6AiKRZBXp$7LFOSmMlOvLMHRGKu7D88kE8Cy4nLa5JKvMpy71dqTQ=', null, '538', 'lh04240109@163.com', '1', '2017-10-11 08:26:16.252204', '2017-10-11 08:26:16.312425', '罗卉', '男', '1998-03-15', '乌孜别克族', '中国', '运营总监 ', '中交桥梁技术有限公司试验检测中心', '科学研究、技术服务和地质勘查业', '', '', '', null, 'Rainieyang060477 ', null, null, '13683903940', '1', null, null, null, '413', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$l0Xv57vEtLEe$gQqPfJ8+x0fLfLQGuakiqtPUhRWd1wQB8u/tOieEsa0=', null, '539', 'luxm913@163.com', '1', '2017-10-11 08:26:16.341725', '2017-10-11 08:26:16.409962', '录显明', '男', '1998-03-16', '汉族', '中国', '财务经理 ', '富士康精密电子烟台有限公司', '制造业', '烟台开发区嘉兴路8号', '山东省', '烟台市', '0512-62794530', 'anyixuanhy ', '622000712', null, '13683903941', '1', null, '143', null, '402', '370000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$r6IR4YKhbUnC$8as3yEY06ej2x0N6+YBgxqqe6E9uB0bGJTHfQtKGNt4=', null, '540', 'lusson4@163.com', '1', '2017-10-11 08:26:16.436975', '2017-10-11 08:26:16.494919', '卢剑云', '女', '1998-03-17', '汉族', '中国', '运营总监 ', '国家通信工程系计量中心', '科学研究、技术服务和地质勘查业', '', '', '', null, 'chenhe1109', null, null, '13683903942', '1', null, null, null, '413', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$NVcEtMwLdMcD$V1BSCYFBAyunV71FUfQrs39VVF+RPbAXBNh3UTaXaKE=', null, '541', 'longgangyuwei@163.com', '1', '2017-10-11 08:26:16.521923', '2017-10-11 08:26:16.587961', '龙刚', '男', '1998-03-18', '汉族', '中国', '副总经理', '德州洁佳过滤设备有限公司', '租赁和商务服务业', '德州市经济开发区晶华北大道', '山东省', '德州市', '0534-2919508', 'wsl-silence', null, null, '13683903943', '1', null, '151', null, '412', '370000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$C9QYQIN1Lgqr$wfOeMqV6oCe4wxlkmy4XcKSD5//QR9J1NZQsfETbNrc=', null, '542', 'caiwuxinxi@hotmail.com', '1', '2017-10-11 08:26:16.614258', '2017-10-11 08:26:16.682083', '刘铎', '男', '1998-03-19', '锡伯族', '中国', '运营总监 ', '威发系统中国有限公司', '批发和零售业', '', '', '', null, 'mavis-fan', '622005361', null, '13683903944', '1', null, null, null, '408', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$JQynYDlbyxUl$bZfGajPh5aj8pY2mo9XqXADwwBzcu/EVIFjrm1Jhng0=', null, '543', 'xxc694@sohu.com', '1', '2017-10-11 08:26:16.709204', '2017-10-11 08:26:16.779080', '廉冰', '女', '1998-03-20', '壮族', '中国', '营销总监', '上海金山三友电器机械有限公司', '制造业', '上海市金山区枫泾工业区枫冠路53号6幢', '上海市', '', '021-62478117', 'jingleixu', null, null, '13683903945', '1', null, null, null, '402', '310000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$7PqiMODGcFiG$8frkExS3hP/an97c2KWFucpgdub/afk9podoqG8Rxts=', null, '544', 'zeer527@163.com', '1', '2017-10-11 08:26:16.809755', '2017-10-11 08:26:16.874355', '李永泽', '男', '1998-03-21', '汉族', '中国', '运营总监 ', '广东边防东莞边检站', '公共管理和社会组织', '', '', '', null, 'jingleixu', '622009279', null, '13683903946', '1', null, null, null, '419', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$WvMapUlscxs7$wcc+EebfWyo664MQOo7dC/R4ie/cmMhYL3D9j2NBHQY=', null, '545', 'ljj21@sina.com', '1', '2017-10-11 08:26:16.901524', '2017-10-11 08:26:16.974430', '李盛', '女', '1998-03-22', '土族', '中国', '财务经理 ', '兰州理学院工大学', '教育', '', '', '', null, 'huge_weixin', '859493853', null, '13683903947', '1', null, null, null, '416', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$4rRc2vRx8wvr$aUfKtQpg00mloSe7eCe77+Mr9XsP2S4B4yjIP+wqEP8=', null, '546', 'popeyelee@163.com', '1', '2017-10-11 08:26:17.002905', '2017-10-11 08:26:17.066252', '李鹏', '女', '1998-03-23', '汉族', '中国', '营销总监', '中铁二十二局集团电气工程系化公司', '建筑业', '', '', '', null, 'qw735439846', null, null, '18928460897', '1', null, null, null, '405', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$ZPGWE6EX6edE$kmWjzsGRZwsDp28269tNDQp+GLf1MdccGeyJWdloxpw=', null, '547', 'easternsun@163.com', '1', '2017-10-11 08:26:17.091107', '2017-10-11 08:26:17.145606', '李建建', '男', '1998-03-24', '汉族', '中国', '人力资源经理', '山东智迈弘创工业装备有限公司', '制造业', '山东省潍坊市诸城市观海路2771号', '山东省', '潍坊市', '0790-6723456', 'twins_event', '622009002', null, '18928460898', '1', null, '144', null, '402', '370000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$7BrNW9SdrGAo$vYUmxAxlI7WxgAzKcZCO3CNt7rNCViZkdcEjaLkux/Q=', null, '548', '377322225@qq.com', '1', '2017-10-11 08:26:17.172067', '2017-10-11 08:26:17.235576', '李东阳', '男', '1978-05-04', '汉族', '中国', '财务经理 ', '中国普天', '交通运输、仓储和邮政业', '', '', '', null, 'wushowzongxian', null, null, '18928460899', '1', null, null, null, '406', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$g4xXShwm8ZVr$Nri0H6sGkHvN9R0gpweqOUqyGdYPdqrIqLlpFv5h65s=', null, '549', 'jiazhifeng258@sohu.com', '1', '2017-10-11 08:26:17.262097', '2017-10-11 08:26:17.331204', '贾志峰', '男', '1978-05-05', '汉族', '中国', '副总经理', '甘肃立翔商贸有限公司', '批发和零售业', '', '', '', null, 'kangyong_cai', '622009003', null, '18928460900', '1', null, null, null, '408', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$tqxIydkcRUjg$SkB9CsVUPD81t00uvOFjsnC7l0aKzcyvSa8M7WqGKkA=', null, '550', 'lincy0124@sina.com', '1', '2017-10-11 08:26:17.365413', '2017-10-11 08:26:17.429839', '贾秀华', '男', '1978-05-06', '汉族', '中国', '营销总监', 'IBR china', '信息传输、计算机服务和软件业', '', '', '', null, 's_kangxi', '622009004', null, '18928460901', '1', null, null, null, '407', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$PpdEYvuqnhtg$4KcFuC9WNgmI6wDNgyemPHpAErUL4ixCMzmxYHsf4aA=', null, '551', 'jp804@eyou.com', '1', '2017-10-11 08:26:17.457504', '2017-10-11 08:26:17.520461', '贾群', '女', '1978-05-07', '汉族', '中国', '运营总监 ', '北京市电子科技学院', '教育', '北京市市怀柔区雁栖经济开发区乐园大街17号2层', '北京市', '', '010—66266833', 'fannfannaiai ', '622009051', null, '18928460902', '1', null, null, null, '416', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$yRomEilMNVhk$DpToolOWWdTUuN0O84SofiUjSBOeFwShC9ghokhdgiw=', null, '552', 'hkz1011@163.com', '1', '2017-10-11 08:26:17.549978', '2017-10-11 08:26:17.619905', '胡奎志', '男', '1978-05-08', '汉族', '中国', '人力资源经理', '北京市艾凯科技', '信息传输、计算机服务和软件业', '北京市市房山区天星街1号院绿地启航国际10号楼801', '北京市', '', '010-58186696', 'aya914 ', null, null, '18928460903', '1', null, null, null, '407', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$eRI9KtSYCmc5$4PeFcS2zwUsLf4S296ZKsynp3KNIw8moo47x63lxmCk=', null, '553', 'htlm_2008@yahoo.com.cn', '1', '2017-10-11 08:26:17.645583', '2017-10-11 08:26:17.715038', '郝涛', '男', '1978-05-09', '汉族', '中国', '副总经理', '青岛鑫润祺环保科技有限公司', '租赁和商务服务业', '山东青岛胶南峄山路388号', '山东省', '青岛市', '0532-86072218', 'dazuozone ', '622009260', null, '18928460904', '1', null, '139', null, '412', '370000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$RRnITchRXlrf$39LY8cfb7GRkxj7PAM/5GbYdtbsmRBQmU1/pLLpQJ6w=', null, '554', 'lakeguo@sohu.com', '1', '2017-10-11 08:26:17.741001', '2017-10-11 08:26:17.812329', '韩昌魁', '女', '1978-05-10', '汉族', '中国', '会计主管', '北京市南天', '交通运输、仓储和邮政业', '北京市市海淀区马连洼', '北京市', '', '010-63543740', 'liangying_zhang ', '622009296', null, '18928460905', '1', null, null, null, '406', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$Ujdd4HFTWGHA$tSV9UoYWt4IwqFvjpT9JaDe2rmQSe5tzEKyOzI4GfcI=', null, '555', 'guoyongxian999@163.com', '1', '2017-10-11 08:26:17.841170', '2017-10-11 08:26:17.910907', '郭永成', '女', '1978-05-11', '汉族', '中国', '营销总监', '山东东达电气有限责任公司', '电力、燃气及水的生产和供应业', '济宁任城经济开发区山博路南', '山东省', '济宁市', null, 'wx_hangeng', '622005770', null, '18739000006', '1', null, '145', null, '404', '370000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$lu9Sm2y0AyVA$tDyvcOacE3N9PTTvj51y+H0A9Z+b+7dtA6hggCP6MxE=', null, '556', 'gexinenya2005@sina.com', '1', '2017-10-11 08:26:17.937784', '2017-10-11 08:26:18.001346', '葛欣', '男', '1978-05-12', '汉族', '中国', '会计主管', '财商人生理学院财顾问公司', '租赁和商务服务业', '', '', '', null, 'kenjiwu01', null, null, '18739000007', '1', null, null, null, '412', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$AmXQKi3WZGxD$tozFLElM0uGGKRKVxULI3TGZ2jiTCdX/rSfSfX7g8S0=', null, '557', 'gaoguijun00@163.com', '1', '2017-10-11 08:26:18.029079', '2017-10-11 08:26:18.099213', '高贵君', '男', '1978-05-13', '汉族', '中国', '副总经理', 'IBM CSC', '信息传输、计算机服务和软件业', '', '', '', null, 'fuxinboweixin', '622007280', null, '13683903939', '1', null, null, null, '407', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$zbihZGzh646p$QOAcbLTxjq4wlS2Jtpsul3QO8GyYoPE4Mjqxn970cEM=', null, '558', 'gaofanxing_lacom@hotmail.com', '1', '2017-10-11 08:26:18.125360', '2017-10-11 08:26:18.184105', '高凡星', '男', '1978-05-14', '汉族', '中国', '行政经理 ', '北京市朗康科技', '信息传输、计算机服务和软件业', '北京市朝阳区成寿寺中海城紫鑫格', '北京市', '', null, 'baojeff', '622007281', null, '13683903940', '1', null, null, null, '407', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$TwEoBUM33OHm$ubswtVvqZan56dvf7xM9Fd+tO3frq0Wm8zKpMssUaHU=', null, '559', 'hardbone_wh@hotmail.com', '1', '2017-10-11 08:26:18.211613', '2017-10-11 08:26:18.280677', '飞渡', '女', '1978-05-15', '阿昌族', '中国', '行政经理 ', '山东博锐生物科技有限公司', '制造业', '山东菏泽市经济开发区福州路85', '山东省', '荷泽市', '0530-3198580', 'amberkuo_0219', '622007282', null, '13683903941', '1', null, '154', null, '402', '370000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$oGwhJQslxPf1$/HW7uQdeSSIs7E5cNJ0SVLLYa3YMFn5sFKc32Wbfs8M=', null, '560', 'Jwestcn@gmail.com', '1', '2017-10-11 08:26:18.307163', '2017-10-11 08:26:18.379347', '樊建科', '男', '1978-05-16', '阿昌族', '中国', '营销总监', 'sunplus', '信息传输、计算机服务和软件业', '', '', '', null, 'liksunfong', '622007283', null, '13683903942', '1', null, null, null, '407', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$Fo3Pd2UaRNBh$IQmPLbmj36+uJNVITz67PnYsLSBC4RsiHR83T+WON6s=', null, '561', 'peiyuan.du@dudu-inc.com', '1', '2017-10-11 08:26:18.407049', '2017-10-11 08:26:18.475878', '杜培源', '男', '1978-05-17', '阿昌族', '中国', '财务经理 ', '千橡互动集团（猫扑）', '信息传输、计算机服务和软件业', '', '', '', null, 'chilinglin ', '622007284', null, '13683903943', '1', null, null, null, '407', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$YX9fykCeqhDM$6Svyu+YVDMZkB0d1ByKyxHGfPg6kFecu7vzwie+10Kg=', null, '562', 'beyondfir@gmail.com', '1', '2017-10-11 08:26:18.501252', '2017-10-11 08:26:18.566988', '董思彤', '男', '1978-05-18', '回族', '中国', '营销总监', '民生银行零售', '金融业', '', '', '', null, 'joi_caichunjia', '622007285', null, '13683903944', '1', null, null, null, '410', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$QiWsmRF1Gdsj$lpI4oS//zHL2fQjRvbcelrK11skeh9SPVozYGcDrKj0=', null, '563', 'wudykai@163.com', '1', '2017-10-11 08:26:18.594097', '2017-10-11 08:26:18.657583', '初正凯', '男', '1978-05-19', '东乡族', '中国', '行政主管 ', '国家软件学院外包人才培训基地', '教育', '', '', '', null, 'peterho0913', '622007286', null, '13683903945', '1', null, null, null, '416', null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$riNFa8WQOIlK$2rVEAbHyK77YL7fdaKqa65OcCpEbZ0eXTQ3NAdEfkLI=', null, '564', 'chenyuan0210@hotmail.com', '1', '2017-10-11 08:26:18.685964', '2017-10-11 08:26:18.761100', '陈媛媛', '女', '1978-05-20', '东乡族', '中国', '副总经理', '北京市瑞斯康达科技发展有限公司', '信息传输、计算机服务和软件业', '北京市市东城区东四北大街107号科林大厦(原天海商务大厦)B座205室', '北京市', '', '010-84262200', 'nylonchen520', '622007287', null, '18928460902', '1', null, null, null, '407', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$Nj55NlA5GFcR$p6Ys+HNs36wcrRgcH3Pq+2sBgeVBAM4TA8ixvR6gV/M=', null, '565', '15776702@qq.com', '1', '2017-10-11 08:26:18.786219', '2017-10-11 08:26:18.854678', '陈春建', '女', '1978-05-21', '东乡族', '中国', '行政经理 ', '青岛远航伟业机电有限公司', '制造业', '青岛重庆北路429号', '山东省', '青岛市', '0532-89787796', 'happyxyzhangBY2', '970186073', null, '18928460903', '1', null, '139', null, '402', '370000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$qib3W2aFUGM7$gcr8sgzStq79uL27VqnOREqbcJ858IlyF9VDyWrceHY=', null, '566', 'censhen@gmail.com', '1', '2017-10-11 08:26:18.891021', '2017-10-11 08:26:18.953868', '岑参', '女', '1978-05-22', '东乡族', '中国', '行政主管 ', '北京市信念科技股份有限公司', '信息传输、计算机服务和软件业', '北京市丰台区广安路国投财富广场4号楼10层', '北京市', '', '010-65309999', 'chenhe1109 ', null, null, '18928460904', '1', null, null, null, '407', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$Msyo72gDOkkR$cw8E197+9TeuRy1ezHZGimpQgtA3VPolk2WyT0Ys0Bo=', null, '570', 'test3@lut.cn', '1', '2017-10-12 02:31:03.012740', '2017-10-12 02:31:03.087807', '测试3', '女', '1994-02-09', '纳西族', '中国', '项目经理', '百度', '信息传输、计算机服务和软件业', '北京市朝阳区43号', '北京市', '', '010-98447585', 'haha11', '3234656789', null, '12334567789', '1', null, null, null, '407', '110000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$4bwPwFVniQts$KPZ2hbsYZ5/5mbGhoO+19/cUP1I1slBfQlmBY9omO2c=', null, '637', 'haowt@lut.cn', '1', '2017-10-16 01:59:30.228727', '2017-10-16 01:59:30.328464', '郝院长', '男', '1990-02-19', '回族', '中国', '书记', '兰州理工大学', '教育', '甘肃省兰州市七里河区兰工坪', '甘肃省', '兰州市', '0931-3422909', 'haownt32', '3245675478', null, '12324324233', '1', null, '304', null, '416', '620000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$WBs4HoW2DPbo$n/ur7FQsrcsWXIuAD0labHaI9UG5fkauWO/mQkVCrOs=', null, '656', 'sign_up@lut.cn', '1', '2017-11-17 08:54:23.765600', '2017-11-17 08:54:23.835514', '注册测试', '', '1997-08-12', '回族', null, '主任', '兰州理工大学', null, '甘肃省兰州市七里河兰工坪', null, null, '09319999999', 'nnmm55ll', '6666666666', 'test2@cc.com', '11111111111', '1', null, '304', null, '405', '620000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$p6imaWLLypJ1$Fy4FrEqDtNOTLQ5S1ovxmk05PmCkCxa5q3yTDq3Gmyc=', null, '657', 'cc@lut.cn', '1', '2017-12-13 07:44:09.691734', '2017-12-13 07:44:09.873932', '常常', '男', '1990-02-19', '回族', '中国', '书记', '兰州理工大学', '教育', '甘肃省兰州市七里河区兰工坪', '甘肃省', '兰州市', '0931-3422909', 'haownt32', '3245675478', null, '12324324233', '1', null, '304', null, '416', '620000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$6IGS8THmYTCW$kMqFk9BJfCvu4N12s/xeGzYB1evXsZkXXSB5o05n2rA=', null, '658', 'xibeipm@lut.cn', '1', '2017-12-13 07:44:09.944821', '2017-12-13 07:44:10.029025', '西北泡面王', '男', '1990-02-19', '汉族', '中国', '书记', '兰州理工大学', '采矿业', '甘肃省兰州市七里河区兰工坪', '甘肃省', '兰州市', '0931-3422909', 'haownt32', '3245675478', null, '12324324233', '1', null, '304', null, '403', '620000');
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$TsU26bpxgZXn$TLe3N3gPepRdBNYZkiw0UaD0fJTedATr9nhD5BODPmE=', null, '659', 'zhangdiwaa@163.com', '1', '2017-12-28 08:53:49.457094', '2017-12-28 08:53:49.535160', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$6eWosCADlVqQ$ZGDrqjlgCzD50ra/onSLHJ6F1nUy4c9rWFjlyp/dwFQ=', null, '660', 'zhangdiwaa@126.com', '1', '2017-12-28 08:58:58.796684', '2017-12-28 08:58:58.845717', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$ZilwtNWwgFSf$rZC5LdkdzVj5KMMP2nqx411o4nBBJxerX9l4KY9CoYo=', null, '661', 'zhangdiwaa@136.com', '1', '2018-01-03 10:09:04.306807', '2018-01-03 10:09:04.417883', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$aRBISAdR8k8O$nnFpXAVvYkinKY0H1eBUpUQTVyym/SvE+rVUkvX2028=', null, '662', 'zhangdiwaa@135.com', '1', '2018-01-03 10:09:52.618593', '2018-01-03 10:09:52.665624', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$q0DSn7qwCOub$/Wj+o2Bc1xS8QOvfGd8OghdOEaziVF+RuKml4nCJLVQ=', null, '663', 'zhangdiwaa@129.com', '1', '2018-01-14 02:36:22.830231', '2018-01-14 02:36:22.881868', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user` VALUES ('pbkdf2_sha256$36000$zJ6UFjATDffv$LbK9FFykSRf60kvCjiL466rtweO3UwyqMVi9qv51nsQ=', null, '664', 'zhangdiwaa@130.com', '1', '2018-03-09 08:59:54.379483', '2018-03-09 08:59:54.439527', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for `oneapp_user_author`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_user_author`;
CREATE TABLE `oneapp_user_author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_group` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `is_edit` tinyint(1) NOT NULL,
  `is_del` tinyint(1) NOT NULL,
  `am_enable` tinyint(1) NOT NULL,
  `um_search_space` varchar(50) COLLATE utf8_bin NOT NULL,
  `um_search_time` varchar(30) COLLATE utf8_bin NOT NULL,
  `om_search` tinyint(1) NOT NULL,
  `as_enable` tinyint(1) NOT NULL,
  `om_add_del_up` tinyint(1) NOT NULL,
  `om_enable` tinyint(1) NOT NULL,
  `uim_add_del_up` tinyint(1) NOT NULL,
  `uim_enable` tinyint(1) NOT NULL,
  `uim_search` tinyint(1) NOT NULL,
  `um_add` tinyint(1) NOT NULL,
  `um_del_up` tinyint(1) NOT NULL,
  `um_del_up_space` varchar(50) COLLATE utf8_bin NOT NULL,
  `um_del_up_time` varchar(50) COLLATE utf8_bin NOT NULL,
  `um_enable` tinyint(1) NOT NULL,
  `um_is_export_excel` tinyint(1) NOT NULL,
  `um_is_import_excel` tinyint(1) NOT NULL,
  `um_search` tinyint(1) NOT NULL,
  `nuv_enable` tinyint(1) NOT NULL,
  `nuv_search_add_del_up` tinyint(1) NOT NULL,
  `nuv_search_add_del_up_space` varchar(50) COLLATE utf8_bin NOT NULL,
  `usim_enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of oneapp_user_author
-- ----------------------------
INSERT INTO `oneapp_user_author` VALUES ('1', '2017-12-02 17:47:30.443000', '2017-12-02 17:47:35.939000', '管理员', '1', '0', '0', '1', '全校', '全部', '1', '1', '1', '1', '1', '1', '1', '1', '1', '全校', '全部', '1', '1', '1', '1', '1', '1', '专业', '1');
INSERT INTO `oneapp_user_author` VALUES ('2', '2017-12-02 17:51:31.972000', '2017-12-02 17:51:34.976000', '普通用户', '1', '1', '0', '0', '自己', '本年级', '0', '1', '0', '0', '0', '0', '1', '0', '1', '本专业', '前后三年', '0', '1', '1', '1', '0', '0', '专业', '1');
INSERT INTO `oneapp_user_author` VALUES ('3', '2018-03-09 21:31:11.000000', '2018-03-09 21:31:19.000000', '未审核用户', '1', '1', '0', '0', '自己', '本年级', '0', '0', '0', '0', '0', '0', '0', '0', '0', '本专业', '前后三年', '0', '0', '0', '0', '0', '1', '专业', '1');
INSERT INTO `oneapp_user_author` VALUES ('4', '2018-03-09 21:35:32.000000', '2018-03-09 21:35:37.000000', '学院管理员', '1', '1', '0', '1', '本学院', '全部', '1', '1', '1', '1', '0', '0', '0', '1', '1', '本学院', '全部', '1', '1', '1', '1', '1', '1', '专业', '1');

-- ----------------------------
-- Table structure for `oneapp_user_edu`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_user_edu`;
CREATE TABLE `oneapp_user_edu` (
  `edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `user_edu` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `collage_admin_name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `collage_edu_name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `entrance_year` int(11) DEFAULT NULL,
  `grade_year` int(11) DEFAULT NULL,
  `classes` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `collage_admin_id` int(11) DEFAULT NULL,
  `collage_edu_id` int(11) DEFAULT NULL,
  `specialty_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `specialty_name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`edu_id`),
  KEY `oneapp_user_edu_collage_admin_id_b800bd14_fk_oneapp_co` (`collage_admin_id`),
  KEY `oneapp_user_edu_collage_edu_id_ef87576a_fk_oneapp_co` (`collage_edu_id`),
  KEY `oneapp_user_edu_specialty_id_2fe4199a_fk_oneapp_sp` (`specialty_id`),
  KEY `oneapp_user_edu_user_id_95acf3b4_fk_oneapp_user_user_id` (`user_id`),
  CONSTRAINT `oneapp_user_edu_collage_admin_id_b800bd14_fk_oneapp_co` FOREIGN KEY (`collage_admin_id`) REFERENCES `oneapp_collage` (`collage_id`),
  CONSTRAINT `oneapp_user_edu_collage_edu_id_ef87576a_fk_oneapp_co` FOREIGN KEY (`collage_edu_id`) REFERENCES `oneapp_collage` (`collage_id`),
  CONSTRAINT `oneapp_user_edu_specialty_id_2fe4199a_fk_oneapp_sp` FOREIGN KEY (`specialty_id`) REFERENCES `oneapp_specialty` (`specialty_id`),
  CONSTRAINT `oneapp_user_edu_user_id_95acf3b4_fk_oneapp_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `oneapp_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=579 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of oneapp_user_edu
-- ----------------------------
INSERT INTO `oneapp_user_edu` VALUES ('448', '2017-10-11 08:26:13.556910', '2017-10-11 08:26:13.564256', '硕士研究生', '能源与动力工程学院', '能源与动力工程学院', '1988', '1992', '4', '4', '4', '84', '508', '新能源科学与工程（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('449', '2017-10-11 08:26:13.649911', '2017-10-11 08:26:13.661762', '本科', '机电工程学院', '机电工程学院', '1989', '1993', '5', '2', '2', '32', '509', '机械制造工艺与设备（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('450', '2017-10-11 08:26:13.749445', '2017-10-11 08:26:13.756421', '本科', '石油化工学院', '设计艺术学院', '1990', '1994', '6', '3', '8', '180', '510', '工业设计（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('451', '2017-10-11 08:26:13.846543', '2017-10-11 08:26:13.855363', '本科', '电气工程与信息工程学院', '土木工程学院', '1991', '1995', '7', '5', '7', '150', '511', '工程管理（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('452', '2017-10-11 08:26:13.928162', '2017-10-11 08:26:13.935790', '本科', '法学院', '计算机与通信学院', '1992', '1996', '1', '10', '6', '132', '512', '电子计算机应用（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('453', '2017-10-11 08:26:14.022290', '2017-10-11 08:26:14.029014', '本科', '外国语学院', '外国语学院', '1993', '1997', '2', '11', '11', '213', '513', '科技英语（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('454', '2017-10-11 08:26:14.115675', '2017-10-11 08:26:14.122650', '硕士研究生', '计算机与通信学院', '马克思主义学院', '1994', '1998', '3', '6', '15', '241', '514', '马克思主义发展史（硕士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('455', '2017-10-11 08:26:14.211865', '2017-10-11 08:26:14.222064', '本科', '电气工程与信息工程学院', '新能源学院（酒泉）', '1995', '1999', '4', '5', '21', '297', '515', '新能源科学与工程（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('456', '2017-10-11 08:26:14.306482', '2017-10-11 08:26:14.313624', '本科', '机电工程学院', '石油化工学院', '1996', '2000', '5', '2', '3', '49', '516', '过程装备与控制工程（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('457', '2017-10-11 08:26:14.406690', '2017-10-11 08:26:14.417678', '本科', '电气工程与信息工程学院', '电气工程与信息工程学院', '1997', '2001', '6', '5', '5', '107', '517', '电机电器控制（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('458', '2017-10-11 08:26:14.497518', '2017-10-11 08:26:14.506234', '本科', '能源与动力工程学院', '计算机与通信学院', '1998', '2002', '7', '4', '6', '130', '518', '计算机通信（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('459', '2017-10-11 08:26:14.588587', '2017-10-11 08:26:14.595844', '本科', '能源与动力工程学院', '计算机与通信学院', '1999', '2003', '8', '4', '6', '130', '519', '计算机通信（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('460', '2017-10-11 08:26:14.680473', '2017-10-11 08:26:14.687195', '本科', '计算机与通信学院', '设计艺术学院', '2000', '2004', '6', '6', '8', '182', '520', '环境设计（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('461', '2017-10-11 08:26:14.763800', '2017-10-11 08:26:14.771250', '本科', '能源与动力工程学院', '计算机与通信学院', '2001', '2005', '7', '4', '6', '129', '521', '计算机应用（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('462', '2017-10-11 08:26:14.861299', '2017-10-11 08:26:14.868766', '硕士研究生', '石油化工学院', '理学院', '2002', '2006', '1', '3', '12', '218', '522', '固体力学（硕士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('463', '2017-10-11 08:26:14.948031', '2017-10-11 08:26:14.955773', '本科', '电气工程与信息工程学院', '电气工程与信息工程学院', '2003', '2007', '2', '5', '5', '102', '523', '电气工程及其自动化（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('464', '2017-10-11 08:26:15.039025', '2017-10-11 08:26:15.048232', '本科', '计算机与通信学院', '机电工程学院', '2004', '2008', '3', '6', '2', '34', '524', '机电一体化（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('465', '2017-10-11 08:26:15.138598', '2017-10-11 08:26:15.147980', '本科', '计算机与通信学院', '材料科学与工程学院', '2005', '2009', '4', '6', '1', '5', '525', '焊接技术与工程（焊接工艺及设备 ）（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('466', '2017-10-11 08:26:15.232693', '2017-10-11 08:26:15.240691', '硕士研究生', '设计艺术学院', '能源与动力工程学院', '2006', '2010', '5', '8', '4', '85', '526', '流体机械及工程（硕士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('467', '2017-10-11 08:26:15.323390', '2017-10-11 08:26:15.330519', '本科', '计算机与通信学院', '设计艺术学院', '2007', '2011', '6', '6', '8', '175', '527', '建筑学（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('468', '2017-10-11 08:26:15.418424', '2017-10-11 08:26:15.425362', '本科', '理学院', '经济管理学院', '2008', '2012', '7', '12', '9', '190', '528', '会计学（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('469', '2017-10-11 08:26:15.506547', '2017-10-11 08:26:15.515648', '本科', '电气工程与信息工程学院', '设计艺术学院', '1980', '1984', '5', '5', '8', '178', '529', '产品设计（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('470', '2017-10-11 08:26:15.595244', '2017-10-11 08:26:15.602312', '本科', '机电工程学院', '经济管理学院', '1981', '1985', '6', '2', '9', '190', '530', '会计学（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('471', '2017-10-11 08:26:15.679479', '2017-10-11 08:26:15.686297', '本科', '材料科学与工程学院', '法学院', '1982', '1986', '7', '1', '10', '206', '531', '法学（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('472', '2017-10-11 08:26:15.767197', '2017-10-11 08:26:15.774874', '本科', '能源与动力工程学院', '外国语学院', '1983', '1987', '7', '4', '11', '211', '532', '日语（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('473', '2017-10-11 08:26:15.863163', '2017-10-11 08:26:15.871001', '本科', '设计艺术学院', '理学院', '1984', '1988', '1', '8', '12', '214', '533', '信息与计算科学（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('474', '2017-10-11 08:26:15.959372', '2017-10-11 08:26:15.966983', '本科', '经济管理学院', '文学院', '1985', '1989', '5', '9', '14', '237', '534', '汉语言文学（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('475', '2017-10-11 08:26:16.044916', '2017-10-11 08:26:16.052567', '本科', '设计艺术学院', '生命科学与工程学院', '1986', '1990', '6', '8', '13', '229', '535', '制药工程（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('476', '2017-10-11 08:26:16.141790', '2017-10-11 08:26:16.148707', '硕士研究生', '经济管理学院', '马克思主义学院', '1987', '1991', '7', '9', '15', '239', '536', '思想政治教育（硕士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('477', '2017-10-11 08:26:16.227551', '2017-10-11 08:26:16.234768', '本科', '机电工程学院', '继续教育学院', '1988', '1992', '7', '2', '17', '244', '537', '机电一体化（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('478', '2017-10-11 08:26:16.315201', '2017-10-11 08:26:16.322786', '本科', '石油化工学院', '机电工程学院', '1989', '1993', '1', '3', '2', '32', '538', '机械制造工艺与设备（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('479', '2017-10-11 08:26:16.412833', '2017-10-11 08:26:16.420877', '本科', '电气工程与信息工程学院', '石油化工学院', '1990', '1994', '5', '5', '3', '52', '539', '应用化学（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('480', '2017-10-11 08:26:16.497264', '2017-10-11 08:26:16.504361', '本科', '法学院', '能源与动力工程学院', '1991', '1995', '6', '10', '4', '83', '540', '测控技术与仪器（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('481', '2017-10-11 08:26:16.590242', '2017-10-11 08:26:16.597448', '本科', '外国语学院', '电气工程与信息工程学院', '1992', '1996', '7', '11', '5', '105', '541', '工业电气自动化（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('482', '2017-10-11 08:26:16.684843', '2017-10-11 08:26:16.692440', '本科', '计算机与通信学院', '材料科学与工程学院', '1993', '1997', '7', '6', '1', '2', '542', '金属材料工程（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('483', '2017-10-11 08:26:16.782179', '2017-10-11 08:26:16.793076', '本科', '电气工程与信息工程学院', '土木工程学院', '1994', '1998', '1', '5', '7', '146', '543', '建筑环境与设备工程（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('484', '2017-10-11 08:26:16.876901', '2017-10-11 08:26:16.884132', '本科', '机电工程学院', '计算机与通信学院', '1995', '1999', '7', '2', '6', '126', '544', '计算机科学与技术（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('485', '2017-10-11 08:26:16.977342', '2017-10-11 08:26:16.985350', '本科', '电气工程与信息工程学院', '外国语学院', '1996', '2000', '1', '5', '11', '211', '545', '日语（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('486', '2017-10-11 08:26:17.068747', '2017-10-11 08:26:17.075623', '硕士研究生', '新能源学院（酒泉）', '马克思主义学院', '1998', '2002', '5', '21', '15', '239', '546', '思想政治教育（硕士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('487', '2017-10-11 08:26:17.148061', '2017-10-11 08:26:17.155943', '本科', '石油化工学院', '新能源学院（酒泉）', '1999', '2003', '6', '3', '21', '297', '547', '新能源科学与工程（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('488', '2017-10-11 08:26:17.238007', '2017-10-11 08:26:17.246290', '本科', '电气工程与信息工程学院', '石油化工学院', '2000', '2004', '7', '5', '3', '50', '548', '化学工程与工艺（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('489', '2017-10-11 08:26:17.334195', '2017-10-11 08:26:17.344634', '本科', '计算机与通信学院', '电气工程与信息工程学院', '2001', '2005', '7', '6', '5', '101', '549', '电子信息科学与技术（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('490', '2017-10-11 08:26:17.432172', '2017-10-11 08:26:17.439162', '本科', '计算机与通信学院', '计算机与通信学院', '2002', '2006', '7', '6', '6', '125', '550', '通信工程（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('491', '2017-10-11 08:26:17.524536', '2017-10-11 08:26:17.533895', '本科', '设计艺术学院', '计算机与通信学院', '2003', '2007', '1', '8', '6', '126', '551', '计算机科学与技术（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('492', '2017-10-11 08:26:17.622320', '2017-10-11 08:26:17.629451', '本科', '计算机与通信学院', '设计艺术学院', '2004', '2008', '7', '6', '8', '176', '552', '城市规划（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('493', '2017-10-11 08:26:17.717557', '2017-10-11 08:26:17.724457', '本科', '设计艺术学院', '计算机与通信学院', '2005', '2009', '1', '8', '6', '126', '553', '计算机科学与技术（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('494', '2017-10-11 08:26:17.815734', '2017-10-11 08:26:17.824058', '本科', '经济管理学院', '理学院', '2006', '2010', '5', '9', '12', '215', '554', '应用物理学（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('495', '2017-10-11 08:26:17.913412', '2017-10-11 08:26:17.920899', '本科', '设计艺术学院', '电气工程与信息工程学院', '2007', '2011', '6', '8', '5', '102', '555', '电气工程及其自动化（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('496', '2017-10-11 08:26:18.004610', '2017-10-11 08:26:18.012122', '本科', '经济管理学院', '机电工程学院', '2008', '2012', '7', '9', '2', '30', '556', '机械设计制造及其自动化（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('497', '2017-10-11 08:26:18.101640', '2017-10-11 08:26:18.108971', '本科', '法学院', '材料科学与工程学院', '1980', '2013', '1', '10', '1', '1', '557', '冶金工程（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('498', '2017-10-11 08:26:18.187061', '2017-10-11 08:26:18.194191', '本科', '外国语学院', '能源与动力工程学院', '1981', '2014', '2', '11', '4', '81', '558', '机械电子工程（液压）（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('499', '2017-10-11 08:26:18.283133', '2017-10-11 08:26:18.291043', '本科', '理学院', '设计艺术学院', '1982', '2015', '3', '12', '8', '176', '559', '城市规划（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('500', '2017-10-11 08:26:18.383236', '2017-10-11 08:26:18.391547', '专科', '理学院', '经济管理学院', '1983', '2016', '4', '12', '9', '187', '560', '工业会计（专科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('501', '2017-10-11 08:26:18.478342', '2017-10-11 08:26:18.485099', '本科', '计算机与通信学院', '计算机与通信学院', '1984', '2017', '5', '6', '6', '126', '561', '计算机科学与技术（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('502', '2017-10-11 08:26:18.569839', '2017-10-11 08:26:18.577678', '本科', '设计艺术学院', '设计艺术学院', '2004', '2008', '6', '8', '8', '176', '562', '城市规划（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('503', '2017-10-11 08:26:18.660770', '2017-10-11 08:26:18.668981', '本科', '计算机与通信学院', '计算机与通信学院', '2005', '2009', '7', '6', '6', '126', '563', '计算机科学与技术（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('504', '2017-10-11 08:26:18.763532', '2017-10-11 08:26:18.770763', '本科', '理学院', '理学院', '2006', '2010', '5', '12', '12', '215', '564', '应用物理学（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('505', '2017-10-11 08:26:18.858578', '2017-10-11 08:26:18.868211', '本科', '石油化工学院', '理学院', '2007', '2011', '6', '3', '12', '215', '565', '应用物理学（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('506', '2017-10-11 08:26:18.956340', '2017-10-11 08:26:18.963043', '本科', '能源与动力工程学院', '理学院', '2008', '2012', '7', '4', '12', '214', '566', '信息与计算科学（本科专业）');
INSERT INTO `oneapp_user_edu` VALUES ('508', '2017-10-12 02:31:03.091772', '2017-10-12 02:31:03.105093', '硕士研究生', '计算机与通信学院', '计算机与通信学院', '2010', '2013', '2', '6', '6', '135', '570', '计算机系统结构（硕士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('534', '2017-10-13 10:31:54.981006', '2017-10-13 10:31:54.982878', null, null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `oneapp_user_edu` VALUES ('535', '2017-10-13 10:33:16.160368', '2017-10-13 10:33:16.161433', '博士研究生', '计算机与通信学院', '计算机与通信学院', '2012', '2016', '1', null, null, null, null, '制造业信息化系统（博士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('536', '2017-10-13 10:34:52.726623', '2017-10-13 10:34:52.727230', '博士研究生', '计算机与通信学院', '计算机与通信学院', '2012', '2016', '1', null, null, null, null, '制造业信息化系统（博士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('538', '2017-10-13 10:38:48.724486', '2017-10-13 10:38:48.732583', '博士研究生', '计算机与通信学院', '计算机与通信学院', '2012', '2016', '1', '6', '6', '142', null, '制造业信息化系统（博士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('539', '2017-10-13 10:39:53.924938', '2017-10-13 10:39:53.932316', '博士研究生', '计算机与通信学院', '计算机与通信学院', '2012', '2016', '1', '6', '6', '142', null, '制造业信息化系统（博士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('540', '2017-10-13 10:41:11.946951', '2017-10-13 10:41:11.964073', '博士研究生', '计算机与通信学院', '计算机与通信学院', '2012', '2016', '1', '6', '6', '142', null, '制造业信息化系统（博士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('550', '2017-10-13 10:46:45.321596', '2017-10-13 10:46:45.322081', '', '', '', null, null, null, null, null, null, null, '');
INSERT INTO `oneapp_user_edu` VALUES ('560', '2017-10-16 01:59:30.332777', '2017-10-16 01:59:30.344899', '博士研究生', '计算机与通信学院', '计算机与通信学院', '2016', null, '1', '6', '6', '142', '637', '制造业信息化系统（博士专业）');
INSERT INTO `oneapp_user_edu` VALUES ('575', '2017-11-17 08:54:23.884102', '2017-11-17 08:54:23.884763', '专科', '计算机与通信学院', '技术工程学院', '1990', null, '1班', '6', '18', '259', '656', null);
INSERT INTO `oneapp_user_edu` VALUES ('576', '2017-11-17 08:54:23.895072', '2017-11-17 08:54:23.895557', '博士研究生', '材料科学与工程学院', '土木工程学院', '1988', '1992', '12班', '1', '7', '171', '656', null);
INSERT INTO `oneapp_user_edu` VALUES ('577', '2017-12-13 07:44:09.914171', '2017-12-13 07:44:09.928677', '', '', '', '2013', null, '', null, null, null, '657', '');
INSERT INTO `oneapp_user_edu` VALUES ('578', '2017-12-13 07:44:10.033691', '2017-12-13 07:44:10.047437', '博士研究生', '计算机与通信学院', '计算机与通信学院', '2016', null, '1', '6', '6', '142', '658', '制造业信息化系统（博士专业）');

-- ----------------------------
-- Table structure for `oneapp_user_history`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_user_history`;
CREATE TABLE `oneapp_user_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `user_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `user_gender` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `user_birthday` datetime(6) DEFAULT NULL,
  `user_nation` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `user_post` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `user_workunit` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `user_workplace` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `user_province` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `user_city` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `user_officephone` bigint(20) DEFAULT NULL,
  `user_wechat` bigint(20) DEFAULT NULL,
  `user_qq` bigint(20) DEFAULT NULL,
  `user_email` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_cellphone` bigint(20) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `industrial_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`history_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `city_id` (`city_id`),
  UNIQUE KEY `industrial_id` (`industrial_id`),
  UNIQUE KEY `province_id` (`province_id`),
  CONSTRAINT `oneapp_user_history_city_id_d442bf17_fk_oneapp_d_city_city_id` FOREIGN KEY (`city_id`) REFERENCES `oneapp_d_city` (`city_id`),
  CONSTRAINT `oneapp_user_history_industrial_id_6abf465f_fk_oneapp_d_` FOREIGN KEY (`industrial_id`) REFERENCES `oneapp_d_industrial` (`industrial_id`),
  CONSTRAINT `oneapp_user_history_province_id_50d36169_fk_oneapp_d_` FOREIGN KEY (`province_id`) REFERENCES `oneapp_d_province` (`n_province_id`),
  CONSTRAINT `oneapp_user_history_user_id_54ba51a8_fk_oneapp_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `oneapp_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of oneapp_user_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oneapp_user_organization`
-- ----------------------------
DROP TABLE IF EXISTS `oneapp_user_organization`;
CREATE TABLE `oneapp_user_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oneapp_user_organization_user_id_organization_id_ec4a13ca_uniq` (`user_id`,`organization_id`),
  KEY `oneapp_user_organiza_organization_id_ef223c90_fk_oneapp_or` (`organization_id`),
  CONSTRAINT `oneapp_user_organiza_organization_id_ef223c90_fk_oneapp_or` FOREIGN KEY (`organization_id`) REFERENCES `oneapp_organization` (`org_id`),
  CONSTRAINT `oneapp_user_organization_user_id_d9d42e1e_fk_oneapp_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `oneapp_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of oneapp_user_organization
-- ----------------------------
