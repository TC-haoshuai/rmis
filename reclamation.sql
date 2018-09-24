/*
Navicat MySQL Data Transfer

Source Server         : hao
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : reclamation

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-09-24 19:58:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(10) DEFAULT NULL COMMENT '父级编码',
  `area_code` varchar(10) DEFAULT NULL COMMENT '地区编码',
  `area_name` varchar(50) DEFAULT NULL COMMENT '中文名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=782 DEFAULT CHARSET=utf8 COMMENT='地区表';

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '0', '110000', '北京市');
INSERT INTO `area` VALUES ('2', '0', '120000', '天津市');
INSERT INTO `area` VALUES ('3', '0', '130000', '河北省');
INSERT INTO `area` VALUES ('4', '0', '140000', '山西省');
INSERT INTO `area` VALUES ('5', '0', '150000', '内蒙古');
INSERT INTO `area` VALUES ('6', '0', '210000', '辽宁省');
INSERT INTO `area` VALUES ('7', '0', '220000', '吉林省');
INSERT INTO `area` VALUES ('8', '0', '230000', '黑龙江');
INSERT INTO `area` VALUES ('9', '0', '310000', '上海市');
INSERT INTO `area` VALUES ('10', '0', '320000', '江苏省');
INSERT INTO `area` VALUES ('11', '0', '330000', '浙江省');
INSERT INTO `area` VALUES ('12', '0', '340000', '安徽省');
INSERT INTO `area` VALUES ('13', '0', '350000', '福建省');
INSERT INTO `area` VALUES ('14', '0', '360000', '江西省');
INSERT INTO `area` VALUES ('15', '0', '370000', '山东省');
INSERT INTO `area` VALUES ('16', '0', '410000', '河南省');
INSERT INTO `area` VALUES ('17', '0', '420000', '湖北省');
INSERT INTO `area` VALUES ('18', '0', '430000', '湖南省');
INSERT INTO `area` VALUES ('19', '0', '440000', '广东省');
INSERT INTO `area` VALUES ('20', '0', '450000', '广  西');
INSERT INTO `area` VALUES ('21', '0', '460000', '海南省');
INSERT INTO `area` VALUES ('22', '0', '500000', '重庆市');
INSERT INTO `area` VALUES ('23', '0', '510000', '四川省');
INSERT INTO `area` VALUES ('24', '0', '520000', '贵州省');
INSERT INTO `area` VALUES ('25', '0', '530000', '云南省');
INSERT INTO `area` VALUES ('26', '0', '540000', '西  藏');
INSERT INTO `area` VALUES ('27', '0', '610000', '陕西省');
INSERT INTO `area` VALUES ('28', '0', '620000', '甘肃省');
INSERT INTO `area` VALUES ('29', '0', '630000', '青海省');
INSERT INTO `area` VALUES ('30', '0', '640000', '宁  夏');
INSERT INTO `area` VALUES ('31', '0', '650000', '新  疆');
INSERT INTO `area` VALUES ('32', '0', '710000', '台湾省');
INSERT INTO `area` VALUES ('33', '0', '810000', '香  港');
INSERT INTO `area` VALUES ('34', '0', '820000', '澳  门');
INSERT INTO `area` VALUES ('440', '110000', '110100', '北京市');
INSERT INTO `area` VALUES ('441', '130000', '130100', '石家庄市');
INSERT INTO `area` VALUES ('442', '130000', '130200', '唐山市');
INSERT INTO `area` VALUES ('443', '130000', '130300', '秦皇岛市');
INSERT INTO `area` VALUES ('444', '130000', '130400', '邯郸市');
INSERT INTO `area` VALUES ('445', '130000', '130500', '邢台市');
INSERT INTO `area` VALUES ('446', '130000', '130600', '保定市');
INSERT INTO `area` VALUES ('447', '130000', '130700', '张家口市');
INSERT INTO `area` VALUES ('448', '130000', '130800', '承德市');
INSERT INTO `area` VALUES ('449', '130000', '130900', '沧州市');
INSERT INTO `area` VALUES ('450', '130000', '131000', '廊坊市');
INSERT INTO `area` VALUES ('451', '130000', '131100', '衡水市');
INSERT INTO `area` VALUES ('452', '140000', '140100', '太原市');
INSERT INTO `area` VALUES ('453', '140000', '140200', '大同市');
INSERT INTO `area` VALUES ('454', '140000', '140300', '阳泉市');
INSERT INTO `area` VALUES ('455', '140000', '140400', '长治市');
INSERT INTO `area` VALUES ('456', '140000', '140500', '晋城市');
INSERT INTO `area` VALUES ('457', '140000', '140600', '朔州市');
INSERT INTO `area` VALUES ('458', '140000', '140700', '晋中市');
INSERT INTO `area` VALUES ('459', '140000', '140800', '运城市');
INSERT INTO `area` VALUES ('460', '140000', '140900', '忻州市');
INSERT INTO `area` VALUES ('461', '140000', '141000', '临汾市');
INSERT INTO `area` VALUES ('462', '140000', '141100', '吕梁市');
INSERT INTO `area` VALUES ('463', '150000', '150100', '呼和浩特市');
INSERT INTO `area` VALUES ('464', '150000', '150200', '包头市');
INSERT INTO `area` VALUES ('465', '150000', '150300', '乌海市');
INSERT INTO `area` VALUES ('466', '150000', '150400', '赤峰市');
INSERT INTO `area` VALUES ('467', '150000', '150500', '通辽市');
INSERT INTO `area` VALUES ('468', '150000', '150600', '鄂尔多斯市');
INSERT INTO `area` VALUES ('469', '150000', '150700', '呼伦贝尔市');
INSERT INTO `area` VALUES ('470', '150000', '150800', '巴彦淖尔市');
INSERT INTO `area` VALUES ('471', '150000', '150900', '乌兰察布市');
INSERT INTO `area` VALUES ('472', '150000', '152200', '兴安盟');
INSERT INTO `area` VALUES ('473', '150000', '152500', '锡林郭勒盟');
INSERT INTO `area` VALUES ('474', '150000', '152900', '阿拉善盟');
INSERT INTO `area` VALUES ('475', '210000', '210100', '沈阳市');
INSERT INTO `area` VALUES ('476', '210000', '210200', '大连市');
INSERT INTO `area` VALUES ('477', '210000', '210300', '鞍山市');
INSERT INTO `area` VALUES ('478', '210000', '210400', '抚顺市');
INSERT INTO `area` VALUES ('479', '210000', '210500', '本溪市');
INSERT INTO `area` VALUES ('480', '210000', '210600', '丹东市');
INSERT INTO `area` VALUES ('481', '210000', '210700', '锦州市');
INSERT INTO `area` VALUES ('482', '210000', '210800', '营口市');
INSERT INTO `area` VALUES ('483', '210000', '210900', '阜新市');
INSERT INTO `area` VALUES ('484', '210000', '211000', '辽阳市');
INSERT INTO `area` VALUES ('485', '210000', '211100', '盘锦市');
INSERT INTO `area` VALUES ('486', '210000', '211200', '铁岭市');
INSERT INTO `area` VALUES ('487', '210000', '211300', '朝阳市');
INSERT INTO `area` VALUES ('488', '210000', '211400', '葫芦岛市');
INSERT INTO `area` VALUES ('489', '220000', '220100', '长春市');
INSERT INTO `area` VALUES ('490', '220000', '220200', '吉林市');
INSERT INTO `area` VALUES ('491', '220000', '220300', '四平市');
INSERT INTO `area` VALUES ('492', '220000', '220400', '辽源市');
INSERT INTO `area` VALUES ('493', '220000', '220500', '通化市');
INSERT INTO `area` VALUES ('494', '220000', '220600', '白山市');
INSERT INTO `area` VALUES ('495', '220000', '220700', '松原市');
INSERT INTO `area` VALUES ('496', '220000', '220800', '白城市');
INSERT INTO `area` VALUES ('497', '220000', '222400', '延边朝鲜族自治州');
INSERT INTO `area` VALUES ('498', '230000', '230100', '哈尔滨市');
INSERT INTO `area` VALUES ('499', '230000', '230200', '齐齐哈尔市');
INSERT INTO `area` VALUES ('500', '230000', '230300', '鸡西市');
INSERT INTO `area` VALUES ('501', '230000', '230400', '鹤岗市');
INSERT INTO `area` VALUES ('502', '230000', '230500', '双鸭山市');
INSERT INTO `area` VALUES ('503', '230000', '230600', '大庆市');
INSERT INTO `area` VALUES ('504', '230000', '230700', '伊春市');
INSERT INTO `area` VALUES ('505', '230000', '230800', '佳木斯市');
INSERT INTO `area` VALUES ('506', '230000', '230900', '七台河市');
INSERT INTO `area` VALUES ('507', '230000', '231000', '牡丹江市');
INSERT INTO `area` VALUES ('508', '230000', '231100', '黑河市');
INSERT INTO `area` VALUES ('509', '230000', '231200', '绥化市');
INSERT INTO `area` VALUES ('510', '230000', '232700', '大兴安岭地区');
INSERT INTO `area` VALUES ('511', '310000', '310100', '市辖区');
INSERT INTO `area` VALUES ('512', '310000', '310200', '县');
INSERT INTO `area` VALUES ('513', '320000', '320100', '南京市');
INSERT INTO `area` VALUES ('514', '320000', '320200', '无锡市');
INSERT INTO `area` VALUES ('515', '320000', '320300', '徐州市');
INSERT INTO `area` VALUES ('516', '320000', '320400', '常州市');
INSERT INTO `area` VALUES ('517', '320000', '320500', '苏州市');
INSERT INTO `area` VALUES ('518', '320000', '320600', '南通市');
INSERT INTO `area` VALUES ('519', '320000', '320700', '连云港市');
INSERT INTO `area` VALUES ('520', '320000', '320800', '淮安市');
INSERT INTO `area` VALUES ('521', '320000', '320900', '盐城市');
INSERT INTO `area` VALUES ('522', '320000', '321000', '扬州市');
INSERT INTO `area` VALUES ('523', '320000', '321100', '镇江市');
INSERT INTO `area` VALUES ('524', '320000', '321200', '泰州市');
INSERT INTO `area` VALUES ('525', '320000', '321300', '宿迁市');
INSERT INTO `area` VALUES ('526', '330000', '330100', '杭州市');
INSERT INTO `area` VALUES ('527', '330000', '330200', '宁波市');
INSERT INTO `area` VALUES ('528', '330000', '330300', '温州市');
INSERT INTO `area` VALUES ('529', '330000', '330400', '嘉兴市');
INSERT INTO `area` VALUES ('530', '330000', '330500', '湖州市');
INSERT INTO `area` VALUES ('531', '330000', '330600', '绍兴市');
INSERT INTO `area` VALUES ('532', '330000', '330700', '金华市');
INSERT INTO `area` VALUES ('533', '330000', '330800', '衢州市');
INSERT INTO `area` VALUES ('534', '330000', '330900', '舟山市');
INSERT INTO `area` VALUES ('535', '330000', '331000', '台州市');
INSERT INTO `area` VALUES ('536', '330000', '331100', '丽水市');
INSERT INTO `area` VALUES ('537', '340000', '340100', '合肥市');
INSERT INTO `area` VALUES ('538', '340000', '340200', '芜湖市');
INSERT INTO `area` VALUES ('539', '340000', '340300', '蚌埠市');
INSERT INTO `area` VALUES ('540', '340000', '340400', '淮南市');
INSERT INTO `area` VALUES ('541', '340000', '340500', '马鞍山市');
INSERT INTO `area` VALUES ('542', '340000', '340600', '淮北市');
INSERT INTO `area` VALUES ('543', '340000', '340700', '铜陵市');
INSERT INTO `area` VALUES ('544', '340000', '340800', '安庆市');
INSERT INTO `area` VALUES ('545', '340000', '341000', '黄山市');
INSERT INTO `area` VALUES ('546', '340000', '341100', '滁州市');
INSERT INTO `area` VALUES ('547', '340000', '341200', '阜阳市');
INSERT INTO `area` VALUES ('548', '340000', '341300', '宿州市');
INSERT INTO `area` VALUES ('549', '340000', '341400', '巢湖市');
INSERT INTO `area` VALUES ('550', '340000', '341500', '六安市');
INSERT INTO `area` VALUES ('551', '340000', '341600', '亳州市');
INSERT INTO `area` VALUES ('552', '340000', '341700', '池州市');
INSERT INTO `area` VALUES ('553', '340000', '341800', '宣城市');
INSERT INTO `area` VALUES ('554', '350000', '350100', '福州市');
INSERT INTO `area` VALUES ('555', '350000', '350200', '厦门市');
INSERT INTO `area` VALUES ('556', '350000', '350300', '莆田市');
INSERT INTO `area` VALUES ('557', '350000', '350400', '三明市');
INSERT INTO `area` VALUES ('558', '350000', '350500', '泉州市');
INSERT INTO `area` VALUES ('559', '350000', '350600', '漳州市');
INSERT INTO `area` VALUES ('560', '350000', '350700', '南平市');
INSERT INTO `area` VALUES ('561', '350000', '350800', '龙岩市');
INSERT INTO `area` VALUES ('562', '350000', '350900', '宁德市');
INSERT INTO `area` VALUES ('563', '360000', '360100', '南昌市');
INSERT INTO `area` VALUES ('564', '360000', '360200', '景德镇市');
INSERT INTO `area` VALUES ('565', '360000', '360300', '萍乡市');
INSERT INTO `area` VALUES ('566', '360000', '360400', '九江市');
INSERT INTO `area` VALUES ('567', '360000', '360500', '新余市');
INSERT INTO `area` VALUES ('568', '360000', '360600', '鹰潭市');
INSERT INTO `area` VALUES ('569', '360000', '360700', '赣州市');
INSERT INTO `area` VALUES ('570', '360000', '360800', '吉安市');
INSERT INTO `area` VALUES ('571', '360000', '360900', '宜春市');
INSERT INTO `area` VALUES ('572', '360000', '361000', '抚州市');
INSERT INTO `area` VALUES ('573', '360000', '361100', '上饶市');
INSERT INTO `area` VALUES ('574', '370000', '370100', '济南市');
INSERT INTO `area` VALUES ('575', '370000', '370200', '青岛市');
INSERT INTO `area` VALUES ('576', '370000', '370300', '淄博市');
INSERT INTO `area` VALUES ('577', '370000', '370400', '枣庄市');
INSERT INTO `area` VALUES ('578', '370000', '370500', '东营市');
INSERT INTO `area` VALUES ('579', '370000', '370600', '烟台市');
INSERT INTO `area` VALUES ('580', '370000', '370700', '潍坊市');
INSERT INTO `area` VALUES ('581', '370000', '370800', '济宁市');
INSERT INTO `area` VALUES ('582', '370000', '370900', '泰安市');
INSERT INTO `area` VALUES ('583', '370000', '371000', '威海市');
INSERT INTO `area` VALUES ('584', '370000', '371100', '日照市');
INSERT INTO `area` VALUES ('585', '370000', '371200', '莱芜市');
INSERT INTO `area` VALUES ('586', '370000', '371300', '临沂市');
INSERT INTO `area` VALUES ('587', '370000', '371400', '德州市');
INSERT INTO `area` VALUES ('588', '370000', '371500', '聊城市');
INSERT INTO `area` VALUES ('589', '370000', '371600', '滨州市');
INSERT INTO `area` VALUES ('590', '370000', '371700', '荷泽市');
INSERT INTO `area` VALUES ('591', '410000', '410100', '郑州市');
INSERT INTO `area` VALUES ('592', '410000', '410200', '开封市');
INSERT INTO `area` VALUES ('593', '410000', '410300', '洛阳市');
INSERT INTO `area` VALUES ('594', '410000', '410400', '平顶山市');
INSERT INTO `area` VALUES ('595', '410000', '410500', '安阳市');
INSERT INTO `area` VALUES ('596', '410000', '410600', '鹤壁市');
INSERT INTO `area` VALUES ('597', '410000', '410700', '新乡市');
INSERT INTO `area` VALUES ('598', '410000', '410800', '焦作市');
INSERT INTO `area` VALUES ('599', '410000', '410900', '濮阳市');
INSERT INTO `area` VALUES ('600', '410000', '411000', '许昌市');
INSERT INTO `area` VALUES ('601', '410000', '411100', '漯河市');
INSERT INTO `area` VALUES ('602', '410000', '411200', '三门峡市');
INSERT INTO `area` VALUES ('603', '410000', '411300', '南阳市');
INSERT INTO `area` VALUES ('604', '410000', '411400', '商丘市');
INSERT INTO `area` VALUES ('605', '410000', '411500', '信阳市');
INSERT INTO `area` VALUES ('606', '410000', '411600', '周口市');
INSERT INTO `area` VALUES ('607', '410000', '411700', '驻马店市');
INSERT INTO `area` VALUES ('608', '420000', '420100', '武汉市');
INSERT INTO `area` VALUES ('609', '420000', '420200', '黄石市');
INSERT INTO `area` VALUES ('610', '420000', '420300', '十堰市');
INSERT INTO `area` VALUES ('611', '420000', '420500', '宜昌市');
INSERT INTO `area` VALUES ('612', '420000', '420600', '襄樊市');
INSERT INTO `area` VALUES ('613', '420000', '420700', '鄂州市');
INSERT INTO `area` VALUES ('614', '420000', '420800', '荆门市');
INSERT INTO `area` VALUES ('615', '420000', '420900', '孝感市');
INSERT INTO `area` VALUES ('616', '420000', '421000', '荆州市');
INSERT INTO `area` VALUES ('617', '420000', '421100', '黄冈市');
INSERT INTO `area` VALUES ('618', '420000', '421200', '咸宁市');
INSERT INTO `area` VALUES ('619', '420000', '421300', '随州市');
INSERT INTO `area` VALUES ('620', '420000', '422800', '恩施土家族苗族自治州');
INSERT INTO `area` VALUES ('621', '420000', '429000', '省直辖行政单位');
INSERT INTO `area` VALUES ('622', '430000', '430100', '长沙市');
INSERT INTO `area` VALUES ('623', '430000', '430200', '株洲市');
INSERT INTO `area` VALUES ('624', '430000', '430300', '湘潭市');
INSERT INTO `area` VALUES ('625', '430000', '430400', '衡阳市');
INSERT INTO `area` VALUES ('626', '430000', '430500', '邵阳市');
INSERT INTO `area` VALUES ('627', '430000', '430600', '岳阳市');
INSERT INTO `area` VALUES ('628', '430000', '430700', '常德市');
INSERT INTO `area` VALUES ('629', '430000', '430800', '张家界市');
INSERT INTO `area` VALUES ('630', '430000', '430900', '益阳市');
INSERT INTO `area` VALUES ('631', '430000', '431000', '郴州市');
INSERT INTO `area` VALUES ('632', '430000', '431100', '永州市');
INSERT INTO `area` VALUES ('633', '430000', '431200', '怀化市');
INSERT INTO `area` VALUES ('634', '430000', '431300', '娄底市');
INSERT INTO `area` VALUES ('635', '430000', '433100', '湘西土家族苗族自治州');
INSERT INTO `area` VALUES ('636', '440000', '440100', '广州市');
INSERT INTO `area` VALUES ('637', '440000', '440200', '韶关市');
INSERT INTO `area` VALUES ('638', '440000', '440300', '深圳市');
INSERT INTO `area` VALUES ('639', '440000', '440400', '珠海市');
INSERT INTO `area` VALUES ('640', '440000', '440500', '汕头市');
INSERT INTO `area` VALUES ('641', '440000', '440600', '佛山市');
INSERT INTO `area` VALUES ('642', '440000', '440700', '江门市');
INSERT INTO `area` VALUES ('643', '440000', '440800', '湛江市');
INSERT INTO `area` VALUES ('644', '440000', '440900', '茂名市');
INSERT INTO `area` VALUES ('645', '440000', '441200', '肇庆市');
INSERT INTO `area` VALUES ('646', '440000', '441300', '惠州市');
INSERT INTO `area` VALUES ('647', '440000', '441400', '梅州市');
INSERT INTO `area` VALUES ('648', '440000', '441500', '汕尾市');
INSERT INTO `area` VALUES ('649', '440000', '441600', '河源市');
INSERT INTO `area` VALUES ('650', '440000', '441700', '阳江市');
INSERT INTO `area` VALUES ('651', '440000', '441800', '清远市');
INSERT INTO `area` VALUES ('652', '440000', '441900', '东莞市');
INSERT INTO `area` VALUES ('653', '440000', '442000', '中山市');
INSERT INTO `area` VALUES ('654', '440000', '445100', '潮州市');
INSERT INTO `area` VALUES ('655', '440000', '445200', '揭阳市');
INSERT INTO `area` VALUES ('656', '440000', '445300', '云浮市');
INSERT INTO `area` VALUES ('657', '450000', '450100', '南宁市');
INSERT INTO `area` VALUES ('658', '450000', '450200', '柳州市');
INSERT INTO `area` VALUES ('659', '450000', '450300', '桂林市');
INSERT INTO `area` VALUES ('660', '450000', '450400', '梧州市');
INSERT INTO `area` VALUES ('661', '450000', '450500', '北海市');
INSERT INTO `area` VALUES ('662', '450000', '450600', '防城港市');
INSERT INTO `area` VALUES ('663', '450000', '450700', '钦州市');
INSERT INTO `area` VALUES ('664', '450000', '450800', '贵港市');
INSERT INTO `area` VALUES ('665', '450000', '450900', '玉林市');
INSERT INTO `area` VALUES ('666', '450000', '451000', '百色市');
INSERT INTO `area` VALUES ('667', '450000', '451100', '贺州市');
INSERT INTO `area` VALUES ('668', '450000', '451200', '河池市');
INSERT INTO `area` VALUES ('669', '450000', '451300', '来宾市');
INSERT INTO `area` VALUES ('670', '450000', '451400', '崇左市');
INSERT INTO `area` VALUES ('671', '460000', '460100', '海口市');
INSERT INTO `area` VALUES ('672', '460000', '460200', '三亚市');
INSERT INTO `area` VALUES ('673', '460000', '469000', '省直辖县级行政单位');
INSERT INTO `area` VALUES ('674', '500000', '500100', '市辖区');
INSERT INTO `area` VALUES ('675', '500000', '500200', '县');
INSERT INTO `area` VALUES ('676', '500000', '500300', '市');
INSERT INTO `area` VALUES ('677', '510000', '510100', '成都市');
INSERT INTO `area` VALUES ('678', '510000', '510300', '自贡市');
INSERT INTO `area` VALUES ('679', '510000', '510400', '攀枝花市');
INSERT INTO `area` VALUES ('680', '510000', '510500', '泸州市');
INSERT INTO `area` VALUES ('681', '510000', '510600', '德阳市');
INSERT INTO `area` VALUES ('682', '510000', '510700', '绵阳市');
INSERT INTO `area` VALUES ('683', '510000', '510800', '广元市');
INSERT INTO `area` VALUES ('684', '510000', '510900', '遂宁市');
INSERT INTO `area` VALUES ('685', '510000', '511000', '内江市');
INSERT INTO `area` VALUES ('686', '510000', '511100', '乐山市');
INSERT INTO `area` VALUES ('687', '510000', '511300', '南充市');
INSERT INTO `area` VALUES ('688', '510000', '511400', '眉山市');
INSERT INTO `area` VALUES ('689', '510000', '511500', '宜宾市');
INSERT INTO `area` VALUES ('690', '510000', '511600', '广安市');
INSERT INTO `area` VALUES ('691', '510000', '511700', '达州市');
INSERT INTO `area` VALUES ('692', '510000', '511800', '雅安市');
INSERT INTO `area` VALUES ('693', '510000', '511900', '巴中市');
INSERT INTO `area` VALUES ('694', '510000', '512000', '资阳市');
INSERT INTO `area` VALUES ('695', '510000', '513200', '阿坝藏族羌族自治州');
INSERT INTO `area` VALUES ('696', '510000', '513300', '甘孜藏族自治州');
INSERT INTO `area` VALUES ('697', '510000', '513400', '凉山彝族自治州');
INSERT INTO `area` VALUES ('698', '520000', '520100', '贵阳市');
INSERT INTO `area` VALUES ('699', '520000', '520200', '六盘水市');
INSERT INTO `area` VALUES ('700', '520000', '520300', '遵义市');
INSERT INTO `area` VALUES ('701', '520000', '520400', '安顺市');
INSERT INTO `area` VALUES ('702', '520000', '522200', '铜仁地区');
INSERT INTO `area` VALUES ('703', '520000', '522300', '黔西南布依族苗族自治州');
INSERT INTO `area` VALUES ('704', '520000', '522400', '毕节地区');
INSERT INTO `area` VALUES ('705', '520000', '522600', '黔东南苗族侗族自治州');
INSERT INTO `area` VALUES ('706', '520000', '522700', '黔南布依族苗族自治州');
INSERT INTO `area` VALUES ('707', '530000', '530100', '昆明市');
INSERT INTO `area` VALUES ('708', '530000', '530300', '曲靖市');
INSERT INTO `area` VALUES ('709', '530000', '530400', '玉溪市');
INSERT INTO `area` VALUES ('710', '530000', '530500', '保山市');
INSERT INTO `area` VALUES ('711', '530000', '530600', '昭通市');
INSERT INTO `area` VALUES ('712', '530000', '530700', '丽江市');
INSERT INTO `area` VALUES ('713', '530000', '530800', '思茅市');
INSERT INTO `area` VALUES ('714', '530000', '530900', '临沧市');
INSERT INTO `area` VALUES ('715', '530000', '532300', '楚雄彝族自治州');
INSERT INTO `area` VALUES ('716', '530000', '532500', '红河哈尼族彝族自治州');
INSERT INTO `area` VALUES ('717', '530000', '532600', '文山壮族苗族自治州');
INSERT INTO `area` VALUES ('718', '530000', '532800', '西双版纳傣族自治州');
INSERT INTO `area` VALUES ('719', '530000', '532900', '大理白族自治州');
INSERT INTO `area` VALUES ('720', '530000', '533100', '德宏傣族景颇族自治州');
INSERT INTO `area` VALUES ('721', '530000', '533300', '怒江傈僳族自治州');
INSERT INTO `area` VALUES ('722', '530000', '533400', '迪庆藏族自治州');
INSERT INTO `area` VALUES ('723', '540000', '540100', '拉萨市');
INSERT INTO `area` VALUES ('724', '540000', '542100', '昌都地区');
INSERT INTO `area` VALUES ('725', '540000', '542200', '山南地区');
INSERT INTO `area` VALUES ('726', '540000', '542300', '日喀则地区');
INSERT INTO `area` VALUES ('727', '540000', '542400', '那曲地区');
INSERT INTO `area` VALUES ('728', '540000', '542500', '阿里地区');
INSERT INTO `area` VALUES ('729', '540000', '542600', '林芝地区');
INSERT INTO `area` VALUES ('730', '610000', '610100', '西安市');
INSERT INTO `area` VALUES ('731', '610000', '610200', '铜川市');
INSERT INTO `area` VALUES ('732', '610000', '610300', '宝鸡市');
INSERT INTO `area` VALUES ('733', '610000', '610400', '咸阳市');
INSERT INTO `area` VALUES ('734', '610000', '610500', '渭南市');
INSERT INTO `area` VALUES ('735', '610000', '610600', '延安市');
INSERT INTO `area` VALUES ('736', '610000', '610700', '汉中市');
INSERT INTO `area` VALUES ('737', '610000', '610800', '榆林市');
INSERT INTO `area` VALUES ('738', '610000', '610900', '安康市');
INSERT INTO `area` VALUES ('739', '610000', '611000', '商洛市');
INSERT INTO `area` VALUES ('740', '620000', '620100', '兰州市');
INSERT INTO `area` VALUES ('741', '620000', '620200', '嘉峪关市');
INSERT INTO `area` VALUES ('742', '620000', '620300', '金昌市');
INSERT INTO `area` VALUES ('743', '620000', '620400', '白银市');
INSERT INTO `area` VALUES ('744', '620000', '620500', '天水市');
INSERT INTO `area` VALUES ('745', '620000', '620600', '武威市');
INSERT INTO `area` VALUES ('746', '620000', '620700', '张掖市');
INSERT INTO `area` VALUES ('747', '620000', '620800', '平凉市');
INSERT INTO `area` VALUES ('748', '620000', '620900', '酒泉市');
INSERT INTO `area` VALUES ('749', '620000', '621000', '庆阳市');
INSERT INTO `area` VALUES ('750', '620000', '621100', '定西市');
INSERT INTO `area` VALUES ('751', '620000', '621200', '陇南市');
INSERT INTO `area` VALUES ('752', '620000', '622900', '临夏回族自治州');
INSERT INTO `area` VALUES ('753', '620000', '623000', '甘南藏族自治州');
INSERT INTO `area` VALUES ('754', '630000', '630100', '西宁市');
INSERT INTO `area` VALUES ('755', '630000', '632100', '海东地区');
INSERT INTO `area` VALUES ('756', '630000', '632200', '海北藏族自治州');
INSERT INTO `area` VALUES ('757', '630000', '632300', '黄南藏族自治州');
INSERT INTO `area` VALUES ('758', '630000', '632500', '海南藏族自治州');
INSERT INTO `area` VALUES ('759', '630000', '632600', '果洛藏族自治州');
INSERT INTO `area` VALUES ('760', '630000', '632700', '玉树藏族自治州');
INSERT INTO `area` VALUES ('761', '630000', '632800', '海西蒙古族藏族自治州');
INSERT INTO `area` VALUES ('762', '640000', '640100', '银川市');
INSERT INTO `area` VALUES ('763', '640000', '640200', '石嘴山市');
INSERT INTO `area` VALUES ('764', '640000', '640300', '吴忠市');
INSERT INTO `area` VALUES ('765', '640000', '640400', '固原市');
INSERT INTO `area` VALUES ('766', '640000', '640500', '中卫市');
INSERT INTO `area` VALUES ('767', '650000', '650100', '乌鲁木齐市');
INSERT INTO `area` VALUES ('768', '650000', '650200', '克拉玛依市');
INSERT INTO `area` VALUES ('769', '650000', '652100', '吐鲁番地区');
INSERT INTO `area` VALUES ('770', '650000', '652200', '哈密地区');
INSERT INTO `area` VALUES ('771', '650000', '652300', '昌吉回族自治州');
INSERT INTO `area` VALUES ('772', '650000', '652700', '博尔塔拉蒙古自治州');
INSERT INTO `area` VALUES ('773', '650000', '652800', '巴音郭楞蒙古自治州');
INSERT INTO `area` VALUES ('774', '650000', '652900', '阿克苏地区');
INSERT INTO `area` VALUES ('775', '650000', '653000', '克孜勒苏柯尔克孜自治州');
INSERT INTO `area` VALUES ('776', '650000', '653100', '喀什地区');
INSERT INTO `area` VALUES ('777', '650000', '653200', '和田地区');
INSERT INTO `area` VALUES ('778', '650000', '654000', '伊犁哈萨克自治州');
INSERT INTO `area` VALUES ('779', '650000', '654200', '塔城地区');
INSERT INTO `area` VALUES ('780', '650000', '654300', '阿勒泰地区');
INSERT INTO `area` VALUES ('781', '650000', '659000', '省直辖行政单位');

-- ----------------------------
-- Table structure for housing_estate
-- ----------------------------
DROP TABLE IF EXISTS `housing_estate`;
CREATE TABLE `housing_estate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，UUID',
  `code` varchar(50) DEFAULT NULL COMMENT '小区编码',
  `name` varchar(50) DEFAULT NULL COMMENT '小区名称',
  `quantity` varchar(10) DEFAULT NULL COMMENT '住户数',
  `province_code` varchar(10) DEFAULT NULL COMMENT '省编码',
  `city_code` varchar(10) DEFAULT NULL COMMENT '市编码',
  `address` varchar(100) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='小区表';

-- ----------------------------
-- Records of housing_estate
-- ----------------------------
INSERT INTO `housing_estate` VALUES ('1', '21212', '测试', '700', '130000', '130900', '测试地址');
INSERT INTO `housing_estate` VALUES ('2', '222221', '大声道1', '33331', '150000', '150100', '少时诵诗书所所1');
INSERT INTO `housing_estate` VALUES ('3', '444444', '测试1', '555', '130000', '130900', '详细地址');

-- ----------------------------
-- Table structure for owner
-- ----------------------------
DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，UUID',
  `name` varchar(50) DEFAULT NULL COMMENT '业主姓名',
  `idCard` varchar(18) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL COMMENT '性别，0男1女',
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号',
  `housing_estate_code` varchar(10) DEFAULT NULL COMMENT '小区编码',
  `address` varchar(200) DEFAULT NULL,
  `score` int(11) DEFAULT NULL COMMENT '积分',
  `openid` varchar(50) DEFAULT NULL COMMENT '微信openid',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='业主表';

-- ----------------------------
-- Records of owner
-- ----------------------------
INSERT INTO `owner` VALUES ('1', '测试', '152105198310030634', 'sex_1', '133333333', '21212', null, '12345', 'assddf12223reswfsd', '2018-02-25 18:50:03');
INSERT INTO `owner` VALUES ('2', '测测从', '152105198310030634', 'sex_0', '8888888', '222221', null, '4321', 'rerrrrrrrrrr', '2018-02-25 18:49:59');
INSERT INTO `owner` VALUES ('10', '卡的接口2222', '152105198310030634', 'sex_1', '13439658509', '21212', '看金晶科技看看就22222', '0', '123', '2017-08-19 21:16:28');
INSERT INTO `owner` VALUES ('14', '课时费的三大', '152105198310030634', 'sex_1', '13439658500', '21212', '15号楼一单元101', '0', '123', '2017-08-19 21:16:30');
INSERT INTO `owner` VALUES ('15', '你肯定', '152105198310030634', 'sex_1', '13333333333', '21212', '河北省-沧州市-测试地址-98号楼2单元306', '0', '123', '2017-08-19 22:01:25');
INSERT INTO `owner` VALUES ('16', '你肯kkkkkkkkk', '152105198310030634', 'sex_1', '13333333333', '21212', '河北省-沧州市-测试地址-98号楼2单元306', '0', '', '2017-08-19 22:02:26');
INSERT INTO `owner` VALUES ('17', '贫困生就', '152105198310030634', 'sex_1', '13333333333', '444444', '河北省-沧州市-详细地址-67号楼8单元888', '0', '', '2017-08-19 22:05:37');
INSERT INTO `owner` VALUES ('18', '的刷卡机离开的家', '152105198310030634', 'sex_1', '17788888888', '21212', '河北省-沧州市-测试地址-sadsadasdasd', '0', 'o0vhRxKq63_gc_nQ4ODYHBxMQeG8', '2017-08-20 22:05:34');
INSERT INTO `owner` VALUES ('19', '就是手机', '152105198310030634', 'sex_1', '13366669999', '444444', '河北省-沧州市-详细地址-康达驾校你辛苦', '0', 'o0vhRxKq63_gc_nQ4ODYHBxMQeG8', '2017-08-20 22:07:09');

-- ----------------------------
-- Table structure for reclamation_order
-- ----------------------------
DROP TABLE IF EXISTS `reclamation_order`;
CREATE TABLE `reclamation_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，UUID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `scrap_code` varchar(50) DEFAULT NULL COMMENT '废品编码',
  `owner_id` varchar(50) DEFAULT NULL COMMENT '业主id',
  `sc_id` varchar(50) DEFAULT NULL COMMENT '废品回收员id',
  `rd_id` varchar(50) DEFAULT NULL COMMENT '废品分捡站id',
  `amount` int(11) DEFAULT NULL COMMENT '回收数量',
  `unit` varchar(20) DEFAULT NULL COMMENT '回收单位',
  `money` int(11) DEFAULT NULL COMMENT '回收金额',
  `sc_status` varchar(5) DEFAULT NULL COMMENT '回收标识（数据字典可查）',
  `rd_status` varchar(5) DEFAULT NULL COMMENT '分捡标识（数据字典可查）',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reclamation_order
-- ----------------------------
INSERT INTO `reclamation_order` VALUES ('1', '999999', '12121', '15', '1', null, '555', 'kg', '777', 'sc_1', 'rd_0', '2017-08-19 23:45:32', '2017-08-19 23:45:32');
INSERT INTO `reclamation_order` VALUES ('2', 'R-2017-08-19-1503157926091', '', '', null, null, null, '', null, '', '', '2017-08-19 23:52:06', '2017-10-14 16:29:07');
INSERT INTO `reclamation_order` VALUES ('3', 'R-2017-08-19-1503158015864', '12121', '15', '1', null, null, 'kg', null, 'del', 'rd_0', '2017-08-20 14:46:51', '2017-08-20 14:46:51');
INSERT INTO `reclamation_order` VALUES ('4', 'R-2017-08-19-1503158101134', '12121', '10', '1', null, '4', 'kg', '240', 'sc_1', 'rd_0', '2017-08-20 16:02:40', '2017-08-20 16:02:40');
INSERT INTO `reclamation_order` VALUES ('5', 'R-2017-08-19-1503158147917', '12121', '14', '1', null, null, 'kg', null, 'sc_0', 'rd_0', '2017-08-20 14:46:54', '2017-08-20 14:46:54');

-- ----------------------------
-- Table structure for scrap
-- ----------------------------
DROP TABLE IF EXISTS `scrap`;
CREATE TABLE `scrap` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，UUID',
  `scrap_code` varchar(50) DEFAULT NULL COMMENT '废品编码',
  `scrap_name` varchar(50) DEFAULT NULL COMMENT '废品名称',
  `category` varchar(50) DEFAULT NULL COMMENT '类别，（数据字典可查）',
  `unit` varchar(20) DEFAULT NULL COMMENT '回收单位',
  `price` int(11) DEFAULT NULL COMMENT '价格（元/千克）',
  `score` int(11) DEFAULT NULL COMMENT '积分（分/千克）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='废品表';

-- ----------------------------
-- Records of scrap
-- ----------------------------
INSERT INTO `scrap` VALUES ('1', '12121', '测试', 'scrap_002', 'kg', '60', '10');
INSERT INTO `scrap` VALUES ('2', '164566465', '垃圾', '', '78', '566', '56');

-- ----------------------------
-- Table structure for scrap_collector
-- ----------------------------
DROP TABLE IF EXISTS `scrap_collector`;
CREATE TABLE `scrap_collector` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，UUID',
  `name` varchar(50) DEFAULT NULL COMMENT '回收员姓名',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别，0男1女',
  `idCard` varchar(50) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号',
  `housing_estate_code` varchar(50) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL COMMENT '微信openid',
  `income` bigint(20) DEFAULT NULL COMMENT '收入（元）',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='废品回收员表';

-- ----------------------------
-- Records of scrap_collector
-- ----------------------------
INSERT INTO `scrap_collector` VALUES ('1', '浏览信息统计', null, '444545454565465456465', '18838959757', '', null, null, '2018-05-06 14:45:54');

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0' COMMENT '上级机构',
  `name` varchar(32) NOT NULL COMMENT '部门/11111',
  `code` varchar(128) DEFAULT NULL COMMENT '机构编码',
  `sort` int(11) DEFAULT '0' COMMENT '序号',
  `linkman` varchar(64) DEFAULT NULL COMMENT '联系人',
  `linkman_no` varchar(32) DEFAULT NULL COMMENT '联系人电话',
  `remark` varchar(128) DEFAULT NULL COMMENT '机构描述',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_department
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dict_tabname` varchar(256) DEFAULT NULL COMMENT '名称',
  `dict_colname` varchar(64) DEFAULT NULL COMMENT '类型',
  `dict_option` varchar(256) DEFAULT NULL COMMENT '备注',
  `dict_text` varchar(256) DEFAULT NULL,
  `dict_sort` int(2) DEFAULT NULL,
  `dict_name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='数据字典主表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '日志配置', 'systemLog', '212', '212', '1', '2');
INSERT INTO `sys_dict` VALUES ('2', '目录类型', 'articleType', 'wqq', 'wqw', '2', 'qw');
INSERT INTO `sys_dict` VALUES ('11', '目录类型', 'folderType', null, null, null, null);
INSERT INTO `sys_dict` VALUES ('100', '系统参数', 'systemParam', null, null, null, null);
INSERT INTO `sys_dict` VALUES ('101', '友情链接类型', 'friendlyLinkType', null, null, null, null);
INSERT INTO `sys_dict` VALUES ('103', 'scrap', 'category', 'scrap_001', '电子产品', '1', '废品类别');
INSERT INTO `sys_dict` VALUES ('104', 'scrap', 'category', 'scrap_002', '硬纸板', '2', '废品类别');
INSERT INTO `sys_dict` VALUES ('105', 'owner', 'sex', 'sex_0', '男', '1', '性别');
INSERT INTO `sys_dict` VALUES ('107', 'reclamation_order', 'sc_status', 'sc_0', '未回收', '1', '回收状态');
INSERT INTO `sys_dict` VALUES ('108', 'reclamation_order', 'sc_status', 'sc_1', '已回收', '2', '回收状态');
INSERT INTO `sys_dict` VALUES ('109', 'reclamation_order', 'rd_status', 'rd_0', '未分捡', '1', '分捡状态');
INSERT INTO `sys_dict` VALUES ('110', 'reclamation_order', 'rd_status', 'rd_1', '已分捡', '2', '分捡状态');
INSERT INTO `sys_dict` VALUES ('111', 'reclamation_order', 'sc_status', 'del', '已删除', '0', '订单状态');

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dict_type` varchar(64) NOT NULL COMMENT '数据字典类型',
  `detail_name` varchar(256) DEFAULT NULL COMMENT '名称',
  `detail_code` varchar(32) DEFAULT NULL COMMENT '代码',
  `detail_sort` varchar(32) DEFAULT NULL COMMENT '排序号',
  `detail_type` varchar(32) DEFAULT NULL COMMENT '类型',
  `detail_state` varchar(32) DEFAULT NULL COMMENT '状态',
  `detail_content` varchar(256) DEFAULT NULL COMMENT '内容',
  `detail_remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='数据字典';

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
INSERT INTO `sys_dict_detail` VALUES ('1', 'folderType', '目录', '1', '1', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('2', 'folderType', 'a标签', '2', '2', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('3', 'folderType', 'a标签target', '3', '3', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('4', 'folderType', 'html标签', '4', '4', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('11', 'articleType', '正常', '1', '1', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('12', 'articleType', '预览', '2', '2', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('13', 'articleType', '程序', '3', '3', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('21', 'friendlyLinkType', '友情链接', null, '1', null, null, null, null, '2015-05-06 15:18:59', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('22', 'friendlyLinkType', '关于我们', null, '2', null, null, null, null, '2015-05-06 15:19:20', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('51', 'systemLog', 'sys_dict', '数据字典主表', '1', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('52', 'systemLog', 'sys_dict_detail', '数据字典', '2', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('53', 'systemLog', 'sys_menu', '菜单管理', '3', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('54', 'systemLog', 'sys_department', '组织机构', '4', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('55', 'systemLog', 'sys_user', '用户管理', '5', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('56', 'systemLog', 'sys_user_role', '用户角色授权', '6', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('57', 'systemLog', 'sys_role', '角色管理', '7', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('58', 'systemLog', 'sys_role_folder', '角色目录授权', '8', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('59', 'systemLog', 'sys_role_menu', '角色菜单授权', '9', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('60', 'systemLog', 'tb_folder', '目录管理', '10', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('61', 'systemLog', 'tb_article', '文章管理', '11', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('62', 'systemLog', 'tb_articlelike', '喜欢的文章管理', '12', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('63', 'systemLog', 'tb_comment', '评论管理', '13', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('64', 'systemLog', 'tb_tags', '标签管理', '14', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('65', 'systemLog', 'tb_contact', '联系人', '15', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('66', 'systemLog', 'tb_error', '错误管理', '16', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('67', 'systemLog', 'tb_friendlylink', '友情链接', '17', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('68', 'systemLog', 'tb_pageview', '访问量统计', '18', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('101', 'systemParam', '门头沟信息网', '1', '1', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('102', 'materialType', '文章', '1', '1', null, null, null, null, '2016-03-31 22:35:05', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('103', 'materialType', '图片', '2', '2', null, null, null, null, '2016-03-31 22:35:17', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('104', 'materialType', '视频', '3', '3', null, null, null, null, '2016-03-31 22:35:28', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('105', 'materialType', '其他', '9', '9', null, null, null, null, '2016-03-31 22:35:39', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('106', 'materialType', '栏目', '6', '6', null, null, null, null, '2016-03-31 23:46:27', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('107', 'systemLog', 'tb_site', '站点管理', '19', null, null, null, null, '2016-04-14 00:02:45', '1', null, null);

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '上传人',
  `f_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '文件名',
  `f_time` datetime DEFAULT NULL COMMENT '上传时间',
  `f_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '存放路径',
  `f_size` bigint(20) DEFAULT NULL COMMENT '文件大小（B）',
  `f_download` int(11) DEFAULT NULL COMMENT '文件下载次数',
  `f_type` int(1) DEFAULT NULL COMMENT '文件类型',
  `f_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '文件描述',
  `f_name_old` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '旧的文件名',
  `md5` varchar(40) DEFAULT '' COMMENT '文件的MD5值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES ('1', '1', 'f_dd68d889f21e0aaa56a00d0ab6085d3f.png', '2016-12-08 12:15:22', 'd:/upload/', '11475', null, '0', null, 'f_7e6271eae2c74e0c8672a2bde96b7581.png', 'dd68d889f21e0aaa56a00d0ab6085d3f');
INSERT INTO `sys_file` VALUES ('2', '1', 'f_860aa8a0e18397b0623fe946345fcfab.png', '2016-12-08 12:15:22', 'd:/upload/', '32434', null, '0', null, 'f_78d5ab8a748e4841858e29470ca15fdd.png', '860aa8a0e18397b0623fe946345fcfab');
INSERT INTO `sys_file` VALUES ('3', '1', 'f_3b9b5deacf0f42e5cea31f5bbd5687f5.jpg', '2016-12-08 12:15:22', 'd:/upload/', '82266', null, '0', null, 'hn_file_1478681062451.jpg', '3b9b5deacf0f42e5cea31f5bbd5687f5');
INSERT INTO `sys_file` VALUES ('4', '1', 'f_8bfc8af3147f101c162f9a2a77790d11.xlsx', '2016-12-08 12:15:22', 'd:/upload/', '9565', null, '3', null, 'billsrecord-template.xlsx', '8bfc8af3147f101c162f9a2a77790d11');
INSERT INTO `sys_file` VALUES ('5', '1', 'f_421d169218336d0f8f960024be3e9728.mp4', '2016-12-08 12:18:39', 'd:/upload/', '537477673', null, '6', null, '秒速5厘米_bd.mp4', '421d169218336d0f8f960024be3e9728');
INSERT INTO `sys_file` VALUES ('6', '1', 'f_234579dacb454faeafe58835eef09d59.png', '2016-12-08 12:35:34', 'd:/upload/', '11475', null, '0', null, 'QQ图片20161206130454.png', '234579dacb454faeafe58835eef09d59');
INSERT INTO `sys_file` VALUES ('7', '1', 'f_79e5789f8a5447e78c98d599959cfb3a.png', '2016-12-08 13:09:19', 'd:/upload/', '11475', null, '0', null, 'QQ图片20161206130454.png', '79e5789f8a5447e78c98d599959cfb3a');
INSERT INTO `sys_file` VALUES ('8', '1', 'f_3587c85cf51a4ddf9b0b9e047bedfd32.png', '2016-12-08 13:09:19', 'd:/upload/', '32434', null, '0', null, 'QQ图片20161206130459.png', '3587c85cf51a4ddf9b0b9e047bedfd32');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` int(11) NOT NULL COMMENT '类型',
  `oper_object` varchar(64) DEFAULT NULL COMMENT '操作对象',
  `oper_table` varchar(64) NOT NULL COMMENT '操作表',
  `oper_id` int(11) DEFAULT '0' COMMENT '操作主键',
  `oper_type` varchar(64) DEFAULT NULL COMMENT '操作类型',
  `oper_remark` varchar(100) DEFAULT NULL COMMENT '操作备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `icon` varchar(20) DEFAULT NULL COMMENT '图标',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '名称/11111',
  `urlkey` varchar(256) DEFAULT NULL COMMENT '菜单key',
  `url` varchar(256) DEFAULT NULL COMMENT '链接地址',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `type` int(11) DEFAULT '1' COMMENT '类型//select/1,根目录,2,a标签,3,a标签_blank,4,外部url',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `level` int(11) DEFAULT '1' COMMENT '级别',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('13', '13', '&#xe616;', '权限管理模块', 'authc', 'http://www.anfone.net/info/TGSQWYB/2016-7/5050861.html', '2', '1', '1', '1', '2017-08-16 11:17:06', '1', '2018-05-07 11:01:37', null);
INSERT INTO `sys_menu` VALUES ('14', '13', '&#xe613;', '菜单管理', 'system-menu-list', 'system-menu-list.jsp', '2', '4', '2', '1', '2017-08-16 11:19:45', '1', '2018-05-07 22:42:50', null);
INSERT INTO `sys_menu` VALUES ('15', '13', '&#xe60d;', '角色管理', 'system-role-list', 'system-role-list.jsp', '1', '4', '3', '1', '2017-08-16 11:20:45', '1', '2017-08-16 11:20:45', null);
INSERT INTO `sys_menu` VALUES ('16', '13', '&#xe62d;', '用户管理', 'system-admin-list', 'system-admin-list.jsp', '1', '4', '4', '1', '2017-08-16 11:21:16', '1', '2017-08-16 11:21:16', null);
INSERT INTO `sys_menu` VALUES ('17', '0', '&#xe613;', '废品管理模块', 'scope', '', '1', '1', '5', '1', '2017-08-16 11:22:28', '1', '2017-08-16 11:22:28', null);
INSERT INTO `sys_menu` VALUES ('18', '17', '&#xe616;', '废品管理', 'scrap-list', 'scrap-list.jsp', '1', '4', '6', '1', '2017-08-16 11:23:19', '1', '2017-08-16 11:23:19', null);
INSERT INTO `sys_menu` VALUES ('19', '0', '&#xe60d;', '废品回收员管理模块', 'scrap-collector', '', '1', '1', '7', '1', '2017-08-16 11:24:09', '1', '2017-08-16 11:24:09', null);
INSERT INTO `sys_menu` VALUES ('20', '19', '&#xe620;', '废品回收员管理', 'scrap-collector-list', 'scrap-collector-list.jsp', '1', '4', '8', '1', '2017-08-16 11:25:44', '1', '2017-08-16 11:25:44', null);
INSERT INTO `sys_menu` VALUES ('21', '0', '&#xe616;', '业主管理模块', 'owner', '', '1', '1', '9', '1', '2017-08-16 11:50:24', '1', '2017-08-16 11:50:24', null);
INSERT INTO `sys_menu` VALUES ('22', '21', '&#xe616;', '业主管理', 'owner-list', 'owner-list.jsp', '1', '4', '10', '1', '2017-08-16 11:51:04', '1', '2017-08-16 11:51:04', null);
INSERT INTO `sys_menu` VALUES ('23', '0', '&#xe616;', '小区管理模块', 'housing-estate', '', '1', '1', '11', '1', '2017-08-16 11:51:30', '1', '2017-08-16 11:51:30', null);
INSERT INTO `sys_menu` VALUES ('24', '23', '&#xe616;', '小区管理', 'housing-estate-list', 'housing-estate-list.jsp', '1', '4', '12', '1', '2017-08-16 11:52:02', '1', '2017-08-16 11:52:02', null);
INSERT INTO `sys_menu` VALUES ('25', '0', '&#xe62e;', '系统管理模块', 'system', '', '1', '1', '13', '1', '2017-08-16 11:52:45', '1', '2017-08-16 11:52:45', null);
INSERT INTO `sys_menu` VALUES ('26', '25', '&#xe634;', '数据字典', 'system-dict-list', 'system-dict-list.jsp', '1', '4', '14', '1', '2017-08-16 11:53:20', '1', '2017-08-16 11:53:20', null);
INSERT INTO `sys_menu` VALUES ('27', '13', '', '浏览信息统计', 'asfas', 'd as', '2', '1', '1', '1', '2018-05-02 16:41:38', '2', null, null);
INSERT INTO `sys_menu` VALUES ('28', '13', '&#xe620;', 'dada', '管理员', 'system-menu-list.jsp', '1', '1', '5030', null, '2018-05-08 10:06:53', null, null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '名称/11111/',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `remark` text COMMENT '说明//textarea',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '1', '0', null, '2016-10-28 21:05:17', '1', '2016-10-28 21:05:17', null);
INSERT INTO `sys_role` VALUES ('2', '易仁翔', '1', '1', null, '2018-05-07 10:58:48', null, null, null);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roleid` int(11) NOT NULL COMMENT '角色id',
  `menuid` int(11) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('10', '1', '6');
INSERT INTO `sys_role_menu` VALUES ('11', '2', '14');
INSERT INTO `sys_role_menu` VALUES ('12', '2', '15');
INSERT INTO `sys_role_menu` VALUES ('13', '2', '16');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(32) NOT NULL COMMENT '用户名/11111',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `realname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `role_id` int(11) DEFAULT '0' COMMENT '角色ID',
  `usertype` int(11) DEFAULT '2' COMMENT '类型//select/1,管理员,2,普通用户,3,前台用户,4,第三方用户',
  `state` int(11) DEFAULT '10' COMMENT '状态',
  `third_id` varchar(200) DEFAULT NULL COMMENT '第三方ID',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `email` varchar(64) DEFAULT NULL COMMENT 'email',
  `tel` varchar(32) DEFAULT NULL COMMENT '手机号',
  `address` varchar(32) DEFAULT NULL COMMENT '地址',
  `title_url` varchar(200) DEFAULT NULL COMMENT '头像地址',
  `remark` varchar(1000) DEFAULT NULL COMMENT '说明',
  `theme` varchar(64) DEFAULT 'default' COMMENT '主题',
  `back_site_id` int(11) DEFAULT '0' COMMENT '后台选择站点ID',
  `create_site_id` int(11) DEFAULT '1' COMMENT '创建站点ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '202cb962ac59075b964b07152d234b70', '系统管理员', '1', '1', '1', null, '2017-08-12 21:07:19', null, null, null, null, null, 'default', '0', '1', null, '0', null, null);
INSERT INTO `sys_user` VALUES ('2', 'aaa', 'aaaaaa', '用户', '1', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'sasa', 'default', '0', '1', '2017-08-12 23:34:11', '1', '2017-08-12 23:34:11', null);
INSERT INTO `sys_user` VALUES ('8', 'hao', '202cb962ac59075b964b07152d234b70', null, '0', '2', '10', null, null, null, null, null, null, null, 'default', '0', '1', null, '0', null, null);

-- ----------------------------
-- Table structure for tb_contact
-- ----------------------------
DROP TABLE IF EXISTS `tb_contact`;
CREATE TABLE `tb_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(256) NOT NULL COMMENT '姓名',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `email` varchar(32) DEFAULT NULL COMMENT 'Email',
  `addr` varchar(256) DEFAULT NULL COMMENT '地址',
  `birthday` varchar(32) DEFAULT NULL COMMENT '生日',
  `remark` varchar(256) DEFAULT NULL COMMENT '说明',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联系人';

-- ----------------------------
-- Records of tb_contact
-- ----------------------------
INSERT INTO `tb_contact` VALUES ('1', '张三', '15812345678', 'zhangsan@sina.com', '北京市', '2015-04-28', null, '2015-01-27 00:00:00', '1', null, null);

-- ----------------------------
-- Table structure for tb_error
-- ----------------------------
DROP TABLE IF EXISTS `tb_error`;
CREATE TABLE `tb_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `ip` varchar(64) NOT NULL COMMENT 'IP地址',
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `content` text COMMENT '描述',
  `remark` text COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='异常数据';

-- ----------------------------
-- Records of tb_error
-- ----------------------------
INSERT INTO `tb_error` VALUES ('1', '1', '127.0.0.1', '2', '上传数量：2015062100(11)-20150621(11)', null, '2015-06-21 00:24:30', '2');
INSERT INTO `tb_error` VALUES ('2', '1', '127.0.0.1', '2', '上传数量：2015062100(11)-20150621(11)', null, '2015-06-21 00:26:32', '2');

-- ----------------------------
-- Table structure for tb_friendlylink
-- ----------------------------
DROP TABLE IF EXISTS `tb_friendlylink`;
CREATE TABLE `tb_friendlylink` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(256) NOT NULL COMMENT '名称/11111/',
  `url` varchar(256) NOT NULL COMMENT 'URL',
  `sort` int(11) NOT NULL COMMENT '排序号',
  `state` int(11) DEFAULT '0' COMMENT '是否显示//radio/1,显示,2,不显示',
  `type` int(11) DEFAULT '21' COMMENT '类型//select/1,见数据字典',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注//textarea',
  `site_id` int(11) DEFAULT '0' COMMENT '站点ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of tb_friendlylink
-- ----------------------------
INSERT INTO `tb_friendlylink` VALUES ('1', '意见反馈', 'http://www.jflyfox.com/mtg/advice', '16', '1', '22', null, '0', '2015-04-24 15:03:02', '1', null, null);
INSERT INTO `tb_friendlylink` VALUES ('2', '捐赠我们', 'http://www.jflyfox.com/mtg/front/about/351.html', '13', '1', '22', null, '0', '2015-04-24 15:27:36', '1', null, null);
INSERT INTO `tb_friendlylink` VALUES ('3', '关于我们', 'http://www.jflyfox.com/mtgfront/about/352.html', '2', '1', '22', null, '0', '2015-04-24 15:28:56', '1', null, null);
INSERT INTO `tb_friendlylink` VALUES ('4', '给我写信', 'http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=allcU1tTW15dWiobG0QJBQc', '15', '1', '22', null, '0', '2015-04-24 15:29:12', '1', null, null);
INSERT INTO `tb_friendlylink` VALUES ('5', '大峪中学', 'http://www.dyzx-bj.com/', '112', '1', '21', null, '0', '2015-05-06 16:13:40', '1', null, null);
INSERT INTO `tb_friendlylink` VALUES ('6', 'Jflyfox博客', 'http://www.jflyfox.com/', '114', '1', '21', null, '0', '2015-05-06 16:14:37', '1', null, null);
INSERT INTO `tb_friendlylink` VALUES ('7', '门头沟介绍', 'http://baike.baidu.com/view/193726.htm?fromtitle=%E9%97%A8%E5%A4%B4%E6%B2%9F&fromid=1055081&type=syn', '111', '1', '21', null, '0', '2015-05-06 16:15:03', '1', null, null);
INSERT INTO `tb_friendlylink` VALUES ('8', '联系我们', 'http://www.jflyfox.com/mtgfront/about/353.html', '3', '1', '22', null, '0', '2015-05-26 11:26:57', '1', null, null);
INSERT INTO `tb_friendlylink` VALUES ('9', '免责声明', 'http://www.jflyfox.com/mtgfront/about/354.html', '20', '1', '22', null, '0', '2015-05-26 11:27:18', '1', null, null);
INSERT INTO `tb_friendlylink` VALUES ('10', '广告服务', 'http://www.jflyfox.com/mtgfront/about/355.html', '11', '1', '22', null, '0', '2015-05-26 11:28:42', '1', null, null);

-- ----------------------------
-- Table structure for tb_heartbeat
-- ----------------------------
DROP TABLE IF EXISTS `tb_heartbeat`;
CREATE TABLE `tb_heartbeat` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_heartbeat
-- ----------------------------

-- ----------------------------
-- Table structure for tb_image
-- ----------------------------
DROP TABLE IF EXISTS `tb_image`;
CREATE TABLE `tb_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `album_id` int(11) DEFAULT '1' COMMENT '相册ID',
  `album_name` varchar(200) DEFAULT '' COMMENT '相册名称',
  `name` varchar(200) DEFAULT '' COMMENT '图片名称',
  `linkurl` varchar(400) DEFAULT '' COMMENT '链接地址',
  `cdnurl` varchar(400) DEFAULT '' COMMENT 'CDN地址',
  `image_url` varchar(256) DEFAULT NULL COMMENT '图片路径',
  `image_net_url` varchar(256) DEFAULT NULL COMMENT '网络图片路径',
  `ext` varchar(20) DEFAULT '' COMMENT '扩展名',
  `width` varchar(20) DEFAULT '' COMMENT '宽',
  `height` varchar(20) DEFAULT '' COMMENT '高',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `is_comment` int(11) DEFAULT '1' COMMENT '是否评论//radio/2,否,1,是',
  `is_recommend` int(11) DEFAULT '2' COMMENT '是否推荐：2 否 1 是',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `remark` varchar(400) DEFAULT NULL COMMENT '备注',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  `publish_user` varchar(64) DEFAULT '1' COMMENT '发布者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='图片';

-- ----------------------------
-- Records of tb_image
-- ----------------------------
INSERT INTO `tb_image` VALUES ('2', '1', '风景', '风景1', 'http://image226-c.poco.cn/mypoco/myphoto/20140121/16/6164818720140121160407052_640.jpg?1024x453_120', '', null, 'http://image226-c.poco.cn/mypoco/myphoto/20140121/16/6164818720140121160407052_640.jpg?1024x453_120', 'jpg?1024x453_120', '750', '331', '1', '2', '2', '10', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 00:41:10', '1', '2016-02-10 00:41:10', '1');
INSERT INTO `tb_image` VALUES ('3', '3', '动漫', '动漫1', 'http://thumb.webps.cn/to/img/4/T1DTF3Fc4dXXXXXXXX_!!0-item_pic.jpg', '', null, 'http://thumb.webps.cn/to/img/4/T1DTF3Fc4dXXXXXXXX_!!0-item_pic.jpg', 'jpg', '500', '747', '1', '2', '2', '10', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 00:41:51', '1', '2016-02-10 00:41:51', '1');
INSERT INTO `tb_image` VALUES ('4', '2', '美女', '美女1', 'http://i4.pdim.gs/t01d4f8e84b1434c8e3.jpg', '', null, 'http://i4.pdim.gs/t01d4f8e84b1434c8e3.jpg', 'jpg', '800', '566', '1', '2', '1', '2', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 00:43:20', '1', '2016-02-10 00:43:20', '1');
INSERT INTO `tb_image` VALUES ('5', '4', '游戏', '游戏1', 'http://news.waigame.cn/static/newsimage/20140603/14017632866819.jpg', '', null, 'http://news.waigame.cn/static/newsimage/20140603/14017632866819.jpg', 'jpg', '1400', '933', '1', '2', '2', '10', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 00:44:14', '1', '2016-02-10 00:44:14', '1');
INSERT INTO `tb_image` VALUES ('7', '2', '美女', '美女2', 'http://i12.tietuku.cn/15a72119633c812d.jpg', '', null, 'http://i12.tietuku.cn/15a72119633c812d.jpg', null, '0', '0', '1', '2', '1', '8', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 01:25:41', '1', '2016-02-10 01:25:41', '1');
INSERT INTO `tb_image` VALUES ('8', '2', '美女', '美女3', 'http://i12.tietuku.cn/ccb2e30c9fda92f6.jpg', '', null, 'http://i12.tietuku.cn/ccb2e30c9fda92f6.jpg', 'jpg', '580', '870', '1', '2', '2', '8', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 01:30:59', '1', '2016-02-10 01:30:59', '1');
INSERT INTO `tb_image` VALUES ('9', '2', '美女', '美女4', 'http://i12.tietuku.cn/2329cc70e32d51c7.jpg', '', null, 'http://i12.tietuku.cn/2329cc70e32d51c7.jpg', 'jpg', '480', '800', '1', '1', '2', '10', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 01:31:16', '1', '2016-02-10 01:31:16', '1');
INSERT INTO `tb_image` VALUES ('10', '2', '美女', '美女5', 'http://i12.tietuku.cn/f2229247cf39609c.jpg', '', null, 'http://i12.tietuku.cn/f2229247cf39609c.jpg', 'jpg', '375', '550', '1', '1', '2', '10', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 01:31:30', '1', '2016-02-10 01:31:30', '1');
INSERT INTO `tb_image` VALUES ('11', '2', '美女', '美女6', 'http://i12.tietuku.cn/53cdf688c2c938f0.jpg', '', null, 'http://i12.tietuku.cn/53cdf688c2c938f0.jpg', 'jpg', '610', '833', '1', '2', '2', '8', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 01:31:45', '1', '2016-02-10 01:31:45', '1');
INSERT INTO `tb_image` VALUES ('12', '2', '美女', '美女7', 'http://i12.tietuku.cn/9c83f4d0809adcbc.jpg', '', null, 'http://i12.tietuku.cn/9c83f4d0809adcbc.jpg', 'jpg', '532', '600', '1', '1', '2', '10', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 01:31:59', '1', '2016-02-10 01:31:59', '1');
INSERT INTO `tb_image` VALUES ('13', '2', '美女', '美女8', 'http://i4.tietuku.cn/691d3f2a37fb0ba9.jpg', '', null, 'http://i4.tietuku.cn/691d3f2a37fb0ba9.jpg', 'jpg', '1024', '1536', '1', '2', '2', '10', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 01:33:40', '1', '2016-02-10 01:33:40', '1');
INSERT INTO `tb_image` VALUES ('14', '2', '美女', '美女9', 'http://i4.tietuku.cn/1fd3bb6d9a0d5901.jpg', '', null, 'http://i4.tietuku.cn/1fd3bb6d9a0d5901.jpg', 'jpg', '682', '1024', '1', '2', '2', '9', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 01:34:45', '1', '2016-02-10 01:34:45', '1');
INSERT INTO `tb_image` VALUES ('15', '2', '美女', '美女10', 'http://i13.tietuku.cn/bff63c26bea99e8d.jpg', '', null, 'http://i13.tietuku.cn/bff63c26bea99e8d.jpg', 'jpg', '900', '1200', '1', '1', '2', '10', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 01:35:16', '1', '2016-02-10 01:35:16', '1');
INSERT INTO `tb_image` VALUES ('16', '2', '美女', '美女11', 'http://i13.tietuku.cn/8484c08a850a74c8.jpg', '', null, 'http://i13.tietuku.cn/8484c08a850a74c8.jpg', 'jpg', '768', '1152', '1', '2', '2', '9', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 01:35:55', '1', '2016-02-10 01:35:55', '1');
INSERT INTO `tb_image` VALUES ('17', '2', '美女', '美女12', 'http://i4.tietuku.cn/4231f8da8b09331c.jpg', '', null, 'http://i4.tietuku.cn/4231f8da8b09331c.jpg', 'jpg', '640', '960', '1', '2', '2', '8', null, '2016-02-10 00:00:00', '系统管理员', '2016-02-10 01:36:09', '1', '2016-02-10 01:36:09', '1');
INSERT INTO `tb_image` VALUES ('18', '2', '美女', '美女13', 'http://i13.tietuku.cn/a5d2a6478c6ed758.jpg', '', null, 'http://i13.tietuku.cn/a5d2a6478c6ed758.jpg', 'jpg', '496', '750', '1', '2', '2', '10', null, '2016-02-09 00:00:00', '系统管理员', '2016-02-10 01:36:29', '1', '2016-02-10 01:36:29', '1');
INSERT INTO `tb_image` VALUES ('19', '4', '游戏', '游戏2', 'http://i4.tietuku.cn/c34fc8e188fd210c.jpg', '', null, 'http://i4.tietuku.cn/c34fc8e188fd210c.jpg', 'jpg', '1920', '1080', '1', '1', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 02:57:23', '1', '2016-02-11 02:57:23', '1');
INSERT INTO `tb_image` VALUES ('20', '4', '游戏', '游戏3', 'http://i8.tietuku.cn/ca9d3311b35856b7.jpg', '', null, 'http://i8.tietuku.cn/ca9d3311b35856b7.jpg', 'jpg', '658', '823', '1', '1', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 02:58:35', '1', '2016-02-11 02:58:35', '1');
INSERT INTO `tb_image` VALUES ('21', '4', '游戏', '游戏5', 'http://i4.tietuku.cn/a8ebfc61acef58ae.jpg', '', null, 'http://i4.tietuku.cn/a8ebfc61acef58ae.jpg', 'jpg', '1600', '1200', '1', '2', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 02:59:46', '1', '2016-02-11 02:59:46', '1');
INSERT INTO `tb_image` VALUES ('22', '4', '游戏', '游戏4', 'http://i4.tietuku.cn/51c82af7824bac4c.jpg', '', null, 'http://i4.tietuku.cn/51c82af7824bac4c.jpg', 'jpg', '1600', '1200', '1', '1', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 03:00:11', '1', '2016-02-11 03:00:11', '1');
INSERT INTO `tb_image` VALUES ('23', '4', '游戏', '游戏6', 'http://i8.tietuku.cn/cc4329e67481d4f0.png', '', null, 'http://i8.tietuku.cn/cc4329e67481d4f0.png', 'png', '400', '580', '1', '1', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 03:00:50', '1', '2016-02-11 03:00:50', '1');
INSERT INTO `tb_image` VALUES ('24', '4', '游戏', '游戏7', 'http://i8.tietuku.cn/fa672748521bb33a.jpg', '', null, 'http://i8.tietuku.cn/fa672748521bb33a.jpg', 'jpg', '600', '400', '1', '1', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 03:01:30', '1', '2016-02-11 03:01:30', '1');
INSERT INTO `tb_image` VALUES ('25', '4', '游戏', '游戏8', 'http://i4.tietuku.cn/7a22444c704bdb8c.jpg', '', null, 'http://i4.tietuku.cn/7a22444c704bdb8c.jpg', 'jpg', '751', '1000', '1', '1', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 03:04:52', '1', '2016-02-11 03:04:52', '1');
INSERT INTO `tb_image` VALUES ('26', '3', '动漫', '动漫2', 'http://i12.tietuku.cn/c4b206990bea4877.jpg', '', null, 'http://i12.tietuku.cn/c4b206990bea4877.jpg', 'jpg', '429', '600', '1', '1', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 03:06:29', '1', '2016-02-11 03:06:29', '1');
INSERT INTO `tb_image` VALUES ('27', '3', '动漫', '动漫3', 'http://i11.tietuku.cn/97ec25026f8526ea.jpg', '', null, 'http://i11.tietuku.cn/97ec25026f8526ea.jpg', 'jpg', '188', '266', '1', '1', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 03:06:48', '1', '2016-02-11 03:06:48', '1');
INSERT INTO `tb_image` VALUES ('28', '3', '动漫', '动漫4', 'http://i8.tietuku.cn/99bed4ee4e00683b.jpg', '', null, 'http://i8.tietuku.cn/99bed4ee4e00683b.jpg', 'jpg', '609', '800', '1', '1', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 03:07:03', '1', '2016-02-11 03:07:03', '1');
INSERT INTO `tb_image` VALUES ('29', '3', '动漫', '动漫5', 'http://i4.tietuku.cn/c18889b9f5fcb0f6.jpg', '', null, 'http://i4.tietuku.cn/c18889b9f5fcb0f6.jpg', 'jpg', '637', '900', '1', '1', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 03:07:59', '1', '2016-02-11 03:07:59', '1');
INSERT INTO `tb_image` VALUES ('30', '3', '动漫', '动漫6', 'http://i4.tietuku.cn/e37d596427ae17f8.jpg', '', null, 'http://i4.tietuku.cn/e37d596427ae17f8.jpg', 'jpg', '210', '280', '1', '1', '2', '10', null, '2016-02-11 00:00:00', '系统管理员', '2016-02-11 03:08:31', '1', '2016-02-11 03:08:31', '1');

-- ----------------------------
-- Table structure for tb_image_album
-- ----------------------------
DROP TABLE IF EXISTS `tb_image_album`;
CREATE TABLE `tb_image_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int(11) DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '相册名称',
  `remark` text COMMENT '描述',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='相册';

-- ----------------------------
-- Records of tb_image_album
-- ----------------------------
INSERT INTO `tb_image_album` VALUES ('1', '0', '风景', null, '1', '1', '2016-02-10 00:28:19', '1', '2016-02-10 00:28:19', '1');
INSERT INTO `tb_image_album` VALUES ('2', '0', '美女', null, '2', '1', '2016-02-10 00:28:43', '1', '2016-02-10 00:28:43', '1');
INSERT INTO `tb_image_album` VALUES ('3', '0', '动漫', null, '3', '1', '2016-02-10 00:28:55', '1', '2016-02-10 00:28:55', '1');
INSERT INTO `tb_image_album` VALUES ('4', '0', '游戏', null, '4', '1', '2016-02-10 00:29:42', '1', '2016-02-10 00:29:42', '1');

-- ----------------------------
-- Table structure for tb_image_tags
-- ----------------------------
DROP TABLE IF EXISTS `tb_image_tags`;
CREATE TABLE `tb_image_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `image_id` int(11) DEFAULT NULL COMMENT '图片ID',
  `tagname` varchar(200) DEFAULT '' COMMENT '标签内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='标签';

-- ----------------------------
-- Records of tb_image_tags
-- ----------------------------
INSERT INTO `tb_image_tags` VALUES ('1', null, 'a', '2016-02-10 02:09:39', '1', null, null);
INSERT INTO `tb_image_tags` VALUES ('2', null, 'b', '2016-02-10 02:09:39', '1', null, null);
INSERT INTO `tb_image_tags` VALUES ('3', null, 'b', '2016-02-10 02:09:39', '1', null, null);
INSERT INTO `tb_image_tags` VALUES ('4', null, 'a', '2016-02-10 02:09:48', '1', null, null);
INSERT INTO `tb_image_tags` VALUES ('5', null, 'c', '2016-02-10 02:09:48', '1', null, null);
INSERT INTO `tb_image_tags` VALUES ('6', null, 'a', '2016-02-10 02:10:43', '1', null, null);
INSERT INTO `tb_image_tags` VALUES ('7', null, 'b', '2016-02-10 02:10:45', '1', null, null);
INSERT INTO `tb_image_tags` VALUES ('42', '4', '美女', '2016-02-11 03:12:30', '1', null, null);
INSERT INTO `tb_image_tags` VALUES ('43', '4', '图片', '2016-02-11 03:12:30', '1', null, null);
INSERT INTO `tb_image_tags` VALUES ('44', '4', '视频', '2016-02-11 03:12:31', '1', null, null);

-- ----------------------------
-- Table structure for tb_pageview
-- ----------------------------
DROP TABLE IF EXISTS `tb_pageview`;
CREATE TABLE `tb_pageview` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ip` varchar(64) NOT NULL COMMENT 'IP地址',
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `create_day` varchar(64) NOT NULL COMMENT '创建时间到天',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='访问量统计';

-- ----------------------------
-- Records of tb_pageview
-- ----------------------------
INSERT INTO `tb_pageview` VALUES ('87', '127.0.0.1', '0', '2016-04-04', '2016-04-04 19:53:45', null, null);
INSERT INTO `tb_pageview` VALUES ('88', '127.0.0.1', '0', '2016-04-05', '2016-04-05 00:03:09', null, null);
INSERT INTO `tb_pageview` VALUES ('89', '127.0.0.1', '0', '2016-04-06', '2016-04-06 00:06:37', null, null);
INSERT INTO `tb_pageview` VALUES ('90', '127.0.0.1', '0', '2016-04-07', '2016-04-07 00:09:26', null, null);
INSERT INTO `tb_pageview` VALUES ('91', '0:0:0:0:0:0:0:1', '0', '2016-04-13', '2016-04-13 23:26:45', null, null);
INSERT INTO `tb_pageview` VALUES ('92', '127.0.0.1', '0', '2016-04-13', '2016-04-13 23:55:23', null, null);
INSERT INTO `tb_pageview` VALUES ('93', '0:0:0:0:0:0:0:1', '0', '2016-04-14', '2016-04-14 00:00:30', null, null);
INSERT INTO `tb_pageview` VALUES ('94', '0:0:0:0:0:0:0:1', '0', '2016-04-16', '2016-04-16 02:01:06', null, null);
INSERT INTO `tb_pageview` VALUES ('95', '127.0.0.1', '0', '2016-04-16', '2016-04-16 02:02:32', null, null);
INSERT INTO `tb_pageview` VALUES ('96', '0:0:0:0:0:0:0:1', '0', '2016-04-17', '2016-04-17 05:19:38', null, null);
INSERT INTO `tb_pageview` VALUES ('97', '127.0.0.1', '0', '2016-04-17', '2016-04-17 05:20:06', null, null);
INSERT INTO `tb_pageview` VALUES ('98', '0:0:0:0:0:0:0:1', '0', '2016-04-18', '2016-04-18 00:05:27', null, null);
INSERT INTO `tb_pageview` VALUES ('99', '127.0.0.1', '0', '2016-04-18', '2016-04-18 00:14:24', null, null);
INSERT INTO `tb_pageview` VALUES ('100', '127.0.0.1', '0', '2016-04-19', '2016-04-19 00:02:25', null, null);
INSERT INTO `tb_pageview` VALUES ('101', '0:0:0:0:0:0:0:1', '0', '2016-04-19', '2016-04-19 21:28:43', null, null);
INSERT INTO `tb_pageview` VALUES ('102', '127.0.0.1', '0', '2016-04-20', '2016-04-20 00:00:09', null, null);
INSERT INTO `tb_pageview` VALUES ('103', '127.0.0.1', '0', '2016-04-21', '2016-04-21 01:47:03', null, null);
INSERT INTO `tb_pageview` VALUES ('104', '0:0:0:0:0:0:0:1', '0', '2016-05-07', '2016-05-07 21:53:05', null, null);
INSERT INTO `tb_pageview` VALUES ('105', '127.0.0.1', '0', '2016-05-07', '2016-05-07 22:25:34', null, null);
INSERT INTO `tb_pageview` VALUES ('106', '0:0:0:0:0:0:0:1', '0', '2016-05-08', '2016-05-08 00:01:17', null, null);
INSERT INTO `tb_pageview` VALUES ('107', '0:0:0:0:0:0:0:1', '0', '2016-05-11', '2016-05-11 23:44:10', null, null);
INSERT INTO `tb_pageview` VALUES ('108', '0:0:0:0:0:0:0:1', '0', '2016-05-12', '2016-05-12 00:00:04', null, null);
INSERT INTO `tb_pageview` VALUES ('109', '127.0.0.1', '0', '2016-05-12', '2016-05-12 00:06:36', null, null);

-- ----------------------------
-- Table structure for tb_tags
-- ----------------------------
DROP TABLE IF EXISTS `tb_tags`;
CREATE TABLE `tb_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `article_id` int(11) DEFAULT NULL COMMENT '文章ID',
  `tagname` varchar(200) DEFAULT '' COMMENT '标签内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='标签';

-- ----------------------------
-- Records of tb_tags
-- ----------------------------
INSERT INTO `tb_tags` VALUES ('6', '343', '学校', '2015-05-24 23:26:54', '1', null, null);
INSERT INTO `tb_tags` VALUES ('7', '343', '大峪中学', '2015-05-24 23:26:54', '1', null, null);
INSERT INTO `tb_tags` VALUES ('8', '350', '学校', '2015-05-25 14:05:41', '1', null, null);
INSERT INTO `tb_tags` VALUES ('9', '350', '坡头中学', '2015-05-25 14:05:41', '1', null, null);
INSERT INTO `tb_tags` VALUES ('10', '349', '学校', '2015-05-25 14:05:51', '1', null, null);
INSERT INTO `tb_tags` VALUES ('11', '349', '三家店铁路中学', '2015-05-25 14:05:51', '1', null, null);
INSERT INTO `tb_tags` VALUES ('12', '348', '学校', '2015-05-25 14:06:01', '1', null, null);
INSERT INTO `tb_tags` VALUES ('13', '348', '育新中学', '2015-05-25 14:06:02', '1', null, null);
INSERT INTO `tb_tags` VALUES ('14', '347', '学校', '2015-05-25 14:06:13', '1', null, null);
INSERT INTO `tb_tags` VALUES ('15', '347', '新桥路中学', '2015-05-25 14:06:13', '1', null, null);
INSERT INTO `tb_tags` VALUES ('16', '346', '学校', '2015-05-25 14:06:24', '1', null, null);
INSERT INTO `tb_tags` VALUES ('17', '346', '大峪中学分校', '2015-05-25 14:06:24', '1', null, null);
INSERT INTO `tb_tags` VALUES ('18', '345', '学校', '2015-05-25 14:06:42', '1', null, null);
INSERT INTO `tb_tags` VALUES ('19', '345', '首都师范大学附属中学', '2015-05-25 14:06:42', '1', null, null);
INSERT INTO `tb_tags` VALUES ('20', '345', '永定中学', '2015-05-25 14:06:42', '1', null, null);
INSERT INTO `tb_tags` VALUES ('21', '344', '学校', '2015-05-25 14:06:53', '1', null, null);
INSERT INTO `tb_tags` VALUES ('22', '344', '育园中学', '2015-05-25 14:06:53', '1', null, null);
INSERT INTO `tb_tags` VALUES ('23', '375', '公园', '2015-05-26 13:19:08', '1', null, null);
INSERT INTO `tb_tags` VALUES ('24', '375', '永定河文化广场', '2015-05-26 13:19:08', '1', null, null);
INSERT INTO `tb_tags` VALUES ('25', '374', '永定河森林公园', '2015-05-26 13:19:17', '1', null, null);
INSERT INTO `tb_tags` VALUES ('26', '374', '公园', '2015-05-26 13:19:17', '1', null, null);
INSERT INTO `tb_tags` VALUES ('27', '373', '永定河森林公园', '2015-05-26 13:19:25', '1', null, null);
INSERT INTO `tb_tags` VALUES ('28', '373', '公园', '2015-05-26 13:19:25', '1', null, null);
INSERT INTO `tb_tags` VALUES ('29', '372', '新桥公园', '2015-05-26 13:20:12', '1', null, null);
INSERT INTO `tb_tags` VALUES ('30', '372', '公园', '2015-05-26 13:20:12', '1', null, null);
INSERT INTO `tb_tags` VALUES ('31', '371', '西苑公园', '2015-05-26 13:22:48', '1', null, null);
INSERT INTO `tb_tags` VALUES ('32', '371', '公园', '2015-05-26 13:22:48', '1', null, null);
INSERT INTO `tb_tags` VALUES ('33', '370', '石门营公园', '2015-05-26 13:25:00', '1', null, null);
INSERT INTO `tb_tags` VALUES ('34', '370', '公园', '2015-05-26 13:25:00', '1', null, null);
INSERT INTO `tb_tags` VALUES ('35', '369', '石龙公园', '2015-05-26 13:37:24', '1', null, null);
INSERT INTO `tb_tags` VALUES ('36', '369', '公园', '2015-05-26 13:37:24', '1', null, null);
INSERT INTO `tb_tags` VALUES ('37', '368', '葡山公园', '2015-05-26 13:39:14', '1', null, null);
INSERT INTO `tb_tags` VALUES ('38', '368', '公园', '2015-05-26 13:39:14', '1', null, null);
INSERT INTO `tb_tags` VALUES ('39', '367', '葡东公园', '2015-05-26 13:40:26', '1', null, null);
INSERT INTO `tb_tags` VALUES ('40', '367', '公园', '2015-05-26 13:40:26', '1', null, null);
INSERT INTO `tb_tags` VALUES ('41', '366', '门头沟新城滨河森林公园', '2015-05-26 13:42:29', '1', null, null);
INSERT INTO `tb_tags` VALUES ('42', '366', '公园', '2015-05-26 13:42:29', '1', null, null);
INSERT INTO `tb_tags` VALUES ('43', '365', '门矿遗址公园', '2015-05-26 13:43:30', '1', null, null);
INSERT INTO `tb_tags` VALUES ('44', '365', '公园', '2015-05-26 13:43:30', '1', null, null);
INSERT INTO `tb_tags` VALUES ('45', '364', '立思辰公园', '2015-05-26 13:44:43', '1', null, null);
INSERT INTO `tb_tags` VALUES ('46', '364', '公园', '2015-05-26 13:44:43', '1', null, null);
INSERT INTO `tb_tags` VALUES ('47', '363', '京门铁路遗址公园', '2015-05-26 13:45:35', '1', null, null);
INSERT INTO `tb_tags` VALUES ('48', '363', '公园', '2015-05-26 13:45:35', '1', null, null);
INSERT INTO `tb_tags` VALUES ('49', '362', '京浪岛文化体育公园', '2015-05-26 13:46:57', '1', null, null);
INSERT INTO `tb_tags` VALUES ('50', '362', '公园', '2015-05-26 13:46:57', '1', null, null);
INSERT INTO `tb_tags` VALUES ('51', '361', '黑山公园', '2015-05-26 13:48:00', '1', null, null);
INSERT INTO `tb_tags` VALUES ('52', '361', '公园', '2015-05-26 13:48:00', '1', null, null);
INSERT INTO `tb_tags` VALUES ('53', '360', '光荣园', '2015-05-26 13:49:15', '1', null, null);
INSERT INTO `tb_tags` VALUES ('54', '360', '公园', '2015-05-26 13:49:16', '1', null, null);
INSERT INTO `tb_tags` VALUES ('57', '358', '东辛房公园', '2015-05-26 13:50:45', '1', null, null);
INSERT INTO `tb_tags` VALUES ('58', '358', '公园', '2015-05-26 13:50:45', '1', null, null);
INSERT INTO `tb_tags` VALUES ('59', '357', '晨曦公园', '2015-05-26 13:51:47', '1', null, null);
INSERT INTO `tb_tags` VALUES ('60', '357', '公园', '2015-05-26 13:51:47', '1', null, null);
INSERT INTO `tb_tags` VALUES ('61', '356', '滨河公园', '2015-05-26 13:52:42', '1', null, null);
INSERT INTO `tb_tags` VALUES ('62', '356', '公园', '2015-05-26 13:52:42', '1', null, null);
INSERT INTO `tb_tags` VALUES ('63', '324', '新闻', '2015-05-26 14:05:51', '1', null, null);
INSERT INTO `tb_tags` VALUES ('64', '323', '新闻', '2015-05-26 14:08:41', '1', null, null);
INSERT INTO `tb_tags` VALUES ('65', '322', '新闻', '2015-05-26 14:10:33', '1', null, null);
INSERT INTO `tb_tags` VALUES ('66', '321', '新闻', '2015-05-26 14:12:12', '1', null, null);
INSERT INTO `tb_tags` VALUES ('67', '320', '新闻', '2015-05-26 14:13:58', '1', null, null);
INSERT INTO `tb_tags` VALUES ('68', '319', '新闻', '2015-05-26 14:37:57', '1', null, null);
INSERT INTO `tb_tags` VALUES ('69', '318', '新闻', '2015-05-26 14:40:09', '1', null, null);
INSERT INTO `tb_tags` VALUES ('70', '111', '新闻', '2015-05-26 14:43:28', '1', null, null);
INSERT INTO `tb_tags` VALUES ('71', '111', '定都阁', '2015-05-26 14:43:28', '1', null, null);
INSERT INTO `tb_tags` VALUES ('72', '105', '新闻', '2015-05-26 14:44:49', '1', null, null);
INSERT INTO `tb_tags` VALUES ('77', '335', '福华肥牛', '2015-05-26 14:52:49', '1', null, null);
INSERT INTO `tb_tags` VALUES ('78', '335', '饭店', '2015-05-26 14:52:49', '1', null, null);
INSERT INTO `tb_tags` VALUES ('79', '335', '美食', '2015-05-26 14:52:49', '1', null, null);
INSERT INTO `tb_tags` VALUES ('80', '334', '大鸭梨', '2015-05-26 14:52:54', '1', null, null);
INSERT INTO `tb_tags` VALUES ('81', '334', '饭店', '2015-05-26 14:52:54', '1', null, null);
INSERT INTO `tb_tags` VALUES ('82', '334', '美食', '2015-05-26 14:52:54', '1', null, null);
INSERT INTO `tb_tags` VALUES ('83', '342', '美食', '2015-05-26 14:53:01', '1', null, null);
INSERT INTO `tb_tags` VALUES ('84', '342', '老家肉饼', '2015-05-26 14:53:01', '1', null, null);
INSERT INTO `tb_tags` VALUES ('85', '342', '饭店', '2015-05-26 14:53:01', '1', null, null);
INSERT INTO `tb_tags` VALUES ('88', '341', '顶风针', '2015-05-26 14:55:38', '1', null, null);
INSERT INTO `tb_tags` VALUES ('89', '341', '蛋糕店', '2015-05-26 14:55:38', '1', null, null);
INSERT INTO `tb_tags` VALUES ('96', '340', '饭店', '2015-05-26 16:01:38', '1', null, null);
INSERT INTO `tb_tags` VALUES ('97', '340', '美食', '2015-05-26 16:01:38', '1', null, null);
INSERT INTO `tb_tags` VALUES ('98', '340', '新新包子铺', '2015-05-26 16:01:38', '1', null, null);
INSERT INTO `tb_tags` VALUES ('99', '339', '酒店', '2015-05-26 16:03:40', '1', null, null);
INSERT INTO `tb_tags` VALUES ('100', '339', '今天假日酒店', '2015-05-26 16:03:40', '1', null, null);
INSERT INTO `tb_tags` VALUES ('101', '339', '饭店', '2015-05-26 16:03:40', '1', null, null);
INSERT INTO `tb_tags` VALUES ('102', '338', '宾馆', '2015-05-26 16:09:18', '1', null, null);
INSERT INTO `tb_tags` VALUES ('103', '338', '龙泉宾馆', '2015-05-26 16:09:18', '1', null, null);
INSERT INTO `tb_tags` VALUES ('104', '336', '晨光饭店', '2015-05-26 16:09:58', '1', null, null);
INSERT INTO `tb_tags` VALUES ('105', '336', '饭店', '2015-05-26 16:09:58', '1', null, null);
INSERT INTO `tb_tags` VALUES ('108', '337', '潭柘嘉福饭店', '2015-05-26 16:12:13', '1', null, null);
INSERT INTO `tb_tags` VALUES ('109', '337', '饭店', '2015-05-26 16:12:13', '1', null, null);
INSERT INTO `tb_tags` VALUES ('126', '329', '百花山', '2015-05-26 16:31:32', '1', null, null);
INSERT INTO `tb_tags` VALUES ('127', '329', '旅游', '2015-05-26 16:31:32', '1', null, null);
INSERT INTO `tb_tags` VALUES ('128', '330', '爨底下', '2015-05-26 16:32:10', '1', null, null);
INSERT INTO `tb_tags` VALUES ('129', '330', '旅游', '2015-05-26 16:32:10', '1', null, null);
INSERT INTO `tb_tags` VALUES ('130', '331', '灵山', '2015-05-26 16:34:18', '1', null, null);
INSERT INTO `tb_tags` VALUES ('131', '331', '旅游', '2015-05-26 16:34:18', '1', null, null);
INSERT INTO `tb_tags` VALUES ('132', '332', '旅游', '2015-05-26 16:34:54', '1', null, null);
INSERT INTO `tb_tags` VALUES ('133', '332', '龙门涧', '2015-05-26 16:34:54', '1', null, null);
INSERT INTO `tb_tags` VALUES ('134', '332', '旅游', '2015-05-26 16:34:54', '1', null, null);
INSERT INTO `tb_tags` VALUES ('137', '333', '妙峰山', '2015-05-26 16:35:46', '1', null, null);
INSERT INTO `tb_tags` VALUES ('138', '333', '旅游', '2015-05-26 16:35:46', '1', null, null);
INSERT INTO `tb_tags` VALUES ('139', '328', '双龙峡', '2015-05-26 16:44:36', '1', null, null);
INSERT INTO `tb_tags` VALUES ('140', '328', '旅游', '2015-05-26 16:44:36', '1', null, null);
INSERT INTO `tb_tags` VALUES ('141', '391', '2. 博文内容尽量控制在1200个文字内', '2015-06-20 16:59:29', '2', null, null);
INSERT INTO `tb_tags` VALUES ('142', '391', '内容合法健康', '2015-06-20 16:59:29', '2', null, null);
INSERT INTO `tb_tags` VALUES ('143', '391', '否则可能会被删除。2. 博文内容尽量控制在1200个文字内', '2015-06-20 16:59:29', '2', null, null);
INSERT INTO `tb_tags` VALUES ('144', '391', '内容合法健康', '2015-06-20 16:59:29', '2', null, null);
INSERT INTO `tb_tags` VALUES ('145', '391', '否则可能会被删除。2. 博文内容尽量控制在1200个文字内', '2015-06-20 16:59:29', '2', null, null);
INSERT INTO `tb_tags` VALUES ('146', '392', '123', '2015-06-20 18:31:13', '2', null, null);
INSERT INTO `tb_tags` VALUES ('147', '383', '123', '2015-06-20 18:33:14', '2', null, null);
INSERT INTO `tb_tags` VALUES ('151', '396', '测44', '2015-06-20 21:48:59', '2', null, null);
INSERT INTO `tb_tags` VALUES ('152', '397', '测试', '2015-06-20 21:52:02', '2', null, null);
INSERT INTO `tb_tags` VALUES ('153', '112', 'S1线', '2015-08-16 19:24:15', '1', null, null);
INSERT INTO `tb_tags` VALUES ('155', '359', '福鼎公园', '2015-09-21 22:37:54', '1', null, null);
INSERT INTO `tb_tags` VALUES ('156', '359', '公园', '2015-09-21 22:37:54', '1', null, null);

-- ----------------------------
-- Table structure for weixin
-- ----------------------------
DROP TABLE IF EXISTS `weixin`;
CREATE TABLE `weixin` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin
-- ----------------------------
