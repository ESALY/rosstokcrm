<?php

	require_once('../../api/Simpla.php');
	$simpla = new Simpla();

	//$values = $simpla->request->post('values');

	$filter = array();

	//$filter['keyword'] = $simpla->request->post('keyword', 'string');
	//$filter['manager'] = $simpla->request->post('manager', 'string');
	//$filter['gorod'] = $simpla->request->post('gorod', 'string');
	//$filter['limit'] = 20;

	$limit = $simpla->request->post('limit', 'string');

	if(!empty($limit))
	{
		$filter['limit'] = $simpla->request->post('limit', 'string');
	}

	$keyword = $simpla->request->post('keyword', 'string');

	if(!empty($keyword))
	{
		$filter['keyword'] = $simpla->request->post('keyword', 'string');
	}

	$manager = $simpla->request->post('manager', 'string');

	if(!empty($manager))
	{
		$filter['manager'] = $simpla->request->post('manager', 'string');
	}

	$gorod = $simpla->request->post('gorod', 'string');

	if(!empty($gorod))
	{
		$filter['gorod'] = $simpla->request->post('gorod', 'string');
	}

	$users = $simpla->users->get_users($filter);

	$category_id = $simpla->request->get('category_id', 'integer');
	$product_id = $simpla->request->get('product_id', 'integer');

	header("Content-type: application/json; charset=UTF-8");
	header("Cache-Control: must-revalidate");
	header("Pragma: no-cache");
	header("Expires: -1");
	print json_encode($users);
