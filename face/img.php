<?php
$u = $_GET['t'] . '/' . $_GET['u'] . ".gif";
if (file_exists($u)) header("Location: $u"); else {
    $uid =sprintf($_GET['u']%40);
    if ($uid<10)$uid = (string)'0'.$uid;
//	if ($_GET['t'] == 'p1') $u = "rebot/" . sprintf("%02d", rand(2, 40)) . ".png"; else $u = "p2/null.gif";
	if ($_GET['t'] == 'p1') $u = "rebot/" . $uid . ".png"; else $u = "p2/null.gif";
	header("Location: $u");
} ?>