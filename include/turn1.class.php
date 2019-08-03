<?php
class turn1
{




    /**
     * 获取正在运行的数据
     *
     * @return array|mixed
     */
    public static function getPlayingTurn()
    {
        global $db;
        $sql = "select * from chat_turn where is_end=0 and `type` = 1 order by turn_id desc ";
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
        $sql="insert into chat_turn (`join_num`, `is_end`, `create_time`,`type`) values (0, 0, '{$create_time}',1)";
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

        $sql = "update chat_turn set is_end=1 where turn_id='{$play_turn['turn_id']}' and `type`=1";
        $db->query($sql);
        return true;
    }

    /**
     * 自动结算
     * @param
     *
     */

    public function account($arr=array())
    {
        global $db;
        $arr = [1,2,3];
        $play_turn = self::getPlayingTurn();
        $all_mems_sql = "select * from chat_user_chip where turn_id = '{$play_turn['turn_id']}' and `type`=1";
        $all_mems = $db->query($all_mems_sql);
        if ($all_mems){
            foreach ($all_mems as $k => $v){
                if (in_array($v['num'],$arr)){
                    //价钱
                }else{
                    //赔钱

                }
            }

        }

    }

    /**
     * 当前游戏是否结束
     * @return bool
     */

    public static function isEnd()
    {
        global $db;
        $sql = "select * from chat_turn where `type` = 1 order by turn_id desc";
        $query = $db->query($sql);
        $result = $db->fetch_row($query);
        $is_end = $result['is_end'];
        if ($is_end == 1) return $result;
        return false;
    }

    /**
     * 查询用余额
     * @param $user_id
     * @return int
     */
    public function getUserAccount($user_id,$turn_id)
    {
        global $db;
        $turn_id = $turn_id?$turn_id:0;
        $xmoney = 0;
        $xsql = "select sum(money) total from chat_user_chip where user_id='$user_id' and turn_id='$turn_id'";
        $rst = $db->fetch_row($db->query($xsql));
        $x_total = $rst['total'];

        $flow_check = "select * from chat_user_store_flow where turn_id = $turn_id";
        $frst = $db->fetch_row($db->query($flow_check));

        //如果有流水 本轮次就结算了 不需要减下注本金
        if (!$frst) $xmoney = $x_total;

        $sql = "select * from chat_user_store where user_id = $user_id";
        $query = $db->query($sql);
        $result = $db->fetch_row($query);

        $store = $result['store'] - $xmoney;
        if ($result) return $store;
        else return 0;
    }

    /**
     * 检测当前是否还有人未结算
     *
     */
    public static function AccountIsEnd($turn_id)
    {
        global $db;
        $turn_id = $turn_id?$turn_id:0;
        $sql = "select * from chat_user_chip where turn_id = $turn_id limit 1";
        $row = $db->fetch_row($db->query($sql));
        if (!$row)return true;
        $user_id = $row['user_id'];
        $has_sql = "select * from chat_user_store_flow where user_id = $user_id and turn_id = $turn_id limit 1";
        $check_row = $db->fetch_row($db->query($has_sql));
        if ($check_row)return true;
        return false;
    }

    /**
     * 检测当前开奖号码是否是输入
     * @param $turn_id
     * @return bool
     */
    public function numIsInput($turn_id)
    {
        global $db;
        $turn_id = $turn_id?$turn_id:0;
        $sql = "select * from chat_user_accouts_nums where turn_id = $turn_id limit 1";
        $row = $db->fetch_row($db->query($sql));
        if ($row)return true;
        return false;
    }

    /**
     * 下注记录
     */
    public function recent_record()
    {
        global $db;
        $sql = "select * from  chat_user_accouts_nums order by id desc limit 20";
        $query = $db->query($sql);
        while ($row = $db->fetch_row($query) ){
            $n1 = $row['n1'];
            $n2 = $row['n2'];
            $n3 = $row['n3'];
            $n4 = $row['n4'];
            $n5 = $row['n5'];
            $arrr = array($n1,$n2,$n3,$n4,$n5);
            sort($arrr);
            $arr_str = implode('',$arrr);
//            $nn1 = $n1<$n2?($)

            $last = $n1>$n5?'<img style="width:20px;height: 20px;" src="/face/pic/m/jx.gif">':($n1<$n5?'<img style="width:20px;height: 20px;" src="/face/pic/m/kx.gif">':'<img style="width:20px;height: 20px;" src="/face/pic/m/hhee.gif">');
            $num_str = "<b style='font-size:13px;'>".$arr_str."</b>".$last."";

            $arr[] = $num_str;
        }
        return array_reverse($arr);

    }

    /**
     * 走势图说明文字
     * @return string
     */
    public function walk_content()
    {
        global $db;
        $sql = "select * from  chat_config where rid = 2";
        $query = $db->query($sql);
        $row = $db->fetch_row($query);
        if ($row['walk']) return $row['walk'];
        return '';

    }
    /**
     * 走势图说明文字
     * @return string
     */
    public function end_content()
    {
        global $db;
        $sql = "select * from  chat_config where rid = 2";
        $query = $db->query($sql);
        $row = $db->fetch_row($query);
        if ($row['end_edit']) return $row['end_edit'];
        return '';

    }

    /**
     * 个人下注记录
     */

    public function person_record()
    {

    }

    /**
     * 机器人下注值
     *
     */
    public function robot_chip()
    {
        global $db;
        $which = rand(0,100);
        if ($which <= 80){
            $money_rand = rand(0,100);
            if ($money_rand <= 80) $dan = rand(50,1000);
            if ($money_rand >80 && $money_rand <= 100) $dan = rand(1000,5000);
        }
        if ($which > 80 && $which < 90)$dan= rand(50,500);
//        if ($which >= 9 && $which <= 10)$dan= rand(50,200);
        $len     = strlen($dan);
        $ff      = rand(2, $len - 1);
        $money   = round($dan, -$ff);//下注金额 单注
        if ($money == 0 )$money = 50;
        $chipnum = $which > 80 ? 2:1;
        $num     = $this->chip_num($chipnum);//下注号码
        if (!$num) $num = 1;
        $userid  = rand(1, 489);
        $sql     = "select * from  chat_rebotslist where id = $userid";
        $query   = $db->query($sql);
        $row     = $db->fetch_row($query);
        $name    = $row['name'];
        $uid     = rand(1, 40);
//        $this->insert_log($row['id'],$row['name'],"下注成功:$num/$money");
        return ['uid'=>$uid,'name'=>$name,'chip'=>"$num/$money"];
    }

    public function chose_robot()
    {
        global $db,$tablepre;
        $rid = 2;
        $roomListUser = array();
        $roomListUserJsonStr = array("type" => "UonlineUser", "stat" => "OK");
        $roomUser = array("chatid" => "", "state" => "0", "nick" => "", "color" => "1" ,"mood" => "");
        if(check_auth('room_admin')) $roomUser['state'] = '3';
        $r0_max = 30;
        if ($r0_max > 0) : for ($i = 0; $i < $r0_max; $i++) : $roomUser['chatid'] = 'x_r' . $i;
            //$roomUser['sex'] = rand(0, 2);
            //$roomUser['cam'] = rand(0, 2);
            //$roomUser['nick'] = '游客' . strtoupper(substr(md5(microtime() + mt_rand(1000, 9900) - mt_rand(1, 100)), 0, 4));
            $roomUser['nick'] = '游客' . mt_rand(100000,999999);
            $roomUser['color'] = '17';
            $roomListUser[] = $roomUser; endfor; endif;
        $query = $db->query("select * from {$tablepre}rebotslist where rid='$rid'");
        $rebots_arr = array();
        while ($row = $db->fetch_row($query)){
            $date=date("H:i:s");
            $week=date("w");
            if($date>=$row['stime'] && $date<=$row['etime'] && strstr($row['week']."n",$week)){
                $rebots_arr[] = $row;
            }
        }
        $count = count($rebots_arr);
        $youkeCount = count($roomListUser);
        for ($i = 0; $i < $count; $i++) {
            $roomUser['chatid'] = 'x_r' . ($youkeCount + $i);
            //$roomUser['sex'] = rand(0, 2);
            //$roomUser['cam'] = rand(0, 2);
            $roomUser['color'] = $rebots_arr[$i]['rgroup'];
            $roomUser['nick'] = $rebots_arr[$i]['name'];
            $roomListUser[] = $roomUser;
        }
        $roomListUserJsonStr['roomListUser'] = $roomListUser;
        return $roomListUserJsonStr;
        $data = $json->encode($roomListUserJsonStr);
        exit($data);
    }

    /**
     * 保存下注记录
     * @param $uid
     * @param $uname
     * @param $msg
     */
    public function insert_log($uid,$uname,$msg)
    {
        global $db;
        $sql = "insert into chat_chatlog(rid,ugid,uid,tuid,uname,tname,p,msg,mtime,msgid,ip,state,type)
				  values(2,2,'$uid','ALL','$uname','大家','false','$msg'," . time() . ",'robot','127.0.0.1','8','0')";
        $db->query($sql);
        $turn_id = $db->insert_id();
        return $turn_id;

    }
    public function chip_num($type)
    {
        if ($type == 1){
            //单注
            $k = rand(0,13);
            $arr = ['0','1','2','3','4','5','6','7','8','9','龙','虎'];
            return $arr[$k];
        }
        if ($type ==2){
            //2z2 3z3
            $k = rand(10,98);
            $array = [11,22,33,44,55,66,77,88];
            if (in_array($k,$array))return '合';
            return $k;

        }
        if ($type == 3 ){
            $k = rand(1,5);
            if ($k >3){
                return rand(10000,99999);
            }
            return rand(1000,9999);
        }
    }

    public function getMsgMax()
    {
        global $db;
        $sql = "select id from chat_chatlog where state = 8 order by id desc limit 1 ";
        $row = $db->fetch_row($db->query($sql));
        return $row['id'];
    }


}
