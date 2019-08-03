<?php
if(!defined('IN_PPCHAT')) {
	exit('Access Denied');
}
//get拦截规则
$getfilter = "\\<.+javascript:window\\[.{1}\\\\x|<.*=(&#\\d+?;?)+?>|<.*(data|src)=data:text\\/html.*>|\\b(alert\\(|confirm\\(|expression\\(|prompt\\(|benchmark\s*?\(.*\)|sleep\s*?\(.*\)|\\b(group_)?concat[\\s\\/\\*]*?\\([^\\)]+?\\)|\bcase[\s\/\*]*?when[\s\/\*]*?\([^\)]+?\)|load_file\s*?\\()|<[a-z]+?\\b[^>]*?\\bon([a-z]{4,})\s*?=|^\\+\\/v(8|9)|\\b(and|or)\\b\\s*?([\\(\\)'\"\\d]+?=[\\(\\)'\"\\d]+?|[\\(\\)'\"a-zA-Z]+?=[\\(\\)'\"a-zA-Z]+?|>|<|\s+?[\\w]+?\\s+?\\bin\\b\\s*?\(|\\blike\\b\\s+?[\"'])|\\/\\*.*\\*\\/|<\\s*script\\b|\\bEXEC\\b|UNION.+?SELECT\s*(\(.+\)\s*|@{1,2}.+?\s*|\s+?.+?|(`|'|\").*?(`|'|\")\s*)|UPDATE\s*(\(.+\)\s*|@{1,2}.+?\s*|\s+?.+?|(`|'|\").*?(`|'|\")\s*)SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE)@{0,2}(\\(.+\\)|\\s+?.+?\\s+?|(`|'|\").*?(`|'|\"))FROM(\\(.+\\)|\\s+?.+?|(`|'|\").*?(`|'|\"))|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)";
//post拦截规则
$postfilter = "<.*=(&#\\d+?;?)+?>|<.*data=data:text\\/html.*>|\\b(alert\\(|confirm\\(|expression\\(|prompt\\(|benchmark\s*?\(.*\)|sleep\s*?\(.*\)|\\b(group_)?concat[\\s\\/\\*]*?\\([^\\)]+?\\)|\bcase[\s\/\*]*?when[\s\/\*]*?\([^\)]+?\)|load_file\s*?\\()|<[^>]*?\\b(onerror|onmousemove|onload|onmouseover)\\b|\\b(and|or)\\b\\s*?([\\(\\)'\"\\d]+?=[\\(\\)'\"\\d]+?|[\\(\\)'\"a-zA-Z]+?=[\\(\\)'\"a-zA-Z]+?|>|<|\s+?[\\w]+?\\s+?\\bin\\b\\s*?\(|\\blike\\b\\s+?[\"'])|\\/\\*.*\\*\\/|<\\s*scripthahah\\b|\\bEXEC\\b|UNION.+?SELECT\s*(\(.+\)\s*|@{1,2}.+?\s*|\s+?.+?|(`|'|\").*?(`|'|\")\s*)|UPDATE\s*(\(.+\)\s*|@{1,2}.+?\s*|\s+?.+?|(`|'|\").*?(`|'|\")\s*)SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE)(\\(.+\\)|\\s+?.+?\\s+?|(`|'|\").*?(`|'|\"))FROM(\\(.+\\)|\\s+?.+?|(`|'|\").*?(`|'|\"))|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)";
//cookie拦截规则
$cookiefilter = "benchmark\s*?\(.*\)|sleep\s*?\(.*\)|load_file\s*?\\(|\\b(and|or)\\b\\s*?([\\(\\)'\"\\d]+?=[\\(\\)'\"\\d]+?|[\\(\\)'\"a-zA-Z]+?=[\\(\\)'\"a-zA-Z]+?|>|<|\s+?[\\w]+?\\s+?\\bin\\b\\s*?\(|\\blike\\b\\s+?[\"'])|\\/\\*.*\\*\\/|<\\s*script\\b|\\bEXEC\\b|UNION.+?SELECT\s*(\(.+\)\s*|@{1,2}.+?\s*|\s+?.+?|(`|'|\").*?(`|'|\")\s*)|UPDATE\s*(\(.+\)\s*|@{1,2}.+?\s*|\s+?.+?|(`|'|\").*?(`|'|\")\s*)SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE)@{0,2}(\\(.+\\)|\\s+?.+?\\s+?|(`|'|\").*?(`|'|\"))FROM(\\(.+\\)|\\s+?.+?|(`|'|\").*?(`|'|\"))|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)";
function getrobot() {
	if(!defined('IS_ROBOT')) {
		$kw_spiders = 'Bot|Crawl|Spider|slurp|sohu-search|lycos|robozilla';
		$kw_browsers = 'MSIE|Netscape|Opera|Konqueror|Mozilla';
		if(preg_match("/($kw_browsers)/i", $_SERVER['HTTP_USER_AGENT'])) {
			define('IS_ROBOT', FALSE);
		} elseif(preg_match("/($kw_spiders)/i", $_SERVER['HTTP_USER_AGENT'])) {
			define('IS_ROBOT', TRUE);
		} else {
			define('IS_ROBOT', FALSE);
		}
	}
	return IS_ROBOT;
}
function daddslashes($string, $force = 0) {
	!defined('MAGIC_QUOTES_GPC') && define('MAGIC_QUOTES_GPC', get_magic_quotes_gpc());
	if(!MAGIC_QUOTES_GPC || $force) {
		if(is_array($string)) {
			foreach($string as $key => $val) {
				$string[$key] = daddslashes($val, $force);
			}
		} else {
			$string = addslashes($strip ? stripslashes($string) : $string);
		}
	}
	return $string;
}
function keyED($txt,$encrypt_key) {
$encrypt_key = md5($encrypt_key);
$ctr=0;
$tmp = "";
for ($i=0;$i<strlen($txt);$i++){
if ($ctr==strlen($encrypt_key)) $ctr=0;
$tmp.= substr($txt,$i,1) ^ substr($encrypt_key,$ctr,1);
$ctr++;
}
return $tmp;
}

function encrypt($txt,$key){
srand((double)microtime()*1000000);
$encrypt_key = md5(rand(0,32000));
$ctr=0;
$tmp = "";
for ($i=0;$i<strlen($txt);$i++){
if ($ctr==strlen($encrypt_key)) $ctr=0;
$bbb=substr($encrypt_key,$ctr,1) .
(substr($txt,$i,1) ^ substr($encrypt_key,$ctr,1));
$tmp.= $bbb;
$ctr++;
}
return base64_encode(keyED($tmp,$key));
}

function decrypt($txt,$key){
$txt=base64_decode($txt);
$txt = keyED($txt,$key);
$tmp = "";
for ($i=0;$i<strlen($txt);$i++){
$md5 = substr($txt,$i,1);
$i++;
$tmp.= (substr($txt,$i,1) ^ $md5);
}
return $tmp;
}

function dhtmlspecialchars($string) {
	if(is_array($string)) {
		foreach($string as $key => $val) {
			$string[$key] = dhtmlspecialchars($val);
		}
	} else {
		$string = preg_replace('/&amp;((#(\d{3,5}|x[a-fA-F0-9]{4}));)/', '&\\1',
		//$string = preg_replace('/&amp;((#(\d{3,5}|x[a-fA-F0-9]{4})|[a-zA-Z][a-z0-9]{2,5});)/', '&\\1',
		str_replace(array('&','"', '<', '>'), array('&amp;','&quot;', '&lt;', '&gt;'), $string));
	}
	return $string;
}
function tohtml($str){
	return str_replace(array('&amp;','&quot;', '&lt;', '&gt;'), array('&', '"', '<', '>'),$str);
}
function showstars($totalol) {
	global $upgrade;
	$starthreshold=4;
	$onlinetime_total=round($totalol / 60/60, 2);
	$num=@ceil(($onlinetime_total + 1) / $upgrade);

	//$num--;
	if($onlinetime_total>24)
	{
		$d=floor($onlinetime_total/24);
		$onlinetime_total=$onlinetime_total-$d*24;
		$d.="天 ";
	}
	$alt = 'title="等级: '.$num.' (在线:'.round($totalol / 60/60, 2).'小时)"';
	$str='';
	if(empty($starthreshold)) {
		for($i = 0; $i < $num; $i++) {
			$str.="<img src=\"./images/star_level1.gif\" {$alt}/>";
		}
	} else {
		for($i = 3; $i > 0; $i--) {
			$numlevel = intval($num / pow($starthreshold, ($i - 1)));
			$num = ($num % pow($starthreshold, ($i - 1)));
			for($j = 0; $j < $numlevel; $j++) {
			$str.="<img src=\"./images/star_level{$i}.gif\" {$alt}/>";
			}
		}
	}

	return $str;
}
function gdate(){
	global $timeoffset;
	return time()+$timeoffset;
}
function isemail($email) {
	return strlen($email) > 6 && preg_match("/^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/", $email);
}
#分页函数
#$totle总条数,$displaypg limit条数,$url可以为空
#使用:
/**********************************************************
$count=$db->sqlnum($db->query($sql));
pageft($count,15,"");
$re=$db->query($sql." limit $firstcount,$displaypg");
#想必不用多说了!

#echo $pagenav //为"共0页 首页 上一页 下一页 尾页共0条,0页"
***********************************************************/
if(!function_exists(pageft)){
function pageft($totle,$displaypg=20,$url){
	global $firstcount,$_GET,$db,$pagenav,$_SERVER;
	$GLOBALS["displaypg"]=$displaypg;
	if(isset($_GET['page']))
	{
	$page=$db->fhtml($_GET['page']);
	if($page<=1){$up=1;$firstcount=0;$down=2;}
	else {$down=$page+1;$firstcount=($page-1)*$displaypg;$up=$page-1;}

	}
	else {$up=1;$down=2;$firstcount=0;}
	$count=ceil($totle/$displaypg);
	if($down>$count)$down=$count;

	if($url==''){ $url=$_SERVER["REQUEST_URI"];}
	$parse_url=parse_url($url);
	$url=$parse_url["path"]."?".ereg_replace("(^|&)page=[0-9]+","",$parse_url["query"]);
	$pagenav="共{$count}页 <a href='{$url}'>首页</a> <a href='{$url}&page={$up}'>上一页</a> <a href='{$url}&page={$down}'>下一页</a> <a href='{$url}&page={$count}'>尾页</a>";
	$pagenav.=" 共{$totle}条　第<select name='topage' size='1' onchange='window.location=\"{$url}&page=\"+this.value'>\n";
	for($i=1;$i<=$count;$i++){
	if($i==$page) $pagenav.="<option value='$i' selected>$i</option>\n";
	else $pagenav.="<option value='$i'>$i</option>\n";
	}
	$pagenav.="</select>页";

}
}
//房间列表 房间分类$cid 显示房间数$num 列表模板$tpl   显示分页标签$displaypg
/*
function roomlist($cid,$t,$num,$tpl,$skey=""){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}room where 1=1";
	if($cid!=0)$sql.=" and cid='$cid'";
	if($t!=0) $sql.=" and t='$t'";
	if($skey!="")$sql.=" and name like '%$skey%'";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by cid,`order` limit $firstcount,$displaypg";
	$query=$db->query($sql);

	return for_each($query,$tpl);
}*/
//分类类别列表 内嵌房间列表 分类ID $cid 列表显示数$num 分类模板$ctpl 房间模板 $rtpl 显示分页标签$displaypg
function classroomlist($cid,$num,$ctpl,$rtpl,$skey=""){
	global $db,$tablepre,$firstcount,$displaypg;
	$csql="select * from {$tablepre}roomclass where 1=1";
	if($cid!=0)$csql.=" and id='$cid'";

	$count=$db->num_rows($db->query($csql));
	pageft($count,$num,"");

	$csql.=" order by `order` limit $firstcount,$displaypg";
	$query=$db->query($csql);
	while($row=$db->fetch_row($query)){
			$t=$ctpl;
			foreach($row as $key=>$value){
			$t=str_replace('{'.$key.'}',$value,$t);
			}
			if($rtpl!='')
			$t=str_replace('{roomlist}',roomlist($row['id'],0,$num,$rtpl,$skey),$t);
	$str.=$t;
	}
	return $str;
}
//礼物分类列表 内嵌礼物列表 分类ID $cid 列表显示数$num 分类模板$ctpl 房间模板 $rtpl 显示分页标签$displaypg
function classgiftlist($cid,$num,$ctpl,$rtpl="",$skey=""){
	global $db,$tablepre,$firstcount,$displaypg;
	$csql="select * from {$tablepre}gift_class where 1=1";
	if($cid!=0)$csql.=" and id='$cid'";
	$csql.=" order by `order` desc";
	$query=$db->query($csql);
	while($row=$db->fetch_row($query)){
			$t=$ctpl;
			foreach($row as $key=>$value){
			$t=str_replace('{'.$key.'}',$value,$t);
			}
			if($rtpl!='')
			$t=str_replace('{giftlist}',giftlist($row['id'],0,$num,$rtpl,$skey),$t);
	$str.=$t;
	}
	return $str;
}

//礼物列表 房间分类$cid 推荐$t 显示房间数$num 列表模板$tpl   显示分页标签$displaypg
function giftlist($cid,$t,$num,$tpl,$skey=""){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}gift_goods where 1=1";
	if($cid!=0)$sql.=" and cid='$cid'";
	if($t!=0) $sql.=" and t='$t'";
	if($skey!="")$sql.=" and name like '%$skey%'";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc limit $firstcount,$displaypg";
	$query=$db->query($sql);

	return for_each($query,$tpl);
}

//用户礼物列表 用户ID$sid $t类型（送出0、收到1）显示条数$num 列表模板$tpl   显示分页标签$displaypg
function ugiftlist($sid,$t,$num,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select glist.*,gift.name,gift.price,u.nickname as snickname,u.uid  as suid from {$tablepre}gift_goods gift,{$tablepre}gift_list glist,{$tablepre}memberfields u where gift.id=glist.gid";
	if($t!=0){
		if($sid!=0)
		$sql.=" and glist.sid='$sid' and glist.uid=u.uid";
		else $sql.=" and glist.uid=u.uid";
	}
	else {
		if($sid!=0)
		$sql.=" and glist.uid='$sid' and glist.sid=u.uid";
		else
		$sql.=" and glist.sid=u.uid";
	}
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
		$sql.=" order by glist.id desc limit $firstcount,$displaypg";
	$query=$db->query($sql);

	return for_each($query,$tpl);
}
function sendgift($num,$gid,$sid,$msg){
	global $db,$tablepre,$onlineip,$discount;
	$msg=$db->totxt($msg);
	if($num<=0)return "0";//没有该物品
	$uid=$_SESSION['login_uid'];
	$ugold=(int)userinfo($uid,'{gold}');
	if($ugold<=0)return "-1";//金币不足
	$msg=$db->totxt($msg);
	$query=$db->query("select * from {$tablepre}gift_goods where id='$gid'");
	while($row=$db->fetch_row($query)){
		$tprice=$num*$row['price'];
		if($ugold>=$tprice){
			$db->query("update {$tablepre}members set gold=gold-$tprice where uid='$uid'");//扣除金币
			$db->query("insert into {$tablepre}gold_log(uid,gold,ip,dateline,txt)values('$uid','-{$tprice}','$onlineip','".gdate()."','赠送礼物:{$gid}|送给:{$sid}|份数:{$num}|价值:{$tprice}|还剩:".($ugold-$tprice)."')");//添加金币变更记录
			$db->query("insert into {$tablepre}gift_list(gid,uid,sid,msg,dateline,num)values('$gid','$uid','$sid','$msg','".gdate()."','$num')");//加入购买列表
			$db->query("update {$tablepre}members set gold=gold+".$tprice*$discount." where uid='$sid'");//礼物兑换成金币
			$db->query("update {$tablepre}gift_goods set sale=sale+$num where id='$gid'");//增加物品销售数
			return "1";
		}
		else return "-1";//金币不足
	}
	return "0";//没有该物品
}

//显示用户信息 用户id $uid
function userinfo($uid,$tpl){
	global $db,$tablepre;
	$query=$db->query("select m.*,ms.*
						  from {$tablepre}members m,{$tablepre}memberfields ms
						  where m.uid=ms.uid and m.uid='{$uid}'
						  ");

	return for_each($query,$tpl);
}
function userykinfo($uid,$tpl){
	global $db,$tablepre;
	$query=$db->query("select * from {$tablepre}yk_members where uid= '{$uid}'");
	return for_each($query,$tpl);
}
function rebotsinfo($uid,$tpl){
	global $db,$tablepre;
	$query=$db->query("select * from {$tablepre}rebotslist where id='{$uid}' ");
	return for_each2($query,$tpl);
}
function userlist($num,$sql,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);

}
//最新活跃会员
function onlineuser($num,$timestamp,$tpl,$skey="",$goldorder="lastactivity",$sex=""){
	global $db,$tablepre,$firstcount,$displaypg;
	$time=gdate();
	$sql="select uid from {$tablepre}members where uid!=0";
	if($timestamp!=0)$sql.=" and lastactivity+$timestamp>$time";
	if($skey!="")$sql.=" and (username like '%$skey%' or fuser like '%$skey%' or tuser like '%$skey%' or uid in(select uid from {$tablepre}memberfields where  nickname like '%$skey%'))";
	if($sex!="")$sql.=" and sex='$sex'";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	if($goldorder=='1')$goldorder="gold";
        if($goldorder!="0")
        $sql.=" order by `{$goldorder}` desc ";
        $sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	while($row=$db->fetch_row($query)){
			$t=$tpl;
			$t=userinfo($row['uid'],$t);
			$str.=$t;
		}
	return $str;
}

function rand_color(){
    for($a=0;$a<6;$a++){    //采用#FFFFFF方法，
        $d .= dechex(rand(0,15));//累加随机的数据--dechex()将十进制改为十六进制
    }
    return '#'.$d;
}
//输出印象词条
function impression($uid,$type,$tpl){
	global $db,$tablepre;
	if($type==1) {$where=" and uid='$uid'"; $where1="ftime desc";}else $where1='rand()';
	$query=$db->query("select *,count(*) c from {$tablepre}membersapp1 where (fuid in(select sex from {$tablepre}members where uid='$uid') or fuid=2 or uid='$uid') $where group by txt order by {$where1} limit 20");
	return for_each($query,$tpl);
}
//最近访客
function membervisit($uid,$num,$tpl){
	global $db,$tablepre;
	$sql="select ms.*,app.fuid,app.ftime from {$tablepre}memberfields ms,{$tablepre}membersapp2 app where ms.uid=app.fuid and app.uid='$uid' order by ftime desc limit $num";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
//好友列表
function memberfriends($uid,$num,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select ms.*,ms.uid fuid,m.lastactivity from {$tablepre}memberfields ms,{$tablepre}members m where ms.uid=m.uid and m.uid in(select fuid from {$tablepre}membersapp3 where uid='$uid')";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by m.lastactivity desc limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
//留言
function message($uid,$num,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select ms.*,app.id,app.uid as m_uid,app.fuid,app.ftime,app.tag,app.txt from {$tablepre}memberfields ms,{$tablepre}membersapp4 app where app.uid='$uid' and app.fuid=ms.uid";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by app.ftime desc limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
//课程表
function course_list($week,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}course where week=$week order by id asc";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
function for_each($query,$tpl){
	global $db,$tablepre;
	while($row=$db->fetch_row($query)){
		$t=$tpl;
		$row['txt']=$db->totxt($row['txt']);
		if($row['color']=='')$row['color']=rand_color();
		$row['_sex']=$row['sex'];
		$sex=array("女","男","保密");
		$row['sex']=$sex[$row['sex']];
		if($row['tag']=='1'){
			if($row['m_uid']==$_SESSION['login_uid'] or $row['fuid']==$_SESSION['login_uid'])
				{
					$row['txt'].="<font style='color:#CCC'> [仅我俩能看]</font>";
				}
			else $row['txt']="<font style='color:#CCC'>不公开的留言 [仅Ta俩能看]</font>";
		}
		$row['showstars']=showstars($row['onlinetime']);
		$row['nowtime']=gdate();
		$row['dateline1']=date("Y-m-d H:i:s",$row['dateline']);
		$row['vip_level']="0";
		$row['autoid'] = ++$autoid;
		if($row['vip_expire']!='0'){
			$tmp=explode('-',$row['vip_expire']);
			if((int)$tmp[1]>gdate())$row['vip_level']=$tmp[0];
		}
		foreach($row as $key=>$value){
     		$value = strip_tags(htmlspecialchars_decode($value), '<img>');
			$t=str_replace('{'.$key.'}',$value,$t);
		}
	$str.=$t;
	}
	return $str;
}

function for_each2($query,$tpl){
	global $db,$tablepre;
	while($row=$db->fetch_row($query)){
		$t=$tpl;
		if(strpos($row['week'],"1")===false){$row['checked1'] = "";}else{$row['checked1'] = "checked='CHECKED'";}
		if(strpos($row['week'],"2")===false){$row['checked2'] = "";}else{$row['checked2'] = "checked='CHECKED'";}
		if(strpos($row['week'],"3")===false){$row['checked3'] = "";}else{$row['checked3'] = "checked='CHECKED'";}
		if(strpos($row['week'],"4")===false){$row['checked4'] = "";}else{$row['checked4'] = "checked='CHECKED'";}
		if(strpos($row['week'],"5")===false){$row['checked5'] = "";}else{$row['checked5'] = "checked='CHECKED'";}
		if(strpos($row['week'],"6")===false){$row['checked6'] = "";}else{$row['checked6'] = "checked='CHECKED'";}
		if(strpos($row['week'],"0")===false){$row['checked0'] = "";}else{$row['checked0'] = "checked='CHECKED'";}
		foreach($row as $key=>$value){
     		$value = strip_tags(htmlspecialchars_decode($value), '<img>');
			$t=str_replace('{'.$key.'}',$value,$t);
		}
	$str.=$t;
	}
	return $str;
}

function roomadmin($uid)
{
	global $db,$tablepre;
	if($db->num_rows($db->query("select uid from {$tablepre}members where uid='$uid' and priv='1'"))>0){
		$query=$db->query("select id from {$tablepre}room");
		$i=0;
		while($row=$db->fetch_row($query)){
			$t[$i++]=$row[0];
			}
			return $t;
	}

	$query=$db->query("select rids from {$tablepre}roomadmin where uid='$uid' limit 1");
	while($row=$db->fetch_row($query))
	{
		return explode(',',$row['rids']);
	}
	return array();
}
function isonline($uid)
{
	global $db,$tablepre;
	$time=gdate();
	$isonline=false;
	$str="离线";
	$query=$db->query("select * from {$tablepre}members where lastactivity>$time-70 and uid='$uid'");
	if($db->num_rows($query)>0){$isonline=true;$str="在线";}

	$query=$db->query("select a.* from {$tablepre}room a,{$tablepre}memberonlines b where a.id=b.rid and b.uid='$uid'");

	while($row=$db->fetch_row($query))
	{
		if($isonline){$str="聊天中";$str.='(<a href="javascript:void(0);" onclick=\'window.open("./?id='.$row['id'].'","room","width="+screen.availWidth+",height="+screen.availHeight)\'>'.$row['name'].'</a>)';}

	}
	return $str;
}
function reonline()
{
	global $db,$tablepre,$u_id;
	$time=gdate();
	if(!isset($_SESSION['onlines_state']['time']))
	{
		$_SESSION['onlines_state']['time']=$time;
		$db->query("update {$tablepre}members set lastactivity=$time where uid='$u_id'");
	}
	$query_row=$db->fetch_row($db->query("select lastactivity from {$tablepre}members where uid='$u_id'"));
	$_time=(int)($time-$query_row['lastactivity']);

	$db->query("delete from {$tablepre}memberonlines where lastactivity<$time-600");
	$db->query("update {$tablepre}members set lastactivity='$time' where uid='$u_id'");
}
function gusetLogin(){
	global $db,$tablepre,$onlineip;
	//$md5=strtoupper(substr(md5(microtime()),0,4));
	if(isset($_COOKIE['md5'])){
	$ykuid = $_COOKIE['md5'];
	if(!$db->fetch_row($db->query("select * from {$tablepre}yk_members where userid = 'x{$ykuid}'"))){
	setcookie("md5");
		}
			}
	$md5=mt_rand(100000,999999);
	if(!isset($_COOKIE['md5'])){
	setcookie("md5", $md5, gdate()+315360000);
	$tuser=userinfo($_GET['tg'],'{username}');
	$db->query("insert into {$tablepre}yk_members(userid,username,regdate,regip,lastvisit,lastactivity,gid,tuser)values('x{$md5}','游客{$md5}','".time()."','{$onlineip}','".time()."','".time()."','17','{$tuser}')");
	}else{ 
	$md5=$_COOKIE['md5'];
	$db->query("update {$tablepre}yk_members set lastactivity='".time()."' where userid = 'x{$md5}'");
		}
	$_SESSION['login_uid']=0;
	$_SESSION['login_guest_uid']='x'.$md5;
	$_SESSION['login_nick']='游客'.$md5;
	$_SESSION['login_sex']=0;
}
function user_login($u,$p){
	global $db,$tablepre,$onlineip,$cfg;

	$query=$db->query("select * from {$tablepre}members where username='$u' and password='".md5($p)."'");
	while($row=$db->fetch_row($query)){
		if($cfg['config']['regaudit']=='1'&&$row['state']=='0')
		return "用户未审核！";

		$_SESSION['login_uid']=$row['uid'];
		$_SESSION['login_user']=$row['username'];
		$_SESSION['login_nick']=$row['username'];
		$_SESSION['login_gid']=$row['gid'];
		$_SESSION['login_sex']=$row['sex'];
		$time=gdate();
		$_SESSION['onlines_state']['time']=$time;
		$db->query("update {$tablepre}members set lastvisit=lastactivity,regip='$onlineip' where uid={$row[uid]}");
		$db->query("update {$tablepre}members set lastactivity=$time where uid={$row[uid]}");
		$db->query("update {$tablepre}memberfields set logins=logins+1 where uid={$row[uid]}");
		$db->query("insert into  {$tablepre}msgs(rid,ugid,uid,uname,tuid,tname,mtime,ip,msg,`type`)
	values('{$cfg[config][id]}','{$row[gid]}','{$row[uid]}','{$row[username]}','{$cfg[config][defvideo]}','{$cfg[config][defvideonick]}','".gdate()."','{$onlineip}','用户登陆','1')
		");
		return true;
	}
	return "用户名或密码错误！";
}
function qquser_login($openid){
	global $db,$tablepre,$onlineip,$cfg;

	$query=$db->query("select * from {$tablepre}members where  openid='$openid'");
	while($row=$db->fetch_row($query)){
		if($cfg['config']['regaudit']=='1'&&$row['state']=='0')
		return "用户未审核！";

		$_SESSION['login_uid']=$row['uid'];
		$_SESSION['login_user']=$row['username'];
		$_SESSION['login_nick']=$row['username'];
		$_SESSION['login_gid']=$row['gid'];
		$_SESSION['login_sex']=$row['sex'];
		$time=gdate();
		$_SESSION['onlines_state']['time']=$time;
		$db->query("update {$tablepre}members set lastvisit=lastactivity,regip='$onlineip' where uid={$row[uid]}");
		$db->query("update {$tablepre}members set lastactivity=$time where uid={$row[uid]}");
		$db->query("update {$tablepre}memberfields set logins=logins+1 where uid={$row[uid]}");
		$db->query("insert into  {$tablepre}msgs(rid,ugid,uid,uname,tuid,tname,mtime,ip,msg,`type`)
	values('{$cfg[config][id]}','{$row[gid]}','{$row[uid]}','{$row[username]}','{$cfg[config][defvideo]}','{$cfg[config][defvideonick]}','".gdate()."','{$onlineip}','QQ登陆','1')
		");
		return true;
	}
	return "用户名或密码错误！";
}
function group_info($gid){
	global $db,$tablepre;
	$sql="select * from {$tablepre}auth_group where id ='$gid' limit 1";
	$query=$db->query($sql);
	while($row=$db->fetch_row($query)){
		return $row;
	}
	return NULL;
}
function auth_group($gid){
	global $db,$tablepre;
	$sql="select rules from {$tablepre}auth_group where id ='$gid' limit 1";
	$query=$db->query($sql);
	while($row=$db->fetch_row($query)){
		return $row[rules];
	}
	return NULL;
}
function check_auth($auth){
	$auth_rules=auth_group($_SESSION['login_gid']);
	if(stripos($auth_rules,$auth)!==false)return true;
	return false;
}
function check_user_auth($uid,$auth){
	$auth_rules=auth_group(userinfo($uid,'{gid}'));
	if(stripos($auth_rules,$auth)!==false)return true;
	return false;
}
function get_group($gid){
	global $db,$tablepre;
	$sql="select rules from {$tablepre}auth_group where id ='$gid' limit 1";
	$auth_rules=auth_group(userinfo($uid,'{gid}'));
	if(stripos($auth_rules,$auth)!==false)return true;
	return false;
}
//充值记录前台
function userorder($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}order_list where mid=$key and status=1";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
//我的提现
function usertx($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}tx_list where mid=$key";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by status asc , id desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
//我的消费
//我的提现
function userconsume($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}consumelist where mid=$key";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by cid desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
function usersubuser($num,$key,$tpl){
	global $db,$tablepre,$firstcount,$displaypg;
	$sql="select * from {$tablepre}members where tuser='$key'";
	$count=$db->num_rows($db->query($sql));
	pageft($count,$num,"");
	$sql.=" order by uid desc";
	$sql.=" limit $firstcount,$displaypg";
	$query=$db->query($sql);
	return for_each($query,$tpl);
}
/**
 *  参数拆分
 */
function webscan_arr_foreach($arr) {
  static $str;
  static $keystr;
  if (!is_array($arr)) {
    return $arr;
  }
  foreach ($arr as $key => $val ) {
    $keystr=$keystr.$key;
    if (is_array($val)) {

      webscan_arr_foreach($val);
    } else {

      $str[] = $val.$keystr;
    }
  }
  return implode($str);
}
/**
 *  攻击检查拦截webscan_StopAttack($key,$value,$postfilter,"POST");
 */
function webscan_StopAttack($StrFiltKey,$StrFiltValue,$ArrFiltReq) {
  $StrFiltValue=webscan_arr_foreach($StrFiltValue);
  if (preg_match("/".$ArrFiltReq."/is",$StrFiltValue)==1){

    exit(webscan_pape());
  }
  if (preg_match("/".$ArrFiltReq."/is",$StrFiltKey)==1){

    exit(webscan_pape());
  }
/*
  if (preg_match('/script/is', $StrFiltKey)) {
  	exit('110');
  }

  if (preg_match('/script/is', $StrFiltValue)) {
  	exit('110');
  }
*/
}
/**
 *  防护提示页
 */
function webscan_pape(){
  $pape=<<<HTML
  <html>
  <body style="margin:0; padding:0">
  <center><iframe width="100%" align="center" height="870" frameborder="0" scrolling="no" src="/stopattack.html"></iframe></center>
  </body>
  </html>
HTML;
  echo $pape;
}

function yyvideo($yyid,$type){
if($type==1){$url = "http://www.zhiniu8.com/h5ChannelShare?cid=".$yyid; }
if($type==2){$url = "http://www.zhiniu8.com/h5live?uid=".$yyid; }
$fp = @fopen($url, "r") or die("超时");
$fcontents = file_get_contents($url);
preg_match("/pageGlobal.streamId = '(.*)';/S", $fcontents, $regs);
if($regs[1]){
echo '<div id="live"></div>
<script src="http://www.zhiniu8.com/assets/js/lib/zepto-1.1.6.js"></script>
<script type="text/javascript" src= "http://vodplayer.bs2dl.yy.com/yycloud.js"></script>
       <script>
            var winWidth = $(window).width(),
            tipsInfo = $(\'#tipsInfo\');
            winWidth = winWidth > 1000 ? 1000 : winWidth;
            var yy_player_conf = {
                "vid": "'.$regs[1].'",
                "vquality": 3,
                "appid": 50020,
                "mode": 0,
                "width": winWidth,
                "height": winWidth * 0.6,
                "auto_play": 1,
                "token": "",
                "controls": 1
            };
            yyObject.setPlayer(yy_player_conf, document.getElementById(\'live\'));
</script>';
}
else{
echo '<div style="text-align:center; color:#FFFFFF;">当前直播室没有开始直播</div>';
   }
 }
?>