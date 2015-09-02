{* Вкладки *}
{capture name=tabs}
	<li><a id='new' href="#">Добавить новую таблицу</a></li>
	<li><a id='save' href="#">Сохранить</a></li>
{/capture}

{* Title *}
{$meta_title='Покупатели' scope=parent}

<div class="pure-g">
    <div class="pure-u-1-6 b-left-side">
    <div id="filters-block" class="docs-left">
    <ul>
	<h2>Доступные мне</h2>
	{foreach $docs as $d}
	<li>
	<a class="" href="{url module=DocsAdmin doc_id=$d->id}"> {$d->name}</a>
	<span class='docs-link-under'>{$d->date|date_format:"%d %m %Y":"":"rus"}</span>
	</li>

	{/foreach}
	</ul>

	{*<ul>
	<h3>Доступные мне</h3>
	<li><label id="test">Test 1</label></li>
	</ul>*}

    </div>
    </div>

    <div class="pure-u-4-5" id="content">
    <input id="docs-name-input" class="docs-name-input" type="text" name="keyword" value="{$doc->name}" placeholder="Введите название таблицы">
<div id='example' class='handsontable'></div>

{literal}
<script>

$(document).ready(function () {

  doc_id = {/literal}{$doc->id}{literal};

  var data = {/literal}{$doc->content}{literal};

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
                    'session_id': '{/literal}{$smarty.session.id}{literal}'
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
                    'session_id': '{/literal}{$smarty.session.id}{literal}'
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
{/literal}
