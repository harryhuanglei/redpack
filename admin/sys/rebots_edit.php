<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'sys_rebots') === false) exit("没有权限！");
if ($act == "rebotsuser_edit") {
	$week = implode(',', $week);
	rebotsuser_edit($id,$name,$rid,$rgroup,$week,$stime,$etime);
} 
$queryrmid = $db->query("select rid,title from {$tablepre}config order by id asc");
while ($rowid = $db->fetch_row($queryrmid)) {
$roomid .= '<option value="' . $rowid[rid] . '">房间号:' . $rowid[rid] . '-' . $rowid[title] . '</option>';
	}
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
	if (stripos(auth_group($_SESSION['login_gid']), 'sys_rebots') === false) {
		$group = '';
	}
	echo rebotsinfo($id, '
<form action="?id={id}" method="post" enctype="application/x-www-form-urlencoded">
  <ul class="breadcrumb">
  <div style="border-bottom:1px dashed #CCCCCC; padding:5px; margin-bottom:5px;"><strong>机器人[{name}]设置</strong></div>
<table class="table table-bordered table-hover definewidth m10">
		  <tr>
            <td width="80" class="tableleft" style="width:70px;">昵称：</td>
            <td><input name="name" type="text" id="name" style="width:350px;" value="{name}"/></td>
          </tr>
		  <tr>
		   <td width="80" class="tableleft">所属房间：</td>
		   <td><select name="rid" id="rid" >
		   		<option value="{rid}">房间号:{rid}</option>
              ' . $roomid . '
			  </select>
            </td>
		  </tr>
          <tr>
            <td width="80" class="tableleft">用 户 组：</td>
            <td><select name="rgroup" id="rgroup" >
			<option value="{rgroup}">GID:{rgroup}</option>
              ' . $group . '
            </select>&nbsp;</td>
          </tr>
		  <tr>
            <td width="80" class="tableleft" style="width:70px;">星期：</td>
            <td><label><input type="checkbox" name="week[]" value="1" {checked1} >一</label>
				<label><input type="checkbox" name="week[]" value="2" {checked2} >二</label>
				<label><input type="checkbox" name="week[]" value="3" {checked3} >三</label>
				<label><input type="checkbox" name="week[]" value="4" {checked4} >四</label>
				<label><input type="checkbox" name="week[]" value="5" {checked5} >五</label>
				<label><input type="checkbox" name="week[]" value="6" {checked6} >六</label>
				<label><input type="checkbox" name="week[]" value="0" {checked0} >日</label> (在线)
			</td>
          </tr>
		  <tr>
            <td width="80" class="tableleft" style="width:70px;">上线时间：</td>
            <td><input class="calendar" name="stime" type="text" id="stime" style="width:100px;" value="{stime}"/></td>
          </tr>
		  <tr>
            <td width="80" class="tableleft" style="width:70px;">离线时间：</td>
            <td><input class="calendar" name="etime" type="text" id="etime" style="width:100px;" value="{etime}"/></td>
          </tr>
        </table>

  </ul>
  <div style="position:fixed; bottom:0; background: #FFF; width:100%; padding-top:5px;">
    <button type="submit"  class="button button-success">确定</button>
    <button type="button"  class="button" onclick="window.parent.dialog.close()">关闭</button>
    <input type="hidden" name="act" value="rebotsuser_edit">
</div>
  </form>
') ?>
</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../assets/js/bui.js"></script>
<script type="text/javascript" src="../assets/js/config.js"></script>
<script type="text/javascript" src="../../upload/swfupload/swfupload.js"></script>
    <script type="text/javascript">
        BUI.use('bui/calendar',function(Calendar){
          var datepicker = new Calendar.DatePicker({
            trigger:'#stime',
			showTime : true,
            dateMask : 'HH:MM:ss',
            autoRender : true
          });
 
      var datepicker1 = new Calendar.DatePicker({
            trigger:'#etime',
            showTime : true,
            dateMask : 'HH:MM:ss',
            autoRender : true
          });
        });
    </script>
</body>
</html>