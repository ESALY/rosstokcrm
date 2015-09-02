<?php /* Smarty version Smarty-3.1.18, created on 2014-09-15 10:07:56
         compiled from "simpla/design/html/export_users.tpl" */ ?>
<?php /*%%SmartyHeaderCode:909980535416823c05b594-55324212%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '63de06110f0d45dae88e0b7ae906e2989569aed9' => 
    array (
      0 => 'simpla/design/html/export_users.tpl',
      1 => 1400607624,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '909980535416823c05b594-55324212',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'config' => 0,
    'group_id' => 0,
    'keyword' => 0,
    'sort' => 0,
    'message_error' => 0,
    'export_files_dir' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5416823c319a43_42098875',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5416823c319a43_42098875')) {function content_5416823c319a43_42098875($_smarty_tpl) {?><?php $_smarty_tpl->_capture_stack[0][] = array('tabs', null, null); ob_start(); ?>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable('Экспорт покупателей', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>

<script src="<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
/simpla/design/js/piecon/piecon.js"></script>
<script>
var in_process=false;
var group_id='<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['group_id']->value, ENT_QUOTES, 'UTF-8', true);?>
';
var keyword='<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['keyword']->value, ENT_QUOTES, 'UTF-8', true);?>
';
var sort='<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['sort']->value, ENT_QUOTES, 'UTF-8', true);?>
';

	
var in_process=false;

$(function() {

	// On document load
	$('input#start').click(function() {
 
 		Piecon.setOptions({fallback: 'force'});
 		Piecon.setProgress(0);
    	$("#progressbar").progressbar({ value: 0 });
 		
    	$("#start").hide('fast');
		do_export();
    
	});
  
	function do_export(page)
	{
		page = typeof(page) != 'undefined' ? page : 1;

		$.ajax({
				url: "ajax/export_users.php",
				data: {page:page, group_id:group_id, keyword:keyword, sort:sort},
				dataType: 'json',
				success: function(data){
				
				if(data && !data.end)
				{
    				Piecon.setProgress(Math.round(100*data.page/data.totalpages));
					$("#progressbar").progressbar({ value: 100*data.page/data.totalpages });
					do_export(data.page*1+1);
				}
				else
				{	
    				Piecon.setProgress(100);
					$("#progressbar").hide('fast');
					window.location.href = 'files/export_users/users.csv';

				}
				},
				error:function(xhr, status, errorThrown) {	
				alert(errorThrown+'\n'+xhr.responseText);
			}  				
  				
		});
	
	}
});

</script>

<style>
	.ui-progressbar-value { background-image: url(design/images/progress.gif); background-position:left; border-color: #009ae2;}
	#progressbar{ clear: both; height:29px; }
	#result{ clear: both; width:100%;}
	#download{ display:none;  clear: both; }
</style>


<?php if ($_smarty_tpl->tpl_vars['message_error']->value) {?>
<!-- Системное сообщение -->
<div class="message message_error">
	<span class="text">
	<?php if ($_smarty_tpl->tpl_vars['message_error']->value=='no_permission') {?>Установите права на запись в папку <?php echo $_smarty_tpl->tpl_vars['export_files_dir']->value;?>

	<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['message_error']->value;?>
<?php }?>
	</span>
</div>
<!-- Системное сообщение (The End)-->
<?php }?>


<div>
	<h1>Экспорт покупателей</h1>
	<?php if ($_smarty_tpl->tpl_vars['message_error']->value!='no_permission') {?>
	<div id='progressbar'></div>
	<input class="button_green" id="start" type="button" name="" value="Экспортировать" />
	<?php }?>
</div>
 
<?php }} ?>
