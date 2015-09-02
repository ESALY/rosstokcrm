<!DOCTYPE html>
{$wrapper='' scope=parent}
<html>
<head>
	<base href="{$config->root_url}/"/>
	<title></title>
	{* Метатеги *}
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="{$meta_description|escape}" />
	<link href="simpla/design/css/reset.css" rel="stylesheet" type="text/css" />
	<link href="css/pure-min.css" rel="stylesheet" type="text/css" />
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">


	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">
	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>


    <style>
    .user-iframe-left{
    	background: rgba(238, 130, 238, 0.22);
width: 556px;
height: 543px;
float: left;
    }

    .user-iframe-right{
    	background: rgba(238, 130, 238, 0.29);
width: 183px;
height: 543px;
float: right;
    }

.user-iframe-left-block1 {
background: rgba(127, 255, 0, 0.23);
width: 100%;
display: inline-block;
padding-top: 10px;
}
.user-iframe-left-block2 {
background: rgba(127, 255, 0, 0.23);
width: 100%;
margin-top: 5px;
display: inline-block;
padding: 10px;
box-sizing: border-box;
}
.user-iframe-left-block3 {
background: rgba(127, 255, 0, 0.23);
width: 100%;
margin-top: 5px;
display: inline-block;
padding: 10px;
box-sizing: border-box;
}
.user-iframe-left-block4 {
background: rgba(127, 255, 0, 0.23);
margin-top: 10px;
margin-left: 12px;
display: inline-block;
float: right;
}
.user-iframe-left-block5 {
background: rgba(127, 255, 0, 0.23);
margin-top: 10px;
margin-left: 12px;
display: inline-block;
float: right;
}
.user-iframe-left-block1-thumb {
background: rgba(72, 176, 250, 0.45);
width: 154px;
height: 144px;
text-align: center;
float: left;
margin-right: 10px;
}
.user-iframe-left-block1-header {
width: 377px;
height: 79px;
background: rgba(222, 184, 135, 0.59);
float: left;
margin-bottom: 10px;
font-size: 20px;
}
.user-iframe-left-block1-informer {
background: rgba(210, 105, 30, 0.28);
float: left;
padding: 5px;
box-sizing: content-box;
margin-right: 5px;
font-size: 13px;
}
.user-iframe-left-form-item {
margin-bottom: 10px;
}
.user-iframe-left-form-item-header {
width: 166px;
/* height: 10px; */
display: inline-block;
}
.user-iframe-left-block2-list-item {
margin-bottom: 10px;
}

.user-iframe-left-wrap-succesmsg{
	margin-left: 125px;margin-top: 242px;display: inline-block;font-size: 27px;
}

    </style>
</head>

<body>
<div style="{*background: url(/simpla/design/images/useriframeback.png);
background-size: 100%;display: inline-block;width: 100%;height: 549px;*}">
<div class="user-iframe-left">
<div class="user-iframe-left-wrapper">
	<div class="user-iframe-left-block1">
		<div class="user-iframe-left-block1-thumb">
		{$image = $product->image}{if $image}
		<img src="{$image->filename|escape|resize:120:120}"/>
		{else}{/if}
		</div>
		{foreach $product->variants as $variant}
		<div class="user-iframe-left-block1-header">{$product->name}</div>
		<div class="user-iframe-left-block1-informer">Арт. {$variant->sku}</div>
		<div class="user-iframe-left-block1-informer">Остаток {$variant->stock} шт.</div>
		<div class="user-iframe-left-block1-informer">Закупка {$variant->zakupka} руб.</div>
		{/foreach}
	</div>
	<div class="user-iframe-left-block2">
	<ul class="user-iframe-left-block2-list">
		<li class="user-iframe-left-block2-list-item"><span class="user-iframe-left-block2-list-item-header">Новые</span></li>
		<li class="user-iframe-left-block2-list-item"><span class="user-iframe-left-block2-list-item-header">В заявке</span></li>
		<li class="user-iframe-left-block2-list-item"><span class="user-iframe-left-block2-list-item-header">Заказано</span></li>
	</ul>
	</div>
	<div class="user-iframe-left-block3">
	<ul class="user-iframe-left-form"  id="tobasket{$product->id}">
	<li class="user-iframe-left-form-item"><span class="user-iframe-left-form-item-header">Количество</span><input type="text" style="" class="userp-table-input" id="u12855" placeholder=""></li>
	<li class="user-iframe-left-form-item"><span class="user-iframe-left-form-item-header">Цена покупателя</span><input type="text" style="" class="userp-table-input" id="u12855" placeholder=""></li>
	<li class="user-iframe-left-form-item"><span class="user-iframe-left-form-item-header">Актуально до</span><input type="text" style="" class="userp-table-input" name="datepicker" placeholder=""></li>
	<li class="user-iframe-left-form-item"><span class="user-iframe-left-form-item-header">Приоритет</span><select id="product" class="rus-forms-elastic-input" onchange="filter_isupplier(this)">
    <option value="3">Низкий</option>
    <option value="2">Средний</option>
    <option value="1">Высокий</option>

        </select></li>
	<li class="user-iframe-left-form-item"><span class="user-iframe-left-form-item-header">Тип заявки</span><select id="product" class="rus-forms-elastic-input" onchange="filter_isupplier(this)">
    <option value="">В новые заявки</option>
    <option value="">В запрос цены</option>
        </select></li>
        <li class="user-iframe-left-form-item"><span class="user-iframe-left-form-item-header">Примечание</span><input type="text" style="" class="userp-table-input" id="u12855" placeholder=""></li>
	</ul>
	</div>
	<div class="user-iframe-left-block5">
	<button type="submit" id="121" class="pure-button pure-button user_show_history" onclick="tobasket(this,{$product->id},'{$product->name}')">Test</button>
	<button type="submit" id="121" class="pure-button pure-button user_show_history" onclick="tobasket1();">Отправить</button>
	</div>
	</div>
</div>
<div class="user-iframe-right"></div>
</div>
{literal}
<script>
$(function() {
    $('[name="datepicker"]').datepicker();
    $.datepicker.regional['ru'] = {
                closeText: 'Закрыть',
                prevText: '&#x3c;Пред',
                nextText: 'След&#x3e;',
                currentText: 'Сегодня',
                monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь',
                'Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
                monthNamesShort: ['Янв','Фев','Мар','Апр','Май','Июн',
                'Июл','Авг','Сен','Окт','Ноя','Дек'],
                dayNames: ['воскресенье','понедельник','вторник','среда','четверг','пятница','суббота'],
                dayNamesShort: ['вск','пнд','втр','срд','чтв','птн','сбт'],
                dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
                weekHeader: 'Не',
                dateFormat: 'dd.mm.yy',
                firstDay: 1,
                isRTL: false,
                showMonthAfterYear: false,
                yearSuffix: ''};
        $.datepicker.setDefaults($.datepicker.regional['ru']);
  });

    $('[name="PrihodDate"]').change(function () {

       var id = $(this).attr('itemid');
       var prihod = $(this).val();
       update_prihod(id, prihod)

   });
</script>
{/literal}

<!--Корзина-->
{literal}
<script>

     function tobasket1() {
     	$( ".user-iframe-left-wrapper" ).replaceWith( "<span class='user-iframe-left-wrap-succesmsg'>Заказ успешно оформлен!</span><button type='submit' id='121' class='pure-button pure-button user_show_history' onclick='' style='margin-left: 230px;margin-top: 15px;'>Закрыть</button>" );
     }

</script>
{/literal}

{literal}
<script>
    //function tobasket(el, id, prodname, status) {
    function tobasket(el, id, prodname) {

    	//извлекаем значения из форм
        var id = 'tobasket' + id;
        var amount = document.getElementById(id).getElementsByTagName('input')[0].value;
        var tsenapokupatelya = document.getElementById(id).getElementsByTagName('input')[1].value;
        var aktualnodo = document.getElementById(id).getElementsByTagName('input')[2].value;
        var comment = document.getElementById(id).getElementsByTagName('input')[3].value;
        var px = document.getElementById(id).getElementsByTagName('select')[0].selectedIndex;
        var pr = document.getElementById(id).getElementsByTagName("option")[px].value;
        var tx = document.getElementById(id).getElementsByTagName('select')[1].selectedIndex;
        var tz = document.getElementById(id).getElementsByTagName("option")[tx].value;

    	alert (amount);
    	alert (tsenapokupatelya);
    	alert (aktualnodo);
    	alert (comment);
    	alert (pr);
    	alert (tz);

            }

</script>
{/literal}

</body>
</html>