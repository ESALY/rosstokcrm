{* Страница входа пользователя *}
{$meta_title = "Вход" scope=parent}

<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Контакты" href="/user/login" class="last">Вход</a></li>
</ul>

 <div id="content">
<h1 class="pagetitle">Вход</h1>

{if $error}
<div class="message_error">
	{if $error == 'login_incorrect'}Неверный логин или пароль
	{elseif $error == 'user_disabled'}Ваш аккаунт еще не активирован.
	{else}{$error}{/if}
</div>
{/if}

<form class="form login_form comment_name" method="post">
	<label>Email</label>
	<input type="text"  class="input_name" name="email" data-format="email" data-notice="Введите email" value="{$email|escape}" maxlength="255" />

    <label>Пароль (<a href="user/password_remind">напомнить</a>)</label>
    <input  class="input_name" type="password" name="password" data-format=".+" data-notice="Введите пароль" value="" />
	<br><br>

	<input type="submit" class="btn2_220_full" name="login" value="Войти">
</form>

<div class="clear"></div>
</div>