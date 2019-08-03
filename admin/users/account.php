<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if(stripos(auth_group($_SESSION['login_gid']),'users_admin')===false)exit("没有权限！");
$auth_rule_userdel=false;
if(stripos(auth_group($_SESSION['login_gid']),'users_del')!==false)$auth_rule_userdel=true;

switch($act){
	case "user_del":
		if(stripos(auth_group($_SESSION['login_gid']),'users_del')===false)exit("没有权限！");
		  if(is_array($id)){
                  user_del(implode(',',$id));
                }
		else{
                       user_del($id);
                }
		header("location:?gid=".$gid);
	break;
}

$query=$db->query("select id,title from {$tablepre}auth_group order by id desc");
while($row=$db->fetch_row($query)){
	$group.='<option value="'.$row[id].'">'.$row[title].'</option>';
}
?>
<!DOCTYPE HTML>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../assets/css/bs3/dpl-min.css" rel="stylesheet" type="text/css" />
<link href="../assets/css/bs3/bui-min.css" rel="stylesheet" type="text/css" />
<link href="../assets/css/page-min.css" rel="stylesheet" type="text/css" />
<!-- 下面的样式，仅是为了显示代码，而不应该在项目中使用-->
<link href="../assets/css/prettify.css" rel="stylesheet" type="text/css" />
<style type="text/css">
code { padding: 0px 4px; color: #d14; background-color: #f7f7f9; border: 1px solid #e1e1e8; }
</style>
<script>
Date.prototype.Format = function (fmt) { //author: meizz
    var o = {
        "M+": this.getMonth() + 1, //月份
        "d+": this.getDate(), //日
        "h+": this.getHours(), //小时
        "m+": this.getMinutes(), //分
        "s+": this.getSeconds(), //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds() //毫秒
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}
function ftime(time){
	return new Date(time*1000).Format("yyyy-MM-dd hh:mm"); ;
}
function ftime2(time){
	if(time>(60*60*24)) return parseInt(time/(60*60*24))+"天";
	else if(time>(60*60))return parseInt(time/(60*60))+"小时";
	else if(time>60)return parseInt(time/60)+"分钟";
	else return parseInt(time)+"秒";
}
function sgid(id){
	var arr=new Array();
	if(isNaN(id)) return '';
	<?php
	$query=$db->query("select * from {$tablepre}auth_group order by id desc");
while($row=$db->fetch_row($query)){
	echo "arr['{$row[id]}']='$row[title]';";
	}
	?>
	return arr[id];
}
</script>
</head>
<body>
<div class="container"  style=" min-width:1400px;">
<form  class="form-horizontal" action="" method="get">
  <ul class="breadcrumb">
    <li class="active">关键字：
<!--      <input type="text" name="skey" id="rolename"class="abc input-default" placeholder="">-->
<!--      用户组：-->
<!--      <select name="sgid" id="sgid" >-->
<!--			<option value="-1" selected = "selected">全部</option>-->
<!--            --><?//=$group?>
<!--            </select>-->
<!--      <input type="hidden" name="fuser" value="--><?//=$fuser?><!--">-->
<!--     开始时间：<input type="text" name="stime" id="stime" class="calendar abc input-default"  style="width:150px;" placeholder="">-->
<!--     结束时间： <input type="text" name="etime" id="etime" class="calendar abc input-default" style="width:150px;" placeholder="">-->
<!--     排除IP： <input type="text" name="regip" id="regip" class="abc input-default" placeholder="">-->
<!--      &nbsp;&nbsp;-->
<!--      <button type="button"  class="button  button-danger"  onClick="if(confirm('确定删除？'))$('#hd_list').submit()">删除所选</button>-->

<!--      <button type="button"  class="button  button-success" onClick="account();">结算</button>-->
      <button type="button"  class="button  button-success" onClick="openNum();">输入号码</button>
      <button type="button"  class="button  button-success" onClick="clear_qi(1)">清理所有期数记录</button>
      <button type="button"  class="button  button-success" onClick="clear_qi(2)">清理聊天记录</button>
<!--      <button type="submit"  class="button ">查询</button>-->
<!--    &nbsp;&nbsp; 用户名、昵称、手机号码、推广人为查询字段</li>-->

  </ul>
  </form>
    <form action="" method="POST" enctype="application/x-www-form-urlencoded"  class="form-horizontal" id="hd_list">
	<input type="hidden" name="gid" value="<?=$gid?>">
	<input type="hidden" name="act" value="user_del">
  <table  class="table table-bordered table-hover definewidth m10">
    <thead>
      <tr style="font-weight:bold" >
        <td width="40" align="center" bgcolor="#FFFFFF">编号</td>
        <td width="80" align="center" bgcolor="#FFFFFF">用户名</td>
        <td width="80" align="center" bgcolor="#FFFFFF">期号</td>
        <td width="80" align="center" bgcolor="#FFFFFF">下注内容</td>
        <td width="80" align="center" bgcolor="#FFFFFF">上局积分</td>
		<td width="80" align="center" bgcolor="#FFFFFF">当前积分</td>
        <td width="60" align="center" bgcolor="#FFFFFF">倍数</td>
        <td width="60" align="center" bgcolor="#FFFFFF">分数变化</td>
        <td width="60" align="center" bgcolor="#FFFFFF">中奖号码</td>
      </tr>
    </thead>
<?php
$stime = strtotime($stime);
$etime = strtotime($etime);
$field = "m.uid,m.username,usf.turn_id,usf.id,usf.user_crrent_money,usf.turn_store,usf.turn_double,usf.store_change,usf.turn_num,uc.user_chip_id,uc.money mm,uc.num nn,(usf.user_crrent_money + usf.store_change) as tt";
$sql="select $field  from {$tablepre}members m inner join {$tablepre}user_store_flow usf on m.uid=usf.user_id left join {$tablepre}user_chip uc on usf.chip_id = uc.user_chip_id where  m.uid!=0 ";
if($skey!=""){
	$sql.=" and (m.username like '%$skey%' or m.fuser like '%$skey%' or m.tuser like '%$skey%' or m.phone like '%$skey%' or ms.nickname like '%$skey%')";
}

if($sgid!="" && $sgid!="-1" ){
	$sql.=" and m.gid='$sgid'";
}

$sql.=" order by usf.id desc";
if(!$auth_rule_userdel)$display_delbutton='style="display:none"';
echo userlist(20,$sql,'
    <tr>
      <td bgcolor="#FFFFFF" align="center">{uid}</td>
      <td align="center" bgcolor="#FFFFFF">{username}</td>
      <td align="center" bgcolor="#FFFFFF">{turn_id}</td>
      <td align="center" bgcolor="#FFFFFF">{nn}/{mm}</td>
      <td align="center" bgcolor="#FFFFFF">{user_crrent_money}</td>
	  <td align="center" bgcolor="#FFFFFF">{tt} </td>
	  <td align="center" bgcolor="#FFFFFF">{turn_double}&nbsp;</td>
	  <td align="center" bgcolor="#FFFFFF">{store_change}</td>
	  <td align="center" bgcolor="#FFFFFF">{turn_num}</td>
      
      </tr>
')?>


  </table>
    </form>
    <ul class="breadcrumb">
    <li class="active"><?=$pagenav?>
    </li>
  </ul>
</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../assets/js/bui.js"></script>
<script type="text/javascript" src="../assets/js/config.js"></script>
<script type="text/javascript" src="../../upload/swfupload/swfupload.js"></script>
<script>
BUI.use('bui/overlay',function(Overlay){
            dialog = new Overlay.Dialog({
            title:'用户设置',
            width:630,
            height:600,
            buttons:[],
            bodyContent:''
          });
});
function openUser(id,type){
	dialog.set('bodyContent','<iframe src="user_edit.php?id='+id+'&type='+type+'" scrolling="yes" frameborder="0" height="100%" width="100%"></iframe>');
	dialog.updateContent();
	dialog.show();
}
function openUserStore(id,type) {
    dialog.set('bodyContent','<iframe src="user_store_edit.php?id='+id+'&type='+type+'" scrolling="yes" frameborder="0" height="100%" width="100%"></iframe>');
    dialog.updateContent();
    dialog.show();
}
function addUser(){
  dialog.set('bodyContent','<iframe src="user_add.php" scrolling="yes" frameborder="0" height="100%" width="100%"></iframe>');
  dialog.updateContent();
  dialog.show();
}
function openNum(){
  dialog.set('bodyContent','<iframe src="open_num.php" scrolling="yes" frameborder="0" height="100%" width="100%"></iframe>');
  dialog.updateContent();
  dialog.show();
}
function clear_qi(val){
    $.post(
        'clear.php',
        {'val':val,'act':'clear'},
        function(data) {
            console.log(data);
            if (data.code == 200){
                alert(data.msg);
            }

        }, "json")
}

BUI.use('bui/calendar',function(Calendar){
          var datepicker = new Calendar.DatePicker({
            trigger:'#stime',
			showTime : true,
            dateMask : 'yyyy-mm-dd HH:MM:ss',
            autoRender : true
          });
 
var datepicker1 = new Calendar.DatePicker({
            trigger:'#etime',
            showTime : true,
            dateMask : 'yyyy-mm-dd HH:MM:ss',
            autoRender : true
          });
        });
  </script>
</body>
</html>
