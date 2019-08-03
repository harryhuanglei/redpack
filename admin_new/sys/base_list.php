<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'sys_base') === false) exit("没有权限！");
switch($act){
	case "room_del":
          room_del($id);
		header("location:base_list.php");
	break;
}
?>
<!DOCTYPE HTML>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
<link href="../assets/css/bui-min.css" rel="stylesheet" type="text/css" />
<link href="../assets/css/page-min.css" rel="stylesheet" type="text/css" />
<!-- 下面的样式，仅是为了显示代码，而不应该在项目中使用-->
<link href="../assets/css/prettify.css" rel="stylesheet" type="text/css" />
<style type="text/css">
code { padding: 0px 4px; color: #d14; background-color: #f7f7f9; border: 1px solid #e1e1e8; }
</style>

</head>
<body>
<div class="container"  style=" min-width:1000px;">
<ul class="breadcrumb">
		<li class="active">
			<button type="submit" onClick="addroom('添加房间')" class="button button-success" id="add_group_bt"><i
					class="icon icon-plus icon-white"></i> 添加
			</button>
			&nbsp;&nbsp;</li>
	</ul>

  <table  class="table table-bordered table-hover definewidth m10">
    <thead>
      <tr style="font-weight:bold" >
        <td width="40" align="center" bgcolor="#FFFFFF">房间号</td>
        <td width="80" align="center" bgcolor="#FFFFFF">房间名</td>
        <td width="150" bgcolor="#FFFFFF">房间Logo</td>
        <td width="80" align="center" bgcolor="#FFFFFF">当前讲师</td>
        <td width="30" align="center" bgcolor="#FFFFFF">系统状态</td>
        <td width="120" align="center" bgcolor="#FFFFFF">操作</td>
      </tr>
    </thead>
<?php
$sql="select * from {$tablepre}config";

echo roomlist(20,$sql,'
    <tr>
      <td bgcolor="#FFFFFF" align="center">{rid}</td>
	  <td align="center" bgcolor="#FFFFFF"><a href="/index.php?rid={rid}" target="_blank">{title}</a></td>
      <td  align="center" bgcolor="#FFFFFF"><img src="{logo}" style="height:30px;"/></td>
      <td align="center" bgcolor="#FFFFFF">{defvideonick}</td>
	  <td align="center" bgcolor="#FFFFFF"><script>if({state}==0)document.write("关闭");if({state}==1)document.write("开启");if({state}==2)document.write("加密") </script>&nbsp;</td>
      <td align="center" bgcolor="#FFFFFF">
      <button type="button" class="button button-mini button-info" onClick="roomedit(\'{id}\')" ><i class="x-icon x-icon-small icon-wrench icon-white"></i>设置</button>
      <button type="button" class="button button-mini button-danger" onclick="if(confirm(\'确定删除用户？\'))location.href=\'?act=room_del&id={id}\'"><i class="x-icon x-icon-small icon-trash icon-white"></i>删除</button></td>
    </tr>
')?>


  </table>
    <ul class="breadcrumb">
    <li class="active"><?=$pagenav?>
    </li>
  </ul>
</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../assets/js/bui.js"></script>
<script type="text/javascript" src="../assets/js/config.js"></script>
<script type="text/javascript" src="../../upload/swfupload/swfupload.js"></script>
<script>
	function addroom(name) {
		top.topManager.openPage({
			id: 'addroom',
			href: 'sys/base_add.php',
			title: name
		});
		top.topManager.reloadPage();
	}
	function roomedit(id) {
		top.topManager.openPage({
			id: 'roomdedit',
			href: 'sys/base.php?roomid='+id,
			title: '房间设置'
		});
		top.topManager.reloadPage();
	}
function openUser(id,type){
	dialog.set('bodyContent','<iframe src="user_edit.php?id='+id+'&type='+type+'" scrolling="yes" frameborder="0" height="100%" width="100%"></iframe>');
	dialog.updateContent();
	dialog.show();
}
function addUser(){
  dialog.set('bodyContent','<iframe src="user_add.php" scrolling="yes" frameborder="0" height="100%" width="100%"></iframe>');
  dialog.updateContent();
  dialog.show();
}

  </script>
</body>
</html>
