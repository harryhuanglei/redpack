<?php
require_once '../include/common.inc.php';
require_once PPCHAT_ROOT.'./include/json.php';
$json=new JSON_obj;
$uid=$_SESSION['login_uid'];
switch($act){
	case "vote":
		if($uid<1){
			$data["status"]=0;
			$data["msg"]="未登录，不能投票";
			exit($json->encode($data));
		}
		if($db->num_rows($db->query("select * from {$tablepre}apps_vote where uid='$uid' and vid='$vid' and FROM_UNIXTIME(time,'%Y%m%d')='".date('Ymd',gdate())."'"))>0){
			$data["status"]=0;
			$data["msg"]="你今日已经投过了！明日再投";
			exit($json->encode($data));
		}
		$db->query("insert into {$tablepre}apps_vote(rid,vid,uid,v,time)values('$rid','$vid','$uid','$v','".gdate()."')");
		$data["status"]=1;
		$data["msg"]="投票成功";
		exit($json->encode($data));

	break;
	case "show":
		$v1=for_each($db->query("select count(*) as v1 from {$tablepre}apps_vote where v='0' and vid='$vid' and rid='$rid'"),'{v1}');
		$v2=for_each($db->query("select count(*) as v2 from {$tablepre}apps_vote where v='1' and vid='$vid' and rid='$rid'"),'{v2}');
		$v3=for_each($db->query("select count(*) as v3 from {$tablepre}apps_vote where v='2' and vid='$vid' and rid='$rid'"),'{v3}');
		$data["status"]=1;
		$data["msg"]="";
		$data["v1"]=(int)$v1;
		$data["v2"]=(int)$v2;
		$data["v3"]=(int)$v3;
		exit($json->encode($data));
	break;
	}

?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<script src="../script/jquery.min.js"></script>
<style type="text/css">
body { font-size:12px;color:#2C4B5F; font-family:Arial, Helvetica, sans-serif; text-align:center; }
a { color:#999; font:12px;}
*{ margin:0px; padding:0px; text-decoration:none; list-style:none}
/*投票*/
.hide{display:none;}
.show{display:block;}
.toupiao{padding:2px 0;height:42px;}
.toupiao a{float:left;width:64px;padding-right:6px;height:42px;text-align:right;margin-right:1px; display:block;color:#ff0;line-height:22px;}
.toupiao a em{display:block;color:#fff;line-height:14px;font-style:normal;}
.toupiao a.t_up{margin-left:2px;}
#w_3 .t_up{background: url(img/vote1.png) 5px 5px no-repeat #b93838;}
#w_3 .t_leve{background: url(img/vote2.png) 5px 5px no-repeat #5F5959;}
#w_3 .t_down{background: url(img/vote3.png) 5px 5px no-repeat  #38b9b9;}
#w_4 .t_up{background-position:0 -42px;}
#w_4 .t_leve{background-position:-64px -42px;}
#w_4 .t_down{background-position:-128px -42px;}
#w_5 .t_up{background-position:0 -84px;}
#w_5 .t_leve{background-position:-64px -84px;}
#w_5 .t_down{background-position:-128px -84px;}

.mt{height:25px;clear:both;}
.mt li{margin-top:3px;font-size:14px;width:72px;height:25px;text-align:center;line-height:25px;color:#fff;background:#FCA323;float:left;cursor:pointer;}
.mt .curr{background:#ffffff;color:#e4393c;}
</style>
<script>
function vote_g(o){return document.getElementById(o);}
function vote_N(n){
	for(var i=3;i<=5;i++){
		vote_g('n_'+i).className='line';
		vote_g('w_'+i).className='hide';
	}
	vote_g('w_'+n).className='show';
	vote_g('n_'+n).className='curr';
	show_vote(n);
}
function more_vote(value,vote_id){
	$.post('?act=vote' ,{rid:<?=$rid?>,vid:vote_id,v:value},function(data){
		if( data.status){
			top.layer.msg('投票成功');
		}else{
			var vote_name = $('#n_'+vote_id).text();
			//top.layer.msg(vote_name+'涨势,'+data.msg,{shift: 6});
			top.layer.msg(data.msg,{shift: 6});
		}
	},'json');
	show_vote(vote_id);
}
function show_vote(vid){
	$.post('?act=show' ,{rid:<?=$rid?>,vid:vid},function(data){
		if( data.status){
			var sum=data.v1+data.v2+data.v3;

			var v1= sum ? Math.round(data.v1/sum*10000)/100: 1;
			var v2= sum ? Math.round(data.v2/sum*10000)/100: 1;
			var v3= sum ? Math.round(data.v3/sum*10000)/100: 1;
			$('#w_'+vid+ " .t_up em").text(v1.toFixed(0)+"%");
			$('#w_'+vid+ " .t_leve em").text(v2.toFixed(0)+"%");
			$('#w_'+vid+ " .t_down em").text(v3.toFixed(0)+"%");
		}
	},'json');
}
</script>
</head>

<body style=" margin:0 2px;">

<div class="mt" style="display:none;">
<ul>
<li id="n_3" class="line" onClick="vote_N(3);">原油</li>
<li id="n_4" class="curr" onClick="vote_N(4);">白银</li>
<li id="n_5" class="line" onClick="vote_N(5);">铜</li>
</ul>
</div>
<div style="clear:both"></div>
<div class="toupiao">
<div id="w_3" class="hide">
	<a class="t_up" href="javascript:void(0)" onClick="javascript:more_vote(0,3)">看涨<em></em></a>
	<a class="t_leve" href="javascript:void(0)" onClick="javascript:more_vote(1,3)">盘整<em></em></a>
	<a class="t_down" href="javascript:void(0)" onClick="javascript:more_vote(2,3)">看空<em></em></a></div>

<div id="w_4" class="show">
	<a class="t_up" href="javascript:void(0)" onClick="javascript:more_vote(0,4)">看涨<em></em></a>
	<a class="t_leve" href="javascript:void(0)" onClick="javascript:more_vote(1,4)">盘整<em></em></a>
	<a class="t_down" href="javascript:void(0)" onClick="javascript:more_vote(2,4)">看空<em></em></a></div>

<div id="w_5" class="hide">
	<a class="t_up" href="javascript:void(0)" onClick="javascript:more_vote(0,5)">看涨<em></em></a>
	<a class="t_leve" href="javascript:void(0)" onClick="javascript:more_vote(1,5)">盘整<em></em></a>
	<a class="t_down" href="javascript:void(0)" onClick="javascript:more_vote(2,5)">看空<em></em></a></div>
</div>
<script>vote_N(3);</script>
</body>
</html>
