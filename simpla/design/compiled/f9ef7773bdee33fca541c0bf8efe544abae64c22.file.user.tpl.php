<?php /* Smarty version Smarty-3.1.18, created on 2015-05-11 14:58:55
         compiled from "simpla\design\html\user.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3122154c5eae8a914c1-44406202%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f9ef7773bdee33fca541c0bf8efe544abae64c22' => 
    array (
      0 => 'simpla\\design\\html\\user.tpl',
      1 => 1428329022,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3122154c5eae8a914c1-44406202',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_54c5eae8bfc9a5_65391970',
  'variables' => 
  array (
    'user' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54c5eae8bfc9a5_65391970')) {function content_54c5eae8bfc9a5_65391970($_smarty_tpl) {?>


<?php if ($_smarty_tpl->tpl_vars['user']->value->id) {?>

<div class="user-wrapper">
        <!-- Основная форма (The End) -->
        <?php } else { ?>
<?php echo $_smarty_tpl->getSubTemplate ('inc_user_new.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>



<?php }?>
<?php echo $_smarty_tpl->getSubTemplate ('inc_user_price.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>

<script src="design/js/user_united.js"></script><?php }} ?>
