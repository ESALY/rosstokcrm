<!DOCTYPE html>
{*
	Печать заказа
*}
{$wrapper='' scope=parent}
<html>
<head>
	<base href="{$config->root_url}/"/>
	<title></title>
	{* Метатеги *}
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="{$meta_description|escape}" />
    <style>
    </style>
</head>


<body>

 <div class="supplys-right-wrap">
    <div id="supplys-in"></div>
    {if $up_products_p}
        <h1>{$up_products_p->name}</h1>
        <table  class="pure-table pure-table-bordered">
    <thead>
        <tr>
            <th>Дата отправки</th>
            <th>Отвественный</th>
            <th>Покупатель</th>
            <th>Количество</th>
            <th>Дата прихода</th>
            <th>Внутр закупщик</th>
            <th>Статус</th>
        </tr>
    </thead>
    <tbody>
        {foreach $up_products_p_inbox as $item}
        <tr id="{$item->id}">
            <td>{$item->date}</td>
            <td>{$item->manager}</td>
            <td>{$item->user}</td>
            <td>{$item->supplys_amount}</td>
            {*<td><ul class="supplys-p-lastcomments">{foreach $up_products_comments as $item2}<li>{$item2->prodcomment}</li>{/foreach}</ul></td>*}
            <td>
            <input type="text" id="datepicker{$item->id}" itemid="{$item->id}" class="rus-forms-elastic-input" name="PrihodDate" placeholder="Дата отгрузки" value="{$item->prihod}">
            </td>
            <td><select id="product" class="rus-forms-elastic-input" onchange="change_isupplier(this,{$item->id})">
            <option value="">Нет</option>
            {foreach $managers as $m}
            <option value="{$m->login|escape}" {if $item->isupplier == $m->login}selected="selected"{/if}>{$m->login|escape}</option>
            {/foreach}
            </select></td>
            <td><select id="product" class="rus-forms-elastic-input" onchange="change_status(this,{$item->id})">
        <option value="all" selected="selected">Все</option>
<option value="new" {if $status=='new'}selected="selected"{/if}>Новые</option>
<option value="on" {if $status=='on'}selected="selected"{/if}>В заявке</option>
<option value="2" {if $status=='2'}selected="selected"{/if}>На утверждение</option>
<option value="3" {if $status=='3'}selected="selected"{/if}>Утверждено</option>
<option value="4" {if $status=='4'}selected="selected"{/if}>Заказано</option>
<option value="5" {if $status=='5'}selected="selected"{/if}>Отгружено у поставщика</option>
<option value="ok" {if $status=='ok'}selected="selected"{/if}>На складе</option>
<option value="7" {if $status=='7'}selected="selected"{/if}>Отгружено покупателю</option>
<option value="del" {if $status=='del'}selected="selected"{/if}>Удаленные</option>
        </select></td>
        </tr>
        {/foreach}</tbody>
        </table>
        <p>777</p>
        <h2>Предварительные заявки поставщикам</h2>
        <p>777</p>
        <h2>Утвержденные заявки</h2>
        <p>777</p>
    {/if}
    </div>

</body>
</html>





