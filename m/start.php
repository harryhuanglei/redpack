<?php
require_once '../include/common.inc.php';
require_once  '../admin/function.php';

if (!checkLogin()) {
    outputJson(['status' => 201, 'msg' => '未登录']);
}

$uid = $_SESSION['login_uid'];
if ($uid != 1) {
    outputJson(['status' => 201, 'msg' => '您没有权限操作']);
}


require '../include/turn.class.php';
require '../include/RedisCache.class.php';
require '../include/Reward.php';
$rewardObj    = new Reward();
$rewardArr = $rewardObj->getReward($money, $money_total);

$turn = turn::getPlayingTurn();
if (empty($turn)) {
    outputJson(['status' => 201, 'msg' => '当前没有进行中的游戏']);
}
if ($turn['is_send_hb'] == 1) {
    outputJson(['status' => 201, 'msg' => '此轮红包已经发送']);
}
if ($turn['is_end'] == 1) {
    outputJson(['status' => 201, 'msg' => '当前游戏已经结束']);
}

$turn_id = $turn['turn_id'];
$redis_key = 'HB_TURN_' . $turn_id;
$redis_cache = RedisCache::getInstance();
foreach ($rewardArr as $reward) {
    $redis_cache->lPush($redis_key, $reward);
}
$sql = "update chat_turn set is_send_hb=1 where turn_id=$turn_id";
$db->query($sql);
outputJson(['status' => 200, 'msg' => '操作成功']);
?>
