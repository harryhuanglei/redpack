<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'mkt_prizelist') === false) exit("没有权限！");
switch ($act) {
	case "prizelist_del":
		prizelist_del($id);
		break;
	case "tx_status":
		tx_status($id);
		break;
} ?>
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
	<script>
		Date.prototype.Format = function (fmt) { //author: meizz
			var o = {
				"M+": this.getMonth() + 1, //月份
				"d+": this.getDate(), //日
				"h+": this.getHours(), //小时
				"m+": this.getMinutes(), //分
				"s+": this.getSeconds(), //秒
				"q+": Math.floor((this.getMonth() + 3) / 3), //季度
				"S": this.getMilliseconds() //毫秒
			};
			if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
			for (var k in o)
				if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
			return fmt;
		}
		function ftime(time) {
			return new Date(time * 1000).Format("yyyy-MM-dd hh:mm");
			;
		}

	</script>
</head>
<body>
<div class="container" style=" min-width:1000px;">
<form class="form-horizontal" action="" method="get">
		<ul class="breadcrumb">
			<li class="active">
				关键字：
				<input type="text" name="key" id="key" class="abc input-default" placeholder="">
				&nbsp;&nbsp;
				<button type="submit" class="button ">查询</button>
				   手机号,奖品名为查询字段			</li>
		</ul>
  </form>
  <table class="table table-bordered table-hover definewidth m10">
		<thead>
		<tr style="font-weight:bold">
			<td width="40" align="center" bgcolor="#FFFFFF">编号</td>
            <td width="70" align="center" bgcolor="#FFFFFF">手机号</td>
            <td width="70" align="center" bgcolor="#FFFFFF">奖品</td>
			<td width="130" align="center" bgcolor="#FFFFFF">提交时间</td>
			<td width="130" align="center" bgcolor="#FFFFFF">操作</td>
		</tr>
		</thead>
		<?php
		echo prizelist_list(20, $key, '
    <tr>
      <td bgcolor="#FFFFFF" align="center">{mbid}</td>
	  <td align="center" bgcolor="#FFFFFF">{mobile}</td>
	  <td align="center" bgcolor="#FFFFFF">{prize}</td>
      <td align="center" bgcolor="#FFFFFF"><script>document.write(ftime({time}));</script></td>
      <td align="center" bgcolor="#FFFFFF">
      <button class="button button-mini button-danger" onclick="if(confirm(\'确定删除该项？\'))location.href=\'?act=prizelist_del&id={mbid}\'" ><i class="x-icon x-icon-small icon-trash icon-white"></i>删除</button></td>
    </tr>
') ?>


	</table>
	<ul class="breadcrumb">
		<li class="active"><?= $pagenav ?>
		</li>
	</ul>
</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../assets/js/bui.js"></script>
<script type="text/javascript" src="../assets/js/config.js"></script>
<script type="text/javascript">
	var Calendar = BUI.Calendar
	var datepicker = new Calendar.DatePicker({
		trigger: '.calendar-time',
		showTime: true,
		autoRender: true
	});
</script>
</body>
</html>