<?php require_once '../include/common.inc.php';
switch ($act) {
	case "tixian":
	if(!$jine){
		echo "<script language='javascript'>alert('金额不能为空');location.replace(document.referrer);</script>";
		return false;	
	}
	if(!is_numeric($jine)){
		echo "<script language='javascript'>alert('金额必须是整数');location.replace(document.referrer);</script>";
		return false;
	}
		if($jine<20){
		echo "<script language='javascript'>alert('金额不得低于20元');location.replace(document.referrer);</script>";
		return false;
	}
	
	if(!$account){
		echo "<script language='javascript'>alert('账号不能为空');location.replace(document.referrer);</script>";
		return false;	
	}
	if(!$username){
		echo "<script language='javascript'>alert('收款人不能为空');location.replace(document.referrer);</script>";
		return false;	
	}
	
	$user=$db->fetch_row($db->query("select * from {$tablepre}members where uid ='$_SESSION[login_uid]'"));

	if($user[money]<$jine){
		echo "<script language='javascript'>alert('余额不足');location.replace(document.referrer);</script>";
		return false;	
	}else{/*
		$arr=array(
			'mid'=>$user[mid],
			'jine'=>$jine,
			'account'=>$account,
			'username'=>$username,
				'type'=>$_POST['type'],
			'bank'=>$_POST['bank'],
			'time'=>time(),
		);
		$res->ci_insert($arr,'tixianlist');*/
		$db->query("insert into {$tablepre}tx_list(mid,user,jine,account,username,type,bank,time)values('{$user[uid]}','{$user[username]}','{$jine}','{$account}','{$username}','{$type}','{$bank}','" . time() . "')");
		$db->query("update {$tablepre}members set money=money-'$jine' where uid='$user[uid]'");
		echo "<script language='javascript'>alert('提交成功');location.replace(document.referrer);</script>";
		return false;	
	}
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>提现</title>
<link href="style/css.css" rel="stylesheet" type="text/css" />
<script src="script/jquery.min.js"></script>
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
            	<a href="#">首页</a>><a href="#">提现</a>
          </div>
          <div class="biaoge">
          	<div class="biaoge_inner">
          			<div class="width980 align_l">
    <div class="czHomeBox">
        <div class="wrap_ml44">
            <div class="wrap745">
                <div class="nav">
                    <div class="tit">
                        提现流程：</div>
                    <div class="number">
                        <span class="img">
                            <img src="images/1.png" alt=""></span> <span class="on">
                                填写提现金额</span> <span class="arrow">
                                    <img src="https://mypay.ebatong.com/Images/charge/icon/arrow_on.gif" alt=""></span>
                    </div>
                    <div class="number">
                        <span class="img">
                            <img src="images/2.png" alt=""></span> <span class="off">
                                确认提现信息</span> <span class="arrow">
                                    <img src="https://mypay.ebatong.com/Images/charge/icon/arrow_off.gif" alt=""></span>
                    </div>
                    <div class="number">
                        <span class="img">
                            <img src="images/3.png" alt=""></span> <span class="off">
                                提现申请成功，请耐心等候到账</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clear" style="height: 4px;">
    </div>
    <div class="m_tlr">
        <h1 class="tixian_title">
            申请提现</h1>
        <div class="tixian_infor">
            <p>
                <strong class="f_14 f_666">账户余额：</strong> <span id="UserWithDrawalNew1_spanAccountRemainMoney" class="f_family22"><?=$u[money]?></span> 元 <a href="/user/dingdan.php" target="_blank" class="f_grey_line">资金明细查询</a>
            </p>
            <p class="m_t">
                <strong class="f_14 f_666">可提现额：</strong> <span id="UserWithDrawalNew1_spanCanWithDrawalRemainMoney" class="f_family22 f_ff6600"><?=$u[money]?></span> 元 <span class="f_999">充值金额及退回押金需48小时后方能提现（卡类充值金额不能提现）。</span>
              
            </p>
            <div class="tixian_block">
			<form method="post" action="?act=tixian" >
                <ul>
					<li><span class="f_14">提现方式：</span> 
					<input type="radio" name="type" value="1" class="tixian_type" checked="checked" />支付宝
<input type="radio" name="type" value="2" class="tixian_type" />银行卡
					</li>
					 <li id="bank_input" style="display:none"><span class="f_14">银行卡开户行：</span> 
				<input type="text" name="bank" id="bank" value="" class="input_bor"> 
					</li>
                    <li><span class="f_14">收款人：</span> 
					<input type="text" name="username" id="username" value=""  class="input_bor"/>  
					</li>
                  <li><span class="f_14">收款账号：</span> 
				  <input type="text" name="account" id="account" value=""  class="input_bor"/>  
					
					</li>
                    
                    <li class="m_b_5"><span class="f_14">提现金额：</span>
					<input type="text" name="jine" id="jine" value=""  class="input_bor"/>
                        </li>
                    <li><span class="f_14">&nbsp;</span> <span class="fed_formtips_error" id="spanMoneyTips" style=""><s class="ico_error_1"></s>温馨提示：请认真填写收款人及收款账号,最低提现额为20元！</span></li>
                 
                    <li><span class="f_14">&nbsp;</span>
                        <span class="mt10">
                <input type="submit"  value="下一步" class="input_button82"/>&nbsp;&nbsp;
            </span></a>
                      
                    </li>
                </ul>
				</form>
            </div>
        </div>
    </div>
</div>
                	
                </div>
          </div>
        </div>
     </div>
	 <script type="text/javascript" src="/js/jquery-1.7.2.js"></script>
     <?=$msg?>
	 <script language='JavaScript'>
$(".tixian_type").click(function(){

	if($(this).val()=='2'){
		
		$("#bank_input").show();
	}else{
		$("#bank_input").hide();
	}
});
</script>
</body>
</html>
