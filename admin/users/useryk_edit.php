<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'users_admin') === false) exit("没有权限！");
if ($act == "useryk_edit") {
	useryk_edit($id, $userid, $username, $realname, $phone, $fuser, $tuser ,$state, $remarks, $nickname);
} ?>
<!DOCTYPE HTML>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link href="../assets/css/bs3/dpl-min.css" rel="stylesheet" type="text/css" />
	<link href="../assets/css/bs3/bui-min.css" rel="stylesheet" type="text/css" />
	<link href="../assets/css/page-min.css" rel="stylesheet" type="text/css" />
	<!-- 下面的样式，仅是为了显示代码，而不应该在项目中使用-->
	<link href="../assets/css/prettify.css" rel="stylesheet" type="text/css"/>
	<style type="text/css">
		code {
			padding: 0px 4px;
			color: #d14;
			background-color: #f7f7f9;
			border: 1px solid #e1e1e8;
		}

		input, select {
			vertical-align: middle;
		}

		.liw {
			width: 160px;
			height: 25px;
			line-height: 25px;
		}
	</style>
</head>
<body>
<div class="container" style="margin-bottom:50px;">
	<?php

	echo userykinfo($id, '
<form action="?id={uid}" method="post" enctype="application/x-www-form-urlencoded">
  <ul class="breadcrumb">
  <div style="border-bottom:1px dashed #CCCCCC; padding:5px; margin-bottom:5px;"><strong>[{username}] {userid}</strong></div>
<table class="table table-bordered table-hover definewidth m10">
			<tr>
            <td width="80" class="tableleft">审核状态：</td>
            <td><select name="state" id="state" >
			<option value="{state}">S:{state}不变</option>
              <option value="1">S:1已审核</option>
			  <option value="0">S:0未审核</option>
            </select>&nbsp;</td>
          </tr>
		   <tr>
            <td width="80" class="tableleft" style="width:70px;">游客ID：</td>
            <td><input name="userid" type="text" id="userid" style="width:350px;" value="{userid}"/></td>
          </tr>
		  <tr>
            <td width="80" class="tableleft" style="width:70px;">昵称：</td>
            <td><input name="username" type="text" id="username" style="width:350px;" value="{username}"/></td>
          </tr>
          <tr>
            <td width="80" class="tableleft" style="width:70px;">QQ号码：</td>
            <td><input name="realname" type="text" id="realname" style="width:350px;" value="{realname}"/></td>
          </tr>
          <tr>
            <td width="80" class="tableleft">手机号码：</td>
            <td><input name="phone" type="text" id="phone" style="width:350px;" value="{phone}"/></td>
          </tr>
          <tr>
            <td width="80" class="tableleft">用 户 组：</td>
            <td>游客</td>
          </tr>
          <tr>
            <td width="80" class="tableleft">用户归宿：</td>
            <td><input name="fuser" type="text" id="fuser" style="width:350px;" value="{fuser}"/></td>
          </tr>
          <tr>
            <td width="80" class="tableleft">推广用户：</td>
            <td><input name="tuser" type="text" id="tuser" style="width:350px;" value="{tuser}"/></td>
          </tr>
          <tr>
            <td width="80" class="tableleft">其他备注：</td>
            <td><textarea name="remarks" id="remarks" style="width:350px;">{remarks}</textarea></td>
          </tr>
        </table>

  </ul>
  <div style="position:fixed; bottom:0; background: #FFF; width:100%; padding-top:5px;">
    <button type="submit"  class="button button-success">确定</button>
    <button type="button"  class="button" onclick="window.parent.dialog.close()">关闭</button>
    <input type="hidden" name="act" value="useryk_edit">
</div>
  </form>
') ?>
</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../assets/js/bui.js"></script>
<script type="text/javascript" src="../assets/js/config.js"></script>
<script type="text/javascript" src="../../upload/swfupload/swfupload.js"></script>
<script>

</script>
</body>
</html>