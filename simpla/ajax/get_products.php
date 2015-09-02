<?php

	require_once('../../api/Simpla.php');
	$simpla = new Simpla();

	$products = array();
	//$products = array("Volvo", "BMW", "Toyota");

	$product_image_size = $simpla->request->post('product_image_size', 'integer');
	$filter['category_id'] = $simpla->request->post('category_id', 'integer');

	$products = $simpla->products->get_products($filter);

	foreach($products as &$product)
	{
		//Изображение товара
		$images = $simpla->products->get_images(array('product_id'=>$product->id));
		$img = array_shift($images);

		if(!empty($img)){
		$product->image = $simpla->design->resize_modifier($img->filename, $product_image_size, $product_image_size);

		//Варианты товара
		$variants = $simpla->variants->get_variants(array('product_id'=>$product->id));
		$variant = array_shift($variants);
		$product->stock = $variant->stock;
		$product->zakupka = $variant->zakupka;
		$product->sku = $variant->sku;

		}
	}

	header("Content-type: application/json; charset=UTF-8");
	header("Cache-Control: must-revalidate");
	header("Pragma: no-cache");
	header("Expires: -1");
	print json_encode($products);
