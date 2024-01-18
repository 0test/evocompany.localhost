<?php

namespace EvolutionCMS\Main\Controllers;
class XmlSitemapController extends BaseController
{

    public function setData()
    {
        $sitemap = evo()->runSnippet('DLSitemap', [
        ]);
        $this->data['sitemap'] = $sitemap;
    }
}
