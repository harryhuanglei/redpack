<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'users_admin') === false) exit("没有权限！");
if ($act == "user_edit") {
	user_edit($id, $username, $realname, $password, $phone, $money, $gid, $fuser, $tuser, $sn, $state, $nickname);
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
	$query = $db->query("select * from {$tablepre}auth_group order by id asc");
	while ($row = $db->fetch_row($query)) {
		$group .= '<option value="' . $row[id] . '">GID:' . $row[id] . '-' . $row[title] . '</option>';
	}
	if (stripos(auth_group($_SESSION['login_gid']), 'users_group') === false) {
		$group = '';
	}
	echo userinfo($id, '
<form action="?id={uid}" method="post" enctype="application/x-www-form-urlencoded">
  <ul class="breadcrumb">
  <div style="border-bottom:1px dashed #CCCCCC; padding:5px; margin-bottom:5px;"><strong>[{username}] {nickname}</strong></div>
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
            <td width="80" class="tableleft" style="width:70px;">用户名：</td>
            <td><input name="username" type="text" id="username" style="width:350px;" value="{username}"/></td>
          </tr>
		  <tr>
            <td width="80" class="tableleft" style="width:70px;">昵称：</td>
            <td><input name="nickname" type="text" id="nickname" style="width:350px;" value="{nickname}"/></td>
          </tr>
          <tr>
            <td width="80" class="tableleft" style="width:70px;">QQ号码：</td>
            <td><input name="realname" type="text" id="realname" style="width:350px;" value="{realname}"/></td>
          </tr>
          <tr>
            <td width="80" class="tableleft">用户密码：</td>
            <td><input name="password" type="text" id="password" /> 为空不修改密码</td>
          </tr>
          <tr>
            <td width="80" class="tableleft">手机号码：</td>
            <td><input name="phone" type="text" id="phone" style="width:350px;" value="{phone}"/></td>
          </tr>
		  <tr>
            <td width="80" class="tableleft">金额：</td>
            <td><input name="money" type="text" id="money" style="width:350px;" value="{money}"/></td>
          </tr>
          <tr>
            <td width="80" class="tableleft">用 户 组：</td>
            <td><select name="gid" id="gid" >
			<option value="{gid}">GID:{gid}</option>
              ' . $group . '
            </select>&nbsp;</td>
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
            <td><textarea name="sn" id="sn" style="width:350px;">{sn}</textarea></td>
          </tr>
        </table>

  </ul>
  <div style="position:fixed; bottom:0; background: #FFF; width:100%; padding-top:5px;">
    <button type="submit"  class="button button-success">确定</button>
    <button type="button"  class="button" onclick="window.parent.dialog.close()">关闭</button>
    <input type="hidden" name="act" value="user_edit">
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