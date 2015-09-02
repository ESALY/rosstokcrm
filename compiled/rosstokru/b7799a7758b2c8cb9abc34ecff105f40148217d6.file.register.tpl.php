<?php /* Smarty version Smarty-3.1.18, created on 2015-06-24 17:53:30
         compiled from "/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/register.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2038020196558ac46ace3617-28374063%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b7799a7758b2c8cb9abc34ecff105f40148217d6' => 
    array (
      0 => '/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/register.tpl',
      1 => 1428321007,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2038020196558ac46ace3617-28374063',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'error' => 0,
    'name' => 0,
    'email' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_558ac46ada9761_36807627',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_558ac46ada9761_36807627')) {function content_558ac46ada9761_36807627($_smarty_tpl) {?><?php if (!is_callable('smarty_function_math')) include '/home/v/vdmgrup/rostokgroup.ru/public_html/Smarty/libs/plugins/function.math.php';
?>


<?php $_smarty_tpl->tpl_vars['canonical'] = new Smarty_variable("/user/register", null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['canonical'] = clone $_smarty_tpl->tpl_vars['canonical'];?>

<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable("Регистрация", null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>

<h1>Регистрация</h1>

<?php if ($_smarty_tpl->tpl_vars['error']->value) {?>
<div class="message_error">
	<?php if ($_smarty_tpl->tpl_vars['error']->value=='empty_name') {?>Введите имя
	<?php } elseif ($_smarty_tpl->tpl_vars['error']->value=='empty_email') {?>Введите email
	<?php } elseif ($_smarty_tpl->tpl_vars['error']->value=='empty_password') {?>Введите пароль
	<?php } elseif ($_smarty_tpl->tpl_vars['error']->value=='user_exists') {?>Пользователь с таким email уже зарегистрирован
	<?php } elseif ($_smarty_tpl->tpl_vars['error']->value=='captcha') {?>Неверно введена капча
	<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
<?php }?>
</div>
<?php }?>

<form class="form register_form" method="post">
	<label>Имя</label>
	<input type="text" name="name" data-format=".+" data-notice="Введите имя" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['name']->value, ENT_QUOTES, 'UTF-8', true);?>
" maxlength="255" />
	
	<label>Email</label>
	<input type="text" name="email" data-format="email" data-notice="Введите email" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['email']->value, ENT_QUOTES, 'UTF-8', true);?>
" maxlength="255" />

    <label>Пароль</label>
    <input type="password" name="password" data-format=".+" data-notice="Введите пароль" value="" />

	<div class="captcha"><img src="captcha/image.php?<?php echo smarty_function_math(array('equation'=>'rand(10,10000)'),$_smarty_tpl);?>
"/></div> 
	<input class="input_captcha" id="comment_captcha" type="text" name="captcha_code" value="" data-format="\d\d\d\d" data-notice="Введите капчу"/>

	<input type="submit" class="button" name="register" value="Зарегистрироваться">

</form>
<?php }} ?>
