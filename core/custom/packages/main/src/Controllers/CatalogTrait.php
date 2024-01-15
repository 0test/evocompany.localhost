<?php

namespace EvolutionCMS\Main\Controllers;

/**
 * Трейт для использования 
 * в каталоге и разделах
 */
trait CatalogTrait
{
      public function getCatalog($parent = null)
      {
            $result = evo()->runSnippet('DocLister', [
                  'parents' => empty($parent) ? 2 : $parent,
                  'depth' => 3,
                  'tvPrefix' => '',
                  'tvList' => 'item_price,item_photo',
                  'returnDLObject' => 1,
                  'paginate' => 'pages',
                  'display' => 6,
                  'TplPrevP' => '@CODE: <li class="page-item"><a class="page-link" href="[+link+]">&laquo;</a></li>',
                  'TplNextP' => '@CODE: <li class="page-item"><a class="page-link" href="[+link+]">&raquo;</a></li>',
                  'TplPage' => '@CODE: <li class="page-item"><a class="page-link" href="[+link+]">[+num+]</a></li>',
                  'TplCurrentPage' => '@CODE: <li class="page-item"><span class="page-link">[+num+]</span></li>',
                  'TplWrapPaginate' => '@CODE: <ul class="pagination justify-content-center">[+wrap+]</ul>',
            ]);
            $this->data['products'] = $result->getDocs();
            $this->data['pages'] = evolutionCMS()->getPlaceholder('pages');
      }

      public function getCatalogMenu()
      {
            $menu = EvolutionCMS()->runSnippet('DLMenu', [
                  'parents' => 2,
                  'maxDepth' => 1,
                  'returnDLObject' => 1,
                  'addWhereList' => 'c.template = 4',
            ]);
            return $this->data['asidemenu'] = $menu->getMenu()[0];
      }
}
