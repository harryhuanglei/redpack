<?php
class store_temp
{


    /**
     * 统计当前下注的总积分
     *
     * @return array|mixed
     */
    public function total_sore($uid,$store)
    {
        global $db;
        $up_time = date('Y-m-d H:i:s');
        $sql = "select * from chat_user_store_temp where uid = $uid";
        $userinfo = $db->fetch_row($db->query($sql));
        if ($userinfo){
            //有记录
            $curr_store = $userinfo['store'];
            $store = intval($store + $curr_store);
            $up_sql = "update chat_user_store_temp set store = $store where uid = $uid";
            $db->query($up_sql);
        }else{
            //新增
            $sql = "insert into chat_user_store_temp(uid,store,up_time) value ($uid,$store,'$up_time')";
            $db->query($sql);
        }

    }

    /**
     * 清空temp表
     */
    public function clear_data()
    {
        global $db;
        $sql = "truncate chat_user_store_temp";
        $db->query($sql);
    }







}


