<?php /* Smarty version Smarty-3.1.18, created on 2015-07-20 17:15:07
         compiled from "simpla/design/html/users.tpl" */ ?>
<?php /*%%SmartyHeaderCode:32464808540730b211ee59-92622305%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a3ae23904099efd352223d16f642cb5627b78cf0' => 
    array (
      0 => 'simpla/design/html/users.tpl',
      1 => 1436345204,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '32464808540730b211ee59-92622305',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_540730b22dacc9_14791708',
  'variables' => 
  array (
    'manager' => 0,
    'filter_groups' => 0,
    'group' => 0,
    'filter_citys' => 0,
    'c' => 0,
    'filter_managers' => 0,
    'keyword' => 0,
    'users_count' => 0,
    'json_users' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_540730b22dacc9_14791708')) {function content_540730b22dacc9_14791708($_smarty_tpl) {?>
<?php $_smarty_tpl->_capture_stack[0][] = array('tabs', null, null); ob_start(); ?>
	<li><a href="index.php?module=UsersAdmin">Покупатели</a></li>
	<li><a href="index.php?module=GroupsAdmin">Группы покупателей</a></li>

	<?php if (in_array('groups',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=GroupsAdmin">Группы</a></li><?php }?>
	<?php if (in_array('coupons',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=CouponsAdmin">Рассылки</a></li><?php }?>
	<?php if (in_array('coupons',$_smarty_tpl->tpl_vars['manager']->value->permissions)) {?><li><a href="index.php?module=CouponsAdmin">Купоны</a></li><?php }?>
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
    <div id="filters-block" class="users-left-filters-wrapper">

    <ul id='filters-block-category'>
	<h2>Категории</h2>
	<li><label><input type="radio" name="filter-category" value="" checked="checked"/>Все</label></li>
	<?php  $_smarty_tpl->tpl_vars['group'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['group']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['filter_groups']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['group']->key => $_smarty_tpl->tpl_vars['group']->value) {
$_smarty_tpl->tpl_vars['group']->_loop = true;
?>
	<li><label><input type="radio" name="filter-category" value="<?php echo $_smarty_tpl->tpl_vars['group']->value;?>
"/><?php echo $_smarty_tpl->tpl_vars['group']->value;?>
</label></li>
	<?php } ?>
	</ul>

	<ul id='filters-block-goroda'>
	<h2>Города</h2>
	<li><label><input type="radio" name="filter-goroda" value="" checked="checked"/>Все</label></li>
	<?php  $_smarty_tpl->tpl_vars['c'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['c']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['filter_citys']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['c']->key => $_smarty_tpl->tpl_vars['c']->value) {
$_smarty_tpl->tpl_vars['c']->_loop = true;
?>
	<li><label><input type="radio" name="filter-goroda" value="<?php echo $_smarty_tpl->tpl_vars['c']->value;?>
" /><?php echo $_smarty_tpl->tpl_vars['c']->value;?>
</label></li>
	<?php } ?>
	</ul>

	<ul id='filters-block-managers'><h2>Менеджеры</h2>
	<li><label><input type="radio" name="filter-managers" value="" checked="checked"/>Все</label></li>
	<?php  $_smarty_tpl->tpl_vars['manager'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['manager']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['filter_managers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['manager']->key => $_smarty_tpl->tpl_vars['manager']->value) {
$_smarty_tpl->tpl_vars['manager']->_loop = true;
?>
	<li><label><input type="radio" name="filter-managers" value="<?php echo $_smarty_tpl->tpl_vars['manager']->value;?>
" /><?php echo $_smarty_tpl->tpl_vars['manager']->value;?>
</label></li>
	<?php } ?>
	</ul>
    </div>
    </div>


    <div class="pure-u-1-2" id="content">
<?php if ($_smarty_tpl->tpl_vars['keyword']->value&&$_smarty_tpl->tpl_vars['users_count']->value>0) {?>
    <h1><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['plural'][0][0]->plural_modifier($_smarty_tpl->tpl_vars['users_count']->value,'Нашелся','Нашлось','Нашлись');?>
 <?php echo $_smarty_tpl->tpl_vars['users_count']->value;?>
 <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['plural'][0][0]->plural_modifier($_smarty_tpl->tpl_vars['users_count']->value,'покупатель','покупателей','покупателя');?>
 <a class="button button-rounded button-flat" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'UserAdmin'),$_smarty_tpl);?>
">Добавить</a></h1>
    <?php } elseif ($_smarty_tpl->tpl_vars['users_count']->value>0) {?>
    <h1><?php echo $_smarty_tpl->tpl_vars['users_count']->value;?>
 <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['plural'][0][0]->plural_modifier($_smarty_tpl->tpl_vars['users_count']->value,'покупатель','покупателей','покупателя');?>
 <a class="button button-rounded button-flat" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'UserAdmin'),$_smarty_tpl);?>
">Добавить</a></h1>
    <?php } else { ?>
    <h1>Нет покупателей <a class="button button-rounded button-flat" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'UserAdmin'),$_smarty_tpl);?>
">Добавить</a></h1>
    <?php }?>
<div class="modSearch">
    <form method="get">
    <input type="hidden" name="module" value="UsersAdmin">
        <input id="search-box" class="search" type="text" name="keyword" value="" placeholder="Поиск по покупателям">
        <input type="submit" value="">
    </form>
</div>

<div id='example' class='handsontable'></div>

	

<div id="users_ajax" class="users-ajax-table-wrapper"></div>

 </div>

 <div class="pure-u-1-4">
 <div class="users-right-wrapper">
 	

	

	<div id="user_ajax" class="user-ajax-table-wrapper"></div>

	
 </div>
</div>



<script>
$(function() {
	//событие при полной загрузке страницы
$(window).load(function () {
    // Run code
    show_users();
    corrent_user = '777';
});

//В этом коде применяется нестандартный способ обрабтки события с использованием jquery oon
$(document).on( 'click', '.user_show_history', function () {
    // Do click stuff here
    var userid = $(this).attr('id');
    //alert(userid);
    show_user(userid);

} );

//В этом коде применяется нестандартный способ обрабтки события с использованием jquery oon
$(document).on( 'click', '.user_show_notes', function () {
    // Do click stuff here
    var userid = $(this).attr('id');
    //alert(userid);
    show_user_notes(userid);

} );

//В этом коде применяется нестандартный способ обрабтки события с использованием jquery oon
$(document).on( 'click', '.user_send_note', function () {
    // Do click stuff here

    var string = document.getElementById('text_input_note').value;
    user_send_note(corrent_user_id, string);

} );


$("#filters-block :input").on("click", function () {

	var category = $("#filters-block-category :input:checked").val();
    var manager = $("#filters-block-managers :input:checked").val();
    var gorod = $("#filters-block-goroda :input:checked").val();

    //show_users(category, gorod, manager, keyword)
    show_users(category,gorod, manager,'');
});

//В этом коде применяется нестандартный способ обрабтки события с использованием jquery oon
$(document).on( 'click', '.doc_link', function () {
    // Do click stuff here
    var id = $(this).attr('id');
    get_user_doc(id);
} );

$('#search-box').keyup(function () {
    // Run code
    var keyword = document.getElementById('search-box').value;
    //show_users(category, gorod, manager, keyword)
    show_users('','', '',keyword);
});

function show_users(category, gorod, manager, keyword)
	{

	var keyword = document.getElementById('search-box').value;

	//Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/get_users.php',
        data: {
        	'category': category,
        	'manager': manager,
            'gorod': gorod,
            'keyword': keyword,
        },
        //если все удачно возвращаем message
        success: function (data) {
        	users_json_render(data);
        },

        dataType: 'json'
    });

    return false;
	}

function show_user(id)
	{

	//Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/get_user.php',
        data: {
        	'id': id,
        },
        //если все удачно возвращаем message
        success: function (data) {
        	user_json_render(data);
        	//alert	(data);
        },

        dataType: 'json'
    });

    return false;
	}

	function show_user_notes(id)
	{
		corrent_user_id = id;

	//Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/get_user_notes.php',
        data: {
        	'id': id,
        },
        //если все удачно возвращаем message
        success: function (data) {
        	user_notes_json_render(data);
        	//alert	(data);
        },

        dataType: 'json'
    });

    return false;
	}

	function user_send_note(userid, string) { // определяем функцию и ее механизм выполнения

		var rowtype = 'note';

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                'values': {
                    'userid': userid,
                    'rowtype': rowtype,
                    'note' : string,
                },
                'session_id': '<?php echo $_SESSION['id'];?>
'
            },
            success: function(data) {
            	show_user_notes(userid);
            },
            dataType: 'json'
        });

        return false;
    }

    	function get_user_doc(id)
	{

	//Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/get_user_doc.php',
        data: {
        	'id': id,
        },
        //если все удачно возвращаем message
        success: function (data) {
        	//user_notes_json_render(data);
        	show_user_doc(data);
        },

        dataType: 'json'
    });

    return false;
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//отображаем json данные в таблице
function users_json_render(items){

//var items = <?php echo $_smarty_tpl->tpl_vars['json_users']->value;?>
;

$table = "<table id = 'resultTable'  class='pure-table pure-table-horizontal'><thead><tr><th>#</th><th>Имя</th><th>Город</th><th>Ответственный</th><th>Руководитель тел.</th><th>Снаб. тел.</th><th></th><tr><thead><tbody><tr>";

for (var i = 0; i < items.length; i++) {

    $table += "<tr>";

    var it = items[i];

    var ii = i+1;

    $table += "<td>" + ii + "</td>";

    $table += "<td>" + "<a target='_blank' href='index.php?module=UserAdmin&id=" + items[i].id + "'>" + items[i].name + "</a>" + "</td>";

    $table += "<td>" + items[i].gorod + "</td>";

    $table += "<td>" + items[i].manager + "</td>";

    $table += "<td>" + items[i].rukovoditeltel + "</td>";

    $table += "<td>" + items[i].snabtel + "</td>";

    $table += "<td class='users_ajax-table-small-text'><button type='submit' id='" + items[i].id + "' class='pure-button pure-button user_show_history'><i class='fa fa-pencil'></i></button><button type='submit' id='" + items[i].id + "' class='pure-button pure-button user_show_notes'><i class='fa fa-comments-o'></i></button></td>";

    //alert(items[i].duration);
    $table += "</tr>";

}

$table += "</tbody></table>";

//$('#users_ajax').append($table);
$('#users_ajax').html($table);

}

//отображаем json данные в таблице
function user_json_render(items){

$table = "<div class='pure-form pure-form-aligned'>";
$table += "<fieldset>";

for (var i = 0; i < items.length; i++) {

    var it = items[i];

$table += "<legend><h1>Информация по " + "<a target='_blank' href='index.php?module=UserAdmin&id=" + items[i].id + "'>" + items[i].name + "</a>" + "</h1></legend>";

$table += "<div class='pure-control-group'>";
$table += "<label>Имя</label>";
$table += "<input type='text' id='name' value=" + items[i].name + ">";
$table += "</div>";

$table += "<div class='pure-control-group'>";
$table += "<label>Руководитель</label>";
$table += "<input type='text' id='rukovoditel' value=" + items[i].rukovoditel + ">";
$table += "</div>";

$table += "<div class='pure-control-group'>";
$table += "<label>Телефон</label>";
$table += "<input type='text' id='rukovoditeltel' value=" + items[i].rukovoditeltel + ">";
$table += "</div>";

$table += "<div class='pure-control-group'>";
$table += "<label>Снабженец</label>";
$table += "<input type='text' id='snab' value=" + items[i].snab + ">";
$table += "</div>";

$table += "<div class='pure-control-group'>";
$table += "<label>Телефон</label>";
$table += "<input type='text' id='snabtel' value=" + items[i].snabtel + ">";
$table += "</div>";

$table += "<div class='pure-control-group'>";
$table += "<label>Город</label>";
$table += "<input type='text' id='gorod' value=" + items[i].gorod + ">";
$table += "</div>";

$table += "<div class='pure-control-group'>";
$table += "<label>Улица, дом</label>";
$table += "<input type='text' id='adress' value=" + items[i].adress + ">";
$table += "</div>";

$table += "<div class='pure-control-group'>";
$table += "<label>Почта</label>";
$table += "<input type='text' id='email' value=" + items[i].email + ">";
$table += "</div>";

$table += "<div class='pure-control-group'>";
$table += "<label>Сайт</label>";
$table += "<input type='text' id='site' value=" + items[i].site + ">";
$table += "</div>";

$table += "<div class='pure-control-group'>";
$table += "<label>Менеджер</label>";
$table += "<input type='text' id='manager' value=" + items[i].manager + ">";
$table += "</div>";

$table += "<div class='pure-control-group'>";
$table += "<label>Комментарий</label>";
$table += "<input type='text' id='comment' value=" + items[i].comment + ">";
$table += "</div>";

$table += "<div class='pure-control-group' style='display:none;'>";
$table += "<label>Дата регистрации</label>";
$table += "<input id='' type='text' disabled='' value=" + items[i].created + ">";
$table += "</div>";

$table += "<div class='pure-control-group' style='display:none;>";
$table += "<label>Последний IP</label>";
$table += "<input id='' type='text' disabled='' value=" + items[i].last_ip + ">";
$table += "</div>";

$table += "<div class='pure-control-group' style='display:none;>";
$table += "<label>User id</label>";
$table += "<input id='id' type='text' disabled='' value=" + items[i].id + ">";
$table += "</div>";

$table += "<div class='pure-control-group' style='display:none;>";
$table += "<label>Session id</label>";
$table += "<input id='session_id' type='text' disabled='' value=" + items[i].manager + ">";
$table += "</div>";

//$table += "<div class='button button-rounded button-flat-action button-large' onclick='updateuserinfo()'><span id='btnel'>Сохранить</span><i id='statusicon' class='fa fa-paper-plane'></i></div>";

    //alert(items[i].duration);

}

$table += "</fieldset>";
$table += "</div>";

//$('#users_ajax').append($table);
$('#user_ajax').html($table);


}

//отображаем json данные в таблице
function user_notes_json_render(items){

$table  = "<h1>Заметки по покупателю</h1>";
$table += "<div class='users-compose-note-wrap'>";
$table += "<div class='users-compose-note'>";
$table += "<textarea id='text_input_note' class='autosize-animated'></textarea>";
$table += "<button type='submit' id='" + corrent_user_id + "' class='pure-button pure-button user_send_note'><i class='fa fa-pencil'></i></button>"
$table += "</div>"

$table += "<div class='pure-form pure-form-aligned'>";

for (var i = 0; i < items.length; i++) {

    var it = items[i];

$table += "<div class='users-note'>";

$table += items[i].note;

$table += "<span class='users-note-date'>";

$table += items[i].date;

$table += "</span>";

$table += "</div>";

}

$table += "</div>";
$table += "</div>";

//$('#users_ajax').append($table);
$('#user_ajax').html($table);

}

//отображаем json данные в таблице
function show_user_doc(items){

$table = "";

for (var i = 0; i < items.length; i++) {

    var it = items[i];

$table += "<h1>";
$table += items[i].name;
$table += "</h1>";
$table += "<div id='example' class='handsontable'></div>"
$table += "<div class='users-note'>";
$table += items[i].content;
$table += "</div>";

}

$table += "</div>";

//$('#users_ajax').append($table);
$('#resultTable').html($table);

$doc = items[0].content;

}

$(document).live(function () {

  doc = '';

  $('#example').handsontable({
    data: doc,
    minSpareRows: 1,
    colHeaders: true,
    contextMenu: true
  });

});


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// Раскраска строк
	function colorize()
	{
		$("#list div.row:even").addClass('even');
		$("#list div.row:odd").removeClass('even');
	}
	// Раскрасить строки сразу
	colorize();

	// Выделить все
	$("#check_all").click(function() {
		$('#list input[type="radio" name="filter-"][name*="check"]').attr('checked', 1-$('#list input[type="radio" name="filter-"][name*="check"]').attr('checked'));
	});

	// Удалить
	$("a.delete").click(function() {
		$('#list input[type="radio" name="filter-"][name*="check"]').attr('checked', false);
		$(this).closest(".row").find('input[type="radio" name="filter-"][name*="check"]').attr('checked', true);
		$(this).closest("form").find('select[name="action"] option[value=delete]').attr('selected', true);
		$(this).closest("form").submit();
	});

	// Скрыт/Видим
	$("a.enable").click(function() {
		var icon        = $(this);
		var line        = icon.closest(".row");
		var id          = line.find('input[type="radio" name="filter-"][name*="check"]').val();
		var state       = line.hasClass('invisible')?1:0;
		icon.addClass('loading_icon');
		$.ajax({
			type: 'POST',
			url: 'ajax/update_object.php',
			data: {'object': 'user', 'id': id, 'values': {'enabled': state}, 'session_id': '<?php echo $_SESSION['id'];?>
'},
			success: function(data){
				icon.removeClass('loading_icon');
				if(state)
					line.removeClass('invisible');
				else
					line.addClass('invisible');
			},
			dataType: 'json'
		});
		return false;
	});

	// Подтверждение удаления
	$("form").submit(function() {
		if($('#list input[type="radio" name="filter-"][name*="check"]:checked').length>0)
			if($('select[name="action"]').val()=='delete' && !confirm('Подтвердите удаление'))
				return false;
	});
});

</script>

<?php }} ?>
