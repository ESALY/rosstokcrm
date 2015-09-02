<?php

	require_once('../../api/Simpla.php');
	$simpla = new Simpla();

	//$id = $simpla->request->post('id', 'integer');
	//$row_fillter = 'note';

	//$user = $simpla->users->get_user_ajax(intval($id));

	//$user_note = $simpla->users->get_uprice(array('userid'=>$id, 'rowtype'=>$row_fillter));

	$up_products_p_inbox = array();
	$row_fillter = "supplys";
	$row_status = $simpla->request->post('status', 'string');
	$up_productid = $simpla->request->post('productid', 'integer');
	$up_products_p_inbox = $simpla->users->get_uprice(array('userid'=>$user->id, 'rowtype'=>$row_fillter, 'status'=>$row_status, 'productid'=>$up_productid));

	foreach($up_products_p_inbox as &$up_products_p_i)
	{

	$userinf = array();
	$userinf = $simpla->users->get_user(intval($up_products_p_i->userid));

	$up_products_p_i->user = $userinf->name;
	$up_products_p_i->manager = $userinf->manager;

	$product = array();
	$product = $simpla->products->get_product(intval($up_products_p_i->productid));
	$up_products_p_i->product = $product->name;

	$utv_p = array();
	$utv_p = $simpla->users->get_uprice(array('userid'=>$up_products_p_i->userid, 'rowtype'=>'utverzhdennaja_cena'));
	$test =  array_shift($utv_p);
	$up_products_p_i->utv_p = $test->price;
	$up_products_p_i->utv_per = $test->per;

	}

	header("Content-type: application/json; charset=UTF-8");
	header("Cache-Control: must-revalidate");
	header("Pragma: no-cache");
	header("Expires: -1");
	print json_encode($up_products_p_inbox);
