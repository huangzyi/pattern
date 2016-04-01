<?php
/**#单例模式
 *只需要1个对象.
 *无论调用多少次，整个应用程序中某个实例有且仅有一个
 *例：数据库。
 */
namespace main;


class single{
    static private $single;

    private function __construct()
    {
        echo "I'm single</br>";
    }

    static function only()
    {
        if (empty(self::$single)) {
            self::$single = new self;
            return self::$single;
        } else {
            return self::$single;
        }
    }
}