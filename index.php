<?php
require_once './include/common.inc.php';
if(!is_array($cfg['config'])){
	exit("<script>location.href='error.php?msg=抱歉您访问的房间不存在！'</script>");
	exit();
}
if ($cfg['config']['loginguest'] == '0' && !isset($_SESSION['login_uid'])) header('location:../logging.php');
require_once PPCHAT_ROOT . './include/json.php';
$json = new JSON_obj;
if ($_SESSION['login_uid'] == 0) {
 $_SESSION['login_gid'] = 17;
}
$roomauth = explode(',',$cfg['config']['rules']);
if(!in_array($_SESSION['login_gid'], $roomauth)){
    exit("<script>location.href='error.php?msg=抱歉您没有权限访问该房间，如有问题请联系客服！'</script>");
	exit();
}
if ($cfg['config']['state'] == '2' and $_SESSION['room_' . $cfg['config']['rid']] != true) {
	header("location:login.php?rid=".$cfg['config']['rid']);
}
if ($cfg['config']['state'] == '0') {
	exit("<script>location.href='error.php?msg=系统处于关闭状态！请稍候……'</script>");
	exit();
}
if (!isset($_SESSION['login_uid']) and $cfg['config']['loginguest'] == "1") {
	gusetLogin();
}
if (!isset($_SESSION['login_uid'])) {
	header("location:./logging.php");
	exit();
}
$auth_rules = auth_group($_SESSION['login_gid']);
$uid = $_SESSION['login_uid'];
$db->query("update {$tablepre}members set regip='$onlineip' where uid='{$uid}'");
$userinfo = $db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.uid='{$uid}'"));
$_SESSION['login_gid'] = $userinfo['gid'];
if ($_SESSION['login_uid'] == 0) {
	$userinfo['gid'] = '17';
	$userinfo['username'] = $userinfo['nickname'] = $_SESSION['login_nick'];
	$userinfo['sex'] = $_SESSION['login_sex'];
	$userinfo['uid'] = $_SESSION['login_guest_uid'];
}
$query = $db->query("select * from {$tablepre}ban where (username='{$userinfo[username]}' or ip='{$onlineip}') and losttime>" . gdate() . " limit 1");
while ($row = $db->fetch_row($query)) {
	exit("<script>location.href='error.php?msg=用户名或IP受限！过期时间" . date("Y-m-d H:i:s", $row['losttime']) . "'</script>");
	exit();
}
$query = $db->query("select * from {$tablepre}gag where username='{$userinfo[username]}'  and losttime>" . gdate() . " limit 1");
if($db->fetch_row($query)){$usergag="1";}else{$usergag="0";}
$msg_unallowable = $msg_unallowable . $cfg['config']['msgban'];
$query = $db->query("select * from {$tablepre}auth_group order by ov desc");
while ($row = $db->fetch_row($query)) {
	if ($row['id'] == 17) : else : $groupli .= "<div id='group_{$row[id]}'></div>"; endif;
	$grouparr .= "grouparr['{$row[id]}']=" . json_encode($row) . ";\n";
	$group["m" . $row[id]] = $row;
}
$groupli .= "<div id='group_rebots'></div><div id='group_17'></div>";
$query = $db->query("select * from {$tablepre}chatlog where rid='" . $cfg['config']['rid'] . "' and p='false' and `type`='0' order by id desc limit 0,20 ");
//and state!='1'
//0是以审核 1是没审核
$msgshtype="";
while ($row = $db->fetch_row($query)) {
	$row['msg'] = str_replace(array('&amp;', '', '&quot;', '&lt;', '&gt;'), array('&', "\'", '"', '<', '>'), $row['msg']);
	if($row['state']=='1'){$msgshtype="style=\"display:none\"";}else{$msgshtype="";}
	if(stripos($auth_rules,'msg_block')!==false){
	if($row['robot']=='1'){$robot="<div class='msg_content'><img src='images/state3.png' /></div>";}else{$robot="";}
	$msgpb="<a href=\"javascript:void(0)\" onclick=\"bt_msgBlock('{$row[msgid]}')\"> <img src=\"images/11.png\" style=\"border:0px;\" title=\"屏蔽消息\"></a>";
	if($row['state']=='1'){
	$msgsh="<a href=\"javascript:void(0)\" id=\"ma_{$row[msgid]}\" onclick=\"bt_msgAudit('{$row[msgid]}',this)\"> <img src=\"images/22.png\" style=\"border:0px;\" title=\"审核通过\"></a>";
	$msgshtype="";
		}else{$msgsh="";}
	}
	if(strpos($row['msg'],"redbag_open.png")===false){$msgtype="";}else{$msgtype="style=\"padding:0px;background:none;\"";}
	if ($row[tuid] != "ALL") {
		$omsg = "<div style='clear:both;'></div><div class='msg'  id='{$row[msgid]}' ".$msgshtype."><font class='date'>" . date('H:i', $row[mtime]) . "</font><div class='msg_head'><img src='" . $group["m" . $row[ugid]][ico] . "' class='msg_group_ico' title='" . $group["m" . $row[ugid]][title] . "-" . $group["m" . $row[ugid]][sn] . "'></div>". $robot ."<div class='msg_content'><div><font class='u'  onclick='ToUser.set(\"{$row[uid]}\",\"{$row[uname]}\")'>{$row[uname]}</font> &nbsp;&nbsp;  <font class='dui'>对</font> <font class='u' onclick='ToUser.set(\"{$row[tuid]}\",\"{$row[tname]}\")'>{$row[tname]}</font></div></div><div class='layim_chatsay'><font style='{$row[style]};'>{$row[msg]}".$msgpb.$msgsh."</font></div></div><div style='clear:both;'></div>" . $omsg;
	} else {
		$omsg = "<div style='clear:both;'></div><div class='msg' id='{$row[msgid]}' ".$msgshtype."><font class='date'>" . date('H:i', $row[mtime]) . "</font><div class='msg_head'><img src='" . $group["m" . $row[ugid]][ico] . "' class='msg_group_ico' title='" . $group["m" . $row[ugid]][title] . "-" . $group["m" . $row[ugid]][sn] . "'></div>". $robot ."<div class='msg_content'><div><font class='u'  onclick='ToUser.set(\"{$row[uid]}\",\"{$row[uname]}\")'>{$row[uname]}</font>&nbsp;&nbsp; </div></div><div class='layim_chatsay' ".$msgtype."><font  style='{$row[style]};'>{$row[msg]}".$msgpb.$msgsh."</font></div></div><div style='clear:both;'></div>" . $omsg;
	}
}
if (!isset($_COOKIE['first_access_time'])) {
	setcookie("first_access_time", time(), time() + 3600 * 24 * 30, "/");
}
if (isset($_GET['tg'])) {
setcookie("tg",$_GET['tg']);
}
$ts = explode(':', $cfg['config']['tserver']);
if (!isset($_SESSION['room_' . $uid . '_' . $cfg['config'][id]])) {
	$db->query("insert into  {$tablepre}msgs(rid,ugid,uid,uname,tuid,tname,mtime,ip,msg,`type`)values('{$cfg[config][id]}','{$userinfo[gid]}','{$userinfo[uid]}','{$userinfo[username]}','{$cfg[config][defvideo]}','{$cfg[config][defvideonick]}','" . gdate() . "','{$onlineip}','登陆直播间','3')");
	$_SESSION['room_' . $uid . '_' . $cfg['config'][id]] = 1;
} 
?>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta name="renderer" content="webkit">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE"/>
	<title><?= $cfg['config']['title'] ?></title>
	<meta name="keywords" content="<?= $cfg['config']['keys'] ?>">
	<meta name="description" content="<?= $cfg['config']['dc'] ?>">
	<link rel="shortcut icon" type="image/x-icon" href="<?= $cfg['config']['ico'] ?>"/>
	<link href="skins/default/<?= $cfg['config']['template'] ?>/v.css" rel="stylesheet" type="text/css"/>
	<link href="skins/default/css.css" rel="stylesheet" type="text/css"/>
	<link href="css/layim.css" rel="stylesheet" type="text/css"/>
	<!--[if lt IE 9]>
	<link href="skins/default/<?= $cfg['config']['template'] ?>/less.css" rel="stylesheet" type="text/css">
	<![endif]-->
	<script src="script/jquery.min.js"></script>
	<script type="text/javascript" src="script/swfobject.js"></script>
	<script type="text/javascript" src="script/web_socket.js"></script>
	<script type="text/javascript" src="script/json.js"></script>
	<script src="script/layer.js"></script>
	<script src="script/jquery.nicescroll.min.js"></script>
	<script src="script/pastepicture.js"></script>
	<script src="script/function.js" type="text/javascript" charset="utf-8"></script>
	<script src="script/init.js" type="text/javascript" charset="utf-8"></script>
	<script src="script/device.min.js"></script>
	<script src="script/jquery.cookie.js"></script>
	<script src="script/jquery.rotate.min.js"></script>
	<script src="script/rotate.js"></script>
	<script type="text/javascript" src="http://cdn.aodianyun.com/lss/aodianplay/player.js"></script>
    <!--技术支持QQ：2376505-->
	<script>
		var UserList;
		var ToUser;
		var VideoLoaded = false;
		var My = {
			dm: '<?=$_SERVER['HTTP_HOST']?>',rid: '<?=$cfg['config']['rid']?>',roomid: '<?=substr(md5($_SERVER['HTTP_HOST']), 0, 6) . $cfg['config']['id']?>',chatid: '<?=$userinfo['uid']?>',name: '<?=$userinfo['username']?>',nick: '<?=$userinfo['nickname']?>',sex: '<?=$userinfo['sex']?>',age: '0',fuser: '<?=$userinfo['fuser']?>',qx: '<?=check_auth('room_admin')?'1':'0'?>',ip: '<?=$onlineip?>',vip: '<?=$userinfo['gid']?>',color: '<?=$userinfo['gid']?>',cam: '0',state: '0',mood: '<?=$userinfo['mood']?>',rst: '<?=$time?>',camState: '1',gag: '<?=$usergag?>'
		}
				
		var RoomInfo = {
			showLoginWindowInterval: '<?=(int)$cfg['config']['show_loginw_interval']?>',loginTip: '<?=$cfg['config']['logintip']?>',loginalert: '<?=$cfg['config']['loginalert']?>',logoutalert:'<?=$cfg['config']['logoutalert']?>',onhomepop: '<?=$cfg['config']['onhomepop']?>',Msglog: '<?=$cfg['config']['msglog']?>',msgBlock: '<?=$cfg['config']['msgblock']?>',msgAudit: '<?=$cfg['config']['msgaudit']?>',defaultTitle: document.title,MaxVideo: '10',TServer: '<?=$ts[0]?>',TSPort: '<?=$ts[1]?>',PVideo: '<?=$cfg['config']['defvideo']?>',AutoPublicVideo: '0',AutoSelfVideo: '0',type: '1',r0: '<?=$cfg['config']['rebots_yk']?>',r: '<?=$cfg['config']['rebots']?>',tiyantime: '<?=$cfg['config']['tiyantime']?>',fayanjiange: '<?=$cfg['config']['fayanjiange']?>',bg: '<?= $cfg['config']['bg'] ?>',flowernum: '<?=$cfg['config']['flowernum']?>',acernum: '<?=$cfg['config']['acernum']?>',kissnum: '<?=$cfg['config']['kissnum']?>',defvideo: '<?=$cfg['config']['defvideo']?>',rebots_re: '<?=$cfg['config']['rebots_re']?>'
		}
		var grouparr = new Array();
		<?=$grouparr?>
		var ReLoad;
		var isIE = document.all;
		var aSex = ['<span class="sex-womon"></span>', '<span class="sex-man"></span>', ''];
		var aColor = ['#FFF', '#FFF', '#FFF'];
		var msg_unallowable = "<?=$msg_unallowable?>";
		if (typeof console == "undefined") {
			this.console = {
				log: function (msg) {
				}
			};
		}
		WEB_SOCKET_SWF_LOCATION = "script/WebSocketMain.swf";
		WEB_SOCKET_DEBUG = true;
		var ws, name, client_list = {}, timeid, reconnect = false;
		layer.config({
		extend: ['skin/seaning/style.css'],
	});
	</script>
</head>
<body onResize="OnResize()" onUnload="OnUnload()" style="background:url(<?= $cfg['config']['bg'] ?>) repeat 0 0; background-size: 100%;">
<script>
	if ($.cookie('bg_img')) {
		$(document.body).css({
			'background': 'url(' + $.cookie('bg_img') + ')',
			'background-size': '100% 100%'
		});
	} else {
		<?php
 if ($default_bg_img) : ?>
		$(document.body).css({
			'background': 'url(<?php echo $default_bg_img; ?>)',
			'background-size': '100% 100%'
		});

		<?php
 endif; ?>
	}
</script>
<div id="UI_MainBox">
	<script>if (!device.desktop()) {
			window.location = './m/index.php?rid=<?=$cfg['config']['rid']?>';
		}</script>
	<div id="UI_Head">
		<div class="head">
			<div id="head_box" class="head_box">
			 <div class="logo_bg" style="BACKGROUND: url(<?= $cfg['config']['logo'] ?>) no-repeat"> <span class="f_left" id="favlink">
			 <a class="link1 left1" href="ico.php"><b>保存到桌面</b></a>
						<?php
						$query = $db->query("select * from {$tablepre}apps_topmanage where s='0' order by ov desc ");
						while ($row = $db->fetch_row($query)) {
							$obj = $json->encode($row);
							echo "<a class='link1' href='javascript://'  onClick='openApp({$obj})' id='app_$row[id]'><b>{$row[title]}</b></a>";
						} ?>
				</span> <a href="javascript:void(0)" class="kefu" onClick="openWin(2,'高级客服QQ','/apps/kefu.php',810,500)"></a>	
				</div>
				<div class="head_user">
                	<!--<a href="javascript:;" onClick="showBglist()" id="Sign">签到</a>-->
                	<a href="javascript:;" onClick="showBglist()" id="roe-huanhu">换肤</a>
					<?php
					if ($_SESSION['login_uid'] > 0) { ?>
						<a href="javascript:void(0)" class="userinfo" onClick="openWin(2,false,'profiles.php?uid=<?= $userinfo['uid'] ?>',460,600)">
                        <img src='../face/img.php?t=p1&u=<?= $userinfo['uid'] ?>' border="0" class="userimg"/>
							<?= $userinfo['username'] ?>
						</a> 
                        <a href="/user/" target="_blank" class="userinfo2">个人中心</a> 
                        <a href='../logging.php?act=logout' class="userlogout">退出</a>
					<?php
					} else { ?>
                    	<img id="ykhade" style="float:left; display:none; line-height:30px; margin-right:5px;" width="30" height="30"/><div style="float:left; line-height:30px; margin-right:10px;"><?=$userinfo['username']?></div>
						<a href="javascript:void(0)" class="login" onClick="openWin(2,false,'minilogin1.php',390,310)"></a>
						<a href="javascript:void(0)" class="reg"
						   onClick="openWin(2,false,'minilogin1.php?a=0',390,565)"></a>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
	<div id="UI_Left">
		<div id="UI_Left2">
          	<div class="vote bg_png1">
          	<iframe height="42" width="100%" allowTransparency="true" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" src="../apps/vote.php?rid=<?= $cfg['config']['rid'] ?>"></iframe>
         	 </div>

            <div class="left_nav">
               <?php 
				$query = $db->query("select * from {$tablepre}apps_manage where s='0' order by ov desc ");
				while ($row = $db->fetch_row($query)) {
   				$obj = $json->encode($row);
   				 echo "\r\n\t\t<a href='javascript://' class='appico bg_png1' onClick='openApp({$obj})' id='app_{$row['id']}'>\r\n\t\t<img src='{$row['ico']}' /><br>\r\n\t\t<span>{$row[title]}</span>\r\n\t\t</a>\r\n\t\t";	
					}
					?>
            </div>
			<div class="title_tab bg_png1">
            	<a href="javascript:void(0)" class="bg_png2" onClick="bt_SwitchListTab('User')" id="listTab1">在线会员(<span id="OnlineUserNum"></span>)</a>  
                <a href="javascript:void(0)" onClick="bt_SwitchListTab('Other')" id="listTab2"><?= ($userinfo['gid'] == '3' ? "我的客户" : "我的客服") ?>(<span id="OnlineOtherNum"></span>)</a>
			</div>
			<div style="clear:both"></div>
			<div id="OnlineUser_Find" style="height:25px; margin-top:1px; padding:2px; overflow:hidden; line-height:25px; margin-bottom:1px;" class="bg_png2">
				<input name="" type="image" title="找人" onClick="bt_FindUser()" src="images/search.png" style="float:right; margin:5px;"/>
				<input name="finduser" type="text" id="finduser" style="border:0px; width:150px; height:25px; line-height:25px; padding:0px; background:none; color:#FFF; "/>
			</div>
			<div id="OnLineUser_OhterList" class="OnLineUser bg_png1" style="height:50px;display:none">
				<div id="group_myuser"></div>
			</div>
			<div id="OnLineUser_FindList" class="OnLineUser" style="height:50px;display:none"></div>
			<div id="OnLineUser" class="OnLineUser bg_png1" style="height:50px;">
				<div id="group_my"></div>
				<?= $groupli ?>
				</div>
			<!--二维码图片-->
			<div style="height:100px; text-align:center;"><img src="<?= $cfg['config']['ewm'] ?>" style="height:100%;max-width:190px;"></div>
		</div>
	</div>
	<div id="UI_Right" class="bg_png">
		<div id="RoomMV">
			<div class="title_bar bg_png2">
				<span id="Div_VN1">直播视频</span> 
                <span class="videotools">
                <a id="shuaxin" href='javascript:showLive()'>刷新</a>
                <a style="font-size: 12px" href='javascript:Venlarge()'>[放大]</a>
                <a style="font-size: 12px" href='javascript:Vnarrow()'>[缩小]</a>
                </span>
				<span id="defvideosrc" style="margin-left:2%;">当前讲师--<span id="todefvideosrc" style="color:#FF0"><?= $cfg['config']['defvideonick'] ?></span></span> 
                <span id="bt_defvideosrc" style="display:none"> [<a href='javascript:bt_defvideosrc()'>上课</a>]</span>
                <a href="javascript://" onClick="openWin(2,'给老师点赞','/apps/rank.php',820,600)" class="video_zan">点赞</a>
                 <a href="javascript://" onClick="on_live();" class="video_bo">点播</a>
                </div>
                <div class="bg_png" style="position:relative;">
                <div class="videolist">
					<h1>点播<a href="javascript:void(0)" onClick="$('.videolist').slideUp('fast');">X</a></h1>
					<ul>
                    <?php 
					$query = $db->query("select * from {$tablepre}video order by ov desc");
					while ($row = $db->fetch_row($query)) {
						echo "<li><a href=\"javascript:void(0)\" rel=\"{$row[id]}\" onClick=\"switchVideo(this)\"><img src=\"images/video.png\">{$row[title]}</a></li>";
					}
					?>
					</ul>
					</div>
                <div class="videoTime"><div class="videoTimeTxt">您可以观看时长</div><div id="colockbox"><span class="day">00</span><span class="hour">00</span><span class="minute">00</span><span class="second">00</span></div></div>
			<div id="OnLine_MV"><span style="font-size:18px;">您还没有安装flash播放器,请点击<a href="http://www.adobe.com/go/getflash" target="_blank" style="font-size:18px;color:#090">这里</a>安装</span></div>
                </div>
			</div>
		<div class="NoticeList">
			<?php
			$query = $db->query("select * from {$tablepre}notice where type='notice' or type='link' order by ov desc,id desc");
			while ($row = $db->fetch_row($query)) {
				if ($row['type'] == 'link') {
					$tab .= "<a target='_blank' href='" . $row['linkaddr'] . "' id='notice_{$row[id]}' class='notice_tab'>{$row[title]}</a>";
					$txt .= "<div id='notice_{$row[id]}_div' class='notice_div' style='display:none'>" . tohtml($row['txt']) . "</div>";
				} else {
					$tab .= "<a href='javascript:void(0)' id='notice_{$row[id]}' class='notice_tab'>{$row[title]}</a>";
					$txt .= "<div id='notice_{$row[id]}_div' class='notice_div' style='display:none'>" . tohtml($row['txt']) . "</div>";
				}
			}
			$query = $db->query("select * from {$tablepre}notice where id='1'");
			while ($row = $db->fetch_row($query)) {
				$pic_ad_c = "<div id='notice_{$row[id]}_div' class='notice_div' style='display:none'>" . tohtml($row['txt']) . "</div>";
				$pic_ad_t = "<a href='javascript:void(0)' id='notice_{$row[id]}' class='notice_tab'>{$row[title]}</a>";
			} ?>
			<div class="tab bg_png3">
            <?php if($cfg['config']['slide']==1) { ?>
          		 <a href='javascript:void(0)' id='notice_imgad' class='notice_tab'><?=$cfg['config']['slidetit']?></a><?php } ?>
				<?= $pic_ad_t ?>
				<?= $tab ?>
				<div style="clear:both"></div>
			</div>
			<div id="NoticeList" style="height:80px;">
             <?php if($cfg['config']['slide']==1) { ?>
            <!--幻灯广告-->
            <div id='notice_imgad_div' class='notice_div' style='display:none'>
<div style=" overflow: hidden;" id="tz3" class="lts_new2">
  <script>
  window.onload = function()
  {
	  var oBox = document.getElementById('box');
	  var oPrev = getByClass(oBox,'prev')[0];
	  var oNext = getByClass(oBox,'next')[0];
	  var oBigUl = getByClass(oBox,'bigUl')[0];
	  var aLiBig = oBigUl.getElementsByTagName('li');
	  var oNumUl = getByClass(oBox,'numberUl')[0];
	  var aLiNumber = oNumUl.getElementsByTagName('li');
	
	  var nowZindex = 1;
	  var now = 0;
	  function tab()
	  {
		   for(var i=0; i<aLiNumber.length; i++)
			  {
				  aLiNumber[i].className = '';
			  }
			  aLiNumber[now].className = 'night';
			  
		  aLiBig[now].style.zIndex = nowZindex++;
		  aLiBig[now].style.opacity = 0;
		  startMove(aLiBig[now],'opacity',100);
	
		  
	  }
	  
	  for(var i=0; i<aLiNumber.length; i++)
	  {
		  aLiNumber[i].index = i;
		  aLiNumber[i].onclick = function()
		  {
			 
			  if(this.index==now)return;
			  now = this.index;
			 
			  tab();
		  }
	  }
	  oNext.onmouseover = oPrev.onmouseover = oBigUl.onmouseover = function()
	  {
		  startMove(oPrev,'opacity',100);
		   startMove(oNext,'opacity',100)
	  }

	   oNext.onmouseout = oPrev.onmouseout = oBigUl.onmouseout = function()
	  {
		  startMove(oPrev,'opacity',0);
		  startMove(oNext,'opacity',0)
	  }
	  oPrev.onclick = function()
	  {
		  now--
		  if(now==-1)
		  {
			  now=aLiNumber.length-1;
		  }
		  tab();
	  }
	  
	    oNext.onclick = function()
	  {
		  now++
		  if(now==aLiNumber.length)
		  {
			  now=0;
		  }
		  tab();
	  }
	  
	  var timer = setInterval(oNext.onclick,5000)
	  oBox.onmouseover = function()
	  {
		  clearInterval(timer)
	  }
	  oBox.onmouseout = function()
	  {
		  timer = setInterval(oNext.onclick,5000)//改变速度修改3000 ，例如3000=3秒钟
	  }
  }
</script>
<!-- 代码 开始 -->
<div id="box">
    <div class="prev"></div>
    <div class="next"></div>
    <ul class="bigUl">
      						<?php
						$query = $db->query("select * from {$tablepre}slide where s='0' order by ov desc ");
						$i=0;
						while ($row = $db->fetch_row($query)) {
						    $i++;
							$obj = $json->encode($row);
							if ($i==1) {
							$stystr = " style='z-index:1'";
								}
							else
							{
							$stystr = "";
								}
							echo "<a href='javascript://' onClick='openApp({$obj})'> <li{$stystr}><img src='{$row[ico]}' alt='{$row[title]}'/></li></a>\n";
						} 
						?>
    </ul>
    <ul class="numberUl">
      		<?php
			$query = $db->query("select * from {$tablepre}slide where s='0' order by ov desc ");
			$i=0;
			while ($row = $db->fetch_row($query)) {
				$i++;
				if ($i==1) {
					$clastr = " class='night'";
						}
					else
					{
					$clastr = "";
						}
			echo "<li{$clastr}><a href=\"javascript:;\"></a></li>\n";
			} ?>
    </ul>
    <div>
    </div>
 </div>
<!-- 代码 结束 -->		             
            </div>

                </div>
               <!--幻灯广告结束-->
               <?php } ?>
				<?= $pic_ad_c ?>
				<?= $txt ?>
			</div>
			<script>
				$('.tab a:first').addClass('active');
				$('.notice_div:first').css('display', '');
				$('.tab a').on('click', function () {
					if ($(this).attr("id") == 'app_1') {
						return;
					}
					$('.tab a').removeClass('active');
					$(this).addClass('active');
					$('.notice_div').css('display', 'none');
					$('#' + $(this)[0].id + '_div').css('display', '');
				});
				function SpreadSccroll() {
					setTimeout(function () {
						var $myul = $("#gd_ad");
						if ($myul.find("a").length < 2) {
							return;
						}
						$actli = $myul.find("a:first");
						$actli.fadeToggle(function () {
							$myul.find("a:last").prependTo($myul);
							SpreadSccroll();
						});
						$actli.fadeToggle();
					}, 5000);
				}
				SpreadSccroll();
			</script>
		</div>
	</div>
	<div id="UI_Central" class="bg_png">
		<div class="title_bar bg_png2">
       		<div class="Notice_icon"><i></i> 公告:</div>
         		<div class="Notice_main">
			<marquee scrollamount="3" id="msg_tip_show">
				<?php
				$query = $db->query("select * from {$tablepre}chatlog where  rid='" . $cfg['config']['rid'] . "' and state='2' and type='0' order by id desc limit 1");
				while ($row = $db->fetch_row($query)) {
					echo "<span style='color:#FF0'>" . tohtml($row[msg]) . "</span>";
				} ?>
			</marquee>
            </div>
            <div class="Notice_r"></div>
		</div>
		<div id="MsgBox" style="position:relative;">
			<div id="Y_pub_Tools">
            	<a href="javascript:void(0)" id="bt_gundong" onClick="bt_toggleScroll();" select="true"><span class="scroll">滚动</span></a>
				<a href="javascript:void(0)" onClick="bt_MsgClear();"><span class="clear">清屏</span></a>
			</div>
            <div class="Room_Tools">				
				<a href="javascript:void(0)" class="rotate" onClick="$('#dowebok').show()" title="抽奖" ><img src="images/r_prize.png" /><span>抽奖</span></a>
				<!--<a href="#erweima" class="showdiv" title="二维码" ><img src="images/erweima.png" /><span>二维码</span></a>-->
				<a href="javascript:void(0)" onClick="redbagsmain();"><img src="images/r_redbags.png" /><span> 发红包</span></a>
                <a href="JavaScript:void(0)" onClick="flowersshow(this)"><img src="images/gift.png" /><span>送礼物</span></a>
				</div>
				<div class="giftf"><img src="" />
           			 <div class="gifttit bg_png2" id="gifttit">送出了一朵鲜花</div>
            	</div>
			<div id="Video_List"></div>
			<div id="MsgBox1" style="overflow:auto; height:50px; padding:0px 6px 0px 6px;position:relative;">
            <div class="load_msg">
            <a href="javascript:void(0)" onClick="chatload()" class="">查看更多消息</a>
            </div>
				<?= $omsg ?>
                <p class="tips">以上是历史消息</p>
			</div>
			<div class="drag_skin" id="drag_bar" style=" display:none"></div>
			<div id="MsgBox2"
				 style="height:100px; overflow:auto;  padding:0px 10px 0px 10px;position:relative; display:none"></div>
		</div>
        <div class="magsr bg_png2">
		<div id="UI_Control" class="tool_bar" >
			<div style="height:30px; line-height:30px; overflow: hidden; font-size:14px;">
    <span id="msg_tip_admin_show">
    <?php
	$query = $db->query("select * from {$tablepre}chatlog where  rid='" . $cfg['config']['rid'] . "' and state='3' and type='0' order by id desc limit 1");
	while ($row = $db->fetch_row($query)) {
		echo "<span style='color:#FF0;display:block;width:100%;padding-left:5px;'>" . tohtml($row[msg]) . "</span>";
	} ?>
    </span>
			</div>
			<div id="qqbts"><p><span></span><a class="morekf" href="javascript:openWin(2,'在线助理QQ','/apps/kefu.php',810,500);">更多助理>></a>
					<?php
					$query = $db->query("select * from {$tablepre}customerservice order by ov DESC limit 0,8 ");
					while ($row = $db->fetch_row($query)) {
						$kefulist .= "<a target='_blank' href='{$row[url]}' ><img src='{$row[img]}'  title='{$row[name]}' class='qqimg'></a>";
					}
					echo $kefulist; ?>
				</p></div>
	<div class="msgsend_tools">
    <span style="float:left; margin-left:5px;">
        <a href="javascript:void(0)" class="bar_7 bar" id="bt_myimage" style="display:none;" onClick="bt_FontBar(this)">字体</a>
		<a href="javascript:void(0)" id="bt_face" class="bar_2 bar" onClick="showFacePanel(this,'#Msg');"
		   isface="2">表情</a>
		<a href="javascript:void(0)" class="bar_3 bar" id="bt_caitiao">彩条</a>
		<a href="javascript:void(0)" class="bar_1 bar" id="bt_myimage" onClick="bt_insertImg('#Msg')">图片</a>
		 <!-- <a href="javascript:void(0)" class="bar_4 bar" id="bt_qingping"  onClick="bt_MsgClear();">清屏</a>
		<a href="javascript:void(0)" class="bar_5 bar" id="bt_gundong" select="true" onClick="bt_toggleScroll()">滚动</a>-->
	</span>
            <span style="margin-left:5px; float:left; color:#898989; margin-top:7px;">   对<div id="ToUser" class="Tochat" data-id="ALL">大家</div><span style="position: relative;"><div id="Tochatclose"></div></span>&nbsp;说</span>
            <a href="javascript:void(0)" class="bar_6 bar" id="openPOPChat" style="float:right; margin-right:10px;">我的私聊</a>
			<input type="hidden" name="Personal" id="Personal" value="false"/>
            </div>
		</div>
		<div class="msgsend_top">
        <div style="border-top:#d1d1d1 1px solid; height:10px;"></div>
			<div id="Msg" contentEditable="true" style="height:65px; overflow:auto; font-family:Arial, Helvetica, sans-serif;font-size:12pt; color:#000; margin-right:151px;line-height:20px;outline: none;background:#FFF;" onClick="HideMenu();"></div>
			<div style="width:137px;position: absolute;right:10px;top:10px;">
				<input name="Send_bt" type="image" src="images/send.png" id="Send_bt" title="发送消息"/>
				<input type="hidden" name="Send_key" id="Send_key" value="1"/>
			</div>
		</div>
        </div>
        <?php if (check_auth('room_admin')) { ?>
		<div id="manage_div" style="background: #E1E1E1; margin:0px; color:#333; height:30px; line-height:30px;padding-left:5px;">
			假人发言：<select id="chat_type" style="display:none">
				<option value="me" selected>发言人-自己</option>
			</select>
			<label>
			<input type="checkbox" id="msg_tip">置顶公告</label>
			<input type="checkbox" id="msg_tip_admin">聊天下方公告</label>
            <input type="checkbox" id="msg_tip_danmu">同时发送飞字</label>
            <button class="admin_tool" id="admin_tool" onClick="admin_show();"> 管理人员工具箱</button>
            <div class="admin_show">
            	<div class="admin_show_tit"> 管理员工具箱
         		<a href="javascript:;" title="关闭" onClick="admin_hide();" class="close">×</a>
                </div>
            <a class="admin_showa" onClick="shuaxinkhd();"> 刷新所有客户端</a>
            <?php if($cfg['config']['msgaudit']=='0'){?>
            <a id="admin_msgAudit" class="admin_showa" select="true" onClick="admin_msgAudit(<?=$cfg['config']['rid']?>);"> 开启发言审核</a>
            <?php } else {?>
            <a id="admin_msgAudit" class="admin_showa" select="false" onClick="admin_msgAudit(<?=$cfg['config']['rid']?>);"> 关闭发言审核</a>
			<?php } ?>
             <a id="RobotHide" class="admin_showa" select="true" onClick="RobotHide();"> 隐藏假人(仅自己)</a>
             <a class="admin_showa" select="true" onClick="bt_automsg();"> 自动发言</a>
            </div>
		</div>
        <?php }?>
	</div>
</div>
</div>
<div id="FontBar" style="display:none">
	<select name="FontName" id="FontName"
			onChange="getId('Msg').style.fontFamily=this[this.selectedIndex].value;$.cookie('fontFamily',this[this.selectedIndex].value, {expires: 365});">
		<option selected="selected">字体</option>
		<option value="SimSun" style="font-family: SimSun">宋体</option>
		<option value="SimHei" style="font-family: SimHei">黑体</option>
		<option value="KaiTi_GB2312" style="font-family: KaiTi_GB2312">楷体</option>
		<option value="FangSong_GB23122" style="font-family:FangSong_GB2312">仿宋</option>
		<option value="Microsoft YaHei" style="font-family: Microsoft YaHei">微软雅黑</option>
		<option value="Arial">Arial</option>
		<option value="MS Sans Serif">MS Sans Serif</option>
		<option value="Wingdings">Wingdings</option>
	</select>
	<select name="FontSize" id="FontSize"
			onChange="getId('Msg').style.fontSize=this[this.selectedIndex].value+'pt';$.cookie('FontSize',this[this.selectedIndex].value, {expires: 365});">
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12" selected="selected">12</option>
		<option value="13">13</option>
		<option value="14">14</option>
	</select>
	<input type="image" class="bt_false" title="粗体" onMouseOver="this.className='bt_true'"
		   onMouseOut="if(this.value=='false')this.className='bt_false'" src="images/bold.gif"
		   onClick="ck_Font(this,'FontBold')" value="false"/>
	<input type="image" class="bt_false" title="斜体" onMouseOver="this.className='bt_true'"
		   onMouseOut="if(this.value=='false')this.className='bt_false'" src="images/Italic.gif"
		   onClick="ck_Font(this,'FontItalic')" value="false"/>
	<input type="image" class="bt_false" title="下划线" onMouseOver="this.className='bt_true'"
		   onMouseOut="if(this.value=='false')this.className='bt_false'" src="images/underline.gif"
		   onClick="ck_Font(this,'Fontunderline')" value="false"/>
	<input name="FontColor" type="image" class="bt_false" id="FontColor" title="文字颜色"
		   onMouseOver="this.className='bt_true'" onMouseOut="this.className='bt_false'" src="images/color.gif"
		   onClick="ck_Font(this,'ShowColorPicker');" value="false"/>
</div>
<div id='ColorTable' style="display:none; " onblur="BrdBlur('ColorTable');" tabIndex></div>
<div id="Smileys" style="display:none; height:180px;" onblur="BrdBlur('Smileys');" tabIndex></div>
<div id="Send_key_option" style="display:none" onblur="BrdBlur('Send_key_option');" tabIndex>
	<div onMouseOver="this.className='bt_true'" onMouseOut="this.className='bt_false'"
		 style="padding-left:20px; height:20px; line-height:20px;" class="bt_false"
		 onClick="$('Send_key').value='1';$('Send_key_option').style.display='none'">按 Enter 键发送消息
	</div>
	<div onMouseOver="this.className='bt_true'" onMouseOut="this.className='bt_false'"
		 style="padding-left:20px; height:20px; line-height:20px;" class="bt_false"
		 onClick="$('Send_key').value='2';$('Send_key_option').style.display='none'">按 Ctrl+Enter 键发送消息
	</div>
</div>
<div id='divnotice'></div>
<!-- </div> -->
<div style="position:absolute; left: -100px;" id="MsgSound"></div>
<div id="face" style="position:absolute; display:none"></div>
<div id="caitiao" class="hid ption_a"></div>
<form id="imgUpload" name="imgUpload" action="" method="post" enctype="multipart/form-data" target="e">
	<input type="hidden" name="info" id="imgUptag" value="#Msg">
	<input id="filedata" contenteditable="false" type="file" style="display:none;"
		   onchange="$('#imgUpload').attr('action','../upload/upload_frame.php?act=InsertImg&' + new Date().getTime() );document.imgUpload.submit();"
		   name="filedata">
</form>
<iframe name="e" id="e" style="display:none"></iframe>
<div id="tip_login_win" style="display:none">
<div class="kf_content" id="kf_content" style="background: url(<?= $cfg['config']['homepop'] ?>) no-repeat;">
	<div>
	</div>
	<div id="kfpn">
		<div id="kfs">
        	<?php
			$query = $db->query("select * from {$tablepre}popcs order by ov DESC");
				while ($row = $db->fetch_row($query)) {
						$popkefulist .= "<li> <a target='_blank' href='{$row[url]}' ><img src='{$row[img]}'  title='{$row[name]}'></a></li>";
					}
					echo $popkefulist; ?>
		</div>
	</div>
</div>
</div>
<script>
	var roereg = /^游客/;
	if (roereg.test(My.name) && RoomInfo.onhomepop==1) {
		var tipopen = layer.open({
			type: 1,
			title: false,
			shadeClose: true,
			shade: false,
			closeBtn: true,
			shift: 1,
			bgcolor: '',
			area: ['800px', '280px'],
			content: $("#tip_login_win").html()
		});
	}
	OnInit();
  $(function () {
    $("#MsgBox1 img").attr('onclick','');
            $("#MsgBox1").on('click', '.layim_chatsay img', function () {
                    open_img($(this).attr('src'));
            });
        });
</script>
<div style="display:none">
	<?= tohtml($cfg['config']['tongji']) ?>
</div>
<div id="redbagsbgmain" class="redbagsbgmain">
	<div id="redbagsbgcloes" onClick="redbagsbcloes();"></div>
    <div class="redbagsbody">
    	<div class="redbagslist">
        	金额：<input type="text" id="rendbag_total" name="rendbag_total" placeholder="请填写红包金额" title="请填写红包金额"> 元</div>
       <div class="redbagslist">
        	个数：<input type="text" id="rendbag_num" name="rendbag_num" placeholder="请填写红包个数" title="请填写红包个数"> 个</div>
            <div class="redbagslist"><span class="beizhu">备注：</span><textarea name="envelopetext" id="envelopetext" maxlength="30">恭喜发财,大吉大利！</textarea></div>
            <div class="redbagsmoney" id="redbagsmoney">￥0.00</div>
            <div class="redbagsbalance" id="redbagsbalance">余额￥<span id="balance"><?=$userinfo['money']?></span></div>
            <a href="javascript:void(0)" class="send_redbag" onClick="sendRedbag()">立即塞钱</a>
            
        </div>
    </div>
</div>
<div id="redbag_info" class="redbag_info">
<div id="redbag_infocloes" onClick="redbag_infocloes();"></div>
<div class="redbag_sender">
  <div class="_avatar"><img src=""/></div>
  <div class="_info">
		<span class="_info_total"></span>
	    <span class="_info_from"></span>
  </div>
</div>
<h1>已领取3/3个，已领完</h1>
<table >

</table>
<div class="redbag_get_bottom">收到的红包已存入<a href="/user" target="_blank" style="color:red">余额</a></div>
</div>
<div class="flower">
		<span class="flower-close" onClick="flowershide()"></span>
		<a href="javascript:void(0)" onClick="Sendfak('flower')"><img src="images/f1.png" alt="" title="鲜花每<?=$cfg['config']['flowernum']?>分种增加1朵" style="margin: 5px auto;">鲜花(<em id="gift_num"><?=$userinfo['flower']?></em>) <span class="tips">鲜花每<?=$cfg['config']['flowernum']?>分种增加1束，最多获取10束 <i></i></span></a>
		<a href="javascript:void(0)" onClick="Sendfak('acer')"><img src="images/f2.png" alt="" title="大宝剑每<?=$cfg['config']['acernum']?>分种增加1个" style="margin: 5px auto;">大宝剑(<em id="yb_num"><?=$userinfo['acer']?></em>)<span class="tips">大宝剑每<?=$cfg['config']['acernum']?>分种增加1把，最多获取10把 <i></i></span></a>
		<a href="javascript:void(0)" onClick="Sendfak('kiss')"><img src="images/f3.png" alt="" title="飞吻每<?=$cfg['config']['kissnum']?>分种增加1个" style="margin: 5px auto;">飞吻(<em id="kiss_num"><?=$userinfo['kiss']?></em>) <span class="tips">飞吻每<?=$cfg['config']['kissnum']?>分种增加1个，最多获取10个 <i></i></span></a>
		</div>
<!--抽奖-->
<div id="dowebok">
	<div class="rotary">
		<img class="hand" src="images/z.png" alt="">
	</div>
	<div class="list">
		<strong>100%中奖</strong>
		<h4>中奖用户名单</h4>
		<ul>
			  <?php
                $query = $db->query("select * from {$tablepre}prizeset");
            while ($row = $db->fetch_row($query)) {
             echo "<li><span>$row[title]</span></li>";
            } ?>            
		</ul>
	</div>
	<div class="rotateMobile">
    <span onClick="$('.rotateMobile').hide()" class="tzck_close">X</span>
		<h1>为领奖时方便，请输入手机号哦~</h1>
		<div class="rotateMobile_c">
		手机号：<input type="text" name="rmobile" id="rmobile"  maxlength="11" placeholder="请输入手机" title="请输入手机">
		</div>
		<div class="rotateMobile_c registercode">
		验证码：<input type="text" name="rcode" id="rcode" maxlength="100" onKeyUp="value=value.replace(/[^d]/g," ")"="" placeholder="请输入验证码" title="请输入验证码">
        <a href="javascript:void(0)" class="btn-send" onClick="rotateSendMsg(this)" >获取短信验证码</a>
        </div>
		<button class="buttonBlu" onClick="rotateMobile()">开始抽奖</button>
        <p class="cjtstit">请正确填写，方便工作人员与您联系兑奖</p>
	</div>
    <div class="rotatecdk">
    <span onClick="$('.rotatecdk').hide()" class="tzck_close">X</span>
		<h1>填写抽奖码开始抽奖~</h1>
		<div class="rotateMobile_c">
		抽奖码：<input type="text" name="prizecdk" id="prizecdk"  maxlength="10" placeholder="请输入抽奖码" title="请输入抽奖码">
		</div>
		<button class="buttonBlu" onClick="rotatecdk()">开始抽奖</button>
        <p class="cjtstit">抽奖码将不定期在直播室内发放，请大家关注直播室！</p>
	</div>
	
	<a id="fancybox-close" style="display: inline;" onClick="$('#dowebok').hide()"></a>
</div>
<style>
  .layim_chatsay img{max-height:50px; cursor:pointer;}
</style>
<!--抽奖end-->
<!--[if IE 6]>
<script type='text/javascript' src='script/png.js'></script>
<script type='text/javascript'>
	DD_belatedPNG.fix('.bg_png,.bg_png1,.bg_png2');
</script>
<![endif]-->

</body>
</html>
