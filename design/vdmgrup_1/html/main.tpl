{* Главная страница магазина *}

{* Для того чтобы обернуть центральный блок в шаблон, отличный от index.tpl *}
{* Укажите нужный шаблон строкой ниже. Это работает и для других модулей *}
{* Страница товара *}
{$wrapper = 'index.tpl' scope=parent}
{* Тело страницы *}


<!-- Слайдер спецпредложений /-->
{*include file='slider.tpl'*}	
<!-- Слайдер спецпредложений #End /-->

{* Рекомендуемые товары *}
{get_featured_products var=featured_products}
{if $featured_products}
<!-- Список товаров-->
               <div class="title-proposition-h">
          <div class="frame-title">
            <div class="title">
СПЕЦПРЕДЛОЖЕНИЯ
            </div>
          </div>
</div>
<ul class="products">

	{foreach $featured_products as $product}
	<!-- Товар-->
	<li class="b1c-good">
		<span class="price">
        
       {foreach $product->options as $f}
{if {$f->name} == 'k_opt'} 
  от</br>{$f->value}
{/if}
{/foreach} руб.
         </span>
		<!-- Фото товара -->
		{if $product->image}
		<div class="image">
			<a href="products/{$product->url}"><img class="lazy" data-original="{$product->image->filename|resize:200:200}" alt="{$product->name|escape}"/></a>
		</div>
		{/if}
		<!-- Фото товара (The End) -->

		<!-- Название товара -->
         <h3><a data-product="{$product->id}" href="products/{$product->url}"><span class="b1c-name">{$product->name|escape}</span></a></h3>
		<!-- Название товара (The End) -->
		

 
<div class="prod-tobasket">
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
					
				</td>
			</tr>
			{/foreach}
			</table>
			<input type="submit" class="button" value="в корзину" data-result-text="добавлено"/>
		</form>
</div>
	</li>
	<!-- Товар (The End)-->
	{/foreach}
			
</ul>
{/if}


{* Новинки *}
{get_new_products var=new_products limit=3}
{if $new_products}
               <div class="title-proposition-h">
          <div class="frame-title">
            <div class="title">
НОВИНКИ
            </div>
          </div>
</div>
<!-- Список товаров-->
<ul class="products">

	{foreach $new_products as $product}

	<!-- Товар-->
	<li class="b1c-good">
		<span class="price">
        
       {foreach $product->options as $f}
{if {$f->name} == 'k_opt'} 
  от</br>{$f->value}
{/if}
{/foreach} руб.
         </span>
		<!-- Фото товара -->
		{if $product->image}
		<div class="image">
			<a href="products/{$product->url}"><img src="{$product->image->filename|resize:200:200}" alt="{$product->name|escape}"/></a>
		</div>
		{/if}
		<!-- Фото товара (The End) -->

		<!-- Название товара -->
		 <h3><a data-product="{$product->id}" href="products/{$product->url}"><span class="b1c-name">{$product->name|escape}</span></a></h3>
		<!-- Название товара (The End) -->

<div class="prod-tobasket">
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
					
				</td>
			</tr>
			{/foreach}
			</table>
			<input type="submit" class="button" value="в корзину" data-result-text="добавлено"/>
		</form>
</div>
	</li>
	<!-- Товар (The End)-->
	{/foreach}
			
</ul>
{/if}	


{* Акционные товары *}
{get_discounted_products var=discounted_products limit=9}
{if $discounted_products}
<h1>Акционные товары</h1>
<!-- Список товаров-->
<ul class="products">

	{foreach $discounted_products as $product}
	<!-- Товар-->
	<li>
		
		<!-- Фото товара -->
		{if $product->image}
		<div class="image">
			<a href="products/{$product->url}"><img class="lazy" data-original="{$product->image->filename|resize:200:200}" alt="{$product->name|escape}"/></a>
		</div>
		{/if}
		<!-- Фото товара (The End) -->

		<!-- Название товара -->
		<h3><a data-product="{$product->id}" href="products/{$product->url}">{$product->name|escape}</a></h3>
		<!-- Название товара (The End) -->
		
		{if $product->variants|count > 0}
		<!-- Выбор варианта товара -->
		<form class="variants" action="/cart">
			<table>
			{foreach $product->variants as $v}
			<tr class="variant">
				<td>
					<input id="discounted_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} {if $product->variants|count<2}style="display:none;"{/if}/>
				</td>
				<td>
					{if $v->name}<label class="variant_name" for="discounted_{$v->id}">{$v->name}</label>{/if}
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

	</li>
	<!-- Товар (The End)-->
	{/foreach}
			
</ul>
{/if}	
