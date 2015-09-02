<?php /* Smarty version Smarty-3.1.18, created on 2015-07-02 10:25:31
         compiled from "/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14153940855228bbf2ff581-79091508%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '92c0658c87dcf7d8be8d84c888c4ef5bf660fe53' => 
    array (
      0 => '/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/main.tpl',
      1 => 1435821911,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14153940855228bbf2ff581-79091508',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_55228bbf33f6f3_20337430',
  'variables' => 
  array (
    'last_posts' => 0,
    'post' => 0,
    'page' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55228bbf33f6f3_20337430')) {function content_55228bbf33f6f3_20337430($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_truncate')) include '/home/v/vdmgrup/rostokgroup.ru/public_html/Smarty/libs/plugins/modifier.truncate.php';
?>



<?php $_smarty_tpl->tpl_vars['wrapper'] = new Smarty_variable('index.tpl', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['wrapper'] = clone $_smarty_tpl->tpl_vars['wrapper'];?>


<?php $_smarty_tpl->tpl_vars['canonical'] = new Smarty_variable('', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['canonical'] = clone $_smarty_tpl->tpl_vars['canonical'];?>



<ul class="mainpage-list">
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Мебель</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Производство постформинга</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Комплектующие для мебели</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Промышленное оборудование и станки</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Проектирование и строительство</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Товары для строительства</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Продовольственные товары</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Хозтовары</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Услуг</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Реклама</a></span>
  </li>
    <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Текстильные товары</a></span>
  </li>
  <li>
    <span class="thumb"><a href="/"></a></span>
    <span class="link"><a href="/">Прочее</a></span>
  </li>
</ul>


<h3 style="
    font-size: 25px;
    margin-top: 15px;
    margin-bottom: 15px;
"><a href="/actions/">Акции</a></h3>


			<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['get_posts'][0][0]->get_posts_plugin(array('var'=>'last_posts','limit'=>5),$_smarty_tpl);?>

			<?php if ($_smarty_tpl->tpl_vars['last_posts']->value) {?>
			<div class="rubrics">
			<?php  $_smarty_tpl->tpl_vars['post'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['post']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['last_posts']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['post']->key => $_smarty_tpl->tpl_vars['post']->value) {
$_smarty_tpl->tpl_vars['post']->_loop = true;
?>
			<!--inner start-->
			<div class="rubrik">
			<div class="rubrik-inner">
			<div class="rubrik-header">
			<a href="blog/<?php echo $_smarty_tpl->tpl_vars['post']->value->url;?>
"><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['post']->value->name,70);?>
</a>
			</div>
			<div class="rubrik-body">
			
			<div class="rubrik-body-text">
			
			</div>
			</div>
			</div>
			</div>
			<!--inner end-->
			<?php } ?>
			</div>
			<?php }?>

<h3 style="
    font-size: 25px;
    margin-top: 15px;
    margin-bottom: 15px;
"><a href="/actions/">Акции</a></h3>

<h3 style="
    font-size: 25px;
    margin-top: 15px;
    margin-bottom: 15px;
"><a href="/actions/">Акции</a></h3>

<h3 style="
    font-size: 25px;
    margin-top: 15px;
    margin-bottom: 15px;
"><a href="/actions/">Акции</a></h3>


<?php echo $_smarty_tpl->tpl_vars['page']->value->body;?>



<?php }} ?>
