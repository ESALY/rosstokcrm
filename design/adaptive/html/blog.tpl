{* Список записей блога *}

<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Акции" href="/blog/" class="last">Блог</a></li></ul>

<!-- Заголовок /-->
<h1 class="pagetitle">{$page->name}</h1>

<div id="content"><!-- content -->
{include file='pagination.tpl'}
<!-- Статьи /-->
    <div class="news-list">
    {foreach $posts as $post}
		<div id="bx_1914200112_{$post->id}" class="news-item">
			<p>{$post->date|date}</p>
			<br>
				<div class="news-item-name">
				   <a data-post="{$post->id}" href="blog/{$post->url}"><b>{$post->name|escape}</b></a>		
				</div>
				<br>
				<div class="news-item-prev_text">{$post->annotation}</div>
					<div class="clear"></div>
		</div>
	<br><br>
	{/foreach}
		<br>
	</div>
<!-- Статьи #End /-->  
	{include file='pagination.tpl'}
					
	<div class="clear"></div>
</div>







          