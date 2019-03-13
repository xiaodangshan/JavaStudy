﻿/**国民经济行业**/
DROP TABLE IF EXISTS `D_industrial`;
CREATE TABLE `D_industrial` (
  `industrial_id` varchar(32) NOT NULL COMMENT '主键',
  `grand_code` varchar(1) default NULL COMMENT '顶级代码',
  `grand_name` varchar(32) default NULL COMMENT '顶级名称',
  `father_code` varchar(2) default NULL COMMENT '上级代码',
  `father_name` varchar(32) default NULL COMMENT '上级名称',
  `industrial_code` varchar(4) not NULL COMMENT '国民经济行业代码',
  `industrial_name` varchar(32) not NULL COMMENT '国民经济行业名称',
  `industrial_desc` varchar(200) default NULL COMMENT '描述',
  `create_date` datetime default NULL COMMENT '创建时间',
  `update_date` datetime default NULL COMMENT '修改时间',
  PRIMARY KEY  (`industrial_id`),
  UNIQUE KEY `industrial_idX_D_industrial` (`industrial_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (401,NULL,NULL,NULL,NULL,'A','农、林、牧、渔业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (402,NULL,NULL,NULL,NULL,'C','制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (403,NULL,NULL,NULL,NULL,'B','采矿业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (404,NULL,NULL,NULL,NULL,'D','电力、燃气及水的生产和供应业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (405,NULL,NULL,NULL,NULL,'E','建筑业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (406,NULL,NULL,NULL,NULL,'F','交通运输、仓储和邮政业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (407,NULL,NULL,NULL,NULL,'G','信息传输、计算机服务和软件业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (408,NULL,NULL,NULL,NULL,'H','批发和零售业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (409,NULL,NULL,NULL,NULL,'I','住宿和餐饮业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (410,NULL,NULL,NULL,NULL,'J','金融业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (411,NULL,NULL,NULL,NULL,'K','房地产业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (412,NULL,NULL,NULL,NULL,'L','租赁和商务服务业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (413,NULL,NULL,NULL,NULL,'M','科学研究、技术服务和地质勘查业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (414,NULL,NULL,NULL,NULL,'N','水利、环境和公共设施管理业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (415,NULL,NULL,NULL,NULL,'O','居民服务和其他服务业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (416,NULL,NULL,NULL,NULL,'P','教育',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (417,NULL,NULL,NULL,NULL,'Q','卫生、社会保障和社会福利业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (418,NULL,NULL,NULL,NULL,'R','文化、体育和娱乐业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (419,NULL,NULL,NULL,NULL,'S','公共管理和社会组织',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (420,NULL,NULL,NULL,NULL,'T','国际组织',NULL);

INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (501,NULL,NULL,'A','农、林、牧、渔业','A01','农业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (502,NULL,NULL,'A','农、林、牧、渔业','A02','林业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (503,NULL,NULL,'A','农、林、牧、渔业','A03','畜牧业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (504,NULL,NULL,'A','农、林、牧、渔业','A04','渔业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (505,NULL,NULL,'A','农、林、牧、渔业','A05','农、林、牧、渔服务业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (506,NULL,NULL,'B','采矿业','B06','煤炭开采和洗选业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (507,NULL,NULL,'B','采矿业','B07','石油和天然气开采业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (508,NULL,NULL,'B','采矿业','B08','黑色金属矿采选业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (509,NULL,NULL,'B','采矿业','B09','有色金属矿采选业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (510,NULL,NULL,'B','采矿业','B10','非金属矿采选业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (511,NULL,NULL,'B','采矿业','B11','其他采矿业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (512,NULL,NULL,'C','制造业','C13','农副食品加工业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (513,NULL,NULL,'C','制造业','C14','食品制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (514,NULL,NULL,'C','制造业','C15','饮料制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (515,NULL,NULL,'C','制造业','C16','烟草制品业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (516,NULL,NULL,'C','制造业','C17','纺织业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (517,NULL,NULL,'C','制造业','C18','纺织服装、鞋、帽制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (518,NULL,NULL,'C','制造业','C19','皮革、毛皮、羽毛(绒)及其制品业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (519,NULL,NULL,'C','制造业','C20','木材加工及木、竹、藤、棕、草制品业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (520,NULL,NULL,'C','制造业','C21','家具制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (521,NULL,NULL,'C','制造业','C22','造纸及纸制品业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (522,NULL,NULL,'C','制造业','C23','印刷业和记录媒介的复制',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (523,NULL,NULL,'C','制造业','C24','文教体育用品制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (524,NULL,NULL,'C','制造业','C25','石油加工、炼焦及核燃料加工业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (525,NULL,NULL,'C','制造业','C26','化学原料及化学制品制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (526,NULL,NULL,'C','制造业','C27','医药制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (527,NULL,NULL,'C','制造业','C28','化学纤维制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (528,NULL,NULL,'C','制造业','C29','橡胶制品业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (529,NULL,NULL,'C','制造业','C30','塑料制品业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (530,NULL,NULL,'C','制造业','C31','非金属矿物制品业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (531,NULL,NULL,'C','制造业','C32','黑色金属冶炼及压延加工业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (532,NULL,NULL,'C','制造业','C33','有色金属冶炼及压延加工业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (533,NULL,NULL,'C','制造业','C34','金属制品业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (534,NULL,NULL,'C','制造业','C35','通用设备制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (535,NULL,NULL,'C','制造业','C36','专用设备制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (536,NULL,NULL,'C','制造业','C37','交通运输设备制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (537,NULL,NULL,'C','制造业','C39','电气机械及器材制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (538,NULL,NULL,'C','制造业','C40','通信设备、计算机及其他电子设备制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (539,NULL,NULL,'C','制造业','C41','仪器仪表及文化、办公用机械制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (540,NULL,NULL,'C','制造业','C42','工艺品及其他制造业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (541,NULL,NULL,'C','制造业','C43','废弃资源和废旧材料回收加工业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (542,NULL,NULL,'D','电力、燃气及水的生产和供应业','D44','电力、热力的生产和供应业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (543,NULL,NULL,'D','电力、燃气及水的生产和供应业','D45','燃气生产和供应业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (544,NULL,NULL,'D','电力、燃气及水的生产和供应业','D46','水的生产和供应业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (545,NULL,NULL,'E','建筑业','E47','房屋和土木工程建筑业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (546,NULL,NULL,'E','建筑业','E48','建筑安装业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (547,NULL,NULL,'E','建筑业','E49','建筑装饰业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (548,NULL,NULL,'E','建筑业','E50','其他建筑业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (549,NULL,NULL,'F','交通运输、仓储和邮政业','F51','铁路运输业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (550,NULL,NULL,'F','交通运输、仓储和邮政业','F52','道路运输业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (551,NULL,NULL,'F','交通运输、仓储和邮政业','F53','城市公共交通业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (552,NULL,NULL,'F','交通运输、仓储和邮政业','F54','水上运输业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (553,NULL,NULL,'F','交通运输、仓储和邮政业','F55','航空运输业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (554,NULL,NULL,'F','交通运输、仓储和邮政业','F56','管道运输业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (555,NULL,NULL,'F','交通运输、仓储和邮政业','F57','装卸搬运和其他运输服务业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (556,NULL,NULL,'F','交通运输、仓储和邮政业','F58','仓储业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (557,NULL,NULL,'F','交通运输、仓储和邮政业','F59','邮政业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (558,NULL,NULL,'G','信息传输、计算机服务和软件业','G60','电信和其他信息传输服务业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (559,NULL,NULL,'G','信息传输、计算机服务和软件业','G61','计算机服务业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (560,NULL,NULL,'G','信息传输、计算机服务和软件业','G62','软件业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (561,NULL,NULL,'H','批发和零售业','H63','批发业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (562,NULL,NULL,'H','批发和零售业','H65','零售业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (563,NULL,NULL,'I','住宿和餐饮业','I66','住宿业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (564,NULL,NULL,'I','住宿和餐饮业','I67','餐饮业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (565,NULL,NULL,'J','金融业','J68','银行业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (566,NULL,NULL,'J','金融业','J69','证券业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (567,NULL,NULL,'J','金融业','J70','保险业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (568,NULL,NULL,'J','金融业','J71','其他金融活动',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (569,NULL,NULL,'K','房地产业','K72','房地产业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (570,NULL,NULL,'L','租赁和商务服务业','L73','租赁业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (571,NULL,NULL,'L','租赁和商务服务业','L74','商务服务业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (572,NULL,NULL,'M','科学研究、技术服务和地质勘查业','M75','研究与试验发展',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (573,NULL,NULL,'M','科学研究、技术服务和地质勘查业','M76','专业技术服务业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (574,NULL,NULL,'M','科学研究、技术服务和地质勘查业','M77','科技交流和推广服务业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (575,NULL,NULL,'M','科学研究、技术服务和地质勘查业','M78','地质勘查业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (576,NULL,NULL,'N','水利、环境和公共设施管理业','N79','水利管理业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (577,NULL,NULL,'N','水利、环境和公共设施管理业','N80','环境管理业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (578,NULL,NULL,'N','水利、环境和公共设施管理业','N81','公共设施管理业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (579,NULL,NULL,'O','居民服务和其他服务业','O82','居民服务业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (580,NULL,NULL,'O','居民服务和其他服务业','O83','其他服务业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (581,NULL,NULL,'P','教育','P84','教育',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (582,NULL,NULL,'Q','卫生、社会保障和社会福利业','Q85','卫生',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (583,NULL,NULL,'Q','卫生、社会保障和社会福利业','Q86','社会保障业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (584,NULL,NULL,'Q','卫生、社会保障和社会福利业','Q87','社会福利业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (585,NULL,NULL,'R','文化、体育和娱乐业','R88','新闻出版业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (586,NULL,NULL,'R','文化、体育和娱乐业','R89','广播、电视、电影和音像业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (587,NULL,NULL,'R','文化、体育和娱乐业','R90','文化艺术业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (588,NULL,NULL,'R','文化、体育和娱乐业','R91','体育',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (589,NULL,NULL,'R','文化、体育和娱乐业','R92','娱乐业',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (590,NULL,NULL,'S','公共管理和社会组织','S93','中国共产党机关',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (591,NULL,NULL,'S','公共管理和社会组织','S94','国家机构',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (592,NULL,NULL,'S','公共管理和社会组织','S95','人民政协和民主党派',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (593,NULL,NULL,'S','公共管理和社会组织','S96','群众团体、社会团体和宗教组织',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (594,NULL,NULL,'S','公共管理和社会组织','S97','基层群众自治组织',NULL);
INSERT INTO `D_industrial` (`industrial_id`,`grand_code`,`grand_name`,`father_code`,`father_name`,`industrial_code`,`industrial_name`,`industrial_desc`) VALUES (595,NULL,NULL,'T','国际组织','T98','国际组织',NULL);



insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (287, 'J', '金融业', '71', '其他金融活动', 'J712', '金融租赁', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (288, 'J', '金融业', '71', '其他金融活动', 'J713', '财务公司', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (289, 'J', '金融业', '71', '其他金融活动', 'J714', '邮政储蓄', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (290, 'J', '金融业', '71', '其他金融活动', 'J715', '典当', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (291, 'J', '金融业', '71', '其他金融活动', 'J719', '其他未列明的金融活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (292, 'K', '房地产业', '72', '房地产业', 'K721', '房地产开发经营', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (293, 'K', '房地产业', '72', '房地产业', 'K722', '物业管理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (294, 'K', '房地产业', '72', '房地产业', 'K723', '房地产中介服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (295, 'K', '房地产业', '72', '房地产业', 'K729', '其他房地产活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (296, 'L', '租赁和商务服务业', '73', '租赁业', 'L731', '机械设备租赁', '包括汽车租赁，农业机械租赁，建筑工程机械与设备租赁，计算机及通讯设备租赁，其他机械与设备租赁。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (297, 'L', '租赁和商务服务业', '73', '租赁业', 'L732', '文化及日用品出租', '包括图书及音像制品出租，其他文化及日用品出租。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (298, 'L', '租赁和商务服务业', '74', '商务服务业', 'L741', '企业管理服务', '包括企业管理机构，投资与资产管理，其他企业管理服务。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (299, 'L', '租赁和商务服务业', '74', '商务服务业', 'L742', '法律服务', '包括律师及相关的法律服务，公证服务，其他法律服务。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (300, 'L', '租赁和商务服务业', '74', '商务服务业', 'L743', '咨询与调查', '包括会计、审计及税务服务，市场调查，社会经济咨询，其他专业咨询。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (301, 'L', '租赁和商务服务业', '74', '商务服务业', 'L744', '广告业', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (302, 'L', '租赁和商务服务业', '74', '商务服务业', 'L745', '知识产权服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (303, 'L', '租赁和商务服务业', '74', '商务服务业', 'L746', '职业中介服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (304, 'L', '租赁和商务服务业', '74', '商务服务业', 'L747', '市场管理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (305, 'L', '租赁和商务服务业', '74', '商务服务业', 'L748', '旅行社', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (306, 'L', '租赁和商务服务业', '74', '商务服务业', 'L749', '其他商务服务', '包括会议及展览服务，包装服务，保安服务，办公服务，其他未列明的商务服务。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (307, 'M', '科学研究、技术服务和地质勘查业', '75', '研究与试验发展', 'M751', '自然科学研究与试验发展', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (308, 'M', '科学研究、技术服务和地质勘查业', '75', '研究与试验发展', 'M752', '工程和技术研究与试验发展', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (309, 'M', '科学研究、技术服务和地质勘查业', '75', '研究与试验发展', 'M753', '农业科学研究与试验发展', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (310, 'M', '科学研究、技术服务和地质勘查业', '75', '研究与试验发展', 'M754', '医学研究与试验发展', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (311, 'M', '科学研究、技术服务和地质勘查业', '75', '研究与试验发展', 'M755', '社会人文科学研究与试验发展', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (312, 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M761', '气象服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (313, 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M762', '地震服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (314, 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M763', '海洋服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (315, 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M764', '测绘服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (316, 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M765', '技术检测', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (317, 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M766', '环境监测', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (318, 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M767', '工程技术与规划管理', '包括工程管理服务，工程勘察设计，规划管理。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (319, 'M', '科学研究、技术服务和地质勘查业', '76', '专业技术服务业', 'M769', '其他专业技术服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (320, 'M', '科学研究、技术服务和地质勘查业', '77', '科技交流和推广服务业', 'M771', '技术推广服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (321, 'M', '科学研究、技术服务和地质勘查业', '77', '科技交流和推广服务业', 'M772', '科技中介服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (322, 'M', '科学研究、技术服务和地质勘查业', '77', '科技交流和推广服务业', 'M779', '其他科技服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (323, 'M', '科学研究、技术服务和地质勘查业', '78', '地质勘查业', 'M781', '矿产地质勘查', '包括能源矿产地质勘查，固体矿产地质勘查，其他矿产地质勘查。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (324, 'M', '科学研究、技术服务和地质勘查业', '78', '地质勘查业', 'M782', '基础地质勘查', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (325, 'M', '科学研究、技术服务和地质勘查业', '78', '地质勘查业', 'M783', '地质勘查技术服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (326, 'N', '水利、环境和公共设施管理业', '79', '水利管理业', 'N791', '防洪管理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (327, 'N', '水利、环境和公共设施管理业', '79', '水利管理业', 'N792', '水资源管理', '包括水库管理，调水、引水管理，其他水资源管理。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (328, 'N', '水利、环境和公共设施管理业', '79', '水利管理业', 'N799', '其他水利管理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (329, 'N', '水利、环境和公共设施管理业', '80', '环境管理业', 'N801', '自然保护', '包括自然保护区管理，野生动植物保护，其他自然保护。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (330, 'N', '水利、环境和公共设施管理业', '80', '环境管理业', 'N802', '环境治理', '包括城市市容管理，城市环境卫生管理，水污染治理，危险废物治理，其他环境治理。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (331, 'N', '水利、环境和公共设施管理业', '81', '公共设施管理业', 'N813', '游览景区管理', '包括风景名胜区管理，公园管理，其他游览景区管理。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (332, 'O', '居民服务和其他服务业', '82', '居民服务业', 'O821', '家庭服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (333, 'O', '居民服务和其他服务业', '82', '居民服务业', 'O822', '托儿所', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (334, 'O', '居民服务和其他服务业', '82', '居民服务业', 'O823', '洗染服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (335, 'O', '居民服务和其他服务业', '82', '居民服务业', 'O824', '理发及美容保健服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (336, 'O', '居民服务和其他服务业', '82', '居民服务业', 'O825', '洗浴服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (337, 'O', '居民服务和其他服务业', '82', '居民服务业', 'O826', '婚姻服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (338, 'O', '居民服务和其他服务业', '82', '居民服务业', 'O827', '殡葬服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (339, 'O', '居民服务和其他服务业', '82', '居民服务业', 'O828', '摄影扩印服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (340, 'O', '居民服务和其他服务业', '82', '居民服务业', 'O829', '其他居民服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (341, 'O', '居民服务和其他服务业', '83', '其他服务业', 'O831', '修理与维护', '包括汽车、摩托车维护与保养，办公设备维修，家用电器修理，其他日用品修理。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (342, 'O', '居民服务和其他服务业', '83', '其他服务业', 'O832', '清洁服务', '包括建筑物清洁服务，其他清洁服务。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (343, 'O', '居民服务和其他服务业', '83', '其他服务业', 'O839', '其他未列明的服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (344, 'P', '教育', '84', '教育', 'P841', '学前教育', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (345, 'P', '教育', '84', '教育', 'P842', '初等教育', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (346, 'P', '教育', '84', '教育', 'P843', '中等教育', '包括初中教育，高中教育，中等专业教育，职业中学教育，技工学校教育，其他中等教育。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (347, 'P', '教育', '84', '教育', 'P844', '高等教育', '包括普通高等教育，成人高等教育。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (348, 'P', '教育', '84', '教育', 'P849', '其他教育', '包括职业技能培训，特殊教育，其他未列明的教育。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (349, 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q851', '医院', '包括综合医院，中医医院，中西医结合医院，民族医院，专科医院，疗养院。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (350, 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q852', '卫生院及社区医疗活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (351, 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q853', '门诊部医疗活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (352, 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q854', '计划生育技术服务活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (353, 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q855', '妇幼保健活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (354, 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q856', '专科疾病防治活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (355, 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q857', '疾病预防控制及防疫活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (356, 'Q', '卫生、社会保障和社会福利业', '85', '卫生', 'Q859', '其他卫生活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (357, 'Q', '卫生、社会保障和社会福利业', '86', '社会保障业', 'Q860', '社会保障业', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (358, 'Q', '卫生、社会保障和社会福利业', '87', '社会福利业', 'Q871', '提供住宿的社会福利', '包括干部休养所，收养收容服务。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (359, 'Q', '卫生、社会保障和社会福利业', '87', '社会福利业', 'Q872', '不提供住宿的社会福利', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (360, 'R', '文化、体育和娱乐业', '88', '新闻出版业', 'R881', '新闻业', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (361, 'R', '文化、体育和娱乐业', '88', '新闻出版业', 'R882', '出版业', '包括图书出版，报纸出版，期刊出版，音像制品出版，电子出版物出版，其他出版。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (362, 'R', '文化、体育和娱乐业', '89', '广播、电视、电影和音像业', 'R891', '广播', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (363, 'R', '文化、体育和娱乐业', '89', '广播、电视、电影和音像业', 'R892', '电视', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (364, 'R', '文化、体育和娱乐业', '89', '广播、电视、电影和音像业', 'R893', '电影', '包括电影制作与发行，电影放映。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (365, 'R', '文化、体育和娱乐业', '89', '广播、电视、电影和音像业', 'R894', '音像制作', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (366, 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R901', '文艺创作与表演', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (367, 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R902', '艺术表演场馆', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (368, 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R903', '图书馆与档案馆', '包括图书馆，档案馆。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (369, 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R904', '文物及文化保护', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (370, 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R905', '博物馆', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (371, 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R906', '烈士陵园、纪念馆', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (372, 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R907', '群众文化活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (373, 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R908', '文化艺术经纪代理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (374, 'R', '文化、体育和娱乐业', '90', '文化艺术业', 'R909', '其他文化艺术', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (375, 'R', '文化、体育和娱乐业', '91', '体育', 'R911', '体育组织', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (376, 'R', '文化、体育和娱乐业', '91', '体育', 'R912', '体育场馆', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (377, 'R', '文化、体育和娱乐业', '91', '体育', 'R919', '其他体育', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (378, 'R', '文化、体育和娱乐业', '92', '娱乐业', 'R921', '室内娱乐活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (379, 'R', '文化、体育和娱乐业', '92', '娱乐业', 'R922', '游乐园', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (380, 'R', '文化、体育和娱乐业', '92', '娱乐业', 'R923', '休闲健身娱乐活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (381, 'R', '文化、体育和娱乐业', '92', '娱乐业', 'R929', '其他娱乐活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (1, 'A', '农、林、牧、渔业', '01', '农业', 'A011', '谷物及其他作物的种植', '包括谷物、薯类、油料、豆类、棉花、麻类、糖料、烟草及其他作物的种植。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (2, 'A', '农、林、牧、渔业', '01', '农业', 'A012', '蔬菜、园艺作物的种植', '包括蔬菜、花卉及其他园艺作物的种植。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (3, 'A', '农、林、牧、渔业', '01', '农业', 'A013', '水果、坚果、饮料和香料作物的种植', '包括水果、坚果的种植，茶及其他饮料作物的种植，香料作物的种植。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (4, 'A', '农、林、牧、渔业', '01', '农业', 'A014', '中药材的种植', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (5, 'A', '农、林、牧、渔业', '02', '林业', 'A021', '林木的培育和种植', '包括育种和育苗，造林，林木的抚育和管理。');
commit;

insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (6, 'A', '农、林、牧、渔业', '02', '林业', 'A022', '木材和竹材的采运', '包括木材的采运，竹材的采运。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (7, 'A', '农、林、牧、渔业', '02', '林业', 'A023', '林产品的采集', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (8, 'A', '农、林、牧、渔业', '03', '畜牧业', 'A031', '牲畜的饲养', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (9, 'A', '农、林、牧、渔业', '03', '畜牧业', 'A032', '猪的饲养', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (10, 'A', '农、林、牧、渔业', '03', '畜牧业', 'A033', '家禽的饲养', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (11, 'A', '农、林、牧、渔业', '03', '畜牧业', 'A034', '狩猎和捕捉动物', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (12, 'A', '农、林、牧、渔业', '03', '畜牧业', 'A039', '其他畜牧业', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (13, 'A', '农、林、牧、渔业', '04', '渔业', 'A041', '海洋渔业', '包括海水养殖，海洋捕捞。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (14, 'A', '农、林、牧、渔业', '04', '渔业', 'A042', '内陆渔业', '包括内陆养殖，内陆捕捞。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (15, 'A', '农、林、牧、渔业', '05', '农、林、牧、渔服务业', 'A051', '农业服务业', '包括灌溉服务，农产品初加工服务，其他农业服务。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (16, 'A', '农、林、牧、渔业', '05', '农、林、牧、渔服务业', 'A052', '林业服务业', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (17, 'A', '农、林、牧、渔业', '05', '农、林、牧、渔服务业', 'A053', '畜牧服务业', '包括兽医服务，其他畜牧服务。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (18, 'A', '农、林、牧、渔业', '05', '农、林、牧、渔服务业', 'A054', '渔业服务业', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (19, 'B', '采矿业', '06', '煤炭开采和洗选业', 'B061', '烟煤和无烟煤的开采洗选', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (20, 'B', '采矿业', '06', '煤炭开采和洗选业', 'B062', '褐煤的开采洗选', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (21, 'B', '采矿业', '06', '煤炭开采和洗选业', 'B069', '其他煤炭采选', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (22, 'B', '采矿业', '07', '石油和天然气开采业', 'B071', '天然原油和天然气开采', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (23, 'B', '采矿业', '07', '石油和天然气开采业', 'B079', '与石油和天然气开采有关的服务活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (24, 'B', '采矿业', '08', '黑色金属矿采选业', 'B081', '铁矿采选', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (25, 'B', '采矿业', '08', '黑色金属矿采选业', 'B089', '其他黑色金属矿采选', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (26, 'B', '采矿业', '09', '有色金属矿采选业', 'B091', '常用有色金属矿采选', '包括铜矿采选，铅锌矿采选，镍钴矿采选，锡矿采选，锑矿采选，铝矿采选，镁矿采选，其他常用有色金属矿采选。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (27, 'B', '采矿业', '09', '有色金属矿采选业', 'B092', '贵金属矿采选', '包括金矿采选，银矿采选，其他贵金属矿采选。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (28, 'B', '采矿业', '09', '有色金属矿采选业', 'B093', '稀有稀土金属矿采选', '包括钨钼矿采选，稀土金属矿采选，放射性金属矿采选，其他稀有金属矿采选。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (29, 'B', '采矿业', '10', '非金属矿采选业', 'B101', '土砂石开采', '包括石灰石、石膏开采，建筑装饰用石开采，耐火土石开采，粘土及其他土砂石开采。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (30, 'B', '采矿业', '10', '非金属矿采选业', 'B102', '化学矿采选', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (31, 'B', '采矿业', '10', '非金属矿采选业', 'B103', '采盐', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (32, 'B', '采矿业', '10', '非金属矿采选业', 'B109', '石棉及其他非金属矿采选', '包括石棉、云母矿采选，石墨、滑石采选，宝石、玉石开采，其他非金属矿采选。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (33, 'B', '采矿业', '11', '其他采矿业', 'B110', '其他采矿业', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (34, 'C', '制造业', '13', '农副食品加工业', 'C131', '谷物磨制', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (35, 'C', '制造业', '13', '农副食品加工业', 'C132', '饲料加工', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (36, 'C', '制造业', '13', '农副食品加工业', 'C133', '植物油加工', '包括食用植物油加工，非食用植物油加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (37, 'C', '制造业', '13', '农副食品加工业', 'C134', '制糖', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (38, 'C', '制造业', '13', '农副食品加工业', 'C135', '屠宰及肉类加工', '包括畜禽屠宰，肉制品及副产品加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (39, 'C', '制造业', '13', '农副食品加工业', 'C136', '水产品加工', '包括水产品冷冻加工，鱼糜制品及水产品干腌制加工，水产饲料制造，鱼油提取及制品的制造，其他水产品加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (40, 'C', '制造业', '13', '农副食品加工业', 'C137', '蔬菜、水果和坚果加工', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (41, 'C', '制造业', '13', '农副食品加工业', 'C139', '其他农副食品加工', '包括淀粉及淀粉制品的制造，豆制品制造，蛋品加工，其他未列明的农副食品加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (42, 'C', '制造业', '14', '食品制造业', 'C141', '焙烤食品制造', '包括糕点、面包制造，饼干及其他焙烤食品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (43, 'C', '制造业', '14', '食品制造业', 'C142', '糖果、巧克力及蜜饯制造', '包括糖果、巧克力制造，蜜饯制作。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (44, 'C', '制造业', '14', '食品制造业', 'C143', '方便食品制造', '包括米、面制品制造，速冻食品制造，方便面及其他方便食品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (45, 'C', '制造业', '14', '食品制造业', 'C144', '液体乳及乳制品制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (46, 'C', '制造业', '14', '食品制造业', 'C145', '罐头制造', '包括肉、禽类罐头制造，水产品罐头制造，蔬菜、水果罐头制造，其他罐头食品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (47, 'C', '制造业', '14', '食品制造业', 'C146', '调味品、发酵制品制造', '包括味精制造，酱油、食醋及类似制品的制造，其他调味品、发酵制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (48, 'C', '制造业', '14', '食品制造业', 'C149', '其他食品制造', '包括营养、保健食品制造，冷冻饮品及食用冰制造，盐加工，食品及饲料添加剂制造，其他未列明的食品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (49, 'C', '制造业', '15', '饮料制造业', 'C151', '酒精制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (51, 'C', '制造业', '15', '饮料制造业', 'C153', '软饮料制造', '包括碳酸饮料制造，瓶（罐）装饮用水制造，果菜汁及果菜汁饮料制造，含乳饮料和植物蛋白饮料制造，固体饮料制造，茶饮料及其他软饮料制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (52, 'C', '制造业', '15', '饮料制造业', 'C154', '精制茶加工', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (53, 'C', '制造业', '16', '烟草制品业', 'C161', '烟叶复烤', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (54, 'C', '制造业', '16', '烟草制品业', 'C162', '卷烟制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (55, 'C', '制造业', '16', '烟草制品业', 'C169', '其他烟草制品加工', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (56, 'C', '制造业', '17', '纺织业', 'C171', '棉、化纤纺织及印染精加工', '包括棉、化纤纺织加工，棉、化纤印染精加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (57, 'C', '制造业', '17', '纺织业', 'C172', '毛纺织和染整精加工', '包括毛条加工，毛纺织，毛染整精加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (58, 'C', '制造业', '17', '纺织业', 'C173', '麻纺织', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (59, 'C', '制造业', '17', '纺织业', 'C174', '丝绢纺织及精加工', '包括缫丝加工，绢纺和丝织加工，丝印染精加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (60, 'C', '制造业', '17', '纺织业', 'C175', '纺织制成品制造', '包括棉及化纤制品制造，毛制品制造，麻制品制造，丝制品制造，绳、索、缆的制造，纺织带和帘子布制造，无纺布制造，其他纺织制成品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (61, 'C', '制造业', '17', '纺织业', 'C176', '针织品、编织品及其制品制造', '包括棉、化纤针织品及编织品制造，毛针织品及编织品制造，丝针织品及编织品制造，其他针织品及编织品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (62, 'C', '制造业', '18', '纺织服装、鞋、帽制造业', 'C181', '纺织服装制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (63, 'C', '制造业', '18', '纺织服装、鞋、帽制造业', 'C182', '纺织面料鞋的制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (64, 'C', '制造业', '18', '纺织服装、鞋、帽制造业', 'C183', '制帽', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (65, 'C', '制造业', '19', '皮革、毛皮、羽毛(绒)及其制品业', 'C191', '皮革鞣制加工', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (66, 'C', '制造业', '19', '皮革、毛皮、羽毛(绒)及其制品业', 'C192', '皮革制品制造', '包括皮鞋制造，皮革服装制造，皮箱、包(袋)制造，皮手套及皮装饰制品制造，其他皮革制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (67, 'C', '制造业', '19', '皮革、毛皮、羽毛(绒)及其制品业', 'C193', '毛皮鞣制及制品加工', '包括毛皮鞣制加工，毛皮服装加工，其他毛皮制品加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (68, 'C', '制造业', '19', '皮革、毛皮、羽毛(绒)及其制品业', 'C194', '羽毛(绒)加工及制品制造', '包括羽毛(绒)加工，羽毛(绒)制品加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (69, 'C', '制造业', '20', '木材加工及木、竹、藤、棕、草制品业', 'C201', '锯材、木片加工', '包括锯材加工，木片加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (70, 'C', '制造业', '20', '木材加工及木、竹、藤、棕、草制品业', 'C202', '人造板制造', '包括胶合板制造，纤维板制造，刨花板制造，其他人造板、材制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (71, 'C', '制造业', '20', '木材加工及木、竹、藤、棕、草制品业', 'C203', '木制品制造', '包括建筑用木料及木材组件加工，木容器制造，软木制品及其他木制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (72, 'C', '制造业', '20', '木材加工及木、竹、藤、棕、草制品业', 'C204', '竹、藤、棕、草制品制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (73, 'C', '制造业', '21', '家具制造业', 'C211', '木质家具制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (74, 'C', '制造业', '21', '家具制造业', 'C212', '竹、藤家具制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (75, 'C', '制造业', '21', '家具制造业', 'C213', '金属家具制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (76, 'C', '制造业', '21', '家具制造业', 'C214', '塑料家具制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (77, 'C', '制造业', '21', '家具制造业', 'C219', '其他家具制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (78, 'C', '制造业', '22', '造纸及纸制品业', 'C221', '纸浆制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (79, 'C', '制造业', '22', '造纸及纸制品业', 'C222', '造纸', '包括机制纸及纸板制造，手工纸制造，加工纸制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (80, 'C', '制造业', '22', '造纸及纸制品业', 'C223', '纸制品制造', '包括纸和纸板容器的制造，其他纸制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (81, 'C', '制造业', '23', '印刷业和记录媒介的复制', 'C231', '印刷', '包括书、报、刊印刷，本册印制，包装装潢及其他印刷。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (82, 'C', '制造业', '23', '印刷业和记录媒介的复制', 'C232', '装订及其他印刷服务活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (83, 'C', '制造业', '23', '印刷业和记录媒介的复制', 'C233', '记录媒介的复制', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (84, 'C', '制造业', '24', '文教体育用品制造业', 'C241', '文化用品制造', '包括文具制造，笔的制造，教学用模型及教具制造，墨水、墨汁制造，其他文化用品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (85, 'C', '制造业', '24', '文教体育用品制造业', 'C242', '体育用品制造', '包括球类制造，体育器材及配件制造，训练健身器材制造，运动防护用具制造，其他体育用品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (86, 'C', '制造业', '24', '文教体育用品制造业', 'C243', '乐器制造', '包括中乐器制造，西乐器制造，电子乐器制造，其他乐器及零件制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (87, 'C', '制造业', '24', '文教体育用品制造业', 'C244', '玩具制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (88, 'C', '制造业', '24', '文教体育用品制造业', 'C245', '游艺器材及娱乐用品制造', '包括露天游乐场所游乐设备制造，游艺用品及室内游艺器材制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (89, 'C', '制造业', '25', '石油加工、炼焦及核燃料加工业', 'C251', '精炼石油产品的制造', '包括原油加工及石油制品制造，人造原油生产。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (90, 'C', '制造业', '25', '石油加工、炼焦及核燃料加工业', 'C252', '炼焦', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (91, 'C', '制造业', '25', '石油加工、炼焦及核燃料加工业', 'C253', '核燃料加工', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (92, 'C', '制造业', '26', '化学原料及化学制品制造业', 'C261', '基础化学原料制造', '包括无机酸制造，无机碱制造，无机盐制造，有机化学原料制造，其他基础化学原料制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (93, 'C', '制造业', '26', '化学原料及化学制品制造业', 'C262', '肥料制造', '包括氮肥制造，磷肥制造，钾肥制造，复混肥料制造，有机肥料及微生物肥料制造，其他肥料制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (94, 'C', '制造业', '26', '化学原料及化学制品制造业', 'C263', '农药制造', '包括化学农药制造，生物化学农药及微生物农药制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (95, 'C', '制造业', '26', '化学原料及化学制品制造业', 'C264', '涂料、油墨、颜料及类似产品制造', '包括涂料制造，油墨及类似产品制造，颜料制造，染料制造，密封用填料及类似品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (96, 'C', '制造业', '26', '化学原料及化学制品制造业', 'C265', '合成材料制造', '包括初级形态的塑料及合成树脂制造，合成橡胶制造，合成纤维单(聚合)体的制造，其他合成材料制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (97, 'C', '制造业', '26', '化学原料及化学制品制造业', 'C266', '专用化学产品制造', '包括化学试剂和助剂制造，专项化学用品制造，林产化学产品制造，炸药及火工产品制造，信息化学品制造，环境污染处理专用药剂材料制造，动物胶制造，其他专用化学产品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (98, 'C', '制造业', '26', '化学原料及化学制品制造业', 'C267', '日用化学产品制造', '包括肥皂及合成洗涤剂制造，化妆品制造，口腔清洁用品制造，香料、香精制造，其他日用化学产品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (99, 'C', '制造业', '27', '医药制造业', 'C271', '化学药品原药制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (100, 'C', '制造业', '27', '医药制造业', 'C272', '化学药品制剂制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (101, 'C', '制造业', '27', '医药制造业', 'C273', '中药饮片加工', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (102, 'C', '制造业', '27', '医药制造业', 'C274', '中成药制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (103, 'C', '制造业', '27', '医药制造业', 'C275', '兽用药品制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (104, 'C', '制造业', '27', '医药制造业', 'C276', '生物、生化制品的制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (105, 'C', '制造业', '27', '医药制造业', 'C277', '卫生材料及医药用品制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (106, 'C', '制造业', '28', '化学纤维制造业', 'C281', '纤维素纤维原料及纤维制造', '包括化纤浆粕制造，人造纤维（纤维素纤维）制造。');
commit;

insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (107, 'C', '制造业', '28', '化学纤维制造业', 'C282', '合成纤维制造', '包括锦纶纤维制造，涤纶纤维制造，腈纶纤维制造，维纶纤维制造，其他合成纤维制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (108, 'C', '制造业', '29', '橡胶制品业', 'C291', '轮胎制造', '包括车辆、飞机及工程机械轮胎制造，力车胎制造，轮胎翻新加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (109, 'C', '制造业', '29', '橡胶制品业', 'C292', '橡胶板、管、带的制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (110, 'C', '制造业', '29', '橡胶制品业', 'C293', '橡胶零件制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (111, 'C', '制造业', '29', '橡胶制品业', 'C294', '再生橡胶制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (112, 'C', '制造业', '29', '橡胶制品业', 'C295', '日用及医用橡胶制品制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (113, 'C', '制造业', '29', '橡胶制品业', 'C296', '橡胶靴鞋制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (114, 'C', '制造业', '29', '橡胶制品业', 'C299', '其他橡胶制品制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (115, 'C', '制造业', '30', '塑料制品业', 'C301', '塑料薄膜制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (116, 'C', '制造业', '30', '塑料制品业', 'C302', '塑料板、管、型材的制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (117, 'C', '制造业', '30', '塑料制品业', 'C303', '塑料丝、绳及编织品的制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (118, 'C', '制造业', '30', '塑料制品业', 'C304', '泡沫塑料制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (119, 'C', '制造业', '30', '塑料制品业', 'C305', '塑料人造革、合成革制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (120, 'C', '制造业', '30', '塑料制品业', 'C306', '塑料包装箱及容器制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (121, 'C', '制造业', '30', '塑料制品业', 'C307', '塑料零件制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (122, 'C', '制造业', '30', '塑料制品业', 'C308', '日用塑料制造', '包括塑料鞋制造，日用塑料杂品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (123, 'C', '制造业', '30', '塑料制品业', 'C309', '其他塑料制品制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (124, 'C', '制造业', '31', '非金属矿物制品业', 'C311', '水泥、石灰和石膏的制造', '包括水泥制造，石灰和石膏制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (125, 'C', '制造业', '31', '非金属矿物制品业', 'C312', '水泥及石膏制品制造', '包括水泥制品制造，砼结构构件制造，石棉水泥制品制造，轻质建筑材料制造，其他水泥制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (126, 'C', '制造业', '31', '非金属矿物制品业', 'C313', '砖瓦、石材及其他建筑材料制造', '包括粘土砖瓦及建筑砌块制造，建筑陶瓷制品制造，建筑用石加工，防水建筑材料制造，隔热和隔音材料制造，其他建筑材料制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (127, 'C', '制造业', '31', '非金属矿物制品业', 'C314', '玻璃及玻璃制品制造', '包括平板玻璃制造，技术玻璃制品制造，光学玻璃制造，玻璃仪器制造，日用玻璃制品及玻璃包装容器制造，玻璃保温容器制造，玻璃纤维及制品制造，玻璃纤维增强塑料制品制造，其他玻璃制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (128, 'C', '制造业', '31', '非金属矿物制品业', 'C315', '陶瓷制品制造', '包括卫生陶瓷制品制造，特种陶瓷制品制造，日用陶瓷制品制造，园林、陈设艺术及其他陶瓷制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (129, 'C', '制造业', '31', '非金属矿物制品业', 'C316', '耐火材料制品制造', '包括石棉制品制造，云母制品制造，耐火陶瓷制品及其他耐火材料制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (130, 'C', '制造业', '31', '非金属矿物制品业', 'C319', '石墨及其他非金属矿物制品制造', '包括石墨及碳素制品制造，其他非金属矿物制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (131, 'C', '制造业', '32', '黑色金属冶炼及压延加工业', 'C321', '炼铁', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (132, 'C', '制造业', '32', '黑色金属冶炼及压延加工业', 'C322', '炼钢', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (133, 'C', '制造业', '32', '黑色金属冶炼及压延加工业', 'C323', '钢压延加工', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (134, 'C', '制造业', '32', '黑色金属冶炼及压延加工业', 'C324', '铁合金冶炼', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (135, 'C', '制造业', '33', '有色金属冶炼及压延加工业', 'C331', '常用有色金属冶炼', '包括铜冶炼，铅锌冶炼，镍钴冶炼，锡冶炼，锑冶炼，铝冶炼，镁冶炼，其他常用有色金属冶炼。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (136, 'C', '制造业', '33', '有色金属冶炼及压延加工业', 'C332', '贵金属冶炼', '包括金冶炼，银冶炼，其他贵金属冶炼。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (137, 'C', '制造业', '33', '有色金属冶炼及压延加工业', 'C333', '稀有稀土金属冶炼', '包括钨钼冶炼，稀土金属冶炼，其他稀有金属冶炼。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (138, 'C', '制造业', '33', '有色金属冶炼及压延加工业', 'C334', '有色金属合金制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (139, 'C', '制造业', '33', '有色金属冶炼及压延加工业', 'C335', '有色金属压延加工', '包括常用有色金属压延加工，贵金属压延加工，稀有稀土金属压延加工。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (140, 'C', '制造业', '34', '金属制品业', 'C341', '结构性金属制品制造', '包括金属结构制造，金属门窗制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (141, 'C', '制造业', '34', '金属制品业', 'C342', '金属工具制造', '包括切削工具制造，手工具制造，农用及园林用金属工具制造，刀剪及类似日用金属工具制造，其他金属工具制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (142, 'C', '制造业', '34', '金属制品业', 'C343', '集装箱及金属包装容器制造', '包括集装箱制造，金属压力容器制造，金属包装容器制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (143, 'C', '制造业', '34', '金属制品业', 'C344', '金属丝绳及其制品的制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (144, 'C', '制造业', '34', '金属制品业', 'C345', '建筑、安全用金属制品制造', '包括建筑、家具用金属配件制造，建筑装饰及水暖管道零件制造，安全、消防用金属制品制造，其他建筑、安全用金属制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (145, 'C', '制造业', '34', '金属制品业', 'C346', '金属表面处理及热处理加工', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (146, 'C', '制造业', '34', '金属制品业', 'C347', '搪瓷制品制造', '包括工业生产配套用搪瓷制品制造，搪瓷卫生洁具制造，搪瓷日用品及其他搪瓷制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (147, 'C', '制造业', '34', '金属制品业', 'C348', '不锈钢及类似日用金属制品制造', '包括金属制厨房调理及卫生器具制造，金属制厨用器皿及餐具制造，其他日用金属制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (148, 'C', '制造业', '34', '金属制品业', 'C349', '其他金属制品制造', '包括铸币及贵金属制实验室用品制造，其他未列明的金属制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (149, 'C', '制造业', '35', '通用设备制造业', 'C351', '锅炉及原动机制造', '包括锅炉及辅助设备制造，内燃机及配件制造，汽轮机及辅机制造，水轮机及辅机制造，其他原动机制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (150, 'C', '制造业', '35', '通用设备制造业', 'C352', '金属加工机械制造', '包括金属切削机床制造，金属成形机床制造，铸造机械制造，金属切割及焊接设备制造，机床附件制造，其他金属加工机械制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (151, 'C', '制造业', '35', '通用设备制造业', 'C353', '起重运输设备制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (152, 'C', '制造业', '35', '通用设备制造业', 'C354', '泵、阀门、压缩机及类似机械的制造', '包括泵及真空设备制造，气体压缩机械制造，阀门和旋塞的制造，液压和气压动力机械及元件制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (153, 'C', '制造业', '35', '通用设备制造业', 'C355', '轴承、齿轮、传动和驱动部件的制造', '包括轴承制造，齿轮、传动和驱动部件制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (154, 'C', '制造业', '35', '通用设备制造业', 'C356', '烘炉、熔炉及电炉制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (155, 'C', '制造业', '35', '通用设备制造业', 'C357', '风机、衡器、包装设备等通用设备制造', '包括风机、风扇制造，气体、液体分离及纯净设备制造，制冷、空调设备制造，风动和电动工具制造，喷枪及类似器具制造，包装专用设备制造，衡器制造，其他通用设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (156, 'C', '制造业', '35', '通用设备制造业', 'C358', '通用零部件制造及机械修理', '包括金属密封件制造，紧固件、弹簧制造，机械零部件加工及设备修理，其他通用零部件制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (157, 'C', '制造业', '35', '通用设备制造业', 'C359', '金属铸、锻加工', '包括钢铁铸件制造，锻件及粉末冶金制品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (158, 'C', '制造业', '36', '专用设备制造业', 'C361', '矿山、冶金、建筑专用设备制造', '包括采矿、采石设备制造，石油钻采专用设备制造，建筑工程用机械制造，建筑材料生产专用机械制造，冶金专用设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (159, 'C', '制造业', '36', '专用设备制造业', 'C362', '化工、木材、非金属加工专用设备制造', '包括炼油、化工生产专用设备制造，橡胶加工专用设备制造，塑料加工专用设备制造，木材加工机械制造，模具制造，其他非金属加工专用设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (160, 'C', '制造业', '36', '专用设备制造业', 'C363', '食品、饮料、烟草及饲料生产专用设备制造', '包括食品、饮料、烟草工业专用设备制造，农副食品加工专用设备制造，饲料生产专用设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (161, 'C', '制造业', '36', '专用设备制造业', 'C364', '印刷、制药、日化生产专用设备制造', '包括制浆和造纸专用设备制造，印刷专用设备制造，日用化工专用设备制造，制药专用设备制造，照明器具生产专用设备制造，玻璃、陶瓷和搪瓷制品生产专用设备制造，其他日用品生产专用设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (162, 'C', '制造业', '36', '专用设备制造业', 'C365', '纺织、服装和皮革工业专用设备制造', '包括纺织专用设备制造，皮革、毛皮及其制品加工专用设备制造，缝纫机械制造，其他服装加工专用设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (163, 'C', '制造业', '36', '专用设备制造业', 'C366', '电子和电工机械专用设备制造', '包括电工机械专用设备制造，电子工业专用设备制造，武器弹药制造，航空、航天及其他专用设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (164, 'C', '制造业', '36', '专用设备制造业', 'C367', '农、林、牧、渔专用机械制造', '包括拖拉机制造，机械化农业及园艺机具制造，营林及木竹采伐机械制造，畜牧机械制造，渔业机械制造，农林牧渔机械配件制造，其他农林牧渔业机械制造及机械修理。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (165, 'C', '制造业', '36', '专用设备制造业', 'C368', '医疗仪器设备及器械制造', '包括医疗诊断、监护及治疗设备制造，口腔科用设备及器具制造，实验室及医用消毒设备和器具的制造，医疗、外科及兽医用器械制造，机械治疗及病房护理设备制造，假肢、人工器官及植（介）入器械制造，其他医疗设备及器械制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (166, 'C', '制造业', '36', '专用设备制造业', 'C369', '环保、社会公共安全及其他专用设备制造', '包括环境污染防治专用设备制造，地质勘查专用设备制造，邮政专用机械及器材制造，商业、饮食、服务业专用设备制造，社会公共安全设备及器材制造，交通安全及管制专用设备制造，水资源专用机械制造，其他专用设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (167, 'C', '制造业', '37', '交通运输设备制造业', 'C371', '铁路运输设备制造', '包括铁路机车车辆及动车组制造，工矿有轨专用车辆制造，铁路机车车辆配件制造，铁路专用设备及器材、配件制造，其他铁路设备制造及设备修理。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (168, 'C', '制造业', '37', '交通运输设备制造业', 'C372', '汽车制造', '包括汽车整车制造，改装汽车制造，电车制造，汽车车身、挂车的制造，汽车零部件及配件制造，汽车修理。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (169, 'C', '制造业', '37', '交通运输设备制造业', 'C373', '摩托车制造', '包括摩托车整车制造，摩托车零部件及配件制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (170, 'C', '制造业', '37', '交通运输设备制造业', 'C374', '自行车制造', '包括脚踏自行车及残疾人座车制造，助动自行车制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (171, 'C', '制造业', '37', '交通运输设备制造业', 'C375', '船舶及浮动装置制造', '包括金属船舶制造，非金属船舶制造，娱乐船和运动船的建造和修理，船用配套设备制造，船舶修理及拆船，航标器材及其他浮动装置的制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (172, 'C', '制造业', '37', '交通运输设备制造业', 'C376', '航空航天器制造', '包括飞机制造及修理，航天器制造，其他飞行器制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (173, 'C', '制造业', '37', '交通运输设备制造业', 'C379', '交通器材及其他交通运输设备制造', '包括潜水及水下救捞装备制造，交通管理用金属标志及设施制造，其他交通运输设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (174, 'C', '制造业', '39', '电气机械及器材制造业', 'C391', '电机制造', '包括发电机及发电机组制造，电动机制造，微电机及其他电机制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (175, 'C', '制造业', '39', '电气机械及器材制造业', 'C392', '输配电及控制设备制造', '包括变压器、整流器和电感器制造，电容器及其配套设备制造，配电开关控制设备制造，电力电子元器件制造，其他输配电及控制设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (176, 'C', '制造业', '39', '电气机械及器材制造业', 'C393', '电线、电缆、光缆及电工器材制造', '包括电线电缆制造，光纤、光缆制造，绝缘制品制造，其他电工器材制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (177, 'C', '制造业', '39', '电气机械及器材制造业', 'C394', '电池制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (178, 'C', '制造业', '39', '电气机械及器材制造业', 'C395', '家用电力器具制造', '包括家用制冷电器具制造，家用空气调节器制造，家用通风电器具制造，家用厨房电器具制造，家用清洁卫生电器具制造，家用美容、保健电器具制造，家用电力器具专用配件制造，其他家用电力器具制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (179, 'C', '制造业', '39', '电气机械及器材制造业', 'C396', '非电力家用器具制造', '包括燃气、太阳能及类似能源的器具制造，其他非电力家用器具制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (180, 'C', '制造业', '39', '电气机械及器材制造业', 'C397', '照明器具制造', '包括电光源制造，照明灯具制造，灯用电器附件及其他照明器具制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (181, 'C', '制造业', '39', '电气机械及器材制造业', 'C399', '其他电气机械及器材制造', '包括车辆专用照明及电气信号设备装置制造，其他未列明的电气机械制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (182, 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C401', '通信设备制造', '包括通信传输设备制造，通信交换设备制造，通信终端设备制造，移动通信及终端设备制造，其他通信设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (183, 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C402', '雷达及配套设备制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (184, 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C403', '广播电视设备制造', '包括广播电视节目制作及发射设备制造, 广播电视接收设备及器材制造，应用电视设备及其他广播电视设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (185, 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C404', '电子计算机制造', '包括电子计算机整机制造，计算机网络设备制造，电子计算机外部设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (186, 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C405', '电子器件制造', '包括电子真空器件制造，半导体分立器件制造，集成电路制造，光电子器件及其他电子器件制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (187, 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C406', '电子元件制造', '包括电子元件及组件制造，印制电路板制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (188, 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C407', '家用视听设备制造', '包括家用影视设备制造，家用音响设备制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (189, 'C', '制造业', '40', '通信设备、计算机及其他电子设备制造业', 'C409', '其他电子设备制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (190, 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C411', '通用仪器仪表制造', '包括工业自动控制系统装置制造，电工仪器仪表制造，绘图、计算及测量仪器制造，实验分析仪器制造，试验机制造，供应用仪表及其他通用仪器制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (191, 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C412', '专用仪器仪表制造', '包括环境监测专用仪器仪表制造，汽车及其他用计数仪表制造，导航、气象及海洋专用仪器制造，农林牧渔专用仪器仪表制造，地质勘探和地震专用仪器制造，教学专用仪器制造，核子及核辐射测量仪器制造，电子测量仪器制造，其他专用仪器制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (192, 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C413', '钟表与计时仪器制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (193, 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C414', '光学仪器及眼镜制造', '包括光学仪器制造，眼镜制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (194, 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C415', '文化、办公用机械制造', '包括电影机械制造，幻灯及投影设备制造，照相机及器材制造，复印和胶印设备制造，计算器及货币专用设备制造，其他文化、办公用机械制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (195, 'C', '制造业', '41', '仪器仪表及文化、办公用机械制造业', 'C419', '其他仪器仪表的制造及修理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (196, 'C', '制造业', '42', '工艺品及其他制造业', 'C421', '工艺美术品制造', '包括雕塑工艺品制造，金属工艺品制造，漆器工艺品制造，花画工艺品制造，天然植物纤维编织工艺品制造，抽纱刺绣工艺品制造，地毯、挂毯制造，珠宝首饰及有关物品的制造，其他工艺美术品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (197, 'C', '制造业', '42', '工艺品及其他制造业', 'C422', '日用杂品制造', '包括制镜及类似品加工，鬃毛加工、制刷及清扫工具的制造，其他日用杂品制造。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (198, 'C', '制造业', '42', '工艺品及其他制造业', 'C423', '煤制品制造', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (199, 'C', '制造业', '42', '工艺品及其他制造业', 'C424', '核辐射加工', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (200, 'C', '制造业', '42', '工艺品及其他制造业', 'C429', '其他未列明的制造业', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (201, 'C', '制造业', '43', '废弃资源和废旧材料回收加工业', 'C431', '金属废料和碎屑的加工处理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (202, 'C', '制造业', '43', '废弃资源和废旧材料回收加工业', 'C432', '非金属废料和碎屑的加工处理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (203, 'D', '电力、燃气及水的生产和供应业', '44', '电力、热力的生产和供应业', 'D441', '电力生产', '包括火力发电，水力发电，核力发电，其他能源发电。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (204, 'D', '电力、燃气及水的生产和供应业', '44', '电力、热力的生产和供应业', 'D442', '电力供应', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (205, 'D', '电力、燃气及水的生产和供应业', '44', '电力、热力的生产和供应业', 'D443', '热力生产和供应', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (206, 'D', '电力、燃气及水的生产和供应业', '45', '燃气生产和供应业', 'D450', '燃气生产和供应业', null);
commit;

insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (207, 'D', '电力、燃气及水的生产和供应业', '46', '水的生产和供应业', 'D461', '自来水的生产和供应', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (208, 'D', '电力、燃气及水的生产和供应业', '46', '水的生产和供应业', 'D462', '污水处理及其再生利用', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (209, 'D', '电力、燃气及水的生产和供应业', '46', '水的生产和供应业', 'D469', '其他水的处理、利用与分配', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (210, 'E', '建筑业', '47', '房屋和土木工程建筑业', 'E471', '房屋工程建筑', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (211, 'E', '建筑业', '47', '房屋和土木工程建筑业', 'E472', '土木工程建筑', '包括铁路、道路、隧道和桥梁工程建筑，水利和港口工程建筑，工矿工程建筑，架线和管道工程建筑，其他土木工程建筑。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (212, 'E', '建筑业', '48', '建筑安装业', 'E480', '建筑安装业', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (213, 'E', '建筑业', '49', '建筑装饰业', 'E490', '建筑装饰业', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (214, 'E', '建筑业', '50', '其他建筑业', 'E501', '工程准备', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (215, 'E', '建筑业', '50', '其他建筑业', 'E502', '提供施工设备服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (216, 'E', '建筑业', '50', '其他建筑业', 'E509', '其他未列明的建筑活动', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (217, 'F', '交通运输、仓储和邮政业', '51', '铁路运输业', 'F511', '铁路旅客运输', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (218, 'F', '交通运输、仓储和邮政业', '51', '铁路运输业', 'F512', '铁路货物运输', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (219, 'F', '交通运输、仓储和邮政业', '51', '铁路运输业', 'F513', '铁路运输辅助活动', '包括客运火车站，货运火车站，其他铁路运输辅助活动。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (220, 'F', '交通运输、仓储和邮政业', '52', '道路运输业', 'F521', '公路旅客运输', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (221, 'F', '交通运输、仓储和邮政业', '52', '道路运输业', 'F522', '道路货物运输', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (222, 'F', '交通运输、仓储和邮政业', '52', '道路运输业', 'F523', '道路运输辅助活动', '包括客运汽车站，公路管理与养护，其他道路运输辅助活动。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (223, 'F', '交通运输、仓储和邮政业', '53', '城市公共交通业', 'F531', '公共电汽车客运', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (224, 'F', '交通运输、仓储和邮政业', '53', '城市公共交通业', 'F532', '轨道交通', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (225, 'F', '交通运输、仓储和邮政业', '53', '城市公共交通业', 'F533', '出租车客运', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (226, 'F', '交通运输、仓储和邮政业', '53', '城市公共交通业', 'F534', '城市轮渡', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (227, 'F', '交通运输、仓储和邮政业', '53', '城市公共交通业', 'F539', '其他城市公共交通', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (228, 'F', '交通运输、仓储和邮政业', '54', '水上运输业', 'F541', '水上旅客运输', '包括远洋旅客运输，沿海旅客运输，内河旅客运输。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (229, 'F', '交通运输、仓储和邮政业', '54', '水上运输业', 'F542', '水上货物运输', '包括远洋货物运输，沿海货物运输，内河货物运输。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (230, 'F', '交通运输、仓储和邮政业', '54', '水上运输业', 'F543', '水上运输辅助活动', '包括客运港口，货运港口，其他水上运输辅助活动。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (231, 'F', '交通运输、仓储和邮政业', '55', '航空运输业', 'F551', '航空客货运输', '包括航空旅客运输，航空货物运输。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (232, 'F', '交通运输、仓储和邮政业', '55', '航空运输业', 'F552', '通用航空服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (233, 'F', '交通运输、仓储和邮政业', '55', '航空运输业', 'F553', '航空运输辅助活动', '包括机场，空中交通管理，其他航空运输辅助活动。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (234, 'F', '交通运输、仓储和邮政业', '56', '管道运输业', 'F560', '管道运输业', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (235, 'F', '交通运输、仓储和邮政业', '57', '装卸搬运和其他运输服务业', 'F571', '装卸搬运', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (236, 'F', '交通运输、仓储和邮政业', '57', '装卸搬运和其他运输服务业', 'F572', '运输代理服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (237, 'F', '交通运输、仓储和邮政业', '58', '仓储业', 'F581', '谷物、棉花等农产品仓储', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (238, 'F', '交通运输、仓储和邮政业', '58', '仓储业', 'F589', '其他仓储', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (239, 'F', '交通运输、仓储和邮政业', '59', '邮政业', 'F591', '国家邮政', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (240, 'F', '交通运输、仓储和邮政业', '59', '邮政业', 'F599', '其他寄递服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (241, 'G', '信息传输、计算机服务和软件业', '60', '电信和其他信息传输服务业', 'G601', '电信', '包括固定电信服务，移动电信服务，其他电信服务。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (242, 'G', '信息传输、计算机服务和软件业', '60', '电信和其他信息传输服务业', 'G602', '互联网信息服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (243, 'G', '信息传输、计算机服务和软件业', '60', '电信和其他信息传输服务业', 'G603', '广播电视传输服务', '包括有线广播电视传输服务，无线广播电视传输服务。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (244, 'G', '信息传输、计算机服务和软件业', '60', '电信和其他信息传输服务业', 'G604', '卫星传输服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (245, 'G', '信息传输、计算机服务和软件业', '61', '计算机服务业', 'G611', '计算机系统服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (246, 'G', '信息传输、计算机服务和软件业', '61', '计算机服务业', 'G612', '数据处理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (247, 'G', '信息传输、计算机服务和软件业', '61', '计算机服务业', 'G613', '计算机维修', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (248, 'G', '信息传输、计算机服务和软件业', '61', '计算机服务业', 'G619', '其他计算机服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (249, 'G', '信息传输、计算机服务和软件业', '62', '软件业', 'G621', '公共软件服务', '包括基础软件服务，应用软件服务。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (250, 'G', '信息传输、计算机服务和软件业', '62', '软件业', 'G629', '其他软件服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (251, 'H', '批发和零售业', '63', '批发业', 'H631', '农畜产品批发', '包括谷物、豆及薯类批发，种子、饲料批发，棉、麻批发，牲畜批发，其他农畜产品批发。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (252, 'H', '批发和零售业', '63', '批发业', 'H632', '食品、饮料及烟草制品批发', '包括米、面制品及食用油批发，糕点、糖果及糖批发，果品、蔬菜批发，肉、禽、蛋及水产品批发，盐及调味品批发，饮料及茶叶批发，烟草制品批发，其他食品批发。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (253, 'H', '批发和零售业', '63', '批发业', 'H633', '纺织、服装及日用品批发', '包括纺织品、针织品及原料批发，服装批发，鞋帽批发，厨房、卫生间用具及日用杂货批发，化妆品及卫生用品批发，其他日用品批发。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (254, 'H', '批发和零售业', '63', '批发业', 'H634', '文化、体育用品及器材批发', '包括文具用品批发，体育用品批发，图书批发，报刊批发，音像制品及电子出版物批发，首饰、工艺品及收藏品批发，其他文化用品批发。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (255, 'H', '批发和零售业', '63', '批发业', 'H635', '医药及医疗器材批发', '包括西药批发，中药材及中成药批发，医疗用品及器材批发。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (256, 'H', '批发和零售业', '63', '批发业', 'H636', '矿产品、建材及化工产品批发', '包括煤炭及制品批发，石油及制品批发，非金属矿及制品批发，金属及金属矿批发，建材批发，化肥批发，农药批发，农用薄膜批发，其他化工产品批发。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (257, 'H', '批发和零售业', '63', '批发业', 'H637', '机械设备、五金交电及电子产品批发', '包括农业机械批发，汽车、摩托车及零配件批发，五金、交电批发，家用电器批发，计算机、软件及辅助设备批发，通讯及广播电视设备批发，其他机械设备及电子产品批发。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (258, 'H', '批发和零售业', '63', '批发业', 'H638', '贸易经纪与代理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (259, 'H', '批发和零售业', '63', '批发业', 'H639', '其他批发', '包括再生物资回收与批发，其他未列明的批发。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (260, 'H', '批发和零售业', '65', '零售业', 'H651', '综合零售', '包括百货零售，超级市场零售，其他综合零售。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (261, 'H', '批发和零售业', '65', '零售业', 'H652', '食品、饮料及烟草制品专门零售', '包括粮油零售，糕点、面包零售，果品、蔬菜零售，肉、禽、蛋及水产品零售，饮料及茶叶零售，烟草制品零售，其他食品零售。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (262, 'H', '批发和零售业', '65', '零售业', 'H653', '纺织、服装及日用品专门零售', '包括纺织品及针织品零售，服装零售，鞋帽零售，钟表、眼镜零售，化妆品及卫生用品零售，其他日用品零售。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (263, 'H', '批发和零售业', '65', '零售业', 'H654', '文化、体育用品及器材专门零售', '包括文具用品零售，体育用品零售，图书零售，报刊零售，音像制品及电子出版物零售，珠宝首饰零售，工艺美术品及收藏品零售，照相器材零售，其他文化用品零售。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (264, 'H', '批发和零售业', '65', '零售业', 'H655', '医药及医疗器材专门零售', '包括药品零售，医疗用品及器材零售。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (265, 'H', '批发和零售业', '65', '零售业', 'H656', '汽车、摩托车、燃料及零配件专门零售', '包括汽车零售，汽车零配件零售，摩托车及零配件零售，机动车燃料零售。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (266, 'H', '批发和零售业', '65', '零售业', 'H657', '家用电器及电子产品专门零售', '包括家用电器零售，计算机、软件及辅助设备零售，通信设备零售，其他电子产品零售。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (267, 'H', '批发和零售业', '65', '零售业', 'H658', '五金、家具及室内装修材料专门零售', '包括五金零售，家具零售，涂料零售，其他室内装修材料零售。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (268, 'H', '批发和零售业', '65', '零售业', 'H659', '无店铺及其他零售', '包括流动货摊零售，邮购及电子销售，生活用燃料零售，花卉零售，旧货零售，其他未列明的零售。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (269, 'I', '住宿和餐饮业', '66', '住宿业', 'I661', '旅游饭店', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (270, 'I', '住宿和餐饮业', '66', '住宿业', 'I662', '一般旅馆', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (271, 'I', '住宿和餐饮业', '66', '住宿业', 'I669', '其他住宿服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (272, 'I', '住宿和餐饮业', '67', '餐饮业', 'I671', '正餐服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (273, 'I', '住宿和餐饮业', '67', '餐饮业', 'I672', '快餐服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (274, 'I', '住宿和餐饮业', '67', '餐饮业', 'I673', '饮料及冷饮服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (275, 'I', '住宿和餐饮业', '67', '餐饮业', 'I679', '其他餐饮服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (276, 'J', '金融业', '68', '银行业', 'J681', '中央银行', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (277, 'J', '金融业', '68', '银行业', 'J682', '商业银行', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (278, 'J', '金融业', '68', '银行业', 'J689', '其他银行', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (279, 'J', '金融业', '69', '证券业', 'J691', '证券市场管理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (280, 'J', '金融业', '69', '证券业', 'J692', '证券经纪与交易', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (281, 'J', '金融业', '69', '证券业', 'J693', '证券投资', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (282, 'J', '金融业', '69', '证券业', 'J694', '证券分析与咨询', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (283, 'J', '金融业', '70', '保险业', 'J701', '人寿保险', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (284, 'J', '金融业', '70', '保险业', 'J702', '非人寿保险', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (285, 'J', '金融业', '70', '保险业', 'J703', '保险辅助服务', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (286, 'J', '金融业', '71', '其他金融活动', 'J711', '金融信托与管理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (382, 'S', '公共管理和社会组织', '93', '中国共产党机关', 'S930', '中国共产党机关', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (383, 'S', '公共管理和社会组织', '94', '国家机构', 'S941', '国家权力机构', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (384, 'S', '公共管理和社会组织', '94', '国家机构', 'S942', '国家行政机构', '包括综合事务管理机构，对外事务管理机构，公共安全管理机构，社会事务管理机构，经济事务管理机构，政府事务管理机构，行政监督检查机构。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (385, 'S', '公共管理和社会组织', '94', '国家机构', 'S943', '人民法院和人民检察院', '包括人民法院，人民检察院。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (386, 'S', '公共管理和社会组织', '94', '国家机构', 'S949', '其他国家机构', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (387, 'S', '公共管理和社会组织', '95', '人民政协和民主党派', 'S951', '人民政协', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (388, 'S', '公共管理和社会组织', '95', '人民政协和民主党派', 'S952', '民主党派', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (389, 'S', '公共管理和社会组织', '96', '群众团体、社会团体和宗教组织', 'S961', '群众团体', '包括工会，妇联，共青团，其他群众团体。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (390, 'S', '公共管理和社会组织', '96', '群众团体、社会团体和宗教组织', 'S962', '社会团体', '包括专业性团体，行业性团体，其他社会团体。');
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (391, 'S', '公共管理和社会组织', '96', '群众团体、社会团体和宗教组织', 'S963', '宗教组织', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (392, 'S', '公共管理和社会组织', '97', '基层群众自治组织', 'S971', '社区自治组织', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (393, 'S', '公共管理和社会组织', '97', '基层群众自治组织', 'S972', '村民自治组织', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (394, 'T', '国际组织', '98', '国际组织', 'T980', '国际组织', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (395, 'N', '水利、环境和公共设施管理业', '81', '公共设施管理业', 'N811', '市政公共设施管理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (396, 'N', '水利、环境和公共设施管理业', '81', '公共设施管理业', 'N812', '城市绿化管理', null);
insert into D_industrial(industrial_id, grand_code, grand_name, father_code, father_name, industrial_code, industrial_name, industrial_desc)
values (50, 'C', '制造业', '15', '饮料制造业', 'C152', '酒的制造', '包括白酒制造，啤酒制造，黄酒制造，葡萄酒制造，其他酒制造。');
commit;

