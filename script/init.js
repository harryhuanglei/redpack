
function getId(id)
{
	return document.getElementById(id);
}
//格式化时间
function Datetime(tag)
{
	return new Date().toTimeString().split(' ')[tag];
}
//字体
function getXY(obj)
{
var a = new Array();
var t = obj.offsetTop;
var l = obj.offsetLeft;
var w = obj.offsetWidth;
var h = obj.offsetHeight;
while(obj=obj.offsetParent)
{ t+=obj.offsetTop; l+=obj.offsetLeft; }
a[0] = t; a[1] = l; a[2] = w; a[3] = h; return a;
}
//消息提示框
//Msg内容、ioc显示图标、tit标题、type弹出类型
function alertMsg(msg,ioc,tit,type){
layer.alert(msg, {
				shadeClose: true,
				icon: ioc,
				shift: type,
				title: tit,
				skin: 'layer-ext-seaning'
			});
}
function alertMsglogin(msg,ioc,tit,type){
var login = layer.alert(msg, {
				shadeClose: true,
				icon: ioc,
				shift: type,
				title: tit,
				skin: 'layer-ext-seaning'
			},function(){
				layer.close(login);
				openWin(2,false,'minilogin1.php',390,310);
				});
}
function msgMsg(msg,ioc,tit,type){
layer.msg(msg, {
				shadeClose: true,
				icon: ioc,
				shift: type,
				title: tit,
				skin: 'layer-ext-seaning'
			});
}
//刷新
function showLive(){

	$('#OnLine_MV').html($('#OnLine_MV').html());
}
//放大
function Venlarge(){
	$('#OnLine_MV').width($('#OnLine_MV').width()+50);
	$('#UI_Right').width($('#UI_Right').width()+50);
	$('#OnLine_MV').height($('#OnLine_MV').height()+50);
	$(".lts_new2").width($('#OnLine_MV').width());
}
//缩小
function Vnarrow(){
	$('#OnLine_MV').width($('#OnLine_MV').width()-50);
	$('#UI_Right').width($('#UI_Right').width()-50);
	$('#OnLine_MV').height($('#OnLine_MV').height()-50);
}
//打开送鲜花
function flowersshow(e){
	var offset = $(e).offset();
	var t = offset.top;
	var l = offset.left;
	$('.flower').css( {"top" : t-$('.flower').outerHeight()+70, "left":l-$('.flower').outerWidth()});
	$(".flower").fadeIn(100);
	}
//关闭送鲜花
function flowershide(){
	$(".flower").fadeOut(100);
	}
//定时鲜花
function flowertime(){
	if(RoomInfo.flowernum == 0){return false;}
	if(My.color == 17){return false;}
	var gift_num = $("#gift_num").html();
	if(gift_num>=10){return false;}
	$.ajax({type: 'get',async: true,url: '../ajax.php?act=addflower',success: function(data){
			if(data==1){
			//var gift_num = $("#gift_num").html();
			gift_num++;
			$("#gift_num").html(gift_num);}
			
		}});
	}
	//大宝剑
function acertime(){
	if(RoomInfo.acernum == 0){return false;}
	if(My.color == 17){return false;}
	var yb_num = $("#yb_num").html();
	if(yb_num>=10){return false;}
	$.ajax({type: 'get',async: true,url: '../ajax.php?act=addacer',success: function(data){
			if(data==1){
			yb_num++;
			$("#yb_num").html(yb_num);}
			
		}});
	}
	//定时飞吻
function kisstime(){
	if(RoomInfo.kissnum == 0){return false;}
	if(My.color == 17){return false;}
	var kiss_num = $("#kiss_num").html();
	if(kiss_num>=10){return false;}
	$.ajax({type: 'get',async: true,url: '../ajax.php?act=addkiss',success: function(data){
			if(data==1){
			kiss_num++;
			$("#kiss_num").html(kiss_num);}
			
		}});
	}
//显示鲜花
function giftshow(title,type){
	$(".giftf").hide();
	$(".giftf").show(500);
	if(type=="1"){$(".giftf").find("img").attr("src","images/flower_f.gif");}
	if(type=="2"){$(".giftf").find("img").attr("src","images/bj.gif");}
	if(type=="3"){$(".giftf").find("img").attr("src","images/girls.gif");}
	$("#gifttit").text(title);
	setTimeout(gifthide,"8000");
	}
function gifthide(){
	$(".giftf").hide(500);
	}
//点播
function on_live(){
	$('.videolist').width($("#OnLine_MV").width());
	$('.videolist').slideDown('fast');
	}
function switchVideo(e){
	var videolist = $(e).attr("rel");
	$.get("../ajax.php?act=videocode&videoid="+videolist,function(data){
		$("#OnLine_MV").html(data);	
		$('.videolist').slideUp('fast');
		});
	}
//回直播
function loadVideo(){
	$('#OnLine_MV').html('<iframe height="100%" width="100%" allowTransparency="true" marginwidth="0" marginheight="0"  frameborder="0" scrolling="no" src="player.php?type=pc&rid='+My.rid+'"></iframe>');
	}
//连接服务器
var ws;
var page_fire;

//连接websocket服务器
function connect() {
       ws=new WebSocket("ws://"+RoomInfo.TServer+":"+RoomInfo.TSPort);
       ws.onopen = onopen;
       ws.onmessage = onmessage; 
       ws.onclose = function() {
    	  console.log("连接关闭，定时重连");
		  setTimeout('location.reload()',3000);
          //connect();
       };
       ws.onerror = function() {
     	  console.log("出现错误");
		  setTimeout('location.reload()',3000);
		  //connect();
       };
    }
	    // 连接建立时发送登录信息
    function onopen()
    {
		$('#Msg').html("");
        var login_data = '{"type":"login","client_name":"'+My.nick.replace(/"/g, '\\"')+'","room_id":"'+My.roomid+'","chatid":"'+My.chatid+'","sex":"'+My.sex+'","age":"'+My.age+'","qx":"'+My.qx+'","ip":"'+My.ip+'","vip":"'+My.vip+'","color":"'+My.color+'","cam":"'+My.cam+'","state":"'+My.state+'","mood":"'+My.mood+'"}';
        //console.log("websocket握手成功，发送登录数据:"+login_data);
        ws.send(login_data);
		if(typeof(UserList)!='undefined'){
		UserList.init();
		}
    }
function OnInit()
{
	$.ajaxSetup({ contentType: "application/x-www-form-urlencoded; charset=utf-8"});
	setInterval(flowertime,RoomInfo.flowernum*60*1000);
	setInterval(acertime,RoomInfo.acernum*60*1000);
	setInterval(kisstime,RoomInfo.kissnum*60*1000);
	$("body").click(function() { MsgCAlert();});
	MsgAutoScroll();
	$("#ykhade").show();
	$("#ykhade").attr('src',grouparr[My.color].ico);
	if(RoomInfo.rebots_re!=0){
	setInterval(Robottime,RoomInfo.rebots_re*60*1000);
	}
	//权限
	if(check_auth("rebots_msg"))$('#chat_type').show();
	if(check_auth("def_videosrc"))$('#bt_defvideosrc').show();
	if(check_auth("set_font"))$('#bt_myimage').show();
	$("#OnLine_MV").Resize();
    connect();
	//5分钟提示登录
	if(RoomInfo.loginTip=='1'&&My.chatid.indexOf('x')>-1)
	{
		if (RoomInfo.showLoginWindowInterval > 0) {
			setInterval("loginTip()",1000*60*RoomInfo.showLoginWindowInterval);
		} else {
			setInterval("loginTip()",1000*60*5);
		}
	}
	$('#Msg').html("连接中...");
	if(My.chatid.indexOf('x')>-1){
	var first_access_time = parseInt(getCookie("first_access_time"))+RoomInfo.tiyantime*60;
	var yktotime = ftime2(first_access_time);
	}else{
	$(".videoTime").hide();
		}
	countDown(yktotime,"#colockbox");
	window.moveTo(0,0);
	window.resizeTo(screen.availWidth,screen.availHeight);
	OnResize();
	//加载视频
	$.get("player.php?type=pc&rid="+My.rid,function(data){
	$('#OnLine_MV').html(data);
	 if(My.chatid.indexOf('x')>-1 && RoomInfo.tiyantime>0){
		 access_time();
		 }
			});
	interfaceInit();
	POPChat.Init();
	ToUser.set('ALL','大家');
	dragMsgWinx(getId('drag_bar'));
	$('#MsgBox1').niceScroll({cursorcolor:"#FFF",cursorwidth:"2px",cursorborder:"0px;",mousescrollstep:"20"});
	$('#MsgBox2').niceScroll({cursorcolor:"#FFF",cursorwidth:"2px",cursorborder:"0px;"});
	$('#OnLineUser_FindList').niceScroll({cursorcolor:"#FFF",cursorwidth:"2px",cursorborder:"0px;"});
	$('#OnLineUser_OhterList').niceScroll({cursorcolor:"#FFF",cursorwidth:"2px",cursorborder:"0px;"});
	$('#OnLineUser').niceScroll({cursorcolor:"#FFF",cursorwidth:"2px",cursorborder:"0px;"});
	$('#NoticeList').niceScroll({cursorcolor:"#FFF",cursorwidth:"2px",cursorborder:"0px;"});
	$("#Msg").keydown(function(e){if(e.keyCode==13){ToUser.set($("#ToUser").attr("data-id"),$("#ToUser").html());SysSend.msg();HideMenu();MsgCAlert();return false}});
	$("#Send_bt").on("click",function(){ToUser.set($("#ToUser").attr("data-id"),$("#ToUser").html());HideMenu();MsgCAlert();SysSend.msg();});
	$("#Tochatclose").on("click",function(){ToUser.del();});
	initFaceColobar();
	//setTimeout(initFaceColobar, 10000);
	//openWin(1,false,$("#tip_login_win").html(),800,350);
        //游客直播体验时间是否结束
        if(My.chatid.indexOf('x')>-1 && RoomInfo.tiyantime>0){
   		 setInterval("access_time()",1000*60*1);
        }
}
function OnResize(){

	var cw=$(window).width();
	var vw=cw-950;
	if(cw>1600){
	var mvheight = $(window).height()*0.57;
	$('#OnLine_MV').css("height", mvheight);
	$('#UI_Right').css("width","45%")
	}else if(cw>1400){
	var mvheight = $(window).height()*0.55;
	$('#OnLine_MV').css("height", mvheight);
	$('#UI_Right').css("width","41%")
	}else{
	var mvheight = $(window).height()*0.50;
	$('#OnLine_MV').css("height", mvheight);
		}
	var cH=$(window).height()-10;
	$('#UI_MainBox').height(cH);
	$('#MsgBox1').height($('#MsgBox1').height()+cH-$('#UI_Central').height()-$('#UI_Head').height());

	$('#OnLineUser').height($('#OnLineUser').height()+$('#UI_Central').height()-$('#UI_Left2').height());
	$('#UI_Left1').height($('#UI_Left2').height());
	$('#NoticeList').height(cH-$('#OnLine_MV').height()-121);
	$("#OnLineUser_OhterList").height($('#OnLineUser').height());
	$("#OnLineUser_FindList").height($('#OnLineUser').height());
	$(".lts_new2").height($('#NoticeList').height()-5);
	$(".lts_new2").width($('#NoticeList').width());
}
//倒计时
function countDown(time,id){
 var day_elem=$(id).find('.day');
 var hour_elem=$(id).find('.hour');
 var minute_elem=$(id).find('.minute');
 var second_elem=$(id).find('.second');
 var end_time = new Date(time).getTime();
 var sys_second = (end_time-new Date().getTime())/1000;
 var timer = setInterval(function(){
  if(sys_second>1) {
   sys_second-=1;
   var day=Math.floor((sys_second/3600)/24);
   var hour=Math.floor((sys_second/3600)%24);
   var minute=Math.floor((sys_second/60)%60);
   var second=Math.floor(sys_second%60);
   if (day > 99) {
                day = 99;
            }
   $(day_elem).text(day);
   $(day_elem).text(day < 10 ? "0" + day : day);//计算天
   $(hour_elem).text(hour<10?"0"+hour:hour);
   $(minute_elem).text(minute<10?"0"+minute:minute);
   $(second_elem).text(second<10?"0"+second:second);
  }
  else {
   clearInterval(timer);
  }
 }, 1000);
}
function tCam(tag)
{
	My.cam=tag;
}
function tCamState(tag)
{
	My.camState=tag;
	//alert(tag);
}
function CloseColorPicker()
{
	getId('ColorTable').style.display='none'
}


function ck_Font(e,act)
{
	if(e!=null)
	{
	e.value=='true'?e.value='false':e.value='true';
	}
	switch(act)
	{
		case 'FontBold':
			if(e.value=='true'){
				getId('Msg').style.fontWeight='bold';
				$.cookie('FontBold','bold', {expires: 365});
			}
			else {
				getId('Msg').style.fontWeight='';
				$.removeCookie('FontBold');
			}
		break;
		case "FontItalic":
			if(e.value=='true'){
				getId('Msg').style.fontStyle='italic';
				$.cookie('FontItalic','italic', {expires: 365});
			}
			else {
				getId('Msg').style.fontStyle='';
				$.removeCookie('FontItalic');
			}
		break;
		case 'Fontunderline':
			if(e.value=='true'){
				getId('Msg').style.textDecoration='underline';
				$.cookie('Fontunderline','underline', {expires: 365});
			}
			else {
				getId('Msg').style.textDecoration='';
				$.removeCookie('Fontunderline');
			}
		break;
		case 'FontColor':
			getId('Msg').style.color=getId('ColorShow').style.backgroundColor;
			$.cookie('FontColor',getId('ColorShow').style.backgroundColor, {expires: 365});
		break;
		case 'ShowColorPicker':
			bt_ColorPicker();
		break;
	}
}
function ColorPicker()
{
  	  var baseColor=new Array(6);
      baseColor[0]="00";
      baseColor[1]="33";
      baseColor[2]="66";
      baseColor[3]="99";
      baseColor[4]="CC";
      baseColor[5]="FF";
      var   myColor;
      myColor="";
      var   myHTML="";
      myHTML=myHTML+"<div style='WIDTH:180px;HEIGHT:120px;' onclick='ck_Font(null,\"FontColor\");CloseColorPicker()'>";
      for(i=0;i<6;i++)
      {
              for(j=0;j<3;j++)
                {     for(k=0;k<6;k++)
                      {
                          myColor=baseColor[j]+baseColor[k]+baseColor[i];
                          myHTML=myHTML+"<li data="+myColor+" onmousemove=\"document.getElementById('ColorShow').style.backgroundColor=this.style.backgroundColor\" style='background-color:#"+myColor+"'></li>";
                      }
                    }

      }
      for(i=0;i<6;i++)
      {
              for(j=3;j<6;j++)
                {   for(k=0;k<6;k++)
                      {
                          myColor=baseColor[j]+baseColor[k]+baseColor[i];//get   Color
                          myHTML=myHTML+"<li data="+myColor+" onmousemove=\"document.getElementById('ColorShow').style.backgroundColor=this.style.backgroundColor\" style='background-color:#"+myColor+"'></li>";
                      }
                  }
      }

      myHTML=myHTML+"</div><div style='border:0px; width:180px; height:10px; background:#333333' id='ColorShow'></div>";
      document.getElementById("ColorTable").innerHTML=myHTML;
}
var ColorInit=false;
function bt_ColorPicker()
{
	var t=getXY(getId('FontColor'));
	getId('ColorTable').style.top=t[0]-145+'px';
	getId('ColorTable').style.left=t[1]+1+'px';
	if(!ColorInit)
	{
	ColorPicker();
	ColorInit=true;
	}
	getId('ColorTable').style.display='';
	getId('ColorTable').focus();
	return true;

}

function bt_Personal(e)
{
	if(e.value=='false')
	{
		e.value='true';
		e.src="images/Personal_true.gif";
		e.title='私聊中...[公聊/私聊]';
	}
	else
	{
		e.value='false';
		e.src="images/Personal_false.gif";
		e.title='公聊中...[公聊/私聊]';
	}
}
function bt_FontBar(e)
{
	if(getId('FontBar').style.display=='none')
	{
		var t=getXY(getId('UI_Control'));
		getId('FontBar').style.display='';
		getId('FontBar').style.top=t[0]-29+'px';
		getId('FontBar').style.left=isIE?t[1]+1:t[1]+'px';
		getId('FontBar').style.width=t[2]-8+'px';
	}
	else
	{
		getId('FontBar').style.display='none';
	}
}
function bt_Send_key_option(e)
{
	var t=getXY(e);
	getId('Send_key_option').style.top=t[0]-50+'px';
	getId('Send_key_option').style.left=t[1]+2-165+'px';
	getId('Send_key_option').style.display='';
	getId('Send_key_option').focus();
}



function InsertImg(id,src,imagewidth,imageheight){

var msgwidth=$('#UI_Central').width();
var msgheight=$('#UI_Central').height();
var msgimgwidth='';
if(imagewidth<50){

  msgimgwidth= imagewidth;
}else{

   msgimgwidth=50;
}
 var str='<img src=\"'+src+'\"  onclick="open_img(\''+src+'\')" style="height:'+msgimgwidth+'px; cursor:pointer;" alt="点击看大图" title="点击看大图"/>';


$(id).append(str);

}
$.fn.extend({
				Resize: function() {
				var currentDisTance = 2000;
				var resizeMode = 0;
				var isResize=false;
				var isStartResize=false;
				$(this).mousemove(function(e) {
					var currentDisX = e.pageX - $(this).offset().left;
					var currentDisY = e.pageY - $(this).offset().top;
					if ($(this).width() - currentDisX < currentDisTance && ($(this).height() - currentDisY) < currentDisTance) {
						$(this).css("cursor", "nw-resize");
					
					} else if ($(this).width() - currentDisX < currentDisTance) {
						$(this).css("cursor", "e-resize");
						
					} else if ($(this).height() - currentDisY < currentDisTance) {
						$(this).css("cursor", "n-resize");
					
					} else {
						if(isStartResize==true)return;
						$(this).css("cursor", "default");
					}
				});
				$(this).mousedown(function(e) {
					isResize=true;
					var currentDisX = e.pageX - $(this).offset().left;
					var currentDisY = e.pageY - $(this).offset().top;
					if ($(this).width() - currentDisX < currentDisTance && ($(this).height() - currentDisY) < currentDisTance) {
						$(this).css("cursor", "nw-resize");
						$(this).attr("mode", "re");
						resizeMode = 0;
					} else if ($(this).width() - currentDisX < currentDisTance ) {
						$(this).css("cursor", "e-resize");
						$(this).attr("mode", "re");
						resizeMode = 1;
					} else if ($(this).height() - currentDisY < currentDisTance) {
						$(this).css("cursor", "n-resize");
						$(this).attr("mode", "re");
						resizeMode = 2;
					} else {
						if(isStartResize==true)return;
						$(this).css("cursor", "default");
						$(this).attr("mode", "me");
					}
					var currentTarget = $(this);
					var offsetWidth=$(this).width()-$(currentTarget).offset().left;
				    var offsetHeight=$(this).height()-$(currentTarget).offset().top;
					$(document).mousemove(function(event) {
						if ($(currentTarget).attr("mode") == "me"||isResize==false) return;
						isStartResize=true;
						var currentX = event.clientX;
						var currentY = event.clientY;
						var cursorX = event.pageX - currentDisX; //+$(this).offset().left;
						var cursorY = event.pageY - currentDisY; //-$(this).offset().top;
						if (resizeMode == 0){
					     $(currentTarget).css("height", cursorY+offsetHeight + "px").css("width", cursorX+offsetWidth + "px");
						 $('#UI_Right').width(cursorX+offsetWidth);
						 $(".lts_new2").width($('#OnLine_MV').width());
						}
						else if (resizeMode == 1) {
							$(currentTarget).css("width", cursorX+offsetWidth + "px");
							$('#UI_Right').width(cursorX+offsetWidth);
							$(".lts_new2").width($('#OnLine_MV').width());
						}
						else {
							$(currentTarget).css("height", cursorY+offsetHeight + "px");
						}
					});
				});
				$(document).mouseup(function() {
						isResize=false;
						isStartResize=false;
			});
		}
	});
function bt_insertImg(id)
{
	if(!check_auth("send_img")){layer.msg('您没有权限发送图片',{shift: 6}); return false;}
	$('#imgUptag').val(id);
	$('#filedata').click();
}
function bt_gifts(e){
	openWithIframe('送礼物','../glist_room.php',300,405,'',true)
}
function bt_MsgClear(){
	getId('MsgBox1').innerHTML = '';
	getId('MsgBox2').innerHTML = '';
}
function bt_SendEmote(obj){
	getId('Msg').innerHTML=obj.innerHTML;SysSend.msg();
	getId('Emote').style.display='none';
}
function bt_SwitchListTab(tag){

	if(tag=='User'){
		$("#OnLineUser_OhterList").hide();
		$("#OnLineUser_FindList").hide();
		$("#OnLineUser").show();
		$("#listTab1")[0].className='bg_png2';
		$("#listTab2")[0].className='';
	}
	else if(tag=="Other"){
		$("#OnLineUser_OhterList").show();
		$("#OnLineUser_FindList").hide();
		$("#OnLineUser").hide();
		$("#listTab1")[0].className='';
		$("#listTab2")[0].className='bg_png2';
		UserList.getmylist(My.name);
	}
}
var msgAuditonoff = true;
function admin_msgAudit(rid){
		if($("#admin_msgAudit").attr("select")=="true"){
		$("#admin_msgAudit").attr("select","false");
		msgAuditonoff = false;
		SysSend.command('msgAudit_on','');
		$.ajax({type: 'get',async: true,url: '../ajax.php?act=msgAuditonoff&s=1&rid='+rid});
		$("#admin_msgAudit").text("关闭发言审核");
	}
	else{
		$("#admin_msgAudit").attr("select","true");
		msgAuditonoff = true;
		SysSend.command('msgAudit_off','');
		$.ajax({type: 'get',async: true,url: '../ajax.php?act=msgAuditonoff&s=0&rid='+rid});
		$("#admin_msgAudit").text("开启发言审核");
		}
}
function admin_show(){
		var offset = $('#admin_tool').offset();
		var t = offset.top;
		var l = offset.left;
		$('.admin_show').css( {"top" : t-$('.admin_show').outerHeight(), "left":l});
		$('.admin_show').fadeIn(100);	
		$(document).bind('mouseup',function(e){
				var target = $(e.target); 
				if(target.closest('.admin_show').length == 0)
				{
					$('.admin_show').hide();
				}
	});
}
function Robottime(){
		var ListTab = $("li[id^=x_]");
        var intLength = 0;
        for (var i = 0; i < ListTab.size(); i++) {
        intLength = $(ListTab.get(i)).attr("id");           
		UserList.robotdel(intLength);}
		var request_url='../ajax.php?act=getrlist&rid='+My.rid+'&r0='+RoomInfo.r0+'&'+Math.random() * 10000;
        $.ajax({url: request_url,
        type: "GET",
        success: function(data) {
		WriteMessage2(data);
				 }
                     });
		
	}
var RobotHideonoff = true;
function RobotHide(){
		if($("#RobotHide").attr("select")=="true"){
		$("#RobotHide").attr("select","false");
		RobotHideonoff = false;
		var ListTab = $("li[id^=x_]");
        var intLength = 0;
        for (var i = 0; i < ListTab.size(); i++) {
        intLength = $(ListTab.get(i)).attr("id");           
		UserList.robotdel(intLength);
			}
		$("#RobotHide").text("显示假人(仅自己)");
				}
		else {
		$("#RobotHide").attr("select","true");
		RobotHideonoff = true;
		var request_url='../ajax.php?act=getrlist&rid='+My.rid+'&r0='+RoomInfo.r0+'&'+Math.random() * 10000;
        $.ajax({url: request_url,
        type: "GET",
        success: function(data) {
		WriteMessage2(data);
				 }
                     });
		$("#RobotHide").text("隐藏假人(仅自己)");
						}
	}
function RobotShow(){
		var request_url='../ajax.php?act=getrlist&rid='+My.rid+'&r0='+RoomInfo.r0+'&'+Math.random() * 10000;
           	$.ajax({url: request_url,
            type: "GET",
            success: function(data) {
			WriteMessage2(data);
				 }
                     });
}
function admin_hide(){
		$('.admin_show').fadeOut(100);
}
//红包
function redbagsmain(){
	$("#redbagsbgmain").fadeIn(200);
	}
function redbagsbcloes(){
	$("#redbagsbgmain").fadeOut(200);
	}
function redbag_infocloes(){
	$("#redbag_info").fadeOut(200);
	}
function bt_defvideosrc(){
	if(check_auth('def_videosrc')){
		SysSend.command('setVideoSrc',My.chatid+'_+_'+My.nick);
		$.ajax({type: 'get',url: '../ajax.php?act=setdefvideosrc&vid='+encodeURIComponent(My.chatid)+'&nick='+encodeURIComponent(My.nick)+'&rid='+My.rid});
	}
}
function bt_msgBlock(id){
		if(check_auth('msg_block'))
		SysSend.command('msgBlock',id);
		$.ajax({type: 'get',async: true,url: '../ajax.php?act=msgblock&s=1&msgid='+id});
}
function bt_msgAudit(id,a){
		if(check_auth('msg_audit'))
		SysSend.command('msgAudit',id);
		$.ajax({type: 'get',async: true,url: '../ajax.php?act=msgblock&s=0&msgid='+id});
}
function bt_FindUser(){
	getId("OnLineUser_OhterList").style.display="none";
	var username=getId('finduser').value;
	getId("OnLineUser_FindList").style.display="none";
	getId("OnLineUser").style.display="";
	//alert(username);
	if(username==""){
		getId("OnLineUser_FindList").style.display="none";

		getId("OnLineUser").style.display="";
	}
	else{
		getId("OnLineUser_FindList").style.display="";
		getId("OnLineUser_FindList").innerHTML="";
		getId("OnLineUser_FindList").style.height=getId("OnLineUser").offsetHeight +'px';
		getId("OnLineUser").style.display="none";

		var ulist=UserList.List();
		var li="";
		for(c in ulist){
			if(ulist[c].nick.toLowerCase().indexOf(username.toLowerCase())>=0){
				//alert(ulist[c].nick);
				li=getId(ulist[c].chatid);
				var t_li=CreateElm(getId("OnLineUser_FindList"),'li',false,'fn'+ulist[c].chatid);
				t_li.innerHTML=li.innerHTML;
				t_li.oncontextmenu=li.oncontextmenu;
				t_li.onclick=li.onclick;
				t_li.ondblclick=li.ondblclick;
			}
		}
	}
}
var fenping = true;

function bt_fenping(){
	if(fenping == true) {
      fenping = false;
      //getId('btfp').src = 'images/FP_true.gif';
	  getId('drag_bar').style.display="";
	  getId('MsgBox2').style.display="";
	  getId('MsgBox2').style.height=100+'px';
	  getId('MsgBox1').style.height=getId('MsgBox1').offsetHeight-100-getId('drag_bar').offsetHeight+"px";
   } else {
      fenping = true;
      //getId('btfp').src = 'images/FP_false.gif';
	  getId('MsgBox1').style.height=getId('MsgBox').offsetHeight+"px";
	  getId('drag_bar').style.display="none";
	  getId('MsgBox2').style.display="none";

   }
   MsgAutoScroll();
}
var audioNotify=true;
function bt_toggleAudio() {
   if(audioNotify == true) {
      audioNotify = false;
      getId('toggleaudio').src = 'images/Sc.gif';
   } else {
      audioNotify = true;
      getId('toggleaudio').src = 'images/So.gif';
   }
}
var toggleScroll = true;
function bt_toggleScroll()
{
	if($("#bt_gundong").attr("select")=="true"){
		$("#bt_gundong").attr("select","false");
		toggleScroll = false;
		$('.scroll').addClass("noscroll");
	}
	else {
		$("#bt_gundong").attr("select","true");
		toggleScroll = true;
		$('.scroll').removeClass('noscroll');
	}
}

function open_img(src){

	layer.open({
	    type: 1,
	    title: false,
	    move: '.layui-layer-content',
	    moveOut: true,
	  	area: [ 'auto',  'auto'],
	 	offset: '20px',
		skin: 'layui-layer-rim', //加上边框
	    shadeClose: true,
	    content:'<div class="tcontent"><img src="'+src+'" /></div>'
	});
}

/*轮播广告*/
function getByClass(oParent,name)
{
	var aClass = oParent.getElementsByTagName('*');
	var arlt = [];
	for(var i=0; i<aClass.length; i++)
	{
		if(aClass[i].className==name)
		{
			arlt.push(aClass[i]);
		}
	}
	return arlt;
}

function getStyle(obj,name)
{
	if(obj.currentStyle)
	{
		return obj.currentStyle[name]
	}
	else
	{
		return getComputedStyle(obj,false)[name]
	}
}

function startMove(obj,styleName,iTarget)
{
	clearInterval(obj.timer)
	obj.timer = setInterval(function(){
          var now = 0;
		  if(styleName=='opacity')
		  {
			  now = Math.round((parseFloat(getStyle(obj,styleName))*100));
		  }
		  else
		  {
			  now = parseInt(getStyle(obj,styleName));
		  }
		  var speed = (iTarget-now)/6;
		  speed = speed>0?Math.ceil(speed):Math.floor(speed);
		  if(now == iTarget)
		  {
			  clearInterval(obj.timer)
		  }
		  else
		  {
			  if(styleName=='opacity')
			  {
				  obj.style.opacity = (now+speed)/100;
				  obj.style.filter = 'alpha(opacity='+(now+speed)+')'
			  }
			  else
			  {
				  obj.style[styleName] = now+speed+'px';
			  }
		  }
	},30)
}
/*轮播END*/	
//字体cookies
// 获取cookie 并赋值
		$(function () {
			if ($.cookie('fontFamily')) {
				getId('Msg').style.fontFamily = $.cookie('fontFamily');
				$('#FontName').find('option').each(function () {
					if ($(this).val() == $.cookie('fontFamily')) {
						$(this).attr('selected', 'selected');
						$(this).siblings().removeAttr('selected');
					}
				});
			}
			if ($.cookie('FontSize')) {
				getId('Msg').style.fontSize = $.cookie('FontSize') + 'pt';
				$('#FontSize').find('option').each(function () {
					if ($(this).val() == $.cookie('FontSize')) {
						$(this).attr('selected', 'selected');
						$(this).siblings().removeAttr('selected');
					}
				});
			}
			if ($.cookie('FontBold')) {
				getId('Msg').style.fontWeight = $.cookie('FontBold');
				$('#FontBar').find('input[title="粗体"]').val(true).removeClass('bt_false').addClass('bt_true');
			}
			if ($.cookie('FontColor')) {
				getId('Msg').style.color = $.cookie('FontColor');
			}
			if ($.cookie('FontItalic')) {
				getId('Msg').style.fontStyle = $.cookie('FontItalic');
				$('#FontBar').find('input[title="斜体"]').val(true).removeClass('bt_false').addClass('bt_true');
			}
			if ($.cookie('Fontunderline')) {
				getId('Msg').style.textDecoration = $.cookie('Fontunderline');
				$('#FontBar').find('input[title="下划线"]').val(true).removeClass('bt_false').addClass('bt_true');
			}
			//字体end
			//红包更新
			$("#rendbag_total").keyup(function(){
			$("#redbagsmoney").text("￥"+$("#rendbag_total").val());		   
			});
			$(".flower a").hover(function(){$(this).find("span").show(100)},function(){$(this).find("span").hide(100)});
			
		});