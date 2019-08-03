<?php
require_once '../include/common.inc.php';
?>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>课程表</title>
<style>
*{ padding:0; margin:0;}
html,body{ width:100%; height:100%; overflow:hidden; font:12px/22px arial,"Hiragino Sans GB","Microsoft Yahei",sans-serif; color:#4e4e4e; background:none;}
body{ background:url(img/coursebj.jpg) no-repeat;}
li{ list-style:none;}
a{ cursor:pointer;}
.courseBox{ background:#fff; width:608px; height:338px; margin:17px auto 0 auto; border-radius:5px; overflow:hidden; padding:12px 12px 0 12px;}
.course-top{ height:58px; overflow:hidden;}
.course-top li{ height:50px; background:#383838; float:left; position:relative; width:86.8571px; border-left:1px solid #232323; margin-left:-1px;}
.course-top li a{ display:block; height:50px; line-height:50px; font-size:16px; color:#fff; width:100%; text-align:center;}
.course-top li .cur,.course-top li a:hover{ position:absolute; border-bottom:8px solid #0072ae; background:#008dd8;}
.course-bottom{ padding-top:19px; height:334px; text-align:center;}
.cBox{ height:334px;}
.course-bottom ul{ display:table; width:608px; border-left:1px solid #e4e4e4; border-top:1px solid #e4e4e4;}
.course-bottom li{ border-right:1px solid #e4e4e4; border-bottom:1px solid #e4e4e4; height:85px; font-size:13px; line-height: 26px; float: left; width:151px;}
.course-bottom .time{ height:36px; line-height:36px; font-weight:400; background:#f1f1f1; margin-bottom:11px; font-size:16px;}
.NoCourse{ height:330px; text-align:center; line-height:260px; font-size:18px;}
</style>
</head>
<body>
<div class="courseBox">
	<div class="course-top">
		<ul>
			<li class="weekDay1" style="width: 86.8571px;"><a class="">星期一</a></li>
			<li class="weekDay2" style="width: 86.8571px;"><a class="">星期二</a></li>
			<li class="weekDay3" style="width: 86.8571px;"><a class="">星期三</a></li>
			<li class="weekDay4" style="width: 86.8571px;"><a class="">星期四</a></li>
			<li class="weekDay5" style="width: 86.8571px;"><a class="">星期五</a></li>		
			<li class="weekDay6" style="width: 86.8571px;"><a class="">星期六</a></li>
			<li class="weekDay7" style="width: 86.8571px;"><a class="">星期日</a></li>
			
		</ul>
	</div>
	<div class="course-bottom">
    
	 <div class="cBox" style="display: none;">
                <ul>
                <!--周一-->
                <?php
					echo course_list(1, '
    					 <li>
                            <div class="time">{times}</div>
                            <div onMouseOver="_TextTips(this,\'{teacher}\',\'{info}\')">{teacher}</div>
                        </li>') ?>
                </ul>							
            </div>
            <div class="cBox" style="display: none;">
                <ul>
                <!--周二-->
                <?php
					echo course_list(2, '
    					 <li>
                            <div class="time">{times}</div>
                            <div onMouseOver="_TextTips(this,\'{teacher}\',\'{info}\')">{teacher}</div>
                        </li>') ?>
                                  </ul>							
            </div>
            <div class="cBox" style="display: none;">
                <ul>
                <!--周三-->
                <?php
					echo course_list(3, '
    					 <li>
                            <div class="time">{times}</div>
                            <div onMouseOver="_TextTips(this,\'{teacher}\',\'{info}\')">{teacher}</div>
                        </li>') ?>
                                  </ul>							
            </div>
            <div class="cBox" style="display: none;">
                <ul>
                 <!--周四-->
                <?php
					echo course_list(4, '
    					 <li>
                            <div class="time">{times}</div>
                            <div onMouseOver="_TextTips(this,\'{teacher}\',\'{info}\')">{teacher}</div>
                        </li>') ?>
                                  </ul>							
            </div>
            <div class="cBox" style="display: none;">
                <ul>
                 <!--周五-->
                <?php
					echo course_list(5, '
    					 <li>
                            <div class="time">{times}</div>
                            <div onMouseOver="_TextTips(this,\'{teacher}\',\'{info}\')">{teacher}</div>
                        </li>') ?>
                                  </ul>							
            </div>
           <div class="cBox" style="display: none;">
                <ul>
                 <!--周六-->
                <?php
					echo course_list(6, '
    					 <li>
                            <div class="time">{times}</div>
                            <div onMouseOver="_TextTips(this,\'{teacher}\',\'{info}\')">{teacher}</div>
                        </li>') ?>
                                  </ul>							
            </div>
            <div class="cBox" style="display: none;">
                <ul>
                <!--周日-->
                <?php
					echo course_list(7, '
    					 <li>
                            <div class="time">{times}</div>
                            <div onMouseOver="_TextTips(this,\'{teacher}\',\'{info}\')">{teacher}</div>
                        </li>') ?>

                                  </ul>							
            </div>


		
	</div>
</div>
<script src="../script/jquery.min.js"></script>
<script src="../script/layer.js"></script>
<script>
var _topWidth = $(".course-top").width() / $(".course-top li").length;
$(".course-top li").width(_topWidth);

$(".course-top li").click(function(){
	var i = $(this).index();
	$(this).find("a").addClass("cur").parent().siblings().find("a").removeClass("cur");;
	$(".course-bottom").find(".cBox").eq(i).show().siblings().hide();	
});
$(function(){
	var week = new Date().getDay(); 
if(week==0){week=7;}
	var weekDay = week;
	if($('.weekDay'+weekDay).length >0 ){
		$('.weekDay'+weekDay).click();
	}
})

function _TextTips(e, theme, analy){
	
	layer.tips(analy, e, {
		time:'3000',
		tips: [1, '#109ce6'] 
	});
};

</script>




</body></html>
