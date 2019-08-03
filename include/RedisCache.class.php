<?php
class RedisCache extends \Redis
{
    private static $instances;
    public function __construct($config=[])
    {
        if (!empty($config)) {
            /*
            foreach ($config['options'] as $name => $value) {
                $this->setOption($name, $value);
            }*/
        }
        $this->pconnect($config['host'], $config['port'], $config['timeout']);
    }

    public static function getInstance()
    {
        if (!empty(self::$instances)) {
            return self::$instances;
        }

        $config = [
            'type' => 'redis',
            'host' => '127.0.0.1',
            'port' =>  '6379',
            'persistent' => false, //是否启用
            'prefix' => 'queue',
            'password' =>  '', // 密码
        ];
        if (empty($config)) {
            throw new \Exception("Cache_Redis has no server config ");
        }
        self::$instances = new self($config);
        return self::$instances;
    }
}
