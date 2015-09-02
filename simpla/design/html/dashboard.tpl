{$wrapper = 'dashboard-wrapper.tpl' scope=parent}

	<div class="middle">

        <div class="container">
            <main class="content">



{* Поиск *}
{if $users || $keyword}


<div class="modSearch">
    <form method="get">
    <input type="hidden" name="module" value='DashboardAdmin'>
        <input class="search" type="text" name="keyword" value="{$keyword|escape}" placeholder="Поиск по покупателям" />
        <input type="submit" value="" />
    </form>
</div>
{/if}

            <div class="dashboard-orders-list">
            	{if $users}
<!-- Основная часть -->
<div id="main_list">

	<div id="sort_links" style='display:block;'>
	<a href='#' onclick="new_u()">Новый покупатель</a>
	<!-- Ссылки для сортировки -->
	Упорядочить по
	{if $sort!='name'}<a href="{url sort=name}">имени</a>{else}имени{/if} или
	{if $sort!='date'}<a href="{url sort=date}">дате</a>{else}дате{/if}
	<!-- Ссылки для сортировки (The End) -->
	</div>

	<form id="form_list" method="post">
	<input type="hidden" name="session_id" value="{$smarty.session.id}">

		<div id="list">
			{foreach $users as $user}
			<div class="{if !$user->enabled}invisible{/if} row">
		 		<div class="checkbox cell">
					<input type="checkbox" name="check[]" value="{$user->id}"/>
				</div>

				<div class="user_name cell">
					<a href="index.php?module=DashboardAdmin&id={$user->id}">{$user->name|escape}</a><br/>
					{if $user->manager}Ответственный: {$user->manager|escape}{/if}
					{if $user->comment}Комментарий: {$user->comment|escape}{/if}
				</div>


				<div class="user_email cell">
					<a href="mailto:{$user->name|escape}<{$user->email|escape}>">{$user->email|escape}</a><br/>
					{$user->tell|escape}<br/>
					{$user->msgr|escape}
				</div>

				<div class="user_group cell">
					{$groups[$user->group_id]->name}<br/>
				</div>
				<div class="icons cell">
					<a class="enable" title="Активен" href="#"></a>
					<a class="delete" title="Удалить" href="#"></a>
				</div>
				<div class="clear"></div>
			</div>
			{/foreach}
		</div>

		<div id="action">
		<label id="check_all" class="dash_link">Выбрать все</label>

		<span id=select>
		<select name="action">
			<option value="disable">Заблокировать</option>
			<option value="enable">Разблокировать</option>
			<option value="delete">Удалить</option>
		</select>
		</span>

		<input id="apply_action" class="button_green" type="submit" value="Применить">
		</div>

	</form>

	<!-- Листалка страниц -->
	{include file='pagination.tpl'}
	<!-- Листалка страниц (The End) -->

</div>
{/if}
            </div>
            </main><!-- .content -->
        </div><!-- .container-->

        <aside class="left-sidebar">

	<ul>
	<h3>Категории</h3>
	<li><input type="checkbox"><a href="#">Все</a></li>
	{foreach $filter_groups as $group}
		<li><input type="checkbox"><a href="{url module=DashboardAdmin category=$group keyword=null}">{$group}</a></li>
	{/foreach}
	</ul>
	<ul>
	<h3>Города</h3>
	<li><input type="checkbox"><a href="{url module=DashboardAdmin gorod=$city keyword=null}">Все</a></li>
	{foreach $filter_citys as $city}
		<li><input type="checkbox"><a href="{url module=DashboardAdmin gorod=$city keyword=null}">{$city}</a></li>
	{/foreach}
	</ul>

	<ul><h3>Менеджеры</h3>
	<li><input type="checkbox"><a href="{url module=DashboardAdmin manager=null keyword=null}">Все</a></li>
	{foreach $filter_managers as $manager}
		<li><input type="checkbox"><a href="{url module=DashboardAdmin manager=$manager keyword=null}">{$manager}</a></li>
	{/foreach}
	</ul>
        </aside><!-- .left-sidebar -->
        <aside class="right-sidebar">
			<strong>Right Sidebar:</strong> Integer velit. Vestibulum nisi nunc, accumsan ut, vehicula sit amet, porta a, mi. Nam nisl tellus, placerat eget, posuere eget, egestas eget, dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In elementum urna a eros. Integer iaculis. Maecenas vel elit.
		</aside>

    </div><!-- .middle-->


