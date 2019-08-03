<?php
require_once '../include/common.inc.php';
$query = $db->query("select * from  {$tablepre}prizeconf where id=1");
$row = $db->fetch_row($query); 
function juhecurl($url, $params = false, $ispost = 0)
{
	$httpInfo = array();
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
	curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22');
	curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
	curl_setopt($ch, CURLOPT_TIMEOUT, 30);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	if ($ispost) {
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
		curl_setopt($ch, CURLOPT_URL, $url);
	} else {
		if ($params) {
			curl_setopt($ch, CURLOPT_URL, $url . '?' . $params);
		} else {
			curl_setopt($ch, CURLOPT_URL, $url);
		}
	}
	$response = curl_exec($ch);
	if ($response === FALSE) {
		return false;
	}
	$httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
	$httpInfo = array_merge($httpInfo, curl_getinfo($ch));
	curl_close($ch);
	return $response;
}

session_start();
error_reporting(0);
if ($_GET['action'] == "call_yzm") {
	$sendto = $_POST['telephone'];
	$ychar = "0,1,2,3,4,5,6,7,8,9";
	$list = explode(",", $ychar);
	$authnum = "";
	for ($i = 0; $i < 4; $i++) {
		$randnum = rand(0, 9);
		$authnum .= $list[$randnum];
	}
	$str = $authnum;
	$sendUrl = 'http://v.juhe.cn/sms/send';
	$smsConf['key'] = $row[keys];
	$smsConf['mobile'] = $sendto;
	$smsConf['tpl_id'] = $row[tempid];
	$smsConf['tpl_value'] = '#code#=' . $str;
	$content = juhecurl($sendUrl, $smsConf, 1);
	if ($content) {
		$result = json_decode($content, true);
		$error_code = $result['error_code'];
		if ($error_code == 0) {
			$_SESSION["rotatevalidate"] = $str;
			$_SESSION["rotatemobile"] = $sendto;
			$json['status'] = 1;
		} else {
			$json['status'] = 0;
		}
	} else {
		$json['status'] = 0;
	}
	echo json_encode($json);
} ?>