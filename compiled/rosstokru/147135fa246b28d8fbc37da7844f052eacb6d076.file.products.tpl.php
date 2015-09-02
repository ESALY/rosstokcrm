<?php /* Smarty version Smarty-3.1.18, created on 2015-06-15 16:13:51
         compiled from "/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/products.tpl" */ ?>
<?php /*%%SmartyHeaderCode:10795511555228ca06d57d5-35696421%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '147135fa246b28d8fbc37da7844f052eacb6d076' => 
    array (
      0 => '/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/products.tpl',
      1 => 1434373696,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10795511555228ca06d57d5-35696421',
  'function' => 
  array (
    'categories_recursiv' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_55228ca07cbba7_09341500',
  'variables' => 
  array (
    'category' => 0,
    'brand' => 0,
    'keyword' => 0,
    'cat' => 0,
    'page' => 0,
    'current_page_num' => 0,
    'products' => 0,
    'categories' => 0,
    'c' => 0,
    'all_products' => 0,
    'cp' => 0,
    'v' => 0,
  ),
  'has_nocache_code' => 0,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55228ca07cbba7_09341500')) {function content_55228ca07cbba7_09341500($_smarty_tpl) {?>


<?php if ($_smarty_tpl->tpl_vars['category']->value&&$_smarty_tpl->tpl_vars['brand']->value) {?>
<?php $_smarty_tpl->tpl_vars['canonical'] = new Smarty_variable("/catalog/".((string)$_smarty_tpl->tpl_vars['category']->value->url)."/".((string)$_smarty_tpl->tpl_vars['brand']->value->url), null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['canonical'] = clone $_smarty_tpl->tpl_vars['canonical'];?>
<?php } elseif ($_smarty_tpl->tpl_vars['category']->value) {?>
<?php $_smarty_tpl->tpl_vars['canonical'] = new Smarty_variable("/catalog/".((string)$_smarty_tpl->tpl_vars['category']->value->url), null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['canonical'] = clone $_smarty_tpl->tpl_vars['canonical'];?>
<?php } elseif ($_smarty_tpl->tpl_vars['brand']->value) {?>
<?php $_smarty_tpl->tpl_vars['canonical'] = new Smarty_variable("/brands/".((string)$_smarty_tpl->tpl_vars['brand']->value->url), null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['canonical'] = clone $_smarty_tpl->tpl_vars['canonical'];?>
<?php } elseif ($_smarty_tpl->tpl_vars['keyword']->value) {?>
<?php ob_start();?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['keyword']->value, ENT_QUOTES, 'UTF-8', true);?>
<?php $_tmp1=ob_get_clean();?><?php $_smarty_tpl->tpl_vars['canonical'] = new Smarty_variable("/products?keyword=".$_tmp1, null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['canonical'] = clone $_smarty_tpl->tpl_vars['canonical'];?>
<?php } else { ?>
<?php $_smarty_tpl->tpl_vars['canonical'] = new Smarty_variable("/products", null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['canonical'] = clone $_smarty_tpl->tpl_vars['canonical'];?>
<?php }?>

<!-- Хлебные крошки /-->
<div class="path">
	<a href="/">Главная</a>
	<?php if ($_smarty_tpl->tpl_vars['category']->value) {?>
	<?php  $_smarty_tpl->tpl_vars['cat'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['cat']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['category']->value->path; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['cat']->key => $_smarty_tpl->tpl_vars['cat']->value) {
$_smarty_tpl->tpl_vars['cat']->_loop = true;
?>
	→ <a href="catalog/<?php echo $_smarty_tpl->tpl_vars['cat']->value->url;?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['cat']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</a>
	<?php } ?>
	<?php if ($_smarty_tpl->tpl_vars['brand']->value) {?>
	→ <a href="catalog/<?php echo $_smarty_tpl->tpl_vars['cat']->value->url;?>
/<?php echo $_smarty_tpl->tpl_vars['brand']->value->url;?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['brand']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</a>
	<?php }?>
	<?php } elseif ($_smarty_tpl->tpl_vars['brand']->value) {?>
	→ <a href="brands/<?php echo $_smarty_tpl->tpl_vars['brand']->value->url;?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['brand']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</a>
	<?php } elseif ($_smarty_tpl->tpl_vars['keyword']->value) {?>
	→ Поиск
	<?php }?>
</div>
<!-- Хлебные крошки #End /-->


<?php if ($_smarty_tpl->tpl_vars['keyword']->value) {?>
<h1>Поиск <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['keyword']->value, ENT_QUOTES, 'UTF-8', true);?>
</h1>
<?php } elseif ($_smarty_tpl->tpl_vars['page']->value) {?>
<h1><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['page']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</h1>
<?php } else { ?>
<h1><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['category']->value->name, ENT_QUOTES, 'UTF-8', true);?>
 <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['brand']->value->name, ENT_QUOTES, 'UTF-8', true);?>
 <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['keyword']->value, ENT_QUOTES, 'UTF-8', true);?>
</h1>
<?php }?>


<?php echo $_smarty_tpl->tpl_vars['page']->value->body;?>


<?php if ($_smarty_tpl->tpl_vars['current_page_num']->value==1) {?>

<?php echo $_smarty_tpl->tpl_vars['category']->value->description;?>

<?php }?>



<?php if ($_smarty_tpl->tpl_vars['current_page_num']->value==1) {?>

<?php echo $_smarty_tpl->tpl_vars['brand']->value->description;?>

<?php }?>



<!--Каталог товаров-->
<?php if ($_smarty_tpl->tpl_vars['products']->value) {?>







<?php if (!function_exists('smarty_template_function_categories_recursiv')) {
    function smarty_template_function_categories_recursiv($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->smarty->template_functions['categories_recursiv']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>



<?php  $_smarty_tpl->tpl_vars['c'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['c']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['categories']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['c']->key => $_smarty_tpl->tpl_vars['c']->value) {
$_smarty_tpl->tpl_vars['c']->_loop = true;
?>
<li class="product">

<?php if (!$_smarty_tpl->tpl_vars['c']->value->subcategories) {?>

		<div class="product-header l-gradient-green">
		<h3 class="">
		<a data-product="" href=""><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['c']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</a>
		</h3>
		</div>
		<div class="product_info">

		<!-- Фото товара -->

		<img class="lazy" data-original="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['resize'][0][0]->resize_modifier($_smarty_tpl->tpl_vars['c']->value->image->filename,100,100);?>
" alt=""/>

		</div>


		<!-- Фото товара (The End) -->

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['get_products'][0][0]->get_products_plugin(array('var'=>'all_products','limit'=>100,'category_id'=>$_smarty_tpl->tpl_vars['c']->value->id),$_smarty_tpl);?>

<?php if ($_smarty_tpl->tpl_vars['all_products']->value) {?>
<div class="product-body-wrapper">
		<table class="products-table">
	<thead>
		<tr>
		  <th>Фото</th>
			<th>Артикул</th>
			<th>Описание</th>
			<th>Остаток</th>
			<th>Цена</th>
			<th>Кол-во</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
<?php  $_smarty_tpl->tpl_vars['cp'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['cp']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['all_products']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['cp']->key => $_smarty_tpl->tpl_vars['cp']->value) {
$_smarty_tpl->tpl_vars['cp']->_loop = true;
?>
<tr>
<td>

<?php if ($_smarty_tpl->tpl_vars['cp']->value->image) {?>
		<div class="image">
		<a href="products/<?php echo $_smarty_tpl->tpl_vars['cp']->value->url;?>
"><img class="lazy" data-original="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['resize'][0][0]->resize_modifier($_smarty_tpl->tpl_vars['cp']->value->image->filename,50,50);?>
" alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['cp']->value->name, ENT_QUOTES, 'UTF-8', true);?>
"/></div></a>
		</div>
		<?php }?>
</td>
			<td>
			<span style="background: linear-gradient(to bottom,#4EBA6F 0%,#3EA35D 100%);
border-left: 1px solid #88c86d;
border-right: 1px solid #88c86d;
padding: 3px 10px;
border-radius: 13px;
color: white;
font-weight: bold;
margin-top: 5px;
display: inline-block;
font-size: 9px;">
			<?php if ($_smarty_tpl->tpl_vars['cp']->value->variants) {?>
			<?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cp']->value->variants; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
?><?php echo $_smarty_tpl->tpl_vars['v']->value->sku;?>
<?php } ?>
			<?php } else { ?>
			<?php echo $_smarty_tpl->tpl_vars['cp']->value->id;?>

			<?php }?>
			</span>
			</td>
			<td><?php echo $_smarty_tpl->tpl_vars['cp']->value->name;?>

			</td>
			<td style="text-align: center;"><?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cp']->value->variants; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
?><?php echo $_smarty_tpl->tpl_vars['v']->value->stock;?>
<?php } ?></td>
			<td><?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['cp']->value->variants; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
?><?php echo $_smarty_tpl->tpl_vars['v']->value->price;?>
<?php } ?></td>
			<td><input type="text" class="form_order_2" style="width:50px;" name="1goods_order"></td>
			<td><span class="btn" style="cursor: pointer;">купить</span></td>
		</tr>
<?php } ?>

<?php }?>

</div>
<?php }?>

<?php smarty_template_function_categories_recursiv($_smarty_tpl,array('categories'=>$_smarty_tpl->tpl_vars['c']->value->subcategories));?>


</li>
<?php } ?>
	</tbody>
</table>


<?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;
foreach (Smarty::$global_tpl_vars as $key => $value) if(!isset($_smarty_tpl->tpl_vars[$key])) $_smarty_tpl->tpl_vars[$key] = $value;}}?>


<ul class="products">
<?php smarty_template_function_categories_recursiv($_smarty_tpl,array('categories'=>$_smarty_tpl->tpl_vars['category']->value->subcategories));?>

</ul>



<!-- Список товаров-->


<?php echo $_smarty_tpl->getSubTemplate ('pagination.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<!-- Список товаров (The End)-->

<?php } else { ?>
Товары не найдены
<?php }?>
<!--Каталог товаров (The End)--><?php }} ?>
