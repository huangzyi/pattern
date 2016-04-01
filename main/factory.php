<?php
/*#工厂模式
*实例化对象，用工厂方法代替new操作
*减少具体实例化时出的错
*/
namespace main;
class factory{
    static function product($id)
    {
        $product_{'id'}=new product($id);
        return $product_{'id'};
    }
    static function single()
    {
        $single = \main\single::only();
        return $single;
    }
   static public function getDatabase(){
        $db = new \main\database\mysqli;
        $db->connect('127.0.0.1','root','','db');
        return $db;
    }
    static function getobject($id){
        $key = 'object'.$id;
        $object=Register::get($key);
        if(!$object){
            $object = new object($id);
            Register::set($key,$object);
        }
        return $object;
    }



}