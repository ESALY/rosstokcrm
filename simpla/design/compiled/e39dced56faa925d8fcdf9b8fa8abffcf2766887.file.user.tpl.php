<?php /* Smarty version Smarty-3.1.18, created on 2015-07-20 17:15:37
         compiled from "simpla/design/html/user.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3926689575407415c9d4376-98165383%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e39dced56faa925d8fcdf9b8fa8abffcf2766887' => 
    array (
      0 => 'simpla/design/html/user.tpl',
      1 => 1436345196,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3926689575407415c9d4376-98165383',
  'function' => 
  array (
    'categories_tree' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'category_select' => 
    array (
      'parameter' => 
      array (
        'level' => 0,
      ),
      'compiled' => '',
    ),
    'menu' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'menu0' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'menu1' => 
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
    'utverzhdennaja_cena' => 
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
    'spec_cenaf' => 
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
    'beretstatus' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'ispolzuetstatus' => 
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
    'ispolstatus' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
    'uprice' => 
    array (
      'parameter' => 
      array (
        'fillter' => 'beret',
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
    'upricevse' => 
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
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5407415caed651_19036003',
  'variables' => 
  array (
    'user' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5407415caed651_19036003')) {function content_5407415caed651_19036003($_smarty_tpl) {?>


<?php if ($_smarty_tpl->tpl_vars['user']->value->id) {?>

<div class="user-wrapper">
        <!-- Основная форма (The End) -->
        <?php } else { ?>
<?php echo $_smarty_tpl->getSubTemplate ('inc_user_new.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>



<?php }?>
<?php echo $_smarty_tpl->getSubTemplate ('inc_user_price.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>

<script src="design/js/user_united.js"></script><?php }} ?>
