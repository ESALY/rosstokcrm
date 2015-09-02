{* Страница регистрации *}

{$meta_title = "Регистрация" scope=parent}

<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Контакты" href="/user/register" class="last">Регистрация</a></li>
</ul>

<div id="content">

<h1 class="pagetitle">Регистрация</h1>

{if $error}
<div class="message_error">
	{if $error == 'empty_name'}Введите имя
	{elseif $error == 'empty_email'}Введите email
	{elseif $error == 'empty_password'}Введите пароль
	{elseif $error == 'user_exists'}Пользователь с таким email уже зарегистрирован
	{elseif $error == 'captcha'}Неверно введена капча
	{else}{$error}{/if}
</div>
{/if}

<form class="form register_form" method="post">
	<label>Имя</label>
	<input type="text" class="input_name" name="name" data-format=".+" data-notice="Введите имя" value="{$name|escape}" maxlength="255" />
	
	<label>Email</label>
	<input type="text" class="input_name" name="email" data-format="email" data-notice="Введите email" value="{$email|escape}" maxlength="255" />

    <label>Пароль</label>
    <input class="input_name" type="password" name="password" data-format=".+" data-notice="Введите пароль" value="" />

	<div class="captcha"><img src="captcha/image.php?{math equation='rand(10,10000)'}"/></div> 
	<input class="input_captcha" id="comment_captcha" type="text" name="captcha_code" value="" data-format="\d\d\d\d" data-notice="Введите капчу"/>

	<input type="submit" class="btn2_220_full" name="register" value="Зарегистрироваться">

</form>

<div class="clear"></div>
</div>