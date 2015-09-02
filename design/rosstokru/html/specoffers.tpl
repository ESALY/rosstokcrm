{* Спецпредложения *}

{* Канонический адрес страницы *}
{$canonical="/spetspredlozheniya" scope=parent}

{literal}
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
{/literal}

<ul class="special-offers-panel">
  <li>Сохранить в формате EXCEL</li>
  <li>Печать</li>
</ul>

<div class="special-offers">

{if $rows}
{foreach from=$rows item=row}

  <div class="special-offers-row">
    <h2>{$row->header}</h2>

    <div class="big-image"> <img src="{$row->headerimage}"></div>
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
        {foreach from=$row->products item=product}
        <tr>
          <td width="50" height="50" valign="middle"><img src="{$product->image}"></td>
          <td valign="middle" class="cell-inner">{$product->name}</td>
          <td valign="middle" class="cell-inner">{$product->amount}</td>
          <td valign="middle" class="cell-inner">{$product->price}</td>
          <td valign="middle" class="cell-inner">заказать</td>
        </tr>
        {/foreach}
      </tbody>
    </table>
    </div>
  </div>

{/foreach}
{/if}

</div>

{include file='pagination.tpl'}
