SET NAMES UTF8;
DROP DATABASE IF EXISTS xmt;
CREATE DATABASE xmt CHARSET=UTF8;
USE xmt;
CREATE TABLE xmt_user(
    pid INT(11) PRIMARY KEY NOT NULL auto_increment,
    uname varchar(32),
    upwd varchar(32),
    email varchar(64),
    phone varchar(16) 
);
INSERT INTO xmt_user VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000');
INSERT INTO xmt_user VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568');
INSERT INTO xmt_user VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569' );
INSERT INTO xmt_user VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560');
INSERT INTO xmt_user VALUES ('5', '1111', '111111', '441977193@qq.com', '18357100796');
INSERT INTO xmt_user VALUES ('6', 'ABCD', '123456', '123@qq.com', '13538894495');
INSERT INTO xmt_user VALUES ('7', 'mohk', '123456', '11@qq.com', '13512312312');
INSERT INTO xmt_user VALUES ('8', '121123', 'w13945128995', '491000888@qq.com', '13213389258');
INSERT INTO xmt_user VALUES ('9', '555555', '5555555', '55555555@163.com', '13400000000');
INSERT INTO xmt_user VALUES ('10', 'xuyong', '123456', '123456789@qq.com', '15525623622');
INSERT INTO xmt_user VALUES ('11', 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164');

CREATE TABLE xmt_index_code(
    nid INT PRIMARY KEY NOT NULL auto_increment,
    img_url varchar(126),
    price_code varchar(126),
    subtitle varchar(256),
    price decimal(8,2),
    code_price decimal(8,2)
);
INSERT INTO xmt_index_code VALUES(1,"img/index/58575828f1577.jpg","95","<6日波多黎各异国风情>：洞穴公园、阿雷西博天文台、Culebra岛、圣胡安市区游、夜游萤光湖",471.20,496.00);
INSERT INTO xmt_index_code VALUES(2,"img/index/5805b6b70c5f6.jpg","8","5日&lt;迈阿密创新游丨迈阿密接送机&gt;迈阿密、西锁岛、大沼泽国家公园、罗德岱堡、雄狮野生动物世界、棕榈滩、特色自由行(一晚入住迈阿密海滩酒店)",344.80,431.00);
INSERT INTO xmt_index_code VALUES(3,"img/index/5800503163834.JPG","95","5日<夏威夷特色游丨檀香山接送机>夏威夷欧胡岛、珍珠港、小环岛精华游、檀香山市区游、特色自由行探索之旅",199.93,210.45);
INSERT INTO xmt_index_code VALUES(4,"img/index/562494e7bf21c.jpg","8","5日<迈阿密游购休闲游丨迈阿密接送机>迈阿密、沼泽公园、西锁岛、苏格拉斯品牌折扣名城、设计区、罗德岱堡、西棕榈滩精彩之旅",308.80,386.00);
INSERT INTO xmt_index_code VALUES(5,"img/index/2015051417100603757.jpg","95","7日【墨西哥城+坎昆中文团、改革大道+三文化广场+瓜达卢配圣母院+特奥蒂瓦坎日月金字塔+奇琴伊察、玛雅大金字塔+玛雅大天井+墨西哥城市区精华游+X集团主题乐园3选1】探寻历史 拥抱加勒比海",817.95,861.00);
INSERT INTO xmt_index_code VALUES(6,"img/index/5b57f7587d900.png","95","1日【墨西哥】粉红湖+观赏火烈鸟浪漫体验游---探访INS知名打卡地，地球最美纯天然粉色海滩",134.90,142.00);
INSERT INTO xmt_index_code VALUES(7,"img/index/墨西哥粉红湖.jpg","98","6日墨西哥坎昆豪华酒店、自选乐园、拥抱加勒比，玛雅文化探秘轻松之旅",368.48,376.00);
INSERT INTO xmt_index_code VALUES(8,"img/index/5b18f54c3be86.JPG","95","5日<墨西哥|墨西哥城精华游>墨西哥、改革大道、独立天使纪念碑、日月金字塔、瓜纳华托、格拉纳蒂塔斯谷仓精彩发现之旅",854.05,899.00);
INSERT INTO xmt_index_code VALUES(9,"img/index/5b45cf1decad5.jpg","7","10日【城市.自然.乐园】洛杉矶、旧金山、拉斯维加斯，优胜美地，大峡谷/羚羊彩穴/自由行任选、主题项目任选二，17哩，风情小镇畅爽游",385.70,551.00);
INSERT INTO xmt_index_code VALUES(10,"img/index/57ba73dc3653d.jpeg","9","【精品小众★尊贵体验】7日美东纽约、费城、华盛顿、尼亚加拉瀑布、波士顿豪华游（全程高顶奔驰+4星级酒店+独家早餐+独家免费入内国会大厦）<纽约接送机>",729.00,821.00);
INSERT INTO xmt_index_code VALUES(11,"img/index/5ab8c3cfad178.jpg",null,"【精品小众】2日美西悦享自然观光游:♫世界遗产大峡谷日出观赏☼ (南峡)+羚羊彩穴+马蹄湾♫",324.00,null);
INSERT INTO xmt_index_code VALUES(12,"img/index/5b45cf1decad5.jpg","93","【小众拼团·小车小团】洛杉矶-圣地亚哥-一号公路-圣巴巴拉-丹麦城-优胜美地国家公园-旧金山7日深度游",892.80,960);
INSERT INTO xmt_index_code VALUES(13,"img/index/5b164558877c9.JPG",null,"4日<美东名校游丨华盛顿接送机>华盛顿、费城、纽约市区游、耶鲁大学、麻省理工学院、哈佛大学、波士顿文化探索之旅",299.00,null);
INSERT INTO xmt_index_code VALUES(14,"img/index/5acc68bab52dd.jpg","8","7日【自然.乐园.城市】大峡谷南缘/西缘/羚羊彩穴任选，迪士尼/环球影城/圣地亚哥/洛杉矶等主题项目任选三",348.00,435.00);
INSERT INTO xmt_index_code VALUES(15,"img/index/5b3f0c6ac3bdd.jpg",null,"9日【城市.自然.乐园】洛杉矶、旧金山、拉斯维加斯，优胜美地，大峡谷/羚羊彩穴/自由行任选、主题项目任选一，17哩，风情小镇请爽游",452.00,null);


CREATE TABLE xmt_product(
    lid INT PRIMARY KEY  NOT NULL  auto_increment,
    family_id INT(11),
    img_url varchar(126),
    title varchar(256),
    subtitle varchar(256),
    price decimal(8,2)
);
INSERT INTO xmt_product VALUES(701,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(702,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(703,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(704,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(705,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(706,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(707,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(708,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(709,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(710,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(711,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(712,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(713,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(714,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(715,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(716,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(717,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(718,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(719,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(720,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(721,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(722,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(723,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(724,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(725,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(726,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(727,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(728,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(729,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(730,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(731,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(732,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(733,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(734,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");
INSERT INTO xmt_product VALUES(735,7,"img/product/5b4c4cca46b9f.jpg","3日<洛杉矶到拉斯维加斯短途游>拉斯维加斯、西峡谷、玻璃桥、羚羊彩穴、马蹄湾经典游","★充分游览景点，欣赏到拉斯维加斯，大峡谷西缘和羚羊彩穴一日游二选一，直销工厂的打折名牌也是该团的一大亮点；★第二天可随意选择是否停留在赌城尽情购物或者前往赌场；★深度的旅游体验，最精华的线路，饱览人文景观与自然景观。","66.00");



CREATE TABLE xmt_product_family(
    fid INT PRIMARY KEY NOT NULL auto_increment,
    fname VARCHAR(128)
); 
INSERT INTO xmt_product_family VALUES(7,"洛杉矶到拉斯维加斯短途游");


CREATE TABLE xmt_product_pic (
   pid int(11)  PRIMARY KEY  NOT NULL auto_increment,
   laptop_id int(11) ,
   sm varchar(128) ,
   md varchar(128) 
);
INSERT INTO xmt_product_pic VALUES (1, 701, 'img/details/567244b22b9cc.jpg', 'img/details/567244b22b9cc.jpg');
INSERT INTO xmt_product_pic VALUES (2, 701, 'img/details/57baa480a5d1d.jpg', 'img/details/57baa480a5d1d.jpg');
INSERT INTO xmt_product_pic VALUES (3, 701, 'img/details/57baa46d2050b.png', 'img/details/57baa46d2050b.png');
INSERT INTO xmt_product_pic VALUES (4, 701, 'img/details/5b4eff184c35c.jpg', 'img/details/5b4eff184c35c.jpg');
INSERT INTO xmt_product_pic VALUES (5, 701, 'img/details/5b4c4cca46b9f.jpg', 'img/details/5b4c4cca46b9f.jpg');
INSERT INTO xmt_product_pic VALUES (6, 702, 'img/details/567244b22b9cc.jpg', 'img/details/567244b22b9cc.jpg');
INSERT INTO xmt_product_pic VALUES (7, 702, 'img/details/57baa480a5d1d.jpg', 'img/details/57baa480a5d1d.jpg');
INSERT INTO xmt_product_pic VALUES (8, 702, 'img/details/57baa46d2050b.png', 'img/details/57baa46d2050b.png');
INSERT INTO xmt_product_pic VALUES (9, 702, 'img/details/5b4eff184c35c.jpg', 'img/details/5b4eff184c35c.jpg');
INSERT INTO xmt_product_pic VALUES (10, 702, 'img/details/5b4c4cca46b9f.jpg', 'img/details/5b4c4cca46b9f.jpg');
INSERT INTO xmt_product_pic VALUES (11, 703, 'img/details/567244b22b9cc.jpg', 'img/details/567244b22b9cc.jpg');
INSERT INTO xmt_product_pic VALUES (12, 703, 'img/details/57baa480a5d1d.jpg', 'img/details/57baa480a5d1d.jpg');
INSERT INTO xmt_product_pic VALUES (13, 703, 'img/details/57baa46d2050b.png', 'img/details/57baa46d2050b.png');
INSERT INTO xmt_product_pic VALUES (14, 703, 'img/details/5b4eff184c35c.jpg', 'img/details/5b4eff184c35c.jpg');
INSERT INTO xmt_product_pic VALUES (15, 703, 'img/details/5b4c4cca46b9f.jpg', 'img/details/5b4c4cca46b9f.jpg');
INSERT INTO xmt_product_pic VALUES (16, 704, 'img/details/567244b22b9cc.jpg', 'img/details/567244b22b9cc.jpg');
INSERT INTO xmt_product_pic VALUES (17, 704, 'img/details/57baa480a5d1d.jpg', 'img/details/57baa480a5d1d.jpg');
INSERT INTO xmt_product_pic VALUES (18, 704, 'img/details/57baa46d2050b.png', 'img/details/57baa46d2050b.png');
INSERT INTO xmt_product_pic VALUES (19, 704, 'img/details/5b4eff184c35c.jpg', 'img/details/5b4eff184c35c.jpg');
INSERT INTO xmt_product_pic VALUES (20, 704, 'img/details/5b4c4cca46b9f.jpg', 'img/details/5b4c4cca46b9f.jpg');
INSERT INTO xmt_product_pic VALUES (21, 705, 'img/details/567244b22b9cc.jpg', 'img/details/567244b22b9cc.jpg');
INSERT INTO xmt_product_pic VALUES (22, 705, 'img/details/57baa480a5d1d.jpg', 'img/details/57baa480a5d1d.jpg');
INSERT INTO xmt_product_pic VALUES (23, 705, 'img/details/57baa46d2050b.png', 'img/details/57baa46d2050b.png');
INSERT INTO xmt_product_pic VALUES (24, 705, 'img/details/5b4eff184c35c.jpg', 'img/details/5b4eff184c35c.jpg');
INSERT INTO xmt_product_pic VALUES (25, 705, 'img/details/5b4c4cca46b9f.jpg', 'img/details/5b4c4cca46b9f.jpg');
INSERT INTO xmt_product_pic VALUES (26, 706, 'img/details/567244b22b9cc.jpg', 'img/details/567244b22b9cc.jpg');
INSERT INTO xmt_product_pic VALUES (27, 706, 'img/details/57baa480a5d1d.jpg', 'img/details/57baa480a5d1d.jpg');
INSERT INTO xmt_product_pic VALUES (28, 706, 'img/details/57baa46d2050b.png', 'img/details/57baa46d2050b.png');
INSERT INTO xmt_product_pic VALUES (29, 706, 'img/details/5b4eff184c35c.jpg', 'img/details/5b4eff184c35c.jpg');
INSERT INTO xmt_product_pic VALUES (30, 706, 'img/details/5b4c4cca46b9f.jpg', 'img/details/5b4c4cca46b9f.jpg');
INSERT INTO xmt_product_pic VALUES (31, 707, 'img/details/567244b22b9cc.jpg', 'img/details/567244b22b9cc.jpg');
INSERT INTO xmt_product_pic VALUES (32, 707, 'img/details/57baa480a5d1d.jpg', 'img/details/57baa480a5d1d.jpg');
INSERT INTO xmt_product_pic VALUES (33, 707, 'img/details/57baa46d2050b.png', 'img/details/57baa46d2050b.png');
INSERT INTO xmt_product_pic VALUES (34, 707, 'img/details/5b4eff184c35c.jpg', 'img/details/5b4eff184c35c.jpg');
INSERT INTO xmt_product_pic VALUES (35, 707, 'img/details/5b4c4cca46b9f.jpg', 'img/details/5b4c4cca46b9f.jpg');
INSERT INTO xmt_product_pic VALUES (36, 708, 'img/details/567244b22b9cc.jpg', 'img/details/567244b22b9cc.jpg');
INSERT INTO xmt_product_pic VALUES (37, 708, 'img/details/57baa480a5d1d.jpg', 'img/details/57baa480a5d1d.jpg');
INSERT INTO xmt_product_pic VALUES (38, 708, 'img/details/57baa46d2050b.png', 'img/details/57baa46d2050b.png');
INSERT INTO xmt_product_pic VALUES (39, 708, 'img/details/5b4eff184c35c.jpg', 'img/details/5b4eff184c35c.jpg');
INSERT INTO xmt_product_pic VALUES (40, 708, 'img/details/5b4c4cca46b9f.jpg', 'img/details/5b4c4cca46b9f.jpg');
INSERT INTO xmt_product_pic VALUES (41, 709, 'img/details/567244b22b9cc.jpg', 'img/details/567244b22b9cc.jpg');
INSERT INTO xmt_product_pic VALUES (42, 709, 'img/details/57baa480a5d1d.jpg', 'img/details/57baa480a5d1d.jpg');
INSERT INTO xmt_product_pic VALUES (43, 709, 'img/details/57baa46d2050b.png', 'img/details/57baa46d2050b.png');
INSERT INTO xmt_product_pic VALUES (44, 709, 'img/details/5b4eff184c35c.jpg', 'img/details/5b4eff184c35c.jpg');
INSERT INTO xmt_product_pic VALUES (45, 709, 'img/details/5b4c4cca46b9f.jpg', 'img/details/5b4c4cca46b9f.jpg');
INSERT INTO xmt_product_pic VALUES (46, 710, 'img/details/567244b22b9cc.jpg', 'img/details/567244b22b9cc.jpg');
INSERT INTO xmt_product_pic VALUES (47, 710, 'img/details/57baa480a5d1d.jpg', 'img/details/57baa480a5d1d.jpg');
INSERT INTO xmt_product_pic VALUES (48, 710, 'img/details/57baa46d2050b.png', 'img/details/57baa46d2050b.png');
INSERT INTO xmt_product_pic VALUES (49, 710, 'img/details/5b4eff184c35c.jpg', 'img/details/5b4eff184c35c.jpg');
INSERT INTO xmt_product_pic VALUES (50, 710, 'img/details/5b4c4cca46b9f.jpg', 'img/details/5b4c4cca46b9f.jpg');



CREATE TABLE xmt_cart(
    iid INT PRIMARY KEY NOT NULL auto_increment,
    user_id INT,
    product_id INT,
    count INT,
    ischecked BOOLEAN
); 
INSERT INTO xmt_cart VALUES(null,2,702,5,1);
INSERT INTO xmt_cart VALUES(null,1,701,2,1);
INSERT INTO xmt_cart VALUES(null,5,708,2,1);
INSERT INTO xmt_cart VALUES(null,4,709,9,1);
INSERT INTO xmt_cart VALUES(null,6,710,1,1);
INSERT INTO xmt_cart VALUES(null,8,703,3,1);
INSERT INTO xmt_cart VALUES(null,3,710,4,1);
INSERT INTO xmt_cart VALUES(null,7,707,8,1);
INSERT INTO xmt_cart VALUES(null,9,705,5,1);
INSERT INTO xmt_cart VALUES(null,10,704,6,1);







