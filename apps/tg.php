<?php
require_once '../include/common.inc.php';
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>推广链接</title>

<link href="css/layer.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/layer.js"></script>
<script type="text/javascript" src="js/phone.js"></script>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>   
<script src="https://cdn.jsdelivr.net/clipboard.js/1.5.12/clipboard.min.js"></script>  
</head>
<body>

<div class="the-code">
    <div class="the-header">
        <div class="the-title">
            <h3>推广链接</h3>
            <h3>享受下级分成</h3>
        </div>

    </div>
    <div class="the-content">
        <div class="the-tips">复制成功，即可把链接发送给您的朋友</div>
        <span class="code error" id="target"><?='http://'.$_SERVER['HTTP_HOST'].'/?rid='.$rid.'&t='.$_SESSION['login_uid'];?></span>
        <div class="updateBtn">
            <button class="btn" type="button" data-clipboard-action="copy" data-clipboard-target="#target" id="copy_btn">
                点击复制
            </button>
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        var clipboard = new Clipboard('#copy_btn');
        clipboard.on('success', function(e) {
            alert("复制成功",1500);
            e.clearSelection();
            console.log(e.clearSelection);
        });
    });
</script>
</body>
</html>