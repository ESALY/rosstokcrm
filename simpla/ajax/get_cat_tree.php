<?php

require_once('../../api/Simpla.php');
$simpla = new Simpla();

//$category_id = $simpla->request->get('category_id', 'integer');
//$product_id = $simpla->request->get('product_id', 'integer');

$categories = $simpla->categories->get_categories_tree();

$categories_tree = array();

function tree($categories, $level = 1)
{

    global $categories_tree;

    foreach ($categories as $category) {
        //echo $category->name . "\n";
        //echo $level . "\n";
        //echo str_repeat("-", $level).$category->name."<br>";

        $category_tree     = new stdClass();
        $category_tree->id = $category->id;

        if (!$category->parent_id){
        	$category_tree->parent = "#";
        	} else{
        	$category_tree->parent = $category->parent_id;
        }

        $category_tree->text   = $category->name . " (" . $category->count . ")";
        $categories_tree[] = $category_tree;

        tree($category->subcategories, $level + 1);
    }

    return $categories_tree;

}

$categories_tree = tree($categories);


header("Content-type: application/json; charset=UTF-8");
header("Cache-Control: must-revalidate");
header("Pragma: no-cache");
header("Expires: -1");
print json_encode($categories_tree);
