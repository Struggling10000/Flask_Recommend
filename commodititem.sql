/*
Navicat MySQL Data Transfer

Source Server         : 192.168.90.171
Source Server Version : 50556
Source Host           : 192.168.90.171:3306
Source Database       : commodititem

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-03-27 17:18:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemId` varchar(32) NOT NULL COMMENT 'uuid',
  `itemTitle` longtext NOT NULL COMMENT '标题',
  `itemPrice` text COMMENT '价格',
  `itemImg` text NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('0ffa787e-3023-11e8-8820-001a7dda', '余华作品：活着', '¥32.60', 'http://img10.360buyimg.com/n3/jfs/t10162/279/1390942739/246693/50c56f9d/59e02214N37418280.jpg');
INSERT INTO `item` VALUES ('103965ae-3023-11e8-976c-001a7dda', '哈利·波特与魔法石（纪念版）', '¥43.10', 'http://img11.360buyimg.com/n3/jfs/t328/178/1292245521/921915/d6811442/54364f16Na4aa9592.jpg');
INSERT INTO `item` VALUES ('1075f174-3023-11e8-9d3b-001a7dda', '动物小说大王沈石溪感悟生命书系 狼国女王', '¥', 'http://img12.360buyimg.com/n3/g15/M09/0A/1E/rBEhWFI5D7gIAAAAAAHt5s9y034AADRfwP5puEAAe3-567.jpg');
INSERT INTO `item` VALUES ('10b1aad0-3023-11e8-b2d4-001a7dda', '朗文·外研社·新概念英语2 实践与进步（新版）', '¥', 'http://img11.360buyimg.com/n3/g14/M09/17/18/rBEhVlMhXCAIAAAAAAY0OVe5t3gAAKIXACtMWIABjRR310.jpg');
INSERT INTO `item` VALUES ('10ecfca8-3023-11e8-92ec-001a7dda', '十年一品温如言 ：完美珍藏版', '¥', 'http://img11.360buyimg.com/n3/jfs/t8671/48/1175815063/275985/8e287016/59b607b6Ne23aa032.jpg');
INSERT INTO `item` VALUES ('11287810-3023-11e8-8267-001a7dda', '美的沉思', '¥', 'http://img14.360buyimg.com/n3/jfs/t232/163/1403857637/212486/508d5c41/53fb002eNd1877b1d.jpg');
INSERT INTO `item` VALUES ('1163f6b6-3023-11e8-b563-001a7dda', '全景创意磁力贴：轱辘轱辘小汽车', '¥', 'http://img14.360buyimg.com/n3/jfs/t10165/162/1618246031/693687/771c7057/59e4173bN51f6929b.jpg');
INSERT INTO `item` VALUES ('119dc630-3023-11e8-88df-001a7dda', '查理九世彩图版 不可思议事件簿：3海盗王的秘宝', '¥', 'http://img10.360buyimg.com/n3/jfs/t2845/115/3082407096/323784/db199e2/577f5855N1ea53ed6.jpg');
INSERT INTO `item` VALUES ('11df8e1e-3023-11e8-a32c-001a7dda', '格局：思维决定出路，格局决定结局', '¥', 'http://img11.360buyimg.com/n3/jfs/t1390/13/47166989/162968/354bc21c/55519cfcN43a4708e.jpg');
INSERT INTO `item` VALUES ('121b06c0-3023-11e8-8e0c-001a7dda', '幼儿睡前故事绘本(全套60册) 0-3-6岁童话书儿童启蒙认知早教', '¥', 'http://img13.360buyimg.com/n3/jfs/t3388/63/1414069775/251733/d1ded900/5825258aN0b776483.jpg');
INSERT INTO `item` VALUES ('1256bdf4-3023-11e8-a428-001a7dda', '父与子全集（套装共10册）', '¥', 'http://img13.360buyimg.com/n3/jfs/t15808/118/1462179270/345203/9b9b8123/5a52f0deN68e015f1.jpg');
INSERT INTO `item` VALUES ('1293a59e-3023-11e8-85e5-001a7dda', '曹文轩纯美小说：草房子（2016版）', '¥', 'http://img11.360buyimg.com/n3/jfs/t10885/90/1676944853/291012/8f1f8485/59e5a7efNc8a36761.jpg');
INSERT INTO `item` VALUES ('12d6be7a-3023-11e8-8661-001a7dda', '启发绘本：我爸爸+我妈妈（套装全2册）', '¥', 'http://img12.360buyimg.com/n3/jfs/t5845/202/1942638837/1154627/c956927a/592bf160Nbc57a987.jpg');
INSERT INTO `item` VALUES ('1310bdee-3023-11e8-9132-001a7dda', '林徽因：不慌不忙的坚强', '¥', 'http://img11.360buyimg.com/n3/jfs/t14473/219/1123201220/596396/73f13bf/5a45b0a7Ned0a673d.jpg');
INSERT INTO `item` VALUES ('134a7348-3023-11e8-a159-001a7dda', '不可思议事件簿 查理九世彩图版5：魔法学园', '¥', 'http://img14.360buyimg.com/n3/jfs/t10681/261/2398950045/291375/ef4c1907/59f6f4d4Nc8d431a3.jpg');
INSERT INTO `item` VALUES ('1388c74c-3023-11e8-b68e-001a7dda', '亲子情商教育系列：培养孩子强大内心（套装全6册）', '¥', 'http://img11.360buyimg.com/n3/jfs/t868/189/784490388/629075/b1ef05dd/5559527aNbd46717b.jpg');
INSERT INTO `item` VALUES ('13cd9848-3023-11e8-9b28-001a7dda', '国际大奖小说——亲爱的汉修先生', '¥', 'http://img10.360buyimg.com/n3/jfs/t4741/63/2369695072/209032/2dd9f690/58fdbb42Nbba12240.jpg');
INSERT INTO `item` VALUES ('1407df26-3023-11e8-a903-001a7dda', '现代汉语词典（第7版）', '¥', 'http://img10.360buyimg.com/n3/jfs/t3757/38/34269690/485570/3f12bc2/57fc87a3N82181b12.jpg');
INSERT INTO `item` VALUES ('14431290-3023-11e8-b9b1-001a7dda', '非暴力沟通', '¥', 'http://img11.360buyimg.com/n3/jfs/t5653/246/1999052294/365325/48b4cb1/592bf16cN5961eec1.jpg');
INSERT INTO `item` VALUES ('147e2240-3023-11e8-9456-001a7dda', '傅雷家书（新课标本）', '¥', 'http://img13.360buyimg.com/n3/jfs/t2956/342/159117444/146398/51d48c69/574e3cf6N3cc78e15.jpg');
INSERT INTO `item` VALUES ('18c9e494-3023-11e8-baea-001a7dda', '窗边的小豆豆（新版）', '¥', 'http://img10.360buyimg.com/n3/jfs/t2470/299/2541746346/564200/e68c6c42/56e21e4dN8b72a0cb.jpg');
INSERT INTO `item` VALUES ('19052286-3023-11e8-a0f5-001a7dda', '月亮和六便士（毛姆代表作，月亮与六便士导读注释精装典藏版）', '¥', 'http://img11.360buyimg.com/n3/jfs/t5593/227/2011982181/397384/e993561d/592bf16aN87d65c22.jpg');
INSERT INTO `item` VALUES ('1940b192-3023-11e8-bc83-001a7dda', '淘气包马小跳系列 典藏版：孔雀屎咖啡', '¥', 'http://img12.360buyimg.com/n3/jfs/t2056/236/1014095980/202234/80e2002f/5652832dN84db62a9.jpg');
INSERT INTO `item` VALUES ('197c2426-3023-11e8-a141-001a7dda', '谢谢你离开我（朗读者推荐，精装全新增订本）', '¥', 'http://img13.360buyimg.com/n3/jfs/t5476/79/1157723025/166092/ba0e1b5e/590c4edbN2eb09921.jpg');
INSERT INTO `item` VALUES ('19b7c776-3023-11e8-bd41-001a7dda', '北斗童书·德国经典专注力亲子游戏书 第一辑（套装共3册）', '¥', 'http://img10.360buyimg.com/n3/jfs/t4018/197/300113302/828723/82a26eee/5847c42aN921b98e1.jpg');
INSERT INTO `item` VALUES ('19f2f5e2-3023-11e8-bf94-001a7dda', '统编语文教科书必读书目·快乐读书吧·名著阅读课程化丛书：二年级下册 神笔马良', '¥', 'http://img13.360buyimg.com/n3/jfs/t17101/293/536654598/205045/c4edf217/5a950fc0Na15eb9bc.jpg');
INSERT INTO `item` VALUES ('1a2eba7a-3023-11e8-af47-001a7dda', '淘气包马小跳漫画升级版（第二辑套装全十册）', '¥', 'http://img13.360buyimg.com/n3/jfs/t18490/32/481305107/741409/cec4daa3/5a8fd131N7d1e5e6f.jpg');
INSERT INTO `item` VALUES ('1a6905d8-3023-11e8-8ac0-001a7dda', '初级会计职称2018教材 2018全国会计专业技术资格考试辅导教材 初级会计实务 ...', '¥', 'http://img14.360buyimg.com/n3/jfs/t14737/77/353535153/101813/4569ef40/5a2a1556N24402b7b.jpg');
INSERT INTO `item` VALUES ('1aa42f1e-3023-11e8-b67a-001a7dda', '信谊绘本世界精选图画书：好饿的毛毛虫', '¥', 'http://img12.360buyimg.com/n3/jfs/t14992/304/2221784627/272760/7790ccff/5a8e3660N29b84875.jpg');
INSERT INTO `item` VALUES ('1adfc634-3023-11e8-b7da-001a7dda', '如何把产品打造成有生命的品牌：跟广告鬼才叶明桂学品牌的技术与艺术', '¥', 'http://img10.360buyimg.com/n3/jfs/t19018/301/566900328/215710/67d69d97/5a979460N95996bab.jpg');
INSERT INTO `item` VALUES ('1b1b1ce8-3023-11e8-bbc6-001a7dda', '邦臣小红花·我的第一套启蒙认知贴纸书（2-5岁 套装全8册）', '¥', 'http://img11.360buyimg.com/n3/jfs/t14452/33/143579569/195775/a15c3bc1/5a24e220N4f79e319.jpg');
INSERT INTO `item` VALUES ('1b566806-3023-11e8-8708-001a7dda', '我不 大冰2017新书', '¥', 'http://img12.360buyimg.com/n3/jfs/t9160/276/1950634648/369277/eea5bd4f/59c1fd19Neeadc6d0.jpg');
INSERT INTO `item` VALUES ('1b931e1e-3023-11e8-a166-001a7dda', '月亮与六便士（2017新版！未删节插图珍藏本）（作家榜经典）', '¥', 'http://img11.360buyimg.com/n3/jfs/t14404/91/586858957/350390/17e9e659/5a31f63bN8719e80b.jpg');
INSERT INTO `item` VALUES ('1bcd2474-3023-11e8-b2d9-001a7dda', '村上春树：刺杀骑士团长（套装上下册）', '¥', 'http://img14.360buyimg.com/n3/jfs/t16021/111/2033850056/525723/13df513b/5a703ef0Nfdeff9f1.jpg');
INSERT INTO `item` VALUES ('1c081ba8-3023-11e8-93b4-001a7dda', '好妈妈胜过好老师：一个教育专家16年的教子手记（700万册纪念版）', '¥', 'http://img13.360buyimg.com/n3/jfs/t10129/244/392237548/660313/57a17212/59cde186Nc1b80a13.jpg');
INSERT INTO `item` VALUES ('1c449990-3023-11e8-bfa4-001a7dda', '皮囊', '¥', 'http://img12.360buyimg.com/n3/jfs/t11824/344/70950795/204778/f8cc11b6/59e71e10Nc2b1d800.jpg');
INSERT INTO `item` VALUES ('1c7e945a-3023-11e8-8dfd-001a7dda', '历史不忍细看（精编版）（以野史范刷新你的正史观）', '¥', 'http://img11.360buyimg.com/n3/jfs/t13237/338/1863388492/387268/f0ea56c2/5a93c370N9713ab4f.jpg');
INSERT INTO `item` VALUES ('1cba3ee4-3023-11e8-8dc1-001a7dda', '追风筝的人', '¥', 'http://img11.360buyimg.com/n3/g14/M00/02/02/rBEhVVHD7AwIAAAAAAQs0hn4M90AAAaJwGGLAcABCzq334.jpg');
INSERT INTO `item` VALUES ('1cf45722-3023-11e8-a664-001a7dda', '富爸爸穷爸爸(20周年修订版)', '¥', 'http://img10.360buyimg.com/n3/jfs/t14503/34/632290892/714362/b06aed13/5a33186cN86363b7b.jpg');
INSERT INTO `item` VALUES ('1d2f9a92-3023-11e8-be8a-001a7dda', '苏东坡传（插图精装 纪念典藏版）', '¥', 'http://img14.360buyimg.com/n3/jfs/t14206/69/1077906245/119094/f7d44367/5a44c67fN290d9af7.jpg');
INSERT INTO `item` VALUES ('20b0e976-3023-11e8-abc7-001a7dda', '摆渡人2重返荒原', '¥', 'http://img12.360buyimg.com/n3/jfs/t19225/196/465033667/443861/e97c1735/5a813feaN5343e2b8.jpg');
INSERT INTO `item` VALUES ('20ecc0b8-3023-11e8-b830-001a7dda', '人类简史：从动物到上帝（新版）', '¥', 'http://img14.360buyimg.com/n3/jfs/t6067/141/727174878/1228851/ffa4bce1/592bf169N48831482.jpg');
INSERT INTO `item` VALUES ('21297aee-3023-11e8-80be-001a7dda', '逆向管理：先行动后思考（《福布斯》年度领导力好书）', '¥', 'http://img14.360buyimg.com/n3/jfs/t16135/289/2136661978/523077/ee96fc8f/5a93c370Nf8740d3d.jpg');
INSERT INTO `item` VALUES ('2164db5c-3023-11e8-88d5-001a7dda', '自在独行：贾平凹的独行世界（陈坤推荐）', '¥', 'http://img10.360buyimg.com/n3/jfs/t2737/328/1405538066/202534/aab816bf/573d821aN9de83d79.jpg');
INSERT INTO `item` VALUES ('219ef070-3023-11e8-93b5-001a7dda', '杨红樱笑猫日记：樱花巷的秘密', '¥', 'http://img10.360buyimg.com/n3/jfs/t3244/156/5393623738/556792/e392fd68/586f322aNe2e40b7e.jpg');
INSERT INTO `item` VALUES ('21da744a-3023-11e8-b03f-001a7dda', '骆驼祥子 语文新课标必读丛书 教育部推荐中小学生必读名著', '¥', 'http://img12.360buyimg.com/n3/jfs/t2065/220/1672809782/186903/ab60f8a4/566a3a66N24c347e4.jpg');
INSERT INTO `item` VALUES ('22181f12-3023-11e8-b26c-001a7dda', '乌合之众（原版插图，无删减版）', '¥', 'http://img11.360buyimg.com/n3/jfs/t7957/227/2622689294/461159/86a7443e/59b22e50N6e1d836e.jpg');
INSERT INTO `item` VALUES ('225603b8-3023-11e8-8a3c-001a7dda', '动物小说大王沈石溪品藏书系：骆驼王子', '¥', 'http://img14.360buyimg.com/n3/jfs/t1093/21/730474435/168532/28ce4d1b/5540b1baN3182b053.jpg');
INSERT INTO `item` VALUES ('229206b6-3023-11e8-a89f-001a7dda', '查理九世彩图版 不可思议事件簿：4疯狂黑窟镇', '¥', 'http://img10.360buyimg.com/n3/jfs/t3070/22/4924102552/326290/abbb5f3c/585cc703Ne2683797.jpg');
INSERT INTO `item` VALUES ('22d0cb1c-3023-11e8-898d-001a7dda', '学前儿童生理启蒙必备：我们的身体（3-6岁）', '¥', 'http://img11.360buyimg.com/n3/jfs/t2206/103/2670824697/306366/aa91c1bd/5710ba56N69e1a27e.jpg');
INSERT INTO `item` VALUES ('230d2992-3023-11e8-9b0f-001a7dda', '平凡的世界：全三册', '¥', 'http://img13.360buyimg.com/n3/jfs/t5587/350/4618116432/255954/cd4c1951/59521501N4c19726f.jpg');
INSERT INTO `item` VALUES ('2349d6ee-3023-11e8-8008-001a7dda', '绩效核能（精装行动版）', '¥', 'http://img10.360buyimg.com/n3/jfs/t19678/33/476601864/596437/1391054d/5a813fe7Nf8f3750e.jpg');
INSERT INTO `item` VALUES ('2387aea4-3023-11e8-922d-001a7dda', '初级会计职称2018教材 2018全国会计专业技术资格考试辅导教材 经济法基础', '¥', 'http://img12.360buyimg.com/n3/jfs/t16093/256/119811413/98349/ef29af6/5a2a15d2Nbb388b2e.jpg');
INSERT INTO `item` VALUES ('23c42678-3023-11e8-8219-001a7dda', '华夏万卷 田英章硬笔书法楷书入门字帖:教程+3500字+千古名句(套装共5册 附 ...', '¥', 'http://img13.360buyimg.com/n3/jfs/t5773/234/1994454632/268123/dc05ab31/592bf16dN6d2719ef.jpg');
INSERT INTO `item` VALUES ('23fe0228-3023-11e8-a4ff-001a7dda', '世界插画大师英诺森提作品·铁丝网上的小花', '¥', 'http://img10.360buyimg.com/n3/jfs/t6691/5/889667192/434730/5191d7a3/5947640aNebf8e44c.jpg');
INSERT INTO `item` VALUES ('243b347a-3023-11e8-a09e-001a7dda', '习近平谈治国理政 第二卷（中文平装）', '¥', 'http://img13.360buyimg.com/n3/jfs/t13852/67/197568506/65137/2e9df40a/5a0566d8N7b05155d.jpg');
INSERT INTO `item` VALUES ('24775346-3023-11e8-8e6f-001a7dda', '曹文轩作品大王书系列（套装全5册）', '¥', 'http://img14.360buyimg.com/n3/jfs/t2650/202/4389143643/269127/ed4b1b17/57b6c717N57e48201.jpg');
INSERT INTO `item` VALUES ('24b4aa40-3023-11e8-85cb-001a7dda', '人性的弱点', '¥', 'http://img12.360buyimg.com/n3/jfs/t2938/206/614569212/292447/4d24bb2/57613fe0Nd4d2ba32.jpg');
INSERT INTO `item` VALUES ('24f2d574-3023-11e8-970c-001a7dda', '异类的天赋：天才、疯子和内向人格的成功密码', '¥', 'http://img14.360buyimg.com/n3/jfs/t15988/356/1028385690/145042/144cdd24/5a460690N26abdd8e.jpg');
INSERT INTO `item` VALUES ('252f692e-3023-11e8-8302-001a7dda', '超好玩的立体翻翻书·车辆船舶动起来（套装共2册）', '¥', 'http://img11.360buyimg.com/n3/jfs/t16519/245/475662047/504318/60ebd6b3/5a331897Ne173f622.jpg');
INSERT INTO `item` VALUES ('edebf022-3022-11e8-ad1b-001a7dda', '三毛流浪记（彩图注音读物）', '¥29.90', 'http://img11.360buyimg.com/n3/jfs/t16897/118/386832723/336767/37f2e326/5a71741dN808aadb8.jpg');
INSERT INTO `item` VALUES ('ee2857da-3022-11e8-a202-001a7dda', '新华字典（双色本 第11版）', '¥17.40', 'http://img12.360buyimg.com/n3/jfs/t4975/322/2389951349/211142/e8b1c80d/58fef4fbNe39a7707.jpg');
INSERT INTO `item` VALUES ('ee63ed0c-3022-11e8-a737-001a7dda', '原则', '¥63.00', 'http://img11.360buyimg.com/n3/jfs/t15667/160/563569281/151713/d4fab374/5a373299N4978d724.jpg');
INSERT INTO `item` VALUES ('eea2da1e-3022-11e8-a513-001a7dda', '时间简史（插图版）【荐书联盟推荐】', '¥31.10', 'http://img12.360buyimg.com/n3/jfs/t5749/151/2155508718/91400/b98f9834/592d2215N0f718a02.jpg');
INSERT INTO `item` VALUES ('eede2b18-3022-11e8-9fca-001a7dda', '罗尔德·达尔作品典藏·了不起的狐狸爸爸', '¥12.00', 'http://img13.360buyimg.com/n3/jfs/t6199/214/1154637728/393688/ff3f120e/594c7773N76cea311.jpg');
INSERT INTO `item` VALUES ('ef1a056c-3022-11e8-b954-001a7dda', '摆渡人　【荐书联盟推荐】', '¥26.90', 'http://img11.360buyimg.com/n3/jfs/t10072/231/1597945576/58010/1512bd1b/59e35198N2e697952.jpg');
INSERT INTO `item` VALUES ('ef55cc9a-3022-11e8-aa71-001a7dda', '星火英语 英语四级真题试卷 2018年6月全真试题+标准模拟 词汇写作翻译听力阅 ...', '¥35.20', 'http://img14.360buyimg.com/n3/jfs/t17050/142/107699987/346339/e1d480c6/5a5d6113N236a00ce.jpg');
INSERT INTO `item` VALUES ('ef92206c-3022-11e8-ae81-001a7dda', '郑爽的书', '¥52.00', 'http://img10.360buyimg.com/n3/jfs/t5677/102/7417434995/680788/dc5e43/59700fccNa00dc14c.jpg');
INSERT INTO `item` VALUES ('efce288c-3022-11e8-9b82-001a7dda', '夏洛的网（新）', '¥16.50', 'http://img10.360buyimg.com/n3/jfs/t277/330/242108323/845837/6d6daed7/54069eadN5242c692.jpg');
INSERT INTO `item` VALUES ('f00ce4f6-3022-11e8-b369-001a7dda', '浮生六记（汪涵推荐，全译本）', '¥22.00', 'http://img14.360buyimg.com/n3/jfs/t2590/219/2241829193/186594/31443d8c/575e45bfNd1fd1f28.jpg');
INSERT INTO `item` VALUES ('f04a2140-3022-11e8-93aa-001a7dda', '杨红樱笑猫日记：又见小可怜', '¥16.00', 'http://img11.360buyimg.com/n3/jfs/t15271/120/1933374026/262921/db9dc0a9/5a615355Nae3d1b0c.jpg');
INSERT INTO `item` VALUES ('f086d4c6-3022-11e8-9fdd-001a7dda', '东野圭吾：白金数据', '¥29.90', 'http://img14.360buyimg.com/n3/jfs/t13348/1/2275226667/263490/c470b9e5/5a39e1c1N6b02ae18.jpg');
INSERT INTO `item` VALUES ('f0c38fa4-3022-11e8-b251-001a7dda', '蔡康永的说话之道（套装共2册）', '¥44.70', 'http://img14.360buyimg.com/n3/jfs/t277/5/1706398271/379789/7db04c0e/544082d2Ne9f409bd.jpg');
INSERT INTO `item` VALUES ('f0fded8a-3022-11e8-8ab9-001a7dda', '在教室说错了没关系', '¥24.80', 'http://img11.360buyimg.com/n3/jfs/t4192/314/62575772/332896/12007ce8/58ae94c8Na6573a30.jpg');
INSERT INTO `item` VALUES ('f1391ea6-3022-11e8-a682-001a7dda', '九型人格+说话心理学+与谁都聊得来(套装共3册）', '¥35.10', 'http://img12.360buyimg.com/n3/jfs/t6943/96/2563930737/489346/a2c4cc0/598d1e01Ne04b9e0a.jpg');
INSERT INTO `item` VALUES ('f1748302-3022-11e8-9202-001a7dda', '刘同：我在未来等你', '¥29.00', 'http://img10.360buyimg.com/n3/jfs/t8176/149/1451400837/507149/70f143d2/59ba4a72N42919975.jpg');
INSERT INTO `item` VALUES ('f1aff782-3022-11e8-883a-001a7dda', '我与世界只差一个你', '¥22.70', 'http://img14.360buyimg.com/n3/jfs/t5701/253/2015539753/365347/d7eb27c4/592bf169N9b0365b7.jpg');
INSERT INTO `item` VALUES ('f1eb2e50-3022-11e8-affa-001a7dda', '新概念英语（入门级B）（青少版）（学生用书）（附MP3光盘1张+DVD光盘1张） ...', '¥23.40', 'http://img13.360buyimg.com/n3/g14/M09/17/18/rBEhVlMhXCcIAAAAAAahRTZCqPYAAKIXALxA90ABqFd893.jpg');
INSERT INTO `item` VALUES ('f22a3674-3022-11e8-af51-001a7dda', '成为最强大脑-最强大脑初试指南', '¥21.90', 'http://img14.360buyimg.com/n3/jfs/t19330/111/465728713/211343/6c0e1661/5a81162fN73b1d1ab.jpg');
INSERT INTO `item` VALUES ('f268ea3e-3022-11e8-9b72-001a7dda', '朗文·外研社·新概念英语1：英语初阶（新版）', '¥20.60', 'http://img14.360buyimg.com/n3/g14/M09/17/18/rBEhVVMhXCAIAAAAAAXAlbaEXfAAAKIXACephYABcCt020.jpg');
INSERT INTO `item` VALUES ('f6328dfe-3022-11e8-bd72-001a7dda', '影响力（经典版）（新版）', '¥', 'http://img14.360buyimg.com/n3/jfs/t3235/43/1426302686/269479/249c9d4c/57ccf79aNedd6e655.jpg');
INSERT INTO `item` VALUES ('f66e96a6-3022-11e8-bcad-001a7dda', '岛上书店（每个人的生命中，都有无比艰难的那一年，将人生变得美好而辽阔）【荐书联盟 ...', '¥', 'http://img10.360buyimg.com/n3/jfs/t18448/342/520461968/308125/8f29a2bc/5a94f880N65ff96a7.jpg');
INSERT INTO `item` VALUES ('f6ab89be-3022-11e8-a356-001a7dda', '中国科幻基石丛书·三体（套装1-3册）', '¥', 'http://img11.360buyimg.com/n3/jfs/t1705/189/702227414/177982/cc8c12f0/55dab54dN5271c377.jpg');
INSERT INTO `item` VALUES ('f6ea1c58-3022-11e8-8ed2-001a7dda', '解忧杂货店', '¥', 'http://img11.360buyimg.com/n3/jfs/t16534/222/2084168776/1001103/357100ed/5a77ca78Nf9e169be.jpg');
INSERT INTO `item` VALUES ('f72a0786-3022-11e8-a8b7-001a7dda', '洋洋兔童书·我们的节日：画给孩子的中国传统节日', '¥', 'http://img10.360buyimg.com/n3/jfs/t13282/305/1438826242/547154/5d600bcd/5a20bb04N28b0873a.jpg');
INSERT INTO `item` VALUES ('f765ba46-3022-11e8-a737-001a7dda', '自控力 斯坦福大学广受欢迎心理学课程（新版）', '¥', 'http://img11.360buyimg.com/n3/jfs/t9562/177/1395170810/144534/e61e23f/59e02012N10cdfd8c.jpg');
INSERT INTO `item` VALUES ('f7a2c81a-3022-11e8-844e-001a7dda', '哈利·波特与死亡圣器（纪念版）', '¥', 'http://img12.360buyimg.com/n3/jfs/t280/251/1316879075/481078/7af67d28/54364faaN41a4959b.jpg');
INSERT INTO `item` VALUES ('f7e184cc-3022-11e8-b9e9-001a7dda', '做内心强大的自己 自信力培养系列（套装共8册）', '¥', 'http://img11.360buyimg.com/n3/jfs/t2761/241/3527143133/890200/b6a18d61/5791b685N73e9e3a8.jpg');
INSERT INTO `item` VALUES ('f81fa47a-3022-11e8-ad97-001a7dda', '天才在左疯子在右完整版　[荐书联盟推荐]', '¥', 'http://img14.360buyimg.com/n3/jfs/t6124/187/760955031/570043/ef3f4f4e/592bf16cN9315c9fc.jpg');
INSERT INTO `item` VALUES ('f85cb398-3022-11e8-8f7b-001a7dda', '新华字典（第11版）（单色本）', '¥', 'http://img11.360buyimg.com/n3/jfs/t4414/15/3508854418/162325/e65a2199/58fef4daNeef73399.jpg');
INSERT INTO `item` VALUES ('f8983da8-3022-11e8-8fb3-001a7dda', '一年级的小豌豆、小蜜瓜（2册套装修订版）', '¥', 'http://img13.360buyimg.com/n3/jfs/t9823/140/435746692/393693/3c4d1954/59cf4640N652d61d7.jpg');
INSERT INTO `item` VALUES ('f8d54088-3022-11e8-bf10-001a7dda', '2019恋练有词：新东方考研英语词汇识记与应用大全（附赠考研英语高分锦囊）', '¥', 'http://img14.360buyimg.com/n3/jfs/t13051/98/2098947641/472686/b33c437e/5a40bca7N5a85c922.jpg');
INSERT INTO `item` VALUES ('f910cee2-3022-11e8-a762-001a7dda', '所谓情商高，就是会说话', '¥', 'http://img13.360buyimg.com/n3/jfs/t9709/232/1593477494/68134/6654dbca/59e351b6Na0578570.jpg');
INSERT INTO `item` VALUES ('f94cdb40-3022-11e8-b551-001a7dda', '星火英语 英语六级真题试卷 2018年6月全真试题+标准模拟 词汇写作翻译听力阅 ...', '¥', 'http://img12.360buyimg.com/n3/jfs/t17827/172/93304178/346468/ac876f70/5a5d6113Ne7e2fe25.jpg');
INSERT INTO `item` VALUES ('f9883a08-3022-11e8-8194-001a7dda', '活着（25周年精装典藏纪念版）', '¥', 'http://img14.360buyimg.com/n3/jfs/t5785/259/3241139232/301621/845069f6/5938f827N64298ffe.jpg');
INSERT INTO `item` VALUES ('f9c354d0-3022-11e8-8acc-001a7dda', '见识', '¥', 'http://img13.360buyimg.com/n3/jfs/t13693/361/2327919000/109212/92d81771/5a6ad755N0e994882.jpg');
INSERT INTO `item` VALUES ('f9fed726-3022-11e8-a2e3-001a7dda', '唐诗三百首（儿童注音美绘本）', '¥', 'http://img13.360buyimg.com/n3/jfs/t2857/222/3108564565/523789/8e6a6030/577e19b9Nd4158791.jpg');
INSERT INTO `item` VALUES ('fa38df5a-3022-11e8-ab63-001a7dda', '统编语文教科书必读书目·快乐读书吧·名著阅读课程化丛书：二年级下册 七色花', '¥', 'http://img12.360buyimg.com/n3/jfs/t16003/164/2253178996/165342/756f474f/5a9511acN518cfe28.jpg');
INSERT INTO `item` VALUES ('fa77f0a8-3022-11e8-a091-001a7dda', '不一样的卡梅拉手绘版·第一季（套装12册）', '¥', 'http://img12.360buyimg.com/n3/g12/M00/0B/05/rBEQYFGkYRsIAAAAAAM5p3QKIZwAACLgwE432oAAzm_968.jpg');
INSERT INTO `item` VALUES ('fab4eee6-3022-11e8-97be-001a7dda', '正面管教（修订版）', '¥', 'http://img12.360buyimg.com/n3/jfs/t17581/45/487828828/499729/2bb5a742/5a813fe7N42717af5.jpg');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `user_id` int(32) NOT NULL COMMENT '用户id',
  `itemId` varchar(32) NOT NULL COMMENT '商品id',
  `item_num` int(10) DEFAULT '0' COMMENT '商品数量',
  PRIMARY KEY (`user_id`,`itemId`),
  KEY `itemId` (`itemId`),
  CONSTRAINT `record_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `record_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `item` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(32) NOT NULL COMMENT '用户名',
  `user_sex` tinyint(1) DEFAULT NULL COMMENT '用户性别',
  `user_password` varchar(32) NOT NULL COMMENT '用户密码',
  `user_live` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'tabzjh', '0', 'tabzjh', '0');
