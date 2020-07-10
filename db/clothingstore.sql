/*
Navicat MySQL Data Transfer

Source Server         : wes
Source Server Version : 50543
Source Host           : localhost:3306
Source Database       : clothingstore

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2020-06-14 11:09:16
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cloth`
-- ----------------------------
DROP TABLE IF EXISTS `cloth`;
CREATE TABLE `cloth` (
  `clothID` int(100) NOT NULL AUTO_INCREMENT,
  `clothName` varchar(255) DEFAULT NULL,
  `clothPrice` double(10,0) DEFAULT NULL,
  `clothSort` int(255) DEFAULT NULL,
  `clothSize` varchar(255) DEFAULT 'X',
  `clothImg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clothID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cloth
-- ----------------------------
INSERT INTO `cloth` VALUES ('15', 'Lagogo拉谷谷2020夏季新款西装领驼色长袖宽松短款风衣外套女', '688', '1', 'X', 'img/a1.jpg');
INSERT INTO `cloth` VALUES ('16', '森马风衣女2020春季新款连帽宽松显瘦少女外套收腰设计感校园学院', '159', '1', 'X', 'img/a2.jpg');
INSERT INTO `cloth` VALUES ('17', '安踏风衣束腰2020新春季开衫连帽外套中长款梭织风衣女162017619', '399', '1', 'X', 'img/a3.jpg');
INSERT INTO `cloth` VALUES ('18', '森马风衣女2020春季新款休闲流行学生宽松时尚少女oversize潮外套', '259', '1', 'X', 'img/a4.jpg');
INSERT INTO `cloth` VALUES ('19', '【时装周同款】鸿星尔克女运动外套2020新款连帽开衫风衣休闲女装', '159', '1', 'X', 'img/a5.jpg');
INSERT INTO `cloth` VALUES ('20', 'Vero Moda2020春夏新款复古ins风纯棉短款风衣外套女|320117524', '599', '1', 'X', 'img/a6.jpg');
INSERT INTO `cloth` VALUES ('21', '韩国正品2020春季新款双排扣风衣中长款小个子宽松大码工装外套女', '375', '1', 'X', 'img/a7.jpg');
INSERT INTO `cloth` VALUES ('22', 'GUUKA&吃豆人联名白色多袋工装风衣女中长款情侣嘻哈印花风衣外套', '548', '1', 'X', 'img/a8.jpg');
INSERT INTO `cloth` VALUES ('23', '【设计师合作款】女装 打褶衬衫式连衣裙(长袖) 426840 优衣库', '399', '2', 'X', 'img/b1.jpg');
INSERT INTO `cloth` VALUES ('24', 'Vero Moda2020春夏新款荷叶边一字肩修身A字牛仔连衣裙', '669', '2', 'X', 'img/b2.jpg');
INSERT INTO `cloth` VALUES ('25', '美容师连衣裙女2020春夏新款时尚韩版短袖收腰一步裙子职业工作服', '146', '2', 'X', 'img/b3.jpg');
INSERT INTO `cloth` VALUES ('26', '女装 麻混纺廓形连衣裙(短袖)', '249', '2', 'X', 'img/b4.jpg');
INSERT INTO `cloth` VALUES ('27', 'PULL&BEAR 早春新款蓝色花卉印花V领长款连衣裙女', '229', '2', 'X', 'img/b5.jpg');
INSERT INTO `cloth` VALUES ('28', '春新款女装中国风复古人物印花衬衫式连衣裙1', '659', '2', 'X', 'img/b6.jpg');
INSERT INTO `cloth` VALUES ('29', '黑白格子连衣裙吊带裙法式复古chic宽松中长款长袖2020新款春装', '158', '2', 'X', 'img/b7.jpg');
INSERT INTO `cloth` VALUES ('30', '春夏新款条纹牛仔拼接七分袖翻领连衣裙|', '749', '2', 'X', 'img/b8.jpg');
INSERT INTO `cloth` VALUES ('31', 'Lagogo拉谷谷2020年春季新款字母印花圆领打底衫纯棉T恤女七分袖', '169', '3', 'X', 'img/c1.jpg');
INSERT INTO `cloth` VALUES ('32', 'SNIDEL2020春夏新品气质纯色修身罗纹两面穿针织打底衫SWNT201073', '680', '3', 'X', 'img/c2.jpg');
INSERT INTO `cloth` VALUES ('33', 'SNIDEL2020春夏新品糖果色半袖U领露背短款罗纹针织衫', '770', '3', 'X', 'img/c3.jpg');
INSERT INTO `cloth` VALUES ('34', 'FILA FUSION斐乐女子运动裤2020春季新款ins复古休闲工装长裤女', '539', '5', 'X', 'img/f1.jpg');
INSERT INTO `cloth` VALUES ('35', '纯棉春秋衬衣韩范休闲打底上衣学院风寸小熊纯色蓝色白衬衫女长袖', '60', '4', 'X', 'img/d1.jpg');
INSERT INTO `cloth` VALUES ('36', 'AS复古港味设计感小众真丝衬衫2020春季波点桑蚕丝衬衣', '559', '4', 'X', 'img/d2.jpg');
INSERT INTO `cloth` VALUES ('37', '衬衫女复古港味设计感小众上衣女春秋盐系外套女少女感穿搭欧洲站', '69', '4', 'X', 'img/d3.jpg');
INSERT INTO `cloth` VALUES ('38', '裂帛2020春装新款浪漫刺绣V领衬衣花瓣底摆七分袖衬衫女', '226', '4', 'X', 'img/d4.jpg');
INSERT INTO `cloth` VALUES ('39', '棉麻休闲裤女夏2020新款韩版宽松哈伦裤显瘦直通百搭亚麻裤子长裤', '68', '5', 'X', 'img/f2.jpg');
INSERT INTO `cloth` VALUES ('40', '乐町可爱绣花休闲裤2020春装新款束脚哈伦裤收脚运动裤长裤女潮夏', '199', '5', 'X', 'img/f3.jpg');
INSERT INTO `cloth` VALUES ('41', 'DAZZLE地素 2020夏装新款运动风抽绳束口缩绉面料休闲裤', '1999', '5', 'X', 'img/f4.jpg');
INSERT INTO `cloth` VALUES ('42', 'GUUKA潮牌粉色短裤女夏宽松嘻哈ins情侣纯棉印花多口袋工装五分裤', '238', '5', 'X', 'img/f5.jpg');
INSERT INTO `cloth` VALUES ('43', '2020夏装新款拉链轻薄亮丝垂感百褶半身裙女', '1199', '6', 'X', 'img/g1.jpg');
INSERT INTO `cloth` VALUES ('44', '春夏新款不对称解构翻边牛仔短裙', '399', '6', 'X', 'img/g2.jpg');
INSERT INTO `cloth` VALUES ('45', 'Vero Moda2020春季新款迷幻渐变色网纱百褶半身裙', '599', '6', 'X', 'img/g3.jpg');
INSERT INTO `cloth` VALUES ('46', '2020夏装新款运动小香风粗花呢贴袋半身裙女', '1389', '6', 'X', 'img/g4.jpg');
INSERT INTO `cloth` VALUES ('47', '衬衫女复古港味设计感小众上衣女春秋盐系外套女少女感穿搭欧洲站', '799', '2', 'X', 'img/d3.jpg');
INSERT INTO `cloth` VALUES ('48', 'SNIDEL2020春夏新品气质纯色修身罗纹两面穿针织打底衫SWNT201073', '799', '1', 'X', 'img/c2.jpg');
INSERT INTO `cloth` VALUES ('50', '测试1', '2999', '5', 'X', 'img/f5.jpg');
INSERT INTO `cloth` VALUES ('51', '测试2', '1499', '2', 'X', 'img/b2.jpg');
INSERT INTO `cloth` VALUES ('56', '测试裤装1', '299', '5', 'X', 'img/0c64a784-7a9f-4364-a586-c42f4bd5bfe1_f3.jpg');

-- ----------------------------
-- Table structure for `clothsort`
-- ----------------------------
DROP TABLE IF EXISTS `clothsort`;
CREATE TABLE `clothsort` (
  `clothSortID` int(11) NOT NULL AUTO_INCREMENT,
  `clothSortName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clothSortID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of clothsort
-- ----------------------------
INSERT INTO `clothsort` VALUES ('1', '风衣|外套');
INSERT INTO `clothsort` VALUES ('2', '连衣裙');
INSERT INTO `clothsort` VALUES ('3', '打底衫');
INSERT INTO `clothsort` VALUES ('4', '衬衫');
INSERT INTO `clothsort` VALUES ('5', '裤装');
INSERT INTO `clothsort` VALUES ('6', '半身裙');
INSERT INTO `clothsort` VALUES ('7', '最代码');

-- ----------------------------
-- Table structure for `consume`
-- ----------------------------
DROP TABLE IF EXISTS `consume`;
CREATE TABLE `consume` (
  `consumeID` varchar(100) NOT NULL DEFAULT '',
  `consumeName` varchar(255) DEFAULT NULL,
  `consumePhone` varchar(255) DEFAULT NULL,
  `consumeDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `consumeAddress` varchar(255) DEFAULT NULL,
  `consumeSum` double(11,0) DEFAULT NULL,
  `consumeState` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`consumeID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of consume
-- ----------------------------
INSERT INTO `consume` VALUES ('17f5a2ed-9c73-4a98-ba99-50c8710b70ea', '用户1', '15698562102', '2020-06-12 16:03:30', '格式的共同', '399', '0', '3');
INSERT INTO `consume` VALUES ('1acd1a3b-8d3c-4cfb-b254-4a51b780944a', '用户1', '43434534343', '2020-06-13 19:28:02', 'edrhge ', '559', '0', '3');
INSERT INTO `consume` VALUES ('5c8e5dd7-f72a-4210-b07f-1707123a7ab2', '用户1', '15963521023', '2020-06-13 12:46:46', '河南省商丘市', '399', '0', '3');
INSERT INTO `consume` VALUES ('5fda1cf2-25df-4034-a792-eff29129efa5', '管理员1', '18437839246', '2020-06-12 14:59:34', '河南省开封市', '2064', '1', '1');
INSERT INTO `consume` VALUES ('7e4d80ae-18ae-446c-843b-189b9cf11d57', '用户1', '19562302351', '2020-06-12 15:57:59', '河南省商丘市', '1399', '0', '3');
INSERT INTO `consume` VALUES ('9a6ee4d1-70cb-4a12-984c-46da157398c9', '用户1', 'af ', '2020-06-13 18:34:37', 'asdfggg ', '3597', '0', '3');
INSERT INTO `consume` VALUES ('c0fe3773-6df2-416e-9ad8-8fe68b5e2688', '用户2', '15996352102', '2020-06-13 13:06:57', '河南省安阳市', '3197', '0', '4');
INSERT INTO `consume` VALUES ('c9fbb679-29e6-43f3-9f23-f3233d59b6ef', '用户1', '155151515151', '2020-06-14 11:04:25', 'af ', '5995', '0', '3');
INSERT INTO `consume` VALUES ('cac85741-58bb-4cea-ad56-452fbf9192f2', '用户3', '15198565230', '2020-06-12 16:10:02', '河南省商丘市', '548', '1', '5');
INSERT INTO `consume` VALUES ('d8939bb4-0f0f-401a-b61c-cfd21d25572a', '用户2', '15963215102', '2020-06-13 13:07:55', '河南省商丘市', '799', '0', '4');
INSERT INTO `consume` VALUES ('daa022a2-63ad-44fc-8096-49972cc293d0', '用户1', '14865230265', '2020-06-12 15:13:11', '河南省商丘市', '229', '0', '3');
INSERT INTO `consume` VALUES ('e54a8aa9-b7cf-441e-ab0c-d3f03c544cd0', '用户2', '15984153201', '2020-06-12 14:59:37', '河南省安阳市', '169', '1', '4');
INSERT INTO `consume` VALUES ('f07515c2-d322-4760-bdc1-0b2f82c30954', '管理员1', '18437839246', '2020-06-11 15:01:02', '河南省开封市', '1376', '0', '1');

-- ----------------------------
-- Table structure for `consumeitem`
-- ----------------------------
DROP TABLE IF EXISTS `consumeitem`;
CREATE TABLE `consumeitem` (
  `order_id` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cloth_id` varchar(100) NOT NULL DEFAULT '',
  `clothSize` varchar(255) NOT NULL DEFAULT '',
  `buyNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`user_id`,`cloth_id`,`clothSize`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumeitem
-- ----------------------------
INSERT INTO `consumeitem` VALUES ('17f5a2ed-9c73-4a98-ba99-50c8710b70ea', '3', '44', 'X', '1');
INSERT INTO `consumeitem` VALUES ('1acd1a3b-8d3c-4cfb-b254-4a51b780944a', '3', '36', 'XS', '1');
INSERT INTO `consumeitem` VALUES ('5c8e5dd7-f72a-4210-b07f-1707123a7ab2', '3', '44', 'X', '1');
INSERT INTO `consumeitem` VALUES ('5fda1cf2-25df-4034-a792-eff29129efa5', '3', '15', 'XXL', '1');
INSERT INTO `consumeitem` VALUES ('5fda1cf2-25df-4034-a792-eff29129efa5', '5', '15', 'X', '2');
INSERT INTO `consumeitem` VALUES ('7e4d80ae-18ae-446c-843b-189b9cf11d57', '3', '46', 'X', '1');
INSERT INTO `consumeitem` VALUES ('9a6ee4d1-70cb-4a12-984c-46da157398c9', '3', '43', 'XS', '3');
INSERT INTO `consumeitem` VALUES ('c0fe3773-6df2-416e-9ad8-8fe68b5e2688', '4', '41', 'XL', '1');
INSERT INTO `consumeitem` VALUES ('c0fe3773-6df2-416e-9ad8-8fe68b5e2688', '4', '45', 'X', '2');
INSERT INTO `consumeitem` VALUES ('c9fbb679-29e6-43f3-9f23-f3233d59b6ef', '3', '43', 'XS', '5');
INSERT INTO `consumeitem` VALUES ('cac85741-58bb-4cea-ad56-452fbf9192f2', '5', '22', 'XXL', '1');
INSERT INTO `consumeitem` VALUES ('d8939bb4-0f0f-401a-b61c-cfd21d25572a', '4', '47', 'X', '1');
INSERT INTO `consumeitem` VALUES ('daa022a2-63ad-44fc-8096-49972cc293d0', '3', '27', 'XL', '1');
INSERT INTO `consumeitem` VALUES ('e54a8aa9-b7cf-441e-ab0c-d3f03c544cd0', '4', '31', 'X', '1');
INSERT INTO `consumeitem` VALUES ('f07515c2-d322-4760-bdc1-0b2f82c30954', '4', '16', 'X', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `userRname` varchar(255) DEFAULT NULL,
  `userSex` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userPhone` varchar(255) DEFAULT NULL,
  `userAddress` varchar(255) DEFAULT NULL,
  `userConsume` double(11,0) DEFAULT '0',
  `role` varchar(10) DEFAULT '普通用户',
  `activeCode` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`userID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '111111', '管理员1', '男', 'x1423061248@163.com', '18437839246', '河南省开封市', '0', '超级管理员', 'f4d7a969-7de6-4acf-932b-0e21c461b2a9', '1');
INSERT INTO `user` VALUES ('2', 'admin1', '111111', '管理员2', '女', 'x1423061322248@163.com', null, null, '0', '超级管理员', 'c8f036e0-cd25-49f0-93c1-cdde3e5c534c', '1');
INSERT INTO `user` VALUES ('3', 'user1', '111111', '用户1', '男', '2636742898@qq.com', null, null, '2064', '普通用户', '23f4855e-a834-42a1-9d45-9639e2d9eb9e', '1');
INSERT INTO `user` VALUES ('4', 'user2', '111111', '用户2', '男', '1843987047@qq.com', null, null, '169', '普通用户', '926d291e-be71-4924-87be-689ee98c1567', '1');
INSERT INTO `user` VALUES ('5', 'user3', '111111', '用户3', '女', 'user3@qq.com', null, null, '2880', '普通用户', '926d291e-be71-4924-87be-689ee98c1567', '1');
INSERT INTO `user` VALUES ('6', 'user4', '111111', '用户4', '女', 'user4@qq.com', null, null, '0', '普通用户', '926d291e-be71-4924-87be-689ee98c1567', '0');
INSERT INTO `user` VALUES ('8', 'ceshi', '111111', '测试', '男', null, null, null, '0', '普通用户', null, '1');
