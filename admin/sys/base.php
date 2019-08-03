<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'sys_base') === false) exit("没有权限！");

if(!isset($roomid))$roomid='1';
if(!is_numeric($roomid))exit('The room does not exist!');
$query = $db->query("select * from  {$tablepre}config where id={$roomid}");
if (!mysql_num_rows($query))exit('The room does not exist!');
$row = $db->fetch_row($query); 

if ($act == "config_edit") {
	$arr[rid] = $rid;
	$arr[title] = $title;
	$arr[rules] = implode(',', $rules);
	$arr[keys] = $keys;
	$arr[dc] = $dc;
	$arr[logo] = $logo;
	$arr[cover] = $cover;
	$arr[ico] = $ico;
	$arr[bg] = $bg;
	$arr[msgban] = $msgban;
	$arr[state] = $state;
	$arr[pwd] = $pwd;
	$arr[regaudit] = $regaudit;
	$arr[msgaudit] = $msgaudit;
	$arr[videoww] = $videoww;
	$arr[onhomepop] = $onhomepop;
	$arr[videowwc] = $videowwc;
	$arr[msglog] = $msglog;
	$arr[logintip] = $logintip;
	$arr[loginalert] = $loginalert;
	$arr[logoutalert] = $logoutalert;
	$arr[loginguest] = $loginguest;
	$arr[loginqq] = $loginqq;
	$arr[slide] = $slide;
	$arr[template] = $template;
	$arr[slidetit] = $slidetit;
	$arr[tongji] = $tongji;
	$arr[copyright] = $copyright;
	$arr[regban] = $regban;
	$arr[msgblock] = $msgblock;
	$arr[ewm] = $ewm;
	$arr[homepop] = $homepop;
	//聊天视频区域
	$arr[tserver] = $tserver;
	$arr[livefp] = $livefp;
	$arr[phonefp] = $phonefp;
	$arr[rebots] = $rebots;
	$arr[defkf] = $defkf;
	$arr[livetype] = $livetype;
	$arr[tiyantime] = $tiyantime;
	$arr[fayanjiange] = $fayanjiange;
	$arr[show_loginw_interval] = $show_loginw_interval;
	$arr[rebots_yk] = $rebots_yk;
	$arr[rebots_re] = $rebots_re;
	$arr[flowernum] = $flowernum;
	$arr[acernum] = $acernum;
	$arr[kissnum] = $kissnum;
	$arr[walk] = $walk;
	$arr[end_edit] = $end_edit;
	$arr[notice] = $notice;
	config_edit($arr,$roomid);
}
$query = $db->query("select * from  {$tablepre}config where id={$roomid}");
$row = $db->fetch_row($query); 
$rules = explode(',', $row['rules']);
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

		input, button {
			vertical-align: middle
		}
	</style>
</head>
<body>
<div class="container">
	<form action="" method="post" enctype="application/x-www-form-urlencoded">
		<table class="table table-bordered table-hover definewidth m10">
			<tr>
				<td class="tableleft" style="width:100px;">房间号：</td>
				<td><?php if($row[rid]==1) {?>您不能修改默认房间号！<input type="hidden" name="rid" id="rid" value="1"><?php } else{?><input name="rid" type="text" id="rid" style="width:400px;" value="<?= $row[rid] ?>"/><?php } ?></td>
			</tr>
        <tr>
				<td class="tableleft" style="width:100px;">用户组权限设置：</td>
				<td>
                			<?php
			$query = $db->query("select * from {$tablepre}auth_group order by id desc");
			while ($grow = $db->fetch_row($query)) {
				if (in_array($grow[id], $rules)) $checked = " checked='CHECKED'"; else $checked = ""; ?>
					<label><input type="checkbox" name="rules[]" value="<?= $grow[id] ?>" <?= $checked ?>><?= $grow[title] ?></label>

			<?php } ?>
                </td>
			</tr>
			<tr>
				<td class="tableleft" style="width:100px;">网站标题：</td>
				<td><input name="title" type="text" id="title" style="width:400px;" value="<?= $row[title] ?>"/></td>
			</tr>
			<tr>
				<td class="tableleft">公告：</td>
				<td><textarea name="notice" rows="2" id="notice" style="width:400px;"><?= $row[notice] ?>
</textarea></td>
			</tr>
			<tr>
				<td class="tableleft">下注结束语编辑：</td>
				<td><textarea name="end_edit" rows="2" id="end_edit" style="width:400px;"><?= $row[end_edit] ?>
</textarea></td>
			</tr>
			<tr>
				<td class="tableleft">走势图：</td>
				<td><textarea name="walk" rows="2" id="walk" style="width:400px;"><?= $row[walk] ?>
</textarea></td>
			</tr>
			<tr>
				<td class="tableleft">关 键 字：</td>
				<td><textarea name="keys" rows="2" id="keys" style="width:400px;"><?= $row[keys] ?>
</textarea></td>
			</tr>
			<tr>
				<td class="tableleft">站点描述：</td>
				<td><textarea name="dc" id="dc" style="width:400px;"><?= $row[dc] ?>
</textarea></td>
			</tr>
			<tr>
				<td class="tableleft">LOGO：</td>
				<td><input name="logo" type="text" id="logo" style="width:400px;" value="<?= $row[logo] ?>"/>
					<button type="button" class="button button-mini button-success"><span id="logo_up_bnt"></span>
					</button>
				</td>
			</tr>
			<tr>
				<td class="tableleft">封面：</td>
				<td><input name="cover" type="text" id="cover" style="width:400px;" value="<?= $row[cover] ?>"/>
					<button type="button" class="button button-mini button-success"><span id="cover_up_bnt"></span>
					</button> 尺寸180px X 135px
				</td>
			</tr>
			<tr>
				<td class="tableleft">ICO：</td>
				<td><input name="ico" type="text" id="ico" style="width:400px;" value="<?= $row[ico] ?>"/>
					<button type="button" class="button button-mini button-success"><span id="ico_up_bnt"></span>
					</button>
				</td>
			</tr>
			<tr>
				<td class="tableleft">背景：</td>
				<td><input name="bg" type="text" id="bg" style="width:400px;" value="<?= $row[bg] ?>"/>
					<button type="button" class="button button-mini button-success"><span id="bg_up_bnt"></span>
					</button>
				</td>
			</tr>
			<tr>
				<td class="tableleft">二维码：</td>
				<td><input name="ewm" type="text" id="ewm" style="width:400px;" value="<?= $row[ewm] ?>"/>
					<button type="button" class="button button-mini button-success"><span id="ewm_up_bnt"></span>
					</button>
				</td>
			</tr>
            <tr>
				<td class="tableleft">首页弹窗背景：</td>
				<td><input name="homepop" type="text" id="homepop" style="width:400px;" value="<?= $row[homepop] ?>"/>
					<button type="button" class="button button-mini button-success"><span id="ewm_up_bnt"></span>
					</button>&nbsp;&nbsp;默认尺寸800px X 285px
				</td>
			</tr>
			<tr>
				<td class="tableleft">注册过滤：</td>
				<td><textarea name="regban" id="regban" style="width:400px;"><?= $row[regban] ?>
</textarea></td>
			</tr>
			<tr>
				<td class="tableleft">聊天过滤：</td>
				<td><textarea name="msgban" id="msgban" style="width:400px;"><?= $row[msgban] ?>
</textarea></td>
			</tr>
			<tr>
				<td class="tableleft">系统状态：</td>
				<td><select name="state" id="state" style="width:100px;"
							onChange="if(this.value=='2')$('#pwd_s').show();else $('#pwd_s').hide(); ">
						<option value="1"<? if ($row[state] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[state] == 0) echo 'selected'; ?>>关闭</option>
						<option value="2" <? if ($row[state] == 2) echo 'selected'; ?>>加密</option>

					</select>
					<label id="pwd_s" style="display:none"> 密码：
						<input name="pwd" type="text" id="pwd" value="<?= $row[pwd] ?>"/>
					</label></td>

			</tr>
			<tr>
				<td class="tableleft">&nbsp;</td>
				<td>消息屏蔽：
					<label for="msgblock"></label>
					<select name="msgblock" id="msgblock" style="width:70px;">

						<option value="1" <? if ($row[msgblock] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[msgblock] == 0) echo 'selected'; ?>>关闭</option>
					</select>
					&nbsp;消息记录：
					<label for="msglog"></label>
					<select name="msglog" id="msglog" style="width:70px;">

						<option value="1" <? if ($row[msglog] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[msglog] == 0) echo 'selected'; ?>>关闭</option>
					</select>
					&nbsp;消息审核：
					<label for="msgaudit"></label>
					<select name="msgaudit" id="msgaudit" style="width:70px;">

						<option value="1" <? if ($row[msgaudit] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[msgaudit] == 0) echo 'selected'; ?>>关闭</option>
					</select>
                    &nbsp; 视频文字：
					<label for="msgaudit"></label>
					<select name="videoww" id="videoww" style="width:70px;">

						<option value="1" <? if ($row[videoww] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[videoww] == 0) echo 'selected'; ?>>关闭</option>
					</select>
                    &nbsp; 首页弹窗：
					<label for="msgaudit"></label>
					<select name="onhomepop" id="onhomepop" style="width:70px;">

						<option value="1" <? if ($row[onhomepop] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[onhomepop] == 0) echo 'selected'; ?>>关闭</option>
					</select>
                    </td>
			</tr>
			<tr>
				<td class="tableleft">&nbsp;</td>
				<td>登录提示：
					<label for="logintip"></label>
					<select name="logintip" id="select6" style="width:70px;">

						<option value="1" <? if ($row[logintip] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[logintip] == 0) echo 'selected'; ?>>关闭</option>
					</select>
					&nbsp;登录提醒：
					<select name="loginalert" id="loginalert" style="width:70px;">

						<option value="1" <? if ($row[loginalert] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[loginalert] == 0) echo 'selected'; ?>>关闭</option>
					</select>
                    &nbsp;退出提醒：
					<select name="logoutalert" id="logoutalert" style="width:70px;">

						<option value="1" <? if ($row[logoutalert] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[logoutalert] == 0) echo 'selected'; ?>>关闭</option>
					</select>
					&nbsp;游客登录：
					<select name="loginguest" id="loginguest" style="width:70px;">

						<option value="1" <? if ($row[loginguest] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[loginguest] == 0) echo 'selected'; ?>>关闭</option>
					</select>
					<!--
&nbsp;第三方登录：
<label for="loginqq"></label>
<select name="loginqq" id="loginqq" style="width:70px;">
<option value="<?= $row[loginqq] ?>"><?= $row[loginqq] ?>:不变</option>
  <option value="1">1是</option>
  <option value="0">0否</option>
</select>
-->
					&nbsp; 注册审核：
					<select name="regaudit" id="regaudit" style="width:70px;">

						<option value="1" <? if ($row[regaudit] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[regaudit] == 0) echo 'selected'; ?>>关闭</option>
					</select>
					</td>
			</tr>
		<tr>
				<td class="tableleft">&nbsp;</td>
					<td>
                    &nbsp;轮播广告：
					<select name="slide" id="slide" style="width:70px;">
						<option value="1" <? if ($row[slide] == 1) echo 'selected'; ?>>开启</option>
						<option value="0" <? if ($row[slide] == 0) echo 'selected'; ?>>关闭</option>
					</select>
                   &nbsp; 视频位置：
					<select name="template" id="template" style="width:70px;">

						<option value="right" <? if ($row[template] == "right") echo 'selected'; ?>>右侧</option>
						<option value="center" <? if ($row[template] == "center") echo 'selected'; ?>>中间</option>
					</select></td>
		</tr>
        			<tr>
				<td class="tableleft" style="width:100px;">聊天服务器：</td>
				<td><input name="tserver" type="text" id="tserver" style="width:400px;" value="<?= $row[tserver] ?>"/>
				</td>
			</tr>
			<tr>
				<td class="tableleft">电脑直播代码：</td>
				<td><textarea name="livefp" rows="10" id="livefp"
							  style="width:99%; height:100px;"><?= $row[livefp] ?></textarea>
					<br>
			</tr>
            <tr>
				<td class="tableleft">手机端直播方式：</td>
				<td><select name="livetype" id="livetype">
						<option value="1" <? if ($row[livetype] == 1) echo 'selected'; ?>>无子频道</option>
						<option value="0" <? if ($row[livetype] == 0) echo 'selected'; ?>>有子频道</option>
                        <option value="2" <? if ($row[livetype] == 2) echo 'selected'; ?>>第三方代码</option>
					</select></td>
			</tr>
			<tr>
				<td class="tableleft">手机直播代码&&YY频道号码：</td>
				<td><textarea name="phonefp" rows="10" id="phonefp"
							  style="width:99%;height:100px;"><?= $row[phonefp] ?></textarea></td>
			</tr>
			<tr>
				<td class="tableleft">机器人游客在线：</td>
				<td><input name="rebots_yk" type="text" id="rebots_yk" value="<?= $row[rebots_yk] ?>"/>
					单位为数字 不添加请填写0
				</td>
			</tr>
            <tr>
				<td class="tableleft">假人在线刷新时间(分钟)：</td>
				<td><input name="rebots_re" type="text" id="rebots_re" value="<?= $row[rebots_re] ?>"/>
					每隔段时间刷新一次假人，实现假人上线下线，保证所有人显示的假人数量统一，0为不刷新！
				</td>
			</tr>
			<tr>
				<td class="tableleft">额外的在线人数：</td>
				<td><input name="rebots" type="text" id="rebots" value="<?= $row[rebots] ?>"/>
					额外的在线人数不添加请写0
				</td>
			</tr>
			<tr>
				<td class="tableleft">游客弹出注册框间隔(分钟)：</td>
				<td><input name="show_loginw_interval" type="text" id="show_loginw_interval"
						   value="<?= $row[show_loginw_interval] ?>"/>
					默认为5 分钟
				</td>
			</tr>
			<tr>
				<td class="tableleft">游客体验时间(分钟)：</td>
				<td><input name="tiyantime" type="text" id="tiyantime" value="<?= $row[tiyantime] ?>"/>
					默认为0 无限制
				</td>
			</tr>
			<tr>
				<td class="tableleft">游客发言间隔(秒)：</td>
				<td><input name="fayanjiange" type="text" id="tiyantime" value="<?= $row[fayanjiange] ?>"/>
					默认为0 无限制
				</td>
			</tr>
             <tr>
				<td class="tableleft">鲜花获取间隔：</td>
				<td><input name="flowernum" type="text" id="flowernum" value="<?= $row[flowernum] ?>"/>
					时间为分钟 0无效
				</td>
			</tr>
            <tr>
				<td class="tableleft">大宝剑获取间隔：</td>
				<td><input name="acernum" type="text" id="acernum" value="<?= $row[acernum] ?>"/>
					时间为分钟 0无效
				</td>
			</tr>
            <tr>
				<td class="tableleft">飞吻获取间隔：</td>
				<td><input name="kissnum" type="text" id="kissnum" value="<?= $row[kissnum] ?>"/>
					时间为分钟 0无效
				</td>
			</tr>
			<tr>
				<td class="tableleft">默认客服：</td>
				<td><input name="defkf" type="text" id="defkf" value="<?= $row[defkf] ?>"/></td>
			</tr>
            <tr>
				<td class="tableleft" style="width:100px;">轮播广告名称：</td>
				<td><input name="slidetit" type="text" id="slidetit" style="width:200px;" value="<?= $row[slidetit] ?>"/></td>
			</tr>
            <tr>
				<td class="tableleft">视频左下方文字内容：</td>
				<td><textarea name="videowwc" id="videowwc" style="width:400px;"><?= tohtml($row[videowwc]) ?>
</textarea> 开启提示后才会显示 </td>
			</tr>
			<tr>
				<td class="tableleft">统计代码：</td>
				<td><textarea name="tongji" id="tongji" style="width:400px;"><?= tohtml($row[tongji]) ?>
</textarea></td>
			</tr>
			<tr>
				<td class="tableleft">版权信息：</td>
				<td><textarea name="copyright" rows="15" id="copyright"
							  style="width:400px;"><?= tohtml($row[copyright]) ?>
</textarea></td>
			</tr>
			<tr>
				<td class="tableleft"></td>
				<td>
					<button type="submit" class="button button-success"> 保存</button>
					<input type="hidden" name="act" value="config_edit"></td>
			</tr>
		</table>
	</form>
</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../../upload/swfupload/swfupload.js"></script>
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
		swfdef.button_placeholder_id = "logo_up_bnt";
		swfdef.file_types = "*.gif;*.jpg;*.png";
		swfdef.upload_url = "../../upload/upload.php";
		swfdef.post_params = {"info": "logo"}

		swfu = new SWFUpload(swfdef);

		var swfico = swfdef;
		swfico.button_placeholder_id = "ico_up_bnt";
		swfico.file_types = "*.ico";
		swfico.post_params = {"info": "ico"}
		swfuico = new SWFUpload(swfico);

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

		var swfhomepop = swfdef;
		swfhomepop.button_placeholder_id = "ewm_up_bnt";
		swfhomepop.file_types = "*.gif;*.jpg;*.png";
		swfhomepop.post_params = {"info": "homepop"}
		swfhomepop = new SWFUpload(swfhomepop);
		
		var swfcover = swfdef;
		swfcover.button_placeholder_id = "cover_up_bnt";
		swfcover.file_types = "*.gif;*.jpg;*.png";
		swfcover.post_params = {"info": "cover"}
		swfcover = new SWFUpload(swfcover);

	});

	var roomstate =<?=$row[state]?>;
	if (roomstate == '2')$('#pwd_s').show();
</script>
<body>
</html>