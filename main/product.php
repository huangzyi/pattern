<?php
/**
 * Created by PhpStorm.
 * User: huangzyi
 * Date: 2016/3/31
 * Time: 1:07
 */

namespace main;


class product
{
    function __construct($id)
    {
        $this->createproduct($id);
    }
    function createproduct($id){
        echo "product_".$id." is created</br>";
    }
}