<?php
class chip
{
    /**
     * 获取筹码列表
     *
     * @param $chat_id
     * @return array
     */
    public static function getList($chat_id)
    {
        global $db;
        $chat_id = intval($chat_id);
        $sql = "select * from chat_chip where chat_id='{$chat_id}'";
        $query=$db->query($sql);
        $list = [];
        while ($result = $db->fetch_row($query)) {
            $list[] = $result;
        }
        return $list;
    }

    /**
     * 删除筹码
     *
     * @param $chip_id
     * @return bool
     */
    public static function del($chip_id)
    {
        global $db;
        $chip_id = intval($chip_id);
        $sql = "delete from chat_chip where chip_id='{$chip_id}'";
        $query = $db->query($sql);
        return true;
    }

    public static function getUserChipHtml($chat_id)
    {
        $list = self::getList($chat_id);
        $html = "";
        foreach ($list as $key => $value) {
            $html .= '<div style="text-align: center;padding-top:10px;"><button class="layui-btn layui-btn-primary" id="add" style="background-color:#076aa3;color:#ffffff;">'.$value['chip_name'].'</button></div>';
        }
        return $html;
    }

}