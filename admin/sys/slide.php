<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'sys_slide') === false) exit("没有权限！");
switch ($act) {
	case "slide_del":
		slide_del(implode(',', $id));
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
		#tooltip{position:absolute;border:1px solid #fff;display:none;color:#FFF; padding:2px; background:#fff;}
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
		var zt = new Array();
		zt['0'] = "启用";
		zt['1'] = "未启用";
	</script>
</head>
<body>
<div class="container" style=" min-width:1000px;">
	<form class="form-horizontal" action="" method="get">
		<ul class="breadcrumb">
			<button type="button" class="button button-success" id="add_group_bt" style="float: right"
					onClick="openAppManage(0,'add')">添加
			</button>
			<li class="active">

				关键字：
				<input type="text" name="key" id="key" class="abc input-default" placeholder="">
				&nbsp;&nbsp;
				<button type="submit" class="button ">查询</button>
				<button type="button" class="button  button-danger"
						onClick="if(confirm('确定删除？'))$('#hd_list').submit()">删除所选
				</button>
				&nbsp;&nbsp;</li>

		</ul>
	</form>
	<form action="" method="POST" enctype="application/x-www-form-urlencoded" class="form-horizontal" id="hd_list">
		<input type="hidden" name="act" value="slide_del">
		<table class="table table-bordered table-hover definewidth m10">
			<thead>
			<tr style="font-weight:bold">
				<td width="30" align="center" bgcolor="#FFFFFF">编号</td>
				<td width="19" align="center" bgcolor="#FFFFFF"><input type="checkbox"
																	   onClick="$('.ids').attr('checked',this.checked); ">
				</td>
				<td width="100" align="center" bgcolor="#FFFFFF">应用名称</td>
				<td width="50" align="center" bgcolor="#FFFFFF">图片</td>
				<td width="80" align="center" bgcolor="#FFFFFF">打开方式</td>
				<td width="40" align="center" bgcolor="#FFFFFF">状态</td>
				<td width="40" align="center" bgcolor="#FFFFFF">排序</td>
				<td width="120" align="center" bgcolor="#FFFFFF">操作</td>
			</tr>

			</thead>

			<?php
			echo slide_list(20, $key, '
    <tr>
      <td align="center" bgcolor="#FFFFFF">{id}</td>
      <td align="center" bgcolor="#FFFFFF"><input type="checkbox" class="ids" name="id[]" value="{id}"></td>
      <td align="center" bgcolor="#FFFFFF">{title} </td>
      <td class="tooltip" href="{ico}" align="center" bgcolor="#FFFFFF"><img src="{ico}" style="width:50px;"></td>
      <td align="center" bgcolor="#FFFFFF">{target}</td>
      <td align="center" bgcolor="#FFFFFF"><script>document.write(zt["{s}"]); </script></td>
      <td align="center" bgcolor="#FFFFFF">{ov}</td>
      <td align="center" bgcolor="#FFFFFF">
        <button  type="button" class="button button-mini button-success" onClick="openAppManage(\'{id}\',\'edit\')"><i class="x-icon x-icon-small icon-trash icon-white"></i>修改</button>
        
        <button type="button" class="button button-mini button-danger" onclick="del(\'{id}\')" id="delbt{id}" ><i class="x-icon x-icon-small icon-trash icon-white"></i>删除</button></td>
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
	BUI.use('bui/overlay', function (Overlay) {
		dialog = new Overlay.Dialog({
			title: '轮播图片修改',
			width: 750,
			height: 530,
			buttons: [],
			bodyContent: ''
		});

	});
	function del(id) {
		if (confirm('确定删除？'))location.href = '?act=slide_del&id[]=' + id;
	}
	function openAppManage(id, type) {
		dialog.set('bodyContent', '<iframe src="slide_edit.php?id=' + id + '&type=' + type + '" scrolling="yes" frameborder="0" height="100%" width="100%"></iframe>');
		dialog.updateContent();
		dialog.show();
	}
	    $(function(){
                                var x = 10;
                                var y = 20;
            $("td.tooltip").mouseover(function(e){
                     // this.myTitle = this.title;
                      //    this.title = "";
                    //  var imgTitle = this.myTitle?"<br>"+ this.myTitle : "";
					var imgsrc = ($(this).find("img")[0].src);
                      var tooltip = "<div id='tooltip'><img src='"+ imgsrc +"' alt='预览图'/></div>"; //创建 div 元素
                         $("body").append(tooltip);        //把它追加到文档中
                         $("#tooltip").css({
                                   "top": (e.pageY+y) + "px",
                                   "left":  (e.pageX+x)  + "px"
                           }).fadeIn(600);          //设置x坐标和y坐标，并且显示
             }).mouseout(function(){
                        // this.title = this.myTitle;
                         $("#tooltip").remove();         //移除
              }).mousemove(function(e){
                          $("#tooltip").css({
                                "top": (e.pageY+y) + "px",
                                "left":  (e.pageX+x)  + "px"
                         });
                 });
                 })
</script>

</body>
</html>