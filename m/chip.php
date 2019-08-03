<?php
require_once '../include/common.inc.php';
require_once '../admin/function.php';
require '../include/RedisCache.class.php';

if (!checkLogin()) {
    outputJson(['status' => 201, 'msg' => '未登录']);
}
$type = intval($_POST['type']);
$money = $_POST['money'];
if ($type == 1){
    require '../include/turn1.class.php';
    require '../include/store_temp.class.php';

//    if ($money < 1) {
//        outputJson(['status' => 201, 'msg' => '下注金额不能小于1元']);
//    }


    $user_id = $_SESSION['login_uid'];
    $turn = turn1::getPlayingTurn();

//    if ($turn['is_end'] == 1) {
//        outputJson(['status' => 201, 'msg' => '已停止下注，请按时下注！此次下注未成功']);
//    }
    $check = strpos($money,'/');
    if (is_numeric($check)){
        if (empty($turn)) {
            outputJson(['status' => 201, 'msg' => '已停止下注，请按时下注！此次下注未成功']);
        }

        $arr = explode('/',$money);
        if(count($arr) != 2 )outputJson(['status' => 201, 'msg' => '格式不对，正确格式:数字/金额，举例:1/200，龙/300，12/100']);
        $num = $arr[0];
        $money = $arr[1];
        $case_arr = array('龙','虎','合');
        if (!is_numeric($num) || !is_numeric($money) || $money <= 0) {
            if (!in_array($num,$case_arr)){
                outputJson(['status' => 201, 'msg' => '格式不对，正确格式:数字/金额，举例:1/200，龙/300，12/100']);
            }
        }
        if ($money < 50)outputJson(['status' => 201, 'msg' => '最低50积分']);

        //检测积分是否合格
        $turn_id = $turn['turn_id'];
        require '../include/user_chip1.class.php';
        $userChipObj = new user_chip1();
        $store_temp = new store_temp();

        $check = $userChipObj->checkStore($user_id,$turn_id,$money);

        if (!$check) outputJson(['status' => 201, 'msg' => '积分已经使用完！']);
        $userChipObj->createChip($user_id, $turn_id, $money, $num);
        $ii = $store_temp->total_sore($user_id,$money);
        outputJson(['status' => 200, 'msg' => '下注成功']);
    }
    return;
//    if(!$check) outputJson(['status' => 201, 'msg' => '下注格式不对']);




}else{
    require '../include/turn.class.php';

}





//type = 牛牛的
$money = intval($_POST['money']);
if ($money < 1) {
    outputJson(['status' => 201, 'msg' => '下注金额不能小于1元']);
}
$user_id = $_SESSION['login_uid'];
$turn = turn::getPlayingTurn();

if (empty($turn)) {
    outputJson(['status' => 201, 'msg' => '当前没有进行中的游戏']);
}
if ($turn['is_end'] == 1) {
    outputJson(['status' => 201, 'msg' => '当前游戏已经结束']);
}
$turn_id = $turn['turn_id'];
require '../include/user_chip.class.php';
$userChipObj = new user_chip();
$userChipObj->createChip($user_id, $turn_id, $money);

outputJson(['status' => 200, 'msg' => '下注成功']);


