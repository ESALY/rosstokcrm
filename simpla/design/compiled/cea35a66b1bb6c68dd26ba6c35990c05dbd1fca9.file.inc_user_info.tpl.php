<?php /* Smarty version Smarty-3.1.18, created on 2015-01-21 14:54:38
         compiled from "simpla/design/html/inc_user_info.tpl" */ ?>
<?php /*%%SmartyHeaderCode:136679580054352b3d65cb81-20441867%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cea35a66b1bb6c68dd26ba6c35990c05dbd1fca9' => 
    array (
      0 => 'simpla/design/html/inc_user_info.tpl',
      1 => 1421841275,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '136679580054352b3d65cb81-20441867',
  'function' => 
  array (
    'category_select' => 
    array (
      'parameter' => 
      array (
        'level' => 0,
      ),
      'compiled' => '',
    ),
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_54352b3d6c5f42_44660606',
  'variables' => 
  array (
    'user' => 0,
    'user_categories' => 0,
    'categories' => 0,
    'ucategories' => 0,
    'category' => 0,
    'user_category' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54352b3d6c5f42_44660606')) {function content_54352b3d6c5f42_44660606($_smarty_tpl) {?><div class="user_info_wrapper">
    <div class="pure-form pure-form-stacked">
    <fieldset>
        <div class="pure-g">
            <div class="pure-u-1-8">
            <h2>Основное</h2>
                <label>Имя</label>
                <input type="text" id="name" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->name, ENT_QUOTES, 'UTF-8', true);?>
">
                <label>Руководитель</label>
                <input type="text" id="rukovoditel" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->rukovoditel, ENT_QUOTES, 'UTF-8', true);?>
">
                <label>Телефон</label>
                <input type="text" id="rukovoditeltel" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->rukovoditeltel, ENT_QUOTES, 'UTF-8', true);?>
">
                <label>Снабженец</label>
                <input type="text" id="snab" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->snab, ENT_QUOTES, 'UTF-8', true);?>
">
                <label>Телефон</label>
                <input type="text" id="snabtel" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->snabtel, ENT_QUOTES, 'UTF-8', true);?>
">
                </div>

                <div class="pure-u-1-8">
                <h2>Адреса</h2>
                <label>Город</label>
                <input type="text" id="gorod" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->gorod, ENT_QUOTES, 'UTF-8', true);?>
">
                <label>Улица, дом</label>
                <input type="text" id="adress" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->adress, ENT_QUOTES, 'UTF-8', true);?>
">
                <label>Почта</label>
                <input type="text" id="email" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->email, ENT_QUOTES, 'UTF-8', true);?>
">
                <label>Сайт</label>
                <input type="text" id="site" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->site, ENT_QUOTES, 'UTF-8', true);?>
">
                </div>
                <div class="pure-u-1-8">

                <h2>Дополнительно</h2>
                <label>Менеджер</label>
                <input type="text" id="manager" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->manager, ENT_QUOTES, 'UTF-8', true);?>
">
                <label>Комментарий</label>
                <input type="text" id="comment" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->comment, ENT_QUOTES, 'UTF-8', true);?>
">
                </div>

                
                <?php if ($_smarty_tpl->tpl_vars['user_categories']->value) {?>
                <div class="pure-u-1-3">
                <h2>Категория</h2>
                <div id="user_categories" <?php if (!$_smarty_tpl->tpl_vars['categories']->value) {?>style='display:none;'<?php }?>>
            <ul>
                <?php  $_smarty_tpl->tpl_vars['user_category'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['user_category']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['user_categories']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['user_category']->index=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['user_category']->key => $_smarty_tpl->tpl_vars['user_category']->value) {
$_smarty_tpl->tpl_vars['user_category']->_loop = true;
 $_smarty_tpl->tpl_vars['user_category']->index++;
 $_smarty_tpl->tpl_vars['user_category']->first = $_smarty_tpl->tpl_vars['user_category']->index === 0;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['ucategories']['first'] = $_smarty_tpl->tpl_vars['user_category']->first;
?>
                <li>
                    <select name="categories[]">
                    <option value='0'>Не входит в группу</option>
                        <?php  $_smarty_tpl->tpl_vars['category'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['category']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ucategories']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['category']->key => $_smarty_tpl->tpl_vars['category']->value) {
$_smarty_tpl->tpl_vars['category']->_loop = true;
?>
                        <option value='<?php echo $_smarty_tpl->tpl_vars['category']->value->id;?>
'  <?php if ($_smarty_tpl->tpl_vars['user_category']->value->category_id==$_smarty_tpl->tpl_vars['category']->value->id) {?>selected<?php }?>><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['category']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</option>
                        <?php } ?>
                    </select>
                    <span <?php if (!$_smarty_tpl->getVariable('smarty')->value['foreach']['ucategories']['first']) {?>style='display:none;'<?php }?> class="add"><i class="dash_link">Дополнительная категория</i></span>
                    <span <?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['ucategories']['first']) {?>style='display:none;'<?php }?> class="delete"><i class="dash_link">Удалить</i></span>
                </li>
                <?php } ?>
            </ul>
    </div>

            </div>
            <?php } else { ?>
                            <div class="pure-u-1-3">
                <h2>Категория</h2>
                <div id="user_categories">
            <ul>
                <li>
                    <select name="categories[]">
                    <option value='0'>Не входит в группу</option>
                        <?php  $_smarty_tpl->tpl_vars['category'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['category']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['categories']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['category']->key => $_smarty_tpl->tpl_vars['category']->value) {
$_smarty_tpl->tpl_vars['category']->_loop = true;
?>
                        <option value='<?php echo $_smarty_tpl->tpl_vars['category']->value->id;?>
'><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['category']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</option>
                        <?php } ?>
                    </select>
                    <span class="add"><i class="dash_link">Дополнительная категория</i></span>
                </li>
            </ul>
            </div>
            </div>

            <?php }?>

</div>

            <div class="pure-u-1-8" style="display:none;">
                    <label>Дата регистрации</label>
                    <input id="" type="text" disabled value="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['date'][0][0]->date_modifier($_smarty_tpl->tpl_vars['user']->value->created);?>
" />
                </div>
                <div class="pure-u-1-8" style="display:none;">
                    <label>Последний IP</label>
                    <input id="" type="text" disabled value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->last_ip, ENT_QUOTES, 'UTF-8', true);?>
" />
                </div>
                <div class="pure-u-1-8" style="display:none;">
                    <label>User id</label>
                    <input id="id" type="text" disabled value="<?php echo $_smarty_tpl->tpl_vars['user']->value->id;?>
" />
                </div>
                <div class="pure-u-1-8" style="display:none;">
                    <label>Session id</label>
                    <input id="session_id" type="text" disabled value="<?php echo $_SESSION['id'];?>
" />
                </div>

    </fieldset>
    </div>
<div class="button button-rounded button-flat-action button-large" onclick="updateuserinfo()">
<span id="btnel">Сохранить</span>
<i id="statusicon" class="fa fa-paper-plane"></i>
</div>
</div>
<?php }} ?>
