<?php /* Smarty version Smarty-3.1.18, created on 2015-07-20 17:15:16
         compiled from "simpla/design/html/supplys.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9344992635455f6e19fa539-14457369%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0bcbe48ed8e1474620a87ba721d61a22151507d0' => 
    array (
      0 => 'simpla/design/html/supplys.tpl',
      1 => 1436345191,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9344992635455f6e19fa539-14457369',
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
  'unifunc' => 'content_5455f6e1abd1a7_58905932',
  'variables' => 
  array (
    'status' => 0,
    'new_count' => 0,
    'on_count' => 0,
    '4_count' => 0,
    'ok_count' => 0,
    'del_count' => 0,
    'z_count' => 0,
    'isuppliers' => 0,
    'is' => 0,
    'io' => 0,
    'managers' => 0,
    'm' => 0,
    'isupplier' => 0,
    'users' => 0,
    'user' => 0,
    'user_filter' => 0,
    'up_products_count' => 0,
    'products' => 0,
    'product' => 0,
    'val' => 0,
    'image' => 0,
    'variant' => 0,
    'new_count_user' => 0,
    'on_count_user' => 0,
    '2_count_user' => 0,
    '3_count_user' => 0,
    '4_count_user' => 0,
    '5_count_user' => 0,
    'ok_count_user' => 0,
    '7_count_user' => 0,
    'del_count_user' => 0,
    'up_products_p' => 0,
    'up_products_p_inbox' => 0,
    'item' => 0,
    'pruduct_supplier' => 0,
    'suppliers' => 0,
    'p_su' => 0,
    'su' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5455f6e1abd1a7_58905932')) {function content_5455f6e1abd1a7_58905932($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/home/v/vdmgrup/rostokgroup.ru/public_html/Smarty/libs/plugins/modifier.date_format.php';
?>
<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable('Оформление нового заказа', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>

<div class="pure-g" style="height: calc(100vh - 80px);">

    <div class="pure-u-1-6 b-left-side">
    <div id="filters-block" class="users-left-filters-wrapper">


    
    <ul class="s-menu">
    <!--Item-->
    <li class="s-menu-h<?php if ($_smarty_tpl->tpl_vars['status']->value=='new') {?> active<?php }?>"> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>'new','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Новые</a> <span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['new_count']->value;?>
</span></span>
    </li>
    <!--Item@-->
    <!--Item-->
    <li class="s-menu-h<?php if ($_smarty_tpl->tpl_vars['status']->value=='on') {?> active<?php }?>"> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>'on','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">В заявке</a> <span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['on_count']->value;?>
</span></span>

    </li>
    <!--Item@-->
    <!--Item-->
    
    <!--Item@-->
    <!--Item-->
    
    <!--Item@-->
        <!--Item-->
    <li class="s-menu-h<?php if ($_smarty_tpl->tpl_vars['status']->value=='4') {?> active<?php }?>"> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>4,'productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Заказано</a> <span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['4_count']->value;?>
</span></span>
    </li>
    <!--Item@-->
        <!--Item-->
    
    <!--Item@-->
        <!--Item-->
    <li class="s-menu-h<?php if ($_smarty_tpl->tpl_vars['status']->value=='ok') {?> active<?php }?>"> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>'ok','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">На складе</a> <span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['ok_count']->value;?>
</span></span>
    </li>
    <!--Item@-->
        <!--Item-->
    
    <!--Item@-->
        <!--Item-->
    <li class="s-menu-h<?php if ($_smarty_tpl->tpl_vars['status']->value=='del') {?> active<?php }?>"> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>'del','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Удаленные</a> <span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['del_count']->value;?>
</span></span>

    </li>
            <!--Item-->
    <li class="s-menu-h<?php if ($_smarty_tpl->tpl_vars['status']->value=='z') {?> active<?php }?>"> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>'z','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Запрос цены</a> <span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['z_count']->value;?>
</span></span>
    </li>
        <li class="s-menu-h<?php if ($_smarty_tpl->tpl_vars['status']->value=='z') {?> active<?php }?>"> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>'z','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Просроченные заявки</a> <span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['z_count']->value;?>
</span></span>
    </li>
    <!--Item@-->
</ul>
    
        <div class="s-menu2">
    <ul class="s-menu2-list">
    <?php  $_smarty_tpl->tpl_vars['is'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['is']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['isuppliers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['is']->key => $_smarty_tpl->tpl_vars['is']->value) {
$_smarty_tpl->tpl_vars['is']->_loop = true;
?>
        <li class="s-menu2-list-item">
        <span class="s-menu-list-header" style="margin-bottom:5px;display: inline-block;"><?php echo $_smarty_tpl->tpl_vars['is']->value->name;?>
 <span style="float: right;margin-left:5px;" class="b-label  warning"><?php echo $_smarty_tpl->tpl_vars['is']->value->count;?>
</span></span>
        <?php  $_smarty_tpl->tpl_vars['io'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['io']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['is']->value->iorders; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['io']->key => $_smarty_tpl->tpl_vars['io']->value) {
$_smarty_tpl->tpl_vars['io']->_loop = true;
?>
                  <ul>
          <?php  $_smarty_tpl->tpl_vars['status'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['status']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['io']->value->statuses; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['status']->key => $_smarty_tpl->tpl_vars['status']->value) {
$_smarty_tpl->tpl_vars['status']->_loop = true;
?>
          <li style="margin-bottom:3px;">
            <?php echo $_smarty_tpl->tpl_vars['status']->value->name;?>
 <span style="float: right;" class="b-label"><?php echo $_smarty_tpl->tpl_vars['status']->value->count;?>
</span>
            </li>
          <?php } ?>
                  </ul>
        <?php } ?>
        </li>
    <?php } ?>
    </ul>
    </div>
    <ul>
    <h2>Закупщик</h2>
    <li>
    <select id="product" class="rus-forms-elastic-input" onchange="filter_isupplier(this)">
    <option value="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Все</option>
    <?php  $_smarty_tpl->tpl_vars['m'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['m']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['managers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['m']->key => $_smarty_tpl->tpl_vars['m']->value) {
$_smarty_tpl->tpl_vars['m']->_loop = true;
?>
    <option value="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','productid'=>null,'user'=>null,'isupplier'=>$_smarty_tpl->tpl_vars['m']->value->login),$_smarty_tpl);?>
" <?php if ($_smarty_tpl->tpl_vars['isupplier']->value==$_smarty_tpl->tpl_vars['m']->value->login) {?>selected="selected"<?php }?>><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->login, ENT_QUOTES, 'UTF-8', true);?>
</option>
    <?php } ?>
    </select>
    </li>
    </ul>

    <ul>
    <h2>Покупатели</h2>
    <li>
    <select id="product" class="rus-forms-elastic-input" onchange="filter_users(this)">
    <option value="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','productid'=>null,'isupplier'=>null,'user'=>null),$_smarty_tpl);?>
">Все</option>
    <?php  $_smarty_tpl->tpl_vars['user'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['user']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['users']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['user']->key => $_smarty_tpl->tpl_vars['user']->value) {
$_smarty_tpl->tpl_vars['user']->_loop = true;
?>
    <option value="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','productid'=>null,'isupplier'=>null,'user'=>$_smarty_tpl->tpl_vars['user']->value->id),$_smarty_tpl);?>
" <?php if ($_smarty_tpl->tpl_vars['user_filter']->value->id==$_smarty_tpl->tpl_vars['user']->value->id) {?>selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['user']->value->name;?>
</option>
    <?php } ?>
    </select>
    </li>
    </ul>

    <?php if ($_smarty_tpl->tpl_vars['status']->value=='all') {?>
<h2>Все <span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h2>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['status']->value=='new') {?>
<h2>Новые <?php echo $_smarty_tpl->tpl_vars['user_filter']->value->name;?>
<span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h2>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['status']->value=='on') {?>
<h2>В заявке <?php echo $_smarty_tpl->tpl_vars['user_filter']->value->name;?>
<span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h2>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['status']->value=='ok') {?>
<h2>На складе <?php echo $_smarty_tpl->tpl_vars['user_filter']->value->name;?>
<span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h2>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['status']->value=='4') {?>
<h2>Заказано <?php echo $_smarty_tpl->tpl_vars['user_filter']->value->name;?>
<span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h2>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['status']->value=='del') {?>
<h2>Удаленные <?php echo $_smarty_tpl->tpl_vars['user_filter']->value->name;?>
<span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h2>
<?php }?>

<ul class="b-hlist b-hlist_middot">
    <li><button class="" onclick="selectall(this);">Выделить все</button></li>
    <li><button class="" onclick="unselectall(this);">Снять выделения</button></li>
    <li><button id="popup" class=""><strong><span id="selected-products"></span> <i class="fa fa-angle-down"></i></strong></button></li>
</ul>


    </div>
    </div>

    
    <div class="pure-u-5-6">

        <div class="pure-u-1-2">

        <div class="supplys-center-wrap">


<?php if ($_smarty_tpl->tpl_vars['products']->value) {?>
<div class="supplys-header">

<span class="bubble-top" id="bubble-top" style="display:none;">
    <span class="bubble-top-inner">
        <ul>
        <li><a href="#" onclick="test();">Экспорт в Excel</a></li>
            
        </ul>
    </span>
</span>
</div>


<input type="hidden" name="session_id" value="<?php echo $_SESSION['id'];?>
">




<div class="supplys-content">
<div class="pure-g header">
<div class="pure-u-2-5">
Товар
</div>
<div class="pure-u-1-5">
Остаток
</div>
<div class="pure-u-1-5">
Заказать
</div>
<div class="pure-u-1-5">
Закупка
</div>
</div>

<div class="supplys-content-scroll">

<div id="products">
<?php $_smarty_tpl->tpl_vars['val'] = new Smarty_variable(1, null, 0);?>

<?php  $_smarty_tpl->tpl_vars['product'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['product']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['products']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['product']->key => $_smarty_tpl->tpl_vars['product']->value) {
$_smarty_tpl->tpl_vars['product']->_loop = true;
?><?php  $_smarty_tpl->tpl_vars['variant'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['variant']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product']->value->variants; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['variant']->key => $_smarty_tpl->tpl_vars['variant']->value) {
$_smarty_tpl->tpl_vars['variant']->_loop = true;
?>
<div id="<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
" class="pure-g row">
<div class="pure-u-2-5">
<span style="
display: inline-block;
float: left;
margin-left: -32px;
font-family: roboto;
font-size: 31px;
font-weight: 300;
margin-top: 0px;
color: rgb(163, 163, 163);
">
<?php echo $_smarty_tpl->tpl_vars['val']->value;?>

<?php $_smarty_tpl->tpl_vars['val'] = new Smarty_variable($_smarty_tpl->tpl_vars['val']->value+1, null, 0);?>
</span>
<input type="checkbox" id="<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
" style="float: left;margin-top: 15px;margin-left: 10px;">
<span class="supplys-product-thumb"><?php $_smarty_tpl->tpl_vars['image'] = new Smarty_variable($_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['first'][0][0]->first_modifier($_smarty_tpl->tpl_vars['product']->value->images), null, 0);?><?php if ($_smarty_tpl->tpl_vars['image']->value) {?>
<a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'ProductAdmin','id'=>$_smarty_tpl->tpl_vars['product']->value->id,'return'=>$_SERVER['REQUEST_URI']),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['resize'][0][0]->resize_modifier(htmlspecialchars($_smarty_tpl->tpl_vars['image']->value->filename, ENT_QUOTES, 'UTF-8', true),35,35);?>
" /></a>
<?php } else { ?>
<a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'ProductAdmin','id'=>$_smarty_tpl->tpl_vars['product']->value->id,'return'=>$_SERVER['REQUEST_URI']),$_smarty_tpl);?>
">Добавить</a>
<?php }?></span>
<span class="b-label warning  supplyes-product-badge"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value->icount, ENT_QUOTES, 'UTF-8', true);?>
</span>
<a class="supplys-product-name" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','productid'=>$_smarty_tpl->tpl_vars['product']->value->id),$_smarty_tpl);?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value->name, ENT_QUOTES, 'UTF-8', true);?>
</a>

</div>
<div class="pure-u-1-5">
<?php echo $_smarty_tpl->tpl_vars['variant']->value->stock;?>
 шт.
</div>
<div class="pure-u-1-5">
<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value->summ, ENT_QUOTES, 'UTF-8', true);?>
 шт
</div>
<div class="pure-u-1-5">
<?php echo $_smarty_tpl->tpl_vars['variant']->value->zakupka;?>
 р.
</div>
</div>
<?php } ?><?php } ?>
</div>

</div>
</div>


<script>
    $(".supplys-content-scroll").mCustomScrollbar({
    axis:"y",
    theme:"dark",
    autoDraggerLength: true,
    autoHideScrollbar: true,
    scrollEasing:"easeOut",
    scrollbarPosition: "outside",
    scrollButtons:{ scrollType: "stepless" }
    //scrollInertia:2000
     // horizontal scrollbar
});
</script>


<?php } else { ?>
<div class="supplys-header">
<?php if ($_smarty_tpl->tpl_vars['status']->value=='all') {?>
<h1 style="font-weight: 800;">Все <span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h1>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['status']->value=='new') {?>
<h1 style="font-weight: 800;">Новые <?php echo $_smarty_tpl->tpl_vars['user_filter']->value->name;?>
<span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h1>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['status']->value=='on') {?>
<h1 style="font-weight: 800;">В заявке <?php echo $_smarty_tpl->tpl_vars['user_filter']->value->name;?>
<span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h1>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['status']->value=='ok') {?>
<h1 style="font-weight: 800;">На складе <?php echo $_smarty_tpl->tpl_vars['user_filter']->value->name;?>
<span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h1>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['status']->value=='4') {?>
<h1 style="font-weight: 800;">Заказано <?php echo $_smarty_tpl->tpl_vars['user_filter']->value->name;?>
<span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h1>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['status']->value=='del') {?>
<h1 style="font-weight: 800;">Удаленные <?php echo $_smarty_tpl->tpl_vars['user_filter']->value->name;?>
<span class="b-label warning"><?php echo $_smarty_tpl->tpl_vars['up_products_count']->value;?>
</span></h1>
<?php }?>
<ul class="b-hlist b-hlist_middot supplys-center-sorting">
    <!--Item-->
    <?php if ($_smarty_tpl->tpl_vars['new_count_user']->value!=0) {?>
    <li <?php if ($_smarty_tpl->tpl_vars['status']->value=='new') {?>class="active"<?php }?>> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>'new','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Новые (<?php echo $_smarty_tpl->tpl_vars['new_count_user']->value;?>
)</a> </span>
    </li>
    <?php }?>
    <!--Item@-->
    <!--Item-->
    <?php if ($_smarty_tpl->tpl_vars['on_count_user']->value!=0) {?>
    <li class=""> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>'on','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">В заявке (<?php echo $_smarty_tpl->tpl_vars['on_count_user']->value;?>
)</a></span>
    </li>
    <?php }?>
    <!--Item@-->
    <!--Item-->
    <?php if ($_smarty_tpl->tpl_vars['2_count_user']->value!=0) {?>
    <li class=""> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>2,'productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">На утверждение (<?php echo $_smarty_tpl->tpl_vars['2_count_user']->value;?>
)</a></span>
    </li>
    <?php }?>
    <!--Item@-->
    <!--Item-->
    <?php if ($_smarty_tpl->tpl_vars['3_count_user']->value!=0) {?>
    <li class=""> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>3,'productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Утверждено (<?php echo $_smarty_tpl->tpl_vars['3_count_user']->value;?>
)</a></span>
    </li>
    <?php }?>
    <!--Item@-->
    <!--Item-->
    <?php if ($_smarty_tpl->tpl_vars['4_count_user']->value!=0) {?>
    <li class=""> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>4,'productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Заказано (<?php echo $_smarty_tpl->tpl_vars['4_count_user']->value;?>
)</a></span>
    </li>
    <?php }?>
    <!--Item@-->
    <!--Item-->
    <?php if ($_smarty_tpl->tpl_vars['5_count_user']->value!=0) {?>
    <li class=""> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>5,'productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Отгружено у поставщика (<?php echo $_smarty_tpl->tpl_vars['5_count_user']->value;?>
)</a></span>
    </li>
    <?php }?>
    <!--Item@-->
    <!--Item-->
    <?php if ($_smarty_tpl->tpl_vars['ok_count_user']->value!=0) {?>
    <li class=""> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>'ok','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">На складе (<?php echo $_smarty_tpl->tpl_vars['ok_count_user']->value;?>
)</a></span>
    </li>
    <?php }?>
    <!--Item@-->
    <!--Item-->
    <?php if ($_smarty_tpl->tpl_vars['7_count_user']->value!=0) {?>
    <li class=""> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>7,'productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Отгружено покупателю (<?php echo $_smarty_tpl->tpl_vars['7_count_user']->value;?>
)</a></span>
    </li>
    <?php }?>
    <!--Item@-->
    <!--Item-->
    <?php if ($_smarty_tpl->tpl_vars['del_count_user']->value!=0) {?>
    <li class=""> <span><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>'del','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Удаленные (<?php echo $_smarty_tpl->tpl_vars['del_count_user']->value;?>
)</a></span>
    </li>
    <?php }?>
    <!--Item@-->
</ul>
</div>
<?php }?>

        </div>
    </div>
    <div class="pure-u-11-24">
    <div class="supplys-right-wrap">
    <div id="supplys-in"></div>
    <?php if ($_smarty_tpl->tpl_vars['up_products_p']->value) {?>


<div class="supplys-products-p-block"> <span class="supplys-products-p-imgbox"><?php $_smarty_tpl->tpl_vars['image'] = new Smarty_variable($_smarty_tpl->tpl_vars['up_products_p']->value->image, null, 0);?><?php if ($_smarty_tpl->tpl_vars['image']->value) {?>
<a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'ProductAdmin','id'=>$_smarty_tpl->tpl_vars['product']->value->id,'return'=>$_SERVER['REQUEST_URI']),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['resize'][0][0]->resize_modifier(htmlspecialchars($_smarty_tpl->tpl_vars['image']->value->filename, ENT_QUOTES, 'UTF-8', true),150,150);?>
" /></a>
<?php } else { ?>

<?php }?></span>
<ul>
    <li class="supplys-products-p-header"><?php echo $_smarty_tpl->tpl_vars['up_products_p']->value->name;?>
</li>
    <li>Артикул:</li>
    <li>Закупка:</li>
    <li>Остаток:</li>
    <li>Закано:</li>
    <li>    </li>
    <li>    </li>
</ul>

<a class="button-xlarge pure-button" style="margin-top:20px;" target="_blank" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'ProductAdmin','id'=>$_smarty_tpl->tpl_vars['product']->value->id,'return'=>$_SERVER['REQUEST_URI']),$_smarty_tpl);?>
">Открыть в новой вкладке</a>

</div>

    <table  class="pure-table pure-table-bordered">
    <thead>
        <tr>
            <th>Заказано у поставщика</th>
            <th>Детали заказа</th>
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
            <td>
                <ul>
                <?php  $_smarty_tpl->tpl_vars['pruduct_supplier'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['pruduct_supplier']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['item']->value->suppliers; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['pruduct_supplier']->key => $_smarty_tpl->tpl_vars['pruduct_supplier']->value) {
$_smarty_tpl->tpl_vars['pruduct_supplier']->_loop = true;
?>
                <li style="font-size:9px;"><i class="fa fa-refresh"></i> <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['pruduct_supplier']->value->date,"%d %m %Y",'',"rus");?>
</li>
                    <li class="b-label notice" style="margin-bottom: 5px;">
                    <?php echo $_smarty_tpl->tpl_vars['pruduct_supplier']->value->supplier;?>
<i class="fa fa-times" style="float: right;cursor: pointer;"></i>
                    </li>
                <?php } ?>
                    <span style="margin-top:5px;display: inline-block;">
                    <select id="product" class="rus-forms-elastic-input" onchange="add_supplier(this, <?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
)">
                    <option value="">Добавить</option>
                    <?php  $_smarty_tpl->tpl_vars['p_su'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['p_su']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['suppliers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['p_su']->key => $_smarty_tpl->tpl_vars['p_su']->value) {
$_smarty_tpl->tpl_vars['p_su']->_loop = true;
?>
                    <?php if ($_smarty_tpl->tpl_vars['p_su']->value->supplier!='') {?>
                    <option value="<?php echo $_smarty_tpl->tpl_vars['p_su']->value->supplier;?>
"><?php echo $_smarty_tpl->tpl_vars['p_su']->value->supplier;?>
</option>
                    <?php }?>
                    <?php } ?>
                        </select>
                        </span>
                    </li>
                </ul>
            </td>
            <td>
            <ul>
            <li style="white-space: nowrap;margin-bottom: 5px;">№ Заявки: <?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
</li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Заказчик: <?php echo $_smarty_tpl->tpl_vars['item']->value->user;?>
</li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Менеджер: <?php echo $_smarty_tpl->tpl_vars['item']->value->author;?>
</li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Заявка от: <span class="b-label success"><?php echo $_smarty_tpl->tpl_vars['item']->value->date;?>
</span></li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Актуально до: <span class="b-label success"><?php echo $_smarty_tpl->tpl_vars['item']->value->srokispol;?>
</span></li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Количество: <?php echo $_smarty_tpl->tpl_vars['item']->value->supplys_amount;?>
</li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Цена продажи: <?php echo $_smarty_tpl->tpl_vars['item']->value->tsenaprod;?>
</li>
            <li style="margin-bottom: 5px;">Комментарий:</li>
            <li style="margin-bottom: 5px;max-width:100px;"><?php echo $_smarty_tpl->tpl_vars['item']->value->commentariy;?>
</li>
            </ul>
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

        <h2>Поставщики</h2>
        <table  class="pure-table pure-table-bordered" style="width:100%;">
<thead>
  <tr>
    <th>Поставщик</th>
    <th>Наименование
    </th><th>Арт</th>
    <th>Цена</th>
    
     
     
     
     <th>Комм</th>
     
  </tr>
</thead>
    <tbody>
    <?php  $_smarty_tpl->tpl_vars['su'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['su']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['suppliers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['su']->key => $_smarty_tpl->tpl_vars['su']->value) {
$_smarty_tpl->tpl_vars['su']->_loop = true;
?>
        <tr>
            <td contenteditable="true" id="supplier<?php echo $_smarty_tpl->tpl_vars['su']->value->i;?>
" onkeyup="update_product_supplier(this)"><?php echo $_smarty_tpl->tpl_vars['su']->value->supplier;?>
</td>
            <td contenteditable="true" id="prod<?php echo $_smarty_tpl->tpl_vars['su']->value->i;?>
" onkeyup="update_product_supplier(this)"><?php echo $_smarty_tpl->tpl_vars['su']->value->prod;?>
</td>
            <td contenteditable="true" id="art<?php echo $_smarty_tpl->tpl_vars['su']->value->i;?>
" onkeyup="update_product_supplier(this)"><?php echo $_smarty_tpl->tpl_vars['su']->value->art;?>
</td>
            <td contenteditable="true" id="price<?php echo $_smarty_tpl->tpl_vars['su']->value->i;?>
" timestamp="1" onkeyup="update_product_supplier(this)"><?php echo $_smarty_tpl->tpl_vars['su']->value->price;?>
</td>
            
            
            
            
            <td contenteditable="true" id="contacts<?php echo $_smarty_tpl->tpl_vars['su']->value->i;?>
"  timestamp="1"  onkeyup="update_product_supplier(this)"><?php echo $_smarty_tpl->tpl_vars['su']->value->comments;?>
</td>
            
        </tr>
    <?php } ?>
    </tbody>
</table>
    <?php }?>
    </div>
    </div>
    </div>
    



</div>


<input id="session_id" type="hidden" value="<?php echo $_SESSION['id'];?>
">
<script src="design/js/supplys_united.js"></script><?php }} ?>
