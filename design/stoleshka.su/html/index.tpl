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
        
        {* Аяксовая корзина *}
	<script src="design/{$settings->theme}/js/jquery-ui.min.js"></script>
	<script src="design/{$settings->theme}/js/ajax_cart.js"></script>
        

	
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
		
 <script type="text/javascript">
$(function () { 
    $(window).scroll(function () {
        if ($(this).scrollTop() > 200) $('#scrollup').fadeIn(); 
        else                           $('#scrollup').fadeOut(400); 
    });
    $('#scrollup').click(function () {
        $('body,html').animate({ 
             scrollTop: 0
    }, 800); 
        return false;
    });
});
</script>



</head>
<body>


	<!-- Верхняя строка -->
	<div id="top_background">
	
	<div id="header">
		<div id="logo">
			<a href="/"><img src="design/{$settings->theme|escape}/images/logo.png" title="{$settings->site_name|escape}" alt="{$settings->site_name|escape}"/></a>
		</div>	
		<div id="contact"><table width="100%" border="1">
  <tr>
    <td><div class="header-phonenmail"><span id="phone">+7 (499) 649-18-80</span><br>
      Почта: info@stoleshka.su</div></td>
    <td><div id="address"><a href="/">Заказать обратный звонок</a><br>
        <a href="/">Помощь консультанта</a></div></td>
    <td><div class="header-inf"><a href="/kontakts">Контактная информация</a>
        <div class="color-red">Пн—Пт:</div>
        <strong>10:00 — 20:00</strong><br>
<div class="color-red">Сб—Вс:</div>
<strong>11:00 — 19:00</strong></div></td>
  </tr>
</table>

			
			
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

			<ul class="b-right-buttons">
                        
                        
 
 
 <!-- Поиск-->
<div class="search">
    <form action="products">
        <input class="input_search" type="text" name="keyword" value="{$keyword|escape}" placeholder="Поиск товара" />
        <input class="button_search" value="Поиск" type="submit" />
    </form>
</div>
<!-- Поиск (The End)-->

                        
<li>
    <a href="./cart/" title="Корзина">
    
    <div id="cart_informer" class="name">
			{* Обновляемая аяксом корзина должна быть в отдельном файле *}
			{include file='cart_informer.tpl'}
		</div>
    
    </a>
</li>

<li>
    <a href="/vybor-po-tsvetu" title="Камни и цвета">
        <span class="name">Декоры и цвета</span>
        <span class="desc">Все расцветки на одной странице</span>
    </a>
</li>

<li>
    <a href="price/" title="Цены на подоконники, столешницы и стеновые панели из искусственного камня">
        <span class="name">Прайс-лист</span>
        <span class="desc">полный список продукции с актуальными ценами.</span>
    </a>
</li>
<li>
    <a href="articles/" title="Полезная информация">
        <span class="name">Информация</span>
        <span class="desc">Технология производства </span>
    </a>
</li>
    </ul>
			
	<div class="decor-tools"><h3 class="kitchens_link_news"><a href="
        
        http://www.arcoplastica.ru/includes/flash_new/
        " onclick="javascript:window.open(this.href, 'POPUP', 'width=1000,height=764,menubar=no,location=no, overflow:  hidden, resizable=no,scrollbars=no,status=no');return false;" id="online_link" style="margin: 0;">Онлайн-подбор декора</a></h3><p><span>Воспользуйтесь удобным средством подбора декоров</span></p><p>&nbsp;<img src="/files/uploads/_Kitchen-3D-rendering-light-green-cabinets.jpg" width="225" height="136" style="border-radius:10px;" /></p></div>		
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
	<div class="footer">

		<div class="footer-inner">
 <table width="100%" border="0" class="footer-table">
  <tr>
    <td class="footer-cell1">© 2011–2014 <a href="/">stoleshka.su</a></br>
      <a href="/">Производство столешниц</a> | <a href="/">О компании</a> | <a href="/">Контакты</a></td>
    <td class="footer-cell2"><strong class="footer-phone">+7 (927) 393-61-16</strong></br><small>Почта: info@stoleshka.su</small></td>
    <td class="footer-cell3">Дизайн и продвижение сайта — <a href="//vk.com/misterslan">Руслан Ахметов</a></td>
  </tr>
</table>

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


<!-- Yandex.Metrika counter -->
<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter24886466 = new Ya.Metrika({id:24886466,
                    webvisor:true,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true});
        } catch(e) { }
    });

    var n = d.getElementsByTagName("script")[0],
        s = d.createElement("script"),
        f = function () { n.parentNode.insertBefore(s, n); };
    s.type = "text/javascript";
    s.async = true;
    s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

    if (w.opera == "[object Opera]") {
        d.addEventListener("DOMContentLoaded", f, false);
    } else { f(); }
})(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="//mc.yandex.ru/watch/24886466" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->




         {/literal}  
{* Анимация верхнего metro меню *}
<script src="design/{$settings->theme|escape}/js/onready.js"></script>
</body>
</html>