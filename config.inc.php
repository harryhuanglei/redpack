<?php
$dbhost = '127.0.0.1';
$dbuser = 'root';
//$dbpw = 'QcFAzYyYnNZa8Bmt';
$dbpw = '123456';
$dbname = 'chat';
$tablepre = 'chat_';
$dbcharset = '';
$charset = 'utf-8';
$goldname = "金币";
$discount = 0.5;
$adminemail = 'admin@your.com';
date_default_timezone_set("Asia/Shanghai");
$timeoffset = 0;
$upgrade = 15;
$tserver_key = "this is key!!!";
$guest = true;
$reg_unallowable = "|江泽民|毛泽东|邓小平";
$msg_unallowable = "黑平台|返佣";
$ipmax = 5;
$linkUCenter = false;
if ($linkUCenter) {
	define('UC_CONNECT', 'mysql');
	define('UC_DBHOST', 'localhost:3307');
	define('UC_DBUSER', 'root');
	define('UC_DBPW', 'phpnow');
	define('UC_DBNAME', 'ucenter');
	define('UC_DBCHARSET', 'utf8');
	define('UC_DBTABLEPRE', '`ucenter`.uc_');
	define('UC_DBCONNECT', '0');
	define('UC_KEY', '123123');
	define('UC_API', 'http://192.168.1.2:81/uc_server');
	define('UC_CHARSET', 'utf-8');
	define('UC_IP', '');
	define('UC_APPID', '1');
	define('UC_PPP', '20');
//    grant all privileges on *.* to origin@'103.93.46.162'identified by '123456';
} ?>