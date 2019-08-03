<?php require_once '../include/common.inc.php';?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>充值</title>
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
            	<a href="#">首页</a>><a href="#">充值</a>
          </div>
          <div class="biaoge">
          	<div class="biaoge_inner">
          			<div class="wrap745" style="width: 740px;">
    <!--topbar-->
    <div class="nav">
        <div class="tit">
            充值流程：</div>
        <div class="number">
            <span class="img">
                <img src="images/1.png"></span> <span class="on">填写金额</span>
            <span class="arrow">
                <img src="https://mypay.ebatong.com/Images/charge/icon/arrow_on.gif"></span>
        </div>
        <div class="number">
            <span class="img">
                <img src="images/2.png"></span> <span class="off">确认充值信息</span>
            <span class="arrow">
                <img src="https://mypay.ebatong.com/Images/charge/icon/arrow_off.gif"></span>
        </div>
        <div class="number">
            <span class="img">
                <img src="images/3.png"></span><span class="off">进入网上银行充值</span>
        </div>
    </div>
    
    <!--end-->
    <div id="ChargeEBank1_divBankMsg" style="display: none;" class="paycue">
    </div>
    <div class="box clearfix">
        
        
    </div>
    
    <div class="box mt10 clearfix clear">
        <div class="left mt10" style="margin-left: 4px;">
            <span class="red">*</span>充值金额：&nbsp;<br>
            <br>
            <span id="spanUse1" style="display: none;"><span class="red">*</span>充值用途：&nbsp;</span>
        </div>
        <div class="right mt10" id="debug_0">
		
<form method="post" action="/alipay/alipayapi.php?mid=<?=$u[uid]?>" >
           <input type="hidden" name="WIDshow_url" value="http://<?php echo $_SERVER['HTTP_HOST'];?>/user/index.php"/>
		   <input type="text" name="WIDtotal_fee" id="WIDtotal_fee" value="10"  class="input"/> &nbsp;元&nbsp;
<div class="clear">
        </div>
        <div class="left mt10">
            
            <span id="spanUse" style="display: none;"><span class="red">*</span>充值用途：&nbsp;</span>
        </div>
        <div id="debug_1" class="right mt10">
          
            <span class="mt10">
                <input type="submit" name="ChargeEBank1$btnNext" value="下一步"  class="input_button82">&nbsp;&nbsp;<a href="#" target="_blank"><img src="../images/charge/1-1_r2_c2.gif" id="imgebank" style="display: none;" alt=""></a><br>
            </span>
            <br>
        </div>
    </body>
</html>
