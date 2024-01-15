<?php

namespace EvolutionCMS\Main\Controllers;

class PortfolioOneController extends BaseController
{
    public function setData()
    {
        $value = json_decode(evolutionCMS()->documentObject['portfolio_photos'][1], true) ?? [];
        if (isset($value['fieldValue'])) {
            foreach ($value['fieldValue'] as $key => $src) {
                $value['fieldValue'][$key]['image'] = evo()->runSnippet('phpthumb', [
                    'input' => $src['image'],
                    'options' => 'w=600,h=400,zc=1'
                ]);
            }
            $value = $value['fieldValue'];
        } else {
            $value = [];
        }
        $this->data['photos'] = $value;
    }
}
