<!DOCTYPE html>
<html>
<head>
<base href="{$config->root_url}/"/>
<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<title></title>

<!-- VDS64 Domain code: bca6bc94533bc8a -->
{* Метатеги *}
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="{$meta_description|escape}" />
<meta name="keywords"    content="{$meta_keywords|escape}" />
<meta name="google-site-verification" content="Dqjb5_cW54XaoDUQxqBBRJFmOPqz_AZODTe_X4O_ETk" />
{* Стили *}
<link href="design/{$settings->theme|escape}/css/style.css" rel="stylesheet">
<link href="design/{$settings->theme|escape}/css/menu.css" rel="stylesheet" media="screen">

<!-- скрипты -->
{* JQuery *}
<script src="js/jquery/jquery.js"  type="text/javascript"></script>
<script src="design/{$settings->theme|escape}/js/jquery.lazyload.js" type="text/javascript"></script>
<script type="text/javascript" src="/buyme/js/buyme.js"></script>
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
{* наверх *}
{literal}
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
{/literal}
{* Автозаполнитель поиска *}
	{literal}
<script src="js/autocomplete/jquery.autocomplete-min.js" type="text/javascript"></script>
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


<script src="design/{$settings->theme}/js/jquery-ui-1.9.0.custom.min.js"  type="text/javascript"></script>
<script src="design/{$settings->theme}/js/filter.min.js"  type="text/javascript"></script>


<!-- VDS64 Domain code: bca6bc94533bc8a -->
</head>

<body>
<div class="wrapper">
  <header class="header">
    <div class="logo"> <a href="/"><img src="design/{$settings->theme|escape}/img/logo.png" title="{$settings->site_name|escape}" alt="{$settings->site_name|escape}"/></a></div>
    <div class="header-right">
      <div class="header-worktime">
        <p><span style="
    margin-bottom: 11px;
    display: inline-block;
"><strong>Мебельная фурнитура и комплектующие со склада</strong></span></p>
        <p><img src="/files/uploads/_MapMarker_Marker_Outside_Azure.png" width="30" height="30">&nbsp;<strong>Пенза<img src="/files/uploads/_MapMarker_Marker_Outside_Azure.png" width="30" height="30">&nbsp;Самара<img src="/files/uploads/_MapMarker_Marker_Outside_Azure.png" width="30" height="30">&nbsp;Казань<img src="/files/uploads/_MapMarker_Marker_Outside_Azure.png" width="30" height="30">&nbsp;Нижний Новгород &nbsp;</strong></p>
      </div>
      <div class="header-phone"><strong>{$settings->site_phone|escape}</strong> <span class="h-emal">почта: <a href="{$settings->site_mail|escape}">{$settings->site_mail|escape}</a> </span> </div>
    </div>
    <div class="header-brand-menu"> 
      <!-- Меню -->
      <ul>
        {foreach $pages as $p name=pg}
        {* Выводим только страницы из первого меню *}
        {if $p->menu_id == 1}
        <li {if $page && $page->id == $p->id}class="selected"{/if}> <a data-page="{$p->id}" href="{$p->url}">{$p->name|escape}</a> </li>
        {if $smarty.foreach.pg.last}{else}
        <li class="hr"></li>
        {/if}
        {/if}
        {/foreach}
      </ul>
    </div>
    {*
    <div class="header-brand-menu"> 
      
      <!-- Все бренды --> 
      
      {get_brands var=all_brands}
      {if $all_brands}
      <ul>
        {foreach $all_brands as $b name=brands}
        <li><a href="brands/{$b->url}">{$b->name}</a></li>
        {if $smarty.foreach.brands.last}{else}
        <li class="hr"></li>
        {/if}
        
        {/foreach}
      </ul>
      {/if} 
      <!-- Все бренды (The End)--> 
    </div>
    *} </header>
  <!-- .header-->
  
  <div class="top-panel">
    <div class="top-panel-inner">
 
      <div class="top-panel-inner-block1"><a href="/">Войти</a> / <a href="/">Зарегестрироваться</a></div>
      
          <div class="top-panel-search">
        <form action="products">
          <input class="input_search textbox" type="text" name="keyword" value="{$keyword|escape}" placeholder="Что вы ищите? Введите искомую фразу..."/>
          <input class="btn-white" value="Искать" type="submit" style="
    display: block;
    width: 55px;
    height: 25px;
    float: right;
    cursor: pointer;">
        </form>
      </div>
      
      <!-- Корзина -->
      <div id="cart_informer"> {* Обновляемая аяксом корзина должна быть в отдельном файле *}
        {include file='cart_informer.tpl'} </div>
      <!-- Корзина (The End)-->
      
 
    </div>
  </div>
</div>
{* 
<!--баннер-->
<div class="main-top-banner"><img src="design/{$settings->theme|escape}/img/main-banner-top.png" width="940" height="110" alt="мебельная фурнитура вдм групп"/></div>
<!--баннер @--> 
*}
<div class="middle">
  <div class="container">
    <main class="content"> {$content} </main>
    <!-- .content --> 
  </div>
  <!-- .container-->
  
  <aside class="left-sidebar"> 
    <!-- Меню каталога --> 
    
    <!-- Меню каталога -->
    
    <div id="cssmenu"> {* Рекурсивная функция вывода дерева категорий *}
      {function name=categories_tree}
      
      {if $categories}
      <ul>
        {foreach $categories as $c}
        {* Показываем только видимые категории *}
        {if $c->visible}
        <li class='has-sub'> <span> <a {if $category->id == $c->id}class="selected"{/if} href="catalog/{$c->url}" data-category="{$c->id}">
          <table width="auto" border="0" cellspacing="5">
            <tr>
              <td valign="middle"> {if $c->image}<img style="margin-right:10px;" height="49" width="49" src="{$config->categories_images_dir}49x49_{$c->image}" alt="{$c->name}">{/if} </td>
              <td valign="middle"> {$c->name}&nbsp;({$c->count}) </td>
            </tr>
          </table>
          </a> </span> {categories_tree categories=$c->subcategories} </li>
        {/if} 
        {/foreach}
      </ul>
      {/if}
      {/function}
      {categories_tree categories=$categories} </div>
    
    <!-- Меню каталога (The End)--> 
    {*
    <span class="h-pricebutton"><a href="/files/uploads/_vdm-grup.ru_16.04.2014.xlsx" target="_blank"><img src="/files/uploads/price-bttn.png" alt="скачать прайс лист на фурнитуру" width="182" height="55"></a></span> </aside>
  <!-- .left-sidebar --> *}

  <div class="block">
    

           <div id="filter">
             {include file='filter.tpl'}
           </div>

    
  </div>
  
</div>
<!-- .middle-->

</div>
<!-- .wrapper -->

<footer class="footer">
  <div class="footer-wrapper">
    <div class="row1">
      <div class="footer-copyright">&copy; <strong>ВДМ ГРУПП</strong><br>
        2005 &#8212; 2014 г. </div>
      <div class="footer-aboutus">Компания представлена на рынке с 2008 года, мы поставляем мебельную фурнитуру, комплектующие а так же весь спектр необходимого оборудования для производства мебели. Наши сотрудники обладают достаточным опытом и всеми необходимыми качествами для того, чтобы профессионально помочь с выбором нужной именно Вам продукции.</div>
    </div>
  </div>
  <div class="row2">
    <div class="footer-wrapper"> {foreach $categories as $c}
      <div class="footer-cat"> <a href="catalog/{$c->url}" data-category="{$c->id}">{$c->name}</a> </div>
      {/foreach} </div>
  </div>
  <div class="footer-wrapper">
    <div class="row3">
      <div class="socialicons"> Дизайн и продвижение сайта — <a href="//vk.com/misterslan">Руслан Ахметов</a> {*
        {literal} 
        <script type="text/javascript">(function() {
  if (window.pluso)if (typeof window.pluso.start == "function") return;
  if (window.ifpluso==undefined) { window.ifpluso = 1;
    var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
    s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
    s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
    var h=d[g]('body')[0];
    h.appendChild(s);
  }})();</script>
        <div class="pluso" data-background="transparent" data-options="small,square,line,horizontal,nocounter,theme=08" data-services="vkontakte,odnoklassniki,facebook,twitter,google,moimir,email,print"></div>
        {/literal} *} </div>
      <div class="contacts">Время работы: c 9.00 до 18.00, без выходных<span class="email"><em>Почта:</em>{$settings->site_mail|escape}</span></div>
      <div class="phone">{$settings->site_phone|escape}</div>
    </div>
  </div>
  </div>
</footer>
<div id="scrollup" style="display: block; opacity: 0.8;"> <img src="design/{$settings->theme|escape}/images/blank.gif" class="ic up" alt="Подняться наверх"> </div>
<!-- .footer --> 
<!--подгрузка картинок--> 
{literal} 
<script>
$("img.lazy").lazyload({
    effect : "fadeIn"
});
</script> 
<!-- Yandex.Metrika counter --> 
<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter23959831 = new Ya.Metrika({id:23959831,
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
<noscript>
<div><img src="//mc.yandex.ru/watch/23959831" style="position:absolute; left:-9999px;" alt="" /></div>
</noscript>
<!-- /Yandex.Metrika counter --> 

{/literal} 
<!--подгрузка картинок-->
</body>
</html>