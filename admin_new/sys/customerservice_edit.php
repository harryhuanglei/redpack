<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'sys_customerservice') === false) exit("没有权限！");
if ($act == "customerservice_add") {
	customerservice_add($name, $url, $img, $ov);
	$id = $db->insert_id();
	$type = 'edit';
} else if ($act == "customerservice_edit") {
	customerservice_edit($id, $name, $url, $img, $ov);
}
$query = $db->query("select * from {$tablepre}customerservice where id='$id'");
if ($db->num_rows($query) > 0) $row = $db->fetch_row($query); ?>
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

		input, select ,button {
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

	<form action="?id=<?= $id ?>&type=<?= $type ?>" method="post" enctype="application/x-www-form-urlencoded">


		<table class="table table-bordered table-hover definewidth m10">
			<tr>
				<td width="30" class="tableleft" style="width:40px;">名称：</td>
				<td><input name="name" type="text" id="name" value="<?= $row[name] ?>"/></td>
			</tr>
			<tr>
				<td width="30" class="tableleft">客服链接：</td>
				<td><input name="url" type="text" id="url" style="width:350px;" value="<?= $row[url] ?>"/>
                </br></br>

				普通QQ号码链接：http://wpa.qq.com/msgrd?v=3&uin=QQ号码&site=qq&menu=yes </br>
				企业或营销QQ链接：http://crm2.qq.com/page/portalpage/wpa.php?uin=QQ号码&aty=0&a=0&curl=&ty=1 </br>
				其他第三方平台客服平台请填写第三方平台给以的链接
                </td>
			</tr>
			<tr>
				<td width="30" class="tableleft">图标：</td>
				<td><input name="img" type="text" id="img" style="width:350px;" value="<?= $row[img] ?>"/> <button type="button" class="button button-mini button-success"><span id="img_up_bnt"></span>
					</button> </td>
			</tr>
			<tr>
				<td width="30" class="tableleft">排序：</td>
				<td><input name="ov" type="text" id="ov" style="width:50px;" value="<?= $row[ov] ?>"/></td>
			</tr>			
		</table>

		<div style="position:fixed; bottom:0; background: #FFF; width:100%; padding-top:5px;">
			<button type="submit" class="button button-success">确定</button>
			<button type="button" class="button" onClick="window.parent.dialog.close()">关闭</button>
			<input type="hidden" name="act" value="customerservice_<?= $type ?>">
			<input type="hidden" name="id" value="<?= $id ?>">
			<input type="hidden" name="type" value="<?= $type ?>">
		</div>
	</form>

</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../../upload/swfupload/swfupload.js"></script>
<script type="text/javascript" src="../assets/js/bui.js"></script>
<script type="text/javascript" src="../assets/js/config.js"></script>
<script type="text/javascript" src="../../xheditor/xheditor.js"></script>
<script type="text/javascript" src="../../xheditor/xheditor_lang/zh-cn.js"></script>
<script>

	function swfupload_ok(fileObj, server_data) {

		var data = eval("(" + server_data + ")");
		$("#" + data.msg.info).val(data.msg.url);
	}
	$(function () {


		var swfdef = {
			// 按钮设置
			file_post_name: "filedata",
			button_width: 30,
			button_height: 18,
			button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
			button_cursor: SWFUpload.CURSOR.HAND,
			button_text: '上传',
			button_text_style: ".upbnt{ color:#00F}",
			button_text_left_padding: 0,
			button_text_top_padding: 0,
			upload_success_handler: swfupload_ok,
			file_dialog_complete_handler: function () {
				this.startUpload();
			},
			file_queue_error_handler: function () {
				alert("选择文件错误");
			}
		}
		swfdef.flash_url = "../../upload/swfupload/swfupload.swf";
		swfdef.button_placeholder_id = "img_up_bnt";
		swfdef.file_types = "*.gif;*.jpg;*.png";
		swfdef.upload_url = "../../upload/upload.php";
		swfdef.post_params = {"info": "img"}

		swfu = new SWFUpload(swfdef);
/*
		var swfimg = swfdef;
		swfimg.button_placeholder_id = "img_up_bnt";
		swfimg.file_types = "*.gif;*.jpg;*.png";
		swfimg.post_params = {"info": "img"}
		swfimg = new SWFUpload(swfimg);

		var swfbg = swfdef;
		swfbg.button_placeholder_id = "bg_up_bnt";
		swfbg.file_types = "*.gif;*.jpg;*.png";
		swfbg.post_params = {"info": "bg"}
		swfubg = new SWFUpload(swfbg);

		var swfewm = swfdef;
		swfewm.button_placeholder_id = "ewm_up_bnt";
		swfewm.file_types = "*.gif;*.jpg;*.png";
		swfewm.post_params = {"info": "ewm"}
		swfuewm = new SWFUpload(swfewm);
	
*/

	});
	

</script>
</body>
</html>