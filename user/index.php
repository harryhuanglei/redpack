<?php require_once '../include/common.inc.php';
if (isset($editface) and isset($GLOBALS["HTTP_RAW_POST_DATA"])) {
	$filename = '../face/' . $editface . '/' . $_SESSION['login_uid'] . '.gif';
	$somecontent = $GLOBALS["HTTP_RAW_POST_DATA"];
	if (!$handle = fopen($filename, 'w+')) {
		print '{code:"#1057", msg:"不能打开文"}';
		exit;
	}
	if (!fwrite($handle, $somecontent)) {
		print '{code:"#1058", msg:"不能打开文"}';
		exit;
	}
	print '{code:"#1057", msg:"成功"}';
	fclose($handle);
	exit();
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人资料</title>
<link href="style/css.css" rel="stylesheet" type="text/css" />
<script src="script/jquery.min.js"></script>
<script src="script/swfobject2.js"></script>
</head>
<body style="background:#ededed">
<?php 
include_once 'head.php'; 
?>
	<div id="sidebar" class="sidebar-fixed" >
    <?php include_once 'left.php';?>
      
     </div>
  
     <div id="content">
     	<div class="container">
        	<div class="crumbs">
            	<a href="#">首页</a>><a href="#">我的资料</a>
          </div>
          <div class="biaoge">
          		<div class="biaoge_inner">
          			<div class="tupian1 "><i><img src="../face/img.php?t=p1&u=<?= $u['uid'] ?>" width="60"></i>您好，<?=$u[nickname]?></div>
                    <div class="tian">
						<ul>
							<li>
								<span class="t">用  户  名:</span>
								<span class="c"><?=$u[username]?></span>
							</li>
                            <li>
								<span class="t">昵   称:</span>
								<span class="c"><?=$u[nickname]?></span>
							</li>
							<li>
								<span class="t">用户身份:</span>
								<span class="c"><?php $arr = group_info($u['gid']);
						echo $arr['title'] . "-" . $arr['sn']; ?></span>
							</li>
							<li>
								<span class="t">电  话:</span>
								<span class="c"><?=$u[phone]?></span>
							</li>
							<li>
								<span class="t">余 额:</span>
								<span class="c"><?=$u[money]?> <a href="/user/pay.php" target="_blank">充值</a></span>
							</li>
                            <li>
								<span class="t">鲜 花:</span>
								<span class="c"><?=$u[flower]?> </span>
							</li>
                            <li>
								<span class="t">大宝剑:</span>
								<span class="c"><?=$u[acer]?> </span>
							</li>
                            <li>
								<span class="t">飞 吻:</span>
								<span class="c"><?=$u[kiss]?> </span>
							</li>
							<li>
								<span class="t">下线</span>
								<span class="c"><?
echo $db->num_rows($db->query("select * from {$tablepre}members where tuser='$u[username]'"));
?>
 <a href="tuiguang.php" style="color:#0600FF">(详细)</a></span>
							</li>
							<li>
							<span class="t">推广链接</span>
							<span class="c">
							<?php echo "http://".$_SERVER['HTTP_HOST']."/?tg=".$u['uid'];?>	</span>
							</li>
							<li>
							</li>
                       
						</ul>
                	</div>
               		 <div class="user_edit_pic">
					<div id="epf"></div>
					<input type="button" onClick="saveToServer();" class="bc" value="确定" style="width:40px; border:0px;">
					<input type="button" onClick="$('.user_edit_pic').hide()" class="bc" value="取消" style="width:40px; border:0px; background:#666"></div>
                    <div class="tx fl">
                    	<p style="padding-bottom:10px;color:#999;">*支持jpg，png，GIF格式，文件必须在5M以下</p>
                    	<div class="xtx" style=" float:left;"><img id="imghead" src="../face/img.php?t=p1&u=<?= $u['uid'] ?>"  style="max-width:180px;max-height:180px">
                        <br />
							<span id="ep1"></span>
                        </div>
                        <div class="xtx" style=" float:left; margin-left:30px;"><img id="imghead" src="../face/img.php?t=p2&u=<?= $u['uid'] ?>"  style="max-width:200px;max-height:200px">
                        <br /><span id="ep2"></span>
                        </div>
					</div> 

<script type="text/javascript" src="../upload/swfupload/swfupload.js"></script>
<script>
	function thisMovie(movieName) {
		if (navigator.appName.indexOf("Microsoft") != -1) {
			return window[movieName];
		}
		else {
			return document[movieName];
		}
	}
	function loadImage() {
		thisMovie("PhotoEditor").loadImage(img);
	}
	function flashInit(arg) {
		setTimeout('loadImage()', 1000);
	}
	function init() {
	}
	function flashError(event) {
		//alert(event.code);
		switch (event.code) {
			case 0:
				if (event.msg == "图片加载成功！") {
					return;
				}
				if (1) {
					location.reload();
				}
				break;
			case "#1057":
				//Fid('errDiv').innerHTML = '选择的照片太小，请';
				break;
		}
	}
	function saveToServer() {
		var b = thisMovie('PhotoEditor').saveToServer('index.php?editface=' + ept + '&w');
	}
	function swfupload_ok(fileObj, server_data) {
		$('.user_edit_pic').show();
		var data = eval("(" + server_data + ")");
		img = data.msg.url;
		var wh;
		if (data.msg.info == "ep1") {
			wh = "slice_width=100&slice_height=100";
			ept = 'p1'
		}
		else {
			wh = "slice_width=110&slice_height=150";
			ept = 'p2'
		}

		var so = new SWFObject("../images/PhotoEditor.swf?imageEncoder=jpg&jpgQuality=97&" + wh, 'PhotoEditor', "325", "312", "9", "#FFF");
		so.write("epf");

		//alert(server_data);
		//var data=eval("("+server_data+")") ;
		//$("#"+data.msg.info).val(data.msg.url);
	}
	$(function () {


		var swfdef = {
			// 按钮设置
			file_post_name: "filedata",
			button_width: 60,
			button_height: 28,
			button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
			button_cursor: SWFUpload.CURSOR.HAND,
			button_text: '修改头像',
			button_text_style: ".upbnt{}",
			button_text_left_padding: 0,
			button_text_top_padding: 10,
			upload_success_handler: swfupload_ok,
			file_dialog_complete_handler: function () {
				this.startUpload();
			},
			file_queue_error_handler: function () {
				alert("选择文件错误");
			}
		}
		swfdef.flash_url = "../upload/swfupload/swfupload.swf";
		swfdef.button_placeholder_id = "ep1";
		swfdef.file_types = "*.png;*.jpg;*.gif";
		swfdef.upload_url = "../upload/upload.php";
		swfdef.post_params = {"info": "ep1"}

		swfu = new SWFUpload(swfdef);

		var swfico = swfdef;
		swfico.button_text = '修改照片';
		swfico.button_placeholder_id = "ep2";
		swfico.post_params = {"info": "ep2"}
		swfuico = new SWFUpload(swfico);

	});


</script>
</body>
</html>
