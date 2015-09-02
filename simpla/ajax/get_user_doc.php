<?php

	require_once('../../api/Simpla.php');
	$simpla = new Simpla();

	$output = array();


	//$id = $simpla->request->post('id', 'integer');

	//$doc = $simpla->users->get_user_doc(intval($id));

	header("Content-type: application/json; charset=UTF-8");
	header("Cache-Control: must-revalidate");
	header("Pragma: no-cache");
	header("Expires: -1");
	print json_encode($doc);
