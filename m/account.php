<?php
require_once '../include/common.inc.php';
require_once '../admin/function.php';
require '../include/RedisCache.class.php';

if (!checkLogin()) {
    outputJson(['status' => 201, 'msg' => '未登录']);
}
$type = intval($_POST['type']);
$money = $_POST['money'];
/**
 * 结算
 */

if ($type == 1){
    require '../include/turn1.class.php';
    $user_id = $_SESSION['login_uid'];
    $turn = turn1::getPlayingTurn();
    require '../include/user_chip1.class.php';
    $userChipObj = new user_chip1();
//    $test = $userChipObj->isok();//调试下注
//    var_dump($test);die;

    //判断是否符合结算条件 chat_turn is_end = 1  和 开奖号码输入
    if ($turn) outputJson(['status' => 201, 'msg' => '当前期数还未结束']);
    $recent_turn_id = turn1::isEnd();
    $turn_id = $recent_turn_id['turn_id'];
    $checkTurnIsEnd = $userChipObj->checkTurnIsEnd($turn_id);
    if ($checkTurnIsEnd) outputJson(['status' => 201, 'msg' => '当前期数已结算']);

    require '../include/store_temp.class.php';
    $store_temp = new store_temp();
    $store_temp->clear_data();//清空当前用户总积分
    $price_num_check = $userChipObj->check_price_num($turn_id);
    if (!$price_num_check) outputJson(['status' => 201, 'msg' => '当前期数开奖号码还未输入']);

    $userChipObj->account($turn_id);
    outputJson(['status' => 200, 'msg' => '结算成功']);

//    $check = $userChipObj->checkStore($user_id,$turn_id,$money);
//    if (!$check) outputJson(['status' => 201, 'msg' => '余额不足，请充值！']);
//    $userChipObj->createChip($user_id, $turn_id, $money, $num);
//    outputJson(['status' => 200, 'msg' => '下注成功']);

}else{
    require '../include/turn.class.php';

}



