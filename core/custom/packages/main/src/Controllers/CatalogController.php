<?php
namespace EvolutionCMS\Main\Controllers;
class CatalogController extends BaseController{
    use CatalogTrait;
	public function setData()  {
		$this->getCatalog();
	}
}