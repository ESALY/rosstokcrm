{* Шаблон страницы зарегистрированного пользователя *}

<h1>{$user->name|escape}</h1>

<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Контакты" href="/user" class="last">Личный кабинет</a></li>
</ul>

<div id="content">

<h1 class="pagetitle">Личный кабинет</h1>

{if $error}
<div class="message_error">
	{if $error == 'empty_name'}Введите имя
	{elseif $error == 'empty_email'}Введите email
	{elseif $error == 'empty_password'}Введите пароль
	{elseif $error == 'user_exists'}Пользователь с таким email уже зарегистрирован
	{else}{$error}{/if}
</div>
{/if}

<form class="form user_form" method="post">
	<label>Имя</label>
	<input class="input_name" data-format=".+" data-notice="Введите имя" value="{$name|escape}" name="name" maxlength="255" type="text"/>
 
	<label>Email</label>
	<input class="input_name" data-format="email" data-notice="Введите email" value="{$email|escape}" name="email" maxlength="255" type="text"/></td>
	
	<label><a href='#' onclick="$('#password').show();return false;">Изменить пароль</a></label>
	<input class="input_name" id="password" value="" name="password" type="password" style="display:none;"/>
	<br><br>
	<input type="submit" class="btn2_220_full" value="Сохранить">
</form>

{if $orders}
<p></p>
<h2>Ваши заказы</h2>
<ul id="orders_history">
{foreach name=orders item=order from=$orders}
	<li>
	{$order->date|date} <a href='order/{$order->url}'>Заказ №{$order->id}</a>
	{if $order->paid == 1}оплачен,{/if} 
	{if $order->status == 0}ждет обработки{elseif $order->status == 1}в обработке{elseif $order->status == 2}выполнен{/if}
	</li>
{/foreach}
</ul>
{/if}

<div class="clear"></div>
</div>