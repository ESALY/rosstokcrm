{* Страница отдельной записи блога *}


<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Контакты" href="blog/">Блог</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Контакты" href="blog/{$post->url}" class="last">{$post->name|escape}</a></li>
</ul>

<div id="content">
<!-- Заголовок /-->
<h1 class="pagetitle" data-post="{$post->id}">{$post->name|escape}</h1>
<br>
<p>{$post->date|date}</p>
<br>

<!-- Тело поста /-->
{$post->text}

<br>
<!-- Соседние записи /-->
<div id="back_forward">
	{if $prev_post}
		←&nbsp;<a class="prev_page_link" href="blog/{$prev_post->url}">{$prev_post->name}</a>
	{/if}
	{if $next_post}
		<a class="next_page_link" href="blog/{$next_post->url}">{$next_post->name}</a>&nbsp;→
	{/if}
</div>
<br>

<!-- Комментарии -->
<div id="comments">

	<h2>Комментарии</h2>
	
	{if $comments}
	<!-- Список с комментариями -->
	<ul class="comment_list">
		{foreach $comments as $comment}
		<a name="comment_{$comment->id}"></a>
		<li>
			<!-- Имя и дата комментария-->
			<div class="comment_header">	
				{$comment->name|escape} <i>{$comment->date|date}, {$comment->date|time}</i>
				{if !$comment->approved}ожидает модерации</b>{/if}
			</div>
			<!-- Имя и дата комментария (The End)-->
			
			<!-- Комментарий -->
			{$comment->text|escape|nl2br}
			<!-- Комментарий (The End)-->
		</li>
		{/foreach}
	</ul>
	<!-- Список с комментариями (The End)-->
	{else}
	<p>
		Пока нет комментариев
	</p>
	{/if}
	
	<!--Форма отправления комментария-->

	<!--Подключаем js-проверку формы -->
	<script src="/js/baloon/js/default.js" language="JavaScript" type="text/javascript"></script>
	<script src="/js/baloon/js/validate.js" language="JavaScript" type="text/javascript"></script>
	<script src="/js/baloon/js/baloon.js" language="JavaScript" type="text/javascript"></script>
	<link href="/js/baloon/css/baloon.css" rel="stylesheet" type="text/css" /> 
	
	<form style="width: 450px;"  class="comment_form" method="post" action="">
		<h2>Написать комментарий</h2>
		{if $error}
		<div class="message_error">
			{if $error=='captcha'}
			Неверно введена капча
			{elseif $error=='empty_name'}
			Введите имя
			{elseif $error=='empty_comment'}
			Введите комментарий
			{/if}
		</div>
		{/if}
		<textarea class="comment_textarea" id="comment_text" name="text" data-format=".+" data-notice="Введите комментарий">{$comment_text}</textarea><br />
		<div>
		<label for="comment_name">Имя</label>
		<input class="input_name" type="text" id="comment_name" name="name" value="{$comment_name|escape}" data-format=".+" data-notice="Введите имя"/><br />
        
		
		
		<label for="comment_captcha">Число</label>
		<div class="captcha"><img src="captcha/image.php?{math equation='rand(10,10000)'}"/></div> 
		<input class="input_captcha" id="comment_captcha" type="text" name="captcha_code" value="" data-format="\d\d\d\d" data-notice="Введите капчу"/>
		<input style="margin: 18px 0px 0px 131px;" class="btn2_220_full" type="submit" name="comment" value="Отправить" />
		</div>
	</form>
	<!--Форма отправления комментария (The End)-->
	
</div>
<!-- Комментарии (The End) -->

<div class="clear"></div>
</div>