<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if(stripos(auth_group($_SESSION['login_gid']),'sys_rebots')===false)exit("没有权限！");
switch($act){
	case "user_del":
		if(stripos(auth_group($_SESSION['login_gid']),'sys_rebots')===false)exit("没有权限！");
		  if(is_array($id)){
                  rebotsuser_del(implode(',',$id));
                }
		else{
                       rebotsuser_del($id);
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
<link href="../assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
<link href="../assets/css/bui-min.css" rel="stylesheet" type="text/css" />
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
<div class="container"  style=" min-width:1300px;">
<form  class="form-horizontal" action="" method="get">
  <ul class="breadcrumb">
    <li class="active">关键字：
      <input type="text" name="skey" id="rolename"class="abc input-default" placeholder="">
      用户组：
      <select name="sgid" id="sgid" >
			<option value="-1" selected = "selected">全部</option>
            <?=$group?>
            </select>
      <input type="hidden" name="fuser" value="<?=$fuser?>">
      &nbsp;&nbsp;
      <button type="button"  class="button  button-danger"  onClick="if(confirm('确定删除？'))$('#hd_list').submit()">删除所选</button>
      <button type="button"  class="button  button-success" onClick="addUser();">添加用户</button>
      <button type="submit"  class="button ">查询</button>
    &nbsp;&nbsp; 机器人昵称为查询字段</li>

  </ul>
  </form>
    <form action="" method="POST" enctype="application/x-www-form-urlencoded"  class="form-horizontal" id="hd_list">
	<input type="hidden" name="gid" value="<?=$gid?>">
	<input type="hidden" name="act" value="user_del">
  <table  class="table table-bordered table-hover definewidth m10" style=" width:60%;">
    <thead>
      <tr style="font-weight:bold" >
        <td width="40" align="center" bgcolor="#FFFFFF">编号</td>
        <td width="19" align="center" bgcolor="#FFFFFF"><input type="checkbox" onClick="$('.ids').attr('checked',this.checked); "></td>
        <td align="center" bgcolor="#FFFFFF">昵称</td>
        <td width="60" align="center" bgcolor="#FFFFFF">所属房间</td>
        <td width="60" align="center" bgcolor="#FFFFFF">用户组</td>
        <td width="80" align="center" bgcolor="#FFFFFF">在线星期</td>
        <td width="60" align="center" bgcolor="#FFFFFF">上线时间</td>
        <td width="60" align="center" bgcolor="#FFFFFF">下线时间</td>
        <td width="130" align="center" bgcolor="#FFFFFF">操作</td>
      </tr>
    </thead>
<?php
$sql="select * from {$tablepre}rebotslist";
if($skey!=""){
	$sql.=" where name like '%$skey%'";
}

if($sgid!="" && $sgid!="-1" ){
	$sql.=" where rgroup='$sgid'";
}
$sql.=" order by id desc";
echo userlist(20,$sql,'
    <tr>
      <td bgcolor="#FFFFFF" align="center">{id}</td>
	  <td align="center" bgcolor="#FFFFFF"><input type="checkbox" class="ids" name="id[]" value="{id}"></td>
      <td align="center" bgcolor="#FFFFFF">{name}</td>
	  <td align="center" bgcolor="#FFFFFF">{rid}</td>
      <td align="center" bgcolor="#FFFFFF"><script>document.write(sgid({rgroup})); </script>&nbsp;</td>
	  <td align="center" bgcolor="#FFFFFF">{week}</td>
	  <td align="center" bgcolor="#FFFFFF">{stime}</td>
	  <td align="center" bgcolor="#FFFFFF">{etime}</td>
      <td align="center" bgcolor="#FFFFFF">
      <button type="button" class="button button-mini button-info" onClick="openUser({id},0)" ><i class="x-icon x-icon-small icon-wrench icon-white"></i>修改</button>
      <button type="button" class="button button-mini button-danger" onclick="if(confirm(\'确定删除假人？\'))location.href=\'?act=user_del&id={id}\'"><i class="x-icon x-icon-small icon-trash icon-white"></i>删除</button></td>
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
            title:'机器人设置',
            width:650,
            height:450,
            buttons:[],
            bodyContent:''
          });
});
function openUser(id,type){
	dialog.set('bodyContent','<iframe src="rebots_edit.php?id='+id+'&type='+type+'" scrolling="yes" frameborder="0" height="100%" width="100%"></iframe>');
	dialog.updateContent();
	dialog.show();
}
function addUser(){
  dialog.set('bodyContent','<iframe src="rebots_add.php" scrolling="yes" frameborder="0" height="100%" width="100%"></iframe>');
  dialog.updateContent();
  dialog.show();
}

  </script>
</body>
</html>
