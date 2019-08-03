<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'mkt_pay') === false) exit("没有权限！");
if ($act == "confpay_edit") {
	$arr[paypid] = $paypid;
	$arr[paykey] = $paykey;
	$arr[payaccount] = $payaccount;
	//$arr[vcode] = $vcode;
	confpay_edit($arr);
}
$query = $db->query("select * from  {$tablepre}confpay where id=1");
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
				<td class="tableleft" style="width:100px;">合作者身份PID：</td>
				<td><input name="paypid" type="text" id="paypid" style="width:400px;" value="<?= $row[paypid] ?>"/></td>
			</tr>
            <tr>
				<td class="tableleft" style="width:100px;">安全校验码KEY：</td>
				<td><input name="paykey" type="password" id="paykey" style="width:400px;" value="<?= $row[paykey] ?>"/></td>
			</tr>         
              <tr>
				<td class="tableleft" style="width:100px;">收款账号：</td>
				<td><input name="payaccount" type="text" id="payaccount" style="width:400px;" value="<?= $row[payaccount] ?>"/></td>
			</tr> 
			<tr>
				<td class="tableleft"></td>
				<td>
					<button type="submit" class="button button-success"> 保存</button>
					<input type="hidden" name="act" value="confpay_edit"></td>
			</tr>
		</table>
  </form>
</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../../upload/swfupload/swfupload.js"></script>
<body>
</html>