-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-05-27 01:36:47
-- 服务器版本： 5.7.26-log
-- PHP 版本： 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `star`
--

-- --------------------------------------------------------

--
-- 表的结构 `config`
--

CREATE TABLE `config` (
  `configname` text NOT NULL,
  `configvalue` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `config`
--

INSERT INTO `config` (`configname`, `configvalue`, `id`) VALUES
('username', 'star', 1),
('password', '8ff953dd97c4405234a04291dee39e0b', 2);

-- --------------------------------------------------------

--
-- 表的结构 `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `nickname` text NOT NULL,
  `url` text NOT NULL,
  `wxid` int(50) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `image`
--

INSERT INTO `image` (`id`, `score`, `nickname`, `url`, `wxid`) VALUES
(6, 40, 'xiaoming', 'www.65465.asd', 8),
(7, 100, 'xiaoming', 'www.65465.asd', 666),
(8, 50, 'xiaoming', 'www.65465.asd', 66),
(9, 30, 'xiaoming', 'www.65465.asd', 1),
(10, 20, 'xiaoming', 'www.65465.asd', 2),
(11, 20, 'xiaoming', 'www.65465.asd', 3),
(12, 10, 'xiaoming', 'www.65465.asd', 4),
(13, 40, 'xiaoming', 'www.65465.asd', 6),
(14, 40, 'xiaoming', 'www.65465.asd', 7),
(15, 40, 'xiaoming', 'www.65465.asd', 8),
(16, 100, 'xiaoming', 'www.65465.asd', 666);

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
  `show_time` int(11) NOT NULL DEFAULT '0',
  `pass_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `problems`
--

INSERT INTO `problems` (`id`, `question`, `options`, `answer`, `type`, `show_time`, `pass_time`) VALUES
(1, '我校有几位学者获得“天府杰出科学家”称号', '3,4,5,6', '3', '第一类', 3, 3),
(2, '2019年，我校获批几个博士专业学位授权点', '1,2,3,4\r\n', '4', '第一类', 2, 0),
(3, '我校ESI前1%的学科有几个', '7,8,9,10', '2', '第一类', 0, 0),
(4, '我电学子和陈彼得先生共有过几次合作', '1,2,3,4', '4', '第一类', 0, 0),
(5, '今年，华为软件精英挑战赛全国总决赛8强中我电学子占据几席', '2,3,4,5', '1', '第一类', 1, 0),
(6, '我校在建和拟建的楼有几栋', '1,3,6,9', '3', '第一类', 3, 2),
(7, '2019年美国大学生数学建模竞赛和交叉学科建模竞赛中，我校获得最高奖的队伍有几个', '1,2,3,4', '3', '第一类', 4, 0),
(8, '武书连发布的《2019中国大学本科就业质量排行榜》中，我校就业质量排行第几', '7,8,9,10', '4', '第一类', 5, 2),
(9, '今年，我校新增几个本科专业', '5,6,7,8', '1', '第一类', 6, 6),
(10, '“明明可以靠颜值，却偏要靠实力。“她是我校最年轻的副院长，她于_____年来我校工作', '2014年,2015年,2016年,2017年', '2', '第二类', 1, 0),
(11, '他临危受命，带领企业成为全球半导体显示领域的佼佼者，他是成电知名校友_____', '孙亚芳,王东升,丁磊,郁可唯', '2', '第二类', 0, 0),
(12, '2019年成都版快闪《我和我的祖国》，我校共有多少学子参加', '40人,50人,60人,70人\r\n', '4', '第二类', 2, 1),
(13, '我校”成电故事“讲师团的平均年龄是多少', '50岁,60岁,70岁,80岁', '4', '第二类', 1, 0),
(14, '我校吕琳媛教授成功入选《麻省理工科技评论》年度中国科技青年英雄榜，她是_____', '60后,70后,80后,90后', '3', '第二类', 1, 0),
(15, '目前，我校共有几门课程入选国家精品在线开放课程\r\n', '29,25,21,19', '1', '第二类', 2, 0),
(16, '我电图书馆全年到馆人次有多少', '140万人次,240万人次,340万人次,440万人次', '2', '第三类', 1, 0),
(17, '我电智慧教室位于品学楼哪个地方', 'C区1楼,C区2楼,C区3楼,C区4楼', '2', '第三类\r\n', 0, 0),
(18, '我电学子曾将花粥的《盗将行》改编为_____', '杏将黄,银杏黄,银杏飘,银杏飞', '1', '第三类', 2, 1),
(19, '清水河校区编号为1314的银杏树在哪个位置', '丹桂路,银杏大道,水杉路,天润路', '1\r\n', '第三类', 2, 0),
(20, '麦克斯韦在哪栋楼的前面', '品学楼B区,立人楼B区,科研楼,图书馆', '3', '第三类', 7, 0),
(21, '担任塔山村“第一书记”，奋战在脱贫攻坚的第一线。他是我电_____辅导员赵冰。', '70后,80后,90后,00后', '3', '第三类', 1, 0),
(22, '刘若英来过我电_____次', '1,2,3,4', '3', '第四类', 0, 0),
(23, '方文山来过我电_____次', '1,2,3,5', '2', '第四类', 1, 1),
(24, '我电占地面积有多大\r\n', '2000余亩,3000余亩,4000余亩,5000余亩', '3', '第四类', 2, 0),
(25, '我电周内晚上几点熄灯', '10点半,11点,11点半,12点', '3', '第四类', 2, 0),
(26, '清水河校区哪个食堂男生最多', '银桦餐厅,桃园餐厅,家园餐厅,朝阳餐厅', '4', '第四类', 1, 0),
(27, '哪个食堂晚上的夜宵有烤鱼', '银桦餐厅,桃园餐厅,家园餐厅,朝阳餐厅', '1', '第四类', 0, 0),
(28, '清水河校区最大的文印中心周内早上几点上班', '7点,8点,9点,10点', '2', '第四类', 0, 0);

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

--
-- 转存表中的数据 `record`
--

INSERT INTO `record` (`id`, `wxid`, `problemid`, `score`) VALUES
(11, '666', '45,1,42,8,50,55,62,74,78,69', 100),
(12, '66', '34,43,9,20,48,55,60,67,72,65', 50),
(13, '1', '29,7,14,38,48,57,62,86,87,73', 30),
(14, '2', '41,26,38,7,51,57,63,75,83,88', 20),
(15, '3', '42,27,37,25,48,55,58,75,67,81', 20),
(16, '4', '6,42,18,36,48,56,60,85,83,79', 10),
(17, '6', '41,6,24,28,52,57,58,81,65,85', 40),
(18, '7', '25,28,8,2,51,55,59,82,75,64', 40),
(19, '8', '32,7,45,5,53,56,62,72,83,66', 30),
(20, '8', '18,8,20,15,51,57,60,71,84,80', 40),
(21, '666', '26,45,12,2,50,54,60,70,79,83', 30),
(22, '666', '1,2,3,5,4,6,8,7,9,10,', -1),
(23, '666', '2,1,4,5,3,7,6,8,10,9,', -1),
(24, '666', '1,2,4,3,5,7,6,8,9,10,', -1),
(25, 'undefined', '1,2,4,5,3,6,7,8,10,9,', -1),
(26, 'undefined', '2,1,5,4,3,7,8,6,10,9,', -1),
(27, 'undefined', '1,2,5,3,4,6,8,7,9,10,', -1),
(28, 'undefined', '1,2,4,3,5,7,8,6,9,10,', -1),
(29, 'undefined', '1,2,5,3,4,7,6,8,9,10,', -1),
(30, 'undefined', '1,2,5,4,3,6,8,7,9,10,', -1),
(31, 'undefined', '1,2,5,4,3,7,8,6,9,10,', -1),
(32, 'undefined', '2,1,4,3,5,8,6,7,10,9,', -1),
(33, 'undefined', '2,1,4,3,5,7,6,8,10,9,', -1),
(34, 'undefined', '1,2,5,4,3,8,6,7,10,9,', -1),
(35, 'undefined', '1,2,3,5,4,8,6,7,9,10,', -1),
(36, 'undefined', '2,1,3,4,5,6,8,7,10,9,', -1),
(37, 'undefined', '2,1,5,4,3,7,8,6,9,10,', -1),
(38, 'undefined', '1,2,5,4,3,6,7,8,9,10,', -1),
(39, 'undefined', '1,2,4,3,5,7,8,6,9,10,', -1),
(40, 'undefined', '1,2,4,5,3,8,7,6,10,9,', -1),
(41, 'undefined', '2,1,3,4,5,8,6,7,10,9,', -1),
(42, 'undefined', '2,1,3,5,4,6,7,8,10,9,', -1),
(43, 'undefined', '2,1,5,4,3,8,7,6,9,10,', -1),
(44, 'undefined', '1,2,5,3,4,8,7,6,10,9,', -1),
(45, 'undefined', '2,1,3,5,4,7,8,6,9,10,', -1),
(46, 'undefined', '1,2,4,3,5,7,6,8,9,10,', -1),
(47, 'undefined', '2,1,3,4,5,7,8,6,10,9,', -1),
(48, '666', '1,2,4,3,5,6,7,8,10,9,', -1),
(49, '666', '1,2,3,5,4,6,8,7,10,9,', -1),
(50, 'undefined', '1,2,5,3,4,8,7,6,10,9,', -1),
(51, 'undefined', '1,2,5,4,3,6,7,8,10,9,', -1),
(52, 'undefined', '1,2,4,3,5,7,8,6,10,9,', -1),
(53, 'undefined', '2,1,4,5,3,6,7,8,10,9,', -1),
(54, 'undefined', '1,2,3,5,4,8,7,6,9,10,', -1),
(55, 'undefined', '1,2,3,5,4,6,8,7,9,10,', -1),
(56, 'undefined', '1,2,4,5,3,7,6,8,9,10,', -1),
(57, 'undefined', '2,1,3,5,4,6,7,8,10,9,', -1),
(58, 'undefined', '2,1,3,5,4,7,8,6,10,9,', -1),
(59, 'undefined', '2,1,3,4,5,6,7,8,10,9,', -1),
(60, 'undefined', '2,1,5,3,4,7,6,8,9,10,', -1),
(61, '666', '1,2,4,3,5,7,6,8,10,9,', -1),
(62, '666', '1,2,4,3,5,6,8,7,9,10,', -1),
(63, '666', '2,1,3,4,5,8,6,7,9,10,', -1),
(64, '666', '2,1,4,3,5,7,6,8,9,10,', -1),
(65, '666', '1,2,4,3,5,8,7,6,9,10,', -1),
(66, '666', '2,1,5,4,3,6,8,7,9,10,', -1),
(67, '666', '1,2,5,3,4,6,7,8,10,9,', -1),
(68, '666', '1,2,3,5,4,8,6,7,9,10,', -1),
(69, 'undefined', '1,2,5,3,4,6,7,8,10,9,', -1),
(70, 'undefined', '1,2,5,3,4,7,6,8,9,10,', -1),
(71, 'undefined', '1,2,3,5,4,6,8,7,9,10,', -1),
(72, 'undefined', '1,2,4,5,3,6,7,8,10,9,', -1),
(73, '666', '2,9,15,13,12,20,21,19,28,27,', -1),
(74, '666', '8,9,15,12,11,19,21,20,22,23,', -1),
(75, 'undefined', '6,5,14,15,12,21,18,16,22,24,', -1),
(76, 'undefined', '4,7,13,10,15,18,16,20,25,22,', -1),
(77, 'undefined', '1,7,12,13,11,18,21,20,24,22,', -1),
(78, 'undefined', '1,3,15,13,14,18,16,20,24,27,', -1),
(79, 'undefined', '2,3,13,14,15,20,19,21,23,25,', -1),
(80, 'undefined', '6,5,11,12,14,21,18,19,23,27,', -1),
(81, 'undefined', '4,6,14,10,11,16,21,20,27,23,', -1),
(82, 'undefined', '2,8,10,13,15,21,18,20,25,28,', -1),
(83, 'undefined', '9,4,14,15,12,18,20,19,27,25,', -1),
(84, 'undefined', '7,9,10,14,12,18,21,19,26,23,', -1),
(85, 'undefined', '8,6,15,14,13,20,21,19,25,23,', -1),
(86, 'undefined', '4,5,15,14,11,19,16,21,22,23,', -1),
(87, 'undefined', '6,1,12,10,13,18,19,16,25,26,', -1),
(88, 'undefined', '9,7,12,15,11,18,20,21,25,24,', -1),
(89, 'undefined', '8,1,15,14,13,19,20,21,25,22,', -1),
(90, 'undefined', '1,8,15,13,11,19,18,21,22,24,', -1),
(91, 'undefined', '9,8,11,14,12,20,16,19,25,28,', -1),
(92, 'undefined', '5,1,13,10,11,21,19,16,23,26,', -1),
(93, 'undefined', '2,1,10,11,13,16,21,18,26,22,', -1),
(94, 'undefined', '9,5,13,11,14,18,16,21,27,22,', -1),
(95, 'undefined', '3,1,15,13,12,16,20,21,25,27,', -1),
(96, 'undefined', '5,6,11,12,14,16,18,21,22,23,', -1),
(97, 'undefined', '8,9,15,12,10,16,19,18,25,28,', -1),
(98, 'undefined', '2,5,15,12,14,21,16,20,26,28,', -1),
(99, 'undefined', '8,7,10,13,12,19,16,21,26,24,', 0),
(100, 'undefined', '3,2,10,12,13,20,18,21,22,28,', -1),
(101, 'undefined', '5,9,10,15,12,16,20,18,28,27,', -1),
(102, 'undefined', '8,7,11,13,12,16,21,19,26,23,', -1),
(103, 'undefined', '8,6,13,15,10,21,19,16,22,28,', -1),
(104, 'undefined', '8,3,11,15,12,21,19,16,25,26,', -1),
(105, 'undefined', '3,4,11,13,15,20,18,19,24,27,', -1),
(106, 'undefined', '9,2,11,15,12,20,21,18,22,23,', -1),
(107, 'undefined', '9,3,13,10,12,20,16,18,26,27,', -1),
(108, 'undefined', '2,7,10,12,11,21,19,18,22,23,', -1),
(109, 'undefined', '1,9,15,14,11,18,21,20,23,24,', -1);

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
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `wxid`, `try`) VALUES
(2, '666', 2),
(3, '66', 1),
(4, '1', 1),
(5, '2', 1),
(6, '3', 1),
(7, '4', 1),
(8, '5', 1),
(9, '6', 1),
(10, '7', 1),
(11, '8', 2),
(12, 'undefined', 2);

--
-- 转储表的索引
--

--
-- 表的索引 `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用表AUTO_INCREMENT `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
