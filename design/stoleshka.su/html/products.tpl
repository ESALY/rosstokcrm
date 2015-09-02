{* Список товаров *}

<!-- Хлебные крошки /-->


<table border="1" width=100%><tbody>
<tr>

<td>
<div id="path">
	<a href="/">Главная</a>
	{if $category}
	{foreach from=$category->path item=cat}
	→ <a href="catalog/{$cat->url}">{$cat->name|escape}</a>
	{/foreach}  
	{if $brand}
	→ <a href="catalog/{$cat->url}/{$brand->url}">{$brand->name|escape}</a>
	{/if}
	{elseif $brand}
	→ <a href="brands/{$brand->url}">{$brand->name|escape}</a>
	{elseif $keyword}
	→ Поиск
	{/if}
</div>
</td>


<td style="
    text-align: right;
">
<strong>
<span style="font-family: Tahoma, Arial, Helvetica, Geneva, sans-serif; font-size: 13px;">
<a href="/vybor-po-tsvetu">Показать все расцветки</a>
</span></strong>
</td>

<td style="
    text-align: right;
    width: 100px;
">
<a href="/vybor-po-tsvetu">
<img src="/files/uploads/alldecoricon.png" width="86" height="31" style="margin-left: 10px;border-radius: 5px;"></a>
</td>


</tr>
</tbody>
</table>

<!-- Хлебные крошки #End /-->


{* Заголовок страницы *}
{if $keyword}
<h1 class="ie6_main_h1">Поиск {$keyword|escape}<i></i></h1>
{elseif $page}
<h1 class="ie6_main_h1">{$page->name|escape}<i></i></h1>
{else}
<h1 class="ie6_main_h1">{$category->name|escape} {$brand->name|escape} {$keyword|escape}<i></i></h1>
{/if}


{* Описание страницы (если задана) *}
{$page->body}

{if $current_page_num==1}
{* Описание категории *}
{$category->description}
{/if}

{* Фильтр по брендам *}
{if $category->brands}
<div id="brands">
	<a href="catalog/{$category->url}" {if !$brand->id}class="selected"{/if}>Все бренды</a>
	{foreach name=brands item=b from=$category->brands}
		{if $b->image}
		<a data-brand="{$b->id}" href="catalog/{$category->url}/{$b->url}"><img src="{$config->brands_images_dir}{$b->image}" alt="{$b->name|escape}"></a>
		{else}
		<a data-brand="{$b->id}" href="catalog/{$category->url}/{$b->url}" {if $b->id == $brand->id}class="selected"{/if}>{$b->name|escape}</a>
		{/if}
	{/foreach}
</div>
{/if}

{* Описание бренда *}
{$brand->description}

{* Фильтр по свойствам *}
{if $features}
<table id="features">
	{foreach $features as $f}
	<tr>

	<td class="feature_values">
		<a href="{url params=[$f->id=>null, page=>null]}" {if !$smarty.get.$f@key}class="selected"{/if}>Все</a>
		{foreach $f->options as $o}
		<a href="{url params=[$f->id=>$o->value, page=>null]}" {if $smarty.get.$f@key == $o->value}class="selected"{/if}>{$o->value|escape}</a>
		{/foreach}
	</td>
	</tr>
	{/foreach}
</table>
{/if}


<!--Каталог товаров-->
{if $products}

{* Сортировка 
{if $products|count>0}
<div class="sort">
	Сортировать по 
	<a {if $sort=='position'} class="selected"{/if} href="{url sort=position page=null}">умолчанию</a>
	<a {if $sort=='price'}    class="selected"{/if} href="{url sort=price page=null}">цене</a>
	<a {if $sort=='name'}     class="selected"{/if} href="{url sort=name page=null}">названию</a>
</div>
{/if}
*}


<!-- Список товаров-->
<ul class="tiny_products">

	{foreach $products as $product}
	<!-- Товар-->
	<li class="product">
		
		<!-- Фото товара -->
		{if $product->image}
		<div class="image">
			<a href="products/{$product->url}"><img src="{$product->image->filename|resize:200:200}" alt="{$product->name|escape}"/></a>
		</div>
		{/if}
		<!-- Фото товара (The End) -->

		<div class="product_info">
		<!-- Название товара -->
		<h3 class="{if $product->featured}featured{/if}"><a data-product="{$product->id}" href="products/{$product->url}">{$product->name|escape}</a></h3>
		<!-- Название товара (The End) -->

		<!-- Описание товара -->
		<div class="annotation">{$product->annotation}</div>
		<!-- Описание товара (The End) -->
		
		{if $product->variants|count > 0}
		<!-- Выбор варианта товара -->
		<form class="variants" action="/cart">
			<table>
			{foreach $product->variants as $v}
			<tr class="variant">
				<td>
					<input id="variants_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} {if $product->variants|count<2}style="display:none;"{/if}/>
				</td>
				<td>
					{if $v->name}<label class="variant_name" for="variants_{$v->id}">{$v->name}</label>{/if}
				</td>
				<td>
					{if $v->compare_price > 0}<span class="compare_price">{$v->compare_price|convert}</span>{/if}
					<span class="price">{$v->price|convert} <span class="currency">{$currency->sign|escape}</span></span>
				</td>
			</tr>
			{/foreach}
			</table>
			<input type="submit" class="button" value="в корзину" data-result-text="добавлено"/>
		</form>
		<!-- Выбор варианта товара (The End) -->
		{else}
			Нет в наличии
		{/if}

		</div>
		
	</li>
	<!-- Товар (The End)-->
	{/foreach}
			
</ul>

{include file='pagination.tpl'}	
<!-- Список товаров (The End)-->

{else}
Товары не найдены
{/if}	
<!--Каталог товаров (The End)-->