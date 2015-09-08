<?php

//Добавляем заказ в таблицу
	require_once('../../api/Simpla.php');
	$simpla = new Simpla();

	$res = new stdClass;
	$res->query = $keyword;
	$res->suggestions = $suggestions;
	header("Content-type: application/json; charset=UTF-8");
	header("Cache-Control: must-revalidate");
	header("Pragma: no-cache");
	header("Expires: -1");
	print json_encode($res);
