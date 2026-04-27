/*
 不想费时执行爬虫脚本的可直接执行该文件
 Navicat Premium Data Transfer

 Source Server         : new_env
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40-0ubuntu0.20.04.1)
 Source Host           : 192.168.141.128:3306
 Source Schema         : douban_plat

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40-0ubuntu0.20.04.1)
 File Encoding         : 65001

 Date: 10/12/2024 15:11:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `release_year` year NULL DEFAULT NULL,
  `rating` decimal(3, 1) NULL DEFAULT NULL,
  `rater_count` int NULL DEFAULT NULL,
  `director` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `timing` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movies
-- ----------------------------
INSERT INTO `movies` VALUES (1, '肖申克的救赎 The Shawshank Redemption', 1994, 9.7, 3093179, '弗兰克·德拉邦特', '剧情,犯罪', 142);
INSERT INTO `movies` VALUES (2, '霸王别姬', 1993, 9.6, 2282776, '陈凯歌', '剧情,爱情,同性', 171);
INSERT INTO `movies` VALUES (3, '阿甘正传 Forrest Gump', 1994, 9.5, 2302156, '罗伯特·泽米吉斯', '剧情,爱情', 142);
INSERT INTO `movies` VALUES (4, '泰坦尼克号 Titanic', 1997, 9.5, 2343234, '詹姆斯·卡梅隆', '剧情,爱情,灾难', 194);
INSERT INTO `movies` VALUES (5, '千与千寻 千と千尋の神隠し', 2001, 9.4, 2391437, '宫崎骏', '剧情,动画,奇幻', 125);
INSERT INTO `movies` VALUES (6, '美丽人生 La vita è bella', 1997, 9.5, 1406643, '罗伯托·贝尼尼', '剧情,喜剧,爱情,战争', 116);
INSERT INTO `movies` VALUES (7, '这个杀手不太冷 Léon', 1994, 9.4, 2440167, '吕克·贝松', '剧情,动作,犯罪', 133);
INSERT INTO `movies` VALUES (8, '星际穿越 Interstellar', 2014, 9.4, 2015292, '克里斯托弗·诺兰', '剧情,科幻,冒险', 169);
INSERT INTO `movies` VALUES (9, '盗梦空间 Inception', 2010, 9.4, 2201453, '克里斯托弗·诺兰', '剧情,科幻,悬疑,冒险', 148);
INSERT INTO `movies` VALUES (10, '楚门的世界 The Truman Show', 1998, 9.4, 1873403, '彼得·威尔', '剧情,科幻', 103);
INSERT INTO `movies` VALUES (11, '辛德勒的名单 Schindler\'s List', 1993, 9.5, 1189072, '史蒂文·斯皮尔伯格', '剧情,历史,战争', 195);
INSERT INTO `movies` VALUES (12, '忠犬八公的故事 Hachi: A Dog\'s Tale', 2009, 9.4, 1471955, '拉斯·霍尔斯道姆', '剧情', 93);
INSERT INTO `movies` VALUES (13, '海上钢琴师 La leggenda del pianista sull\'oceano', 1998, 9.3, 1786281, '朱塞佩·托纳多雷', '剧情,音乐', 165);
INSERT INTO `movies` VALUES (14, '三傻大闹宝莱坞 3 Idiots', 2009, 9.2, 1970843, '拉吉库马尔·希拉尼', '剧情,喜剧,爱情,歌舞', 171);
INSERT INTO `movies` VALUES (15, '放牛班的春天 Les choristes', 2004, 9.3, 1398000, '克里斯托夫·巴哈蒂', '剧情,音乐', 97);
INSERT INTO `movies` VALUES (16, '机器人总动员 WALL·E', 2008, 9.3, 1403127, '安德鲁·斯坦顿', '科幻,动画,冒险', 98);
INSERT INTO `movies` VALUES (17, '疯狂动物城 Zootopia', 2016, 9.2, 2101042, '拜伦·霍华德', '喜剧,动画,冒险', 109);
INSERT INTO `movies` VALUES (18, '无间道 無間道', 2002, 9.3, 1470566, '刘伟强', '剧情,惊悚,犯罪', 101);
INSERT INTO `movies` VALUES (19, '控方证人 Witness for the Prosecution', 1957, 9.6, 642286, '比利·怀尔德', '剧情,悬疑,惊悚,犯罪', 116);
INSERT INTO `movies` VALUES (20, '大话西游之大圣娶亲 西遊記大結局之仙履奇緣', 1995, 9.2, 1624182, '刘镇伟', '喜剧,爱情,奇幻,古装', 95);
INSERT INTO `movies` VALUES (21, '熔炉 도가니', 2011, 9.3, 988630, '黄东赫', '剧情', 125);
INSERT INTO `movies` VALUES (22, '教父 The Godfather', 1972, 9.3, 1040036, '弗朗西斯·福特·科波拉', '剧情,犯罪', 175);
INSERT INTO `movies` VALUES (23, '触不可及 Intouchables', 2011, 9.3, 1211775, '奥利维埃·纳卡什', '剧情,喜剧', 112);
INSERT INTO `movies` VALUES (24, '寻梦环游记 Coco', 2017, 9.1, 1827658, '李·昂克里奇', '喜剧,动画,音乐,奇幻', 105);
INSERT INTO `movies` VALUES (25, '当幸福来敲门 The Pursuit of Happyness', 2006, 9.2, 1609325, '加布里埃莱·穆奇诺', '剧情,家庭,传记', 117);
INSERT INTO `movies` VALUES (26, '末代皇帝 The Last Emperor', 1987, 9.3, 962245, '贝纳尔多·贝托鲁奇', '剧情,传记,历史', 163);
INSERT INTO `movies` VALUES (27, '龙猫 となりのトトロ', 1988, 9.2, 1344193, '宫崎骏', '动画,奇幻,冒险', 86);
INSERT INTO `movies` VALUES (28, '哈利·波特与魔法石 Harry Potter and the Sorcerer\'s Stone', 2001, 9.2, 1318546, '克里斯·哥伦布', '奇幻,冒险', 152);
INSERT INTO `movies` VALUES (29, '怦然心动 Flipped', 2010, 9.1, 1948575, '罗伯·莱纳', '剧情,喜剧,爱情', 90);
INSERT INTO `movies` VALUES (30, '活着', 1994, 9.3, 913802, '张艺谋', '剧情,家庭,历史', 132);
INSERT INTO `movies` VALUES (31, '蝙蝠侠：黑暗骑士 The Dark Knight', 2008, 9.2, 1133338, '克里斯托弗·诺兰', '剧情,动作,科幻,惊悚,犯罪', 152);
INSERT INTO `movies` VALUES (32, '指环王3：王者无敌 The Lord of the Rings: The Return of the King', 2003, 9.3, 859893, '彼得·杰克逊', '剧情,动作,奇幻,冒险', 201);
INSERT INTO `movies` VALUES (33, '我不是药神', 2018, 9.0, 2236789, '文牧野', '剧情,喜剧', 117);
INSERT INTO `movies` VALUES (34, '乱世佳人 Gone with the Wind', 1939, 9.3, 741746, '维克多·弗莱明', '剧情,爱情,历史,战争', 233);
INSERT INTO `movies` VALUES (35, '飞屋环游记 Up', 2009, 9.1, 1415600, '彼特·道格特', '剧情,喜剧,动画,冒险', 96);
INSERT INTO `movies` VALUES (36, '素媛 소원', 2013, 9.3, 735759, '李濬益', '剧情', 122);
INSERT INTO `movies` VALUES (37, '哈尔的移动城堡 ハウルの動く城', 2004, 9.1, 1191829, '宫崎骏', '爱情,动画,奇幻,冒险', 119);
INSERT INTO `movies` VALUES (38, '让子弹飞', 2010, 9.0, 1816493, '姜文', '剧情,喜剧,动作,西部', 132);
INSERT INTO `movies` VALUES (39, '十二怒汉 12 Angry Men', 1957, 9.4, 538506, '西德尼·吕美特', '剧情', 96);
INSERT INTO `movies` VALUES (40, '海蒂和爷爷 Heidi', 2015, 9.3, 702892, '阿兰·葛斯彭纳', '剧情,家庭,冒险', 111);
INSERT INTO `movies` VALUES (41, '何以为家 كفرناحوم', 2018, 9.1, 1112145, '娜丁·拉巴基', '剧情', 126);
INSERT INTO `movies` VALUES (42, '猫鼠游戏 Catch Me If You Can', 2002, 9.1, 1124012, '史蒂文·斯皮尔伯格', '剧情,传记,犯罪', 141);
INSERT INTO `movies` VALUES (43, '天空之城 天空の城ラピュタ', 1986, 9.2, 951172, '宫崎骏', '动画,奇幻,冒险', 125);
INSERT INTO `movies` VALUES (44, '摔跤吧！爸爸 Dangal', 2016, 9.0, 1660573, '涅提·蒂瓦里', '剧情,家庭,传记,运动', 161);
INSERT INTO `movies` VALUES (45, '鬼子来了', 2000, 9.3, 673089, '姜文', '剧情,喜剧', 139);
INSERT INTO `movies` VALUES (46, '少年派的奇幻漂流 Life of Pi', 2012, 9.1, 1424441, '李安', '剧情,奇幻,冒险', 127);
INSERT INTO `movies` VALUES (47, '钢琴家 The Pianist', 2002, 9.3, 699866, '罗曼·波兰斯基', '剧情,音乐,传记,战争', 149);
INSERT INTO `movies` VALUES (48, '指环王2：双塔奇兵 The Lord of the Rings: The Two Towers', 2002, 9.2, 808347, '彼得·杰克逊', '剧情,动作,奇幻,冒险', 180);
INSERT INTO `movies` VALUES (49, '大话西游之月光宝盒 西遊記第壹佰零壹回之月光寶盒', 1995, 9.0, 1293709, '刘镇伟', '喜剧,爱情,奇幻,古装', 88);
INSERT INTO `movies` VALUES (50, '死亡诗社 Dead Poets Society', 1989, 9.2, 807987, '彼得·威尔', '剧情', 128);
INSERT INTO `movies` VALUES (51, '闻香识女人 Scent of a Woman', 1992, 9.1, 961819, '马丁·布莱斯特', '剧情', 157);
INSERT INTO `movies` VALUES (52, '绿皮书 Green Book', 2018, 8.9, 1777367, '彼得·法雷里', '剧情,喜剧,音乐,传记', 130);
INSERT INTO `movies` VALUES (53, '大闹天宫', 1961, 9.4, 475814, '万籁鸣', '剧情,动画,奇幻,古装', 113);
INSERT INTO `movies` VALUES (54, '罗马假日 Roman Holiday', 1953, 9.1, 1001594, '威廉·惠勒', '剧情,喜剧,爱情', 118);
INSERT INTO `movies` VALUES (55, '黑客帝国 The Matrix', 1999, 9.1, 894940, '莉莉·沃卓斯基', '动作,科幻', 136);
INSERT INTO `movies` VALUES (56, '指环王1：护戒使者 The Lord of the Rings: The Fellowship of the Ring', 2001, 9.1, 906975, '彼得·杰克逊', '剧情,动作,奇幻,冒险', 179);
INSERT INTO `movies` VALUES (57, '教父2 The Godfather: Part II', 1974, 9.3, 597912, '弗朗西斯·福特·科波拉', '剧情,犯罪', 202);
INSERT INTO `movies` VALUES (58, '天堂电影院 Nuovo Cinema Paradiso', 1988, 9.2, 712614, '朱塞佩·托纳多雷', '剧情,爱情', 155);
INSERT INTO `movies` VALUES (59, '狮子王 The Lion King', 1994, 9.1, 907261, '罗杰·阿勒斯', '动画,歌舞,冒险', 89);
INSERT INTO `movies` VALUES (60, '辩护人 변호인', 2013, 9.2, 629053, '杨宇硕', '剧情', 127);
INSERT INTO `movies` VALUES (61, '饮食男女 飲食男女', 1994, 9.2, 672435, '李安', '剧情,家庭', 124);
INSERT INTO `movies` VALUES (62, '搏击俱乐部 Fight Club', 1999, 9.0, 911242, '大卫·芬奇', '剧情,动作,悬疑,惊悚', 139);
INSERT INTO `movies` VALUES (63, '本杰明·巴顿奇事 The Curious Case of Benjamin Button', 2008, 9.0, 1050110, '大卫·芬奇', '剧情,爱情,奇幻', 166);
INSERT INTO `movies` VALUES (64, '美丽心灵 A Beautiful Mind', 2001, 9.1, 817609, '朗·霍华德', '剧情,传记', 135);
INSERT INTO `movies` VALUES (65, '穿条纹睡衣的男孩 The Boy in the Striped Pajamas', 2008, 9.2, 609127, '马克·赫尔曼', '剧情,战争', 94);
INSERT INTO `movies` VALUES (66, '窃听风暴 Das Leben der Anderen', 2006, 9.2, 603632, '弗洛里安·亨克尔·冯·多纳斯马尔克', '剧情,悬疑', 137);
INSERT INTO `movies` VALUES (67, '情书 Love Letter', 1995, 8.9, 1211084, '岩井俊二', '剧情,爱情', 117);
INSERT INTO `movies` VALUES (68, '两杆大烟枪 Lock, Stock and Two Smoking Barrels', 1998, 9.1, 639257, '盖·里奇', '剧情,喜剧,犯罪', 107);
INSERT INTO `movies` VALUES (69, '音乐之声 The Sound of Music', 1965, 9.1, 646258, '罗伯特·怀斯', '剧情,爱情,歌舞,传记', 174);
INSERT INTO `movies` VALUES (70, '哈利·波特与死亡圣器(下) Harry Potter and the Deathly Hallows: Part 2', 2011, 9.0, 907210, '大卫·叶茨', '奇幻,冒险', 130);
INSERT INTO `movies` VALUES (71, '看不见的客人 Contratiempo', 2016, 8.8, 1366078, '奥里奥尔·保罗', '剧情,悬疑,惊悚,犯罪', 106);
INSERT INTO `movies` VALUES (72, '西西里的美丽传说 Malèna', 2000, 8.9, 1042235, '朱塞佩·托纳多雷', '剧情,情色,战争', 108);
INSERT INTO `movies` VALUES (73, '阿凡达 Avatar', 2009, 8.8, 1501555, '詹姆斯·卡梅隆', '动作,科幻,冒险', 162);
INSERT INTO `movies` VALUES (74, '拯救大兵瑞恩 Saving Private Ryan', 1998, 9.1, 689099, '史蒂文·斯皮尔伯格', '剧情,战争', 169);
INSERT INTO `movies` VALUES (75, '功夫', 2004, 8.9, 1241284, '周星驰', '喜剧,动作,犯罪,奇幻', 100);
INSERT INTO `movies` VALUES (76, '哈利·波特与阿兹卡班的囚徒 Harry Potter and the Prisoner of Azkaban', 2004, 9.0, 824216, '阿方索·卡隆', '奇幻,冒险', 141);
INSERT INTO `movies` VALUES (77, '小鞋子 بچه های آسمان', 1997, 9.2, 439664, '马基德·马基迪', '剧情,家庭,儿童', 89);
INSERT INTO `movies` VALUES (78, '飞越疯人院 One Flew Over the Cuckoo\'s Nest', 1975, 9.1, 578632, '米洛斯·福尔曼', '剧情', 133);
INSERT INTO `movies` VALUES (79, '沉默的羔羊 The Silence of the Lambs', 1991, 8.9, 959924, '乔纳森·戴米', '剧情,惊悚,犯罪', 118);
INSERT INTO `movies` VALUES (80, '布达佩斯大饭店 The Grand Budapest Hotel', 2014, 8.9, 1019826, '韦斯·安德森', '剧情,喜剧,冒险', 99);
INSERT INTO `movies` VALUES (81, '蝴蝶效应 The Butterfly Effect', 2004, 8.9, 1007439, '埃里克·布雷斯', '剧情,科幻,悬疑,惊悚', 113);
INSERT INTO `movies` VALUES (82, '禁闭岛 Shutter Island', 2010, 8.9, 1051948, '马丁·斯科塞斯', '剧情,悬疑,惊悚', 138);
INSERT INTO `movies` VALUES (83, '致命魔术 The Prestige', 2006, 8.9, 918379, '克里斯托弗·诺兰', '剧情,悬疑,惊悚', 130);
INSERT INTO `movies` VALUES (84, '心灵捕手 Good Will Hunting', 1997, 9.0, 774181, '格斯·范·桑特', '剧情', 126);
INSERT INTO `movies` VALUES (85, '超脱 Detachment', 2011, 9.0, 671308, '托尼·凯耶', '剧情', 98);
INSERT INTO `movies` VALUES (86, '低俗小说 Pulp Fiction', 1994, 8.9, 902728, '昆汀·塔伦蒂诺', '剧情,喜剧,犯罪', 154);
INSERT INTO `movies` VALUES (87, '摩登时代 Modern Times', 1936, 9.3, 325956, '查理·卓别林', '剧情,喜剧,爱情', 87);
INSERT INTO `movies` VALUES (88, '喜剧之王 喜劇之王', 1999, 8.8, 1033935, '周星驰', '剧情,喜剧,爱情', 89);
INSERT INTO `movies` VALUES (89, '春光乍泄 春光乍洩', 1997, 9.0, 675085, '王家卫', '剧情,爱情,同性', 96);
INSERT INTO `movies` VALUES (90, '哈利·波特与密室 Harry Potter and the Chamber of Secrets', 2002, 8.9, 849854, '克里斯·哥伦布', '奇幻,冒险', 161);
INSERT INTO `movies` VALUES (91, '海豚湾 The Cove', 2009, 9.3, 371622, '路易·西霍尤斯', '纪录片', 92);
INSERT INTO `movies` VALUES (92, '致命ID Identity', 2003, 8.9, 892403, '詹姆斯·曼高德', '剧情,悬疑,惊悚', 90);
INSERT INTO `movies` VALUES (93, '杀人回忆 살인의 추억', 2003, 8.9, 782167, '奉俊昊', '剧情,动作,悬疑,惊悚,犯罪', 132);
INSERT INTO `movies` VALUES (94, '美国往事 Once Upon a Time in America', 1984, 9.1, 445576, '赛尔乔·莱昂内', '剧情,犯罪', 229);
INSERT INTO `movies` VALUES (95, '一一', 2000, 9.1, 448558, '杨德昌', '剧情,爱情,家庭', 173);
INSERT INTO `movies` VALUES (96, '红辣椒 パプリカ', 2006, 9.0, 523426, '今敏', '科幻,动画,悬疑,惊悚', 90);
INSERT INTO `movies` VALUES (97, '加勒比海盗 Pirates of the Caribbean: The Curse of the Black Pearl', 2003, 8.8, 918097, '戈尔·维宾斯基', '动作,奇幻,冒险', 143);
INSERT INTO `movies` VALUES (98, '七宗罪 Se7en', 1995, 8.8, 1002382, '大卫·芬奇', '剧情,悬疑,惊悚,犯罪', 127);
INSERT INTO `movies` VALUES (99, '唐伯虎点秋香 唐伯虎點秋香', 1993, 8.7, 1157982, '李力持', '喜剧,爱情,古装', 102);
INSERT INTO `movies` VALUES (100, '狩猎 Jagten', 2012, 9.1, 432180, '托马斯·温特伯格', '剧情', 115);
INSERT INTO `movies` VALUES (101, '7号房的礼物 7번방의 선물', 2013, 8.9, 593166, '李焕庆', '剧情,喜剧,家庭', 127);
INSERT INTO `movies` VALUES (102, '蝙蝠侠：黑暗骑士崛起 The Dark Knight Rises', 2012, 8.9, 772610, '克里斯托弗·诺兰', '剧情,动作,科幻,惊悚,犯罪', 165);
INSERT INTO `movies` VALUES (103, '甜蜜蜜', 1996, 8.9, 621620, '陈可辛', '剧情,爱情', 118);
INSERT INTO `movies` VALUES (104, '被嫌弃的松子的一生 嫌われ松子の一生', 2006, 8.8, 742950, '中岛哲也', '剧情,歌舞', 130);
INSERT INTO `movies` VALUES (105, '爱在黎明破晓前 Before Sunrise', 1995, 8.8, 745766, '理查德·林克莱特', '剧情,爱情', 101);
INSERT INTO `movies` VALUES (106, '超能陆战队 Big Hero 6', 2014, 8.8, 1086255, '唐·霍尔', '喜剧,动作,科幻,动画,冒险', 102);
INSERT INTO `movies` VALUES (107, '第六感 The Sixth Sense', 1999, 8.9, 600341, 'M·奈特·沙马兰', '剧情,悬疑,惊悚', 107);
INSERT INTO `movies` VALUES (108, '寄生虫 기생충', 2019, 8.8, 1466901, '奉俊昊', '剧情', 132);
INSERT INTO `movies` VALUES (109, '重庆森林 重慶森林', 1994, 8.8, 872603, '王家卫', '剧情,爱情', 102);
INSERT INTO `movies` VALUES (110, '爱在日落黄昏时 Before Sunset', 2004, 8.9, 611650, '理查德·林克莱特', '剧情,爱情', 80);
INSERT INTO `movies` VALUES (111, '入殓师 おくりびと', 2008, 8.9, 712933, '泷田洋二郎', '剧情', 130);
INSERT INTO `movies` VALUES (112, '幽灵公主 もののけ姫', 1997, 8.9, 562698, '宫崎骏', '动画,奇幻,冒险', 134);
INSERT INTO `movies` VALUES (113, '请以你的名字呼唤我 Call Me by Your Name', 2017, 8.8, 779767, '卢卡·瓜达尼诺', '剧情,爱情,同性', 132);
INSERT INTO `movies` VALUES (114, '剪刀手爱德华 Edward Scissorhands', 1990, 8.7, 1084137, '蒂姆·波顿', '剧情,爱情,奇幻', 105);
INSERT INTO `movies` VALUES (115, '断背山 Brokeback Mountain', 2005, 8.8, 746967, '李安', '剧情,爱情,同性,家庭', 134);
INSERT INTO `movies` VALUES (116, '勇敢的心 Braveheart', 1995, 8.9, 584242, '梅尔·吉布森', '剧情,动作,传记,历史,战争', 178);
INSERT INTO `movies` VALUES (117, '菊次郎的夏天 菊次郎の夏', 1999, 8.9, 640867, '北野武', '剧情,喜剧', 121);
INSERT INTO `movies` VALUES (118, '借东西的小人阿莉埃蒂 借りぐらしのアリエッティ', 2010, 8.9, 594990, '米林宏昌', '动画,奇幻,冒险', 94);
INSERT INTO `movies` VALUES (119, '未麻的部屋 Perfect Blue', 1997, 9.1, 388652, '今敏', '剧情,动画,悬疑,惊悚,犯罪', 81);
INSERT INTO `movies` VALUES (120, '哈利·波特与火焰杯 Harry Potter and the Goblet of Fire', 2005, 8.8, 742183, '迈克·内威尔', '悬疑,奇幻,冒险', 157);
INSERT INTO `movies` VALUES (121, '消失的爱人 Gone Girl', 2014, 8.7, 1023328, '大卫·芬奇', '剧情,悬疑,惊悚,犯罪', 149);
INSERT INTO `movies` VALUES (122, '无人知晓 誰も知らない', 2004, 9.1, 351533, '是枝裕和', '剧情', 141);
INSERT INTO `movies` VALUES (123, '时空恋旅人 About Time', 2013, 8.8, 737322, '理查德·柯蒂斯', '喜剧,爱情,奇幻', 123);
INSERT INTO `movies` VALUES (124, '茶馆', 1982, 9.6, 180400, '谢添', '剧情,历史', 118);
INSERT INTO `movies` VALUES (125, '倩女幽魂', 1987, 8.8, 782082, '程小东', '爱情,奇幻,武侠,古装', 96);
INSERT INTO `movies` VALUES (126, '完美的世界 A Perfect World', 1993, 9.1, 340971, '克林特·伊斯特伍德', '剧情,犯罪', 138);
INSERT INTO `movies` VALUES (127, '阳光灿烂的日子', 1994, 8.8, 657493, '姜文', '剧情,爱情', 134);
INSERT INTO `movies` VALUES (128, '小森林 夏秋篇 リトル・フォレスト 夏・秋', 2014, 9.0, 451977, '森淳一', '剧情', 111);
INSERT INTO `movies` VALUES (129, '天使爱美丽 Le Fabuleux destin d\'Amélie Poulain', 2001, 8.7, 991200, '让-皮埃尔·热内', '剧情,喜剧,爱情', 122);
INSERT INTO `movies` VALUES (130, '驯龙高手 How to Train Your Dragon', 2010, 8.8, 808596, '迪恩·德布洛斯', '动画,奇幻,冒险', 98);
INSERT INTO `movies` VALUES (131, '侧耳倾听 耳をすませば', 1995, 8.9, 496866, '近藤喜文', '剧情,爱情,动画', 111);
INSERT INTO `movies` VALUES (132, '头脑特工队 Inside Out', 2015, 8.8, 725198, '彼特·道格特', '喜剧,动画,冒险', 95);
INSERT INTO `movies` VALUES (133, '新世界 신세계', 2013, 8.9, 489573, '朴勋政', '剧情,犯罪', 134);
INSERT INTO `movies` VALUES (134, '教父3 The Godfather: Part III', 1990, 9.0, 405628, '弗朗西斯·福特·科波拉', '剧情,犯罪', 162);
INSERT INTO `movies` VALUES (135, '怪兽电力公司 Monsters, Inc.', 2001, 8.8, 726941, '彼特·道格特', '喜剧,动画,儿童,奇幻,冒险', 92);
INSERT INTO `movies` VALUES (136, '傲慢与偏见 Pride & Prejudice', 2005, 8.7, 866475, '乔·赖特', '剧情,爱情', 129);
INSERT INTO `movies` VALUES (137, '一个叫欧维的男人决定去死 En man som heter Ove', 2015, 8.9, 527187, '汉内斯·赫尔姆', '剧情', 116);
INSERT INTO `movies` VALUES (138, '玩具总动员3 Toy Story 3', 2010, 8.9, 558317, '李·昂克里奇', '喜剧,动画,奇幻,冒险', 103);
INSERT INTO `movies` VALUES (139, '幸福终点站 The Terminal', 2004, 8.8, 610253, '史蒂文·斯皮尔伯格', '剧情,喜剧,爱情', 128);
INSERT INTO `movies` VALUES (140, '小森林 冬春篇 リトル・フォレスト 冬・春', 2015, 9.0, 401956, '森淳一', '剧情', 120);
INSERT INTO `movies` VALUES (141, '色，戒', 2007, 8.7, 895522, '李安', '剧情,爱情,情色', 158);
INSERT INTO `movies` VALUES (142, '被解救的姜戈 Django Unchained', 2012, 8.8, 653821, '昆汀·塔伦蒂诺', '剧情,动作,西部,冒险', 163);
INSERT INTO `movies` VALUES (143, '釜山行 부산행', 2016, 8.6, 1281468, '延尚昊', '动作,惊悚,灾难', 118);
INSERT INTO `movies` VALUES (144, '神偷奶爸 Despicable Me', 2010, 8.7, 1003352, '皮埃尔·柯芬', '喜剧,动画,冒险', 95);
INSERT INTO `movies` VALUES (145, '萤火之森 蛍火の杜へ', 2011, 8.8, 579232, '大森贵弘', '剧情,爱情,动画,奇幻', 45);
INSERT INTO `movies` VALUES (146, '九品芝麻官', 1994, 8.7, 743017, '王晶', '剧情,喜剧,古装', 108);
INSERT INTO `movies` VALUES (147, '哪吒闹海', 1979, 9.2, 280654, '王树忱', '动画,奇幻,冒险', 65);
INSERT INTO `movies` VALUES (148, '告白', 2010, 8.8, 710350, '中岛哲也', '剧情,悬疑', 106);
INSERT INTO `movies` VALUES (149, '喜宴 囍宴', 1993, 9.0, 399019, '李安', '剧情,喜剧,爱情,同性,家庭', 108);
INSERT INTO `movies` VALUES (150, '玛丽和马克思 Mary and Max', 2009, 9.0, 440741, '亚当·艾略特', '剧情,喜剧,动画', 92);
INSERT INTO `movies` VALUES (151, '模仿游戏 The Imitation Game', 2014, 8.8, 690798, '莫滕·泰杜姆', '剧情,同性,传记,战争', 114);
INSERT INTO `movies` VALUES (152, '头号玩家 Ready Player One', 2018, 8.6, 1446338, '史蒂文·斯皮尔伯格', '动作,科幻,冒险', 140);
INSERT INTO `movies` VALUES (153, '花样年华 花樣年華', 2000, 8.8, 663254, '王家卫', '剧情,爱情', 98);
INSERT INTO `movies` VALUES (154, '大鱼 Big Fish', 2003, 8.8, 600535, '蒂姆·波顿', '剧情,爱情,奇幻,冒险', 125);
INSERT INTO `movies` VALUES (155, '七武士 七人の侍', 1954, 9.3, 216333, '黑泽明', '剧情,动作,冒险', 207);
INSERT INTO `movies` VALUES (156, '射雕英雄传之东成西就 射鵰英雄傳之東成西就', 1993, 8.7, 681977, '刘镇伟', '喜剧,奇幻,武侠,古装', 113);
INSERT INTO `movies` VALUES (157, '惊魂记 Psycho', 1960, 9.0, 329081, '阿尔弗雷德·希区柯克', '悬疑,惊悚,恐怖', 109);
INSERT INTO `movies` VALUES (158, '血战钢锯岭 Hacksaw Ridge', 2016, 8.7, 823994, '梅尔·吉布森', '剧情,传记,历史,战争', 139);
INSERT INTO `movies` VALUES (159, '我是山姆 I Am Sam', 2001, 9.0, 359503, '杰茜·尼尔森', '剧情,家庭', 132);
INSERT INTO `movies` VALUES (160, '阳光姐妹淘 써니', 2011, 8.8, 615042, '姜炯哲', '剧情,喜剧', 124);
INSERT INTO `movies` VALUES (161, '恐怖直播 더 테러 라이브', 2013, 8.7, 696326, '金秉祐', '剧情,悬疑,犯罪', 97);
INSERT INTO `movies` VALUES (162, '你的名字。 君の名は。', 2016, 8.5, 1516119, '新海诚', '剧情,爱情,动画', 106);
INSERT INTO `movies` VALUES (163, '黑客帝国3：矩阵革命 The Matrix Revolutions', 2003, 8.8, 474348, '拉娜·沃卓斯基', '动作,科幻', 129);
INSERT INTO `movies` VALUES (164, '三块广告牌 Three Billboards Outside Ebbing, Missouri', 2017, 8.7, 876027, '马丁·麦克唐纳', '剧情,犯罪', 115);
INSERT INTO `movies` VALUES (165, '心迷宫', 2014, 8.8, 575413, '忻钰坤', '剧情,悬疑,犯罪', 110);
INSERT INTO `movies` VALUES (166, '电锯惊魂 Saw', 2004, 8.7, 577266, '温子仁', '悬疑,惊悚,恐怖', 103);
INSERT INTO `movies` VALUES (167, '小丑 Joker', 2019, 8.7, 1081268, '托德·菲利普斯', '剧情,惊悚,犯罪', 122);
INSERT INTO `movies` VALUES (168, '达拉斯买家俱乐部 Dallas Buyers Club', 2013, 8.8, 482919, '让-马克·瓦雷', '剧情,同性,传记', 117);
INSERT INTO `movies` VALUES (169, '背靠背，脸对脸', 1994, 9.5, 159153, '黄建新', '剧情', 148);
INSERT INTO `movies` VALUES (170, '心灵奇旅 Soul', 2020, 8.7, 1066410, '彼特·道格特', '动画,音乐,奇幻', 101);
INSERT INTO `movies` VALUES (171, '疯狂原始人 The Croods', 2013, 8.7, 884681, '柯克·德·米科', '喜剧,动画,冒险', 98);
INSERT INTO `movies` VALUES (172, '谍影重重3 The Bourne Ultimatum', 2007, 8.8, 445975, '保罗·格林格拉斯', '动作,悬疑,惊悚', 115);
INSERT INTO `movies` VALUES (173, '绿里奇迹 The Green Mile', 1999, 8.9, 363315, '弗兰克·德拉邦特', '剧情,悬疑,犯罪,奇幻', 189);
INSERT INTO `movies` VALUES (174, '上帝之城 Cidade de Deus', 2002, 9.0, 319188, '费尔南多·梅里尔斯', '剧情,犯罪', 130);
INSERT INTO `movies` VALUES (175, '爱在午夜降临前 Before Midnight', 2013, 8.9, 441495, '理查德·林克莱特', '剧情,爱情', 109);
INSERT INTO `movies` VALUES (176, '海街日记 海街diary', 2015, 8.8, 489096, '是枝裕和', '剧情,家庭', 127);
INSERT INTO `movies` VALUES (177, '英雄本色', 1986, 8.6, 577567, '吴宇森', '剧情,动作,犯罪', 95);
INSERT INTO `movies` VALUES (178, '风之谷 風の谷のナウシカ', 1984, 8.9, 376606, '宫崎骏', '动画,奇幻,冒险', 117);
INSERT INTO `movies` VALUES (179, '无间道2 無間道II', 2003, 8.8, 528490, '刘伟强', '剧情,惊悚,犯罪', 119);
INSERT INTO `movies` VALUES (180, '疯狂的石头', 2006, 8.6, 880404, '宁浩', '喜剧,犯罪', 106);
INSERT INTO `movies` VALUES (181, '2001太空漫游 2001: A Space Odyssey', 1968, 8.9, 366145, '斯坦利·库布里克', '科幻,惊悚,冒险', 149);
INSERT INTO `movies` VALUES (182, '纵横四海 緃横四海', 1991, 8.8, 453900, '吴宇森', '剧情,喜剧,动作,犯罪', 108);
INSERT INTO `movies` VALUES (183, '雨中曲 Singin\' in the Rain', 1952, 9.1, 249099, '斯坦利·多南', '喜剧,爱情,歌舞', 103);
INSERT INTO `movies` VALUES (184, '卢旺达饭店 Hotel Rwanda', 2004, 8.9, 351470, '特瑞·乔治', '剧情,传记,历史,战争', 121);
INSERT INTO `movies` VALUES (185, '记忆碎片 Memento', 2000, 8.7, 640289, '克里斯托弗·诺兰', '剧情,悬疑,惊悚,犯罪', 113);
INSERT INTO `movies` VALUES (186, '小偷家族 万引き家族', 2018, 8.7, 861708, '是枝裕和', '剧情,家庭,犯罪', 117);
INSERT INTO `movies` VALUES (187, '无敌破坏王 Wreck-It Ralph', 2012, 8.7, 580925, '瑞奇·摩尔', '喜剧,动画,奇幻,冒险', 101);
INSERT INTO `movies` VALUES (188, '岁月神偷 歲月神偷', 2010, 8.7, 596541, '罗启锐', '剧情,家庭', 117);
INSERT INTO `movies` VALUES (189, '冰川时代 Ice Age', 2002, 8.6, 655385, '卡洛斯·沙尔丹哈', '喜剧,动画,冒险', 81);
INSERT INTO `movies` VALUES (190, '牯岭街少年杀人事件 牯嶺街少年殺人事件', 1991, 8.9, 337966, '杨德昌', '剧情,犯罪', 237);
INSERT INTO `movies` VALUES (191, '荒蛮故事 Relatos salvajes', 2014, 8.8, 472885, '达米安·斯兹弗隆', '剧情,喜剧,犯罪', 122);
INSERT INTO `movies` VALUES (192, '忠犬八公物语 ハチ公物語', 1987, 9.2, 208599, '神山征二郎', '剧情', 107);
INSERT INTO `movies` VALUES (193, '恐怖游轮 Triangle', 2009, 8.5, 935152, '克里斯托弗·史密斯', '剧情,悬疑,惊悚', 99);
INSERT INTO `movies` VALUES (194, '东京教父 東京ゴッドファーザーズ', 2003, 9.0, 262645, '今敏', '剧情,喜剧,动画', 92);
INSERT INTO `movies` VALUES (195, '爆裂鼓手 Whiplash', 2014, 8.6, 633558, '达米恩·查泽雷', '剧情,音乐', 107);
INSERT INTO `movies` VALUES (196, '末路狂花 Thelma & Louise', 1991, 9.0, 303329, '雷德利·斯科特', '剧情,惊悚,犯罪', 130);
INSERT INTO `movies` VALUES (197, '魔女宅急便 魔女の宅急便', 1989, 8.7, 496511, '宫崎骏', '动画,奇幻,冒险', 103);
INSERT INTO `movies` VALUES (198, '大佛普拉斯', 2017, 8.7, 515361, '黄信尧', '剧情,喜剧', 102);
INSERT INTO `movies` VALUES (199, '遗愿清单 The Bucket List', 2007, 8.7, 503410, '罗伯·莱纳', '剧情,喜剧,冒险', 97);
INSERT INTO `movies` VALUES (200, '贫民窟的百万富翁 Slumdog Millionaire', 2008, 8.6, 781346, '丹尼·博伊尔', '剧情,爱情', 120);
INSERT INTO `movies` VALUES (201, '东邪西毒 東邪西毒', 1994, 8.6, 608007, '王家卫', '剧情,动作,爱情,武侠,古装', 98);
INSERT INTO `movies` VALUES (202, '高山下的花环', 1984, 9.5, 126521, '谢晋', '剧情,战争', 146);
INSERT INTO `movies` VALUES (203, '你看起来好像很好吃 おまえうまそうだな', 2010, 8.9, 355060, '藤森雅也', '剧情,动画,儿童', 90);
INSERT INTO `movies` VALUES (204, '源代码 Source Code', 2011, 8.5, 884558, '邓肯·琼斯', '科幻,悬疑,惊悚', 93);
INSERT INTO `movies` VALUES (205, '可可西里', 2004, 8.9, 326487, '陆川', '剧情,犯罪', 85);
INSERT INTO `movies` VALUES (206, '疯狂的麦克斯4：狂暴之路 Mad Max: Fury Road', 2015, 8.7, 586302, '乔治·米勒', '动作,科幻,冒险', 120);
INSERT INTO `movies` VALUES (207, '城市之光 City Lights', 1931, 9.3, 160474, '查理·卓别林', '剧情,喜剧,爱情', 87);
INSERT INTO `movies` VALUES (208, '海边的曼彻斯特 Manchester by the Sea', 2016, 8.6, 605872, '肯尼思·洛纳根', '剧情,家庭', 137);
INSERT INTO `movies` VALUES (209, '波西米亚狂想曲 Bohemian Rhapsody', 2018, 8.6, 654349, '布莱恩·辛格', '剧情,同性,音乐,传记', 135);
INSERT INTO `movies` VALUES (210, '黑天鹅 Black Swan', 2010, 8.6, 816499, '达伦·阿伦诺夫斯基', '剧情,惊悚', 108);
INSERT INTO `movies` VALUES (211, '芙蓉镇', 1987, 9.3, 165944, '谢晋', '剧情,爱情', 164);
INSERT INTO `movies` VALUES (212, '爱乐之城 La La Land', 2016, 8.4, 1023853, '达米恩·查泽雷', '剧情,爱情,歌舞', 128);
INSERT INTO `movies` VALUES (213, '真爱至上 Love Actually', 2003, 8.5, 773565, '理查德·柯蒂斯', '剧情,喜剧,爱情', 135);
INSERT INTO `movies` VALUES (214, '青蛇', 1993, 8.6, 561709, '徐克', '剧情,爱情,奇幻,古装', 99);
INSERT INTO `movies` VALUES (215, '花束般的恋爱 花束みたいな恋をした', 2021, 8.6, 735202, '土井裕泰', '剧情,爱情', 124);
INSERT INTO `movies` VALUES (216, '初恋这件小事 สิ่งเล็กเล็กที่เรียกว่า...รัก', 2010, 8.5, 1019581, '普特鹏·普罗萨卡·那·萨克那卡林', '剧情,喜剧,爱情', 118);
INSERT INTO `movies` VALUES (217, '雨人 Rain Man', 1988, 8.7, 426633, '巴瑞·莱文森', '剧情', 133);
INSERT INTO `movies` VALUES (218, '终结者2：审判日 Terminator 2: Judgment Day', 1991, 8.8, 363974, '詹姆斯·卡梅隆', '动作,科幻', 137);
INSERT INTO `movies` VALUES (219, '人工智能 A.I. Artificial Intelligence', 2001, 8.7, 477257, '史蒂文·斯皮尔伯格', '剧情,科幻', 146);
INSERT INTO `movies` VALUES (220, '虎口脱险 La grande vadrouille', 1966, 8.9, 278169, '热拉尔·乌里', '喜剧,战争', 132);
INSERT INTO `movies` VALUES (221, '无耻混蛋 Inglourious Basterds', 2009, 8.7, 519643, '昆汀·塔伦蒂诺', '剧情,犯罪', 153);
INSERT INTO `movies` VALUES (222, '哈利·波特与死亡圣器(上) Harry Potter and the Deathly Hallows: Part 1', 2010, 8.6, 644130, '大卫·叶茨', '奇幻,冒险', 146);
INSERT INTO `movies` VALUES (223, '新龙门客栈 新龍門客棧', 1992, 8.7, 477464, '李惠民', '动作,爱情,武侠,古装', 88);
INSERT INTO `movies` VALUES (224, '恋恋笔记本 The Notebook', 2004, 8.5, 716320, '尼克·卡萨维蒂', '剧情,爱情', 123);
INSERT INTO `movies` VALUES (225, '白日梦想家 The Secret Life of Walter Mitty', 2013, 8.6, 575915, '本·斯蒂勒', '剧情,喜剧,冒险', 114);
INSERT INTO `movies` VALUES (226, '崖上的波妞 崖の上のポニョ', 2008, 8.6, 540552, '宫崎骏', '动画,奇幻,冒险', 101);
INSERT INTO `movies` VALUES (227, '罗生门 羅生門', 1950, 8.8, 338650, '黑泽明', '剧情,悬疑,犯罪', 88);
INSERT INTO `movies` VALUES (228, '千钧一发 Gattaca', 1997, 8.8, 326602, '安德鲁·尼科尔', '剧情,科幻,惊悚', 106);
INSERT INTO `movies` VALUES (229, '彗星来的那一夜 Coherence', 2013, 8.6, 639023, '詹姆斯·沃德·布柯特', '科幻,悬疑,惊悚', 89);
INSERT INTO `movies` VALUES (230, '机器人之梦 Robot Dreams', 2023, 9.0, 241871, '巴勃罗·贝格尔', '剧情,动画,音乐', 102);
INSERT INTO `movies` VALUES (231, '大红灯笼高高挂', 1991, 8.8, 328774, '张艺谋', '剧情', 125);
INSERT INTO `movies` VALUES (232, '黑客帝国2：重装上阵 The Matrix Reloaded', 2003, 8.7, 432639, '拉娜·沃卓斯基', '动作,科幻', 138);
INSERT INTO `movies` VALUES (233, '哈利·波特与凤凰社 Harry Potter and the Order of the Phoenix', 2007, 8.5, 643395, '大卫·叶茨', '奇幻,冒险', 138);
INSERT INTO `movies` VALUES (234, '萤火虫之墓 火垂るの墓', 1988, 8.7, 424060, '高畑勋', '剧情,动画,战争', 89);
INSERT INTO `movies` VALUES (235, '火星救援 The Martian', 2015, 8.5, 787634, '雷德利·斯科特', '剧情,科幻,冒险', 142);
INSERT INTO `movies` VALUES (236, '奇迹男孩 Wonder', 2017, 8.6, 578802, '斯蒂芬·卓博斯基', '剧情,家庭,儿童', 113);
INSERT INTO `movies` VALUES (237, '二十二', 2015, 8.7, 304688, '郭柯', '纪录片', 99);
INSERT INTO `movies` VALUES (238, '战争之王 Lord of War', 2005, 8.7, 395046, '安德鲁·尼科尔', '剧情,犯罪', 122);
INSERT INTO `movies` VALUES (239, '步履不停 歩いても 歩いても', 2008, 8.8, 303839, '是枝裕和', '剧情,家庭', 115);
INSERT INTO `movies` VALUES (240, '千年女优 千年女優', 2001, 8.8, 297316, '今敏', '剧情,爱情,动画', 87);
INSERT INTO `movies` VALUES (241, '血钻 Blood Diamond', 2006, 8.7, 404163, '爱德华·兹威克', '剧情,惊悚,冒险', 143);
INSERT INTO `movies` VALUES (242, '谍影重重2 The Bourne Supremacy', 2004, 8.7, 377415, '保罗·格林格拉斯', '动作,悬疑,惊悚', 108);
INSERT INTO `movies` VALUES (243, '房间 Room', 2015, 8.8, 386905, '伦尼·阿伯拉罕森', '剧情,家庭', 118);
INSERT INTO `movies` VALUES (244, '魂断蓝桥 Waterloo Bridge', 1940, 8.8, 296640, '茂文·勒鲁瓦', '剧情,爱情,战争', 108);
INSERT INTO `movies` VALUES (245, '蜘蛛侠：平行宇宙 Spider-Man: Into the Spider-Verse', 2018, 8.6, 717835, '鲍勃·佩尔西凯蒂', '动作,科幻,动画,冒险', 116);
INSERT INTO `movies` VALUES (246, '弱点 The Blind Side', 2009, 8.7, 337268, '约翰·李·汉考克', '剧情,家庭,传记,运动', 129);
INSERT INTO `movies` VALUES (247, '谍影重重 The Bourne Identity', 2002, 8.6, 459371, '道格·里曼', '动作,悬疑,惊悚', 119);
INSERT INTO `movies` VALUES (248, '隐藏人物 Hidden Figures', 2016, 8.9, 245327, '西奥多·梅尔菲', '剧情,传记,历史', 127);
INSERT INTO `movies` VALUES (249, '朗读者 The Reader', 2008, 8.6, 473707, '史蒂芬·戴德利', '剧情,爱情', 124);
INSERT INTO `movies` VALUES (250, '阿飞正传 阿飛正傳', 1990, 8.5, 544565, '王家卫', '剧情,爱情,犯罪', 94);

SET FOREIGN_KEY_CHECKS = 1;
