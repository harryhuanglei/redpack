<?php
require_once '../include/common.inc.php';
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>讲师团队</title>
<style>
*{padding:0;margin:0;font-family:Tahoma,"Microsoft Yahei",Simsun,Arial,Helvetica,sans-serif;}
li{list-style:none;}
img{border:none;}
a{text-decoration:none;}
.clear{clear:both}
.fl{float:left;}
.fr{float:right;}
/**/
#dialog{width: 920px;margin:0px auto;}
#dialog .close{width: 41px;height: 35px;position: absolute;top: 0px;right: 0px;background: url(../images/fancy_close.png) no-repeat;cursor: pointer;z-index: 10000;}
#dialog .dialog-content{width: 100%;height: 100%;overflow: auto;background-color: #f7f1eb;border-radius: 5px;}
#experts{margin: 10px 20px 0;border: 1px solid #002e66; margin-bottom:10px;}
.experts_btns{background: #162b40;color: #fff;font-size: 18px;height: 48px;line-height: 48px;text-align: center;width: 880px;}
.experts_btns li{border-right: 1px solid #194474;float: left;position: relative;left: 0;top: 0;  padding: 0px 20px;cursor:pointer}
.experts_btns li:hover{color:#9FC0E2}
.experts_btns li.experts_btns_current span{width: 14px;height: 3px;position: absolute;left: 50%;margin-left: -7px;top: 100%;background:url(../images/li_sanjia.png) no-repeat center center;}
.experts_btns_current{color: #5b9ce0;background: url(../images/li_bg.jpg) no-repeat center 0px;}
li.experts_btns_current:hover{color: #5b9ce0;}
.experts_detail{width: 810px;margin: auto;font-family: "SimSun";}
.experts_detail .li_appear{display: block;}
.experts_detail dl{border: 1px dashed #4d92f0;height: 225px;margin: 20px 0;overflow:hidden;padding: 10px;}
.experts_detail dl dt{height: 175px;width: 175px;color: #000;float: left;text-align: center; no-repeat center top;margin:0px 10px;}
.experts_detail dl dd{font-size: 14px;line-height: 28px;color: #666;float: left;width: 580px;margin-left:10px;  overflow: auto;height: 100%;}
.experts_detail dl dt img{width:175px;height:175px;border-radius:175px;}
.experts_detail dl dt p{padding-top:5px;font-size:18px;}
.experts_detail_contain{overflow: hidden;width: 100%;margin: 0;height: 220px;}
.experts_zan{font-family: "Microsoft YaHei";float: left;width: 606px;}
.zan_per{color: #666;font-size: 18px;height: 45px;text-align: left;}
.experts_zan span{height: 45px;}
.zan_per_word{width: 543px;}
.zan_full{background: #e0e3ef;height: 45px;}
.zan_full .zan_length{background: #ecbd00;height: 100%;width: 30px;  float: left;}
.zan_num{color: #a4a4a4;font-size: 14px;padding-top: 20px;}
.experts_detail_contain a{float: right;padding: 0 10px;}
</style>
</head>
<body>
    	<div id="dialog">

	<div class="dialog-content" style="background-color: #ebf1f7; background-position: initial initial; background-repeat: initial initial;">
   <?php $query = $db->query("select * from {$tablepre}lecturer order by ov desc ");
while ($row = $db->fetch_row($query)) { ?>
        	<div id="experts">	
		<ol class="experts_btns">
			
						<li class="experts_btns_current"><span></span><?= $row['name'] ?></li>
		</ol>
		<ul class="experts_detail">
								
				<li class="li_appear" style="display: block;">
				<dl>
					<dt>
					  <img src="<?= $row['head'] ?>"/>
					  <p><?= $row['name'] ?></p>
					</dt>
					<dd><p>
					<span style="font-family: 宋体; font-size: 16px;">
					<p><?= tohtml($row['introduce']) ?></p>					</span></p></dd>
				</dl>
			</li>
			</ul>
	</div>
       <?php } ?>
	</div>
</div>  
 
</body>
</html>
