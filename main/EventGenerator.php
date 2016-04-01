<?php
/**#观察者模式
 *当一个对象状态发生改变时，依赖它的对象全部会收到通知，并自动更新
 *应用场景:时常更新，一系列数据的变化。
相同信息在不同目标中实现。

 */

namespace main;


abstract class EventGenerator {
    private $observers = array();

    function addObserver(Observer $observer)
    {
        $this->observers[] = $observer;
    }

    function notify()
    {
        foreach($this->observers as $observer)
        {
            $observer->update();
        }
    }

} 