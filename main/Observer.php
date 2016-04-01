<?php
namespace main;

interface Observer
{
    function update($event_info = null);
}