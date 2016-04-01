<?php
/**#迭代器模式
 *在不了解内部实现的前提下，遍历一个聚合对象的内部元素。
 *可以隐藏遍历模式的操作
 */

namespace main;


class allObjects implements \Iterator
{
    protected $ids;
    protected $data = array();
    protected $index;

    function __construct()
    {
        $db = factory::getDatabase();
        $result = $db->query("select id from object");
        $this->ids = $result->fetch_all(MYSQLI_ASSOC);
    }

    function current()
    {
        $id = $this->ids[$this->index]['id'];
        return Factory::getobject($id);
    }

    function next()
    {
        $this->index ++;
    }

    function valid()
    {
        return $this->index < count($this->ids);
    }

    function rewind()
    {
        $this->index = 0;
    }

    function key()
    {
        return $this->index;
    }
}