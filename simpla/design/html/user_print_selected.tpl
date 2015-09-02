<!DOCTYPE html>
{*
	Печать заказа
*}
{$wrapper='' scope=parent}
<html>
<head>
	<base href="{$config->root_url}/"/>
	<title>Прайс лист {$smarty.now|date_format:"%Y/%m/%d"} ({$user->name})</title>
	{* Метатеги *}
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="{$meta_description|escape}" />
    <style>
    body {
        width: 1000px;
        height: 1414px;
        /* to centre page on screen*/
        margin-left: auto;
        margin-right: auto;
        //border: 1px solid black;

		font-family: Trebuchet MS, times, arial, sans-serif;
		font-size: 12pt;
		color: black;
		background-color: white;
    }


    .header{
        display:    block;
        margin-bottom: 30px;
        width: 100%;
        height: 65px;
    }

    .header .left{
        float:  left;
    }
    .header .right{
        float: right;
        text-align: right;
        font-size: 16px;
    }

    h1{
    text-align: center;
    }

  table.gridtable {
    font-family: verdana,arial,sans-serif;
    font-size:11px;
    color:#333333;
    border-width: 1px;
    border-color: #666666;
    border-collapse: collapse;
    width: 100%;
}
table.gridtable th {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #666666;
    background-color: #dedede;
}
table.gridtable td {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #666666;
    background-color: #ffffff;
    font-size: 14px;
}

.footer{
    text-align: center;
height: 50px;
margin-top: 20px;
width: 100%;
display: inline-block;

}

    </style>
</head>

{*Функция вывода цены клиента*}
{function name=utverzhdennaja_cena}
{foreach $product->utverzhdennaja_cena as $utverzhdennaja_c name=foo}
{if $smarty.foreach.foo.first}
{$utverzhdennaja_c->price}
{/if}{*if $smarty.foreach.foo.first*}
{/foreach} {/function}

<body _onload="window.print();">
<div class="header">
    <div class="left"><div class="logo"><img src="http://rostokgroup.ru/design/vdmgrup_new/img/logo-main.png"></div></div>
    <div class="right">
    Tel/Fax +7 (495) 134-07-27
    <br>
    Mobile +7 (927) 373-44-44
    {if $user->manager}
    <br>
    Ваш персональный менеджер {$user->manager|escape}
    {/if}
    <br>
    www.rostokgroup.ru
    <br>
    info@rostokgroup.ru
    </div>
</div>
<h1>Прайс лист {$smarty.now|date_format:"%Y/%m/%d"} ({$user->name})</h1>
                            {function name=upriceberet}
                            <table class="gridtable">
                                <thead>
                                    <tr>
                                        <th>Наименование</th>
                                        <th>Арт.</th>
                                        <th>Цена</th>
                                    </tr>
                                </thead>
                                <tbody>

                                {foreach $products as $product}
                                   {foreach $product->variants as $v}
                                      {foreach $product->printstatus as $item name=foo}
                                        {if $smarty.foreach.foo.first}
                                        {if $item->status == "on"}
                                    <tr>
                                       <td>
                                       <div class="img-wrapper" style="width:60px;height:60px;text-align:center;float:left;margin-right:10px;">
                                       <img src="{$image = $product->images|@first}{if $image}{$image->filename|escape|resize:60:60}
                                       {else}http://placehold.it/60&amp;text=no photo
                                       {/if}"/>
                                       </div>
                                       {$product->name}</td>
                                       <td style="text-align: center;">{$v->sku}</td>
                                       <td style="text-align: center;">{utverzhdennaja_cena} р.</td>
                                    </tr>
                                    {/if}
                                    {/if}{*if $smarty.foreach.foo.first*}
                                    {/foreach}
                                    {/foreach}
                                    {/foreach}

                                    </tbody>
                            </table>
                        {/function}

                        {upriceberet}
                        <div class="footer">Компания «РОСТОК ГРУПП» 2014</div>

</body>
</html>





