<?php
if(!isset($_SESSION['admincp']))exit("<script>top.location.href='http://".$_SERVER["HTTP_HOST"]."/admin/login.php'</script>");
function group_add($title,$sn,$ico,$ov){
	global $db,$tablepre;
	$db->query("insert into {$tablepre}auth_group(title,sn,ico,type,ov)values('$title','$sn','$ico',0,'$ov')");
}
function group_del($id){
	global $db,$tablepre;
	$db->query("delete from {$tablepre}auth_group where id='$id' and id not in (1,2,3)");
}
function group_edit($id,$title,$sn,$ico,$ov){
	global $db,$tablepre;
	$db->query("update {$tablepre}auth_group set title='$title',sn='$sn',ico='$ico',ov='$ov' where id='$id'");
}
function group_rules_edit($id,$rules){
	global $db,$tablepre;
	$db->query("update {$tablepre}auth_group set rules='$rules'  where id='$id'");
}
//机器人添加修改删除
function rebotsuser_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}rebotslist where id  in ($ids) and id not in (0,1)");
}
function rebots_add($rgroup,$rid,$name,$week,$stime,$etime){
	global $db,$tablepre;
	if(stripos(auth_group($_SESSION['login_gid']),'sys_rebots')!==false)
	{
		$db->query("insert into {$tablepre}rebotslist (name,rid,rgroup,week,stime,etime) values ('$name','$rid','$rgroup','$week','$stime','$etime')");
	}

}
function rebotsuser_edit($id,$name,$rid,$rgroup,$week,$stime,$etime){
	global $db,$tablepre;
	if(stripos(auth_group($_SESSION['login_gid']),'sys_rebots')!==false)
	{
		$db->query("update {$tablepre}rebotslist set name='$name',rid='$rid',rgroup='$rgroup',week='$week',stime='$stime',etime='$etime' where id='$id'");
	}
}
function user_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}members where uid  in ($ids) and uid not in (0,1)");
	$db->query("delete from {$tablepre}memberfields where uid in ($ids) and uid not in (0,1)");
}
function user_edit($id,$username,$realname,$password,$phone,$money,$gid,$fuser,$tuser,$sn,$state,$nickname){
	global $db,$tablepre;
	if($password!="")$pwd=" ,password='".md5($password)."',";
	else $pwd=',';
	if(stripos(auth_group($_SESSION['login_gid']),'users_group')!==false)
	{
		$db->query("update {$tablepre}members set gid='$gid'  where uid='$id'");
	}

	$db->query("update {$tablepre}members set username='$username', realname='$realname' $pwd phone='$phone',money='$money',fuser='$fuser',tuser='$tuser',state='$state' where uid='$id'");
	$db->query("update {$tablepre}memberfields set sn='$sn',nickname='$nickname' where uid='$id'");
}
function user_add($username,$realname,$password,$phone,$money,$gid,$fuser,$tuser,$sn,$state,$nickname){
	global $db,$tablepre;
	if($password!="")$pwd=" ,password='".md5($password)."',";
	else $pwd=',';
	if(stripos(auth_group($_SESSION['login_gid']),'users_group')!==false)
	{
		$db->query("insert into {$tablepre}members (`gid`) values ('$gid')");
		$uid = $db->insert_id();
	}

	$db->query("update {$tablepre}members set regdate='".time()."',username='$username' , realname='$realname' $pwd phone='$phone',money=$money,fuser='$fuser',tuser='$tuser',state='$state' where uid='$uid'");
	$db->query("insert {$tablepre}memberfields  (sn,nickname,uid) values('$sn','$nickname','$uid')");
}
function useryk_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}yk_members where uid  in ($ids)");
}
function useryk_edit($id,$userid,$username,$realname,$phone,$fuser,$tuser,$state,$remarks){
	global $db,$tablepre;
	$db->query("update {$tablepre}yk_members set userid='$userid', username='$username', realname='$realname',phone='$phone',fuser='$fuser',tuser='$tuser',state='$state',remarks='$remarks' where uid='$id'");
}
function giftrecordlist($num,$sql,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}
function giftrecord_del($id){
	global $db,$tablepre;
	if($id=="")return;
	$db->query("delete from {$tablepre}gift_record where id in ($id)");
}
//房间列表
function roomlist($num,$sql,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}
//编辑房间
function config_edit($arr,$roomid){
	global $db,$tablepre;
	foreach($arr as $key=>$v){
		$set[]="`$key`='$v'";
	}
	$sql="update {$tablepre}config set ".implode(",",$set)." where id={$roomid}";
	$db->query($sql);
}
//删除房间
function room_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}config where id  in ($ids) and id not in (0,1)");
}
//添加房间
function config_add($arr,$roomid){
	global $db,$tablepre;
	$query = $db->query("select id from {$tablepre}config where rid='{$roomid}' limit 1");
	if ($db->num_rows($query)) exit("<script>alert('抱歉您输入的房间号已经被占用，并且房间号必须为数字！');location.href='base_add.php'</script>");
	foreach($arr as $key=>$v){
		$set[]="`$key`='$v'";
	}
	$sql="insert into {$tablepre}config set ".implode(",",$set);
	$db->query($sql);
	echo ("<script>alert('添加成功');location.href='base_list.php'</script>");
}
//短信设置
function confmessage_edit($arr,$roomid){
	global $db,$tablepre;
	foreach($arr as $key=>$v){
		$set[]="`$key`='$v'";
	}
	$sql="update {$tablepre}confmessage set ".implode(",",$set)." where id=1";
	$db->query($sql);
}

//抽奖配置
function prizeconf_edit($arr,$roomid){
	global $db,$tablepre;
	foreach($arr as $key=>$v){
		$set[]="`$key`='$v'";
	}
	$sql="update {$tablepre}prizeconf set ".implode(",",$set)." where id=1";
	$db->query($sql);
}
function confpay_edit($arr){
	global $db,$tablepre;
	foreach($arr as $key=>$v){
		$set[]="`$key`='$v'";
	}
	$sql="update {$tablepre}confpay set ".implode(",",$set)." where id=1";
	$db->query($sql);
}
function ban_del($id){
	global $db,$tablepre;
	$db->query("delete from {$tablepre}ban where id='$id'");
}
function ban_add($username,$ip,$sn,$losttime){
	global $db,$tablepre;
	$losttime=strtotime($losttime);
	$db->query("insert into {$tablepre}ban(username,ip,sn,losttime)values('$username','$ip','$sn','$losttime')");
}
function ban_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}ban";
	if($key!="")$sql.=" where username like '%$key%' or ip like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
//禁言管理
function gag_del($id){
	global $db,$tablepre;
	$db->query("delete from {$tablepre}gag where id='$id'");
}
function gag_add($username,$ip,$sn,$losttime){
	global $db,$tablepre;
	$losttime=strtotime($losttime);
	$db->query("insert into {$tablepre}gag(username,ip,sn,losttime)values('$username','$ip','$sn','$losttime')");
}
function gag_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}gag";
	if($key!="")$sql.=" where username like '%$key%' or ip like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
function tx_del($id){
	global $db,$tablepre;
	$db->query("delete from {$tablepre}tx_list where id='$id'");
}
function tx_status($id){
	global $db,$tablepre;
	$db->query("update {$tablepre}tx_list set status='1' where id='$id'");
}
function tx_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}tx_list";
	if($key!="")$sql.=" where user like '%$key%' or username like '%$key%'";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by status asc ,id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}

function order_del($id){
	global $db,$tablepre;
	$db->query("delete from {$tablepre}order_list where id='$id'");
}
function order_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}order_list where status='1'";
	if($key!="")$sql.=" and username like '%$key%' or account like '%$key%'";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}

function prizelist_del($id){
	global $db,$tablepre;
	$db->query("delete from {$tablepre}mobilelist where mbid='$id'");
}
/*
function prizelist_status($id){
	global $db,$tablepre;
	$db->query("update {$tablepre}mobilelist set status='1' where id='$id'");
}*/
function prizelist_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}mobilelist";
	if($key!="")$sql.=" where mobile like '%$key%' or prize like '%$key%'";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by mbid desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}

function prizecdk_del($id){
	global $db,$tablepre;
	if($id=="")return;
	$db->query("delete from {$tablepre}prizecdk where id in ($id)");
	echo ("<script>location.href='prizecdk.php'</script>");
}
/*
function prizecdk_status($id){
	global $db,$tablepre;
	$db->query("update {$tablepre}prizecdk set status='1' where id='$id'");
}*/
function prizecdk_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}prizecdk where type = 0";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
function prizecdkRecord_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}prizecdk where type = 1";
	if($key!="")$sql.=" and cdk like '%$key%' or username like '%$key%' or prize like '%$key%'";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by usetime desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
function prizecdkRecord_del($id){
	global $db,$tablepre;
	$db->query("delete from {$tablepre}prizecdk where id='$id'");
}
function notice_del($id){
	global $db,$tablepre;
	$db->query("delete from {$tablepre}notice where id='$id'");
}
function notice_add($title,$txt,$ov,$type,$linkaddr){
	global $db,$tablepre;
	$losttime=strtotime($losttime);
	$db->query("insert into {$tablepre}notice(title,txt,ov,`type`,linkaddr)values('$title','$txt','$ov','$type','$linkaddr')");
}
function notice_edit($id,$title,$txt,$ov,$type,$linkaddr){
	global $db,$tablepre;
	$db->query("update {$tablepre}notice set title='$title',txt='$txt',ov='$ov',`type`='$type',linkaddr='$linkaddr' where id='$id'");
}
//讲师管理
function lecturer_del($id){
global $db,$tablepre;
$db->query("delete from {$tablepre}lecturer where id='$id'");
}
function lecturer_add($head,$name,$ov,$introduce){
	global $db,$tablepre;
	//$losttime=strtotime($losttime);
	$db->query("insert into {$tablepre}lecturer(head,name,ov,introduce)values('$head','$name','$ov','$introduce')");
}
function lecturer_edit($id,$head,$name,$ov,$introduce){
	global $db,$tablepre;
	$db->query("update {$tablepre}lecturer set head='$head',name='$name',ov='$ov',introduce='$introduce' where id='$id'");
}
//讲师管理结束
//中奖列表设置
function prizeset_del($id){
global $db,$tablepre;
$db->query("delete from {$tablepre}prizeset where id='$id'");
}
function prizeset_add($title){
	global $db,$tablepre;
	$db->query("insert into {$tablepre}prizeset(title)values('$title')");
}
function prizeset_edit($id,$title){
	global $db,$tablepre;
	$db->query("update {$tablepre}prizeset set title='$title' where id='$id'");
}
//中奖列表设置结束

//聊天窗口客服管理
function customerservice_del($id){
global $db,$tablepre;
$db->query("delete from {$tablepre}customerservice where id='$id'");
}
function customerservice_add($name,$url,$img,$ov){
	global $db,$tablepre;
	//$losttime=strtotime($losttime);
	$db->query("insert into {$tablepre}customerservice(name,url,img,ov)values('$name','$url','$img','$ov')");
}
function customerservice_edit($id,$name,$url,$img,$ov){
	global $db,$tablepre;
	$db->query("update {$tablepre}customerservice set name='$name',url='$url',img='$img',ov='$ov' where id='$id'");
}
//聊天窗口客服管理结束
//弹窗客服管理
function popcs_del($id){
global $db,$tablepre;
$db->query("delete from {$tablepre}popcs where id='$id'");
}
function popcs_add($name,$url,$img,$ov){
	global $db,$tablepre;
	//$losttime=strtotime($losttime);
	$db->query("insert into {$tablepre}popcs(name,url,img,ov)values('$name','$url','$img','$ov')");
}
function popcs_edit($id,$name,$url,$img,$ov){
	global $db,$tablepre;
	$db->query("update {$tablepre}popcs set name='$name',url='$url',img='$img',ov='$ov' where id='$id'");
}
//弹窗客服管理
//录播管理
function video_del($id){
global $db,$tablepre;
$db->query("delete from {$tablepre}video where id='$id'");
}
function video_add($title,$videocode,$ov){
	global $db,$tablepre;
	$db->query("insert into {$tablepre}video(title,videocode,ov)values('$title','$videocode','$ov')");
}
function video_edit($id,$title,$videocode,$ov){
	global $db,$tablepre;
	$db->query("update {$tablepre}video set title='$title',videocode='$videocode',ov='$ov' where id='$id'");
}
//录播管理结束
function log_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}msgs";
	if($key!="")$sql.=" where uid like '%$key%' or ip like '%$key%' or uname like '%$key%' or msg like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}
function chatlog_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}chatlog";
	if($key!="")$sql.=" where uid like '%$key%' or ip like '%$key%' or uname like '%$key%' or tname like '%$key%' or msg like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}
function rebotschatlog_list($num,$key,$tpl,$tuser,$ym){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}chatlog";
	if($tuser!=""){
	$sql.=" where tuser='$tuser'";
		}
	if ($ym != "") {
	$sql .= " and FROM_UNIXTIME(mtime,'%Y-%m')='$ym'";
		}
	//if($key!="")$sql.=" where uid like '%$key%' or ip like '%$key%' or uname like '%$key%' or tname like '%$key%' or tuser like '%$key%' or msg like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}
function log_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}msgs where id in ($ids)");
}
function chatlog_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}chatlog where id in ($ids)");
}
function log_delhistory($value){
	global $db,$tablepre;
	if(empty($value)) return;
        $time=gdate();
        $time=$time-$value*24*3600;
	$db->query("delete from {$tablepre}msgs where mtime<'$time' and state<>'2' and state<>'3'  ");
}
function chatlog_delhistory($value){
	global $db,$tablepre;
	if(empty($value)) return;
        $time=gdate();
        $time=$time-$value*24*3600;
	$db->query("delete from {$tablepre}chatlog where mtime<'$time' and state<>'2' and state<>'3'  ");
}
function hd_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}apps_hd where id in ($ids)");
}
function app_hd_add($ktime,$ptime,$sp,$kcj,$lx,$cw,$zsj,$zyj,$username,$pcj,$sn){
	global $db,$tablepre;
	$time=gdate();
	$ktime=strtotime($ktime);
	$ptime=strtotime($ptime);

	$db->query("insert into {$tablepre}apps_hd(ktime,ptime,sp,kcj,lx,cw,zsj,zyj,username,pcj,sn,ttime)values('$ktime','$ptime','$sp','$kcj','$lx','$cw','$zsj','$zyj','$username','$pcj','$sn','$time')");
}
function app_hd_edit($id,$ktime,$ptime,$sp,$kcj,$lx,$cw,$zsj,$zyj,$username,$pcj,$sn){
	global $db,$tablepre;
	$ktime=strtotime($ktime);
	$ptime=strtotime($ptime);
	$db->query("update {$tablepre}apps_hd set ktime='$ktime',ptime='$ptime',sp='$sp',kcj='$kcj',lx='$lx',cw='$cw',zsj='$zsj',zyj='$zyj',username='$username',pcj='$pcj',sn='$sn' where id='$id'");
}
function app_hd_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}apps_hd";
	if($key!="")$sql.=" where uname like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
		while($row=$db->fetch_row($query)){
		$t=$tpl;

		if(strpos($row[lx],'买')&&$row['pcj']!=""){
			$t=str_replace('{yld}',round($row['pcj']-$row['kcj'],2),$t);
		}
		else if(strpos($row[lx],'卖')&&$row['pcj']!=""){
			$t=str_replace('{yld}',round($row['kcj']-$row['pcj'],2),$t);
		}else{
			$t=str_replace('{yld}','',$t);
		}
		foreach($row as $k=>$value){
			$t=str_replace('{'.$k.'}',$value,$t);
		}
		$str.=$t;

	}
	return $str;

}

function app_wt_edit($id,$q,$a,$quser,$auser,$zt){
	global $db,$tablepre;
	$db->query("update {$tablepre}apps_wt set q='$q',a='$a',quser='$quser',auser='$auser',zt='$zt'  where id='$id'");
}
function app_wt_add($q,$a,$quser,$auser,$zt){
	global $db,$tablepre;
	$qtime=gdate();
	$db->query("insert into {$tablepre}apps_wt(q,a,quser,auser,qtime,zt)values('$q','$a','$quser','$auser','$qtime','$zt')");
}
function wt_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}apps_wt where id in ($ids)");
}
function app_wt_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}apps_wt";
	if($key!="")$sql.=" where q like '%$key%' or a like '%$key%' or quser like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}


function app_jyts_edit($id,$title,$txt,$user){
	global $db,$tablepre;
	$db->query("update {$tablepre}apps_jyts set title='$title',txt='$txt',`user`='$user' where id='$id'");
}
function app_jyts_add($title,$txt,$auser){
	global $db,$tablepre;
	$atime=gdate();
	$db->query("insert into {$tablepre}apps_jyts(title,txt,`user`,atime)values('$title','$txt','$user','$atime')");
}
function jyts_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}apps_jyts where id in ($ids)");
}
function app_jyts_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}apps_jyts";
	if($key!="")$sql.=" where title like '%$key%' or txt like '%$key%' or `user` like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}


function app_scpl_edit($id,$title,$txt,$user,$dj){
	global $db,$tablepre;
	$db->query("update {$tablepre}apps_scpl set title='$title',txt='$txt',`user`='$user',dj='$dj' where id='$id'");
}
function app_scpl_add($title,$txt,$user,$jd){
	global $db,$tablepre;
	$atime=gdate();
	$db->query("insert into {$tablepre}apps_scpl(title,txt,`user`,atime,dj)values('$title','$txt','$user','$atime','$dj')");
}
function scpl_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}apps_scpl where id in ($ids)");
}
function app_scpl_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}apps_scpl";
	if($key!="")$sql.=" where title like '%$key%' or txt like '%$key%' or `user` like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}



function app_files_edit($id,$title,$url,$user){
	global $db,$tablepre;
	$db->query("update {$tablepre}apps_files set title='$title',url='$url',`user`='$user' where id='$id'");
}
function app_files_add($title,$url,$user){
	global $db,$tablepre;
	$atime=gdate();
	$db->query("insert into {$tablepre}apps_files(title,url,`user`,atime)values('$title','$url','$user','$atime')");
}
function files_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}apps_files where id in ($ids)");
}
function app_files_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}apps_files";
	if($key!="")$sql.=" where title like '%$key%'   or `user` like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}

//课程表
function course_add($week,$teacher,$times,$info){
	global $db,$tablepre;
	$db->query("insert into {$tablepre}course(week,teacher,times,info)values('$week','$teacher','$times','$info')");
}
function course_del($id){
	global $db,$tablepre;
	$db->query("delete from {$tablepre}course where id='$id'");
}
function course_edit($id,$teacher,$times,$info){
	global $db,$tablepre;
	$db->query("update {$tablepre}course set teacher='$teacher',times='$times',info='$info' where id='$id'");
}


function app_manage_edit($id,$title,$url,$ico,$w,$h,$target,$s,$ov){
	global $db,$tablepre;
	$db->query("update {$tablepre}apps_manage set title='$title',url='$url',ico='$ico',w='$w',h='$h',target='$target',s='$s',ov='$ov' where id='$id'");
}
function app_manage_add($title,$url,$ico,$w,$h,$target,$s,$ov){
	global $db,$tablepre;
	$atime=gdate();
	$db->query("insert into {$tablepre}apps_manage(title,url,ico,w,h,target,s,ov)values('$title','$url','$ico','$w','$h','$target','$s','$ov')");
}
function manage_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}apps_manage where id in ($ids) and id not in(1,2,3,4,5,6)");
}
function app_manage_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}apps_manage";
	if($key!="")$sql.=" where title like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by s,ov desc,id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}

//头部导航

function app_topmanage_edit($id,$title,$url,$ico,$w,$h,$target,$s,$ov){
	global $db,$tablepre;
	$db->query("update {$tablepre}apps_topmanage set title='$title',url='$url',ico='$ico',w='$w',h='$h',target='$target',s='$s',ov='$ov' where id='$id'");
}
function app_topmanage_add($title,$url,$ico,$w,$h,$target,$s,$ov){
	global $db,$tablepre;
	$atime=gdate();
	$db->query("insert into {$tablepre}apps_topmanage(title,url,ico,w,h,target,s,ov)values('$title','$url','$ico','$w','$h','$target','$s','$ov')");
}
function topmanage_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}apps_topmanage where id in ($ids) and id not in(1,2,3,4,5,6)");
}
function app_topmanage_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}apps_topmanage";
	if($key!="")$sql.=" where title like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by s,ov desc,id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}

//轮播广告

function slide_edit($id,$title,$url,$ico,$w,$h,$target,$s,$ov){
	global $db,$tablepre;
	$db->query("update {$tablepre}slide set title='$title',url='$url',ico='$ico',w='$w',h='$h',target='$target',s='$s',ov='$ov' where id='$id'");
}
function slide_add($title,$url,$ico,$w,$h,$target,$s,$ov){
	global $db,$tablepre;
	$atime=gdate();
	$db->query("insert into {$tablepre}slide(title,url,ico,w,h,target,s,ov)values('$title','$url','$ico','$w','$h','$target','$s','$ov')");
}
function slide_del($ids){
	global $db,$tablepre;
	if($ids=="")return;
	$db->query("delete from {$tablepre}slide where id in ($ids)");
}
function slide_list($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}slide";
	if($key!="")$sql.=" where title like '%$key%'";

	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by s,ov desc,id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}
function getRandChar($length){
   $str = null;
   $strPol = "0123456789abcdef";
   $max = strlen($strPol)-1;

   for($i=0;$i<$length;$i++){
    $str.=$strPol[rand(0,$max)];
   }

   return $str;
  }
function GenerateCdk($cdknum){
global $db,$tablepre;
for($i=1;$i<=$cdknum;$i++){
$db->query("insert into {$tablepre}prizecdk(cdk,type,generatetime)values('".getRandChar(10)."','0','".time()."')");
}
echo ("<script>location.href='prizecdk.php'</script>");
}
?>