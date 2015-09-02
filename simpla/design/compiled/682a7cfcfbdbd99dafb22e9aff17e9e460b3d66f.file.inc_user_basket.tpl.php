<?php /* Smarty version Smarty-3.1.18, created on 2015-01-22 09:56:41
         compiled from "simpla/design/html/inc_user_basket.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8935760254376df81ad2d4-87560963%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '682a7cfcfbdbd99dafb22e9aff17e9e460b3d66f' => 
    array (
      0 => 'simpla/design/html/inc_user_basket.tpl',
      1 => 1421841274,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8935760254376df81ad2d4-87560963',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_54376df81ae6d8_14902684',
  'variables' => 
  array (
    'basket' => 0,
    'item' => 0,
    'image' => 0,
    'product' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54376df81ae6d8_14902684')) {function content_54376df81ae6d8_14902684($_smarty_tpl) {?><div class="user_price_basket">
<form method="post" id="order" enctype="multipart/form-data"  class="pure-form">
<div class="pure-g">
    <div class="pure-u-3-5">
    <?php if ($_smarty_tpl->tpl_vars['basket']->value) {?>

<fieldset>
        <input type=hidden name="session_id" value="<?php echo $_SESSION['id'];?>
">
        <input type="text" id="datepicker" name="dataotgruzki" placeholder="Дата отгрузки">
                <select id="state">
            <option>На оформление</option>
            <option>В отдел закупок</option>
            <option>Шаблоны зайявок</option>
        </select>

        <button type="submit" class="pure-button pure-button-primary right">Оформить</button>
    </fieldset>

        <table class="pure-table pure-table-bordered" style="width:100%">
<thead class="nowrap">
<th style="display:none;">#</th>
<th>фото</th>
<th>наименование</th>
<th>остаток</th>
<th>цена</th>
<th>количество в заявке</th>
<th>комментарий</th>
<th></th>
</thead>
<tbody>
    <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['basket']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
    <tr>

<td  style="display:none;"><select name="purchases[variant_id][<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
]"><option value="<?php echo $_smarty_tpl->tpl_vars['item']->value->vid;?>
" price="<?php echo $_smarty_tpl->tpl_vars['item']->value->price;?>
" amount="<?php echo $_smarty_tpl->tpl_vars['item']->value->amount;?>
">Пункт 1</option></select></td>
        <td style="text-align:center;width:50px;"><div class="thumbbox35"><?php if ($_smarty_tpl->tpl_vars['image']->value) {?> <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'ProductAdmin','id'=>$_smarty_tpl->tpl_vars['product']->value->id,'return'=>$_SERVER['REQUEST_URI']),$_smarty_tpl);?>
"><img src="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['resize'][0][0]->resize_modifier(htmlspecialchars($_smarty_tpl->tpl_vars['image']->value->filename, ENT_QUOTES, 'UTF-8', true),50,50);?>
"/></a>

<?php } else { ?> <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'ProductAdmin','id'=>$_smarty_tpl->tpl_vars['product']->value->id,'return'=>$_SERVER['REQUEST_URI']),$_smarty_tpl);?>
"><img src="http://placehold.it/50&amp;text=x"/></a>
<?php }?></div></td>
        <td class="nowrap"><?php echo $_smarty_tpl->tpl_vars['item']->value->name;?>
</td>
        <td style="text-align:center;"><?php echo $_smarty_tpl->tpl_vars['item']->value->amount;?>
</td>
        <td><input type="text" name="purchases[price][<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
]" value="<?php echo $_smarty_tpl->tpl_vars['item']->value->price;?>
" size="5"></td>
        <td><input type="text" name="purchases[amount][<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
]" value="<?php echo $_smarty_tpl->tpl_vars['item']->value->amount;?>
" size="5"></td>
        <td><textarea class="autosize-animated" style="overflow: hidden; word-wrap: break-word; resize: horizontal;width: 100%;"></textarea></td>
        <td>Удалить</td>
    </tr>

    <?php } ?>
</tbody>
</table>

<?php } else { ?>
<h2>Нет товаров в корзине</h2>
<?php }?>
    </div>

</div>
</form>
</div>


<script type="text/javascript">
    function submitform()
{
     document.getElementById("order").submit();
}
</script>

<script>
  $(function() {
    $( "#datepicker" ).datepicker();
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
                dateFormat: 'dd.mm.yy',
                firstDay: 1,
                isRTL: false,
                showMonthAfterYear: false,
                yearSuffix: ''};
        $.datepicker.setDefaults($.datepicker.regional['ru']);
  });
  </script>
<?php }} ?>
