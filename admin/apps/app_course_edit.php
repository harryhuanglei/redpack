<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
if (stripos(auth_group($_SESSION['login_gid']), 'apps_course') === false) exit("没有权限！");
switch ($act) {
	case "course_add":
		course_add($week, $teacher, $times, $info);
		break;
	case "course_del":
		course_del($id);
		break;
	case "course_edit":
		course_edit($id, $teacher, $times, $info);
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
</head>
<body>
<div class="container" style=" min-width:700px;">
	<ul class="breadcrumb">
		<li class="active">
			<button type="submit" class="button button-success" id="add_course_bt"><i
					class="icon icon-plus icon-white"></i> 添加
			</button>
			&nbsp;&nbsp;</li>
	</ul>
	<table class="table table-bordered table-hover definewidth m10">
		<thead>
		<tr style="font-weight:bold">
			<td width="50" align="center" bgcolor="#FFFFFF">编号</td>
			<td width="200" align="center" bgcolor="#FFFFFF">老师名称</td>
			<td width="200" align="center" bgcolor="#FFFFFF">时间</td>
			<td width="200" align="center" bgcolor="#FFFFFF">简单介绍</td>
			<td align="center" bgcolor="#FFFFFF">操作</td>
		</tr>
		</thead>
        <!--添加删除-->
		<form method="post" enctype="application/x-www-form-urlencoded">
			<tr id="act_course" style="display:none">
				<td align="center" valign="middle" bgcolor="#FFFFFF"><span class="label label-info" id="actstate">Info</span></td>
				<td align="center" valign="middle" bgcolor="#FFFFFF"><input name="teacher" type="text" id="teacher"/></td>
				<td align="center" valign="middle" bgcolor="#FFFFFF"><input name="times" type="text" id="times" style="width:200px;"/></td>
				<td align="center" valign="middle" bgcolor="#FFFFFF"><input name="info" type="text" id="info" style="width:200px;"/></td>
                <input type="hidden" id="act" name="act">
				<input type="hidden" id="id" name="id">
                <input type="hidden" id="week" name="week" value="<?=$week?>">
				<td align="center" valign="middle" bgcolor="#FFFFFF">
					<button class="button   button-success" id="act_course_sub" type="submit"><i
							class="x-icon icon-ok icon-white"></i> 确定
					</button>
				</td>
			</tr>
		</form>
		<?php
		$query = $db->query("select * from {$tablepre}course where week={$week} order by id asc");
		while ($row = $db->fetch_row($query)) { ?>
			<tr>
				<td bgcolor="#FFFFFF" align="center"><?= $row[id] ?></td>
				<td bgcolor="#FFFFFF" align="center"><?= $row[teacher] ?>&nbsp; </td>
				<td align="center" bgcolor="#FFFFFF"><?= $row[times] ?>&nbsp; </td>
				<td align="center" bgcolor="#FFFFFF"><?= $row[info] ?>&nbsp;</td>
				<td bgcolor="#FFFFFF" align="center">
					<button class="button button-mini button-info"
							onClick="course_edit_bt('<?= $row[id] ?>','<?= $row[teacher] ?>','<?= $row[times] ?>','<?= $row[info] ?>')">
						<i class="x-icon x-icon-small icon-wrench icon-white"></i>修改
					</button>
					<button class="button button-mini button-danger"
							onclick="if(confirm('确定删除？'))location.href='?week=<?=$week?>&act=course_del&id=<?= $row[id] ?>'">
						<i class="x-icon x-icon-small icon-trash icon-white"></i>删除
					</button>
				</td>
			</tr>
		<?php } ?>
	</table>
	<div class="row">

	</div>
</div>
<script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="../assets/js/bui.js"></script>
<script type="text/javascript" src="../assets/js/config.js"></script>
<script type="text/javascript" src="../../upload/swfupload/swfupload.js"></script>
<script>
	function course_edit_bt(id, teacher, times, info) {
		$("#act").val("course_edit");
		$("#act_course").show();
		$("#id").val(id);
		$("#teacher").val(teacher);
		$("#times").val(times);
		$("#info").val(info);
		$("#actstate").html("修改编号"+id);
	}
	$(function () {
		$("#add_course_bt").on("click", function () {
			$("#act_course").toggle();
			//提交类型
			$("#act").val("course_add");
			//名称
			$("#teacher").val("");
			//时间
			$("#time").val("");
			$("#info").val("");
			$("#actstate").html("添加");
		});


	});

</script>
</body>
</html>