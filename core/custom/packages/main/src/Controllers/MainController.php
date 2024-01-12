<?php
namespace EvolutionCMS\Main\Controllers;

class MainController extends BaseController {

    public function setData()
    {
        $result = EvolutionCMS()->runSnippet('DocLister',[
            'parents' => 3,
            'depth' => 1,
            'tvPrefix' => '',
            'tvList' => 'news_photo',
            'display' => 3,
            'returnDLObject' => 1,
            'orderBy' => 'createdon DESC'
        ]);

        $this->data['news'] = $result->getDocs();
        $result = EvolutionCMS()->runSnippet('DocLister',[
            'parents' => 2,
            'depth' => 3,
            'tvPrefix' => '',
            'tvList' => 'item_price,item_photo',
            'display' => 8,
            'returnDLObject' => 1,
            'addWhereList' => 'c.template = 5',
            'orderBy' => 'RAND()'
        ]);
        $this->data['products'] = $result->getDocs();        
    }
}