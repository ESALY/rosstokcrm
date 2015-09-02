{* Шаблон корзины *}

{$meta_title = "Корзина" scope=parent}



<div class="title-proposition-h">
          <div class="frame-title">
            <div class="title">
            
         {if $cart->purchases}В корзине {$cart->total_products} {$cart->total_products|plural:'товар':'товаров':'товара'}
{else}Корзина пуста{/if}
            
            </div>
          </div>
</div>

{if $cart->purchases}
<form method="post" name="cart">

{* Список покупок *}
<div class="datagrid">
<table width="100%">
<thead>
    <tr>
      <th>Фото </th>
      <th>Наименование</th>
      <th>Розница</th>
      <th>Опт</th>
      <th>Кр. опт</th>
      <th>Кр. опт</th>
  </tr></thead>
{foreach from=$cart->purchases item=purchase}
<tr>
	{* Изображение товара *}
	<td width="50" class="no-padding">
		{$image = $purchase->product->images|first}
		{if $image}
		<a href="products/{$purchase->product->url}"><img src="{$image->filename|resize:50:50}" alt="{$product->name|escape}"></a>
		{/if}
	</td>
	
	{* Название товара *}
	<td class="name">
		<a href="products/{$purchase->product->url}">{$purchase->product->name|escape}</a>
		{$purchase->variant->name|escape}			
	</td>

	{* Цена за единицу *}
	<td class="price">
		{($purchase->variant->price)|convert} {$currency->sign}
	</td>

	{* Количество *}
	<td class="amount">
		<select name="amounts[{$purchase->variant->id}]" onchange="document.cart.submit();">
			{section name=amounts start=1 loop=$purchase->variant->stock+1 step=1}
			<option value="{$smarty.section.amounts.index}" {if $purchase->amount==$smarty.section.amounts.index}selected{/if}>{$smarty.section.amounts.index} {$settings->units}</option>
			{/section}
		</select>
	</td>

	{* Цена *}
	<td class="price">
		{($purchase->variant->price*$purchase->amount)|convert}&nbsp;{$currency->sign}
	</td>
	
	{* Удалить из корзины *}
	<td class="remove">
		<a href="cart/remove/{$purchase->variant->id}">
		<img src="design/{$settings->theme}/images/delete.png" title="Удалить из корзины" alt="Удалить из корзины">
		</a>
	</td>
			
</tr>
{/foreach}
{if $user->discount}
<tr>
	<th class="image"></th>
	<th class="name">скидка</th>
	<th class="price"></th>
	<th class="amount"></th>
	<th class="price">
		{$user->discount}&nbsp;%
	</th>
	<th class="remove"></th>
</tr>
{/if}


<tr>
	<th class="image"></th>
	<th class="name"></th>
	<th class="price" colspan="4">
		<span>Итого
                 {$cart->total_price|convert}&nbsp;{$currency->sign}</span>
	</th>
</tr>
</table>
</div>
{* Связанные товары *}
{*
{if $related_products}
<h2>Так же советуем посмотреть</h2>
<!-- Список каталога товаров-->
<ul class="tiny_products">
	{foreach $related_products as $product}
	<!-- Товар-->
	<li class="product">
		
		<!-- Фото товара -->
		{if $product->image}
		<div class="image">
			<a href="products/{$product->url}"><img src="{$product->image->filename|resize:200:200}" alt="{$product->name|escape}"/></a>
		</div>
		{/if}
		<!-- Фото товара (The End) -->

		<!-- Название товара -->
		<h3><a data-product="{$product->id}" href="products/{$product->url}">{$product->name|escape}</a></h3>
		<!-- Название товара (The End) -->

		{if $product->variants|count > 0}
		<!-- Выбор варианта товара -->
			<table>
			{foreach $product->variants as $v}
			<tr class="variant">
				<td>
					{if $v->name}<label class="variant_name" for="related_{$v->id}">{$v->name}</label>{/if}
				</td>
				<td>
					{if $v->compare_price > 0}<span class="compare_price">{$v->compare_price|convert}</span>{/if}
					<span class="price">{$v->price|convert} <span class="currency">{$currency->sign|escape}</span></span>
				</td>
				<td>
					<a href="cart?variant={$v->id}">в корзину</a>
				</td>
			</tr>
			{/foreach}
			</table>
		<!-- Выбор варианта товара (The End) -->
		{else}
			Нет в наличии
		{/if}


	</li>
	<!-- Товар (The End)-->
	{/foreach}
</ul>
{/if}
*}

{* Доставка *}
{if $deliveries}

<div class="title-proposition-h">
          <div class="frame-title">
            <div class="title">
            
        Выберите способ доставки
            
            </div>
          </div>
</div>
<ul id="deliveries">
	{foreach $deliveries as $delivery}
	<li>
		<div class="checkbox">
			<input type="radio" name="delivery_id" value="{$delivery->id}" {if $delivery_id==$delivery->id}checked{elseif $delivery@first}checked{/if} id="deliveries_{$delivery->id}">
		</div>
		
			<h3>
			<label for="deliveries_{$delivery->id}">
			{$delivery->name}
			{if $cart->total_price < $delivery->free_from && $delivery->price>0}
				({$delivery->price|convert}&nbsp;{$currency->sign})
			{elseif $cart->total_price >= $delivery->free_from}
				(бесплатно)
			{/if}
			</label>
			</h3>
			<div class="description">
			{$delivery->description}
			</div>
	</li>
	{/foreach}
</ul>
{/if}
    

<div class="title-proposition-h">
          <div class="frame-title">
            <div class="title">
            
         Адрес получателя
            
            </div>
          </div>
</div>


<div class="cart_form">         
	{if $error}
  <div class="message_error">
		{if $error == 'empty_name'}Введите имя{/if}
		{if $error == 'empty_email'}Введите email{/if}
		{if $error == 'captcha'}Капча введена неверно{/if}
	</div>
	{/if}
	<table width="100%" border="1">
	  <tr>
	    <td><label>Имя, фамилия</label>
        <input name="name" type="text" value="{$name|escape}" data-format=".+" data-notice="Введите имя"/></td>
	    <td><label>Email</label>
        <input name="email" type="text" value="{$email|escape}" data-format="email" data-notice="Введите email" /></td>
	    <td rowspan="2"><label>Комментарий к&nbsp;заказу</label>
        <textarea name="comment" id="order_comment">{$comment|escape}</textarea></td>
      </tr>
	  <tr>
	    <td><label>Телефон</label>
        <input name="phone" type="text" value="{$phone|escape}" /></td>
	    <td><label>Адрес доставки</label>
        <input name="address" type="text" value="{$address|escape}"/></td>
      </tr>
	  <tr>
           <td colspan="3"></td>
      </tr>
  </table>
  
</div>
   
</form>
{else}
  В корзине нет товаров
{/if}