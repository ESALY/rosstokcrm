<!DOCTYPE html>
<html>
<head>
<base href="{$config->root_url}/"/>
<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<title></title>

{* Метатеги *}
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="{$meta_description|escape}" />
<meta name="keywords"    content="{$meta_keywords|escape}" />

{* Стили *}
<link href="design/{$settings->theme|escape}/css/style.css" rel="stylesheet">

<!-- скрипты -->
	{* JQuery *}
	<script src="js/jquery/jquery.js"  type="text/javascript"></script>
<script src="design/furnitura/js/jquery.lazyload.js" type="text/javascript"></script>


{* Увеличитель картинок *}
	<script type="text/javascript" src="js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<link rel="stylesheet" href="js/fancybox/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
</head>

<body>
<div class="top-panel">
  <div class="top-panel-inner">
    <div class="top-panel-inner-block1"><a href="/">Войти</a> / <a href="/">Зарегестрироваться</a></div>
    <div class="top-panel-basket"><span> У вас в корзине <a class="top-panel-basket-link" href="/">5 товаров</a><br>
      на сумму 200 руб. </span>
      <div class="button"><a href="#" class="btn-white">Оформить заказ</a></div>
    </div>
    <div class="top-panel-search">
    <form action="products">
          <input class="textbox" type="text" name="keyword" value="{$keyword|escape}" placeholder="Что вы ищите? Введите искомую фразу..."/>
          <input class="btn-white" value="Искать" type="submit" style="
    display: block;
    width: 55px;
    height: 25px;
    float: right;
    cursor: pointer;
">
    </form>
    </div>
  </div>
</div>
<div class="wrapper">
  <header class="header">
    <div class="logo">
    <a href="/"><img src="design/{$settings->theme|escape}/img/logo.png" title="{$settings->site_name|escape}" alt="{$settings->site_name|escape}"/></a></div>
    <div class="header-worktime"><em>Время работы:<strong> c 9.00 до 18.00</strong>, без выходных</em></div>
    <div class="header-phone"><small>+7 (927) </small><strong>389-84-62</strong><div id="liveTexButton_66605"></div></div>
    <div class="main-menu">
<!-- Меню -->
    <ul>
      {foreach $pages as $p name=pg}
        {* Выводим только страницы из первого меню *}
        {if $p->menu_id == 1}
        <li {if $page && $page->id == $p->id}class="selected"{/if}>
          <a data-page="{$p->id}" href="{$p->url}">{$p->name|escape}</a>
        </li>
        {if $smarty.foreach.pg.last}{else}
          <li class="hr"></li>
        {/if}
        {/if}
      {/foreach}
    </ul>
    <!-- Меню (The End) -->


    </div>
    <div class="header-brand-menu">


    <!-- Все бренды -->
      {* Выбираем в переменную $all_brands все бренды *}
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
  </header>
  <!-- .header-->
  
  <!--баннер-->
  <div class="main-top-banner"><img src="design/{$settings->theme|escape}/img/main-banner-top.png" width="940" height="110" alt="мебельная фурнитура вдм групп"/></div>
  <!--баннер @-->
  
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
      <!-- Каталог -->
		<script language="javascript">
		{literal}
		function sub_menu(id,hide)
		{
			var ele = document.getElementById('submenu'+id);
			var text = document.getElementById('subtext'+id);
			if(hide, ele.style.display == "block"){
				document.getElementById('submenu'+id).style.display='none';
				text.innerHTML = "+";
			}else{
				document.getElementById('submenu'+id).style.display='block';
				text.innerHTML = "-";
			}
		}
		{/literal}
		</script>
		{function name=categories_tree}
		{if $categories}
		<ul>
		{foreach $categories as $c}
			{if $c->visible}
			<div>
			<li>
				<a {if $category->id == $c->id}class="selected"{/if} href="catalog/{$c->url}" data-category="{$c->id}">{$c->name}</a>
				{if $c->subcategories}
					<a id="subtext{$c->id}" href="javascript:sub_menu({$c->id}, 0)">+</a></li>
				{/if}
				{if in_array($category->id, $c->children)}
					<div>
					{categories_tree categories=$c->subcategories}
					</div>
				{else}
					<div style="display:none;" id="submenu{$c->id}">
					{categories_tree categories=$c->subcategories}
					</div>
				{/if}
			</li>
			</div>
			{/if}
		{/foreach}
		</ul>
		{/if}
		{/function}
		{categories_tree categories=$categories}
		<!-- Каталог End -->
      <!-- Меню каталога (The End)-->   
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
      <div class="footer-aboutus">«ВДМ-ГРУПП» — компания с многолетним стажем работы на рынке. Клиенты доверяют нам с 2005 года. За это время у нас сложились партнёрские отношения с ведущими производителями, позволяющие предлагать высококачественную продукцию по конкурентоспособным ценам. Наша складская программа, насчитывающая более 8000 наименований продукции, постоянно пополняется с учетом ваших потребностей.</div>
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
     {/literal}
    
    </div>
  <div class="contacts">Время работы: c 9.00 до 18.00, без выходных<span class="email"><em>Почта:</em> info@vdm-grup.ru</span></div>
    <div class="phone">+7 (927) <strong>389-84-62</strong></div>
  </div>
  
  </div>
  </div>
</footer>
<!-- .footer --> 
<!--подгрузка картинок-->
{literal} 
<script>
$("img.lazy").lazyload({
    effect : "fadeIn"
});
</script>
<!-- LiveTex {literal} -->
<script type='text/javascript'>
    var liveTex = true,
    liveTexID = 72800,
    liveTex_object = true;
    (function() {
    var lt = document.createElement('script');
    lt.type ='text/javascript';
    lt.async = true;
    lt.src = '//cs15.livetex.ru/js/client.js';
    var sc = document.getElementsByTagName('script')[0];
    if ( sc ) sc.parentNode.insertBefore(lt, sc);
    else document.documentElement.firstChild.appendChild(lt);
    })();
</script>
<!-- LiveTex {/literal} -->
{/literal}
<!--подгрузка картинок-->
</body>
</html>