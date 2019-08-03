<?php
require_once '../include/common.inc.php';
function app_room_list($num, $key, $tpl)
{
	global $db, $tablepre, $firstcount, $displaypg;
	$sql = "select * from {$tablepre}config";
	$count = $db->num_rows($db->query($sql));
	pageft($count, $num, "");
	$sql .= " order by id asc";
	$sql .= " limit $firstcount,$displaypg";
	$query = $db->query($sql);
	return for_each($query, $tpl);
}
 ?>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>房间列表</title>
</head>
<style type="text/css">
	body {
		font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
		color: #4f6b72;
		margin-left:0px;
	}

	a {
		color: #c75f3e;
	}

ul{ margin:0px; padding:0px;}
.room{ width:100%;}
ul{ list-style:none;}
.room li{ width:180px;display:block; float:left; margin-left:10px; margin-top:10px; background:#CAE8EA;}
.room li a{color:#3f3e3e; text-decoration:none;}
.room li a:hover{color:#3f3e3e; text-decoration:underline;}
.room li span{ margin-top:8px; display:block; font-size:12px; padding-bottom:8px;white-space:nowrap; overflow:hidden; text-overflow:ellipsis; padding-left:5px; padding-right:5px;}
.roomlisttit{border-bottom: 2px solid #D6D6D6; color:#3f3e3e;line-height:30px; text-align:center;height:30px; font-size:14px; font-weight:bold;background:#CAE8EA; margin-left:10px;}
</style>
<body>
<div class="roomlisttit">房间列表</div>
<div class="room">
<ul>
<?php
		echo app_room_list(20, $key, '
		<li><a target="_blank" href="/index.php?rid={rid}"><img src="{cover}" width="180" height="135"/></a><span><a href="#">{title}</a></span></li>
') ?>

</ul>
</div>
<div style="clear:both;"></div>
<div style="height:30px; line-height:30px; width:100%; margin-left:10px; margin-top:10px;"><?= $pagenav ?></div>
<script type="text/javascript" src="../xheditor/jquery/jquery-1.4.4.min.js"></script>
</body>
</html>