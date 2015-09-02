<?php

// ���������� ����� ��� ������ � excel
require_once('../Classes/PHPExcel.php');
// ���������� ����� ��� ������ ������ � ������� excel
require_once('../Classes/PHPExcel/Writer/Excel5.php');

// ������� ������ ������ PHPExcel
$xls = new PHPExcel();
// ������������� ������ ��������� �����
$xls->setActiveSheetIndex(0);
// �������� �������� ����
$sheet = $xls->getActiveSheet();
// ����������� ����
$sheet->setTitle('������� ���������');

//�������� json
$json = '{"a":1,"b":2,"c":3,"d":4,"e":5}';
$test_array = json_decode($json);
//�������� ������
$fruits = array("a" => "orange", "b" => "banana", "c" => "apple");
$row_count=1;
  foreach($test_array as $key => $value){

  	$sheet->setCellValueByColumnAndRow(0, $row_count, $key);
  	$sheet->setCellValueByColumnAndRow(1, $row_count, $value);

    $row_count++;
}

// ������� HTTP-���������
 header ( "Expires: Mon, 1 Apr 1974 05:00:00 GMT" );
 header ( "Last-Modified: " . gmdate("D,d M YH:i:s") . " GMT" );
 header ( "Cache-Control: no-cache, must-revalidate" );
 header ( "Pragma: no-cache" );
 header ( "Content-type: application/vnd.ms-excel" );
 header ( "Content-Disposition: attachment; filename=matrix.xls" );

// ������� ���������� �����
 $objWriter = new PHPExcel_Writer_Excel5($xls);
 $objWriter->save('php://output');