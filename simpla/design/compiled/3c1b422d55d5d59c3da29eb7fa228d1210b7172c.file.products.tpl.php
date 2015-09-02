<?php /* Smarty version Smarty-3.1.18, created on 2015-05-11 13:29:03
         compiled from "simpla\design\html\products.tpl" */ ?>
<?php /*%%SmartyHeaderCode:849054a5c80a708898-93740089%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3c1b422d55d5d59c3da29eb7fa228d1210b7172c' => 
    array (
      0 => 'simpla\\design\\html\\products.tpl',
      1 => 1428329021,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '849054a5c80a708898-93740089',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_54a5c80a7e5ca0_94742517',
  'variables' => 
  array (
    'manager' => 0,
    'category' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54a5c80a7e5ca0_94742517')) {function content_54a5c80a7e5ca0_94742517($_smarty_tpl) {?>
<?php $_smarty_tpl->_capture_stack[0][] = array('tabs', null, null); ob_start(); ?>
	<li class="active"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'ProductsAdmin','keyword'=>null,'category_id'=>null,'brand_id'=>null,'filter'=>null,'page'=>null),$_smarty_tpl);?>
">Товары</a></li>
	<?php if (in_array('categories',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=CategoriesAdmin">Категории</a></li><?php }?>
	<?php if (in_array('brands',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=BrandsAdmin">Бренды</a></li><?php }?>
	<?php if (in_array('features',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=FeaturesAdmin">Свойства</a></li><?php }?>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>


<?php if ($_smarty_tpl->tpl_vars['category']->value) {?>
	<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable($_smarty_tpl->tpl_vars['category']->value->name, null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>
<?php } else { ?>
	<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable('Товары', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>
<?php }?>


<div class="pure-g">
    <div class="pure-u-1-5 b-left-side">
    <div id="products-categories-scroll" class="jstree_categories">

    <h2>Категории</h2>
    <div id="jstree_demo_div"></div>
    </div>
    </div>

        
<script>
    $("#products-categories-scroll").mCustomScrollbar({
    axis:"y",
    theme:"light-thin"
     // horizontal scrollbar
});
</script>


    

    <div class="pure-u-1-2" id="content">
    <h1>Товары <a class="button button-rounded button-flat" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'ProductAdmin'),$_smarty_tpl);?>
">Добавить</a></h1>
    
    <div class="b-input products-search">
    <input id="search-box" placeholder="Поиск...">
    </div>
    
    
    <div class="products-wrap">777</div>
    
    </div>
    
  </div>


<input id="session_id" type="hidden" value="<?php echo $_SESSION['id'];?>
">
<script src="design/js/products_united.js"></script>

<?php }} ?>
