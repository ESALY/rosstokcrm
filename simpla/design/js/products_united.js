 //Основные переменные
 window.products_wrap = $('.products-wrap');
 window.product_image_size = 50;

 window.products_json = '';

 $(document).ready(function()
 {
 	//Получаем товары
 	//get_products()

 	//Получаем категории
 	get_categories();

 });


 //Jstree

 $.jstree.defaults.core.themes.variant = "large";


  	//$(function () { $('#jstree_demo_div').jstree(); });

 	$('#jstree_demo_div').on("changed.jstree", function (e, data) {
  //alert(data.selected);
  get_products(data.selected);
});


 //Поиск
 $('#search-box').keyup(function () {
    // Run code
    var keyword = document.getElementById('search-box').value;
    //show_users(category, gorod, manager, keyword)
    search_products(keyword);
});

  //Получаем категории
 function get_categories()
	{
		//alert (keyword);

	//Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/get_cat_tree.php',
        data: {
            'test': 777,
        },
        //если все удачно возвращаем message
        success: function (data) {
        	//products_search_render(data);
        	//alert (JSON.stringify({ 'core' : { 'data' : data }}));
        	$('#jstree_demo_div').jstree({'core':{ 'data' : data, "checkbox" : {"keep_selected_style" : true }, "plugins" : [ "wholerow", "checkbox" ] }});

        },

        dataType: 'json'
    });

    return false;
	}

 //Ищем товары
 function search_products(keyword)
	{
		//alert (keyword);

	//Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/search_products.php',
        data: {
            'query': keyword,
        },
        //если все удачно возвращаем message
        success: function (data) {
        	products_search_render(data);
        	//alert (JSON.stringify(data));
        },

        dataType: 'json'
    });

    return false;
	}

 //Получаем товары
 function get_products(categoryid)
	{

	//Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/get_products.php',
        data: {
            'category_id':  parseInt(categoryid),
            'product_image_size': product_image_size,
        },
        //если все удачно возвращаем message
        success: function (data) {
        	products_render(data);
        	//alert (data);
        },

        dataType: 'json'
    });

    return false;
	}

//Отображаем найденные товары
function products_search_render(items){

products_wrap.html('');

//Заголовки
var headers = ["Фото", "777", "закупка"];

$table = "<table id = 'resultTable'  class='pure-table pure-table-horizontal'>";
$table += "<thead>";

for (var i = 0; i < headers.length; i++) {

    $table += "<th>";
    $table += headers[i];
    $table += "</th>";

}

$table += "</thead>";

$table += "<tbody>";


for (var i = 0; i < items.suggestions.length; i++) {

    $table += "<tr>";

    $table += "<td>" + "<a target='_blank' href='index.php?module=ProductAdmin&id=" + items.suggestions[i].data.id + "'>" + "<img src='" + items.suggestions[i].data.image + "'>" + "</a>" + "</td>";
    $table += "<td>" + "<a target='_blank' href='index.php?module=ProductAdmin&id=" + items.suggestions[i].data.id + "'>" + items.suggestions[i].data.name + "</a>" + "</td>";
    $table += "<td>" +  "</td>";

    $table += "</tr>";

}

$table += "</tbody></table>";

products_wrap.html($table);

}

//Отображаем товары
function products_render(items){

//Заголовки
var headers = ["Фото", "Товар", "Арт", "Остаток", "Закупка", "..."];

$table = "<table id = 'resultTable'  class='pure-table pure-table-horizontal'>";
$table += "<thead>";

for (var i = 0; i < headers.length; i++) {

    $table += "<th>";
    $table += headers[i];
    $table += "</th>";

}

$table += "</thead>";
$table += "<tbody>";


for (var i = 0; i < items.length; i++) {

    $table += "<tr>";

    $table += "<td>" + "<a target='_blank' href='index.php?module=ProductAdmin&id=" + items[i].id + "'>" + "<div class='products-box'><img src='" + items[i].image + "'></div>" + "</a>" + "</td>";
    $table += "<td>" + "<a target='_blank' href='index.php?module=ProductAdmin&id=" + items[i].id + "'>" + items[i].name + "</a>" + "</td>";
    $table += "<td>" + items[i].sku + "</td>";
    $table += "<td>" + items[i].stock + "</td>";
    $table += "<td>" + items[i].zakupka + "</td>";


    $table += "<td><button type='submit' class='pure-button pure-button'><i class='fa fa-pencil'></i></button></td>";

    $table += "</tr>";

}

$table += "</tbody></table>";

products_wrap.html($table);

}