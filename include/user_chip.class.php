<?php
class user_chip
{
    /**
     * 下注
     *
     * @param $user_id
     * @param $turn_id
     * @param $money
     * @return bool
     */
    public static function createChip($user_id, $turn_id, $money)
    {
        global $db;
        $user_chip = self::getByUserIdTurnId($user_id, $turn_id);
        $date = date('Y-m-d H:i:s');
        if (empty($user_chip)) {
            $chip_log = json_encode([$money]);
            $sql = "insert into chat_user_chip (turn_id, user_id, money, chip_log, create_time) values ('$turn_id', '$user_id', '$money', '$chip_log', '$date')";
            $db->query($sql);
            return true;
        } else {
            if ($user_chip['money'] == $money) {
                return true;
            }
            $chip_log = json_decode(['chip_log'], true);
            $chip_log = empty($chip_log) ? [] : $chip_log;
            $log = array_merge([$money], $chip_log);
            $log = json_encode($log);
            $sql = "update chat_user_chip set money='$money', update_time='$date', chip_log='$log'  where user_chip_id='{$user_chip['user_chip_id']}'";
            $db->query($sql);
            return true;
        }
    }

    /**
     * 根据用户ID与turn_id获取信息
     *
     * @param $user_id
     * @param $turn_id
     * @return array|mixed
     */
    public static function getByUserIdTurnId($user_id, $turn_id)
    {
        global $db;
        $sql = "select * from chat_user_chip where user_id='$user_id' and turn_id='$turn_id'";
        $result = $db->fetch_row($db->query($sql));
        return empty($result) ? [] : $result;
    }



}