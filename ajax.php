<?php
require_once './include/common.inc.php';
require_once PPCHAT_ROOT . './include/json.php';
$json = new JSON_obj;
$uid = (int)$uid;
$id = (int)$id;
switch ($act) {
	case "setdefvideosrc";
		if (check_auth('def_videosrc')) {
			$db->query("update {$tablepre}config set defvideo='$vid',defvideonick='$nick' where rid='$rid'");
		}
		break;
	case "mymsgold":
		$uid = $_SESSION['login_uid'];
		$query = $db->query("select *  from {$tablepre}chatlog where (uid='$uid' and tuid='$tuid')or(uid='$tuid' and tuid='$uid') and type='4' order by id desc limit 0,20");
		while ($row = $db->fetch_row($query)) {
			$str1 = '
				<li class="layim_chate[me]"><div class="layim_chatuser"><span class="layim_chattime">[date]</span><span class="layim_chatname">[uname]</span><img src="../face/img.php?t=p1&u=[uid]"></div><div class="sllayim_chatsay"><font style="color:#000">[msg]</font><em class="layim_zero"></em></div></li>
				';
			$str2 = '
				<li class="layim_chate[me]"><div class="layim_chatuser"><img src="../face/img.php?t=p1&u=[uid]"><span class="layim_chatname">[uname]</span><span class="layim_chattime">[date]</span></div><div class="sllayim_chatsay"><font style="color:#000">[msg]</font><em class="layim_zero"></em></div></li>
				';
			if ($row['uid'] == $uid) $str = str_replace("[me]", "me", $str1); else $str = str_replace("[me]", "he", $str2);
			$str = str_replace("[uid]", $row['uid'], $str);
			$str = str_replace("[uname]", $row['uname'], $str);
			$str = str_replace("[msg]", tohtml($row['msg']), $str);
			$str = str_replace("[date]", date("Y-m-d H:i:s", $row['mtime']), $str);
			$msgold = $str . $msgold;
		}
		$data['realname'] = userinfo($tuid, '{realname}');
		$data['tuid'] = $tuid;
		$data['msg'] = $msgold;
		exit($json->encode($data));
		break;
	case "msgblock":
		$db->query("update {$tablepre}chatlog set state='$s' where msgid='$msgid'");
		exit();
		break;
		//送鲜花
	case "sendflower":
		$uid = $_SESSION['login_uid'];
		$user = $db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.uid='{$uid}'"));
		if($user['flower']<=0){
		echo json_encode("false");
			}else if($uid==$jid){
			echo json_encode("-1");
			}else{
			$db->query("update {$tablepre}memberfields set flower = flower+1 where uid='$jid'");
			$db->query("update {$tablepre}memberfields set flower = flower-1 where uid='$uid'");
			$juser=$db->fetch_row($db->query("select * from {$tablepre}memberfields where uid = '$jid'"));
			$db->query("insert into {$tablepre}gift_record(mid,name,tid,toname,type,num,	time)values('{$user[uid]}','{$user[nickname]}','$jid','$juser[nickname]','送鲜花','1','" . time() . "')");
			$arr[juser]=$juser[nickname];
			echo json_encode($arr);
			}
		break;
	//送大宝剑
	case "sendacer":
		$uid = $_SESSION['login_uid'];
		$user = $db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.uid='{$uid}'"));
		if($user['acer']<=0){
		echo json_encode("false");
			}else if($uid==$jid){
			echo json_encode("-1");
			}else{
			$db->query("update {$tablepre}memberfields set acer = acer+1 where uid='$jid'");
			$db->query("update {$tablepre}memberfields set acer = acer-1 where uid='$uid'");
			$juser=$db->fetch_row($db->query("select * from {$tablepre}memberfields where uid = '$jid'"));
			$db->query("insert into {$tablepre}gift_record(mid,name,tid,toname,type,num,	time)values('{$user[uid]}','{$user[nickname]}','$jid','$juser[nickname]','送大宝剑','1','" . time() . "')");
			$arr[juser]=$juser[nickname];
			echo json_encode($arr);
			}
		break;
		//送飞吻
		case "sendkiss":
		$uid = $_SESSION['login_uid'];
		$user = $db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.uid='{$uid}'"));
		if($user['kiss']<=0){
		echo json_encode("false");
			}else if($uid==$jid){
			echo json_encode("-1");
			}else{
			$db->query("update {$tablepre}memberfields set kiss = kiss+1 where uid='$jid'");
			$db->query("update {$tablepre}memberfields set kiss = kiss-1 where uid='$uid'");
			$juser=$db->fetch_row($db->query("select * from {$tablepre}memberfields where uid = '$jid'"));
			$db->query("insert into {$tablepre}gift_record(mid,name,tid,toname,type,num,	time)values('{$user[uid]}','{$user[nickname]}','$jid','$juser[nickname]','送飞吻','1','" . time() . "')");
			$arr[juser]=$juser[nickname];
			echo json_encode($arr);
			}
		break;
	case "msgload":
		$query = $db->fn_rows("select *  from {$tablepre}chatlog where rid = $rid and p='false' order by id desc limit $tnum,$lmum");
		exit($json->encode($query));
		break;
		//抽奖
	case "addmobile":
		if($mobile!=$_SESSION['rotatemobile'] || !$mobile){
		echo 'invalidatemobile';
		exit();
		}
		if($validate!=$_SESSION['rotatevalidate'] || !$validate){
		echo 'invalidatecode';
		exit();
		}
		$mobiletel = $mobile;
		$mobile=$db->fetch_row($db->query("select * from {$tablepre}mobilelist where mobile='$mobile' "));
		if($mobile[status]=='0'){
		echo 'success';
		}else if($mobile[status]=='1'){
		echo 'hasmobile';
		}else if(!$mobile){
		$db->query("insert into {$tablepre}mobilelist(mobile,time)values('$mobiletel','". time() ."')");
		echo 'success';
			}
	break;
		case "addcdk":
		
		$cdk=$db->fetch_row($db->query("select * from {$tablepre}prizecdk where cdk='$rotatecdk' and type=0 "));
		if($cdk){
		echo 'success';
		$_SESSION['cdk'] = $rotatecdk;
		}
		else{
		echo 'error';
		}
	break;
	case "rotate":
		function get_rand($proArr) {   
   		$result = '';    
   	//概率数组的总概率精度   
   		$proSum = array_sum($proArr);    
    //概率数组循环   
    	foreach ($proArr as $key => $proCur) {   
        $randNum = mt_rand(1, $proSum);   
        if ($randNum <= $proCur) {   
            $result = $key;   
            break;   
        } else {   
            $proSum -= $proCur;   
       	 }         
 		   }   
  		 unset ($proArr);    
  		 return $result;   
			} 
		$prize_arr = array(   
  		'1' => array('id'=>1,'v'=>0),   
   		'2' => array('id'=>2,'v'=>0),   
  		'3' => array('id'=>3,'v'=>0),   
  		'4' => array('id'=>4,'v'=>30),   
    	'5' => array('id'=>5,'v'=>10),   
  		'6' => array('id'=>6,'v'=>0),
		'7' => array('id'=>7,'v'=>0),  
		'8' => array('id'=>8,'v'=>30), 
		'9' => array('id'=>9,'v'=>0),  
		'10' => array('id'=>10,'v'=>30),  
		);   
		foreach ($prize_arr as $key => $val) {   
  		$arr[$val['id']] = $val['v'];   
		}
		$prizeconf = $db->fetch_row($db->query("select * from {$tablepre}prizeconf where id=1"));
		if($prizeconf['onoff']==1){
		$mobile=$_SESSION['rotatemobile'];
		if($db->fetch_row($db->query("select * from {$tablepre}mobilelist where mobile='$mobile' and mobile<>'' and status=0"))){  
		//抽奖几率设置 
		$rid = get_rand($arr); 
		//根据概率获取奖项id 
		$db->query("update {$tablepre}mobilelist set status=1,prize=$rid where mobile='$mobile'");
		echo ($rid);
	}else{
		echo "invalidateMobile";
	}  
	 }
	 else{
	$cdk=$_SESSION['cdk'];
	if($_SESSION['login_uid']==0){
	exit("-1");
	}
	if($db->fetch_row($db->query("select * from {$tablepre}prizecdk where cdk='$cdk' and cdk<>'' and type=0"))){  
	 $rid = get_rand($arr); 
	 $db->query("update {$tablepre}prizecdk set type=1,username='$_SESSION[login_user]',prize=$rid,usetime='".time()."' where cdk='$cdk'");
	 unset($_SESSION['cdk']);
	 echo ($rid);
	}
	else{
	echo "cdk";
	}
	 }
		break;
		//定时鲜花
	case "addflower":
	$uid = $_SESSION['login_uid'];
	if(!isset($_SESSION['addflower'])){$_SESSION['addflower'] = time();}
	if($_SESSION['addflower']+60 < time()){
	echo $db->query("update {$tablepre}memberfields set flower=flower+1 where uid = '{$uid}'");
	unset($_SESSION['addflower']);
	}else{
	echo "0";}
	break;
	//定时大宝剑
	case "addacer":
	$uid = $_SESSION['login_uid'];
	if(!isset($_SESSION['addacer'])){$_SESSION['addacer'] = time();}
	if($_SESSION['addflower']+60 < time()){
	echo $db->query("update {$tablepre}memberfields set acer=acer+1 where uid = '{$uid}'");
	unset($_SESSION['addacer']);
	}else{
	echo "0";}
	break;
	//定时飞吻
	case "addkiss":
	$uid = $_SESSION['login_uid'];
	if(!isset($_SESSION['addkiss'])){$_SESSION['addkiss'] = time();}
	if($_SESSION['addflower']+60 < time()){
	echo $db->query("update {$tablepre}memberfields set kiss=kiss+1 where uid = '{$uid}'");
	unset($_SESSION['addkiss']);
	}else{
	echo "0";}
	break;
	case "msgAuditonoff":
		if (check_auth('room_admin')) {
		$db->query("update {$tablepre}config set msgaudit='$s' where rid='$rid'");
		exit('ok');
		} else {
		exit('error');
		}
		break;
	case "videocode":
		$video = $db->fetch_row($db->query("select videocode from {$tablepre}video where id='{$videoid}'"));
		exit(tohtml($video[videocode]).'<a href="javascript:void(0)" class="switchvideo_btn"><img src="images/switchvideo.png" onclick="loadVideo()"></a>');
		break;
	case "msgAuditonoff":
		if (check_auth('room_admin')) {
		$db->query("update {$tablepre}config set msgaudit='$s' where rid='$rid'");
		exit('ok');
		} else {
		exit('error');
		}
		break;
		//发红包
	case "sendredbag":
		$uid = $_SESSION['login_uid'];
		$user = $db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.uid='{$uid}'"));
		if($user[money]<=0 || $user[money]<$total){
		echo json_encode("invalidate_total");
		exit();
		}else if($total*100<$num){
		echo json_encode("invalidate_num");
		exit();
		}else if(!is_numeric($num)){
		echo json_encode("rendbag_num_err");
		exit();
		}else{
			$db->query("update {$tablepre}members set money=money-$total where uid='$uid'");
			$sql = "insert into {$tablepre}sendredbaglist(mid,num,total,num_balance,total_balance,time,sn)
			values('$_SESSION[login_uid]','$num','$total','$num','$total',". time() .",'$envelopetext')";
			$db->query($sql);
			$s_r_id=mysql_insert_id();
			$content='<img rel="'.$s_r_id.'" src="/images/redbag_open.png" style="width:186px;float:left;cursor:pointer;" onclick="getRedbag(this)"/>';
			$arr=array(
			'content'=>$content,
			'yue'=>$user[money]-$total,
			'total'=>$total,
			'num'=>$num,
			'shstatus'=>1,
			'msgtype'=>2
		);
		echo json_encode($arr);
		$db->query("insert into {$tablepre}consumelist(mid,username,count,jid,time,beizhu)values('{$user[uid]}','直播室红包','{$total}','','" . time() . "','送红包')");
	}
	break;
	case "getredbag":
	$uid = $_SESSION['login_uid'];
	$user = $db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.uid='{$uid}'"));
	$s_r_id=$redbag;
	$redbag = $db->fetch_row($db->query("select * from {$tablepre}sendredbaglist where s_r_id = '$s_r_id'"));
	if ($uid == 0){
		echo json_encode('-1');
		exit();
	}
	if(!$redbag || !$user ){//红包不存在
		echo json_encode('-2');
		exit();
	}else{
		if($db->fetch_row($db->query("select * from {$tablepre}getredbaglist where s_r_id='$s_r_id' and mid='$user[uid]'"))){//红包已经领过
			echo json_encode('-3');
			exit();
		}
		$num=$redbag[num];
		$total=$redbag[total];
		$num_balance=$redbag[num_balance];
		$total_balance=$redbag[total_balance];
		if(!$num_balance){//红包完了
			echo json_encode('false');
			exit();
		}
		if($num_balance==1){
			$count=$total_balance;
			$db->query("update {$tablepre}sendredbaglist set status=1 where s_r_id=$s_r_id");
		}else{
			$max=$total_balance*100-mt_rand($num_balance,$total_balance*100)+1;
			$count=mt_rand(1,$max)/100;
		}
		$sql = "insert into {$tablepre}getredbaglist(s_r_id,mid,count,time)
			values('$s_r_id','$user[uid]','$count',". time() .")";
			$db->query($sql);
		$total_balance=$total_balance-$count;
		$db->query("update {$tablepre}sendredbaglist set total_balance='$total_balance', num_balance=num_balance-1 where s_r_id='$s_r_id'");
		$sender = $db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.uid='{$redbag[mid]}'"));
		$money=$user[money]+$count;
		$db->query("update {$tablepre}members set money='$money' where uid='$user[uid]'");
		echo json_encode(array(
			'count'=>$count,
			'yue'=>$money,
			'content'=>$user[nickname].'_+_'.$sender[nickname].'_+_'.$count,
		));	
	}
	break;
	case "getredbaginfo":
	$uid = $_SESSION['login_uid'];
	$user = $db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms where m.uid=ms.uid and m.uid='{$uid}'"));
	$s_r_id=$redbag;
	$redbag=$db->fetch_row($db->query("select t1.*,t2.nickname,t3.gid from {$tablepre}members t3,{$tablepre}sendredbaglist t1 left join {$tablepre}memberfields t2 on t1.mid=t2.uid where s_r_id = '$s_r_id' and t3.uid=t2.uid"));
	if(!$redbag || !$user ){//红包不存在
		echo json_encode('false');
		exit();
	}else{
		$get_list=$db->fn_rows("select t1.*,t2.nickname,t3.gid from {$tablepre}members t3,{$tablepre}getredbaglist t1 left join {$tablepre}memberfields t2 on t1.mid=t2.uid where t1.s_r_id='$redbag[s_r_id]' and t3.uid=t2.uid");
		$arr=array(
			'redbag'=>$redbag,
			'get_list'=>$get_list,
		);
		echo json_encode($arr);
	}
	break;
	case "remyfuser":
		$uid = $_SESSION['login_uid'];
		$tuser = userinfo($fuserid, '{username}');
		if ($uid != 0) {
			$db->query("update {$tablepre}members set fuser='$tuser' where (fuser='' or fuser is null) and uid='$uid'");
		}
		break;
	case "getmylist":
		$data['state'] = 'false';
		$uid = $_SESSION['login_uid'];
		$userinfo = $db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.uid='{$uid}'"));
		$i = 0;
		if ($userinfo['gid'] != '3') {
			if ($userinfo['fuser'] == "") $userinfo['fuser'] = $cfg['config']['defkf'];
			if ($userinfo['fuser'] != '') {
				$query = $db->query("select m.*,ms.* from {$tablepre}members m left join {$tablepre}memberfields ms
							  on m.uid=ms.uid   where m.username ='$userinfo[fuser]'");
				while ($row = $db->fetch_row($query)) {
					$tmp['uid'] = $row['uid'];
					$tmp['chatid'] = $row['uid'];
					$tmp['nick'] = $row['nickname'];
					$tmp['phone'] = $row['phone'];
					$tmp['qq'] = $row['realname'];
					$tmp['gid'] = $row['gid'];
					$tmp['mood'] = $row['mood'];
					$data['row'][$i++] = $tmp;
					$data['state'] = 'true';
				}
			}
		} else {
			$query = $db->query("select m.*,ms.* from {$tablepre}members m left join {$tablepre}memberfields ms
							  on m.uid=ms.uid   where m.fuser='{$user}' and m.username!='{$user}' order by m.uid desc");
			while ($row = $db->fetch_row($query)) {
				$tmp['uid'] = $row['uid'];
				$tmp['chatid'] = $row['uid'];
				$tmp['nick'] = $row['nickname'];
				$tmp['phone'] = $row['phone'];
				$tmp['qq'] = $row['realname'];
				$tmp['gid'] = $row['gid'];
				$data['row'][$i++] = $tmp;
				$data['state'] = 'true';
			}
		}
		exit($json->encode($data));
		break;
	case "getrlist":
		$roomListUser = array();
		$roomListUserJsonStr = array("type" => "UonlineUser", "stat" => "OK");
		$roomUser = array("chatid" => "", "state" => "0", "nick" => "", "color" => "1" ,"mood" => "");
			if(check_auth('room_admin')) $roomUser['state'] = '3';
			$r0_max = $r0;
			if ($r0_max > 0) : for ($i = 0; $i < $r0_max; $i++) : $roomUser['chatid'] = 'x_r' . $i;
				//$roomUser['sex'] = rand(0, 2);
				//$roomUser['cam'] = rand(0, 2);
				//$roomUser['nick'] = '游客' . strtoupper(substr(md5(microtime() + mt_rand(1000, 9900) - mt_rand(1, 100)), 0, 4));
				$roomUser['nick'] = '游客' . mt_rand(100000,999999);
				$roomUser['color'] = '17';
				$roomListUser[] = $roomUser; endfor; endif;
		    	$query = $db->query("select * from {$tablepre}rebotslist where rid='$rid'");
				$rebots_arr = array();
				 while ($row = $db->fetch_row($query)){
				 $date=date("H:i:s");
				 $week=date("w");
				 if($date>=$row['stime'] && $date<=$row['etime'] && strstr($row['week']."n",$week)){
				  $rebots_arr[] = $row;
					 }
				 }
				$count = count($rebots_arr);
				$youkeCount = count($roomListUser);
			  	for ($i = 0; $i < $count; $i++) {
				$roomUser['chatid'] = 'x_r' . ($youkeCount + $i);
				//$roomUser['sex'] = rand(0, 2);
				//$roomUser['cam'] = rand(0, 2);
				$roomUser['color'] = $rebots_arr[$i]['rgroup'];
				$roomUser['nick'] = $rebots_arr[$i]['name'];
				$roomListUser[] = $roomUser;
			}
		$roomListUserJsonStr['roomListUser'] = $roomListUser;
		$data = $json->encode($roomListUserJsonStr);
		exit($data);
		break;
		//机器人发言写入begin
	case "Robotputmsg":
		if ($cfg['config']['msgaudit'] == '1') {
			$state = '1';
		}
		if (check_auth('room_admin')) {
				$state = '0';
			}
		$type = ($privacy == 'true') ? 4 : 0;

				$sql = "insert into {$tablepre}chatlog(rid,uid,tuid,uname,tname,tuser,p,style,msg,mtime,ugid,msgid,ip,state,type,robot)values('$rid','$muid','$tid','$uname','$tname','$tuser','$privacy','$style','$msg'," . gdate() . ",'$ugid','$msgid','$onlineip','$state','$type','1')";
		$db->query($sql);
		break;
		//机器人发言写入end
	case "putmsg":
		if ($cfg['config']['msgaudit'] == '1') {
			$state = '1';
		}
		if (check_auth('room_admin')) {
				$state = '0';
			}
		if ($tname == "彩条"){
				$state = '0';
			}
		if ($msgtip == "2") {
			if (!check_auth('room_admin')) {
				return;
			}
			$state = '2';
		}
		if ($msgtip == "3") {
			if (!check_auth('room_admin')) {
				return;
			}
			$state = '3';
		}
		$type = ($privacy == 'true') ? 4 : 0;
		if ($_SESSION['login_gid']==0){
				$chatgid = 17;
				$sql = "insert into {$tablepre}chatlog(rid,uid,tuid,uname,tname,p,style,msg,mtime,ugid,msgid,ip,state,type)
				  values('$rid','$muid','$tid','$uname','$tname','$privacy','$style','$msg'," . gdate() . ",'$chatgid','$msgid','$onlineip','$state','$type')";
		}
		else{
				$sql = "insert into {$tablepre}chatlog(rid,uid,tuid,uname,tname,p,style,msg,mtime,ugid,msgid,ip,state,type)
				  values('$rid','$muid','$tid','$uname','$tname','$privacy','$style','$msg'," . gdate() . ",'$_SESSION[login_gid]','$msgid','$onlineip','$state','$type')";
		}
		$db->query($sql);
		break;
	case "regcheck":
		$guestexp = '^Guest|' . $cfg['config']['regban'] . "Guest";
		if (preg_match("/\s+|{$guestexp}/is", $username)) exit('-1');
		if ($db->num_rows($db->query("select * from {$tablepre}members where username='$username' ")) > 0) exit('0'); else exit('1');
		break;
	case "setvideo":
		$uid = $_SESSION['login_uid'];
		if (check_auth('room_admin')) {
			$db->query("update {$tablepre}config set defvideo='{$vid}' where id='{$def_cfg}'");
		}
		break;
	case "userstate":
		if (isset($_SESSION['login_uid'])) {
			$userstate['state'] = "login";
			$id = $_SESSION['login_uid'];
			$query = $db->query("select m.uid,m.sex,m.onlinetime,m.gold,ms.nickname,ms.mood,ms.city,ms.bday
						  from {$tablepre}members m,{$tablepre}memberfields ms
						  where m.uid=ms.uid and m.uid='{$id}'
						  ");
			$row = $db->fetch_row($query);
			$userinfo['id'] = $row['uid'];
			$userinfo['nick'] = $row['nickname'];
			$userinfo['sn'] = $row['mood'];
			$userinfo['rank'] = showstars($row['onlinetime']);
			$userinfo['gold'] = $goldname . ':' . $row['gold'];
			$userstate['info'] = $userinfo;
		} else {
			$userstate['state'] = "logout";
		}
		$data = $json->encode($userstate);
		exit($data);
		break;
	case "userinfo":
		$query = $db->query("select m.*,ms.*
						  from {$tablepre}members m,{$tablepre}memberfields ms
						  where m.uid=ms.uid and m.uid='{$id}'
						  ");
		$row = $db->fetch_row($query);
		$row['password'] = '';
		$data = $json->encode($row);
		exit($data);
		break;
	case "delimpression":
		if (!isset($_SESSION['login_uid']) || $_SESSION['login_uid'] == 0) $state['state'] = 'logout'; else {
			$uid = $_SESSION['login_uid'];
			$db->query("delete from {$tablepre}membersapp1 where uid='$uid' and fuid='$fuid' and ftime='$ftime'");
			$state['state'] = 'ok';
		}
		$data = $json->encode($state);
		exit($data);
		break;
	case "impression":
		if (!isset($_SESSION['login_uid']) || $_SESSION['login_uid'] == 0) $state['state'] = 'logout'; else {
			$color = rand_color();
			$time = gdate();
			$fuid = $_SESSION['login_uid'];
			$db->query("delete from {$tablepre}membersapp1 where uid='$uid' and fuid='$fuid'");
			$sql = "insert into {$tablepre}membersapp1(uid,color,txt,fuid,ftime)
				  values('$uid','$color','$t','$fuid','$time')";
			$db->query($sql);
			$state['state'] = 'ok';
		}
		$data = $json->encode($state);
		exit($data);
		break;
	case "memberfriends":
		if (!isset($_SESSION['login_uid'])) $state['state'] = 'logout'; else {
			$ftime = gdate();
			$uid = $_SESSION['login_uid'];
			if (isset($a)) $db->query("replace into {$tablepre}membersapp3(uid,fuid,ftime)values('$uid','$a','$ftime')");
			if (isset($d)) $db->query("delete from {$tablepre}membersapp3 where uid='$uid' and fuid='$d'");
			$state['state'] = 'ok';
		}
		$data = $json->encode($state);
		exit($data);
		break;
	case "message":
		if (!isset($_SESSION['login_uid']) || $_SESSION['login_uid'] == 0) $state['state'] = 'logout'; else {
			if (isset($d)) {
				$db->query("delete from {$tablepre}membersapp4 where id='$d' and uid='$_SESSION[login_uid]'");
				$state['state'] = 'ok';
			} else {
				if (trim($txt) != '') {
					$txt = $db->totxt($txt);
					$ftime = gdate() - 2;
					$fuid = $_SESSION['login_uid'];
					$db->query("insert into {$tablepre}membersapp4(uid,fuid,ftime,tag,txt)values('$uid','$fuid','$ftime','$tag','$txt')");
				}
				$state['state'] = 'ok';
			}
		}
		$data = $json->encode($state);
		exit($data);
		break;
	case "kick":
		if (check_user_auth($aid, 'user_kick')) {
			$losttime = $ktime * 60 + gdate();
			$db->query("insert into {$tablepre}ban(username,ip,losttime,sn)values('$u','$onlineip','$losttime','$cause')");
			$state['state'] = 'yes';
			$data = $json->encode($state);
			exit($data);
		}
		break;
	case "gag":
		if (check_user_auth($aid, 'user_gag')) {
			$losttime = $ktime * 60 + gdate();
			$db->query("insert into {$tablepre}gag(username,ip,losttime,sn)values('$u','$onlineip','$losttime','$cause')");
			$state['state'] = 'yes';
			$data = $json->encode($state);
			exit($data);
		}
		break;
	case "online":
		if (!isset($_SESSION['login_uid'])) $state['state'] = 'logout'; else {
			if ($_SESSION['login_uid'] == 0) {
				$state['state'] = 'ok';
				$data = $json->encode($state);
				exit($data);
			}
			if (!empty($rst)) {
				$time = gdate();
				$u_id = $_SESSION['login_uid'];
				$query_row = $db->fetch_row($db->query("select lastactivity from {$tablepre}members where uid='$u_id'"));
				$_time = (int)($time - $query_row['lastactivity']);
				$rid = $_SESSION['onlines_state']['rid'];
				$query = $db->query("select * from {$tablepre}memberonlines where rst='$rst' and uid='$u_id'");
				if ($db->num_rows($query) <= 0) {
					$db->query("replace into {$tablepre}memberonlines(uid,rid,lastactivity,ip,rst)values('$u_id','$rid','$time','$onlineip','$rst')");
					$state['state'] = 'ologin';
					$data = $json->encode($state);
					exit($data);
				}
				$db->query("update {$tablepre}memberonlines set lastactivity='$time' where rst='$rst' and uid='$u_id'");
				$db->query("update {$tablepre}members set lastactivity='$time',onlinetime=onlinetime+$_time where uid='$u_id'");
				$state['state'] = 'ok';
				$onlineNum = (int)$num;
				if ($num >= 1) $db->query("update {$tablepre}config set online='$num' where id='$def_cfg'");
			} else {
				reonline();
				$state['state'] = 'ok';
			}
		}
		$data = $json->encode($state);
		exit($data);
		break;
} ?>