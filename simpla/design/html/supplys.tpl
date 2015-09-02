{* Title *}
{$meta_title='Оформление нового заказа' scope=parent}

<div class="pure-g" style="height: calc(100vh - 80px);">

    <div class="pure-u-1-6 b-left-side">
    <div id="filters-block" class="users-left-filters-wrapper">
{*<h2>Tests</h2>
<ul>
<li><button onclick="goToByScroll(277);">Scroll test</button></li>
<li><button onclick="get_corrency();"><i class="fa fa-spinner fa-spin"></i> Валюта из ЦБ РФ test</button></li>
</ul>

    <h2>Поиск</h2>
    <input  class="rus-forms-elastic-input">*}

    {* Меню *}
    <ul class="s-menu">
    <!--Item-->
    <li class="s-menu-h{if $status=='new'} active{/if}"> <span><a href="{url module=SupplysAdmin status=new  productid=null isupplier=null}">Новые</a> <span class="b-label warning">{$new_count}</span></span>
    </li>
    <!--Item@-->
    <!--Item-->
    <li class="s-menu-h{if $status=='on'} active{/if}"> <span><a href="{url module=SupplysAdmin status=on  productid=null isupplier=null}">В заявке</a> <span class="b-label warning">{$on_count}</span></span>

    </li>
    <!--Item@-->
    <!--Item-->
    {*<li class="s-menu-h{if $status=='2'} active{/if}"> <span><a href="{url module=SupplysAdmin status=2  productid=null isupplier=null}">На утверждение</a> <span class="b-label warning">{$2_count}</span></span>

    </li>*}
    <!--Item@-->
    <!--Item-->
    {*<li class="s-menu-h{if $status=='3'} active{/if}"> <span><a href="{url module=SupplysAdmin status=3  productid=null isupplier=null}">Утверждено</a> <span class="b-label warning">{$3_count}</span></span>

    </li>*}
    <!--Item@-->
        <!--Item-->
    <li class="s-menu-h{if $status=='4'} active{/if}"> <span><a href="{url module=SupplysAdmin status=4  productid=null isupplier=null}">Заказано</a> <span class="b-label warning">{$4_count}</span></span>
    </li>
    <!--Item@-->
        <!--Item-->
    {*<li class="s-menu-h{if $status=='5'} active{/if}"> <span><a href="{url module=SupplysAdmin status=5  productid=null isupplier=null}">Отгружено у поставщика</a> <span class="b-label warning">{$5_count}</span></span>
    </li>*}
    <!--Item@-->
        <!--Item-->
    <li class="s-menu-h{if $status=='ok'} active{/if}"> <span><a href="{url module=SupplysAdmin status=ok  productid=null isupplier=null}">На складе</a> <span class="b-label warning">{$ok_count}</span></span>
    </li>
    <!--Item@-->
        <!--Item-->
    {*<li class="s-menu-h{if $status=='7'} active{/if}"> <span><a href="{url module=SupplysAdmin status=7  productid=null isupplier=null}">Отгружено покупателю</a> <span class="b-label warning">{$7_count}</span></span>
    </li>*}
    <!--Item@-->
        <!--Item-->
    <li class="s-menu-h{if $status=='del'} active{/if}"> <span><a href="{url module=SupplysAdmin status=del  productid=null isupplier=null}">Удаленные</a> <span class="b-label warning">{$del_count}</span></span>

    </li>
            <!--Item-->
    <li class="s-menu-h{if $status=='z'} active{/if}"> <span><a href="{url module=SupplysAdmin status=z  productid=null isupplier=null}">Запрос цены</a> <span class="b-label warning">{$z_count}</span></span>
    </li>
        <li class="s-menu-h{if $status=='z'} active{/if}"> <span><a href="{url module=SupplysAdmin status=z  productid=null isupplier=null}">Просроченные заявки</a> <span class="b-label warning">{$z_count}</span></span>
    </li>
    <!--Item@-->
</ul>
    {* Меню@ *}
        <div class="s-menu2">
    <ul class="s-menu2-list">
    {foreach $isuppliers as $is}
        <li class="s-menu2-list-item">
        <span class="s-menu-list-header" style="margin-bottom:5px;display: inline-block;">{$is->name} <span style="float: right;margin-left:5px;" class="b-label  warning">{$is->count}</span></span>
        {foreach $is->iorders as $io}
                  <ul>
          {foreach $io->statuses as $status}
          <li style="margin-bottom:3px;">
            {$status->name} <span style="float: right;" class="b-label">{$status->count}</span>
            </li>
          {/foreach}
                  </ul>
        {/foreach}
        </li>
    {/foreach}
    </ul>
    </div>
    <ul>
    <h2>Закупщик</h2>
    <li>
    <select id="product" class="rus-forms-elastic-input" onchange="filter_isupplier(this)">
    <option value="{url module=SupplysAdmin productid=null isupplier=null}">Все</option>
    {foreach $managers as $m}
    <option value="{url module=SupplysAdmin productid=null user=null isupplier=$m->login}" {if $isupplier == $m->login}selected="selected"{/if}>{$m->login|escape}</option>
    {/foreach}
    </select>
    </li>
    </ul>

    <ul>
    <h2>Покупатели</h2>
    <li>
    <select id="product" class="rus-forms-elastic-input" onchange="filter_users(this)">
    <option value="{url module=SupplysAdmin productid=null isupplier=null user=null}">Все</option>
    {foreach $users as $user}
    <option value="{url module=SupplysAdmin productid=null isupplier=null user=$user->id}" {if $user_filter->id == $user->id}selected="selected"{/if}>{$user->name}</option>
    {/foreach}
    </select>
    </li>
    </ul>

    {if $status=='all'}
<h2>Все <span class="b-label warning">{$up_products_count}</span></h2>
{/if}

{if $status=='new'}
<h2>Новые {$user_filter->name}<span class="b-label warning">{$up_products_count}</span></h2>
{/if}

{if $status=='on'}
<h2>В заявке {$user_filter->name}<span class="b-label warning">{$up_products_count}</span></h2>
{/if}

{if $status=='ok'}
<h2>На складе {$user_filter->name}<span class="b-label warning">{$up_products_count}</span></h2>
{/if}

{if $status=='4'}
<h2>Заказано {$user_filter->name}<span class="b-label warning">{$up_products_count}</span></h2>
{/if}

{if $status=='del'}
<h2>Удаленные {$user_filter->name}<span class="b-label warning">{$up_products_count}</span></h2>
{/if}

<ul class="b-hlist b-hlist_middot">
    <li><button class="" onclick="selectall(this);">Выделить все</button></li>
    <li><button class="" onclick="unselectall(this);">Снять выделения</button></li>
    <li><button id="popup" class=""><strong><span id="selected-products"></span> <i class="fa fa-angle-down"></i></strong></button></li>
</ul>


    </div>
    </div>

    {* Center *}
    <div class="pure-u-5-6">

        <div class="pure-u-1-2">

        <div class="supplys-center-wrap">


{if $products}
<div class="supplys-header">

<span class="bubble-top" id="bubble-top" style="display:none;">
    <span class="bubble-top-inner">
        <ul>
        <li><a href="#" onclick="test();">Экспорт в Excel</a></li>
            {*<li><a target="_blank" href="{url module=SupplysAdmin view=productsexport}">Экспорт в Excel</a></li>
            <li><a target="_blank" href="{url module=SupplysAdmin view=productsexport}">Отправить поставщику</a></li>
            <li><a target="_blank" href="{url module=SupplysAdmin view=productsexport}">Печать</a></li>*}
        </ul>
    </span>
</span>
</div>

{*<button class="button-xsmall pure-button" onclick="test();">test</button>*}
<input type="hidden" name="session_id" value="{$smarty.session.id}">


{*<ul class="b-hlist b-hlist_middot supplys-center-sorting">
<li><a class="button button-rounded button-flat" href="/simpla/index.php?module=IorderAdmin">Выбрать все</a></li>
<li><a class="button button-rounded button-flat" href="/simpla/index.php?module=IorderAdmin">Экспорт в Excel</a></li>
<li><a class="button button-rounded button-flat" href="/simpla/index.php?module=IorderAdmin">Печать</a></li>
</ul>*}

<div class="supplys-content">
<div class="pure-g header">
<div class="pure-u-2-5">
Товар
</div>
<div class="pure-u-1-5">
Остаток
</div>
<div class="pure-u-1-5">
Заказать
</div>
<div class="pure-u-1-5">
Закупка
</div>
</div>

<div class="supplys-content-scroll">
{* products *}
<div id="products">
{assign var=val value=1}

{foreach $products as $product}{foreach $product->variants as $variant name=foo}
<div id="{$product->id}" class="pure-g row">
<div class="pure-u-2-5">
<span style="
display: inline-block;
float: left;
margin-left: -32px;
font-family: roboto;
font-size: 31px;
font-weight: 300;
margin-top: 0px;
color: rgb(163, 163, 163);
">
{$val}
{assign var=val value=$val+1}
</span>
<input type="checkbox" id="{$product->id}" style="float: left;margin-top: 15px;margin-left: 10px;">
<span class="supplys-product-thumb">{$image = $product->images|@first}{if $image}
<a href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}"><img src="{$image->filename|escape|resize:35:35}" /></a>
{else}
<a href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}">Добавить</a>
{/if}</span>
<span class="b-label warning  supplyes-product-badge">{$product->icount|escape}</span>
<a class="supplys-product-name" href="{url module=SupplysAdmin productid=$product->id}">{$product->name|escape}</a>

</div>
<div class="pure-u-1-5">
{$variant->stock} шт.
</div>
<div class="pure-u-1-5">
{$product->summ|escape} шт
</div>
<div class="pure-u-1-5">
{$variant->zakupka} р.
</div>
</div>
{/foreach}{/foreach}
</div>
{* products *}
</div>
</div>

{literal}
<script>
    $(".supplys-content-scroll").mCustomScrollbar({
    axis:"y",
    theme:"dark",
    autoDraggerLength: true,
    autoHideScrollbar: true,
    scrollEasing:"easeOut",
    scrollbarPosition: "outside",
    scrollButtons:{ scrollType: "stepless" }
    //scrollInertia:2000
     // horizontal scrollbar
});
</script>
{/literal}

{else}
<div class="supplys-header">
{if $status=='all'}
<h1 style="font-weight: 800;">Все <span class="b-label warning">{$up_products_count}</span></h1>
{/if}

{if $status=='new'}
<h1 style="font-weight: 800;">Новые {$user_filter->name}<span class="b-label warning">{$up_products_count}</span></h1>
{/if}

{if $status=='on'}
<h1 style="font-weight: 800;">В заявке {$user_filter->name}<span class="b-label warning">{$up_products_count}</span></h1>
{/if}

{if $status=='ok'}
<h1 style="font-weight: 800;">На складе {$user_filter->name}<span class="b-label warning">{$up_products_count}</span></h1>
{/if}

{if $status=='4'}
<h1 style="font-weight: 800;">Заказано {$user_filter->name}<span class="b-label warning">{$up_products_count}</span></h1>
{/if}

{if $status=='del'}
<h1 style="font-weight: 800;">Удаленные {$user_filter->name}<span class="b-label warning">{$up_products_count}</span></h1>
{/if}
<ul class="b-hlist b-hlist_middot supplys-center-sorting">
    <!--Item-->
    {if $new_count_user != 0}
    <li {if $status=='new'}class="active"{/if}> <span><a href="{url module=SupplysAdmin status=new  productid=null isupplier=null}">Новые ({$new_count_user})</a> </span>
    </li>
    {/if}
    <!--Item@-->
    <!--Item-->
    {if $on_count_user != 0}
    <li class=""> <span><a href="{url module=SupplysAdmin status=on  productid=null isupplier=null}">В заявке ({$on_count_user})</a></span>
    </li>
    {/if}
    <!--Item@-->
    <!--Item-->
    {if $2_count_user != 0}
    <li class=""> <span><a href="{url module=SupplysAdmin status=2  productid=null isupplier=null}">На утверждение ({$2_count_user})</a></span>
    </li>
    {/if}
    <!--Item@-->
    <!--Item-->
    {if $3_count_user != 0}
    <li class=""> <span><a href="{url module=SupplysAdmin status=3  productid=null isupplier=null}">Утверждено ({$3_count_user})</a></span>
    </li>
    {/if}
    <!--Item@-->
    <!--Item-->
    {if $4_count_user != 0}
    <li class=""> <span><a href="{url module=SupplysAdmin status=4  productid=null isupplier=null}">Заказано ({$4_count_user})</a></span>
    </li>
    {/if}
    <!--Item@-->
    <!--Item-->
    {if $5_count_user != 0}
    <li class=""> <span><a href="{url module=SupplysAdmin status=5  productid=null isupplier=null}">Отгружено у поставщика ({$5_count_user})</a></span>
    </li>
    {/if}
    <!--Item@-->
    <!--Item-->
    {if $ok_count_user != 0}
    <li class=""> <span><a href="{url module=SupplysAdmin status=ok  productid=null isupplier=null}">На складе ({$ok_count_user})</a></span>
    </li>
    {/if}
    <!--Item@-->
    <!--Item-->
    {if $7_count_user != 0}
    <li class=""> <span><a href="{url module=SupplysAdmin status=7  productid=null isupplier=null}">Отгружено покупателю ({$7_count_user})</a></span>
    </li>
    {/if}
    <!--Item@-->
    <!--Item-->
    {if $del_count_user != 0}
    <li class=""> <span><a href="{url module=SupplysAdmin status=del  productid=null isupplier=null}">Удаленные ({$del_count_user})</a></span>
    </li>
    {/if}
    <!--Item@-->
</ul>
</div>
{/if}

        </div>
    </div>
    <div class="pure-u-11-24">
    <div class="supplys-right-wrap">
    <div id="supplys-in"></div>
    {if $up_products_p}


<div class="supplys-products-p-block"> <span class="supplys-products-p-imgbox">{$image = $up_products_p->image}{if $image}
<a href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}"><img src="{$image->filename|escape|resize:150:150}" /></a>
{else}

{/if}</span>
<ul>
    <li class="supplys-products-p-header">{$up_products_p->name}</li>
    <li>Артикул:</li>
    <li>Закупка:</li>
    <li>Остаток:</li>
    <li>Закано:</li>
    <li>    </li>
    <li>    </li>
</ul>

<a class="button-xlarge pure-button" style="margin-top:20px;" target="_blank" href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}">Открыть в новой вкладке</a>

</div>

    <table  class="pure-table pure-table-bordered">
    <thead>
        <tr>
            <th>Заказано у поставщика</th>
            <th>Детали заказа</th>
            <th>Дата прихода</th>
            <th>Внутр закупщик</th>
            <th>Статус</th>
        </tr>
    </thead>
    <tbody>
        {foreach $up_products_p_inbox as $item}
        <tr id="{$item->id}">
            <td>
                <ul>
                {foreach $item->suppliers as $pruduct_supplier}
                <li style="font-size:9px;"><i class="fa fa-refresh"></i> {$pruduct_supplier->date|date_format:"%d %m %Y":"":"rus"}</li>
                    <li class="b-label notice" style="margin-bottom: 5px;">
                    {$pruduct_supplier->supplier}<i class="fa fa-times" style="float: right;cursor: pointer;"></i>
                    </li>
                {/foreach}
                    <span style="margin-top:5px;display: inline-block;">
                    <select id="product" class="rus-forms-elastic-input" onchange="add_supplier(this, {$item->id})">
                    <option value="">Добавить</option>
                    {foreach $suppliers as $p_su}
                    {if $p_su->supplier != ""}
                    <option value="{$p_su->supplier}">{$p_su->supplier}</option>
                    {/if}
                    {/foreach}
                        </select>
                        </span>
                    </li>
                </ul>
            </td>
            <td>
            <ul>
            <li style="white-space: nowrap;margin-bottom: 5px;">№ Заявки: {$item->id}</li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Заказчик: {$item->user}</li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Менеджер: {$item->author}</li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Заявка от: <span class="b-label success">{$item->date}</span></li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Актуально до: <span class="b-label success">{$item->srokispol}</span></li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Количество: {$item->supplys_amount}</li>
            <li style="white-space: nowrap;margin-bottom: 5px;">Цена продажи: {$item->tsenaprod}</li>
            <li style="margin-bottom: 5px;">Комментарий:</li>
            <li style="margin-bottom: 5px;max-width:100px;">{$item->commentariy}</li>
            </ul>
            </td>
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

        <h2>Поставщики</h2>
        <table  class="pure-table pure-table-bordered" style="width:100%;">
<thead>
  <tr>
    <th>Поставщик</th>
    <th>Наименование
    </th><th>Арт</th>
    <th>Цена</th>
    {*<th>А цена</th>*}
     {*<th>А кол-во</th>*}
     {*<th>С цена</th>*}
     {*<th>С кол-во</th>*}
     <th>Комм</th>
     {*<th>Ист</th>*}
  </tr>
</thead>
    <tbody>
    {foreach $suppliers as $su}
        <tr>
            <td contenteditable="true" id="supplier{$su->i}" onkeyup="update_product_supplier(this)">{$su->supplier}</td>
            <td contenteditable="true" id="prod{$su->i}" onkeyup="update_product_supplier(this)">{$su->prod}</td>
            <td contenteditable="true" id="art{$su->i}" onkeyup="update_product_supplier(this)">{$su->art}</td>
            <td contenteditable="true" id="price{$su->i}" timestamp="1" onkeyup="update_product_supplier(this)">{$su->price}</td>
            {*<td contenteditable="true" id="aprice{$su->i}" onkeyup="update_product_supplier(this)">{$su->aprice}</td>*}
            {*<td contenteditable="true" id="astock{$su->i}" onkeyup="update_product_supplier(this)">{$su->astock}</td>*}
            {*<td contenteditable="true" id="oprice{$su->i}" onkeyup="update_product_supplier(this)">{$su->oprice}</td>*}
            {*<td contenteditable="true" id="ostock{$su->i}" onkeyup="update_product_supplier(this)">{$su->ostock}</td>*}
            <td contenteditable="true" id="contacts{$su->i}"  timestamp="1"  onkeyup="update_product_supplier(this)">{$su->comments}</td>
            {*<td contenteditable="true" id="history{$su->i}" onkeyup="update_product_supplier(this)">{$su->history}</td>*}
        </tr>
    {/foreach}
    </tbody>
</table>
    {/if}
    </div>
    </div>
    </div>
    {* Center@ *}



</div>

{* jS *}
<input id="session_id" type="hidden" value="{$smarty.session.id}">
<script src="design/js/supplys_united.js"></script>