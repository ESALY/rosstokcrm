<?php /* Smarty version Smarty-3.1.18, created on 2015-01-26 10:48:58
         compiled from "simpla\design\html\inc_user_orders.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1999254c5eaea526f20-99761161%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '38f65b48807fe53ae71524c036460b6f01c665d1' => 
    array (
      0 => 'simpla\\design\\html\\inc_user_orders.tpl',
      1 => 1422257372,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1999254c5eaea526f20-99761161',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_54c5eaea59c246_93274183',
  'variables' => 
  array (
    'orders' => 0,
    'order' => 0,
    'currency' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54c5eaea59c246_93274183')) {function content_54c5eaea59c246_93274183($_smarty_tpl) {?><div class="user_orders_wrapper">
<?php if ($_smarty_tpl->tpl_vars['orders']->value) {?>
        <div class="block" id=column_left>
            <input type="hidden" name="session_id" value="<?php echo $_SESSION['id'];?>
">
             <h2>Заказы пользователя</h2>

            <div><?php  $_smarty_tpl->tpl_vars['order'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['order']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['orders']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['order']->key => $_smarty_tpl->tpl_vars['order']->value) {
$_smarty_tpl->tpl_vars['order']->_loop = true;
?>
                <div class="<?php if ($_smarty_tpl->tpl_vars['order']->value->paid) {?>green<?php }?> row">
                    <div class="checkbox cell">
                        <input type="checkbox" name="check[]" value="<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
" />
                    </div>
                    <div class="order_date cell"><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['date'][0][0]->date_modifier($_smarty_tpl->tpl_vars['order']->value->date);?>
 <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['time'][0][0]->time_modifier($_smarty_tpl->tpl_vars['order']->value->date);?>
</div>
                    <div class="name cell"> <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'OrderAdmin','id'=>$_smarty_tpl->tpl_vars['order']->value->id,'return'=>$_SERVER['REQUEST_URI']),$_smarty_tpl);?>
">Заказ №<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
</a>

                    </div>
                    <div class="name cell"><?php echo $_smarty_tpl->tpl_vars['order']->value->total_price;?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['currency']->value->sign;?>
</div>
                    <div class="icons cell"><?php if ($_smarty_tpl->tpl_vars['order']->value->paid) {?>
                        <img src='design/images/cash_stack.png' alt='Оплачен' title='Оплачен'><?php } else { ?>
                        <img src='design/images/cash_stack_gray.png' alt='Не оплачен' title='Не оплачен'><?php }?></div>
                    <div class="icons cell"> <a href='#' class=delete></a>
                    </div>
                    <div class="clear"></div>
                </div><?php } ?></div>
            <div id="action">
                <label id='check_all' class='dash_link'>Выбрать все</label> <span id=select>
  <select name="action">
    <option value="delete">Удалить</option>
  </select>
  </span>

                <input id="apply_action" class="button_green" name="user_orders" type="submit" value="Применить">
            </div>
        </div><?php }?>
</div><?php }} ?>
