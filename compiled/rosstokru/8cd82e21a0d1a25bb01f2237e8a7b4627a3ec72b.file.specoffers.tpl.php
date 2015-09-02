<?php /* Smarty version Smarty-3.1.18, created on 2015-07-21 16:59:09
         compiled from "/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/specoffers.tpl" */ ?>
<?php /*%%SmartyHeaderCode:124714353455ae3c1e0439a9-12392243%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8cd82e21a0d1a25bb01f2237e8a7b4627a3ec72b' => 
    array (
      0 => '/home/v/vdmgrup/rostokgroup.ru/public_html/design/rosstokru/html/specoffers.tpl',
      1 => 1437487130,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '124714353455ae3c1e0439a9-12392243',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_55ae3c1e0a9e20_29095725',
  'variables' => 
  array (
    'rows' => 0,
    'row' => 0,
    'product' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55ae3c1e0a9e20_29095725')) {function content_55ae3c1e0a9e20_29095725($_smarty_tpl) {?>


<?php $_smarty_tpl->tpl_vars['canonical'] = new Smarty_variable("/spetspredlozheniya", null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['canonical'] = clone $_smarty_tpl->tpl_vars['canonical'];?>


<style type="text/css">

.special-offers {
  display:inline-block;
  width: 760px;
}

.special-offers h2{
    font-size: 2.3em;
    display: block;
    margin-bottom: 15px;
    margin-top: 15px;
}

.special-offers-panel {
    display:inline-block;
    margin-bottom:10px;
}

.special-offers-panel li{
  list-style:none;
  float:left;
}

.special-offers-row {
}
.special-offers table {
  width: 550px;
  float:left;
}

.special-offers table th{
  font-size:small;
}

.special-offers td tr{
}
.cell-inner{
  padding:10px;
  }
.special-offers table {
}
.big-image{
  width:200px;
  height:200px;
  float:left;
  }
</style>


<ul class="special-offers-panel">
  <li>Сохранить в формате EXCEL</li>
  <li>Печать</li>
</ul>

<div class="special-offers">

<?php if ($_smarty_tpl->tpl_vars['rows']->value) {?>
<?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['rows']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value) {
$_smarty_tpl->tpl_vars['row']->_loop = true;
?>

  <div class="special-offers-row">
    <h2><?php echo $_smarty_tpl->tpl_vars['row']->value->header;?>
</h2>

    <div class="big-image"> <img src="<?php echo $_smarty_tpl->tpl_vars['row']->value->headerimage;?>
"></div>
    <div class="datagrid" style="float: left;margin-top: 0px;">
    <table>
      <thead>
        <tr>
          <th>фото</th>
          <th>наименование</th>
          <th>количество</th>
          <th>цена</th>
          <th>заказ</th>
        </tr>
      </thead>
      <tbody>
        <?php  $_smarty_tpl->tpl_vars['product'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['product']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['row']->value->products; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['product']->key => $_smarty_tpl->tpl_vars['product']->value) {
$_smarty_tpl->tpl_vars['product']->_loop = true;
?>
        <tr>
          <td width="50" height="50" valign="middle"><img src="<?php echo $_smarty_tpl->tpl_vars['product']->value->image;?>
"></td>
          <td valign="middle" class="cell-inner"><?php echo $_smarty_tpl->tpl_vars['product']->value->name;?>
</td>
          <td valign="middle" class="cell-inner"><?php echo $_smarty_tpl->tpl_vars['product']->value->amount;?>
</td>
          <td valign="middle" class="cell-inner"><?php echo $_smarty_tpl->tpl_vars['product']->value->price;?>
</td>
          <td valign="middle" class="cell-inner">заказать</td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
    </div>
  </div>

<?php } ?>
<?php }?>

</div>

<?php echo $_smarty_tpl->getSubTemplate ('pagination.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php }} ?>
