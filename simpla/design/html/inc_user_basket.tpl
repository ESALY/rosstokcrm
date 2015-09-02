<div class="user_price_basket">
<form method="post" id="order" enctype="multipart/form-data"  class="pure-form">
<div class="pure-g">
    <div class="pure-u-3-5">
    {if $basket}

<fieldset>
        <input type=hidden name="session_id" value="{$smarty.session.id}">
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
    {foreach $basket as $item}
    <tr>

<td  style="display:none;"><select name="purchases[variant_id][{$item->id}]"><option value="{$item->vid}" price="{$item->price}" amount="{$item->amount}">Пункт 1</option></select></td>
        <td style="text-align:center;width:50px;"><div class="thumbbox35">{if $image} <a href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}"><img src="{$image->filename|escape|resize:50:50}"/></a>

{else} <a href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}"><img src="http://placehold.it/50&amp;text=x"/></a>
{/if}</div></td>
        <td class="nowrap">{$item->name}</td>
        <td style="text-align:center;">{$item->amount}</td>
        <td><input type="text" name="purchases[price][{$item->id}]" value="{$item->price}" size="5"></td>
        <td><input type="text" name="purchases[amount][{$item->id}]" value="{$item->amount}" size="5"></td>
        <td><textarea class="autosize-animated" style="overflow: hidden; word-wrap: break-word; resize: horizontal;width: 100%;"></textarea></td>
        <td>Удалить</td>
    </tr>

    {/foreach}
</tbody>
</table>

{else}
<h2>Нет товаров в корзине</h2>
{/if}
    </div>

</div>
</form>
</div>

{literal}
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
{/literal}