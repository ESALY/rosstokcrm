<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Разработка проекта — http://www.simpla-template.org.ua/ -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
    <base href="{$config->root_url}/"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<!-- title -->
	<title>{$meta_title|escape}</title>
	<!-- jquery -->
	<script type="text/javascript" src="design/{$settings->theme}/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/jquery-migrate-1.1.1.min.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/script.js"></script>
	<!-- fancybox -->
	<script type="text/javascript" src="design/{$settings->theme}/js/fancybox/jquery.mousewheel-3.0.6.pack.js"></script>
	<link rel="stylesheet" href="design/{$settings->theme}/js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
	<script type="text/javascript" src="design/{$settings->theme}/js/fancybox/jquery.fancybox.pack.js"></script>
	<!-- jscrollpane -->
	<script type="text/javascript" src="design/{$settings->theme}/js/jscrollpane/jquery.jscrollpane.min.js"></script>
	<!-- placeholder -->
	<script type="text/javascript" src="design/{$settings->theme}/js/jquery.placeholder.js"></script>
	<!--[if IE 8]> 
		<link rel="stylesheet" href= "design/{$settings->theme|escape}/css/styleIE8.css" type="text/css" media= "all" /> 
	<![endif]-->
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="robots" content="index, follow" />
	<meta name="description" content="{$meta_description|escape}" />
	<meta name="keywords"    content="{$meta_keywords|escape}" />
	<link href="design/{$settings->theme|escape}/css/style.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/core.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/ajax.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/search.title.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/top_menu.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/system.auth.form.in_head.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/sale.basket.basket.line.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/menu.catalog.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/breadcrumb.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/menu.personal.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/core_popup.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/system.pagenavigation.css" type="text/css" rel="stylesheet" />
	{if $page && $page->url == ''}	
	<link href="design/{$settings->theme|escape}/css/mainbigbanners.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/brand_home.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/quickbuy.list.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/daysarticle2.list.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/long_main_banne.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/news_on_main.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/we_recomended.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/sale.viewed.product.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/catalog_blocks_popup.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/banners2.css" type="text/css" rel="stylesheet" />
	{/if}
	<link href="design/{$settings->theme|escape}/css/bottom_menu.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/catalog.compare.list.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/fancy_auth.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/fancy_feedback.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/fancy_recall.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/template_styles.css" type="text/css" rel="stylesheet" />

	<script type="text/javascript" src="design/{$settings->theme}/js/core_popup.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/core_fx.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/ajax.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/search.title.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/in_header.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/in_head.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/catalog.js"></script>

	{if $page && $page->url == ''}	
	<script type="text/javascript" src="design/{$settings->theme}/js/mainbigbanners.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/brand_home.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/quickbuy.list.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/catalog_blocks_popup.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/banners2.js"></script>
	{/if}

	<script type="text/javascript" src="design/{$settings->theme}/js/fancy_auth.js"></script>
		<script>
		var rsp_fancyclose_reloadpage = false;
		var rsp_fancyclose_by_fancy_delay = 1500;
		
	</script>
	
	
	{* Всплывающие подсказки для администратора *}
	{if $smarty.session.admin == 'admin'}
	<script src ="js/admintooltip/admintooltip.js" type="text/javascript"></script>
	<link   href="js/admintooltip/css/admintooltip.css" rel="stylesheet" type="text/css" /> 
	{/if}
	
	{* Ctrl-навигация на соседние товары *}
	<script type="text/javascript" src="js/ctrlnavigate.js"></script>           
	
	{* Аяксовая корзина *}
	<script src="design/{$settings->theme}/js/jquery-ui.min.js"></script>
	{if $product}
	<script src="design/{$settings->theme}/js/ajax_cart2.js"></script>
	{else}
	<script src="design/{$settings->theme}/js/ajax_cart.js"></script>
	{/if}
	
	
	{* js-проверка форм *}
	<script src="/js/baloon/js/baloon.js" type="text/javascript"></script>
	<link   href="/js/baloon/css/baloon.css" rel="stylesheet" type="text/css" /> 
	
	{* Автозаполнитель поиска *}
	{literal}
	<script src="js/autocomplete/jquery.autocomplete-min.js" type="text/javascript"></script>
	<style>
	
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
	
	{* Стравнение товаров *}
	<script src="design/{$settings->theme}/js/ajax_compare.js"></script>
	{if $product}
	{else}
	<script src="design/{$settings->theme}/js/catalog.compare.result.js"></script>
	{/if}
	<link href="design/{$settings->theme|escape}/css/catalog.compare.result.css" type="text/css" rel="stylesheet" />
	
	{* Все бренды *}
	<link href="design/{$settings->theme|escape}/css/brand.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/opera.css" rel="stylesheet" type="text/opera" media="all" />
	
	{if $products}
	{* Каталог *}
	<script type="text/javascript" src="design/{$settings->theme}/js/catalog/script.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/catalog/slider/jquery.color.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/catalog/slider/jquery.ui.core.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/catalog/slider/jquery.ui.widget.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/catalog/slider/jquery.ui.mouse.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/catalog/slider/jquery.ui.slider.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/lite/script.js"></script>
    
	<link href="design/{$settings->theme}/js/catalog/style.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme}/js/catalog/slider/slider.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme}/js/lite/style.css" type="text/css" rel="stylesheet" />
			
	<link href="design/{$settings->theme|escape}/css/catalog.section.list.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/catalog.sorter.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/catalog_blocks.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/catalog_list_small.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/catalog_list_big.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/iblock.vote.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/stars.css" type="text/css" rel="stylesheet" />
	
	<script src="design/{$settings->theme}/js/catalog.sorter.js"></script>
	<script src="design/{$settings->theme}/js/catalog_blocks.script.js"></script>
	<script src="design/{$settings->theme}/js/catalog_list_small.js"></script>
	<script src="design/{$settings->theme}/js/catalog_list_big.js"></script>
	<script src="design/{$settings->theme}/js/jquery.rater.js" type="text/javascript"></script>
	{/if}
	
	{if $product}
	{* Карточка товара *}
	<link href="design/{$settings->theme|escape}/css/catalog.element.css" type="text/css" rel="stylesheet" />
        <link href="design/{$settings->theme|escape}/css/jquery.jqzoom.css" type="text/css" rel="stylesheet" />
        <link href="design/{$settings->theme|escape}/css/jquery.jscrollpane.css" type="text/css" rel="stylesheet" />
	<link href="design/{$settings->theme|escape}/css/catalog_blocks_popup.css" type="text/css" rel="stylesheet" />
	
	<link href="design/{$settings->theme|escape}/css/fancy_buy1click_basket.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="design/{$settings->theme}/js/catalog.element.js"></script>
        <script type="text/javascript" src="design/{$settings->theme}/js/jquery.jqzoom-core-pack.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/catalog_blocks_popup.js"></script>
	{/if}
	
	{* Обратный звонок *}
	<script> var cm_bt = 0; </script>
	<script type="text/javascript" src="/callme/js/callme.js"></script>
    <script type="text/javascript" src="/buyme/js/buyme.js"></script>
	<script> var bm_lang = "ru"; </script>
	
	{if $module == 'CartView'}
	{* Корзина *}
	<link href="design/{$settings->theme|escape}/css/sale.basket.basket.css" type="text/css" rel="stylesheet" />
        <link href="design/{$settings->theme|escape}/css/fancy_buy1click_basket.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="design/{$settings->theme}/js/sale.basket.basket.js"></script>
	<script type="text/javascript" src="design/{$settings->theme}/js/catalog_blocks_popup.js"></script>
	<link href="design/{$settings->theme|escape}/css/catalog_blocks_popup.css" type="text/css" rel="stylesheet" />
	{/if}
</head>
<body>


	<div class="wrap"><!-- wrap -->
	
		<div class="top_panel"><!-- top_panel -->
			<div class="top_panel_inner">
				<div class="top_panel_inside">
					<div class="search_in_header">
	{*<div id="title-search">
		<form action="products">
			<div class="search_in_header-sample">Например: <a href="#">Мебельная фурнитура</a></div>
			<div class="search_in_header-input">
				<label>
					<div class="image lupa_label"></div>
					<input class="text textinput_in_header input_search" type="text" name="keyword" value="{$keyword|escape}" placeholder="Поиск товара" maxlength="50"  />
				</label>
				<input class="submit" name="s" type="submit" value="&nbsp;" />
			</div>
		</form>
	</div>*}
</div>

					
	<ul class="top_menu">
		{foreach $pages as $p}
				{* Выводим только страницы из первого меню *}
				{if $p->menu_id == 1}
				<li {if $page && $page->id == $p->id}class="selected"{/if}>
					<a data-page="{$p->id}" href="{$p->url}">{$p->name|escape}</a>
				</li>
				{/if}
			{/foreach}
						</ul>
				</div>
			</div>
		</div><!-- /top_panel -->
		<div class="line1"></div>
		<div class="line2"></div>
	
		<div class="wrap_inner"><!-- wrap_inner -->
		
			<div class="wrap_inside"><!-- wrap_inside -->
			
				<div id="header">
					<div class="header_left"></div>
					<div class="header_right"></div>
					<div class="header_center">
						<div class="header-bot_part">
						
							<table class="in_head" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td valign="top" class="pt">
											<!-- logo -->
											<div class="logo nowrap">
												<a href="/">VDM-GRUP.RU</a>
											</div>
											<!-- /logo -->
										</td>
										<td valign="top" align="center" class="pt">
											<!-- center -->
											<div class="around_center_in_head">
												<div class="center">
													<div class="fone_and_feedback">
														<div class="fone nowrap">
															{$settings->site_phone|escape}														</div>
														<div class="feedback">
															<a class="feedback_in_head nowrap" href="/contact">Обратная связь</a>
														</div>
													</div>
													&nbsp; &nbsp; &nbsp; &nbsp; 
													<div class="email_and_recall">
														<div class="email nowrap">
															{$settings->site_mail|escape}														</div>
														<div class="recall">
															<a style="font-size: 12px;" class="callme_viewform" href="#fancyrecall">Заказать обратный звонок</a>
														</div>
													</div>
												</div>
											</div>
											<!-- /center -->
										</td>
										<td valign="top" width="400">
											<!-- personal and basket -->
											<div class="personal_and_basket_in_head">
												<div class="personal_in_head">
													
<div class="personal_in_head_inner">
	<a class="this_icon" href="#">&nbsp;</a>
	<div class="note">Личный кабинет</div>
	         {if $user}
				<span id="username">
					<div class="links">
					<a href="user">{$user->name}</a>
					{if $group->discount>0},
					ваша скидка &mdash; {$group->discount}%{/if}
				</span>&nbsp;
				<a id="logout" href="user/logout">Выйти</a></div>
			{else}
			<div class="links"><a class="fancy_auth_form" href="#fancyauth">Авторизоваться</a></div>
			{/if}
	</div>

<script>
	var RSBAnimateCase = "flying";
</script>												</div>
												<div class="basket_in_head">
												
												<!-- Корзина -->
		<div class="basket_in_head_inner" id="cart_informer">
			{* Обновляемая аяксом корзина должна быть в отдельном файле *}
			{include file='cart_informer.tpl'}
		</div>
		<!-- Корзина (The End)-->
												
											</div>
												<div class="clear"></div>
											</div>
											<!-- /personal and basket -->
										</td>
									</tr>
								</tbody>
							</table>

						</div>
						<div class="catalog_menu">
							
	<div id="menu_catalog" style="overflow:hidden;height:40px;">
		{if $categories}
		<div class="lvl1 li_excess_item"><a class="a_lvl1 a_excess_item" href="#"><span class="span_excess_item"></span></a>
			<div class="submenu_lvl1 submenu_lvl1_excess none2">
				<a class="a_lvl1 asub_excess_item" href="#"><span class="span_excess_item"></span></a>
				<div class="submenu_excess_item_inner">
				{foreach item=c from=$categories}
				        {* Показываем только видимые категории *}
				        {if $c->visible}
				<a class="asub_excess_links section_id_{$c->id}" id="section_id_{$c->id}" href="catalog/{$c->url}" style="display:none;">{$c->name}</a>
				        {/if}
			{/foreach}	
				</div>
			</div>
		</div> 
       {/if}
             		{if $categories}
						{foreach  item=c from=$categories}
				        {* Показываем только видимые категории *}
				        {if $c->visible}
						<div class="lvl1">
						
						
						<a class="a_lvl1 section_id_{$c->id}" id="section_id_{$c->id}"  title="{$c->name}" href="catalog/{$c->url}">{$c->name}</a>
						
							
							{* Рекомендуемые товары *}
                            {get_featured_products var=featured_products category_id = $c->id limit=1 order='RAND()'}
                            {if $featured_products}
							{foreach $featured_products as $product}
							<div class="element_in_menu">
						<div class="element_in_menu_inner">
							<div class="element_in_menu-img">
								<a href="products/{$product->url}">
								{if $product->image}
									<img src="{$product->image->filename|resize:135:135}"  alt="{$product->name|escape}" />
									{else}
									<img alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
									{/if}
																	</a>
							</div>
							<div class="element_in_menu-name"><a href="products/{$product->url}">{$product->name|escape}</a></div>
							<div class="element_in_menu-prices">
							{if $product->variants|count > 0}
																<span class="new_price">{$product->variant->price|convert}</span>
																{else}
																<span class="new_price">Нет в наличии</span>
																{/if}
							</div>
						</div>
					</div>
					{/foreach}
			      {/if}
													{get_brands var=all_brands category_id = $c->id}

			                                           {if $all_brands}
													<div class="brands_in_menu">
						
						<div class="brands_in_menu_inner">
							<div class="brands_in_menu-title">Бренды</div>
							<div class="brands_in_menu-items">
							{foreach $all_brands as $b}	
                                                         <span class="brands_in_menu-item"><a href="catalog/{$c->url}/{$b->url}">{$b->name}</a></span><br />
							{/foreach}
															</div>
						</div>
					</div>
					{/if}
				{if $c->subcategories}
				{foreach item=cat from=$c->subcategories}
				{* Показываем только видимые категории *}
				{if $cat->visible}
				<div class="lvl2">
				<a class="a_lvl2" href="catalog/{$cat->url}">{$cat->name}</a>
		        {if $cat->subcategories}
				{foreach $cat->subcategories as $cat3}
				{* Показываем только видимые категории *}
				{if $cat3->visible}
				<div class="lvl3"><a class="a_lvl3" href="catalog/{$cat3->url}" title="{$cat3->name}">{$cat3->name}</a></div>
			    {/if}
				{/foreach}
				{/if}
				</div>
				{/if}
				{/foreach}
                 {/if}				
                                                         																								 
				</div>
						                                     {/if}
						                                 {/foreach}															
															{/if}


					                      <div class="clear"></div>
	</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
				
								
			<div id="title-search">					
                         <div id="search">
                         

                         <div class="search_in_header-sample">Например: <a href="#">Мебельная фурнитура</a></div>
    <form action="products">
        <input class="text textinput_in_header input_search" id="field" 
        
        name="keyword" value="{$keyword|escape}"
        
        placeholder="Поиск среди десятков тысяч товаров" type="text" />
        <div id="delete"><span id="x">x</span></div>
        <input id="submit" name="submit" type="submit" value="Поиск" />
    </form>
</div>
</div>


                         {literal}
                         
                         <script type="text/javascript">
var jsControl = new JCTitleSearch({
	'AJAX_PAGE' : '//',
	'CONTAINER_ID': 'title-search',
	'INPUT_ID': 'title-search-input',
	'MIN_QUERY_LEN': 2
});
</script>
                         
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
                         
                         <!--Рубрикатор @start-->

<div class="text_3ColBlock">	
<span><a href="http://vdm-grup.ru/catalog/instrumenty-dlya-proizvodstva-mebeli">Инструменты для производства мебели</a></span>
<span><a href="http://vdm-grup.ru/catalog/kuhonnye-mojki">Кухонные мойки</a></span>
<span><a href="http://vdm-grup.ru/catalog/kuhonnye-aksessuary-i-furnitura">Кухонные аксессуары и фурнитура</a></span>
<span><a href="http://vdm-grup.ru/catalog/ruchki">Ручки</a></span>
<span><a href="http://vdm-grup.ru/catalog/napravlyayuschie">Направляющие</a></span>
<span><a href="http://vdm-grup.ru/catalog/furnitura-dlya-myagkoj-mebeli">Фурнитура для мягкой мебели</a></span>
<span><a href="http://vdm-grup.ru/catalog/petli">Петли</a></span>
<span><a href="http://vdm-grup.ru/catalog/upakovochnye-materialy">Упаковочные материалы</a></span>
<span><a href="http://vdm-grup.ru/catalog/polkoderzhateli">Полкодержатели</a></span>
<span><a href="http://vdm-grup.ru/catalog/kronshtejny">Кронштейны</a></span>
<span><a href="http://vdm-grup.ru/catalog/klei-dlya-proizvodstva">Клеи для производства</a></span>
<span><a href="http://vdm-grup.ru/catalog/komplektuyuschie-dlya-shkafov-kupe">Комплектующие для шкафов-купе</a></span>
<span><a href="http://vdm-grup.ru/catalog/zamki">Замки</a></span>
<span><a href="http://vdm-grup.ru/catalog/osveschenie">Освещение</a></span>
<span><a href="http://vdm-grup.ru/catalog/ofisnaya-furnitura">Офисная фурнитура</a></span>
<span><a href="http://vdm-grup.ru/catalog/napolnenie-shkafov">Наполнение шкафов</a></span>
<span><a href="http://vdm-grup.ru/catalog/rashodnye-materialy-dlya-proizvodstva">Расходные материалы для производства</a></span>
<span><a href="http://vdm-grup.ru/catalog/opory">Опоры</a></span>
<span><a href="http://vdm-grup.ru/catalog/truby-i-komplektuyuschie">Трубы и комплектующие</a></span>
<span><a href="http://vdm-grup.ru/catalog/krepezhnaya-furnitura">Крепежная фурнитура</a></span>
<span><a href="http://vdm-grup.ru/catalog/kromochnye-materialy">Кромочные материалы</a></span>
<span><a href="http://vdm-grup.ru/catalog/profil-dlya-stoleshnits-i-panelej">Профиль для столешниц и панелей</a></span>
<span><a href="http://vdm-grup.ru/catalog/kryuchki-mebelnye">Крючки мебельные</a></span>
</div>
<!--Рубрикатор @end-->
				
				

{$content}
					
					
		
				<div id="footer">
					
					<div class="wrap_footer">
						
<ul class="bottom_menu">
			<li><a href="/"><span class="left">Главная</span></a></li>
		<li class="ver_lin">&nbsp;</li>	
			{foreach $pages as $p}
				{* Выводим только страницы из первого меню *}
				{if $p->menu_id == 1}
				<li {if $page && $page->id == $p->id}class="selected"{/if}>
					<a data-page="{$p->id}" href="{$p->url}"><span>{$p->name|escape}</span></a>
				</li>
				<li class="ver_lin">&nbsp;</li>	
				{/if}
			{/foreach}
			
</ul>
						<div class="clear"></div>
						<div class="footer_info">
							<span class="bot_tel"><b>Телефон:</b> {$settings->site_phone|escape}</span> <span class="bot_email"><b>Email:</b> {$settings->site_mail|escape}</span> <span class="bot_adres">
                                                        <b>Адрес компании:</b> {$settings->site_address|escape}</span>							<div class="social_set">
								<a  class="fb" href="/" ></a> 
<a class="vk" href="/" ></a>
<a class="tv" href="/" ></a> 
							</div>
							<div class="clear"></div>
						</div>
						
						<div class="clear"></div>
						<div class="copyright">
							<font>&copy; {$smarty.now|date_format:"%Y"} {$settings->company_name}. Все цены указаны в рублях</font>
						</div>
						<div class="developer">
							<span class="dev">Powered by <a href="http://www.simpla-template.org.ua/"><b>Simpla Template</b></a></span>
						</div>
						
					</div>
					
				</div>	<!-- /footer -->	
				
			</div><!-- /wrap_inside -->
			
		</div><!-- /wrap_inner -->
		
	</div><!-- /wrap -->
	
	<!------------------------ compare ------------------------>
	<div id="compare_informer" >
	{if $compare_informer->total>0}
<div id="cat_compare_fixed">
	<form method="get" action="/compare/">
		<div class="cat_compare_fixed">
			<div class="cat_compare_fixed-list">
				<div data-schet="0" class="cat_compare_fixed-item">
						<noindex>
							<a style="font-size: 45px; font-weight: bold; text-decoration: none;" rel="nofollow" title="" href="/compare/" class="cat_compare_fixed-item_link">
		                    {$compare_informer->total}
							</a>
						</noindex>
					</div>
				</div>
			<div class="clear"></div>
			{if $compare_informer->total>1}
							<input type="submit" value="&nbsp;" class="compare_btn_submit">
							{/if}
				
					</div>
	</form>
	</div>


{/if}
</div>
<!------------------------ /compare ------------------------>
	
<!------------------------ fancybox - auth ------------------------>
	<div id="fancyauth" style="display:none;">
	{if $error}
<div class="message_error">
	{if $error == 'login_incorrect'}Неверный логин или пароль
	{elseif $error == 'user_disabled'}Ваш аккаунт еще не активирован.
	{else}{$error}{/if}
</div>
{/if}
	


<div class="fancybox-title fancybox-title-inside-wrap">Авторизация</div>
<div class="fancyauthform">
<form  action="/user/login"  method="post">
	<table>
		<tr>
			<td colspan="2"><input type="text" name="email" data-format="email" data-notice="Введите email" value="{$email|escape}" class="text_300"   maxlength="50" placeholder="Email" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="around_passw">
					<input class="text_300" maxlength="50" type="password" name="password" data-format=".+" data-notice="Введите пароль"  placeholder="Пароль" />
					<div class="passw_forgot"><noindex><a href="/user/password_remind">Забыли?</a></noindex></div>
				</div>
							</td>
		</tr>
				<tr>
			<td width="120"><input class="btn2_105_full submit_btn" type="submit" name="login" value="Войти" /></td>
			<td>
								<input id="USER_REMEMBER_frm" class="check" type="checkbox" value="Y" name="USER_REMEMBER">	
					<label class="label_remember_me" for="USER_REMEMBER_frm" title="Запомнить меня на этом компьютере">Запомнить меня</label>
							</td>
		</tr>
	</table>
</form>
</div>
<div class="fancybox-footer fancybox-footer-inside-wrap">
	
	<noindex><a   data-newtitle="Регистрация" href="/user/register" rel="nofollow">Регистрация</a></noindex>
	</div>


	<!------------------------ /fancybox - auth ------------------------>
		
	
	

</body>
</html>

