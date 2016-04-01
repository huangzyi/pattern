<?php
define('BASEDIR', __DIR__);
include BASEDIR.'\main\autoload.php';
//工厂模式
$product_{1} = \main\factory::product(1);
//单例模式
$only = \main\factory::single();
$only = \main\factory::single();
$only = \main\factory::single();

//迭代器模式
$objects = new \main\allObjects();
foreach($objects as $object)
{
    //var_dump($object);
}

//数据对象映射模式
$object_1 = \main\factory::getobject(1);

//观察者模式
$event = new \main\Event();
$event->addObserver(new \main\Observer\Observer1);
$event->addObserver(new \main\Observer\Observer2);
$event->trigger();


