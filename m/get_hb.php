<?php
require_once '../include/common.inc.php';
require_once '../admin/function.php';
require '../include/turn.class.php';
require '../include/RedisCache.class.php';
require '../include/user_packet.class.php';

if (!checkLogin()) {
    outputJson(['status' => 201, 'msg' => '未登录']);
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

$redis_key = 'HB_TURN_' . $turn_id;
$user_redis_key = 'HB_GET_' . $turn_id;

$redis_cache = RedisCache::getInstance();
if ($redis_cache->get($user_redis_key)) {
    outputJson(['status' => 201, 'msg' => '您已经抢到红包了']);
}

$user_money = $redis_cache->rPop($redis_key);
if (empty($user_money)) {
    outputJson(['status' => 201, 'msg' => '红包已被抢光，等下一轮吧〜']);
}
user_packet::rob($turn_id, $user_id, $user_money);

$redis_cache->setnx($user_redis_key, 1);
$redis_cache->expire($user_redis_key, 86400);
outputJson(['status' => 200, 'msg' => '恭喜您抢到：'. $user_money]);


