<?php require_once '../include/common.inc.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的消费</title>
<link href="style/css.css" rel="stylesheet" type="text/css" />
</head>
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
<body style="background:#ededed">
	<?php 
include_once 'head.php'; 
?>
	<div id="sidebar" class="sidebar-fixed" >
      <?php 
include_once 'left.php'; 
?>
     </div>
     
     <div id="content">
     	<div class="container">
        	<div class="crumbs">
            	<a href="#">首页</a>><a href="#">我的消费</a>
          </div>
          <div class="biaoge">
          		
          			
                    
                
                
                <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tbody><tr>
                            
                            <th width="50">序号</th>
                            <th>对象</th>
                            <th>数量</th>
                            <th>消费时间</th>
                            <th>备注</th>
                        </tr>

<?php
echo userconsume(20,$_SESSION['login_uid'],'
 <tr>
 	 <td >{autoid}</td>
     <td >{username}</td>
	 <td>{count}</td>
  	 <td><script>document.write(ftime({time}));</script></td>
  	 <td>{beizhu}</td>
 </tr>
')
?>
                      
                    </tbody></table>
                </div>
            </form>
             <ul class="breadcrumb">
		<li class="active"><?= $pagenav ?>
		</li>
	</ul>
        </div>
                	
                
          </div>
        </div>
     </div>
</body>
</html>
