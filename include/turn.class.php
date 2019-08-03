<?php
class turn
{




    /**
     * 获取正在运行的数据
     *
     * @return array|mixed
     */
    public static function getPlayingTurn()
    {
        global $db;
        $sql = "select * from chat_turn where is_end=0";
        $query = $db->query($sql);
        $result = $db->fetch_row($query);
        return $result ? $result : [];
    }

    /**
     * 开始下注
     *
     * @return int|string
     */
    public static function start()
    {
        global $db;
        $create_time = date('Y-m-d H:i:s');
        $sql="insert into chat_turn (`join_num`, `is_end`, `create_time`) values (0, 0, '{$create_time}')";
        $db->query($sql);
        $turn_id = $db->insert_id();
        return $turn_id;
    }

    /**
     * 结束下注
     *
     * @return bool
     */
    public static function end()
    {
        global $db;
        $play_turn = self::getPlayingTurn();
        if (empty($play_turn)) {
            return false;
        }

        $sql = "update chat_turn set is_end=1 where turn_id='{$play_turn['turn_id']}'";
        $db->query($sql);
        return true;
    }
}