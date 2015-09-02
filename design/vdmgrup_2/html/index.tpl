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

{* Стили *}
<link href="design/{$settings->theme|escape}/css/hoverzoom.css" rel="stylesheet">
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
<!-- VDS64 Domain code: bca6bc94533bc8a -->
</head>

<body>
<div class="top-panel">
  <div class="top-panel-inner">
    

        <div class="main-menu">

    
    </div>
    

    </div>
    
  </div>
</div>
<div class="wrapper">
  <header class="header">
    <div class="logo">
    <a href="/"><img src="design/{$settings->theme|escape}/img/logo.png" title="{$settings->site_name|escape}" alt="{$settings->site_name|escape}"/></a></div>
    
    <div class="header-right">
    
    {* Поиск *}    

    <div class="top-panel-search">
    
    {*<form action="products">
          <input class="input_search textbox" type="text" name="keyword" value="" placeholder="Что вы ищите? Введите искомую фразу..." autocomplete="off">
          <input class="btn-search" value="Искать" type="submit">
    </form>*}
    
    
    <div id="search">
    <form>
        <input id="field" name="field" type="text" />
        <div id="delete"><span id="x">x</span></div>
        <input id="submit" name="submit" type="submit" value="Поиск" />
    </form>
    </div>
    
    </div>
    
    {literal}
    <script>
    $(document).ready(function() {
    $("#field").keyup(function() {
        $("#x").fadeIn();
        if ($.trim($("#field").val()) == "") {
            $("#x").fadeOut();
        }
    });

    $("#x").click(function() {
        $("#field").val("");
        $(this).hide();
    });
});
    </script>
    {/literal}
    
    {* Поиск@ *}    



    <div class="header-phone"><strong>+7 (927) 389-84-62</strong>
 
     <span class="h-emal">почта: 
     <a href="mailto:opt@vdm-grup.ru">opt@vdm-grup.ru</a>
     
     </span>
    
     
    </div>

    </div>
   

  </header>
  <!-- .header-->
  
  
  
  <!--меню-->
  
  
  
  <div class="menubar-wrapper">
  <div class="menubar">
    <span>КАТАЛОГ ТОВАРОВ</span>
    <nav>
        <ul>
        
        
{function name=categories_tree3}

{if $categories}
{foreach $categories as $c}

{if $c->visible}

<li>
<a name="section-1" id="section-1" class="tab" href="#">
{$c->name}
{$smarty.foreach.categories_tree3.iteration}
</a>
</li>

{/if} 

{/foreach}

{/if}

{/function}
{categories_tree3 categories=$categories}

{**}
        
        
        
            {*<li><a name="section-1" id="section-1" class="tab" href="#">Section 1</a></li>
            <li><a name="section-2" id="section-2" class="tab" href="#">Section 2</a></li>*}
        </ul>
    </nav>
</div>

<div class="menu-wrap">

<div id="section-1-slide-out" class="menu section-1">
     <div class="menu-title">
         <h2>Section 1</h2>
         <a href="#" class="a-z">Section Site Map</a>
     </div>
     <ul>
        <li><a href="#" target="ifrm">Sub section link</a></li>
        <li><a href="#" target="ifrm">Sub section link</a></li>
        <li><a href="#" target="ifrm">Sub section link</a></li>
        <li><a href="#" target="ifrm">Sub section link</a></li>
        <li><a href="#" target="ifrm">Sub section link</a></li>
     </ul>
     <ul>
       {function name=categories_tree2}

{if $categories}
{foreach $categories as $c}

{if $c->visible}

<li>
<a href="#" target="ifrm">
{$c->name}&nbsp;({$c->count})
</a>
</li>


{/if} 

{/foreach}

{/if}

{/function}
{categories_tree2 categories=$categories}
     </ul>    
</div>

<div id="section-2-slide-out" class="menu section-2">
    <div class="menu-title">
         <h2>Section 2</h2>
        <a href="#" class="a-z">Section Site Map</a>
    </div>
     <ul>
       <li><a href="#">Sub section link</a></li>
       <li><a href="#">Sub section link</a></li>
       <li><a href="#">Sub section link</a></li>
       <li><a href="#">Sub section link</a></li>
       <li><a href="#">Sub section link</a></li>
     </ul>
     <ul>
        <li><a href="#">Sub section link</a></li>
     </ul>    
</div>

</div>

<div class="right" id="page">
  
</div>

         </div>

 {literal}
 
 <script>
 
 $(".section-1, .section-2").hide();

    var firstTime = true;
    $("nav a.tab").click(function() {
        var divname = this.name;
        if (!firstTime) {
            if ($(".slid").hasClass(divname)) {
                firstTime = true;
                $(".slid").removeClass("slid").slideUp();
            } else {

                $(".slid").removeClass('slid').slideUp(500, function() {
                    $("." + divname).slideToggle().addClass("slid");

                });
            }
        } else {
            $("." + divname).slideDown().addClass("slid");
            firstTime = false;
        }

    });
    
     $('a#section-1').click(function () {
              $('a#section-1').toggleClass('on');
              $('a#section-2').removeClass('on');
               return false;     
      });
      
      $('a#section-2').click(function () {
              $('a#section-2').toggleClass('on');
              $('a#section-1').removeClass('on');
               return false;     
      });

      $('a.link').click(function () {
              $(".slid").slideUp(500)
              $('a#section-2').removeClass('on');
              $('a#section-1').removeClass('on');
               return false;     
      }); 
      
      $('nav a').click(function(){
              $('nav a').removeClass('on');
              $(this).toggleClass('on');
      });
 
 </script>
 
 {/literal}
  
  
  
  <!--меню-->
  
  
  {*
   <!--баннер-->
  <div class="main-top-banner"><img src="design/{$settings->theme|escape}/img/main-banner-top.png" width="940" height="110" alt="мебельная фурнитура вдм групп"/></div>
  <!--баннер @-->
  *}
  
  <div class="middle">
    <div class="container">
      <main class="content">
      {$content}
      </main>
      <!-- .content --> 
    </div>
    <!-- .container-->
    
    <aside class="left-sidebar">
           <!-- Меню каталога -->

	<!-- Меню каталога -->
                        
                         <div id="cssmenu">
                         
                         {* Рекурсивная функция вывода дерева категорий *}
                         {function name=categories_tree}
                         
                         {if $categories}
                         
                         <ul>
                         {foreach $categories as $c}
                         {* Показываем только видимые категории *}
                         {if $c->visible}
                         <li class='has-sub'>	
                         
                         <span>
                         
                         <a {if $category->id == $c->id}class="selected"{/if} href="catalog/{$c->url}" data-category="{$c->id}">
                         <table width="auto" border="0" cellspacing="5">
  <tr>
    <td valign="middle">
    
    
     {if $c->image}<img style="margin-right:10px;" height="49" width="49" src="{$config->categories_images_dir}49x49_{$c->image}" alt="{$c->name}">{/if}
    
    </td>
    <td valign="middle">
    
     {$c->name}&nbsp;({$c->count})     

    </td>
  </tr>
</table>
</a>                            
                         </span>
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
                        
                        
                        <span class="h-pricebutton"><a href="/files/uploads/_vdm-grup.ru_16.04.2014.xlsx" target="_blank"><img src="/files/uploads/price-bttn.png" alt="скачать прайс лист на фурнитуру" width="182" height="55"></a></span>
    </aside>
    <!-- .left-sidebar --> 
    
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
    <div class="footer-wrapper">
      {foreach $categories as $c}

<div class="footer-cat">

 <a href="catalog/{$c->url}" data-category="{$c->id}">{$c->name}</a>

</div>

{/foreach}

    </div>
  </div>
  <div class="footer-wrapper">

 <div class="row3">
    <div class="socialicons">
    Дизайн и продвижение сайта — <a href="//vk.com/misterslan">Руслан Ахметов</a>
    {*
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
     {/literal} *}
    
    </div>
  <div class="contacts">Время работы: c 9.00 до 18.00, без выходных<span class="email"><em>Почта:</em> info@vdm-grup.ru</span></div>
    <div class="phone">+7 (927) <strong>389-84-62</strong></div>
  </div>
  
  </div>
  </div>
</footer>

<div id="scrollup" style="display: block; opacity: 0.8;">
 <img src="design/{$settings->theme|escape}/images/blank.gif" class="ic up" alt="Подняться наверх">
</div>
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
<noscript><div><img src="//mc.yandex.ru/watch/23959831" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->


{/literal}
<!--подгрузка картинок-->
</body>
</html>