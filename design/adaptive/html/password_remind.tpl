{* Письмо пользователю для восстановления пароля *}

<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Контакты" href="/user/password_remind" class="last">Напоминание пароля</a></li>
</ul>

<div id="content">

{if $email_sent}
<h1 class="pagetitle">Вам отправлено письмо</h1>

<p>На {$email|escape} отправлено письмо для восстановления пароля.</p>
{else}
<h1 class="pagetitle">Напоминание пароля</h1>

{if $error}
<div class="message_error">
	{if $error == 'user_not_found'}Пользователь не найден
	{else}{$error}{/if}
</div>
{/if}

<form class="form password_remind_form" method="post">
	<label>Введите email, который вы указывали при регистрации</label>
	<input class="input_name" type="text" name="email" data-format="email" data-notice="Введите email" value="{$email|escape}"  maxlength="255"/>
	<input type="submit" class="btn2_220_full" value="Вспомнить" />
</form>
{/if}

<div class="clear"></div>
</div>