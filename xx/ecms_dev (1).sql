-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-08-12 11:25:55
-- 服务器版本： 5.7.13
-- PHP Version: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecms_dev`
--

-- --------------------------------------------------------

--
-- 表的结构 `ac_articles`
--

CREATE TABLE `ac_articles` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `content` text,
  `type` tinyint(4) NOT NULL COMMENT '活动类型',
  `location_id` int(11) NOT NULL,
  `landmark` varchar(256) DEFAULT NULL COMMENT '地标，描述性文字',
  `coordinate` varchar(128) DEFAULT NULL COMMENT '坐标，经纬度',
  `address` varchar(256) DEFAULT NULL COMMENT '具体地址文字描述',
  `begintime` int(11) NOT NULL COMMENT '活动开始时间',
  `endtime` int(11) NOT NULL COMMENT '活动结束时间',
  `headimg` text NOT NULL COMMENT '头图，多张地址',
  `updatetime` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `collect_num` int(11) NOT NULL DEFAULT '0' COMMENT '收藏数',
  `channel_id` int(11) NOT NULL,
  `publish_userid` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ac_articles`
--

INSERT INTO `ac_articles` (`id`, `title`, `content`, `type`, `location_id`, `landmark`, `coordinate`, `address`, `begintime`, `endtime`, `headimg`, `updatetime`, `createtime`, `status`, `collect_num`, `channel_id`, `publish_userid`) VALUES
(11, 'ssssss111', '&lt;p&gt;zzzzzzzzzzz&lt;/p&gt;\r\n', 1, 4, 'qaqqqqq', '30.675715,103.936157', NULL, 1449560100, 1451029020, '[&quot;http:\\/\\/mat1.gtimg.com\\/cd\\/pjq2015\\/201512haoshua\\/img\\/page1_banner.png&quot;,&quot;http:\\/\\/mat1.gtimg.com\\/cd\\/pjq2015\\/201512haoshua\\/img\\/page1_banner.png&quot;,&quot;http:\\/\\/mat1.gtimg.com\\/cd\\/pjq2015\\/201512haoshua\\/img\\/page1_banner.png&quot;,&quot;list&quot;]', 1451029737, 1451029090, 4, 0, 1000, ''),
(12, 'as打扫打扫', '&lt;p&gt;自行车自行车自行车自行车&lt;/p&gt;\r\n', 3, 2, '阿斯达斯的', '1111', NULL, 1449042300, 1451573100, '[&quot;list&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1451029786, 1451029786, 4, 0, 1002, ''),
(13, '测试活动，不要修改', '&lt;p&gt;as大三大四的&lt;/p&gt;\r\n', 1, 3, '高新区天府二街', '30.550435,104.057007', NULL, 1451456400, 1451575200, '[&quot;http:\\/\\/mat1.gtimg.com\\/cd\\/pjq2015\\/201512haoshua\\/img\\/pg1_img3.jpg&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1451460564, 1451460564, 1, 0, 1000, '278457655'),
(14, '测试活动，不要修改', '&lt;p&gt;as大三大四的&lt;/p&gt;\r\n', 1, 3, '金牛区', '30.678078,104.094086', '四川省成都市成华区华安路府青路二段2号', 1452666000, 1453994400, '[&quot;http:\\/\\/mat1.gtimg.com\\/cd\\/pjq2015\\/201512haoshua\\/img\\/pg1_img3.jpg&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1453797327, 1451462474, 1, 0, 1000, '278457655'),
(15, '1111', '&lt;p&gt;asdasdasd&lt;/p&gt;\r\n', 1, 5, '', '', NULL, 1451462640, 1451462640, '[&quot;&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1451462661, 1451462661, 4, 0, 1000, '278457655'),
(16, '1111', '&lt;p&gt;asdasdasd&lt;/p&gt;\r\n', 1, 5, '', '', NULL, 1451462640, 1451462640, '[&quot;&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1451462666, 1451462666, 4, 0, 1000, '278457655'),
(17, '1111', '&lt;p&gt;asdasdasd&lt;/p&gt;\r\n', 1, 5, '', '', NULL, 1451462640, 1451462640, '[&quot;&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1451462690, 1451462690, 4, 0, 1000, '278457655'),
(18, '22222', '&lt;p&gt;asdasdasd&lt;/p&gt;\r\n', 3, 2, '四川省成都市金牛区五里墩东二巷二环路西三段82号', '30.687526,104.036407', '四川省成都市金牛区五里墩东二巷二环路西三段82号', 1451639100, 1451898360, '[&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_15.jpg&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1451898467, 1451898467, 4, 0, 1001, '278457655'),
(19, '333333', '&lt;p&gt;阿斯达斯的&lt;/p&gt;\r\n', 1, 3, '四川省成都市武侯区人民南路桐梓林中路1号', '30.613096,104.065247', '四川省成都市武侯区人民南路桐梓林中路1号', 1451604900, 1453469100, '[&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_15.jpg&quot;,&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_13.jpg&quot;,&quot;&quot;,&quot;&quot;]', 1451901953, 1451899839, 4, 0, 1000, '278457655'),
(20, '333333', '&lt;p&gt;阿斯达斯的&lt;/p&gt;\r\n', 1, 3, '四川省成都市武侯区人民南路桐梓林中路1号', '30.613096,104.065247', '四川省成都市武侯区人民南路桐梓林中路1号', 1451604900, 1453543800, '[&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_15.jpg&quot;,&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_13.jpg&quot;,&quot;&quot;,&quot;&quot;]', 1451902421, 1451902421, 4, 0, 1000, '278457655'),
(21, '4444', '&lt;p&gt;阿斯达斯的&lt;/p&gt;\r\n', 1, 3, '四川省成都市武侯区人民南路桐梓林中路1号', '30.613096,104.065247', '四川省成都市武侯区人民南路桐梓林中路1号', 1451604900, 1453543800, '[&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_15.jpg&quot;,&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_13.jpg&quot;,&quot;&quot;,&quot;&quot;]', 1451902443, 1451902443, 4, 0, 1001, '278457655'),
(22, '4444', '&lt;p&gt;阿斯达斯的&lt;/p&gt;\r\n', 1, 3, '四川省成都市武侯区人民南路桐梓林中路1号', '30.613096,104.065247', '四川省成都市武侯区人民南路桐梓林中路1号', 1451604900, 1453543800, '[&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_15.jpg&quot;,&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_13.jpg&quot;,&quot;&quot;,&quot;&quot;]', 1451903042, 1451903042, 4, 0, 1001, '278457655'),
(23, '4444', '&lt;p&gt;阿斯达斯的&lt;/p&gt;\r\n', 1, 3, '四川省成都市武侯区人民南路桐梓林中路1号', '30.613096,104.065247', '四川省成都市武侯区人民南路桐梓林中路1号', 1451604900, 1453630200, '[&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_15.jpg&quot;,&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_13.jpg&quot;,&quot;&quot;,&quot;&quot;]', 1451903611, 1451903067, 4, 0, 1001, '278457655'),
(24, '4444', '&lt;p&gt;阿斯达斯的&lt;/p&gt;\r\n', 1, 3, '四川省成都市武侯区人民南路桐梓林中路1号', '30.613096,104.065247', '四川省成都市武侯区人民南路桐梓林中路1号', 1451604900, 1453543800, '[&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_15.jpg&quot;,&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_13.jpg&quot;,&quot;&quot;,&quot;&quot;]', 1451903084, 1451903084, 4, 0, 1001, '278457655'),
(25, '4444', '&lt;p&gt;阿斯达斯的&lt;/p&gt;\r\n', 1, 4, '四川省成都市武侯区人民南路桐梓林中路1号', '30.613096,104.065247', '四川省成都市武侯区人民南路桐梓林中路1号', 1451604900, 1454062200, '[&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_15.jpg&quot;,&quot;http:\\/\\/c1.mifile.cn\\/f\\/i\\/g\\/2015\\/cn-index\\/alxxfinal3_13.jpg&quot;,&quot;&quot;,&quot;&quot;]', 1451903343, 1451903100, 4, 0, 1001, '278457655'),
(26, 'dddddddd', '&lt;p&gt;asdadasdasdasd&lt;/p&gt;\r\n', 1, 3, 'asdasd', '30.682802,104.114685', 'asdasdasd', 1454322000, 1456482000, '[&quot;http:\\/\\/mat1.gtimg.com\\/cd\\/pjq2015\\/201512haoshua\\/img\\/actimg1.jpg&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1452758788, 1452162313, 4, 0, 1000, '278457655'),
(28, '测试测试', '&lt;p&gt; 许久都木有活动吆喝大家一起耍了，真是对不住！&lt;br /&gt;\r\n&lt;br /&gt;\r\n  时间很快，转眼这儿又要过年了，大家都想好春节去哪儿了吗？反正成都大庙会、金沙太阳节、杜甫草堂“人日”、熊猫灯会等都会一一带来，而熟悉我们的朋友都知道，接下来将进入到新春福利季。&lt;br /&gt;\r\n&lt;br /&gt;\r\n   &lt;strong&gt;  新春福利第一波，礼物送给小朋友！   &lt;/strong&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;img src="http://mycd.qq.com/tfs/forum/201601/05/171337lyvovib7x7omztoc.jpg.thumb.jpg" /&gt; &lt;br /&gt;\r\n&lt;br /&gt;\r\n  前段时间改造后的永陵重新开放了，当时新闻、朋友圈、微博简直刷爆了屏……&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;img src="http://mycd.qq.com/tfs/forum/201601/05/160910mmihaatmiyimym2m.jpg.thumb.jpg" /&gt; &lt;br /&gt;\r\n&lt;br /&gt;\r\n  我读书那会儿就晓得王建墓（永陵），只是一次都没有去过，不仅如此，外地人来成都也都去武侯祠、杜甫草堂、文殊院、宽窄巷子……其实永陵是最该去的地方，因为在中国现存的五代十国的遗迹并不多，而且永陵是可以走到内部细细看的古遗址……&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;img src="http://mycd.qq.com/tfs/forum/201601/05/160908my2fhhjuhl3tyo2d.jpg.thumb.jpg" /&gt; &lt;br /&gt;\r\n&lt;br /&gt;\r\n  说重点，教育要从娃娃抓起，我们这代就是忽略了永陵这个文化、这段历史！&lt;br /&gt;\r\n&lt;br /&gt;\r\n  我们将联合永陵博物馆，邀请10个家庭一起到永陵，参观帝王墓，一起玩一场“&lt;strong&gt;家庭寻宝赛&lt;/strong&gt;”，边玩边学，一家人动手发现永陵的神秘。&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;img src="http://mycd.qq.com/tfs/forum/201601/05/161421ortytkfffxvsfa1a.jpg.thumb.jpg" /&gt; &lt;br /&gt;\r\n&lt;br /&gt;\r\n  &lt;strong&gt;【活动地点】：&lt;/strong&gt;成都永陵博物馆&lt;br /&gt;\r\n  &lt;strong&gt;【出游时间】：&lt;/strong&gt;1月10日9:30-12:00（星期天）&lt;br /&gt;\r\n  &lt;strong&gt;【活动方式】：&lt;/strong&gt;家庭夺宝赛&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;strong&gt;  【挑战流程】：&lt;/strong&gt;&lt;br /&gt;\r\n  1、10个家庭集结、领取伴手礼、自我介绍；&lt;br /&gt;\r\n  2、在工作人员带领下参观永陵博物馆；&lt;br /&gt;\r\n  3、永陵知识问答（5个问题）；&lt;br /&gt;\r\n  4、“慧眼识墓”亲子挑战；&lt;br /&gt;\r\n  5、小朋友对唐诗，领取通关符；&lt;br /&gt;\r\n  6、以家庭为单位完成“古树拼图”；&lt;br /&gt;\r\n  7、终极评定颁奖；&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;img src="http://mycd.qq.com/tfs/forum/201601/05/161410ywxapx5neniawahx.jpg.thumb.jpg" /&gt; &lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;strong&gt;  【家庭寻夺宝赛奖品】：&lt;/strong&gt;猴年公仔、神马公仔、熊猫公仔&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;strong&gt;  【活动名额】：&lt;/strong&gt;10个家庭（3人组，且每组必须有1位小朋友） &lt;br /&gt;\r\n&lt;strong&gt;  【活动费用】：&lt;/strong&gt;免费&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;img src="http://mycd.qq.com/tfs/forum/201601/05/160912iawnaube0fjw24q4.jpg.thumb.jpg" /&gt; &lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;strong&gt;  【活动报名方式】：请回复，回复可见报名方式！&lt;/strong&gt;&lt;br /&gt;\r\n &lt;/p&gt;\r\n\r\n&lt;p&gt;ZBL，如果您要查看本帖隐藏内容请&lt;a href="http://mycd.qq.com/forum.php?mod=post&amp;action=reply&amp;fid=1001037362&amp;tid=1759530" onclick="showWindow(''reply'', this.href)"&gt;回复&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;img src="http://mycd.qq.com/tfs/forum/201601/05/160909og0dgxu0e7dm20du.jpg.thumb.jpg" /&gt; &lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;strong&gt;  【如何确定你报名成功】：&lt;/strong&gt;1月8日12:00前工作人员会通过电话通知幸运的你，告知相关信息，到时候可不要因为不接电话、电话打不通&lt;/p&gt;\r\n', 1, 1, '锦江区', '30.595366,104.095459', '四川省成都市锦江区琉璃路', 1452759000, 1453968000, '[&quot;http:\\/\\/b399.photo.store.qq.com\\/psb?\\/V12XA8r011MFsh\\/TcrS9acLDkJq02SiHVAsusHSn5teYyAHfe*5l2J2dzE!\\/b\\/dHm92.3hDgAA&amp;amp;bo=xAOAAgAAAAABB2U!&amp;amp;rf=viewer_4&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1452823702, 1452759490, 4, 0, 1002, '278457655'),
(29, '11111', '&lt;p&gt;asdasdasdasd&lt;/p&gt;\r\n', 1, 4, 'asdasd', 'asdasd', 'asdasd', 1453952400, 1454038800, '[&quot;asdasd&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1453952977, 1453952977, 1, 0, 1003, '278457655'),
(30, 'ASDASD', '&lt;p&gt;asdasdasdasd&lt;/p&gt;\r\n', 1, 4, 'asdasd', '30.656816,104.026794', 'asdasd', 1457943000, 1459411800, '[&quot;http:\\/\\/ecms.city.qq.com\\/activity\\/post\\/index?type=1&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1459325571, 1459325571, 1, 0, 1000, '278457655'),
(31, 'ASDASD', '&lt;p&gt;asdasdasdasd&lt;/p&gt;\r\n', 1, 4, 'asdasd', '30.656816,104.026794', 'asdasd', 1457943000, 1459411800, '[&quot;http:\\/\\/ecms.city.qq.com\\/activity\\/post\\/index?type=1&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1459325585, 1459325585, 1, 0, 1000, '278457655'),
(32, 'ASDASD', '&lt;p&gt;asdasdasdasd&lt;/p&gt;\r\n', 1, 4, 'asdasd', '30.656816,104.026794', 'asdasd', 1457943000, 1459411800, '[&quot;http:\\/\\/ecms.city.qq.com\\/activity\\/post\\/index?type=1&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1459325654, 1459325654, 1, 0, 1000, '278457655'),
(33, 'ASDASD', '&lt;p&gt;asdasdasdasd&lt;/p&gt;\r\n', 1, 4, 'asdasd', '30.656816,104.026794', 'asdasd', 1457943000, 1459411800, '[&quot;http:\\/\\/ecms.city.qq.com\\/activity\\/post\\/index?type=1&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1459325813, 1459325813, 1, 0, 1000, '278457655'),
(34, 'ASDASD', '&lt;p&gt;asdasdasdasd&lt;/p&gt;\r\n', 1, 4, 'asdasd', '30.656816,104.026794', 'asdasd', 1457943000, 1459411800, '[&quot;http:\\/\\/ecms.city.qq.com\\/activity\\/post\\/index?type=1&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1459326164, 1459326164, 1, 0, 1000, '278457655'),
(35, 'ASDASD', '&lt;p&gt;asdasdasdasd&lt;/p&gt;\r\n', 1, 4, 'asdasd', '30.656816,104.026794', 'asdasd', 1457943000, 1459411800, '[&quot;http:\\/\\/ecms.city.qq.com\\/activity\\/post\\/index?type=1&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1459326199, 1459326199, 1, 0, 1000, '278457655'),
(36, 'ASDASD', '&lt;p&gt;asdasdasdasd&lt;/p&gt;\r\n', 1, 4, 'asdasd', '30.656816,104.026794', 'asdasd', 1457943000, 1459411800, '[&quot;http:\\/\\/ecms.city.qq.com\\/activity\\/post\\/index?type=1&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1459326216, 1459326216, 1, 0, 1000, '278457655'),
(37, 'ASDASD', '&lt;p&gt;asdasdasdasd&lt;/p&gt;\r\n', 1, 4, 'asdasd', '30.656816,104.026794', 'asdasd', 1457943000, 1459411800, '[&quot;http:\\/\\/ecms.city.qq.com\\/activity\\/post\\/index?type=1&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1459326225, 1459326225, 1, 0, 1000, '278457655'),
(38, 'ASDASD', '&lt;p&gt;asdasdasdasd&lt;/p&gt;\r\n', 1, 4, 'asdasd', '30.656816,104.026794', 'asdasd', 1457943000, 1459411800, '[&quot;http:\\/\\/ecms.city.qq.com\\/activity\\/post\\/index?type=1&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1459326238, 1459326238, 1, 0, 1000, '278457655'),
(39, 'ASDASD', '&lt;p&gt;asdasdasdasd&lt;/p&gt;\r\n', 1, 4, 'asdasd', '30.656816,104.026794', 'asdasd', 1457943000, 1459411800, '[&quot;http:\\/\\/ecms.city.qq.com\\/activity\\/post\\/index?type=1&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1461220445, 1459326259, 1, 0, 1000, '278457655'),
(40, '123123123', '&lt;p&gt;asdasdasd&lt;/p&gt;\r\n', 1, 2, '', '', '', 1465812660, 1465985400, '[&quot;&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1465812728, 1465812728, 1, 0, 1000, '278457655'),
(41, '123123123', '&lt;p&gt;asdasdasd&lt;/p&gt;\r\n', 1, 2, '', '', '', 1465812660, 1465985400, '[&quot;&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1465812737, 1465812737, 1, 0, 1000, '278457655'),
(42, '123123123', '&lt;p&gt;asdasdasd&lt;/p&gt;\r\n', 1, 2, '', '', '', 1465812660, 1465985400, '[&quot;&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1465812738, 1465812738, 1, 0, 1000, '278457655'),
(43, '123123123', '&lt;p&gt;asdasdasd&lt;/p&gt;\r\n', 1, 2, '', '', '', 1465812660, 1465985400, '[&quot;&quot;,&quot;&quot;,&quot;&quot;,&quot;&quot;]', 1467858229, 1465812752, 1, 0, 1000, '278457655');

-- --------------------------------------------------------

--
-- 表的结构 `ac_article_activity`
--

CREATE TABLE `ac_article_activity` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `step` tinyint(4) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ac_article_activity`
--

INSERT INTO `ac_article_activity` (`id`, `article_id`, `step`, `type`, `value`) VALUES
(21, 11, 1, 1001, '0'),
(22, 11, 2, 1002, '0'),
(23, 12, 1, 1001, '0'),
(24, 17, 1, 1002, '0'),
(25, 17, 2, 1001, '0'),
(26, 14, 1, 1001, '497'),
(27, 18, 1, 1001, '0'),
(28, 19, 1, 1002, '0'),
(29, 20, 1, 1002, '0'),
(30, 21, 1, 1002, '0'),
(31, 22, 1, 1002, '0'),
(32, 23, 1, 1002, '0'),
(33, 24, 1, 1002, '0'),
(34, 25, 1, 1002, '0'),
(35, 26, 1, 1001, '497'),
(36, 28, 1, 1001, '497'),
(37, 28, 2, 1002, '197'),
(38, 29, 1, 1001, ''),
(39, 30, 1, 1001, ''),
(40, 31, 1, 1001, '197'),
(41, 32, 1, 1001, '197'),
(42, 33, 1, 1001, '197'),
(43, 34, 1, 1001, '197'),
(44, 35, 1, 1001, '197'),
(45, 36, 1, 1001, '197'),
(46, 37, 1, 1001, '197'),
(47, 38, 1, 1001, '197'),
(48, 39, 1, 1001, '197'),
(49, 40, 1, 1001, ''),
(50, 41, 1, 1001, ''),
(51, 42, 1, 1001, ''),
(52, 43, 1, 1001, '1027');

-- --------------------------------------------------------

--
-- 表的结构 `ac_article_draft`
--

CREATE TABLE `ac_article_draft` (
  `id` int(11) NOT NULL,
  `data` text NOT NULL,
  `publish_userid` varchar(128) NOT NULL,
  `createtime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ac_article_draft`
--

INSERT INTO `ac_article_draft` (`id`, `data`, `publish_userid`, `createtime`) VALUES
(4, '{"title":"11111","channel_id":1003,"begintime":"2016-01-28 11:40","endtime":"2016-01-29 11:40","location_id":4,"coordinate":"asdasd","landmark":"asdasd","content":"&lt;p&gt;asdasdasdasd&lt;\\/p&gt;\\r\\n","headimg":"[\\"asdasd\\",\\"\\",\\"\\",\\"\\"]","type":1,"tags":["1","5"],"publish_userid":"278457655","address":"asdasd","steps":{"1":[{"step":1,"type":"1001","value":""}],"2":[{"step":2,"type":"1002","value":"0"}]}}', '278457655', 1453952666);

-- --------------------------------------------------------

--
-- 表的结构 `ac_channel`
--

CREATE TABLE `ac_channel` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ac_location`
--

CREATE TABLE `ac_location` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ac_location`
--

INSERT INTO `ac_location` (`id`, `pid`, `name`, `status`) VALUES
(1, 0, '武侯区', 1),
(2, 1, '宏达大厦', 1),
(3, 0, '高新区', 1),
(4, 3, '伊藤洋华堂', 1),
(5, 0, '锦江区1', 2);

-- --------------------------------------------------------

--
-- 表的结构 `ac_tags`
--

CREATE TABLE `ac_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ac_tags`
--

INSERT INTO `ac_tags` (`id`, `name`, `channel_id`, `status`, `createtime`) VALUES
(1, '火锅', 1000, 1, 1450085725),
(2, '串串2', 1001, 1, 1450085725),
(3, '峨眉山', 1001, 1, 1450086823),
(4, '奥特莱斯', 1002, 1, 1450854593),
(5, '西岭雪山', 1001, 1, 1450855067),
(6, '标签1', 2001, 1, 1457513732),
(7, '阿萨德', 2000, 1, 1457514574);

-- --------------------------------------------------------

--
-- 表的结构 `ac_tag_articles`
--

CREATE TABLE `ac_tag_articles` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ac_tag_articles`
--

INSERT INTO `ac_tag_articles` (`id`, `tag_id`, `article_id`) VALUES
(32, 5, 11),
(33, 3, 11),
(34, 2, 11),
(35, 1, 12),
(36, 1, 17),
(37, 1, 18),
(38, 3, 19),
(39, 3, 20),
(40, 3, 21),
(41, 3, 22),
(42, 3, 23),
(43, 3, 24),
(44, 3, 25),
(45, 5, 26),
(46, 2, 26),
(47, 2, 26),
(48, 5, 26),
(49, 1, 27),
(50, 1, 28),
(51, 1, 29),
(52, 5, 29),
(53, 5, 30),
(54, 5, 31),
(55, 5, 32),
(56, 5, 33),
(57, 5, 34),
(58, 5, 35),
(59, 5, 36),
(60, 5, 37),
(61, 5, 38),
(62, 5, 39),
(63, 5, 40),
(64, 5, 41),
(65, 5, 42),
(66, 5, 43);

-- --------------------------------------------------------

--
-- 表的结构 `cd_city_user`
--

CREATE TABLE `cd_city_user` (
  `id` int(11) NOT NULL,
  `openid` varchar(128) DEFAULT NULL,
  `uin` varchar(64) DEFAULT NULL,
  `mobile` varchar(32) DEFAULT NULL,
  `nickname` varchar(128) NOT NULL,
  `realname` varchar(128) DEFAULT NULL,
  `sex` tinyint(4) NOT NULL,
  `age` tinyint(4) DEFAULT '0',
  `address` varchar(256) DEFAULT NULL,
  `headimg` varchar(256) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `platform` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cd_city_user`
--

INSERT INTO `cd_city_user` (`id`, `openid`, `uin`, `mobile`, `nickname`, `realname`, `sex`, `age`, `address`, `headimg`, `createtime`, `status`, `platform`) VALUES
(1, '', 'o0278457655', '', '', NULL, 2, NULL, '', '', 1452582904, 1, 0),
(2, '', '278457655', '', '', NULL, 2, NULL, '', '', 1453343690, 1, 2001),
(4, NULL, NULL, '18628138984', '18628138984', '', 1, 0, NULL, '', 1467606282, 1, 2004),
(5, NULL, NULL, '15680036588', '15680036588', '', 1, 0, NULL, '', 1468980079, 1, 2004),
(6, NULL, NULL, '15680036588', '15680036588', '', 1, 0, NULL, '', 1468980138, 1, 2004),
(7, NULL, NULL, '15680036588', '15680036588', '', 1, 0, NULL, '', 1468980265, 1, 2004),
(8, NULL, NULL, '15680036589', '15680036589', '', 1, 0, NULL, '', 1469162146, 1, 2004),
(9, NULL, NULL, '15680036586', '15680036586', '', 1, 0, NULL, '', 1469162227, 1, 2004),
(10, NULL, NULL, '15680036589', '15680036589', '', 1, 0, NULL, '', 1469162304, 1, 2004),
(11, NULL, NULL, '15680036582', '15680036582', '', 1, 0, NULL, '', 1470725678, 1, 2004);

-- --------------------------------------------------------

--
-- 表的结构 `cd_city_user_relation`
--

CREATE TABLE `cd_city_user_relation` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '系统内的用户id',
  `platform` int(11) NOT NULL COMMENT '分配给个系统的平台识别id',
  `p_type` tinyint(4) NOT NULL COMMENT '各平台自定义的记录类型',
  `p_val` varchar(128) NOT NULL COMMENT '平台要保存的值，可以是id，字符',
  `p_extra` varchar(256) DEFAULT NULL COMMENT '平台要保存的扩展数据',
  `updatetime` int(11) NOT NULL COMMENT '最近更新时间',
  `createtime` int(11) NOT NULL COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecms_admin`
--

CREATE TABLE `ecms_admin` (
  `id` int(11) NOT NULL,
  `uin` varchar(128) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `expiretime` int(11) NOT NULL,
  `createtime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecms_admin`
--

INSERT INTO `ecms_admin` (`id`, `uin`, `cate_id`, `expiretime`, `createtime`) VALUES
(3, '278457655', 1, 1459439999, 1448871423),
(5, '278457655', 9, 1459439999, 1448954106);

-- --------------------------------------------------------

--
-- 表的结构 `ecms_articles`
--

CREATE TABLE `ecms_articles` (
  `id` int(11) NOT NULL,
  `commentId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(256) NOT NULL COMMENT '标题',
  `intro` varchar(256) DEFAULT NULL COMMENT '简介',
  `price` varchar(64) DEFAULT NULL COMMENT '价格描述',
  `content` text NOT NULL COMMENT '内容',
  `headimg` varchar(256) NOT NULL COMMENT '头图地址',
  `redirect_url` varchar(256) DEFAULT NULL COMMENT '直达连接',
  `publish_userid` varchar(128) NOT NULL COMMENT '发布用户id',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `updatetime` int(11) NOT NULL COMMENT '上次更新时间',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  `source_id` int(11) NOT NULL COMMENT '来源id',
  `praise_num` int(11) NOT NULL DEFAULT '0',
  `boo_num` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecms_articles`
--

INSERT INTO `ecms_articles` (`id`, `commentId`, `title`, `intro`, `price`, `content`, `headimg`, `redirect_url`, `publish_userid`, `status`, `updatetime`, `createtime`, `source_id`, `praise_num`, `boo_num`) VALUES
(3, 0, '测试标题1', '测试描述1', '198元包邮1', '&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;p&amp;gt;草草草草草草草草草草草草草草草草草草草草&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;1&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;/p&amp;gt;\n', 'http://i3.s1.dpfile.com/pc/1d4c5502fb5b405c28e99d26770fd042(700x700)/thumb.jpg', 'www.baidu.com1', '278457655', 1, 1444817219, 1444469286, 0, 0, 0),
(4, 0, '测试标题1', '测试描述1', '198元包邮', '&lt;p&gt;草草草草草草草草草草草草草草草草草草草草&lt;/p&gt;\r\n', 'http://i3.s1.dpfile.com/pc/1d4c5502fb5b405c28e99d26770fd042(700x700)/thumb.jpg', 'www.baidu.com1', '278457655', 1, 1445237847, 1444810810, 1, 0, 0),
(100000, 0, '测试文章标题', '啊啊啊啊啊啊', '198包邮', '&lt;p&gt;滴答滴答滴答滴答&lt;/p&gt;\r\n', 'http://am.zdmimg.com/201510/27/562f4e087386f.png_a200.jpg', 'http://www.smzdm.com/', '278457655', 1, 1446027015, 1446027015, 0, 0, 0),
(100001, 0, '测试文章标题', '啊啊啊啊啊啊', '198包邮', '&lt;p&gt;滴答滴答滴答滴答&lt;/p&gt;\r\n', 'http://am.zdmimg.com/201510/27/562f4e087386f.png_a200.jpg', 'http://www.smzdm.com/', '278457655', 1, 1446027071, 1446027071, 0, 0, 0),
(100002, 0, '测试文章2', '测试文章2', '198', '&lt;p&gt;as打扫打扫的&lt;/p&gt;\r\n', 'http://am.zdmimg.com/201510/27/562f4e087386f.png_a200.jpg', 'http://post.smzdm.com/p/361038/', '278457655', 1, 1446027187, 1446027187, 0, 0, 0),
(100003, 0, '测试文章2', '测试文章2', '198', '&lt;p&gt;as打扫打扫的&lt;/p&gt;\r\n', 'http://am.zdmimg.com/201510/27/562f4e087386f.png_a200.jpg', 'http://post.smzdm.com/p/361038/', '278457655', 1, 1446027450, 1446027450, 0, 0, 0),
(100004, 0, '测试文章2', '测试文章2', '198', '&lt;p&gt;as打扫打扫的&lt;/p&gt;\r\n', 'http://am.zdmimg.com/201510/27/562f4e087386f.png_a200.jpg', 'http://post.smzdm.com/p/361038/', '278457655', 1, 1446028221, 1446028221, 0, 0, 0),
(100005, 0, '测试文章2', '测试文章2', '198', '&lt;p&gt;as打扫打扫的&lt;/p&gt;\r\n', 'http://am.zdmimg.com/201510/27/562f4e087386f.png_a200.jpg', 'http://post.smzdm.com/p/361038/', '278457655', 1, 1446028238, 1446028238, 0, 0, 0),
(100006, 0, '测试测试3333', '测试测试3333', '测试测试3333', '&lt;p&gt;测试测试3333测试测试3333测试测试3333测试测试3333&lt;/p&gt;\r\n', 'http://y.zdmimg.com/201511/02/5636e7c0bc561.png_d250.jpg', 'www.baidu.com', '278457655', 1, 1446779251, 1446447933, 0, 0, 0),
(100007, 0, '测试测试3333', '测试测试3333', '测试测试3333', '&lt;p&gt;测试测试3333测试测试3333测试测试3333测试测试3333&lt;/p&gt;\r\n', 'http://y.zdmimg.com/201511/02/5636e7c0bc561.png_d250.jpg', 'www.baidu.com', '278457655', 1, 1446448013, 1446448013, 0, 0, 0),
(100008, 0, '测试测试3333', '测试测试3333', '测试测试3333', '&lt;p&gt;测试测试3333测试测试3333测试测试3333测试测试3333&lt;/p&gt;\r\n', 'http://y.zdmimg.com/201511/02/5636e7c0bc561.png_d250.jpg', 'www.baidu.com', '278457655', 1, 1446448097, 1446448097, 0, 0, 0),
(100009, 0, '测试测试33331', '测试测试33331', '测试测试33331', '&lt;p&gt;测试测试3333测试测试3333测试测试3333测试测试33331&lt;/p&gt;\r\n', 'http://y.zdmimg.com/201511/02/5636e7c0bc561.png_d250.jpg', 'www.baidu.com', '278457655', 1, 1446452181, 1446452181, 0, 0, 0),
(100010, 0, '测试测试33331', '测试测试33331', '测试测试33331', '&lt;p&gt;测试测试3333测试测试3333测试测试3333测试测试33331&lt;/p&gt;\r\n', 'http://y.zdmimg.com/201511/02/5636e7c0bc561.png_d250.jpg', 'www.baidu.com', '278457655', 1, 1446779237, 1446452209, 0, 0, 0),
(100011, 0, '测试测试333312', '测试测试333312', '测试测试33331', '&lt;p&gt;测试测试3333测试测试3333测试测试3333测试测试33331222&lt;/p&gt;\r\n', 'http://y.zdmimg.com/201511/02/5636e7c0bc561.png_d250.jpg', 'www.baidu.com', '278457655', 1, 1446452374, 1446452374, 0, 0, 0),
(100012, 0, '哈哈哈哈', '哈哈哈哈', '哈哈哈哈', '&lt;p&gt;哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201510/21/562780933ac13.jpg_d250.jpg', 'www.baidu.com', '278457655', 1, 1446779382, 1446519417, 1, 0, 0),
(100014, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446779712, 1446779712, 0, 0, 0),
(100015, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446779809, 1446779809, 0, 0, 0),
(100016, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446779917, 1446779917, 0, 0, 0),
(100017, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446779927, 1446779927, 0, 0, 0),
(100018, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446779963, 1446779963, 0, 0, 0),
(100019, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446780112, 1446780112, 0, 0, 0),
(100020, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446780143, 1446780143, 0, 0, 0),
(100021, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446780233, 1446780233, 0, 0, 0),
(100022, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446780262, 1446780262, 0, 0, 0),
(100023, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446780267, 1446780267, 0, 0, 0),
(100024, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446780655, 1446780655, 0, 0, 0),
(100025, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446780663, 1446780663, 0, 0, 0),
(100026, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446780746, 1446780746, 0, 0, 0),
(100027, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446780895, 1446780895, 0, 0, 0),
(100028, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446780975, 1446780975, 0, 0, 0),
(100029, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446780988, 1446780988, 0, 0, 0),
(100030, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446781035, 1446781035, 0, 0, 0),
(100031, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446781054, 1446781054, 0, 0, 0),
(100032, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446781082, 1446781082, 0, 0, 0),
(100033, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446781095, 1446781095, 0, 0, 0),
(100034, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446781128, 1446781128, 0, 0, 0),
(100035, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446781142, 1446781142, 0, 0, 0),
(100036, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446781151, 1446781151, 0, 0, 0),
(100037, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446781177, 1446781177, 0, 0, 0),
(100038, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446781294, 1446781294, 0, 0, 0),
(100039, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446781299, 1446781299, 0, 0, 0),
(100040, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446781334, 1446781334, 0, 0, 0),
(100041, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446791461, 1446791461, 0, 0, 0),
(100042, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446794039, 1446794039, 0, 0, 0),
(100043, 0, '测试标题', '测试描述', '测试价格', '&lt;p&gt;测试测试内容&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/06/563c1998e8e658054.png_d250.jpg', 'http://haitao.smzdm.com/p/355769/', '278457655', 1, 1446794134, 1446794134, 0, 0, 0),
(100044, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447211070, 1447211070, 0, 0, 0),
(100045, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447211093, 1447211093, 0, 0, 0),
(100046, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447211116, 1447211116, 0, 0, 0),
(100047, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447211648, 1447211648, 0, 0, 0),
(100048, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447211684, 1447211684, 0, 0, 0),
(100049, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447211718, 1447211718, 0, 0, 0),
(100050, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212180, 1447212180, 0, 0, 0),
(100051, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212215, 1447212215, 0, 0, 0),
(100052, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212246, 1447212246, 0, 0, 0),
(100053, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212257, 1447212257, 0, 0, 0),
(100054, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212305, 1447212305, 0, 0, 0),
(100055, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212337, 1447212337, 0, 0, 0),
(100056, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212346, 1447212346, 0, 0, 0),
(100057, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212475, 1447212475, 0, 0, 0),
(100058, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212489, 1447212489, 0, 0, 0),
(100059, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212654, 1447212654, 0, 0, 0),
(100060, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212918, 1447212918, 0, 0, 0),
(100061, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212929, 1447212929, 0, 0, 0),
(100062, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1447212940, 1447212940, 0, 0, 0),
(100063, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 1, 1448271391, 1447212947, 0, 0, 0),
(100064, 0, '111', '111', '111', '&lt;p&gt;111111&lt;/p&gt;\r\n', '111111', '1111', '278457655', 1, 1447233592, 1447233592, 0, 0, 0),
(100065, 0, '111', '111', '111', '&lt;p&gt;111111&lt;/p&gt;\r\n', '111111', '1111', '278457655', 1, 1447233618, 1447233618, 0, 0, 0),
(100066, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565', '278457655', 4, 1447315627, 1447315627, 0, 0, 0),
(100067, 0, 'acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）', '京东目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。', '4399元包邮（双重优惠）', '&lt;p&gt;&lt;a href="http://www.smzdm.com/URL/AA/YH/793C599B8DDBD00F" onclick="ga(''send'', ''event'',''电商'',''国内_优惠精选_web__电脑数码_详情_内容链接_jd.com_263'',''721565_acer 宏碁 T5000-50HZ 15.6英寸游戏本（i5-6300HQ、4G、1T、GTX950M 、1080P）_4399元包邮（双重优惠）'');" target="_blank"&gt;京东&lt;/a&gt;目前特价至4799元，下单立减300元，可使用3000-100优惠券，低至4399元，如果有4000-200价格更低。&lt;/p&gt;\r\n\r\n&lt;p&gt;i5-6300HQ、4G、1T、GTX950M 、1080P，背光键盘，价格不错~&lt;/p&gt;\r\n\r\n&lt;p&gt;我站目前还有京东全品类优惠券可领取，每日发放，叠加双11促销，价格更实惠，&lt;a href="http://quan.smzdm.com/jd" target="_blank''"&gt;&lt;strong&gt;戳此领取&lt;/strong&gt;&lt;/a&gt;，数量有限，先到先得哦~&lt;/p&gt;\r\n\r\n&lt;p&gt;值友爆料原文&lt;/p&gt;\r\n\r\n&lt;p&gt;使用4000-200优惠券即可4288到手，六代i5，950m好价&lt;/p&gt;\r\n', 'http://ym.zdmimg.com/201511/11/5642a56f39ab4.jpg_d250.jpg', 'http://www.smzdm.com/p/721565?t=1&amp;amp;t=2', '278457655', 1, 1448335590, 1447315770, 0, 0, 0),
(100068, 0, 'aaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaaaaaaa', '&lt;p&gt;aaaaaaaaaaaa&lt;/p&gt;\r\n', 'aaaaaaaaaaaa', 'aaaaa', '278457655', 1, 1448329542, 1448329542, 1, 0, 0),
(100069, 0, 'aaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaa', '&lt;p&gt;aaaaaaaaaaaaaaaaaaa&lt;/p&gt;\r\n', 'aaaaaaaaaaaa', 'aaaaaaaaaaaaa', '278457655', 1, 1448335734, 1448335734, 1, 0, 0),
(100070, 0, 'asdasd', 'asdasd', 'asdasd', '&lt;p&gt;asdasdasd&lt;/p&gt;\r\n', 'asdasd', 'asdasd', '278457655', 1, 1448526531, 1448526531, 1, 0, 0),
(100071, 0, 'asdasd', 'asdasd', 'asdasd', '&lt;p&gt;asdasdasd&lt;/p&gt;\r\n', 'asdasd', 'asdasd', '278457655', 1, 1448526711, 1448526711, 1, 0, 0),
(100072, 0, 'asdasd', 'asdasd', 'asdasd', '&lt;p&gt;asdasdasd&lt;/p&gt;\r\n', 'asdasd', 'asdasd', '278457655', 1, 1448526850, 1448526743, 1, 0, 0),
(100073, 0, 'aaaa', 'aaaa', 'aaaa', '&lt;p&gt;aaaa&lt;/p&gt;\r\n', 'aaaa', 'aaaaa', '278457655', 1, 1448526914, 1448526914, 1, 0, 0),
(100074, 0, 'bbbb', 'bbbb', 'bbbbb', '&lt;p&gt;aaaaaaa&lt;/p&gt;\r\n', 'bbbb', 'bbbbb', '278457655', 1, 1450937556, 1448527146, 1, 0, 0),
(100075, 0, 'bbbb', 'bbbb', 'bbbbb', '&lt;p&gt;aaaaaaa&lt;/p&gt;\r\n', 'bbbb', 'bbbbb', '278457655', 1, 1454490425, 1448527198, 1, 1, 1),
(100076, 0, '收拾收拾', '嗖嗖嗖', '嗖嗖嗖', '&lt;p&gt;as大大缩短&lt;/p&gt;\r\n', 'asdad', 'http://www1.tyfo.com/tyfo/goods/goodsGet?goodsId=110997', '278457655', 1, 1454400744, 1454400744, 2, 0, 0),
(100077, 0, '收拾收拾', '嗖嗖嗖', '嗖嗖嗖', '&lt;p&gt;as大大缩短&lt;/p&gt;\r\n', 'asdad', 'http://www1.tyfo.com/tyfo/goods/goodsGet?goodsId=110997', '278457655', 1, 1454400781, 1454400781, 2, 0, 0),
(100078, 0, '阿斯达斯的', 'asdad', 'a&amp;#039;s&amp;#039;da&amp;#039;s&amp;#039;d', '&lt;p&gt;阿斯达斯的&lt;/p&gt;\r\n', '1111', '成都市高新区', '278457655', 1, 1454485263, 1454485263, 3, 0, 0),
(100079, 0, '阿斯达斯的', 'asdad', 'a&amp;#039;s&amp;#039;da&amp;#039;s&amp;#039;d', '&lt;p&gt;阿斯达斯的&lt;/p&gt;\r\n', '1111', '成都市高新区', '278457655', 1, 1454489719, 1454489521, 3, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecms_article_draft`
--

CREATE TABLE `ecms_article_draft` (
  `id` int(11) NOT NULL,
  `data` text NOT NULL,
  `publish_userid` varchar(128) NOT NULL,
  `createtime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecms_article_draft`
--

INSERT INTO `ecms_article_draft` (`id`, `data`, `publish_userid`, `createtime`) VALUES
(5, '{"title":"2222","intro":"","price":"","content":"&lt;p&gt;1111121111&lt;\\/p&gt;\\r\\n","headimg":"","redirect_url":"","source_id":0,"pcates":[],"cates":[],"tags":[]}', '278457655', 1450839693);

-- --------------------------------------------------------

--
-- 表的结构 `ecms_category`
--

CREATE TABLE `ecms_category` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL COMMENT '父类id，顶级类该值为0',
  `name` varchar(128) NOT NULL COMMENT '类别名称',
  `status` tinyint(4) NOT NULL COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecms_category`
--

INSERT INTO `ecms_category` (`id`, `pid`, `name`, `status`) VALUES
(1, 0, '好产品', 1),
(2, 1, '小产品', 1),
(3, 2, '小小产品', 1),
(4, 1, '美产品', 1),
(5, 2, '小二产品', 1),
(6, 1, '新产品', 1),
(7, 4, '美美产品', 1),
(8, 4, '美二产品', 1),
(9, 0, '全新产品', 1),
(10, 9, '全新一类', 2),
(11, 9, '全新二类', 2),
(12, 2, '测试顶级分类', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecms_cate_articles`
--

CREATE TABLE `ecms_cate_articles` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL COMMENT '类别id',
  `article_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecms_cate_articles`
--

INSERT INTO `ecms_cate_articles` (`id`, `cate_id`, `article_id`) VALUES
(3, 3, 4),
(4, 12, 4),
(28, 5, 3),
(29, 12, 100000),
(30, 12, 100001),
(31, 12, 100002),
(32, 12, 100003),
(33, 12, 100004),
(34, 12, 100005),
(35, 1, 100006),
(36, 6, 100006),
(37, 1, 100007),
(38, 6, 100007),
(39, 1, 100008),
(40, 6, 100008),
(41, 1, 100010),
(42, 6, 100010),
(43, 1, 100011),
(44, 6, 100011),
(45, 9, 100012),
(46, 8, 100012),
(47, 9, 100013),
(48, 10, 100013),
(49, 9, 100014),
(50, 10, 100014),
(51, 9, 100015),
(52, 10, 100015),
(53, 9, 100016),
(54, 10, 100016),
(55, 9, 100017),
(56, 10, 100017),
(57, 9, 100018),
(58, 10, 100018),
(59, 9, 100019),
(60, 10, 100019),
(61, 9, 100020),
(62, 10, 100020),
(63, 9, 100021),
(64, 10, 100021),
(65, 9, 100022),
(66, 10, 100022),
(67, 9, 100023),
(68, 10, 100023),
(69, 9, 100024),
(70, 10, 100024),
(71, 9, 100025),
(72, 10, 100025),
(73, 9, 100026),
(74, 10, 100026),
(75, 9, 100027),
(76, 10, 100027),
(77, 9, 100028),
(78, 10, 100028),
(79, 9, 100029),
(80, 10, 100029),
(81, 9, 100030),
(82, 10, 100030),
(83, 9, 100031),
(84, 10, 100031),
(85, 9, 100032),
(86, 10, 100032),
(87, 9, 100033),
(88, 10, 100033),
(89, 9, 100034),
(90, 10, 100034),
(91, 9, 100035),
(92, 10, 100035),
(93, 9, 100036),
(94, 10, 100036),
(95, 9, 100037),
(96, 10, 100037),
(97, 9, 100038),
(98, 10, 100038),
(99, 9, 100039),
(100, 10, 100039),
(101, 9, 100040),
(102, 10, 100040),
(103, 9, 100041),
(104, 10, 100041),
(105, 9, 100042),
(106, 10, 100042),
(107, 9, 100043),
(108, 10, 100043),
(109, 3, 100044),
(110, 2, 100044),
(111, 1, 100044),
(112, 3, 100045),
(113, 2, 100045),
(114, 1, 100045),
(115, 3, 100046),
(116, 2, 100046),
(117, 1, 100046),
(118, 3, 100047),
(119, 2, 100047),
(120, 1, 100047),
(121, 3, 100048),
(122, 2, 100048),
(123, 1, 100048),
(124, 3, 100049),
(125, 2, 100049),
(126, 1, 100049),
(127, 3, 100050),
(128, 2, 100050),
(129, 1, 100050),
(130, 3, 100051),
(131, 2, 100051),
(132, 1, 100051),
(133, 3, 100052),
(134, 2, 100052),
(135, 1, 100052),
(136, 3, 100053),
(137, 2, 100053),
(138, 1, 100053),
(139, 3, 100054),
(140, 2, 100054),
(141, 1, 100054),
(142, 3, 100055),
(143, 2, 100055),
(144, 1, 100055),
(145, 3, 100056),
(146, 2, 100056),
(147, 1, 100056),
(148, 3, 100057),
(149, 2, 100057),
(150, 1, 100057),
(151, 3, 100058),
(152, 2, 100058),
(153, 1, 100058),
(154, 3, 100059),
(155, 2, 100059),
(156, 1, 100059),
(157, 3, 100060),
(158, 2, 100060),
(159, 1, 100060),
(160, 3, 100061),
(161, 2, 100061),
(162, 1, 100061),
(163, 3, 100062),
(164, 2, 100062),
(165, 1, 100062),
(166, 3, 100063),
(168, 1, 100063),
(169, 1, 100064),
(170, 1, 100065),
(171, 1, 100066),
(172, 2, 100066),
(173, 3, 100066),
(174, 1, 0),
(175, 2, 0),
(176, 3, 0),
(177, 1, 100067),
(178, 1, 100067),
(179, 1, 100068),
(180, 1, 100069),
(181, 2, 100069),
(182, 3, 100070),
(183, 3, 100071),
(184, 3, 100072),
(185, 7, 100073),
(186, 8, 100073),
(187, 3, 100074),
(188, 5, 100074),
(189, 3, 100075),
(191, 5, 100075),
(192, 3, 100074),
(193, 5, 100074),
(194, 3, 100076),
(195, 3, 100077),
(196, 12, 100078),
(197, 12, 100079);

-- --------------------------------------------------------

--
-- 表的结构 `ecms_channel`
--

CREATE TABLE `ecms_channel` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL COMMENT '频道名称',
  `status` tinyint(4) NOT NULL COMMENT '频道状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecms_channel`
--

INSERT INTO `ecms_channel` (`id`, `name`, `status`) VALUES
(1, '测试频道', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecms_chn_articles`
--

CREATE TABLE `ecms_chn_articles` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecms_pcate_articles`
--

CREATE TABLE `ecms_pcate_articles` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL COMMENT '类别id',
  `article_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecms_pcate_articles`
--

INSERT INTO `ecms_pcate_articles` (`id`, `cate_id`, `article_id`) VALUES
(3, 3, 4),
(11, 12, 3),
(12, 3, 100000),
(13, 3, 100001),
(14, 12, 100002),
(15, 12, 100003),
(16, 12, 100004),
(17, 12, 100005),
(18, 3, 100006),
(19, 1, 100006),
(20, 3, 100007),
(21, 1, 100007),
(22, 3, 100008),
(23, 1, 100008),
(24, 3, 100009),
(25, 3, 100010),
(26, 1, 100010),
(27, 3, 100011),
(28, 1, 100011),
(29, 9, 100012),
(30, 11, 100012),
(31, 1, 100013),
(32, 6, 100013),
(33, 3, 100013),
(34, 1, 100014),
(35, 6, 100014),
(36, 3, 100014),
(37, 1, 100015),
(38, 6, 100015),
(39, 3, 100015),
(40, 1, 100016),
(41, 6, 100016),
(42, 3, 100016),
(43, 1, 100017),
(44, 6, 100017),
(45, 3, 100017),
(46, 1, 100018),
(47, 6, 100018),
(48, 3, 100018),
(49, 1, 100019),
(50, 6, 100019),
(51, 3, 100019),
(52, 1, 100020),
(53, 6, 100020),
(54, 3, 100020),
(55, 1, 100021),
(56, 6, 100021),
(57, 3, 100021),
(58, 1, 100022),
(59, 6, 100022),
(60, 3, 100022),
(61, 1, 100023),
(62, 6, 100023),
(63, 3, 100023),
(64, 1, 100024),
(65, 6, 100024),
(66, 3, 100024),
(67, 1, 100025),
(68, 6, 100025),
(69, 3, 100025),
(70, 1, 100026),
(71, 6, 100026),
(72, 3, 100026),
(73, 1, 100027),
(74, 6, 100027),
(75, 3, 100027),
(76, 1, 100028),
(77, 6, 100028),
(78, 3, 100028),
(79, 1, 100029),
(80, 6, 100029),
(81, 3, 100029),
(82, 1, 100030),
(83, 6, 100030),
(84, 3, 100030),
(85, 1, 100031),
(86, 6, 100031),
(87, 3, 100031),
(88, 1, 100032),
(89, 6, 100032),
(90, 3, 100032),
(91, 1, 100033),
(92, 6, 100033),
(93, 3, 100033),
(94, 1, 100034),
(95, 6, 100034),
(96, 3, 100034),
(97, 1, 100035),
(98, 6, 100035),
(99, 3, 100035),
(100, 1, 100036),
(101, 6, 100036),
(102, 3, 100036),
(103, 1, 100037),
(104, 6, 100037),
(105, 3, 100037),
(106, 1, 100038),
(107, 6, 100038),
(108, 3, 100038),
(109, 1, 100039),
(110, 6, 100039),
(111, 3, 100039),
(112, 1, 100040),
(113, 6, 100040),
(114, 3, 100040),
(115, 1, 100041),
(116, 6, 100041),
(117, 3, 100041),
(118, 1, 100042),
(119, 6, 100042),
(120, 3, 100042),
(121, 1, 100043),
(122, 6, 100043),
(123, 3, 100043),
(124, 1, 100044),
(125, 2, 100044),
(126, 1, 100045),
(127, 2, 100045),
(128, 1, 100046),
(129, 2, 100046),
(130, 1, 100047),
(131, 2, 100047),
(132, 1, 100048),
(133, 2, 100048),
(134, 1, 100049),
(135, 2, 100049),
(136, 1, 100050),
(137, 2, 100050),
(138, 1, 100051),
(139, 2, 100051),
(140, 1, 100052),
(141, 2, 100052),
(142, 1, 100053),
(143, 2, 100053),
(144, 1, 100054),
(145, 2, 100054),
(146, 1, 100055),
(147, 2, 100055),
(148, 1, 100056),
(149, 2, 100056),
(150, 1, 100057),
(151, 2, 100057),
(152, 1, 100058),
(153, 2, 100058),
(154, 1, 100059),
(155, 2, 100059),
(156, 1, 100060),
(157, 2, 100060),
(158, 1, 100061),
(159, 2, 100061),
(160, 1, 100062),
(161, 2, 100062),
(162, 1, 100063),
(163, 2, 100063),
(164, 1, 100064),
(165, 1, 100065),
(166, 1, 100066),
(167, 2, 100066),
(168, 1, 0),
(169, 2, 0),
(170, 1, 100067),
(171, 1, 100067),
(172, 1, 100068),
(173, 1, 100069),
(174, 5, 100070),
(175, 8, 100070),
(176, 5, 100071),
(177, 8, 100071),
(178, 5, 100072),
(179, 8, 100072),
(180, 3, 100073),
(181, 7, 100073),
(182, 7, 100074),
(183, 8, 100074),
(186, 10, 100075),
(187, 11, 100075),
(188, 7, 100074),
(189, 8, 100074),
(190, 10, 100076),
(191, 10, 100077),
(192, 10, 100078),
(193, 10, 100079);

-- --------------------------------------------------------

--
-- 表的结构 `ecms_product_category`
--

CREATE TABLE `ecms_product_category` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL COMMENT '父类id，顶级类该值为0',
  `name` varchar(128) NOT NULL COMMENT '类别名称',
  `status` tinyint(4) NOT NULL COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecms_product_category`
--

INSERT INTO `ecms_product_category` (`id`, `pid`, `name`, `status`) VALUES
(1, 0, '好产品12', 1),
(2, 1, '小产品', 1),
(3, 2, '小小产品', 1),
(4, 1, '美产品', 1),
(5, 2, '小二产品', 1),
(6, 1, '新产品', 1),
(7, 4, '美美产品', 1),
(8, 4, '美二产品', 1),
(9, 0, '全新产品', 1),
(10, 9, '全新一类', 1),
(11, 9, '全新二类', 1),
(12, 2, '测试顶级分类', 1),
(13, 0, 'dddddd', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecms_source`
--

CREATE TABLE `ecms_source` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL COMMENT '来源名称',
  `intro` text COMMENT '来源简介',
  `home` varchar(256) DEFAULT NULL COMMENT '来源url',
  `logo` varchar(256) DEFAULT '',
  `regular` varchar(256) DEFAULT NULL COMMENT '匹配来源的规则，正则表达式',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `createtime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecms_source`
--

INSERT INTO `ecms_source` (`id`, `name`, `intro`, `home`, `logo`, `regular`, `status`, `createtime`) VALUES
(1, '四川制造', '四川制造', 'http://www.sczz.biz/', 'wwww', '', 1, 1443082943),
(2, '四川制造', '四川制造', 'http://www.sczz.biz/', NULL, '', 1, 1443082943),
(3, '线下商品', '', '', 'undefined', NULL, 1, 1454484884);

-- --------------------------------------------------------

--
-- 表的结构 `ecms_tags`
--

CREATE TABLE `ecms_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL COMMENT '标签名称',
  `status` tinyint(4) NOT NULL COMMENT '标签状态',
  `createtime` int(11) NOT NULL COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecms_tags`
--

INSERT INTO `ecms_tags` (`id`, `name`, `status`, `createtime`) VALUES
(1, '单独', 1, 1443518895),
(2, '哈哈哈', 1, 1453864075),
(3, '测试标签', 1, 1453864082),
(4, '哈测试', 1, 1453864093);

-- --------------------------------------------------------

--
-- 表的结构 `ecms_tag_articles`
--

CREATE TABLE `ecms_tag_articles` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecms_tag_articles`
--

INSERT INTO `ecms_tag_articles` (`id`, `tag_id`, `article_id`) VALUES
(6, 1, 3),
(7, 1, 4),
(8, 1, 100000),
(9, 1, 100001),
(10, 1, 100002),
(11, 1, 100003),
(12, 1, 100004),
(13, 1, 100005),
(14, 1, 100006),
(15, 1, 100007),
(16, 1, 100008),
(17, 1, 100010),
(18, 1, 100011),
(19, 1, 100012),
(20, 1, 100013),
(21, 1, 100014),
(22, 1, 100015),
(23, 1, 100016),
(24, 1, 100017),
(25, 1, 100018),
(26, 1, 100019),
(27, 1, 100020),
(28, 1, 100021),
(29, 1, 100022),
(30, 1, 100023),
(31, 1, 100024),
(32, 1, 100025),
(33, 1, 100026),
(34, 1, 100027),
(35, 1, 100028),
(36, 1, 100029),
(37, 1, 100030),
(38, 1, 100031),
(39, 1, 100032),
(40, 1, 100033),
(41, 1, 100034),
(42, 1, 100035),
(43, 1, 100036),
(44, 1, 100037),
(45, 1, 100038),
(46, 1, 100039),
(47, 1, 100040),
(48, 1, 100041),
(49, 1, 100042),
(50, 1, 100043),
(51, 1, 100044),
(52, 1, 100045),
(53, 1, 100046),
(54, 1, 100047),
(55, 1, 100048),
(56, 1, 100049),
(57, 1, 100050),
(58, 1, 100051),
(59, 1, 100052),
(60, 1, 100053),
(61, 1, 100054),
(62, 1, 100055),
(63, 1, 100056),
(64, 1, 100057),
(65, 1, 100058),
(66, 1, 100059),
(67, 1, 100060),
(68, 1, 100061),
(69, 1, 100062),
(71, 1, 100064),
(72, 1, 100065),
(73, 1, 100066),
(74, 1, 0),
(77, 1, 100067),
(79, 1, 100068),
(80, 1, 100069),
(81, 1, 100070),
(82, 1, 100071),
(83, 1, 100072),
(84, 1, 100073),
(85, 1, 100074),
(86, 1, 100075),
(87, 1, 100074),
(88, 4, 100076),
(89, 4, 100077);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac_articles`
--
ALTER TABLE `ac_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_article_activity`
--
ALTER TABLE `ac_article_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_article_draft`
--
ALTER TABLE `ac_article_draft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_channel`
--
ALTER TABLE `ac_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_location`
--
ALTER TABLE `ac_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_tags`
--
ALTER TABLE `ac_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac_tag_articles`
--
ALTER TABLE `ac_tag_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_city_user`
--
ALTER TABLE `cd_city_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_city_user_relation`
--
ALTER TABLE `cd_city_user_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecms_admin`
--
ALTER TABLE `ecms_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecms_articles`
--
ALTER TABLE `ecms_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecms_article_draft`
--
ALTER TABLE `ecms_article_draft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecms_category`
--
ALTER TABLE `ecms_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecms_cate_articles`
--
ALTER TABLE `ecms_cate_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecms_channel`
--
ALTER TABLE `ecms_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecms_pcate_articles`
--
ALTER TABLE `ecms_pcate_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecms_product_category`
--
ALTER TABLE `ecms_product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecms_source`
--
ALTER TABLE `ecms_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecms_tags`
--
ALTER TABLE `ecms_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecms_tag_articles`
--
ALTER TABLE `ecms_tag_articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac_articles`
--
ALTER TABLE `ac_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `ac_article_activity`
--
ALTER TABLE `ac_article_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `ac_article_draft`
--
ALTER TABLE `ac_article_draft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ac_channel`
--
ALTER TABLE `ac_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ac_location`
--
ALTER TABLE `ac_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ac_tags`
--
ALTER TABLE `ac_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ac_tag_articles`
--
ALTER TABLE `ac_tag_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `cd_city_user`
--
ALTER TABLE `cd_city_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cd_city_user_relation`
--
ALTER TABLE `cd_city_user_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecms_admin`
--
ALTER TABLE `ecms_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ecms_articles`
--
ALTER TABLE `ecms_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100080;
--
-- AUTO_INCREMENT for table `ecms_article_draft`
--
ALTER TABLE `ecms_article_draft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ecms_category`
--
ALTER TABLE `ecms_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ecms_cate_articles`
--
ALTER TABLE `ecms_cate_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
--
-- AUTO_INCREMENT for table `ecms_channel`
--
ALTER TABLE `ecms_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecms_pcate_articles`
--
ALTER TABLE `ecms_pcate_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT for table `ecms_product_category`
--
ALTER TABLE `ecms_product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ecms_source`
--
ALTER TABLE `ecms_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ecms_tags`
--
ALTER TABLE `ecms_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecms_tag_articles`
--
ALTER TABLE `ecms_tag_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
