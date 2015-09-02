<?php /* Smarty version Smarty-3.1.18, created on 2014-11-07 17:39:19
         compiled from "simpla/design/html/group.tpl" */ ?>
<?php /*%%SmartyHeaderCode:70885024354182979a91cc9-72118197%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1c298b24cf995af83a5bd1693a4c29441e5f360b' => 
    array (
      0 => 'simpla/design/html/group.tpl',
      1 => 1415364330,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '70885024354182979a91cc9-72118197',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_54182979b1d827_59669488',
  'variables' => 
  array (
    'manager' => 0,
    'group' => 0,
    'message_success' => 0,
    'message_error' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54182979b1d827_59669488')) {function content_54182979b1d827_59669488($_smarty_tpl) {?>
<?php $_smarty_tpl->_capture_stack[0][] = array('tabs', null, null); ob_start(); ?>
	<?php if (in_array('users',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=UsersAdmin">Покупатели</a></li><?php }?>
	<li class="active"><a href="index.php?module=GroupsAdmin">Группы</a></li>		
	<?php if (in_array('coupons',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=CouponsAdmin">Купоны</a></li><?php }?>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>

<?php if ($_smarty_tpl->tpl_vars['group']->value->id) {?>
<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable($_smarty_tpl->tpl_vars['group']->value->name, null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>
<?php } else { ?>
<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable('Новая группа', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>
<?php }?>



<script src="design/js/jquery/jquery.js"></script>
<script src="design/js/jquery/jquery-ui.min.js"></script>


<script type="text/javascript" src="design/js/autocomplete/jquery.autocomplete-min.js"></script>
<style>
.autocomplete-w1 { background:url(img/shadow.png) no-repeat bottom right; position:absolute; top:0px; left:0px; margin:6px 0 0 6px; /* IE6 fix: */ _background:none; _margin:1px 0 0 0; }
.autocomplete { border:1px solid #999; background:#FFF; cursor:default; text-align:left; overflow-x:auto; min-width: 300px; overflow-y: auto; margin:-6px 6px 6px -6px; /* IE6 specific: */ _height:350px;  _margin:0; _overflow-x:hidden; }
.autocomplete .selected { background:#F0F0F0; }
.autocomplete div { padding:2px 5px; white-space:nowrap; }
.autocomplete strong { font-weight:normal; color:#3399FF; }
</style>

<script>
$(function() {



});


</script>






<?php if ($_smarty_tpl->tpl_vars['message_success']->value) {?>
<!-- Системное сообщение -->
<div class="message message_success">
	<span class="text"><?php if ($_smarty_tpl->tpl_vars['message_success']->value=='added') {?>Группа добавлена<?php } elseif ($_smarty_tpl->tpl_vars['message_success']->value=='updated') {?>Группа изменена<?php } else { ?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['message_success']->value, ENT_QUOTES, 'UTF-8', true);?>
<?php }?></span>
	<?php if ($_GET['return']) {?>
	<a class="button" href="<?php echo $_GET['return'];?>
">Вернуться</a>
	<?php }?>
</div>
<!-- Системное сообщение (The End)-->
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['message_error']->value) {?>
<!-- Системное сообщение -->
<div class="message message_error">
	<span class="text"><?php echo $_smarty_tpl->tpl_vars['message_error']->value;?>
</span>
	<a class="button" href="">Вернуться</a>
</div>
<!-- Системное сообщение (The End)-->
<?php }?>


<!-- Основная форма -->
<form method=post id=product enctype="multipart/form-data">
<input type=hidden name="session_id" value="<?php echo $_SESSION['id'];?>
">
	<div id="name">
		<input class="name" name=name type="text" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['group']->value->name, ENT_QUOTES, 'UTF-8', true);?>
"/> 
		<input name=id type="hidden" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['group']->value->id, ENT_QUOTES, 'UTF-8', true);?>
"/> 
	</div> 

	<!-- Левая колонка свойств товара -->
	<div id="column_left">
			
		<!-- Параметры страницы -->
		<div class="block">
			<ul>
				<li><label class=property>Скидка</label><input name="discount" class="simpla_inp" type="text" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['group']->value->discount, ENT_QUOTES, 'UTF-8', true);?>
" />%</li>
			</ul>
		</div>
		<!-- Параметры страницы (The End)-->
		

			
	</div>
	<!-- Левая колонка свойств товара (The End)--> 
	
	
	<input class="button_green button_save" type="submit" name="" value="Сохранить" />
	
</form>
<!-- Основная форма (The End) -->
<?php }} ?>
