<?php

	require_once('../../api/Simpla.php');
	$simpla = new Simpla();

	$productid = $simpla->request->post('productid', 'integer');
	$product_s = $simpla->products->get_product(intval($productid));
	$ids = $simpla->request->post('ids');


	$products = array();
	$product = array();
	$product->variants = array();
	$product->images = array();
	$product->properties = array();
	$product->categories = array();

	$json = $simpla->request->post('ids');
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
        'size'  => 10,
        //'name'  => 'Verdana'
    ));

//Заголовки
$sheet->getColumnDimension('A')->setWidth(10);
//Центруем текст по вертикали
$sheet->getRowDimension(1)->setRowHeight(170);
$sheet->getStyle("A1")->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
$sheet->getStyle("A1")->getAlignment()->setWrapText(true);

//Центруем текст по горизонтали
$sheet->getStyle("B2")->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
$sheet->getStyle("A3")->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
$sheet->getStyle("B3")->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
$sheet->getStyle("C3")->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
//Задаем стили
$sheet->getStyle("A1")->applyFromArray($styleHeaders);
//Задаем высоту верхней строки
//$sheet->getRowDimension(1)->setRowHeight(100);
//$sheet->getRowDimension(2)->setRowHeight(20);
//Заносим значения
$sheet->setCellValueByColumnAndRow(0, 1, 'ООО «РОСТОК ГРУПП»
Управляющая компания

+74951340727 (добавочный 6001)
моб.+79273936116
аська: 694465549
скайп:ruslan19877282
почта:rahmatulla@rosstok.ru

Контактное лицо:
Руководитель отдела закупок
Шадыев Рахматулла');
$sheet->mergeCells('A1:C1');
$sheet->setCellValueByColumnAndRow(1, 2, 'Заявка');
$sheet->setCellValueByColumnAndRow(0, 3, 'Фото');
$sheet->setCellValueByColumnAndRow(1, 3, 'Наименование');
$sheet->setCellValueByColumnAndRow(2, 3, 'Кол-во (шт.)');

$sheet->getHeaderFooter()->setOddHeader('&CТекст верхнего колонтитула');

//Данные
$row_count = 4;
foreach($products as &$prod){
	//Изображение
	//$imagePath = realpath(dirname(dirname(__FILE__))) . '../files/originals/' . $prod->image->url;
	//$imagePath = realpath(dirname(dirname(__FILE__))) . '../files/originals/' . $prod->image->url;
	$imagePath = '/home/v/vdmgrup/rostokgroup.ru/public_html/files/originals/' . $prod->image->url;

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

 //header ( "Expires: Mon, 1 Apr 1974 05:00:00 GMT" );
 //header ( "Last-Modified: " . gmdate("D,d M YH:i:s") . " GMT" );
 //header ( "Cache-Control: no-cache, must-revalidate" );
 //header ( "Pragma: no-cache" );
 //header ( "Content-type: application/vnd.ms-excel" );
 //header ( "Content-Disposition: attachment; filename=matrix.xls" );

// Redirect output to a client’s web browser (Excel5)
//header('Content-Type: application/vnd.ms-excel');
//header('Content-Disposition: attachment;filename="01simple.xls"');
//header('Cache-Control: max-age=0');

// Выводим содержимое файла
 $objWriter = new PHPExcel_Writer_Excel5($xls);
 $objWriter->save('../files/export/заявка.xls');

 //return $retval;

	header("Content-type: application/json; charset=UTF-8");
	header("Cache-Control: must-revalidate");
	header("Pragma: no-cache");
	header("Expires: -1");
	print json_encode($products);