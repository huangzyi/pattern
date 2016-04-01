<?php
/*#适配器模式
*功能：可以将截然不同的函数接口封装成统一的API。
*应用：1. 数据mysql、mysqli、pdo模式统一成一致；
      2. 不同缓存函数统一。
*/
namespace main;

interface Adapter
{
    function connect($host, $user, $passwd, $dbname);
    function query($sql);
    function close();
}