{* Список записей блога *}

<!-- Заголовок /-->


<h1 class="ie6_main_h1">
Новости компании
<i><br></i></h1>


<!-- Статьи /-->
<ul id="blog">
	{foreach $posts as $post}
	<li>
		<h3><a data-post="{$post->id}" href="blog/{$post->url}">{$post->name|escape}</a></h3>
		<p>{$post->date|date}</p>
		<p>{$post->annotation}</p>
	</li>
	{/foreach}
</ul>
<!-- Статьи #End /-->    

{include file='pagination.tpl'}
          