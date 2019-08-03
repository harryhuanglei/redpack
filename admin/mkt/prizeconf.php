<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'mkt_prizeconf') === false) exit("没有权限！");
if ($act == "prizeconf_edit") {
	$arr[keys] = $keys;
	$arr[tempid] = $tempid;
	$arr[onoff] = $onoff;
	//$arr[vcode] = $vcode;
	prizeconf_edit($arr,$roomid);
}
$query = $db->query("select * from  {$tablepre}prizeconf where id=1");
$row = $db->fetch_row($query); 
 ?>

<!DOCTYPE HTML>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link href="../assets/css/dpl-min.css" rel="stylesheet" type="text/css"/>
	<link href="../assets/css/bui-min.css" rel="stylesheet" type="text/css"/>
	<link href="../assets/css/page-min.css" rel="stylesheet" type="text/css"/>
	<!-- 下面的样式，仅是为了显示代码，而不应该在项目中使用-->
	<link href="../assets/css/prettify.css" rel="stylesheet" type="text/css"/>
	<style type="text/css">
		code {
			padding: 0px 4px;
			color: #d14;
			background-color: #f7f7f9;
			border: 1px solid #e1e1e8;
		}

		input, button {
			vertical-align: middle
		}
	</style>
</head>
<body>
<div class="container">
	<form action="" method="post" enctype="application/x-www-form-urlencoded">
		<table class="table table-bordered table-hover definewidth m10">
       		<tr>
				<td colspan="2">本系统默认集成聚合数据短信接口，购买短信接口请<a href="https://www.juhe.cn/docs/api/id/54" target="_blank">点击这里购买</a></td>
			</tr>
            <tr>
				<td class="tableleft" style="width:100px;">密钥(AppKey)：</td>
				<td><input name="keys" type="text" id="keys" style="width:400px;" value="<?= $row[keys] ?>"/></td>
			</tr>
            <tr>
				<td class="tableleft" style="width:100px;">模板ID：</td>
				<td><input name="tempid" type="text" id="tempid" style="width:400px;" value="<?= $row[tempid] ?>"/></td>
			</tr>         
			<tr>
				<td class="tableleft">抽奖方式：</td>
				<td><select name="onoff" id="onoff" style="width:100px;">
						<option value="1"<? if ($row[onoff] == 1) echo 'selected'; ?>>短信验证</option>
						<option value="0" <? if ($row[onoff] == 0) echo 'selected'; ?>>抽奖码&CDK</option>
					</select>				</td>
			</tr>
            
			<tr>
				<td class="tableleft"></td>
				<td>
					<button type="submit" class="button button-success"> 保存</button>
					<input type="hidden" name="act" value="prizeconf_edit"></td>
			</tr>
		</table>
  </form>
</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../../upload/swfupload/swfupload.js"></script>
<body>
</html>