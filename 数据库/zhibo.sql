-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-05-10 18:58:21
-- 服务器版本： 5.5.57-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zhibo`
--

-- --------------------------------------------------------

--
-- 表的结构 `chat_apps_files`
--

CREATE TABLE IF NOT EXISTS `chat_apps_files` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `atime` int(11) DEFAULT NULL,
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_apps_files`
--

INSERT INTO `chat_apps_files` (`id`, `title`, `url`, `atime`, `user`) VALUES
(6, '西部贵金属产品合约表', '                         西部贵金属订购规则																 订购平台	西部贵金属现货交易系统															 交易品种	西贵银				西贵铜				精矿石		天然气					 产品规格	1kg	15kg	50kg	100kg	1t	5t	20t	50t	500kg	1t	1t	30t	60t	1t	50t	100t 保证金	100%	5%	3%	2%	100%	3%	2%	2%	3%	2%	100%	3%	2%	100%	3%	2% 点差	6个点				40个点				0.6个点		8个点					 交易手续费	万分之六				万分之六				万分之六		万分之六					 计价单位	元/kg				元/t				元/kg		元/t					 止盈止损点	40个点				120个点				4个点		40个点			40个点		 最小变动单位	1/kg				1/t				0.1元/kg		1/t					 最小交易单位	1手															 单笔最小交易量（单位：手）	1手															 单笔最大持仓量（单位：手）	1000手	100手	40手	20手	100手	50手	20手	10手	40手	20手	1000手	40手	20手	1000手	40手	20手 单账户最大持仓量（单位：手）	20000手	2000手	600手	300手	4000手	400手	150手	100手	600手	300手	20000手	600手	300手	20000手	600手	300手 隔夜利息	总金额的万分之一															 交易时间	周一08:00—周六04:00															 结算时间	交易日凌晨04:00—06:00															 实物最小交收单位	15kg				25t				10t		30t					 实物交收申报时间	交易日16:00—16:30															 交易方式	T+0双向无间断交易															 订购规则	卖出、回购															 强制平仓	风险率等于或低于50%															 存管银行	中国银行/平安银行/平安易宝															', 1479984005, 'admin'),
(7, '6月7好内幕参考早评', '/upload/upfile/day_170607/201706071056409963.doc', 1496804208, 'guangting');

-- --------------------------------------------------------

--
-- 表的结构 `chat_apps_hd`
--

CREATE TABLE IF NOT EXISTS `chat_apps_hd` (
  `id` int(11) NOT NULL,
  `ktime` int(11) DEFAULT NULL,
  `ptime` int(11) DEFAULT NULL,
  `sp` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kcj` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cw` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zsj` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zyj` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pcj` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lx` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sn` text COLLATE utf8_unicode_ci,
  `z` int(11) DEFAULT '0',
  `ttime` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_apps_hd`
--

INSERT INTO `chat_apps_hd` (`id`, `ktime`, `ptime`, `sp`, `kcj`, `cw`, `zsj`, `zyj`, `pcj`, `lx`, `username`, `uname`, `sn`, `z`, `ttime`) VALUES
(7, 1479801979, 1479804825, '石化1号', '4850', '10', '4885', '4820', '4824', '现价卖出', '简老师', NULL, '提前平仓，一时半会下不去', 1, 1479802047),
(2, 1479198265, 1479219960, '天然气', '4760', '10', '4800', '4710', '4702', '现价卖出', '熊老师', NULL, '', 1, 1479198328),
(3, 1479219002, 1479219840, '天然气', '4742', '10', '4780', '4700', '4702', '现价卖出', '简老师', NULL, '', 1, 1479219035),
(4, 1479283361, 1479219960, '铜', '40650', '10', '40850', '40400', '40400', '现价卖出', '熊老师', NULL, '', 1, 1479283432),
(5, 1479734673, 1479735840, '天然气', '5040', '10', '5090', '5000', '5090', '现价卖出', '徐老师', NULL, '', 0, 1479734730),
(6, 1479734883, 1479735840, '石化1号', '4719', '10', '4690', '4750', '4758', '现价买入', '徐老师', NULL, '', 1, 1479735019),
(8, 1479805841, 1479807540, '天然气', '5168', '10', '5200', '5130', '5134', '现价卖出', '欧阳老师', NULL, '提前离场', 3, 1479805883),
(9, 1479808224, 1479812580, '铜', '41651', '10', '41851', '41350', '41405', '现价卖出', '欧阳老师', NULL, '', 2, 1479808327),
(10, 1479823757, 1479828720, '白银', '3379', '10', '3415', '3340', '3340', '现价卖出', '欧阳老师', NULL, '', 1, 1479823798),
(11, 1479827556, 1479872880, '石化一号', '4843', '10', '4800', '4880', '4800', '现价买入', '徐老师', NULL, '', 1, 1479827605),
(12, 1479827676, 1479873060, '天然气', '5154', '10', '5110', '5190', '5219', '现价买入', '徐老师', NULL, '超出盈利', 2, 1479827726),
(17, 1479894286, 1479906840, '石化一号', '4813', '10', '4845', '4790', '4790', '现价卖出', '欧阳老师', NULL, '', 2, 1479894340),
(16, 1479878246, 1479880080, '铜', '41300', '10', '41100', '41500', '41500', '现价买入', '张老师', NULL, '', 2, 1479878279),
(18, 1479906483, 1479909480, '天然气', '5086', '10', '5040', '5120', '5124', '现价买入', '徐老师', NULL, '', 2, 1479906563),
(19, 1479907836, 1479913980, '铜', '41200', '10', '40900', '41400', '41400', '现价买入', '徐老师', NULL, '', 2, 1479907895),
(20, 1479915141, 1479915240, '石化1号', '4801', '10', '4760', '4845', '4842', '现价买入', '徐老师', NULL, '提前出局', 2, 1479915185),
(21, 1479966245, 1479974640, '铜', '43500', '10', '43650', '43100', '43000', '现价卖出', '熊老师', NULL, '超额完成', 2, 1479966309),
(26, 1480064480, 1480065660, '石化1号', '4755', '10', '4780', '4730', '4775', '现价卖出', '欧阳老师', NULL, '', 2, 1480064530),
(23, 1479994733, 1479996300, '铜', '43627', '10', '43300', '43900', '43799', '现价买入', '徐老师', NULL, '提前离场', 2, 1479994771),
(25, 1480039300, 1480052160, '澳鑫  铜', '42765', '10', '42500', '43000', '42992', '现价买入', '张老师', NULL, '', 2, 1480039389),
(28, 1480304409, 1480319340, '石化1号', '4612', '10', '4645', '4580', '4576', '现价卖出', '简老师', NULL, '', 2, 1480304461),
(30, 1480390544, 1480411500, '石化1号', '4686', '10', '4720', '4650', '4655', '现价卖出', '简老师', NULL, '提前离场', 3, 1480390622),
(31, 1480494758, 1480504260, '西贵铜', '38000', '10', '38300', '37800', '38300', '现价卖出', '欧阳老师', NULL, '', 1, 1480494867),
(32, 1480503710, 1480505940, '西贵沥青', '3260', '10', '3230', '3300', '3295', '现价买入', '简老师', NULL, '', 2, 1480503756),
(33, 1480504566, 1480515240, '西贵铜', '38300', '10', '38000', '38500', '38681', '现价买入', '简老师', NULL, '', 2, 1480504602),
(34, 1480515245, 1480515780, '西贵天然气', '4745', '10', '4710', '4780', '4777', '现价买入', '欧阳老师', NULL, '', 3, 1480515321),
(35, 1480563897, 1480571820, '西贵沥青', '3364', '10', '3330', '3400', '3399', '现价买入', '简老师', NULL, '', 3, 1480563950),
(37, 1480595889, 1480599300, '西贵天然气', '4836', '10', '4800', '4860', '4868', '现价买入', '简老师', NULL, '', 3, 1480595999),
(40, 1480901445, 1480902840, '西贵铜', '38110', '10', '38310', '37900', '38310', '现价卖出', '欧阳老师', NULL, '', 3, 1480901497),
(39, 1480677121, 1480692180, '沥青', '3425', '10', '3455', '3390', '3450', '现价卖出', '简老师', NULL, '', 2, 1480677154),
(41, 1480920630, 1480922909, '西部白银', '3581', '10', '3610', '3530', '3562', '现价卖出', '简老师', NULL, '', 4, 1480921078),
(43, 1480936331, 1480940400, '西贵天然气', '5016', '10', '4990', '5050', '5059', '现价买入', '简老师', NULL, '', 3, 1480936420),
(48, 1481011697, 1481019060, '西部精矿石', '455.39', '10', '453.71', '458.12', '459.08', '现价买入', '欧阳老师', NULL, '', 3, 1481011813),
(51, 1481031144, 1481041377, '西部天然气', '5226', '10', '5180', '5270', '5241', '现价买入', '徐老师', NULL, '', 3, 1481031208),
(49, 1481014547, 1481030400, '西贵沥青', '3476', '10', '3500', '3440', '3439', '现价卖出', '欧阳老师', NULL, '', 3, 1481014608),
(50, 1481020084, 1481027280, '西贵天然气', '5228', '10', '5199', '5060', '5299', '现价买入', '简老师', NULL, '超强行情', 4, 1481020130),
(131, 1488801912, 1488805689, '青岛铜', '38041', '10', '37840', '38340', '38181', '现价买入', '客服菲菲', NULL, '', 0, 1488801978),
(170, 1490616891, 1490621647, '青岛沥青', '2370', '10', '2390', '2350', '2355', '现价卖出', '客服菲菲', NULL, '', 1, 1490616923),
(208, 1494341725, 1494349742, '青岛白银', '3380', '10', '3360', '4010', '3372', '现价买入', '客服汐汐', NULL, '', 1, 1494341945),
(200, 1493714486, 1493730167, '青岛白银', '3550', '10', '3530', '3580', '3524', '现价买入', '客服汐汐', NULL, '', 1, 1493714525),
(201, 1493796308, 1493822025, '青岛沥青', '2391', '10', '2410', '2360', '2365', '现价卖出', '客服晨晨', NULL, '', 2, 1493796363),
(202, 1493821627, 1493822000, '青岛沥青', '2391', '10', '2420', '2340', '2364', '现价卖出', '阿美', NULL, '', 1, 1493821687),
(161, 1490085362, 1490104516, '青岛沥青', '2458', '10', '2480', '2428', '2443', '现价卖出', '阿美', NULL, '', 1, 1490085439),
(192, 1492684726, 1492697751, '青岛铜', '36722', '10', '36870', '36500', '36605', '现价卖出', '客服菲菲', NULL, '', 2, 1492684779),
(159, 1489759655, 1489771954, '青岛白银', '3633', '10', '3610', '3650', '3637', '现价买入', '客服汐汐', NULL, '', 1, 1489759712),
(185, 1491912525, 1491918313, '青岛铜', '37430', '10', '37600', '37200', '37242', '现价卖出', '客服晨晨', NULL, '', 3, 1491912596),
(155, 1489628116, 1489667792, '青岛铜', '38525', '10', '38300', '38700', '38584', '现价买入', '客服菲菲', NULL, '', 2, 1489628155),
(189, 1492414819, 1492434331, '青岛白银', '3889', '10', '3920', '3848', '3867', '现价卖出', 'guangting', NULL, '', 1, 1492414986),
(156, 1489667774, 1489671491, '青岛铜', '38584', '10', '38730', '38330', '38420', '现价卖出', '客服晨晨', NULL, '', 1, 1489668006),
(154, 1489587168, 1489589582, '青岛沥青', '2441', '10', '2410', '2460', '2438', '现价买入', '客服汐汐', NULL, '', 1, 1489587257),
(173, 1490782667, 1490798039, '青岛沥青', '2429', '10', '2409', '2460', '2450', '现价买入', '客服菲菲', NULL, '', 1, 1490782778),
(151, 1489410822, 1489428181, '青岛白银', '3557', '10', '3540', '3530', '3550', '现价买入', '客服汐汐', NULL, '', 2, 1489410919),
(140, 1488950264, 1488963436, '青岛铜', '37700', '10', '37500', '38000', '37743', '现价买入', '客服晨晨', NULL, '', 2, 1488950307),
(175, 1490872764, 1490876687, '青岛沥青', '2466', '10', '2450', '2499', '2483', '现价买入', '客服菲菲', NULL, '', 1, 1490872830),
(137, 1488881540, 1488892811, '青岛沥青', '2668', '10', '2690', '2640', '2686', '现价卖出', '客服菲菲', NULL, '', 1, 1488881604),
(138, 1488892132, 1488896358, '青岛铜', '37890', '10', '37700', '38100', '37924', '现价买入', '客服汐汐', NULL, '', 1, 1488892262),
(141, 1488972494, 1488980549, '青岛铜', '37618', '10', '37400', '37900', '37771', '现价买入', '客服菲菲', NULL, '', 1, 1488972546),
(136, 1488863757, 1488892595, '青岛白银', '3706', '10', '3740', '3650', '3680', '现价卖出', '客服晨晨', NULL, '', 1, 1488863838),
(149, 1489130488, NULL, '青岛沥青', '2490', '10', '2520', '2450', NULL, '现价卖出', '客服晨晨', NULL, '', 1, 1489130527),
(128, 1488545115, 1488547510, '青岛铜', '38480', '10', '38300', '38700', '38652', '现价买入', '客服菲菲', NULL, '', 1, 1488545243),
(129, 1488546950, 1488560723, '青岛白银', '3702', '10', '3680', '3730', '3785', '现价买入', '客服汐汐', NULL, '', 0, 1488547258),
(142, 1488979230, NULL, '青岛白银', '3628', '10', '3660', '3670', NULL, '现价卖出', '客服汐汐', NULL, '', 1, 1488979341),
(144, 1489022717, NULL, '青岛白银', '3607', '10', '3590', '3640', NULL, '现价买入', '客服菲菲', NULL, '', 1, 1489022766),
(145, 1489044756, 1489054353, '青岛沥青', '2532', '10', '2550', '2510', '2492', '现价卖出', '客服晨晨', NULL, '', 1, 1489044801),
(146, 1489065094, 1489072973, '青岛白银', '3605', '10', '3630', '3570', '3580', '现价卖出', '客服晨晨', NULL, '', 1, 1489065148),
(147, 1489065259, 1489068765, '青岛沥青', '2470', '10', '2440', '2550', '2558', '现价买入', '客服晨晨', NULL, '', 1, 1489065315),
(148, 1489108923, 1489117053, '青岛铜', '37141', '10', '37300', '36890', '37014', '现价卖出', '客服晨晨', NULL, '', 2, 1489109010),
(132, 1488805991, 1488809028, '青岛沥青', '2658', '10', '2680', '2630', '2665', '现价卖出', '客服汐汐', NULL, '', 1, 1488806230),
(133, 1488806236, 1488816779, '青岛白银', '3729', '10', '3760', '3700', '3714', '现价卖出', '客服汐汐', NULL, '', 0, 1488806520),
(212, 1494473732, 1494490246, '青岛白银', '3395', '20', '3370', '3440', '3412', '现价买入', 'guangting', NULL, '', 1, 1494473770),
(213, 1494487437, 1494490290, '青岛沥青', '2388', '10', '2370', '2410', '2402', '现价买入', '客服晨晨', NULL, '', 1, 1494487482),
(215, 1496719789, NULL, '青岛白银', '3679', '20', '3660', '3720', NULL, '现价买入', 'guangting', NULL, '', 0, 1496719846),
(182, 1491402365, 1491402645, '青岛沥青', '2590', '10', '2610', '2560', '2578', '现价卖出', '客服菲菲', NULL, '', 1, 1491402410),
(177, 1490960209, 1490969578, '青岛白银', '3792', '10', '3770', '3820', '3814', '现价买入', '客服菲菲', NULL, '', 1, 1490960245),
(172, 1490771437, 1490790733, '青岛白银', '3785', '10', '3765', '3810', '3799', '现价买入', '客服晨晨', NULL, '', 1, 1490771466),
(190, 1492498409, 1492522418, '青岛铜', '36750', '10', '36800', '36600', '36546', '现价卖出', '客服晨晨', NULL, '', 1, 1492498474);

-- --------------------------------------------------------

--
-- 表的结构 `chat_apps_jyts`
--

CREATE TABLE IF NOT EXISTS `chat_apps_jyts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txt` text COLLATE utf8_unicode_ci,
  `atime` int(11) DEFAULT NULL,
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `chat_apps_manage`
--

CREATE TABLE IF NOT EXISTS `chat_apps_manage` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ico` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `w` int(11) DEFAULT NULL,
  `h` int(11) DEFAULT NULL,
  `target` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s` smallint(1) DEFAULT '0',
  `ov` int(11) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_apps_manage`
--

INSERT INTO `chat_apps_manage` (`id`, `title`, `ico`, `url`, `w`, `h`, `target`, `s`, `ov`) VALUES
(1, '喊单提醒', '/upload/upfile/day_151126/201511262108182855.png', '/apps/hd.php', 1000, 600, 'POPWin', 0, 99),
(2, '在线答疑', '/upload/upfile/day_151126/201511262108259584.png', '/apps/wt.php', 1000, 600, 'POPWin', 1, 98),
(3, '趋势跟踪', '/upload/upfile/day_151126/201511262111023843.png', '/apps/jyts.php', 1000, 600, 'POPWin', 1, 10),
(4, '核心内参', '/upload/upfile/day_151126/201511262110541219.png', '/apps/scpl.php', 1000, 600, 'POPWin', 1, 11),
(5, '共享文档', '/upload/upfile/day_151126/201511262109003886.png', '/apps/files.php', 700, 500, 'POPWin', 0, 12),
(6, '财经日历', '/upload/upfile/day_151126/201511262108064105.png', 'http://www.jin10.com/jin10.com.html', 850, 630, 'POPWin', 0, 100),
(8, '课程表', '/upload/upfile/day_160702/201607021754035617.png', '/apps/course.php', 666, 383, 'QPWin', 0, 94),
(7, '讲师榜', '/upload/upfile/day_151126/201511262109107436.png', '/apps/rank.php', 820, 600, 'POPWin', 1, 0),
(11, '软件下载', '/upload/upfile/day_151126/201511262108312917.png', 'http://www.cqme.net/xzzx', 1024, 600, 'POPWin', 0, 97),
(12, '免费开户', '/upload/upfile/day_151126/201511262108511445.png', 'http://123.235.56.42:8441/khp/reg.do?ACCOUNT_ID=B2E359AF7A05D23B4FACD24C97D722F9', 1024, 600, 'QPWin', 0, 96),
(13, '关于我们', '/upload/upfile/day_151126/201511262110423569.png', '', 1024, 600, 'QPWin', 1, 95);

-- --------------------------------------------------------

--
-- 表的结构 `chat_apps_rank`
--

CREATE TABLE IF NOT EXISTS `chat_apps_rank` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `vtime` int(11) DEFAULT NULL,
  `vuid` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_apps_rank`
--

INSERT INTO `chat_apps_rank` (`id`, `uid`, `vtime`, `vuid`) VALUES
(1, 3, 1464002933, 1),
(2, 4, 1470108351, 1),
(3, 15, 1476443077, 10),
(4, 15, 1476761747, 13),
(5, 15, 1477883324, 13),
(6, 15, 1478168944, 13),
(7, 15, 1478510470, 13),
(8, 15, 1479106891, 36),
(9, 15, 1479891051, 29),
(10, 15, 1481131398, 13),
(11, 15, 1481787693, 31),
(12, 15, 1483012432, 36),
(13, 15, 1483101864, 36),
(14, 15, 1483715448, 75),
(15, 15, 1484644070, 83),
(16, 15, 1484910304, 13),
(17, 15, 1485257210, 31),
(18, 15, 1486050345, 31),
(19, 15, 1486401785, 31),
(20, 15, 1487771916, 100),
(21, 15, 1490184216, 13),
(22, 15, 1491407272, 143),
(23, 15, 1491914994, 173),
(24, 15, 1492098444, 135),
(25, 15, 1492414120, 36),
(26, 15, 1492443072, 13),
(27, 15, 1492529747, 149),
(28, 15, 1492536333, 13),
(29, 15, 1492694241, 193),
(30, 15, 1493019312, 209),
(31, 15, 1493119401, 13),
(32, 15, 1493182705, 13),
(33, 15, 1493211747, 220),
(34, 15, 1493354540, 230),
(35, 15, 1493357140, 228),
(36, 15, 1493898575, 228),
(37, 15, 1494262706, 264),
(38, 15, 1494563954, 13);

-- --------------------------------------------------------

--
-- 表的结构 `chat_apps_scpl`
--

CREATE TABLE IF NOT EXISTS `chat_apps_scpl` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txt` text COLLATE utf8_unicode_ci,
  `atime` int(11) DEFAULT NULL,
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dj` smallint(1) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_apps_scpl`
--

INSERT INTO `chat_apps_scpl` (`id`, `title`, `txt`, `atime`, `user`, `dj`) VALUES
(4, '市场聚焦本周非农报告', '<p style="margin: 0px 0px 1em; padding: 0px; list-style-type: none; border: none; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, simsun, 宋体, tahoma, arial; font-size: 16px; line-height: 24px;">投资者预料将聚焦在本周频繁的经济消息上，包括澳洲央行和英国央行的政策会议，压轴戏将是周五出炉的美国非农就业报告。</p><p style="margin: 0px 0px 1em; padding: 0px; list-style-type: none; border: none; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, simsun, 宋体, tahoma, arial; font-size: 16px; line-height: 24px;">　　从周五日本央行宽松政策力度不及预期触及的三周高位回落，日元走低。</p><p style="margin: 0px 0px 1em; padding: 0px; list-style-type: none; border: none; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, simsun, 宋体, tahoma, arial; font-size: 16px; line-height: 24px;">　　美元兑一篮子货币上周大跌2%，因美联储没有暗示急于升息，以及周五公布的美国经济增长数据令人失望。</p><p style="margin: 0px 0px 1em; padding: 0px; list-style-type: none; border: none; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, simsun, 宋体, tahoma, arial; font-size: 16px; line-height: 24px;">　　分析师说，尽管美元周一反弹，但美元可能很难进一步上涨，因金融市场几乎完全排除了今年或明年升息的可能性。</p><p style="margin: 0px 0px 1em; padding: 0px; list-style-type: none; border: none; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, simsun, 宋体, tahoma, arial; font-size: 16px; line-height: 24px;">　　根据CME Group的FedWatch，联邦基金利率期货走势显示，美联储在12月政策会议升息的机率为34%，两周前为大约48%。</p><p style="margin: 0px 0px 1em; padding: 0px; list-style-type: none; border: none; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, simsun, 宋体, tahoma, arial; font-size: 16px; line-height: 24px;">　　DailyFX汇市分析师Christopher Vecchio表示，“市场对美联储在至少2018年1月前升息毫无信心，在这一个时间框架美联储升息的机率触及60%的门槛。美联储决策者面对的明确现实是，美国经济成长年率1.2%要慢于欧元区经济成长年率1.6%。在这背景下，很大可能性美联储将不急于升息。”</p><p style="margin: 0px 0px 1em; padding: 0px; list-style-type: none; border: none; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, simsun, 宋体, tahoma, arial; font-size: 16px; line-height: 24px;">　　美元回吐周一录得的部分涨幅，此前数据显示7月美国制造业扩张速度较6月缓慢。</p><p style="margin: 0px 0px 1em; padding: 0px; list-style-type: none; border: none; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, simsun, 宋体, tahoma, arial; font-size: 16px; line-height: 24px;">　　美国纽约联邦储备银行主席杜德利周一在印尼巴里岛举行的一个央行总裁会议上表示，如果美国经济和就业市场很快改善，美联储可能在11月总统选举前升息。</p><p style="margin: 0px 0px 1em; padding: 0px; list-style-type: none; border: none; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, simsun, 宋体, tahoma, arial; font-size: 16px; line-height: 24px;">　　DailyFX的Vecchio表示，美联储称如果美国数据持续改善将可能在今年升息一次或两次，这和市场的预期明显不一致。</p><p style="margin: 0px 0px 1em; padding: 0px; list-style-type: none; border: none; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, simsun, 宋体, tahoma, arial; font-size: 16px; line-height: 24px;">　　美元兑日元上涨0.3%，至102.325，从三周低位反弹。一些分析师认为，日元跌势只是暂时的，称日本央行宽松政策力度不及预期引发的一波避险情绪将对日元有利。</p>', 1470109197, 'admin', 1),
(5, '2016年11月23日早评建议', '<p class="MsoNormal" style="text-indent:84.35pt;mso-char-indent-count:7.0"><strong><span style="''font-size:12.0pt;font-family:">今日早评建议：<span lang="EN-US">16-11-23</span>以下建议仅供参考<span lang="EN-US"><o:p></o:p></span></span></strong></p><p class="MsoNormal"><span style="mso-bidi-font-size:10.5pt;font-family:宋体">一：现货银锭：</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">开盘</span><span lang="EN-US">3364</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">，昨收盘</span><span lang="EN-US">3358</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，低多为主，盘面多头快形成，目前盘面偏多，现价</span><span lang="EN-US">3375</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">附近多，止损</span><span lang="EN-US">3740</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，破</span><span lang="EN-US">3360</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">做空，</span><span lang="EN-US"> 3340</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">附近做多最佳点。按图做单</span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" alt="" style="width:444.75pt; height:185.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\3H8UHXB3N2KF%25~A4SG%601%7d%7dH.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="593" height="247" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">二：电解铜：开盘</span><span lang="EN-US">41262</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">，昨收盘</span><span lang="EN-US">41270</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，低多为主，盘面趋势多头，目前遇压力震荡，可轻空，</span><span lang="EN-US">41100</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">附近做多，止损</span><span lang="EN-US">39900</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，按图表做单。</span><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" alt="" style="width:447.75pt;height:178.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\Y%25W)XIB%5dNIMZ_03NLVF0%7d4K.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="597" height="238" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">三：天然气：开盘</span><span lang="EN-US">5099</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">，收盘</span><span lang="EN-US">5141</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，破</span><span lang="EN-US">5025</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">做多，止损</span><span lang="EN-US">3990.,</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">破</span><span lang="EN-US">5110</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">做空，止损</span><span lang="EN-US">5140.</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">做多最佳点位</span><span lang="EN-US">5050</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">附近。破</span><span lang="EN-US">5090</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">追空，按图做单。</span><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" alt="" style="width:447.75pt;height:196.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:href="../../AppData/Roaming/Tencent/Users/2896538928/QQ/WinTemp/RichOle/%25SL(JOYOLVXPG)%7dF%60R07_@C.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="597" height="262" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p>', 1479876463, '薇薇', 1),
(6, '11月24日早盘建议', '<p class="MsoNormal" style="text-indent:84.35pt;mso-char-indent-count:7.0"><strong><span style="''font-size:12.0pt;font-family:">今日早评建议：<span lang="EN-US">16-11-24</span>以下建议仅供参考<span lang="EN-US"><o:p></o:p></span></span></strong></p><p class="MsoNormal"><span style="mso-bidi-font-size:10.5pt;font-family:宋体">一：现货银锭：</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">开盘</span><span lang="EN-US">331</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">，昨收盘</span><span lang="EN-US">3307</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，高空为主，目前盘面偏空，回调进空点，现价</span><span lang="EN-US">3290</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">附近空，止损</span><span lang="EN-US">3330</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，破</span><span lang="EN-US">3330</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">做多。按图做单</span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" alt="" style="width:448.5pt; height:186.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:href="../../AppData/Roaming/Tencent/Users/2896538928/QQ/WinTemp/RichOle/%25T%7dG%5d9W0A%5bRD%5d%5d(31D_LB4I.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="598" height="249" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">二：电解铜：开盘</span><span lang="EN-US">42458</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">，昨收盘</span><span lang="EN-US">42400</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，低多为主，盘面趋势多头，多头走势已过，目前遇压力震荡，可轻空，</span><span lang="EN-US">43500</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">附近高空，止损</span><span lang="EN-US">43800</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，按图表做单。</span><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" alt="" style="width:447.75pt;height:186.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\V@EUTV6(ZQE%5d%25N~QISZ5NSD.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="597" height="249" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">三：天然气：开盘</span><span lang="EN-US">5226</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">，收盘</span><span lang="EN-US">5212</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，破</span><span lang="EN-US">5250</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">做多，止损</span><span lang="EN-US">5210.,</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">破</span><span lang="EN-US">5210</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">做空，止损</span><span lang="EN-US">5250.</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">做多最佳点位</span><span lang="EN-US">5150</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">附近。缺口晚盘回补，先涨后跌，按图做单。</span><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:"><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" alt="" style="width:448.5pt;height:178.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\_R1UVI_%60FTS58J%7dDCG%5d(IK1.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="598" height="238" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p>', 1479965352, 'admin', 1),
(7, '11月25号早评', '<p class="MsoNormal" style="text-indent:96.4pt;mso-char-indent-count:8.0"><strong><span style="''font-size:12.0pt;font-family:">今日早评建议：<span lang="EN-US">16-11-25 </span>以下建议仅供参考<span lang="EN-US"><o:p></o:p></span></span></strong></p><p class="MsoNormal"><span style="mso-bidi-font-size:10.5pt;font-family:宋体">现货银锭：</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">开盘</span><span lang="EN-US">3302</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">，昨日收盘</span><span lang="EN-US">3398</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">。日线级别昨日收阴，</span><span lang="EN-US">MACD</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">指标动能绿柱缩量，</span><span lang="EN-US">KD</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">指标进入超卖区域有反弹需求。但大趋势空头不变，建议：反弹做空为主。</span></p><p class="MsoNormal"><span lang="EN-US"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="图片_x0020_7" o:spid="_x0000_i1025" type="#_x0000_t75" style="width:414.75pt;height:225.75pt;mso-wrap-style:square"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="301" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="图片_x0020_7" alt="" /><!--[endif]--></span></p><p class="MsoNormal"><span lang="EN-US">&nbsp;</span></p><p class="MsoNormal"><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">电解铜：开盘</span><span lang="EN-US">43195</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，昨日收盘</span><span lang="EN-US">43065</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">。日线级别昨日收中阳，布林带三轨向上，行情走势很强，</span><span lang="EN-US">MACD</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">指标动能红柱二次放量，说明后市行情会很强劲。建议：低多为主</span></p><p class="MsoNormal"><span lang="EN-US"><!--[if gte vml 1]><v:shape id="图片_x0020_6" o:spid="_x0000_i1026" type="#_x0000_t75" style="width:414.75pt;height:209.25pt; mso-wrap-style:square"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="279" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="图片_x0020_6" alt="" /><!--[endif]--></span></p><p class="MsoNormal"><span lang="EN-US">&nbsp;</span></p><p class="MsoNormal"><span lang="EN-US">&nbsp;</span></p><p class="MsoNormal"><span lang="EN-US">&nbsp;</span></p><p class="MsoNormal" align="left"><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">天然气：开盘</span><span lang="EN-US">5270</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">，昨日收盘</span><span lang="EN-US">5277</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">。日线级别昨日收阳，布林带上轨压制，</span><span lang="EN-US">NACD</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">动能红柱走平，</span><span lang="EN-US">KD</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">指标超卖，高位有所修复指标回调。建议：日内高空为主。</span></p><p class="MsoNormal" align="left"><span lang="EN-US"><!--[if gte vml 1]><v:shape id="图片_x0020_5" o:spid="_x0000_i1027" type="#_x0000_t75" style="width:414.75pt;height:190.5pt;mso-wrap-style:square"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="254" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="图片_x0020_5" alt="" /><!--[endif]--></span></p><p class="MsoNormal" align="left"><span lang="EN-US">&nbsp;</span></p><p class="MsoNormal" align="left"><span lang="EN-US">&nbsp;</span></p><p class="MsoNormal" align="left"><span lang="EN-US">&nbsp;</span></p>', 1480052937, 'admin', 1),
(8, '11月28日早评', '<p class="MsoNormal" style="text-indent:84.35pt;mso-char-indent-count:7.0"><strong><span style="''font-size:12.0pt;font-family:">今日早评建议：<span lang="EN-US">16-11-28</span>以下建议仅供参考<span lang="EN-US"><o:p></o:p></span></span></strong></p><p class="MsoNormal"><span style="mso-bidi-font-size:10.5pt;font-family:宋体">一：现货银锭：</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">开盘</span><span lang="EN-US">3338,</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">上周收盘</span><span lang="EN-US">3330</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，低多为主，目前盘面偏朵，多头趋势已经形成，现价</span><span lang="EN-US">3390</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">附近多，止损</span><span lang="EN-US">3360</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，若下跳则在破</span><span lang="EN-US">3320</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">附近低多。按图做单</span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" alt="" style="width:447.75pt; height:186.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\VOE$8~%7bL3~@%25D2M4M~%7dV(%25I.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="597" height="249" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--></span><span style="''font-family:宋体;">二：电解铜：开盘</span><span lang="EN-US">43231</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">，收盘</span><span lang="EN-US">43500</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，低多为主，盘面趋势多头，空头势力单薄，目前盘面偏多，可现价</span><span lang="EN-US">43500</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">附近多，止损</span><span lang="EN-US">43200</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，不要轻易空，按图表做单。</span><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" alt="" style="width:451.5pt;height:186pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\Q%7b8%7dL%5bHX%7bJC(@0%5bZ31%5bHMM7.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="602" height="248" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--></span><span style="''font-family:宋体;">三：天然气：开盘</span><span lang="EN-US">5470</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">，收盘</span><span lang="EN-US">5412</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">，破</span><span lang="EN-US">5500</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">做多，止损</span><span lang="EN-US">5470.,</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">破</span><span lang="EN-US">5480</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">做空，止损</span><span lang="EN-US">5510.</span><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri">做多最佳点位</span><span lang="EN-US">5380</span><span style="''font-family:宋体;mso-ascii-font-family:Calibri;">附近。缺口目前不会回补，按图做单。</span><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:"><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" alt="" style="width:448.5pt;height:186.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\%250NCUBDQC_~%7dL6VGNE@T1DC.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="598" height="249" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p>', 1480310954, 'admin', 1),
(9, '11月29早评', '<p class="MsoNormal"><strong><span lang="EN-US" style="font-size:12.0pt;font-family:宋体;color:red">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="font-size:12.0pt;font-family:宋体;color:red">今日早评建议：<span lang="EN-US">16-11-29</span>以下建议仅供参考<span lang="EN-US"><o:p></o:p></span></span></strong></p><p class="MsoNormal"><strong><span style="font-size:12.0pt;font-family:宋体">一：现货银锭：</span><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">开盘</span><span lang="EN-US" style="font-size:12.0pt">3357,</span><span style="''font-size:12.0pt;">昨收盘</span><span lang="EN-US" style="font-size:12.0pt">3350.,</span><span style="''font-size:">白银昨日波动较大，美元走强，今日白银依然偏空趋势，建议以反弹做空为主思路。</span><span lang="EN-US" style="font-size:12.0pt">Boll</span><span style="''font-size:">开口向下，关注前期时间换空间多空转换的压力位做空。关注下方黄金分割线做单。</span><span lang="EN-US" style="font-size:12.0pt"><o:p></o:p></span></strong></p><p class="MsoNormal"><span lang="EN-US"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="图片_x0020_4" o:spid="_x0000_i1025" type="#_x0000_t75" alt="" style="width:414.75pt;height:177.75pt"> <v:fill o:detectmouseclick="t"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:title=""></v:imagedata></v:fill></v:shape><![endif]--><!--[if !vml]--><img width="553" height="237" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="图片_x0020_4" alt="" /><!--[endif]--></span></p><p class="MsoNormal" align="left"><strong><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">二：电解铜：开盘</span><span lang="EN-US" style="font-size:12.0pt">43139</span><span style="''font-size:12.0pt;">，昨收盘</span><span lang="EN-US" style="font-size:12.0pt">43136</span><span style="''font-size:">，铜近期走势高位箱体震荡，今日建议高空低多思路，偏空思路，回踩下方多空转换的强支撑多单布局，反弹上方强压力位空单布局。</span><span lang="EN-US" style="font-size:12.0pt"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US"><!--[if gte vml 1]><v:shape id="图片_x0020_5" o:spid="_x0000_i1026" type="#_x0000_t75" alt="" style="width:423.75pt;height:211.5pt"> <v:fill o:detectmouseclick="t"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:title=""></v:imagedata></v:fill></v:shape><![endif]--><!--[if !vml]--><img width="565" height="282" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="图片_x0020_5" alt="" /><!--[endif]--></span><strong><span lang="EN-US" style="''font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US">&nbsp;</span></p><p class="MsoNormal" align="left"><strong><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">三：天然气：开盘</span><span lang="EN-US" style="font-size:12.0pt">5661</span><span style="''font-size:12.0pt;">，昨收盘</span><span lang="EN-US" style="font-size:12.0pt">5594</span><span style="''font-size:">，多头走势相当强劲，建议以回踩做多为主的思路，关注下方支撑一线多单布局</span><span lang="EN-US" style="font-size:12.0pt">5640-5620</span><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">。今日建议关注回补缺口位置，回踩不破做多，</span></strong><span lang="EN-US"><!--[if gte vml 1]><v:shape id="图片_x0020_7" o:spid="_x0000_i1027" type="#_x0000_t75" alt="" style="width:411.75pt;height:194.25pt"> <v:fill o:detectmouseclick="t"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:title=""></v:imagedata></v:fill></v:shape><![endif]--><!--[if !vml]--><img width="549" height="259" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="图片_x0020_7" alt="" /><!--[endif]--></span><strong><span lang="EN-US" style="''font-size:"><o:p></o:p></span></strong></p>', 1480390882, 'admin', 1),
(10, '12月1日早评建议', '<p class="MsoNormal"><strong><span lang="EN-US" style="font-size:12.0pt;font-family:宋体;color:red">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="font-size:12.0pt;font-family:宋体;color:red">今日早评建议：<span lang="EN-US">16-12-1</span>以下建议仅供参考<span lang="EN-US"><o:p></o:p></span></span></strong></p><p class="MsoNormal"><strong><span style="font-size:12.0pt;font-family:宋体">一：现货银锭：</span><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">开盘</span><span lang="EN-US" style="font-size:12.0pt">3533,</span><span style="''font-size:12.0pt;">昨收盘</span><span lang="EN-US" style="font-size:12.0pt">3535.,</span><span style="''font-size:">本周超级数据周，白银昨日受</span><span lang="EN-US" style="font-size:12.0pt">ADP</span><span style="''font-size:">数据影响，波动较大，今日早盘开盘不断下行，空头趋势明显，建议高空思路关注均线压力位</span><span lang="EN-US" style="font-size:12.0pt">3520</span><span style="''font-size:">做空。</span><span lang="EN-US" style="font-size:12.0pt"><o:p></o:p></span></strong></p><p class="MsoNormal"><span lang="EN-US"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="图片_x0020_4" o:spid="_x0000_i1025" type="#_x0000_t75" style="width:415.5pt;height:192.75pt;mso-wrap-style:square"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="554" height="257" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="图片_x0020_4" alt="" /><!--[endif]--></span></p><p class="MsoNormal" align="left"><strong><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">二：电解铜：开盘</span><span lang="EN-US" style="font-size:12.0pt">38455</span><span style="''font-size:12.0pt;">，昨收盘</span><span lang="EN-US" style="font-size:12.0pt">38422</span><span style="''font-size:">，铜昨日</span><span lang="EN-US" style="font-size:12.0pt">V</span><span style="''font-size:12.0pt;">型底部反转，多头动能不断反攻。今日依然回踩下方做多思路为主，建议回踩下方强劲支撑多单布局，回踩下方关注黄金分割线</span><span lang="EN-US" style="font-size:12.0pt">0.236</span><span style="''font-size:">以及</span><span lang="EN-US" style="font-size:12.0pt">0.382</span><span style="''font-size:">支撑</span><span lang="EN-US" style="font-size:12.0pt">37900-38100.</span></strong><span lang="EN-US"><!--[if gte vml 1]><v:shape id="图片_x0020_5" o:spid="_x0000_i1026" type="#_x0000_t75" alt="" style="width:414.75pt; height:186.75pt"> <v:fill o:detectmouseclick="t"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:title=""></v:imagedata></v:fill></v:shape><![endif]--><!--[if !vml]--><img width="553" height="249" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="图片_x0020_5" alt="" /><!--[endif]--></span></p><p class="MsoNormal" align="left"><span lang="EN-US">&nbsp;</span></p><p class="MsoNormal" align="left"><strong><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">三：天然气：开盘</span><span lang="EN-US" style="font-size:12.0pt">4749</span><span style="''font-size:12.0pt;">，昨收盘</span><span lang="EN-US" style="font-size:12.0pt">4759</span><span style="''font-size:">，昨日天然气暴跌，今早开盘空头回补，有望形成圆弧底部反弹，建议高空低多为主思路，回踩不破做多，如图所示做单。</span><span lang="EN-US" style="font-size:12.0pt"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US"><!--[if gte vml 1]><v:shape id="图片_x0020_8" o:spid="_x0000_i1027" type="#_x0000_t75" alt="" style="width:414.75pt;height:201.75pt"> <v:fill o:detectmouseclick="t"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:title=""></v:imagedata></v:fill></v:shape><![endif]--><!--[if !vml]--><img width="553" height="269" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="图片_x0020_8" alt="" /><!--[endif]--></span></p><p class="MsoNormal" align="left"><strong><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">四：沥青：开盘</span><span lang="EN-US" style="font-size:12.0pt">3326</span><span style="''font-size:12.0pt;">，昨收盘</span><span lang="EN-US" style="font-size:12.0pt">3340</span><span style="''font-size:">，昨日受欧佩克会议以及</span><span lang="EN-US" style="font-size:12.0pt">EIA</span><span style="''font-size:">库存数据利多影响，沥青暴涨，强势反弹，有望再次站上</span><span lang="EN-US" style="font-size:12.0pt">50</span><span style="''font-size:">美元。建议回踩做多为主思路，回踩继续做多，如图所示做单。</span><span lang="EN-US" style="font-size:12.0pt"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US"><!--[if gte vml 1]><v:shape id="图片_x0020_7" o:spid="_x0000_i1028" type="#_x0000_t75" alt="" style="width:415.5pt;height:192pt"> <v:fill o:detectmouseclick="t"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:title=""></v:imagedata></v:fill></v:shape><![endif]--><!--[if !vml]--><img width="554" height="256" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="图片_x0020_7" alt="" /><!--[endif]--></span></p>', 1480574093, 'admin', 1),
(11, '12月2日大非农', '<p class="MsoNormal"><strong><span lang="EN-US" style="font-size:12.0pt;font-family:宋体;color:red">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="font-size:12.0pt;font-family:宋体;color:red">今日早评建议：<span lang="EN-US">16-12-2</span>以下建议仅供参考<span lang="EN-US"><o:p></o:p></span></span></strong></p><p class="MsoNormal"><strong><span style="font-size:12.0pt;font-family:宋体">一：现货银锭：</span><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">开盘</span><span lang="EN-US" style="font-size:12.0pt">3539,</span><span style="''font-size:12.0pt;">昨收盘</span><span lang="EN-US" style="font-size:12.0pt">3549.,</span><span style="''font-size:">本周超级数据周，白银昨日受当周初晴数据影响，先涨后跌，整体区间震荡，建议高空低多思路。</span><span lang="EN-US" style="font-size:12.0pt"><o:p></o:p></span></strong></p><p class="MsoNormal"><span lang="EN-US"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="图片_x0020_5" o:spid="_x0000_i1025" type="#_x0000_t75" alt="" style="width:414.75pt;height:195pt"> <v:fill o:detectmouseclick="t"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:title=""></v:imagedata></v:fill></v:shape><![endif]--><!--[if !vml]--><img width="553" height="260" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="图片_x0020_5" alt="" /><!--[endif]--></span></p><p class="MsoNormal" align="left"><strong><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">二：电解铜：开盘</span><span lang="EN-US" style="font-size:12.0pt">38425</span><span style="''font-size:12.0pt;">，昨收盘</span><span lang="EN-US" style="font-size:12.0pt">38438</span><span style="''font-size:">，铜昨日来回震荡，。今日依然偏空思路为主，建议反弹上方压力位空单布局，反弹关注黄金分割线</span><span lang="EN-US" style="font-size:12.0pt">0.5</span><span style="''font-size:">以及</span><span lang="EN-US" style="font-size:12.0pt">0.382</span><span style="''font-size:">阻力</span><span lang="EN-US" style="font-size:12.0pt">38800-39000.</span></strong><span lang="EN-US"><!--[if gte vml 1]><v:shape id="图片_x0020_6" o:spid="_x0000_i1026" type="#_x0000_t75" alt="" style="width:414.75pt; height:190.5pt"> <v:fill o:detectmouseclick="t"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:title=""></v:imagedata></v:fill></v:shape><![endif]--><!--[if !vml]--><img width="553" height="254" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="图片_x0020_6" alt="" /><!--[endif]--></span></p><p class="MsoNormal" align="left"><span lang="EN-US">&nbsp;</span></p><p class="MsoNormal" align="left"><strong><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">三：天然气：开盘</span><span lang="EN-US" style="font-size:12.0pt">5029</span><span style="''font-size:12.0pt;">，昨收盘</span><span lang="EN-US" style="font-size:12.0pt">4979</span><span style="''font-size:">，昨日天然气单边上涨，今早开盘回补，修复指标继续多单进场，建议低多为主思路，回踩缺口位做多，如图所示做单。</span><span lang="EN-US" style="font-size:12.0pt"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US"><!--[if gte vml 1]><v:shape id="图片_x0020_7" o:spid="_x0000_i1027" type="#_x0000_t75" alt="" style="width:415.5pt;height:190.5pt"> <v:fill o:detectmouseclick="t"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:title=""></v:imagedata></v:fill></v:shape><![endif]--><!--[if !vml]--><img width="554" height="254" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="图片_x0020_7" alt="" /><!--[endif]--></span></p><p class="MsoNormal" align="left"><strong><span style="''font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;">四：沥青：开盘</span><span lang="EN-US" style="font-size:12.0pt">3460</span><span style="''font-size:12.0pt;">，昨收盘</span><span lang="EN-US" style="font-size:12.0pt">3452</span><span style="''font-size:">，受欧佩克会议以及</span><span lang="EN-US" style="font-size:12.0pt">EIA</span><span style="''font-size:">库存数据利多影响，沥青继续多头延续，强势反弹，有望再次站上</span><span lang="EN-US" style="font-size:12.0pt">50</span><span style="''font-size:">美元。建议回踩做多为主思路，回踩继续做多，如图所示做单。</span><span lang="EN-US" style="font-size:12.0pt"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US"><!--[if gte vml 1]><v:shape id="图片_x0020_8" o:spid="_x0000_i1028" type="#_x0000_t75" alt="" style="width:406.5pt;height:228pt"> <v:fill o:detectmouseclick="t"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:title=""></v:imagedata></v:fill></v:shape><![endif]--><!--[if !vml]--><img width="542" height="304" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="图片_x0020_8" alt="" /><!--[endif]--></span></p>', 1480651045, '薇薇', 1);
INSERT INTO `chat_apps_scpl` (`id`, `title`, `txt`, `atime`, `user`, `dj`) VALUES
(12, '12月5日早盘建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早平建议：</span></strong><st1:chsdate isrocdate="False" islunardate="False" day="5" month="12" year="2016" w:st="on"><strong><span lang="EN-US" style="font-size:14.0pt;color:red">2016/12/5</span></strong></st1:chsdate><strong><span lang="EN-US" style="''font-size:14.0pt;"> </span><span style="''font-size:14.0pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">以下建议仅供参考</span><span lang="EN-US" style="''font-size:14.0pt;"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:66.95pt;text-indent:-66.95pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">一、西贵银：上周收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3571</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3599</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3494</span><span style="''mso-bidi-font-size:10.5pt;">，幅度为</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">105</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面目前已形成涨势，空头无力转向多头趋势，以低位做多为主，</span><span lang="EN-US" style="''mso-bidi-font-size:">3530</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近为做多最佳点位，开盘若未破</span><span lang="EN-US" style="''mso-bidi-font-size:">3560</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">则附近做多，有可能开盘即是今日最低点，破</span><span lang="EN-US" style="''mso-bidi-font-size:">3570</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3530</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，稳重者破</span><span lang="EN-US" style="''mso-bidi-font-size:">3580</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3540</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，切勿做空。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:41.1pt;text-indent:-41.1pt;mso-char-indent-count:"><strong><span lang="EN-US" style="''mso-bidi-font-size:">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" alt="" style="width:444pt; height:264pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\U)X5LHVGC~1QRRB7%7bX%7d8MT1.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="592" height="352" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">二、西贵铜：上周收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">38399</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">38522</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">37911</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">611</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面依旧高位空为主，多头无力未形成反转趋势，开盘后先涨后跌，可在</span><span lang="EN-US" style="''mso-bidi-font-size:">38700</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近高空，开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">38300</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">38000</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">38000</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做空，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">38300</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，切勿高位追空。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" alt="" style="width:441pt;height:213pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\L8UD%7dUNXP$XZMK3_%60QLR6OS.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="588" height="284" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">三、西贵石：上周收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">452.9</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">462</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">449.44</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">12.56</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面前期强势上涨，目前已经转换为空头，且空头趋势已经形成，盘面开盘后会小幅度上涨后下跌，</span><span lang="EN-US" style="''mso-bidi-font-size:">460</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">是高空点位，可先在</span><span lang="EN-US" style="''mso-bidi-font-size:">456</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近做空，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">461</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">450</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">可空。切勿做多，若做了多获利及时出来。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" alt="" style="width:441pt;height:228pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\3V%7dE86OZ4~CK3UJ%25CQR$ZXR.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="588" height="304" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵气：上周收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4893</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5069</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4800</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">131</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面前期强势上涨，目前已经转换为空头，且空头趋势已经形成，盘面开盘后会小幅度上涨后下跌，</span><span lang="EN-US" style="''mso-bidi-font-size:">5050</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近是高空最佳点位，可先在</span><span lang="EN-US" style="''mso-bidi-font-size:">4990</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近做空，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">5030</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">4910</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">可短多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">4870</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破上周低点可追空，其他点位切勿轻易做多，若做了多获利及时出来。注：以高位空为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" alt="" style="width:441pt;height:239.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\JC$0ZD%60GWEW14WU8GM9MU3I.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="588" height="319" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">六、西贵青：上周收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3500</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3508</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3404</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">104</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面目前强势上涨，未出现反转空头信号，短期会有回调下跌迹象，开盘后会先跌后涨，</span><span lang="EN-US" style="''mso-bidi-font-size:">3500</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">未破可轻仓空，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3540</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">3470</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">可空，空单获利就跑，区间震荡切勿做单，跌至</span><span lang="EN-US" style="''mso-bidi-font-size:">3440</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近可多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3400</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，按图做单。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" style="width:441pt;height:246.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="588" height="329" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">五、美元指数：美元前期强势上涨后，近</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5</span><span style="''mso-bidi-font-size:10.5pt;">个交易日内高位震荡，周盘收了根阴</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">K</span><span style="''mso-bidi-font-size:10.5pt;">，已经跌破</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">101</span><span style="''mso-bidi-font-size:10.5pt;">支撑位，日线已经反转为空头，后续趋势依旧为空头，对后期黄金、银、油趋势有着强烈影响，预计接下来</span><span lang="EN-US" style="''mso-bidi-font-size:">5</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">个交易日黄金、银、油都有可能会受到美元指数下跌影响而上涨。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1030" type="#_x0000_t75" alt="" style="width:441pt;height:244.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\%5d%25(ZQPL%60Q%7bMO0(QZ@AEZAPF.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="588" height="326" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image012.jpg" v:shapes="_x0000_i1030" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p>', 1480902232, 'admin', 1),
(13, '12月6号早盘建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早平建议：</span><span lang="EN-US" style="font-size:14.0pt;color:red">2016/12/6 </span><span style="''font-size:14.0pt;font-family:">以下建议仅供参考</span><span lang="EN-US" style="font-size:14.0pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:66.95pt;text-indent:-66.95pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">一、西贵银：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3583</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">2</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3617</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3582</span><span style="''mso-bidi-font-size:10.5pt;">，幅度为</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">35</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面目前已形成涨势，转向多头趋势维稳，以低位做多为主，</span><span lang="EN-US" style="''mso-bidi-font-size:">3550</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近为做多最佳点位，破</span><span lang="EN-US" style="''mso-bidi-font-size:">3590</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3555</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，稳重者破</span><span lang="EN-US" style="''mso-bidi-font-size:">3600</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">35550</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，切勿做空。晚来者可找地点位，或现价进多，趋势多头不用担心多单。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:41.1pt;text-indent:-41.1pt;mso-char-indent-count:"><strong><span lang="EN-US" style="''mso-bidi-font-size:">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" alt="" style="width:443.25pt; height:217.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\$U310R4K_M7%7d7K(4QJ%7b$5QN.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="591" height="290" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">二、西贵铜：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">39362</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">2</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">39477</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">38960</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">517</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面依旧低位多为主，多头无力未形成反转趋势，今日盘面多空双向，目前盘面偏空，可在</span><span lang="EN-US" style="''mso-bidi-font-size:">39200</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近高空，</span><span lang="EN-US" style="''mso-bidi-font-size:">38400</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">38000</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，若下到</span><span lang="EN-US" style="''mso-bidi-font-size:">38000</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近加仓多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3780</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">。按图做单</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" alt="" style="width:443.25pt;height:252.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\G%7d57_V46YD9FUIKD66@(309.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="591" height="337" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:63.25pt;text-indent:-63.25pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">三、西贵石：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">454.43</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">2</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">460.2</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">453.71</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">8.29</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面前期强势上涨，已经转换为空头，高位空为主，盘面开盘后会小幅度上涨后下跌，</span><span lang="EN-US" style="''mso-bidi-font-size:">460</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">是高空点位，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">463</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">453</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">追空。若做了多获利及时出来。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" alt="" style="width:446.25pt;height:241.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\I%60_Z3(DI@WQBN~MY%5d4G~U%7dI.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="595" height="322" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵气：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5164</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">2</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5143</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5104</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">39</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面前期强势上涨，空头转换未形成，依旧低位做多为主，盘面开盘跳空震荡行走，预计缺口会回补，破</span><span lang="EN-US" style="''mso-bidi-font-size:">5140</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">5100</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">5120</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做空，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">5160</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，盘面若跌至</span><span lang="EN-US" style="''mso-bidi-font-size:">5000</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">点附近可低位做多。按图标做单</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" alt="" style="width:444.75pt;height:256.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\$%7d77%60OJ339ZX)%60A2%5dETUG%7bH.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="593" height="342" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">五、西贵青：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3477</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">2</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3484</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3455</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">29</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面目前强势上涨，未出现反转空头信号，盘面目前上行，力度并不大，破</span><span lang="EN-US" style="''mso-bidi-font-size:">3480</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3450</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">3460</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">可空，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3490</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，</span><span lang="EN-US" style="''mso-bidi-font-size:">3555</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近高空位最佳点，区间震荡切勿做单，按图做单。注：看今日会不会形成空头形态</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" alt="" style="width:447pt;height:250.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\86HQ0SD5V7Z6$1B%25ZBL4UG6.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="596" height="334" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">五、美元指数：美元前期强势上涨后，近</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5</span><span style="''mso-bidi-font-size:10.5pt;">个交易日内高位震荡，周盘收了根阴</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">K</span><span style="''mso-bidi-font-size:10.5pt;">，周一已经跌破</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">100</span><span style="''mso-bidi-font-size:10.5pt;">支撑位，日线空头强势来袭，后续趋势依旧空头，对后期黄金、银、油趋势有着强烈影响，周一对金银油的影响不是</span><span style="''mso-bidi-font-size:10.5pt;"> </span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">很大，预计接下来交易日黄金、银、油都有可能会受到美元指数下跌影响而上涨。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1030" type="#_x0000_t75" alt="" style="width:450.75pt;height:254.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\6KBOV)31Y8SX4LSTP4D%7d%25~Q.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="601" height="339" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image012.jpg" v:shapes="_x0000_i1030" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p>', 1480994217, 'admin', 1),
(14, '12月8日早盘建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早平建议：</span><span lang="EN-US" style="font-size:14.0pt;color:red">2016/12/8 </span><span style="''font-size:14.0pt;font-family:">以下建议仅供参考</span><span lang="EN-US" style="font-size:14.0pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:66.95pt;text-indent:-66.95pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">一、西贵银：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3676</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3688</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3665</span><span style="''mso-bidi-font-size:10.5pt;">，幅度为</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">23</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面目前震荡偏多，激进者可</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3680</span><span style="''mso-bidi-font-size:10.5pt;">附近高空，以低位做多为主，破</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3660</span><span style="''mso-bidi-font-size:10.5pt;">做空，止损</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3700</span><span style="''mso-bidi-font-size:10.5pt;">，切勿轻易做空，</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3600</span><span style="''mso-bidi-font-size:10.5pt;">附近低多最佳点位。</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:41.1pt;text-indent:-41.1pt;mso-char-indent-count:"><strong><span lang="EN-US" style="''mso-bidi-font-size:">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" alt="" style="width:438pt; height:237pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:href="../../AppData/Roaming/Tencent/Users/2896538928/QQ/WinTemp/RichOle/69A907JL%7bSGL8%25I16QC4)O1.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="584" height="316" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">二、西贵铜：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">38667</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">38671</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">38359</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">312</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面高位空为主，多头无力目前小幅度震荡，今日盘面目会回调空缺，可在</span><span lang="EN-US" style="''mso-bidi-font-size:">39000</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近高空，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">39500</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，到</span><span lang="EN-US" style="''mso-bidi-font-size:">39300</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近再做空，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">39500</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">38700</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">38400</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">。按图做单</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" alt="" style="width:440.25pt;height:250.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:href="../../AppData/Roaming/Tencent/Users/2896538928/QQ/WinTemp/RichOle/4HHS$QV5GYPSWVZUZ836VQ4.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="587" height="334" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">三、西贵石：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">446.4</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">448.3</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">446.64</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">1.76</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面依旧空头，高位空为主，开盘后处于震荡上行，勿做多，</span><span lang="EN-US" style="''mso-bidi-font-size:">460</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">是高空点位，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">463</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，回调至</span><span lang="EN-US" style="''mso-bidi-font-size:">450</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近可空，破</span><span lang="EN-US" style="''mso-bidi-font-size:">446</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">追空。若做了多获利及时出来。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" alt="" style="width:436.5pt;height:248.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\$%5b%5bSR2OOGM%7b13J9~VVV%6019W.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="582" height="331" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵气：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5152</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5110</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5064</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">46</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面空头已经形成，高位做空为主，盘面开盘空头下跌，空头比较强势，破</span><span lang="EN-US" style="''mso-bidi-font-size:">5140</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">5100</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">5100</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做空，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">5140</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，回调至</span><span lang="EN-US" style="''mso-bidi-font-size:">5270</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近高空。</span><span lang="EN-US" style="''mso-bidi-font-size:">5320</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">位高空最佳点。按图标做单</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" alt="" style="width:435.75pt;height:279.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\AQ80@%5d%5dER3RRWF)DHG3XLS4.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="581" height="373" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">五、西贵青：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3382</span><span style="''mso-bidi-font-size:10.5pt;">，周</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4</span><span style="''mso-bidi-font-size:10.5pt;">最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3396</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3381</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">15</span><span style="''mso-bidi-font-size:10.5pt;">个点，早盘面低位震荡，以高位做空为主，盘面目前偏多，可</span><span lang="EN-US" style="''mso-bidi-font-size:">3380</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近轻多，获利就跑，回调</span><span lang="EN-US" style="''mso-bidi-font-size:">3420</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做空，不要轻易做多，</span><span lang="EN-US" style="''mso-bidi-font-size:">3460</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">高空点位，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3500</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，按图做单。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span lang="EN-US" style="''mso-bidi-font-size:">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" alt="" style="width:432.75pt;height:262.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\GGK_G~%5dUYBKGP43EK7H%5bGG3.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="577" height="350" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">五、美元指数：美元周三大跌后空头行情将会继续，今天跳空低开预示着美元的多头已经终结，注意白银、黄金、油产品所受到的影响。美指的大跌带来相关产品的大涨。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1030" type="#_x0000_t75" alt="" style="width:434.25pt;height:285.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\L1%25EE@L4MC2U_%5b)4FUEWWVJ.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="579" height="381" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image012.jpg" v:shapes="_x0000_i1030" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p>', 1481166585, 'admin', 1);
INSERT INTO `chat_apps_scpl` (`id`, `title`, `txt`, `atime`, `user`, `dj`) VALUES
(15, '12月9日早盘建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早平建议：</span><span lang="EN-US" style="font-size:14.0pt;color:red">2016/12/9</span><span style="''font-size:14.0pt;font-family:">以下建议仅供参考</span><span lang="EN-US" style="font-size:14.0pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:66.95pt;text-indent:-66.95pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">一、西贵银：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3643</span><span style="''mso-bidi-font-size:10.5pt;">，今天开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3644</span><span style="''mso-bidi-font-size:10.5pt;">，基本上是平开，盘面受压回落，今日盘面震荡向下，偏向空头，建议高位做空为主，周线盘面高低位很难再次被走出，行情走势不大。尽量等反弹到</span><span lang="EN-US" style="''mso-bidi-font-size:">3650</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近做空，目标看</span><span lang="EN-US" style="''mso-bidi-font-size:">3617</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近，终极目标</span><span lang="EN-US" style="''mso-bidi-font-size:">3570</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoTitle"><span lang="EN-US"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" alt="" style="width:417.75pt; height:209.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:href="file:///d:\\Documents\\Tencent%20Files\\2491786520\\Image\\C2C\\%7dM1UNYBL36%5d@97~UTWCMT9V.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="557" height="279" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--></span><em><span lang="EN-US" style="''font-family:"><o:p></o:p></span></em></p><p class="MsoNormal" style="''margin-left:41.1pt;text-indent:-41.1pt;mso-char-indent-count:"><strong><span lang="EN-US" style="''mso-bidi-font-size:">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">二、西贵铜：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">38316</span><span style="''mso-bidi-font-size:10.5pt;">，今天开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">38293</span><span style="''mso-bidi-font-size:10.5pt;">，略微低开，盘面高位空为主，多头受压回落，目前连续跌</span><span lang="EN-US" style="''mso-bidi-font-size:">3</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">个工作日，目前已到支撑位</span><span lang="EN-US" style="''mso-bidi-font-size:">38000</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">点附近，盘面属于日线上的高位震荡盘整。高抛低吸做单思路，</span><span lang="EN-US" style="''mso-bidi-font-size:">38830</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近做空，</span><span lang="EN-US" style="''mso-bidi-font-size:">38000</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近做多。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" alt="" style="width:416.25pt;height:153.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2491786520\\QQ\\WinTemp\\RichOle\\)GQ9%60_KK%7d_YI5FAGE8%7b7W32.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="555" height="205" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">三、西贵石：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">450.56</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">449.54</span><span style="''mso-bidi-font-size:10.5pt;">，略微低开。刚开盘大幅下跌回调再次下跌，目前有双针探底之势，</span><span lang="EN-US" style="''mso-bidi-font-size:">451</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近空，激进的朋友直接空，看</span><span lang="EN-US" style="''mso-bidi-font-size:">438</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近。</span><span lang="EN-US" style="''mso-bidi-font-size:">438</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">有效支撑可做多。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" alt="" style="width:414.75pt;height:192pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:href="file:///d:\\Documents\\Tencent%20Files\\2491786520\\Image\\C2C\\LPJU)(60(7U2%60CREM1H%5b2JY.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="256" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵气：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5266</span><span style="''mso-bidi-font-size:10.5pt;">，今天开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5269</span><span style="''mso-bidi-font-size:10.5pt;">，高开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3</span><span style="''mso-bidi-font-size:10.5pt;">个点。昨日收大阳线，表现强劲，上方受阻于</span><span lang="EN-US" style="''mso-bidi-font-size:">5324</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">高位，短期内需要回调，今日盘面先回落后涨，短线做回落空单也可以注意带好风险，尽量低位做多。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" style="width:416.25pt;height:140.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="555" height="187" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">五、西贵青：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3349</span><span style="''mso-bidi-font-size:10.5pt;">，今天开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3454</span><span style="''mso-bidi-font-size:10.5pt;">，高开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5</span><span style="''mso-bidi-font-size:10.5pt;">个点。昨日踩有效支撑上行收日线小阳线，今日盘面依然是偏多头，建议低位做多单。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span lang="EN-US" style="''mso-bidi-font-size:">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" alt="" style="width:414.75pt;height:105.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2491786520\\QQ\\WinTemp\\RichOle\\4ME4M%7d_~$74_4C%7b%25AWFIP%5d4.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="141" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">五、美元指数：昨日收盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">101.05</span><span style="''mso-bidi-font-size:10.5pt;">，今天开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">101.06</span><span style="''mso-bidi-font-size:10.5pt;">，高开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">0.01</span><span style="''mso-bidi-font-size:10.5pt;">。盘面支撑</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">101</span><span style="''mso-bidi-font-size:10.5pt;">美元，目前盘面有</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">W</span><span style="''mso-bidi-font-size:10.5pt;">底之势，美指在全球大环境下走强可能大，黄金白银等避险资产多头要小心，带好风险</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1030" type="#_x0000_t75" alt="" style="width:421.5pt;height:266.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2491786520\\QQ\\WinTemp\\RichOle\\TB306YLLHIVG~FLDBUWF9RB.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="562" height="355" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image012.jpg" v:shapes="_x0000_i1030" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p>', 1481253498, '薇薇', 1),
(16, '12月12日早盘建议', '<span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-indent: 69.15pt; mso-char-indent-count: 4.92;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; font-size: 14pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">今日早平建议：</span><span style="color: red; font-size: 14pt;" lang="EN-US"><span style="font-family:Times New Roman;">2016/12/12 </span></span><span style="color: red; font-family: 宋体; font-size: 14pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">以下建议仅供参考</span><span style="color: red; font-size: 14pt;" lang="EN-US"><o:p></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 66.95pt; text-indent: -66.95pt; mso-char-indent-count: -6.35;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">一、西贵银：上周五收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3610</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今日开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3609</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，低开</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">1</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点，盘面目前还是偏向于空头，建议高位空单，有机会在</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3620</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">以上筑顶可做空，破</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3595</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">也可追空。短线多单注意带好风险。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 41.1pt; text-indent: -41.1pt; mso-char-indent-count: -3.9;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p><span style="font-family:Times New Roman;font-size:16px;">&nbsp;</span></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><v:shapetype id="_x0000_t75" stroked="f" filled="f" path="m@4@5l@4@11@9@11@9@5xe" o:preferrelative="t" o:spt="75" coordsize="21600,21600"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:connecttype="rect" gradientshapeok="t" o:extrusionok="f"> <o:lock aspectratio="t" v:ext="edit"></o:lock></v:path></v:stroke></v:shapetype><v:shape style="width: 415.5pt; height: 217.5pt;" id="_x0000_i1025" type="#_x0000_t75"> <v:imagedata o:title="EG@2POR_A@7V5RTGNWL7DAH" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png"></v:imagedata></v:shape><o:p></o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">二、西贵铜：上周五收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">38671</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今日开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">39039</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，跳空高开</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">368</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点，盘面稍微偏多头，盘面有填补空缺的需要，不跌破</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">38820</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近支撑不可做空，等待有效筑底再做多。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><v:shape style="width: 412.5pt; height: 210pt;" id="_x0000_i1026" type="#_x0000_t75"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png"></v:imagedata></v:shape><o:p></o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 21.1pt; text-indent: -21.1pt; mso-char-indent-count: -2.0;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">三、西贵石：上周五收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">448.27</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今日开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">445.45</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，低开</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">2.82</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点。由于下方三针探底，站再</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">443</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">支撑位的上方，偏多头一些，做多单会更加有效。日线压力</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">456</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近，只要不跌破</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">443</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">就可以做多单。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p><span style="font-family:Times New Roman;font-size:16px;">&nbsp;</span></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><v:shape style="width: 417pt; height: 184.5pt;" id="_x0000_i1027" type="#_x0000_t75"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png"></v:imagedata></v:shape><o:p></o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">四、西贵气：上周五收盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5331</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今日开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5091</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，跳空低开</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">240</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点。盘面空缺今日不容易填补，建议做高位空单更可取。最好等待上方筑顶再空。破</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">4980</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">支撑也可以追空，气波动大，要带好风险做单。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p><span style="font-family:Times New Roman;font-size:16px;">&nbsp;</span></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><v:shape style="width: 416.25pt; height: 156pt;" id="_x0000_i1028" type="#_x0000_t75"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png"></v:imagedata></v:shape><o:p></o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 21.1pt; text-indent: -21.1pt; mso-char-indent-count: -2.0;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">五、西贵青：上周五</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3491</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今日开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3569</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，跳空高开</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">78</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点。由于欧佩克国家提前达成冻产协议，非欧佩克国家也陆续达成减产导致原油一路冲出年内高位。目前盘面多头强劲，建议低位做多，支撑位</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3565</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近点位最佳。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p><span style="font-family:Times New Roman;font-size:16px;">&nbsp;</span></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><v:shape style="width: 416.25pt; height: 166.5pt;" id="_x0000_i1029" type="#_x0000_t75"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png"></v:imagedata></v:shape><o:p></o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">六、美元指数：现在是</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">12</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">月份，今年的最后一个月，国际形势比较活跃，特别美联储加息从今年年初就放风出来，都未达成。这次特朗普上台有非常老道的商业头脑，可以吸纳足够多的资金来促进美国经济的发展，所以后期美元走强的可能性依然很大。今日盘面回调后还将上涨。建议黄金白银多头要谨慎，带好风险做单。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;"><span style="font-size:16px;"><v:shape style="width: 416.25pt; height: 332.25pt;" id="_x0000_i1030" type="#_x0000_t75"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png"></v:imagedata></v:shape><o:p></o:p></span></span></span></strong></p><span style="font-family:宋体;font-size:16px;"></span>', 1481511233, 'admin', 1);
INSERT INTO `chat_apps_scpl` (`id`, `title`, `txt`, `atime`, `user`, `dj`) VALUES
(17, '12月13早评建议', '<span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-indent: 69.15pt; mso-char-indent-count: 4.92;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; font-size: 14pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">今日早平建议：</span><span style="color: red; font-size: 14pt;" lang="EN-US"><span style="font-family:Times New Roman;">2016/12/9</span></span><span style="color: red; font-family: 宋体; font-size: 14pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">以下建议仅供参考</span><span style="color: red; font-size: 14pt;" lang="EN-US"><o:p></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 66.95pt; text-indent: -66.95pt; mso-char-indent-count: -6.35;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">一、西贵银：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3657</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今天开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3664</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，昨日亚欧盘回落，美盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">v</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">型底部反转，今日盘面维持高位震荡，有回落迹象，建议低多为主为主，反弹到</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3690</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近压力做空，回踩下方</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3640</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">支撑做多。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 12pt 0cm 3pt;" class="MsoTitle"><span lang="EN-US"><strong><span style="font-size:24px;"><span style="font-family:Cambria;"><v:shapetype id="_x0000_t75" stroked="f" filled="f" path="m@4@5l@4@11@9@11@9@5xe" o:preferrelative="t" o:spt="75" coordsize="21600,21600"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:connecttype="rect" gradientshapeok="t" o:extrusionok="f"> <o:lock aspectratio="t" v:ext="edit"></o:lock></v:path></v:stroke></v:shapetype><v:shape style="width: 414.75pt; height: 189pt;" id="图片_x0020_8" type="#_x0000_t75" alt="" o:spid="_x0000_i1025"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png"></v:imagedata></v:fill></v:shape><em><span style="font-family: ''Cambria'',''serif'';"><o:p></o:p></span></em></span></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 41.1pt; text-indent: -41.1pt; mso-char-indent-count: -3.9;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p><span style="font-family:Times New Roman;font-size:16px;">&nbsp;</span></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">二、西贵铜：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">38044</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今天开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">38212</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，略微高开，盘面高位空为主，多头受压回落，目前连续跌</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个交易日，目前已到支撑位</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">37800</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">点附近，反弹关注黄金分割线</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">0.382</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">以及</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">0.5</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">压力位</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">38400-38600</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">可做空。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Times New Roman;"><span style="font-size:16px;"><span lang="EN-US"><v:shape style="width: 414.75pt; height: 156pt;" id="图片_x0020_12" type="#_x0000_t75" alt="" o:spid="_x0000_i1026"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png"></v:imagedata></v:fill></v:shape></span><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p></o:p></span></span></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 21.1pt; text-indent: -21.1pt; mso-char-indent-count: -2.0;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">三、西贵石：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">439.75</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今日开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">441.47</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，低开。刚开盘大幅下跌回调再次下跌，目钱关键支撑位附近小反弹，</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">448</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近空，目标看</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">444-442</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">440</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近有效支撑可做多。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p><span style="font-family:Times New Roman;font-size:16px;">&nbsp;</span></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Times New Roman;"><span style="font-size:16px;"><span lang="EN-US"><v:shape style="width: 399pt; height: 165pt;" id="图片_x0020_18" type="#_x0000_t75" alt="" o:spid="_x0000_i1027"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png"></v:imagedata></v:fill></v:shape></span><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p></o:p></span></span></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">四、西贵气：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5009</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今天开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">4992</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，低开。昨日收阴线，短时间区间中震荡，上方受阻于</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5110</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">高位，短期内需要回调，今日盘面先回落后涨，短线做回落空单也可以注意带好风险，尽量低位做多。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 66.9pt; text-indent: -66.9pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-family:Times New Roman;"><span style="font-size:16px;"><span lang="EN-US"><v:shape style="width: 415.5pt; height: 181.5pt;" id="图片_x0020_14" type="#_x0000_t75" alt="" o:spid="_x0000_i1028"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png"></v:imagedata></v:fill></v:shape></span><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 21.1pt; text-indent: -21.1pt; mso-char-indent-count: -2.0;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">五、西贵青：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3561</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今天开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3562</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，高开</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">1</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点。减产协议的利多消息影响使得高开后大涨，欧盘高位震荡，美盘双顶形态回落，继续以高空思路为主，反弹中轨压力位继续做空。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3600</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">做空，目标</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3660-3640.<o:p></o:p></span></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Times New Roman;"><span style="font-size:16px;"><span lang="EN-US"><v:shape style="width: 418.5pt; height: 186.75pt;" id="图片_x0020_17" type="#_x0000_t75" alt="" o:spid="_x0000_i1029"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png"></v:imagedata></v:fill></v:shape></span><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p></o:p></span></span></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">五、美元指数：昨日收盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">100.93</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今天开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">100.97</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，高开。目前盘面有头肩顶部形态回落，美指在全球大环境下走弱可能大，黄金白银等避险资多头有提振作用。</span></strong><span style="font-family:Times New Roman;"><span lang="EN-US"><v:shape style="width: 417.75pt; height: 225.75pt;" id="图片_x0020_20" type="#_x0000_t75" alt="" o:spid="_x0000_i1030"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png"></v:imagedata></v:fill></v:shape></span><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p></o:p></span></span></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p><span style="font-family:Times New Roman;font-size:16px;">&nbsp;</span></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span>', 1481599265, '薇薇', 1),
(18, '12月14日早评', '<span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-indent: 69.15pt; mso-char-indent-count: 4.92;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; font-size: 14pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">今日早评建议：</span><span style="color: red; font-size: 14pt;" lang="EN-US"><span style="font-family:Times New Roman;">2016/12/14</span></span><span style="color: red; font-family: 宋体; font-size: 14pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">以下建议仅供参考</span><span style="color: red; font-size: 14pt;" lang="EN-US"><o:p></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 66.95pt; text-indent: -66.95pt; mso-char-indent-count: -6.35;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">一、西贵银：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3617</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今天开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3619</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，昨日出现一波暴跌，今日盘面震荡上行，关注小时级别中的中轨压力，建议高空低多思路，重点关注今天晚间的议息会议。反弹到</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3640</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">和</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3680</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">压力，回踩下方</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3600</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">支撑。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 12pt 0cm 3pt;" class="MsoTitle"><span lang="EN-US"><strong><span style="font-size:24px;"><span style="font-family:Cambria;"><v:shapetype id="_x0000_t75" stroked="f" filled="f" path="m@4@5l@4@11@9@11@9@5xe" o:preferrelative="t" o:spt="75" coordsize="21600,21600"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:connecttype="rect" gradientshapeok="t" o:extrusionok="f"> <o:lock aspectratio="t" v:ext="edit"></o:lock></v:path></v:stroke></v:shapetype><v:shape style="width: 406.5pt; height: 176.25pt;" id="图片_x0020_7" alt="" type="#_x0000_t75" o:spid="_x0000_i1025"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png"></v:imagedata></v:fill></v:shape><em><span style="font-family: ''Cambria'',''serif'';"><o:p></o:p></span></em></span></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 41.1pt; text-indent: -41.1pt; mso-char-indent-count: -3.9;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p><span style="font-family:Times New Roman;font-size:16px;">&nbsp;</span></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">二、西贵铜：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">37958</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今天开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">37762</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，略微低开，盘面高位空为主，多头受压回落，目前连续下跌，维持空头趋势，目前已到支撑位</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">37500</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，反弹关注黄金分割线</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">0.236</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">以及</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">0.382</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">压力位</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">38000-38300</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">可做空。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Times New Roman;"><span style="font-size:16px;"><span lang="EN-US"><v:shape style="width: 414.75pt; height: 173.25pt;" id="图片_x0020_8" alt="" type="#_x0000_t75" o:spid="_x0000_i1026"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png"></v:imagedata></v:fill></v:shape></span><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p></o:p></span></span></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 21.1pt; text-indent: -21.1pt; mso-char-indent-count: -2.0;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">三、西贵石：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">445.29</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今日开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">444.45</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，小幅高开。整体行情区间震荡，建议高空低多思路为主，</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">448</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近空，目标看</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">444-442</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">440</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近有效支撑可做多。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p><span style="font-family:Times New Roman;font-size:16px;">&nbsp;</span></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Times New Roman;"><span style="font-size:16px;"><span lang="EN-US"><v:shape style="width: 414.75pt; height: 174.75pt;" id="图片_x0020_9" alt="" type="#_x0000_t75" o:spid="_x0000_i1027"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png"></v:imagedata></v:fill></v:shape></span><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p></o:p></span></span></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">四、西贵气：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">4922</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今天开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">4937</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，高开。昨日收阴线，高空为主思路，上方受阻于</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5030</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">高位，今日盘面以反弹做空为主思路，短线做反弹多单也可以。注意带好风险，尽量高位做空。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 66.9pt; text-indent: -66.9pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-family:Times New Roman;"><span style="font-size:16px;"><span lang="EN-US"><v:shape style="width: 414.75pt; height: 181.5pt;" id="图片_x0020_12" alt="" type="#_x0000_t75" o:spid="_x0000_i1028"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png"></v:imagedata></v:fill></v:shape></span><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 21.1pt; text-indent: -21.1pt; mso-char-indent-count: -2.0;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">五、西贵青：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3585</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今天开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3554</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，低开</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">31</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点。早上时间</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">API</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">库存数据利空消息影响使得低开低走，以反弹做空为主思路，运行在空头趋势中，反弹缺口位不破可继续空，反弹</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3680</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">做空，目标</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3660-3640.<o:p></o:p></span></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Times New Roman;"><span style="font-size:16px;"><span lang="EN-US"><v:shape style="width: 396.75pt; height: 209.25pt;" id="图片_x0020_11" alt="" type="#_x0000_t75" o:spid="_x0000_i1029"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png"></v:imagedata></v:fill></v:shape></span><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p></o:p></span></span></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; text-indent: 0cm; mso-pagination: widow-orphan; mso-list: l0 level1 lfo1;" class="MsoNormal" align="left"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt; mso-bidi-font-family: 宋体;" lang="EN-US"><span style="mso-list: Ignore;"><span style="font-family:Times New Roman;">六、</span></span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">美元指数：昨日收盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">101.04</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，今天开盘</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">101.04</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，持平开盘。目前盘面有双顶形态回落，今日的议息会议影响非常大，为期的第二次加息，美指在全球大环境下会有走强需求，黄金白银等货币属性的空头重点关注。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family:Times New Roman;"><span style="font-size:16px;"><span lang="EN-US"><v:shape style="width: 421.5pt; height: 179.25pt;" id="图片_x0020_17" alt="" type="#_x0000_t75" o:spid="_x0000_i1030"> <v:fill o:detectmouseclick="t"> <v:imagedata o:title="" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png"></v:imagedata></v:fill></v:shape></span><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p><span style="font-family:Times New Roman;font-size:16px;">&nbsp;</span></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span>', 1481686976, '薇薇', 1);
INSERT INTO `chat_apps_scpl` (`id`, `title`, `txt`, `atime`, `user`, `dj`) VALUES
(19, '12月15日早评', '<span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-indent: 69.15pt; mso-char-indent-count: 4.92;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; font-size: 14pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">今日早平建议：</span><span style="color: red; font-size: 14pt;" lang="EN-US"><span style="font-family:Times New Roman;">2016/12/15 </span></span><span style="color: red; font-family: 宋体; font-size: 14pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">以下建议仅供参考</span><span style="color: red; font-size: 14pt;" lang="EN-US"><o:p></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 66.95pt; text-indent: -66.95pt; mso-char-indent-count: -6.35;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">一、西贵银：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3623</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，周</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">4</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">最高</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3608</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，最低</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3596</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，幅度为</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">14</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点，盘面目前震荡偏多，激进者可</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3600</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近做多，</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3570</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">止损，盘面走至</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3640</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">做空，止损</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3680</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3660-70</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近高空点，以高位做空为主。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><v:shapetype id="_x0000_t75" stroked="f" filled="f" path="m@4@5l@4@11@9@11@9@5xe" o:preferrelative="t" o:spt="75" coordsize="21600,21600"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:connecttype="rect" gradientshapeok="t" o:extrusionok="f"> <o:lock aspectratio="t" v:ext="edit"></o:lock></v:path></v:stroke></v:shapetype><v:shape style="width: 440.25pt; height: 265.5pt;" id="_x0000_i1025" alt="" type="#_x0000_t75"> <v:imagedata o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\@3RRZYNOLQ$30H_%5b%25(HS@%5bC.png" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png"></v:imagedata></v:shape><o:p></o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">二、西贵铜：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">38077</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，盘面高位空为主，多头无力目前小幅度震荡上行，今日盘面目会先涨后跌，可在</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">38700</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近高空，止损</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">39000</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，到</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">39100</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近再做空，止损</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">39300</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">。按图做单</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><v:shape style="width: 440.25pt; height: 261pt;" id="_x0000_i1026" alt="" type="#_x0000_t75"> <v:imagedata o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\TD%60()I$MOD%60(C1JDZA9~NHC.png" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png"></v:imagedata></v:shape><o:p></o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 21.1pt; text-indent: -21.1pt; mso-char-indent-count: -2.0;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">三、西贵石：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">443.87</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，周</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">4</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">最高</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">441.7</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，最低</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">439.9</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，幅度</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">1.8</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点，盘面目前多空争夺，高空低位都可做，开盘后处于震荡上行，可轻多，</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">447-439</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">区间做单。若做了单获利及时出来。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><v:shape style="width: 448.5pt; height: 262.5pt;" id="_x0000_i1027" alt="" type="#_x0000_t75"> <v:imagedata o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\ZX1Y16%5bRV%7bJG4J%60HOEZ5%5bJP.png" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png"></v:imagedata></v:shape><o:p></o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">四、西贵气：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5037</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，周</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">4</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">最高</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5094</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，最低</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5066</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，幅度</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">28</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点，盘面条多高开，整体依旧是空头趋势，高位做空为主，破</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5090</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">做多，止损</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5040</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，若跌至</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">4930</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">可轻多。在</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5280</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近高位空最好点位，止损</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">5320</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">。按图标做单</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p><span style="font-family:Times New Roman;font-size:16px;">&nbsp;</span></o:p></span></strong></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><v:shape style="width: 435pt; height: 285.75pt;" id="_x0000_i1028" alt="" type="#_x0000_t75"> <v:imagedata o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\%5b6CIWWY(%5d5H%25LS@SE%7b6P2%7d3.png" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png"></v:imagedata></v:shape><o:p></o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><o:p>&nbsp;</o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 21.1pt; text-indent: -21.1pt; mso-char-indent-count: -2.0;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">五、西贵青：昨天收盘价</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3447</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，周</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">4</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">目前高点</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3452</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，低点</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3443</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，幅度</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">9</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点，早盘面低位震荡，以高位做空为主，预计先涨后跌，</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3440</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">附近轻多，回调</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3520</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">做空，不要轻易做多，</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3580</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">高空最佳点位，止损</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">3620</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">，按图做单。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><v:shape style="width: 436.5pt; height: 4in;" id="_x0000_i1029" alt="" type="#_x0000_t75"> <v:imagedata o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\EE$OUR)U$N0ZZX%60247VJJVW.png" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png"></v:imagedata></v:shape><o:p></o:p></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt 67.15pt; text-indent: -67.15pt; mso-char-indent-count: -6.37;" class="MsoNormal"><span style="font-size:16px;"><strong style="mso-bidi-font-weight: normal;"><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">五、美元指数：美元周三大涨，加息会议决定了后期美元及人民币的走势，</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><span style="font-family:Times New Roman;">20</span></span><span style="color: red; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: ''Times New Roman''; mso-hansi-font-family: ''Times New Roman'';">个点的加息政策立马是的美元指数快速拉升，而离岸人民币则大跌，这对后期大宗商品有及其大的影响，美元指数还会继续上涨，注意黄金、银、油的动态。</span><span style="color: red; mso-bidi-font-size: 10.5pt;" lang="EN-US"><o:p></o:p></span></strong></span></p><span style="font-family:宋体;font-size:16px;"></span><p style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;" class="MsoNormal" align="left"><span style="font-family: 宋体; font-size: 12pt; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;" lang="EN-US"><v:shape style="width: 432.75pt; height: 276.75pt;" id="_x0000_i1030" alt="" type="#_x0000_t75"> <v:imagedata o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\%5bY(F4@_NB)6M(%5dOKBNVXWN0.png" src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png"></v:imagedata></v:shape><o:p></o:p></span></p><span style="font-family:宋体;font-size:16px;"></span>', 1481771199, '薇薇', 1),
(20, '12月20日早评建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早评建议：</span><span lang="EN-US" style="font-size:14.0pt;color:red">2016/12/20</span><span style="''font-size:14.0pt;font-family:">以下建议仅供参考</span><span lang="EN-US" style="font-size:14.0pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:66.95pt;text-indent:-66.95pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">一、西贵银：昨天结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3409</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3416</span><span style="''mso-bidi-font-size:10.5pt;">，高开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">7</span><span style="''mso-bidi-font-size:10.5pt;">个点。盘面大跌过后在低位整理盘面，可以在压力位和支撑位之间采用高抛低吸操作，破</span><span lang="EN-US" style="''mso-bidi-font-size:">3410</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，甚至</span><span lang="EN-US" style="''mso-bidi-font-size:">3400</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">关口盘面空头将再度开启。稳妥起见也可等高位做空。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" style="width:414.75pt; height:177pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="236" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">二、西贵铜：昨天结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">36509</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">36481</span><span style="''mso-bidi-font-size:10.5pt;">，盘面低开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">28</span><span style="''mso-bidi-font-size:10.5pt;">个点。整体盘面大方向是空头，目前盘面处于大跌过后的整理期间，等待高位布局空单。支撑位</span><span lang="EN-US" style="''mso-bidi-font-size:">36400</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">有效也可做短多。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" style="width:414.75pt;height:233.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="311" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">三、西贵石：昨天结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">413.28</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">412.41</span><span style="''mso-bidi-font-size:10.5pt;">，略微低开。昨天打了一根长下影线，瞬间完成，在大方向上也不会影响空头走势，今日高位空为主，最好等待回调</span><span lang="EN-US" style="''mso-bidi-font-size:">419</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">压力位附近做空，破支撑</span><span lang="EN-US" style="''mso-bidi-font-size:">411</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">也可以直接做空。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" style="width:414.75pt;height:244.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="326" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵气：昨日结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4828</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4836</span><span style="''mso-bidi-font-size:10.5pt;">，盘面高开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">8</span><span style="''mso-bidi-font-size:10.5pt;">个点，昨天盘面有止住下跌之意，今日盘面低位做多。破压力位</span><span lang="EN-US" style="''mso-bidi-font-size:">4880</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">盘面回归多头，等回调直接做多。激进的投资者朋友可直接在</span><span lang="EN-US" style="''mso-bidi-font-size:">4810</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近多单进场，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">4770</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，目标看压力位附近。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" style="width:414.75pt;height:177.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:title="%14$7I3ZQ33$QP([UGJL@RB"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="237" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">五、西贵青：昨天结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3535</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3537</span><span style="''mso-bidi-font-size:10.5pt;">，高开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">2</span><span style="''mso-bidi-font-size:10.5pt;">个点。盘面偏向于空头，可借助压力位</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3565</span><span style="''mso-bidi-font-size:10.5pt;">做空，击破</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3500</span><span style="''mso-bidi-font-size:10.5pt;">继续持有。最近欧佩克和非欧佩克国家的减产，原油还是要小心多头反杀，</span><span lang="EN-US" style="''mso-bidi-font-size:">3565</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">的压力被破，小心多头力度再次爆发，做单带好风险。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" style="width:419.25pt;height:222.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="559" height="297" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">六、美元指数：今日</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">2</span><span style="''mso-bidi-font-size:10.5pt;">点半美联储主席耶伦称美国就业市场处于</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">10</span><span style="''mso-bidi-font-size:10.5pt;">年来最强劲状态，说明美元。标普爆料美联储明年要加息</span><span lang="EN-US" style="''mso-bidi-font-size:">2</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">次。种种迹象表明美元指数走强可能还是很大的。白银黄金要注意防空头行情。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shape id="_x0000_i1030" type="#_x0000_t75" style="width:419.25pt;height:150.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="559" height="201" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image012.jpg" v:shapes="_x0000_i1030" alt="" /><!--[endif]--><o:p></o:p></span></strong></p>', 1482202994, '薇薇', 1),
(21, '12月28日早评建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早评建议：</span></strong><st1:chsdate isrocdate="False" islunardate="False" day="28" month="12" year="2016" w:st="on"><strong><span lang="EN-US" style="font-size:14.0pt;color:red">2016/12/28</span></strong></st1:chsdate><strong><span style="''font-size:14.0pt;font-family:">以下建议仅供参考</span><span lang="EN-US" style="font-size:14.0pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><strong><span lang="EN-US" style="''mso-bidi-font-size:">一、<span style="font-weight: normal; font-stretch: normal; font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><!--[endif]--><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">西贵银：昨天收盘价</span><span lang="EN-US" style="''mso-bidi-font-size:">3416</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">今天开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">3416</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，平开。昨天白银出现先涨后跌再涨走势，日线最后以带上下影线的阳线收盘。总体走势震荡偏多。而美元指数最近又是震荡偏多走势，今天美指即将迎来变盘时间点，今天做白银需谨慎。建议在美指没变盘前任然以高抛低吸为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="margin-left:18.0pt"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" style="width:405pt; height:223.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="540" height="298" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">二、西贵铜：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">36308</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">36906</span><span style="''mso-bidi-font-size:10.5pt;">。铜在经过一天休市受消息面的影响情况</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">下，今天出现高开高走的强势走势，日内建议以低位做多为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" style="width:415.5pt;height:195.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="554" height="261" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">三、西贵石：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">412.04</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">409.39</span><span style="''mso-bidi-font-size:10.5pt;">，今天出现低开。精矿石在经过昨天的</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">一根中阳线确认过后，短期出现反转。建议日内以低位做多为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" style="width:414.75pt;height:215.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="287" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵气：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5288</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5271</span><span style="''mso-bidi-font-size:10.5pt;">，天然气昨天收了跟带下影线的小</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">K</span><span style="''mso-bidi-font-size:10.5pt;">线，出</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">现探底回升走势，多头走势强势，大方向多头任然不变。大方向建议任然以低位做多为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" style="width:423pt;height:213.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="564" height="285" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">五、西贵青：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3581</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3590</span><span style="''mso-bidi-font-size:10.5pt;">，高开。沥青今天出现高开低走走势，昨天多头表现强势，盘中一度冲击</span><span lang="EN-US" style="''mso-bidi-font-size:">3600</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">整数关口，但受压回落。但受减产协议的支撑多头依旧还在，大方向而已任然以地位做多为主，但就目前为主小时线出现上涨无力走势，建议今天白天以高位做空为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" style="width:415.5pt;height:218.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="554" height="291" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><strong><span style="''mso-bidi-font-size:10.5pt;">六、美元指数：美指最近日线级别一直在高位震荡，多头走势变现强势，但短期美指即将迎来变盘时间点，在没变盘前目前我们还维持低位做多思路。</span></strong><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p></o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shape id="_x0000_i1030" type="#_x0000_t75" style="width:415.5pt;height:202.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="554" height="270" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image012.jpg" v:shapes="_x0000_i1030" alt="" /><!--[endif]--><o:p></o:p></span></strong></p>', 1482896404, '薇薇', 1);
INSERT INTO `chat_apps_scpl` (`id`, `title`, `txt`, `atime`, `user`, `dj`) VALUES
(22, '12月29日早评建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早评建议：</span></strong><st1:chsdate isrocdate="False" islunardate="False" day="29" month="12" year="2016" w:st="on"><strong><span lang="EN-US" style="font-size:14.0pt;color:red">2016/12/29</span></strong></st1:chsdate><strong><span style="''font-size:14.0pt;font-family:">以下建议仅供参考</span><span lang="EN-US" style="font-size:14.0pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><strong><span lang="EN-US" style="''mso-bidi-font-size:">一、<span style="font-weight: normal; font-stretch: normal; font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><!--[endif]--><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">西贵银：昨天收盘价</span><span lang="EN-US" style="''mso-bidi-font-size:">3424,</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">今天开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">3430</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，高开。昨天白银受美指影响最终以红色十字星收盘，总体来看多头还是比较强势。今天建议以低位做多为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" style="width:414.75pt; height:186.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="249" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal" style="margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><strong><span lang="EN-US" style="''mso-bidi-font-size:">二、<span style="font-weight: normal; font-stretch: normal; font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><!--[endif]--><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">西贵铜：昨天收盘价</span><span lang="EN-US" style="''mso-bidi-font-size:">36614</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，今日开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">36637</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">。铜昨天出现大幅跳空高开后，出现回补缺口走势，回补完缺口后又继续出现探底回升走势，多头走势强势。日内建议以低位做多为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" style="width:415.5pt;height:208.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="554" height="278" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">三、西贵石：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">406.65</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">406.68</span><span style="''mso-bidi-font-size:10.5pt;">，出现小幅高开。精矿石昨天出现探底回升走势，多头走势依旧强势，日内建议以低位做多为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span lang="EN-US" style="''mso-bidi-font-size:"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" style="width:414pt;height:203.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="552" height="271" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵气：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5447</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5461</span><span style="''mso-bidi-font-size:10.5pt;">，继续高开。天然气昨天以中阳线收盘，多</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">头表现强劲，日内建议以低位做多为主。</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" style="width:414pt;height:217.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="552" height="290" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">五、西贵青：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3593</span><span style="''mso-bidi-font-size:10.5pt;">，今天开盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3572.</span><span style="''mso-bidi-font-size:10.5pt;">低开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">21</span><span style="''mso-bidi-font-size:10.5pt;">个点。昨天沥青在高位以红色十字星收盘，说明多空争夺比较激烈，而且是在高位出现十字星。建议今天做单谨慎点。白天个人不建议做沥青。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span lang="EN-US" style="''mso-bidi-font-size:"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" style="width:414.75pt;height:217.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="290" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><strong><span style="''mso-bidi-font-size:10.5pt;">六、美元指数：美指昨天依旧表现强势，一直不断上涨。但今天美指出现低开低走的走势，从小时线</span><span style="''mso-bidi-font-size:10.5pt;"> </span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">两小时线</span><span style="''mso-bidi-font-size:10.5pt;"> </span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">四小时线客运看出，美指昨天的上涨出现冲高受压回落的走势，而且目前日线级别</span><span lang="EN-US" style="''mso-bidi-font-size:">MACD</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">开始出现绿色量能柱，说明空头开始出现，个人认为美指今天主要以回调为主，建议以高位做空为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1030" type="#_x0000_t75" style="width:402pt;height:223.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="536" height="298" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image012.jpg" v:shapes="_x0000_i1030" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p>', 1482982633, '薇薇', 1),
(23, '2016年12月30日早评建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早评建议：</span></strong><st1:chsdate isrocdate="False" islunardate="False" day="30" month="12" year="2016" w:st="on"><strong><span lang="EN-US" style="font-size:14.0pt;color:red">2016/12/30</span></strong></st1:chsdate><strong><span style="''font-size:14.0pt;font-family:">以下建议仅供参考</span><span lang="EN-US" style="font-size:14.0pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><strong><span lang="EN-US" style="''mso-bidi-font-size:">一、<span style="font-weight: normal; font-stretch: normal; font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><!--[endif]--><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">西贵银：昨天收盘价</span><span lang="EN-US" style="''mso-bidi-font-size:">3455, </span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">今日开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">3461</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">。高开。考虑到美指空头的出现，日内建议以地位做多为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" style="width:405pt; height:200.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="540" height="267" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" style="margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><strong><span lang="EN-US" style="''mso-bidi-font-size:">二、<span style="font-weight: normal; font-stretch: normal; font-size: 7pt; font-family: ''Times New Roman'';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></strong><!--[endif]--><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">西贵铜：昨天收盘价</span><span lang="EN-US" style="''mso-bidi-font-size:">36441</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，今天开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">36474</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，出现小幅高开。铜最近日线级别连续收小</span><span lang="EN-US" style="''mso-bidi-font-size:">K</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">线，震荡走势比较明显。建议日内以高抛低吸为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" style="width:405pt;height:221.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="540" height="295" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">三、西贵石：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">411.65</span><span style="''mso-bidi-font-size:10.5pt;">，今开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">410.40</span><span style="''mso-bidi-font-size:10.5pt;">，低开一个多点。精矿石从周三开始已经出现震荡走势，建议短时间以高抛低吸为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span lang="EN-US" style="''mso-bidi-font-size:"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" style="width:396pt;height:207.75pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="528" height="277" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span lang="EN-US" style="''mso-bidi-font-size:">&nbsp;</span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵气：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5385</span><span style="''mso-bidi-font-size:10.5pt;">，今天开盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5354.</span><span style="''mso-bidi-font-size:10.5pt;">低开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">31</span><span style="''mso-bidi-font-size:10.5pt;">个点。天然气昨天在盘中一度大</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">跌，生生差点抹去前天涨幅，昨天空头走势表现强劲，虽然在尾盘有往回收，但今早又出</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">现低开走势，今天如果多头不强势突破</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5430</span><span style="''mso-bidi-font-size:10.5pt;">的情况下，建议以高位做空为主。</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" style="width:396pt;height:218.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="528" height="291" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">五、西贵青：昨天收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3576</span><span style="''mso-bidi-font-size:10.5pt;">，今天开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3585</span><span style="''mso-bidi-font-size:10.5pt;">，出现小幅高开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">9</span><span style="''mso-bidi-font-size:10.5pt;">个点沥青昨天继续在高位以十字星收盘，做多单需要谨慎，虽然前天收十字星，昨天没出现大跌，单昨天又再度以十字星收盘，仍旧值得我们注意。高位连续收十字星，为防止出现反转，个人建议以高位做空为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:21.1pt;text-indent:-21.1pt;mso-char-indent-count:"><strong><span lang="EN-US" style="''mso-bidi-font-size:"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" style="width:405pt;height:201pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="540" height="268" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><strong><span style="''mso-bidi-font-size:10.5pt;">六、美元指数：美指昨天一根中阴线往下走，中途多头几乎没有做任何的抵抗，空头走势比较强势。日线级别已经开始回调，个人建议今天美指以高位做空为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><strong><span lang="EN-US" style="''mso-bidi-font-size:"><!--[if gte vml 1]><v:shape id="_x0000_i1030" type="#_x0000_t75" style="width:415.5pt;height:211.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image011.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="554" height="282" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image012.jpg" v:shapes="_x0000_i1030" alt="" /><!--[endif]--><o:p></o:p></span></strong></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p>', 1483068335, '薇薇', 1),
(24, '2017年1月4日早评建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早平建议：</span></strong><st1:chsdate year="2017" month="1" day="3" islunardate="False" isrocdate="False" w:st="on"><strong><span lang="EN-US" style="font-size:14.0pt;color:red">2017/1/3</span></strong></st1:chsdate><strong><span lang="EN-US" style="''font-size:14.0pt;"> </span><span style="''font-size:14.0pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">以下建议仅供参考</span><span lang="EN-US" style="''font-size:14.0pt;"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:66.95pt;text-indent:-66.95pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">一、西贵银：昨日收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3492</span><span style="''mso-bidi-font-size:10.5pt;">，今日目前最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3504</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3478</span><span style="''mso-bidi-font-size:10.5pt;">，幅度为</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">26</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面昨日强势上涨，以低位做多为主，</span><span lang="EN-US" style="''mso-bidi-font-size:">3400</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近做多最佳点，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3370.</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">。破</span><span lang="EN-US" style="''mso-bidi-font-size:">3460</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">追多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3420</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">3500</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">要慎重追多，破</span><span lang="EN-US" style="''mso-bidi-font-size:">3490</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">多单继续持有，除了昨日高点附近外切勿做空。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" alt="" style="width:441.75pt; height:266.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\C7%7d%5b%5bPOG%5dCAX)2N%25A%7dMBH%7dB.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="589" height="355" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">二、西贵铜：昨日收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">36383</span><span style="''mso-bidi-font-size:10.5pt;">，今日目前最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">36537</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">36185</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">352</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面高位做空为主，空头形成，可在</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">37200</span><span style="''mso-bidi-font-size:10.5pt;">附近做空，止损</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">37400</span><span style="''mso-bidi-font-size:10.5pt;">，按图做单。</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" alt="" style="width:440.25pt;height:262.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\EUZA@%60OWFL733$%7b02NW6(7N.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="587" height="350" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">三、西贵气：昨日收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4686</span><span style="''mso-bidi-font-size:10.5pt;">，今日目前最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4709</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">4671</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">38</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面昨日强势下跌后没有回调，预计今日又回调后再跌，且空头趋势强势，盘面开盘后盘整，以低位做多为主，破</span><span lang="EN-US" style="''mso-bidi-font-size:">4670</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">4640</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">4660</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做空，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">4700</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">。注：以高低多为主。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" alt="" style="width:438.75pt;height:283.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\MK90AW6OOQ(WLL5CO@1%60(W8.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="585" height="378" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵青：昨日收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3478</span><span style="''mso-bidi-font-size:10.5pt;">，今日目前最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3506</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3491</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">14</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面目前盘整，以低位做多为主，</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3510</span><span style="''mso-bidi-font-size:10.5pt;">附近做多，止损</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3480</span><span style="''mso-bidi-font-size:10.5pt;">，破</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3600</span><span style="''mso-bidi-font-size:10.5pt;">附近追多，止损</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3560</span><span style="''mso-bidi-font-size:10.5pt;">，在高位</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3680</span><span style="''mso-bidi-font-size:10.5pt;">可做空，按图做单。</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" alt="" style="width:435.75pt;height:252pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\HV5NC%60(K68JDE%5b6174H_5@Y.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="581" height="336" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal"><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">五、美元指数：美元昨日强势上涨破前期新高，破位近半个月交易的高位震荡，收了根阳</span><span lang="EN-US" style="''mso-bidi-font-size:">K</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，日线继续释放多头信号，后续趋势依旧为多头，对后期黄金、银、油趋势有着强烈影响，预计接下来黄金、银、油都有可能会受到美元指数下跌影响而下跌。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" alt="" style="width:433.5pt;height:261pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\%5b(D6F%7b1I~~1)IU_B5DEQ$7H.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="578" height="348" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p>', 1483497975, '阿美', 1),
(25, '2017年1月5日早评建议', '<div>今日早平建议：2017/1/5 以下建议仅供参考</div><div>一、西贵银：昨日收盘价3509，今日目前最高3550，最低3511，幅度为39个点，盘面昨日走双向先跌后涨，今天开盘后急速拉升，以低位做多为主，3497-3500做了双底形态，震荡上行区间已经破位，后期涨势依旧强势，按图做单，勿空。</div><div>&nbsp;</div><div>二、西贵铜：昨日收盘价37387，今日目前最高37500，最低37407，幅度93个点，盘面低位做多为主，空头形成后又被多头给吞没，可在36700附近做多，止损36500，勿高空，盘面继续多头思路，破高点压力位进多，止损37300，按图做单。</div><div>&nbsp;</div><div>三、西贵气：昨日收盘价4603，今日目前最高4595，最低4568，幅度27个点，盘面昨日强势下跌后V形回调，且空头趋势强势，盘面开盘后盘整，以高位空为主，破4580做空，止损4620，破4610做多，止损4570。注：以高空为主。</div><div>&nbsp;</div><div>四、西贵青：昨日收盘价3539，今日目前最高3556，最低3534，幅度22个点，盘面目前偏空，以高位空为主，破3530做空，止损3560，破3560做多，止损3530，按图做单。</div><div>&nbsp;</div><div>五、美元指数：美元昨日强势下跌，收了根阴K，日线释放空头信号，对后期黄金、银、油趋势有着强烈影响，预计接下来黄金、银、油都有可能会受到美元指数下跌影响而上涨。但是由于昨日强跌，今天不会强跌，先跌后涨。</div><div>&nbsp;</div><div><br /></div><div><br /></div><div><br /></div><div><br /></div>', 1483585409, '阿美', 1),
(26, '2017.1.6早评建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早平建议：</span><span lang="EN-US" style="font-size:14.0pt;color:red">2017/1/6 </span><span style="''font-size:14.0pt;font-family:">以下建议仅供参考</span><span lang="EN-US" style="font-size:14.0pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="''margin-left:66.95pt;text-indent:-66.95pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">一、西贵银：昨日收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3544</span><span style="''mso-bidi-font-size:10.5pt;">，今日目前最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3566</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3534</span><span style="''mso-bidi-font-size:10.5pt;">，幅度为</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">32</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面昨日强势上涨，以低位做多为主，</span><span lang="EN-US" style="''mso-bidi-font-size:">3530</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近做多最佳点，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3500.</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">。破</span><span lang="EN-US" style="''mso-bidi-font-size:">3550-3560</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">追多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">3530</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，切勿做空。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" alt="" style="width:439.5pt; height:260.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:href="../../AppData/Roaming/Tencent/Users/2896538928/QQ/WinTemp/RichOle/Q3$4ZX2%5bMOVX83OCGR8SPV3.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="586" height="347" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">二、西贵铜：昨日收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">37042</span><span style="''mso-bidi-font-size:10.5pt;">，今日目前最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">37218</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">37052</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">166</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面目前震荡，以低位做多为主，多头虽然未形成，可破</span><span lang="EN-US" style="''mso-bidi-font-size:">37200</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">做多，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">37000</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，低点</span><span lang="EN-US" style="''mso-bidi-font-size:">36700-36600</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">低位做多最佳点，按图做单。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" alt="" style="width:438.75pt;height:287.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\HVNHS1S@_A)YLPNR6O%25OQNO.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="585" height="383" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">三、西贵气：昨日收盘价</span><span lang="EN-US" style="''mso-bidi-font-size:">4661</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，今日目前最高</span><span lang="EN-US" style="''mso-bidi-font-size:">4658</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，最低</span><span lang="EN-US" style="''mso-bidi-font-size:">4635</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，幅度</span><span lang="EN-US" style="''mso-bidi-font-size:">23</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">个点，盘面昨日强势下跌后没有回调，预计今日回调后再跌，且空头趋势强势，盘面开盘后盘整，高位做空为主，破</span><span lang="EN-US" style="''mso-bidi-font-size:">4650</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">高位做空，止损</span><span lang="EN-US" style="''mso-bidi-font-size:">4690</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，破</span><span lang="EN-US" style="''mso-bidi-font-size:">4560</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">追空或继续持有，注：做多获利就跑。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" alt="" style="width:434.25pt;height:280.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\GFF%7d)G~K23HGN97ARKYVS4E.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="579" height="374" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵青：昨日收盘价</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3579</span><span style="''mso-bidi-font-size:10.5pt;">，今日目前最高</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3584</span><span style="''mso-bidi-font-size:10.5pt;">，最低</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3572</span><span style="''mso-bidi-font-size:10.5pt;">，幅度</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">12</span><span style="''mso-bidi-font-size:10.5pt;">个点，盘面目前盘整，以低位做多为主，</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3550</span><span style="''mso-bidi-font-size:10.5pt;">附近做多，止损</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3520</span><span style="''mso-bidi-font-size:10.5pt;">，破</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3580</span><span style="''mso-bidi-font-size:10.5pt;">做多，止损</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3540</span><span style="''mso-bidi-font-size:10.5pt;">，破</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3530</span><span style="''mso-bidi-font-size:10.5pt;">可做空，按图做单。</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" alt="" style="width:436.5pt;height:284.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\LJ5~Y%5bQDK%25RX%60O%25Q($1NJ%60G.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="582" height="379" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal"><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">五、美元指数：美元昨日强势下跌依旧空头位主，收了根阴</span><span lang="EN-US" style="''mso-bidi-font-size:">K</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，日线继续释放空头信号，后续趋势依旧为空头，注意大跌后的回调，对后期黄金、银、油趋势有着强烈影响，预计接下来黄金、银、油都有可能会受到美元指数下跌影响而上涨。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" alt="" style="width:432.75pt;height:271.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:href="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Tencent\\Users\\2896538928\\QQ\\WinTemp\\RichOle\\T1ZQH8IFLQCN_~QO_9V1@BH.png"></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="577" height="362" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p>', 1483676966, '阿美', 1);
INSERT INTO `chat_apps_scpl` (`id`, `title`, `txt`, `atime`, `user`, `dj`) VALUES
(27, '2017年1月10日早评建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早平建议：</span><span lang="EN-US" style="font-size:14.0pt;color:red">2017/1/10 </span><span style="''font-size:14.0pt;font-family:">以下建议仅供参考</span><span lang="EN-US" style="font-size:14.0pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="margin-left:22.5pt;text-indent:-22.5pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><strong><span lang="EN-US" style="''mso-bidi-font-size:">一、</span></strong><!--[endif]--><strong><span style="''mso-bidi-font-size:10.5pt;">西贵银：昨日结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3555</span><span style="''mso-bidi-font-size:10.5pt;">，今天开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3545</span><span style="''mso-bidi-font-size:10.5pt;">，低开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">10</span><span style="''mso-bidi-font-size:10.5pt;">个点。盘面偏多，建议回踩中轨支撑做多单，破中轨要多观望，最佳做多点位</span><span lang="EN-US" style="''mso-bidi-font-size:">3530</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近，可看到昨日高点</span><span lang="EN-US" style="''mso-bidi-font-size:">3570</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近，止损带在</span><span lang="EN-US" style="''mso-bidi-font-size:">3500</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">下方。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" style="width:414.75pt; height:221.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="295" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">二、西贵铜：昨日结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">37065</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">37101</span><span style="''mso-bidi-font-size:10.5pt;">，高开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">46</span><span style="''mso-bidi-font-size:10.5pt;">个点。盘面偏震荡，建议多观望，可等待小时线上轨附近做空，下轨附近做多，高抛低吸。破位则等待回调再做相对的趋势单。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" style="width:415.5pt;height:213pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="554" height="284" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">三、西贵气：昨日结算</span><span lang="EN-US" style="''mso-bidi-font-size:">4377</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，今日开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">4391</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，高开</span><span lang="EN-US" style="''mso-bidi-font-size:">13</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">个点。昨日盘面打破箱体下沿，大跌一波。盘面依然偏空，建议回调做空单更有效。</span><span lang="EN-US" style="''mso-bidi-font-size:">4500</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">可做多空分界点，不破空，破则要考虑多，小心行情反转。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" style="width:414.75pt;height:141pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="188" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵青：昨日结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3456</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3451</span><span style="''mso-bidi-font-size:10.5pt;">，低开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">5</span><span style="''mso-bidi-font-size:10.5pt;">个点。昨日收线比较弱势，今日盘面建议高位做空更好。最佳做空点位</span><span lang="EN-US" style="''mso-bidi-font-size:">3515</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近，反弹力度不大，</span><span lang="EN-US" style="''mso-bidi-font-size:">3470</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近也可以做空。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" style="width:415.5pt;height:290.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="554" height="387" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">五、美元指数：昨日结算</span><span lang="EN-US" style="''mso-bidi-font-size:">101.9437</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，今日开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">101.9498</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，略微高开。昨日收线偏空，今日盘面也偏空，盘面目前处于震荡整理期间，等待再次走出方向。注意上方压力</span><span lang="EN-US" style="''mso-bidi-font-size:">102.15</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">美元，不破空头还将继续，破则有反转可能。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" style="width:415.5pt;height:181.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="554" height="242" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p>', 1484015235, '薇薇', 1),
(28, '1月11日早盘建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早评建议：</span><span lang="EN-US" style="font-size:14.0pt;color:red">2017/1/11 </span><span style="''font-size:14.0pt;font-family:">以下建议仅供参考</span><span lang="EN-US" style="font-size:14.0pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="margin-left:22.5pt;text-indent:-22.5pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><strong><span lang="EN-US" style="''mso-bidi-font-size:">一、</span></strong><!--[endif]--><strong><span style="''mso-bidi-font-size:10.5pt;">西贵银：昨日结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3593,</span><span style="''mso-bidi-font-size:10.5pt;">今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3591</span><span style="''mso-bidi-font-size:10.5pt;">，低开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">2</span><span style="''mso-bidi-font-size:10.5pt;">个点。目前盘面是昨日冲高之后的回落，有震荡调整之意，盘面有偏空表现。建议回踩</span><span lang="EN-US" style="''mso-bidi-font-size:">3570</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近做多单。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" style="width:414.75pt; height:207pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="276" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">二、西贵铜：昨日结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">38117</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">38210</span><span style="''mso-bidi-font-size:10.5pt;">，高开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">93</span><span style="''mso-bidi-font-size:10.5pt;">个点。盘面偏多，建议等待回调做多单。目前盘面有回调之势，激进的朋友可以先做短线回调空单，稳健者等待回调完毕做多单。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" style="width:414.75pt;height:235.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="314" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">三、西贵气：昨日结算</span><span lang="EN-US" style="''mso-bidi-font-size:">4623</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，今日开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">4618</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，低开</span><span lang="EN-US" style="''mso-bidi-font-size:">5</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">个点。昨日盘面的强势还会继续，建议低位做多。目前盘面属于回调，只要不破</span><span lang="EN-US" style="''mso-bidi-font-size:">4500</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">位支撑，多头就不会被打破。打破</span><span lang="EN-US" style="''mso-bidi-font-size:">4570</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">支撑可以考虑做短线空单，最好等多头发力进场多单。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" style="width:411pt;height:145.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="548" height="194" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵青：昨日结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3385</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3382</span><span style="''mso-bidi-font-size:10.5pt;">，低开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3</span><span style="''mso-bidi-font-size:10.5pt;">个点。盘面偏空，建议回调之后做空。盘面已靠近日线有效支撑</span><span lang="EN-US" style="''mso-bidi-font-size:">3380</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近支撑。破则做空，不破做短多。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" style="width:411pt;height:181.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="548" height="242" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">五、美元指数：昨日结算</span><span lang="EN-US" style="''mso-bidi-font-size:">102.0412</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，今日开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">102.0297</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，略微低开。盘面受阻于</span><span lang="EN-US" style="''mso-bidi-font-size:">102.12</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，击破压力美元将再涨。盘面结构对多头有利。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1029" type="#_x0000_t75" style="width:414.75pt;height:158.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image009.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="211" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg" v:shapes="_x0000_i1029" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p>', 1484100106, '薇薇', 1),
(29, '1月12号早评建议', '<p class="MsoNormal" style="text-indent:69.15pt;mso-char-indent-count:4.92"><strong><span style="''font-size:14.0pt;font-family:">今日早评建议：</span><span lang="EN-US" style="font-size:14.0pt;color:red">2017/1/12</span><span style="''font-size:14.0pt;font-family:">以下建议仅供参考</span><span lang="EN-US" style="font-size:14.0pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" style="margin-left:22.5pt;text-indent:-22.5pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><strong><span lang="EN-US" style="''mso-bidi-font-size:">一、</span></strong><!--[endif]--><strong><span style="''mso-bidi-font-size:10.5pt;">西贵银：昨日结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3576</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3577</span><span style="''mso-bidi-font-size:10.5pt;">，平开。盘面对多头有利，目前盘面震荡向上，短期内需要调整，建议大家保持观望。看好</span><span lang="EN-US" style="''mso-bidi-font-size:">3575</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">这个支撑位，验证有效可以做多单，破则做空。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter"> <v:formulas>  <v:f eqn="if lineDrawn pixelLineWidth 0">  <v:f eqn="sum @0 1 0">  <v:f eqn="sum 0 0 @1">  <v:f eqn="prod @2 1 2">  <v:f eqn="prod @3 21600 pixelWidth">  <v:f eqn="prod @3 21600 pixelHeight">  <v:f eqn="sum @0 0 1">  <v:f eqn="prod @6 1 2">  <v:f eqn="prod @7 21600 pixelWidth">  <v:f eqn="sum @8 21600 0">  <v:f eqn="prod @7 21600 pixelHeight">  <v:f eqn="sum @10 21600 0"> </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"> <o:lock v:ext="edit" aspectratio="t"></o:lock></v:path></v:stroke></v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" style="width:415.5pt; height:191.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="554" height="255" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v:shapes="_x0000_i1025" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">二、西贵铜：暂未开盘。</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal"><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">三、西贵气：昨日结算</span><span lang="EN-US" style="''mso-bidi-font-size:">4559</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，今日开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">4647</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，高开</span><span lang="EN-US" style="''mso-bidi-font-size:">88</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">个点。盘面偏多，建议低位做多。盘面有形成</span><span lang="EN-US" style="''mso-bidi-font-size:">W</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">底之势，多验证一下。第一支撑</span><span lang="EN-US" style="''mso-bidi-font-size:">4620</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近做多，第二支撑</span><span lang="EN-US" style="''mso-bidi-font-size:">4530</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">不可打破，破则转空。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1026" type="#_x0000_t75" style="width:414.75pt;height:141pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="553" height="188" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" v:shapes="_x0000_i1026" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" style="''margin-left:67.15pt;text-indent:-67.15pt;mso-char-indent-count:"><strong><span style="''mso-bidi-font-size:">四、西贵青：昨日结算</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3385</span><span style="''mso-bidi-font-size:10.5pt;">，今日开盘</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3382</span><span style="''mso-bidi-font-size:10.5pt;">，低开</span><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">3</span><span style="''mso-bidi-font-size:10.5pt;">个点。盘面偏空，建议回调之后做空。盘面已靠近日线有效支撑</span><span lang="EN-US" style="''mso-bidi-font-size:">3380</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">附近支撑。破则做空，不破做短多。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1027" type="#_x0000_t75" style="width:414pt;height:326.25pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="552" height="435" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg" v:shapes="_x0000_i1027" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal"><strong><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">五、美元指数：昨日结算</span><span lang="EN-US" style="''mso-bidi-font-size:">101.7315</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，今日开盘</span><span lang="EN-US" style="''mso-bidi-font-size:">101.7304</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">，盘面略微低开。昨日盘面来回走最终站位是偏空。下方支撑非常有效，接下来看美元指数的向上反弹。注意：破</span><span lang="EN-US" style="''mso-bidi-font-size:">101.30</span><span style="''mso-bidi-font-size:10.5pt;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;">美元盘面将继续回到空头跌势，多多观望，等待验证支撑的有效性。</span><span lang="EN-US" style="''mso-bidi-font-size:"><o:p></o:p></span></strong></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><!--[if gte vml 1]><v:shape id="_x0000_i1028" type="#_x0000_t75" style="width:414pt;height:244.5pt"> <v:imagedata src="file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image007.png" o:title=""></v:imagedata></v:shape><![endif]--><!--[if !vml]--><img width="552" height="326" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg" v:shapes="_x0000_i1028" alt="" /><!--[endif]--><o:p></o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal" align="left"><span lang="EN-US" style="''font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;"><o:p>&nbsp;</o:p></span></p><p class="MsoNormal"><strong><span lang="EN-US" style="mso-bidi-font-size:10.5pt;color:red">&nbsp;</span></strong></p>', 1484186826, '薇薇', 1),
(30, '2017,3月6号早评', '<!--StartFragment--><span style="font-family:宋体;font-size:16px;">&nbsp;</span><div style="LAYOUT-GRID:  15.6pt none" class="Section1"><p style="PAGE-BREAK-AFTER: auto; TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify; PAGE-BREAK-BEFORE: auto; LINE-HEIGHT: normal; TEXT-INDENT: 84pt; MARGIN: 0pt; LAYOUT-GRID-MODE: both; DIRECTION: ltr; WORD-BREAK: normal; mso-char-indent-count: 7.0; mso-char-indent-size: 12.0; mso-pagination: none; mso-outline-level: body-text; mso-hyphenate: auto; mso-layout-grid-align: auto; punctuation-trim: none; punctuation-wrap: hanging; mso-line-break-override: none; mso-vertical-align-alt: auto" class="MsoNormal"><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: #ff0000; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; FONT-WEIGHT: bold; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体">今日早</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: #ff0000; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; FONT-WEIGHT: bold; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体">评</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: #ff0000; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; FONT-WEIGHT: bold; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体">建议：</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: #ff0000; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; FONT-WEIGHT: bold; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体; mso-fareast-font-family: 宋体">17-3</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: #ff0000; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; FONT-WEIGHT: bold; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体; mso-fareast-font-family: 宋体">-</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: #ff0000; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; FONT-WEIGHT: bold; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体; mso-fareast-font-family: 宋体">6</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: #ff0000; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; FONT-WEIGHT: bold; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体">以下建议仅供参考</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: #ff0000; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; FONT-WEIGHT: bold; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体; mso-fareast-font-family: 宋体"><o:p></o:p></span></p><p style="PAGE-BREAK-AFTER: auto; TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify; PAGE-BREAK-BEFORE: auto; LINE-HEIGHT: normal; TEXT-INDENT: 0pt; MARGIN: 0pt; LAYOUT-GRID-MODE: both; DIRECTION: ltr; WORD-BREAK: normal; mso-pagination: none; mso-outline-level: body-text; mso-hyphenate: auto; mso-layout-grid-align: auto; punctuation-trim: none; punctuation-wrap: hanging; mso-line-break-override: none; mso-vertical-align-alt: auto" class="MsoNormal"><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: 宋体">一：</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: 宋体">青岛银</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-bidi-font-size: 10.5pt; mso-ascii-font-family: 宋体">：</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">开盘</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">3756</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">,</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体"> </span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">上周五</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">收盘</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">3749</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">，</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">，目前盘面大跌后的反弹，空头还未消散，有几个点位需要验证，压力位</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">3760</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">附近，支撑</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">3730</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">和</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">3700</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">附近，今日盘面需要在这</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">60</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">个点左右走动，把握好多空单时机。</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体"><o:p></o:p></span></p><p style="PAGE-BREAK-AFTER: auto; TEXT-ALIGN: left; PAGE-BREAK-BEFORE: auto; LINE-HEIGHT: normal; TEXT-INDENT: 0pt; MARGIN: 0pt; LAYOUT-GRID-MODE: both; DIRECTION: ltr; WORD-BREAK: normal; mso-pagination: widow-orphan; mso-outline-level: body-text; mso-hyphenate: auto; mso-layout-grid-align: auto; punctuation-trim: none; punctuation-wrap: hanging; mso-line-break-override: none; mso-vertical-align-alt: auto" class="MsoNormal"><v:shape style="TEXT-INDENT: 0px; WIDTH: 411.836pt; HEIGHT: 198.75pt" id="_x0000_s1026" type="#_x0000_t75" filled="f"><v:imagedata src="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Yozo_Office\\html\\file0001.png" o:title="8198842201488770643303"></v:imagedata><o:lock aspectratio="t"></o:lock><v:stroke on="f" color="#000000"></v:stroke><w:wrap type="none"></w:wrap></v:shape><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0.0pt"><o:p></o:p></span></p><p style="PAGE-BREAK-AFTER: auto; TEXT-ALIGN: left; PAGE-BREAK-BEFORE: auto; LINE-HEIGHT: normal; TEXT-INDENT: 0pt; MARGIN: 0pt; LAYOUT-GRID-MODE: both; DIRECTION: ltr; WORD-BREAK: normal; mso-pagination: widow-orphan; mso-outline-level: body-text; mso-hyphenate: auto; mso-layout-grid-align: auto; punctuation-trim: none; punctuation-wrap: hanging; mso-line-break-override: none; mso-vertical-align-alt: auto" class="MsoNormal"><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">二：</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">青岛</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">铜：</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">开盘</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">38606</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">，收盘</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">38603</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">，</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">低位做多为主，防守点位</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">38350</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">附近。盘面大方向多头，今日盘面也是震荡向上，上方压力位</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">38700</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">附近，破则继续持有多单，不可跌破</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">38300</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">，破则盘面反转成空头。</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0.0pt"><o:p></o:p></span></p><p style="PAGE-BREAK-AFTER: auto; TEXT-ALIGN: left; PAGE-BREAK-BEFORE: auto; LINE-HEIGHT: normal; TEXT-INDENT: 0pt; MARGIN: 0pt; LAYOUT-GRID-MODE: both; DIRECTION: ltr; WORD-BREAK: normal; mso-pagination: widow-orphan; mso-outline-level: body-text; mso-hyphenate: auto; mso-layout-grid-align: auto; punctuation-trim: none; punctuation-wrap: hanging; mso-line-break-override: none; mso-vertical-align-alt: auto" class="MsoNormal"><v:shape style="TEXT-INDENT: 0px; WIDTH: 408.713pt; HEIGHT: 222pt" id="_x0000_s1027" type="#_x0000_t75" filled="f"><v:imagedata src="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Yozo_Office\\html\\file0002.png" o:title="2686888211488770643541"></v:imagedata><o:lock aspectratio="t"></o:lock><v:stroke on="f" color="#000000"></v:stroke><w:wrap type="none"></w:wrap></v:shape><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0.0pt"><o:p></o:p></span></p><p style="PAGE-BREAK-AFTER: auto; TEXT-ALIGN: left; PAGE-BREAK-BEFORE: auto; LINE-HEIGHT: normal; TEXT-INDENT: 0pt; MARGIN: 0pt; LAYOUT-GRID-MODE: both; DIRECTION: ltr; WORD-BREAK: normal; mso-pagination: widow-orphan; mso-outline-level: body-text; mso-hyphenate: auto; mso-layout-grid-align: auto; punctuation-trim: none; punctuation-wrap: hanging; mso-line-break-override: none; mso-vertical-align-alt: auto" class="MsoNormal"><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">三：</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">青岛沥青</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">：</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">开盘</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">2666</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">，上周五收盘</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">2662</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">，略微高开。盘面处于大方向的整理当中，今日做单多关注</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">2650</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">附近多空分界，上方压力</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">2690</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">附近，下方支撑</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: Calibri; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri; mso-fareast-font-family: 宋体">2630</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 10.5pt; VERTICAL-ALIGN: baseline; mso-ascii-font-family: Calibri">附近，也可等待支撑和压力位做相对的多空单，高位空，低位多。</span><span style="TEXT-TRANSFORM: none; FONT-VARIANT: normal; FONT-FAMILY: 宋体; COLOR: windowtext; FONT-SIZE: 12pt; VERTICAL-ALIGN: baseline; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 宋体; mso-fareast-font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0.0pt"><o:p></o:p></span></p><p style="PAGE-BREAK-AFTER: auto; TEXT-ALIGN: left; PAGE-BREAK-BEFORE: auto; LINE-HEIGHT: normal; TEXT-INDENT: 0pt; MARGIN: 0pt; LAYOUT-GRID-MODE: both; DIRECTION: ltr; WORD-BREAK: normal; mso-pagination: widow-orphan; mso-outline-level: body-text; mso-hyphenate: auto; mso-layout-grid-align: auto; punctuation-trim: none; punctuation-wrap: hanging; mso-line-break-override: none; mso-vertical-align-alt: auto" class="MsoNormal"><v:shape style="TEXT-INDENT: 0px; WIDTH: 414.18pt; HEIGHT: 280.5pt" id="_x0000_s1028" type="#_x0000_t75" filled="f"><v:imagedata src="file:///C:\\Users\\Administrator\\AppData\\Roaming\\Yozo_Office\\html\\file0003.png" o:title="5151841071488770643544"></v:imagedata><o:lock aspectratio="t"></o:lock><v:stroke on="f" color="#000000"></v:stroke><w:wrap type="none"></w:wrap></v:shape></p></div><!--EndFragment-->', 1488770754, 'guangting', 1);

-- --------------------------------------------------------

--
-- 表的结构 `chat_apps_topmanage`
--

CREATE TABLE IF NOT EXISTS `chat_apps_topmanage` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ico` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `w` int(11) DEFAULT NULL,
  `h` int(11) DEFAULT NULL,
  `target` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s` smallint(1) DEFAULT '0',
  `ov` int(11) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_apps_topmanage`
--

INSERT INTO `chat_apps_topmanage` (`id`, `title`, `ico`, `url`, `w`, `h`, `target`, `s`, `ov`) VALUES
(1, '喊单提醒', '/upload/upfile/day_151126/201511262108182855.png', '/apps/hd.php', 1000, 600, 'POPWin', 1, 2),
(2, '在线答疑', '/upload/upfile/day_151126/201511262108259584.png', '/apps/wt.php', 950, 600, 'POPWin', 1, 98),
(3, '趋势跟踪', '/upload/upfile/day_151126/201511262111023843.png', '/apps/jyts.php', 1000, 600, 'POPWin', 0, 10),
(4, '核心内参', '/upload/upfile/day_151126/201511262110541219.png', '/apps/scpl.php', 1000, 600, 'POPWin', 0, 11),
(5, '课程表', '/upload/upfile/day_160702/201607021754035617.png', '/apps/course.php', 700, 500, 'POPWin', 0, 12),
(6, '财经日历', '/upload/upfile/day_151126/201511262108064105.png', 'http://www.jin10.com/jin10.com.html', 850, 630, 'POPWin', 1, 100),
(12, '免费开户', '', 'http://123.235.56.42:8441/khp/reg.do?ACCOUNT_ID=B2E359AF7A05D23B4FACD24C97D722F9', 1024, 600, 'POPWin', 0, 1),
(18, '讲师团队', '/upload/upfile/day_160420/201604201743045805.png', '/apps/teacher_list.php', 950, 600, 'POPWin', 1, 99),
(19, '其他房间', '', '/apps/room_list.php', 900, 600, 'POPWin', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `chat_apps_vote`
--

CREATE TABLE IF NOT EXISTS `chat_apps_vote` (
  `id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `v` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `vid` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `chat_apps_vote`
--

INSERT INTO `chat_apps_vote` (`id`, `rid`, `uid`, `v`, `time`, `vid`) VALUES
(1, 1, 1, 0, 1457072271, 3),
(2, 1, 1, 0, 1457072272, 4),
(3, 1, 1, 0, 1457072273, 5),
(4, 1, 1, 1, 1457447774, 3),
(5, 1, 1, 0, 1457949280, 3),
(6, 1, 1, 2, 1459065479, 3),
(7, 1, 1, 1, 1459868290, 3),
(8, 3, 1, 0, 1461029767, 3),
(9, 1, 1, 1, 1461389777, 5),
(10, 1, 1, 0, 1461389778, 3),
(11, 2, 1, 0, 1463119977, 3),
(12, 1, 1, 0, 1464432761, 3),
(13, 1, 1, 0, 1464597030, 3),
(14, 1, 1, 1, 1467525198, 3),
(15, 1, 1, 2, 1469066360, 3),
(16, 1, 1, 0, 1472022410, 3),
(17, 1, 10, 0, 1472834247, 3),
(18, 1, 22, 0, 1473124436, 3),
(19, 1, 22, 0, 1475061860, 3),
(20, 1, 13, 2, 1477883510, 3),
(21, 1, 33, 0, 1478007691, 3),
(22, 1, 13, 2, 1478168934, 3),
(23, 1, 29, 0, 1479789367, 3),
(24, 1, 43, 1, 1479988791, 3),
(25, 1, 43, 0, 1480053858, 3),
(26, 1, 12, 0, 1480297020, 3),
(27, 1, 43, 0, 1480331968, 3),
(28, 1, 43, 0, 1480471779, 3),
(29, 1, 43, 0, 1481507274, 3),
(30, 1, 13, 2, 1481822275, 3),
(31, 1, 13, 1, 1482407888, 3),
(32, 1, 73, 0, 1483021448, 3),
(33, 1, 13, 0, 1483023253, 3),
(34, 1, 13, 1, 1484213234, 3),
(35, 1, 13, 1, 1484280298, 3),
(36, 1, 13, 1, 1484569207, 3),
(37, 1, 13, 2, 1484644862, 3),
(38, 1, 13, 1, 1484710857, 3),
(39, 1, 86, 2, 1484804471, 3),
(40, 1, 86, 0, 1484891411, 3),
(41, 1, 13, 2, 1484897379, 3),
(42, 1, 70, 0, 1485062026, 3),
(43, 1, 70, 2, 1485167701, 3),
(44, 1, 11, 2, 1485355369, 3),
(45, 1, 70, 0, 1485850521, 3),
(46, 1, 84, 0, 1486133621, 3),
(47, 1, 13, 1, 1486999581, 3),
(48, 1, 13, 2, 1487056901, 3),
(49, 1, 13, 2, 1487561501, 3),
(50, 1, 84, 0, 1487583923, 3),
(51, 1, 13, 2, 1487653605, 3),
(52, 1, 13, 1, 1487735143, 3),
(53, 1, 13, 1, 1488186681, 3),
(54, 1, 13, 1, 1488268874, 3),
(55, 1, 100, 1, 1488295860, 3),
(56, 1, 13, 2, 1488536816, 3),
(57, 1, 13, 1, 1488788069, 3),
(58, 1, 13, 0, 1488969546, 3),
(59, 1, 13, 0, 1489077435, 3),
(60, 1, 118, 2, 1489154556, 3),
(61, 1, 13, 1, 1489464266, 3),
(62, 1, 118, 0, 1489571251, 3),
(63, 1, 13, 1, 1489647630, 3),
(64, 1, 13, 2, 1489727645, 3),
(65, 1, 11, 0, 1490013027, 3),
(66, 1, 13, 0, 1490014395, 3),
(67, 1, 13, 1, 1490089002, 3),
(68, 1, 13, 0, 1490191012, 3),
(69, 1, 100, 0, 1490196818, 3),
(70, 1, 36, 1, 1490280869, 3),
(71, 1, 13, 1, 1490344249, 3),
(72, 1, 13, 1, 1490634710, 3),
(73, 1, 13, 1, 1490789134, 3),
(74, 1, 13, 1, 1490887147, 3),
(75, 1, 13, 2, 1491277196, 3),
(76, 1, 13, 2, 1491399154, 3),
(77, 1, 13, 2, 1491477333, 3),
(78, 1, 13, 2, 1491895830, 3),
(79, 1, 176, 0, 1491964250, 3),
(80, 1, 13, 1, 1492428876, 3),
(81, 1, 13, 2, 1492527455, 3),
(82, 1, 13, 0, 1492536328, 3),
(83, 1, 13, 1, 1492678284, 3),
(84, 1, 13, 2, 1492772790, 3),
(85, 1, 197, 2, 1493007685, 3),
(86, 1, 209, 0, 1493019221, 3),
(87, 1, 13, 2, 1493027849, 3),
(88, 1, 220, 2, 1493198880, 3),
(89, 1, 225, 2, 1493274280, 3),
(90, 1, 13, 2, 1493282436, 3),
(91, 1, 203, 0, 1493306181, 3),
(92, 1, 230, 0, 1493354399, 3),
(93, 1, 237, 1, 1493382976, 3),
(94, 1, 228, 0, 1493623584, 3),
(95, 1, 13, 1, 1493644792, 3),
(96, 1, 13, 1, 1493813968, 3),
(97, 1, 228, 0, 1493899384, 3),
(98, 1, 13, 2, 1494238286, 3),
(99, 1, 220, 2, 1494340309, 3),
(100, 1, 13, 2, 1494401828, 3),
(101, 1, 13, 2, 1494478694, 3),
(102, 1, 13, 2, 1494571652, 3),
(103, 1, 140, 0, 1495792715, 3),
(104, 1, 1, 1, 1525924189, 3);

-- --------------------------------------------------------

--
-- 表的结构 `chat_apps_wt`
--

CREATE TABLE IF NOT EXISTS `chat_apps_wt` (
  `id` int(11) NOT NULL,
  `q` text COLLATE utf8_unicode_ci,
  `a` text COLLATE utf8_unicode_ci,
  `quser` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auser` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qtime` int(11) DEFAULT NULL,
  `zt` smallint(6) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_apps_wt`
--

INSERT INTO `chat_apps_wt` (`id`, `q`, `a`, `quser`, `auser`, `qtime`, `zt`) VALUES
(20, '11111111111111111111111', NULL, 'admin', NULL, 1459428060, 0);

-- --------------------------------------------------------

--
-- 表的结构 `chat_auth_group`
--

CREATE TABLE IF NOT EXISTS `chat_auth_group` (
  `id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rules` text COLLATE utf8_unicode_ci,
  `sn` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ico` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  `ov` int(11) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_auth_group`
--

INSERT INTO `chat_auth_group` (`id`, `title`, `rules`, `sn`, `ico`, `type`, `ov`) VALUES
(2, '管理 ', 'users_group,users_extension,users_del,users_admin,tongji_reg,sys_video,sys_slide,sys_rebots,sys_popcs,sys_notice,sys_log,sys_lecturer,sys_giftrecord,sys_gag,sys_customerservice,sys_base,sys_ban,mkt_tx,mkt_prizeset,mkt_prizeorderlist,mkt_prizelist,mkt_prizeconf,mkt_prizecdk,mkt_pay,mkt_msg,apps_wt,apps_scpl,apps_manage,apps_jyts,apps_hd,apps_files,apps_course,adminlogin,wt_view,wt_re,wt_add,user_kick,user_info_gl,user_info,user_gag,set_font,send_red,send_img,scpl_view,scpl_add,room_admin,rebots_msg,msg_send,msg_ptp,msg_priv,msg_block,msg_audit,login_dd,jyts_view,jyts_add,hd_view,hd_add,files_view,files_add,def_videosrc', '系统管理员', '/upload/upfile/day_160702/201607021744141896.png', 0, 2),
(17, '游客', 'set_font,send_red,send_img,msg_send,login_dd', '未知访客', '/upload/upfile/day_160702/201607021743345095.png', 0, 0),
(1, '会员 ', 'wt_view,wt_add,send_red,send_img,scpl_view,msg_send,jyts_view,hd_view', '注册用户', '/upload/upfile/day_160702/201607021742578215.png', 0, 0),
(3, '客服', 'users_admin,sys_ban,adminlogin,wt_view,wt_re,wt_add,user_kick,user_info_gl,user_info,set_font,send_red,send_img,scpl_view,scpl_add,room_admin,rebots_msg,msg_send,msg_ptp,msg_priv,msg_block,msg_audit,login_dd,jyts_view,jyts_add,hd_view,hd_add,files_view,files_add', '客服经理', '/upload/upfile/day_160702/201607021744066618.png', 0, 3),
(4, '讲师', 'apps_wt,apps_scpl,apps_jyts,apps_hd,apps_files,adminlogin,wt_view,wt_re,wt_add,user_kick,user_info_gl,set_font,send_red,send_img,scpl_view,scpl_add,room_admin,rebots_msg,msg_send,msg_ptp,msg_priv,msg_block,msg_audit,login_dd,jyts_view,jyts_add,hd_view,hd_add,files_view,files_add,def_videosrc', '高级金融分析师', '/upload/upfile/day_160702/201607021743493337.png', 0, 4),
(11, '黄金会员', 'wt_view,wt_add,send_red,send_img,scpl_view,msg_send,jyts_view,hd_view,files_view', '5万＜实盘入金≤10万', '/upload/upfile/day_160303/201603032253318238.png', 0, 7),
(12, '铂金会员', 'wt_view,wt_add,send_red,send_img,scpl_view,msg_send,jyts_view,hd_view,files_view', '10万＜实盘入金≤30万', '/upload/upfile/day_160303/201603032253419028.png', 0, 8),
(13, '钻石会员', 'wt_view,wt_add,send_red,send_img,scpl_view,msg_send,jyts_view,hd_view,files_view', '30万＜实盘入金≤50万', '/upload/upfile/day_160303/201603032254335792.png', 0, 9),
(14, '至尊会员 ', 'wt_view,wt_add,send_red,send_img,scpl_view,msg_send,jyts_view,hd_view,files_view', '80万＜实盘入金≤100万', '/upload/upfile/day_160303/201603032256214373.png', 0, 10),
(15, '白银会员', 'wt_view,wt_add,send_red,send_img,scpl_view,msg_send,jyts_view,hd_view,files_view', '1万＜实盘入金≤5万', '/upload/upfile/day_160303/201603032251582769.png', 0, 6),
(22, '财主会员', 'wt_view,wt_add,send_red,send_img,scpl_view,msg_send,jyts_view,hd_view,files_view', '50万＜实盘入金 ≤80万', '/upload/upfile/day_160303/201603032257208857.png', 0, 11),
(23, '土豪会员', 'wt_view,wt_add,send_red,send_img,scpl_view,msg_send,jyts_view,hd_view,files_view', '100万≤实盘入金', '/upload/upfile/day_160303/201603032259069573.png', 0, 12),
(24, '皇冠会员', 'wt_view,wt_add,send_red,send_img,scpl_view,msg_send,jyts_view,hd_view,files_view', '顶级VIP', '/upload/upfile/day_160303/201603032300086297.png', 0, 13);

-- --------------------------------------------------------

--
-- 表的结构 `chat_auth_rule`
--

CREATE TABLE IF NOT EXISTS `chat_auth_rule` (
  `id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `rulename` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ov` int(11) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_auth_rule`
--

INSERT INTO `chat_auth_rule` (`id`, `title`, `type`, `rulename`, `ov`) VALUES
(1, '后台登录', 0, 'adminlogin', 1),
(2, '基本配置', 0, 'sys_base', 2),
(49, '短信设置', 0, 'mkt_msg', 0),
(4, 'IP屏蔽', 0, 'sys_ban', 4),
(5, '公告板', 0, 'sys_notice', 5),
(6, '日志管理', 0, 'sys_log', 6),
(7, '用户管理', 0, 'users_admin', 7),
(8, '分组管理', 0, 'users_group', 8),
(9, '允许发言', 1, 'msg_send', 9),
(10, '发布喊单', 1, 'hd_add', 10),
(11, '查看喊单', 1, 'hd_view', 11),
(12, '上传共享文件', 1, 'files_add', 12),
(13, '下载共享文件', 1, 'files_view', 13),
(14, '查看问题', 1, 'wt_view', 14),
(15, '回答问题', 1, 'wt_re', 15),
(16, '发布问题', 1, 'wt_add', 16),
(17, '私聊', 1, 'msg_priv', 9),
(31, '发言人(机器人发言)', 1, 'rebots_msg', 0),
(30, '用户删除', 0, 'users_del', 8),
(32, '前台房管', 1, 'room_admin', 0),
(36, '踢出房间', 1, 'user_kick', 0),
(35, '查看用户基础资料', 1, 'user_info', 0),
(19, '市场评论发布', 1, 'scpl_add', 0),
(20, '市场评论查看', 1, 'scpl_view', 0),
(21, '交易提示发布', 1, 'jyts_add', 0),
(22, '交易提示查看', 1, 'jyts_view', 0),
(23, '喊单系统管理', 0, 'apps_hd', 0),
(24, '问题答疑管理', 0, 'apps_wt', 0),
(25, '交易提示管理', 0, 'apps_jyts', 0),
(26, '市场评论管理', 0, 'apps_scpl', 0),
(27, '共享文档管理', 0, 'apps_files', 0),
(28, '应用管理', 0, 'apps_manage', 0),
(33, '消息屏蔽', 1, 'msg_block', 0),
(34, '消息审核', 1, 'msg_audit', 0),
(37, '对聊', 1, 'msg_ptp', 0),
(38, '查看用户管理资料', 1, 'user_info_gl', 0),
(39, '当前讲师设置', 1, 'def_videosrc', 0),
(40, '讲师统计', 0, 'tongji_reg', 0),
(42, '机器人设置', 0, 'sys_rebots', 0),
(43, '讲师介绍设置', 0, 'sys_lecturer', 0),
(44, '设置字体', 1, 'set_font', 0),
(45, '设置聊天窗口客服', 0, 'sys_customerservice', 0),
(46, '弹窗客服', 0, 'sys_popcs', 0),
(47, '轮播广告', 0, 'sys_slide', 0),
(48, '课程表', 0, 'apps_course', 0),
(50, '提现申请', 0, 'mkt_tx', 0),
(51, '支付接口', 0, 'mkt_pay', 0),
(52, '发红包', 1, 'send_red', 0),
(53, '发图片', 1, 'send_img', 0),
(54, '用户推广', 0, 'users_extension', 0),
(55, '允许多端登录', 1, 'login_dd', 0),
(56, '点播管理', 0, 'sys_video', 0),
(57, '礼物记录', 0, 'sys_giftrecord', 0),
(58, '抽奖记录', 0, 'mkt_prizelist', 0),
(59, '中奖用户名单', 0, 'mkt_prizeset', 0),
(60, '禁言', 1, 'user_gag', 0),
(61, '禁言管理', 0, 'sys_gag', 0),
(62, '充值记录', 0, 'mkt_prizeorderlist', 0),
(63, '抽奖配置', 0, 'mkt_prizeconf', 0),
(64, '抽奖码', 0, 'mkt_prizecdk', 0);

-- --------------------------------------------------------

--
-- 表的结构 `chat_ban`
--

CREATE TABLE IF NOT EXISTS `chat_ban` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `losttime` int(11) DEFAULT NULL,
  `sn` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=536 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_ban`
--

INSERT INTO `chat_ban` (`id`, `username`, `ip`, `losttime`, `sn`) VALUES
(23, '游客323534', '121.42.0.15', 1474983210, '原因'),
(17, '游客287220', '59.53.164.172', 1474285547, '原因'),
(18, '游客831026', '182.108.54.145', 1474338740, '原因'),
(19, '游客323534', '111.16.122.115', 1474880974, '原因'),
(21, '游客323534', '121.42.0.15', 1474982975, '原因'),
(22, '游客323534', '121.42.0.15', 1474983093, '原因'),
(24, '游客323534', '121.42.0.15', 1474983213, '原因'),
(25, '游客323534', '121.42.0.15', 1474378415, '原因'),
(26, '游客323534', '121.42.0.15', 1474983217, 'PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg=='),
(27, 'PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==', '121.42.0.15', 1474983219, '原因'),
(28, '游客323534', '121.42.0.15', 1474983225, '原因'),
(29, '游客323534', '121.42.0.15', 1474378427, '原因'),
(30, '游客323534', '121.42.0.15', 1474983230, 'amF2YXNjcmlwdDpwcm9tcHQoMTExKTt4'),
(31, 'amF2YXNjcmlwdDpwcm9tcHQoMTExKTt4', '121.42.0.15', 1474983232, '原因'),
(32, '帅帅', '180.120.178.44', 1476956571, '原因'),
(33, '游客615637', '116.7.97.214', 1479088589, '原因'),
(34, '游客658635', '49.67.226.233', 1478761896, '原因不说话'),
(35, '火把', '118.205.86.8', 1478785507, '原因不说话'),
(38, '游客441499', '27.220.160.55', 1478791093, '原因'),
(39, '多多', '125.112.133.134', 1479415241, '会员体验时间已到'),
(40, '涨不停', '103.232.144.2', 1479908528, '无效会员，体验时间已到，请联系管路员'),
(50, '游客199881', '113.97.221.227', 1482224694, '原因'),
(42, '游客454197', '58.246.49.42', 1480507613, '原因'),
(43, '游客454197', '58.246.49.42', 1481112445, '原因'),
(51, '游客199881', '113.97.221.227', 1482829524, '原因骂人'),
(53, '123', '59.53.21.156', 1482935571, '同行'),
(54, '123', '180.153.160.24', 1482935580, '???'),
(55, '游客459323', '222.35.76.75', 1482413572, '体验时间已到'),
(56, '游客826638', '58.208.250.129', 1483078389, '运营推广'),
(57, '游客767483', '115.148.182.153', 1482476251, '原因'),
(58, '游客229242', '116.231.92.76', 1482476255, '原因'),
(59, '阳红', '220.178.225.22', 1483107609, '无效会员体验时间已到 '),
(60, '游客832527', '113.218.179.169', 1482859345, '原因'),
(61, '游客741269', '106.5.130.10', 1482908655, '原因'),
(62, '游客741269', '106.5.130.10', 1482908655, '原因'),
(87, '阳红', '58.222.44.65', 1483623096, '原因'),
(64, 'guangting', '59.52.13.222', 1482992677, '原因'),
(65, '游客608464', '218.18.157.194', 1483605353, '同行打广告'),
(66, '游客564240', '42.224.90.246', 1483016661, '原因'),
(67, '游客471498', '113.129.198.136', 1483017024, '原因'),
(68, '游客564240', '42.224.90.246', 1483017033, '原因'),
(69, '游客520582', '106.4.245.90', 1483021076, '原因'),
(70, '游客672274', '106.4.245.90', 1483021080, '原因'),
(71, '游客520582', '106.4.245.90', 1483021101, '原因'),
(72, '游客112288', '27.205.22.60', 1483021107, '原因'),
(73, 'zfc才哥', '118.80.185.16', 1483027862, '原因'),
(74, 'zfc才哥', '118.80.185.16', 1483027873, '原因'),
(75, 'zfc才哥', '118.80.185.16', 1483028488, '原因'),
(76, '游客305702', '118.80.185.16', 1483029870, '原因'),
(77, '游客305702', '118.80.185.16', 1483029876, '原因'),
(78, '游客305702', '118.80.185.16', 1483029876, '原因'),
(79, '游客305702', '118.80.185.16', 1483029876, '原因'),
(80, '游客305702', '118.80.185.16', 1483029878, '原因'),
(81, '游客305702', '118.80.185.16', 1483029878, '原因'),
(82, '游客305702', '118.80.185.16', 1483029878, '原因'),
(83, '游客305702', '118.80.185.16', 1483029879, '原因'),
(84, '游客826638', '123.125.71.72', 1483930145, '运营推广'),
(85, '游客734141', '49.64.120.155', 1483440399, '原因'),
(86, '游客962349', '118.186.3.7', 1483440403, '原因'),
(88, '君问归期', '36.62.143.12', 1483636768, '原因'),
(89, '游客741269', '123.125.71.80', 1483649637, '原因'),
(90, '游客911021', '123.11.46.207', 1483679840, '同行骚扰，妈的！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！'),
(91, '游客519562', '117.85.142.213', 1483691658, '原因不说话'),
(92, '游客326686', '123.180.241.37', 1483750926, '原因时间到'),
(93, '游客326686', '123.180.241.37', 1483750938, '原因'),
(94, '游客448853', '180.173.160.17', 1483707745, '原因'),
(95, '游客741269', '182.97.179.225', 1483707754, '原因'),
(96, '游客417410', '106.4.246.207', 1483707755, '原因'),
(97, '游客741269', '182.97.179.225', 1483707758, '原因'),
(98, '游客519562', '49.76.179.240', 1483707762, '原因'),
(99, '游客741269', '182.97.179.225', 1483750967, '原因'),
(100, '游客741269', '182.97.179.225', 1483750967, '原因'),
(101, '游客741269', '182.97.179.225', 1483750969, '原因'),
(102, '游客741269', '182.97.179.225', 1483750971, '原因'),
(103, '游客741269', '182.97.179.225', 1483750973, '原因'),
(104, '游客741269', '182.97.179.225', 1483750974, '原因'),
(105, '游客741269', '182.97.179.225', 1483750980, '原因'),
(106, '游客741269', '182.97.179.225', 1483750981, '原因'),
(107, '游客741269', '182.97.179.225', 1483711381, '原因'),
(108, '游客741269', '182.97.179.225', 1483711388, '原因'),
(109, '游客741269', '182.97.179.225', 1483711400, '原因'),
(110, '游客741269', '182.97.179.225', 1483711401, '原因'),
(111, '游客741269', '182.97.179.225', 1483751261, '原因'),
(112, '游客741269', '182.97.179.225', 1483751266, '原因'),
(113, '游客417410', '106.4.246.207', 1483751291, '原因'),
(114, '游客969249', '121.229.227.224', 1483709163, '原因'),
(115, '游客298683', '113.135.184.64', 1483969948, '原因'),
(116, '阳红', '58.222.44.21', 1483972662, '原因'),
(117, '君问归期', '36.62.143.91', 1483974570, '原因'),
(118, '游客548353', '182.109.245.59', 1484026239, '原因'),
(119, '游客451925', '58.62.204.107', 1484632816, '同行'),
(120, '君问归期', '36.62.143.209', 1484046986, '原因'),
(121, '君问归期', '36.62.143.209', 1484061208, '原因'),
(122, '君问归期', '36.62.143.89', 1484186891, '无限会员体验时间已到'),
(123, '游客731495', '111.200.242.162', 1484791441, '原因'),
(124, '将进酒', '118.186.3.7', 1484230514, '无效会员提交时间已到'),
(125, 'guangting', '182.108.54.220', 1484330096, '原因'),
(126, '游客520582', '220.181.108.155', 1484495042, '原因'),
(127, '杨迎斌', '222.169.177.25', 1484747179, '无效会员体验时间已到请联系客服'),
(128, 'zfc才哥', '220.181.108.110', 1484777525, '原因'),
(129, '游客741269', '123.125.71.57', 1484790325, '原因'),
(130, '君问归期', '36.62.142.52', 1484916244, '原因'),
(131, '游客741269', '123.125.71.112', 1485512072, '原因'),
(132, '游客741269', '123.125.71.47', 1485539985, '原因'),
(133, '游客734141', '220.181.108.123', 1485573487, '原因'),
(134, '游客451925', '123.125.71.97', 1486247670, '同行'),
(135, '游客741269', '220.181.108.142', 1485775799, '原因'),
(136, '游客448853', '123.125.71.83', 1485814613, '原因'),
(137, 'zfc才哥', '220.181.108.103', 1486808710, '原因'),
(138, '游客734141', '123.125.71.19', 1486822959, '原因'),
(139, '杨迎斌', '222.169.179.63', 1487077775, '原因'),
(140, '游客741269', '220.181.108.96', 1487153818, '原因'),
(141, '君问归期', '36.62.143.235', 1487216221, '无效会员'),
(142, '游客317304', '111.75.12.134', 1487227542, '原因'),
(143, '游客216366', '182.110.21.117', 1487229609, '原因'),
(144, '游客721623', '182.110.21.117', 1487231459, '原因'),
(145, '游客391756', '111.75.12.134', 1487235179, '原因'),
(146, '游客391756', '111.75.12.134', 1487927290, '原因'),
(147, '游客360262', '106.4.223.141', 1487337874, '原因'),
(148, '我是帅哥', '59.53.213.242', 1487341939, '原因'),
(149, '游客537944', '101.81.238.33', 1487578293, '原因'),
(150, '游客612024', '223.166.205.102', 1488353099, '广告骚扰'),
(151, '游客735784', '101.41.222.87', 1487765878, '原因'),
(152, '阳红', '122.194.13.96', 1487768138, '原因'),
(153, '游客915989', '111.75.13.125', 1487770206, '原因'),
(154, '游客646460', '121.225.94.91', 1487770212, '原因'),
(155, '游客854510', '101.245.104.30', 1487858669, '原因'),
(156, '杨迎斌', '222.169.179.239', 1487859082, '原因'),
(157, '杨迎斌', '222.169.179.239', 1487861755, '原因'),
(158, '游客826638', '220.181.108.142', 1488509570, '运营推广'),
(159, '游客646460', '140.205.225.183', 1487923876, '原因'),
(160, '游客646460', '140.205.225.183', 1487923878, '原因'),
(161, '游客646460', '140.205.225.183', 1487923899, '原因'),
(162, '游客646460', '140.205.225.183', 1487923902, '原因'),
(163, '游客646460', '140.205.225.183', 1487923903, '原因'),
(164, '游客646460', '140.205.225.183', 1487923903, 'PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg=='),
(165, 'PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==', '140.205.225.183', 1487923904, '原因'),
(166, '游客646460', '140.205.225.183', 1487923910, '原因'),
(167, '游客646460', '140.205.225.183', 1487923910, '原因'),
(168, '游客646460', '140.205.225.183', 1487923913, 'amF2YXNjcmlwdDpwcm9tcHQoMTExKTt4'),
(169, 'amF2YXNjcmlwdDpwcm9tcHQoMTExKTt4', '140.205.225.183', 1487923913, '原因'),
(170, '游客735784', '101.41.78.169', 1487939342, '原因'),
(171, '漂浮的云', '111.19.60.200', 1487986616, '原因'),
(172, '游客125050', '49.64.95.101', 1487945651, '原因'),
(173, '游客964973', '171.41.91.67', 1488267334, '原因'),
(174, '游客765575', '182.98.26.81', 1488381509, '原因'),
(175, '游客519562', '114.223.78.150', 1488419143, '原因'),
(177, '5233800', '117.83.35.20', 1488467637, '原因'),
(178, '游客575388', '58.214.136.24', 1488549757, '原因'),
(179, '游客519562', '140.205.201.45', 1488533553, '原因'),
(180, '游客519562', '140.205.201.45', 1488533922, '原因'),
(181, '游客519562', '140.205.201.45', 1488535067, '原因'),
(182, '游客519562', '140.205.201.45', 1488535087, '原因'),
(183, '游客519562', '140.205.201.45', 1488535090, '原因'),
(184, '游客519562', '140.205.201.45', 1488535093, 'PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg=='),
(185, 'PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==', '140.205.201.45', 1488535095, '原因'),
(186, '游客519562', '140.205.201.45', 1488535105, '原因'),
(187, '游客519562', '140.205.201.45', 1488535109, '原因'),
(188, '游客519562', '140.205.201.45', 1488535111, 'amF2YXNjcmlwdDpwcm9tcHQoMTExKTt4'),
(189, 'amF2YXNjcmlwdDpwcm9tcHQoMTExKTt4', '140.205.201.45', 1488535114, '原因'),
(190, '游客252946', '58.248.209.11', 1488814397, '原因'),
(191, '游客619355', '182.109.253.134', 1488895196, '原因没注册会员'),
(192, '游客619355', '182.109.253.134', 1488978944, '原因游客体验时间到'),
(193, '游客240909', '182.109.253.134', 1488979383, '原因'),
(194, '游客247792', '111.26.32.8', 1488979401, '原因'),
(195, '游客247792', '111.26.32.8', 1488979451, '原因'),
(196, '游客247792', '111.26.32.8', 1488980922, '原因'),
(197, '游客985640', '182.109.253.134', 1488980926, '原因'),
(198, '游客247792', '111.26.32.8', 1488982530, '原因'),
(199, '游客619355', '182.109.253.134', 1488984865, '原因不是会员'),
(200, '游客247792', '111.26.32.8', 1488984788, '原因'),
(201, '游客603979', '113.97.191.23', 1488984810, '原因'),
(202, '游客240909', '59.52.14.16', 1489651349, '原因'),
(203, '游客881751', '182.97.95.21', 1489652905, '原因'),
(204, '游客247792', '111.26.34.1', 1489060041, '原因'),
(205, '游客247792', '111.26.34.1', 1489066125, '原因'),
(206, '游客247792', '111.26.34.1', 1489110841, '原因'),
(207, '游客326686', '123.125.71.40', 1489157882, '原因'),
(208, '游客953273', '219.239.55.90', 1489138982, '原因'),
(209, '游客883441', '106.4.207.219', 1489154582, '原因'),
(210, '游客883441', '106.4.207.219', 1489154647, '原因'),
(211, '游客767483', '123.125.71.15', 1489284939, '原因'),
(212, '5233800', '180.108.39.127', 1489410868, '体验时间已到请联系一对一客服免费开户'),
(213, '华003', '171.117.2.42', 1489411374, '原因'),
(214, '5233800', '180.108.39.127', 1489411378, '原因'),
(215, '5233800', '180.153.214.192', 1489411388, '??????'),
(216, '游客428998', '111.75.15.200', 1489454694, '原因'),
(217, '游客751217', '223.104.16.143', 1489418670, '原因'),
(218, '游客923686', '113.73.102.163', 1489459596, '原因游客体验时间到'),
(219, '游客575388', '58.214.141.12', 1489488050, '原因'),
(220, '游客575388', '58.214.141.12', 1489488666, '原因'),
(221, '游客575388', '58.214.141.12', 1489488182, '原因'),
(222, '华003', '101.247.188.246', 1489500877, '原因'),
(223, '华003', '101.247.188.246', 1489502521, '原因'),
(224, '5233800', '180.108.39.127', 1489502530, '原因'),
(225, '游客451925', '123.125.71.70', 1490162991, '同行'),
(226, '游客649308', '1.69.82.90', 1489558964, '原因'),
(227, '5233800', '117.82.9.19', 1489584988, '原因'),
(228, '5233800', '117.82.9.19', 1489588831, '原因'),
(229, '冬青', '120.14.165.159', 1489589694, '原因'),
(230, '游客486016', '183.221.69.181', 1489683383, '原因'),
(231, '游客417410', '220.181.108.112', 1489728243, '原因'),
(232, 'zfc才哥', '220.181.108.99', 1489730243, '原因'),
(233, '游客440097', '175.13.153.72', 1489731457, '原因'),
(234, '游客727434', '222.52.131.211', 1489756984, '原因'),
(235, '游客767483', '220.181.108.103', 1489899308, '原因'),
(236, '游客741269', '123.125.71.47', 1489933439, '原因'),
(237, '游客448853', '220.181.108.107', 1489961397, '原因'),
(238, '游客305702', '123.125.71.85', 1489977039, '原因'),
(239, '游客767483', '123.125.71.44', 1489989097, '原因'),
(240, '游客741269', '220.181.108.141', 1490017019, '原因'),
(241, '游客490509', '125.119.30.198', 1490026003, '原因'),
(242, '游客305702', '220.181.108.101', 1490053786, '原因'),
(243, '游客448853', '220.181.108.82', 1490068186, '原因'),
(244, '游客719227', '218.65.123.134', 1490120633, '原因'),
(245, '游客403146', '36.22.57.160', 1490083384, '原因'),
(246, '游客786836', '59.53.20.24', 1490084043, '原因'),
(247, '游客166460', '59.53.20.24', 1490084358, '原因'),
(248, '游客403146', '36.22.57.160', 1490168072, '原因'),
(249, '君问归期', '36.62.142.130', 1490797890, '原因'),
(250, '游客941384', '218.7.150.9', 1490193212, '原因'),
(251, '游客751217', '223.104.16.58', 1490193215, '原因'),
(252, '游客382936', '183.144.205.111', 1490193219, '原因'),
(253, '游客751217', '223.104.16.58', 1490193238, '原因'),
(254, '华003', '101.247.188.234', 1490193442, '原因'),
(255, '游客186714', '117.136.63.160', 1490205520, '原因'),
(256, '游客186714', '117.136.63.160', 1490209135, '原因'),
(257, '5233800', '58.208.101.128', 1490254825, '原因'),
(258, '游客112710', '125.70.177.177', 1490324320, '原因'),
(259, '游客800305', '220.177.140.97', 1490323443, '原因'),
(260, '5233800', '121.224.197.110', 1490665568, '原因不开户'),
(261, '阳红', '122.194.13.102', 1490795662, '原因'),
(263, '游客735784', '101.41.93.189', 1490874527, '原因'),
(264, '游客158216', '59.53.26.27', 1490932344, '原因'),
(265, '游客158216', '59.53.26.27', 1490932344, '原因'),
(266, '游客150082', '119.6.12.194', 1490971955, '原因'),
(267, '游客741269', '123.125.71.73', 1491079573, '原因'),
(268, '游客692407', '118.178.184.107', 1491209122, '原因'),
(269, '游客692407', '118.178.184.107', 1491814560, '原因胡言乱语'),
(270, '游客217755', '119.6.12.194', 1491274683, '原因'),
(271, '薄情寡义?', '123.4.118.213', 1491319244, '原因'),
(272, '游客455741', '113.46.148.96', 1491385888, '原因'),
(273, '游客240909', '106.5.138.91', 1491386111, '原因'),
(274, '游客994789', '27.184.55.218', 1491994378, '原因'),
(275, '游客124651', '113.128.195.242', 1491401070, '原因'),
(276, '游客676858', '112.225.125.66', 1491399228, '原因'),
(277, '金飞银舞', '182.148.58.201', 1491403930, '无效会员体验时间已到'),
(278, '游客390260', '125.113.109.252', 1491401517, '原因'),
(279, '游客321984', '42.80.231.115', 1491401522, '原因'),
(280, '游客280316', '122.91.126.5', 1491401526, '原因'),
(281, '游客333571', '112.117.199.76', 1491401533, '原因'),
(282, '游客897905', '222.169.176.119', 1491401543, '原因'),
(283, '薄情寡义?', '123.4.123.247', 1491406716, '原因'),
(284, '游客227224', '171.107.198.34', 1491404151, '原因'),
(285, '游客980636', '119.6.12.194', 1491442340, '原因'),
(286, '游客741912', '175.167.146.162', 1491445958, '原因'),
(287, '游客741912', '175.167.146.162', 1491445958, '原因'),
(288, '游客980636', '119.6.12.194', 1491446007, '原因'),
(289, '游客741912', '175.167.146.162', 1491446017, '原因'),
(290, '游客741912', '175.167.146.162', 1491446017, '原因'),
(291, '游客741912', '175.167.146.162', 1491446024, '原因'),
(292, '游客741912', '175.167.146.162', 1491446024, '原因'),
(293, '游客741912', '175.167.146.162', 1491442739, '原因'),
(294, '游客741912', '175.167.146.162', 1491442739, '原因'),
(295, '游客999224', '112.85.170.208', 1491449831, '原因'),
(296, '游客308474', '119.59.219.103', 1491446712, '原因'),
(297, '游客815032', '27.17.73.79', 1491509367, '原因'),
(298, '游客147727', '222.169.179.153', 1491473435, '原因'),
(299, '游客594003', '116.231.146.202', 1491473439, '原因'),
(300, '游客964667', '112.38.100.251', 1491473443, '原因'),
(301, '游客812811', '123.4.123.247', 1491473447, '原因'),
(302, '游客684814', '110.246.238.79', 1491486312, '原因'),
(303, '游客147727', '222.169.179.153', 1491486320, '原因'),
(304, '游客706459', '124.160.249.119', 1491486321, '原因'),
(305, '游客919806', '119.6.12.194', 1491486326, '原因'),
(306, '游客741269', '220.181.108.151', 1491537881, '原因'),
(307, '游客367452', '119.163.59.199', 1491529951, '原因'),
(308, '游客859848', '113.57.212.112', 1491529955, '原因'),
(309, '游客647927', '223.74.122.1', 1491529958, '原因'),
(310, '游客513356', '221.122.101.100', 1491532179, '原因'),
(311, '游客939068', '112.12.206.253', 1491532183, '原因'),
(312, '游客476811', '59.53.31.4', 1492138083, '同行'),
(313, '游客986687', '106.120.122.132', 1491543725, '原因'),
(314, '游客326686', '220.181.108.119', 1491589776, '原因时间到'),
(315, 'wbxrnzd', '1.69.87.170', 1491547668, '原因'),
(316, '游客193152', '112.66.42.79', 1491557078, '原因'),
(317, '游客398184', '123.184.66.211', 1491567063, '原因'),
(318, '游客367452', '119.163.59.199', 1491566393, '原因'),
(319, '游客741269', '123.125.71.110', 1491610020, '原因'),
(377, '游客305702', '220.181.108.119', 1492688621, '原因'),
(321, '游客832527', '123.125.71.95', 1491616412, '原因'),
(322, '游客741269', '123.125.71.36', 1491624012, '原因'),
(323, '游客593913', '114.95.159.53', 1491620734, '原因'),
(324, '游客892438', '115.174.128.30', 1492420305, '原因'),
(325, '游客574081', '27.195.100.109', 1491896724, '原因'),
(326, '游客574081', '27.195.100.109', 1492501581, '原因'),
(327, '游客196210', '171.39.215.208', 1491903781, '原因'),
(328, '游客403146', '36.22.57.73', 1491903786, '原因'),
(329, '游客643067', '183.233.157.54', 1491903796, '原因'),
(330, '游客196210', '171.39.215.208', 1491903806, '原因'),
(331, '游客593913', '180.175.139.104', 1491903825, '原因'),
(332, '游客196210', '171.39.215.208', 1491914288, '原因'),
(333, 'czj5355', '119.163.59.199', 1491921870, '原因'),
(334, '游客560335', '49.223.185.156', 1491986581, '原因'),
(335, 'WANGPENG', '121.239.111.230', 1492588139, '原因同行'),
(336, '游客705476', '223.15.202.90', 1491985497, '原因'),
(337, '游客409702', '183.157.192.172', 1492670766, '原因'),
(338, '游客801619', '182.86.204.14', 1492687816, '原因'),
(339, '阳红', '122.194.13.102', 1492999091, '不开户'),
(340, '游客466627', '222.93.48.78', 1493023974, '原因'),
(341, '游客729054', '115.196.216.218', 1493024565, '原因'),
(342, '游客519429', '59.52.176.149', 1493099852, '原因'),
(343, '383721999', '112.98.74.81', 1492530718, '原因'),
(344, '薄情寡义?', '123.4.121.254', 1492530736, '原因'),
(345, '游客963059', '119.6.12.194', 1492536602, '原因'),
(346, '杨杨00', '49.84.93.101', 1492615048, '清理未开户，转户的会员'),
(347, '路人甲', '119.7.117.98', 1492615886, '原因'),
(348, 'frost', '60.220.124.96', 1492615894, '原因'),
(363, '墨墨', '80.12.37.126', 1492616151, '原因'),
(350, '打酱油的', '116.248.125.82', 1492615919, '原因'),
(351, '383721999', '112.98.74.81', 1492615927, '原因'),
(352, '游客963059', '119.6.12.194', 1492612421, '原因'),
(353, '游客201702', '182.101.63.112', 1492612425, '原因'),
(354, '游客107136', '211.162.220.196', 1492612429, '原因'),
(355, '游客794634', '80.12.37.126', 1492612434, '原因'),
(356, '游客857369', '119.32.58.29', 1492612438, '原因'),
(357, '游客876846', '114.82.10.10', 1492612441, '原因'),
(358, '游客857369', '119.32.58.29', 1492612444, '原因'),
(359, '游客857369', '119.32.58.29', 1492612448, '原因'),
(360, '游客857369', '119.32.58.29', 1492612453, '原因'),
(361, '游客233873', '116.5.217.17', 1492612482, '原因'),
(362, '游客857369', '119.32.58.29', 1492613103, '原因'),
(364, '游客106901', '78.227.135.9', 1492612672, '原因'),
(365, '游客106901', '78.227.135.9', 1492612672, '原因'),
(366, '风随所动', '110.240.205.4', 1492618206, '原因'),
(367, '游客417165', '116.228.200.226', 1493273816, '原因'),
(368, '游客977694', '117.156.38.58', 1492674592, '原因'),
(369, '游客697875', '111.43.111.222', 1492674602, '原因'),
(370, '游客963059', '119.6.12.194', 1492671966, '原因'),
(371, '游客963059', '119.6.12.194', 1492672566, '原因'),
(372, '游客963059', '119.6.12.194', 1492672566, '原因'),
(373, '游客963059', '119.6.12.194', 1492673766, '原因'),
(374, '游客428514', '111.73.168.201', 1493285093, '原因'),
(375, '游客389973', '180.162.198.209', 1492724111, '原因'),
(376, '游客448853', '123.125.71.57', 1492683404, '原因'),
(378, '游客451925', '123.125.71.99', 1493321241, '同行'),
(379, '游客385195', '49.70.193.209', 1492769121, '原因'),
(380, '薄情寡义?', '123.4.119.167', 1492768326, '原因'),
(388, '新四军', '111.79.165.157', 1493029814, '原因'),
(382, '游客305702', '123.125.71.60', 1492905293, '原因'),
(383, '游客403146', '36.22.61.46', 1492954191, '原因'),
(384, '游客804533', '183.6.39.158', 1492950598, '原因'),
(385, '游客442767', '1.197.186.10', 1493000370, '原因'),
(386, '游客587276', '117.136.49.122', 1493011345, '原因'),
(387, '游客128263', '117.22.25.166', 1493011353, '原因'),
(389, '新四军', '111.79.165.157', 1493033364, '原因'),
(390, '打酱油的', '60.160.169.150', 1493643110, '原因'),
(391, '新四军', '111.79.165.157', 1493038674, '原因'),
(392, '华山论剑', '115.197.104.88', 1493038679, '原因'),
(393, '顺利止盈', '1.197.186.10', 1493038631, '原因'),
(394, '新四军', '111.79.165.157', 1493041203, '原因'),
(395, '游客173747', '106.4.165.107', 1493648461, '原因'),
(396, 'accyj', '113.9.21.13', 1493044045, '原因'),
(397, '游客587276', '117.136.49.36', 1493083300, '原因'),
(398, '游客699357', '119.6.12.194', 1493083316, '原因'),
(399, '游客699357', '119.6.12.194', 1493084277, '原因'),
(400, '游客499417', '182.101.62.82', 1493084278, '原因'),
(401, '游客195721', '180.175.161.97', 1493133593, '原因'),
(402, '顺风顺水', '115.197.104.88', 1493102566, '原因'),
(403, '新四军', '111.79.165.157', 1493107932, '原因'),
(404, '顺利止盈', '1.196.164.18', 1493115816, '原因'),
(405, '游客123614', '182.101.62.82', 1493718861, '原因'),
(406, '?????', '101.226.61.207', 1493718871, '??????'),
(407, '383721999', '112.99.66.87', 1493172562, '原因'),
(408, 'frost', '60.220.131.28', 1493172594, '原因'),
(409, '生活不易', '60.0.186.69', 1493172604, '原因'),
(410, '杨杨00', '114.229.54.165', 1493172618, '原因'),
(411, '游客326496', '116.231.17.248', 1493171796, '原因'),
(412, '游客741269', '220.181.108.99', 1493226322, '原因'),
(413, 'wabb', '112.84.192.180', 1493190174, '原因'),
(414, '游客669782', '110.52.50.251', 1493795647, '原因'),
(415, '游客823640', '111.73.134.223', 1493202720, '原因'),
(416, '可惜没如果', '124.166.233.46', 1493258904, '原因'),
(417, '顺利止盈', '1.196.164.18', 1493217456, '原因'),
(418, '江敬酒', '117.73.46.235', 1493260343, '还换会员'),
(419, '顺利止盈', '1.196.164.18', 1493221292, '原因'),
(420, '游客969249', '123.125.71.111', 1493248788, '原因'),
(421, '游客861417', '112.10.174.121', 1493255954, '原因'),
(422, '游客741095', '183.25.72.5', 1493863288, '原因'),
(423, '游客189276', '182.200.25.128', 1493261582, '原因'),
(424, '游客990394', '116.226.88.121', 1493261584, '原因'),
(425, '游客571401', '14.23.38.87', 1493264325, '原因'),
(426, '游客741269', '123.125.71.75', 1493312750, '原因'),
(427, '游客963059', '119.6.12.194', 1493279463, '原因'),
(428, '游客938872', '116.226.243.231', 1493887201, '同行'),
(429, '阳红', '122.194.13.102', 1493300173, '原因'),
(430, '岑岑', '112.95.60.245', 1493296640, '原因'),
(431, '游客969249', '123.125.71.58', 1493335306, '原因'),
(432, '123', '106.5.131.36', 1493991196, '原因'),
(433, '游客807164', '59.53.25.165', 1493641944, '原因'),
(434, '游客555773', '113.129.69.198', 1493641947, '原因'),
(435, '游客686060', '182.108.45.46', 1493641950, '原因'),
(436, '游客555773', '223.81.194.178', 1493644604, '原因'),
(437, 'zdmei123', '175.169.206.15', 1493654274, '原因'),
(438, 'zdmei123', '175.169.206.15', 1493654283, '原因'),
(439, '游客303245', '123.207.54.40', 1493726478, '原因'),
(440, '游客797723', '125.45.120.11', 1493727305, '原因'),
(441, '游客555773', '123.168.200.232', 1493727360, '原因'),
(442, 'zdmei123', '113.224.231.180', 1493733607, '原因'),
(443, '游客305702', '123.125.71.97', 1493794207, '原因'),
(444, '游客931835', '120.27.19.178', 1493847153, '原因'),
(445, '游客931835', '120.27.19.178', 1493847153, '原因'),
(446, '游客458283', '211.161.166.48', 1494408762, '原因'),
(447, '游客911613', '36.232.59.158', 1494408890, '原因'),
(448, '游客217789', '114.252.64.41', 1493804096, '原因'),
(449, '游客310169', '182.46.164.82', 1493804728, '原因'),
(450, '游客310169', '182.46.164.82', 1493804728, '原因'),
(451, '游客439525', '116.76.139.52', 1494409427, '原因'),
(452, '游客439525', '116.76.139.52', 1494409427, '原因'),
(453, '游客119232', '114.232.93.231', 1494409717, '原因'),
(454, '游客119232', '114.232.93.231', 1494409717, '原因'),
(455, '游客379276', '114.25.32.250', 1493805123, '原因'),
(456, '游客379276', '114.25.32.250', 1493805123, '原因'),
(457, 'ZENGhaiF', '116.5.223.175', 1493805359, '原因'),
(458, '游客794791', '106.6.66.204', 1494410573, '原因'),
(459, '游客795558', '45.35.105.43', 1494410582, '原因'),
(460, '游客795558', '45.35.105.43', 1494410592, '原因'),
(461, 'ZENGhaiF', '116.5.223.175', 1494410748, '原因'),
(462, '杨迎斌', '222.169.178.139', 1494411686, '原因'),
(463, '游客378741', '182.46.131.227', 1494413300, '原因'),
(464, '游客822836', '211.161.248.163', 1494414162, '原因'),
(465, '游客249421', '211.161.67.20', 1494414966, '原因'),
(466, '游客208306', '211.159.186.170', 1494415259, '原因'),
(467, '游客224043', '106.8.231.136', 1493811490, '原因'),
(468, '游客969707', '171.38.244.100', 1494416554, '原因'),
(469, '游客887669', '61.149.13.101', 1494416561, '原因'),
(470, '游客635151', '10.10.30.37', 1494416593, '原因'),
(471, '游客635151', '10.10.30.37', 1494416593, '原因'),
(472, '游客849935', '123.168.201.148', 1494416618, '原因'),
(473, '游客312278', '39.128.223.4', 1494417062, '原因'),
(474, '游客312278', '39.128.223.4', 1494417065, '原因'),
(475, '游客353501', '121.35.185.127', 1494417143, '原因'),
(476, '游客423056', '157.61.73.141', 1494417210, '原因'),
(477, '游客123047', '180.95.142.111', 1493813160, '原因'),
(478, '游客235863', '183.228.11.55', 1494417966, '原因'),
(479, '消失的记忆', '220.164.25.127', 1493816972, '原因'),
(480, '游客593036', '120.27.11.104', 1494419998, '原因'),
(481, '游客593036', '120.27.11.104', 1494419999, '原因'),
(482, '游客753572', '125.34.161.122', 1494420023, '原因'),
(483, '游客753572', '125.34.161.122', 1494420023, '原因'),
(484, '游客230961', '124.11.191.105', 1494420896, '原因'),
(485, '游客701713', '119.137.63.222', 1494421744, '原因'),
(486, '游客457153', '175.191.228.174', 1494422085, '原因'),
(487, '游客457153', '175.191.228.174', 1494422085, '原因'),
(488, '游客839707', '119.29.253.195', 1494422925, '原因'),
(489, '游客945785', '175.4.168.117', 1494423080, '原因'),
(490, '游客351576', '125.113.131.214', 1494423549, '原因'),
(491, '游客351576', '125.113.131.214', 1494423549, '原因'),
(492, '游客202041', '118.196.192.183', 1494423554, '原因'),
(493, '游客305702', '220.181.108.123', 1493881955, '原因'),
(494, 'ar3jie', '113.117.149.51', 1494498025, '原因'),
(495, '游客119278', '61.140.249.97', 1494503428, '原因'),
(496, 'b405446372', '125.127.146.247', 1493910390, '原因'),
(497, '游客451925', '220.181.108.166', 1494687732, '同行'),
(498, '游客741269', '220.181.108.103', 1494114736, '原因'),
(499, '游客564240', '220.181.108.175', 1494235923, '原因'),
(500, '游客568374', '115.199.109.82', 1494842883, '同行'),
(501, '游客587406', '119.185.99.84', 1494259280, '原因'),
(502, '游客587406', '112.250.166.245', 1494399154, '原因'),
(503, '游客305702', '123.125.71.52', 1494428786, '原因'),
(504, '游客608464', '123.125.71.47', 1495050157, '同行打广告'),
(505, '游客826638', '220.181.108.150', 1495060115, '运营推广'),
(506, '嘿嘿', '218.65.122.14', 1495070843, '同行'),
(507, 'ww', '180.175.182.96', 1494577283, '不理人'),
(508, '消失的记忆', '116.55.46.53', 1495193064, '原因'),
(509, '阳红', '58.218.209.247', 1494597512, '原因'),
(510, '华003', '171.117.253.5', 1494594097, '原因'),
(511, '华003', '171.117.253.5', 1494607060, '原因'),
(512, '游客741269', '123.125.71.110', 1494687655, '原因'),
(513, '游客459323', '123.125.71.94', 1494717186, '体验时间已到'),
(514, '游客156336', '27.154.197.171', 1495538866, '原因'),
(515, '游客741269', '220.181.108.99', 1495152675, '原因'),
(516, '游客741269', '220.181.108.161', 1495573359, '原因'),
(517, '游客298683', '220.181.108.106', 1495540159, '原因'),
(518, '阳红', '58.222.25.203', 1495634243, '原因'),
(519, '游客229242', '220.181.108.113', 1495633974, '原因'),
(520, '游客326686', '123.125.71.60', 1495820503, '原因时间到'),
(521, '游客541033', '58.246.103.133', 1495780665, '原因'),
(522, '游客541033', '58.246.103.133', 1496385522, '原因'),
(523, '游客548353', '220.181.108.104', 1495851336, '原因'),
(524, '游客326686', '220.181.108.104', 1496211688, '原因'),
(525, '东方舞', '120.11.81.187', 1496237624, '原因'),
(526, '游客337575', '222.173.59.122', 1496901155, '原因'),
(527, '游客520582', '220.181.108.177', 1496408209, '原因'),
(528, '游客741269', '123.125.71.30', 1496477604, '原因'),
(529, '游客741269', '123.125.71.32', 1496700587, '原因'),
(530, '游客741269', '123.125.71.113', 1496735481, '原因'),
(531, '游客305702', '220.181.108.122', 1496701060, '原因'),
(532, 'zfc才哥', '220.181.108.186', 1496755102, '原因'),
(533, '游客520582', '220.181.108.97', 1496842400, '原因'),
(534, '游客608464', '220.181.108.169', 1497485061, '同行打广告'),
(535, '游客564240', '123.125.71.70', 1496884254, '原因');

-- --------------------------------------------------------

--
-- 表的结构 `chat_chatlog`
--

CREATE TABLE IF NOT EXISTS `chat_chatlog` (
  `id` int(11) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  `ugid` int(11) DEFAULT '0',
  `uid` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuid` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuser` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` text COLLATE utf8_unicode_ci,
  `msg` text COLLATE utf8_unicode_ci,
  `mtime` int(11) DEFAULT NULL,
  `type` smallint(1) DEFAULT '0',
  `robot` smallint(1) NOT NULL DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` smallint(1) DEFAULT '0',
  `msgid` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `chat_config`
--

CREATE TABLE IF NOT EXISTS `chat_config` (
  `id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `rules` text COLLATE utf8_unicode_ci,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keys` text COLLATE utf8_unicode_ci,
  `dc` text COLLATE utf8_unicode_ci,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ico` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bg` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ewm` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `homepop` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regban` text COLLATE utf8_unicode_ci,
  `msgban` text COLLATE utf8_unicode_ci,
  `state` smallint(1) DEFAULT NULL,
  `pwd` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regaudit` smallint(1) DEFAULT NULL,
  `msgblock` smallint(1) DEFAULT '0',
  `msgaudit` smallint(1) DEFAULT NULL,
  `videoww` smallint(1) DEFAULT NULL,
  `onhomepop` smallint(1) DEFAULT NULL,
  `videowwc` text COLLATE utf8_unicode_ci,
  `msglog` smallint(1) DEFAULT NULL,
  `logintip` smallint(1) DEFAULT NULL,
  `loginalert` smallint(1) DEFAULT NULL,
  `logoutalert` smallint(1) DEFAULT NULL,
  `loginguest` smallint(1) DEFAULT NULL,
  `loginqq` smallint(1) DEFAULT NULL,
  `slide` smallint(1) DEFAULT NULL,
  `template` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `slidetit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tongji` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `tserver` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `livetype` smallint(6) DEFAULT '0',
  `online` int(11) DEFAULT '0',
  `defvideo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonefp` text COLLATE utf8_unicode_ci,
  `livefp` text COLLATE utf8_unicode_ci,
  `rebots` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defkf` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defvideonick` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tiyantime` int(5) NOT NULL DEFAULT '0',
  `fayanjiange` int(5) NOT NULL DEFAULT '0',
  `show_loginw_interval` int(10) unsigned NOT NULL COMMENT '弹框时间',
  `rebots_yk` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '游客数量',
  `rebots_re` tinyint(11) NOT NULL DEFAULT '0',
  `flowernum` int(10) NOT NULL DEFAULT '0',
  `acernum` int(10) NOT NULL DEFAULT '0',
  `kissnum` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_config`
--

INSERT INTO `chat_config` (`id`, `rid`, `rules`, `title`, `keys`, `dc`, `logo`, `cover`, `ico`, `bg`, `ewm`, `homepop`, `regban`, `msgban`, `state`, `pwd`, `regaudit`, `msgblock`, `msgaudit`, `videoww`, `onhomepop`, `videowwc`, `msglog`, `logintip`, `loginalert`, `logoutalert`, `loginguest`, `loginqq`, `slide`, `template`, `slidetit`, `tongji`, `copyright`, `tserver`, `livetype`, `online`, `defvideo`, `phonefp`, `livefp`, `rebots`, `defkf`, `defvideonick`, `tiyantime`, `fayanjiange`, `show_loginw_interval`, `rebots_yk`, `rebots_re`, `flowernum`, `acernum`, `kissnum`) VALUES
(1, 1, '24,23,22,17,15,14,13,12,11,4,3,2,1', '微科技财经直播喊单系统', '微科技财经直播喊单系统', '微科技财经直播喊单系统', '/upload/upfile/day_180510/201805101857254506.png', '/upload/upfile/day_160419/201604192351546450.jpg', '/upload/upfile/day_150906/201509061528401600.ico', '/upload/upfile/day_160702/201607021756048390.jpg', '/upload/upfile/day_160901/201609010109561125.png', '/upload/upfile/day_170221/201702211813058846.jpg', 'qq|q|系统管理员|管理员|admin|管理', '返佣|日返|高返佣|头寸|返佣|黑平台|代理|代客操盘|操你妈|傻逼|骗子', 1, '123123', 0, 1, 1, 1, 1, '没声音或没视频，刷新一下。投资有风险，分析师建议仅供参考。', 1, 0, 0, 0, 1, 0, 1, 'center', '本月活动', '<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement("script");\r\n  hm.src = "//hm.baidu.com/hm.js?fd222ad29c2373537d2145d55fca0d0e";\r\n  var s = document.getElementsByTagName("script")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>', '©2018 微科技财经直播喊单系统', '119.10.55.152:7272', 2, 163, '1', '<iframe height="500" style="margin-top:-30px" width="100%" allowtransparency="true" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" src="http://www.zhiniu8.com/h5live?uid=1704372718"></iframe>', '<object type="application/x-shockwave-flash" name="webyy_client" data="http://yy.com/s/63776761/63776761/yyscene.swf" width="100%" height="100%" id="webyy_client">\r\n<param name="movie" value="http://yy.com/s/63776761/63776761/yyscene.swf" />\r\n<param name="quality" value="high">\r\n<param name="bgcolor" value="#000">\r\n<param name="allowScriptAccess" value="always">\r\n<param name="allowFullScreen" value="true">\r\n<param name="wmode" value="opaque">\r\n<param name="menu" value="false">\r\n<param name="flashvars" value="source=goldFin">\r\n</object>', '200', '', '系统管理员', 3, 6, 2, '6', 60, 2, 15, 2),
(2, 2, '24,23,22,17,15,14,13,12,11,4,3,2,1', '大连客户直播室', '大连客户直播室', '大连客户直播室', '/upload/upfile/day_180510/201805101857254506.png', '/upload/upfile/day_160419/201604192354314293.jpg', '/upload/upfile/day_150906/201509061528401600.ico', '/upload/upfile/day_160702/201607021756048390.jpg', '/upload/upfile/day_151126/201511262109419420.png', '/upload/upfile/day_160326/201603261453179048.jpg', 'qq|q|系统管理员|管理员|admin|管理', '黑平台|返佣|日返|高返佣|头寸|打包|手续费|刷单|套利|黑公司|Q|q|私聊|群|加群|返佣|黑平台|代理|代客操盘', 1, '123123', 0, 1, 0, 0, 1, '没声音或没视频，刷新一下。投资有风险，分析师建议仅供参考。', 1, 0, 0, 0, 1, 0, 1, 'right', '本月活动', '<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement("script");\r\n  hm.src = "//hm.baidu.com/hm.js?fd222ad29c2373537d2145d55fca0d0e";\r\n  var s = document.getElementsByTagName("script")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>', '', '183.2.244.41:7275', 1, 0, '1', '<div id="player" style="width:100%;height:100%;">\r\n    <script type="text/javascript" charset="utf-8" src="http://yuntv.letv.com/player/live/blive.js"></script>\r\n    <script>\r\n        var player = new CloudLivePlayer();\r\n        //activityId 请换成自己设置的获得id\r\n        player.init({activityId:"A2016010500713"});\r\n    </script>\r\n</div>', '<object type="application/x-shockwave-flash" name="webyy_client" data="http://yy.com/s/90348134/90348134/yyscene.swf" width="100%" height="100%" id="webyy_client">\r\n<param name="movie" value="http://yy.com/s/90348134/90348134/yyscene.swf" />\r\n<param name="quality" value="high">\r\n<param name="bgcolor" value="#000">\r\n<param name="allowScriptAccess" value="always">\r\n<param name="allowFullScreen" value="true">\r\n<param name="wmode" value="opaque">\r\n<param name="menu" value="false">\r\n<param name="flashvars" value="source=goldFin">\r\n</object>', '0', '', '系统管理员', 10, 0, 30, '0', 0, 0, 0, 0),
(3, 3, '24,23,22,4,3,2', '超级一对一', '', '', '/upload/upfile/day_180510/201805101857254506.png', '/upload/upfile/day_160419/201604192351546450.jpg', '/upload/upfile/day_150906/201509061528401600.ico', '/upload/upfile/day_160702/201607021756048390.jpg', '/upload/upfile/day_151126/201511262109419420.png', '/upload/upfile/day_160326/201603261453179048.jpg', 'qq|q|系统管理员|管理员|admin|管理', '黑平台|返佣|日返|高返佣|头寸|打包|手续费|刷单|套利|黑公司|Q|q|私聊|群|加群|返佣|黑平台|代理|代客操盘', 1, '123123', 0, 1, 0, 0, 1, '没声音或没视频，刷新一下。投资有风险，分析师建议仅供参考。', 1, 1, 1, 0, 1, 0, 1, 'center', '本月活动', '<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement("script");\r\n  hm.src = "//hm.baidu.com/hm.js?fd222ad29c2373537d2145d55fca0d0e";\r\n  var s = document.getElementsByTagName("script")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>', '', '183.2.244.41:7275', 1, 0, '1', '65699895', '<object type="application/x-shockwave-flash" name="webyy_client" data="http://yy.com/s/65699895/65699895/yyscene.swf" width="100%" height="100%" id="webyy_client">\r\n<param name="movie" value="http://yy.com/s/65699895/65699895/yyscene.swf" />\r\n<param name="quality" value="high">\r\n<param name="bgcolor" value="#000">\r\n<param name="allowScriptAccess" value="always">\r\n<param name="allowFullScreen" value="true">\r\n<param name="wmode" value="opaque">\r\n<param name="menu" value="false">\r\n<param name="flashvars" value="source=goldFin">\r\n</object>', '0', '', '系统管理员', 0, 0, 30, '0', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `chat_confmessage`
--

CREATE TABLE IF NOT EXISTS `chat_confmessage` (
  `id` int(11) NOT NULL,
  `keys` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempid` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `onoff` smallint(1) NOT NULL,
  `vcode` smallint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_confmessage`
--

INSERT INTO `chat_confmessage` (`id`, `keys`, `tempid`, `onoff`, `vcode`) VALUES
(1, 'bd1805cf2662548d5c45a6774001aace', '19891', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `chat_confpay`
--

CREATE TABLE IF NOT EXISTS `chat_confpay` (
  `id` int(10) NOT NULL,
  `paypid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `paykey` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payaccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `chat_confpay`
--

INSERT INTO `chat_confpay` (`id`, `paypid`, `paykey`, `payaccount`) VALUES
(1, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `chat_consumelist`
--

CREATE TABLE IF NOT EXISTS `chat_consumelist` (
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `count` decimal(14,2) NOT NULL,
  `jid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `beizhu` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `chat_consumelist`
--

INSERT INTO `chat_consumelist` (`cid`, `mid`, `username`, `count`, `jid`, `time`, `beizhu`) VALUES
(1, 1, NULL, '11.00', 0, 1465608176, '送红包'),
(2, 1, '直播室红包', '23.00', 0, 1465610061, '送红包'),
(3, 1, '直播室红包', '1.00', 0, 1465692245, '送红包'),
(4, 1, '直播室红包', '13.00', 0, 1465692256, '送红包'),
(5, 1, '直播室红包', '1.00', 0, 1465692527, '送红包'),
(6, 1, '直播室红包', '13.00', 0, 1465692540, '送红包'),
(7, 1, '直播室红包', '1.00', 0, 1465692667, '送红包'),
(8, 1, '直播室红包', '13.00', 0, 1465692678, '送红包'),
(9, 1, '直播室红包', '3.00', 0, 1465692691, '送红包'),
(10, 1, '直播室红包', '2.00', 0, 1465692702, '送红包'),
(11, 1, '直播室红包', '1.00', 0, 1465692741, '送红包'),
(12, 1, '直播室红包', '3.00', 0, 1465692750, '送红包'),
(13, 1, '直播室红包', '1.00', 0, 1465692902, '送红包'),
(14, 1, '直播室红包', '1.00', 0, 1465692965, '送红包'),
(15, 1, '直播室红包', '1.00', 0, 1467452352, '送红包'),
(16, 1, '直播室红包', '1.00', 0, 1467454152, '送红包');

-- --------------------------------------------------------

--
-- 表的结构 `chat_course`
--

CREATE TABLE IF NOT EXISTS `chat_course` (
  `id` int(11) NOT NULL,
  `week` int(1) NOT NULL,
  `times` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `chat_course`
--

INSERT INTO `chat_course` (`id`, `week`, `times`, `teacher`, `info`) VALUES
(104, 3, ' 00:00-02:00', '王老师', ''),
(57, 1, '20:00-22:00', '简老师', ''),
(105, 4, ' 00:00-02:00', '王老师', ''),
(75, 3, ' 22:00-24:00', '徐老师 ', ''),
(5, 6, '全天', '休息', '休息 '),
(6, 7, '全天', '休息', '休息'),
(106, 5, '00:00-02:00', '王老师', ''),
(55, 1, '18:00-20:00', '张老师', ''),
(54, 1, '17:00-18:00 ', '刘老师', ''),
(53, 1, '15:00-17:00 ', '刘老师', ''),
(52, 1, '13:00-15:00', '蔡老师', ''),
(51, 1, '11:00-13:00', '徐老师', ''),
(50, 1, '09:00-11:00', '简老师', ''),
(94, 5, '22:00-24:00', '徐老师', ''),
(93, 5, '20:00-22:00', '刘老师 ', ''),
(95, 1, '22:00-00:00', '徐老师', ''),
(91, 5, '18:00-20:00 ', '张老师', ''),
(90, 5, '17:00-18:00 ', '简老师', ''),
(89, 5, ' 15:00-17:00', '刘老师', ''),
(88, 5, '13:00-15:00', '蔡老师', ''),
(87, 5, '11:00-13:00', '徐老师', ''),
(86, 5, '9:00-11:00', '简老师', ''),
(85, 4, '22:00-24:00', '徐老师  ', ''),
(84, 4, '20:00-22:00', '刘老师 ', ''),
(103, 2, ' 00:00-02:00', '王老师', ''),
(82, 4, '18:00-20:00 ', '张老师', ''),
(81, 4, '17:00-18:00  ', ' 简老师', ''),
(80, 4, '15:00-17:00', '刘老师', ''),
(79, 4, '13:00-15:00', '蔡老师', ''),
(78, 4, '11:00-13:00', '徐老师', ''),
(77, 4, '09:00-11:00', '简老师', ''),
(74, 3, '20:00-22:00', '刘老师', ''),
(73, 3, '18:00-20:00 ', '张老师', ''),
(72, 3, '17:00-18:00   ', '简老师', ''),
(71, 3, '15:00-17:00 ', '刘老师', ''),
(70, 3, '13:00-15:00', '蔡老师', ''),
(69, 3, '11:00-13:00', '徐老师', ''),
(68, 3, '09:00-11:00', '简老师', ''),
(67, 2, '22:00-24:00', '徐老师  ', ''),
(66, 2, '20:00-22:00', '刘老师 ', ''),
(102, 1, '00：00-2:00', '王老师', ''),
(64, 2, '18:00-20:00 ', '张老师 ', ''),
(63, 2, ' 17:-18:00 ', '  简老师', ''),
(62, 2, '15:00-17:00 ', '刘老师', ''),
(61, 2, '13-15:00', '蔡老师', ''),
(60, 2, '11:00-13:00', '徐老师', ''),
(59, 2, '09:00-11:00', '简老师', '');

-- --------------------------------------------------------

--
-- 表的结构 `chat_customerservice`
--

CREATE TABLE IF NOT EXISTS `chat_customerservice` (
  `id` int(11) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ov` int(5) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `chat_customerservice`
--

INSERT INTO `chat_customerservice` (`id`, `name`, `url`, `img`, `ov`) VALUES
(4, '客服小刘', 'http://wpa.qq.com/msgrd?v=3&uin=2491797061&site=qq&menu=yes', '/upload/upfile/day_160830/201608301112301172.gif', 0),
(5, '客服宁晨', 'http://wpa.qq.com/msgrd?v=3&uin=2733549867&site=qq&menu=yes', '/upload/upfile/day_160901/201609011336086990.gif', 0),
(6, '客服阿美', 'http://wpa.qq.com/msgrd?v=3&uin=2491768445&site=qq&menu=yes', '/upload/upfile/day_160901/201609011423595417.gif', 0),
(7, '客服薇薇', 'http://wpa.qq.com/msgrd?v=3&uin=2491786520&site=qq&menu=yes', '/upload/upfile/day_160901/201609011425282549.gif', 0);

-- --------------------------------------------------------

--
-- 表的结构 `chat_gag`
--

CREATE TABLE IF NOT EXISTS `chat_gag` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `losttime` int(11) DEFAULT NULL,
  `sn` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `chat_getredbaglist`
--

CREATE TABLE IF NOT EXISTS `chat_getredbaglist` (
  `g_r_id` int(11) NOT NULL,
  `s_r_id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `count` decimal(14,2) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `chat_getredbaglist`
--

INSERT INTO `chat_getredbaglist` (`g_r_id`, `s_r_id`, `mid`, `count`, `time`) VALUES
(1, 1, 1, '0.10', 1464710630),
(2, 1, 2, '0.29', 1464710636),
(3, 1, 3, '2.61', 1464710640),
(4, 2, 1, '2.64', 1464710696),
(5, 2, 2, '4.75', 1464710701),
(6, 2, 3, '0.06', 1464710704),
(7, 3, 1, '5.32', 1464710743),
(8, 3, 2, '3.22', 1464710746),
(9, 3, 3, '1.46', 1464710750),
(10, 4, 1, '5.92', 1464711087),
(11, 4, 2, '0.02', 1464711103),
(12, 4, 3, '4.06', 1464711110),
(13, 6, 1, '1.00', 1464835622),
(14, 7, 1, '6.63', 1464835634),
(15, 8, 1, '1.00', 1465219412),
(16, 9, 1, '0.01', 1465378168),
(17, 13, 1, '0.15', 1465692247),
(18, 18, 1, '0.86', 1465692679),
(19, 19, 1, '0.30', 1465692692),
(20, 21, 1, '1.00', 1465692742),
(21, 25, 1, '1.00', 1467452353),
(22, 26, 1, '1.00', 1467454154);

-- --------------------------------------------------------

--
-- 表的结构 `chat_gift_class`
--

CREATE TABLE IF NOT EXISTS `chat_gift_class` (
  `id` tinyint(8) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order` tinyint(8) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_gift_class`
--

INSERT INTO `chat_gift_class` (`id`, `name`, `order`) VALUES
(5, '热门', 8),
(6, '友谊', 7),
(7, '爱情', 6),
(8, '奢华', 5);

-- --------------------------------------------------------

--
-- 表的结构 `chat_gift_goods`
--

CREATE TABLE IF NOT EXISTS `chat_gift_goods` (
  `id` int(11) NOT NULL,
  `cid` tinyint(4) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `dateline` int(11) NOT NULL,
  `msg` text COLLATE utf8_unicode_ci NOT NULL,
  `expired` int(11) NOT NULL,
  `sale` int(11) NOT NULL DEFAULT '0',
  `t` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_gift_goods`
--

INSERT INTO `chat_gift_goods` (`id`, `cid`, `name`, `price`, `dateline`, `msg`, `expired`, `sale`, `t`) VALUES
(7, 2, 'xxx', 0, 1310931698, 'xxx', 1405539690, 14690, 1),
(6, 1, '戒指', 300, 1310931586, 'xxx', 1405539496, 8601, 0),
(9, 3, '测试礼物', 10, 1345564684, '测试礼物', 1440172662, 5238, 1),
(12, 3, '别墅', 300, 1359454169, '', 1454062126, 520, 0),
(13, 7, '爱心', 100, 1384202469, '', 1478810350, 0, 0),
(15, 7, '包包', 300, 1384202543, '', 1478810529, 0, 0),
(16, 7, '高跟鞋', 500, 1384202594, '', 1478810543, 0, 0),
(17, 7, '口红', 100, 1384202623, '', 1478810594, 104, 0),
(18, 7, '奶瓶', 30, 1384202649, '', 1478810623, 0, 0),
(19, 7, '三点式', 120, 1384202686, '', 1478810649, 3, 0),
(20, 7, '吻', 10, 1384202722, '', 1478810686, 2, 0),
(21, 7, '双喜临们', 200, 1384202769, '', 1478810722, 10, 0),
(22, 7, '项链', 500, 1384202793, '', 1478810769, 1, 0),
(23, 7, '小熊', 150, 1384202809, '', 1478810793, 1, 0),
(24, 7, '锤子', 100, 1384202832, '', 1478810809, 103, 0),
(25, 7, '钻戒', 999, 1384202867, '', 1478810832, 1, 0),
(26, 6, 'HI', 10, 1384202939, '', 1478810867, 121, 0),
(27, 6, 'X O', 300, 1384202968, '', 1478810939, 191, 0),
(28, 6, '鄙视你', 100, 1384202990, '', 1478810968, 0, 0),
(29, 6, '鼓掌', 10, 1384203015, '', 1478810990, 102, 0),
(30, 6, '欢迎', 10, 1384203037, '', 1478811015, 117, 0),
(31, 6, '火机', 200, 1384203055, '', 1478811037, 100, 0),
(32, 6, '咖啡', 10, 1384203074, '', 1478811055, 1003, 0),
(33, 6, '马', 50, 1384203098, '', 1478811074, 11, 0),
(34, 6, '寿星', 369, 1384203130, '', 1478811098, 14, 0),
(35, 6, '中华香烟', 500, 1384203153, '', 1478811130, 1110, 0),
(36, 6, '生日蛋糕', 99, 1384203203, '', 1478811153, 99, 0);

-- --------------------------------------------------------

--
-- 表的结构 `chat_gift_list`
--

CREATE TABLE IF NOT EXISTS `chat_gift_list` (
  `id` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `msg` text COLLATE utf8_unicode_ci NOT NULL,
  `dateline` int(11) NOT NULL,
  `num` mediumint(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `chat_gift_record`
--

CREATE TABLE IF NOT EXISTS `chat_gift_record` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tid` int(11) NOT NULL,
  `toname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=770 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_gift_record`
--

INSERT INTO `chat_gift_record` (`id`, `mid`, `name`, `tid`, `toname`, `type`, `num`, `time`) VALUES
(1, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468995997),
(2, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468995999),
(3, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1468996000),
(4, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1468996000),
(5, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1468996001),
(6, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468996228),
(7, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468996232),
(8, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468996232),
(9, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1468996233),
(10, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468996309),
(11, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1468996310),
(12, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468996311),
(13, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468996312),
(14, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468996313),
(15, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468996664),
(16, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1468996767),
(17, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1468996774),
(18, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1468996782),
(19, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1468996790),
(20, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468996894),
(21, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468996900),
(22, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1468996902),
(23, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1468999534),
(24, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1468999539),
(25, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1468999542),
(26, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1468999544),
(27, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469002462),
(28, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469002464),
(29, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469002467),
(30, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469002470),
(31, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469002476),
(32, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469002489),
(33, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469002499),
(34, 7, '李老师', 1, '系统管理员', '送飞吻', 1, 1469002529),
(35, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469004477),
(36, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469004550),
(37, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469004559),
(38, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469004570),
(39, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469004845),
(40, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469004846),
(41, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469006028),
(42, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469006030),
(43, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469006036),
(44, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469006046),
(45, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009571),
(46, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009573),
(47, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009766),
(48, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009773),
(49, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009773),
(50, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009773),
(51, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009773),
(52, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009774),
(53, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009774),
(54, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009774),
(55, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009775),
(56, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009775),
(57, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009775),
(58, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009775),
(59, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009775),
(60, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009775),
(61, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009776),
(62, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009776),
(63, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009776),
(64, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009777),
(65, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009777),
(66, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009777),
(67, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009777),
(68, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009777),
(69, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009778),
(70, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009778),
(71, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009778),
(72, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009778),
(73, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009778),
(74, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009778),
(75, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009779),
(76, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009779),
(77, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009779),
(78, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009779),
(79, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009779),
(80, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009779),
(81, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009780),
(82, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009780),
(83, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009780),
(84, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009780),
(85, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009780),
(86, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009780),
(87, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009781),
(88, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009781),
(89, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009781),
(90, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009781),
(91, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009781),
(92, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009782),
(93, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009782),
(94, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009782),
(95, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009782),
(96, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009783),
(97, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009783),
(98, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009783),
(99, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009783),
(100, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009783),
(101, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469009783),
(102, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009790),
(103, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009790),
(104, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009790),
(105, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009790),
(106, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009790),
(107, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009790),
(108, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009791),
(109, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009791),
(110, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009791),
(111, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009791),
(112, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009791),
(113, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009792),
(114, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009792),
(115, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009792),
(116, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009792),
(117, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009792),
(118, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009792),
(119, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009793),
(120, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009793),
(121, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009793),
(122, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009793),
(123, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009793),
(124, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009794),
(125, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009794),
(126, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009794),
(127, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009794),
(128, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009794),
(129, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009794),
(130, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009795),
(131, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009795),
(132, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009795),
(133, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469009795),
(134, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009798),
(135, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009799),
(136, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009799),
(137, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009799),
(138, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009799),
(139, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009799),
(140, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009800),
(141, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009800),
(142, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009800),
(143, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009800),
(144, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009801),
(145, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009801),
(146, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009801),
(147, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009801),
(148, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009801),
(149, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009802),
(150, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009802),
(151, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009802),
(152, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009802),
(153, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469009802),
(154, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469010950),
(155, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469010951),
(156, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469010954),
(157, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469010954),
(158, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469011135),
(159, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469011142),
(160, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469011147),
(161, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469011151),
(162, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469011154),
(163, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469011158),
(164, 7, '李老师', 1, '系统管理员', '送飞吻', 1, 1469011161),
(165, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469011168),
(166, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469011178),
(167, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469011188),
(168, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469012197),
(169, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469012202),
(170, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469012215),
(171, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469012227),
(172, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469012227),
(173, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469012227),
(174, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469012228),
(175, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469012243),
(176, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469012247),
(177, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469012259),
(178, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469012270),
(179, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469012277),
(180, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469014218),
(181, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469014219),
(182, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469064620),
(183, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469064628),
(184, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469064632),
(185, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469064635),
(186, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469064704),
(187, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469064756),
(188, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469064766),
(189, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469064942),
(190, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469064946),
(191, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469064948),
(192, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469064953),
(193, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469064956),
(194, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469064958),
(195, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065022),
(196, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065025),
(197, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469065029),
(198, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469065031),
(199, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469065033),
(200, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469065034),
(201, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469065037),
(202, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469065038),
(203, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469065041),
(204, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469065042),
(205, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469065044),
(206, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469065053),
(207, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469065055),
(208, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065059),
(209, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065062),
(210, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065064),
(211, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065066),
(212, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065067),
(213, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065070),
(214, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065072),
(215, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065617),
(216, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469065626),
(217, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065821),
(218, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469065825),
(219, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469066726),
(220, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469066733),
(221, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469066736),
(222, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469071961),
(223, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469071972),
(224, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469072093),
(225, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469072096),
(226, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469072106),
(227, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469072116),
(228, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469072126),
(229, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469072475),
(230, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469072489),
(231, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469072533),
(232, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469072545),
(233, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469072601),
(234, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469072605),
(235, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469072623),
(236, 7, '李老师', 1, '系统管理员', '送飞吻', 1, 1469072641),
(237, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469072652),
(238, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469072664),
(239, 7, '李老师', 1, '系统管理员', '送鲜花', 1, 1469072699),
(240, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469072704),
(241, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469072704),
(242, 7, '李老师', 1, '系统管理员', '送大宝剑', 1, 1469072710),
(243, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469072729),
(244, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469072758),
(245, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469073370),
(246, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469073380),
(247, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469073383),
(248, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469075047),
(249, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469078746),
(250, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469078751),
(251, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469083832),
(252, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469083834),
(253, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469083838),
(254, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469084240),
(255, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469084242),
(256, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469084250),
(257, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469084253),
(258, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469085335),
(259, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469085346),
(260, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469086824),
(261, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469103697),
(262, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469155403),
(263, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469155407),
(264, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469155407),
(265, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469155408),
(266, 1, '系统管理员', 7, '李老师', '送飞吻', 1, 1469155410),
(267, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469155416),
(268, 1, '系统管理员', 7, '李老师', '送大宝剑', 1, 1469155418),
(269, 1, '系统管理员', 7, '李老师', '送鲜花', 1, 1469189636),
(270, 1, '系统管理员', 0, '', '送鲜花', 1, 1470968036),
(271, 1, '系统管理员', 0, '', '送鲜花', 1, 1470968041),
(272, 11, '宁晨', 1, '系统管理员', '送鲜花', 1, 1473062789),
(273, 11, '宁晨', 1, '系统管理员', '送鲜花', 1, 1473125530),
(274, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1473917618),
(275, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1474455198),
(276, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1474891385),
(277, 10, '客服小刘', 1, '系统管理员', '送鲜花', 1, 1476288066),
(278, 31, '短线高手', 1, '系统管理员', '送鲜花', 1, 1477451265),
(279, 13, '客服阿美', 1, '系统管理员', '送鲜花', 1, 1478056213),
(280, 13, '客服阿美', 1, '系统管理员', '送鲜花', 1, 1478189108),
(281, 13, '客服阿美', 1, '系统管理员', '送大宝剑', 1, 1478769987),
(282, 13, '客服阿美', 1, '系统管理员', '送鲜花', 1, 1478783273),
(283, 13, '客服阿美', 1, '系统管理员', '送大宝剑', 1, 1479211287),
(284, 13, '客服阿美', 1, '系统管理员', '送大宝剑', 1, 1479312070),
(285, 13, '客服阿美', 1, '系统管理员', '送飞吻', 1, 1479405263),
(286, 13, '客服阿美', 1, '系统管理员', '送鲜花', 1, 1479405277),
(287, 43, '汐汐', 1, '系统管理员', '送鲜花', 1, 1480994701),
(288, 43, '汐汐', 1, '系统管理员', '送飞吻', 1, 1480994732),
(289, 43, '汐汐', 1, '系统管理员', '送鲜花', 1, 1480994920),
(290, 43, '汐汐', 1, '系统管理员', '送鲜花', 1, 1480994920),
(291, 13, '客服阿美', 1, '系统管理员', '送大宝剑', 1, 1481012868),
(292, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481012885),
(293, 12, '客服薇薇', 1, '系统管理员', '送大宝剑', 1, 1481012915),
(294, 12, '客服薇薇', 1, '系统管理员', '送大宝剑', 1, 1481012943),
(295, 43, '汐汐', 1, '系统管理员', '送鲜花', 1, 1481015154),
(296, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1481015978),
(297, 36, '管理   管婷', 1, '系统管理员', '送飞吻', 1, 1481021408),
(298, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481021421),
(299, 13, '客服阿美', 1, '系统管理员', '送大宝剑', 1, 1481021421),
(300, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481021437),
(301, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481024459),
(302, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1481024517),
(303, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481028238),
(304, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481032723),
(305, 13, '客服阿美', 1, '系统管理员', '送大宝剑', 1, 1481032790),
(306, 13, '客服阿美', 1, '系统管理员', '送鲜花', 1, 1481032800),
(307, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481034856),
(308, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481035973),
(309, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481040130),
(310, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481043462),
(311, 12, '客服薇薇', 1, '系统管理员', '送大宝剑', 1, 1481072149),
(312, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1481072154),
(313, 12, '客服薇薇', 1, '系统管理员', '送飞吻', 1, 1481072158),
(314, 43, '汐汐', 1, '系统管理员', '送鲜花', 1, 1481085550),
(315, 43, '汐汐', 1, '系统管理员', '送飞吻', 1, 1481089235),
(316, 43, '汐汐', 1, '系统管理员', '送鲜花', 1, 1481090692),
(317, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1481091459),
(318, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481099175),
(319, 13, '客服阿美', 1, '系统管理员', '送大宝剑', 1, 1481099435),
(320, 43, '汐汐', 1, '系统管理员', '送鲜花', 1, 1481105035),
(321, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481112114),
(322, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1481114843),
(323, 43, '汐汐', 1, '系统管理员', '送飞吻', 1, 1481115232),
(324, 43, '汐汐', 1, '系统管理员', '送飞吻', 1, 1481115945),
(325, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1481120200),
(326, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481125830),
(327, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481132857),
(328, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1481133618),
(329, 13, '客服阿美', 1, '系统管理员', '送飞吻', 1, 1481133631),
(330, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1481158738),
(331, 43, '汐汐', 1, '系统管理员', '送飞吻', 1, 1481164417),
(332, 43, '汐汐', 1, '系统管理员', '送鲜花', 1, 1481174233),
(333, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481181208),
(334, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481186813),
(335, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481192156),
(336, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481193858),
(337, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481195227),
(338, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1481210995),
(339, 12, '客服薇薇', 1, '系统管理员', '送大宝剑', 1, 1481245062),
(340, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1481245065),
(341, 12, '客服薇薇', 1, '系统管理员', '送飞吻', 1, 1481245068),
(342, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481266663),
(343, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481267142),
(344, 13, '客服阿美', 1, '系统管理员', '送鲜花', 1, 1481274095),
(345, 43, '汐汐', 1, '系统管理员', '送鲜花', 1, 1481512689),
(346, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481529850),
(347, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481541595),
(348, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1481542584),
(349, 13, '客服阿美', 1, '系统管理员', '送鲜花', 1, 1481542602),
(350, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481545036),
(351, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481547030),
(352, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481547206),
(353, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481554554),
(354, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1481559334),
(355, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481561414),
(356, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481614810),
(357, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481620341),
(358, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481642912),
(359, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481711012),
(360, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481719493),
(361, 43, '汐汐', 1, '系统管理员', '送飞吻', 1, 1481767847),
(362, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481787308),
(363, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481789770),
(364, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481790820),
(365, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481791765),
(366, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481797643),
(367, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481809792),
(368, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481810712),
(369, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481817798),
(370, 43, '汐汐', 1, '系统管理员', '送鲜花', 1, 1481862889),
(371, 43, '汐汐', 1, '系统管理员', '送飞吻', 1, 1481867102),
(372, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1481868674),
(373, 43, '汐汐', 1, '系统管理员', '送飞吻', 1, 1481880785),
(374, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1482155652),
(375, 43, '汐汐', 1, '系统管理员', '送鲜花', 1, 1482201232),
(376, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1482223466),
(377, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1482231816),
(378, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1482305688),
(379, 43, '客服汐汐', 1, '系统管理员', '送大宝剑', 1, 1482408803),
(380, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1482492397),
(381, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1482816995),
(382, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1482823900),
(383, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1482841269),
(384, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1482842626),
(385, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1482842887),
(386, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1482919305),
(387, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1482927745),
(388, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1482944327),
(389, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1482944913),
(390, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1482947843),
(391, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1482996747),
(392, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1482996749),
(393, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1482996751),
(394, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1482996752),
(395, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1482999061),
(396, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1483001401),
(397, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483001404),
(398, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1483005811),
(399, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1483061799),
(400, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483082610),
(401, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1483082614),
(402, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1483086017),
(403, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483086020),
(404, 36, '管理   管婷', 1, '系统管理员', '送飞吻', 1, 1483086023),
(405, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483089015),
(406, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1483089019),
(407, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1483100270),
(408, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1483112273),
(409, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483112297),
(410, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483113487),
(411, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483516454),
(412, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1483516459),
(413, 43, '客服汐汐', 1, '系统管理员', '送大宝剑', 1, 1483516482),
(414, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483517877),
(415, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1483519864),
(416, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483521273),
(417, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1483540007),
(418, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1483542074),
(419, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483551644),
(420, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483552876),
(421, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1483597407),
(422, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1483618630),
(423, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483619518),
(424, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483692270),
(425, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1483700385),
(426, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1483701394),
(427, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483707945),
(428, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1483714584),
(429, 12, '客服薇薇', 1, '系统管理员', '送大宝剑', 1, 1483923376),
(430, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1483923379),
(431, 12, '客服薇薇', 1, '系统管理员', '送飞吻', 1, 1483923381),
(432, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483942747),
(433, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1483952996),
(434, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1484010009),
(435, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1484034432),
(436, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1484039419),
(437, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1484048551),
(438, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1484048558),
(439, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1484048562),
(440, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1484096387),
(441, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1484126064),
(442, 12, '客服薇薇', 1, '系统管理员', '送大宝剑', 1, 1484126092),
(443, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1484182805),
(444, 12, '客服薇薇', 1, '系统管理员', '送大宝剑', 1, 1484182809),
(445, 12, '客服薇薇', 1, '系统管理员', '送飞吻', 1, 1484182814),
(446, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1484269117),
(447, 12, '客服薇薇', 1, '系统管理员', '送飞吻', 1, 1484269121),
(448, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1484638411),
(449, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1484646136),
(450, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1484740958),
(451, 75, '君问归期', 1, '系统管理员', '送大宝剑', 1, 1484762849),
(452, 31, '短线高手', 1, '系统管理员', '送鲜花', 1, 1485258196),
(453, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1485347295),
(454, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1485347296),
(455, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1485347296),
(456, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1485347296),
(457, 12, '客服薇薇', 1, '系统管理员', '送大宝剑', 1, 1485850002),
(458, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1485850005),
(459, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1486028045),
(460, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1486385040),
(461, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1486451003),
(462, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1486546311),
(463, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1486546316),
(464, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1486560700),
(465, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1486984240),
(466, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1486984392),
(467, 12, '客服薇薇', 1, '系统管理员', '送鲜花', 1, 1487050108),
(468, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1487051177),
(469, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1487052383),
(470, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1487052385),
(471, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1487052387),
(472, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1487218712),
(473, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487233128),
(474, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487245182),
(475, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487246700),
(476, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1487293193),
(477, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1487307649),
(478, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1487307781),
(479, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1487314023),
(480, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1487330735),
(481, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487331470),
(482, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487333081),
(483, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1487552153),
(484, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487587371),
(485, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1487588243),
(486, 100, '客服晨晨', 1, '系统管理员', '送飞吻', 1, 1487588867),
(487, 100, '客服晨晨', 1, '系统管理员', '送飞吻', 1, 1487594640),
(488, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1487601346),
(489, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1487605398),
(490, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1487638732),
(491, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1487651029),
(492, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1487663714),
(493, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1487673405),
(494, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487677446),
(495, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487679007),
(496, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487690024),
(497, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1487690034),
(498, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487692533),
(499, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487694653),
(500, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1487750735),
(501, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487768152),
(502, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487774803),
(503, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487776017),
(504, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487776189),
(505, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487776540),
(506, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487777740),
(507, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487778512),
(508, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1487779221),
(509, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487780925),
(510, 43, '客服汐汐', 1, '系统管理员', '送大宝剑', 1, 1487781030),
(511, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487829048),
(512, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487830471),
(513, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487857970),
(514, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1487858918),
(515, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487859405),
(516, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1487862551),
(517, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1487862580),
(518, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1487897933),
(519, 93, '客服菲菲', 1, '系统管理员', '送大宝剑', 1, 1487912532),
(520, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1487928657),
(521, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487934266),
(522, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487943984),
(523, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1487945381),
(524, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488170190),
(525, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1488184194),
(526, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488193440),
(527, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488196205),
(528, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488196654),
(529, 93, '客服菲菲', 1, '系统管理员', '送大宝剑', 1, 1488198450),
(530, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488203552),
(531, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1488252825),
(532, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488277810),
(533, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1488295613),
(534, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1488298970),
(535, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1488300275),
(536, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1488366777),
(537, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1488369638),
(538, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488376611),
(539, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1488384453),
(540, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1488385464),
(541, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1488452604),
(542, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1488464596),
(543, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1488471852),
(544, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1488505766),
(545, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488522295),
(546, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1488539143),
(547, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488547796),
(548, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1488556570),
(549, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1488776491),
(550, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488803141),
(551, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1488812807),
(552, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488862712),
(553, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488863194),
(554, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1488887390),
(555, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1488897128),
(556, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1488961144),
(557, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1488964227),
(558, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488965327),
(559, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488978701),
(560, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488983056),
(561, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1488983140),
(562, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1488983919),
(563, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1489027323),
(564, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1489041985),
(565, 100, '客服晨晨', 1, '系统管理员', '送飞吻', 1, 1489046165),
(566, 93, '客服菲菲', 1, '系统管理员', '送飞吻', 1, 1489061291),
(567, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489062432),
(568, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489119029),
(569, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489123697),
(570, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489126166),
(571, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1489127257),
(572, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489132041),
(573, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489139747),
(574, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1489140554),
(575, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1489150085),
(576, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489153759),
(577, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489154148),
(578, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489372391),
(579, 100, '客服晨晨', 1, '系统管理员', '送飞吻', 1, 1489402186),
(580, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1489406139),
(581, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1489416143),
(582, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1489417092),
(583, 100, '客服晨晨', 1, '系统管理员', '送飞吻', 1, 1489481380),
(584, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489482007),
(585, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1489482023),
(586, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1489491560),
(587, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489554159),
(588, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1489564364),
(589, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489570029),
(590, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489574870),
(591, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489578117),
(592, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1489588505),
(593, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489655113),
(594, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489730210),
(595, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489744427),
(596, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489991368),
(597, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489991371),
(598, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489992863),
(599, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489992873),
(600, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1489994319),
(601, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1490010620),
(602, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1490024937),
(603, 100, '客服晨晨', 1, '系统管理员', '送飞吻', 1, 1490032528),
(604, 100, '客服晨晨', 1, '系统管理员', '送飞吻', 1, 1490106923),
(605, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1490111640),
(606, 100, '客服晨晨', 1, '系统管理员', '送飞吻', 1, 1490182508),
(607, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1490193065),
(608, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1490248622),
(609, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1490248645),
(610, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1490278525),
(611, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1490280152),
(612, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1490348531),
(613, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1490354610),
(614, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1490355278),
(615, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1490369007),
(616, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1490580359),
(617, 36, '管理   管婷', 1, '系统管理员', '送飞吻', 1, 1490585079),
(618, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1490594261),
(619, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1490611850),
(620, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1490764938),
(621, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1490797959),
(622, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1490798021),
(623, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1490807139),
(624, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1490855093),
(625, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1490868293),
(626, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1490870873),
(627, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1490879013),
(628, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1490879652),
(629, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1490936739),
(630, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491273150),
(631, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1491276783),
(632, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491277441),
(633, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491278508),
(634, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1491304649),
(635, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491305382),
(636, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491364189),
(637, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1491370170),
(638, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491378586),
(639, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491383162),
(640, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491393073),
(641, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491485610),
(642, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送鲜花', 1, 1491485780),
(643, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1491541574),
(644, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1491541576),
(645, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1491547179),
(646, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491553252),
(647, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1491556192),
(648, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1491556228),
(649, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1491556232),
(650, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1491557800),
(651, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491558214),
(652, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1491570102),
(653, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1491796933),
(654, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1491800309),
(655, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1491823781),
(656, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491880246),
(657, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1491880268),
(658, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491899723),
(659, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1491908776),
(660, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491915735),
(661, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491959520),
(662, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1491973624),
(663, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1491990082),
(664, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1491994033),
(665, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1491997666),
(666, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1492000200),
(667, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1492001074),
(668, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1492001745),
(669, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1492001826),
(670, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1492002041),
(671, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1492009078),
(672, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1492071671),
(673, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1492073399),
(674, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1492074003),
(675, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1492075029),
(676, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1492075508),
(677, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1492350594),
(678, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1492414109),
(679, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1492429803),
(680, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1492432255),
(681, 100, '客服晨晨', 1, '系统管理员', '送飞吻', 1, 1492495402),
(682, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1492496527),
(683, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1492569075),
(684, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1492571371),
(685, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1492574525),
(686, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1492608970),
(687, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1492674740),
(688, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1492694830),
(689, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1492765625),
(690, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1492765640),
(691, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1492772720),
(692, 36, '管理   管婷', 1, '系统管理员', '送飞吻', 1, 1492772740),
(693, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493015699),
(694, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493019669),
(695, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493092094),
(696, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493106389),
(697, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493109799),
(698, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1493183720),
(699, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1493183720),
(700, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493186523),
(701, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1493197241),
(702, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493218458),
(703, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493264412),
(704, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1493264741),
(705, 36, '管理   管婷', 1, '系统管理员', '送大宝剑', 1, 1493270706),
(706, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1493287595),
(707, 43, '客服汐汐', 1, '系统管理员', '送鲜花', 1, 1493287963),
(708, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493353527),
(709, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1493375312),
(710, 93, '客服菲菲', 1, '系统管理员', '送大宝剑', 1, 1493375534),
(711, 93, '客服菲菲', 1, '系统管理员', '送鲜花', 1, 1493375710),
(712, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493384300),
(713, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1493397827),
(714, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1493397869),
(715, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493611934),
(716, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493717112),
(717, 13, '客服    ʚ阿美ɞ', 1, '系统管理员', '送大宝剑', 1, 1493744209),
(718, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1493744227),
(719, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1493776305),
(720, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1493809732),
(721, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493822622),
(722, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493885218),
(723, 100, '客服晨晨', 1, '系统管理员', '送飞吻', 1, 1493886073),
(724, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1493892446),
(725, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1493952771),
(726, 261, '大事', 1, '系统管理员', '送飞吻', 1, 1493952822),
(727, 261, '大事', 1, '系统管理员', '送飞吻', 1, 1493952826),
(728, 261, '大事', 1, '系统管理员', '送飞吻', 1, 1493952826),
(729, 261, '大事', 1, '系统管理员', '送鲜花', 1, 1493952841),
(730, 261, '大事', 1, '系统管理员', '送鲜花', 1, 1493952854),
(731, 100, '客服晨晨', 1, '系统管理员', '送飞吻', 1, 1494244164),
(732, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1494247878),
(733, 271, '职业杀手', 1, '系统管理员', '送鲜花', 1, 1494345058),
(734, 271, '职业杀手', 1, '系统管理员', '送飞吻', 1, 1494345114),
(735, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1494398898),
(736, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1494424182),
(737, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1494471631),
(738, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1494486833),
(739, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1494494204),
(740, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1494514282),
(741, 100, '客服晨晨', 1, '系统管理员', '送鲜花', 1, 1494517562),
(742, 43, '客服汐汐', 1, '系统管理员', '送飞吻', 1, 1494522530),
(743, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1494565153),
(744, 70, '将进酒', 1, '系统管理员', '送鲜花', 1, 1494569259),
(745, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1494584363),
(746, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1494602129),
(747, 100, '客服晨晨', 1, '系统管理员', '送大宝剑', 1, 1494848284),
(748, 36, '管理   管婷', 1, '系统管理员', '送鲜花', 1, 1494852225),
(749, 100, '客服晨晨', 15, '金牌讲师', '送飞吻', 1, 1495210390),
(750, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1495466554),
(751, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1495539474),
(752, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1495543928),
(753, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1495612832),
(754, 1, '系统管理员', 15, '金牌讲师', '送鲜花', 1, 1495614577),
(755, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1495638135),
(756, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1495646096),
(757, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1495646624),
(758, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1495771499),
(759, 43, '客服汐汐', 15, '金牌讲师', '送飞吻', 1, 1496412220),
(760, 43, '客服汐汐', 15, '金牌讲师', '送飞吻', 1, 1496422267),
(761, 271, '职业杀手', 15, '金牌讲师', '送飞吻', 1, 1496422281),
(762, 43, '客服汐汐', 15, '金牌讲师', '送鲜花', 1, 1496425724),
(763, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1496725457),
(764, 36, '管理   管婷', 15, '金牌讲师', '送大宝剑', 1, 1496728385),
(765, 100, '客服晨晨', 15, '金牌讲师', '送飞吻', 1, 1496753932),
(766, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1496843945),
(767, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1496847181),
(768, 100, '客服晨晨', 15, '金牌讲师', '送鲜花', 1, 1496907889),
(769, 36, '管理   管婷', 15, '金牌讲师', '送鲜花', 1, 1496929711);

-- --------------------------------------------------------

--
-- 表的结构 `chat_gold_log`
--

CREATE TABLE IF NOT EXISTS `chat_gold_log` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `gold` int(11) NOT NULL,
  `ip` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `dateline` int(11) NOT NULL,
  `txt` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=307 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_gold_log`
--

INSERT INTO `chat_gold_log` (`id`, `uid`, `gold`, `ip`, `dateline`, `txt`) VALUES
(1, 29, 1000, '121.0.26.1', 1306089612, 'gold_add-29|1000|支付宝自动充值'),
(2, 29, -1, '119.1.86.96', 1306089670, '赠送礼物:1|送给:28|份数:1|价值:1|还剩:999'),
(3, 755, 1000, '112.67.39.178', 1306096565, 'gold_add-755|1000|管理员充值'),
(4, 755, -1, '112.67.39.178', 1306096987, '赠送礼物:1|送给:756|份数:1|价值:1|还剩:999'),
(5, 756, 100, '112.67.39.178', 1306097068, 'gold_add-756|100|管理员充值'),
(6, 756, -1, '59.49.229.9', 1306097202, '赠送礼物:1|送给:755|份数:1|价值:1|还剩:100'),
(7, 778, 1000, '120.11.88.110', 1306265027, 'gold_add-778|1000|管理员充值'),
(8, 778, -1, '120.11.88.110', 1306281975, '赠送礼物:1|送给:787|份数:1|价值:1|还剩:999'),
(9, 778, -1, '120.11.88.110', 1306281992, '赠送礼物:1|送给:787|份数:1|价值:1|还剩:998'),
(10, 787, -1, '120.11.88.110', 1306282087, '赠送礼物:1|送给:778|份数:1|价值:1|还剩:1'),
(11, 28, -1, '60.22.176.8', 1306619066, '赠送礼物:1|送给:29|份数:1|价值:1|还剩:0'),
(12, 29, -999, '119.1.80.148', 1306619091, '赠送礼物:1|送给:28|份数:999|价值:999|还剩:1'),
(13, 28, -1, '60.22.176.8', 1306619296, '赠送礼物:1|送给:29|份数:1|价值:1|还剩:499'),
(14, 28, -1, '60.22.176.8', 1306620032, '赠送礼物:1|送给:29|份数:1|价值:1|还剩:498'),
(15, 28, -200, '60.22.176.8', 1306620068, '赠送礼物:1|送给:29|份数:200|价值:200|还剩:298'),
(16, 28, -100, '175.148.154.133', 1306702767, '赠送礼物:1|送给:824|份数:100|价值:100|还剩:198'),
(17, 28, -50, '175.148.154.133', 1306702974, '赠送礼物:1|送给:824|份数:50|价值:50|还剩:148'),
(18, 843, 1000, '58.40.80.62', 1306794288, 'gold_add-843|1000|管理员充值'),
(19, 28, -20, '60.22.179.209', 1306877000, '赠送礼物:1|送给:824|份数:20|价值:20|还剩:128'),
(20, 28, -10, '60.22.179.209', 1306877038, '赠送礼物:1|送给:824|份数:10|价值:10|还剩:118'),
(21, 28, -50, '60.22.179.209', 1306877351, '赠送礼物:1|送给:824|份数:50|价值:50|还剩:68'),
(22, 28, -1, '27.189.144.13', 1306965076, '赠送礼物:1|送给:925|份数:1|价值:1|还剩:67'),
(23, 946, 10000, '58.253.238.172', 1307098879, 'gold_add-946|10000|管理员充值'),
(24, 946, -1, '221.5.86.11', 1307103689, '赠送礼物:1|送给:947|份数:1|价值:1|还剩:9999'),
(25, 1028, 100, '222.215.119.172', 1307754491, 'gold_add-1028|100|管理员充值'),
(26, 52, 10000, '210.22.56.239', 1307828804, 'gold_add-52|10000|管理员充值'),
(27, 1046, 2147483647, '114.103.188.173', 1307921073, 'gold_add-1046|1111111111111111|管理员充值'),
(28, 1046, -1, '114.103.188.173', 1307921169, '赠送礼物:1|送给:1047|份数:1|价值:1|还剩:2147483646'),
(29, 1046, -1, '114.103.188.173', 1307921185, '赠送礼物:1|送给:1047|份数:1|价值:1|还剩:2147483645'),
(30, 1046, -100, '114.103.188.173', 1307921220, '赠送礼物:1|送给:1047|份数:100|价值:100|还剩:2147483545'),
(31, 1046, -100, '114.103.188.173', 1307921249, '赠送礼物:1|送给:1047|份数:100|价值:100|还剩:2147483445'),
(32, 1083, 9999, '121.236.236.240', 1308172032, 'gold_add-1083|9999|管理员充值'),
(33, 557, 80000000, '123.165.129.202', 1308296615, 'gold_add-557|80000000|管理员充值'),
(34, 1088, 2147483647, '27.44.81.109', 1308618104, 'gold_add-1088|999999999999999999999999999999|管理员充值'),
(35, 1088, 100, '125.67.155.254', 1310153430, 'gold_add-1088|100|管理员充值'),
(36, 1249, 100000000, '125.67.155.254', 1310153483, 'gold_add-1249|100000000|管理员充值'),
(37, 1249, -11, '125.67.155.254', 1310157718, '赠送礼物:1|送给:1256|份数:11|价值:11|还剩:99999989'),
(38, 1249, -30300, '125.67.155.254', 1310157732, '赠送礼物:2|送给:1256|份数:101|价值:30300|还剩:99969689'),
(39, 1256, 1000000, '111.123.129.252', 1310157846, 'gold_add-1256|1000000|管理员充值'),
(40, 1256, -100, '111.123.129.252', 1310157888, '赠送礼物:1|送给:1249|份数:100|价值:100|还剩:1015056'),
(41, 1258, 10000, '125.67.155.254', 1310161042, 'gold_add-1258|10000|管理员充值'),
(42, 1258, -1, '125.67.155.254', 1310161123, '赠送礼物:1|送给:1249|份数:1|价值:1|还剩:9999'),
(43, 1258, -300, '125.67.155.254', 1310161132, '赠送礼物:2|送给:1249|份数:1|价值:300|还剩:9699'),
(44, 1258, -1, '125.67.155.254', 1310161151, '赠送礼物:1|送给:1249|份数:1|价值:1|还剩:9698'),
(45, 1258, -1, '125.67.155.254', 1310161389, '赠送礼物:1|送给:1249|份数:1|价值:1|还剩:9697'),
(46, 1258, -1, '125.67.155.254', 1310161568, '赠送礼物:1|送给:1259|份数:1|价值:1|还剩:9696'),
(47, 1258, -1, '125.67.155.254', 1310161579, '赠送礼物:1|送给:1259|份数:1|价值:1|还剩:9695'),
(48, 1258, -300, '125.67.155.254', 1310161587, '赠送礼物:2|送给:1249|份数:1|价值:300|还剩:9395'),
(49, 1258, -1, '125.67.155.254', 1310161632, '赠送礼物:1|送给:1259|份数:1|价值:1|还剩:9394'),
(50, 1258, -300, '125.67.155.254', 1310161641, '赠送礼物:2|送给:1259|份数:1|价值:300|还剩:9094'),
(51, 1249, -100, '125.67.155.254', 1310161691, '赠送礼物:1|送给:1259|份数:100|价值:100|还剩:99969942'),
(52, 1249, -100, '110.186.114.27', 1310931269, '赠送礼物:1|送给:1295|份数:100|价值:100|还剩:99969842'),
(53, 1249, -45000, '110.186.114.27', 1310931289, '赠送礼物:2|送给:1295|份数:150|价值:45000|还剩:99924842'),
(54, 1249, 0, '110.186.114.27', 1310931710, '赠送礼物:7|送给:1295|份数:100|价值:0|还剩:99924842'),
(55, 1249, -15000, '110.186.114.27', 1310931724, '赠送礼物:6|送给:1295|份数:50|价值:15000|还剩:99909842'),
(56, 1313, 10000, '27.186.210.80', 1311333384, 'gold_add-1313|10000|管理员充值'),
(57, 1249, -15300, '110.186.3.62', 1311359579, '赠送礼物:6|送给:1316|份数:51|价值:15300|还剩:99894542'),
(58, 1249, 0, '110.186.3.62', 1311359606, '赠送礼物:7|送给:1318|份数:110|价值:0|还剩:99894542'),
(59, 1249, -300, '110.186.3.62', 1311359646, '赠送礼物:6|送给:1317|份数:1|价值:300|还剩:99894242'),
(60, 1316, 1, '27.185.121.138', 1311360019, 'gold_add-1316|1|管理员充值'),
(61, 1256, 0, '61.189.253.4', 1311360253, '赠送礼物:7|送给:1315|份数:999|价值:0|还剩:1015056'),
(62, 1255, 1000, '121.0.26.1', 1311421319, 'gold_add-1255|1000|支付宝自动充值'),
(63, 1325, 1000, '121.0.26.1', 1311421497, 'gold_add-1325|1000|支付宝自动充值'),
(64, 1333, 9999999, '115.207.29.216', 1311530765, 'gold_add-1333|9999999|管理员充值'),
(65, 1333, 2147483647, '115.207.29.216', 1311530782, 'gold_add-1333|999999999999|管理员充值'),
(66, 1333, 2147483647, '115.207.29.216', 1311530809, 'gold_add-1333|9999999999|管理员充值'),
(67, 1256, 0, '119.1.108.250', 1311701249, '赠送礼物:7|送给:1255|份数:99|价值:0|还剩:1015056'),
(68, 1249, 2147483647, '58.209.97.215', 1311863515, 'gold_add-1249|999999999999999999999999999999999999|管理员充值'),
(69, 946, 2147483647, '58.209.97.215', 1311863595, 'gold_add-946|9999999999999999999999999|管理员充值'),
(70, 1355, 2147483647, '114.138.27.112', 1312153902, 'gold_add-1355|98464643411|管理员充值'),
(71, 1355, 2147483647, '114.138.27.112', 1312153917, 'gold_add-1355|688464341316546|管理员充值'),
(72, 1255, -300, '58.253.238.172', 1312536696, '赠送礼物:6|送给:1342|份数:1|价值:300|还剩:700'),
(73, 1256, 1000, '121.0.26.1', 1312655236, 'gold_add-1256|1000|支付宝自动充值'),
(74, 946, 100000, '110.84.197.63', 1313100836, 'gold_add-946|100000|管理员充值'),
(75, 1255, 0, '116.30.3.236', 1313169139, '赠送礼物:7|送给:1342|份数:1|价值:0|还剩:700'),
(76, 1333, 2147483647, '116.30.3.236', 1313169540, 'gold_add-1333|100000000000000|管理员充值'),
(77, 1046, 2147483647, '116.30.3.236', 1313169552, 'gold_add-1046|88888888888888888888888888888888|管理员充值'),
(78, 946, 8000000, '222.71.162.213', 1313323415, 'gold_add-946|8000000|管理员充值'),
(79, 1400, 2147483647, '222.71.162.213', 1313323558, 'gold_add-1400|80000000000000000000000000|管理员充值'),
(80, 1408, 2147483647, '115.214.130.102', 1313525876, 'gold_add-1408|5555555555555555|管理员充值'),
(81, 946, 1111111, '113.109.36.4', 1313645122, 'gold_add-946|1111111|管理员充值'),
(82, 1416, 1000000, '119.177.162.115', 1313686688, 'gold_add-1416|1000000|管理员充值'),
(83, 1255, 0, '111.123.140.39', 1313789568, '赠送礼物:7|送给:1419|份数:999|价值:0|还剩:700'),
(84, 778, 0, '219.66.235.232', 1314243466, '赠送礼物:7|送给:x370270195|份数:1|价值:0|还剩:999'),
(85, 946, 100, '117.92.153.220', 1314628223, 'gold_add-946|100|管理员充值'),
(86, 946, 45, '113.56.105.196', 1316309306, 'gold_add-946|45|管理员充值'),
(87, 946, 45, '113.56.105.196', 1316309347, 'gold_add-946|45|管理员充值'),
(88, 1662, 9999, '123.121.13.105', 1320167154, 'gold_add-1662|9999|管理员充值'),
(89, 1695, 200, '121.14.51.70', 1322780980, 'gold_add-1695|200|管理员充值'),
(90, 1736, 2147483647, '119.144.182.21', 1323898218, 'gold_add-1736|99999999999|管理员充值'),
(91, 1764, 9999, '42.49.74.209', 1324658390, 'gold_add-1764|9999|管理员充值'),
(92, 1764, -300, '42.49.74.209', 1324658595, '赠送礼物:6|送给:1255|份数:1|价值:300|还剩:9699'),
(93, 1255, 0, '119.1.108.250', 1326820281, '赠送礼物:7|送给:x085760949|份数:100|价值:0|还剩:850'),
(94, 1866, 1000000, '222.187.194.50', 1328790825, 'gold_add-1866|1000000|管理员充值'),
(95, 1865, 10000, '222.187.194.50', 1328790838, 'gold_add-1865|10000|管理员充值'),
(96, 1255, 0, '110.154.160.90', 1330514448, '赠送礼物:7|送给:1256|份数:99|价值:0|还剩:850'),
(97, 1255, 2147483647, '110.154.160.90', 1330514625, 'gold_add-1255|999999999999|管理员充值'),
(98, 1255, -299700, '110.154.160.90', 1330514660, '赠送礼物:6|送给:1256|份数:999|价值:299700|还剩:2147183947'),
(99, 1915, 20000, '119.1.108.250', 1330621724, 'gold_add-1915|20000|管理员充值'),
(100, 1920, 200, '218.87.243.14', 1330634595, 'gold_add-1920|200|管理员充值'),
(101, 1736, 153, '125.86.233.157', 1332328010, 'gold_add-1736|153|管理员充值'),
(102, 1736, 153, '125.86.233.157', 1332328044, 'gold_add-1736|153|管理员充值'),
(103, 2091, 100, '58.245.105.105', 1335824856, 'gold_add-2091|100|管理员充值'),
(104, 1256, 0, '119.1.108.250', 1336066389, '赠送礼物:7|送给:1255|份数:199|价值:0|还剩:1165906'),
(105, 1256, -29700, '119.1.108.250', 1336066448, '赠送礼物:6|送给:1255|份数:99|价值:29700|还剩:1136206'),
(106, 946, 100, '125.70.153.92', 1336125395, 'gold_add-946|100|管理员充值'),
(107, 1736, 100, '125.70.153.92', 1336125401, 'gold_add-1736|100|管理员充值'),
(108, 1736, 1, '124.67.73.226', 1336148872, 'gold_add-1736|1|管理员充值'),
(109, 1255, 0, '61.146.173.150', 1336214369, '赠送礼物:7|送给:2109|份数:1|价值:0|还剩:2147198797'),
(110, 2141, 1000, '121.0.26.2', 1337145695, 'gold_add-2141|1000|支付宝自动充值'),
(111, 2141, 0, '114.246.95.165', 1337145770, '赠送礼物:7|送给:2141|份数:100|价值:0|还剩:1000'),
(112, 2141, -300, '114.246.95.165', 1337145818, '赠送礼物:6|送给:2141|份数:1|价值:300|还剩:700'),
(113, 2144, 2147483647, '182.41.178.240', 1337184468, 'gold_add-2144|999999999999999999999999999999999999|管理员充值'),
(114, 2214, 1000, '123.122.124.230', 1339523926, 'gold_add-2214|1000|管理员充值'),
(115, 2276, 10000, '221.204.184.60', 1341510196, 'gold_add-2276|10000|管理员充值'),
(116, 2276, 0, '221.204.184.61', 1341510725, '赠送礼物:7|送给:2274|份数:1|价值:0|还剩:10000'),
(117, 2276, 0, '221.204.184.61', 1341510759, '赠送礼物:7|送给:2274|份数:999|价值:0|还剩:10000'),
(118, 2274, 11111, '221.204.184.61', 1341522850, 'gold_add-2274|11111|管理员充值'),
(119, 1256, 10000000, '119.1.108.250', 1345564352, 'gold_add-1256|10000000|管理员充值'),
(120, 1256, 0, '119.1.108.250', 1345564564, '赠送礼物:7|送给:1255|份数:100|价值:0|还剩:11136206'),
(121, 1255, -6000, '60.186.128.187', 1345565986, '赠送礼物:6|送给:1256|份数:20|价值:6000|还剩:2147192797'),
(122, 1256, -1000, '119.1.108.250', 1345566164, '赠送礼物:9|送给:1255|份数:100|价值:1000|还剩:11138206'),
(123, 1255, -6000, '60.176.33.207', 1345576467, '赠送礼物:6|送给:x085036883|份数:20|价值:6000|还剩:2147187297'),
(124, 1255, -100, '60.186.213.103', 1345592644, '赠送礼物:9|送给:1256|份数:10|价值:100|还剩:2147187197'),
(125, 1255, 0, '60.186.213.103', 1345592664, '赠送礼物:7|送给:1256|份数:20|价值:0|还剩:2147187197'),
(126, 1255, -3000, '60.186.213.103', 1345659333, '赠送礼物:6|送给:x114729058|份数:10|价值:3000|还剩:2147184197'),
(127, 1255, 0, '60.186.213.103', 1345659921, '赠送礼物:7|送给:1255|份数:1|价值:0|还剩:2147184197'),
(128, 1255, -300, '60.176.34.213', 1346927928, '赠送礼物:6|送给:x491149717|份数:1|价值:300|还剩:2147183897'),
(129, 1255, -300, '60.176.34.213', 1346927948, '赠送礼物:6|送给:x491149717|份数:1|价值:300|还剩:2147183597'),
(130, 1255, 0, '60.176.34.213', 1346927965, '赠送礼物:7|送给:x491149717|份数:1|价值:0|还剩:2147183597'),
(131, 1255, -6000, '60.176.34.213', 1346927983, '赠送礼物:6|送给:x491149717|份数:20|价值:6000|还剩:2147177597'),
(132, 1255, -200, '60.176.34.213', 1346928003, '赠送礼物:9|送给:x491149717|份数:20|价值:200|还剩:2147177397'),
(133, 1255, 0, '60.176.34.213', 1346928022, '赠送礼物:7|送给:x491149717|份数:20|价值:0|还剩:2147177397'),
(134, 1255, -300, '60.176.34.213', 1346928037, '赠送礼物:9|送给:x491149717|份数:30|价值:300|还剩:2147177097'),
(135, 1255, -9000, '60.176.34.213', 1346928058, '赠送礼物:6|送给:x491149717|份数:30|价值:9000|还剩:2147168097'),
(136, 1255, -990, '111.123.179.220', 1351899752, '赠送礼物:9|送给:x414655852|份数:99|价值:990|还剩:2147167107'),
(137, 2533, 2147483647, '115.236.65.82', 1353515479, 'gold_add-2533|10000000000|管理员充值'),
(138, 2533, 0, '115.236.65.82', 1353515488, '赠送礼物:7|送给:2534|份数:100|价值:0|还剩:2147483647'),
(139, 2533, -30000, '115.236.65.82', 1353515500, '赠送礼物:6|送给:2534|份数:100|价值:30000|还剩:2147453647'),
(140, 2533, 0, '115.236.65.82', 1353515523, '赠送礼物:7|送给:2530|份数:100|价值:0|还剩:2147453647'),
(141, 2594, 2147483647, '111.193.241.118', 1356555821, 'gold_add-2594|9446516465|管理员充值'),
(142, 1255, 0, '1.206.67.35', 1357677069, '赠送礼物:7|送给:2605|份数:99|价值:0|还剩:2147167107'),
(143, 1255, -59700, '1.206.67.35', 1357677089, '赠送礼物:6|送给:2605|份数:199|价值:59700|还剩:2147107407'),
(144, 2605, -10, '114.230.151.43', 1357677892, '赠送礼物:9|送给:x281377064|份数:1|价值:10|还剩:29840'),
(145, 2605, 0, '114.230.151.43', 1357678012, '赠送礼物:7|送给:x281377064|份数:100|价值:0|还剩:29840'),
(146, 1736, 100, '101.229.252.130', 1359454226, 'gold_add-1736|100|管理员充值'),
(147, 1255, 0, '222.87.8.78', 1360600965, '赠送礼物:7|送给:2640|份数:1|价值:0|还剩:2147107407'),
(148, 1255, -30000, '222.87.8.78', 1360600983, '赠送礼物:12|送给:2640|份数:100|价值:30000|还剩:2147077407'),
(149, 1255, -299700, '222.87.8.78', 1360601022, '赠送礼物:6|送给:2640|份数:999|价值:299700|还剩:2146777707'),
(150, 1255, -299700, '222.87.8.78', 1360601044, '赠送礼物:6|送给:2640|份数:999|价值:299700|还剩:2146478007'),
(151, 1255, -10, '222.87.8.78', 1360602929, '赠送礼物:9|送给:2640|份数:1|价值:10|还剩:2146477997'),
(152, 1255, -10, '222.87.8.78', 1360602945, '赠送礼物:9|送给:2640|份数:1|价值:10|还剩:2146477987'),
(153, 1255, -990, '222.87.8.78', 1360602950, '赠送礼物:9|送给:2640|份数:99|价值:990|还剩:2146476997'),
(154, 1255, -29700, '222.87.8.78', 1360602971, '赠送礼物:11|送给:2640|份数:99|价值:29700|还剩:2146447297'),
(155, 1255, -5200, '222.87.8.78', 1360602988, '赠送礼物:9|送给:2640|份数:520|价值:5200|还剩:2146442097'),
(156, 1255, -156000, '222.87.8.78', 1360603381, '赠送礼物:6|送给:2640|份数:520|价值:156000|还剩:2146286097'),
(157, 1255, -1500, '222.87.8.78', 1360603393, '赠送礼物:6|送给:2640|份数:5|价值:1500|还剩:2146284597'),
(158, 1255, 0, '222.87.8.78', 1360603401, '赠送礼物:7|送给:2640|份数:999|价值:0|还剩:2146284597'),
(159, 1255, -75000, '222.87.8.78', 1360603425, '赠送礼物:6|送给:2640|份数:250|价值:75000|还剩:2146209597'),
(160, 1255, -299700, '222.87.8.78', 1360603622, '赠送礼物:6|送给:2640|份数:999|价值:299700|还剩:2145909897'),
(161, 1255, -299700, '222.87.8.78', 1360603627, '赠送礼物:6|送给:2640|份数:999|价值:299700|还剩:2145610197'),
(162, 1255, -299700, '222.87.8.78', 1360603633, '赠送礼物:6|送给:2640|份数:999|价值:299700|还剩:2145310497'),
(163, 1255, -9990, '222.87.8.78', 1360603639, '赠送礼物:9|送给:2640|份数:999|价值:9990|还剩:2145300507'),
(164, 1255, 0, '222.87.8.78', 1360603644, '赠送礼物:7|送给:2640|份数:999|价值:0|还剩:2145300507'),
(165, 2640, 0, '222.87.8.78', 1360603691, '赠送礼物:7|送给:1255|份数:999|价值:0|还剩:903450'),
(166, 1255, 0, '222.87.8.78', 1360603725, '赠送礼物:7|送给:2640|份数:1|价值:0|还剩:2145300507'),
(167, 1255, 0, '222.87.8.78', 1360603733, '赠送礼物:7|送给:2640|份数:999|价值:0|还剩:2145300507'),
(168, 1256, 0, '119.1.108.250', 1363621416, '赠送礼物:7|送给:2707|份数:100|价值:0|还剩:11138256'),
(169, 1255, -300, '114.223.219.176', 1366154023, '赠送礼物:12|送给:x115360144|份数:1|价值:300|还剩:2145300207'),
(170, 1255, -30000, '114.223.219.176', 1366154067, '赠送礼物:12|送给:x115360144|份数:100|价值:30000|还剩:2145270207'),
(171, 1255, 0, '114.223.219.176', 1366154087, '赠送礼物:7|送给:x115360144|份数:100|价值:0|还剩:2145270207'),
(172, 1255, -30000, '114.223.219.176', 1366154153, '赠送礼物:6|送给:x115360144|份数:100|价值:30000|还剩:2145240207'),
(173, 1255, -30000, '114.223.219.176', 1366154189, '赠送礼物:11|送给:x115360144|份数:100|价值:30000|还剩:2145210207'),
(174, 1255, -30000, '114.223.219.176', 1366154242, '赠送礼物:12|送给:x115360144|份数:100|价值:30000|还剩:2145180207'),
(175, 1255, 0, '114.223.219.176', 1366154921, '赠送礼物:7|送给:x115360144|份数:100|价值:0|还剩:2145180207'),
(176, 1255, -30000, '114.223.219.176', 1366154940, '赠送礼物:12|送给:x115360144|份数:100|价值:30000|还剩:2145150207'),
(177, 1255, -3000, '114.223.219.176', 1366155178, '赠送礼物:6|送给:x115360144|份数:10|价值:3000|还剩:2145147207'),
(178, 0, -300, '117.84.157.21', 1366234595, '赠送礼物:12|送给:x341889773|份数:1|价值:300|还剩:76350'),
(179, 2640, -300, '116.207.156.116', 1366269860, '赠送礼物:6|送给:2774|份数:1|价值:300|还剩:903150'),
(180, 2640, -9990, '116.207.156.116', 1366269929, '赠送礼物:9|送给:2774|份数:999|价值:9990|还剩:893160'),
(181, 2774, 0, '116.207.156.116', 1366270039, '赠送礼物:7|送给:2640|份数:999|价值:0|还剩:5145'),
(182, 2640, -300, '111.176.219.239', 1366459986, '赠送礼物:12|送给:2639|份数:1|价值:300|还剩:892860'),
(183, 0, 0, '183.11.186.240', 1366768625, '赠送礼物:7|送给:x522525823|份数:1|价值:0|还剩:76500'),
(184, 0, -300, '119.184.244.193', 1367158510, '赠送礼物:12|送给:x120047698|份数:1|价值:300|还剩:76200'),
(185, 0, 0, '115.238.102.106', 1367207337, '赠送礼物:7|送给:x475384904|份数:1|价值:0|还剩:76350'),
(186, 0, -300, '115.238.102.106', 1367207359, '赠送礼物:6|送给:x475384904|份数:1|价值:300|还剩:76050'),
(187, 0, 0, '115.238.102.106', 1367207382, '赠送礼物:7|送给:x470621317|份数:1|价值:0|还剩:76200'),
(188, 0, 0, '36.224.115.168', 1367504807, '赠送礼物:7|送给:x200122150|份数:1|价值:0|还剩:76200'),
(189, 0, -10, '125.35.90.138', 1367505012, '赠送礼物:9|送给:x56551780|份数:1|价值:10|还剩:76190'),
(190, 0, -300, '171.37.104.28', 1367512632, '赠送礼物:6|送给:x56551780|份数:1|价值:300|还剩:75895'),
(191, 0, -10, '171.37.105.86', 1367512641, '赠送礼物:9|送给:x56551780|份数:1|价值:10|还剩:76035'),
(192, 0, -300, '171.37.105.86', 1367512651, '赠送礼物:6|送给:x56551780|份数:1|价值:300|还剩:75740'),
(193, 0, -10, '220.163.97.83', 1367866777, '赠送礼物:9|送给:x535237918|份数:1|价值:10|还剩:75880'),
(194, 0, 0, '60.195.251.213', 1367866783, '赠送礼物:7|送给:x552765004|份数:1|价值:0|还剩:75885'),
(195, 0, -10, '124.128.167.119', 1367880056, '赠送礼物:9|送给:x265951077|份数:1|价值:10|还剩:75875'),
(196, 0, -10, '121.14.42.78', 1368110896, '赠送礼物:9|送给:x471488423|份数:1|价值:10|还剩:75870'),
(197, 0, -10, '121.15.87.250', 1368111294, '赠送礼物:9|送给:x46255360|份数:1|价值:10|还剩:75865'),
(198, 0, 0, '121.14.42.78', 1368111585, '赠送礼物:7|送给:x534144102|份数:1|价值:0|还剩:75870'),
(199, 0, 0, '121.15.87.250', 1368112130, '赠送礼物:7|送给:x074681321|份数:1|价值:0|还剩:75870'),
(200, 0, -300, '113.104.215.187', 1368112141, '赠送礼物:6|送给:x534144102|份数:1|价值:300|还剩:75570'),
(201, 0, 0, '113.104.215.187', 1368112507, '赠送礼物:7|送给:x534144102|份数:1|价值:0|还剩:75720'),
(202, 0, 0, '118.122.46.173', 1368567595, '赠送礼物:7|送给:x374640398|份数:1|价值:0|还剩:75720'),
(203, 0, -30000, '118.122.46.173', 1368567685, '赠送礼物:6|送给:2830|份数:100|价值:30000|还剩:45720'),
(204, 0, -30000, '118.122.46.173', 1368567717, '赠送礼物:12|送给:2830|份数:100|价值:30000|还剩:15720'),
(205, 0, -100, '182.205.217.45', 1369965286, '赠送礼物:9|送给:x524788953|份数:10|价值:100|还剩:15620'),
(206, 0, 0, '182.205.217.45', 1369965309, '赠送礼物:7|送给:x524788953|份数:111|价值:0|还剩:15670'),
(207, 0, -3000, '182.205.217.45', 1369965339, '赠送礼物:12|送给:x524788953|份数:10|价值:3000|还剩:12670'),
(208, 0, -3300, '182.205.217.45', 1369965370, '赠送礼物:6|送给:x524788953|份数:11|价值:3300|还剩:10870'),
(209, 0, 0, '182.205.217.45', 1369965385, '赠送礼物:7|送给:x524788953|份数:999|价值:0|还剩:12520'),
(210, 0, -300, '58.83.252.203', 1370557962, '赠送礼物:12|送给:2858|份数:1|价值:300|还剩:12220'),
(211, 0, -10, '222.221.195.108', 1377552439, '赠送礼物:9|送给:x121742718|份数:1|价值:10|还剩:12210'),
(212, 0, 0, '116.55.232.229', 1378572420, '赠送礼物:7|送给:1047|份数:1|价值:0|还剩:12215'),
(213, 0, -300, '182.145.111.62', 1378901444, '赠送礼物:12|送给:x075338117|份数:1|价值:300|还剩:11915'),
(214, 0, -300, '221.236.151.226', 1378901468, '赠送礼物:6|送给:x075654702|份数:1|价值:300|还剩:11765'),
(215, 0, 0, '123.116.196.222', 1379098026, '赠送礼物:7|送给:x444853854|份数:1|价值:0|还剩:11915'),
(216, 0, -300, '123.116.196.222', 1379098033, '赠送礼物:12|送给:x444853854|份数:1|价值:300|还剩:11615'),
(217, 0, 0, '123.116.196.222', 1379098043, '赠送礼物:7|送给:x444853854|份数:1|价值:0|还剩:11765'),
(218, 0, 0, '123.116.196.222', 1379098046, '赠送礼物:7|送给:x444853854|份数:1|价值:0|还剩:11765'),
(219, 0, 0, '123.116.196.222', 1379098051, '赠送礼物:7|送给:x444853854|份数:1|价值:0|还剩:11765'),
(220, 0, -10, '123.116.196.222', 1379098055, '赠送礼物:9|送给:x444853854|份数:1|价值:10|还剩:11755'),
(221, 0, 0, '123.116.196.222', 1379098058, '赠送礼物:7|送给:x444853854|份数:1|价值:0|还剩:11760'),
(222, 0, 0, '123.116.196.222', 1379098061, '赠送礼物:7|送给:x444853854|份数:1|价值:0|还剩:11760'),
(223, 0, 0, '123.116.196.222', 1379098083, '赠送礼物:7|送给:x444853854|份数:520|价值:0|还剩:11760'),
(224, 0, -5200, '123.116.196.222', 1379098105, '赠送礼物:9|送给:x444853854|份数:520|价值:5200|还剩:6560'),
(225, 0, -6660, '123.116.196.222', 1379098415, '赠送礼物:9|送给:x524763094|份数:666|价值:6660|还剩:2500'),
(226, 0, -300, '123.116.196.222', 1379098435, '赠送礼物:12|送给:x524763094|份数:1|价值:300|还剩:5530'),
(227, 0, 0, '123.116.196.222', 1379098471, '赠送礼物:7|送给:x444853854|份数:1|价值:0|还剩:5680'),
(228, 0, -5550, '123.116.196.222', 1379098682, '赠送礼物:9|送给:x555358397|份数:555|价值:5550|还剩:130'),
(229, 0, -2900, '123.116.196.222', 1379099313, '赠送礼物:9|送给:x080578023|份数:290|价值:2900|还剩:5'),
(230, 0, -1400, '123.116.196.222', 1379099456, '赠送礼物:9|送给:x094292796|份数:140|价值:1400|还剩:55'),
(231, 0, -700, '123.116.196.222', 1379099608, '赠送礼物:9|送给:x100753981|份数:70|价值:700|还剩:55'),
(232, 0, 0, '123.116.196.222', 1379099672, '赠送礼物:7|送给:x125812105|份数:100|价值:0|还剩:405'),
(233, 0, 0, '123.116.196.222', 1379099702, '赠送礼物:7|送给:x125812105|份数:100|价值:0|还剩:405'),
(234, 3049, 1000, '218.25.198.38', 1384194487, 'gold_add-3049|1000|管理员充值'),
(235, 3049, -300, '218.25.198.38', 1384194784, '赠送礼物:12|送给:1256|份数:1|价值:300|还剩:700'),
(236, 3049, 0, '218.25.198.38', 1384194810, '赠送礼物:7|送给:1256|份数:1|价值:0|还剩:700'),
(237, 3049, -300, '218.25.198.38', 1384194820, '赠送礼物:6|送给:1256|份数:1|价值:300|还剩:400'),
(238, 3049, 0, '218.25.198.38', 1384194828, '赠送礼物:7|送给:1256|份数:1|价值:0|还剩:400'),
(239, 3049, 0, '218.25.198.38', 1384194843, '赠送礼物:7|送给:1256|份数:99|价值:0|还剩:400'),
(240, 3049, 0, '218.25.198.38', 1384194883, '赠送礼物:7|送给:1256|份数:999|价值:0|还剩:400'),
(241, 3049, 0, '218.25.198.38', 1384194898, '赠送礼物:7|送给:1256|份数:111|价值:0|还剩:400'),
(242, 3049, 0, '218.25.198.38', 1384194910, '赠送礼物:7|送给:1256|份数:99|价值:0|还剩:400'),
(243, 3049, 0, '218.25.198.38', 1384194941, '赠送礼物:7|送给:1256|份数:999|价值:0|还剩:400'),
(244, 3049, 0, '218.25.198.38', 1384194963, '赠送礼物:7|送给:1256|份数:888|价值:0|还剩:400'),
(245, 3049, 2147483647, '218.25.198.38', 1384195128, 'gold_add-3049|100000000000|管理员充值'),
(246, 3049, -299700, '218.25.198.38', 1384195374, '赠送礼物:6|送给:1256|份数:999|价值:299700|还剩:2147183947'),
(247, 3049, -990, '218.25.198.38', 1384206520, '赠送礼物:29|送给:3052|份数:99|价值:990|还剩:2147182957'),
(248, 3052, -10, '59.47.115.144', 1384206553, '赠送礼物:20|送给:3049|份数:1|价值:10|还剩:485'),
(249, 3052, -120, '59.47.115.144', 1384206631, '赠送礼物:19|送给:3049|份数:1|价值:120|还剩:365'),
(250, 3052, -120, '59.47.115.144', 1384206679, '赠送礼物:19|送给:3049|份数:1|价值:120|还剩:245'),
(251, 3049, -9900, '218.25.198.38', 1384206686, '赠送礼物:17|送给:3052|份数:99|价值:9900|还剩:2147173182'),
(252, 3049, -220, '218.25.198.38', 1384207942, '赠送礼物:26|送给:x105973971|份数:22|价值:220|还剩:2147172962'),
(253, 3049, -499500, '218.25.198.38', 1384207985, '赠送礼物:35|送给:x105973971|份数:999|价值:499500|还剩:2146673462'),
(254, 3049, -10, '218.25.198.38', 1384208009, '赠送礼物:29|送给:x105973971|份数:1|价值:10|还剩:2146673452'),
(255, 48, 5000000, '218.25.198.38', 1384208602, 'gold_add-48|5000000|管理员充值'),
(256, 3053, 5000000, '218.25.198.38', 1384208862, 'gold_add-3053|5000000|管理员充值'),
(257, 3060, 1000000, '119.1.108.250', 1384445965, 'gold_add-3060|1000000|管理员充值'),
(258, 3061, 2147483647, '119.1.108.250', 1384445975, 'gold_add-3061|100000000000|管理员充值'),
(259, 3061, -10, '178.193.7.200', 1384446155, '赠送礼物:32|送给:3060|份数:1|价值:10|还剩:2147483637'),
(260, 3061, -50, '178.193.7.200', 1384446192, '赠送礼物:30|送给:3060|份数:5|价值:50|还剩:2147483587'),
(261, 3060, -10, '220.163.12.76', 1384446310, '赠送礼物:30|送给:3061|份数:1|价值:10|还剩:1000020'),
(262, 0, -300, '49.75.218.173', 1384666347, '赠送礼物:27|送给:x170071551|份数:1|价值:300|还剩:249970'),
(263, 1255, -10, '218.25.198.38', 1386183211, '赠送礼物:32|送给:3051|份数:1|价值:10|还剩:2145147197'),
(264, 1255, -56400, '218.25.198.38', 1386183257, '赠送礼物:27|送给:3051|份数:188|价值:56400|还剩:2145090797'),
(265, 3051, -50, '218.25.198.38', 1386183318, '赠送礼物:33|送给:1255|份数:1|价值:50|还剩:28155'),
(266, 1255, -9900, '218.25.198.38', 1386183488, '赠送礼物:24|送给:3051|份数:99|价值:9900|还剩:2145080922'),
(267, 1255, -9801, '218.25.198.38', 1386722678, '赠送礼物:36|送给:3087|份数:99|价值:9801|还剩:2145071121'),
(268, 1255, -9990, '218.25.198.38', 1386722716, '赠送礼物:32|送给:3087|份数:999|价值:9990|还剩:2145061131'),
(269, 1255, -1110, '218.25.198.38', 1386722837, '赠送礼物:30|送给:3087|份数:111|价值:1110|还剩:2145060021'),
(270, 0, -100, '117.84.163.227', 1386801755, '赠送礼物:17|送给:1255|份数:1|价值:100|还剩:250020'),
(271, 1255, -990, '218.25.198.38', 1387059969, '赠送礼物:26|送给:3104|份数:99|价值:990|还剩:2145059081'),
(272, 3108, 100000, '218.25.198.38', 1387497580, 'gold_add-3108|100000|管理员充值'),
(273, 0, -300, '182.151.205.213', 1392801960, '赠送礼物:27|送给:x235658822|份数:1|价值:300|还剩:249720'),
(274, 0, -100, '222.90.142.207', 1393341979, '赠送礼物:24|送给:x253110435|份数:1|价值:100|还剩:249770'),
(275, 0, -100, '222.90.142.207', 1393342023, '赠送礼物:24|送给:x255299037|份数:1|价值:100|还剩:249720'),
(276, 0, -369, '222.90.142.207', 1393342047, '赠送礼物:34|送给:x253110435|份数:1|价值:369|还剩:249401'),
(277, 0, -150, '222.90.142.207', 1393342105, '赠送礼物:23|送给:x255299037|份数:1|价值:150|还剩:249436'),
(278, 0, -999, '222.90.142.207', 1393342126, '赠送礼物:25|送给:x253110435|份数:1|价值:999|还剩:248512'),
(279, 0, -100, '222.90.142.207', 1393342270, '赠送礼物:17|送给:x255299037|份数:1|价值:100|还剩:248912'),
(280, 0, -100, '222.91.109.209', 1394193303, '赠送礼物:17|送给:x223892932|份数:1|价值:100|还剩:248862'),
(281, 0, -100, '222.91.109.209', 1394193348, '赠送礼物:17|送给:x223892932|份数:1|价值:100|还剩:248812'),
(282, 0, -100, '222.91.109.209', 1394193760, '赠送礼物:24|送给:x004228451|份数:1|价值:100|还剩:248762'),
(283, 0, -10, '111.163.95.173', 1394200006, '赠送礼物:29|送给:x003434571|份数:1|价值:10|还剩:248802'),
(284, 0, -369, '222.91.109.209', 1394203709, '赠送礼物:34|送给:x003434571|份数:1|价值:369|还剩:248438'),
(285, 0, -300, '183.11.185.136', 1395934564, '赠送礼物:27|送给:x290814619|份数:1|价值:300|还剩:248323'),
(286, 0, -100, '183.11.185.136', 1395934581, '赠送礼物:17|送给:x290814619|份数:1|价值:100|还剩:248373'),
(287, 0, -10, '183.11.185.136', 1395934590, '赠送礼物:20|送给:x290814619|份数:1|价值:10|还剩:248413'),
(288, 0, -10, '222.134.7.54', 1396286005, '赠送礼物:29|送给:x115815517|份数:1|价值:10|还剩:248408'),
(289, 0, -100, '27.12.112.68', 1399642581, '赠送礼物:24|送给:x345576215|份数:1|价值:100|还剩:248313'),
(290, 0, -500, '115.218.116.230', 1400882707, '赠送礼物:22|送给:x011554243|份数:1|价值:500|还剩:247863'),
(291, 3271, 500000, '113.135.193.39', 1401979007, 'gold_add-3271|500000|管理员充值'),
(292, 0, -10, '114.91.253.233', 1402155283, '赠送礼物:32|送给:x323874036|份数:1|价值:10|还剩:248103'),
(293, 3280, 2147483647, '113.135.193.39', 1402416269, 'gold_add-3280|99999999999|管理员充值'),
(294, 3280, -2000, '113.135.193.39', 1402422256, '赠送礼物:21|送给:3281|份数:010|价值:2000|还剩:2147481647'),
(295, 3280, -5000, '113.135.193.39', 1402422362, '赠送礼物:35|送给:3281|份数:10|价值:5000|还剩:2147476647'),
(296, 3271, -10, '113.135.193.39', 1402614496, '赠送礼物:32|送给:3281|份数:1|价值:10|还剩:499990'),
(297, 3271, -500, '113.135.193.39', 1402614546, '赠送礼物:33|送给:3281|份数:10|价值:500|还剩:499490'),
(298, 3271, -50000, '113.135.193.39', 1402614626, '赠送礼物:35|送给:3281|份数:100|价值:50000|还剩:449490'),
(299, 3281, -300, '113.135.193.39', 1402615447, '赠送礼物:12|送给:3271|份数:1|价值:300|还剩:28455'),
(300, 3281, -1000, '113.135.193.39', 1402615458, '赠送礼物:9|送给:3271|份数:100|价值:1000|还剩:27455'),
(301, 3271, -20000, '113.135.193.39', 1402615522, '赠送礼物:31|送给:3281|份数:100|价值:20000|还剩:430140'),
(302, 3271, -3690, '113.135.193.39', 1402616337, '赠送礼物:34|送给:3286|份数:10|价值:3690|还剩:426450'),
(303, 0, -369, '223.150.110.5', 1402937056, '赠送礼物:34|送给:1255|份数:1|价值:369|还剩:247739'),
(304, 0, -500, '223.150.110.5', 1402937958, '赠送礼物:35|送给:1255|份数:1|价值:500|还剩:247239'),
(305, 0, -120, '113.205.236.21', 1404487080, '赠送礼物:19|送给:x35489050|份数:1|价值:120|还剩:247119'),
(306, 0, -369, '113.205.59.212', 1404746886, '赠送礼物:34|送给:1255|份数:1|价值:369|还剩:246810');

-- --------------------------------------------------------

--
-- 表的结构 `chat_lecturer`
--

CREATE TABLE IF NOT EXISTS `chat_lecturer` (
  `id` int(11) NOT NULL,
  `head` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ov` int(11) NOT NULL DEFAULT '0',
  `introduce` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `chat_memberfields`
--

CREATE TABLE IF NOT EXISTS `chat_memberfields` (
  `uid` int(11) NOT NULL,
  `nickname` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mood` text COLLATE utf8_unicode_ci,
  `city` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bday` date DEFAULT '0000-00-00',
  `face` tinyint(1) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `logins` int(11) DEFAULT '0',
  `qq` int(11) NOT NULL,
  `flower` int(11) NOT NULL DEFAULT '0',
  `acer` int(11) NOT NULL DEFAULT '0',
  `kiss` int(11) NOT NULL DEFAULT '0',
  `sn` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_memberfields`
--

INSERT INTO `chat_memberfields` (`uid`, `nickname`, `mood`, `city`, `bday`, `face`, `views`, `logins`, `qq`, `flower`, `acer`, `kiss`, `sn`) VALUES
(1, '系统管理员', '大舍大得,小舍小得,不舍不得，亲爱的游客，无论您是股市还是其他平台，早点割肉， 这边很快就能赚回来！加我QQ2491786520，专业为您定制解套方案', NULL, '0000-00-00', 0, 6, 321, 0, 359, 104, 95, ''),
(13, '客服    ʚ阿美ɞ', '盈利的背后是什么？是专业的技术，平稳的心态，良好的仓位管理，严格的执行力，想得到我们老师大行情盈利秘籍的客户，请添加客服阿美QQ：2491768445', NULL, '0000-00-00', 0, 0, 533, 0, 10, 10, 10, ''),
(11, '宁晨', '很多时候您没有赚到钱，并不是行情没有抓住，可能是因为您的心态不好！如果你现在还没有一个强大的心态，请抓紧时间加QQ2733549867。加入我们蜂鸟财经分析师团队！', NULL, '0000-00-00', 0, 0, 328, 0, 15, 21, 27, ''),
(10, '客服小刘', '朋友们，想成为VIP的请加QQ2491797061与老师助理联系，老师会对VIP客户朋友一对一解答,蜂鸟财金竭诚为您服务！', NULL, '0000-00-00', 0, 0, 78, 0, 10, 11, 10, ''),
(15, '金牌讲师', NULL, NULL, '0000-00-00', 0, 0, 278, 0, 25, 11, 16, ''),
(0, '火把', NULL, NULL, '0000-00-00', 0, 0, 0, 0, 17, 23, 28, '');

-- --------------------------------------------------------

--
-- 表的结构 `chat_memberonlines`
--

CREATE TABLE IF NOT EXISTS `chat_memberonlines` (
  `uid` int(11) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  `lastactivity` int(11) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `rst` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `chat_memberonlines`
--

INSERT INTO `chat_memberonlines` (`uid`, `rid`, `lastactivity`, `ip`, `rst`) VALUES
(1, 0, 1460617313, '127.0.0.1', 15),
(3, 0, 1459234468, '127.0.0.1', 14),
(4, 0, 1457962077, '127.0.0.1', 21),
(5, 0, 1457957243, '127.0.0.1', 20),
(7, 0, 1459331473, '127.0.0.1', 17),
(2, 0, 1460638540, '127.0.0.1', 20);

-- --------------------------------------------------------

--
-- 表的结构 `chat_members`
--

CREATE TABLE IF NOT EXISTS `chat_members` (
  `uid` mediumint(8) unsigned NOT NULL,
  `username` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sex` smallint(1) NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `regdate` int(10) NOT NULL,
  `regip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `lastvisit` int(10) NOT NULL,
  `lastactivity` int(10) NOT NULL,
  `onlinetime` int(11) NOT NULL,
  `priv` smallint(1) NOT NULL DEFAULT '0',
  `vip_expire` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `gold` int(11) NOT NULL DEFAULT '0',
  `money` decimal(14,2) NOT NULL,
  `realname` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gid` mediumint(9) DEFAULT '0',
  `fuser` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuser` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` smallint(1) DEFAULT '0',
  `openid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `touxiang` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=289 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_members`
--

INSERT INTO `chat_members` (`uid`, `username`, `password`, `sex`, `email`, `regdate`, `regip`, `lastvisit`, `lastactivity`, `onlinetime`, `priv`, `vip_expire`, `gold`, `money`, `realname`, `phone`, `gid`, `fuser`, `tuser`, `state`, `openid`, `touxiang`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 1430926799, '192.168.226.1', 1495531606, 1503399561, 1889651, 0, '0', 0, '49.47', '2491786520', '', 2, 'AA1', 'admin', 1, NULL, NULL),
(13, '阿美', 'd20d784f9c59c5882762b9ebe2549c7d', 0, '', 1472711375, '59.53.20.241', 1494553788, 1494585744, 0, 0, '0', 0, '0.00', '2491768445', '', 3, 'admin', 'admin', 1, NULL, NULL),
(15, '666', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 1472783697, '182.86.130.176', 1496918942, 1496930203, 0, 0, '0', 0, '0.00', '', '', 4, '阿美', '', 1, NULL, NULL),
(11, '宁晨', '93279e3308bdbbeed946fc965017f67a', 0, '', 1472571306, '59.53.17.60', 1490009813, 1490010279, 0, 0, '0', 0, '0.00', '2733549867', '', 3, 'admin', 'admin', 1, NULL, NULL),
(10, 'vikeji', 'e10adc3949ba59abbe56e057f20f883e', 1, '', 1472526524, '220.177.141.11', 1479364835, 1479840651, 0, 0, '0', 0, '0.00', '2491797061', '', 3, 'admin', 'admin', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `chat_mobilelist`
--

CREATE TABLE IF NOT EXISTS `chat_mobilelist` (
  `mbid` int(11) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `prize` varchar(50) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `chat_mobilelist`
--

INSERT INTO `chat_mobilelist` (`mbid`, `mobile`, `prize`, `time`, `status`) VALUES
(1, '18006423893', '10', 1470993679, 1),
(2, '13787295391', '4', 1475235152, 1),
(3, '15910826990', '4', 1484796436, 1),
(4, '13661293699', '4', 1486379692, 1),
(5, '15879990387', '5', 1487864849, 1),
(6, '13097128661', '4', 1488295615, 1),
(7, '13933734389', '4', 1489154031, 1),
(8, '18632928696', '8', 1492095098, 1),
(9, '15714297241', '4', 1493362203, 1),
(10, '13361537298', '10', 1493623690, 1),
(11, '13863688768', '4', 1493899485, 1),
(12, '15106076622', '4', 1494345194, 1);

-- --------------------------------------------------------

--
-- 表的结构 `chat_msgs`
--

CREATE TABLE IF NOT EXISTS `chat_msgs` (
  `id` int(11) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  `ugid` int(11) DEFAULT '0',
  `uid` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuid` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` text COLLATE utf8_unicode_ci,
  `msg` text COLLATE utf8_unicode_ci,
  `mtime` int(11) DEFAULT NULL,
  `type` smallint(1) DEFAULT '0',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` smallint(1) DEFAULT '0',
  `msgid` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `chat_notice`
--

CREATE TABLE IF NOT EXISTS `chat_notice` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txt` text COLLATE utf8_unicode_ci,
  `ov` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkaddr` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '跳转地址'
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_notice`
--

INSERT INTO `chat_notice` (`id`, `title`, `txt`, `ov`, `type`, `linkaddr`) VALUES
(1, '公告', '<pre style="margin: 10px; padding: 0px; font-size: 14px; line-height: 24px; white-space: pre-wrap; word-wrap: break-word; color: rgb(238, 238, 238); font-family: ''Microsoft Yahei'', Verdana, Geneva, sans-serif;">投资有风险，入市需谨慎，选择正规平台，营造绿色健康投资环境：\r\n    第一：请认准省政府批文（省工商局批文,省金融办批文，市政府批文等均无效）</pre><pre style="margin: 10px; padding: 0px; font-size: 14px; line-height: 24px; white-space: pre-wrap; word-wrap: break-word; color: rgb(238, 238, 238); font-family: ''Microsoft Yahei'', Verdana, Geneva, sans-serif;">    第二：确保第三方资金银行托管\r\n    第三：国内现货白银报价以国际价格为基础，综合中国人民银行人民币兑美元基准汇率，连续报出现货白银人民币买入价及卖出价。目前有实时汇率和固定汇率两种报价方式，两种报价方式的点位有一定差值，投资者需警惕。\r\n    第四：理性分析，切记带好止损止盈，不骄不躁，把控风险。    </pre>', 10, '', ''),
(13, '公司简介', '<div><span style="font-family:Microsoft YaHei;color:#666666;"><span style="font-size: 16px; line-height: 30px;">青岛国际有色金属交易所由青岛市人民政府审批《青政办字〔（2013）49〕号文》批准的省级交易场所。经青岛市人民政府报国务院部际联席会议检查验收，于2009年12月12日成立。青岛国际深知金融变革的历史机遇，深知贵金属交易市场的繁荣前景和金融衍生品的广阔空间。为此我们坚守“诚信为本、互利共赢”的宗旨，致使平台重视交易的安全性，合作的重要性。</span></span></div><div><span style="font-family:Microsoft YaHei;color:#666666;"><span style="font-size: 16px; line-height: 30px;"><br /></span></span></div><div><span style="font-family:Microsoft YaHei;color:#666666;"><span style="font-size: 16px; line-height: 30px;">&nbsp;保税港区是我国保税区转型发展的产物，是我国与自由贸易区政策功能最为接近、开放层次最高、政策最优惠的海关特殊监管区域。青岛国际有色金属交易所依托青岛保税港区“境内关外”及“保税、免税、免证”的特殊优惠政策和青岛港口资源优势，让我们为您提供的优良投资品种，普遍又精尖。</span></span></div><div><span style="font-family:Microsoft YaHei;color:#666666;"><span style="font-size: 16px; line-height: 30px;"><br /></span></span></div><div><span style="font-family:Microsoft YaHei;color:#666666;"><span style="font-size: 16px; line-height: 30px;">&nbsp;青岛国际有色金属市场将线下的商务机会与互联网结合，让互联网成为线下交易的平台。实现买卖双方电子交易，降低成本，规避价格波动风险，缓解资金压力，简化贸易环节，从而提升我国有色金属行业在国际市场上的核心竞争力，取得国际话语权。&nbsp;</span></span></div><div><br /></div>', 8, 'notice', ''),
(16, '免责声明', '<pre style="margin: 10px; padding: 0px; font-size: 14px; line-height: 24px; white-space: pre-wrap; word-wrap: break-word; color: rgb(238, 238, 238); font-family: ''Microsoft Yahei'', Verdana, Geneva, sans-serif;">&nbsp; &nbsp; &nbsp; 本直播室所有内容，包括文字、图像、音频、视频只供本公司或授权者使用，访问者可将本网站提供的内容或服务用于个人学习或欣赏，以及其他非商业性或非盈利性用途；没有本公司的书面授权，不得因任何目的，以任何方式如电子的、转载或其它方式，包括影印和记录，复制和传播本直播室的任何部分。</pre>', 9, 'notice', '');

-- --------------------------------------------------------

--
-- 表的结构 `chat_order_list`
--

CREATE TABLE IF NOT EXISTS `chat_order_list` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `money` varchar(10) NOT NULL,
  `account` varchar(50) DEFAULT NULL,
  `ordernum` varchar(200) NOT NULL,
  `yue` decimal(14,2) NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `chat_order_list`
--

INSERT INTO `chat_order_list` (`id`, `mid`, `username`, `money`, `account`, `ordernum`, `yue`, `time`, `status`) VALUES
(5, 1, 'admin', '0.01', 'anyongfu@163.com', '14690785861', '49.47', 1469078586, 1),
(3, 1, NULL, '0.01', 'anyongfu@163.com', '14690772131', '49.44', 1469077213, 1),
(4, 1, 'admin', '0.01', 'anyongfu@163.com', '14690774121', '49.46', 1469077412, 1),
(6, 21, NULL, '10', NULL, '147323620721', '0.00', 1473236207, 0),
(7, 10, NULL, '10', NULL, '147395112010', '0.00', 1473951120, 0),
(8, 13, NULL, '10', NULL, '147788336613', '0.00', 1477883366, 0),
(9, 84, NULL, '10', NULL, '148793212784', '0.00', 1487932127, 0),
(10, 1, NULL, '10', NULL, '14936934001', '0.00', 1493693400, 0),
(11, 13, NULL, '1', NULL, '149374214213', '0.00', 1493742142, 0);

-- --------------------------------------------------------

--
-- 表的结构 `chat_payitem`
--

CREATE TABLE IF NOT EXISTS `chat_payitem` (
  `id` int(11) NOT NULL,
  `rmb` float NOT NULL,
  `v` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sn` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_payitem`
--

INSERT INTO `chat_payitem` (`id`, `rmb`, `v`, `sn`) VALUES
(16, 1, '6|30|100', '测试'),
(18, 100, '3|30|200', '123'),
(19, 100, '5|30|200', '234'),
(20, 30, '7|30|300', '300金币充值'),
(21, 45, '7|30|500', '500金币充值');

-- --------------------------------------------------------

--
-- 表的结构 `chat_payorder`
--

CREATE TABLE IF NOT EXISTS `chat_payorder` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `payid` int(11) DEFAULT NULL,
  `payordertime` int(11) DEFAULT NULL,
  `payip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paytime` int(11) DEFAULT NULL,
  `pay` smallint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `chat_popcs`
--

CREATE TABLE IF NOT EXISTS `chat_popcs` (
  `id` int(11) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ov` int(5) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `chat_popcs`
--

INSERT INTO `chat_popcs` (`id`, `name`, `url`, `img`, `ov`) VALUES
(8, '客服小刘', 'http://wpa.qq.com/msgrd?v=3&uin=2491797061&site=qq&menu=yes', '/upload/upfile/day_160830/201608301115527771.gif', 0),
(9, '客服宁晨', 'http://wpa.qq.com/msgrd?v=3&uin=2733549867&site=qq&menu=yes', '/upload/upfile/day_160901/201609011336565613.gif', 0),
(10, '客服薇薇', 'http://wpa.qq.com/msgrd?v=3&uin=2491786520&site=qq&menu=yes', '/upload/upfile/day_160901/201609011427092037.gif', 0),
(11, '客服阿美', 'http://wpa.qq.com/msgrd?v=3&uin=2491768445&site=qq&menu=yes', '/upload/upfile/day_160901/201609011427537876.gif', 0);

-- --------------------------------------------------------

--
-- 表的结构 `chat_prizecdk`
--

CREATE TABLE IF NOT EXISTS `chat_prizecdk` (
  `id` int(11) NOT NULL,
  `cdk` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(1) NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `prize` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `generatetime` int(10) DEFAULT NULL,
  `usetime` int(10) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `chat_prizeconf`
--

CREATE TABLE IF NOT EXISTS `chat_prizeconf` (
  `id` int(11) NOT NULL,
  `keys` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempid` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `onoff` smallint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_prizeconf`
--

INSERT INTO `chat_prizeconf` (`id`, `keys`, `tempid`, `onoff`) VALUES
(1, 'bd1805cf2662548d5c45a6774001aace', '19941', 1);

-- --------------------------------------------------------

--
-- 表的结构 `chat_prizeset`
--

CREATE TABLE IF NOT EXISTS `chat_prizeset` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_prizeset`
--

INSERT INTO `chat_prizeset` (`id`, `title`) VALUES
(1, '159*****470用户抽到iphone 6s一个'),
(3, '152*****273用户抽到10元手机话费'),
(4, '152*****222用户抽到30元手机话费'),
(5, '159*****470用户抽到iphone 6s一个'),
(6, '152*****222用户抽到30元手机话费'),
(7, '152*****222用户抽到30元手机话费'),
(9, '152*****222用户抽到30元手机话费');

-- --------------------------------------------------------

--
-- 表的结构 `chat_rebotslist`
--

CREATE TABLE IF NOT EXISTS `chat_rebotslist` (
  `id` int(11) NOT NULL,
  `rgroup` int(3) NOT NULL DEFAULT '1',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `week` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=601 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `chat_rebotslist`
--

INSERT INTO `chat_rebotslist` (`id`, `rgroup`, `name`, `week`, `stime`, `etime`, `rid`) VALUES
(1, 12, '漫天飞舞', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(100, 13, '她说我死老头子', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(99, 24, '短线交易', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(98, 13, '梦想成真', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(97, 24, '我爱钓鱼', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(96, 24, '我本善良', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(95, 12, '超级大腕', '1,2,3,4,5,0', '20:00:00', '00:00:00', 1),
(94, 13, '不会飞的小鸟', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(93, 12, '木材装饰', '1,2,3,4,5', '09:20:00', '02:00:00', 1),
(92, 11, '赚钱爽歪歪', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(91, 11, '我定胜天', '1,2,3,4,5', '00:09:00', '00:17:00', 1),
(101, 12, '再回首恍然如梦', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(102, 14, '習慣沉默', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(103, 14, '漂亮男人', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(105, 12, '囚你于无期', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(106, 14, '浮生物语', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(107, 1, '我想赚钱', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(108, 1, '我要飞的更高', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(109, 1, '靠天靠地不如靠自己', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(110, 15, '上进心', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(111, 11, '跟自己说声对不起', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(112, 11, '理智去爱', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(113, 13, '迷途知返', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(114, 11, '说话算话', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(115, 24, '不经沧桑怎成男人', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(116, 14, '用生活展示人生', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(117, 1, '初学者', '1,2,3,4,5', '10:02:00', '02:00:00', 1),
(118, 11, '重新的开始', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(119, 14, '姐的霸气你学不来', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(120, 12, '涐就s绝版', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(121, 11, '福建普洱茶', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(122, 12, '中国黄金', '1,2,3,4,5', '11:00:00', '02:00:00', 1),
(123, 12, '副食品批发商', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(124, 12, '杂货铺', '1,2,3,4,5,6', '00:00:00', '00:00:00', 1),
(125, 15, '独撑全场', '1,2,3,4,5', '10:02:00', '02:00:00', 1),
(126, 1, '千杯不醉万杯不倒', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(127, 12, '千总爆有范儿', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(128, 1, '最终狂暴', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(129, 24, '妞真美', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(589, 11, '一摸烟云', '1,2,3,4,5', '20:00:00', '220:00:00', 1),
(131, 1, '续写青春', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(132, 24, '悲催小人生', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(133, 24, '学会微笑', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(134, 24, '第一帅男', '1,2,3,4,5,0', '09:00:00', '02:00:00', 1),
(135, 24, '平头踏天下', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(136, 15, '发奋图强', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(137, 1, '心有阳光', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(138, 14, '转身未来', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(223, 1, '快乐的小鸟', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(140, 13, '永不放弃', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(141, 12, '永不言败', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(142, 1, '晟功恠望', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(143, 1, '我不能输', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(144, 1, '坚持很美', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(145, 1, '命甴己造', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(146, 1, '从心开始', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(147, 1, '超越自已', '1,2,3,4,5,0', '20:00:00', '23:00:00', 1),
(148, 1, '拼未来', '1,2,3,4,5', '12:00:00', '23:00:00', 1),
(149, 1, '从未停步', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(150, 1, '做人要淡定', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(151, 1, '嗜爱年华', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(152, 1, '崛起', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(153, 22, '为不挂科而奋斗', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(154, 14, '别勉强', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(155, 15, '心中有海', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(156, 15, '做有用的人', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(157, 14, '莫等闲', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(158, 14, '故意', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(159, 14, '浮生物语', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(160, 1, '代替沉默', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(161, 22, '世勿虚人', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(162, 15, '叶落', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(164, 15, '墨兮', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(165, 14, '心在腐烂', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(226, 11, '迪拜小王子', '1,2,3,4,5', '09:00:09', '02:00:20', 1),
(167, 15, '控制思维', '1,2,3,4,5', '12:15:00', '00:09:00', 1),
(168, 15, '忘有', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(169, 22, '无人问津', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(170, 1, '失控的情绪', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(171, 1, '束缚', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(172, 1, '只是一阵风', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(173, 23, '最后一页', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(174, 13, '孤败', '1,2,3,4,5', '09:30:00', '02:00:00', 1),
(175, 23, '约好的以后', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(176, 23, '阳光下的阴霾', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(177, 1, '梦年', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(178, 23, '记忆浮现', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(179, 23, '秋季忆往如故', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(180, 23, '梦过后', '1,2,3,4,5', '10:00:00', '01:00:00', 1),
(276, 24, '上次降到', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(182, 24, '锁上的光', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(183, 1, '暗淡落幕', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(184, 1, '夕色琉璃', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(185, 1, '閉上眼說不疼', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(186, 22, '远望', '1,2,3,4,5', '09:25:00', '24:00:00', 1),
(187, 11, '悠悠', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(224, 15, '沙漠之花', '1,2,3,4,5', '09:15:00', '02:00:00', 1),
(189, 12, '月半弯', '1,2,3,4,5,6', '00:00:00', '00:00:00', 1),
(190, 12, '最耀眼的星', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(191, 12, '如鲸向海', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(192, 11, '大男子主义', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(193, 11, '厮守這份情', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(194, 14, '二千与叫兽', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(195, 14, '幸福的城堡', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(196, 14, '莣记', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(197, 14, '很逼眞', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(198, 15, '第个夏天', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(513, 15, '牛A与牛C之间', '1,2,3,4,5', '11:00:00', '24:20:00', 1),
(201, 14, '独尊', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(202, 14, '独尊', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(203, 13, '嘻哈团队', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(205, 13, '枪林弹雨', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(206, 12, '战队', '1,2,3,4,5,6', '00:00:00', '00:00:00', 1),
(207, 14, '时光小偷', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(208, 15, '1丝光芒', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(209, 11, '记忆浮现', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(210, 13, '长路漫漫', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(211, 14, '暗淡落幕', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(212, 14, '夕色琉璃', '1,2,3,4,5,6', '00:00:00', '00:00:00', 1),
(213, 11, '凡凡欢迎回来', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(214, 12, '偶旳温顺', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(215, 13, '玫瑰命', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(216, 11, '再拥友', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(217, 11, '领先70后', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(218, 11, '人狗殊途', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(219, 11, '对不屑', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(220, 11, '魔霸猎帝', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(221, 23, '曾经', '1,2,3,4,5,6,0', '00:00:00', '00:00:00', 1),
(222, 11, '酱油', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(227, 15, '天然气EIA杀手', '1,2,3,4,5', '00:00:09', '00:00:23', 1),
(228, 11, '囧徒', '1,2,3,4,5', '09:00:00', '23:00:00', 1),
(229, 15, '顺心顺意', '1,2,3,4,5', '09:00:00', '23:00:00', 1),
(230, 12, '抄底高手', '1,2,3,4,5,6', '09:00:00', '02:00:00', 1),
(231, 13, '拉斯维加斯', '1,2,3,4,5', '09:00:00', '22:00:00', 1),
(232, 22, '聚点美容', '1,2,3,4,5', '09:00:00', '23:00:00', 1),
(233, 11, '老黄', '1,2,3,4,5', '09:00:00', '23:00:00', 1),
(234, 14, '丹丹百货', '1,2,3,4,5', '09:10:00', '02:00:00', 1),
(235, 12, '夜晚的上海', '1,2,3,4,5,6', '09:00:00', '23:00:00', 1),
(236, 22, '蔷薇', '1,2,3,4,5', '09:00:00', '22:00:00', 1),
(237, 11, '难忘的记忆', '1,2,3,4,5', '09:00:00', '23:00:00', 1),
(238, 23, '重头再来', '1,2,3,4,5', '09:00:00', '23:00:00', 1),
(239, 13, '杨阳洋', '1,2,3,4,5,6', '00:00:00', '00:00:00', 1),
(240, 22, '简单说爱', '1,2,3,4,5,6', '09:00:00', '23:00:00', 1),
(241, 1, '平步青云', '1,2,3,4,5,6', '09:00:00', '23:00:00', 1),
(242, 14, '上海女人', '1,2,3,4,5,6', '00:00:00', '00:00:00', 1),
(243, 22, '蓝色天空', '1,2,3,4,5,6', '09:00:00', '24:00:00', 1),
(244, 22, '天坛', '1,2,3,4,5', '09:20:00', '01:00:00', 1),
(245, 23, '习惯孤独', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(246, 22, '山花烂漫', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(247, 22, '东方大海', '1,2,3,4,5', '09:00:00', '12:00:00', 2),
(248, 22, '丁仔', '1,2,3,4,5', '09:00:00', '01:00:00', 2),
(249, 22, '奋斗', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(250, 22, '阿忠', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(251, 22, '低调', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(252, 22, '华丽的转身', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(253, 23, '男身', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(254, 23, '财源滚滚', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(255, 23, '多派发', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(256, 23, '为你', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(257, 23, '心灵之路', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(258, 23, '富3代', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(259, 23, '心海', '1,2,3,4,5', '10:00:00', '01:00:00', 1),
(260, 23, '不畏将来', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(261, 23, '简单', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(262, 23, '东方大海', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(263, 1, '依然锋芒', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(264, 1, '缘来是你', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(265, 1, '步步为赢', '1,2,3,4,5', '09:00:00', '24:00:00', 2),
(266, 1, '雁南非', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(267, 1, '跳动地心', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(268, 1, '星星之火', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(269, 1, '金城', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(270, 1, '萧萧', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(271, 1, '幸福时光', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(272, 1, '大陆向前', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(273, 1, '金生水起12', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(274, 1, '平凡人生', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(275, 1, '天天盈利', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(277, 24, '坚强的男人', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(278, 24, '强者风范', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(279, 24, '风淡云清', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(280, 24, '分析红K线', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(281, 24, '非诚勿扰', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(282, 13, '玉观音', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(283, 13, '344做沥青', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(284, 13, '衷大神', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(285, 13, '情何以堪', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(286, 13, '卿力一击', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(287, 13, '春风', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(288, 13, '拓展人生', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(289, 13, '不离不弃', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(290, 13, '箭头', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(291, 13, '薪金电脑', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(292, 12, '蓝色妖姬', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(293, 12, '淡水鱼', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(294, 12, 'zai一起', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(295, 12, '训哥', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(296, 12, '哈利波特', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(297, 12, '专业美容', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(298, 12, '家具城', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(299, 12, '战斗', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(300, 11, '陆家嘴', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(301, 11, '在路上', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(302, 11, '奋斗青年', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(303, 11, '加油加油', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(304, 11, '好好先生', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(305, 11, '丽江普洱', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(306, 11, '只做油', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(307, 11, '左手右手', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(308, 11, '风光一声', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(309, 11, '蔚蓝色', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(310, 11, '龙飞', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(311, 11, '暖阳', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(312, 11, '夏雨', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(313, 11, '胜过天晴', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(314, 11, '顺流而是', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(315, 11, '政征服', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(316, 15, '财富在你中', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(317, 15, '欢笑每天', '1,2,3,4,5', '11:00:00', '01:12:00', 2),
(318, 15, '白银每盘', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(319, 15, '勿忘我', '1,2,3,4,5', '10:00:00', '02:00:00', 2),
(320, 15, '趋势单子', '1,2,3,4,5', '00:00:00', '00:00:00', 2),
(321, 15, '白银杀手', '1,2,3,4,5', '09:00:00', '02:00:00', 2),
(322, 22, '风藤', '1,2,3,4,5', '11:00:00', '01:00:00', 1),
(323, 14, '忐忑', '1,2,3,4,5', '09:10:00', '24:05:00', 3),
(324, 13, '阶梯', '1,2,3,4,5', '09:00:00', '01:00:00', 1),
(514, 11, '一触即溃', '1,2,3,4,5', '10:00:00', '01:00:00', 1),
(326, 14, '达到成功', '1,2,3,4,5', '09:00:00', '24:00:00', 1),
(327, 24, '刺激的感觉', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(328, 1, '坎坷的生活', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(329, 15, '专做白银', '1,2,3,4,5', '11:11:00', '01:02:00', 1),
(330, 12, '帅哥', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(331, 23, '大咖就是发', '1,2,3,4,5', '13:00:00', '02:00:00', 1),
(332, 13, '战神队', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(333, 12, '美妞 ', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(334, 15, '大海 ', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(335, 12, '小苹果 ', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(336, 23, '富甲一方', '1,2,3,4,5', '09:20:00', '11:45:00', 3),
(345, 24, '趋势交易', '1,2,3,4,5', '09:20:00', '24:10:00', 3),
(338, 22, '新人报道', '1,2,3,4,5', '09:10:00', '01:00:00', 3),
(339, 23, '巅峰', '1,2,3,4,5', '09:05:00', '23:30:00', 3),
(340, 24, '海纳百川', '1,2,3,4,5', '10:00:00', '22:55:00', 3),
(341, 14, '平凡人生', '1,2,3,4,5', '11:00:00', '23:55:00', 3),
(342, 22, '上善若水', '1,2,3,4,5', '09:10:00', '23:50:00', 3),
(343, 24, '过客', '1,2,3,4,5', '11:00:00', '23:40:00', 3),
(344, 14, '钱行天下', '1,2,3,4,5', '10:00:00', '23:30:00', 3),
(346, 22, '读者', '1,2,3,4,5', '09:00:00', '01:00:00', 3),
(347, 22, '悟道者', '1,2,3,4,5', '09:00:00', '24:30:00', 3),
(348, 22, '太极图', '1,2,3,4,5', '09:00:00', '01:10:00', 3),
(349, 24, '品酒品人', '1,2,3,4,5', '09:00:00', '01:20:00', 3),
(350, 23, '以德服人', '1,2,3,4,5', '09:00:00', '01:08:00', 3),
(351, 22, '低调人生', '1,2,3,4,5', '09:03:00', '24:10:00', 3),
(352, 23, '仁者见智', '1,2,3,4,5', '10:00:00', '23:50:00', 3),
(353, 22, '愚者谈智', '1,2,3,4,5', '09:10:00', '01:05:00', 3),
(354, 23, '活到老学到老', '1,2,3,4,5', '09:00:00', '01:00:00', 3),
(355, 22, '学海无涯', '1,2,3,4,5', '09:30:00', '23:40:00', 3),
(356, 15, '无法无天', '1,2,3,4,5', '09:50:00', '01:30:00', 1),
(357, 11, '中国首付', '1,2,3,4,5', '10:00:00', '01:45:00', 1),
(358, 15, '不良人', '1,2,3,4,5', '09:30:00', '24:00:00', 1),
(359, 11, '法海1号', '1,2,3,4,5', '11:00:00', '01:20:00', 1),
(360, 12, '右侧交易者', '1,2,3,4,5', '09:10:00', '02:00:00', 1),
(361, 15, '小样', '1,2,3,4,5', '09:10:00', '01:40:00', 1),
(362, 12, '人生无悔', '1,2,3,4,5', '09:50:00', '01:40:00', 1),
(364, 15, '安全着陆', '1,2,3,4,5', '09:00:00', '01:50:00', 1),
(365, 13, '老油条', '1,2,3,4,5', '09:10:00', '02:00:00', 1),
(366, 15, '左侧交易', '1,2,3,4,5', '09:20:00', '01:40:00', 1),
(367, 15, '文艺小青年', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(368, 12, '做单狂人', '1,2,3,4,5', '09:00:00', '02:00:00', 1),
(369, 11, '侠客行', '1,2,3,4,5', '09:00:00', '01:50:00', 1),
(370, 15, '散落人间的小和尚', '1,2,3,4,5', '09:00:00', '01:00:00', 1),
(371, 11, '仙女散花', '1,2,3,4,5', '09:00:00', '01:10:00', 1),
(372, 11, '手握天下', '1,2,3,4,5', '09:40:00', '01:30:00', 1),
(373, 15, '黄河之水', '1,2,3,4,5', '10:00:00', '01:20:00', 1),
(374, 11, '释爱', '1,2,3,4,5', '10:00:00', '01:20:00', 1),
(375, 15, '不得不爱', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(376, 15, '想你的夜', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(377, 11, '中南海保镖1号', '1,2,3,4,5', '11:00:00', '02:00:00', 1),
(378, 15, '来去如风', '1,2,3,4,5', '09:50:00', '01:50:00', 1),
(379, 1, '山下有老虎', '1,2,3,4,5', '11:00:00', '01:50:00', 1),
(380, 1, '七里香', '1,2,3,4,5', '11:00:00', '02:00:00', 1),
(381, 24, '赶超马云', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(382, 13, '功德无量', '1,2,3,4,5', '13:00:00', '24:50:00', 1),
(383, 13, '无悔青春', '1,2,3,4,5', '13:00:00', '02:00:00', 1),
(384, 15, '一二一', '1,2,3,4,5', '11:00:00', '02:00:00', 1),
(385, 12, '姜太公捕鱼', '1,2,3,4,5', '13:00:00', '01:30:00', 1),
(386, 15, '武大郎烧饼', '1,2,3,4,5', '11:00:00', '02:00:00', 1),
(387, 12, '山东陈', '1,2,3,4,5', '09:00:00', '24:00:00', 1),
(388, 11, '小蜜蜂', '1,2,3,4,5', '09:00:00', '24:30:00', 1),
(389, 11, '万达保安队长', '1,2,3,4,5', '12:00:00', '01:00:00', 1),
(390, 1, '一切安然', '1,2,3,4,5', '12:00:00', '02:00:00', 1),
(391, 15, '自然风', '1,2,3,4,5', '12:00:00', '24:30:00', 1),
(392, 15, '平凡之路', '1,2,3,4,5', '12:00:00', '02:00:00', 1),
(393, 11, '铁饭碗', '1,2,3,4,5', '10:00:00', '01:00:00', 1),
(394, 22, '北京有套房', '1,2,3,4,5', '10:00:00', '24:00:00', 1),
(395, 15, '落子无悔', '1,2,3,4,5', '11:00:00', '02:00:00', 1),
(397, 1, '原定一生', '1,2,3,4,5', '12:00:00', '02:00:00', 1),
(398, 15, '欢喜就好', '1,2,3,4,5', '12:00:00', '02:00:00', 1),
(399, 1, '爱我别走', '1,2,3,4,5', '18:00:00', '01:00:00', 1),
(400, 15, '收费站长', '1,2,3,4,5', '18:00:00', '01:00:00', 1),
(401, 15, 'A计划', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(402, 15, '空头做多单', '1,2,3,4,5', '19:00:00', '01:00:00', 1),
(403, 11, '逆水行舟', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(588, 13, '情不自禁', '1,2,3,4,5,0', '00:00:00', '00:00:00', 1),
(405, 1, '美联储副主席', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(406, 1, '迪拜酋长', '1,2,3,4,5', '18:00:00', '24:00:00', 1),
(407, 1, '我们的爱', '1,2,3,4,5', '18:00:00', '01:00:00', 1),
(408, 15, '无所事事', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(409, 1, '改名字真麻烦', '1,2,3,4,5', '15:00:00', '01:00:00', 1),
(410, 1, '天气好精神爽', '1,2,3,4,5', '16:00:00', '24:00:00', 1),
(411, 15, '裙摆', '1,2,3,4,5', '16:00:00', '24:00:00', 1),
(412, 11, '风流才子', '1,2,3,4,5', '10:00:00', '01:00:00', 1),
(413, 11, '均衡之道', '1,2,3,4,5', '11:00:00', '24:50:00', 1),
(414, 24, '叫我大叔', '1,2,3,4,5', '10:00:00', '24:40:00', 1),
(415, 15, '有情有义', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(416, 15, '不怕伤害', '1,2,3,4,5', '17:00:00', '01:00:00', 1),
(417, 15, '小树点', '1,2,3,4,5', '17:00:00', '24:50:00', 1),
(418, 1, '活雷锋', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(419, 1, '权威人事', '1,2,3,4,5', '17:00:00', '02:00:00', 1),
(420, 15, '为你着迷', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(421, 15, '微笑着流泪', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(422, 11, '特殊对待', '1,2,3,4,5', '18:00:00', '01:20:00', 1),
(423, 1, '老师我想请假', '1,2,3,4,5', '17:00:00', '24:30:00', 1),
(424, 1, '好学生', '1,2,3,4,5', '18:00:00', '01:30:00', 1),
(425, 1, '纯牛奶', '1,2,3,4,5', '18:00:00', '01:20:00', 1),
(426, 15, '风水先生', '1,2,3,4,5', '18:10:00', '02:00:00', 1),
(427, 15, '招财猫', '1,2,3,4,5', '18:10:00', '01:30:00', 1),
(428, 1, '田野上的草', '1,2,3,4,5', '18:00:00', '01:50:00', 1),
(429, 15, '原上草', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(430, 11, '独上云霄', '1,2,3,4,5', '19:00:00', '24:50:00', 1),
(431, 11, '难以释怀的爱', '1,2,3,4,5', '18:20:00', '02:00:00', 1),
(432, 15, '勇敢去爱', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(433, 11, '开门见山', '1,2,3,4,5', '17:00:00', '24:40:00', 1),
(434, 15, '初来乍到', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(435, 11, '陪你看海', '1,2,3,4,5', '13:00:00', '01:50:00', 1),
(436, 24, '旁观者', '1,2,3,4,5', '17:00:00', '24:00:00', 1),
(437, 15, '诗语者', '1,2,3,4,5', '16:00:00', '24:00:00', 1),
(438, 15, '疯语者', '1,2,3,4,5', '18:00:00', '24:40:00', 1),
(439, 13, '董先生', '1,2,3,4,5', '11:00:00', '24:30:00', 1),
(440, 15, '求关注', '1,2,3,4,5', '18:00:00', '01:30:00', 1),
(441, 12, '龙哥', '1,2,3,4,5', '17:00:00', '01:10:00', 1),
(442, 11, '信誉至上', '1,2,3,4,5', '15:00:00', '01:11:00', 1),
(443, 15, '纸上谈兵', '1,2,3,4,5', '18:00:00', '01:30:00', 1),
(444, 15, '爱你没差', '1,2,3,4,5', '18:00:00', '01:00:00', 1),
(446, 15, '十万个为什么', '1,2,3,4,5', '18:00:00', '24:50:00', 1),
(447, 1, '我是游客', '1,2,3,4,5', '11:00:00', '01:00:00', 1),
(448, 15, '超级会员', '1,2,3,4,5,0', '17:00:00', '01:20:00', 1),
(449, 11, '西部牛仔', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(451, 15, '我在等你', '1,2,3,4,5', '17:00:00', '01:20:00', 1),
(453, 15, '回头一笑', '1,2,3,4,5', '11:00:00', '24:10:00', 1),
(454, 15, '通关', '1,2,3,4,5', '09:00:00', '23:00:00', 1),
(455, 15, '闭关修炼中', '1,2,3,4,5', '09:00:00', '23:30:00', 1),
(456, 15, '剑在手', '1,2,3,4,5', '09:00:00', '23:30:00', 1),
(457, 15, '一剑飘雪', '1,2,3,4,5', '09:00:00', '24:00:00', 1),
(458, 15, '大腿难抱', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(459, 15, '158', '1,2,3,4,5', '11:00:00', '01:30:00', 1),
(460, 15, '皇城守卫', '1,2,3,4,5', '17:00:00', '01:00:00', 1),
(461, 11, '清华大咖', '1,2,3,4,5', '17:00:00', '24:50:00', 1),
(462, 15, '飞翔', '1,2,3,4,5', '17:00:00', '24:50:00', 1),
(463, 11, '算命先生', '1,2,3,4,5', '11:00:00', '02:00:00', 1),
(464, 15, '铁算盘', '1,2,3,4,5', '12:00:00', '01:00:00', 1),
(465, 11, '铁公鸡', '1,2,3,4,5', '16:00:00', '02:00:00', 1),
(466, 15, '传说哥', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(467, 15, '中华小当家', '1,2,3,4,5', '17:00:00', '01:20:00', 1),
(468, 15, '最爱你的人是我', '1,2,3,4,5', '16:00:00', '24:30:00', 1),
(469, 15, '笑傻走一回', '1,2,3,4,5', '17:00:00', '01:00:00', 1),
(471, 11, '青苹果', '1,2,3,4,5', '17:00:00', '24:40:00', 1),
(472, 15, '我看涨', '1,2,3,4,5', '11:00:00', '01:00:00', 1),
(473, 11, '看跌赚钱', '1,2,3,4,5', '11:00:00', '24:30:00', 1),
(474, 12, '神的叹息', '1,2,3,4,5', '12:00:00', '24:30:00', 1),
(475, 11, '万里行', '1,2,3,4,5', '13:00:00', '24:50:00', 1),
(476, 11, '一哭倾城', '1,2,3,4,5', '12:00:00', '24:50:00', 1),
(477, 12, '我就是传奇', '1,2,3,4,5', '10:00:00', '01:00:00', 1),
(478, 15, '不醉不归', '1,2,3,4,5', '12:00:00', '24:30:00', 1),
(479, 11, '求神拜佛', '1,2,3,4,5', '11:00:00', '24:20:00', 1),
(480, 11, '流连忘返', '1,2,3,4,5', '12:00:00', '24:20:00', 1),
(481, 1, '夜夜夜嘿', '1,2,3,4,5', '11:00:00', '01:00:00', 1),
(482, 12, '笑看风云', '1,2,3,4,5', '12:00:00', '24:30:00', 1),
(483, 11, '福彩店员', '1,2,3,4,5', '13:00:00', '24:00:00', 1),
(484, 11, '漫步人生路', '1,2,3,4,5', '14:00:00', '24:00:00', 1),
(485, 11, '灰太狼', '1,2,3,4,5', '17:00:00', '24:00:00', 1),
(486, 15, '大头', '1,2,3,4,5', '20:00:00', '24:30:00', 1),
(487, 11, '谎言真美', '1,2,3,4,5', '19:00:00', '01:00:00', 1),
(488, 11, '剑走偏锋', '1,2,3,4,5', '17:00:00', '01:00:00', 1),
(489, 15, '人外人', '1,2,3,4,5', '18:00:00', '01:20:00', 1),
(490, 15, '强力胶水特卖', '1,2,3,4,5', '18:00:00', '24:30:00', 1),
(491, 15, '心静自然凉', '1,2,3,4,5', '19:00:00', '01:20:00', 1),
(492, 15, '我们还很年轻', '1,2,3,4,5', '17:00:00', '02:00:00', 1),
(494, 15, '大大果果', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(495, 11, '顺风顺水', '1,2,3,4,5', '11:00:00', '24:00:00', 1),
(496, 15, '偶遇小树龄', '1,2,3,4,5', '11:00:00', '01:00:00', 1),
(497, 11, '徐老师的粉丝', '1,2,3,4,5', '11:00:00', '24:30:00', 1),
(498, 12, '不做大哥很多年', '1,2,3,4,5', '14:00:00', '01:30:00', 1),
(499, 14, '小白菜', '1,2,3,4,5', '14:00:00', '01:40:00', 1),
(500, 11, '油长', '1,2,3,4,5', '17:00:00', '01:00:00', 1),
(501, 15, '最爱天然气', '1,2,3,4,5', '18:00:00', '01:20:00', 1),
(502, 15, '爱你没谁', '1,2,3,4,5', '15:00:00', '01:00:00', 1),
(503, 12, '东方红', '1,2,3,4,5', '11:00:00', '01:30:00', 1),
(504, 15, '红旗飘飘', '1,2,3,4,5', '17:00:00', '24:30:00', 1),
(505, 15, '陈思琪', '1,2,3,4,5', '16:00:00', '24:00:00', 1),
(506, 11, '无以伦比', '1,2,3,4,5', '17:00:00', '24:40:00', 1),
(507, 15, '爱你没差', '1,2,3,4,5', '10:00:00', '01:00:00', 1),
(508, 11, '求神拜佛', '1,2,3,4,5', '11:00:00', '24:20:00', 1),
(509, 15, '爱恨分明', '1,2,3,4,5', '11:00:00', '24:30:00', 1),
(510, 15, '暗恋很甜蜜', '1,2,3,4,5', '10:00:00', '24:30:00', 1),
(511, 15, '知了知了', '1,2,3,4,5', '09:00:00', '24:00:00', 1),
(512, 15, '福到', '1,2,3,4,5', '11:00:00', '24:30:00', 1),
(515, 15, '铁布衫', '1,2,3,4,5', '17:00:00', '01:10:00', 1),
(516, 11, '悟空', '1,2,3,4,5', '17:00:00', '01:00:00', 1),
(517, 15, '误会', '1,2,3,4,5', '11:00:00', '24:50:00', 1),
(518, 11, '悟能', '1,2,3,4,5', '09:10:00', '01:00:00', 1),
(519, 11, '悟净', '1,2,3,4,5', '10:00:00', '24:30:00', 1),
(520, 12, '晴空万里', '1,2,3,4,5', '11:00:00', '01:00:00', 1),
(521, 15, '万里无云', '1,2,3,4,5', '12:00:00', '02:00:00', 1),
(522, 15, '狼才女帽', '1,2,3,4,5', '11:00:00', '24:20:00', 1),
(523, 11, '空白记忆', '1,2,3,4,5', '17:00:00', '02:00:00', 1),
(524, 15, '记忆浮现', '1,2,3,4,5', '11:00:00', '02:00:00', 1),
(525, 11, '狼的诱惑', '1,2,3,4,5,0', '11:00:00', '01:30:00', 1),
(526, 15, '大赚特赚', '1,2,3,4,5', '11:00:00', '01:00:00', 1),
(527, 11, '牛人寂寞', '1,2,3,4,5,0', '20:00:00', '01:00:00', 1),
(528, 12, '剩者为王', '1,2,3,4,5', '17:00:00', '01:30:00', 1),
(529, 15, '骑着蜗牛过马路', '1,2,3,4,5', '18:00:00', '01:20:00', 1),
(530, 13, '志在远方', '1,2,3,4,5', '17:00:00', '02:00:00', 1),
(531, 13, '行者无疆', '1,2,3,4,5', '18:00:00', '01:00:00', 1),
(532, 15, '点.点.点', '1,2,3,4,5,0', '11:00:00', '02:00:00', 1),
(533, 15, '震荡行情好做单', '1,2,3,4,5', '09:00:00', '01:00:00', 1),
(534, 11, '望断红尘', '1,2,3,4,5', '09:00:00', '01:00:00', 1),
(535, 11, '千里一目', '1,2,3,4,5,0', '20:00:00', '23:00:00', 1),
(536, 15, '对视太阳', '1,2,3,4,5', '11:00:00', '02:00:00', 1),
(537, 11, '坚强的心', '1,2,3,4,5', '12:00:00', '02:00:00', 1),
(538, 11, '想念故乡', '1,2,3,4,5', '11:00:00', '02:00:00', 1),
(539, 15, '在他乡', '1,2,3,4,5', '09:30:00', '02:00:00', 1),
(540, 11, '故乡美', '1,2,3,4,5', '09:50:00', '01:40:00', 1),
(541, 15, '大灯泡', '1,2,3,4,5', '09:00:00', '01:00:00', 1),
(542, 11, '2017一起前行', '1,2,3,4,5', '09:00:00', '24:50:00', 1),
(543, 15, '伤害无罪', '1,2,3,4,5', '09:00:00', '24:40:00', 1),
(544, 12, '漫步云端', '1,2,3,4,5,0', '09:20:00', '01:00:00', 1),
(545, 11, '走遍全球', '1,2,3,4,5', '09:00:00', '01:00:00', 1),
(546, 15, '信念', '1,2,3,4,5', '09:30:00', '02:00:00', 1),
(547, 15, '求之不得', '1,2,3,4,5', '09:30:00', '01:40:00', 1),
(548, 11, 'LOL王者', '1,2,3,4,5', '09:30:00', '01:00:00', 1),
(549, 11, '爱我所爱', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(550, 15, '鱼仔', '1,2,3,4,5', '11:00:00', '01:50:00', 1),
(551, 11, '走在路上的鱼', '1,2,3,4,5', '09:00:00', '01:50:00', 1),
(552, 11, '假如你在会怎样', '1,2,3,4,5', '09:50:00', '24:50:00', 1),
(553, 12, '逆流成河', '1,2,3,4,5', '11:00:00', '01:00:00', 1),
(554, 11, '逆战', '1,2,3,4,5', '12:00:00', '01:30:00', 1),
(555, 11, '千万首付', '1,2,3,4,5', '11:00:00', '24:40:00', 1),
(556, 11, '逆水行走', '1,2,3,4,5', '11:00:00', '02:00:00', 1),
(557, 11, '2017永不止步', '1,2,3,4,5', '10:00:00', '01:40:00', 1),
(558, 11, '楷书', '1,2,3,4,5', '09:30:00', '02:00:00', 1),
(559, 12, '勤能补拙', '1,2,3,4,5', '18:00:00', '02:00:00', 1),
(560, 12, '5环精英', '1,2,3,4,5', '11:00:00', '01:00:00', 1),
(561, 23, '伯乐', '1,2,3,4,5', '18:00:00', '01:00:00', 1),
(562, 12, '雀圣', '1,2,3,4,5', '09:00:00', '01:10:00', 1),
(563, 22, '畅行无阻', '1,2,3,4,5', '11:00:00', '01:00:00', 1),
(564, 22, '强中高手', '1,2,3,4,5', '11:00:00', '24:50:00', 1),
(565, 14, '沙中金', '1,2,3,4,5', '11:00:00', '24:30:00', 1),
(566, 22, '成是非', '1,2,3,4,5', '17:00:00', '24:40:00', 1),
(567, 11, '二另一期', '1,2,3,4,5', '09:30:00', '01:00:00', 1),
(568, 12, '习惯就好', '1,2,3,4,5,0', '10:00:00', '24:50:00', 1),
(569, 12, '佛语，我必发', '1,2,3,4,5', '10:00:00', '24:00:00', 1),
(570, 24, '领悟', '1,2,3,4,5', '09:00:00', '01:40:00', 1),
(571, 24, '干巴拉', '1,2,3,4,5', '09:00:00', '01:00:00', 1),
(572, 24, '超人', '1,2,3,4,5,0', '20:00:00', '20:00:00', 1),
(573, 24, '我 很乖', '1,2,3,4,5', '10:00:00', '01:30:01', 1),
(574, 24, '你是假的情我是真的爱', '1,2,3,4,5', '10:00:00', '01:00:00', 1),
(575, 13, '专做白银', '1,2,3,4,5', '12:00:00', '01:00:00', 1),
(577, 22, '裸妆', '1,2,3,4,5,0', '09:00:00', '01:00:00', 1),
(578, 24, '大非农我来了', '1,2,3,4,5', '00:00:09', '10:00:00', 1),
(579, 12, '白银换黄金', '1,2,3,4,5,0', '10:00:00', '23:10:00', 1),
(580, 11, '蜂鸟粉丝', '1,2,3,4,5,0', '20:00:00', '01:00:00', 1),
(582, 11, '王保长', '1,2,3,4,5,6,0', '09:00:00', '01:00:00', 1),
(583, 1, '皮皮虾', '1,2,3,4,5', '17:00:00', '00:00:00', 1),
(600, 12, '点点点', '1,2,3,4,5,0', '20:00:00', '00:00:00', 1),
(585, 24, '一直被模仿从未被超越', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(590, 11, '东北爷们', '1,2,3,4,5', '09:00:00', '00:00:00', 1),
(587, 15, '琴旗书画', '1,2,3,4,5', '20:00:00', '23:00:00', 1),
(591, 22, '酸菜鱼', '1,2,3,4,5', '09:00:00', '01:00:00', 1),
(592, 24, '我心一旧', '1,2,3,4,5', '10:00:00', '02:00:00', 1),
(593, 11, '热血青年', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(594, 24, '狗不理包子', '1,2,3,4,5,0', '20:00:00', '00:00:00', 1),
(595, 11, '眼科医生', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(596, 12, '情人还是旧的好', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(597, 13, '哈奇士主任', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(598, 11, '我信杨 ', '1,2,3,4,5', '00:00:00', '00:00:00', 1),
(599, 13, '果园看门人', '1,2,3,4,5', '11:00:00', '00:00:00', 1);

-- --------------------------------------------------------

--
-- 表的结构 `chat_roomclass`
--

CREATE TABLE IF NOT EXISTS `chat_roomclass` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `chat_sendredbaglist`
--

CREATE TABLE IF NOT EXISTS `chat_sendredbaglist` (
  `s_r_id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total` decimal(14,2) NOT NULL,
  `num_balance` int(11) NOT NULL,
  `total_balance` decimal(14,2) NOT NULL,
  `time` int(11) NOT NULL,
  `sn` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `chat_sendredbaglist`
--

INSERT INTO `chat_sendredbaglist` (`s_r_id`, `mid`, `num`, `total`, `num_balance`, `total_balance`, `time`, `sn`, `status`) VALUES
(1, 1, 3, '3.00', 0, '0.00', 1464710626, '恭喜发财,大吉大利！', 1),
(2, 1, 5, '30.00', 2, '22.55', 1464710693, '恭喜发财,大吉大利！', 0),
(3, 1, 3, '10.00', 0, '0.00', 1464710740, '恭喜发财,大吉大利！', 1),
(4, 1, 3, '10.00', 0, '0.00', 1464711068, '恭喜发财,大吉大利！', 1),
(5, 1, 0, '1.00', 0, '1.00', 1464751519, '恭喜发财,大吉大利！', 0),
(6, 1, 1, '1.00', 0, '0.00', 1464835621, '恭喜发财,大吉大利！', 1),
(7, 1, 12, '123.00', 11, '116.37', 1464835628, '恭喜发财,大吉大利！', 0),
(8, 1, 1, '1.00', 0, '0.00', 1465219408, '恭喜发财,大吉大利！', 1),
(9, 1, 1, '0.01', 0, '0.00', 1465378163, '恭喜发财,大吉大利！', 1),
(10, 1, 0, '0.01', 0, '0.01', 1465378200, '恭喜发财,大吉大利！', 0),
(11, 1, 2, '11.00', 2, '11.00', 1465608176, '恭喜发财,大吉大利！', 0),
(12, 1, 11, '23.00', 11, '23.00', 1465610061, '恭喜发财,大吉大利！', 0),
(13, 1, 12, '1.00', 11, '0.85', 1465692245, '恭喜发财,大吉大利！', 0),
(14, 1, 0, '13.00', 0, '13.00', 1465692256, '恭喜发财,大吉大利！', 0),
(15, 1, 2, '1.00', 2, '1.00', 1465692527, '恭喜发财,大吉大利！', 0),
(16, 1, 0, '13.00', 0, '13.00', 1465692540, '恭喜发财,大吉大利！', 0),
(17, 1, 12, '1.00', 12, '1.00', 1465692667, '恭喜发财,大吉大利！', 0),
(18, 1, 2, '13.00', 1, '12.14', 1465692678, '恭喜发财,大吉大22利！', 0),
(19, 1, 3, '3.00', 2, '2.70', 1465692691, '恭喜发财,大吉大利！', 0),
(20, 1, 0, '2.00', 0, '2.00', 1465692702, '恭喜发财,大吉大利！', 0),
(21, 1, 1, '1.00', 0, '0.00', 1465692741, '恭喜发财,大吉大利！', 1),
(22, 1, 0, '3.00', 0, '3.00', 1465692750, '恭喜发财,大吉大利！', 0),
(23, 1, 0, '1.00', 0, '1.00', 1465692902, '恭喜发财,大吉大利！', 0),
(24, 1, 1, '1.00', 1, '1.00', 1465692965, '恭喜发财,大吉大利！', 0),
(25, 1, 1, '1.00', 0, '0.00', 1467452352, '恭喜发财,大1吉大利！', 1),
(26, 1, 1, '1.00', 0, '0.00', 1467454152, '恭喜发财,大吉大利！', 1);

-- --------------------------------------------------------

--
-- 表的结构 `chat_slide`
--

CREATE TABLE IF NOT EXISTS `chat_slide` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ico` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `w` int(11) DEFAULT NULL,
  `h` int(11) DEFAULT NULL,
  `target` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s` smallint(1) DEFAULT '0',
  `ov` int(11) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_slide`
--

INSERT INTO `chat_slide` (`id`, `title`, `ico`, `url`, `w`, `h`, `target`, `s`, `ov`) VALUES
(1, '轮播广告1', '/upload/upfile/day_160830/201608302321375155.png', '/upload/upfile/day_160830/201608302321375155.png', 766, 233, 'NewWin', 0, 10),
(2, '图片1', '/upload/upfile/day_160830/201608302327267413.png', '/upload/upfile/day_160830/201608302327267413.png', 765, 234, 'QPWin', 0, 3),
(3, '图片2', '/upload/upfile/day_160830/201608302321022665.png', '/upload/upfile/day_160830/201608302321022665.png', 766, 233, 'QPWin', 0, 111);

-- --------------------------------------------------------

--
-- 表的结构 `chat_tx_list`
--

CREATE TABLE IF NOT EXISTS `chat_tx_list` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `account` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `jine` decimal(14,2) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `bank` varchar(200) NOT NULL,
  `time` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `chat_tx_list`
--

INSERT INTO `chat_tx_list` (`id`, `mid`, `user`, `account`, `username`, `jine`, `type`, `bank`, `time`, `status`) VALUES
(2, 1, 'admin', '13131', '大苏打似的', '231.00', 1, '', 1465659048, 1);

-- --------------------------------------------------------

--
-- 表的结构 `chat_video`
--

CREATE TABLE IF NOT EXISTS `chat_video` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videocode` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ov` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `chat_video`
--

INSERT INTO `chat_video` (`id`, `title`, `videocode`, `img`, `ov`) VALUES
(1, '财经0', '<iframe src="http://www.haofangyuan.net/youku/videoyk.jsp?token=v&amp;width=620&amp;height=400&amp;auto=no&amp;id=XMTYwNzE5MTE5Mg==" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" scrolling="no"></iframe>', '', 1),
(2, '财经1', '<iframe src="http://www.haofangyuan.net/youku/videoyk.jsp?token=v&amp;width=620&amp;height=400&amp;auto=no&amp;id=XMTM3MDI5OTM3Mg==" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" scrolling="no"></iframe>', '', 0),
(3, '财经2', '<iframe src="http://www.haofangyuan.net/youku/videoyk.jsp?token=v&amp;width=620&amp;height=400&amp;auto=no&amp;id=XMjUyODcwNzQ0" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" scrolling="no"></iframe>', '', 0),
(4, '财经3111', '<iframe src="http://www.haofangyuan.net/youku/videoyk.jsp?token=v&amp;width=620&amp;height=400&amp;auto=no&amp;id=XMTU0OTc4NzU0OA==" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" scrolling="no"></iframe>', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `chat_yk_members`
--

CREATE TABLE IF NOT EXISTS `chat_yk_members` (
  `uid` mediumint(8) unsigned NOT NULL,
  `userid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `regdate` int(10) NOT NULL,
  `regip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `lastvisit` int(10) NOT NULL,
  `lastactivity` int(10) NOT NULL,
  `onlinetime` int(11) NOT NULL,
  `realname` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gid` mediumint(9) DEFAULT '0',
  `fuser` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuser` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` smallint(1) DEFAULT '0',
  `remarks` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_apps_files`
--
ALTER TABLE `chat_apps_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_apps_hd`
--
ALTER TABLE `chat_apps_hd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_apps_jyts`
--
ALTER TABLE `chat_apps_jyts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_apps_manage`
--
ALTER TABLE `chat_apps_manage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_apps_rank`
--
ALTER TABLE `chat_apps_rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_apps_scpl`
--
ALTER TABLE `chat_apps_scpl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_apps_topmanage`
--
ALTER TABLE `chat_apps_topmanage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_apps_vote`
--
ALTER TABLE `chat_apps_vote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_apps_wt`
--
ALTER TABLE `chat_apps_wt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_auth_group`
--
ALTER TABLE `chat_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_auth_rule`
--
ALTER TABLE `chat_auth_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_ban`
--
ALTER TABLE `chat_ban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_chatlog`
--
ALTER TABLE `chat_chatlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `state` (`state`) USING BTREE;

--
-- Indexes for table `chat_config`
--
ALTER TABLE `chat_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `chat_confmessage`
--
ALTER TABLE `chat_confmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_confpay`
--
ALTER TABLE `chat_confpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_consumelist`
--
ALTER TABLE `chat_consumelist`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `chat_course`
--
ALTER TABLE `chat_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_customerservice`
--
ALTER TABLE `chat_customerservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_gag`
--
ALTER TABLE `chat_gag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_getredbaglist`
--
ALTER TABLE `chat_getredbaglist`
  ADD PRIMARY KEY (`g_r_id`);

--
-- Indexes for table `chat_gift_class`
--
ALTER TABLE `chat_gift_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_gift_goods`
--
ALTER TABLE `chat_gift_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_gift_list`
--
ALTER TABLE `chat_gift_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_gift_record`
--
ALTER TABLE `chat_gift_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_gold_log`
--
ALTER TABLE `chat_gold_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_lecturer`
--
ALTER TABLE `chat_lecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_memberfields`
--
ALTER TABLE `chat_memberfields`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`) USING BTREE,
  ADD KEY `nickname` (`nickname`) USING BTREE;

--
-- Indexes for table `chat_memberonlines`
--
ALTER TABLE `chat_memberonlines`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `chat_members`
--
ALTER TABLE `chat_members`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `fuser` (`fuser`) USING BTREE,
  ADD KEY `tuser` (`tuser`) USING BTREE;

--
-- Indexes for table `chat_mobilelist`
--
ALTER TABLE `chat_mobilelist`
  ADD PRIMARY KEY (`mbid`);

--
-- Indexes for table `chat_msgs`
--
ALTER TABLE `chat_msgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `state` (`state`) USING BTREE;

--
-- Indexes for table `chat_notice`
--
ALTER TABLE `chat_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_order_list`
--
ALTER TABLE `chat_order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_payitem`
--
ALTER TABLE `chat_payitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_payorder`
--
ALTER TABLE `chat_payorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_popcs`
--
ALTER TABLE `chat_popcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_prizecdk`
--
ALTER TABLE `chat_prizecdk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_prizeconf`
--
ALTER TABLE `chat_prizeconf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_prizeset`
--
ALTER TABLE `chat_prizeset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_rebotslist`
--
ALTER TABLE `chat_rebotslist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_roomclass`
--
ALTER TABLE `chat_roomclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_sendredbaglist`
--
ALTER TABLE `chat_sendredbaglist`
  ADD PRIMARY KEY (`s_r_id`);

--
-- Indexes for table `chat_slide`
--
ALTER TABLE `chat_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_tx_list`
--
ALTER TABLE `chat_tx_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `chat_video`
--
ALTER TABLE `chat_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_yk_members`
--
ALTER TABLE `chat_yk_members`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE,
  ADD KEY `fuser` (`fuser`) USING BTREE,
  ADD KEY `tuser` (`tuser`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_apps_files`
--
ALTER TABLE `chat_apps_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `chat_apps_hd`
--
ALTER TABLE `chat_apps_hd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `chat_apps_jyts`
--
ALTER TABLE `chat_apps_jyts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `chat_apps_manage`
--
ALTER TABLE `chat_apps_manage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `chat_apps_rank`
--
ALTER TABLE `chat_apps_rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `chat_apps_scpl`
--
ALTER TABLE `chat_apps_scpl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `chat_apps_topmanage`
--
ALTER TABLE `chat_apps_topmanage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `chat_apps_vote`
--
ALTER TABLE `chat_apps_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `chat_apps_wt`
--
ALTER TABLE `chat_apps_wt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `chat_auth_group`
--
ALTER TABLE `chat_auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `chat_auth_rule`
--
ALTER TABLE `chat_auth_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `chat_ban`
--
ALTER TABLE `chat_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=536;
--
-- AUTO_INCREMENT for table `chat_chatlog`
--
ALTER TABLE `chat_chatlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `chat_config`
--
ALTER TABLE `chat_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `chat_confmessage`
--
ALTER TABLE `chat_confmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `chat_confpay`
--
ALTER TABLE `chat_confpay`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `chat_consumelist`
--
ALTER TABLE `chat_consumelist`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `chat_course`
--
ALTER TABLE `chat_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `chat_customerservice`
--
ALTER TABLE `chat_customerservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `chat_gag`
--
ALTER TABLE `chat_gag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `chat_getredbaglist`
--
ALTER TABLE `chat_getredbaglist`
  MODIFY `g_r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `chat_gift_class`
--
ALTER TABLE `chat_gift_class`
  MODIFY `id` tinyint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `chat_gift_goods`
--
ALTER TABLE `chat_gift_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `chat_gift_list`
--
ALTER TABLE `chat_gift_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chat_gift_record`
--
ALTER TABLE `chat_gift_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=770;
--
-- AUTO_INCREMENT for table `chat_gold_log`
--
ALTER TABLE `chat_gold_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=307;
--
-- AUTO_INCREMENT for table `chat_lecturer`
--
ALTER TABLE `chat_lecturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `chat_members`
--
ALTER TABLE `chat_members`
  MODIFY `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=289;
--
-- AUTO_INCREMENT for table `chat_mobilelist`
--
ALTER TABLE `chat_mobilelist`
  MODIFY `mbid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `chat_msgs`
--
ALTER TABLE `chat_msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `chat_notice`
--
ALTER TABLE `chat_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `chat_order_list`
--
ALTER TABLE `chat_order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `chat_payitem`
--
ALTER TABLE `chat_payitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `chat_payorder`
--
ALTER TABLE `chat_payorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chat_popcs`
--
ALTER TABLE `chat_popcs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `chat_prizecdk`
--
ALTER TABLE `chat_prizecdk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `chat_prizeconf`
--
ALTER TABLE `chat_prizeconf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `chat_prizeset`
--
ALTER TABLE `chat_prizeset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `chat_rebotslist`
--
ALTER TABLE `chat_rebotslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=601;
--
-- AUTO_INCREMENT for table `chat_roomclass`
--
ALTER TABLE `chat_roomclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `chat_sendredbaglist`
--
ALTER TABLE `chat_sendredbaglist`
  MODIFY `s_r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `chat_slide`
--
ALTER TABLE `chat_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `chat_tx_list`
--
ALTER TABLE `chat_tx_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `chat_video`
--
ALTER TABLE `chat_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `chat_yk_members`
--
ALTER TABLE `chat_yk_members`
  MODIFY `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
