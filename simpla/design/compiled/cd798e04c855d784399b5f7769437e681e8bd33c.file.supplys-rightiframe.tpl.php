<?php /* Smarty version Smarty-3.1.18, created on 2014-11-18 23:58:47
         compiled from "simpla/design/html/supplys-rightiframe.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1472207403546bb10ce05698-38434222%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cd798e04c855d784399b5f7769437e681e8bd33c' => 
    array (
      0 => 'simpla/design/html/supplys-rightiframe.tpl',
      1 => 1416344313,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1472207403546bb10ce05698-38434222',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_546bb10ce0f335_74358967',
  'variables' => 
  array (
    'config' => 0,
    'meta_description' => 0,
    'up_products_p' => 0,
    'up_products_p_inbox' => 0,
    'item' => 0,
    'managers' => 0,
    'm' => 0,
    'status' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_546bb10ce0f335_74358967')) {function content_546bb10ce0f335_74358967($_smarty_tpl) {?><!DOCTYPE html>

<?php $_smarty_tpl->tpl_vars['wrapper'] = new Smarty_variable('', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['wrapper'] = clone $_smarty_tpl->tpl_vars['wrapper'];?>
<html>
<head>
	<base href="<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
/"/>
	<title></title>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['meta_description']->value, ENT_QUOTES, 'UTF-8', true);?>
" />
    <style>
    </style>
</head>


<body>

 <div class="supplys-right-wrap">
    <div id="supplys-in"></div>
    <?php if ($_smarty_tpl->tpl_vars['up_products_p']->value) {?>
        <h1><?php echo $_smarty_tpl->tpl_vars['up_products_p']->value->name;?>
</h1>
        <table  class="pure-table pure-table-bordered">
    <thead>
        <tr>
            <th>Дата отправки</th>
            <th>Отвественный</th>
            <th>Покупатель</th>
            <th>Количество</th>
            <th>Дата прихода</th>
            <th>Внутр закупщик</th>
            <th>Статус</th>
        </tr>
    </thead>
    <tbody>
        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['up_products_p_inbox']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
        <tr id="<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
">
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value->date;?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value->manager;?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value->user;?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value->supplys_amount;?>
</td>
            
            <td>
            <input type="text" id="datepicker<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
" itemid="<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
" class="rus-forms-elastic-input" name="PrihodDate" placeholder="Дата отгрузки" value="<?php echo $_smarty_tpl->tpl_vars['item']->value->prihod;?>
">
            </td>
            <td><select id="product" class="rus-forms-elastic-input" onchange="change_isupplier(this,<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
)">
            <option value="">Нет</option>
            <?php  $_smarty_tpl->tpl_vars['m'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['m']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['managers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['m']->key => $_smarty_tpl->tpl_vars['m']->value) {
$_smarty_tpl->tpl_vars['m']->_loop = true;
?>
            <option value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->login, ENT_QUOTES, 'UTF-8', true);?>
" <?php if ($_smarty_tpl->tpl_vars['item']->value->isupplier==$_smarty_tpl->tpl_vars['m']->value->login) {?>selected="selected"<?php }?>><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->login, ENT_QUOTES, 'UTF-8', true);?>
</option>
            <?php } ?>
            </select></td>
            <td><select id="product" class="rus-forms-elastic-input" onchange="change_status(this,<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
)">
        <option value="all" selected="selected">Все</option>
<option value="new" <?php if ($_smarty_tpl->tpl_vars['status']->value=='new') {?>selected="selected"<?php }?>>Новые</option>
<option value="on" <?php if ($_smarty_tpl->tpl_vars['status']->value=='on') {?>selected="selected"<?php }?>>В заявке</option>
<option value="2" <?php if ($_smarty_tpl->tpl_vars['status']->value=='2') {?>selected="selected"<?php }?>>На утверждение</option>
<option value="3" <?php if ($_smarty_tpl->tpl_vars['status']->value=='3') {?>selected="selected"<?php }?>>Утверждено</option>
<option value="4" <?php if ($_smarty_tpl->tpl_vars['status']->value=='4') {?>selected="selected"<?php }?>>Заказано</option>
<option value="5" <?php if ($_smarty_tpl->tpl_vars['status']->value=='5') {?>selected="selected"<?php }?>>Отгружено у поставщика</option>
<option value="ok" <?php if ($_smarty_tpl->tpl_vars['status']->value=='ok') {?>selected="selected"<?php }?>>На складе</option>
<option value="7" <?php if ($_smarty_tpl->tpl_vars['status']->value=='7') {?>selected="selected"<?php }?>>Отгружено покупателю</option>
<option value="del" <?php if ($_smarty_tpl->tpl_vars['status']->value=='del') {?>selected="selected"<?php }?>>Удаленные</option>
        </select></td>
        </tr>
        <?php } ?></tbody>
        </table>
        <p>777</p>
        <h2>Предварительные заявки поставщикам</h2>
        <p>777</p>
        <h2>Утвержденные заявки</h2>
        <p>777</p>
    <?php }?>
    </div>

</body>
</html>





<?php }} ?>
