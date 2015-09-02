{* Корзина *}

<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Корзина" href="/cart/" class="last">Корзина</a></li>
</ul>

<h1 class="pagetitle">Корзина</h1>

<div id="content"><!-- content -->
	{if $cart->purchases}
<form id="cart_form" action="" name="cart" method="post">
    <table class="sale_basket_basket data-table">
	    <tbody>
		<tr class="header_repeat_1">
			<th>Изображение</th>
			<th>Название</th>
			<th>Цена</th>
			<th>Количество</th>
			<th>Сумма</th>
			<th>Удалить</th>
		</tr>
			{foreach from=$cart->purchases item=purchase}
			<tr class="tr_hover">
			    <td align="center">
					{$image = $purchase->product->images|first}
						{if $image}
						    <a href="products/{$purchase->product->url}">
							<img  border="0" alt="{$product->name|escape}" src="{$image->filename|resize:60:60}">
						    </a>
						{/if}
				</td>
				<td align="center">
				    <a href="products/{$purchase->product->url}"><b>{$purchase->product->name|escape}</b></a><br>
					<span class="basket-article">{$purchase->variant->name|escape}</span>
			    </td>
				<td align="center">{($purchase->variant->price)|convert} {$currency->sign}</td>
			    <td align="center" class="quantity amount">
				<div class="cell" id="product_{$purchase->variant->id}">
					<a class="minus js-basket-minus"></a>
					<input style="width: 50%;"  type="text" size="3" class="value" value="{$purchase->amount}" max="51" name="amounts[{$purchase->variant->id}]" onchange="document.cart.submit();"  >
					<a class="plus js-basket-plus"></a>
					<div class="clear"></div>
				</div>
				</td>
				<td align="center">{($purchase->variant->price*$purchase->amount)|convert}&nbsp;{$currency->sign}</td>
				<td align="center"><a href="cart/remove/{$purchase->variant->id}" class="delete">Удалить</a></td>
			</tr>
								{/foreach}
			
	<tr class="bottom_tr_color">
			<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
									<td align="center"></td>
									<td nowrap="" align="right"><b></b><br></td>
					<td nowrap="" align="center"> 
									<b>Итого:</b>
					{$cart->total_price|convert}&nbsp;{$currency->sign}<br>
								</td>
			</tr>
</tbody></table>
<br>

<br>
{* Доставка *}
{if $deliveries}
<h2>Выберите способ доставки:</h2>
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
<h2>Адрес получателя</h2>
	<br>
<div class="form cart_form">         
	{if $error}
	<div class="message_error">
		{if $error == 'empty_name'}Введите имя{/if}
		{if $error == 'empty_email'}Введите email{/if}
		{if $error == 'captcha'}Капча введена неверно{/if}
	</div>
	{/if}
	<label>Имя, фамилия</label>
	<input class="input_name"  name="name" type="text" value="{$name|escape}" data-format=".+" data-notice="Введите имя"/>
	
	<label>Email</label>
	<input class="input_name"  name="email" type="text" value="{$email|escape}" data-format="email" data-notice="Введите email" />

	<label>Телефон</label>
	<input class="input_name"  name="phone" type="text" value="{$phone|escape}" />
	
	<label>Адрес доставки</label>
	<input class="input_name"  name="address" type="text" value="{$address|escape}"/>

	<label>Комментарий к&nbsp;заказу</label>
	<br>
	<textarea class="comment_textarea" name="comment" id="order_comment">{$comment|escape}</textarea>
	
	<div class="captcha"><img src="captcha/image.php?{math equation='rand(10,10000)'}" alt='captcha'/></div> 
	<input class="input_captcha" id="comment_captcha" type="text" name="captcha_code" value="" data-format="\d\d\d\d" data-notice="Введите капчу"/>
	
	<div width="30%">
	<input type="submit" id="basketOrderButton2" name="checkout" value="Оформить заказ" class="btn2_220_full"><br>
	
</div>
	</div>

</form>
	{else}
  В корзине нет товаров
{/if}
	
	

<div class="clear"></div>
				</div>
<script src="design/{$settings->theme}/js/cart.js" type="text/javascript"></script>