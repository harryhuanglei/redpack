<?php
require_once '../include/common.inc.php';
$time = time();
if($cfg['config']['loginguest']=='0' && !isset($_SESSION['login_uid']) )header('location:../logging.php');
require_once PPCHAT_ROOT.'./include/json.php';
$json=new JSON_obj;
//房间状态
if ($cfg['config']['state'] == '2' and $_SESSION['room_' . $cfg['config']['rid']] != true) {
	header("location:../login.php?rid=".$cfg['config']['rid']);
	exit();
}
if($cfg['config']['state']=='0'){exit("<script>location.href='../error.php?msg=系统处于关闭状态！请稍候……'</script>");exit();}
//游客登录
if(!isset($_SESSION['login_uid']) and $cfg['config']['loginguest']=="1"){gusetLogin();}
//是否登录
if(!isset($_SESSION['login_uid'])){header("location:../logging.php");exit();}

//用户信息
$uid=$_SESSION['login_uid'];
$db->query("update {$tablepre}members set regip='$onlineip' where uid='{$uid}'");
$userinfo=$db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.uid='{$uid}'"));
$_SESSION['login_gid']=$userinfo['gid'];
//游客
if($_SESSION['login_uid']==0){$userinfo['gid'] =17;$userinfo['username']=$userinfo['nickname']=$_SESSION['login_nick'];$userinfo['sex']=$_SESSION['login_sex'];$userinfo['uid']=$_SESSION['login_guest_uid'];}

//黑名单
$query=$db->query("select * from {$tablepre}ban where (username='{$userinfo[username]}' or ip='{$onlineip}') and losttime>".gdate()." limit 1");
while($row=$db->fetch_row($query)){
	exit("<script>location.href='error.php?msg=用户名或IP受限！过期时间".date("Y-m-d H:i:s",$row['losttime'])."'</script>");exit();
}
$query = $db->query("select * from {$tablepre}gag where username='{$userinfo[username]}'  and losttime>" . gdate() . " limit 1");
if($db->fetch_row($query)){$usergag="1";}else{$usergag="0";}
//聊天过滤词汇
//$msg_unallowable=$msg_unallowable.$cfg['config']['msgban'];


//用户组
$query=$db->query("select * from {$tablepre}auth_group order by ov desc");
while($row=$db->fetch_row($query)){
	$groupli.="<div id='group_{$row[id]}'></div>";
	$grouparr.="grouparr['{$row[id]}']=".json_encode($row).";\n";
	$group["m".$row[id]]=$row;
}
//聊天历史记录
$query=$db->query("select * from {$tablepre}chatlog where rid='".$cfg['config']['id']."' and p='false' and state!='1' and `type`='0' order by id desc limit 0,200 ");

while($row=$db->fetch_row($query)){
	$row['msg']=str_replace(array('&amp;', '','&quot;', '&lt;', '&gt;'), array('&', "\'",'"', '<', '>'),$row['msg']);
	if($row[tuid]!="ALL"){
		$omsg="<div style='clear:both;'></div>
                <div class='msg' id='{$row[msgid]}'>
                    <div class='msg_head'>
                    <img src='../../face/img.php?t=p1&u={$row[uid]}'>
                    <span class='u'>{$row[uname]}</span>
                    <span class='dui'>对</span>
                    <img src='../../face/img.php?t=p1&u={$row[tuid]}'>
                    <span class='u'>{$row[tname]}</span>
                    <span class='shuo'>说</span>
                    </div>
		       <div class='msg_content'>{$row[msg]}</div>
		       </div>".$omsg;
	}
	else{
		$omsg="<div class='msg_li'><div style='clear:both;'></div><div class='msg' ><div class='msg_head'><img src='../../face/img.php?t=p1&u={$row[uid]}'><span class='u'> {$row[uname]}：</spa></div> <div class='msg_content'>{$row[msg]}</div></div></div>".$omsg;
	}
}
//其他处理
$ts=explode(':',$cfg['config']['tserver']);

require '../include/chip.class.php';
$userChipHtml = chip::getUserChipHtml(intval($_GET['rid']));

if(!isset($_SESSION['room_'.$uid.'_'.$cfg['config'][id]])){
$db->query("insert into  {$tablepre}msgs(rid,ugid,uid,uname,tuid,tname,mtime,ip,msg,`type`)values('{$cfg[config][id]}','{$userinfo[gid]}','{$userinfo[uid]}','{$userinfo[username]}','{$cfg[config][defvideo]}','{$cfg[config][defvideonick]}','".gdate()."','{$onlineip}','登陆直播间','3')");
$_SESSION['room_'.$uid.'_'.$cfg['config'][id]]=1;
}
//QQ客服 改成公告
//var_dump($cfg['config']['notice']);die;
$notice = $cfg['config']['notice'];
$list .= "<div style='margin: 8px 18px 0px 18px;text-indent:16px;font-size:18px'><b>$notice</b></div>";


//$query = $db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.gid=3 ");
//while ($row = $db->fetch_row($query)) {
//	$list .= "
//
//  <div class='li'>
//    <div class='li_img'><img src='/face/img.php?t=p2&u={$row[uid]}'></div>
//    <div class='li_qq'><a target='_blank' href='http://wpa.qq.com/msgrd?v=3&uin={$row[realname]}&site=qq&menu=yes' target='oqq'>
//    {$row[nickname]}</a></div>
//    <div class='li_phone'>{$row[phone]}</div>
//  </div>
//";
//}
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<title>
<?=$cfg['config']['title']?>
</title>
 <meta name="viewport" content="wispanh=device-wispanh, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="default">
<meta name="browsermode" content="application">
<meta name="apple-touch-fullscreen" content="no">
<meta http-equiv="expires" content="0">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<link rel="shortcut icon" type="image/x-icon" href="<?=$cfg['config']['ico']?>" />
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<link rel="stylesheet" href="./css/index.min.css?v=<?php echo $time;?>">
    <link rel="stylesheet" href="./css/extension.css?v=<?php echo $time;?>">
    <link rel="stylesheet" href="./css/layui/css/layui.css">

    <link rel="stylesheet" href="./redpack/css/base.css" type="text/css">
    <link rel="stylesheet" href="./redpack/index.css" type="text/css">

<script type="text/javascript" src="js/jquery.min.js"></script>A
<script src="script/jquery.nicescroll.min.js"></script>
    <script src="css/layui/layer.js"></script>
<script type="text/javascript" src="js/swfobject.js"></script>
<script type="text/javascript" src="js/web_socket.js"></script>
<script type="text/javascript" src="js/json.js"></script>
<!--<script type="text/javascript" src="script/layer.js"></script>-->
<script src="script/main.m.js?v=<?php echo $time;?>"></script>
<script src="../script/device.min.js"></script>
<script>

    function eventListener()
{
	document.addEventListener("visibilitychange", function() {
	  if ( !document.hidden ) {
	  	window.location.reload();
	  }
	});
}

$(function () {
  var isPageHide = false;
  window.addEventListener('pageshow', function () {
    if (isPageHide) {
      window.location.reload();
    }
  });
  window.addEventListener('pagehide', function () {
    isPageHide = true;
  });
})

</script>
<script>
//if (!device.mobile()){window.location = '.';}
var UserList;
var ToUser;
var VideoLoaded=false;
var My={dm:'<?=$_SERVER['HTTP_HOST']?>',rid:'<?=$cfg['config']['rid']?>',roomid:'<?=substr(md5($_SERVER['HTTP_HOST']), 0, 6).$cfg['config']['id']?>',chatid:'<?=$userinfo['uid']?>',name:'<?=$userinfo['username']?>',nick:'<?=$userinfo['nickname']?>',sex:'<?=$userinfo['sex']?>',age:'0',qx:'<?=check_auth('room_admin')?'1':'0'?>',ip:'<?=$onlineip?>',vip:'<?=$userinfo['gid']?>',color:'<?=$userinfo['gid']?>',cam:'0',state:'0',mood:'<?=$userinfo['mood']?>',rst:'<?=$time?>',camState:'1',gag: '<?=$usergag?>'}
var RoomInfo={loginTip:'<?=$cfg['config']['logintip']?>',Msglog:'<?=$cfg['config']['msglog']?>',loginalert: '<?=$cfg['config']['loginalert']?>',logoutalert:'<?=$cfg['config']['logoutalert']?>',msgBlock:'<?=$cfg['config']['msgblock']?>',msgAudit:'<?=$cfg['config']['msgaudit']?>',defaultTitle:document.title,MaxVideo:'10',VServer:'<?=$cfg['config']['vserver']?>',VideoQ:'',TServer:'<?=$ts[0]?>',TSPort:'<?=$ts[1]?>',PVideo:'<?=$cfg['config']['defvideo']?>',AutoPublicVideo:'1',AutoSelfVideo:'0',type:'1',PVideoNick:'',OtherVideoAutoPlayer:'<?=$cfg['config']['livetype']?>',r:'<?=$cfg['config']['rebots_yk']?>',rebots_re: '<?=$cfg['config']['rebots_re']?>'}
var grouparr=new Array();
<?=$grouparr?>
var ReLoad;
var isIE=document.all;
var aSex=['<span class="sex-womon"></span>','<span class="sex-man"></span>',''];
var aColor=['#FFF','#FFF','#FFF'];
var msg_unallowable="<?=$msg_unallowable?>";
   if (typeof console == "undefined") {    this.console = { log: function (msg) {  } };}
    WEB_SOCKET_SWF_LOCATION = "js/WebSocketMain.swf";
    WEB_SOCKET_DEBUG = true;
    var ws, name, client_list={},timeid, reconnect=false;

</script>

<style type="text/css" media="screen">
#flashContent { display: block; text-align: left; }
</style>
</head>




<body style="position: relative; top: 0px; background-image: url(./images/929199.jpg);background-size: cover; overflow: hidden; background-position: initial initial; background-repeat: no-repeat no-repeat;padding: 0;margin: 0;">

<div class="draw-gift" id="draw-gift" style="display: none;" >
    <div class="draw-img">
        <div class="draw-up hide"></div>
        <div class="draw-up-up" id="draw-up-up"></div>
        <div id="kai" class="draw-mid draw-mid-move"></div>
        <div class="draw-down"></div>
        <div class="draw-down2 hide"></div>
        <div class="draw-list"><img src="image/open-hagen.jpg"></div>
    </div>
<!--    <a href="javascript:;" id="draw-btn">点击打开</a>-->
</div>
<script>
    $(function () {
        $("#draw-gift").on("click", function () {
            $("#draw-gift").css({display:"none"});
        })
        $("#kai").on("click", function () {
            $(".draw-mid").removeClass("draw-mid-move").css({display:"none"});
            $(".draw-up").animate({
                opacity: "1"
            }, 100);
            $("#draw-up-up").animate({
                opacity: "1",
                top: "-4.12rem"
            }, 200);
            $(".draw-down").animate({
                opacity: "0"
            }, 300);
            $(".draw-down2").animate({
                opacity: "1"
            }, 300);
            $(".draw-list").animate({opacity:"1"},600).animate({top:"-4.4rem"},1000);

        });
    })
</script>

<!--发红包-->
<div id="hb-ctrol" class="redbagsbgmain" style="display: none;">
    <div id="redbagsbgcloes"></div>
    <div class="redbagsbody">
        <div class="redbagslist">
            金额：<input type="text" id="money" name="money" placeholder="请填写红包金额" title="请填写红包金额"> 元</div>
        <div class="redbagslist">
            个数：<input type="text" id="money_total" name="money_total" placeholder="请填写红包个数" title="请填写红包个数"> 个</div>
        <div class="redbagslist"><span class="beizhu">备注：</span><textarea name="mark" id="mark" maxlength="30">恭喜发财,大吉大利！</textarea></div>
        <div class="redbagsmoney" id="redbagsmoney">￥0.00</div>
        <div class="redbagsbalance" id="redbagsbalance">余额￥<span id="balance"></span></div>
        <a href="javascript:void(0)" class="send_redbag" id="send_redbag">立即塞钱</a>

    </div>
</div>
<!--end-->

<div id="details"></div>
<div id="newsDetail" style="display: none;"></div>
<div class="zhezhao"></div>
<div id="sharedWrap"> </div>
<div id="shared"></div>
<article>
  <div id="logo"> <img src="<?=$cfg['config']['logo']?>" alt="" height="25px"> </div>
  <section id="#head_1">
    <div id="video-flash" class="videoTitle"> <img src="./images/refresh.png" alt="刷新" width="20px" height="20px">
      <div class="video-flashBtn">刷新视频</div>
    </div>
    <!-- 视频 -->
      <div class="video-box">
          <div class="video-wrap">
              <div class="bg-opacity"></div>
          </div>
          <div class="video-wrap" id="view-wrap-container">
              <div id="video-status-container" class="video-status-container"></div>
              <div class="video-win" id="video-win">
              </div>
          </div>
      </div>
    <nav>
      <ul>
        <li class="spec1 active">聊天<span class="activeCart"></span> </li>
        <li class="spec2">公告<span class=""></span> </li>
        <li class="spec3">推广连接<span class=""></span> </li>
        <li>
          <?php
            if($_SESSION['login_uid']>0)
			{
				echo $userinfo['username']." <a href='../minilogin1.php?act=logout'>退出</a>";
			}else {
				echo '<div id="loginBtn" onClick="location.href=\'../minilogin1.php\'">注册/登陆</div>';
			}
			?>
        </li>
      </ul>
    </nav>
      <nav>
          <li class="spec4 ">我的积分:</li>
          <a style="margin-top: 10px;line-height: 2.4" class="" id="my_account"></a>
          <a style="margin-right: 5px;float:right;line-height: 2.4" id="clock">北京时间：12:12:12</a>
      </nav>
  </section>
  <section>
    <div id="publicChat" class="publicChat"><?=$omsg?></div>
    <div id="qqOnline" style="width: 100%; display: none; overflow:auto;" class="white">
		<style type="text/css">
		/* CSS Document */

		body {
			font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
			color: #4f6b72;
			background-color: #c2ddf3;
		}

		a {
			color: #FFF;
			text-decoration: none;
		}

		.list {
			float: left;
			margin-bottom: 20px;
		}

		.li {
			float: left;
			margin: 1px;
			width: 110px;
			padding: 1px;
			border: 1px solid #aec5d8;
			background-color: #fff;
			height: 208px;
		}

		.li_img img {
			width: 100px;
			height: 140px;
			border: 1px #CCCCCC solid;
			padding: 1px;
			margin: 1px;
		}

		.li_qq {
			background: url(/apps/img/pop_btn1.png) no-repeat;
			display: block;
			margin: 0 auto;
			color: #fff;
			font-size: 14px;
			padding-left: 25px;
			margin-top: 3px;
			width: 80px;
			height: 26px;
			line-height: 26px;
			overflow: hidden
		}

		.li_qq:hover {
			opacity: 0.9;
		}

		.li_phone {
			background: url(/apps/img/pop_btn2.png) no-repeat 1px 3px;
			display: block;
			height: 22px;
			line-height: 22px;
			padding-left: 12px;
			width: 90px;
			margin: 0 auto;
			font-size: 13px;
			overflow: hidden;
			color: #F00
		}
          .msg_content img{max-height:50px; cursor:pointer;}

        #number_djs{
            display: inline-block;
            height: 40px;
            width:120px;
            line-height: 30px;
            font-size: 20px;
            color: #f00;
            text-align: center;
        }
            #get_packet{
                margin-top: 10px;
                display: inline-block;
                background-color: #076aa3;
                color: #66FF00;
                padding: 4px;
                border-radius: 4px;
                font-size: 12px;
            }
	</style>
</head>

<body style="overflow:auto">
<div class='list'>
	<?= $list ?>
</div>
    </div>
    <div class="kuaiXun" style="width: 100%; display: none;">
      <iframe src="/apps/tg.php?rid=<?= $cfg['config']['rid'] ?>" frameborder="0" scrolling-y="auto" width="99.9999%"  height=100%></iframe>
    </div>
  </section>
</article>
<div id="footer" style="display: block;">
    <?php if ($uid != 1) : ?>
  <div class="sendBtn fr" id="sendBtn">发送</div>
    <?php endif;?>

    <?php if($cfg['config']['rid'] ==2):?>
        <?php if ($uid == 1) : ?>
            <button id="start"> <span>开始</span></button>
            <button id="have"> <span>还有</span> </button>
            <button id="end"> <span>结束</span> </button>
            <button id="walk"> <span>走势</span> </button>
            <button id="acc"> <span>结算</span> </button>
        <?php endif;?>
        <?php if ($uid) : ?>
        <?php endif;?>
        <button id="chip"> <span>/</span> </button>
        <button id="tt"> <span>测试</span> </button>
        <input type="hidden" id="mType" value="1">
    <?php endif;?>

    <?php if($cfg['config']['rid'] ==1):?>
        <?php if ($uid == 1) : ?>
            <div id="start"> <span>开始</span> </div>
            <!--        <div id="sharedBtn"> <span>红包</span> </div>-->
        <?php endif;?>
        <?php if ($uid) : ?>
        <?php endif;?>
        <div id="chip"> <span>下注</span> </div>
    <?php endif;?>
    <?php if ($uid != 1) : ?>
        <div class="smile"><img src="./images/smile.png" alt="表情" width="26px" height="26px"> </div>
        <div id="editor">
            <div class="messageEditor" id="messageEditor" contenteditable="true"></div>
        </div>
    <?php endif;?>

</div>
<div class="loginWrap"></div>
<div class="tipMesWrap"></div>
<div class="setting-expression-layer" style='display: none;'>
  <div class="expression" id="expressions">
    <table class="expr-tab expr-tab1">
    </table>
  </div>
</div>
<script>
    OnInit();
    var userChipHtml = '<?php echo $userChipHtml;?>';
    var chip_img = '<?php echo $cfg[config][chip]?>';
    var start_img = '/upload/game/start.png';
    var have_img = '/upload/game/have.png';
    var end_img = '/upload/game/end.png';
    var kjl_img = '/upload/game/kjl.png';
    var lpwc_img = '/upload/game/lpwc.png';
    $('#sharedBtn').click(function(){
        $('#hb-ctrol').show();
    })
    $('#redbagsbgcloes').click(function(){
        $('#hb-ctrol').hide();
    })

    $("#get_packet").click(function(){
        $('#draw-gift').show();
    });
/**
$('#sharedBtn').click(function(){
    layer.open({
        type: 1 //Page层类型
        ,area: ['200px', '300px']
        ,title: '主持游戏'
        ,shade: 0.6 //遮罩透明度
        ,maxmin: true //允许全屏最小化
        ,anim: 1 //0-6的动画形式，-1不开启
        ,content: '<div style="text-align: center;padding-top:10px;"><button class="layui-btn layui-btn-primary" id="start-chip" style="background-color:#076aa3;color:#ffffff;">开始下注</button></div><div style="text-align: center;padding-top:10px;"><input type="text" name="money" id="money" style="border:0.5px solid #C9C9C9;width:90px;height:26px;" placeholder="输入红包金额" /></div><div style="text-align: center;padding-top:10px;"><input type="text" name="money_total" id="money_total" style="border:0.5px solid #C9C9C9;width:90px;height:26px;" placeholder="输入红包个数" /></div><div style="text-align: center;padding-top:10px;"><input type="text" name="mark" id="mark" style="border:0.5px solid #C9C9C9;width:90px;height:26px;" placeholder="填写备注" /></div><div style="text-align: center;padding-top:10px;"><button class="layui-btn layui-btn-primary" id="send-hb" style="background-color:#34af7f;color:#ffffff;">发送红包</button></div>'
    });
})*/



    $('#sendBtn').click(function(){
        // var str=encodeURIComponent($("#messageEditor").html().str_replace());
        var str = $("#messageEditor").text();
        //下注
        $.post(
            'chip.php',
            {'money' : str,'type':1},
            function(data) {
                if (data.status == 200) {
                    // $('#hb-ctrol').hide();
                    layer.msg(data.msg)
                    MsgSend(1);
                }else if(data.status == 201){
                    layer.msg(data.msg);
                }else{
                    MsgSend();
                    // layer.msg(data.msg);
                    // window.location.href=data
                }
            }
        )
    })

    $('#chip').click(function(){

        // var str=encodeURIComponent($("#messageEditor").html().str_replace());
        var str = $("#messageEditor").text();
        str += '/';
        $("#messageEditor").text(str);
        return;
        if (str == '') {
            layer.msg('请输入下注金额再点击下注');
            return
        }
        //下注
        $.post(
            'chip.php',
            {'money' : str,'type':1},
            function(data) {
                if (data.status == 200) {
                    // $('#hb-ctrol').hide();
                    layer.msg(data.msg)
                    MsgSend(1);
                }else if(data.status == 201){
                    layer.msg(data.msg);
                }else{
                    // layer.msg(data.msg);
                    // window.location.href=data
                }
            }
        )

    })


    $("#money").keyup(function(){
        $("#redbagsmoney").text("¥"+$("#money").val());
    });
    //开始下注
    $('#start').live("click", function(){
        var ty = $('#mType').val();
        $.post(
            'turn.php',
            {'type':ty,'act':'start'},
            function(data) {
                layer.msg(data.msg);
                if (data.status == 200) {
                    var send_html = '<img rel="39" src="'+start_img+'" style="" onclick="">';
                    // MsgSendImg(send_html);
                    MsgSend(2,send_html);
                    MsgSend(2,'当前期数:'+data.data.current_times)
                }
            }
        )
    })
    //还有
    $('#have').live("click", function(){
        var send_html = '<img rel="39" src="'+have_img+'" style="" onclick="">';
        MsgSend(2,send_html);
    });

    //开奖了
    $('#kai').live("click", function(){
        var str=encodeURIComponent($("#messageEditor").html().str_replace());
        if (str == '') {
            layer.msg('开发中');
        }
        $.post(
            'turn.php',
            {'type':ty,'act':'end'},
            function(data) {
                layer.msg(data.msg);
                if (data.status == 200) {
                    var send_html = '<img rel="39" src="'+end_img+'" style="" onclick="">';
                    // MsgSendImg(send_html);
                    MsgSend(2,send_html);
                }
            }
        )
    });

    //走势
    $('#walk').live("click", function(){
        var ty = $('#mType').val();
        $.post(
            'turn.php',
            {'type':ty,'act':'walk'},
            function(data) {
                if (data.status == 200) {
                    // var send_html = '<img rel="39" src="'+end_img+'" style="" onclick="">';
                    // // MsgSendImg(send_html);
                    var walk_data = data.data.record;
                    var walk_html = data.data.content+'<br>';
                    var other = data.data.other;
                    for(var i = 1;i<=walk_data.length;i++){
                        walk_html += walk_data[i-1]+' ';
                        if (i%3 == 0){
                            walk_html += '<br>';
                        }
                    }
                     walk_html += '<br>'+other+'<br>';
                    // MsgShow(walk_html);
                    MsgSend(2,walk_html);
                }else{
                    layer.msg(data.msg);
                }
            }
        )
    });

    //结束
    $('#end').live("click", function(){
        var ty = $('#mType').val();
        $.post(
            'turn.php',
            {'type':ty,'act':'end'},
            function(data) {
                layer.msg(data.msg);
                if (data.status == 200) {
                    var send_html = '<img rel="39" src="'+end_img+'" style="" onclick="">';
                    var kaijiang = '<img rel="39" src="'+kjl_img+'" style="" onclick="">';
                    MsgSend(2,send_html);
                    MsgSend(2,kaijiang);
                    // var end_content = "在微信群发包开奖，这边直播发包过程，要去点红包的可以悬浮直播间，点右上角三点，再点悬浮即可！加财务微信:xiaobao01478 进群";
                    var end_content = data.data.content;
                    if(end_content){
                        MsgSend(2,end_content);
                    }
                }
            },"json")
    })

    //结算
    $('#acc').live("click", function(){
        var ty = $('#mType').val();
        $.post(
            'account.php',
            {'type':ty,'act':'end'},
            function(data) {
                layer.msg(data.msg);
                if (data.status == 200) {
                    var send_html = '<img rel="39" src="'+lpwc_img+'" style="" onclick="">';
                    MsgSend(2,send_html);
                }

            }
        )
    });

    //开奖号码
    $('#').live("click", function(){
        layer.prompt({title: '请输入开奖号码，并确认', formType: 3}, function(text, index){
            //下注
            $.post(
                'chip.php',
                {'money' : text},
                function(data) {
                    console.log(data);
                    if (data.status == 200) {
                        // $('#hb-ctrol').hide();
                        layer.close(index);
                        layer.msg(data.msg)

                    }else if(data.status == 201){
                        layer.close(index);
                        layer.msg(data.msg);
                    }else{
                        layer.close(index);
                        layer.msg(data.msg);
                        window.location.href=data
                    }
                }
            )

        });


    })

        //测试
    $('#tt').live("click", function(){
        layer.prompt({title: '请输入开奖号码，并确认', formType: 3}, function(text, index){
            //下注
            $.post(
                'chip.php',
                {'money' : text},
                function(data) {
                    console.log(data);
                    if (data.status == 200) {
                        // $('#hb-ctrol').hide();
                        layer.close(index);
                        layer.msg(data.msg)

                    }else if(data.status == 201){
                        layer.close(index);
                        layer.msg(data.msg);
                    }else{
                        layer.close(index);
                        layer.msg(data.msg);
                        window.location.href=data
                    }
                }
            )

        });



        return;
        $.post(
            'heart.php',
            {'type' : 1},
            function(data) {
                var rbt = data.robot;
                console.log(rbt);
                if (rbt != ''){
                    for (var i =0;i < rbt.length;i++){
                        var cc = robotChip(rbt[i].uid,rbt[i].name,rbt[i].chip);
                        MsgShow(cc);
                    }
                }
                // $("#my_account").text(data['account']);
            },'json')
    })



    $('#send_redbag').live("click", function(){
        var money = $('#money').val();
        var money_total = $('#money_total').val();
        var mark = $('#mark').val();
        $.post(
            'send_hb.php',
            {'money' : money, 'money_total' : money_total, 'mark' : mark},
            function(data) {
                layer.msg(data.msg);
                if (data.status == 200) {
                    $('#hb-ctrol').hide();
                }
            }
        )
    })
    $(function () {
        $("#publicChat img").attr('onclick', '');
        $("#publicChat").on('click', '.msg_content img', function () {
            open_img($(this).attr('src'));
        });
    });
    function convert(str) {
        return str.replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;').replace(/"/g,'&quot;').replace(/'/g,'&apos;');
    }
    function check_sotre(){
        $.post(
            'heart.php',
            {'type' : 1},
            function(data) {
                d=new Date();
                var h=d.getHours();
                var m=d.getMinutes();
                var s=d.getSeconds();
                var hms="北京时间: "+h+":"+m+":"+s;
                $('#clock').text(hms);
                $("#my_account").text(data['account']);
                var rbt = data.robot;
                console.log(rbt)
                if (rbt){
                    for (var i =0;i < rbt.length;i++){
                        var cc = robotChip(rbt[i].uid,rbt[i].name,rbt[i].chip);
                        // var content = "下注成功"+rbt[i].chip;
                        // robotSay(rbt[i].uid,rbt[i].name,content);
                        MsgShow(cc,1);
                        MsgAutoScroll();

                    }


                }
            }
        )
    }

    // window.setInterval(function() {
    //     check_sotre();
    // },1000)


    //window.clearInterval(t2)  // 去除定时器
    // setTimeout("check_sotre()",1000);
  </script>
</body>
</html>
