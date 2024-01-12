<?php
namespace EvolutionCMS\Main\Controllers;
class CatalogItemController extends BaseController{

	
	public function setData()  {
		$result = EvolutionCMS()->runSnippet('DocLister',[
			'parents' => 2,
			'depth' => 3,
			'tvPrefix' => '',
			'tvList' => 'item_price,item_photo',
			'display' => 4,
			'returnDLObject' => 1,
			'addWhereList' => 'c.id != ' . evolutionCMS()->documentObject['id'],
			'orderBy' => 'RAND()',
		]);
		$this->data['related_products'] = $result->getDocs();    
	}
}

