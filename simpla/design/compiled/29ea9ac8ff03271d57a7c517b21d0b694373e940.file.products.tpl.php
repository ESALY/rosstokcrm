<?php /* Smarty version Smarty-3.1.18, created on 2015-07-21 08:46:56
         compiled from "simpla/design/html/products.tpl" */ ?>
<?php /*%%SmartyHeaderCode:10297822885406d4bb77e856-47913717%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '29ea9ac8ff03271d57a7c517b21d0b694373e940' => 
    array (
      0 => 'simpla/design/html/products.tpl',
      1 => 1436345185,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10297822885406d4bb77e856-47913717',
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
    'categories_tree' => 
    array (
      'parameter' => 
      array (
      ),
      'compiled' => '',
    ),
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5406d4bbb29db9_84751981',
  'variables' => 
  array (
    'm' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5406d4bbb29db9_84751981')) {function content_5406d4bbb29db9_84751981($_smarty_tpl) {?>

<span style="
    margin: auto;
    display: inline-block;
    width: 100%;
    text-align: center;
    font-size: 45px;
    margin-top: calc(30vh);
">Рабочий стол <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->login, ENT_QUOTES, 'UTF-8', true);?>
</span>


<input id="session_id" type="hidden" value="<?php echo $_SESSION['id'];?>
">
<script src="design/js/products_united.js"></script>

<?php }} ?>
