{* Список товаров *}

{* Канонический адрес страницы *}
{if $category && $brand}
{$canonical="/catalog/{$category->url}/{$brand->url}" scope=parent}
{elseif $category}
{$canonical="/catalog/{$category->url}" scope=parent}
{elseif $brand}
{$canonical="/brands/{$brand->url}" scope=parent}
{elseif $keyword}
{$canonical="/products?keyword={$keyword|escape}" scope=parent}
{else}
{$canonical="/products" scope=parent}
{/if}

<!-- Хлебные крошки /-->
<div class="path">
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
<!-- Хлебные крошки #End /-->

{* Заголовок страницы *}
{if $keyword}
<h1>Поиск {$keyword|escape}</h1>
{elseif $page}
<h1>{$page->name|escape}</h1>
{else}
<h1>{$category->name|escape} {$brand->name|escape} {$keyword|escape}</h1>
{/if}

{* Описание страницы (если задана) *}
{$page->body}

{if $current_page_num==1}
{* Описание категории *}
{$category->description}
{/if}

{* Фильтр по брендам
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
 *}

{if $current_page_num==1}
{* Описание бренда *}
{$brand->description}
{/if}

{* Фильтр по свойствам
{if $features}
<table id="features">
	{foreach $features as $f}
	<tr>
	<td class="feature_name" data-feature="{$f->id}">
		{$f->name}:
	</td>
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
*}

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

{*include file='pagination.tpl'*}


{* Рекурсивная функция прохода по всем подкатегориям *}
{function name=categories_recursiv}

{*start*}

{foreach $categories as $c}
<li class="product">

{if !$c->subcategories}

		<div class="product-header l-gradient-green">
		<h3 class="">
		<a data-product="" href="">{$c->name|escape}</a>
		</h3>
		</div>
		<div class="product_info">

		<!-- Фото товара -->

		<img class="lazy" data-original="{$c->image->filename|resize:100:100}" alt=""/>

		</div>


		<!-- Фото товара (The End) -->

{get_products var=all_products limit=100 category_id=$c->id}
{if $all_products}
<div class="product-body-wrapper">
		<table class="products-table">
	<thead>
		<tr>
		  <th>Фото</th>
			<th>Артикул</th>
			<th>Описание</th>
			<th>Остаток</th>
			<th>Цена</th>
			<th>Кол-во</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
{foreach $all_products as $cp}
<tr>
<td>

{if $cp->image}
		<div class="image">
		<a href="products/{$cp->url}"><img class="lazy" data-original="{$cp->image->filename|resize:50:50}" alt="{$cp->name|escape}"/></div></a>
		</div>
		{/if}
</td>
			<td>
			<span style="background: linear-gradient(to bottom,#4EBA6F 0%,#3EA35D 100%);
border-left: 1px solid #88c86d;
border-right: 1px solid #88c86d;
padding: 3px 10px;
border-radius: 13px;
color: white;
font-weight: bold;
margin-top: 5px;
display: inline-block;
font-size: 9px;">
			{if $cp->variants}
			{foreach $cp->variants as $v}{$v->sku}{/foreach}
			{else}
			{$cp->id}
			{/if}
			</span>
			</td>
			<td>{$cp->name}
			</td>
			<td style="text-align: center;">{foreach $cp->variants as $v}{$v->stock}{/foreach}</td>
			<td>{foreach $cp->variants as $v}{$v->price}{/foreach}</td>
			<td><input type="text" class="form_order_2" style="width:50px;" name="1goods_order"></td>
			<td><span class="btn" style="cursor: pointer;">купить</span></td>
		</tr>
{/foreach}

{/if}

</div>
{/if}

{categories_recursiv categories=$c->subcategories}

</li>
{/foreach}
	</tbody>
</table>

{*end*}
{/function}

<ul class="products">
{categories_recursiv categories=$category->subcategories}
</ul>

{*<ul class="products">
		{foreach $category->subcategories as $c}
		<li class="product {if $c->products}{else}product-titleview{/if}">
		<div class="product-header l-gradient-green">
		<h3 class=""><a data-product="" href="">{$c->name|escape}</a></h3>
		</div>
		<div class="product_info">

		<!-- Фото товара -->

		<div class="product-image-wrapper">
		{if $c->image}<img style="max-width: 198px;max-height: 198px;" src="{$config->categories_images_dir}{$c->image}" alt="{$c->name|escape}">{/if}
		</div>

		<!-- Фото товара (The End) -->
		{if $c->products}
		<div class="product-body-wrapper">
		<table class="products-table">
	<thead>
		<tr>
			<th>Артикул</th>
			<th>Описание</th>
			<th>Упаковка</th>
			<th>Ед.изм.</th>
			<th>Заказать</th>
		</tr>
	</thead>
	<tbody>
		{foreach $c->products as $cp}
		<tr>
			<td>
			<span style="background: rgb(11, 163, 167);padding: 5px;border-radius: 13px;color: white;font-weight: bold;">артикул</span>
			</td>
			<td>{$cp->name}
			</td>
			<td>3</td>
			<td>4</td>
			<td><input type="text" class="form_order_2" style="width:50px;" name="1goods_order"></td>
		</tr>
		{/foreach}
	</tbody>
</table>
<div class="product-buy">купить</div>
		</div>
		{/if}
		</div>
		</li>
		{/foreach}
</ul>*}

<!-- Список товаров-->
{*<ul class="products">

	{foreach $products as $product}
	<!-- Товар-->
	<li class="product product-titleview">
	<div class="product-header l-gradient-green">
		<!-- Название товара -->
		<h3 class="{if $product->featured}featured{/if}"><a data-product="{$product->id}" href="products/{$product->url}">{$product->name|escape}</a></h3>
	</div>
		<!-- Название товара (The End) -->
		<div class="product_info">

		<!-- Фото товара -->

		<div class="product-image-wrapper">1111
		{if $product->image}
			<a href="products/{$product->url}"><img src="{$product->image->filename|resize:200:200}" alt="{$product->name|escape}"/></a>
		{/if}
		</div>

		<!-- Фото товара (The End) -->

		<div class="product-body-wrapper">
		<table>
	<thead>
		<tr>
			<th>Артикул</th>
			<th>Описание</th>
			<th>Упаковка</th>
			<th>Ед.изм.</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
			<td>4</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>


		</div>
		</div>

	</li>
	<!-- Товар (The End)-->
	{/foreach}

</ul>*}

{include file='pagination.tpl'}
<!-- Список товаров (The End)-->

{else}
Товары не найдены
{/if}
<!--Каталог товаров (The End)-->