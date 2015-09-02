<?php /* Smarty version Smarty-3.1.18, created on 2015-05-19 15:22:26
         compiled from "simpla\design\html\feed.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1805254da1af0b1f293-08052003%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '55bb004babd1e3a43dd801d84ba9b4db196a5b36' => 
    array (
      0 => 'simpla\\design\\html\\feed.tpl',
      1 => 1428329014,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1805254da1af0b1f293-08052003',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_54da1af0b61921_26834851',
  'variables' => 
  array (
    'user_note' => 0,
    'un' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54da1af0b61921_26834851')) {function content_54da1af0b61921_26834851($_smarty_tpl) {?>


<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable('Лента', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>



<div class='feed-wrapper'>



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

<?php  $_smarty_tpl->tpl_vars['un'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['un']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['user_note']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['un']->key => $_smarty_tpl->tpl_vars['un']->value) {
$_smarty_tpl->tpl_vars['un']->_loop = true;
?>

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
<div class="feed-list-item-right-body"><?php echo $_smarty_tpl->tpl_vars['un']->value->note;?>
</div>

</div>
<div class="feed-list-item-right-postdate"><?php echo $_smarty_tpl->tpl_vars['un']->value->date;?>
</div>
</li>

<?php } ?>




</ul>
</div><?php }} ?>
