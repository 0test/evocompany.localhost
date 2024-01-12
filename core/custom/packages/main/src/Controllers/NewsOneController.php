<?php
namespace EvolutionCMS\Main\Controllers;
class NewsOneController extends BaseController{

	
	public function setData()  {
		$result = EvolutionCMS()->runSnippet('DocLister',[
			'parents' => 3,
			'depth' => 1,
			'tvPrefix' => '',
			'tvList' => 'news_photo',
			'display' => 3,
			'returnDLObject' => 1,
			'addWhereList' => 'c.id != ' . evolutionCMS()->documentObject['id'],
			'orderBy' => 'RAND()',
		]);
		$this->data['other_news'] = $result->getDocs();    
	}
}

