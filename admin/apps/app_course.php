<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'apps_course') === false) exit("没有权限！");
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
	</style>
</head>
<body>
<div class="container">
		<table class="table table-bordered table-hover definewidth m10">
			<thead>
			<tr style="font-weight:bold">
				<td width="60" align="center" bgcolor="#FFFFFF">时间</td>
                <td width="60" align="center" bgcolor="#FFFFFF">操作</td>
			</tr>
			
    <tr>
     <td align="center" bgcolor="#FFFFFF">星期一</td>
      <td align="center" bgcolor="#FFFFFF">
      <button type="button" class="button button-mini button-info" onClick="openweek('1','课程表-星期一')" ><i class="x-icon x-icon-small icon-wrench icon-white"></i>查看</button>
   	</td>
    </tr>
    <tr>
     <td align="center" bgcolor="#FFFFFF">星期二</td>
      <td align="center" bgcolor="#FFFFFF">
      <button type="button" class="button button-mini button-info" onClick="openweek('2','课程表-星期二')" ><i class="x-icon x-icon-small icon-wrench icon-white"></i>查看</button>
  	 </td>
    </tr>
    <tr>
     <td align="center" bgcolor="#FFFFFF">星期三</td>
      <td align="center" bgcolor="#FFFFFF">
      <button type="button" class="button button-mini button-info" onClick="openweek('3','课程表-星期三')" ><i class="x-icon x-icon-small icon-wrench icon-white"></i>查看</button>
  	 </td>
    </tr>
    <tr>
     <td align="center" bgcolor="#FFFFFF">星期四</td>
      <td align="center" bgcolor="#FFFFFF">
      <button type="button" class="button button-mini button-info" onClick="openweek('4','课程表-星期四')" ><i class="x-icon x-icon-small icon-wrench icon-white"></i>查看</button>
  	 </td>
    </tr>
    <tr>
     <td align="center" bgcolor="#FFFFFF">星期五</td>
      <td align="center" bgcolor="#FFFFFF">
      <button type="button" class="button button-mini button-info" onClick="openweek('5','课程表-星期五')" ><i class="x-icon x-icon-small icon-wrench icon-white"></i>查看</button>
  	 </td>
    </tr>
    <tr>
     <td align="center" bgcolor="#FFFFFF">星期六</td>
      <td align="center" bgcolor="#FFFFFF">
      <button type="button" class="button button-mini button-info" onClick="openweek('6','课程表-星期六')" ><i class="x-icon x-icon-small icon-wrench icon-white"></i>查看</button>
  	 </td>
    </tr>
    <tr>
     <td align="center" bgcolor="#FFFFFF">星期日</td>
      <td align="center" bgcolor="#FFFFFF">
      <button type="button" class="button button-mini button-info" onClick="openweek('7','课程表-星期日')" ><i class="x-icon x-icon-small icon-wrench icon-white"></i>查看</button>
  	 </td>
    </tr>
		</table>
</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../assets/js/bui.js"></script>
<script type="text/javascript" src="../assets/js/config.js"></script>

<script>
	BUI.use('bui/calendar', function (Calendar) {
		var datepicker = new Calendar.DatePicker({
			trigger: '.calendar',
			dateMask: 'yyyy-mm',
			autoRender: true
		});
	});
	BUI.use('bui/overlay', function (Overlay) {
		dialog = new Overlay.Dialog({
			title: '',
			width: 1000,
			height: 500,
			buttons: [],
			bodyContent: ''
		});
	});
	function openweek(week,title) {
		dialog.set('title',title);
		dialog.set('bodyContent', '<iframe src="app_course_edit.php?week='+ week +'" scrolling="yes" frameborder="0" height="100%" width="100%"></iframe>');
		dialog.updateContent();
		dialog.show();
	}

</script>
</body>
</html>