<?php
require_once '../include/common.inc.php';
require_once '../admin/function.php';
require_once '../include/RedisCache.class.php';

require_once PPCHAT_ROOT . './include/json.php';
$json = new JSON_obj;

if (!checkLogin()) {
    outputJson(['status' => 201, 'msg' => '未登录']);
}
$type = intval($_POST['type']);//1 积分显示


if ($type == 1){
    require '../include/turn1.class.php';
    $user_id = $_SESSION['login_uid'];
    $turn = turn1::getPlayingTurn();
    $turnObj = new turn1();
    $robot = array();
    if ($turn){
        $turn_id = $turn['turn_id'];
        $redis_cache = RedisCache::getInstance();
        $people = rand(30,50);
        $day = date('Ymd');
        $total_person = $redis_cache->lLen('GAME-NO-'.$day.'-'.$turn_id);//当前局所有的人
        /*$cur_times = $redis_cache->get('CURRENT_TIME');
        $cur_people = $redis_cache->get('CURRENT_PEOPLE-'.$turn_id.'-'.$user_id);
        if (!$cur_people){
            $ch = $redis_cache->get('CURRENT_MSG');
            $cur_people = $ch;
            $redis_cache->set('CURRENT_PEOPLE-'.$turn_id.'-'.$user_id,$ch,600);
        }*/
        if ($total_person > 0 || $cur_times == $turn_id ){
            $action_time = $redis_cache->get('ROBOT_ACTION_TIME');//三秒之后在开始
            if (!$action_time){
                if ( $user_id == 1 ){
                    //只有admin 占用分配机器人线程
                    $ms = rand(0,100);//百分之60的概率发
                    if ($ms){
                        $mms = rand(1,2);
                        for ($i = 0;$i < $mms;$i++){
                            $cur_people_ch = $cur_people + $i;
                            $cash_msg = $redis_cache->lPop('GAME-NO-'.$day.'-'.$turn_id);
                            $msg_say = json_decode($cash_msg,true);
                            $uid = $msg_say['uid'];
                            $name = $msg_say['name'];
                            $chip = $msg_say['chip'];
                            $robot[] = $msg_say?$msg_say:[];
//                            if ($cash_msg && $user_id == 1):
//                                $msg_id = $turnObj->insert_log($uid,$name,"下注成功:".$chip);
//                            endif;
                        }
                    }

                }
                /*$ms = rand(0,10);
                $du = 1;
                if ($ms > 6 && $cur_people <=$total_person ){
                    $yu = $total_person-$cur_people;
                    if ( $yu > 1){
                        $mms = rand(1,2);
                        for ($i = 0;$i < $mms;$i++){
                            $cur_people_ch = $cur_people + $i;
                            $cash_msg = $redis_cache->lRange('GAME-NO-'.$day.'-'.$turn_id,$cur_people_ch,$cur_people_ch);

                            $msg_say = json_decode($cash_msg[0],true);
                            $uid = $msg_say['uid'];
                            $name = $msg_say['name'];
                            $chip = $msg_say['chip'];
                            $robot[] = $msg_say?$msg_say:[];
                            if ($cash_msg && $user_id == 1):
                                $msg_id = $turnObj->insert_log($uid,$name,"下注成功:".$chip);
                            endif;
                            $du = 2;
                        }
                    }else{
                        $cash_msg = $redis_cache->lRange('GAME-NO-'.$day.'-'.$turn_id,$cur_people,$cur_people);
                        $msg_say = json_decode($cash_msg,true);
                        $uid = $msg_say['uid'];
                        $name = $msg_say['name'];
                        $chip = $msg_say['chip'];
                        $robot[] = $msg_say;
                        if ($msg_say && $user_id == 1 && $cur_people <=$total_person):
                            $turnObj->insert_log($uid,$name,"下注成功:".$chip);
                        endif;
                    }
                    $add_du = $cur_people + $du;
                    $redis_cache->set('CURRENT_PEOPLE-'.$turn_id.'-'.$user_id,$add_du,600);
                    if ($user_id ==1 )$redis_cache->set('CURRENT_MSG',$cur_people+$du);
                }*/

            }
        }


    }else{
        $recent_turn_id = turn1::isEnd();
        $turn_id = $recent_turn_id['turn_id'];
    }
    $account = $turnObj->getUserAccount($user_id,$turn_id);
    outputJson(['code' => 200, 'account'=>$account,'robot'=>$robot]);


}else{
    require '../include/turn.class.php';

}



