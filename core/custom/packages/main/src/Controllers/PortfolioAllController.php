<?php
namespace EvolutionCMS\Main\Controllers;
class PortfolioAllController extends BaseController{
    public function setData()
    {
        $result = EvolutionCMS()->runSnippet('DocLister',[
            'parents' => 23,
            'depth' => 1,
            'tvPrefix' => '',
            'tvList' => 'portfolio_mainphoto',
            'returnDLObject' => 1,
        ]);
        $this->data['our_works'] = $result->getDocs();    
    }
}