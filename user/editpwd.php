<?php require_once '../include/common.inc.php';
switch ($act) {
	case "editpwd":
		$uid = $_SESSION['login_uid'];
		if ($pwd1 != $pwd2) {
			$msg = "<script>$('.tab').hide();$('#tab_3').show();alert('新密码不一致！');</script>";
		} else {
			$query = $db->query("select * from {$tablepre}members where uid='$uid' and password='" . md5($oldpwd) . "'");
			if ($db->num_rows($query) > 0) {
				$db->query("update {$tablepre}members set  password='" . md5($pwd1) . "' where uid='$uid'");
				$msg = "<script>alert('密码已修改！');</script>";
			} else $msg = "<script>alert('旧密码错误！');</script>";
		}
		break;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改密码</title>
<link href="style/css.css" rel="stylesheet" type="text/css" />
</head>

<body style="background:#ededed">
<?php 
include_once 'head.php'; 
?>
	<div id="sidebar" class="sidebar-fixed" >
          <?php include_once 'left.php';?>
      
     </div>
   
     
     <div id="content">
     	<div class="container">
        	<div class="crumbs">
            	<a href="#">首页</a>><a href="#">修改密码</a>
          </div>
          <div class="biaoge">
          		<div class="biaoge_inner">
          		
                    
                    <div class="tian " style="width:100%;border-right:none;">
                      <form method="post"  action="editpwd.php?act=editpwd" >
						<ul>
							<li>
								<span class="t">原 密 码:</span>
								<span class="c"><input type="password" name="oldpwd" id="oldpwd" value=""  class="input" placeholder="请输入你的原密码" required/>
								</span>
								
							</li>
							<li>
								<span class="t">新 密 码:</span>
								<span class="c"><input type="password" name="pwd1" id="pwd1" value="" placeholder="请输入新密码" class="input" required/></span>
							</li>
							<li>
								<span class="t">确认密码:</span>
								<span class="c"><input type="password" name="pwd2" id="pwd2" value="" placeholder="请输入确认密码"  class="input" required/></span>
							</li>
						
							<li>
								<button type="submit" class="save_btn">保存修改</button>
							</li>
                       
						</ul>
						</form>
                	</div>
                    
                </div>
                	
                <?=$msg?>
          </div>
        </div>
     </div>
</body>
</html>
