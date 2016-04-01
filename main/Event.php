<?php
/**
 * Created by PhpStorm.
 * User: huangzyi
 * Date: 2016/4/1
 * Time: 17:46
 */

namespace main;


class Event extends \main\EventGenerator
{
    function trigger(){
        echo "Event</br>";
        $this->notify();
    }
}
