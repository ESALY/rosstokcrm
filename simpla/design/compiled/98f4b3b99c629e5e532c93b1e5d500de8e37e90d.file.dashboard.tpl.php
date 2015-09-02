<?php /* Smarty version Smarty-3.1.18, created on 2014-10-23 14:01:28
         compiled from "simpla/design/html/dashboard.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17108141745440f05c6f8e23-60626008%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '98f4b3b99c629e5e532c93b1e5d500de8e37e90d' => 
    array (
      0 => 'simpla/design/html/dashboard.tpl',
      1 => 1414056432,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17108141745440f05c6f8e23-60626008',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5440f05c89b5a0_21209154',
  'variables' => 
  array (
    'users' => 0,
    'keyword' => 0,
    'sort' => 0,
    'user' => 0,
    'groups' => 0,
    'filter_groups' => 0,
    'group' => 0,
    'city' => 0,
    'filter_citys' => 0,
    'filter_managers' => 0,
    'manager' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5440f05c89b5a0_21209154')) {function content_5440f05c89b5a0_21209154($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars['wrapper'] = new Smarty_variable('dashboard-wrapper.tpl', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['wrapper'] = clone $_smarty_tpl->tpl_vars['wrapper'];?>

	<div class="middle">

        <div class="container">
            <main class="content">




<?php if ($_smarty_tpl->tpl_vars['users']->value||$_smarty_tpl->tpl_vars['keyword']->value) {?>


<div class="modSearch">
    <form method="get">
    <input type="hidden" name="module" value='DashboardAdmin'>
        <input class="search" type="text" name="keyword" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['keyword']->value, ENT_QUOTES, 'UTF-8', true);?>
" placeholder="Поиск по покупателям" />
        <input type="submit" value="" />
    </form>
</div>
<?php }?>

            <div class="dashboard-orders-list">
            	<?php if ($_smarty_tpl->tpl_vars['users']->value) {?>
<!-- Основная часть -->
<div id="main_list">

	<div id="sort_links" style='display:block;'>
	<a href='#' onclick="new_u()">Новый покупатель</a>
	<!-- Ссылки для сортировки -->
	Упорядочить по
	<?php if ($_smarty_tpl->tpl_vars['sort']->value!='name') {?><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('sort'=>'name'),$_smarty_tpl);?>
">имени</a><?php } else { ?>имени<?php }?> или
	<?php if ($_smarty_tpl->tpl_vars['sort']->value!='date') {?><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('sort'=>'date'),$_smarty_tpl);?>
">дате</a><?php } else { ?>дате<?php }?>
	<!-- Ссылки для сортировки (The End) -->
	</div>

	<form id="form_list" method="post">
	<input type="hidden" name="session_id" value="<?php echo $_SESSION['id'];?>
">

		<div id="list">
			<?php  $_smarty_tpl->tpl_vars['user'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['user']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['users']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['user']->key => $_smarty_tpl->tpl_vars['user']->value) {
$_smarty_tpl->tpl_vars['user']->_loop = true;
?>
			<div class="<?php if (!$_smarty_tpl->tpl_vars['user']->value->enabled) {?>invisible<?php }?> row">
		 		<div class="checkbox cell">
					<input type="checkbox" name="check[]" value="<?php echo $_smarty_tpl->tpl_vars['user']->value->id;?>
"/>
				</div>

				<div class="user_name cell">
					<a href="index.php?module=DashboardAdmin&id=<?php echo $_smarty_tpl->tpl_vars['user']->value->id;?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</a><br/>
					<?php if ($_smarty_tpl->tpl_vars['user']->value->manager) {?>Ответственный: <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->manager, ENT_QUOTES, 'UTF-8', true);?>
<?php }?>
					<?php if ($_smarty_tpl->tpl_vars['user']->value->comment) {?>Комментарий: <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->comment, ENT_QUOTES, 'UTF-8', true);?>
<?php }?>
				</div>


				<div class="user_email cell">
					<a href="mailto:<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->name, ENT_QUOTES, 'UTF-8', true);?>
<<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->email, ENT_QUOTES, 'UTF-8', true);?>
>"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->email, ENT_QUOTES, 'UTF-8', true);?>
</a><br/>
					<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->tell, ENT_QUOTES, 'UTF-8', true);?>
<br/>
					<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->msgr, ENT_QUOTES, 'UTF-8', true);?>

				</div>

				<div class="user_group cell">
					<?php echo $_smarty_tpl->tpl_vars['groups']->value[$_smarty_tpl->tpl_vars['user']->value->group_id]->name;?>
<br/>
				</div>
				<div class="icons cell">
					<a class="enable" title="Активен" href="#"></a>
					<a class="delete" title="Удалить" href="#"></a>
				</div>
				<div class="clear"></div>
			</div>
			<?php } ?>
		</div>

		<div id="action">
		<label id="check_all" class="dash_link">Выбрать все</label>

		<span id=select>
		<select name="action">
			<option value="disable">Заблокировать</option>
			<option value="enable">Разблокировать</option>
			<option value="delete">Удалить</option>
		</select>
		</span>

		<input id="apply_action" class="button_green" type="submit" value="Применить">
		</div>

	</form>

	<!-- Листалка страниц -->
	<?php echo $_smarty_tpl->getSubTemplate ('pagination.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

	<!-- Листалка страниц (The End) -->

</div>
<?php }?>
            </div>
            </main><!-- .content -->
        </div><!-- .container-->

        <aside class="left-sidebar">

	<ul>
	<h3>Категории</h3>
	<li><input type="checkbox"><a href="#">Все</a></li>
	<?php  $_smarty_tpl->tpl_vars['group'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['group']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['filter_groups']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['group']->key => $_smarty_tpl->tpl_vars['group']->value) {
$_smarty_tpl->tpl_vars['group']->_loop = true;
?>
		<li><input type="checkbox"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'DashboardAdmin','category'=>$_smarty_tpl->tpl_vars['group']->value,'keyword'=>null),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['group']->value;?>
</a></li>
	<?php } ?>
	</ul>
	<ul>
	<h3>Города</h3>
	<li><input type="checkbox"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'DashboardAdmin','gorod'=>$_smarty_tpl->tpl_vars['city']->value,'keyword'=>null),$_smarty_tpl);?>
">Все</a></li>
	<?php  $_smarty_tpl->tpl_vars['city'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['city']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['filter_citys']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['city']->key => $_smarty_tpl->tpl_vars['city']->value) {
$_smarty_tpl->tpl_vars['city']->_loop = true;
?>
		<li><input type="checkbox"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'DashboardAdmin','gorod'=>$_smarty_tpl->tpl_vars['city']->value,'keyword'=>null),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['city']->value;?>
</a></li>
	<?php } ?>
	</ul>

	<ul><h3>Менеджеры</h3>
	<li><input type="checkbox"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'DashboardAdmin','manager'=>null,'keyword'=>null),$_smarty_tpl);?>
">Все</a></li>
	<?php  $_smarty_tpl->tpl_vars['manager'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['manager']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['filter_managers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['manager']->key => $_smarty_tpl->tpl_vars['manager']->value) {
$_smarty_tpl->tpl_vars['manager']->_loop = true;
?>
		<li><input type="checkbox"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'DashboardAdmin','manager'=>$_smarty_tpl->tpl_vars['manager']->value,'keyword'=>null),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['manager']->value;?>
</a></li>
	<?php } ?>
	</ul>
        </aside><!-- .left-sidebar -->
        <aside class="right-sidebar">
			<strong>Right Sidebar:</strong> Integer velit. Vestibulum nisi nunc, accumsan ut, vehicula sit amet, porta a, mi. Nam nisl tellus, placerat eget, posuere eget, egestas eget, dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In elementum urna a eros. Integer iaculis. Maecenas vel elit.
		</aside>

    </div><!-- .middle-->


<?php }} ?>
