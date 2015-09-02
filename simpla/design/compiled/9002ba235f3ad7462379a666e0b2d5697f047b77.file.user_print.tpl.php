<?php /* Smarty version Smarty-3.1.18, created on 2014-11-18 14:12:44
         compiled from "simpla/design/html/user_print.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11667765335434dabbeb8d50-28765232%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9002ba235f3ad7462379a666e0b2d5697f047b77' => 
    array (
      0 => 'simpla/design/html/user_print.tpl',
      1 => 1415364346,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11667765335434dabbeb8d50-28765232',
  'function' => 
  array (
    'upriceberet' => 
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
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5434dabc03c987_79759683',
  'variables' => 
  array (
    'config' => 0,
    'user' => 0,
    'meta_description' => 0,
    'product' => 0,
    'utverzhdennaja_c' => 0,
    'products' => 0,
    'item' => 0,
    'image' => 0,
    'v' => 0,
  ),
  'has_nocache_code' => 0,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5434dabc03c987_79759683')) {function content_5434dabc03c987_79759683($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/home/v/vdmgrup/rostokgroup.ru/public_html/Smarty/libs/plugins/modifier.date_format.php';
?><!DOCTYPE html>

<?php $_smarty_tpl->tpl_vars['wrapper'] = new Smarty_variable('', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['wrapper'] = clone $_smarty_tpl->tpl_vars['wrapper'];?>
<html>
<head>
	<base href="<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
/"/>
	<title>Прайс лист <?php echo smarty_modifier_date_format(time(),"%Y/%m/%d");?>
 (<?php echo $_smarty_tpl->tpl_vars['user']->value->name;?>
)</title>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['meta_description']->value, ENT_QUOTES, 'UTF-8', true);?>
" />
    <style>
    body {
        width: 1000px;
        height: 1414px;
        /* to centre page on screen*/
        margin-left: auto;
        margin-right: auto;
        //border: 1px solid black;

		font-family: Trebuchet MS, times, arial, sans-serif;
		font-size: 12pt;
		color: black;
		background-color: white;
    }


    .header{
        display:    block;
        margin-bottom: 30px;
        width: 100%;
        height: 65px;
    }

    .header .left{
        float:  left;
    }
    .header .right{
        float: right;
        text-align: right;
        font-size: 16px;
    }

    h1{
    text-align: center;
    }

  table.gridtable {
    font-family: verdana,arial,sans-serif;
    font-size:11px;
    color:#333333;
    border-width: 1px;
    border-color: #666666;
    border-collapse: collapse;
    width: 100%;
}
table.gridtable th {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #666666;
    background-color: #dedede;
}
table.gridtable td {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #666666;
    background-color: #ffffff;
    font-size: 14px;
}

.footer{
    text-align: center;
height: 50px;
margin-top: 20px;
width: 100%;
display: inline-block;

}

    </style>
</head>


<?php if (!function_exists('smarty_template_function_utverzhdennaja_cena')) {
    function smarty_template_function_utverzhdennaja_cena($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->smarty->template_functions['utverzhdennaja_cena']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
<?php  $_smarty_tpl->tpl_vars['utverzhdennaja_c'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['utverzhdennaja_c']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product']->value->utverzhdennaja_cena; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['utverzhdennaja_c']->index=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['utverzhdennaja_c']->key => $_smarty_tpl->tpl_vars['utverzhdennaja_c']->value) {
$_smarty_tpl->tpl_vars['utverzhdennaja_c']->_loop = true;
 $_smarty_tpl->tpl_vars['utverzhdennaja_c']->index++;
 $_smarty_tpl->tpl_vars['utverzhdennaja_c']->first = $_smarty_tpl->tpl_vars['utverzhdennaja_c']->index === 0;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['foo']['first'] = $_smarty_tpl->tpl_vars['utverzhdennaja_c']->first;
?>
<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['foo']['first']) {?>
<?php echo $_smarty_tpl->tpl_vars['utverzhdennaja_c']->value->price;?>

<?php }?>
<?php } ?> <?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;
foreach (Smarty::$global_tpl_vars as $key => $value) if(!isset($_smarty_tpl->tpl_vars[$key])) $_smarty_tpl->tpl_vars[$key] = $value;}}?>


<body _onload="window.print();">
<div class="header">
    <div class="left"><div class="logo"><img src="http://rostokgroup.ru/design/vdmgrup_new/img/logo-main.png"></div></div>
    <div class="right">
    Tel/Fax +7 (495) 134-07-27
    <br>
    Mobile +7 (927) 373-44-44
    <?php if ($_smarty_tpl->tpl_vars['user']->value->manager) {?>
    <br>
    Ваш персональный менеджер <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->manager, ENT_QUOTES, 'UTF-8', true);?>

    <?php }?>
    <br>
    www.rostokgroup.ru
    <br>
    info@rostokgroup.ru
    </div>
</div>
<h1>Прайс лист <?php echo smarty_modifier_date_format(time(),"%Y/%m/%d");?>
 (<?php echo $_smarty_tpl->tpl_vars['user']->value->name;?>
)</h1>
                            <?php if (!function_exists('smarty_template_function_upriceberet')) {
    function smarty_template_function_upriceberet($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->smarty->template_functions['upriceberet']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?>
                            <table class="gridtable">
                                <thead>
                                    <tr>
                                        <th>Наименование</th>
                                        <th>Арт.</th>
                                        <th>Цена</th>
                                    </tr>
                                </thead>
                                <tbody>

                                <?php  $_smarty_tpl->tpl_vars['product'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['product']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['products']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['product']->key => $_smarty_tpl->tpl_vars['product']->value) {
$_smarty_tpl->tpl_vars['product']->_loop = true;
?>
                                   <?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product']->value->variants; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
?>
                                      <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product']->value->ispolstatus; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['item']->index=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['item']->index++;
 $_smarty_tpl->tpl_vars['item']->first = $_smarty_tpl->tpl_vars['item']->index === 0;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['foo']['first'] = $_smarty_tpl->tpl_vars['item']->first;
?>
                                        <?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['foo']['first']) {?>
                                        <?php if ($_smarty_tpl->tpl_vars['item']->value->status=="on") {?>
                                    <tr>
                                       <td>
                                       <div class="img-wrapper" style="width:60px;height:60px;text-align:center;float:left;margin-right:10px;">
                                       <img src="<?php $_smarty_tpl->tpl_vars['image'] = new Smarty_variable($_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['first'][0][0]->first_modifier($_smarty_tpl->tpl_vars['product']->value->images), null, 0);?><?php if ($_smarty_tpl->tpl_vars['image']->value) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['resize'][0][0]->resize_modifier(htmlspecialchars($_smarty_tpl->tpl_vars['image']->value->filename, ENT_QUOTES, 'UTF-8', true),60,60);?>

                                       <?php } else { ?>http://placehold.it/60&amp;text=no photo
                                       <?php }?>"/>
                                       </div>
                                       <?php echo $_smarty_tpl->tpl_vars['product']->value->name;?>
</td>
                                       <td style="text-align: center;"><?php echo $_smarty_tpl->tpl_vars['v']->value->sku;?>
</td>
                                       <td style="text-align: center;"><?php smarty_template_function_utverzhdennaja_cena($_smarty_tpl,array());?>
 р.</td>
                                    </tr>
                                    <?php }?>
                                    <?php }?>
                                    <?php } ?>
                                    <?php } ?>
                                    <?php } ?>

                                    </tbody>
                            </table>
                        <?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;
foreach (Smarty::$global_tpl_vars as $key => $value) if(!isset($_smarty_tpl->tpl_vars[$key])) $_smarty_tpl->tpl_vars[$key] = $value;}}?>


                        <?php smarty_template_function_upriceberet($_smarty_tpl,array());?>

                        <div class="footer">Компания «РОСТОК ГРУПП» 2014</div>

</body>
</html>





<?php }} ?>
