<?php
namespace main\Observer;
class Observer1 implements \main\Observer
{
    function update($event_info = null)
    {
       echo "逻辑1</br>";
    }
}