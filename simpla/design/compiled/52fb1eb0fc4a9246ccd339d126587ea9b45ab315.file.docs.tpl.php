<?php /* Smarty version Smarty-3.1.18, created on 2015-07-20 17:15:25
         compiled from "simpla/design/html/docs.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1086750810544f623f1ebdb7-93101211%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '52fb1eb0fc4a9246ccd339d126587ea9b45ab315' => 
    array (
      0 => 'simpla/design/html/docs.tpl',
      1 => 1436345137,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1086750810544f623f1ebdb7-93101211',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_544f623f327019_91436244',
  'variables' => 
  array (
    'docs' => 0,
    'd' => 0,
    'doc' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_544f623f327019_91436244')) {function content_544f623f327019_91436244($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/home/v/vdmgrup/rostokgroup.ru/public_html/Smarty/libs/plugins/modifier.date_format.php';
?>
<?php $_smarty_tpl->_capture_stack[0][] = array('tabs', null, null); ob_start(); ?>
	<li><a id='new' href="#">Добавить новую таблицу</a></li>
	<li><a id='save' href="#">Сохранить</a></li>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>


<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable('Покупатели', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>

<div class="pure-g">
    <div class="pure-u-1-6 b-left-side">
    <div id="filters-block" class="docs-left">
    <ul>
	<h2>Доступные мне</h2>
	<?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['d']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['docs']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value) {
$_smarty_tpl->tpl_vars['d']->_loop = true;
?>
	<li>
	<a class="" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'DocsAdmin','doc_id'=>$_smarty_tpl->tpl_vars['d']->value->id),$_smarty_tpl);?>
"> <?php echo $_smarty_tpl->tpl_vars['d']->value->name;?>
</a>
	<span class='docs-link-under'><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['d']->value->date,"%d %m %Y",'',"rus");?>
</span>
	</li>

	<?php } ?>
	</ul>

	

    </div>
    </div>

    <div class="pure-u-4-5" id="content">
    <input id="docs-name-input" class="docs-name-input" type="text" name="keyword" value="<?php echo $_smarty_tpl->tpl_vars['doc']->value->name;?>
" placeholder="Введите название таблицы">
<div id='example' class='handsontable'></div>


<script>

$(document).ready(function () {

  doc_id = <?php echo $_smarty_tpl->tpl_vars['doc']->value->id;?>
;

  var data = <?php echo $_smarty_tpl->tpl_vars['doc']->value->content;?>
;

  $('#example').handsontable({
    data: data,
    minSpareRows: 1,
    colHeaders: true,
    contextMenu: true
  });

});

var onlyExactMatch = function (queryStr, value) {
  return queryStr.toString() === value.toString();
};

$('#new').on('click', function (event) {
	//var json = $('#example').handsontable('getData');
	//update_doc(doc_id, json);
	new_doc();
});

$('#save').on('click', function (event) {
	var json = $('#example').handsontable('getData');
	update_doc(doc_id, json);
});

function new_doc() {

    	var name = document.getElementById('docs-name-input').value;

    	var json_obj = [["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],["","","","","","",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]];

    	var content = JSON.stringify(json_obj);

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'doc_new',
                'id': doc_id,
                    'values': {
                    	'name': 'Новая таблица',
                        'content': content,
                },
                    'session_id': '<?php echo $_SESSION['id'];?>
'
            },
            success: function (msg) {
            	//alert	(msg);
            	location.reload();
            },
            dataType: 'json'
        });

        return false;
    }

    function update_doc(doc_id, json_obj) {

    	var name = document.getElementById('docs-name-input').value;
    	var content = JSON.stringify(json_obj);

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'doc',
                'id': doc_id,
                    'values': {
                    	'name': name,
                        'content': content,
                },
                    'session_id': '<?php echo $_SESSION['id'];?>
'
            },
            success: function (msg) {
            	//alert	(msg);
            	location.reload();
            },
            dataType: 'json'
        });

        return false;
    }


</script>

<?php }} ?>
