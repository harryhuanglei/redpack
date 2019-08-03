<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'mkt_prizecdk') === false) exit("没有权限！");
switch ($act) {
	case "prizecdk_del":
		 if(is_array($id)){
         prizecdk_del(implode(',',$id));
                }
		else{
         prizecdk_del($id);
                }
		break;
	case "generate":
		GenerateCdk($cdknum);
	break;
} ?>
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
		function ftime(time) {
			return new Date(time * 1000).Format("yyyy-MM-dd hh:mm");
			;
		}

	</script>
</head>
<body>
<div class="container" style=" min-width:1000px;">

<form id="generatecdk" class="form-horizontal" action="" method="get">
		<ul class="breadcrumb">
			<li class="active">
                <input type="hidden" name="act" id="act" value="generate" >
				输入生成抽奖码的个数：
				<input type="text" name="cdknum" id="cdknum" data-rules="{max:100,required:true,min:1,number:true}" class="abc input-default" placeholder="">
				&nbsp;&nbsp;
				<button type="submit" class="button ">生成</button>
				  	</li>
            <button type="button"  class="button  button-danger"  onClick="if(confirm('确定删除？'))$('#hd_list').submit()">删除所选</button>
		</ul>
  </form>
    </form>
    <form action="" method="POST" enctype="application/x-www-form-urlencoded"  class="form-horizontal" id="hd_list">
	<input type="hidden" name="act" value="prizecdk_del">
  <table class="table table-bordered table-hover definewidth m10">
		<thead>
		<tr style="font-weight:bold">
			<td width="40" align="center" bgcolor="#FFFFFF">编号</td>
            <td width="19" align="center" bgcolor="#FFFFFF"><input type="checkbox" onClick="$('.ids').attr('checked',this.checked); "></td>
            <td width="70" align="center" bgcolor="#FFFFFF">抽奖码&CDK</td>
			<td width="130" align="center" bgcolor="#FFFFFF">创建时间</td>
			<td width="130" align="center" bgcolor="#FFFFFF">操作</td>
		</tr>
		</thead>
		<?php
		echo prizecdk_list(20, $key, '
    <tr>
      <td bgcolor="#FFFFFF" align="center">{id}</td>
	   <td align="center" bgcolor="#FFFFFF"><input type="checkbox" class="ids" name="id[]" value="{id}"></td>
	  <td align="center" bgcolor="#FFFFFF">{cdk}</td>
      <td align="center" bgcolor="#FFFFFF"><script>document.write(ftime({generatetime}));</script></td>
      <td align="center" bgcolor="#FFFFFF">
      <button type="button" class="button button-mini button-danger" onclick="if(confirm(\'确定删除该项？\'))location.href=\'?act=prizecdk_del&id={id}\'" ><i class="x-icon x-icon-small icon-trash icon-white"></i>删除</button></td>
    </tr>
') ?>


	</table>
     </form>
	<ul class="breadcrumb">
		<li class="active"><?= $pagenav ?>
		</li>
	</ul>
</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../assets/js/bui.js"></script>
<script type="text/javascript" src="../assets/js/config.js"></script>
<script type="text/javascript">
  BUI.use('bui/form',function (Form) {
    new Form.Form({
      srcNode : '#generatecdk'
    }).render();
  });
</script>
</body>
</html>