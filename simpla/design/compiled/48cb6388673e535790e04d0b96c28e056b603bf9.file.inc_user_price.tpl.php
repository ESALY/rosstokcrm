<?php /* Smarty version Smarty-3.1.18, created on 2015-07-20 17:15:37
         compiled from "simpla/design/html/inc_user_price.tpl" */ ?>
<?php /*%%SmartyHeaderCode:99754770854352c26220197-12644945%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '48cb6388673e535790e04d0b96c28e056b603bf9' => 
    array (
      0 => 'simpla/design/html/inc_user_price.tpl',
      1 => 1436345150,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '99754770854352c26220197-12644945',
  'function' => 
  array (
    'beretstatuscolorbtn' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'sprosstatuscolorbtn' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'ispolstatuscolorbtn' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'categories_tree' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'upricevse' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'beretstatuscolor' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'sprosstatuscolor' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'ispolstatuscolor' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'beretstatus' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'ispolstatus' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'sprosstatus' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'neinstatus' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'cena_klienta' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'cena_klienta_per' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'cena_klienta_date' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'utverzhdennaja_cena' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'utverzhdennaja_cena_per' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'spec_cena' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'spec_cena_colichestvo' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'akcija_cena' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'akcija_cena_colichestvo' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'prodcomment' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'prodcommentall' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'upriceberet' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'upriceispol' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'upricespros' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'upricenein' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'utverzhdennaja_cena_basket' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'printstatus' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'utverzhdennaja_cena_tek' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_54352c27608585_98418286',
  'variables' => 
  array (
    'product' => 0,
    'item' => 0,
    'user' => 0,
    'sort' => 0,
    'filter' => 0,
    'categories' => 0,
    'c1' => 0,
    'category' => 0,
    'ssubcat' => 0,
    'c' => 0,
    'config' => 0,
    'image' => 0,
    'm' => 0,
  ),
  'has_nocache_code' => 0,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54352c27608585_98418286')) {function content_54352c27608585_98418286($_smarty_tpl) {?><div class="user_price_wrapper">
777
<a class="btn btn-primary announce" data-toggle="modal" data-id="107" >Announce</a>
       <!--*****************************************************************************************************************************************************************-->
                             <div style="display: inline-block;
  width: 100%;
  margin-bottom: 10px;
  padding-top: 15px;
  border-bottom: 1px solid rgb(219, 219, 219);
  padding-bottom: 15px;
  background: whitesmoke;">

                            <?php if (!function_exists('smarty_template_function_beretstatuscolorbtn')) {
    function smarty_template_function_beretstatuscolorbtn($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->smarty->template_functions['beretstatuscolorbtn']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
                            <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product']->value->beretstatus; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['item']->index=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['item']->index++;
 $_smarty_tpl->tpl_vars['item']->first = $_smarty_tpl->tpl_vars['item']->index === 0;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['foo']['first'] = $_smarty_tpl->tpl_vars['item']->first;
?>
                            <?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['foo']['first']) {?><?php if ($_smarty_tpl->tpl_vars['item']->value->status=="on") {?>beret<?php }?><?php }?>
                            <?php } ?>
                            <?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;
foreach (Smarty::$global_tpl_vars as $key => $value) if(!isset($_smarty_tpl->tpl_vars[$key])) $_smarty_tpl->tpl_vars[$key] = $value;}}?>


                            <?php if (!function_exists('smarty_template_function_sprosstatuscolorbtn')) {
    function smarty_template_function_sprosstatuscolorbtn($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->smarty->template_functions['sprosstatuscolorbtn']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
                            <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product']->value->sprosstatus; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['item']->index=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['item']->index++;
 $_smarty_tpl->tpl_vars['item']->first = $_smarty_tpl->tpl_vars['item']->index === 0;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['foo']['first'] = $_smarty_tpl->tpl_vars['item']->first;
?>
                            <?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['foo']['first']) {?><?php if ($_smarty_tpl->tpl_vars['item']->value->status=="on") {?>spros<?php }?><?php }?>
                            <?php } ?>
                            <?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;
foreach (Smarty::$global_tpl_vars as $key => $value) if(!isset($_smarty_tpl->tpl_vars[$key])) $_smarty_tpl->tpl_vars[$key] = $value;}}?>


                            <?php if (!function_exists('smarty_template_function_ispolstatuscolorbtn')) {
    function smarty_template_function_ispolstatuscolorbtn($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->smarty->template_functions['ispolstatuscolorbtn']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
                            <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product']->value->ispolstatus; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['item']->index=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['item']->index++;
 $_smarty_tpl->tpl_vars['item']->first = $_smarty_tpl->tpl_vars['item']->index === 0;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['foo']['first'] = $_smarty_tpl->tpl_vars['item']->first;
?>
                            <?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['foo']['first']) {?><?php if ($_smarty_tpl->tpl_vars['item']->value->status=="on") {?>interes<?php }?><?php }?>
                            <?php } ?>
                            <?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;
foreach (Smarty::$global_tpl_vars as $key => $value) if(!isset($_smarty_tpl->tpl_vars[$key])) $_smarty_tpl->tpl_vars[$key] = $value;}}?>


                             <a  class="button button-flat button-tiny <?php if ($_COOKIE['view']=='vse') {?>button button-flat button-primary<?php }?>" onclick="document.cookie='view=vse;path=/';document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'UserAdmin','id'=>$_smarty_tpl->tpl_vars['user']->value->id,'filter'=>'vse','page'=>null),$_smarty_tpl);?>
"><i class="fa fa-user"></i><i class="fa fa-filter"></i> Без фильтра</a>

                             <a  class="button button-flat button-tiny <?php if ($_COOKIE['view']=='beret') {?>button button-flat button-primary<?php }?>" onclick="document.cookie='view=beret;path=/';document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'UserAdmin','id'=>$_smarty_tpl->tpl_vars['user']->value->id,'filter'=>'beret','page'=>'all'),$_smarty_tpl);?>
"><i class="fa fa-user"></i><i class="fa fa-filter"></i> Берет</a>

                             <a  class="button button-flat button-tiny <?php if ($_COOKIE['view']=='ispol') {?>button button-flat button-primary<?php }?>" onclick="document.cookie='view=ispol;path=/';document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'UserAdmin','id'=>$_smarty_tpl->tpl_vars['user']->value->id,'filter'=>'ispol','page'=>'all'),$_smarty_tpl);?>
"><i class="fa fa-user"></i><i class="fa fa-filter"></i> Интересуется</a>

                             <a  class="button button-flat button-tiny <?php if ($_COOKIE['view']=='spros') {?>button button-flat button-primary<?php }?>" onclick="document.cookie='view=spros;path=/';document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'UserAdmin','id'=>$_smarty_tpl->tpl_vars['user']->value->id,'filter'=>'spros','page'=>'all'),$_smarty_tpl);?>
"><i class="fa fa-user"></i><i class="fa fa-filter"></i> Спрос (нет товара)</a>

                             <a  class="button button-flat button-tiny <?php if ($_COOKIE['view']=='nein') {?>button button-flat button-primary<?php }?>" onclick="document.cookie='view=nein;path=/';document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'UserAdmin','id'=>$_smarty_tpl->tpl_vars['user']->value->id,'filter'=>'nein','page'=>'all'),$_smarty_tpl);?>
"><i class="fa fa-user"></i><i class="fa fa-filter"></i> Не интересно</a>

                            <div class="right">
                            <a  class="button button-flat button-tiny <?php if ($_smarty_tpl->tpl_vars['sort']->value=='nameASC') {?> button-highlight<?php }?>" onclick="document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'UserAdmin','sort'=>'nameASC'),$_smarty_tpl);?>
"><i class="fa fa-sort-alpha-asc"></i></a>
                            <a  class="button button-flat button-tiny <?php if ($_smarty_tpl->tpl_vars['sort']->value=='nameDESC') {?> button-highlight<?php }?>" onclick="document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'UserAdmin','sort'=>'nameDESC'),$_smarty_tpl);?>
"><i class="fa fa-sort-alpha-desc"></i></a>
                            <a  class="button button-flat button-tiny <?php if ($_smarty_tpl->tpl_vars['sort']->value=='position') {?> button-highlight<?php }?>" onclick="document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'UserAdmin','sort'=>'position'),$_smarty_tpl);?>
"><i class="fa fa-sort-amount-desc"></i></a>
                            <a  class="button button-flat button-tiny" onclick="document.location.reload();" href="javascript:;"><i class="fa fa-refresh"></i></a>
                            </div>


                                                        <div style="float:right;margin-right: 30px;">

 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="javascript:;"><i class="fa fa-paper-plane"></i> Создать заявку</a>
 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="javascript:;"><i class="fa fa-paper-plane"></i> Отправить по email</a>
 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="javascript:;"><i class="fa fa-file-excel-o"></i> Сохранить в Excel</a>


 <?php if ($_COOKIE['view']=='beret') {?>
 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('view'=>'print_beret','id'=>$_smarty_tpl->tpl_vars['user']->value->id,'page'=>'all'),$_smarty_tpl);?>
"><i class="fa fa-print"></i> Распечатать все</a>
 <?php }?>

 <?php if ($_COOKIE['view']=='ispol') {?>
 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('view'=>'print_interes','id'=>$_smarty_tpl->tpl_vars['user']->value->id,'page'=>'all'),$_smarty_tpl);?>
"><i class="fa fa-print"></i> Распечатать все</a>
 <?php }?>

 <?php if ($_COOKIE['view']=='spros') {?>
 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('view'=>'print_spros','id'=>$_smarty_tpl->tpl_vars['user']->value->id,'page'=>'all'),$_smarty_tpl);?>
"><i class="fa fa-print"></i> Распечатать все</a>
 <?php }?>

 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('view'=>'print_selected','id'=>$_smarty_tpl->tpl_vars['user']->value->id,'page'=>'all'),$_smarty_tpl);?>
"><i class="fa fa-print"></i> Распечатать выделенное</a>
 </div>

                            </div>

                            <!--*****************************************************************************************************************************************************************-->
                                   <!--Левый блок-->
                    <div class="main-left">
                     <span style="
    font-size: 31px;
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->name, ENT_QUOTES, 'UTF-8', true);?>
 <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->rukovoditeltel, ENT_QUOTES, 'UTF-8', true);?>
</span>
                    <div class="test-menu">

                        
                    </div>
                    <!-- Фильтры -->
                        <div class="cmenu" style="display:block;">
                        <div style="margin-bottom: 13px;">
                        <div class="b-inputmargin-bottom: 13px;">
    <input id="search-box" placeholder="Поиск..." style="padding: 5px;width: 100%;">
    </div>
    </div>

                        <ul>                      <li <?php if (!$_smarty_tpl->tpl_vars['filter']->value) {?>class="selectedfillter"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('brand_id'=>null,'category_id'=>null,'keyword'=>null,'page'=>null,'filter'=>null),$_smarty_tpl);?>
"><i class="fa fa-filter"></i> Все товары</a></li>
        <li <?php if ($_smarty_tpl->tpl_vars['filter']->value=='featured') {?>class="selectedfillter"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('keyword'=>null,'brand_id'=>null,'category_id'=>null,'page'=>null,'filter'=>'featured'),$_smarty_tpl);?>
"><i class="fa fa-filter"></i> Рекомендуемые</a></li>

        <li class="divider"></li></ul>
        <?php if (!function_exists('smarty_template_function_categories_tree')) {
    function smarty_template_function_categories_tree($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->smarty->template_functions['categories_tree']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?> <?php if ($_smarty_tpl->tpl_vars['categories']->value) {?>
                            <ul>
        <?php  $_smarty_tpl->tpl_vars['c1'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['c1']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['categories']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['c1']->key => $_smarty_tpl->tpl_vars['c1']->value) {
$_smarty_tpl->tpl_vars['c1']->_loop = true;
?> <?php if ($_smarty_tpl->tpl_vars['c1']->value->visible) {?>
                                <li id="m<?php echo $_smarty_tpl->tpl_vars['c1']->value->id;?>
">
                                <a <?php if ($_smarty_tpl->tpl_vars['category']->value->id==$_smarty_tpl->tpl_vars['c1']->value->id) {?>class="selected"<?php }?>" href="<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['c1']->value->id;?>
<?php $_tmp1=ob_get_clean();?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('keyword'=>null,'brand_id'=>null,'page'=>null,'category_id'=>$_tmp1),$_smarty_tpl);?>
">
                                <?php if ($_smarty_tpl->tpl_vars['category']->value->id==$_smarty_tpl->tpl_vars['c1']->value->id) {?><i class="fa fa-angle-right"></i><?php }?>
                                <?php echo $_smarty_tpl->tpl_vars['c1']->value->name;?>
</a>
                                <?php if (in_array($_smarty_tpl->tpl_vars['category']->value->id,$_smarty_tpl->tpl_vars['c1']->value->children)) {?>
                                <?php smarty_template_function_categories_tree($_smarty_tpl,array('categories'=>$_smarty_tpl->tpl_vars['c1']->value->subcategories));?>
 <?php }?></li>
                                <?php }?> <?php } ?></ul><?php }?> <?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;
foreach (Smarty::$global_tpl_vars as $key => $value) if(!isset($_smarty_tpl->tpl_vars[$key])) $_smarty_tpl->tpl_vars[$key] = $value;}}?>
 <?php smarty_template_function_categories_tree($_smarty_tpl,array('categories'=>$_smarty_tpl->tpl_vars['categories']->value));?>

                                </div>
                    </div>
                    <!--Правый блок-->
                    <div class="main-right">
                                                

<?php  $_smarty_tpl->tpl_vars['c'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['c']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ssubcat']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['c']->key => $_smarty_tpl->tpl_vars['c']->value) {
$_smarty_tpl->tpl_vars['c']->_loop = true;
?>

<span style="
  display: inline-block;
  width: 100%;
  background: linear-gradient(to bottom,#4EBA6F 0%,#3EA35D 100%);
  border-left: 1px solid #88c86d;
  border-right: 1px solid #88c86d;
  border-radius: 4px;
  font-size: 20px;
  padding: 5px 10px;
  color: white;
  box-sizing: border-box;
"><?php echo $_smarty_tpl->tpl_vars['c']->value->name;?>
</span>

<span style="
  width: 100%;
  display: inline-block;
  margin-bottom: 10px;
  padding-bottom: 10px;
  padding-top: 10px;
  box-sizing: border-box;
  background: whitesmoke;
">
<div class="user-price-cimage">
    <img src="<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
/<?php echo $_smarty_tpl->tpl_vars['config']->value->categories_images_dir;?>
<?php echo $_smarty_tpl->tpl_vars['c']->value->image;?>
" style="width: 200px";>
</div>

<table class="pure-table pure-table-bordered" style="width:auto;">
    <thead>
        <tr>
            <th>фото</th>
            <th>товар</th>
            <th>на складе</th>
            <th>арт</th>
            <th>закупка</th>
            <th style="width: 140px;">цена клиента</th>
            <th style="width: 140px;">цена утв.</th>
            <th style="width: 50px;">заказ</th>
             <th>заказ</th>
        </tr>
    </thead>
    <tbody>
    <?php  $_smarty_tpl->tpl_vars['product'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['product']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['c']->value->products; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['product']->key => $_smarty_tpl->tpl_vars['product']->value) {
$_smarty_tpl->tpl_vars['product']->_loop = true;
?>
        <tr>
            <td style="width: 50px;">
            <?php $_smarty_tpl->tpl_vars['image'] = new Smarty_variable($_smarty_tpl->tpl_vars['product']->value->firstvariant->image, null, 0);?>
                <div class="thumbbox35"><?php if ($_smarty_tpl->tpl_vars['image']->value) {?> <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'ProductAdmin','id'=>$_smarty_tpl->tpl_vars['product']->value->id,'return'=>$_SERVER['REQUEST_URI']),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['resize'][0][0]->resize_modifier(htmlspecialchars($_smarty_tpl->tpl_vars['image']->value->filename, ENT_QUOTES, 'UTF-8', true),50,50);?>
"/></a>
<?php } else { ?> <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'ProductAdmin','id'=>$_smarty_tpl->tpl_vars['product']->value->id,'return'=>$_SERVER['REQUEST_URI']),$_smarty_tpl);?>
"></a>
<?php }?></div>
            </td>
            <td style="width: 270px;"><a target="_blank" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'ProductAdmin','id'=>$_smarty_tpl->tpl_vars['product']->value->id,'return'=>$_SERVER['REQUEST_URI']),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['product']->value->name;?>
</a></td>
            <td><?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->stock;?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->sku;?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->zakupka;?>
 р.</td>
            <td>
                <div class="megarcell">
    <label><?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->kopt;?>
 р. | <?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->opt;?>
 р. | <?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->price;?>
 р.</label>
    <div id="<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
per" class="userp-table-prblock" onkeyup="z (this.id,<?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->zakupka;?>
)">
        <input type="text" style="text-align:right;" class="userp-table-input" id="u<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
" placeholder="<?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->cena_klienta->price;?>
">р. 
        <input type="text" style="text-align:right;" readonly class="userp-table-input" placeholder="<?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->cena_klienta->per;?>
">%</div> <i class="pointer fa fa-paper-plane" onclick="senduprice (this,<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
,<?php echo $_smarty_tpl->tpl_vars['user']->value->id;?>
,'cena_klienta')"><span class="last-update"></span></i>
        </div>
            </td>
            <td>
                <div class="megarcell"><label><?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->utverzhdennaja_cena->price;?>
 р. | <?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->utverzhdennaja_cena->per;?>
%</label>
                <div id="cc<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
" class="userp-table-prblock" onkeyup="summa_ot_procenta (this.id,<?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->zakupka;?>
)">
                <input type="text" style="text-align:right;" class="userp-table-input" readonly id="utv<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
" placeholder="<?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->utverzhdennaja_cena->price;?>
">р. 
                <input type="text" style="text-align:right;" class="userp-table-input" id="utvper<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
" placeholder="<?php echo $_smarty_tpl->tpl_vars['product']->value->firstvariant->utverzhdennaja_cena->per;?>
">%</div>
                <i class="pointer fa fa-paper-plane" onclick="sendutvprice (this,<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
,<?php echo $_smarty_tpl->tpl_vars['user']->value->id;?>
,'utverzhdennaja_cena')"></i>
                </div>
            </td>
            <td>
            <?php if ($_smarty_tpl->tpl_vars['product']->value->iorders) {?>

                  <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product']->value->iorders; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                  <ul style="  background-color: rgb(205, 255, 225);padding: 7px; margin-bottom: 5px;">
                  <li style="white-space: nowrap;margin-bottom: 5px;">Статус: <?php echo $_smarty_tpl->tpl_vars['item']->value->status;?>
</li>
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
                  <?php } ?>

                <?php } else { ?>
                <span>не заказано</span>
            <?php }?>
            </td>
            <td>
            <ul id="tobasket<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
" class="up-basket">
            <li><div class="b-input"><input placeholder="кол-во"/></div></li>
            <li><div class="b-input"><input  id="datepicker<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
" itemid="<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
" name="PrihodDate" placeholder="срок испол"/></div></li>
            <li><div class="b-input"><input placeholder="цена продажи"/></div></li>
            <li><div class="b-input"><input placeholder="комментарий"/></div></li>
            <li><a class="button button-rounded button-flat button-tiny" href="#" onclick="tobasket (this,<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
,'<?php echo $_smarty_tpl->tpl_vars['product']->value->name;?>
','z')">запрос цены</a></li>
            <li><a class="button button-rounded button-flat button-tiny" href="#" onclick="tobasket (this,<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
,'<?php echo $_smarty_tpl->tpl_vars['product']->value->name;?>
','new')">заказать</a></li>
            </ul>
            </td>
        </tr>
    <?php } ?>
    </tbody>
</table>

</span>
<?php } ?>
<!--*************************************************************************************************************************-->

                        <input id="session_id" type="hidden" value="<?php echo $_SESSION['id'];?>
">
                        <script src="design/js/products_united.js"></script>

         
        <script>

        //DatePicker
        $(function() {
    $('[name="PrihodDate"]').datepicker();
    $.datepicker.regional['ru'] = {
                closeText: 'Закрыть',
                prevText: '&#x3c;Пред',
                nextText: 'След&#x3e;',
                currentText: 'Сегодня',
                monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь',
                'Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
                monthNamesShort: ['Янв','Фев','Мар','Апр','Май','Июн',
                'Июл','Авг','Сен','Окт','Ноя','Дек'],
                dayNames: ['воскресенье','понедельник','вторник','среда','четверг','пятница','суббота'],
                dayNamesShort: ['вск','пнд','втр','срд','чтв','птн','сбт'],
                dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
                weekHeader: 'Не',
                dateFormat: 'yy-mm-dd',
                firstDay: 1,
                isRTL: false,
                showMonthAfterYear: false,
                yearSuffix: ''};
        $.datepicker.setDefaults($.datepicker.regional['ru']);
  });

    //end Datepicker

        $(document).ready(function(){


        });

            $(function() {

                // Раскраска строк
                function colorize() {
                    $("#list div.row:even").addClass('even');
                    $("#list div.row:odd").removeClass('even');
                }
                // Раскрасить строки сразу
                colorize();

                // Выделить все
                $("#check_all").click(function() {
                    $('#list input[type="checkbox"][name*="check"]').attr('checked', 1 - $('#list input[type="checkbox"][name*="check"]').attr('checked'));
                });

                // Удалить
                $("a.delete").click(function() {
                    $('#list input[type="checkbox"][name*="check"]').attr('checked', false);
                    $(this).closest(".row").find('input[type="checkbox"][name*="check"]').attr('checked', true);
                    $(this).closest("form#list").find('select[name="action"] option[value=delete]').attr('selected', true);
                    $(this).closest("form#list").submit();
                });

                // Подтверждение удаления
                //$("#list").submit(function() {
                    //if ($('select[name="action"]').val() == 'delete' && !confirm('Подтвердите удаление')) return false;
                //});
            });
        </script>

<script>
    $(function() {

        // Сортировка списка
        $("#list").sortable({
            items: ".row",
            tolerance: "pointer",
            handle: ".move_zone",
            scrollSensitivity: 40,
            opacity: 0.7,

            helper: function(event, ui) {
                if ($('input[type="checkbox"][name*="check"]:checked').size() < 1) return ui;
                var helper = $('<div/>');
                $('input[type="checkbox"][name*="check"]:checked').each(function() {
                    var item = $(this).closest('.row');
                    helper.height(helper.height() + item.innerHeight());
                    if (item[0] != ui[0]) {
                        helper.append(item.clone());
                        $(this).closest('.row').remove();
                    } else {
                        helper.append(ui.clone());
                        item.find('input[type="checkbox"][name*="check"]').attr('checked', false);
                    }
                });
                return helper;
            },
            start: function(event, ui) {
                if (ui.helper.children('.row').size() > 0) $('.ui-sortable-placeholder').height(ui.helper.height());
            },
            beforeStop: function(event, ui) {
                if (ui.helper.children('.row').size() > 0) {
                    ui.helper.children('.row').each(function() {
                        $(this).insertBefore(ui.item);
                    });
                    ui.item.remove();
                }
            },
            update: function(event, ui) {
                $("#list_form input[name*='check']").attr('checked', false);
                $("#list_form").ajaxSubmit(function() {
                    colorize();
                });
            }
        });


        // Перенос товара на другую страницу
        $("#action select[name=action]").change(function() {
            if ($(this).val() == 'move_to_page') $("span#move_to_page").show();
            else $("span#move_to_page").hide();
        });
        $("#pagination a.droppable").droppable({
            activeClass: "drop_active",
            hoverClass: "drop_hover",
            tolerance: "pointer",
            drop: function(event, ui) {
                $(ui.helper).find('input[type="checkbox"][name*="check"]').attr('checked', true);
                $(ui.draggable).closest("form").find('select[name="action"] option[value=move_to_page]').attr("selected", "selected");
                $(ui.draggable).closest("form").find('select[name=target_page] option[value=' + $(this).html() + ']').attr("selected", "selected");
                $(ui.draggable).closest("form").submit();
                return false;
            }
        });


        // Перенос товара в другую категорию
        $("#action select[name=action]").change(function() {
            if ($(this).val() == 'move_to_category') $("span#move_to_category").show();
            else $("span#move_to_category").hide();
        });
        $("#right_menu .droppable.category").droppable({
            activeClass: "drop_active",
            hoverClass: "drop_hover",
            tolerance: "pointer",
            drop: function(event, ui) {
                $(ui.helper).find('input[type="checkbox"][name*="check"]').attr('checked', true);
                $(ui.draggable).closest("form").find('select[name="action"] option[value=move_to_category]').attr("selected", "selected");
                $(ui.draggable).closest("form").find('select[name=target_category] option[value=' + $(this).attr('category_id') + ']').attr("selected", "selected");
                $(ui.draggable).closest("form").submit();
                return false;
            }
        });


        // Перенос товара в другой бренд
        $("#action select[name=action]").change(function() {
            if ($(this).val() == 'move_to_brand') $("span#move_to_brand").show();
            else $("span#move_to_brand").hide();
        });
        $("#right_menu .droppable.brand").droppable({
            activeClass: "drop_active",
            hoverClass: "drop_hover",
            tolerance: "pointer",
            drop: function(event, ui) {
                $(ui.helper).find('input[type="checkbox"][name*="check"]').attr('checked', true);
                $(ui.draggable).closest("form").find('select[name="action"] option[value=move_to_brand]').attr("selected", "selected");
                $(ui.draggable).closest("form").find('select[name=target_brand] option[value=' + $(this).attr('brand_id') + ']').attr("selected", "selected");
                $(ui.draggable).closest("form").submit();
                return false;
            }
        });


        // Если есть варианты, отображать ссылку на их разворачивание
        if ($("li.variant").size() > 0) $("#expand").show();


        // Раскраска строк
        function colorize() {
            $("#list div.row:even").addClass('even');
            $("#list div.row:odd").removeClass('even');
        }
        // Раскрасить строки сразу
        colorize();


        // Показать все варианты
        $("#expand_all").click(function() {
            $("a#expand_all").hide();
            $("a#roll_up_all").show();
            $("a.expand_variant").hide();
            $("a.roll_up_variant").show();
            $(".variants ul li.variant").fadeIn('fast');
            return false;
        });


        // Свернуть все варианты
        $("#roll_up_all").click(function() {
            $("a#roll_up_all").hide();
            $("a#expand_all").show();
            $("a.roll_up_variant").hide();
            $("a.expand_variant").show();
            $(".variants ul li.variant").fadeOut('fast');
            return false;
        });


        // Показать вариант
        $("a.expand_variant").click(function() {
            $(this).closest("div.cell").find("li.variant").fadeIn('fast');
            $(this).closest("div.cell").find("a.expand_variant").hide();
            $(this).closest("div.cell").find("a.roll_up_variant").show();
            return false;
        });

        // Свернуть вариант
        $("a.roll_up_variant").click(function() {
            $(this).closest("div.cell").find("li.variant").fadeOut('fast');
            $(this).closest("div.cell").find("a.roll_up_variant").hide();
            $(this).closest("div.cell").find("a.expand_variant").show();
            return false;
        });

        // Выделить все
        $("#check_all").click(function() {
            $('#list input[type="checkbox"][name*="check"]').attr('checked', $('#list input[type="checkbox"][name*="check"]:not(:checked)').length > 0);
        });

        // Удалить товар
        $("a.delete").click(function() {
            $('#list input[type="checkbox"][name*="check"]').attr('checked', false);
            $(this).closest("div.row").find('input[type="checkbox"][name*="check"]').attr('checked', true);
            $(this).closest("form").find('select[name="action"] option[value=delete]').attr('selected', true);
            $(this).closest("form").submit();
        });

        // Дублировать товар
        $("a.duplicate").click(function() {
            $('#list input[type="checkbox"][name*="check"]').attr('checked', false);
            $(this).closest("div.row").find('input[type="checkbox"][name*="check"]').attr('checked', true);
            $(this).closest("form").find('select[name="action"] option[value=duplicate]').attr('selected', true);
            $(this).closest("form").submit();
        });

        // Показать товар
        $("a.enable").click(function() {
            var icon = $(this);
            var line = icon.closest("div.row");
            var id = line.find('input[type="checkbox"][name*="check"]').val();
            var state = line.hasClass('invisible') ? 1 : 0;
            icon.addClass('loading_icon');
            $.ajax({
                type: 'POST',
                url: 'ajax/update_object.php',
                data: {
                    'object': 'product',
                    'id': id,
                    'values': {
                        'visible': state
                    },
                    'session_id': '<?php echo $_SESSION['id'];?>
'
                },
                success: function(data) {
                    icon.removeClass('loading_icon');
                    if (state) line.removeClass('invisible');
                    else line.addClass('invisible');
                },
                dataType: 'json'
            });
            return false;
        });

        // Сделать хитом
        $("a.featured").click(function() {
            var icon = $(this);
            var line = icon.closest("div.row");
            var id = line.find('input[type="checkbox"][name*="check"]').val();
            var state = line.hasClass('featured') ? 0 : 1;
            icon.addClass('loading_icon');
            $.ajax({
                type: 'POST',
                url: 'ajax/update_object.php',
                data: {
                    'object': 'product',
                    'id': id,
                    'values': {
                        'featured': state
                    },
                    'session_id': '<?php echo $_SESSION['id'];?>
'
                },
                success: function(data) {
                    icon.removeClass('loading_icon');
                    if (state) line.addClass('featured');
                    else line.removeClass('featured');
                },
                dataType: 'json'
            });
            return false;
        });


        // Сделать хитом
        $("a.featured1").click(function() {
            var inp = $('input[name=sitebg]');
            var icon = $(this);
            var line = icon.closest("div.row");
            var id = line.find('input[type="checkbox"][name*="check"]').val();
            var state = 5555;
            icon.addClass('loading_icon');

            $.ajax({
                type: 'POST',
                url: 'ajax/update_object.php',
                data: {
                    'object': 'user',
                    'id': id,
                    'values': {
                        'pricetype': '777'
                    },
                    'session_id': '<?php echo $_SESSION['id'];?>
'
                },
                success: function(msg) {
                    alert("Прибыли данные: " + msg);
                },
                dataType: 'json'
            });

            $('input[name=sitebg]').val('000000');
            return false;
        });


        // утвержденная цена
        $("#sendu").click(function() {
            var inp = $('input[name=sitebg]');
            var icon = $(this);
            var line = icon.closest("div.row");
            var id = line.find('input[type="checkbox"][name*="utv"]').val();
            var state = 5555;
            icon.addClass('loading_icon');
            alert(utv);
            $.ajax({
                type: 'POST',
                url: 'ajax/update_object.php',
                data: {
                    'object': 'user',
                    'id': id,
                    'values': {
                        'pricetype': '777'
                    },
                    'session_id': '<?php echo $_SESSION['id'];?>
'
                },
                success: function(msg) {
                    alert("Прибыли данные: " + msg);
                    icon.removeClass('loading_icon');
                },
                dataType: 'json'
            });

            $('input[name=sitebg]').val('000000');
            return false;

        });


        // Подтверждение удаления
        // Yandex.market
        $("a.yandex").click(function() {
            var icon = $(this);
            var line = icon.closest("div.row");
            var id = line.find('input[type="checkbox"][name*="check"]').val();
            var state = line.hasClass('yandex') ? 0 : 1;
            icon.addClass('loading_icon');
            $.ajax({
                type: 'POST',
                url: 'ajax/update_object.php',
                data: {
                    'object': 'product',
                    'id': id,
                    'values': {
                        'to_yandex': state
                    },
                    'session_id': '<?php echo $_SESSION['id'];?>
'
                },
                success: function(data) {
                    icon.removeClass('loading_icon');
                    if (state) line.addClass('yandex');
                    else line.removeClass('yandex');
                },
                dataType: 'json'
            });
            return false;
        });
        //$("form").submit(function() {
           // if ($('select[name="action"]').val() == 'delete' && !confirm('Подтвердите удаление')) return false;
       // });


        // Бесконечность на складе
        $("input[name*=stock]").focus(function() {
            if ($(this).val() == '∞') $(this).val('');
            return false;
        });
        $("input[name*=stock]").blur(function() {
            if ($(this).val() == '') $(this).val('∞');
        });
    });




    function sendcomment(el, id, x, y, z) { // определяем функцию и ее механизм выполнения

        $(el).addClass('loading_icon');

        var prodcomment = document.getElementById(id + "last-comments").value;

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                'values': {
                    'productid': x,
                    'userid': y,
                    'rowtype': z,
                    'prodcomment': prodcomment,
                },
                'session_id': '<?php echo $_SESSION['id'];?>
'
            },
            success: function(msg) {
                $(el).removeClass('loading_icon');

            },
            dataType: 'json'
        });

        //$('input[name=sitebg]').val('000000');
        return false;

    }




    function send_spec_cena(el, x, y, z) { // определяем функцию и ее механизм выполнения

        var input1 = "spec_cena" + x;
        var input2 = "spec_cena_colichestvo" + x;

        var spec_cena = document.getElementById(input1).value;
        var spec_cena_colichestvo = document.getElementById(input2).value;

        $(el).addClass('loading_icon');

        //alert(spec_cena);
        //alert(spec_cena_colichestvo);

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                'values': {
                    'productid': x,
                    'userid': y,
                    'rowtype': z,
                    'spec_cena': spec_cena,
                    'spec_cena_colichestvo': spec_cena_colichestvo,
                },
                'session_id': '<?php echo $_SESSION['id'];?>
'
            },
            success: function(msg) {
                $(el).removeClass('loading_icon');

            },
            dataType: 'json'
        });

        //$('input[name=sitebg]').val('000000');
        return false;
    }

    function send_akcija(el, x, y, z) { // определяем функцию и ее механизм выполнения

        var input1 = "akcija" + x;
        var input2 = "akcija_colichestvo" + x;

        var akcija = document.getElementById(input1).value;
        var akcija_colichestvo = document.getElementById(input2).value;

        $(el).addClass('loading_icon');

        //alert(akcija);
        //alert(akcija_colichestvo);

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                'values': {
                    'productid': x,
                    'userid': y,
                    'rowtype': z,
                    'akcija': akcija,
                    'akcija_colichestvo': akcija_colichestvo,
                },
                'session_id': '<?php echo $_SESSION['id'];?>
'
            },
            success: function(msg) {
                $(el).removeClass('loading_icon');

            },
            dataType: 'json'
        });

        //$('input[name=sitebg]').val('000000');
        return false;
    }
</script>
<script>
    function senduprice(el, x, y, z) { // определяем функцию и ее механизм выполнения

        var val = document.getElementById("u" + x).value;
        perinput = x + "per";

        var per = document.getElementById(perinput).getElementsByTagName('input')[1].value;

        $(el).addClass('loading_icon');

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                'values': {
                    'productid': x,
                    'userid': y,
                    'price': val,
                    'rowtype': z,
                    'per': per,
                },
                'session_id': '<?php echo $_SESSION['id'];?>
'
            },
            success: function(msg) {
                $(el).removeClass('loading_icon');

                var n = noty({
                    text: 'Отлично! Новая цена установлена!'
                });
            },
            dataType: 'json'
        });

        //$('input[name=sitebg]').val('000000');
        return false;
    }

    function sendutvprice(el, x, y, z) { // определяем функцию и ее механизм выполнения

        var val = document.getElementById("utv" + x).value;
        //alert(val);
        var per = document.getElementById("utvper" + x).value;
        //alert(per);

        $(el).addClass('loading_icon');

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                'values': {
                    'productid': x,
                    'userid': y,
                    'price': val,
                    'rowtype': z,
                    'per': per,
                },
                'session_id': '<?php echo $_SESSION['id'];?>
'
            },
            success: function(msg) {
                $(el).removeClass('loading_icon');
            },
            dataType: 'json'
        });

        //$('input[name=sitebg]').val('000000');
        return false;
    }
</script> 
<script>
    $.noty.defaults = {
        layout: 'top',
        theme: 'defaultTheme',
        type: 'alert',
        text: '', // can be html or string
        dismissQueue: true, // If you want to use queue feature set this true
        template: '<div class="noty_message"><span class="noty_text"></span><div class="noty_close"></div></div>',
        animation: {
            open: {
                height: 'toggle'
            },
            close: {
                height: 'toggle'
            },
            easing: 'swing',
            speed: 500 // opening & closing animation speed
        },
        timeout: 1000, // delay for closing event. Set false for sticky notifications
        force: false, // adds notification to the beginning of queue when set to true
        modal: false,
        maxVisible: 20, // you can set max visible notification for dismissQueue true option,
        killer: false, // for close all notifications before show
        closeWith: ['hover'], // ['click', 'button', 'hover']
        callback: {
            onShow: function() {},
            afterShow: function() {},
            onClose: function() {},
            afterClose: function() {}
        },
        buttons: false // an array of buttons
    };
</script>  
<script>
    var preEl;
    var orgBColor;
    var orgTColor;

    function HighLightTR(el, backColor, textColor) {
        if (typeof(preEl) != 'undefined') {
            preEl.style.backgroundColor = orgBColor;
            //$(reEl).removeClass('iconfa-unlock');
            try {
                ChangeTextColor(preEl, orgTColor);
                //$(el).removeClass('iconfa-unlock');
            } catch (e) {;
            }
        }
        //orgBColor = el.bgColor;
        orgBColor = el.style.backgroundColor;
        orgTColor = el.style.color;
        //el.bgColor = backColor;
        el.style.backgroundColor = backColor;

        try {
            ChangeTextColor(el, textColor);
        } catch (e) {;
        }
        preEl = el;

    }


    function ChangeTextColor(a_obj, a_color) {;
        for (i = 0; i < a_obj.cells.length; i++)
        a_obj.cells(i).style.color = a_color;
    }
</script>






                                         <script>
function status(el, productid, userid, rowtype) {

//проверяем состояние чекбокса

    switch (el.getElementsByTagName('input')[0].checked) {
  case true:
    //alert("cheked");
    addstatus("on")
    break;
  case false:
    //alert("not cheked");
    addstatus("off")
    break;
}

//отправляем ajax запрос в базу

    function addstatus(chbstatus) {

        $(el).addClass('loading_icon');

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                    'values': {
                    'productid': productid,
                        'userid': userid,
                        'rowtype': rowtype,
                        'status': chbstatus,
                },
                    'session_id': '<?php echo $_SESSION['id'];?>
'
            },
            success: function (msg) {
                $(el).removeClass('loading_icon');

            },
            dataType: 'json'
        });

        return false;
    }
}
</script>
 


<!--Корзина-->

<script>
    function tobasket(el, id, prodname, status) {

            var productid = id;
            var id = 'tobasket' + id;

            var amount = document.getElementById(id).getElementsByTagName('input')[0].value;

            var srokispol = document.getElementById(id).getElementsByTagName('input')[1].value;
            var tsenaprod = document.getElementById(id).getElementsByTagName('input')[2].value;
            var commentariy = document.getElementById(id).getElementsByTagName('input')[3].value;

            var author = '<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->login, ENT_QUOTES, 'UTF-8', true);?>
';

            var username = '<?php echo $_smarty_tpl->tpl_vars['user']->value->name;?>
';

            //ajax запрос

            $(el).addClass('loading_icon');

            $.ajax({
                    type: 'POST',
                    url: 'ajax/update_object.php',
                    data: {
                        'object': 'user',
                        'values': {
                            'productid': productid,
                            'userid': <?php echo $_smarty_tpl->tpl_vars['user']->value->id;?>
,
                                'rowtype': 'supplys',
                                'supplys_amount': amount,
                                'srokispol': srokispol,
                                'tsenaprod': tsenaprod,
                                'commentariy': commentariy,
                                'status': status,
                                'author': author,
                            },
                            'session_id': '<?php echo $_SESSION['id'];?>
'
                        },
                        success: function(msg) {

                            //$(el).removeClass('loading_icon');
                            //alert('Заказ добавлен!');

                            //отправляем уведомлялку
                            var str = '';
                            str += 'Новый заказ в отдел закупок:';
                            str += "\n\n";
                            str += 'Менеджер:' + author;
                            str += "\n";
                            str += 'Покупатель:' + username;
                            str += "\n";
                            str += 'Товар: ' + prodname;
                            str += "\n";
                            str += 'Количество: ' + amount;
                            str += "\n";
                            str += 'Срок исполнения: ' + srokispol;
                            str += "\n";
                            str += 'Цена продажи: ' + tsenaprod;
                            str += "\n";
                            str += 'Комментарий: ' + commentariy;
                            str += "\n\n";
                            str += 'Перейти: ' + 'http://rosstok.ru/simpla/index.php?module=SupplysAdmin&status=new&productid=' + productid;

                            telegramnoty(str);
                        },
                        dataType: 'json'
                    });

                return false;
            }

</script>



<script>
function telegramnoty(message) {
$.ajax({
                            url: "https://notifygram.org/api/v1",
                            type: "POST",
                            dataType: "json",
                            crossDomaint: true,
                            data: {
                                api_key: "eny3pr11s56xtau7n8p0zaa9z5h5pptd",
                                api_token: "12f6742306f4e884dac4717a1c37301a",
                                show_project_name: 0,
                                message: message
                            },
                            cache: false,
                            success: function() {
                                // Your code to handle success message sent
                                //alert ("Сообщение отправлено!");
                            },
                            error: function(error) {
                                // Your code to handle error
                                //alert (JSON.stringify(error));
                            }
                        });

return false;

}
</script>


<script>`
    function tozapros(el, id, prodname) {

            var productid = id;
            var id = 'tobasket' + id;

            var amount = document.getElementById(id).getElementsByTagName('input')[0].value;

            var x = document.getElementById(id).getElementsByTagName('select')[0].selectedIndex;
            var pr = document.getElementById(id).getElementsByTagName("option")[x].value;

            //ajax запрос

            $(el).addClass('loading_icon');

            $.ajax({
                    type: 'POST',
                    url: 'ajax/update_object.php',
                    data: {
                        'object': 'user',
                        'values': {
                            'productid': productid,
                            'userid': <?php echo $_smarty_tpl->tpl_vars['user']->value->id;?>
,
                                'rowtype': 'supplys',
                                'supplys_amount': amount,
                                'supplys_pr': pr,
                                'status': 'z',
                                'author': '<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->login, ENT_QUOTES, 'UTF-8', true);?>
',
                            },
                            'session_id': '<?php echo $_SESSION['id'];?>
'
                        },
                        success: function(msg) {

                            $(el).removeClass('loading_icon');
                            //alert('Заказ добавлен!');
                        },
                        dataType: 'json'
                    });

            var comment = "<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->login, ENT_QUOTES, 'UTF-8', true);?>
 запросил цену в отдел закупок: " + prodname + " (" + amount + "ед.)" + " для <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->name, ENT_QUOTES, 'UTF-8', true);?>
";

                    $.ajax({
                    type: 'POST',
                    url: 'ajax/update_object.php',
                    data: {
                        'object': 'user',
                        'values': {
                            'productid': productid,
                            'userid': <?php echo $_smarty_tpl->tpl_vars['user']->value->id;?>
,
                            'rowtype': 'prodcomment',
                            'prodcomment': comment,
                            'author': '<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->login, ENT_QUOTES, 'UTF-8', true);?>
',
                        },
                        'session_id': '<?php echo $_SESSION['id'];?>
'
                    },
                    success: function(msg) {
                      //alert('Комментарий добавлен!');
                      location.reload();

                    },
                    dataType: 'json'
                });

                return false;

            }

</script>


                            
                            <script>
                                function basketshow() {

                                    var e = document.getElementById("upbasket");
                                    if (e.style.display == 'block') e.style.display = 'none';
                                    else e.style.display = 'block';

                                }
                            </script> 
                            <script>
                                function morecomments(id) {

                                    var id2 = id + "last-comments-hidden"

                                    var e = document.getElementById(id2);
                                    if (e.style.display == 'block') e.style.display = 'none';
                                    else e.style.display = 'block';

                                }
                            </script>
                            
                            <script>
                                function z(id, zakupka) {
                                    var i0 = parseFloat(document.getElementById(id).getElementsByTagName('input')[0].value);
                                    var z = parseFloat(zakupka);
                                    var result = ((i0 - z) / z) * 100;
                                    document.getElementById(id).getElementsByTagName('input')[1].value = result;
                                }
                            </script>
                            <script>
                                function summa_ot_procenta(id, zakupka) {

                                    var i0 = parseFloat(document.getElementById(id).getElementsByTagName('input')[1].value);
                                    var z = parseFloat(zakupka);
                                    //var result = ((z / 100) * i0);
                                    var result = ((z / 100) * i0) + z;
                                    document.getElementById(id).getElementsByTagName('input')[0].value = result;
                                }
                            </script>
                            <script>
                                function s(id, zakupka) {
                                    var i0 = parseFloat(document.getElementById(id).getElementsByTagName('input')[0].value);
                                    //alert(i0);
                                    var z = parseFloat(zakupka);
                                    var result = ((i0 - z) / z) * 100;
                                    result = result.toPrecision(5)
                                    document.getElementById(id).getElementsByTagName('input')[1].value = result;
                                }
                            </script><?php }} ?>
