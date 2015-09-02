<?php /* Smarty version Smarty-3.1.18, created on 2015-05-11 13:56:49
         compiled from "simpla\design\html\iorders.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2381355508af1ed3c89-41700718%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '11f40e8181bdc3a382f442184e7bb9d82e34c460' => 
    array (
      0 => 'simpla\\design\\html\\iorders.tpl',
      1 => 1428329018,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2381355508af1ed3c89-41700718',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_55508af201a1d3_88887721',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55508af201a1d3_88887721')) {function content_55508af201a1d3_88887721($_smarty_tpl) {?>
<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable('Покупатели', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>

<div class="pure-g">
    <div class="pure-u-1-1">
    	<div class="iorders-wrap">
<h1>Внутренние заказы <a class="button button-rounded button-flat" href="/simpla/index.php?module=IorderAdmin">Добавить</a></h1>
<div class="modSearch">
    <input type="hidden" name="module" value="UsersAdmin">
        <input id="search-box" class="search" type="text" name="keyword" value="" placeholder="Поиск">
        <input type="submit" value="">

</div>

<form id="form_list" method="post">
	<input type="hidden" name="session_id" value="233253f0df183a23ee5cd3d2c9283f03">

		<div id="list">
						<div class="row ui-droppable even">
		 		<div class="checkbox cell">
					<input type="checkbox" name="check[]" value="17">
				</div>
				<div class="order_date cell">
	 				<a href="/simpla/index.php?module=OrderAdmin&amp;id=17&amp;return=%2Fsimpla%2Findex.php%3Fmodule%3DOrdersAdmin">Заказ №17</a>
				</div>
				<div class="order_date cell">
				Покупатель:<br> Атабаева Римма
				</div>
				<div class="order_date cell">
	 				Заявка от:<br> 15.10.2014 в 12:52
				</div>
				<div class="order_date cell">
	 				Дата отгрузки:
				</div>
				<div class="order_date cell">
	 				Сумма:<br> 0.00 руб
				</div>
				<div class="order_name cell">

	 								</div>
				<div class="icons cell">
					<a href="/simpla/index.php?module=OrderAdmin&amp;id=17&amp;view=print" target="_blank" class="print" title="Печать заказа"></a>
					<a href="#" class="delete" title="Удалить"></a>
				</div>
				<div class="icons cell">
											<img src="design/images/cash_stack_gray.png" alt="Не оплачен" title="Не оплачен">
									</div>
								<div class="clear"></div>
			</div>
						<div class="row ui-droppable">
		 		<div class="checkbox cell">
					<input type="checkbox" name="check[]" value="16">
				</div>
				<div class="order_date cell">
	 				<a href="/simpla/index.php?module=OrderAdmin&amp;id=16&amp;return=%2Fsimpla%2Findex.php%3Fmodule%3DOrdersAdmin">Заказ №16</a>
				</div>
				<div class="order_date cell">
				Покупатель:<br> Макаров Дмитрий
				</div>
				<div class="order_date cell">
	 				Заявка от:<br> 15.10.2014 в 12:50
				</div>
				<div class="order_date cell">
	 				Дата отгрузки:
				</div>
				<div class="order_date cell">
	 				Сумма:<br> 274081.20 руб
				</div>
				<div class="order_name cell">

	 								</div>
				<div class="icons cell">
					<a href="/simpla/index.php?module=OrderAdmin&amp;id=16&amp;view=print" target="_blank" class="print" title="Печать заказа"></a>
					<a href="#" class="delete" title="Удалить"></a>
				</div>
				<div class="icons cell">
											<img src="design/images/cash_stack_gray.png" alt="Не оплачен" title="Не оплачен">
									</div>
								<div class="clear"></div>
			</div>
					</div>

		<div id="action">
		<label id="check_all" class="dash_link">Выбрать все</label>

		<span id="select">
		<select name="action">
						<option value="set_status_1">В принятые</option>			<option value="set_status_2">В выполненные</option>						<option value="set_label_1">Отметить «интересовалась»</option>
						<option value="set_label_2">Отметить «берет»</option>
									<option value="unset_label_1">Снять «интересовалась»</option>
						<option value="unset_label_2">Снять «берет»</option>
						<option value="delete">Удалить выбранные заказы</option>
		</select>
		</span>

		<input id="apply_action" class="button_green" type="submit" value="Применить">

		</div>
	</form>

    	</div>
    </div>
</div>


<script>

$( document ).ready(function() {
	//alert($("#color :select").length);
	    // complete search field markup
    $('.search')
        .after('<div class="indicator"></div>')
        .after('<div class="separator"></div>')
        .after('<canvas class="icon" width="26" height="26"></canvas>');

    // draw search icon
    var ctx = $('.icon')[0].getContext("2d");
    ctx.lineWidth = 4;
    ctx.strokeStyle = '#4e4e4e';
    ctx.lineCap = 'round';
    ctx.beginPath();
    ctx.arc(9, 9, 7, 0, Math.PI*2, true);
    ctx.closePath();
    ctx.stroke();
    ctx.moveTo(16, 16);
    ctx.lineTo(21, 21);
    ctx.stroke();
});

$("button.remove").live("click", function(){
    $(this).parents(".clonedInput").remove();
});
</script>

<?php }} ?>
