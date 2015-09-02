<?php

	require_once('../../api/Simpla.php');
	$simpla = new Simpla();

	//$output = array(
    //"foo" => "bar",
    //"bar" => "foo",);

    //$output = array();


	//$id = $simpla->request->post('id', 'integer');

	//$doc = $simpla->users->get_user_doc(intval($id));

			//------------------------------

	//$filter['limit'] = $products_count;

	$products = array();
	$product = array();
	$product->variants = array();
	$product->images = array();
	$product->properties = array();
	$product->categories = array();

	$json = $simpla->request->post('products', 'integer');
	//$json = '["188","1456","1482","232","1554","585","660"]';

	$productids = json_decode($json);

			foreach($productids as &$prodid)
			{
				$product = $simpla->products->get_product(intval($prodid));
				$products[$prodid] = $product;
			}

			foreach($products as &$product)
			{
				//Подсчет количества
				$row_fillter = "supplys";
				$row_status = $simpla->request->get('status', 'string');
				$product->icount = $simpla->users->count_uprice(array('rowtype'=>$row_fillter, 'status'=>$row_status, 'productid'=>$product->id));

				//Подсчет общего количества
				$product->summa = array();
				$row_fillter = "supplys";
				$row_status = $simpla->request->get('status', 'string');
				$product->summa = $simpla->users->get_uprice(array('rowtype'=>$row_fillter, 'status'=>$row_status, 'productid'=>$product->id));

				//Складываем числа
				$product->summ = 0;
				foreach($product->summa as &$sm)
				{
					$product->summ = $product->summ + $sm->supplys_amount;
			    }

			    //Изображение товара
			    $product->image->url = '0';

			    $images = $simpla->products->get_images(array('product_id'=>$product->id));
			    $img = array_shift($images);
			    $product->image->url = $img->filename;
			}


			$variants = $simpla->variants->get_variants(array('product_id'=>$products_ids));

			foreach($variants as &$variant)
			{
				$products[$variant->product_id]->variants[] = $variant;
			}


			//Excel
			//-----------------------------------------------------------------------------------

			function foo($products)
		{
			// Подключаем класс для работы с excel
require_once('../Classes/PHPExcel.php');
// Подключаем класс для вывода данных в формате excel
require_once('../Classes/PHPExcel/Writer/Excel5.php');

// Создаем объект класса PHPExcel
$xls = new PHPExcel();
// Устанавливаем индекс активного листа
$xls->setActiveSheetIndex(0);
// Получаем активный лист
$sheet = $xls->getActiveSheet();
// Подписываем лист
$sheet->setTitle('Таблица умножения');

//Стиль для заголовков
$styleHeaders = array(
    'font'  => array(
        'bold'  => true,
        //'color' => array('rgb' => 'FF0000'),
        'size'  => 14,
        //'name'  => 'Verdana'
    ));

//Тестовый json
//$json = '{"a":1,"b":2,"c":3,"d":4,"e":5}';
//$test_array = json_decode($json);
//Тестовый массив
//$test_array = array("a" => "orange", "b" => "banana", "c" => "apple");

//Заголовки
$sheet->getColumnDimension('A')->setWidth(10);
//Центруем текст по горизонтали
$sheet->getStyle("A1")->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
$sheet->getStyle("B1")->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
$sheet->getStyle("C1")->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
//Задаем стили
$sheet->getStyle("A1")->applyFromArray($styleHeaders);
$sheet->getStyle("B1")->applyFromArray($styleHeaders);
$sheet->getStyle("C1")->applyFromArray($styleHeaders);
//Задаем высоту верхней строки
$sheet->getRowDimension(1)->setRowHeight(50);
//Заносим значения
$sheet->setCellValueByColumnAndRow(0, 1, 'Фото');
$sheet->setCellValueByColumnAndRow(1, 1, 'Наименование');
$sheet->setCellValueByColumnAndRow(2, 1, 'Кол-во (шт.)');

//Данные
$row_count = 2;
foreach($products as &$prod){
	//Изображение
	$imagePath = realpath(dirname(dirname(__FILE__))) . '/files/originals/' . $prod->image->url;

	if (file_exists($imagePath)) {
    $logo = new PHPExcel_Worksheet_MemoryDrawing();
    $logo->setName($prod->name);
    $gdImage = imagecreatefromjpeg($imagePath);
    $logo->setImageResource($gdImage);
    $logo->setRenderingFunction(PHPExcel_Worksheet_MemoryDrawing::RENDERING_JPEG);
    $logo->setMimeType(PHPExcel_Worksheet_MemoryDrawing::MIMETYPE_DEFAULT);
    $logo->setHeight(50);
    $logo->setCoordinates("A" . $row_count);
    $logo->setOffsetX(2);
    $logo->setOffsetY(5);
    $sheet->getRowDimension($row_count)->setRowHeight(45);
    $logo->setWorksheet($sheet);
}
	//$sheet->setCellValueByColumnAndRow(0, $row_count, $prod->image->url);
	$sheet->setCellValueByColumnAndRow(1, $row_count, $prod->name);
	$sheet->setCellValueByColumnAndRow(2, $row_count, $prod->summ);
	$sheet->getStyle("B" . $row_count)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
	$sheet->getStyle("B" . $row_count)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
	$sheet->getStyle("C" . $row_count)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
	$sheet->getStyle("C" . $row_count)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);

	$row_count++;
}

//Автоматическая ширина столбцов
foreach(range('B','D') as $columnID) {
    $sheet->getColumnDimension($columnID)->setAutoSize(true);
}

//$row_count=1;
  //foreach($test_array as $key => $value){

  	//$sheet->setCellValueByColumnAndRow(0, $row_count, $key);
  	//$sheet->setCellValueByColumnAndRow(1, $row_count, $value);

    //$row_count++;
//}

// Выводим HTTP-заголовки
 header ( "Expires: Mon, 1 Apr 1974 05:00:00 GMT" );
 header ( "Last-Modified: " . gmdate("D,d M YH:i:s") . " GMT" );
 header ( "Cache-Control: no-cache, must-revalidate" );
 header ( "Pragma: no-cache" );
 header ( "Content-type: application/vnd.ms-excel" );
 header ( "Content-Disposition: attachment; filename=matrix.xls" );

// Выводим содержимое файла
 $objWriter = new PHPExcel_Writer_Excel5($xls);
 $objWriter->save('php://output');
			return $retval;
		}

		foo($products);