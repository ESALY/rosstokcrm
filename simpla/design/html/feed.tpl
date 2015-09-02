{* Вкладки *}

{* Title *}
{$meta_title='Лента' scope=parent}

{* body *}

<div class='feed-wrapper'>

{* menu *}

<div class="pure-menu pure-menu-open pure-menu-horizontal feed-menu">
    <ul>
        <li><a href="#">Все события</a></li>
        <li class="pure-menu-selected"><a href="#">Продажи</a></li>
        <li><a href="#">Закупки</a></li>
        <li><a href="#">Обновление цен</a></li>
        <li><a href="#">Системные сообщения</a></li>
    </ul>
</div>

<ul class="feed-list">

{foreach $user_note as $un}
{* start list *}
<li class="feed-list-item">
<div class="feed-list-item-thumb">
<a class="link" href="#">
<img src="/img/1418409575_man.png"></a>
</div>
<div class="feed-list-item-right">

<span class="feed-list-item-right-header">
<a class="link" href="#">
Менеджер
</a>
</span>
<div class="feed-list-item-right-body">{$un->note}</div>

</div>
<div class="feed-list-item-right-postdate">{$un->date}</div>
</li>
{* end list *}
{/foreach}

{* start list
<li class="feed-list-item">
<div class="feed-list-item-thumb">
<a class="link" href="#">
<img src="/img/1418409575_man.png"></a>
</div>
<div class="feed-list-item-right">

<span class="feed-list-item-right-header">
<a class="link" href="#">
Менеджер
</a>
</span>

<div class="feed-list-item-right-body">feed-list-item-right-body</div>
</div>
</li>
end list *}


</ul>
</div>