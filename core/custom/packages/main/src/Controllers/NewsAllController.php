<?php
namespace EvolutionCMS\Main\Controllers;
class NewsAllController extends BaseController{
    public function setData()
    {
        $result = EvolutionCMS()->runSnippet('DocLister',[
            'parents' => 3,
            'depth' => 1,
            'tvPrefix' => '',
            'tvList' => 'news_photo',
            'returnDLObject' => 1,
            'paginate' => 'pages',
            'display' => 3,
            'TplPrevP' => '@CODE: <li class="page-item"><a class="page-link" href="[+link+]">&laquo;</a></li>',
            'TplNextP' => '@CODE: <li class="page-item"><a class="page-link" href="[+link+]">&raquo;</a></li>',
            'TplPage' => '@CODE: <li class="page-item"><a class="page-link" href="[+link+]">[+num+]</a></li>',
            'TplCurrentPage' => '@CODE: <li class="page-item"><span class="page-link">[+num+]</span></li>',
            'TplWrapPaginate'=>'@CODE: <ul class="pagination justify-content-center">[+wrap+]</ul>',
        ]);
        $this->data['news'] = $result->getDocs();    
    }
}