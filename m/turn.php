<?php
require_once '../include/common.inc.php';
require_once '../admin/function.php';
require_once '../include/RedisCache.class.php';


$type = intval($_POST['type']);
$act  = $_POST['act'];
if ($type == 1){
    require '../include/turn1.class.php';
    $turn = turn1::getPlayingTurn();
    if ($act == 'walk'){
        if (!empty($turn)) {
            outputJson(['status' => 201, 'msg' => '当前有正在进行中的游戏']);
        }
        $recent_turn_id = turn1::isEnd();
        $turn_id = $recent_turn_id['turn_id'];
        $check_account = turn1::numIsInput($turn_id);
        if (!$check_account) outputJson(['status' => 201, 'msg' => '开奖号码还未输入']);

        $record = turn1::recent_record();
        $walk_content = turn1::walk_content();
        $end = end($record);
        $other = '当前第'.$turn_id.'期开奖结果：'.$end;
        outputJson(['status' => 200, 'msg' => '操作成功','data' => ['record'=>$record,'content'=>$walk_content,'other'=>$other]]);
    }

    if($act == 'end'){
        $result = turn1::end();
//        $record = turn1::recent_record();
        $end_content = turn1::end_content();
        outputJson(['status' => 200, 'msg' => '结束成功','data' => ['content'=>$end_content]]);
    }
    if (!empty($turn)) {
        outputJson(['status' => 201, 'msg' => '当前有正在进行中的游戏']);
    }
    $recent_turn_id = turn1::isEnd();
    $turn_id = $recent_turn_id['turn_id'];
    $check_account = turn1::AccountIsEnd($turn_id);
    if (!$check_account) outputJson(['status' => 201, 'msg' => '当前期数还人未结算']);
    if ($act == 'start'){

        $result = turn1::start();
        //
        $redis_cache = RedisCache::getInstance();
        $day = date('Ymd');
        $turnObj = new turn1();
        $people = rand(30,50);
        $redis_cache->set('ROBOT_ACTION_TIME',3,3);
        $redis_cache->set('CURRENT_TIME',$result);
        $redis_cache->set('CURRENT_PEOPLE',$people);
        $redis_cache->set('CURRENT_MSG',0);
        for ($i=0;$i<$people;$i++){
            $robot_msg = $turnObj->robot_chip();
            $redis_cache->lPush('GAME-NO-'.$day.'-'.$result,json_encode($robot_msg));
        }

        outputJson(['status' => 200, 'msg' => '开始成功','data'=>['current_times'=>$result]]);
    }

}else{
    require '../include/turn.class.php';

    $turn = turn::getPlayingTurn();

    if (!empty($turn)) {
        outputJson(['status' => 201, 'msg' => '当前有正在进行中的游戏']);
    }

    $result = turn::start();
    outputJson(['status' => 200, 'msg' => '操作成功']);
}



