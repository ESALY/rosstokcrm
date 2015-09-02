<!DOCTYPE html>
{*
	Общий вид страницы
	Этот шаблон отвечает за общий вид страниц без центрального блока.
*}
<html>
<head>
	<base href="{$config->root_url}/"/>
	<title>{$meta_title|escape}</title>
	
	{* Метатеги *}
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="{$meta_description|escape}" />
	<meta name="keywords"    content="{$meta_keywords|escape}" />
	<meta name="viewport" content="width=1024"/>
	
	{* Стили *}
	<link href="design/{$settings->theme|escape}/css/style.css" rel="stylesheet" type="text/css" media="screen"/>
	<link href="design/{$settings->theme|escape}/images/favicon.ico" rel="icon"          type="image/x-icon"/>
	<link href="design/{$settings->theme|escape}/images/favicon.ico" rel="shortcut icon" type="image/x-icon"/>
	
	{* JQuery *}
	<script src="js/jquery/jquery.js"  type="text/javascript"></script>
	
	{* Всплывающие подсказки для администратора *}
	{if $smarty.session.admin == 'admin'}
	<script src ="js/admintooltip/admintooltip.js" type="text/javascript"></script>
	<link   href="js/admintooltip/css/admintooltip.css" rel="stylesheet" type="text/css" /> 
	{/if}
	
	{* Увеличитель картинок *}
	<script type="text/javascript" src="js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<link rel="stylesheet" href="js/fancybox/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
	
	{* Ctrl-навигация на соседние товары *}
	<script type="text/javascript" src="js/ctrlnavigate.js"></script>           
	
	{* Аяксовая корзина *}
	<script src="design/{$settings->theme}/js/jquery-ui.min.js"></script>
	<script src="design/{$settings->theme}/js/ajax_cart.js"></script>
	{* TAB Menu *}
        <script src="http://www.menucool.com/tab-content/tabcontent.js" type="text/javascript"></script>
	{* js-проверка форм *}
	<script src="/js/baloon/js/baloon.js" type="text/javascript"></script>
	<link   href="/js/baloon/css/baloon.css" rel="stylesheet" type="text/css" /> 
	
	{* Автозаполнитель поиска *}
	{literal}
	<script src="js/autocomplete/jquery.autocomplete-min.js" type="text/javascript"></script>
	<style>
	.autocomplete-w1 { position:absolute; top:0px; left:0px; margin:6px 0 0 6px; /* IE6 fix: */ _background:none; _margin:1px 0 0 0; }
	.autocomplete { border:1px solid #999; background:#FFF; cursor:default; text-align:left; overflow-x:auto;  overflow-y: auto; margin:-6px 6px 6px -6px; /* IE6 specific: */ _height:350px;  _margin:0; _overflow-x:hidden; }
	.autocomplete .selected { background:#F0F0F0; }
	.autocomplete div { padding:2px 5px; white-space:nowrap; }
	.autocomplete strong { font-weight:normal; color:#3399FF; }
	</style>	
	<script>
	$(function() {
		//  Автозаполнитель поиска
		$(".input_search").autocomplete({
			serviceUrl:'ajax/search_products.php',
			minChars:1,
			noCache: false, 
			onSelect:
				function(value, data){
					 $(".input_search").closest('form').submit();
				},
			fnFormatResult:
				function(value, data, currentValue){
					var reEscape = new RegExp('(\\' + ['/', '.', '*', '+', '?', '|', '(', ')', '[', ']', '{', '}', '\\'].join('|\\') + ')', 'g');
					var pattern = '(' + currentValue.replace(reEscape, '\\$1') + ')';
	  				return (data.image?"<img align=absmiddle src='"+data.image+"'> ":'') + value.replace(new RegExp(pattern, 'gi'), '<strong>$1<\/strong>');
				}	
		});
	});
	</script>
	{/literal}
        
        {* Скрипт возврата на верх страницы *}
	{literal}
	<script>
        $(document).ready(function(){

	// hide #back-top first
	$("#back-top").hide();
	
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 100) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});

		// scroll body to 0px on click
		$('#back-top a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		  });
	     });

         });
         </script>
         
         
         
       
         
         
	{/literal}
        
        
     
         
         
      
		
			
</head>
<body>


	<!-- Возврат на верх страницы --> 
	<div id="back-top" style="display: block;">
		<a href="#top"><span></span>Наверх</a>
        </div>
         
	<!-- Верхняя строка -->
	
	<!-- Верхняя строка (The End)-->
	
	
	<!-- Шапка -->
       
	<div id="header">
		<div id="logo">
			<a href="/"><img src="design/{$settings->theme|escape}/images/vdm_small.png" title="{$settings->site_name|escape}" alt="{$settings->site_name|escape}"/></a>
		</div>	
		
							
	<!--@ADR-->
         <div class="top_right_colum">
    <div class="block1"> <span>
        Режим работы:
        <br>
        <strong>Пн-Пт с 9:00 до 18:00</strong>
        </span>
 <a class="btn callmehead" href="">ЗАЯВКА НА ЗВОНОК</a>

    </div>
    <div class="block2"> <span>
       Контакты:
        <br>
        <strong>+7 (927) 393-60-90 (Круглосуточно)</strong> 
        <br>
        <strong>+7 (84157) 3-20-37 (Пн-Пт с 9:00 до 18:00)  </strong> 
            
        </span>

    </div>
    <div class="block3"> <span>
        Отдел сбыта:
        <br>
        
        <strong><img src="http://web.icq.com/whitepages/online?icq=229623773&img=5" /> 229-623-773</strong>
        <br>
         E-mail для заказов: <a href="mailto:info@vdmgrup.ru">info@vdmgrup.ru</a>
        </span>

    </div>
    <div class="block4"> <span>
    <br>
       <strong>Ваша корзина пуста</strong>
            </span>

    </div>
</div>
        <!-- Меню -->
        
        
        
       <div class="ribbon">
     
       
       <!-- Меню -->
      
		<ul id="menu">
			{foreach $pages as $p}
				{* Выводим только страницы из первого меню *}
				{if $p->menu_id == 1}
				<li {if $page && $page->id == $p->id}class="selected"{/if}>
					<a data-page="{$p->id}" href="{$p->url}">{$p->name|escape}</a>
				</li>
				{/if}
			{/foreach}
		</ul>
		<!-- Меню (The End) -->
        
          <!-- Меню блога -->
			{* Выбираем в переменную $last_posts последние записи *}
			{get_posts var=last_posts limit=5}
			{if $last_posts}
			<div id="blog_menu">
				<h2><a href="blog">Новости компании</a></h2>
				{foreach $last_posts as $post}
				<ul>
                                 <li data-post="{$post->id}">{$post->date|date} </br><a href="blog/{$post->url}">{$post->name|escape}</a></li>
				</ul>
				{/foreach}
			</div>
			{/if}
			<!-- Меню блога  (The End) -->
                        <img src="/files/uploads/h6.png" width="204" height="454" />
        
      
        
        </div>
		
        
        
        <!-- Меню end-->
        
        
        
        </div>
        
        
        
	<!-- Шапка (The End)--> 


</div>
<div id="wrapper">
	<!-- Вся страница --> 
	<div id="main">
	
		<!-- Основная часть --> 
		<div id="content">{$content}
		</div>
		<!-- Основная часть (The End) --> 

		<div id="left">

			
                        <img src="/files/uploads/h3.png" width="207" height="68" />
			
			<!-- Меню каталога -->
                         
			<div id="catalog_menu">
			
                        <!-- Поиск-->
			<div id="search">
				<form action="products">
					<input class="input_search" type="text" name="keyword" value="{$keyword|escape}" placeholder="Поиск товара"/>
					<!--<input class="button_search" value="" type="submit" /> -->
				</form>
			</div>
			<!-- Поиск (The End)-->
			{* Рекурсивная функция вывода дерева категорий *}
			{function name=categories_tree}
			{if $categories}
			<ul>
                <li class="menuoffers">
												<a href="catalog/spetspredlozheniya" style="
    color: rgb(240, 83, 83);
    font-size: 20px;
">СПЕЦПРЕДЛОЖЕНИЯ</a>
									
					</li>			
			{foreach $categories as $c}
				{* Показываем только видимые категории *}
				{if $c->visible}
					<li>
						{if $c->image}<img src="{$config->categories_images_dir}{$c->image}" alt="{$c->name}">{/if}
						<a {if $category->id == $c->id}class="selected"{/if} href="catalog/{$c->url}" data-category="{$c->id}">{$c->name}</a>
						{categories_tree categories=$c->subcategories}
					</li>
				{/if}
			{/foreach}
			</ul>
			{/if}
			{/function}
			{categories_tree categories=$categories}
			</div>
			<!-- Меню каталога (The End)-->		
	
			
			

			

			
			<!-- Просмотренные товары -->
			{get_browsed_products var=browsed_products limit=20}
			{if $browsed_products}
			
				<h2>Вы просматривали:</h2>
				<ul id="browsed_products">
				{foreach $browsed_products as $browsed_product}
					<li>
					<a href="products/{$browsed_product->url}"><img src="{$browsed_product->image->filename|resize:50:50}" alt="{$browsed_product->name}" title="{$browsed_product->name}"></a>
					</li>
				{/foreach}
				</ul>
			{/if}
			<!-- Просмотренные товары (The End)-->
			
			
			
			
		</div>			

	</div>
       
	<!-- Вся страница (The End)--> 
	</div>
	<!-- Футер -->
	<div id="footer">
	
	</div>
	<!-- Футер (The End)--> 

</body>
</html>