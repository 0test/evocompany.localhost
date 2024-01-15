<?php
namespace EvolutionCMS\Main\Controllers;
class CatalogGroupController extends BaseController{
    use CatalogTrait;
	public function setData()  {
		$this->getCatalog(evolutionCMS()->documentObject['id']);
		$this->getCatalogMenu();
	}
}