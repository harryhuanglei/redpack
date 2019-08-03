<?php
class user_chip1
{
    /**
     * 龙虎榜
     */
    /**
     * 下注
     *
     * @param $user_id
     * @param $turn_id
     * @param $money
     * @return bool
     */
    public static function createChip($user_id, $turn_id, $money, $num)
    {
        global $db;
        //$user_chip = self::getByUserIdTurnId($user_id, $turn_id);
        $date = date('Y-m-d H:i:s');
        if (true) {
            $chip_log = json_encode([$money]);
            $sql = "insert into chat_user_chip (turn_id, user_id, money, num ,chip_log, create_time) values ('$turn_id', '$user_id', '$money','$num', '$chip_log', '$date')";
            $db->query($sql);
            return true;
        } else {
//            if ($user_chip['money'] == $money) {
//                return true;
//            }
            $chip_log = json_decode(['chip_log'], true);
            $chip_log = empty($chip_log) ? [] : $chip_log;
            $log = array_merge([$money], $chip_log);
            $log = json_encode($log);
            $sql = "update chat_user_chip set money='$money', num='$num', update_time='$date', chip_log='$log'  where user_chip_id='{$user_chip['user_chip_id']}'";
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


    /**
     * 检查分数
     *
     */

    public function checkStore($user_id, $turn_id, $money)
    {
        global $db;
        $sql        = "select sum(money) total from chat_user_chip where user_id='$user_id' and turn_id='$turn_id'";
        $rst        = $db->fetch_row($db->query($sql));
        $turn_money = $rst['total'];
        $total      = $turn_money + $money;
        $t_sql      = "select store from chat_user_store where user_id=$user_id";
        $user_info  = $db->fetch_row($db->query($t_sql));
        if (!$user_info) return false;
        $user_money = $user_info['store'];
        if ($total > $user_money) return false;
        return true;
    }

    /**
     *  结算
     *
     */
    public function account($turn_id = '')
    {
        global $db;
        $nums_sql = "select * from chat_user_accouts_nums where turn_id = $turn_id";
        $nums_rst = $db->fetch_row($db->query($nums_sql));
        $people_sql = "select * from chat_user_chip where turn_id = $turn_id";
        $people_rst_query = $db->query($people_sql);
        for ($i = 1; $i<=5; $i++){
            $kk = 'n'.$i;
            $nnum[] = $nums_rst[$kk];
        }
        $nnum_str = implode(',',$nnum);//开奖号码
        $input_num1 = $nnum[0];
        $input_num2 = $nnum[4];
        //单码
        while ($row = $db->fetch_row($people_rst_query) ){
            $user_id = $row['user_id'];
            $chip_id = $row['user_chip_id'];
            if ($row['num'] == '龙' ){
                $user_pick_money = $row['money'];
                if ($input_num1 < $input_num2)$change_money = $user_pick_money;
                else $change_money = -$user_pick_money;
                $this->change_user_money($user_id,$change_money,$turn_id,2,$nnum_str,$chip_id);
                continue;
            }

            if ($row['num'] == '虎' ){
                $user_pick_money = $row['money'];
                if ($input_num1 > $input_num2)$change_money = $user_pick_money;
                else $change_money = -$user_pick_money;
                $this->change_user_money($user_id,$change_money,$turn_id,2,$nnum_str,$chip_id);
                continue;

            }
            if ($row['num'] == '合' ){
                $user_pick_money = $row['money'];
                if ($input_num1 == $input_num2)$change_money = $user_pick_money;
                else $change_money = -$user_pick_money;
                $this->change_user_money($user_id,$change_money,$turn_id,7,$nnum_str,$chip_id);
                continue;

            }
            $userTurnNum = intval($row['num']);
            $check_nubmer = is_numeric($row['num']);

            if ($userTurnNum < 100000 && $userTurnNum >= 0 && $check_nubmer){
                $user_num = $row['num'];
                $five_num = $nnum;
                $ckeck = $this->isok($user_num,$five_num);
                $count = strlen($row['num']);
                $user_pick_money = $row['money'];
                $double = 1;
                if ($count == 1 && $ckeck == 1)$double = 2;
                if ($count == 1 && $ckeck == 2)$double = 3;
                if ($count == 1 && $ckeck == 3)$double = 5;
                if ($count == 1 && $ckeck == 4)$double = 10;
                if ($count == 1 && $ckeck == 5)$double = 13;
                if ($count == 2) $double = 4;
                if ($count == 3) $double = 16;
                if ($count == 4) $double = 40;
                if ($count == 5) $double = 70;
                if ($ckeck){
                    //押中
                    $db_money = $user_pick_money ;
                }else{
                    $db_money = -$user_pick_money;
                }
                $this->change_user_money($user_id, $db_money, $turn_id, $double, $nnum_str,$chip_id);
            }

        }

    }

    /**
     * 修改用户积分
     * @param $user_id
     * @param $money
     * @param $turn_id
     * @param $double
     * @param $nnum_str
     */

    public function change_user_money($user_id, $money, $turn_id, $double, $nnum_str, $chip_id)
    {
        global $db,$tablepre;
        $state_id=$db->query("select user_id,store from {$tablepre}user_store where user_id='$user_id' limit 1");
        $time=time();
        $row = $db->fetch_row($state_id);
        $user_store = $row['store'];
        if ($user_store < 0)return false;//防止出现负数
        if ($money >= 0){
            $change_money = $double * $money - $money;
        }
        if ($money < 0) {
            $change_money = $money;
        }
        $ch_user_store = $user_store + ($change_money);//结算积分
        $turn_money = abs($money);//用户下注积分
        if ($row) {
            $db->query("update {$tablepre}user_store set store='$ch_user_store' where user_id='$user_id'");

            $db->query("insert into {$tablepre}user_store_flow (`user_id`,`user_crrent_money`,`chip_id`,`turn_store`,`turn_double`,`turn_id`,`turn_num`, `status`,`store_change`,`desc`,`c_time`)
                        values('$user_id','$user_store','$chip_id','$turn_money','$double','$turn_id','$nnum_str','1','$change_money','auto','$time')");
        }
    }

    /**
     * 下注号码变成数组
     * @param string $str
     * @return array|bool
     */
    public function str2arr($str = '')
    {
        $comb = array();
        if (trim($str) == '') return false;

        if (strlen($str) == 1) {
            for ($i=0;$i<5;$i++){
                $comb[] = $str;
            }
            return $comb;
        }
        for ($i = 0;$i < strlen($str);$i++){
            $comb[] = $str[$i];
        }

        return $comb;
    }

    /**
     * 确认翻倍数
     * @param string $user_num
     * @param array $five_num
     * @return bool|int
     */
    public function isok($user_num = '',$five_num = array())
    {
//        $user_num = '22';
//        $five_num = ['2','2','2','4','6'];

        $user_num_arr = $this->str2arr($user_num);

        $temp_str = implode('',$five_num);
        $c = 0;
        $all = 0;

        foreach ($user_num_arr as $j2 => $z2){
            $pos = strpos($temp_str,$z2);
            if ($pos !== FALSE){
                //存在 截取掉
                $temp_str = $this->newstr($pos,$temp_str);
                $c++;
            }
            $all++;
        };
        //单码
        if (strlen($user_num) == 1){
            return $c;
        }
        return $all == $c  ? true:false;
    }

    /**
     * 传入位置 截取字符串
     * @param $j
     * @param $str
     * @return string
     */
    public function newstr($j,$str)
    {
        $len = strlen($str);
        $arr = array();
        for ($i = 0; $i < $len; $i++){
            if ($i != $j)$arr[] = $str[$i];
        }
        return implode('',$arr);
    }

    /**
     * 当前开奖号码是否输入
     */
    public function check_price_num($turn_id)
    {
        global $db,$tablepre;
        $query=$db->query("select * from {$tablepre}user_accouts_nums where turn_id='$turn_id' limit 1");
        $row = $db->fetch_row($query);
        return $row?true:false;
    }

    /**
     * 确认是否结算
     * @param $turn_id
     * @return bool
     */
    public function checkTurnIsEnd($turn_id)
    {
        global $db,$tablepre;
        $query=$db->query("select * from {$tablepre}user_store_flow where turn_id='$turn_id'");
        $row = $db->fetch_row($query);
        return $row?true:false;
    }



}