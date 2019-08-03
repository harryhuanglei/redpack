<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
		<div id="sidebar-content" style="overflow: hidden; width: auto; height: 100%;">
          
          <ul id="nav">
		
            <li  <?php if($php_self=='index.php') echo 'class="current"'; ?>>
              <a href="index.php">
                <i ><img src="images/ziliao.png"  width="20">
                </i>
                我的资料
              </a>
            </li>
            
            
            <li <?php if($php_self=='editpwd.php') echo 'class="current"'; ?>>
              <a href="editpwd.php">
                <i ><img src="images/mima.png"  width="20">
                </i>
                修改密码
              <i class="arrow icon-angle-left"></i></a>
              
            </li>
			<?php if($u[adminid]==3){ ?>
            <li <?php if($php_self=='tuiguang.php') echo 'class="current"'; ?>>
              <a href="tuiguang.php">
                <i ><img src="images/tuiguang.png"  width="20"></i>
                我的推广
              </a>
            </li>
			<?php } ?>
            <li <?php if($php_self=='consume.php') echo 'class="current"'; ?>>
              <a href="consume.php">
                <i ><img src="images/xiaofei.png"  width="20"></i>
                我的消费
              <i class="arrow icon-angle-left"></i></a>
              
            </li>
             <li <?php if($php_self=='am_tixian.php') echo 'class="current"'; ?>>
              <a href="am_tixian.php">
                <i ><img src="images/xiaofei.png"  width="20"></i>
                我的提现
              <i class="arrow icon-angle-left"></i></a>
              
            </li>
			<li <?php if($php_self=='dingdan.php') echo 'class="current"'; ?>>
              <a href="dingdan.php">
                <i ><img src="images/xiaofei.png"  width="20"></i>
                我的充值
              <i class="arrow icon-angle-left"></i></a>
              
            </li>
            <li <?php if($php_self=='pay.php') echo 'class="current"'; ?>>
              <a href="pay.php">
                <i ><img src="images/chongzhi.png"  width="20"></i>
                充值
              <i class="arrow icon-angle-left"></i></a>
              
            </li>
            
            <li <?php if($php_self=='tixian.php') echo 'class="current"'; ?>>
              <a href="tixian.php">
                <i ><img src="images/tixian.png"  width="20"></i>
                提现
              <i class="arrow icon-angle-left"></i></a>             
            </li>    
          </ul>
          
    </div>
 </div>