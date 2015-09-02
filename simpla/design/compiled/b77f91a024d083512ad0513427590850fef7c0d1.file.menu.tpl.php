<?php /* Smarty version Smarty-3.1.18, created on 2014-09-04 13:11:54
         compiled from "simpla/design/html/menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:73923319854082cda84f923-77206831%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b77f91a024d083512ad0513427590850fef7c0d1' => 
    array (
      0 => 'simpla/design/html/menu.tpl',
      1 => 1409821686,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '73923319854082cda84f923-77206831',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'manager' => 0,
    'menus' => 0,
    'm' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_54082cda8c4681_34538564',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54082cda8c4681_34538564')) {function content_54082cda8c4681_34538564($_smarty_tpl) {?><?php $_smarty_tpl->_capture_stack[0][] = array('tabs', null, null); ob_start(); ?>
	<?php if (in_array('settings',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=SettingsAdmin">Настройки</a></li><?php }?>
	<?php if (in_array('currency',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=CurrencyAdmin">Валюты</a></li><?php }?>
	<?php if (in_array('delivery',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=DeliveriesAdmin">Доставка</a></li><?php }?>
	<?php if (in_array('payment',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=PaymentMethodsAdmin">Оплата</a></li><?php }?>
	<?php if (in_array('managers',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=ManagersAdmin">Менеджеры</a></li><?php }?>
	<li class="active"><a href="index.php?module=MenusAdmin">Меню</a></li>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>

<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable('Меню страниц', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>



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


	<!-- Заголовок -->
	<div id="header">
		<h1>Меню страниц</h1>
		<a class="add" id="add_currency" href="#">Добавить</a>
	<!-- Заголовок (The End) -->	
	</div>	

	<form method=post>
	<input type="hidden" name="session_id" value="<?php echo $_SESSION['id'];?>
">
	
	<!-- Меню -->
	<div id="currencies_block">
		<ul id="header">
			<li class="move"></li>
			<li class="menuID">ID</li>	
			<li class="name">Название меню</li>	
		</ul>
		<div id="currencies">
		<?php  $_smarty_tpl->tpl_vars['m'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['m']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['menus']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['m']->index=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['m']->key => $_smarty_tpl->tpl_vars['m']->value) {
$_smarty_tpl->tpl_vars['m']->_loop = true;
 $_smarty_tpl->tpl_vars['m']->index++;
 $_smarty_tpl->tpl_vars['m']->first = $_smarty_tpl->tpl_vars['m']->index === 0;
?>
		<ul class="sortable">
			<li class="move"><div class="move_zone"></div></li>
			<li class="menuID"><input name="menu[id][<?php echo $_smarty_tpl->tpl_vars['m']->value->id;?>
]" type="hidden" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->id, ENT_QUOTES, 'UTF-8', true);?>
" /><span><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->id, ENT_QUOTES, 'UTF-8', true);?>
</span></li>
			<li class="name"><input name="menu[name][<?php echo $_smarty_tpl->tpl_vars['m']->value->id;?>
]" type="" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->name, ENT_QUOTES, 'UTF-8', true);?>
" /></li>
			<li class="icons">
			<?php if (!$_smarty_tpl->tpl_vars['m']->first) {?>
				<a class="delete" href="#" title="Удалить"></a>				
			<?php }?>
			</li>
		</ul>
		<?php } ?>		
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
	</form><?php }} ?>
