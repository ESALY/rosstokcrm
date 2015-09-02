<?php /* Smarty version Smarty-3.1.18, created on 2015-06-25 11:14:01
         compiled from "/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:82891165155228b9ea8a687-97401161%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6fca6b2f2e0527c13b3bf498f8300b39c06bac2f' => 
    array (
      0 => '/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/index.tpl',
      1 => 1435220037,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '82891165155228b9ea8a687-97401161',
  'function' => 
  array (
    'categories_tree' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_55228b9ebb80b0_19532361',
  'variables' => 
  array (
    'config' => 0,
    'meta_description' => 0,
    'canonical' => 0,
    'settings' => 0,
    'pages' => 0,
    'p' => 0,
    'page' => 0,
    'content' => 0,
    'categories' => 0,
    'category' => 0,
    'c' => 0,
  ),
  'has_nocache_code' => 0,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55228b9ebb80b0_19532361')) {function content_55228b9ebb80b0_19532361($_smarty_tpl) {?><!DOCTYPE html>
<html>
<head>
	<base href="<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
/"/>
	<meta charset="utf-8" />
	<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<title></title>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['meta_description']->value, ENT_QUOTES, 'UTF-8', true);?>
" />
 <meta name='yandex-verification' content='547619f2e0268d0f' />


	
	<?php if (isset($_smarty_tpl->tpl_vars['canonical']->value)) {?><link rel="canonical" href="<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
<?php echo $_smarty_tpl->tpl_vars['canonical']->value;?>
"/><?php }?>

	
	<link href="design/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['settings']->value->theme, ENT_QUOTES, 'UTF-8', true);?>
/css/normalize.css" rel="stylesheet" type="text/css" media="screen"/>
	<link href="design/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['settings']->value->theme, ENT_QUOTES, 'UTF-8', true);?>
/css/style.css" rel="stylesheet" type="text/css" media="screen"/>
	<link href="design/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['settings']->value->theme, ENT_QUOTES, 'UTF-8', true);?>
/images/favicon.ico" rel="icon"          type="image/x-icon"/>
	<link href="design/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['settings']->value->theme, ENT_QUOTES, 'UTF-8', true);?>
/images/favicon.ico" rel="shortcut icon" type="image/x-icon"/>

	
	<script src="js/jquery/jquery.js"  type="text/javascript"></script>

</head>

<body>
<div class="wrapper">

	<header class="header">
	<div class="header-logo">
	<a href="/"><img src="design/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['settings']->value->theme, ENT_QUOTES, 'UTF-8', true);?>
/images/logo-main.png" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['settings']->value->site_name, ENT_QUOTES, 'UTF-8', true);?>
" alt="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['settings']->value->site_name, ENT_QUOTES, 'UTF-8', true);?>
"/></a>
	</div>

<span style="
    float: right;
    margin-top: 35px;
">
<span style="
    font-size: 24px;
    padding: 5px;
">+7 (495) 134-07-27</span>
<span style="
    padding: 5px;
">Почта: info@vdm-grup.ru</span>

<span style="
    margin-left: 30px;
    margin-right: 45px;
">
<span>Пн—Пт: 10:00 — 20:00</span>
<span>Сб—Вс: 11:00 — 19:00</span>
</span>

<span style="
    background: #2D95BF;  border-radius: 7px;  color: #ffffff;  padding: 5px 10px 5px 10px;  text-decoration: none;  border: none;
">Заказать обратный звонок</span>
</span>
		
	<nav>

			<!-- Меню -->
		<ul id="menu">
			<?php  $_smarty_tpl->tpl_vars['p'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['p']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['pages']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['p']->key => $_smarty_tpl->tpl_vars['p']->value) {
$_smarty_tpl->tpl_vars['p']->_loop = true;
?>
				
				<?php if ($_smarty_tpl->tpl_vars['p']->value->menu_id==1) {?>
				<li class="category top_level" <?php if ($_smarty_tpl->tpl_vars['page']->value&&$_smarty_tpl->tpl_vars['page']->value->id==$_smarty_tpl->tpl_vars['p']->value->id) {?>class="selected"<?php }?>>
					<a data-page="<?php echo $_smarty_tpl->tpl_vars['p']->value->id;?>
" href="<?php echo $_smarty_tpl->tpl_vars['p']->value->url;?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['p']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</a>
				</li>
				<?php }?>
			<?php } ?>
		</ul>
		<!-- Меню (The End) -->
</nav>
	</header><!-- .header-->

	<div class="middle">

		<div class="container">
			<main class="content">
			<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

			</main><!-- .content -->
		</div><!-- .container-->

		<aside class="left-sidebar">
		<div class="left-sidebar-block left-sidebar-block__search">
			<div class="left-sidebar-block__header-green left-sidebar-block__header">Поиск</div>
			<div class="left-sidebar-block__search-inner">
			<form action=""><table class="b-search">
<tr>
    <td class="input">
        <div class="b-input"><input /></div>
    </td>
    <td class="button">
        <input  class="btn" type="submit" value="Найти"/>
    </td>
</tr>
</table></form></div>
		</div>

		<div class="left-sidebar-block left-sidebar-block__catalog">
			<div class="left-sidebar-block__header-green left-sidebar-block__header">Каталог продукции</div>
			<!-- Меню каталога -->
					
			
			<?php if (!function_exists('smarty_template_function_categories_tree')) {
    function smarty_template_function_categories_tree($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->smarty->template_functions['categories_tree']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
			<?php if ($_smarty_tpl->tpl_vars['categories']->value) {?>
			<ul <?php if (in_array($_smarty_tpl->tpl_vars['category']->value->id,$_smarty_tpl->tpl_vars['c']->value->children)) {?>class="cssmenu_left_level_<?php echo $_smarty_tpl->tpl_vars['c']->value->level+1;?>
"<?php } else { ?>class="<?php if ($_smarty_tpl->tpl_vars['c']->value->level) {?>cssmenu_left_level<?php echo $_smarty_tpl->tpl_vars['c']->value->level;?>
<?php } else { ?>cssmenu_left<?php }?>"<?php }?>>
			<?php  $_smarty_tpl->tpl_vars['c'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['c']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['categories']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['c']->key => $_smarty_tpl->tpl_vars['c']->value) {
$_smarty_tpl->tpl_vars['c']->_loop = true;
?>
				
				<?php if ($_smarty_tpl->tpl_vars['c']->value->visible) {?>
					<li>
						
						
						<?php if ($_smarty_tpl->tpl_vars['c']->value->subcategories) {?>
						<a <?php if ($_smarty_tpl->tpl_vars['category']->value->id==$_smarty_tpl->tpl_vars['c']->value->id) {?>class="selected"<?php }?> href="catalog/<?php echo $_smarty_tpl->tpl_vars['c']->value->url;?>
" data-category="<?php echo $_smarty_tpl->tpl_vars['c']->value->id;?>
">► <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['c']->value->name, ENT_QUOTES, 'UTF-8', true);?>
 (<?php echo $_smarty_tpl->tpl_vars['c']->value->count;?>
)</a>
						<?php } else { ?>
						
						<?php }?>
											<?php if (in_array($_smarty_tpl->tpl_vars['category']->value->id,$_smarty_tpl->tpl_vars['c']->value->children)) {?>
						<?php smarty_template_function_categories_tree($_smarty_tpl,array('categories'=>$_smarty_tpl->tpl_vars['c']->value->subcategories));?>

						<?php }?>
					</li>

				<?php }?>
			<?php } ?>
			</ul>
			<?php }?>
			<?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;
foreach (Smarty::$global_tpl_vars as $key => $value) if(!isset($_smarty_tpl->tpl_vars[$key])) $_smarty_tpl->tpl_vars[$key] = $value;}}?>

			<?php smarty_template_function_categories_tree($_smarty_tpl,array('categories'=>$_smarty_tpl->tpl_vars['categories']->value));?>

	
			<!-- Меню каталога (The End)-->
		</div>

		<div class="left-sidebar-block left-sidebar-block__inf">
			<div class="left-sidebar-block__header-red left-sidebar-block__header">Цена товара</div>
			<div  class="left-sidebar-block__inf-text">
			При сумме заказа меньше 15 000 рублей цена товара рассчитывается по столбцу "м.опт"
			</div>
		</div>

			<div class="left-sidebar-block left-sidebar-block__inf">
			<div class="left-sidebar-block__header-red left-sidebar-block__header">Отгрузка товара</div>
			<div  class="left-sidebar-block__inf-text">
			Внимание! Продукция отгружается только кратно упаковкам. Единовременная отгрузка производится на сумму не менее 5000 рублей
			</div>
		</div>
		</aside><!-- .left-sidebar -->

		<aside class="right-sidebar">
		<div class="right-sidebar-header l-gradient-green">
		Корзина
		</div>
		<ul class="right-basket-wrapper">
			<li class="right-basket-item"></li>
		</ul>
		</aside><!-- .right-sidebar -->

	</div><!-- .middle-->

</div><!-- .wrapper -->

<footer class="footer">
<!-- Меню -->
		<ul class="footer-menu">
			<?php  $_smarty_tpl->tpl_vars['p'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['p']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['pages']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['p']->key => $_smarty_tpl->tpl_vars['p']->value) {
$_smarty_tpl->tpl_vars['p']->_loop = true;
?>
				
				<?php if ($_smarty_tpl->tpl_vars['p']->value->menu_id==1) {?>
				<li <?php if ($_smarty_tpl->tpl_vars['page']->value&&$_smarty_tpl->tpl_vars['page']->value->id==$_smarty_tpl->tpl_vars['p']->value->id) {?>class="selected"<?php }?>>
					<a data-page="<?php echo $_smarty_tpl->tpl_vars['p']->value->id;?>
" href="<?php echo $_smarty_tpl->tpl_vars['p']->value->url;?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['p']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</a>
				</li>
				<?php }?>
			<?php } ?>
		</ul>
		<!-- Меню (The End) -->
		<span>© 2005-2015 Компания «Росток»</span>
</footer><!-- .footer -->

 
 
 <!-- Yandex.Metrika counter -->
<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter31096746 = new Ya.Metrika({id:31096746,
                    webvisor:true,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true});
        } catch(e) { }
    });

    var n = d.getElementsByTagName("script")[0],
        s = d.createElement("script"),
        f = function () { n.parentNode.insertBefore(s, n); };
    s.type = "text/javascript";
    s.async = true;
    s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

    if (w.opera == "[object Opera]") {
        d.addEventListener("DOMContentLoaded", f, false);
    } else { f(); }
})(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="//mc.yandex.ru/watch/31096746" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
 
 
 
</body>
</html><?php }} ?>
