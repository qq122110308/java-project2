/*
Navicat MySQL Data Transfer

Source Server         : 1204
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : myproject1

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-05 15:29:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fun`
-- ----------------------------
DROP TABLE IF EXISTS `fun`;
CREATE TABLE `fun` (
  `funid` varchar(50) NOT NULL,
  `funname` varchar(20) NOT NULL,
  `funurl` varchar(50) DEFAULT NULL,
  `funicon` varchar(20) DEFAULT NULL,
  `funfathernode` varchar(50) DEFAULT NULL,
  `funcreate` date NOT NULL,
  PRIMARY KEY (`funid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun
-- ----------------------------
INSERT INTO `fun` VALUES ('0ed9bf6b70664153b3ee961e4ee2e891', 'Excel导出管理', 'excel/index', 'fa-tag', '0', '2017-10-26');
INSERT INTO `fun` VALUES ('16be08dbc0234635b073227e4cd75bb6', 'Email功能', '', 'fa-envelope-o', '0', '2017-11-03');
INSERT INTO `fun` VALUES ('18bf025b55d54117ba8d7057c12de6b2', '用户管理', 'user/index', 'fa-user', '0', '2017-10-13');
INSERT INTO `fun` VALUES ('1ee422696c5f44d2841410ff34c4c28c', 'Email功能', 'email/emailIndex', 'fa-envelope-o', '16be08dbc0234635b073227e4cd75bb6', '2017-11-03');
INSERT INTO `fun` VALUES ('213a0f534c3d4c6bbc2eb2fe7c6aac57', '角色管理', 'role/roleIndex', ' fa-thumbs-o-up', 'a33998a808ab4f91b59aae4c4c804a84', '2017-10-16');
INSERT INTO `fun` VALUES ('289f530528b0421a99965b4be04609c5', '天气测试', 'weather/weatherIndex', 'fa-sun-o', '9b46729d0f9046b48c17f7359d02137d', '2017-11-03');
INSERT INTO `fun` VALUES ('2dc8fa1b1bbd457c891a35d836722b13', '短信测试', 'msg/msgIndex', 'fa-envelope-o', 'b01a522ebe784509b25e0ce760b2874c', '2017-11-03');
INSERT INTO `fun` VALUES ('313a7765c29346409c04e121e6cc7489', '任务测试', null, 'fa-task', '0', '2017-11-30');
INSERT INTO `fun` VALUES ('398058414f364d1a80986a439f94e3ce', '地图显示', '', 'fa-map', '0', '2017-11-03');
INSERT INTO `fun` VALUES ('6cb93bdc072043f99d7117bccb422f9c', 'Redis功能实现', 'redis/redisIndex', 'fa-book', '85167e1a243d4381a98472126599c835', '2017-11-02');
INSERT INTO `fun` VALUES ('80d2aca7b3994362a2bd713dafe1e1dc', '日志管理', 'log/logIndex', 'fa-meetup', 'f80021b90afb45dd869a33c54efec958', '2017-11-08');
INSERT INTO `fun` VALUES ('85167e1a243d4381a98472126599c835', 'Redis功能', 'redis/redisIndex', 'fa-database', '0', '2017-11-02');
INSERT INTO `fun` VALUES ('97d079ff7c134ad28c0e2dbb1f2f6005', '百度地图显示', 'map/mapIndex', 'fa-map', '398058414f364d1a80986a439f94e3ce', '2017-11-03');
INSERT INTO `fun` VALUES ('9b46729d0f9046b48c17f7359d02137d', '天气测试', '', 'fa-sun-o', '0', '2017-11-03');
INSERT INTO `fun` VALUES ('a33998a808ab4f91b59aae4c4c804a84', '角色管理', 'role/roleIndex', ' fa-tree', '0', '2017-10-16');
INSERT INTO `fun` VALUES ('b01a522ebe784509b25e0ce760b2874c', '短信测试', '', 'fa-envelope-o', '0', '2017-11-03');
INSERT INTO `fun` VALUES ('b28a06bad61945418d7a96f14922b866', 'Excel导出', 'excel/index', ' fa-unlock-alt', '0ed9bf6b70664153b3ee961e4ee2e891', '2017-10-26');
INSERT INTO `fun` VALUES ('b7434786394a4ca190fea6200dbe7f26', '文件上传', 'file/index', 'fa-folder', 'd487ff45cfa6496f9b655777f5584532', '2017-10-26');
INSERT INTO `fun` VALUES ('d487ff45cfa6496f9b655777f5584532', '文件上传', '', 'fa-folder-open', '0', '2017-10-26');
INSERT INTO `fun` VALUES ('f7a420046352442dac39ff3a89f7b8c4', '任务测试', 'task/index', 'icon-taks', '313a7765c29346409c04e121e6cc7489', '2017-11-30');
INSERT INTO `fun` VALUES ('f80021b90afb45dd869a33c54efec958', '日志管理', '', 'fa-meetup', '0', '2017-11-08');
INSERT INTO `fun` VALUES ('f9b38e2449464eb7a3495fb110a17121', '用户管理', 'user/userIndex', 'fa-user', '18bf025b55d54117ba8d7057c12de6b2', '2017-10-13');
INSERT INTO `fun` VALUES ('sdhdjiucjhghgshgdss', '系统功能', 'system/index', ' fa-university', 'skduytud54sads45sd', '2017-10-11');
INSERT INTO `fun` VALUES ('skduytud54sads45sd', '系统管理', '', ' fa-ticket', '0', '2017-10-11');

-- ----------------------------
-- Table structure for `fun_role`
-- ----------------------------
DROP TABLE IF EXISTS `fun_role`;
CREATE TABLE `fun_role` (
  `fun_role_id` varchar(50) NOT NULL,
  `roleid` varchar(50) NOT NULL,
  `funid` varchar(50) NOT NULL,
  `funcreate` datetime NOT NULL,
  PRIMARY KEY (`fun_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_role
-- ----------------------------
INSERT INTO `fun_role` VALUES ('047d5fd9985443468e0902b6fb1e729a', '786a54f291484aa7b6291822f8eda6d3', '85167e1a243d4381a98472126599c835', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('04bb26204267449a9623f86d7e4b2bd8', '786a54f291484aa7b6291822f8eda6d3', 'b7434786394a4ca190fea6200dbe7f26', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('069fda0317924ed7aad030316637e427', '26620520770a4fcebf2e680b57e90ba0', '85167e1a243d4381a98472126599c835', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('0837781ceecd465fa960bbd0415ce5db', '786a54f291484aa7b6291822f8eda6d3', 'sdhdjiucjhghgshgdss', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('08983779bcc642afa98814b971c101b2', '3a4fd8b821df416e92f94d2127f7aadc', '0ed9bf6b70664153b3ee961e4ee2e891', '2017-11-01 11:47:34');
INSERT INTO `fun_role` VALUES ('0bc4473032384ab5b45d4936ec5d8330', '0db25e8654c948ec8653928af0ae428d', '2dc8fa1b1bbd457c891a35d836722b13', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('0d838930f7d345048b73f53b78d39ad6', '26620520770a4fcebf2e680b57e90ba0', '213a0f534c3d4c6bbc2eb2fe7c6aac57', '2017-10-26 15:22:13');
INSERT INTO `fun_role` VALUES ('18330f8e1a394de7a543e26d1ae86514', '786a54f291484aa7b6291822f8eda6d3', '6cb93bdc072043f99d7117bccb422f9c', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('19fefd01da5e4518ba0b32a8eca03af4', '786a54f291484aa7b6291822f8eda6d3', 'b28a06bad61945418d7a96f14922b866', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('20369c684a374af4b3dd1e78c686e849', '786a54f291484aa7b6291822f8eda6d3', '313a7765c29346409c04e121e6cc7489', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('20d900e4034f4eb794958c6b69bc00ad', '0db25e8654c948ec8653928af0ae428d', '0ed9bf6b70664153b3ee961e4ee2e891', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('284233947bc949bfbaf67f75c79ec8cc', '786a54f291484aa7b6291822f8eda6d3', '2dc8fa1b1bbd457c891a35d836722b13', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('2eb64a7402b94e6eb3765b204838f503', '26620520770a4fcebf2e680b57e90ba0', 'b01a522ebe784509b25e0ce760b2874c', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('323cd6fde08f456690b2b9f1d7e5e1aa', '26620520770a4fcebf2e680b57e90ba0', 'b28a06bad61945418d7a96f14922b866', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('3c9ded511f394f85838dba63f852e9e8', '26620520770a4fcebf2e680b57e90ba0', '2dc8fa1b1bbd457c891a35d836722b13', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('3d509456050a4166b3881720342ed2b3', '786a54f291484aa7b6291822f8eda6d3', '16be08dbc0234635b073227e4cd75bb6', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('3debf4b082a3481f824cf001557a7130', '26620520770a4fcebf2e680b57e90ba0', '80d2aca7b3994362a2bd713dafe1e1dc', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('42e7179fb5bf431f9f36dcd02059934d', '0db25e8654c948ec8653928af0ae428d', '289f530528b0421a99965b4be04609c5', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('433d9ca7999e4ed3af4955e6b0a46547', '26620520770a4fcebf2e680b57e90ba0', 'a33998a808ab4f91b59aae4c4c804a84', '2017-10-26 15:22:12');
INSERT INTO `fun_role` VALUES ('465aec515e89410baad9a19d8088a90c', '0db25e8654c948ec8653928af0ae428d', '1ee422696c5f44d2841410ff34c4c28c', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('4eb3ebf89b444a36b8ae63d4090b9ea8', '0db25e8654c948ec8653928af0ae428d', 'b7434786394a4ca190fea6200dbe7f26', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('53a397144ba24312b610572a6cc80066', '26620520770a4fcebf2e680b57e90ba0', 'sdhdjiucjhghgshgdss', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('57ecfe6df29b41cdb7bd23500b4437b7', '786a54f291484aa7b6291822f8eda6d3', '1ee422696c5f44d2841410ff34c4c28c', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('5ea8978d68844c009cb23e02a81e823f', '786a54f291484aa7b6291822f8eda6d3', '289f530528b0421a99965b4be04609c5', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('628b3de3fc19467d9e58f40e46b8e1c8', '26620520770a4fcebf2e680b57e90ba0', 'f80021b90afb45dd869a33c54efec958', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('62de8e16231348969605b1bb15c50eb4', '0db25e8654c948ec8653928af0ae428d', '9b46729d0f9046b48c17f7359d02137d', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('68f3b3f6dee24b3ab0f14fca0b1719e6', '786a54f291484aa7b6291822f8eda6d3', 'f9b38e2449464eb7a3495fb110a17121', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('6a400e22cf1b4566b20f456e13272a73', '26620520770a4fcebf2e680b57e90ba0', 'skduytud54sads45sd', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('6f8999415b4f4b65be41a9d7b19e8698', '786a54f291484aa7b6291822f8eda6d3', 'd487ff45cfa6496f9b655777f5584532', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('70741e4972ae49d1bc7577d42d6fc0be', '26620520770a4fcebf2e680b57e90ba0', '97d079ff7c134ad28c0e2dbb1f2f6005', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('70d722dac13348349d827ae08ecac205', '786a54f291484aa7b6291822f8eda6d3', '398058414f364d1a80986a439f94e3ce', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('771378a374de489c85f6d09722ab5da2', '26620520770a4fcebf2e680b57e90ba0', '6cb93bdc072043f99d7117bccb422f9c', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('77b94546a26f477f9154f9cd0a1ccc97', '0db25e8654c948ec8653928af0ae428d', '398058414f364d1a80986a439f94e3ce', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('79ac30222a9a4a09bb0ffeea44b5561c', '0db25e8654c948ec8653928af0ae428d', 'b28a06bad61945418d7a96f14922b866', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('7c99f29f47a84835969d54ccada48946', '0db25e8654c948ec8653928af0ae428d', 'd487ff45cfa6496f9b655777f5584532', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('7d47d156d5804547bee31ce578d931a3', '26620520770a4fcebf2e680b57e90ba0', '16be08dbc0234635b073227e4cd75bb6', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('8364108c47f446b6afb7b887a92e83d7', '0db25e8654c948ec8653928af0ae428d', '97d079ff7c134ad28c0e2dbb1f2f6005', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('88c13cdb79e842f79b8855fe54e2836b', '0db25e8654c948ec8653928af0ae428d', '6cb93bdc072043f99d7117bccb422f9c', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('8d155c6a08f44294a1d6fac024458655', '26620520770a4fcebf2e680b57e90ba0', 'd487ff45cfa6496f9b655777f5584532', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('8ecd753f918646679da2259d4845e2e4', '786a54f291484aa7b6291822f8eda6d3', 'b01a522ebe784509b25e0ce760b2874c', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('92890010197c4dd984a574ab0b1198a8', '786a54f291484aa7b6291822f8eda6d3', 'f80021b90afb45dd869a33c54efec958', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('92ed64a683c147779a084285536d94ea', '26620520770a4fcebf2e680b57e90ba0', 'f9b38e2449464eb7a3495fb110a17121', '2017-10-26 15:22:12');
INSERT INTO `fun_role` VALUES ('94368bd90a014c7eb005c6150b123d46', '26620520770a4fcebf2e680b57e90ba0', '1ee422696c5f44d2841410ff34c4c28c', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('97263756946f473f840f80d101d0e068', '786a54f291484aa7b6291822f8eda6d3', '80d2aca7b3994362a2bd713dafe1e1dc', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('9ab838351c894100b30e32e0f6297846', '786a54f291484aa7b6291822f8eda6d3', 'a33998a808ab4f91b59aae4c4c804a84', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('9ec4de80b6b548b4aa7c1fadf5adcb01', '786a54f291484aa7b6291822f8eda6d3', '9b46729d0f9046b48c17f7359d02137d', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('a8f9cb67fffe4514913949d436744e63', '0db25e8654c948ec8653928af0ae428d', '85167e1a243d4381a98472126599c835', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('aabbccddeeffgg', 'asasassdss', '18bf025b55d54117ba8d7057c12de6b2', '2017-10-26 00:00:00');
INSERT INTO `fun_role` VALUES ('aabbcceeddffgg', 'asasassdss', 'f9b38e2449464eb7a3495fb110a17121', '2017-10-26 00:00:00');
INSERT INTO `fun_role` VALUES ('ad08d05141224b11b361212ab424dbd0', '3a4fd8b821df416e92f94d2127f7aadc', 'b28a06bad61945418d7a96f14922b866', '2017-11-01 11:47:35');
INSERT INTO `fun_role` VALUES ('b00baf6f40aa4955a5e0531eedec511b', '0db25e8654c948ec8653928af0ae428d', 'b01a522ebe784509b25e0ce760b2874c', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('b6b0ab5ee88147999c7e432952d71ace', '786a54f291484aa7b6291822f8eda6d3', 'skduytud54sads45sd', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('ba7cf16eef424312ad4cccba547e361e', '26620520770a4fcebf2e680b57e90ba0', '398058414f364d1a80986a439f94e3ce', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('cf18f0a9e036405282ffcd3c157f4d67', '786a54f291484aa7b6291822f8eda6d3', '0ed9bf6b70664153b3ee961e4ee2e891', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('d3a39375de9b41ea923fc65b7510afcc', '786a54f291484aa7b6291822f8eda6d3', '97d079ff7c134ad28c0e2dbb1f2f6005', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('d5316d83daa146dda530ead28a5711c4', '786a54f291484aa7b6291822f8eda6d3', 'f7a420046352442dac39ff3a89f7b8c4', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('d789bbb35e9e4f9ca8b94103d226fe0e', '26620520770a4fcebf2e680b57e90ba0', 'b7434786394a4ca190fea6200dbe7f26', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('d7ed5b173da84548a2fbcd30b15d45cc', '786a54f291484aa7b6291822f8eda6d3', '18bf025b55d54117ba8d7057c12de6b2', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('e83e87782cc64463acd95647f347ad07', '26620520770a4fcebf2e680b57e90ba0', '0ed9bf6b70664153b3ee961e4ee2e891', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('f34ba8b15a12476bb935d7cfbbc6e2a9', '26620520770a4fcebf2e680b57e90ba0', '9b46729d0f9046b48c17f7359d02137d', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('f436dbbe87a94abc82786b7749a378de', '0db25e8654c948ec8653928af0ae428d', '16be08dbc0234635b073227e4cd75bb6', '2017-11-27 10:10:50');
INSERT INTO `fun_role` VALUES ('fb723dd7b75f44ca8b4e63ff2902e0f7', '786a54f291484aa7b6291822f8eda6d3', '213a0f534c3d4c6bbc2eb2fe7c6aac57', '2017-11-30 10:48:08');
INSERT INTO `fun_role` VALUES ('fc768ea54fe9467d900e6e05c8bb3951', '26620520770a4fcebf2e680b57e90ba0', '289f530528b0421a99965b4be04609c5', '2017-11-27 10:47:31');
INSERT INTO `fun_role` VALUES ('fe59c75d7a794d43b42d547afd9b77d1', '26620520770a4fcebf2e680b57e90ba0', '18bf025b55d54117ba8d7057c12de6b2', '2017-10-26 15:22:12');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `logid` varchar(50) NOT NULL,
  `logtype` varchar(50) DEFAULT NULL,
  `logname` varchar(20) DEFAULT NULL,
  `logcreate` date DEFAULT NULL,
  `logexception` varchar(50) DEFAULT NULL,
  `logip` varchar(50) DEFAULT NULL,
  `loguser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('010e2415a61d43ee8005d50d8612096d', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-28', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('01d61c5ad0f344d28cb3dc804d6cbb7a', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('0242c4bbbdee491b977c7b26486fa888', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-28', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('025663fdc4604f5ebff694997aa8417b', 'com.ry.controllers.UserController.updateUser()', '修改用户', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('03c09ee0cd2d4ef58e14082c6bd4eabe', 'com.ry.controllers.RedisController.redisPublish()', 'redis发布', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('04c78efae7934002881501b4342c8b0f', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-06', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('04da2e3fab854375b500273e7132eb08', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-27', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('058bdec1672346eca2b80c23ebd83412', 'com.ry.controllers.RedisController.redisPublish()', 'redis发布', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('077696fe19a944aaa74e60c914143d7c', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('07775d7a81ec453c94ba88f93b36bd9e', 'com.ry.controllers.UserController.execProcedure()', '执行存储过程', '2017-12-07', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('07f806d6d658478081ad87faaf5bb79e', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('0883e2626ed946918abdf236f3bb39ae', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-27', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('0d9d265fe6e14a67a245b71011cc2686', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('0e0044d1c1664daebfb920b433096d2f', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('0e779fc222194149b12c4224b48750dd', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('0f5d9a719d87433ba20e36085e01d617', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('113a2a2632274ee38e69659730079509', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('14e648ec29b2447aa51729fad43b506c', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-28', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('15fb152bde4a487892c0dc000882218b', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('17c2fb17e96042b5a9dc9aec0725dabd', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1d651c77bf174132a9160188dd532b45', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-28', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('1e76977a2a174c189e137a98ff060941', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-12-04', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('2180d2f5b29f4460a9883ad8e9cc372c', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('21bc14c049df462389570d70b03ceb18', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('22959824953346369b2582a64470df94', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('234f6ebb47e14b8fa1da95dbbf0da197', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('2675605b73e74f4dbd9c57a150fcae82', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('26807ad375c9405da2db1262765e88d0', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('279e241667154748b0275fe37821b83b', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('27b8ef740c004a239cd8fc81b6164647', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('28ef1fcb732e4b4998755d881f685697', 'com.ry.controllers.UserController.index()', '查询用户', '2017-12-05', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('28fa067a53664ba0add38895cfc07f5e', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('2975150715f248f1923e9d25e56df30a', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-12-04', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('2ab98454acfc4455ba6caf1b4c8b8e7b', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('2ac18d8d95ca4647972f248149f49e7c', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-12-05', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('2b78dc70f58d42989c12fbdaceab2f5a', 'com.ry.controllers.RedisController.redisPublish()', 'redis发布', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('2e76b95a0bad4bd0ab9f2fa643eb7911', 'com.ry.controllers.FunController.add()', '添加功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('30625c7af52b4cd7886b4c2d35f09a9d', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-28', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('3146dfe6598840c88f2af2ff8e257c7f', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('31d47ad74c4e4c9d831f6ca6a2407d31', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-28', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('343e274ac43d40ee8788b44d7cdb859b', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-28', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('37141d4293a34c29bed548a8cbecf100', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('38302e4e2e004f60acaec5f978fbb8ca', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('38be70d1135a4a69848692f85ca45a8e', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('38f97fa9a08f469eb703e4f9444137b1', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-12-03', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('3bc66cfb40a34ff0b4dabe865751a233', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('4043b1a57ee940649fc30a1626c0edc9', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-28', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('41c26d07331c44f6b7a9674c55233974', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('44cb644abc9945b7966d5cf4415c23e0', 'com.ry.controllers.UserController.goOutLogin()', '退出登录', '2017-11-27', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('4556f9cc8c82434fa7360c09c1ee3b59', 'com.ry.controllers.FunController.index()', '查询功能', '2017-12-05', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('47d051ecc2204d8f931f440a4af3eb4d', 'com.ry.controllers.RedisController.redisPublish()', 'redis发布', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('496d4abb7df84ae394c7eb265c2ecee6', 'com.ry.controllers.UserController.index()', '查询用户', '2017-12-03', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('49bdadf8be244202b8be32c167c985d6', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('4a37be870ddf451cb4d75b904d5a5a1d', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('4c8ff1cb02384d679631e62ce1d6b86d', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('4ced7c0abe934901982c1aec2e9ab8ba', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('4e245344499c4044a297fdd8c75679f6', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-29', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('4ed88d815f7a440dabb6a1fff6805708', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-28', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('51126d8e525d4394b5561c8d36ea9d1b', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-28', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('51c5203df2b948f383e0691799c539e5', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('5361060fa6eb46bcb67586f479e12015', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('542dd08e07c94ef390357524462a6ee3', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('548be6cbcf8347b89019f08ac1ae47b0', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('5506cd440d5e434b9dcd2c66de971f57', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('56ce65b4102e47809fa5f7291c3f8878', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('57a8c70411764cc8ada629325a5b53ff', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-06', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('5e63db1fd7154662b6bd4d3b7eae092e', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('5fc5d8a8cabd4050905b79fe78241440', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('5fe7eac732614c5d9bc1ffb0e00b3514', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('61a1c33eb27843fcb190186bd155be79', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('61dde3051e1941afabb952e447f742c4', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-12-04', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('6341fa2fa7b44cc4b897bb443af9239d', 'com.ry.controllers.UserController.goOutLogin()', '退出登录', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('635e5e0f08144331a26f0de590d0fb2a', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('63a63baf857545b4833892e0198f4243', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('6405b08e5b524dc1844d7f35f9051d9f', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('6444793e440d4ee5a36a3fa9a74a675d', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('64b5cf6e0cf74fd6837131369b9b1fec', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('64be28bd8d6b45129884427186207bce', 'com.ry.controllers.UserController.goOutLogin()', '退出登录', '2017-11-27', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('653d7f21daf2438b8f153334710efe19', 'com.ry.controllers.UserController.goOutLogin()', '退出登录', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('66ce19a223964a1091e11bb37aa7d4db', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-28', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('6a44dab2ab684ea7aa6e53af3dc8b486', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('6cd6ff2e3b804e99a302e59ceefdac32', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('6d955b0797bb4fe7a57e057fd66b4acd', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('6dc8bca461d84720b69423140fd2a1a4', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('6fe823ae5a594b40a22ce8907d7962b2', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-28', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('75632b94f5c54a92bf40c2625525248a', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('769194291f4b4d7c934226a3c355578f', 'com.ry.controllers.UserController.updateUser()', '修改用户', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('78271dcd475b4f57b8de80cc514969dc', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('7867930f25604e95b7455376871a0bf7', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('7a05a860352d45098cd1e7cffae9259f', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('7a1262aea3664568bc37168b5b547e93', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('7ab08875c8cb488697ba01e344e87a0e', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('7ba6de8398bf4747acbd998c49e823b0', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('7d6bb1f21255424e9f3acc2a1e073ed3', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-08', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('7eee20fa9e8246fdad9efc12998bdfc1', 'com.ry.controllers.RedisController.redisPublish()', 'redis发布', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('80edbba13a1e4cd6a29eab37ca3ee338', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-09', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('820bbc2b57bf49edbe5cbb63c2eab410', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('8289e625264d471291f7261f8c32608e', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('83f5b3192676409a976a96f25a4b4dc4', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('846927a1657642faa4e97973efa8d039', 'com.ry.controllers.FunController.index()', '查询功能', '2017-12-04', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('84c092a2f297421d89609f0b9bacba5c', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('8547897bb2374a51beb79f65dcab5731', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('8555d1cdf1a84f819fad7c70be474137', 'com.ry.controllers.UserController.index()', '查询用户', '2017-12-04', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('85ae8b18c56643449d776f605cbb7e49', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('8711d3bd1ef8450b9c4f38060e4123f2', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-12-05', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('881e65eecc744f7084b6e7f47842c631', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-06', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('8a8c42e1974042fd956094e93b3f8627', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('8ac10a3ec4de4bb0835615afbd29f038', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-06', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('918f9af3e6ab4f80b27382de59f34c82', 'com.ry.controllers.UserController.goOutLogin()', '退出登录', '2017-11-27', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('9358441561e745078cde354c4d1c3920', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('93636571a009496baec58acfbc804e4a', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('950b3424e7bc4864821266c85edbd520', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('958dbeca308a4bd6a31d93b5a5568a8f', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('95e91ef6167c441e827605a7fc97e5ad', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-06', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('96111d987e5c4d3585503c03a0b4590a', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('96a755bc4cb54677b79ffab15887eaf6', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-28', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('98cccdbcd60c40c0b826259d54868c29', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('98dc322f384e471795f3c23ff6a1641a', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('994ee2370a6f46e48b38d89487b68370', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('9aefba6816b244558c2cf59b3d6b82ca', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-09', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('9c2810587d8e41d4bbda61584f00973b', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('9cdc6b14e1514392b6af6144953fded2', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-20', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('a1459b18ee954881a63a4074c75b3e58', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('a18ce081c6f947a3a1643f535fce5368', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('a1d5fa4785db4bfa82ce9587cbb21d42', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('a2123b162d1a4d3aaaa127fd3559e8c6', 'com.ry.controllers.UserController.goOutLogin()', '退出登录', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('a2d5f8e43769471e8beddb66b714f862', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('a40ec76217de49b78c47adc8963806a7', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('a4715192dd5d427780f8acbd9033f2e4', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-28', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('a5084f68872f473880988fd5a6b2a189', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('a654e4f4496a48b7b4a8a17b3c79c3e1', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('a6cf4d8cd85c40998492774681a170dd', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('a8dc83bddbb6457a9bdb445a0cc58532', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('a9743d8551d24949a9ad9c697fa7df22', 'com.ry.controllers.UserController.index()', '查询用户', '2017-12-07', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('aaf60e07117c4a088e217cb7e765af43', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-06', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('abe4ff1233e147ce96ba7ec5ad5462f3', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('af2d83269de0463e8b8344b1aaa27cde', 'com.ry.controllers.RedisController.redisPublish()', 'redis发布', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('b36fc67228b44a1ab407f7cd53830934', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-28', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('b4665425118a42cda49ce35e6cd68a0d', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-28', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('b5a2e8ccd3594a1f9d3967e26edf60b8', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('b7b516adcfb04712975393643b1b3f20', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('b7dd2dce81c346de800565aaef8a678c', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-12-03', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('b8303c09d734466e94d67bf9eaf3ca5b', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-12-05', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('b9f1ab3a683f45c68a5916ab98c660e6', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('badd2494e3c34ee5ae60ca77a8f576b5', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('bbb684ea3d5f4205942235b51ad18a29', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-24', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('bbd0511cce2f4e7bbe6ffd29361edcce', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-28', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('bdae86d446cf4684afd18d7a12d1a7bb', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-06', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('c01ea5da63ff4114aee90facf9b77db5', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('c15fba1bc2d6429dae55c2c262881990', 'com.ry.controllers.RoleController.deleteRole()', '删除角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('c2827d6567ec4ab3befb7b4767adafb6', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('c75682bc4ea74787855838e3764242ce', 'com.ry.controllers.UserController.deleteUser()', '删除用户', '2017-12-04', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('c81547ca62a94a2c8e28b541475f0a78', 'com.ry.controllers.RoleController.add()', '添加角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('c9c64515d93544e7a6eec09ef77561b2', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-27', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('ca228408d85841ae937a9fec679178be', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('cee2de2bfb3748a6a3f6ba722d3fe646', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('d08c03a4bba04a99a7f6f14a824e70f4', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('d376dee24576405993b88cd3e7f2c7ba', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('d63c0cf59c6140c4af679f03ee9c8715', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('d98e47cb42f943aaa5747e1e866d40f2', 'com.ry.controllers.FunController.add()', '添加功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('d9be11b3b37c4f17bf8ad1242ad63542', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-09', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('da2309607c6a4e4e8032abce8f97583a', 'com.ry.controllers.UserController.index()', '查询用户', '2017-12-05', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('da4b5cbda8f5400ca0ef487148d45a8f', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('dd24662246f84f689a09d5d0eaa072af', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-09', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('de5204522cd34416b6daf240348f3546', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('debf1778456248d780172e75e392e5db', 'com.ry.controllers.RedisController.redisPublish()', 'redis发布', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('dfe641050a924ae4b901249fe312a7ef', 'com.ry.controllers.UserController.goOutLogin()', '退出登录', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('e0ceeaafeca44ca7a346799ee50bd605', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('e4e9790aec5448ae80f688c327735ea1', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('e6f22aced27f47a3b149e6d2d5acb349', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-28', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('e8410eaafa14432d8f52d1ec53d54d9a', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-27', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('e916a2edadcf46649a2a4cd3294cb695', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('e95323d1b8be441d8509ec730bb68bac', 'com.ry.controllers.RoleController.roleIndex()', '查询角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('e95d0651347645f49e51ea22f6b7875b', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('ea211b7ffd7548f994ef048581dbfd69', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('ea978805a14b49a5a8e9e20f3e4dc0c5', 'com.ry.controllers.ExcelController.toExcel()', '生成Excel文件', '2017-11-27', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('eb8c177778684352ba6ee18a186b48bb', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-20', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('ef46b93ecccf4f1c9abc75ddc5beec31', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('ef6215e66a8c4c0885a745ca1045167d', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('ef95622bf76a4ffdb1643c5213b7666a', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-06', null, '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `log` VALUES ('f1dd3997be1f48e594b2bfb9cf788e19', 'com.ry.controllers.RoleController.add()', '添加角色', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('f218eb20e1054a0a86e42a6d342e6b25', 'com.ry.controllers.RedisController.redisPublish()', 'redis发布', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('f3820d0138fb4f9f9c70a15a21399eac', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('f4886946a2fe4eefad33aa375fbf7e84', 'com.ry.controllers.UserController.execProcedure()', '执行存储过程', '2017-12-07', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('f600957cf4c14229a58b578da8bb6096', 'com.ry.controllers.FunController.add()', '添加功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('f6159a190139452dbed156b2769808b1', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('f684d21553184d6389ba7d1dd5544ead', 'com.ry.controllers.UserController.goOutLogin()', '退出登录', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('f74e0928199d45908cca7ed373914201', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('f833978cc505417689768daaeff18406', 'com.ry.controllers.RedisController.redisIndex()', '进入redis主页', '2017-11-27', null, '127.0.0.1', null);
INSERT INTO `log` VALUES ('f8a9b4c70dd6401bb98b6e5b883e2549', 'com.ry.controllers.UserController.index()', '查询用户', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('f945ffbe7766402c96f4dc95f30fdea1', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('faf5630fe94640478d5a8fd0eaef2912', 'com.ry.controllers.FunController.index()', '查询功能', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('fc776eff050a45e38680adf928e7b314', 'com.ry.controllers.FunController.index()', '查询功能', '2017-12-05', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('fd70c26e3b21453b9b3c7a766ba0794c', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('fdc2f0c458004ba98a9759f30870fbb3', 'com.ry.controllers.FunController.systemStree()', '展示功能树', '2017-11-30', null, '0:0:0:0:0:0:0:1', null);

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleid` varchar(50) NOT NULL,
  `rolename` varchar(20) NOT NULL,
  `rolecreate` datetime NOT NULL,
  `rolestate` int(11) NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('0db25e8654c948ec8653928af0ae428d', '测试人员', '2017-11-27 10:10:50', '1');
INSERT INTO `role` VALUES ('26620520770a4fcebf2e680b57e90ba0', '总管理者', '2017-10-26 15:22:12', '1');
INSERT INTO `role` VALUES ('786a54f291484aa7b6291822f8eda6d3', '测试用户', '2017-11-30 10:48:08', '1');
INSERT INTO `role` VALUES ('asasassdss', '管理员', '2017-10-16 00:00:00', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `useraccount` varchar(20) NOT NULL,
  `usercontact` varchar(20) DEFAULT NULL,
  `usercreate` date NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1234567745', 'admin', '21232F297A57A5A743894A0E4A801FC3', '122110308@qq.com', '13545152390', '2017-10-09');
INSERT INTO `user` VALUES ('dc169874be29499595a13ffc4499420b', '管理员', '123456', '648517286@qq.com', '13345678900', '2017-11-01');
INSERT INTO `user` VALUES ('fe9f499959bc4366ab2cce576a8a6c6f', '陈曦', '111111', '819413891@qq.com', '18163114755', '2017-10-30');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_role_id` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `roleid` varchar(50) NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('2944fe6fc46c4ac4a31802bffe3a8416', 'fe9f499959bc4366ab2cce576a8a6c6f', 'asasassdss');
INSERT INTO `user_role` VALUES ('3db7268a6d134f8d8b2d574cb4f9f6b6', 'dc169874be29499595a13ffc4499420b', 'asasassdss');
INSERT INTO `user_role` VALUES ('644722fb0f3744d98ed37a51c687e66d', '1234567745', 'asasassdss');
INSERT INTO `user_role` VALUES ('70eab1231a534715ad823bdec97d7335', '3f340599d05d44598c95fe43cf1ad5f0', 'asasassdss');
INSERT INTO `user_role` VALUES ('7b79cbf2ee2849b883fe25301a7cf413', 'dc169874be29499595a13ffc4499420b', '0db25e8654c948ec8653928af0ae428d');
INSERT INTO `user_role` VALUES ('bbf6eab8168642d981b5f23a663b6c24', '1234567745', '786a54f291484aa7b6291822f8eda6d3');
INSERT INTO `user_role` VALUES ('e84aa23df63b4fcf8f1cd8d0f025f7d9', 'fe9f499959bc4366ab2cce576a8a6c6f', '26620520770a4fcebf2e680b57e90ba0');
INSERT INTO `user_role` VALUES ('f524fff971a548dcba043b09187f8e91', '1234567745', '0db25e8654c948ec8653928af0ae428d');
INSERT INTO `user_role` VALUES ('fa63d3e214b248f8acc206c7de4b2e6d', '1234567745', '26620520770a4fcebf2e680b57e90ba0');

-- ----------------------------
-- Procedure structure for `updateName`
-- ----------------------------
DROP PROCEDURE IF EXISTS `updateName`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateName`(sid VARCHAR(50), scontact VARCHAR(50))
BEGIN
DECLARE usercontact VARCHAR(50);
DECLARE uname VARCHAR(50);
set uname = (select  username from user where userid = sid  limit 1);

IF(uname = '陈曦') THEN

 update user set usercontact=scontact where username = uname  ;


end if ;



END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `delete_on_role`;
DELIMITER ;;
CREATE TRIGGER `delete_on_role` BEFORE DELETE ON `role` FOR EACH ROW BEGIN
		DECLARE c VARCHAR(50);
		set c = OLD.roleid ;
		delete from user_role  where roleid = c ;
END
;;
DELIMITER ;
