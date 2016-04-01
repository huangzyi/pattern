<?php
namespace main\Observer;
class Observer2 implements \main\Observer
{
    function update($event_info = null)
    {
       echo "逻辑2</br>";
    }
}