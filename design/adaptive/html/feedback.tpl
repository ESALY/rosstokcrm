{* Страница с формой обратной связи *}

<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Контакты" href="/contact/" class="last">Контакты</a></li>
</ul>

<div id="content">
<h1 class="pagetitle">{$page->name|escape}</h1>

{$page->body}

<h2>Обратная связь</h2>

{if $message_sent}
	{$name|escape}, ваше сообщение отправлено.
{else}
<form style="width: 54%;" class="form feedback_form" method="post">
	{if $error}
	<div class="message_error">
		{if $error=='captcha'}
		Неверно введена капча
		{elseif $error=='empty_name'}
		Введите имя
		{elseif $error=='empty_email'}
		Введите email
		{elseif $error=='empty_text'}
		Введите сообщение
		{/if}
	</div>
	{/if}
	<label>Имя</label>
	<input class="input_name"  data-format=".+" data-notice="Введите имя" value="{$name|escape}" name="name" maxlength="255" type="text"/>
 
	<label>Email</label>
	<input class="input_name"  data-format="email" data-notice="Введите email" value="{$email|escape}" name="email" maxlength="255" type="text"/>
	
	<label>Сообщение</label>
	<textarea class="comment_textarea" data-format=".+" data-notice="Введите сообщение" value="{$message|escape}" name="message">{$message|escape}</textarea>

	

	<div class="captcha"><img src="captcha/image.php?{math equation='rand(10,10000)'}"/></div> 
	<input class="input_captcha" id="comment_captcha" type="text" name="captcha_code" value="" data-format="\d\d\d\d" data-notice="Введите капчу"/>
	<input style="margin: 21px 0px 0px 198px;" class="btn2_220_full" type="submit" name="comment" value="Отправить" />
</form>
{/if}

<div class="clear"></div>
</div>