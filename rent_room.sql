/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50551
Source Host           : localhost:3306
Source Database       : rent_room

Target Server Type    : MYSQL
Target Server Version : 50551
File Encoding         : 65001

Date: 2019-04-21 21:08:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `address_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('32a0c2ca561c4a7ca098a40fe9001cd9', '智慧园');
INSERT INTO `address` VALUES ('d502179d03f043e2afa405c86e08d702', '立民村');
INSERT INTO `address` VALUES ('d502179d03f043e2afa405c86e08d703', '塘口村');
INSERT INTO `address` VALUES ('d502179d03f043e2afa405c86e08d704', '勤劳村');
INSERT INTO `address` VALUES ('d502179d03f043e2afa405c86e08d705', '芦胜村');
INSERT INTO `address` VALUES ('d502179d03f043e2afa405c86e08d706', '知新村');

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `contract_id` varchar(255) NOT NULL,
  `roomname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lessor` varchar(255) NOT NULL,
  `lessee` varchar(255) NOT NULL,
  `lessorCard` varchar(255) NOT NULL,
  `lesseeCard` varchar(255) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `price` double(10,2) NOT NULL,
  `payRent` int(3) NOT NULL,
  `deposit` double(10,2) NOT NULL,
  PRIMARY KEY (`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract
-- ----------------------------

-- ----------------------------
-- Table structure for furniture
-- ----------------------------
DROP TABLE IF EXISTS `furniture`;
CREATE TABLE `furniture` (
  `furniture_id` int(10) NOT NULL AUTO_INCREMENT,
  `furniture_name` varchar(254) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`furniture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of furniture
-- ----------------------------
INSERT INTO `furniture` VALUES ('15', '地铁站附近');
INSERT INTO `furniture` VALUES ('16', '空调');
INSERT INTO `furniture` VALUES ('17', '厨房');
INSERT INTO `furniture` VALUES ('18', '衣柜');
INSERT INTO `furniture` VALUES ('19', '冰箱');
INSERT INTO `furniture` VALUES ('20', '独立卫生间');
INSERT INTO `furniture` VALUES ('21', '卫生间');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `img_Id` varchar(255) COLLATE utf8_bin NOT NULL,
  `img_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `room_Id` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`img_Id`),
  KEY `10001` (`room_Id`),
  CONSTRAINT `10001` FOREIGN KEY (`room_Id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('006d447418fd4bbabdcddd33fb0e4081', '1555839405575v800x600_ChAFBlv_6e2AbPhLAALu7mkHa-I474.jpg', 'd7998e3155ba416f83a3338b58eb1330');
INSERT INTO `image` VALUES ('0368cc5920914817b61c6bc1e83333eb', '1555838505302v800x600_ChAFBlwDzOiAQ7yhAASbmbFdmGI350.jpg', 'e9e8c88860884273b911092cdd210dff');
INSERT INTO `image` VALUES ('0c858c9d35284958b4964094e7f28495', '1555837146061v800x600_ChAFB1v_6eqAWAbLAAM4eXAfaxc924.jpg', '9c5344b0336e4d27bc7a271cf355cecd');
INSERT INTO `image` VALUES ('0d1b681a596641c7b42f8b6370055d7a', '1555837146079v800x600_ChAFBlv_6eqASSQTAAKIOsiG31A229.jpg', '9c5344b0336e4d27bc7a271cf355cecd');
INSERT INTO `image` VALUES ('1514bb0789174531b34980d23b794f47', '1555838911965v800x600_ChAFB1ubkHCAZsKDAAGY0UMFIxg021.jpg', 'f9be74f5c11546739c35502ea66129d5');
INSERT INTO `image` VALUES ('1a89f6347e7640cc8f5fbc82c6ef3fd2', '1555838679821v800x600_CtgFCFyI7lGACysiAAFQX-opang069.jpg', '9d5ffa4cf79e4847828e3a38f8aa43ed');
INSERT INTO `image` VALUES ('1e0f18f512ca4f61955d866b1abf7615', '1555839063988v800x600_ChAFB1ubkFOAc_oXAAI8GyXJbuE535.jpg', 'cae7e327114b4e8b8e82e84eefe09d48');
INSERT INTO `image` VALUES ('27ea4bd769b948a888bb2f6aa65c8424', '1555838787619v800x600_ChAFBlubkI6ASqLHAAFV9n7JmnI083.jpg', 'bd0048d8b2dc4e0ca5d409b499e823e9');
INSERT INTO `image` VALUES ('2cadcf763c1c4aa0989a9e81a494e263', '1555837026505v800x600_CtgFCVyGWMWAegThAB75KjLr_3Q675.jpg', '8e61cb2c3e5a4cd2a3f5a8b2d94baa9b');
INSERT INTO `image` VALUES ('30172b23d2054a38986cf69a6ae8f1e3', '1555838787605v800x600_ChAFB1ubkJOADxRTAALfJYYa6y4566.jpg', 'bd0048d8b2dc4e0ca5d409b499e823e9');
INSERT INTO `image` VALUES ('3773adebf82b4c92834d0ba2f9bb933e', '1555839064003v800x600_ChAFB1ubkHCAZsKDAAGY0UMFIxg021.jpg', 'cae7e327114b4e8b8e82e84eefe09d48');
INSERT INTO `image` VALUES ('38ed4ffe2c824e1893a87881ab822bf2', '1555836745181v800x600_ChAFBlxEfjWAS4CVAATAzr-vKeA928.jpg', '0832d12a2f5c46cf8671dcd756e41bed');
INSERT INTO `image` VALUES ('39e87e146e52439da710eb02e103f11e', '1555838400072v800x600_ChAFBlw58ceAANR3ABJhbG2SBmg401.jpg', 'b5dffd6624aa4e81ac4805feb035f503');
INSERT INTO `image` VALUES ('3dd078fdf6fc42b38da9d64c55a73646', '1555838304947v800x600_ChAFB1wGR_OAVbp7AAQ8zmLPd4w931.jpg', '0b04afe73d6344f08f01eafb3cfde793');
INSERT INTO `image` VALUES ('430a032054d943e59e636a1aabd04b55', '1555838911952v800x600_ChAFB1ubkFOAc_oXAAI8GyXJbuE535.jpg', 'f9be74f5c11546739c35502ea66129d5');
INSERT INTO `image` VALUES ('4c99358919a74894b9c217c1b4d997a8', '1555837373864v800x600_ChAFBlv_6e2AbPhLAALu7mkHa-I474.jpg', '3f546ad5a26444cbbbbf90775a17147d');
INSERT INTO `image` VALUES ('533ad21f07904183872bcc94cf0e6374', '1555839345184v800x600_ChAFBlwDzOWAMiDOAAS-SgYvBJo753.jpg', 'f88fe696b5e84310b07e04bb7aebaa33');
INSERT INTO `image` VALUES ('56b85887cb1440329a9932ab7e62bbba', '1555838787590v800x600_ChAFB1ubkFOAc_oXAAI8GyXJbuE535.jpg', 'bd0048d8b2dc4e0ca5d409b499e823e9');
INSERT INTO `image` VALUES ('57bffc88d59941938e683b385d28671d', '1555837251052v800x600_CtgFCVyGWMuAc7ElABKxvD0RBsI905.jpg', '9d671639ee624f82bcf9dc5502a83967');
INSERT INTO `image` VALUES ('59460f1c0f1a4d2ca827c053667a1f66', '1555838304939v800x600_ChAFB1wGR_OAD5FcAAJiNsvXBRY308.jpg', '0b04afe73d6344f08f01eafb3cfde793');
INSERT INTO `image` VALUES ('5dba701466e94c828ecacbe079012551', '1555836888481v800x600_ChAFBlv_6euAa3h4AARkgXroA9M004.jpg', '0db7e79127ca44b0b8f27c0d8585cab4');
INSERT INTO `image` VALUES ('6161022aa0764633be2ca8c352e395b8', '1555838304931v800x600_ChAFB1wGR_KAeF1CAAOQIIeehE0425.jpg', '0b04afe73d6344f08f01eafb3cfde793');
INSERT INTO `image` VALUES ('6546b2162d9d4ecab87ebac1a2db2185', '1555837026495v800x600_CtgFCFyGWMaAQ4FrABlNnlvPLUs005.jpg', '8e61cb2c3e5a4cd2a3f5a8b2d94baa9b');
INSERT INTO `image` VALUES ('66ef1201b4db487eab58025935cec312', '1555838911986v800x600_ChAFBlubkICAawsWAAI3WI_NyQQ640.jpg', 'f9be74f5c11546739c35502ea66129d5');
INSERT INTO `image` VALUES ('705f386240c84ca8a665ebb119a67d42', '1555838400065v800x600_ChAFB1w58fuAaX8nABMOI637VW4754.jpg', 'b5dffd6624aa4e81ac4805feb035f503');
INSERT INTO `image` VALUES ('72a333470dfe4d41883dfa50e45d64a5', '1555836745173v800x600_ChAFBlxEfjKAXMOrAAM6OCD11cI475.jpg', '0832d12a2f5c46cf8671dcd756e41bed');
INSERT INTO `image` VALUES ('73f8d54a324f4048b539584b4eaa8a93', '1555838787612v800x600_ChAFBlubkHuAW06iAAI-ovOVHuw128.jpg', 'bd0048d8b2dc4e0ca5d409b499e823e9');
INSERT INTO `image` VALUES ('75baf97d47bb49238fb9789d4a243160', '1555839345169v800x600_ChAFBlwDzOiAQ7yhAASbmbFdmGI350.jpg', 'f88fe696b5e84310b07e04bb7aebaa33');
INSERT INTO `image` VALUES ('7e2d081e7fa9461d83081bd1ee55f4f3', '1555837373870v800x600_ChAFBlv_6eqASSQTAAKIOsiG31A229.jpg', '3f546ad5a26444cbbbbf90775a17147d');
INSERT INTO `image` VALUES ('7f00dd70380e48e49c1346f99af45019', '1555838679842v800x600_CtgFCVyI7l2AIcowAAGL_XrLG7E874.jpg', '9d5ffa4cf79e4847828e3a38f8aa43ed');
INSERT INTO `image` VALUES ('7fc88b5ffc5c43329f49a73827eeae03', '1555838679829v800x600_CtgFCFyI7mmAcfPhAAGRqPadUkQ470.jpg', '9d5ffa4cf79e4847828e3a38f8aa43ed');
INSERT INTO `image` VALUES ('80d2a295b57a4be1b5941806c65f5385', '1555839064010v800x600_ChAFB1ubkJeAGqTzAAG9NUVqBRo196.jpg', 'cae7e327114b4e8b8e82e84eefe09d48');
INSERT INTO `image` VALUES ('827e1ede0d0a4135a79ae24f06a34239', '1555837251066v800x600_CtgFCVySh96APyLtAAJpXZwuvSw105.jpg', '9d671639ee624f82bcf9dc5502a83967');
INSERT INTO `image` VALUES ('8318d2182442408da52cc3451ab5ff65', '1555836745164v800x600_ChAFB1v_6euANo6hAAJrUmxYzik813.jpg', '0832d12a2f5c46cf8671dcd756e41bed');
INSERT INTO `image` VALUES ('869468398f4d453cae89d7096304dd99', '1555839345190v800x600_ChAFBlwDzPCAIeZLAAU7Cm4OgBk468.jpg', 'f88fe696b5e84310b07e04bb7aebaa33');
INSERT INTO `image` VALUES ('870ee0285b7f44e29ba9f13d20b7f53e', '1555839405590v800x600_ChAFBlv_6euAa3h4AARkgXroA9M004.jpg', 'd7998e3155ba416f83a3338b58eb1330');
INSERT INTO `image` VALUES ('8b2cec41d2e14aa995c751b684894285', '1555838400046v800x600_ChAFB1w58cqAWBJWABRa81e71h4264.jpg', 'b5dffd6624aa4e81ac4805feb035f503');
INSERT INTO `image` VALUES ('8de6e55b738943d388f11dc83c360f7d', '1555839277776v800x600_CtgFCVyI7l2AIcowAAGL_XrLG7E874.jpg', 'a7d2a56ba6a04be3887b57bfbc9b66c7');
INSERT INTO `image` VALUES ('9025084b26214a2bbeb40a7e334b580c', '1555838679848v800x600_CtgFCVyI7m-AWGf8AAFDPQ6qmkE722.jpg', '9d5ffa4cf79e4847828e3a38f8aa43ed');
INSERT INTO `image` VALUES ('91c2a55176af4503b4d677e64558571d', '1555839405605v800x600_ChAFBlx35ZeADg7ZAB5lTbaeZkE623.jpg', 'd7998e3155ba416f83a3338b58eb1330');
INSERT INTO `image` VALUES ('9a5412450911417081a324bf7b03ef82', '1555839277762v800x600_CtgFCFyI7qWAV32lAAHmV6O5dFo958.jpg', 'a7d2a56ba6a04be3887b57bfbc9b66c7');
INSERT INTO `image` VALUES ('9f0fe83028d0415d8a5ff91b69b74f03', '1555838304953v800x600_ChAFBlwGR_KAK8uGAALS4X5rNtI958.jpg', '0b04afe73d6344f08f01eafb3cfde793');
INSERT INTO `image` VALUES ('a14b09de89b54d3b90126eee791b4716', '1555839064017v800x600_ChAFB1ubkJOADxRTAALfJYYa6y4566.jpg', 'cae7e327114b4e8b8e82e84eefe09d48');
INSERT INTO `image` VALUES ('a4229530a75a45deadc01d68d8782391', '1555838679835v800x600_CtgFCFyI7qWAV32lAAHmV6O5dFo958.jpg', '9d5ffa4cf79e4847828e3a38f8aa43ed');
INSERT INTO `image` VALUES ('a93cf7228c614f55a2e68578b1a207df', '1555839405597v800x600_ChAFBlv_6eyAOFn-AALEoQgiwz4618.jpg', 'd7998e3155ba416f83a3338b58eb1330');
INSERT INTO `image` VALUES ('ac79f159926f491c8c822df7e1c5227c', '1555837146086v800x600_ChAFBlv_6euAa3h4AARkgXroA9M004.jpg', '9c5344b0336e4d27bc7a271cf355cecd');
INSERT INTO `image` VALUES ('b3111ddc6e1f449096e6c980d90b8214', '1555838505322v800x600_ChAFBlwDzPCAIeZLAAU7Cm4OgBk468.jpg', 'e9e8c88860884273b911092cdd210dff');
INSERT INTO `image` VALUES ('b4231d86ba6943efb6226694509a6ce5', '1555837026514v800x600_CtgFCVyGWNqAPlVlABmpCuaOPss467.jpg', '8e61cb2c3e5a4cd2a3f5a8b2d94baa9b');
INSERT INTO `image` VALUES ('b98cc04364c041e5bf5f1484cd62516a', '1555839277746v800x600_CtgFCFyI7juAYNusAAE-DdcWtVY587.jpg', 'a7d2a56ba6a04be3887b57bfbc9b66c7');
INSERT INTO `image` VALUES ('b99ee21253e14ff1a61fcfc406dcb1e4', '1555837026531v800x600_CtgFCVySh96APyLtAAJpXZwuvSw105.jpg', '8e61cb2c3e5a4cd2a3f5a8b2d94baa9b');
INSERT INTO `image` VALUES ('bc4aa184d5584ae58f0e52561147a4a9', '1555837146071v800x600_ChAFBlv_6e2AbPhLAALu7mkHa-I474.jpg', '9c5344b0336e4d27bc7a271cf355cecd');
INSERT INTO `image` VALUES ('bc4d7871f8fe4d6d8e2e41abb1514fd8', '1555836888488v800x600_ChAFBlx35ZeADg7ZAB5lTbaeZkE623.jpg', '0db7e79127ca44b0b8f27c0d8585cab4');
INSERT INTO `image` VALUES ('bf687c5772704de7b4e3e164c13ef6f5', '1555836888474v800x600_ChAFB1v_6euANo6hAAJrUmxYzik813.jpg', '0db7e79127ca44b0b8f27c0d8585cab4');
INSERT INTO `image` VALUES ('c79c583c47634c81ae256f140f39a0fa', '1555838505295v800x600_ChAFB1wDzO2AFOOjAAR5nrkEIdo574.jpg', 'e9e8c88860884273b911092cdd210dff');
INSERT INTO `image` VALUES ('c91bf66cc2714b1a90235a041eaf3fa1', '1555838911978v800x600_ChAFBlubkHuAW06iAAI-ovOVHuw128.jpg', 'f9be74f5c11546739c35502ea66129d5');
INSERT INTO `image` VALUES ('cb4c28bf3a504804a69367e340c83c6f', '1555838787597v800x600_ChAFB1ubkHCAZsKDAAGY0UMFIxg021.jpg', 'bd0048d8b2dc4e0ca5d409b499e823e9');
INSERT INTO `image` VALUES ('cd439c2617a34268a7f581eaa957b2ff', '1555836745156v800x600_ChAFB1v_6eqAWAbLAAM4eXAfaxc924.jpg', '0832d12a2f5c46cf8671dcd756e41bed');
INSERT INTO `image` VALUES ('d61cb56f7e7c4dc98acf3963fd0af56d', '1555837373847v800x600_ChAFB1v_6eqAWAbLAAM4eXAfaxc924.jpg', '3f546ad5a26444cbbbbf90775a17147d');
INSERT INTO `image` VALUES ('d868aef4d06e4fc499172b3d0f1d1c03', '1555838911972v800x600_ChAFB1ubkJOADxRTAALfJYYa6y4566.jpg', 'f9be74f5c11546739c35502ea66129d5');
INSERT INTO `image` VALUES ('da8714b0880641819e300e1f67a97403', '1555839063997v800x600_ChAFB1ubkHaAJ1HEAANTHkprmmU261.jpg', 'cae7e327114b4e8b8e82e84eefe09d48');
INSERT INTO `image` VALUES ('e0e6b4e0000c4f7fa40ed2349162b15b', '1555837026523v800x600_CtgFCVySh8OASjYDABL8gxHcVtM748.jpg', '8e61cb2c3e5a4cd2a3f5a8b2d94baa9b');
INSERT INTO `image` VALUES ('e37ee6b6b488408d94ace3f142ae1272', '1555837251045v800x600_CtgFCVyGWL6ATl5mABrXJIPkyKA481.jpg', '9d671639ee624f82bcf9dc5502a83967');
INSERT INTO `image` VALUES ('e5275c7e2941479080073fe4edf03477', '1555838304963v800x600_ChAFBlwGR_OAeQpsAAOCUR9RkrA646.jpg', '0b04afe73d6344f08f01eafb3cfde793');
INSERT INTO `image` VALUES ('e6cd4d3ea083412f88dd9f87d7086361', '1555838505308v800x600_ChAFBlwDzOOAGiLgAAQ-yDUU2jM922.jpg', 'e9e8c88860884273b911092cdd210dff');
INSERT INTO `image` VALUES ('e8dfca114add4476aa9be302993b8337', '1555837373856v800x600_ChAFB1v_6euANo6hAAJrUmxYzik813.jpg', '3f546ad5a26444cbbbbf90775a17147d');
INSERT INTO `image` VALUES ('ef020a3bc76b4ec68420e35b6abcaeda', '1555839277755v800x600_CtgFCFyI7kiAbkg4AAGx51BpSdA100.jpg', 'a7d2a56ba6a04be3887b57bfbc9b66c7');
INSERT INTO `image` VALUES ('f78b17d24bd745bcbfa4d66d6af7c762', '1555837251058v800x600_CtgFCVySh8OASjYDABL8gxHcVtM748.jpg', '9d671639ee624f82bcf9dc5502a83967');
INSERT INTO `image` VALUES ('f9dc5096edb14fe9a99725fb67668f08', '1555839405584v800x600_ChAFBlv_6eqASSQTAAKIOsiG31A229.jpg', 'd7998e3155ba416f83a3338b58eb1330');
INSERT INTO `image` VALUES ('fb28a88ebf70401892d301d760b58b69', '1555838400058v800x600_ChAFB1w58fSAMZjTAA_e4dFUVI8576.jpg', 'b5dffd6624aa4e81ac4805feb035f503');
INSERT INTO `image` VALUES ('fb58a6f573734aa6b34b18bd23670e5a', '1555839345176v800x600_ChAFBlwDzOOAGiLgAAQ-yDUU2jM922.jpg', 'f88fe696b5e84310b07e04bb7aebaa33');
INSERT INTO `image` VALUES ('fb9f84b90d4547c3a1e14352cffb6568', '1555836888466v800x600_ChAFB1v_6eqAWAbLAAM4eXAfaxc924.jpg', '0db7e79127ca44b0b8f27c0d8585cab4');
INSERT INTO `image` VALUES ('fc39a32a95464c0ca3d0c07e0052967b', '1555839345162v800x600_ChAFB1wDzO2AFOOjAAR5nrkEIdo574.jpg', 'f88fe696b5e84310b07e04bb7aebaa33');
INSERT INTO `image` VALUES ('fd23eb53c14b4d129fc7c577cbee4d5a', '1555838505315v800x600_ChAFBlwDzOWAMiDOAAS-SgYvBJo753.jpg', 'e9e8c88860884273b911092cdd210dff');
INSERT INTO `image` VALUES ('ff0a1c6ea2cd4a69b702dbac1eaf751b', '1555839277769v800x600_CtgFCVyI7hyAD--3AAEiOvMU8mQ628.jpg', 'a7d2a56ba6a04be3887b57bfbc9b66c7');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `room_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `addressDesc` varchar(255) COLLATE utf8_bin NOT NULL,
  `price` double(10,2) NOT NULL,
  `area` int(255) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `houseType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sellType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address_Id` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`room_id`),
  KEY `10007` (`address_Id`),
  CONSTRAINT `10007` FOREIGN KEY (`address_Id`) REFERENCES `address` (`address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('0832d12a2f5c46cf8671dcd756e41bed', '301-A', '西湖区振华路智慧园B栋301号A房', '1200.00', '18', '未出租', '15465132135', '2019-04-21', '一室一厅', '租房', '32a0c2ca561c4a7ca098a40fe9001cd9');
INSERT INTO `room` VALUES ('0b04afe73d6344f08f01eafb3cfde793', '201', '西湖区西园六路知新村A幢201号', '220.00', '85', '未出租', '15465132135', '2019-04-21', '三室一厅', '新房', 'd502179d03f043e2afa405c86e08d706');
INSERT INTO `room` VALUES ('0db7e79127ca44b0b8f27c0d8585cab4', '301-B', '西湖区振华路智慧园B栋301号B房', '1200.00', '20', '未出租', '15465132135', '2019-04-21', '一室一厅', '租房', '32a0c2ca561c4a7ca098a40fe9001cd9');
INSERT INTO `room` VALUES ('3f546ad5a26444cbbbbf90775a17147d', '401', '西湖区振华路智慧园B栋401', '3600.00', '108', '未出租', '15465132135', '2019-04-21', '三室一厅', '租房', '32a0c2ca561c4a7ca098a40fe9001cd9');
INSERT INTO `room` VALUES ('8e61cb2c3e5a4cd2a3f5a8b2d94baa9b', '301-C', '西湖区振华路智慧园B栋301号C房', '1500.00', '30', '未出租', '15465132135', '2019-04-21', '一室一厅', '租房', '32a0c2ca561c4a7ca098a40fe9001cd9');
INSERT INTO `room` VALUES ('9c5344b0336e4d27bc7a271cf355cecd', '303', '西湖区振华路智慧园B栋303号', '3400.00', '86', '未出租', '15465132135', '2019-04-21', '三室一厅', '租房', '32a0c2ca561c4a7ca098a40fe9001cd9');
INSERT INTO `room` VALUES ('9d5ffa4cf79e4847828e3a38f8aa43ed', '204', '西湖区西园六路知新村A幢204号', '270.00', '120', '未出租', '15465132135', '2019-04-21', '三室一厅', '新房', 'd502179d03f043e2afa405c86e08d706');
INSERT INTO `room` VALUES ('9d671639ee624f82bcf9dc5502a83967', '304', '西湖区振华路智慧园B栋304号', '2300.00', '56', '未出租', '15465132135', '2019-04-21', '两室一厅', '租房', '32a0c2ca561c4a7ca098a40fe9001cd9');
INSERT INTO `room` VALUES ('a7d2a56ba6a04be3887b57bfbc9b66c7', '506', '西湖区文心路塘口村B幢506号', '230.00', '110', '未出租', '15465132135', '2019-04-21', '三室一厅', '二手房', 'd502179d03f043e2afa405c86e08d703');
INSERT INTO `room` VALUES ('b5dffd6624aa4e81ac4805feb035f503', '202', '西湖区西园六路知新村A幢202号', '110.00', '66', '未出租', '15465132135', '2019-04-21', '两室一厅', '新房', 'd502179d03f043e2afa405c86e08d706');
INSERT INTO `room` VALUES ('bd0048d8b2dc4e0ca5d409b499e823e9', '301', '西湖区西园六路知新村A幢301号', '180.00', '86', '未出租', '15465132135', '2019-04-21', '两室一厅', '新房', 'd502179d03f043e2afa405c86e08d706');
INSERT INTO `room` VALUES ('cae7e327114b4e8b8e82e84eefe09d48', '201', '西湖区西园六路知新村B幢201号', '180.00', '86', '未出租', '15465132135', '2019-04-21', '三室一厅', '二手房', 'd502179d03f043e2afa405c86e08d706');
INSERT INTO `room` VALUES ('d7998e3155ba416f83a3338b58eb1330', '403', '西湖区文心路塘口村B幢403号', '180.00', '86', '未出租', '15465132135', '2019-04-21', '三室一厅', '二手房', 'd502179d03f043e2afa405c86e08d703');
INSERT INTO `room` VALUES ('e9e8c88860884273b911092cdd210dff', '203', '西湖区西园六路知新村A幢203号', '245.00', '110', '未出租', '15465132135', '2019-04-21', '三室一厅', '新房', 'd502179d03f043e2afa405c86e08d706');
INSERT INTO `room` VALUES ('f88fe696b5e84310b07e04bb7aebaa33', '508', '西湖区文心路塘口村B幢508号', '210.00', '96', '未出租', '15465132135', '2019-04-21', '三室一厅', '二手房', 'd502179d03f043e2afa405c86e08d703');
INSERT INTO `room` VALUES ('f9be74f5c11546739c35502ea66129d5', '403', '西湖区西园路立民村A幢403号', '110.00', '64', '未出租', '15465132135', '2019-04-21', '两室一厅', '新房', 'd502179d03f043e2afa405c86e08d702');

-- ----------------------------
-- Table structure for room_furniture
-- ----------------------------
DROP TABLE IF EXISTS `room_furniture`;
CREATE TABLE `room_furniture` (
  `room_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `furniture_id` int(10) NOT NULL AUTO_INCREMENT,
  KEY `10005` (`room_id`),
  KEY `10006` (`furniture_id`),
  CONSTRAINT `10005` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `10006` FOREIGN KEY (`furniture_id`) REFERENCES `furniture` (`furniture_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of room_furniture
-- ----------------------------
INSERT INTO `room_furniture` VALUES ('0832d12a2f5c46cf8671dcd756e41bed', '16');
INSERT INTO `room_furniture` VALUES ('0832d12a2f5c46cf8671dcd756e41bed', '17');
INSERT INTO `room_furniture` VALUES ('0832d12a2f5c46cf8671dcd756e41bed', '18');
INSERT INTO `room_furniture` VALUES ('0832d12a2f5c46cf8671dcd756e41bed', '21');
INSERT INTO `room_furniture` VALUES ('0db7e79127ca44b0b8f27c0d8585cab4', '16');
INSERT INTO `room_furniture` VALUES ('0db7e79127ca44b0b8f27c0d8585cab4', '17');
INSERT INTO `room_furniture` VALUES ('0db7e79127ca44b0b8f27c0d8585cab4', '18');
INSERT INTO `room_furniture` VALUES ('0db7e79127ca44b0b8f27c0d8585cab4', '21');
INSERT INTO `room_furniture` VALUES ('8e61cb2c3e5a4cd2a3f5a8b2d94baa9b', '16');
INSERT INTO `room_furniture` VALUES ('8e61cb2c3e5a4cd2a3f5a8b2d94baa9b', '17');
INSERT INTO `room_furniture` VALUES ('8e61cb2c3e5a4cd2a3f5a8b2d94baa9b', '18');
INSERT INTO `room_furniture` VALUES ('8e61cb2c3e5a4cd2a3f5a8b2d94baa9b', '20');
INSERT INTO `room_furniture` VALUES ('9c5344b0336e4d27bc7a271cf355cecd', '16');
INSERT INTO `room_furniture` VALUES ('9c5344b0336e4d27bc7a271cf355cecd', '17');
INSERT INTO `room_furniture` VALUES ('9c5344b0336e4d27bc7a271cf355cecd', '18');
INSERT INTO `room_furniture` VALUES ('9c5344b0336e4d27bc7a271cf355cecd', '19');
INSERT INTO `room_furniture` VALUES ('9c5344b0336e4d27bc7a271cf355cecd', '21');
INSERT INTO `room_furniture` VALUES ('9d671639ee624f82bcf9dc5502a83967', '16');
INSERT INTO `room_furniture` VALUES ('9d671639ee624f82bcf9dc5502a83967', '17');
INSERT INTO `room_furniture` VALUES ('9d671639ee624f82bcf9dc5502a83967', '18');
INSERT INTO `room_furniture` VALUES ('9d671639ee624f82bcf9dc5502a83967', '19');
INSERT INTO `room_furniture` VALUES ('9d671639ee624f82bcf9dc5502a83967', '21');
INSERT INTO `room_furniture` VALUES ('3f546ad5a26444cbbbbf90775a17147d', '16');
INSERT INTO `room_furniture` VALUES ('3f546ad5a26444cbbbbf90775a17147d', '17');
INSERT INTO `room_furniture` VALUES ('3f546ad5a26444cbbbbf90775a17147d', '18');
INSERT INTO `room_furniture` VALUES ('3f546ad5a26444cbbbbf90775a17147d', '19');
INSERT INTO `room_furniture` VALUES ('3f546ad5a26444cbbbbf90775a17147d', '20');
INSERT INTO `room_furniture` VALUES ('3f546ad5a26444cbbbbf90775a17147d', '21');
INSERT INTO `room_furniture` VALUES ('0b04afe73d6344f08f01eafb3cfde793', '15');
INSERT INTO `room_furniture` VALUES ('0b04afe73d6344f08f01eafb3cfde793', '16');
INSERT INTO `room_furniture` VALUES ('0b04afe73d6344f08f01eafb3cfde793', '17');
INSERT INTO `room_furniture` VALUES ('0b04afe73d6344f08f01eafb3cfde793', '18');
INSERT INTO `room_furniture` VALUES ('0b04afe73d6344f08f01eafb3cfde793', '21');
INSERT INTO `room_furniture` VALUES ('b5dffd6624aa4e81ac4805feb035f503', '15');
INSERT INTO `room_furniture` VALUES ('b5dffd6624aa4e81ac4805feb035f503', '16');
INSERT INTO `room_furniture` VALUES ('b5dffd6624aa4e81ac4805feb035f503', '17');
INSERT INTO `room_furniture` VALUES ('b5dffd6624aa4e81ac4805feb035f503', '18');
INSERT INTO `room_furniture` VALUES ('b5dffd6624aa4e81ac4805feb035f503', '19');
INSERT INTO `room_furniture` VALUES ('b5dffd6624aa4e81ac4805feb035f503', '21');
INSERT INTO `room_furniture` VALUES ('e9e8c88860884273b911092cdd210dff', '15');
INSERT INTO `room_furniture` VALUES ('e9e8c88860884273b911092cdd210dff', '16');
INSERT INTO `room_furniture` VALUES ('e9e8c88860884273b911092cdd210dff', '17');
INSERT INTO `room_furniture` VALUES ('e9e8c88860884273b911092cdd210dff', '18');
INSERT INTO `room_furniture` VALUES ('e9e8c88860884273b911092cdd210dff', '19');
INSERT INTO `room_furniture` VALUES ('e9e8c88860884273b911092cdd210dff', '21');
INSERT INTO `room_furniture` VALUES ('9d5ffa4cf79e4847828e3a38f8aa43ed', '15');
INSERT INTO `room_furniture` VALUES ('9d5ffa4cf79e4847828e3a38f8aa43ed', '16');
INSERT INTO `room_furniture` VALUES ('9d5ffa4cf79e4847828e3a38f8aa43ed', '17');
INSERT INTO `room_furniture` VALUES ('9d5ffa4cf79e4847828e3a38f8aa43ed', '18');
INSERT INTO `room_furniture` VALUES ('9d5ffa4cf79e4847828e3a38f8aa43ed', '19');
INSERT INTO `room_furniture` VALUES ('9d5ffa4cf79e4847828e3a38f8aa43ed', '20');
INSERT INTO `room_furniture` VALUES ('9d5ffa4cf79e4847828e3a38f8aa43ed', '21');
INSERT INTO `room_furniture` VALUES ('bd0048d8b2dc4e0ca5d409b499e823e9', '15');
INSERT INTO `room_furniture` VALUES ('bd0048d8b2dc4e0ca5d409b499e823e9', '16');
INSERT INTO `room_furniture` VALUES ('bd0048d8b2dc4e0ca5d409b499e823e9', '17');
INSERT INTO `room_furniture` VALUES ('bd0048d8b2dc4e0ca5d409b499e823e9', '18');
INSERT INTO `room_furniture` VALUES ('bd0048d8b2dc4e0ca5d409b499e823e9', '19');
INSERT INTO `room_furniture` VALUES ('bd0048d8b2dc4e0ca5d409b499e823e9', '20');
INSERT INTO `room_furniture` VALUES ('bd0048d8b2dc4e0ca5d409b499e823e9', '21');
INSERT INTO `room_furniture` VALUES ('f9be74f5c11546739c35502ea66129d5', '15');
INSERT INTO `room_furniture` VALUES ('f9be74f5c11546739c35502ea66129d5', '16');
INSERT INTO `room_furniture` VALUES ('f9be74f5c11546739c35502ea66129d5', '17');
INSERT INTO `room_furniture` VALUES ('f9be74f5c11546739c35502ea66129d5', '18');
INSERT INTO `room_furniture` VALUES ('f9be74f5c11546739c35502ea66129d5', '19');
INSERT INTO `room_furniture` VALUES ('f9be74f5c11546739c35502ea66129d5', '21');
INSERT INTO `room_furniture` VALUES ('cae7e327114b4e8b8e82e84eefe09d48', '15');
INSERT INTO `room_furniture` VALUES ('cae7e327114b4e8b8e82e84eefe09d48', '16');
INSERT INTO `room_furniture` VALUES ('cae7e327114b4e8b8e82e84eefe09d48', '17');
INSERT INTO `room_furniture` VALUES ('cae7e327114b4e8b8e82e84eefe09d48', '18');
INSERT INTO `room_furniture` VALUES ('cae7e327114b4e8b8e82e84eefe09d48', '19');
INSERT INTO `room_furniture` VALUES ('cae7e327114b4e8b8e82e84eefe09d48', '21');
INSERT INTO `room_furniture` VALUES ('a7d2a56ba6a04be3887b57bfbc9b66c7', '15');
INSERT INTO `room_furniture` VALUES ('a7d2a56ba6a04be3887b57bfbc9b66c7', '16');
INSERT INTO `room_furniture` VALUES ('a7d2a56ba6a04be3887b57bfbc9b66c7', '17');
INSERT INTO `room_furniture` VALUES ('a7d2a56ba6a04be3887b57bfbc9b66c7', '18');
INSERT INTO `room_furniture` VALUES ('a7d2a56ba6a04be3887b57bfbc9b66c7', '19');
INSERT INTO `room_furniture` VALUES ('a7d2a56ba6a04be3887b57bfbc9b66c7', '21');
INSERT INTO `room_furniture` VALUES ('f88fe696b5e84310b07e04bb7aebaa33', '15');
INSERT INTO `room_furniture` VALUES ('f88fe696b5e84310b07e04bb7aebaa33', '16');
INSERT INTO `room_furniture` VALUES ('f88fe696b5e84310b07e04bb7aebaa33', '17');
INSERT INTO `room_furniture` VALUES ('f88fe696b5e84310b07e04bb7aebaa33', '18');
INSERT INTO `room_furniture` VALUES ('f88fe696b5e84310b07e04bb7aebaa33', '19');
INSERT INTO `room_furniture` VALUES ('f88fe696b5e84310b07e04bb7aebaa33', '21');
INSERT INTO `room_furniture` VALUES ('d7998e3155ba416f83a3338b58eb1330', '15');
INSERT INTO `room_furniture` VALUES ('d7998e3155ba416f83a3338b58eb1330', '16');
INSERT INTO `room_furniture` VALUES ('d7998e3155ba416f83a3338b58eb1330', '17');
INSERT INTO `room_furniture` VALUES ('d7998e3155ba416f83a3338b58eb1330', '18');
INSERT INTO `room_furniture` VALUES ('d7998e3155ba416f83a3338b58eb1330', '19');
INSERT INTO `room_furniture` VALUES ('d7998e3155ba416f83a3338b58eb1330', '21');

-- ----------------------------
-- Table structure for subscriberoom
-- ----------------------------
DROP TABLE IF EXISTS `subscriberoom`;
CREATE TABLE `subscriberoom` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `room_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `userName` varchar(255) COLLATE utf8_bin NOT NULL,
  `createDate` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `10003` (`room_id`),
  KEY `10004` (`user_id`),
  CONSTRAINT `10003` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `10004` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of subscriberoom
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `phone` varchar(255) NOT NULL COMMENT '用户邮箱',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  `username` varchar(255) NOT NULL COMMENT '用户昵称',
  `role` varchar(255) NOT NULL COMMENT '用户身份',
  `status` int(1) NOT NULL COMMENT '用户状态',
  `regTime` datetime NOT NULL COMMENT '注册时间',
  `imagePath` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `qq` varchar(11) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `userCard` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '18224535932', '123456', '张三', 'root', '0', '2017-03-28 09:40:31', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('2', '15965932287', '123456aa', '宋博良', '1', '1', '2019-01-20 00:00:00', null, null, null, null, null, null);
