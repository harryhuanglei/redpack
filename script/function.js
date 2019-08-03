
function sleep(n)   
 {   
	var start=new Date().getTime();   
    while(true) if(new Date().getTime()-start> n) break;   
   		 }  
function thisMovie(movieName)
{
	if (navigator.appName.indexOf("Microsoft") != -1)
		return window[movieName];
	else
		return document[movieName];
}
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
		function ftime2(time) {
			return new Date(time * 1000).Format("yyyy/MM/dd hh:mm:ss");
			;
		}

var t=0;
function Auto()
{

	ws.send('SPing:');
}
function XHConn() {
    var xmlhttp;
    try {
        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
  	    try {
  		    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  	    } catch (e) {
  		    try {
  			    xmlhttp = new XMLHttpRequest();
  		    } catch (e) {
  			    xmlhttp = false;
  		    }
  	    }
    }

    return xmlhttp;
}
function   formatDate(now)   {   
 
          var   year=now.getYear();   
          var   month=now.getMonth()+1;   
          var   date=now.getDate();   
          var   hour=now.getHours();   
          var   minute=now.getMinutes();   
          var   second=now.getSeconds();   
		if(hour<10){
		hour='0'+hour;
		}
		if(minute<10){
		minute='0'+minute;
		}
		if(second<10){
		second='0'+second;
		}
          return   hour+":"+minute+":";   
}   
function interfaceInit()
{
//setInterval('Auto()',30000);
POPChat=(function(){
	var list=[];
	var user=null;
	var win=null;
	return{
		Init:function(){
			var html = '<div class="layim_chatbox" id="layim_chatbox">'
            +'<h6>'
            +'<span class="layim_move"></span>'
            +'    <a href="javascript:void(0)" class="layim_face" target="_blank"><img src="" ></a>'
            +'    <a href="javascript:void(0)" class="layim_names" target="_blank">聊天窗口</a>'
            +'    <a href="javascript:void(0)" class="layim_qq" target="_blank"></a>'
            +'    <span class="layim_rightbtn">'
            +'        <!--<i class="layer_setmin"></i>-->'
            +'        <i class="layim_close"></i>'
            +'    </span>'
            +'</h6>'
            +'<div class="layim_chatmore" id="layim_chatmore">'
            +'    <ul class="layim_chatlist"></ul>'
            +'</div>'
            +'<div class="layim_groups" id="layim_groups"></div>'
            +'<div class="layim_chat">'
            +'    <div class="layim_chatarea" id="layim_chatarea">'
            +'        <ul class="layim_chatview layim_chatthis"  id="layim_area"></ul>'
            +'    </div>'
            +'    <div class="layim_tool">'
            +'        <i class="layim_addface" title="发送表情" onclick="showFacePanel(this,\'#layim_write\');"onclick="showFacePanel(this,\'#layim_write\');"></i>'
            +'        <a href="javascript:;"><i class="layim_addimage" title="发送图片" onclick="bt_insertImg(\'#layim_write\')" ></i></a>'
            +'        <!--<a href="javascript:;"><i class="layim_addfile" title="上传附件"></i></a>-->'
            +'        <!--<a href="" target="_blank" class="layim_seechatlog"><i></i>聊天记录</a>-->'
            +'    </div>'
            +'    <div class="layim_write" id="layim_write" contentEditable="true" ></div>'
            +'    <div class="layim_send">'
            +'        <div class="layim_sendbtn" id="layim_sendbtn">发送<!--<span class="layim_enter" id="layim_enter"><em class="layim_zero"></em></span>--></div>'
            +'        <div class="layim_sendtype" id="layim_sendtype">'
            +'            <span><i>√</i>按Enter键发送</span>'
            +'            <span><i></i>按Ctrl+Enter键发送</span>'
            +'        </div>'
            +'    </div>'
            +'</div>'
            +'</div>';
        	layer.open({
            	type: 1,
        		shade: false,
        		area: ['620px', '493px'],
                move: '.layim_chatbox .layim_move',
                title: false,
        		closeBtn: false,
				shift: 5,
            	content: html,
        		success: function(layero){

    				win=layero;

                    $('.layim_close').on('click', function(){
    					layero.hide();
            		});

    				$('#openPOPChat').on('click', function(){
    					layero.show();
            		});

    				win.find('#layim_chatmore').on('click', 'li em', function(){
						user=null;
						$("#layim_user"+$(this).attr('data-id')).remove();
						$("#layim_area"+$(this).attr('data-id')).remove();
						var find_li=win.find('.layim_chatlist li');

						if(find_li.length>0){
							var li=find_li.first();
							POPChat.showtab({chatid:li.attr('data-id'),nick:li.attr('data-nick')});
						}
						return false;
            		});

    				win.find('#layim_chatmore').on('click', 'li', function(){
                		var othis = $(this);
               			POPChat.showtab({chatid:othis.attr('data-id'),nick:othis.attr('data-nick')});
            		});


    				win.find("#layim_sendbtn").on('click', function(){
                        if($('#layim_write').html() != ''){
                            POPChat.send();
                        }
                    });

    				win.find("#layim_write").keyup(function(e){

    					if(e.keyCode === 13 ){
                            if($('#layim_write').text() != ''){
    						    POPChat.send();
                            }
    						return false;
                        }
    				});
    				layero.hide();
                }
		    });
		},
		//私聊发送
		send:function(roe){
			if(user==null)return;
			var toUserInfo=UserList.get(user.chatid);
			if(typeof(toUserInfo)=="undefined"||user.chatid.indexOf('x_r')>-1){alert('用户离线');return;}
			var msg=encodeURIComponent($("#layim_write").html().str_replace().replace("<br>",""));
            if(decodeURIComponent(msg) == '含敏感关键字，内容被屏蔽'){
                layer.msg('含敏感关键字，内容被屏蔽');
                win.find("#layim_write").html("");
                return;
            }
            var str = '';
            if(roe == 'yes'){
			    var str='{"type":"Msgsay","ToUser":"'+user.chatid+'","Personal":"true","Style":"color:#000","Msg":"进入直播室"}';
                ws.send(str);
                win.find("#layim_write").html("");
                win.find("#layim_write").focus();
                return;
            }else{
			   var str='{"type":"Msgsay","ToUser":"'+user.chatid+'","Personal":"true","Style":"color:#000","Msg":"'+msg+'"}';
            }
	        ws.send(str);
			PutMessage(My.rid,My.chatid,toUserInfo.chatid,My.nick,toUserInfo.nick,'true','',msg,'');

			win.find("#layim_write").html("");
			win.find("#layim_write").focus();
			MsgCAlert();
		},
		newtab:function(u){
			var layim_chatmore = win.find('#layim_chatmore');
        	var layim_chatarea = win.find('#layim_chatarea');

			if(win.find('#layim_user'+u.chatid).length<1){
				layim_chatmore.find('ul>li').removeClass('layim_chatnow');
       			layim_chatmore.find('ul').append('<li data-qq="" data-id="'+ u.chatid +'" data-nick="'+u.nick+'" id="layim_user' +u.chatid +'" class="layim_chatnow"><span><b class="layim_msgnum">0</b>'+ u.nick +'</span><em  data-id="'+ u.chatid +'">×</em></li>');
				layim_chatarea.find('.layim_chatview').removeClass('layim_chatthis');
        		layim_chatarea.append('<ul class="layim_chatview layim_chatthis" id="layim_area'+ u.chatid +'"></ul>');

				$.ajax({type:'GET',dataType:'JSON',url:'../ajax.php?act=mymsgold&tuid='+u.chatid,
				success:function(data){
					$("#layim_area"+ data.tuid).prepend(data.msg);
					win.find('#layim_area'+ data.tuid).scrollTop(win.find('#layim_area'+ data.tuid)[0].scrollHeight);

					$("#layim_user"+data.tuid).attr('data-qq',data.realname);
					win.find('.layim_qq').html("<span><a href='http://wpa.qq.com/msgrd?v=3&uin="+data.realname+"&site=qq&menu=yes' target='_blank'><img src='./images/icon_qq.png' border=0>"+data.realname+"</a></span>");
					if(data.realname!=""&&data.realname!='0'){
						win.find('.layim_names').css("line-height",'20px');
						win.find('.layim_qq').show();
					}else{
						win.find('.layim_names').css("line-height",'40px');
						win.find('.layim_qq').hide();
					}
				}});
				u=UserList.get(u.chatid);
				if(u!=undefined&&u.mood!=""){
					var str='<li class="layim_chatehe"><div class="layim_chatuser"><img src="../face/img.php?t=p1&u='+u.chatid+'"><span class="layim_chatname">'+u.nick+'</span><span class="layim_chattime">'+Datetime(0)+'</span></div><div class="sllayim_chatsay"><font style="color:#000">'+u.mood+'</font><em class="layim_zero"></em></div></li>';
					$("#layim_area"+ u.chatid).prepend(str);
				}

			}


			win.show();
			if(layim_chatmore.find('li').length<2){

				POPChat.showtab(u);
			}
		},
		showtab:function(u){
			user=u;
			var layim_chatmore = win.find('#layim_chatmore');
        	var layim_chatarea = win.find('#layim_chatarea');

			layim_chatmore.find('ul>li').removeClass('layim_chatnow');
			layim_chatarea.find('.layim_chatview').removeClass('layim_chatthis');

			win.find('#layim_user'+u.chatid).addClass('layim_chatnow');
			win.find('#layim_area'+u.chatid).addClass('layim_chatthis');


			win.find('.layim_chatnow .layim_msgnum').text("0");
			win.find('.layim_chatnow .layim_msgnum').hide();

			win.find('.layim_face>img').attr('src', '../face/img.php?t=p1&u='+u.chatid);
    		win.find('.layim_names').text(u.nick);

			win.show();
			win.find('#layim_area'+ u.chatid).scrollTop(win.find('#layim_area'+ u.chatid)[0].scrollHeight);

			win.find('.layim_qq').html("<span><a href='http://wpa.qq.com/msgrd?v=3&uin="+$("#layim_user"+u.chatid).attr('data-qq')+"&site=qq&menu=yes'  target='_blank'><img src='./images/icon_qq.png' border=0>"+$("#layim_user"+u.chatid).attr('data-qq')+"</a>");

			if($("#layim_user"+u.chatid).attr('data-qq')!=""&&$("#layim_user"+u.chatid).attr('data-qq')!='0'){
						win.find('.layim_names').css("line-height",'20px');
						win.find('.layim_qq').show();
					}else{
						win.find('.layim_names').css("line-height",'40px');
						win.find('.layim_qq').hide();
			}
		},
		showmsg:function(u,u1,str){
			if(user.chatid!=u.chatid&&u.chatid!=My.chatid){
				win.find('#layim_user'+u.chatid+' .layim_msgnum').show();
				win.find('#layim_user'+u.chatid+' .layim_msgnum').text(Number(win.find('#layim_user'+u.chatid+' .layim_msgnum').text())+1+"");
			}
			var log = {};
			if(u.chatid==My.chatid)
				log.imarea = win.find('#layim_area'+ u1.chatid);
			else
				log.imarea = win.find('#layim_area'+ u.chatid);
			log.html = function(param, type){
                return '<li class="'+ (type === 'me' ? 'layim_chateme' : 'layim_chatehe') +'">'
                    +'<div class="layim_chatuser">'
                        + function(){
                            if(type === 'me'){
                                return '<span class="layim_chattime">'+ param.time +'</span>'
                                       +'<span class="layim_chatname">'+ param.name +'</span>'
                                       +'<img src="'+ param.face +'" >';
                            } else {
                                return '<img src="'+ param.face +'" >'
                                       +'<span class="layim_chatname">'+ param.name +'</span>'
                                       +'<span class="layim_chattime">'+ param.time +'</span>';
                            }
                        }()
                    +'</div>'
                    +'<div class="sllayim_chatsay">'+ param.content +'<em class="layim_zero"></em></div>'
                +'</li>';
            };
			log.imarea.append(log.html({
                time: Datetime(0),
                name: u.nick,
                face: '../face/img.php?t=p1&u='+u.chatid,
                content: str
            },u.chatid==My.chatid?'me':""));
			log.imarea.scrollTop(log.imarea[0].scrollHeight);
			//if(win.find('.layim_chatnow').attr('data-id'))
		}
	}
})();

//定义用户列表对象
UserList=(function(){
	var list=[];
	var OnLineUser=getId('OnLineUser');
	var OnlineUserNum=getId('OnlineUserNum');
	var OnlineOtherNum=getId('OnlineOtherNum');
	var PInfo=CreateElm(false,'div','','PInfo');
	var hold = 0;
	var show = 0;
	var onlinuser=0;
	var onlinmyuser=0;
    var roe_num = 0;
	var def_list=$('#OnLineUser').html();
	list['ALL']={sex:2,chatid:'ALL',nick:'大家'}
	return{
		List:function(){return list},
		init:function(){
			list=[];
			//OnLineUser.innerHTML='';
			OnlineUserNum.innerHTML='';
			list['ALL']={sex:2,chatid:'ALL',nick:'大家'}
			//UserList.add(My.chatid,My);
			//获取rebots在线列表
			var request_url='../ajax.php?act=getrlist&rid='+My.rid+'&r0='+RoomInfo.r0+'&'+Math.random() * 10000;
			//prompt('复制',request_url);
				try{
                            $.ajax({url: request_url,
                                type: "GET",
                                success: function(data) {
								WriteMessage2(data);
								//在线客服
								UserList.getmylist(My.name);
                                }
                            });
				}
				catch(e){return null;}
			},
		get:function(id){return list[id];},
		getmylist:function(user){
			$.ajax({type: 'get',dataType:'json',url: '../ajax.php?act=getmylist&rid='+My.rid+'&user='+encodeURIComponent(My.name),
			success:function(data){
				//alert(data);
				addmyuser=function(u){
					var li=CreateElm1(ref,'li',false,'myuser'+u.chatid,null);
					var vip_ico="<img src='"+grouparr[u.gid].ico+"'  align='top'/ title='"+grouparr[u.gid].title+'-'+grouparr[u.gid].sn+"'>";
					var iscam='<span class="vipico">'+vip_ico+'</span>';

					li.innerHTML='<a href="javascript:void(0)"><font style="color:#FFF">'
					 +iscam
					// +'<cite><img src="../face/img.php?t=p1&u='+u.chatid+'" border="0" class="head"/></cite>'
					 +'<dt><font id="cnick_'+u.chatid+'">'+u.nick+'</font> &nbsp;<code> </code></dt>'
					 +'<dl> </dl>'
					 +'</font></a>';

					li.oncontextmenu=function(){UserList.menu_kf(u);return false;}
					//li.onclick=function(){ToUser.set(u.chatid,u.nick);openWin(2,false,'profiles.php?uid='+u.chatid,460,600);}
					li.ondblclick=function(){if(u.chatid!=My.chatid||u.chatid.indexOf('x_r')<0){POPChat.newtab(u);POPChat.showtab(u);}}
					if(UserList.get(u.chatid)==undefined){$(li).addClass('gray');}
					else{
						$('#group_myuser').prepend($(li));
						$(li).find('dt').css("color","red")
						}
				}

				var ref=getId("group_myuser");
				$('#group_myuser').html('');
				onlinmyuser=0;
				if(data.state=='true'){
    				for(var key in data.row){
    					var u=data.row[key];
    					if($("#myuser"+u.chatid)[0]==undefined){
    					onlinmyuser++;
    					addmyuser(u);
    					}
    				}
				}
                setTimeout(function(){
				    //未分配随机选一个在线客服 发起私聊
    				if($('#group_3').find('li').length>0&&My.color!='3'&&My.fuser==""&&$('#group_myuser').find('li').length<=0){
						//alert($.cookie('kefuID'));
						if ($.cookie('kefuID') == undefined){
    					var key=parseInt($('#group_3').find('li').length*Math.random());
						var KefuId = $($('#group_3').find('li')[key]).attr('id');
						$.cookie('kefuID', KefuId,{expires:365}); 
						 }
    					var tmp_u=UserList.get($.cookie('kefuID'));
    					if(tmp_u!=undefined){
                            $.get('../ajax.php?act=remyfuser&fuserid='+tmp_u.chatid);

    						//POPChat.newtab(tmp_u);
    						//POPChat.showtab(tmp_u);
    						tmp_u.gid=tmp_u.color;
    						addmyuser(tmp_u);
                            // 弹出对话框

                            POPChat.newtab(tmp_u);
                            POPChat.showtab(tmp_u);

                            if(roe_num == 0){
                                POPChat.send('yes');
                            }
                            //ws.send(My.nick + '进入直播室');

    						onlinmyuser++;
                            roe_num++;
                            OnlineOtherNum.innerHTML=onlinmyuser;
    					}
    				}
                }, 1000);
				//游客主动私聊
				//if(onlinmyuser>0&&My.color=="0"&&UserList.get($($('#group_myuser').find('li')[0]).attr("id").replace('myuser',''))!=undefined){
				//	$($('#group_myuser').find('li')[0]).dblclick();
			     //	}

				//OnlineOtherNum.innerHTML=onlinmyuser;
			}

			});

		},
		//更新用户列表
		add:function(id,u){
            // 游客color
            if (u.color == '') {
                u.color = 17;
            }

			if($("#"+id).length >0)return;
			var style="";
			var vip_ico="";
			vip_ico="<img src='"+grouparr[u.color].ico+"'  align='top'/ title='"+grouparr[u.color].title+'-'+grouparr[u.color].sn+"'>";

			onlinuser++;
			OnlineUserNum.innerHTML=onlinuser + parseInt(RoomInfo.r);

			var ref=getId("group_rebots");
            var reg = /游客/;
			if(My.chatid==u.chatid){
				ref=getId("group_my");

			}
			else if(u.chatid.indexOf("x_r")>=0)
			{
                if(reg.test(u.nick)){
                    ref=getId("group_17");
                }else{
				   ref=getId("group_"+u.color);
                }
			}
			else
			{
				ref=getId("group_"+u.color);
			}


			list[id]=u;

			var li=CreateElm1(ref,'li',false,id,ref.childNodes[0]);


			//list[id]=u;
			//var li=CreateElm(OnLineUser,'li',false,id);
			
			var iscam='<span class="vipico"><img src="images/state'+u.state+'.png" border="0" class="state" id="state'+id+'"/>'+vip_ico+'</span>';
			//if(u.cam!='0')
			//iscam='<span><img src="images/'+u.cam+'.gif" onclick=\'VideoList.Connect("'+id+'","'+u.nick+'","'+RoomInfo.type+'");return false;\'/></span>';

			li.innerHTML='<a href="javascript:void(0)"><font style="color:#FFF">'
			 +iscam
     		 +'<cite><img src="../face/img.php?t=p1&u='+id+'" border="0" class="head" id="head_'+id+'"/></cite>'
      		 +'<dt><font id="cnick'+id+'">'+u.nick+'</font> &nbsp;<code>'+u.mood+'</code></dt>'
			 +'<dl>'+u.mood+'</dl>'
      		 +'</font></a>';
			li.oncontextmenu=function(){UserList.menu(u);return false;}
			li.onclick=function(){if(!check_auth("msg_ptp")){return;}ToRobot.set(u.chatid,u.nick);}
			li.ondblclick=function(){if(!check_auth("msg_priv")){layer.msg('没有私聊权限！',{shift: 6});return;}if(u.chatid!=My.chatid&&u.chatid.indexOf('x_r')<0){POPChat.newtab(u);POPChat.showtab(u);}}
			//if(u.vip>=2)
			//ColorNick('cnick'+id,parseInt(Math.random()*9));

			//getId('head_'+id).onmouseover =function(){UserList.info(id)}
			//li.onmouseover=function(){UserList.info(id)}
			//getId('head_'+id).onmouseout =UserList.infoHold;
			//li.onmouseout =UserList.infoHold;

		},
		setstate:function(id,state,automsg){
			list[id].state=state;
			getId(id).title=automsg;
			getId('state'+id).src="images/state"+state+".png";

                       // $("#cnick"+id).append("屏蔽");

		},
		del:function(id,u){
			if(id==My.chatid)return;
			delete(list[id]);
			onlinuser--;
			OnlineUserNum.innerHTML=onlinuser + parseInt(RoomInfo.r);
			RemoveElm(OnLineUser,getId(id));
			//ToUser.del(id);
		},
			robotdel:function(id,u){
			if(id==My.chatid)return;
			delete(list[id]);
			onlinuser--;
			OnlineUserNum.innerHTML=onlinuser + parseInt(RoomInfo.r);
			RemoveElm(OnLineUser,getId(id));
			//ToUser.del(id);
		},
		info:function(id){
			show = setTimeout(function(){UserList.showInfo(id)},0);
		},
		showInfo:function(id){
			if(hold)clearTimeout(hold);
			var u=this.get(id);
			var t=getXY(getId(id));
			PInfo.style.top=t[0]-142+'px';
			PInfo.style.left=t[1]+248+'px';
			//PInfo.innerHTML='Login:'+u.roomid+'|'+u.chatid+'|'+u.nick+'|'+u.sex+'|'+u.age+'|'+u.guest+'|'+u.ip+'|'+u.vip+'|'+u.color+'|'+u.cam+'|'+u.headface+'|'+u.state+'|<br><br><br>'+u.automsg;
			var request_url='../ajax.php?act=userinfo&type=json&id='+id+'&'+Math.random() * 10000;
			var xmlhttp=XHConn();
			try{
				xmlhttp.open("GET",request_url,true);
				xmlhttp.send(null);
				xmlhttp.onreadystatechange=function()
				{
					if(xmlhttp.readyState == 4 && xmlhttp.status == 200)
					{
					var UInfo=eval("("+xmlhttp.responseText+")");
					if(My.vip>0)uip=" [ <a href='http://www.ip138.com/ips8.asp?ip="+u.ip+"&action=1' target='_blank' title='点击查询地理位置'>"+u.ip+"</a> ]";
					else uip="";
					PInfo.innerHTML='<div style="width:280px; height:150px; padding:6px;" class="info_m">'
					+'<div style="width:100px; height:150px; float:left; margin-right:6px; margin-bottom:6px" class="info_m_l"><img src="../face/img.php?t=p2&u='+id+'" style="width:100px; height:150px;"></div>'
					+'<div style="float:left; width:174px; height:150px; overflow:hidden" class="info_m_r">'
					+'<div><a href="../profile.php?uid='+id+'" target="userinfo"  style="cursor:pointer;color:#06C;">'+UInfo.nick+'</a></div><div style="color:#999" class="info_m_m">'+UInfo.sn+'</div><div class="info_m_">'+UInfo.rank+'</div><div><a href="../profile.php?uid='+id+'" target="userinfo"  style="cursor:pointer;">'+UInfo.yx+'</a></div>'
					+'</div></div><div style="width:292px; height:20px; color:#000" >&nbsp;&nbsp;所在地：'+UInfo.city+uip+'</div>';
					PInfo.style.display = '';
					PInfo.style.cursor='default';
					}
				}

			}catch(e){return null;}

		},
		infoOver : function(){
			if(hold)clearTimeout(hold);
		},
		infoHold:function(){
			hold = setTimeout(UserList.infoHidden,500);
			PInfo.onmouseover= UserList.infoOver;
			PInfo.onmouseout = UserList.infoHold;
			if(show)clearTimeout(show);
		},
		infoHidden : function(){
			PInfo.style.display = 'none';
		},
		infos:function(id){
			var u=this.get(id);
			alert(u.nick)
		},
		setVideo:function(u){
				SysSend.command('setVideo',My.rid+'_+_'+u.chatid+'_+_'+u.nick);
				getId('menu').style.display='none';
				var xmlhttp=XHConn();
				var request_url="../ajax.php?act=setvideo&vid="+u.chatid+"&rid="+My.rid
				try{
				xmlhttp.open('GET',request_url,true);
				xmlhttp.send(null);
				}
				catch(e) {return true;}
		},
		menu:function(u)
		{
                    var xx=0;
			this.infoHidden();
			var UserMenu= Menu.init('120px');
			if(My.chatid==u.chatid)
			{
				UserMenu.add('Manage_view.png','个人资料',function(){getId('menu').style.display='none';openWin(2,false,'profiles.php?uid='+u.chatid,460,600);});
                                xx=xx+27;
				//if(RoomInfo.OtherVideoAutoPlayer=='0'&&check_auth("room_admin"))
					//UserMenu.add('tv.gif','上麦-房间主持人',function(){UserList.setVideo(u);getId('menu').style.display='none';});
                        //            xx=xx+27;
			}
			else
			{
			UserMenu.add('Manage_Sayto.png','对TA私聊',function(){getId('menu').style.display='none';if(!check_auth("msg_priv")){layer.msg('没有私聊权限！',{shift: 6});return;}if(u.chatid!=My.chatid&&u.chatid.indexOf('x_r')<0){POPChat.newtab(u);POPChat.showtab(u);}} );
                        xx=xx+27;
			//UserMenu.add('Vlove.gif','视频语音对聊',function(){if(confirm("请求和"+u.nick+"视频密聊"))VideoList.Connect(u.chatid,u.nick,0);getId('menu').style.display='none';});
			//UserMenu.add('lw.gif','赠送礼物',function(){bt_gifts();ToUser.set(u.chatid,u.nick);getId('menu').style.display='none';});
			UserMenu.hr();
			UserMenu.add('Manage_view.png','查看资料',function(){getId('menu').style.display='none';if(!check_auth("user_info")){layer.msg('没有用户资料查看权限！',{shift: 6});return;}openWin(2,false,'profiles.php?uid='+u.chatid,460,600);});
                        xx=xx+27;
			UserMenu.hr();
			UserMenu.add('Manage_Silent.png','屏蔽消息',function(){BList.add(u.chatid,u);getId('menu').style.display='none';});
                        xx=xx+27;

			if(check_auth("room_admin"))
				{
					UserMenu.hr();
					UserMenu.add('Manage_Silent.png','禁言',function(){getId('menu').style.display='none';if(!check_auth("user_gag")){layer.msg('没有用户禁言权限！',{shift: 6});return;};UKick.Showgag(u);});
                                        xx=xx+27;
					UserMenu.add('Manage_Kick.png','踢出、封IP',function(){getId('menu').style.display='none';if(!check_auth("user_kick")){layer.msg('没有用户踢出权限！',{shift: 6});return;}UKick.ShowMb(u);});
                                        xx=xx+27;
					//if(RoomInfo.OtherVideoAutoPlayer=='0')
					//UserMenu.add('tv.gif','上麦-房间主持人',function(){UserList.setVideo(u);getId('menu').style.display='none';});
				}
			}
			var e=getEvent();
			UserMenu.display(e.clientX,e.clientY-xx);
		},
		menu_kf:function(u)
		{
                    var xx=0
			this.infoHidden();
			var UserMenu= Menu.init('120px');
			if(My.chatid==u.chatid)
			{
				UserMenu.add('Manage_view.png','个人资料',function(){getId('menu').style.display='none';openWin(2,false,'profiles.php?uid='+u.chatid,460,600);});
                                 xx=xx+27;
				//if(RoomInfo.OtherVideoAutoPlayer=='0'&&check_auth("room_admin"))
					//UserMenu.add('tv.gif','上麦-房间主持人',function(){UserList.setVideo(u);getId('menu').style.display='none';});
                      //               xx=xx+27;
			}
			else
			{
			UserMenu.add('Manage_Sayto.png','对TA私聊1',function(){getId('menu').style.display='none';if(u.chatid!=My.chatid&&u.chatid.indexOf('x_r')<0){POPChat.newtab(u);POPChat.showtab(u);}} );
                         xx=xx+27;
			//UserMenu.add('Vlove.gif','视频语音对聊',function(){if(confirm("请求和"+u.nick+"视频密聊"))VideoList.Connect(u.chatid,u.nick,0);getId('menu').style.display='none';});
			//UserMenu.add('lw.gif','赠送礼物',function(){bt_gifts();ToUser.set(u.chatid,u.nick);getId('menu').style.display='none';});
			UserMenu.hr();
			UserMenu.add('Manage_view.png','查看资料',function(){getId('menu').style.display='none';openWin(2,false,'profiles.php?uid='+u.chatid,460,600);});
                         xx=xx+27;
			UserMenu.hr();
			UserMenu.add('Manage_Silent.png','屏蔽消息',function(){BList.add(u.chatid,u);getId('menu').style.display='none';});
                         xx=xx+27;

			if(check_auth("room_admin"))
				{
					UserMenu.hr();
					UserMenu.add('Manage_Silent.png','禁言',function(){ToUser.set(u.chatid,u.nick);SysSend.command('send_Msgblock','');});
                                         xx=xx+27;
                                        UserMenu.hr();
					UserMenu.add('Manage_Kick.png','踢出、封IP',function(){getId('menu').style.display='none';if(!check_auth("user_kick")){layer.msg('没有用户踢出权限！',{shift: 6});return;}UKick.ShowMb(u);});
                                         xx=xx+27;
					//if(RoomInfo.OtherVideoAutoPlayer=='0')
					//UserMenu.add('tv.gif','上麦-房间主持人',function(){UserList.setVideo(u);getId('menu').style.display='none';});
				}
			}
			var e=getEvent();
			UserMenu.display(e.clientX,e.clientY-xx);
		}
	}
})();
PublicVideo=(function(){

})();
UKick=(function(){
	var tiren=0;
	return{
		ShowMb:function(u){
			var loadstr='<div  id="kickmp" onselectstart="return true;">';
			loadstr+='<select name="MCmd" id="MCmd" onchange="if(this.value==\'kick\')getId(\'ktime\').style.display=\'\'"><option value="kick">踢出+封IP</option></select>';
			loadstr+='&nbsp;<select id="ktime" name="ktime">      <option value="0">踢出房间</option>      <option value="1">禁闭01分钟</option>      <option value="10">禁闭10分钟</option>      <option value="30">禁闭30分钟</option>      <option value="60">禁闭60分钟</option>      <option value="720">禁闭12小时</option>      <option value="10080">禁闭1星期</option></select>';
			loadstr+='<br><br><input type="text" name="cause" id="cause" value="原因" size="24" /><br><button class="bt1" onclick="UKick.SendCmd(\''+u.chatid+'\',\''+u.nick+'\')">执行</button>';
			loadstr+='</div>';
				//openWin(1,'踢出 '+u.nick,loadstr,290,200);
                   layer.closeAll('iframe');
		 tiren = layer.open({
		type: 1,
		title: '踢出 '+u.nick,
		shadeClose: true,
		shade: false,
		area: ['290px', '200px'],
		content: loadstr //iframe的url
		});
		},
		Showgag:function(u){
			var loadstr='<div  id="kickmp" onselectstart="return true;">';
			loadstr+='<select name="MCmd" id="MCmd" onchange="if(this.value==\'kick\')getId(\'ktime\').style.display=\'\'"><option value="kick">禁言</option></select>';
			loadstr+='&nbsp;<select id="ktime" name="ktime">      <option value="0">禁言</option>      <option value="1">禁言01分钟</option>      <option value="10">禁言10分钟</option>      <option value="30">禁言30分钟</option>      <option value="60">禁言60分钟</option>      <option value="720">禁言12小时</option>      <option value="10080">禁言1星期</option></select>';
			loadstr+='<br><br><input type="text" name="cause" id="cause" value="原因" size="24" /><br><button class="bt1" onclick="UKick.Sendgag(\''+u.chatid+'\',\''+u.nick+'\')">执行</button>';
			loadstr+='</div>';
            layer.closeAll('iframe');
		tiren = layer.open({
		type: 1,
		title: '禁言 '+u.nick,
		shadeClose: true,
		shade: false,
		area: ['290px', '200px'],
		content: loadstr //iframe的url
		});
		},
		SendCmd:function(chatid,nick){
			ToUser.set(chatid,nick);
			SysSend.command('kick',getId('ktime').value+'_+_'+getId('cause').value);
			  layer.close(tiren);
                        if(chatid.indexOf('x_r')>-1){
                            layer.msg('机器人不能被踢出！',{shift: 6});
                     }else{
                    　　　 layer.msg(nick+'被踢出！',{shift: 6});
                     }
		},
		Sendgag:function(chatid,nick){
			ToUser.set(chatid,nick);
			SysSend.command('send_Msgblock',getId('ktime').value+'_+_'+getId('cause').value);
			  layer.close(tiren);
                        if(chatid.indexOf('x_r')>-1){
                            layer.msg('机器人不能禁言！',{shift: 6});
                     }else{
                    　　　 layer.msg(nick+'被禁言！',{shift: 6});
                     }
		}


	}
})();
BList=(function(){
	var List=[];
	return{
		init:function(){List=[]},
		add:function(id,u){
            var objReg = /游客/g
            if (objReg.test(My.name)) {
                layer.msg('权限不足！',{shift: 6});
            } else {
                console.log(id);
                console.log(u);
    			if(BList.isExist(id)){BList.del(id);return;}
    			List[id]=u;
    			UserList.setstate(id,'00','已经屏蔽消息');
            }
		},
		isExist:function(id){
			var r=false;
			for(key in List){
				if(id==List[key].chatid){return true;}
				}
			return r;
			},
		del:function(id){
			UserList.setstate(id,'0','');
			delete List[id];
			}
		}
})();

ToUser=(function(){
	return{
		id:null,
		name:null,
		add:function(id,name){
			$('#ToUser').html(name);
       		$('#ToUser').attr("data-id",id);
         	if(id!='ALL'){
				$('#Tochatclose').css('display','block');}	
		},
		del:function(id){
			this.add('ALL','大家');
            $('#Tochatclose').css('display','none');              
		},
		set:function(id,name){
			if(id==My.chatid)return;
			this.id=id;
			this.name=name;
			this.add(id,name);
		}
	}
})();
ToRobot=(function(){
	$('#chat_type').change(function () {
		ToRobot.set($(this).val(),$(this).find("option:selected").text());
    });
	return{
		id:null,
		name:null,
		add:function(id,name){
			//if(id.indexOf("x_r")!=0)alert("注意！您选择的是一个真实用户！");
			$('#chat_type option[value='+id+']').remove();
			$("#chat_type").append("<option value='"+id+"'>"+name+"</option>");
			$('#chat_type option[value='+id+']').attr('selected','selected');

		},
		del:function(id){
			$('#chat_type option[value='+id+']').remove();
		},
		set:function(id,name){
			if(id==My.chatid)return;
			this.id=id;
			this.name=name;
			this.add(id,name);
		}
	}
})();
var oldMsg;
var oldTime;
var msgTag=false;
SysSend=(function(){
	return{
		isUser:function()
		{
			var toUserInfo=UserList.get(ToUser.id);
			if(typeof(toUserInfo)=="undefined"){alert('对方已经离线！');ToUser.del(ToUser.id);return false;}
			return true;
		},
		msg:function(){
			if(!check_auth("msg_send") || My.gag=="1"){layer.msg('没有发言权限！',{shift: 6});return false;}
		    var Msgm = encodeURIComponent(getId('Msg').innerHTML);
			var msgid=randStr()+randStr();
			if($("#chat_type").val() && $("#chat_type").val()!="me"){
			if(!this.isUser())return false;
			SysSend.command('rebotmsg',Msgm+'_+_'+msgid);
			//机器人发言保存数据库begin
			var reUser=UserList.get(ToRobot.id);
			var ToUsers=UserList.get(ToUser.id);
			var Style="font-weight:"+getId('Msg').style.fontWeight+";font-style:"+getId('Msg').style.fontStyle+"; text-decoration:"+getId('Msg').style.textDecoration+";color:"+getId('Msg').style.color+"; font-family:"+getId('Msg').style.fontFamily+"; font-size:"+getId('Msg').style.fontSize;
			RobotPutMessage(My.rid,reUser.color,reUser.chatid,ToUsers.chatid,reUser.nick,My.nick,ToUsers.nick,getId('Personal').value,Style,Msgm,msgid);
			//机器人发言保存数据库end
			return true;}
			if(ToUser.id!="ALL")
			if(!this.isUser())return false;
			var toUserInfo=UserList.get(ToUser.id);
			if(toUserInfo.state=='00')alert("注意:"+toUserInfo.nick+' 的消息你已经屏蔽,你将收不到来自ta的消息');
			if(typeof(toUserInfo)=="undefined"){alert('对方已经离线！');ToUser.del(ToUser.id);return false;}
			var Msg=getId('Msg').innerHTML;
			var Style="font-weight:"+getId('Msg').style.fontWeight+";font-style:"+getId('Msg').style.fontStyle+"; text-decoration:"+getId('Msg').style.textDecoration+";color:"+getId('Msg').style.color+"; font-family:"+getId('Msg').style.fontFamily+"; font-size:"+getId('Msg').style.fontSize;
			var Msg=encodeURIComponent(Msg.str_replace());
            if(decodeURIComponent(Msg) == '含敏感关键字，内容被屏蔽'){
                layer.msg('含敏感关键字，内容被屏蔽');
                getId('Msg').innerHTML='';
                return;
            }
			if(Msg==oldMsg && My.qx=='0'){alert("请勿刷屏！");getId('Msg').innerHTML='';return;}
			var newTime=new Date().getTime();
			if(newTime-oldTime<500){alert("说话速度过快~歇会儿！");return;}
			if(msgTag){if(newTime-oldTime>5000)msgTag=false;else {alert("说话速度过快~歇会儿！");return;}}
                        if(My.color=="17"){
                        var fayanjiange=parseInt(RoomInfo.fayanjiange+'000');
                        if(newTime-oldTime<fayanjiange){
                            var chaTime=parseInt((fayanjiange-newTime+oldTime)/1000);
                            layer.msg('游客的发言时间间隔为'+RoomInfo.fayanjiange+'秒,还有'+chaTime+'秒!', {icon: 5});
                            return;
                        }

                        }
			if(Msg!='')
			{
			var msgid=randStr()+randStr();
			var msgtype="";
			if(check_auth("room_admin")){
				msgtype="room_admin";
				}
			//普通发言
			var str='{"type":"Msgsay","ToUser":"'+ToUser.id+'","Personal":"'+getId('Personal').value+'","Style":"'+Style+'","Msg":"'+msgid+'_+_'+Msg+'_+_'+msgtype+'"}';
			// console.log(str);
		ws.send(str);
			oldMsg=Msg;
			oldTime=new Date().getTime();
			getId('Msg').innerHTML='';
			getId('Msg').focus();
			PutMessage(My.rid,My.chatid,ToUser.id,My.nick,toUserInfo.nick,getId('Personal').value,Style,Msg,msgid);
			}
			return true;
		},
		command:function(cmd,value){
			var Msg='';
			var IsPersonal=getId('Personal').value;
			var Style="font-weight:"+getId('Msg').style.fontWeight+";font-style:"+getId('Msg').style.fontStyle+"; text-decoration:"+getId('Msg').style.textDecoration+";color:"+getId('Msg').style.color+"; font-family:"+getId('Msg').style.fontFamily+"; font-size:"+getId('Msg').style.fontSize;
			switch(cmd)
			{
				case 'setVideoSrc':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='false';
				break;
				case 'send_Msgblock':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='true';
				break;
				case 'msgBlock':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='false';
				break;
				case 'Sendfak':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='false';
				break;
				case 'sendacer':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='false';
				break;
				case 'sendkiss':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='false';
				break;
				case 'msgAudit_on':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='false';
				break;
				case 'msgAudit_off':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='false';
				break;
				case 'kick':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='true';
				break;
				case 'magicflash':
					if(this.isUser())
					{
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal=getId('Personal').value;
					}
				break;
                case 'rollnotice':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					alert('发送成功');
					IsPersonal=getId('Personal').value;
				break;
				case 'tipshow':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='false'; 
					 sleep(500);
					//alert('发送成功');
				break;
				case 'tipadmin':
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='false';
					sleep(500);
					//alert('发送成功');
				break;
				case 'requestVideo':
					if(this.isUser())
					{
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='true';
					}
				break;
				case 'setstate':
					//ToUser.id='ALL';
					Msg+='C0MMAND_+_'+cmd+'_+_'+My.chatid+'_+_'+value;
					IsPersonal='false';
				break;
				case 'rebotmsg':
					Msg+='C0MMAND_+_'+cmd+'_+_'+ToRobot.id+'_+_'+value+'_+_'+ToUser.id;
					IsPersonal='false';
				break;
				case 'rebotmsgct':
					Msg+='C0MMAND_+_'+cmd+'_+_'+ToRobot.id+'_+_'+value;
					//alert(Msg);
					IsPersonal='false';
				break;
				case 'getredbag':
					Msg+='C0MMAND_+_'+cmd+'_+_'+ToUser.id+'_+_'+value;
					//alert(Msg);
					IsPersonal='false';
				break;
				default:
					Msg+='C0MMAND_+_'+cmd+'_+_'+value;
					IsPersonal='false';
					//ToUser.id='ALL';
				break;
			}
			if(Msg!='')
			{
				var touser=	ToUser.id;
				if(ToUser.id.indexOf('x_r')>-1){
					touser='ALL';
				}
				//var str='SendMsg=M='+touser+'|'+IsPersonal+'|'+Style+'|'+Msg;
				var str='{"type":"Msgsay","ToUser":"'+touser+'","Personal":"'+IsPersonal+'","Style":"'+Style+'","Msg":"'+Msg+'"}';
				ws.send(str);
				//alert(str);
				getId('Msg').innerHTML='';
				getId('Msg').focus();
			}
		}
	}
})();
Menu=(function(){
	var MObj;
	return{
	init:function(w){
		RemoveElm(false,getId('menu'))
		this.MObj=CreateElm(false,'div',false,'menu');
		this.MObj.tabIndex=1;
		this.MObj.style.width=w;
		this.MObj.style.display='none';
		this.MObj.style.zIndex=1;
		return this;
		},
	add:function(icon,txt,fun){
		var n=CreateElm2(this.MObj,'div','out','n');
		n.onmouseout=function(){n.className='out';}
		n.onmouseover=function(){n.className='over';}
		n.innerHTML='<div id="icon" ><img src="images/'+icon+'" /></div><span id="txt">'+txt+'</span>';
		n.onclick=fun;
		},
	hr:function(){
		var n=CreateElm2(this.MObj,'div','hr','n');
		n.style.height='1px';
		n.style.fontSize='1px';
		},
	display:function(x,y){
		this.MObj.style.display='';
		this.MObj.style.top=y+'px';
		this.MObj.style.left=x+'px';

		this.MObj.focus();
		this.MObj.onblur=function(){BrdBlur('menu');}

		}
	}
})();
}
//打印对象
	function alertObj(obj){
	var output = "";
	for(var i in obj){  
		var property=obj[i];  
		output+=i+" = "+property+"\n"; 
	}  
	alert(output);
}
function onmessage(e){
        //console.log(e.data);
        var data = eval("("+e.data+")");
		if(data.stat!='OK')
		{
		if(data.stat=="MaxOnline"){
		  document.body.innerHTML='<div  style="font-size:12px; text-align:center; top:100px; position:absolute;width:100%">O.O 对不起，服务端并发数已满！请您联系管理员对系统扩容升级！<br><br></div>';
			return;
	     	}
		  if(data.stat=="OtherLogin"){
			 if(!check_auth("login_dd")){
			location.href="error.php?msg="+encodeURI('其他地方登录！请注意同一帐号不能两处登录、同一电脑不能两处打开房间！');
			  }
	     }
		return ;
	   }
        switch(data['type']){
            // 服务端ping客户端
       case 'ping':
           ws.send('{"type":"pong"}');
           break;;
            // 登录 更新用户列表
		case "refresh":
            window.location.reload();
            break;
		case "login_error":
			location.href = "error.php?msg=" + encodeURI('其他地方登录！请注意同一帐号不能两处登录、同一电脑不能两处打开房间！');
            break;
		case 'login':
			var U=data.Ulogin;
			var vip_msg="到来";
			var datetm = Datetime(0);
			var str='<div style="height:22px; line-height:22px;">欢迎：<font onclick="ToUser.set(\''+U.chatid+'\',\''+U.nick+'\')">'+U.nick+'</font> <font>'+datetm+'</font></div>';
			if(My.chatid!=U.chatid){
			UserList.add(U.chatid,U);
			}
			var type=0;
			if(U.chatid==My.chatid) type=2;
			if(RoomInfo.loginalert==1){
			MsgShow(str,type);
			}
			//更新用户
			if(data.client_list){
			var onlineNum=data.client_list.length;
			for(i=0;i<onlineNum;i++){
			var U=data.client_list[i];
			UserList.add(U.chatid,U);
			}	
				}
		break;
			case "logout":
			var U=data.from_client_name;
			var datetm= Datetime(0);
			var str='<div style="height:22px; line-height:22px;">用户：<font onclick="ToUser.set(\''+U.chatid+'\',\''+U.nick+'\')">'+U.nick+'</font>   离开！ <font">'+datetm+'</font></div>';
			if(RoomInfo.logoutalert==1){
			MsgShow(str,0);
			}
			UserList.del(U.chatid,U);
		break;
		case "Msgsay":
			var str=FormatMsg(data.UMsg);
			var type=0;
			if(!str)return;
			if(BList.isExist(data.UMsg.ChatId))return;
			/*
            if(regALLGlobal.test(decodeURIComponent(str))) {
                console.log(str);
                return;
            }*/

			if(data.UMsg.ToChatId==My.chatid) {
                type=2;
                MsgAlert(0);
                if(audioNotify==true)playSound('msg.mp3');
            }
			if(data.UMsg.ChatId==My.chatid) type=2;

			if(data.UMsg.ToChatId=='ALL'){if(data.UMsg.ChatId==My.chatid)type=2;else type=0;}
			if(data.UMsg.IsPersonal!='true'){
				MsgShow(str,type);
			}
			else
			{
			    if(data.UMsg.ToChatId==My.chatid){

                    POPChat.newtab(UserList.get(data.UMsg.ChatId));
                    //POPChat.showmsg(UserList.get(Msg.UMsg.ChatId),UserList.get(Msg.UMsg.ToChatId),"<font style='"+Msg.UMsg.Style+"'>"+decodeURIComponent(Msg.UMsg.Txt.str_replace())+"</font>");
                    POPChat.showmsg(UserList.get(data.UMsg.ChatId),UserList.get(data.UMsg.ToChatId),"<font style='"+data.UMsg.Style+"'>"+decodeURIComponent(data.UMsg.Txt)+"</font>");
                }
                if(data.UMsg.ChatId==My.chatid){

                    POPChat.newtab(UserList.get(data.UMsg.ToChatId));
                    POPChat.showmsg(UserList.get(data.UMsg.ChatId),UserList.get(data.UMsg.ToChatId),"<font style='"+data.UMsg.Style+"'>"+decodeURIComponent(data.UMsg.Txt.str_replace())+"</font>");
                }
			}
		break;

	}

}
function WriteMessage2(txt){
      var Msg;
	try{
		Msg=eval("("+txt+")");
	}catch(e){return;}

	switch(Msg.type)
	{


		case "UonlineUser":

			var onlineNum=Msg.roomListUser.length;

			for(i=0;i<onlineNum;i++)
			{
			    var U=Msg.roomListUser[i];

			   UserList.add(U.chatid,U);
			}
		break;
		case "Ulogout":
			var U=Msg.Ulogout;
			var date= Datetime(0);
			var str='<div style="height:22px; line-height:22px;">用户：<font class="u" onclick="ToUser.set(\''+U.chatid+'\',\''+U.nick+'\')">'+U.nick+'</font>   离开！ <font class="date">'+date+'</font></div>';
		//	MsgShow(str,0);
			UserList.del(U.chatid,U);
		break;

	}

}
function CommObjectCheck(obj, inObj)
{
	if (obj == inObj)
	{
		return true;
	}
	if(obj.parentNode) {
		return CommObjectCheck(obj.parentNode, inObj);
	}
	return false;
}
function CreateElm(pObj,obj,className,id){
	var elm = null;
	var elm=document.createElement(obj);
	if(!pObj)document.body.insertBefore(elm,null);
	else pObj.insertBefore(elm,null);
	if(id)elm.id = id;
	if(className)elm.className = className;
	return elm
}
//CreateElm(this.MObj,'div','out','n')
function CreateElm2(pObj,obj,className,id){
	var elm = null;
	var elm=document.createElement(obj);
        var li1=document.getElementById("menu").firstChild;
	if(!pObj)document.body.insertBefore(elm,li1);
	else pObj.insertBefore(elm,li1);
	if(id)elm.id = id;
	if(className)elm.className = className;
	return elm
}
function CreateElm1(pObj,obj,className,id,ref){
	var elm = null;
    //var reg = /游客/;
	var elm=document.createElement(obj);
	if(!pObj){
        document.body.insertBefore(elm,ref);
    }
	else {
        if (ref == undefined) {
            // ie 问题
            pObj.insertBefore(elm,null);
        } else {
            pObj.insertBefore(elm,ref);
        }
        /*if(reg.test(name)){
            getId("group_17").insertBefore(elm,ref);
        }else{
            pObj.insertBefore(elm,ref);
        }*/
    }
	if(id)elm.id = id;
	if(className)elm.className = className;
	return elm;
}


function RemoveElm(pObj,id)
{
	$(id).html("");
	$(id).remove()
}


String.prototype.str_replace=function(t){
	var str=this;
	var reg = new RegExp(msg_unallowable, "ig");
    //if(reg.test(str))return "含敏感关键字，内容被屏蔽";
	if(reg.test(str)&&!check_auth("room_admin"))return "含敏感关键字，内容被屏蔽";
	str= str.replace(/<\/?(?!br|img|font|p|span|\/font|\/p|\/span)[^>]*>/ig,'').replace(/\r?\n/ig,' ').replace(/(&nbsp;)+/ig," ").replace(/(=M=)+/ig,"").replace(/(|)+/ig,"").replace(/(SendMsg)/ig,'');
	if(!check_auth("room_admin"))str=str.replace(reg,'**')
	return str;
	};
function LinkMaker( str ) {
	return str.replace( /(https?:\/\/[\w.]+[^ \f\n\r\t\v\"\\\<\>\[\]\u2100-\uFFFF]*)|([a-zA-Z_0-9.-]+@[a-zA-Z_0-9.-]+\.\w+)/ig, function( s, v1, v2 ) {
		if ( v2 )
			return [ '<a href="mailto:', v2, '">', v2, '</a>' ].join( "" );
		else
			return [ '<a href="', s, '">', s, '</a>' ].join( "" );
	} );
}
function SwapLink()
{
	if(!isIE)
	getId('Msg').innerHTML=LinkMaker(getId('Msg').innerHTML);

	var as=getId('Msg').getElementsByTagName('a');
	for ( var i = as.length - 1; i >= 0; i-- ) {
		as[i].target='_blank';
		as[i].className='MsgUrlStyle';
	}
}
function PutMessage(rid,uid,tid,uname,tname,privacy,style,str,msgid){
	var msgtip="";
	if($("#msg_tip").attr("checked")){
		msgtip="msgtip=2&";
		$("#msg_tip").attr("checked",false);
			SysSend.command('tipshow',str);
	}
	else if($("#msg_tip_admin").attr("checked")){
		msgtip="msgtip=3&";
			$("#msg_tip_admin").attr("checked",false);
			SysSend.command('tipadmin',str);
	}
	else if($("#msg_tip_danmu").attr("checked")){
		$("#msg_tip_danmu").attr("checked",false);
		 //飞屏
		SysSend.command('rollnotice',str);
		}
	if(RoomInfo.Msglog=='0')return;
        var request_url='../ajax.php?act=putmsg';
        var postdata=msgtip+'msgid='+msgid+'&uname='+encodeURIComponent(uname)+'&tname='+encodeURIComponent(tname)+'&muid='+uid+'&rid='+rid+'&tid='+tid+'&privacy='+privacy+'&style='+style+'&msg='+str+'&'+Math.random() * 10000;
        $.ajax({type: 'POST',url:request_url,data:postdata});
}
//模拟机器人发言ajax
function RobotPutMessage(rid,ugid,uid,tid,uname,tuser,tname,privacy,style,str,msgid){
	var msgtip="";
	if(RoomInfo.Msglog=='0')return;
        var request_url='../ajax.php?act=Robotputmsg';
        var postdata=msgtip+'msgid='+msgid+'&uname='+encodeURIComponent(uname)+'&tname='+encodeURIComponent(tname)+'&tuser='+encodeURIComponent(tuser)+'&ugid='+ugid+'&muid='+uid+'&rid='+rid+'&tid='+tid+'&privacy='+privacy+'&style='+style+'&msg='+str+'&'+Math.random() * 10000;
        $.ajax({type: 'POST',url:request_url,data:postdata});
	}
function Mkick(adminid,rid,ktime,cause)
{
	$.ajax({type: 'get',dataType:'json',url: '../ajax.php?act=kick&aid='+adminid+'&rid='+rid+'&ktime='+ktime+'&cause='+encodeURIComponent(cause)+'&u='+encodeURIComponent(My.name)+'&'+Math.random() * 10000,
			success:function(data){
				//alert(data);
				if(data.state=="yes"){
				location.href="error.php?msg="+encodeURI('你被踢出！并禁止'+ktime+'分钟内登陆该房间！<br>原因是 '+cause+'');
				}
			}
	});
}
function Mgag(adminid,rid,ktime,cause)
{

	$.ajax({type: 'get',dataType:'json',url: '../ajax.php?act=gag&aid='+adminid+'&rid='+rid+'&ktime='+ktime+'&cause='+encodeURIComponent(cause)+'&u='+encodeURIComponent(My.name)+'&'+Math.random() * 10000,
			success:function(data){
				//alert(data);
				if(data.state=="yes"){
				layer.msg('您已被禁言！',{shift: 6});
				}
			}
	});
}
function FormatMsg(Msg)
{
	var User=UserList.get(Msg.ChatId);
	var toUser=UserList.get(Msg.ToChatId);
	var date= Datetime(0);
	var IsPersonal='';
	if(typeof(User)=='undefined'||typeof(toUser)=='undefined')return false;
	if(Msg.IsPersonal=='true' && toUser.chatid!='ALL') IsPersonal='[私]';
	var Txt=decodeURIComponent(Msg.Txt);
	if(Txt.indexOf('C0MMAND')!=-1)
	{
		var command=Txt.split('_+_');
		switch(command[1])
		{
			case 'setVideoSrc':
				$('#defvideosrc').html("当前讲师--<span style=\"color:#FF0\">"+command[3])+"</span>";
				var date= Datetime(0);
				var str='<div style="height:22px; line-height:22px;">欢迎：<font>讲师-'+command[3]+'</font>开讲啦！ <font>'+date+'</font><embed src=/sounds/1.mp3 width=0 height=0></div>';
				RoomInfo.defvideo = command[2];
			break;
			case 'send_Msgblock':
				if(My.chatid==toUser.chatid){
					Mgag(Msg.ChatId,My.roomid,command[2],command[3]);
					remove_auth('msg_send');
				}
			break;
			case 'Sendfak':
				var str='<div style="height:22px; line-height:22px;"><font style="color:#ff0"><b>'+command[3]+'</b></font>送给了<font style="color:#ff0"><b>'+command[2]+'</b></font>一束鲜花</div>';
				giftshow(command[3]+"送给老师一束鲜花","1");
			break;
			case 'sendacer':
				var str='<div style="height:22px; line-height:22px;"><font style="color:#ff0"><b>'+command[3]+'</b></font>送给了<font style="color:#ff0"><b>'+command[2]+'</b></font>一把大宝剑</div>';
				giftshow(command[3]+"送给老师一把大宝剑","2");
			break;
			case 'sendkiss':
				var str='<div style="height:22px; line-height:22px;"><font style="color:#ff0"><b>'+command[3]+'</b></font>送给了<font style="color:#ff0"><b>'+command[2]+'</b></font>一个飞吻</div>';
				giftshow(command[3]+"送给老师一个飞吻","3");
			break;
			case 'msgAudit':
				$('#'+command[2]).show();
				MsgAutoScroll();
				if(check_auth('msg_audit'))$('#ma_'+command[2]).hide();
			break;
			case 'msgBlock':
				$('#'+command[2]).remove();
				MsgAutoScroll();
			break;
			case 'msgAudit_on':
			RoomInfo.msgAudit=1;
			break;
			case 'msgAudit_off':
			RoomInfo.msgAudit=0;
			break;
			case 'rebotmsg':
			case 'automsg':
				var msg={};
				msg.ChatId=command[2];
				msg.ToChatId=command[5];
				msg.IsPersonal='false';
				msg.Txt=command[4]+'_+_'+command[3]+'_+_room_admin_+_rtm';
				msg.Style=Msg.Style;
				MsgShow(FormatMsg(msg),0);
			break;
			case 'rebotmsgct':
				var msg={};
				msg.ChatId=command[2];
				msg.ToChatId='ALL';
				msg.IsPersonal='false';
				msg.Txt=command[4]+'_+_'+command[3]+'_+_room_admin_+_rtm';
				msg.Style=Msg.Style;
				MsgShow(FormatMsg(msg),0);
			break;
			case 'getredbag':
				var str='<div style="height:22px; line-height:22px;"><font style="color:#ff0"><b>'+command[3]+'</b></font>领取了<font style="color:#ff0"><b>'+command[4]+'</b></font>的红包<b style="color:#ff0">'+command[5]+'</b>元<font>'+date+'</font></div>';
			break;
			case 'kick':
				if(My.chatid==toUser.chatid){
					Mkick(Msg.ChatId,My.roomid,command[2],command[3]);
				}
			break;
                        case 'rollnotice':

                          var top = $(window).height()/2 - 100 + 'px';

	                 var width = $(window).width()+ 'px';
	                var innerHTML = '<DIV style="Z-INDEX: 1;pointer-events: none; LEFT:1px;  width:'+width+'; VISIBILITY: visible; POSITION: absolute; TOP: '+top+'">'
			                +'<marquee style="WIDTH:'+width+'; HEIGHT: 40px; line-height:40px;" scrollamount="4" loop="1" direction="left" ><span style="font-family: KaiTi_GB2312; font-size: 35px; color: rgb(255, 255, 255); font-weight: bold; font-style: normal; text-decoration: none; text-shadow: rgb(204, 0, 0) 0px 0px 10px; fill: rgb(255, 255, 255);">'
                                        +command[2]
                                    +'</span></marquee></DIV>';

				try{getId('divnotice').style.display='';getId('divnotice').innerHTML =innerHTML;}catch(e){}
			break;
			case 'tipshow':
			$("#msg_tip_show").html(decodeURIComponent("<span style='color:#FF0'>"+command[2]+"</span>"));
			break;
			case 'tipadmin':
			$("#msg_tip_admin_show").html(decodeURIComponent("<span style='color:#FF0;display:block;padding-left:5px'>"+command[2]+"</span>"));
			break;
			case 'setstate':
				UserList.setstate(command[2],command[3],command[4]);
			break;
			/*case 'setVideo':
				toUser=UserList.get(command[3]);
				var str='<div style="height:22px; line-height:22px;">'+IsPersonal+'<font class="u" color="'+aColor[User.sex]+'" onclick="ToUser.set(\''+User.chatid+'\',\''+User.nick+'\')">'+User.nick+'</font> 设置 <font class="u" color="'+aColor[toUser.sex]+'" onclick="ToUser.set(\''+toUser.chatid+'\',\''+toUser.nick+'\')">'+toUser.nick+'</font> 为房间公共视频  <font class="date">'+date+'</font></div>';
				try{

					if(RoomInfo.OtherVideoAutoPlayer!="0"){

						$('#OnLine_MV').html('<iframe id="zhibo" height="390" width="100%" allowTransparency="true" marginwidth="0" marginheight="0"  frameborder="0" scrolling="no" src="player.php?type=pc"></iframe>');
					}

				else if(command[3]==My.chatid)
				{
					thisMovie('pVideo').stopS(RoomInfo.AutoSelfVideo);
					thisMovie('pVideo').sConnect(RoomInfo.VServer,command[2]+'·'+command[3],'1');
					//thisMovie('pVideo').pShow("2",toUser.nick);
				}
				else
				{
					thisMovie('pVideo').stopS(RoomInfo.AutoSelfVideo);
					thisMovie('pVideo').pConnect(RoomInfo.VServer,command[2]+'·'+command[3],toUser.nick);

				}
				}catch(e){}
			break;*/
			case "sendgift":
				//('sengift','{$uid}_+_{$sid}_+_{$gid}_+_{$num}_+_{$gname}_+_{$msg}')
				var u=UserList.get(command[2]);
				var s=UserList.get(command[3]);
				for(var i=1;i<=command[5];i++){
					if(i>300)break;
					setTimeout('ShowGifteffect("'+command[4]+'")',10*i);
					}
				var str='<p><font class="u" color="'+aColor[u.sex]+'" onclick="ToUser.set(\''+u.chatid+'\',\''+u.nick+'\')">'+u.nick+'</font> 向 <font class="u" color="'+aColor[s.sex]+'" onclick="ToUser.set(\''+s.chatid+'\',\''+s.nick+'\')">'+s.nick+'</font> 送了<img src="../gift/img.php?id='+command[4]+'" height="50" width="50"/> (<span style="color:red"><b>'+command[5]+'</b></span>份) '+command[6]+' <font color="'+aColor[u.sex]+'">赠言： '+command[7]+'</font> <font class="date">'+date+'</font></p>';

			break;
		}
	}
	else
	//聊天信息
	{
	var msgid="";
	var msgredtype="";
	var msgtype="";
	var rtm="";
	if(Txt.indexOf('_+_')>-1){
		var t=Txt.split('_+_');
		msgid= t[0];
		Txt=t[1];
		msgtype=t[2];
		rtm=t[3];
	}
		var rebot=""; 
		if(check_auth('room_admin')){
		if(rtm=="rtm"){
		rebot="<div class='msg_content'><img src='images/state3.png' /></div>";
			}
		}
	if(msgtype=="msgredbag"){
		msgredtype = "style=\"padding:0px;background:none;\"";
		}
	var msgBlockBt="";
	if(RoomInfo.msgBlock=="1"){
		if(check_auth('msg_block'))
		msgBlockBt=" <a href='javascript:void(0)' onclick='bt_msgBlock(\""+msgid+"\")'><img src='images/11.png' style='border:0px;' title='屏蔽消息'></a>";
	}
	var msgAuditBt="";
	var msgAuditShow='';
	if(RoomInfo.msgAudit=="1"){
		msgAuditShow='style="display:none"';
		if(check_auth('msg_audit')){
			msgAuditBt=" <a href='javascript:void(0)' id='ma_"+msgid+"' onclick='bt_msgAudit(\""+msgid+"\",this)'><img src='images/22.png' style='border:0px;' title='审核通过'></a>";
			msgAuditShow="";
		}
		if(User.chatid==My.chatid)msgAuditShow="";
		if(msgtype=="room_admin" || msgtype=="ct"){
		msgAuditShow="";
		msgAuditBt="";
		}
	}
var msgdate = date.substr(0,5);
	if(toUser.chatid!="ALL"){
		str='<div style="clear:both; height:0px;"></div><div class="msg" id="'+msgid+'" '+msgAuditShow+'><font class="date">'+msgdate+'</font><div class="msg_head"><img src="'+grouparr[User.color].ico+'" class="msg_group_ico" title="'+grouparr[User.color].title+"-"+grouparr[User.color].sn+'"></div>'+rebot+'<div class="msg_content"><div>'+IsPersonal+'<font class="u" style="color:'+aColor[User.sex]+'" onclick="ToUser.set(\''+User.chatid+'\',\''+User.nick+'\')">'+User.nick+'</font>&nbsp;&nbsp; <font class="dui">    对</font> <font class="u" style="color:'+aColor[toUser.sex]+'" onclick="ToUser.set(\''+toUser.chatid+'\',\''+toUser.nick+'\')">'+toUser.nick+'</font> </div></div><div class="layim_chatsay"><font  style="'+Msg.Style+';" >'+Txt+msgBlockBt+msgAuditBt+'</font></div></div><div style="clear:both; height:0px;"></div>';
	}else{
		str='<div style="clear:both; height:0px;"></div><div class="msg"  id="'+msgid+'" '+msgAuditShow+'><font class="date">'+msgdate+'</font><div class="msg_head"><img src="'+grouparr[User.color].ico+'" class="msg_group_ico" title="'+grouparr[User.color].title+"-"+grouparr[User.color].sn+'"></div>'+rebot+'<div class="msg_content"><div>'+IsPersonal+'<font class="u" style="color:'+aColor[User.sex]+'" onclick="ToUser.set(\''+User.chatid+'\',\''+User.nick+'\')">'+User.nick+'</font>&nbsp;&nbsp;</div></div><div class="layim_chatsay" '+msgredtype+'><font  style="'+Msg.Style+';" >'+Txt+msgBlockBt+msgAuditBt+'</font></div></div><div style="clear:both; height:0px;"></div>';
	}
	}
	return str;

}
//FormatMsg结束

function ShowGifteffect(gid){
	var Gift_id='G'+Math.round(Math.random())+Math.round(Math.random());
	var div=CreateElm(false,'div',false,Gift_id);
	div.style.position='absolute';
	div.style.display="none";
	div.style.top=Math.round(Math.random()*document.documentElement.clientHeight-50)+'px';
	div.style.left=Math.round(Math.random()*document.documentElement.clientWidth-50)+'px';
	div.innerHTML='<img src="../gift/img.php?id='+gid+'" height="80" width="80" />';
	div.style.display="";
	setTimeout("RemoveElm(false,getId('"+Gift_id+"'))",5000);
}
var msgBlock='';
function MsgShow(str,type){
//0:box1 show 1:box2 show 2:all show
	var say = null;
	if(fenping)type=0;
	switch(type){
		case 0:
			$('#MsgBox1').append(str);
		break;
		case 1:
			$('#MsgBox2').append(str);
		break;
		case 2:
		    $('#MsgBox2').append(str);
		break;
	}
	if($('#MsgBox1').find(".msg").length>100){$('#MsgBox1').find(".msg:first").remove();}
	$(".layim_chatsay img").on("click",function(){if($(this).width()>300||$(this).height()>300)window.open($(this).attr('src'))});
	MsgAutoScroll();
}
function MsgAutoScroll(){
	if(toggleScroll == true){
	$('#MsgBox1').animate({scrollTop:$('#MsgBox1')[0].scrollHeight}, 1000);
	if(!fenping)
	$('#MsgBox2').animate({scrollTop:$('#MsgBox2')[0].scrollHeight}, 1000);
	}
}
var blinkerTimer;
function MsgAlert(tag)
{
	MsgCAlert();

	if(tag==0){document.title='您有新消息！祝你聊得愉快！';blinkerTimer=setTimeout('MsgAlert(1)',1000);}
	if(tag==1){document.title=RoomInfo.defaultTitle;blinkerTimer=setTimeout('MsgAlert(0)',1000);}
}
function MsgCAlert()
{
	if(blinkerTimer)clearTimeout(blinkerTimer);document.title=RoomInfo.defaultTitle;
}
function sendgift(s,g){
	//var loadstr='<font color="red">服务器连接失败</font><br>';
	if(s=="ALL" || s==""){alert("没有选择收礼人！");return false;}
	openWithIframe('赠送礼物','../sendgift.php?froom=froom&gid='+g+'&sid='+s,300,200,null,false);
	dragWinx(getId("massage_box"));
}

function saveCode(obj,filename){
  var winname = window.open("", "", "top=10000,left=10000");
  winname.document.open("text/html", "replace");
  winname.document.writeln(obj);
  winname.document.execCommand("saveas", "", filename + ".html");
  winname.close();
}

function dragWinx(o){

}
function dragMsgWinx(o){
	//o.firstChild.onmousedown=function(){return false;};
	o.onmousedown=function(a){
		var d=document;if(!a)a=window.event;
		var dy=a.clientY-getId('MsgBox1').offsetHeight;
		var x=getId('MsgBox2').offsetHeight+getId('MsgBox1').offsetHeight;
		if(o.setCapture)
			o.setCapture();
		else if(window.captureEvents)
			window.captureEvents(Event.MOUSEMOVE|Event.MOUSEUP);

		d.onmousemove=function(a){
			if(!a)a=window.event;
			var t=Math.min(Math.max(120,a.clientY-dy),x-40);
			getId('MsgBox1').style.height=t+'px';
			getId('MsgBox2').style.height=x-t+'px';
		};

		d.onmouseup=function(){
			if(o.releaseCapture)
				o.releaseCapture();
			else if(window.captureEvents)
				window.captureEvents(Event.MOUSEMOVE|Event.MOUSEUP);
			d.onmousemove=null;
			d.onmouseup=null;
		};
	};
}
function openWithIframe(tit,url,w,h,str,o){
if(url==null)
{
    $.layer({
        type: 1,
        title: false, //不显示默认标题栏
        shade: [0], //不显示遮罩
        area: ['600px', '360px'],
        page: {html: '<img src="http://static.oschina.net/uploads/space/2014/0516/012728_nAh8_1168184.jpg" alt="layer">'}
    });
}
else
{
	$.layer({
        type: 2,
        title: tit!=""?tit:false,
        maxmin: false,
        shadeClose: true, //开启点击遮罩关闭层
        area : [w+'px' , h+'px'],
        offset : ['100px', ''],
        iframe: {src: url}
    });
}



}

function closeWithIframe(){
	layer.close();
}

//魔法表情
function online(rst)
{

	var xmlhttp=XHConn();
	var request_url="../ajax.php?act=online&rst="+rst+"&num="+getId('OnlineUserNum').innerHTML+"&"+Math.random() * 10000;
	try{
		xmlhttp.open('GET',request_url,true);
		xmlhttp.send(null);
		xmlhttp.onreadystatechange=function()
		{
			if(xmlhttp.readyState == 4 && xmlhttp.status == 200)
			{
				var re = eval("("+xmlhttp.responseText+")");
				if(re.state=="logout")
				{alert('你还没有登陆！');location.href='../index.php'}
				else if(re.state=='ologin')
				{
					var str='<div><img src="images/true.png" width="16" height="16"  style="vertical-align:text-bottom" /> '+Datetime(0)+' <br /> &nbsp;&nbsp;&nbsp;帐号其他地方登录或网络异常！统一帐号不能两个地方（浏览器登录）！ <a href="javascript:location.reload()" style="color:#0033FF;cursor:pointer">点击重新连接</a> </div>';
					//MsgShow(str,1);
				}
			}
			return true;
		}
	}
	catch(e) {return true;}
}
function ColorNick(id,i){return;
	if(i>=9)i=0;
	var col = ["white","coral","orange","red","greenyellow","lime","turquoise","coral","blueviolet","violet"];
	document.getElementById(id).style.color=col[i++];
	setTimeout("ColorNick('"+id+"',"+i+")",100);
}
function playSound(file){
	getId('MsgSound').innerHTML='<embed src=/sounds/9.mp3 width=0 height=0>';
}
function openWin(type,title,content,w,h){
	layer.closeAll('iframe');
		layer.open({
		type: type,
		title: title,
		shadeClose: true,
		shade: false,
		shift: 5,
		area: [w+'px', h+'px'],
		content: content //iframe的url
		});

}
function openApp(obj){
	layer.closeAll('iframe');
	if(obj.target=="NewWin"){
		window.open(obj.url);
	}
	else if (obj.target=="CtWin"){
		window.open(obj.url,'_self');
		}
	else if(obj.target=="POPWin"){
		layer.open({
		type: 2,
		title: obj.title,
		shadeClose: true,
		shift: 5,
		area: [obj.w+'px', obj.h+'px'],
		content: obj.url //iframe的url
		});
	}
	else if(obj.target=="QPWin"){
		layer.open({
    	type: 2,
		shadeClose: true,
		title: false, //不显示标题
		shift: 5,
		content: obj.url, //捕获的元素
		area: [obj.w+'px', obj.h+'px']
	});
	}

}
function loginTip(){
	//$('#OnLine_MV').html('直播体验结束，请登录！');
	openWin(2,false,'minilogin1.php?a=0',390,565);
}
function access_time(){
    var first_access_time = getCookie("first_access_time");
	//prompt('复制',first_access_time);
    var time_now = new Date().getTime();
    time_now=parseInt(time_now/1000);
    if((time_now-first_access_time)>(RoomInfo.tiyantime*60)){
        $('#OnLine_MV').html('<table width="100%" height="100%" cellpadding="0" cellspacing="0" border="0"><tbody><tr><td align="center"><img src="./images/xm.png"></td></tr></tbody></table>');
    }
}
function app_sendmsg(msg){
	//彩条发送
	if($("#chat_type").val() && $("#chat_type").val()!="me"){
	var Msgm = encodeURIComponent(msg.str_replace());
	var msgid=randStr()+randStr();
	SysSend.command('rebotmsgct',Msgm+'_+_'+msgid);
	var reUser=UserList.get(ToRobot.id);
	var msgid=randStr()+randStr();
	RobotPutMessage(My.rid,reUser.color,reUser.chatid,'ALL',reUser.nick,My.nick,'大家',getId('Personal').value,'',Msgm,msgid);
	return true;}
	var msgid=randStr()+randStr();
	var str='{"type":"Msgsay","ToUser":"ALL","Personal":"false","Style":"color:#000","Msg":"'+msgid+'_+_'+encodeURIComponent(msg.str_replace())+'_+_ct"}';
ws.send(str);
	PutMessage(My.rid,My.chatid,'ALL',My.nick,'彩条','false','',msg.str_replace(),msgid)
}
	//发红包
function sendRedbag(){
	 if(!check_auth("send_red")){alertMsg("您没有权限发红包",11,"提示",5); return false;}
	 var msgid=randStr()+randStr();
	 var _total=$('#rendbag_total').val();
	 var _num=$("#rendbag_num").val();
	 var _envelopetext=$("#envelopetext").val();
	 if(_total==""){alertMsg("金额不能为空",11,"提示",5); return;}
	 var roleid=My.chatid;
	 var rolename=My.nick;
	 var roleaid=My.color;
	 $.ajax({
         url: "../ajax.php?act=sendredbag",  
         type: "POST",
		 async: true,
		 data:{num:_num,total:_total,envelopetext:_envelopetext},
         dataType: "json",
         error: function(){  
		alert("服务器请求失败");
         },  
         success: function(data){//如果调用php成功  
			if(typeof(data) == "object"){ 	
				var str='{"type":"Msgsay","ToUser":"ALL","Personal":"false","Style":"color:#000","Msg":"'+msgid+'_+_'+encodeURIComponent(data.content.str_replace())+'_+_msgredbag"}';
				console.log(str);
				ws.send(str);
				PutMessage(My.rid,My.chatid,'ALL',My.nick,'ALL','false','',data.content.str_replace(),msgid)
				$('#balance').html(data.yue);
				$("#rendbag_num").val('');
				$('#rendbag_total').val('');
				$("#redbagsbgmain").fadeOut(200);
				msgMsg("红包发送成功",1,"提示",5);
			}else if(data=="invalidate_num"){ 	
				alertMsg("单个红包金额最少为0.01元",11,"提示",5);
			}else if(data=="rendbag_num_err"){
				alertMsg("红包个数必须为数字",11,"提示",5);
			}else{
				alertMsg("对不起，您的账户余额不足",11,"提示",5);
			}
         }
     });  
}
//打开红包
function getRedbag(e){
     var redbag=$(e).attr('rel');
	 $.ajax({
         url: "../ajax.php?act=getredbag",  
         type: "POST",
		 async: true,
		 data:{redbag:redbag},
         dataType: "json",
         error: function(){  
		 alert("服务器请求失败");
         },  
         success: function(data){//如果调用php成功  
			if(typeof(data) == "object"){ 	
				//alert("恭喜你，领取了红包");
				//alert("恭喜你，领取了红包￥"+data.count);
				alertMsg("恭喜你，领取了红包￥"+data.count+"元",9,"提示",5);
				SysSend.command('getredbag',data.content);
				//rebotmsg
				//ws.send({"type":"getredbag","sh_content":data.content});	
				$('#balance').html(data.yue);
				getRedbagInfo(redbag)
			}else if(data=="-1"){
				alertMsg("请登录后在抢红包",11,"提示",5);
				//openWin(2,false,'minilogin1.php',390,310);
				getRedbagInfo(redbag)
			}else if(data=="-2"){
				alertMsg("红包不存在",11,"提示",5);
				getRedbagInfo(redbag)
			}else if(data=="-3"){
				alertMsg("您已经领过改红包领了，请下次再领吧",11,"提示",5);
				getRedbagInfo(redbag)
			}else{
				alertMsg("红包领取完了，请下次再领吧",11,"提示",5);
				 getRedbagInfo(redbag)
			}
         }
     });  
}
//红包列表
function getRedbagInfo(redbag){
 $.ajax({
         url: "../ajax.php?act=getredbaginfo",  
         type: "POST",
		 async: true,
		 data:{redbag:redbag},
         dataType: "json",
         error: function(){  
		 alert("服务器请求失败");
         },  
         success: function(data){//如果调用php成功  
			if(typeof(data) == "object"){
				var redbag=data.redbag;
				var get_list=data.get_list;
				$("#redbag_info").fadeIn(200);
				$("#redbag_info ._avatar").html('<img src="'+grouparr[redbag.gid].ico+'"/>');
				$("#redbag_info h1").html("已领取"+get_list.length+"/"+redbag.num+"个");
				$("#redbag_info ._info ._info_total").html('共 ￥'+redbag.total);
				$("#redbag_info ._info ._info_from").html('来自 '+redbag.nickname);
				$("#redbag_info table").html('')
				for(i in get_list){
					var d=new Date(parseInt(get_list[i].time)*1000);   
					var shijian=formatDate(d);
					var tr_str='<tr> <td style="width:15%"><img src="'+grouparr[get_list[i].gid].ico+'"/></td><td><span>'+get_list[i].nickname+'</span><p>'+shijian+'</p></td> <td style="width:30%">￥'+get_list[i].count+'</td> </tr>';
					$("#redbag_info table").append(tr_str)
				}
				 $("#redbag_info_btn").click();
			}
         }
     });  
	
}
function check_auth(auth){
	var auth_rules = grouparr[My.color].rules;
	if(auth_rules.indexOf(auth)>-1)return true;
	else false;
}
function remove_auth(auth){
	grouparr[My.color].rules=grouparr[My.color].rules.replace(auth,"");
}
function BrdBlur(id) {

		var e=getEvent();
		var act=document.activeElement?document.activeElement:e.explicitOriginalTarget
		var src=e.srcElement ? e.srcElement : e.target
		if (!CommObjectCheck(act, src)) {
			getId(id).style.display='none';
		}
}

function HideMenu()
{
    var elementTable=["ColorTable","Send_key_option","FontBar"];
    for(var i=0;i<elementTable.length;i++)
      getId(elementTable[i]).style.display='none'
}
//全局事件绑定
//window.onblur =function(){
//    if(!isIE){
//        HideMenu();
//    }
//};
function getEvent() //同时兼容ie和ff event
{
        if(document.all)   return window.event;
        func=getEvent.caller;
        while(func!=null){
            var arg0=func.arguments[0];
            if(arg0)
            {
              if((arg0.constructor==Event || arg0.constructor ==MouseEvent) || (typeof(arg0)=="object" && arg0.preventDefault && arg0.stopPropagation))
              {
              return arg0;
              }
            }
            func=func.caller;
        }
        return null;
}
function MsgKeyDown()
{

}

function randStr(){
	return (((1+Math.random())*0x10000)|0).toString(16).substring(1);
}
//初始化表情包和彩条
function sendCaitiao(tag){
	var ct=[];
	ct['dyg']='<img src="/face/colorbar/dyg.gif">';
	ct['zyg']='<img src="/face/colorbar/zyg.gif">';
	ct['gl']='<img src="/face/pic/s1.gif"><img src="/face/pic/s1.gif"><img src="/face/pic/s6.gif"><img src="/face/pic/s6.gif"><img src="/face/pic/geili_thumb.gif"><img src="/face/pic/geili_thumb.gif"><img src="/face/pic/s0.gif"><img src="/face/pic/s0.gif">';
	ct['zs']='<img src="/face/colorbar/zs.gif">';
	ct['xh']='<img src="/face/colorbar/xh.gif">';
	app_sendmsg(ct[tag]);
}
function showFacePanel(e,toinput){
	var offset = $(e).offset();

	var t = offset.top;
	var l = offset.left;
	$('#face').css( {"top" : t-$('#face').outerHeight(), "left":l});
	$('#face').show();
	$('#face').attr("toinput" , toinput);
}
function  initFaceColobar(){

	$.get("face/pic/face.html",function(data){
		$('#face').html(data);
		$('#facenav li').on('click',function(){
			var rel = $(this).attr('rel');
			$('#face dl').hide();
			$('#f_'+rel).show();
			$(this).siblings().removeClass('f_cur');
			$(this).addClass('f_cur');

		});
	}).success(function(){
		$(document).bind('mouseup',function(e){
		if($(e.target).attr('isface')!='1' && $(e.target).attr('isface')!='2')
		{
			$('#face').hide();
			//$(document).unbind('mouseup');
		}
		else if($(e.target).attr('isface')=='1')
		{
			var toinput =$('#face').attr("toinput");
			$(toinput).append('<img src="'+$(e.target).attr('src')+'" onresizestart="return false" contenteditable="false">');
		}
	});


	});

	$.get("face/colorbar/colorbar.html",function(data){
		$('#caitiao').html(data);
		//彩条
		$('#bt_caitiao').on('click',function(){
			var offset = $('#bt_caitiao').offset();
			var t = offset.top;
			var l = offset.left;
			$('#caitiao').css( {"top" : t-$('#caitiao').outerHeight(), "left":l});

			$('#caitiao').show();

		});
		$('#caitiaonav li').on('click',function(){

			var rel = $(this).attr('rel');
			$('#caitiao dl').hide();
			$('#c_'+rel).show();
			$(this).siblings().removeClass('f_cur');
			$(this).addClass('f_cur');
		});
		$(document).bind('mouseup',function(e){
				if($(e.target).attr('isnav')!='1')
				{
					$('#caitiao').hide();
				}
			});
	});



}
function chatload(){
	var load_msg=$(".load_msg");
	$(".load_msg a").addClass('wait');
	$(".load_msg a").text('');
	var chatnum = $('.msg').length;
	var loadnum = 10;
	$.get("../ajax.php?act=msgload&tnum="+chatnum+"&lmum="+loadnum+"&rid="+My.rid,function(msg,status){
			if(msg==""){
				layer.msg('没有更多消息了',{shift: 6});
				}
			if(msg!='false'){
			for(i in msg){
			data=msg[i];
			var msgBlockBt="";
			var msgredtype="";
			var msgAuditShow="";
			var msgAuditBt="";
			if(data.msg.indexOf("redbag_open.png")>0){
				msgredtype = "style=\"padding:0px;background:none;\"";
				}
			var rebot=""; 
			if(check_auth('room_admin')){
			if(data.robot=="1"){
			rebot="<div class='msg_content'><img src='images/state3.png' /></div>";
				}
			}	
			if(check_auth('msg_block'))
			msgBlockBt=" <a href='javascript:void(0)' onclick='bt_msgBlock(\""+data.msgid+"\")'><img src='images/11.png' style='border:0px;' title='屏蔽消息'></a>";
			if(data.state=="1"){
			msgAuditShow='style="display:none"';
			if(check_auth('msg_audit')){
			msgAuditBt=" <a href='javascript:void(0)' id='ma_"+msgid+"' onclick='bt_msgAudit(\""+data.msgid+"\",this)'><img src='images/22.png' style='border:0px;' title='审核通过'></a>";
			msgAuditShow="";
				}
			if(data.uid==My.chatid)msgAuditShow="";
				}
			
			var msgdate = ftime(data.mtime).substr(10,15);
			//var msgdate = Datetime(0);
			if(data.tuid!="ALL"){
			str='<div style="clear:both; height:0px;"></div><div class="msg"  id="'+data.msgid+'" '+msgAuditShow+'><font class="date">'+msgdate+'</font><div class="msg_head"><img src="'+grouparr[data.ugid].ico+'" class="msg_group_ico" title="'+grouparr[data.ugid].title+"-"+grouparr[data.ugid].sn+'"></div>'+rebot+'<div class="msg_content"><div><font class="u" style="color:'+aColor[data.sex]+'" onclick="ToUser.set(\''+data.uid+'\',\''+data.uname+'\')">'+data.uname+'</font>&nbsp;&nbsp; <font class="dui">    对</font> <font class="u" style="color:'+aColor[data.sex]+'" onclick="ToUser.set(\''+data.tuid+'\',\''+data.tname+'\')">'+data.tname+'</font></div></div><div class="layim_chatsay" '+msgredtype+'><font  style="'+data.style+';" >'+data.msg+msgBlockBt+msgAuditBt+'</font></div></div><div style="clear:both; height:0px;"></div>';
				}else{
			str='<div style="clear:both; height:0px;"></div><div class="msg"  id="'+data.msgid+'" '+msgAuditShow+'><font class="date">'+msgdate+'</font><div class="msg_head"><img src="'+grouparr[data.ugid].ico+'" class="msg_group_ico" title="'+grouparr[data.ugid].title+"-"+grouparr[data.ugid].sn+'"></div>'+rebot+'<div class="msg_content"><div><font class="u" style="color:'+aColor[data.sex]+'" onclick="ToUser.set(\''+data.uid+'\',\''+data.uname+'\')">'+data.uname+'</font>&nbsp;&nbsp;</div></div><div class="layim_chatsay" '+msgredtype+'><font  style="'+data.style+';" >'+data.msg+msgBlockBt+msgAuditBt+'</font></div></div><div style="clear:both; height:0px;"></div>';}
			$('#MsgBox1').prepend(str);
				}
			$(".load_msg a").removeClass('wait');
			$(".load_msg a").text('查看更多消息');
			$('#MsgBox1').prepend(load_msg);
			 }
		},'json');
}
//送礼物
function Sendfak(type){
	switch(type){
		case 'flower':
		var flowernum = $("#gift_num").html();
		if(flowernum<=0){
			alertMsg("您的鲜花已经没有了！",8,"提示",5);
			return;
			}
		$.ajax({
		 url: "../ajax.php?act=sendflower",  
         type: "POST",
		 async: true,
         data:{jid:RoomInfo.defvideo},
         dataType: "json",
         error: function(){  
            // alert('Error loading XML document');  
         }, 
		 success: function(data){//如果调用php成功  
				if(data=="-1"){
				alertMsg("不能给自己送花！",8,"提示",5);
				return;
				}else if(data!="false"){ 	
				flowernum--;
				$("#gift_num").html(flowernum);
				//alert(data.juser);
				SysSend.command('Sendfak',data.juser+'_+_'+My.nick);
				flowershide();
			}else{
				alert("您已经没有花了");
			}
         }
     });  
		
		break;
		case 'acer':
		var acernum = $("#yb_num").html();
		if(acernum<=0){
			alertMsg("您的大宝剑已经没有了！",8,"提示",5);
			return;
			}
		$.ajax({
		 url: "../ajax.php?act=sendacer",  
         type: "POST",
		 async: true,
         data:{jid:RoomInfo.defvideo},
         dataType: "json",
         error: function(){  
            // alert('Error loading XML document');  
         }, 
		 success: function(data){//如果调用php成功  
				if(data=="-1"){
				alertMsg("不能给自己送大宝剑！",8,"提示",5);
				return;
				}else if(data!="false"){ 	
				acernum--;
				$("#yb_num").html(acernum);
				//alert(data.juser);
				SysSend.command('sendacer',data.juser+'_+_'+My.nick);
				flowershide();
				
			}else{
				alert("您已经没有大宝剑了");
			}
         }
     });  
		
		break;
		case 'kiss':
		var kissnum = $("#kiss_num").html();
		if(kissnum<=0){
			alertMsg("您的飞吻已经没有了！",8,"提示",5);
			return;
			}
		$.ajax({
		 url: "../ajax.php?act=sendkiss",  
         type: "POST",
		 async: true,
         data:{jid:RoomInfo.defvideo},
         dataType: "json",
         error: function(){  
            // alert('Error loading XML document');  
         }, 
		 success: function(data){//如果调用php成功  
				if(data=="-1"){
				alertMsg("不能给自己送飞吻！",8,"提示",5);
				return;
				}else if(data!="false"){ 	
				kissnum--;
				$("#kiss_num").html(kissnum);
				//alert(data.juser);
				SysSend.command('sendkiss',data.juser+'_+_'+My.nick);
				flowershide();
			}else{
				alert("您已经没有飞吻了");
			}
         }
     }); 
		
		break;
		}
	
	}
//设置cookies
function setCookie(name,value)
{
    var Days = 30;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days*24*60*60*1000);
    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();

}

//读取cookies
function getCookie(name)
{
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");

    if(arr=document.cookie.match(reg))

        return (arr[2]);
    else
        return null;
}
function _toRight(){
	var _mLeft = parseInt($("#UI_Left").css("margin-left"));

	if( _mLeft < 0){

		$("#UI_Left").animate({"margin-left":"2px"});

                $("#UI_Central").animate({"margin-left":"198px"});

	}else{

		$("#UI_Left").animate({"margin-left":"-192px"});
                $("#UI_Central").animate({"margin-left":"3px"});

	}

}
// 换肤
function showBglist(){
var bgList = '<img src="' + RoomInfo.bg + '" style="margin-right:5px;cursor:pointer;width:100px;height:55px;" onclick="changeBg(\'' + RoomInfo.bg + '\');">';
for(var i=2; i<=24; i++){
    bgList += '<img src="images/bg/' + i +'m.jpg" style="margin-right:5px;cursor:pointer;width:100px;height:55px;" onclick="changeBg(\'images/bg/' + i +'.jpg\');">';
}
    layer.open({
        type : 1,
        title : '换肤',
		shift: 5,
        area : ['650px','280px'],
        content : '<div id="roe-hf" style="height:242px;width:645px;padding-left:5px;">'+ bgList +'</div>'
    });
}

function changeBg(src){
    $(document.body).css({
        'background' : 'url('+src+')',
        'background-size' : '100% 100%'
    });
    $.cookie('bg_img',src, {expires: 365, path: '/'});
}

// 刷新所有客户端
function shuaxinkhd()
{
	if(check_auth('msg_block'))
    layer.confirm('<span style="font-color:red;color:red">确实要刷新客户端吗? </span>', function(index){
		var str='{"type":"refresh"}';
        ws.send(str);
        layer.close(index);
    });


}
var cc=0;
var mm='';
var sp='';
var msgjiange='';
function click_automsg(){
     if(!check_auth("room_admin")){
        return;
    }
    if(typeof($('#automsg').val())!='undefined'){
         mm =$('#automsg').val();
        sp =$('#msgjiange').val()*1000;
        setCookie("automsg",mm);
    }
   
   var msgstrs= new Array();  
    msgstrs=mm.split("\n"); 
    var renum=$("li[id^=x_]").length;
    if(renum==0){
        alert('当前没有在线机器人，不能自动发言！');
        return;
    }
    var treb=  parseInt(Math.random()*renum);
    if(cc==msgstrs.length || cc==100 ){
        cc=0;
        return;
    }
    var msgid=randStr()+randStr();
    var rebot_id=$("li[id^=x_]")[treb].id;
    if(msgstrs[cc].length>0){
    var Msg='C0MMAND_+_automsg_+_'+rebot_id+'_+_'+msgstrs[cc]+'_+_'+msgid;
	var msgstr='{"type":"Msgsay","ToUser":"ALL","Personal":"false","Style":"font-size:12pt","Msg":"'+Msg+'_+_ALL"}';
    ws.send(msgstr);
    var rebotInfo=UserList.get(rebot_id);
    RobotPutMessage(My.rid,rebotInfo.color,rebot_id,'ALL',rebotInfo.nick,My.nick,'大家',getId('Personal').value,'font-size:12pt',msgstrs[cc],msgid);
    }
    cc=cc+1;
    setTimeout("click_automsg()",sp);
  }
function  bt_automsg(){
     if(getCookie("automsg")!=null){var info=unescape(getCookie("automsg"));}else {info='';}
  var loadstr='<div style=" text-align:center;width:700px;height:300px;" onselectstart="return true;"><div>'
  	+'<textarea id="automsg" class="textarea" name="automsg"  style="width:720px;height:200px;margin:10px;">'+info+'</textarea>'
    	+'</div>'
	+'<div ><font color="red" size="3">发言期间可以关闭该窗口，但不要关闭浏览器，发言间隔(秒)：</font><input type="text" id="msgjiange" name="msgjiange" maxlength="16" style="height: 26px;">'
        +'<a href="javascript:void(0)" style="background-color: #f77a22;border-radius: 5px;padding: 10px 30px;font-size:15px;margin-left:40px;" onclick="click_automsg()">发     送</a></div></div>';
	layer.open({
		type: 1,
		title: '自动发言 (一行一条发言)',
		shadeClose: true,
		shade: false,
		shift: 5,
		area: ['750px', '300px'],
		content: loadstr //iframe的url
		});
    
}

