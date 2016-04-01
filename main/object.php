<?php
/**#数据对象映射模式
 *将对象和数据存储起来，对一个对象的操作会映射为对数据存储的操作
 *用于实时更新数据
 */

namespace main;


class object
{
    public $id;
    public $name;
    protected $db;

    function __construct($id)
    {
        $this->conn();
        $res = $this->db->query("select * from object where id = $id limit 1");
        $data = $res->fetch_assoc();

        $this->id = $data['id'];
        $this->name = $data['name'];
    }
    private function conn(){
        $this->db = new \main\database\mysqli;
        $this->db->connect('127.0.0.1','root','','db');
    }

    function __destruct()
    {
            $this->db->query("update object set  name = '{$this->name}'where
            id = {$this->id} limit 1");


    }
}