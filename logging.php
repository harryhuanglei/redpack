<?php
require_once './include/common.inc.php';
$echo = "";
switch ($act) {
	case "login":
		$msg = user_login($username, $password);
		if ($msg === true) {
			setcookie("username", $username, gdate() + 315360000);
			header("location:./");
		} else {
			$echo = "<script>layer.msg('{$msg}',{shift: 6});</script>";
		}
		break;
	case "logout":
		unset($_SESSION['login_uid']);
		unset($_SESSION['login_user']);
		session_destroy();
		header("location:index.php");
		break;
} ?>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>登录 <?= $cfg['config']['title'] ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE"/>
	<link rel="shortcut icon" type="image/x-icon" href="<?= $cfg['config']['ico'] ?>"/>
	<meta content="<?= $cfg['config']['keys'] ?>" name="keywords">
	<meta content="<?= $cfg['config']['dc'] ?>" name="description">
	<link href="images/base.css" rel="stylesheet" type="text/css"/>
	<link href="images/login.css" rel="stylesheet" type="text/css"/>
	<script src="script/jquery.min.js"></script>
	<script src="script/layer.js"></script>
	<script src="script/device.min.js"></script>
    <script src="script/function.js"></script>
</head>

<body>
<script>if (device.mobile()) {
		window.location = './minilogin.php';
	}</script>
<div class="mainBg">
	<div class="logoBar w1000 m0 cf">
		<div class="logo fl">
			<a href="javascript:;"><img src='<?= $cfg['config']['logo'] ?>' border=0></a>
		</div>
		<p class="fr" style="height:50px;">

			<a href="javascript://" class="regBtn trans03" onClick="openWin(2,'客服中心','/apps/kefu.php',810,500)" style="margin-top:10px;background: #ee6229;color:#fff;">客服中心</a>

		</p>
	</div>
	<div class="loginBox f14">
		<div class="loginMain cf">

			<div class="loginLeft fl h330">
				<div class="loginTitle">
					<p class="userLogin"></p>
				</div>
				<form action="?act=login" method="post" enctype="application/x-www-form-urlencoded" name="loginform"
					  id="login_form" class="loginForm" onSubmit="return  validates()">
					<div class="loginForm">
						<div class="oneLine cf">
							<span class="itemName">用户名</span>
							<span class="star">&nbsp;</span>
                <span>
                    <input name="username" id="username" type="text" value="<?= $_COOKIE['username'] ?>"></span>
							<span class="tishi" style="display: none"><i class="dui"></i></span>
						</div>
						<div class="oneLine cf">
							<span class="itemName">密码</span>
							<span class="star">&nbsp;</span>
                <span>
                    <input name="password" type="password" id="password"></span>
							<span class="tishi" style="display: none"><i class="cuo">密码错误</i></span>
						</div>


						<div class="oneLine cf">
							<span class="itemName">&nbsp;</span>
							<span class="star">&nbsp;</span>

							<div class="ie7LoginWidth dib cf">
								<p class="pr">
									<button id="lnkLogin" class="loginBtn trans03" style="border:0px;" type="submit">
										登录
									</button>
									<a class="tiyan f14" href="/">游客体验</a>
								</p>
								<p class="pt20 cf w">
									<span class="fl"><a onClick="layer.msg('忘记密码，请联系客服！',{shift: 6});" class="forgot">忘记密码？</a></span>
									<span class="fr"></span>
								</p>
							</div>
						</div>
					</div>
				</form>

			</div>
			<div class="loginRight fl">
				<div class="loginTitle">
					<p class="toReg"></p>
				</div>
				<a href="register.php" class="regBtn mt40 trans03">立即注册</a>
				<!--
					<p class="c999 pt30 f12">使用社交账号登录</p>
					<p>

						  <a  href="qqlogin/oauth/qq_login.php" ><img src="http://qzonestyle.gtimg.cn/qzone/vas/opensns/res/img/Connect_logo_3.png"></a>
					</p>

					-->
			</div>


		</div>
		<div class="loginBt"></div>
	</div>
	<div class="footer w">
		<div class="fLinks cf">
			<div class="w1000 m0">
				<span class="fl">友情链接：</span>
				<ul class="fl">
					<li><a href="http://www.95599.cn/cn/" target="_blank">农业银行</a></li>
					<li><a href="http://www.icbc.com.cn/icbc/" target="_blank">工商银行</a></li>
					<li><a href="http://www.ccb.com/" target="_blank">建设银行</a></li>
					<li><a href="http://www.boc.cn" target="_blank">中国银行</a></li>
				</ul>
			</div>
			<div>


			</div>
		</div>
		<div class="copy">
			<div id="MainContent_footer_divFooterLog" class="w1000 m0 cf">

				<div class="fl">
					<p class="cfff">投资有风险，入市须谨慎</p>

					<p><span><?= tohtml($cfg['config']['copyright']) ?></span></p>

					<p>
					</p>
				</div>
				<p id="MainContent_footer_pLogo4RJ" class="fr pt10">&nbsp;</p>
			</div>
		</div>
	</div>
</div>

<?= $echo ?>
<script type="text/javascript">
	function checkusername(username) {

		username = $.trim(username);


		if (username == '') {

			layer.msg('用户名不能为空！', {shift: 6});
			$("#username").focus();
			return false;

		}
		return true;
	}
	function checkpassword(pw) {
		pw = $.trim(pw);

		if (pw == '') {
			layer.msg('密码不能为空！', {shift: 6});
			$("#password").focus();
			return false;

		}
		return true;


	}
	function validates() {


		if (!checkusername($("#username").val()))return false;
		if (!checkpassword($("#password").val()))return false;


	}
</script>
</body>
</html>