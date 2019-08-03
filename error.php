<?php
require_once './include/common.inc.php'; ?>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>错误</title>
</head>

<body>
<style>
	* {
		font-family: 'Microsoft YaHei UI', 'Microsoft YaHei', SimSun, 'Segoe UI', Tahoma, Helvetica, Sans-Serif;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<div style="color:#F00; font-size:35px; margin-top:100px; margin-bottom:20px; text-align:center">通 知</div>
<div style="text-align:center; line-height:20px;">
	<span style="display:block; font-size:20px; color:#666;  padding:20px; margin:10px auto; width:600px; border:1px solid #CCC; white-space:200px; line-height:40px"><?= addslashes($_GET['msg']); ?></span>
	<br><a href="../" style="display:inline-block; width:60px; margin:10px; padding:5px; background:#09F; color:#FFF">返回</a>
    <a href="/logging.php?act=logout" style="display:inline-block; width:90px; margin:10px; padding:5px; background:#09F; color:#FFF">退出登录</a><br>
<div style="color:#F00; font-size:35px; margin-top:20px; margin-bottom:20px; text-align:center">联系客服</div>
	<span style="display:block; font-size:20px; color:#666; margin:10px auto; width:600px; white-space:200px; line-height:40px"><?php
					$query = $db->query("select * from {$tablepre}customerservice order by ov DESC limit 0,8 ");
					while ($row = $db->fetch_row($query)) {
						$kefulist .= "<a style='margin-left:10px;' target='_blank' href='{$row[url]}' ><img src='{$row[img]}'  title='{$row[name]}' class='qqimg'></a>";
					}
					echo $kefulist; ?></span>
</div>
</body>
</html>