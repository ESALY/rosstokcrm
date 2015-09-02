{* Шаблон текстовой страницы *}

<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Контакты" href="{$page->url}" class="last">{$page->header|escape}</a></li>
</ul>

<div id="content">
<!-- Заголовок страницы -->
<h1 class="pagetitle" data-page="{$page->id}">{$page->header|escape}</h1>

<!-- Тело страницы -->
{$page->body}

<div class="clear"></div>
</div>
