<?php /* Smarty version Smarty-3.1.18, created on 2015-04-12 14:18:24
         compiled from "/home/v/vdmgrup/rostokgroup.ru/public_html/simpla/design/html/email_comment_admin.tpl" */ ?>
<?php /*%%SmartyHeaderCode:464875609552a54800f8925-56700465%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9ec59ccc2bff41e2496bd5540620e60a94dd5852' => 
    array (
      0 => '/home/v/vdmgrup/rostokgroup.ru/public_html/simpla/design/html/email_comment_admin.tpl',
      1 => 1428329013,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '464875609552a54800f8925-56700465',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'comment' => 0,
    'config' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_552a5480338867_81795054',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_552a5480338867_81795054')) {function content_552a5480338867_81795054($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['comment']->value->approved) {?>
<?php $_smarty_tpl->tpl_vars['subject'] = new Smarty_variable("Новый комментарий от ".((string)htmlspecialchars($_smarty_tpl->tpl_vars['comment']->value->name, ENT_QUOTES, 'UTF-8', true)), null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['subject'] = clone $_smarty_tpl->tpl_vars['subject'];?>
<?php } else { ?>
<?php $_smarty_tpl->tpl_vars['subject'] = new Smarty_variable("Комментарий от ".((string)htmlspecialchars($_smarty_tpl->tpl_vars['comment']->value->name, ENT_QUOTES, 'UTF-8', true))." ожидает одобрения", null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['subject'] = clone $_smarty_tpl->tpl_vars['subject'];?>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['comment']->value->approved) {?>
<h1 style="font-weight:normal;font-family:arial;"><a href="<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
/simpla/index.php?module=CommentsAdmin">Новый комментарий</a> от <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['comment']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</h1>
<?php } else { ?>
<h1 style="font-weight:normal;font-family:arial;"><a href="<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
/simpla/index.php?module=CommentsAdmin">Комментарий</a> от <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['comment']->value->name, ENT_QUOTES, 'UTF-8', true);?>
 ожидает одобрения</h1>
<?php }?>

<table cellpadding="6" cellspacing="0" style="border-collapse: collapse;">
  <tr>
    <td style="padding:6px; width:170; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
      Имя
    </td>
    <td style="padding:6px; width:330; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
      <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['comment']->value->name, ENT_QUOTES, 'UTF-8', true);?>

    </td>
  </tr>
  <tr>
    <td style="padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
      Комментарий
    </td>
    <td style="padding:6px; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
      <?php echo nl2br(htmlspecialchars($_smarty_tpl->tpl_vars['comment']->value->text, ENT_QUOTES, 'UTF-8', true));?>

    </td>
  </tr>
  <tr>
    <td style="padding:6px; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
      Время
    </td>
    <td style="padding:6px; width:170; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
      <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['date'][0][0]->date_modifier($_smarty_tpl->tpl_vars['comment']->value->date);?>
 <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['time'][0][0]->time_modifier($_smarty_tpl->tpl_vars['comment']->value->date);?>

    </td>
  </tr>
  <tr>
    <td style="padding:6px; width:170; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
      Статус
    </td>
    <td style="padding:6px; width:330; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
      <?php if ($_smarty_tpl->tpl_vars['comment']->value->approved) {?>
        Одобрен    
      <?php } else { ?>
        Ожидает одобрения
      <?php }?>
    </td>
  </tr>
  <tr>
    <td style="padding:6px; width:170; background-color:#f0f0f0; border:1px solid #e0e0e0;font-family:arial;">
      <?php if ($_smarty_tpl->tpl_vars['comment']->value->type=='product') {?>К товару<?php }?>
      <?php if ($_smarty_tpl->tpl_vars['comment']->value->type=='blog') {?>К записи<?php }?>
    </td>
    <td style="padding:6px; width:330; background-color:#ffffff; border:1px solid #e0e0e0;font-family:arial;">
      <?php if ($_smarty_tpl->tpl_vars['comment']->value->type=='product') {?><a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
/products/<?php echo $_smarty_tpl->tpl_vars['comment']->value->product->url;?>
#comment_<?php echo $_smarty_tpl->tpl_vars['comment']->value->id;?>
"><?php echo $_smarty_tpl->tpl_vars['comment']->value->product->name;?>
</a><?php }?>
      <?php if ($_smarty_tpl->tpl_vars['comment']->value->type=='blog') {?><a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
/blog/<?php echo $_smarty_tpl->tpl_vars['comment']->value->post->url;?>
#comment_<?php echo $_smarty_tpl->tpl_vars['comment']->value->id;?>
"><?php echo $_smarty_tpl->tpl_vars['comment']->value->post->name;?>
</a><?php }?>
    </td>
  </tr>
</table>
<br><br>
Приятной работы с <a href='http://simp.la'>Simpla</a>!<?php }} ?>
