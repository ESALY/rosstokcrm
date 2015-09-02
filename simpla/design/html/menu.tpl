{capture name=tabs}
	{if in_array('settings', $manager->permissions)}<li><a href="index.php?module=SettingsAdmin">Настройки</a></li>{/if}
	{if in_array('currency', $manager->permissions)}<li><a href="index.php?module=CurrencyAdmin">Валюты</a></li>{/if}
	{if in_array('delivery', $manager->permissions)}<li><a href="index.php?module=DeliveriesAdmin">Доставка</a></li>{/if}
	{if in_array('payment', $manager->permissions)}<li><a href="index.php?module=PaymentMethodsAdmin">Оплата</a></li>{/if}
	{if in_array('managers', $manager->permissions)}<li><a href="index.php?module=ManagersAdmin">Менеджеры</a></li>{/if}
	<li class="active"><a href="index.php?module=MenusAdmin">Меню</a></li>
{/capture}

{$meta_title = 'Меню страниц' scope=parent}

{* On document load *}
{literal}
<script src="design/js/jquery/jquery.js"></script>
<script src="design/js/jquery/jquery-ui.min.js"></script>

<script>
$(function() {

	// Сортировка списка
	$("#currencies_block").sortable({ items: 'ul.sortable' , axis: 'y',  cancel: '#header', handle: '.move_zone' });

	// Добавление меню
	var curr = $('#new_currency').clone(true);
	$('#new_currency').remove().removeAttr('id');
	$('a#add_currency').click(function() {
		$(curr).clone(true).appendTo('#currencies').fadeIn('slow').find("input[name*=menu][name*=name]").focus();
		return false;		
	});	
	
	// Удаление меню
	$("a.delete").click(function() {
		$('input[type="hidden"][name="action"]').val('delete');
		$('input[type="hidden"][name="action_id"]').val($(this).closest("ul").find('input[type="hidden"][name*="menu[id]"]').val());
		$(this).closest("form").submit();
	});
	
	$("form").submit(function() {
		if($('input[type="hidden"][name="action"]').val()=='delete' && !confirm('Подтвердите удаление'))
			return false;	
	});

});

</script>
{/literal}

	<!-- Заголовок -->
	<div id="header">
		<h1>Меню страниц</h1>
		<a class="add" id="add_currency" href="#">Добавить</a>
	<!-- Заголовок (The End) -->	
	</div>	

	<form method=post>
	<input type="hidden" name="session_id" value="{$smarty.session.id}">
	
	<!-- Меню -->
	<div id="currencies_block">
		<ul id="header">
			<li class="move"></li>
			<li class="menuID">ID</li>	
			<li class="name">Название меню</li>	
		</ul>
		<div id="currencies">
		{foreach from=$menus item=m}
		<ul class="sortable">
			<li class="move"><div class="move_zone"></div></li>
			<li class="menuID"><input name="menu[id][{$m->id}]" type="hidden" value="{$m->id|escape}" /><span>{$m->id|escape}</span></li>
			<li class="name"><input name="menu[name][{$m->id}]" type="" value="{$m->name|escape}" /></li>
			<li class="icons">
			{if !$m@first}
				<a class="delete" href="#" title="Удалить"></a>				
			{/if}
			</li>
		</ul>
		{/foreach}		
		<ul id="new_currency" style='display:none;'>
			<li class="move"><div class="move_zone"></div></li>
			<li class="menuID"><input name="menu[id][]" type="hidden" value="" /></li>
			<li class="name"><input name="menu[name][]" type="" value="" /></li>
			<li class="icons"></li>
		</ul>
		</div>

	</div>
	<!-- Меню (The End)--> 

	<div id="action">
		<input type=hidden name=action value=''>
		<input type=hidden name=action_id value=''>
		<input id='apply_action' class="button_green" type=submit value="Применить">
	</div>
	</form>