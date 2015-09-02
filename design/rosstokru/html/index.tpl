<!DOCTYPE html>
<html>
<head>
	<base href="{$config->root_url}/"/>
	<meta charset="utf-8" />
	<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<title></title>
	{* Метатеги *}
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="{$meta_description|escape}" />
 <meta name='yandex-verification' content='547619f2e0268d0f' />


	{* Канонический адрес страницы *}
	{if isset($canonical)}<link rel="canonical" href="{$config->root_url}{$canonical}"/>{/if}

	{* Стили *}
	<link href="design/{$settings->theme|escape}/css/normalize.css" rel="stylesheet" type="text/css" media="screen"/>
	<link href="design/{$settings->theme|escape}/css/style.css" rel="stylesheet" type="text/css" media="screen"/>
	<link href="design/{$settings->theme|escape}/images/favicon.ico" rel="icon"          type="image/x-icon"/>
	<link href="design/{$settings->theme|escape}/images/favicon.ico" rel="shortcut icon" type="image/x-icon"/>

	{* JQuery *}
	<script src="js/jquery/jquery.js"  type="text/javascript"></script>

</head>

<body>
<div class="wrapper">

	<header class="header">
	<div class="header-logo">
	<a href="/"><img src="design/{$settings->theme|escape}/images/logo-main.png" title="{$settings->site_name|escape}" alt="{$settings->site_name|escape}"/></a>
	</div>

<span style="
    float: right;
    margin-top: 35px;
">
<span style="
    font-size: 24px;
    padding: 5px;
">+7 (495) 134-07-27</span>
<span style="
    padding: 5px;
">Почта: info@vdm-grup.ru</span>

<span style="
    margin-left: 30px;
    margin-right: 45px;
">
<span>Пн—Пт: 10:00 — 20:00</span>
<span>Сб—Вс: 11:00 — 19:00</span>
</span>

<span style="
    background: #2D95BF;  border-radius: 7px;  color: #ffffff;  padding: 5px 10px 5px 10px;  text-decoration: none;  border: none;
">Заказать обратный звонок</span>
</span>
		
	<nav>

			<!-- Меню -->
		<ul id="menu">
			{foreach $pages as $p}
				{* Выводим только страницы из первого меню *}
				{if $p->menu_id == 1}
				<li class="category top_level" {if $page && $page->id == $p->id}class="selected"{/if}>
					<a data-page="{$p->id}" href="{$p->url}">{$p->name|escape}</a>
				</li>
				{/if}
			{/foreach}
		</ul>
		<!-- Меню (The End) -->
</nav>
	</header><!-- .header-->

	<div class="middle">

		<div class="container">
			<main class="content">
			{$content}
			</main><!-- .content -->
		</div><!-- .container-->

		<aside class="left-sidebar">
		<div class="left-sidebar-block left-sidebar-block__search">
			<div class="left-sidebar-block__header-green left-sidebar-block__header">Поиск</div>
			<div class="left-sidebar-block__search-inner">
			<form action=""><table class="b-search">
<tr>
    <td class="input">
        <div class="b-input"><input /></div>
    </td>
    <td class="button">
        <input  class="btn" type="submit" value="Найти"/>
    </td>
</tr>
</table></form></div>
		</div>

		<div class="left-sidebar-block left-sidebar-block__catalog">
			<div class="left-sidebar-block__header-green left-sidebar-block__header">Каталог продукции</div>
			<!-- Меню каталога -->
					
			{* Рекурсивная функция вывода дерева категорий *}
			{function name=categories_tree}
			{if $categories}
			<ul {if in_array($category->id, $c->children)}class="cssmenu_left_level_{$c->level+1}"{else}class="{if $c->level}cssmenu_left_level{$c->level}{else}cssmenu_left{/if}"{/if}>
			{foreach $categories as $c}
				{* Показываем только видимые категории *}
				{if $c->visible}
					<li>
						{*if $c->image}<img src="{$config->categories_images_dir}{$c->image}" alt="{$c->name|escape}">{/if*}
						
						{if $c->subcategories}
						<a {if $category->id == $c->id}class="selected"{/if} href="catalog/{$c->url}" data-category="{$c->id}">► {$c->name|escape} ({$c->count})</a>
						{else}
						{*no subcat*}
						{/if}
											{if in_array($category->id, $c->children)}
						{categories_tree categories=$c->subcategories}
						{/if}
					</li>

				{/if}
			{/foreach}
			</ul>
			{/if}
			{/function}
			{categories_tree categories=$categories}
	
			<!-- Меню каталога (The End)-->
		</div>

		<div class="left-sidebar-block left-sidebar-block__inf">
			<div class="left-sidebar-block__header-red left-sidebar-block__header">Цена товара</div>
			<div  class="left-sidebar-block__inf-text">
			При сумме заказа меньше 15 000 рублей цена товара рассчитывается по столбцу "м.опт"
			</div>
		</div>

			<div class="left-sidebar-block left-sidebar-block__inf">
			<div class="left-sidebar-block__header-red left-sidebar-block__header">Отгрузка товара</div>
			<div  class="left-sidebar-block__inf-text">
			Внимание! Продукция отгружается только кратно упаковкам. Единовременная отгрузка производится на сумму не менее 5000 рублей
			</div>
		</div>
		</aside><!-- .left-sidebar -->

		<aside class="right-sidebar">
		<div class="right-sidebar-header l-gradient-green">
		Корзина
		</div>
		<ul class="right-basket-wrapper">
			<li class="right-basket-item"></li>
		</ul>
		</aside><!-- .right-sidebar -->

	</div><!-- .middle-->

</div><!-- .wrapper -->

<footer class="footer">
<!-- Меню -->
		<ul class="footer-menu">
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
		<span>© 2005-2015 Компания «Росток»</span>
</footer><!-- .footer -->

 
 {literal}
 <!-- Yandex.Metrika counter -->
<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter31096746 = new Ya.Metrika({id:31096746,
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
<noscript><div><img src="//mc.yandex.ru/watch/31096746" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
 {/literal}
 
 
</body>
</html>