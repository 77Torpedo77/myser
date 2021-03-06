-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2019-06-10 19:09:56
-- 服务器版本： 5.5.60-log
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uestcbiye2019`
--

-- --------------------------------------------------------

--
-- 表的结构 `config`
--

CREATE TABLE `config` (
  `configname` text NOT NULL,
  `configvalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `config`
--

INSERT INTO `config` (`configname`, `configvalue`) VALUES
('username', 'star'),
('password', 'dc0fa7df3d07904a09288bd2d2bb5f40');

-- --------------------------------------------------------

--
-- 表的结构 `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `score` text NOT NULL,
  `nickname` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `problems`
--

CREATE TABLE `problems` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `options` text NOT NULL,
  `answer` text NOT NULL,
  `type` text NOT NULL,
  `show_time` int(11) NOT NULL,
  `pass_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `problems`
--

INSERT INTO `problems` (`id`, `question`, `options`, `answer`, `type`, `show_time`, `pass_time`) VALUES
(1, '我电一共有几个学院', '20,21,22,23', '22', '基础知识', 0, 0),
(2, '我电的代校歌是什么', '年华似锦,成电荣光,银杏茁壮,电子科技大学校歌', '年华似锦', '基础知识', 0, 0),
(3, '校友出资三亿、建设在东湖湖畔的楼叫什么', '宣德楼,宣育楼,宣邦楼,宣明楼', '宣邦楼', '基础知识', 0, 0),
(4, '清水河校区于哪一年投入使用', '2006,2007,2008,2009', '2007', '基础知识', 0, 0),
(5, '往返于清水河和沙河的校园公交车是哪一路', '396,397,525,520', '396', '基础知识', 0, 0),
(6, '我电的校内报修电话是多少', '61830123,61830143,61830183,61830180', '61830183', '基础知识', 0, 0),
(7, '熊猫组团是指哪个组团', '本科一组团,本科二组团,本科三组团,本科四组团', '本科二组团', '基础知识', 0, 0),
(8, '清水河校区内一共有几个食堂', '7,8,9,10', '9', '基础知识', 0, 0),
(9, '清水河校区图书馆研修室早上几点开始预约', '6:00,7:00,8:00,9:00', '7:00', '基础知识', 0, 0),
(10, '我电有几个国家级重点实验室', '2,3,4,5', '4', '基础知识', 0, 0),
(11, '我电本科专业共有多少个', '63,61,56,51', '63', '基础知识', 0, 0),
(12, '我电官方论坛叫什么', '沙河畔,清水河畔,建设路旁,成电论坛', '清水河畔', '基础知识', 0, 0),
(13, '清水河校区的邮编是多少', '611731,610751,631711,631751', '611731', '基础知识', 0, 0),
(14, '我电第一任校长是谁', '吴立人,谢立惠,顾德仁,刘盛纲', '吴立人', '基础知识', 0, 0),
(15, '沙河校区的地址是_____', '一环路东一段,一环路东二段,二环路东一段,二环路东二段', '一环路东一段', '基础知识', 0, 0),
(16, '我电学生邮箱的后缀名是_____', 'uestc.edu.cn,student.uestc.edu.cn,std.uestc.edu.cn,std.uestc.cn', 'std.uestc.edu.cn', '基础知识', 0, 0),
(17, '我电目前有几只黑天鹅', '两只,四只,六只,八只', '六只', '基础知识', 0, 0),
(18, '我电西二门右手边的楼叫什么', '研究院大楼,研究生院大楼,航空航天学院大楼,电子科学技术研究院大楼', '研究院大楼', '基础知识', 0, 0),
(19, '我电一共有几个校区', '一个,两个,三个,四个', '三个', '基础知识', 0, 0),
(20, '清水河校区商业街的校园超市是第几分店', '四分店,八分店,十二分店,十六分店', '十六分店', '基础知识', 0, 0),
(21, '清水河校区主楼一共有几层', '5,6,7,8', '8', '基础知识', 0, 0),
(22, '清水河校区学生活动中心一共有几层', '二层,三层,四层,五层', '四层', '基础知识', 0, 0),
(23, '我电班级的最高荣誉是什么', '成电杰出班级,电子科技大学杰出班级,成电优秀班级,电子科技大学优秀班级', '成电杰出班级', '基础知识', 0, 0),
(24, '清水河校区现在共有几栋科研楼', '3,4,5,6', '5', '基础知识', 0, 0),
(25, '我电智慧教室位于品学楼哪个地方', 'C区1楼,C区2楼,C区3楼,C区4楼', 'C区2楼', '基础知识', 0, 0),
(26, '我电校训于_____年确定为“求实求真，大气大为”', '2011,2012,2013,2014', '2014', '基础知识', 0, 0),
(27, '我电学子曾将花粥的《盗将行》改编为_____', '杏将黄,银杏黄,银杏飘,银杏飞', '杏将黄', '基础知识', 0, 0),
(28, '“中国公办大学创业竞争力排行榜500强·2018”榜单中，我电排名第几', '1,2,3,4', '3', '基础知识', 0, 0),
(29, '清水河校区编号为1314的银杏树在哪个位置', '丹桂路,银杏大道,水杉路,天润路', '丹桂路', '基础知识', 0, 0),
(30, '麦克斯韦雕像在哪栋楼的前面', '品学楼B区,立人楼B区,科研楼,图书馆', '科研楼', '基础知识', 0, 0),
(31, '我电黑天鹅的GPS项链没有下面的哪项功能', '监测环境,监测身体状态,提供按摩服务,精准定位', '提供按摩服务', '基础知识', 0, 0),
(32, '我电2018级本科新生男女比是多少', '7:1,5.6:1,4.6:1,3.6:1', '3.6:1', '基础知识', 0, 0),
(33, '我电占地面积有多大', '2000余亩,3000余亩,4000余亩,5000余亩', '4000余亩', '基础知识', 0, 0),
(34, '我电周内晚上几点熄灯', '10点半,11点,11点半,12点', '11点半', '基础知识', 0, 0),
(35, '我电宿舍内使用的空调的品牌是什么', '美的&长虹,格力&海信,海信&美的,松下&长虹', '美的&长虹', '基础知识', 0, 0),
(36, '银桦食堂早上几点开始供餐', '6:30,6:45,7:00,7:15', '6:45', '基础知识', 0, 0),
(37, '清水河校区哪个食堂的男生最多', '银桦餐厅,桃园餐厅,家园餐厅,朝阳餐厅', '朝阳餐厅', '基础知识', 0, 0),
(38, '哪个食堂晚上的夜宵有烤鱼', '银桦餐厅,桃园餐厅,家园餐厅,朝阳餐厅', '银桦餐厅', '基础知识', 0, 0),
(39, '清水河校区最大的文印中心周内早上几点上班', '7点,8点,9点,10点', '8点', '基础知识', 0, 0),
(40, '我电2015级本科生入校前，常规批次网上选房时间段是_____', '8.8-8.11,8.12-8.15,8.16-8.19,8.20-8.23', '8.12-8.15', '基础知识', 0, 0),
(41, '我电宿舍进门右手边的第一架床的床位是几号', '1号,2号,3号,4号', '1号', '基础知识', 0, 0),
(42, '我电2015级本科生的报名时间是', '8.27和8.28,8.28和8.29,8.29和8.30,8.30和8.31', '8.28和8.29', '基础知识', 0, 0),
(43, '四川地区，2015年我电（清水河校区）理工科本科一批次提档线是多少', '580,590,600,610', '610', '基础知识', 0, 0),
(44, '我电2015级学子军训期间，雨天有几天', '1天,2天,3天,4天及以上', '4天及以上', '基础知识', 0, 0),
(45, '我电2015级学子纪念抗战胜利70周年的方式是_____', '在体育馆观看阅兵仪式,在成电会堂观看阅兵仪式,在体育馆练习方队,在综合训练馆练习方队', '在体育馆观看阅兵仪式', '基础知识', 0, 0),
(46, '东湖捕鱼开始于哪一年', '2015年,2016年,2017年,2018年', '2018年', '基础知识', 0, 0),
(47, '我电本科生毕业设计查重开始于哪一年', '2016年,2017年,2018年,2019年', '2019年', '基础知识', 0, 0),
(48, '“杨物运动”的创始人是谁', '杨振宁,杨宏春,张之洞,杨谟华', '杨宏春', '名教师', 0, 0),
(49, '“美貌与智慧并存，教坛拳坛两开花“。她是我电经管学院的副教授_____', '梁媛,刘玉,王圆,赵鸢', '梁媛', '名教师', 0, 0),
(50, '“明明可以靠颜值，却偏要靠实力。“她是我电最年轻的副院长，她于_____年来我电工作', '2014,2015,2016,2017', '2015', '名教师', 0, 0),
(51, '他临危受命，带领企业成为全球半导体显示领域的佼佼者，他是我电知名校友_____', '孙亚芳,王东升,丁磊,郁可唯', '王东升', '名教师', 0, 0),
(52, '我电吕琳媛教授成功入选《麻省理工科技评论》年度中国科技青年英雄榜，她是_____', '60后,70后,80后,90后', '80后', '名教师', 0, 0),
(53, '担任塔山村“第一书记”，奋战在脱贫攻坚的第一线。他是我电_____辅导员赵冰。', '70后,80后,90后,00后', '90后', '名教师', 0, 0),
(54, '下列哪门课程不属于“四大名补”', '信号与系统,模拟电路,电磁场与波,微积分', '微积分', '名课程', 0, 0),
(55, '下列选项中，在大一必修的两门课是', '毛概与概率论,微积分和信号与系统,大学物理和马原,近代史和思修', '近代史和思修', '名课程', 0, 0),
(56, '2019年，我电工学专业（非照顾专业）的考研复试分数线是多少', '300,310,320,330', '310', '名课程', 0, 0),
(57, '目前，我电共有几门课程入选国家精品在线开放课程', '29,25,21,19', '29', '名课程', 0, 0),
(58, '杨利伟来过我电几次', '1,2,3,4', '2', '名讲座', 0, 0),
(59, '我电学子和陈彼得先生共有过几次合作', '1,2,3,4', '4', '名讲座', 0, 0),
(60, '流浪地球的配乐者阿鲲毕业于我电哪个学院', '通信学院,电工学院,外国语学院,公共管理学院', '通信学院', '名讲座', 0, 0),
(61, '米叔带着他的哪部作品来了我电', '印度暴徒,神秘巨星,摔跤吧爸爸,我的个神啊', '印度暴徒', '名讲座', 0, 0),
(62, '刘若英来过我电_____次', '1,2,3,4', '3', '名讲座', 0, 0),
(63, '方文山来过我电_____次', '1,2,3,4', '2', '名讲座', 0, 0),
(64, '我电清水河校区幼儿园建设于几号启动', '5.1,5.11,6.1,6.11', '6.1', '大事记', 0, 0),
(65, '_____年，成都电讯工程学院更名为电子科技大学', '1987,1988,1989,1949', '1988', '大事记', 0, 0),
(66, '_____年，成都电讯工程学院成立', '1955,1956,1957,1949', '1956', '大事记', 0, 0),
(67, '_____年，我电进入国家建设双一流A类高校行列', '2015,2016,2017,2018', '2017', '大事记', 0, 0),
(68, '全国第四轮学科评估中，我电_____个学科获评A类学科', '1,2,3,4', '4', '大事记', 0, 0),
(69, '全国第四轮学科评估中，我电_____个学科获评A+学科', '1,2,3,4', '2', '大事记', 0, 0),
(70, '我电在全国以及学科评估中排名第1 的学科是_____', '电子科学与技术,信息与通信工程,计算机科学与技术,光学工程', '电子科学与技术', '大事记', 0, 0),
(71, '世界很大，我电的白天鹅独自去过下面哪个地方', '图书馆,大草原,银桦餐厅,品学楼', '大草原', '大事记', 0, 0),
(72, '我电的生日是哪一天', '9月28日,9月29日,9月30日,10月1日', '9月29日', '大事记', 0, 0),
(73, '“电子科大日”于哪一年确立', '2015年,2016年,2017年,2018年', '2017年', '大事记', 0, 0),
(74, '‘杨物运动’始于哪一年', '2012年,2013年,2014年,2015年', '2013年', '大事记', 0, 0),
(75, '我电有几位学者获得“天府杰出科学家”称号', '3,4,5,6', '5', '大事记', 0, 0),
(76, '2019年，我电获批几个博士专业学位授权点', '1,2,3,4', '4', '大事记', 0, 0),
(77, '我电ESI前1%的学科有几个', '7,8,9,10', '8', '大事记', 0, 0),
(78, '今年，华为软件精英挑战赛全国总决赛8强中我电学子占据几席', '2,3,4,5', '2', '大事记', 0, 0),
(79, '2019年美国大学生数学建模竞赛和交叉学科建模竞赛中，我电获得最高奖的队伍有几个', '1,2,3,4', '3', '大事记', 0, 0),
(80, '武书连发布的《2019中国大学本科就业质量排行榜》中，我电就业质量排行第几', '1,3,6,9', '9', '大事记', 0, 0),
(81, '今年，我电新增几个本科专业', '5,6,7,8', '5', '大事记', 0, 0),
(82, '2019年两会，我电有几位代表参会', '0,1,2,3', '2', '大事记', 0, 0),
(83, '我电在2014-2018年中国高校创新人才培养暨学科竞赛评估中排名第几', '1,2,3,4', '4', '大事记', 0, 0),
(84, '2019年成都版快闪《我和我的祖国》，我电共有多少学子参加', '40人,50人,60人,70人', '70人', '大事记', 0, 0),
(85, '2018年，我电银装素裹的日子是', '12月20日,12月23日,12月26日,12月29日', '12月29日', '大事记', 0, 0),
(86, '当选2019年度IEEE Fellow的成电人有几位', '1,2,3,4', '3', '大事记', 0, 0),
(87, '2018年10月，_____吨高原土豆抵达我电食堂', '31,25,21,15', '31', '大事记', 0, 0),
(88, '我电宜宾研究院于哪一年正式投入使用', '2015年,2016年,2017年,2018年', '2018年', '大事记', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `wxid` text NOT NULL,
  `problemid` text NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `wxid` text NOT NULL,
  `try` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- 使用表AUTO_INCREMENT `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
