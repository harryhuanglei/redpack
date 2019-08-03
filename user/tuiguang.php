<?php require_once '../include/common.inc.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的推广</title>
<link href="style/reset.css" rel="stylesheet" type="text/css" />
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
		function sgid(id) {
			var arr = new Array();
			if (isNaN(id)) return '';
			<?php
		 $query=$db->query("select * from {$tablepre}auth_group order by id desc"); while($row=$db->fetch_row($query)){ echo "arr['{$row[id]}']='$row[title]';"; } ?>
			return arr[id];
		}
	</script>
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
            	<a href="#">首页</a>><a href="#">我的推广</a>
          </div>
          <div class="biaoge">  
            <div class="result-wrap">
            <form name="myform" id="myform" method="post"> 
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tbody><tr>
                            <th width="50">序号</th>
                            <th>用户名</th>
                            <th>用户组</th>
                            <th>注册时间</th>
                        </tr>
<?php
$datou=$db->fetch_row($db->query("select m.*,ms.* from {$tablepre}members m,{$tablepre}memberfields ms  where m.uid=ms.uid and m.uid='{$uid}'"));
echo usersubuser(20,$datou[username],'
 <tr>
 	 <td >{autoid}</td>
     <td >{username}</td>
	 <td><script>document.write(sgid({gid})); </script></td>
  	 <td><script>document.write(ftime({regdate}));</script></td>
 </tr>
')
?>

                  </tbody></table>
                    </div>
            </form>
              <ul class="breadcrumb">
		<li class="active"><?= $pagenav ?>
		</li>
	</ul
        </div>
                	
                
          </div>
        </div>
     </div>
</body>
</html>
