<?php /* Smarty version Smarty-3.1.18, created on 2014-09-15 17:53:07
         compiled from "simpla/design/html/orders_label.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9756740595416ef43e9f1a1-19780580%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b185b5369ee25f9155992ff3e9683a38bc7fcc49' => 
    array (
      0 => 'simpla/design/html/orders_label.tpl',
      1 => 1400607760,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9756740595416ef43e9f1a1-19780580',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'manager' => 0,
    'status' => 0,
    'keyword' => 0,
    'label' => 0,
    'message_success' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5416ef44041647_28024083',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5416ef44041647_28024083')) {function content_5416ef44041647_28024083($_smarty_tpl) {?>
<?php $_smarty_tpl->_capture_stack[0][] = array('tabs', null, null); ob_start(); ?>
	<?php if (in_array('orders',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?>
	<li <?php if ($_smarty_tpl->tpl_vars['status']->value===0) {?>class="active"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'OrdersAdmin','status'=>0,'keyword'=>null,'id'=>null,'page'=>null,'label'=>null),$_smarty_tpl);?>
">Новые</a></li>
	<li <?php if ($_smarty_tpl->tpl_vars['status']->value==1) {?>class="active"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'OrdersAdmin','status'=>1,'keyword'=>null,'id'=>null,'page'=>null,'label'=>null),$_smarty_tpl);?>
">Приняты</a></li>
	<li <?php if ($_smarty_tpl->tpl_vars['status']->value==2) {?>class="active"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'OrdersAdmin','status'=>2,'keyword'=>null,'id'=>null,'page'=>null,'label'=>null),$_smarty_tpl);?>
">Выполнены</a></li>
	<li <?php if ($_smarty_tpl->tpl_vars['status']->value==3) {?>class="active"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'OrdersAdmin','status'=>3,'keyword'=>null,'id'=>null,'page'=>null,'label'=>null),$_smarty_tpl);?>
">Удалены</a></li>
	<?php if ($_smarty_tpl->tpl_vars['keyword']->value) {?>
	<li class="active"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'OrdersAdmin','keyword'=>$_smarty_tpl->tpl_vars['keyword']->value,'id'=>null,'label'=>null),$_smarty_tpl);?>
">Поиск</a></li>
	<?php }?>
	<?php }?>
	<li class="active"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'OrdersLabelsAdmin','keyword'=>null,'id'=>null,'page'=>null,'label'=>null),$_smarty_tpl);?>
">Метки</a></li>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>

<?php if ($_smarty_tpl->tpl_vars['label']->value->id) {?>
<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable($_smarty_tpl->tpl_vars['label']->value->name, null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>
<?php } else { ?>
<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable('Новая метка', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>
<?php }?>


<?php echo $_smarty_tpl->getSubTemplate ('tinymce_init.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>




<link rel="stylesheet" media="screen" type="text/css" href="design/js/colorpicker/css/colorpicker.css" />
<script type="text/javascript" src="design/js/colorpicker/js/colorpicker.js"></script>

<script>
$(function() {
	$('#color_icon, #color_link').ColorPicker({
		color: $('#color_input').val(),
		onShow: function (colpkr) {
			$(colpkr).fadeIn(500);
			return false;
		},
		onHide: function (colpkr) {
			$(colpkr).fadeOut(500);
			return false;
		},
		onChange: function (hsb, hex, rgb) {
			$('#color_icon').css('backgroundColor', '#' + hex);
			$('#color_input').val(hex);
			$('#color_input').ColorPickerHide();
		}
	});
});
</script>





<?php if ($_smarty_tpl->tpl_vars['message_success']->value) {?>
<!-- Системное сообщение -->
<div class="message message_success">
	<span class="text"><?php if ($_smarty_tpl->tpl_vars['message_success']->value=='added') {?>Метка добавлена<?php } elseif ($_smarty_tpl->tpl_vars['message_success']->value=='updated') {?>Метка обновлена<?php }?></span>
	<?php if ($_GET['return']) {?>
	<a class="button" href="<?php echo $_GET['return'];?>
">Вернуться</a>
	<?php }?>
</div>
<!-- Системное сообщение (The End)-->
<?php }?>

<!-- Основная форма -->
<form method=post id=product enctype="multipart/form-data">
	<input type=hidden name="session_id" value="<?php echo $_SESSION['id'];?>
">
	<div id="name">
		<input class="name" name="name" type="text" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['label']->value->name, ENT_QUOTES, 'UTF-8', true);?>
"/> 
		<input name=id type="hidden" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['label']->value->id, ENT_QUOTES, 'UTF-8', true);?>
"/> 
		<div class="checkbox">
			<span id="color_icon" style="background-color:#<?php echo $_smarty_tpl->tpl_vars['label']->value->color;?>
;" class="order_label_big"></span>
			<input id="color_input" name="color" class="simpla_inp" type="hidden" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['label']->value->color, ENT_QUOTES, 'UTF-8', true);?>
" />
		</div>
	<input class="button_green button_save" type="submit" name="" value="Сохранить" />
		
	</div> 

	
</form>
<!-- Основная форма (The End) -->

<?php }} ?>
