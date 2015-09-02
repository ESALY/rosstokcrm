{* Главная страница магазина *}

{* Для того чтобы обернуть центральный блок в шаблон, отличный от index.tpl *}
{* Укажите нужный шаблон строкой ниже. Это работает и для других модулей *}
{$wrapper = 'index.tpl' scope=parent}

{* Канонический адрес страницы *}
{$canonical="" scope=parent}

{* Заголовок страницы *}

<ul class="mainpage-list">
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Мебель</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Производство постформинга</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Комплектующие для мебели</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Промышленное оборудование и станки</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Проектирование и строительство</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Товары для строительства</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Продовольственные товары</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Хозтовары</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Услуг</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Реклама</a></span>
  </li>
    <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Текстильные товары</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Прочее</a></span>
  </li>
</ul>


<h3 style="
    font-size: 25px;
    margin-top: 15px;
    margin-bottom: 15px;
"><a href="/actions/">Акции</a></h3>

{* Выбираем в переменную $last_posts последние записи *}
			{get_posts var=last_posts limit=5}
			{if $last_posts}
			<div class="rubrics">
			{foreach $last_posts as $post}
			<!--inner start-->
			<div class="rubrik">
			<div class="rubrik-inner">
			<div class="rubrik-header">
			<a href="blog/{$post->url}">{$post->name|truncate:70}</a>
			</div>
			<div class="rubrik-body">
			{*<div class="rubrik-body-photo"></div>*}
			<div class="rubrik-body-text">
			{*<a style="display: inline-block;margin-top: 8px;margin-right: 10px;margin-bottom: 10px;float: right;" href="blog/{$post->url}">Подробнее...</a>*}
			</div>
			</div>
			</div>
			</div>
			<!--inner end-->
			{/foreach}
			</div>
			{/if}

<h3 style="
    font-size: 25px;
    margin-top: 15px;
    margin-bottom: 15px;
"><a href="/actions/">Акции</a></h3>

<h3 style="
    font-size: 25px;
    margin-top: 15px;
    margin-bottom: 15px;
"><a href="/actions/">Акции</a></h3>

<h3 style="
    font-size: 25px;
    margin-top: 15px;
    margin-bottom: 15px;
"><a href="/actions/">Акции</a></h3>

{* Тело страницы *}
{$page->body}


