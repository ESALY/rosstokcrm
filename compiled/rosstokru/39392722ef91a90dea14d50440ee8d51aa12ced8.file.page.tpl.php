<?php /* Smarty version Smarty-3.1.18, created on 2015-04-06 16:35:26
         compiled from "/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/page.tpl" */ ?>
<?php /*%%SmartyHeaderCode:101046125255228b9ea40141-70636990%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '39392722ef91a90dea14d50440ee8d51aa12ced8' => 
    array (
      0 => '/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/page.tpl',
      1 => 1428321006,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '101046125255228b9ea40141-70636990',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_55228b9ea86c28_05647256',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55228b9ea86c28_05647256')) {function content_55228b9ea86c28_05647256($_smarty_tpl) {?>


<?php $_smarty_tpl->tpl_vars['canonical'] = new Smarty_variable("/".((string)$_smarty_tpl->tpl_vars['page']->value->url), null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['canonical'] = clone $_smarty_tpl->tpl_vars['canonical'];?>

<!-- Заголовок страницы -->
<h1 data-page="<?php echo $_smarty_tpl->tpl_vars['page']->value->id;?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['page']->value->header, ENT_QUOTES, 'UTF-8', true);?>
</h1>

<!-- Тело страницы -->
<?php echo $_smarty_tpl->tpl_vars['page']->value->body;?>
<?php }} ?>
