/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.11-log : Database - commodititem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`commodititem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `commodititem`;

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `itemId` int(64) NOT NULL AUTO_INCREMENT,
  `itemTitle` longtext NOT NULL COMMENT '标题',
  `itemPrice` text COMMENT '价格',
  `itemImg` varchar(512) NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

/*Data for the table `item` */

insert  into `item`(`itemId`,`itemTitle`,`itemPrice`,`itemImg`) values (1,'2019恋练有词：新东方考研英语词汇识记与应用大全（附赠考研英语高分锦囊）','¥45.20','http://img10.360buyimg.com/n3/jfs/t13051/98/2098947641/472686/b33c437e/5a40bca7N5a85c922.jpg'),(2,'朗文·外研社·新概念英语2 实践与进步（新版）','¥30.70','http://img14.360buyimg.com/n3/g14/M09/17/18/rBEhVlMhXCAIAAAAAAY0OVe5t3gAAKIXACtMWIABjRR310.jpg'),(3,'新华字典（双色本 第11版）','¥17.40','http://img10.360buyimg.com/n3/jfs/t4975/322/2389951349/211142/e8b1c80d/58fef4fbNe39a7707.jpg'),(4,'曹文轩纯美小说：草房子（2016版）','¥17.20','http://img14.360buyimg.com/n3/jfs/t10885/90/1676944853/291012/8f1f8485/59e5a7efNc8a36761.jpg'),(5,'全球通史 从史前史到21世纪（ 第7版 修订版 中文版 套装上下册）（赠送精美地 ...','¥59.60','http://img10.360buyimg.com/n3/jfs/t14263/96/2664829027/666391/326adbf2/5aaf7631N0ab39f79.jpg'),(6,'成为最强大脑-最强大脑初试指南','¥21.90','http://img13.360buyimg.com/n3/jfs/t19330/111/465728713/211343/6c0e1661/5a81162fN73b1d1ab.jpg'),(7,'新版中日交流标准日本语初级（第二版 套装上下册 附光盘）','¥58.50','http://img13.360buyimg.com/n3/jfs/t1675/48/1231679166/575556/e9e945d0/55c99f98N774df4d8.jpg'),(8,'小猪唏哩呼噜（注音版 套装共2册）','¥18.00','http://img11.360buyimg.com/n3/jfs/t2233/5/1992778828/453565/eeeaab1d/5695d9c6N66f9239b.jpg'),(9,'新华字典（第11版）（单色本）','¥13.90','http://img10.360buyimg.com/n3/jfs/t4414/15/3508854418/162325/e65a2199/58fef4daNeef73399.jpg'),(10,'哈利·波特与死亡圣器（纪念版）','¥46.20','http://img13.360buyimg.com/n3/jfs/t280/251/1316879075/481078/7af67d28/54364faaN41a4959b.jpg'),(11,'曹文轩纯美小说系列：根鸟（2016版）','¥14.00','http://img14.360buyimg.com/n3/jfs/t10402/243/1768047745/296939/203b1ba0/59e5a81fN443fc2d6.jpg'),(12,'时间简史（插图版）【荐书联盟推荐】','¥31.10','http://img11.360buyimg.com/n3/jfs/t5749/151/2155508718/91400/b98f9834/592d2215N0f718a02.jpg'),(13,'蒲蒲兰绘本馆：小熊宝宝绘本（套装共15册）','¥59.20','http://img10.360buyimg.com/n3/g13/M02/14/15/rBEhVFL8f0oIAAAAAAHh8_CyvLcAAIf8wPAiaQAAeIL207.jpg'),(14,'新东方 考研英语词汇词根+联想记忆法（乱序版）','¥34.00','http://img11.360buyimg.com/n3/jfs/t754/340/764774886/54167/fa3c61cf/54dd92a9N94b8a846.jpg'),(15,'傅雷家书（新课标本）','¥26.80','http://img12.360buyimg.com/n3/jfs/t2956/342/159117444/146398/51d48c69/574e3cf6N3cc78e15.jpg'),(16,'星火英语 英语四级真题试卷 2018年6月全真试题+标准模拟 词汇写作翻译听力阅 ...','¥36.80','http://img11.360buyimg.com/n3/jfs/t17050/142/107699987/346339/e1d480c6/5a5d6113N236a00ce.jpg'),(17,'中国科幻基石丛书·三体（套装1-3册）','¥67.00','http://img10.360buyimg.com/n3/jfs/t1705/189/702227414/177982/cc8c12f0/55dab54dN5271c377.jpg'),(18,'原则','¥63.00','http://img10.360buyimg.com/n3/jfs/t15667/160/563569281/151713/d4fab374/5a373299N4978d724.jpg'),(19,'哈利·波特与魔法石（纪念版）','¥20.30','http://img14.360buyimg.com/n3/jfs/t328/178/1292245521/921915/d6811442/54364f16Na4aa9592.jpg'),(20,'北斗地球仪·AR地球仪23厘米（儿童地球仪启蒙版 节日礼物）','¥298.00','http://img10.360buyimg.com/n3/jfs/t5734/215/3771334026/1719620/fb1d325/59421fbbNc132487f.jpg'),(21,'韩国首尔大学韩国语系列教材：新版韩国语1（附光盘1张）','¥','http://img14.360buyimg.com/n3/17513/613ee4b9-234b-49b0-9de8-41a26c6f174b.jpg'),(22,'苏东坡传（插图精装 纪念典藏版）','¥','http://img13.360buyimg.com/n3/jfs/t14206/69/1077906245/119094/f7d44367/5a44c67fN290d9af7.jpg'),(23,'解忧杂货店','¥','http://img10.360buyimg.com/n3/jfs/t16534/222/2084168776/1001103/357100ed/5a77ca78Nf9e169be.jpg'),(24,'天才在左疯子在右完整版　[荐书联盟推荐]','¥','http://img10.360buyimg.com/n3/jfs/t6124/187/760955031/570043/ef3f4f4e/592bf16cN9315c9fc.jpg'),(25,'浮生六记（汪涵推荐，全译本）','¥','http://img14.360buyimg.com/n3/jfs/t2590/219/2241829193/186594/31443d8c/575e45bfNd1fd1f28.jpg'),(26,'曹文轩纯美小说：青铜葵花（2016版）','¥','http://img14.360buyimg.com/n3/jfs/t2686/205/715200570/148688/f9024b22/5721c21eN6aaeecda.jpg'),(27,'现代汉语词典（第7版）','¥','http://img13.360buyimg.com/n3/jfs/t3757/38/34269690/485570/3f12bc2/57fc87a3N82181b12.jpg'),(28,'窗边的小豆豆（新版）','¥','http://img10.360buyimg.com/n3/jfs/t2470/299/2541746346/564200/e68c6c42/56e21e4dN8b72a0cb.jpg'),(29,'无敌舰队（汗青堂丛书016）','¥','http://img11.360buyimg.com/n3/jfs/t12463/116/483030616/1061244/35facde9/5a0c272eN3bbae778.jpg'),(30,'林汉达中国历史故事集（珍藏版 名家导读有声版）','¥','http://img11.360buyimg.com/n3/jfs/t9541/115/1090634552/136673/5056c1e5/59dc8af4Naaf75944.jpg'),(31,'半小时漫画中国史','¥','http://img12.360buyimg.com/n3/jfs/t6316/301/2555497884/409452/aae9ffe7/5964532dNa3229b7b.jpg'),(32,'你好！法语1（学生用书 附光盘）','¥','http://img12.360buyimg.com/n3/g15/M07/05/17/rBEhWlITKzcIAAAAAAf9R6ycXf4AACQEQDcFC4AB_1f783.jpg'),(33,'演讲的艺术（第10版）（中国版）（附CD-ROM光盘1张）','¥','http://img14.360buyimg.com/n3/12549/57b380e7-8449-4575-94cf-f07d6b58dc5e.jpg'),(34,'北斗童书·十万个为什么（幼儿注音版 套装共8册）','¥','http://img11.360buyimg.com/n3/g12/M00/00/1A/rBEQYVMqVLUIAAAAAAVy6DthPs8AAC_GQEbUY8ABXMA270.jpg'),(35,'中国科幻基石丛书·三体（3）：死神永生','¥','http://img14.360buyimg.com/n3/jfs/t5917/9/837934130/92910/488d8cc8/592bf163N502828f0.jpg'),(36,'自在独行：贾平凹的独行世界（陈坤推荐）','¥','http://img12.360buyimg.com/n3/jfs/t2737/328/1405538066/202534/aab816bf/573d821aN9de83d79.jpg'),(37,'伤心咖啡馆之歌（奥巴马送给两个女儿的礼物，孤独小说家麦卡勒斯的口碑神作）作家榜出 ...','¥','http://img14.360buyimg.com/n3/jfs/t15301/196/2243879978/988202/98e92885/5a961443Nfaad5dff.jpg'),(38,'生活的艺术（纪念典藏版）','¥','http://img12.360buyimg.com/n3/jfs/t6712/352/2458061935/129635/2413a5c3/5962eb17N0fec9791.jpg'),(39,'可爱的数学（套装全8册）','¥','http://img13.360buyimg.com/n3/jfs/t18544/232/488447750/606085/375a5cb8/5a8e6f98N737ef060.jpg'),(40,'朗文·外研社·新概念英语1：英语初阶（新版）','¥','http://img12.360buyimg.com/n3/g14/M09/17/18/rBEhVVMhXCAIAAAAAAXAlbaEXfAAAKIXACephYABcCt020.jpg'),(41,'雅思王听力真题语料库（机考笔试综合版）（附赠音频）','¥','http://img14.360buyimg.com/n3/jfs/t5623/162/6802382743/215825/b97a196b/596c5c0bN569a1015.jpg'),(42,'怪物大师系列（套装1-18册）','¥','http://img14.360buyimg.com/n3/jfs/t5206/340/403894813/263043/eac9cb12/58ff13cfN59aceeb6.jpg'),(43,'蔡康永的说话之道（套装共2册）','¥','http://img10.360buyimg.com/n3/jfs/t277/5/1706398271/379789/7db04c0e/544082d2Ne9f409bd.jpg'),(44,'不可思议事件簿 查理九世彩图版5：魔法学园','¥','http://img11.360buyimg.com/n3/jfs/t10681/261/2398950045/291375/ef4c1907/59f6f4d4Nc8d431a3.jpg'),(45,'一年级大个子二年级小个子（注音版）','¥','http://img12.360buyimg.com/n3/g8/M03/0C/13/rBEHaFCHfscIAAAAAACmu1u7nIsAACdlABopHoAAKbT099.jpg'),(46,'星火英语 英语六级真题试卷 2018年6月全真试题+标准模拟 词汇写作翻译听力阅 ...','¥','http://img10.360buyimg.com/n3/jfs/t17827/172/93304178/346468/ac876f70/5a5d6113Ne7e2fe25.jpg'),(47,'培生儿童英语Level 1（含20册书+5张DVD+40张单词卡）','¥','http://img10.360buyimg.com/n3/jfs/t163/335/1786896833/213746/d5a7b788/53ba55aeN8fc2c113.jpg'),(48,'我们内心的冲突','¥','http://img13.360buyimg.com/n3/jfs/t3517/314/715671051/196608/5d0d47d/58119da7Nec530b56.jpg'),(49,'我们仨/杨绛作品','¥','http://img13.360buyimg.com/n3/jfs/t1543/143/360365215/354050/8ee304f5/5577dd14N1e66fcf6.jpg'),(50,'北斗童书·中国地图：跟爸爸一起去旅行（百科知识版）大开本、精装绘本','¥','http://img11.360buyimg.com/n3/jfs/t7825/185/2542515982/873019/e2f29eec/59b10d89N9737a999.jpg'),(51,'偷影子的人（随书附精美卡片）','¥','http://img13.360buyimg.com/n3/g5/M02/03/02/rBEIDE_X7tcIAAAAAAD99olav70AAAmTwIx9MwAAP4O056.jpg'),(52,'海豚绘本花园：罗力小恐龙系列·我想要个宠物嘛+我和老爸（全2册）','¥','http://img11.360buyimg.com/n3/jfs/t7663/170/3509827533/153533/da31e386/59fa6f45N4d96aaf2.jpg'),(53,'怪物大师 泯灭的灵魂碎片（第17部）','¥','http://img10.360buyimg.com/n3/jfs/t2911/307/1126972720/600110/ed654fae/577624f7Nbf86a2bf.jpg'),(54,'北斗童书·德国经典专注力亲子游戏书 第一辑（套装共3册）','¥','http://img11.360buyimg.com/n3/jfs/t4018/197/300113302/828723/82a26eee/5847c42aN921b98e1.jpg'),(55,'我不 大冰2017新书','¥','http://img13.360buyimg.com/n3/jfs/t9160/276/1950634648/369277/eea5bd4f/59c1fd19Neeadc6d0.jpg'),(56,'凯迪克金奖绘本系列：火车头+灯船+登月（陆海空三部曲 套装全3册）','¥','http://img11.360buyimg.com/n3/jfs/t6796/251/2399972693/810602/a71b27ac/598bb987N8bc2b687.jpg'),(57,'余华作品：活着','¥','http://img11.360buyimg.com/n3/jfs/t10162/279/1390942739/246693/50c56f9d/59e02214N37418280.jpg'),(58,'“我喜欢你”金波儿童文学精品系列：乌丢丢的奇遇','¥','http://img13.360buyimg.com/n3/jfs/t1318/237/7447611/102487/414fe462/5540b1beN209530cd.jpg'),(59,'中国哲学简史','¥','http://img13.360buyimg.com/n3/jfs/t5605/108/1969522088/365182/3ce141ed/592bf165N92826e50.jpg'),(60,'所谓情商高，就是会说话','¥','http://img13.360buyimg.com/n3/jfs/t9709/232/1593477494/68134/6654dbca/59e351b6Na0578570.jpg'),(61,'月亮与六便士（2017新版！未删节插图珍藏本）（作家榜经典）','¥','http://img13.360buyimg.com/n3/jfs/t14404/91/586858957/350390/17e9e659/5a31f63bN8719e80b.jpg'),(62,'自卑与超越（完整全译本）','¥','http://img13.360buyimg.com/n3/jfs/t16273/188/2376961810/152226/a3ce9817/5ab8ae1bN5bc7e6e3.jpg'),(63,'傅雷家书（新课标）+钢铁是怎样炼成的（经典译林 套装共2册）/八年级下册必读名著 ...','¥','http://img14.360buyimg.com/n3/jfs/t12241/240/2591762212/346954/51f84b67/5a44ad4dNc06486ef.jpg'),(64,'好吗好的（随机赠送大冰有声书签，大冰暖声为你讲故事！）','¥','http://img14.360buyimg.com/n3/jfs/t2899/289/3701970518/214106/9a4ded1b/579880b4N687008cc.jpg'),(65,'西方经济学 宏观部分（第六版）','¥','http://img11.360buyimg.com/n3/jfs/t5968/36/832634314/148472/6c2d04d9/592bf167N51036949.jpg'),(66,'摆渡人　【荐书联盟推荐】','¥','http://img12.360buyimg.com/n3/jfs/t10072/231/1597945576/58010/1512bd1b/59e35198N2e697952.jpg'),(67,'书虫·牛津英汉双语读物：1级（上 适合初一、初二年级 附光盘）','¥','http://img10.360buyimg.com/n3/jfs/t3169/244/3014960440/568658/b85b1a62/57eb660fN9a1d67ab.jpg'),(68,'中国：手绘中国地理地图（精装手绘儿童版）','¥','http://img11.360buyimg.com/n3/jfs/t3292/312/3041368194/293392/d7296605/57eb95adN4e2a55a9.jpg'),(69,'Python编程 从入门到实践','¥','http://img14.360buyimg.com/n3/jfs/t5707/249/1980406843/409183/1876ae53/592bf16dNe0022e6b.jpg'),(70,'金字塔原理：思考、表达和解决问题的逻辑','¥','http://img11.360buyimg.com/n3/jfs/t2695/77/2375961305/246108/808e745b/57624115N6f52cdf4.jpg'),(71,'幼儿睡前故事绘本(全套60册) 0-3-6岁童话书儿童启蒙认知早教','¥','http://img13.360buyimg.com/n3/jfs/t3388/63/1414069775/251733/d1ded900/5825258aN0b776483.jpg'),(72,'红岩','¥','http://img14.360buyimg.com/n3/jfs/t8044/203/1955340487/93895/1dd45327/59c1d9dfNd3774581.jpg'),(73,'大学管理类教材丛书·普通高等教育“十一五”国家级规划教材·管理学：原理与方法（第 ...','¥','http://img12.360buyimg.com/n3/jfs/t685/97/1429210806/117928/3d7974e5/54d95110Ndb14dc20.jpg'),(74,'岛上书店（每个人的生命中，都有无比艰难的那一年，将人生变得美好而辽阔）【荐书联盟 ...','¥','http://img10.360buyimg.com/n3/jfs/t18448/342/520461968/308125/8f29a2bc/5a94f880N65ff96a7.jpg'),(75,'我的野生动物朋友（超级畅销书）','¥','http://img13.360buyimg.com/n3/jfs/t241/351/871862982/549676/81d7d35d/53f2e698Ncf4b6a07.jpg'),(76,'阿弥陀佛么么哒','¥','http://img14.360buyimg.com/n3/jfs/t1699/271/709675770/217576/f6b02c33/55b1a8beNfabcf6c5.jpg'),(77,'西方经济学（宏观部分·第七版）（21世纪经济学系列教材；普通高等教育“十一五”国 ...','¥','http://img13.360buyimg.com/n3/jfs/t18544/332/367087753/159743/23b41373/5a70191cN636d7610.jpg'),(78,'村上春树：刺杀骑士团长（套装上下册）','¥','http://img13.360buyimg.com/n3/jfs/t16021/111/2033850056/525723/13df513b/5a703ef0Nfdeff9f1.jpg'),(79,'正面管教（修订版）','¥','http://img14.360buyimg.com/n3/jfs/t17581/45/487828828/499729/2bb5a742/5a813fe7N42717af5.jpg'),(80,'人生终要有一场触及灵魂的旅行 （2017年版）','¥','http://img14.360buyimg.com/n3/jfs/t11689/160/2217379941/395469/45bc1ab6/5a129900N9dba652f.jpg'),(81,'夏洛的网（新）','¥','http://img10.360buyimg.com/n3/jfs/t277/330/242108323/845837/6d6daed7/54069eadN5242c692.jpg'),(82,'追风筝的人','¥','http://img13.360buyimg.com/n3/g14/M00/02/02/rBEhVVHD7AwIAAAAAAQs0hn4M90AAAaJwGGLAcABCzq334.jpg'),(83,'书虫·牛津英汉双语读物（入门级上 适合小学高年级 初一 套装共10册 附光盘）  ...','¥','http://img12.360buyimg.com/n3/jfs/t3211/91/3102803328/576010/3b24206a/57eb6eb2Nbd41f0fe.jpg'),(84,'怪物大师19：绝望的圣城囚笼','¥','http://img12.360buyimg.com/n3/jfs/t6439/173/953771713/400132/963dc0a0/59479686Nc41d1362.jpg'),(85,'蓝宝书大全集 新日本语能力考试N1-N5文法详解（超值白金版  最新修订版）','¥','http://img14.360buyimg.com/n3/jfs/t2815/301/3158738422/190512/f9da70d8/57836391N55156f5e.jpg'),(86,'My First Reading Library  我的第一个图书馆套装，共50 ...','¥','http://img11.360buyimg.com/n3/jfs/t1573/190/47025342/1642351/d03bcc3/5551560bN83c3932a.jpg'),(87,'刘同：我在未来等你','¥','http://img11.360buyimg.com/n3/jfs/t8176/149/1451400837/507149/70f143d2/59ba4a72N42919975.jpg'),(88,'清明上河图密码：隐藏在千古名画中的阴谋与杀局1-4（套装共4册）','¥','http://img11.360buyimg.com/n3/jfs/t9328/338/2399565706/757208/46070119/59ce098dN26d24eed.jpg'),(89,'八万四千问（宗萨蒋扬钦哲仁波切：佛法能够解决你们的所有问题）','¥','http://img11.360buyimg.com/n3/jfs/t5800/86/2032114103/312820/c65bfe6c/592bf167N6d75649d.jpg'),(90,'人性的弱点全集（完整全译本）','¥','http://img13.360buyimg.com/n3/jfs/t5146/84/950518396/276698/7ccbe391/59098365N7aa37021.jpg'),(91,'环球国家地理百科全书（套装共10册）','¥','http://img13.360buyimg.com/n3/jfs/t15031/194/2294576543/298875/b2fb67a8/5a93c36fN0647eda2.jpg'),(92,'北斗童书·世界地图：跟爸爸一起去旅行 全新升级（百科知识版 精装绘本）（附赠19 ...','¥','http://img10.360buyimg.com/n3/jfs/t17143/194/599958538/284097/e8937639/5a97be9aNdc3a985f.jpg'),(93,'大设计　【荐书联盟推荐】','¥','http://img10.360buyimg.com/n3/11439/90dbb13c-65e8-4ac6-b130-375a1d9fcb39.jpg'),(94,'影响力（经典版）（新版）','¥','http://img13.360buyimg.com/n3/jfs/t3235/43/1426302686/269479/249c9d4c/57ccf79aNedd6e655.jpg'),(95,'高兴死了！！！','¥','http://img10.360buyimg.com/n3/jfs/t19243/79/807923912/370618/68e679d9/5aaf2c27Ne541d77e.jpg'),(96,'故宫日历2018（中文版）','¥','http://img12.360buyimg.com/n3/jfs/t7504/146/1099490818/2259118/2e166c57/599a417eN93f95e30.png'),(97,'星火英语 英语四级真题试卷 2018年6月真题详解+标准预测 词汇写作翻译听力阅 ...','¥','http://img13.360buyimg.com/n3/jfs/t16822/146/102484156/419850/75546fce/5a5d6113Na2722298.jpg'),(98,'小王子（纯美珍藏绘本）','¥','http://img11.360buyimg.com/n3/jfs/t14257/68/2266507583/288946/87897a39/5a815f10N7cf4a085.jpg'),(99,'TensorFlow：实战Google深度学习框架（第2版）','¥','http://img11.360buyimg.com/n3/jfs/t17434/195/261082690/187949/a78ad6ce/5a66f7e9Nab382d53.jpg'),(100,'皮囊','¥','http://img11.360buyimg.com/n3/jfs/t11824/344/70950795/204778/f8cc11b6/59e71e10Nc2b1d800.jpg');

/*Table structure for table `record` */

DROP TABLE IF EXISTS `record`;

CREATE TABLE `record` (
  `record_id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL COMMENT '用户id',
  `itemId` int(64) NOT NULL COMMENT '商品id',
  `item_num` int(10) DEFAULT '0' COMMENT '商品数量',
  PRIMARY KEY (`record_id`),
  KEY `itemId` (`itemId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `record` */

insert  into `record`(`record_id`,`user_id`,`itemId`,`item_num`) values (15,6,1,20),(16,6,2,30),(17,6,3,29),(18,6,4,18),(19,6,11,6),(20,6,10,6),(21,6,27,2),(22,6,28,2),(23,6,5,15),(24,6,33,9),(25,6,34,9),(26,6,35,9),(27,6,9,6),(28,6,23,6),(29,6,24,6),(30,6,22,3),(31,6,17,3),(32,6,18,3),(33,6,19,3),(34,6,6,6);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(32) NOT NULL COMMENT '用户名',
  `user_sex` tinyint(1) DEFAULT '0' COMMENT '用户性别(0男1女)',
  `user_password` varchar(32) NOT NULL COMMENT '用户密码',
  `user_live` tinyint(1) DEFAULT '0' COMMENT '是否在线',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`user_sex`,`user_password`,`user_live`) values (6,'tabzjh',0,'tabzjh',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;