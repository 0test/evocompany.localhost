<?php
namespace EvolutionCMS\Main\Controllers;
class BaseController{
    public $data = [];
    public function __construct() {
        $this->setData();
        $this->sendToView();
    }
    public function setData()
    {
        /**
         * этот метод будет вызывать в других контроллерах
         * и именно в нём будем задавать значения для 
         * переменной $data
         */
    }
    public function sendToView()
    {
        EvolutionCMS()->addDataToView($this->data);
        return $this;
    }    
}