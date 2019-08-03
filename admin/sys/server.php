<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'sys_server') === false) exit("没有权限！");
if ($act == "config_edit") {
	$arr[tserver] = $tserver;
	$arr[livefp] = $livefp;
	$arr[phonefp] = $phonefp;
	$arr[rebots] = $rebots;
	$arr[defkf] = $defkf;
	$arr[vserver] = $vserver;
	$arr[livetype] = $livetype;
	$arr[defkf] = $defkf;
	$arr[tiyantime] = $tiyantime;
	$arr[fayanjiange] = $fayanjiange;
	$arr[show_loginw_interval] = $show_loginw_interval;
	$arr[rebots_yk] = $rebots_yk;
	config_edit($arr);
}
$query = $db->query("select * from  {$tablepre}config where id=1");
$row = $db->fetch_row($query); ?>
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
	</style>
</head>
<body>


<div class="container">
	<form action="" method="post" enctype="application/x-www-form-urlencoded">
		<table class="table table-bordered table-hover definewidth m10">

			<tr>
				<td class="tableleft">&nbsp;</td>
				<td>
					<button type="submit" class="button button-success"> 保存</button>
					<input type="hidden" name="act" value="config_edit"></td>
			</tr>
		</table>
	</form>

</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>

<body>
</html>