{* Вкладки *}
{capture name=tabs}
	<li class="active"><a href="index.php?module=UsersAdmin">Покупатели</a></li>
	{if in_array('groups', $manager->permissions)}<li><a href="index.php?module=GroupsAdmin">Группы</a></li>{/if}
	{if in_array('coupons', $manager->permissions)}<li><a href="index.php?module=CouponsAdmin">Купоны</a></li>{/if}
{/capture}

{if $user->id}
{$meta_title = $user->name|escape scope=parent}
{/if}

{if $message_success}
<!-- Системное сообщение -->
<div class="message message_success">
	<span class="text">{if $message_success=='updated'}Пользователь отредактирован{else}{$message_success|escape}{/if}</span>
	{if $smarty.get.return}
	<a class="button" href="{$smarty.get.return}">Вернуться</a>
	{/if}
</div>
<!-- Системное сообщение (The End)-->
{/if}

{if $message_error}
<!-- Системное сообщение -->
<div class="message message_error">
	<span class="text">{if $message_error=='login_exists'}Пользователь с таким email уже зарегистрирован
	{elseif $message_error=='empty_name'}Введите имя пользователя
	{elseif $message_error=='empty_email'}Введите email пользователя
	{else}{$message_error|escape}{/if}</span>
	{if $smarty.get.return}
	<a class="button" href="{$smarty.get.return}">Вернуться</a>
	{/if}
</div>
<!-- Системное сообщение (The End)-->
{/if}





<!-- Основная форма -->
<form method=post id=product>
<input type=hidden name="session_id" value="{$smarty.session.id}">
	<div id="name">
		<input class="name" name=name type="text" value="{$user->name|escape}"/> 
		<input name=id type="hidden" value="{$user->id|escape}"/> 
		<div class="checkbox">
			<input name="enabled" value='1' type="checkbox" id="active_checkbox" {if $user->enabled}checked{/if}/> <label for="active_checkbox">Активен</label>
		</div>
	</div> 
	

<!--Вкладки рабочие-->

<div class="tabs-block">
<div id="tabs-container">
    <ul class="tabs-menu">
        <li class="current"><a href="#tab-1">Прайс клиента</a></li>
        <li><a href="#tab-2">Заказы клиента</a></li>
        <li><a href="#tab-3">Реквизиты клиента</a></li>
        <li><a href="#tab-4">Прочее</a></li>
    </ul>
    <div class="tab">
        <div id="tab-1" class="tab-content">
<div class="userprice">
<div style="float:left;width: 200px;margin-right:20px;">
<h3>Категории</h3>
<!-- Категории товаров -->
	{function name=categories_tree}
	{if $categories}
	<ul>
		{if $categories[0]->parent_id == 0}
		<li {if !$category->id}class="selected"{/if}><a href="{url category_id=null brand_id=null}">Все категории</a></li>	
		{/if}
		{foreach $categories as $c}
		<li category_id="{$c->id}" {if $category->id == $c->id}class="selected"{else}class="droppable category"{/if}><a href='{url keyword=null brand_id=null page=null category_id={$c->id}}'>{$c->name}</a></li>
		{categories_tree categories=$c->subcategories}
		{/foreach}
	</ul>
	{/if}
	{/function}
	{categories_tree categories=$categories}
	<!-- Категории товаров (The End)-->
</div>
<table width="auto" border="1">
<thead>
  <tr>
    <th>Товар</th>
    <th>Остаток</th>
    <th>Закупка</th>
    <th>Цена клиента</th>
    <th>Цена утв.</th> <!--т цена клиента-->
    <th>спец</th>
    <th>акция</th> 
  </tr>
</thead>
<tbody>

 
{foreach $products as $product}

  <tr>
    <td>{$image = $product->images|@first}
				<div class="thumbbox35">{if $image}
				<a href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}"><img src="{$image->filename|escape|resize:35:35}"/></a>
				{else}
				<a href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}"><img src="http://placehold.it/35&amp;text=x"/></a>
				{/if}</div>
				<a target="_blank" href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}">{$product->name}</a</td><!--товар-->
    <td>{foreach $product->variants as $variant}{$variant->stock}{/foreach}</td><!--остаток-->
    <td>{foreach $product->variants as $variant}{$variant->zakupka}{/foreach}</td><!--закупка-->
    <td>132</td><!--цена клиента-->
    <td>132</td><!--цена утв-->
    <td class="сbeige"><table class="userprice-a"  style="white-space: nowrap;" width="auto" border="1">
  <tr>
    <td>
      <input name="textfield" type="text" id="sper" size="5">
    %</td>
    <td><div id="sprice">цена</div></td>
    <td>100</td>
  </tr>
</table></td><!--цена спец-->
    <td class="сgreen"></td><!--цена акция-->
  </tr>

		
		{/foreach}
</tbody>

</table>

</div><!-- Листалка страниц -->
	{include file='pagination.tpl'}	
        </div>
        <div id="tab-2" class="tab-content">
            <p>Donec semper dictum sem, quis pretium sem malesuada non. Proin venenatis orci vel nisl porta sollicitudin. Pellentesque sit amet massa et orci malesuada facilisis vel vel lectus. Etiam tristique volutpat auctor. Morbi nec massa eget sem ultricies fermentum id ut ligula. Praesent aliquet adipiscing dictum. Suspendisse dignissim dui tortor. Integer faucibus interdum justo, mattis commodo elit tempor id. Quisque ut orci orci, sit amet mattis nulla. Suspendisse quam diam, feugiat at ullamcorper eget, sagittis sed eros. Proin tortor tellus, pulvinar at imperdiet in, egestas sed nisl. Aenean tempor neque ut felis dignissim ac congue felis viverra. </p>
        
        </div>
        <div id="tab-3" class="tab-content">
            <p>Duis egestas fermentum ipsum et commodo. Proin bibendum consectetur elit, hendrerit porta mi dictum eu. Vestibulum adipiscing euismod laoreet. Vivamus lobortis tortor a odio consectetur pulvinar. Proin blandit ornare eros dictum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur laoreet, ante aliquet molestie laoreet, lectus odio fringilla purus, id porttitor erat velit vitae mi. Nullam posuere nunc ut justo sollicitudin interdum. Donec suscipit eros nec leo condimentum fermentum. Nunc quis libero massa. Integer tempus laoreet lectus id interdum. Integer facilisis egestas dui at convallis. Praesent elementum nisl et erat iaculis a blandit ligula mollis. Vestibulum vitae risus dui, nec sagittis arcu. Nullam tortor enim, placerat quis eleifend in, viverra ac lacus. Ut aliquam sapien ut metus hendrerit auctor dapibus justo porta. </p>
        </div>
        <div id="tab-4" class="tab-content">
            <div id=column_left>
	<!-- Левая колонка свойств товара -->

		<!-- Параметры страницы -->
		<div class="block">
			<ul>
				{if $groups}
				<li>
					<label class=property>Группа</label>
					<select name="group_id">
						<option value='0'>Не входит в группу</option>
				   		{foreach from=$groups item=g}
				        	<option value='{$g->id}' {if $user->group_id == $g->id}selected{/if}>{$g->name|escape}</option>
				    	{/foreach}
					</select>
				</li>
				{/if}
				<li><label class=property>Email</label><input name="email" class="simpla_inp" type="text" value="{$user->email|escape}" /></li>
				<li><label class=property>Дата регистрации</label><input name="email" class="simpla_inp" type="text" disabled value="{$user->created|date}" /></li>
				<li><label class=property>Последний IP</label><input name="email" class="simpla_inp" type="text" disabled value="{$user->last_ip|escape}" /></li>
			</ul>
		</div>


		
		<!-- Параметры страницы (The End)-->			
		
	<input class="button_green button_save" type="submit" name="user_info" value="Сохранить" />
        </div>
    </div>
</div>
</div>

{literal}<script>$(document).ready(function() {
    $(".tabs-menu a").click(function(event) {
        event.preventDefault();
        $(this).parent().addClass("current");
        $(this).parent().siblings().removeClass("current");
        var tab = $(this).attr("href");
        $(".tab-content").not(tab).css("display", "none");
        $(tab).fadeIn();
    });
});</script>{/literal}



<!-- Основная форма (The End) -->
 

{if $orders}
<div class="block" id=column_left>
<form id="list" method="post">
	<input type="hidden" name="session_id" value="{$smarty.session.id}">
	<h2>Заказы пользователя</h2>

	<div>		
		{foreach $orders as $order}
		<div class="{if $order->paid}green{/if} row">
	 		<div class="checkbox cell">
				<input type="checkbox" name="check[]" value="{$order->id}" />				
			</div>
			<div class="order_date cell">
				{$order->date|date} {$order->date|time}
			</div>
			<div class="name cell">
				<a href="{url module=OrderAdmin id=$order->id return=$smarty.server.REQUEST_URI}">Заказ №{$order->id}</a>
			</div>
			<div class="name cell">
				{$order->total_price}&nbsp;{$currency->sign}
			</div>
			<div class="icons cell">
				{if $order->paid}
					<img src='design/images/cash_stack.png' alt='Оплачен' title='Оплачен'>
				{else}
					<img src='design/images/cash_stack_gray.png' alt='Не оплачен' title='Не оплачен'>				
				{/if}	
			</div>
			<div class="icons cell">
				<a href='#' class=delete></a>		 	
			</div>
			<div class="clear"></div>
		</div>
		{/foreach}
	</div>

	<div id="action">
	<label id='check_all' class='dash_link'>Выбрать все</label>

	<span id=select>
	<select name="action">
		<option value="delete">Удалить</option>
	</select>
	</span>


	<input id="apply_action" class="button_green" name="user_orders" type="submit" value="Применить">
	</form>
	</div>
</div>
{/if}
{* On document load *}
{literal}

<script>
$(function() {

	// Раскраска строк
	function colorize()
	{
		$("#list div.row:even").addClass('even');
		$("#list div.row:odd").removeClass('even');
	}
	// Раскрасить строки сразу
	colorize();

	// Выделить все
	$("#check_all").click(function() {
		$('#list input[type="checkbox"][name*="check"]').attr('checked', 1-$('#list input[type="checkbox"][name*="check"]').attr('checked'));
	});	

	// Удалить 
	$("a.delete").click(function() {
		$('#list input[type="checkbox"][name*="check"]').attr('checked', false);
		$(this).closest(".row").find('input[type="checkbox"][name*="check"]').attr('checked', true);
		$(this).closest("form#list").find('select[name="action"] option[value=delete]').attr('selected', true);
		$(this).closest("form#list").submit();
	});

	// Подтверждение удаления
	$("#list").submit(function() {
		if($('select[name="action"]').val()=='delete' && !confirm('Подтвердите удаление'))
			return false;	
	});
});

</script>
{/literal}






	<!-- Листалка страниц (The End) -->		

</div>
		
	 
	<!-- Левая колонка свойств товара (The End)--> 
	
		
</form>

