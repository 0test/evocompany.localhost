<?php
namespace EvolutionCMS\Main\Controllers;
class BaseController{
    public $data = [];
    public function __construct() {
        $this->setData();
        $this->setGlobalElements();
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

    /**
     * Всё, что будет вызвано в этом методе,
     * будет на сайте всегда
     */
    public function setGlobalElements() {
        $this->data['mainmenu'] = $this->getMainMenu()[0];
        $this->data['footermenu'] = $this->getFooterMenu()[0];
    }

    public function sendToView()
    {
        EvolutionCMS()->addDataToView($this->data);
        return $this;
    }


    public function getMainMenu() {
        $menu = EvolutionCMS()->runSnippet('DLMenu',[
            'parents' => 0,
            'maxDepth' => 1,
            'returnDLObject' => 1
        ]);
        return $menu->getMenu();
    }
    public function getFooterMenu() {
        $menu = EvolutionCMS()->runSnippet('DLMenu',[
            'documents' => [4,5],
            'maxDepth' => 1,
            'returnDLObject' => 1
        ]);
        return $menu->getMenu();
    }     
}