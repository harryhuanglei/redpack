<?php
$uid = $_SESSION['login_uid'];
if(!$_SESSION['login_uid']){
	echo "<script type='text/javascript'>window.location='/index.php';</script>";
	exit;
}else{
$u = $db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.uid='{$uid}'"));
if(!$u){
	echo "<script type='text/javascript'>alert('对不起，这里不是你该来的地方，请换个账号登陆！');window.location='/index.php';</script>";
	exit;
}

}
$php_self=substr($_SERVER['PHP_SELF'],strrpos($_SERVER['PHP_SELF'],'/')+1);
?>

<header class="header navbar navbar-fixed-top" role="banner">
    	<div class="touxiang fr">
        <div class="tupian fl"><img src="../face/img.php?t=p1&u=<?= $u['uid'] ?>" width="100"></div>
        <div class="wenben fl"><?=$u[username]?></div>
        <div class="logout fl"><a href="/logging.php?act=logout">退出</a></div>
        </div><div class="container">
        	<div class="logo fl"><img src="<?= $cfg['config']['logo'] ?>" height="50"/></div>
            <ul class="nav navbar-nav navbar-left hidden-xs hidden-sm">
          <li>
            <a href="#">
              您好，<?=$u[nickname]?>
            </a>
          </li>
          <li class="dropdown">
            <a href="/" class="dropdown-toggle" data-toggle="dropdown">
              直播室首页
              <i class="icon-caret-down small">
              </i>
            </a>
            
          </li>
        </ul>
        </div>
        
    </header>