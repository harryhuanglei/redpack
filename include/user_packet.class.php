<?php
class user_packet
{
    public static function rob($turn_id, $user_id, $money)
    {
        global $db;
        $turn_id = intval($turn_id);
        $user_id = intval($user_id);
        $money = floatval($money);

        $date = date('Y-m-d H:i:s');
        $sql = "insert into chat_user_packet (turn_id, user_id, user_money, create_time) values ('$turn_id', '$user_id', '$money', '$date')";
        $db->query($sql);
        return true;
    }
}