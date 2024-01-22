<?php
namespace EvolutionCMS\Main\Controllers;
class SitemapController extends BaseController
{
    public function setData()
    {
        $sitemap = evo()->runSnippet('DLSitemap', [],0,'sitemap');
        $this->data['sitemap'] = $sitemap;
    }
}
