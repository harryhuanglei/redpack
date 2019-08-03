<?php
require_once '../../include/common.inc.php';
require_once '../function.php';
//if(stripos(auth_group($_SESSION['login_gid']),'users_admin')===false)exit("没有权限！");
$act  = $_POST['act'];
$val = $_POST['val'];
//echo json_encode($_POST);die;
if($act=="clear"){
    if ($val == 2){
        //清空聊天记录
        $info =  clear_chat_log();
        exit($info);
    }elseif($val == 1){
        //清空当前期数
        $info =  clear_day_act();
        exit($info);

    }
}


?>