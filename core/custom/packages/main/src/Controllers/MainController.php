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
            'orderBy' => 'createdon DESC',
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


        $value = json_decode(evolutionCMS()->documentObject['mainpage_servicelist'][1], true) ?? [];
        if (isset($value['fieldValue'])) {
            foreach ($value['fieldValue'] as $key => $src) {
                $value['fieldValue'][$key]['image'] = evo()->runSnippet('phpthumb', [
                    'input' => $src['image'],
                    'options' => 'w=400,h=300,zc=1'
                ]);
            }
        } else {
            $value = [];
        }
        $this->data['service_photos'] = $value['fieldValue'];
    }




    public static function resizeMainPhoto($data, $modx, $_DocLister, $_extDocLister){
		$data['mainphoto'] = $modx->runSnippet('phpthumb', ['input' => $data['news_photo'], 'options' => 'w=15,h=245,zc=1,far=C']);
		;
		return $data;
	}
}