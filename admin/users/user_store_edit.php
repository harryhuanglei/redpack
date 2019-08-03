<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'users_admin') === false) exit("没有权限！");
if ($act == "user_store_edit") {
	user_store($id, $store, $store_act_type, $edit_store, $desc);
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
	$query = $db->query("select us.*,us.store,if(ust.store,ust.store,0) as nstore from {$tablepre}user_store us left join chat_user_store_temp ust on us.user_id=ust.uid where user_id='{$id}'");
    $store = '0';
	while ($row = $db->fetch_row($query)) {
       $store = $row['store'];
       $use_store = $row['store']-$row['nstore'];
       $ice_store = $row['nstore'];
	}
	echo userinfo($id, '
<form action="?id={uid}" method="post" enctype="application/x-www-form-urlencoded">
  <ul class="breadcrumb">
  <div style="border-bottom:1px dashed #CCCCCC; padding:5px; margin-bottom:5px;"><strong>[{username}] {nickname}</strong></div>
<table class="table table-bordered table-hover definewidth m10">

		   <tr>
            <td width="80" class="tableleft" style="width:70px;">用户名：</td>
            <td><input name="username" type="text" id="username" style="width:350px;" readonly value="{username}"/></td>
          </tr>
		  <tr>
            <td width="80" class="tableleft" style="width:70px;">昵称：</td>
            <td><input name="nickname" type="text" id="nickname" style="width:350px;" readonly value="{nickname}"/></td>
          </tr>
         
          <tr>
            <td width="80" class="tableleft">积分变动：</td>
            <td>
            <select name="store_act_type" id="store_act_type" >
			  <option value="1">增加</option>
              <option value="0">减少</option>
            </select>&nbsp;
           <input id="edit_store" name="edit_store" value="0" class="input-txt" type="text"><br/>
           总积分：' . $store . ' 可用积分：' . $use_store . ' 冻结积分' . $ice_store . '
           </td>
            <input type="hidden" name="store" value="' . $store . '">
          </tr>
          <tr>
            <td width="80" class="tableleft">操作备注：</td>
            <td><textarea name="desc" id="desc" style="width:350px;"></textarea></td>
          </tr>
        </table>

  </ul>
  <div style="position:fixed; bottom:0; background: #FFF; width:100%; padding-top:5px;">
    <button type="submit"  class="button button-success">确定</button>
    <button type="button"  class="button" onclick="window.parent.dialog.close()">关闭</button>
    <input type="hidden" name="act" value="user_store_edit">
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