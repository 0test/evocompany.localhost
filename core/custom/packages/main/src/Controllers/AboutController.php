<?php

namespace EvolutionCMS\Main\Controllers;

class AboutController extends BaseController
{
    public function setData()
    {
        $data =
        evolutionCMS()->runSnippet('PageBuilder', [
            'container' => 'landing',
            'renderTo' => 'array'
        ]);
        $this->data['pagebuilder'] = $data[0];
    }
}
