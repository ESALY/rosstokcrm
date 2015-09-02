<?php /* Smarty version Smarty-3.1.18, created on 2015-01-28 13:54:38
         compiled from "simpla\design\html\inc_user_new.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1172554c8bfee1b3db4-96592267%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '23266ec3f47691b5b56badba3ce64aa39c50a38e' => 
    array (
      0 => 'simpla\\design\\html\\inc_user_new.tpl',
      1 => 1422257372,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1172554c8bfee1b3db4-96592267',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'groups' => 0,
    'g' => 0,
    'user' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_54c8bfee273469_84226575',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54c8bfee273469_84226575')) {function content_54c8bfee273469_84226575($_smarty_tpl) {?><div class="user_new_wrapper">
<h1>Новый покупатель</h1>
    <div class="newu">
        <ul><?php if ($_smarty_tpl->tpl_vars['groups']->value) {?>
            <li>
                <label>Группа</label>
                <select id="group_id">
                    <option value='0'>Не входит в группу</option><?php  $_smarty_tpl->tpl_vars['g'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['g']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['groups']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['g']->key => $_smarty_tpl->tpl_vars['g']->value) {
$_smarty_tpl->tpl_vars['g']->_loop = true;
?>
                    <option value='<?php echo $_smarty_tpl->tpl_vars['g']->value->id;?>
' <?php if ($_smarty_tpl->tpl_vars['user']->value->group_id==$_smarty_tpl->tpl_vars['g']->value->id) {?>selected<?php }?>><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['g']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</option><?php } ?></select>
            </li><?php }?>
            <li>
                <label>Организация</label>
                <input type="text" id="name" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->name, ENT_QUOTES, 'UTF-8', true);?>
">
            </li>
            <li>
                <label>Менеджер</label>
                <input type="text" id="manager" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->manager, ENT_QUOTES, 'UTF-8', true);?>
">
            </li>
            <li>
                <label>Руководитель</label>
                <input type="text" id="rukovoditel" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->rukovoditel, ENT_QUOTES, 'UTF-8', true);?>
">
            </li>
            <li>
                <label>Телефон</label>
                <input type="text" id="rukovoditeltel" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->rukovoditeltel, ENT_QUOTES, 'UTF-8', true);?>
">
            </li>
            <li>
                <label>Снабженец</label>
                <input type="text" id="snab" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->snab, ENT_QUOTES, 'UTF-8', true);?>
">
            </li>
            <li>
                <label>Телефон</label>
                <input type="text" id="snabtel" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->snabtel, ENT_QUOTES, 'UTF-8', true);?>
"></li>
                <li>
                    <label>Почта</label>
                    <input type="text" id="email" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->email, ENT_QUOTES, 'UTF-8', true);?>
">
                </li>
                <li>
                    <label>Сайт</label>
                    <input type="text" id="site" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->site, ENT_QUOTES, 'UTF-8', true);?>
">
                </li>
                <li>
                    <label>Город</label>
                    <input type="text" id="gorod" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->gorod, ENT_QUOTES, 'UTF-8', true);?>
">
                </li>
                <li>
                    <label>Адрес</label>
                    <input type="text" id="adress" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->adress, ENT_QUOTES, 'UTF-8', true);?>
">
                </li>
                <li>
                    <label>User id</label>
                    <input id="id" type="text" disabled value="<?php echo $_smarty_tpl->tpl_vars['user']->value->id;?>
" />
                </li>
                <li>
                    <label>Session id</label>
                    <input id="session_id" type="text" disabled value="<?php echo $_SESSION['id'];?>
" />
                </li>
<i class="divider"></i>

<div class="button button-rounded button-flat-action button-large" onclick="adduserinfo()">
<span id="btnel">Добавить</span>
<i id="statusicon" class="fa fa-paper-plane"></i>
</div>
        </ul>
    </div>
</div><?php }} ?>
