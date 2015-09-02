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
        
        {* Анимация верхнего metro меню *}
        <script src="design/{$settings->theme|escape}/js/onready.js"></script>
	
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
		
 
        
</head>
<body>


	<!-- Верхняя строка -->
	<div id="top_background">
	
	<div id="header">
		<div id="logo">
			<a href="/"><img src="design/{$settings->theme|escape}/images/logo.png" title="{$settings->site_name|escape}" alt="{$settings->site_name|escape}"/></a>
		</div>	
		<div id="contact">
			(095) <span id="phone">545-54-54</span>
			<div id="address">Москва, шоссе Энтузиастов 45/31, офис 453</div>
		</div>	
	</div>
	<!-- Шапка (The End)--> 

	</div>
	<!-- Верхняя строка (The End)-->
	
<div class="menu-wrapper">
 <ul class="top-menu">
<li class="red">
    <a href="catalog/fantaziya" title="Столешницы Фантазия">Фантазия</a>
</li><li class="orange">
    <a href="catalog/wood" title="Столешницы древесные">Древесные</a>
</li><li class="green active">
    <a href="catalog/stone" title="Столешницы Камни">Камни</a>
</li><li class="brown">
    <a href="catalog/glance" title="Столешницы Глянец">Глянец</a>
</li><li class="blue">
    <a href="catalog/solid" title="Столешницы однотонные и металлик">Фоновые и металлик</a>
</li>
</ul>
</div>

	<!-- Вся страница --> 
	<div id="main">
	
		<!-- Основная часть --> 
		<div id="content">
			{$content}
		</div>
		<!-- Основная часть (The End) --> 

		<div id="left">

			
			
			
			<!-- Меню блога -->
			{* Выбираем в переменную $last_posts последние записи *}
			{get_posts var=last_posts limit=5}
			{if $last_posts}
			<div id="blog_menu">
				<h2><a href="blog">Новости</a></h2>
				{foreach $last_posts as $post}
				<ul>
                                 <li data-post="{$post->id}">{$post->date|date}</br> <a href="blog/{$post->url}">{$post->name|escape}</a></li>
				</ul>
				{/foreach}
			</div>
			{/if}
			<!-- Меню блога  (The End) -->
			
		</div>			

	</div>
	<!-- Вся страница (The End)--> 
	
	<!-- Футер -->
	<div id="footer">
        <div id="footer-inner">
		<div class="footer-inner">
        <div class="footer-left">
            <div class="copyright">© 2008–2014 <a href="http://www.flinstone.ru/" title="Качественные столешницы из искусственного камня, подоконники, барные стойки, мойки и другие изделия">Flinstone.ru</a></div>
            <ul>
                <li><a href="http://www.flinstone.ru/">Столешницы из искусственного камня</a><span>|</span></li>
                <li><a href="http://www.flinstone.ru/company/" title="О компании">О компании</a><span>|</span></li>
                <li><a href="http://www.flinstone.ru/location/" title="Контактная информация">Контакты</a></li>
            </ul>
        </div>
        <div class="b-phone">
            <span>+7 (495)</span>
            <div>725<i>&nbsp;&nbsp;♦</i>27<i>&nbsp;♦</i>37</div>
        </div>
        <div class="footer-right">
            <div class="b-counters">
                
          </div>
            <div class="b-creator"><a href="http://www.gecko-studio.ru/" target="_blank">Создание и продвижение сайта</a>:<br>«Студии Геккон»</div>
        </div>
        <img src="/assets/flinstone/i/dino.png" alt="Динозаврик :)" class="dino" style="right: -103px;">
    </div>
	</div>
        </div>
	<!-- Футер (The End)--> 
        <div id="scrollup" style="display: block; opacity: 0.8;">
 <img src="design/{$settings->theme|escape}/images/blank.gif" class="ic up" alt="Подняться наверх">
</div>
{literal}	
  <script type="text/javascript">
$(function () { 
    $(window).scroll(function () {
        if ($(this).scrollup() > 200) $('#scrollup').fadeIn(); 
        else                           $('#scrollup').fadeOut(400); 
    });
    $('#scrollup').click(function () {
        $('body,html').animate({ 
             scrollup: 0
    }, 800); 
        return false;
    });
});
</script>        
         {/literal}     	
</body>
</html>