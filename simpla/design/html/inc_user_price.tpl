<div class="user_price_wrapper">
       <!--*****************************************************************************************************************************************************************-->
                             <div style="display: inline-block;
  width: 100%;
  margin-bottom: 10px;
  padding-top: 15px;
  border-bottom: 1px solid rgb(219, 219, 219);
  padding-bottom: 15px;
  background: whitesmoke;">

                            {function name=beretstatuscolorbtn}
                            {foreach $product->beretstatus as $item name=foo}
                            {if $smarty.foreach.foo.first}{if $item->status == "on"}beret{/if}{/if}{*if $smarty.foreach.foo.first*}
                            {/foreach}
                            {/function}

                            {function name=sprosstatuscolorbtn}
                            {foreach $product->sprosstatus as $item name=foo}
                            {if $smarty.foreach.foo.first}{if $item->status == "on"}spros{/if}{/if}{*if $smarty.foreach.foo.first*}
                            {/foreach}
                            {/function}

                            {function name=ispolstatuscolorbtn}
                            {foreach $product->ispolstatus as $item name=foo}
                            {if $smarty.foreach.foo.first}{if $item->status == "on"}interes{/if}{/if}{*if $smarty.foreach.foo.first*}
                            {/foreach}
                            {/function}

                             <a  class="button button-flat button-tiny {if $smarty.cookies.view == 'vse'}button button-flat button-primary{/if}" onclick="document.cookie='view=vse;path=/';document.location.reload();" href="{url module=UserAdmin id=$user->id filter=vse page=null}"><i class="fa fa-user"></i><i class="fa fa-filter"></i> Без фильтра</a>

                             <a  class="button button-flat button-tiny {if $smarty.cookies.view == 'beret'}button button-flat button-primary{/if}" onclick="document.cookie='view=beret;path=/';document.location.reload();" href="{url module=UserAdmin id=$user->id filter=beret page=all}"><i class="fa fa-user"></i><i class="fa fa-filter"></i> Берет</a>

                             <a  class="button button-flat button-tiny {if $smarty.cookies.view == 'ispol'}button button-flat button-primary{/if}" onclick="document.cookie='view=ispol;path=/';document.location.reload();" href="{url module=UserAdmin id=$user->id filter=ispol page=all}"><i class="fa fa-user"></i><i class="fa fa-filter"></i> Интересуется</a>

                             <a  class="button button-flat button-tiny {if $smarty.cookies.view == 'spros'}button button-flat button-primary{/if}" onclick="document.cookie='view=spros;path=/';document.location.reload();" href="{url module=UserAdmin id=$user->id filter=spros page=all}"><i class="fa fa-user"></i><i class="fa fa-filter"></i> Спрос (нет товара)</a>

                             <a  class="button button-flat button-tiny {if $smarty.cookies.view == 'nein'}button button-flat button-primary{/if}" onclick="document.cookie='view=nein;path=/';document.location.reload();" href="{url module=UserAdmin id=$user->id filter=nein page=all}"><i class="fa fa-user"></i><i class="fa fa-filter"></i> Не интересно</a>

                            <div class="right">
                            <a  class="button button-flat button-tiny {if $sort=='nameASC'} button-highlight{/if}" onclick="document.location.reload();" href="{url module=UserAdmin sort=nameASC}"><i class="fa fa-sort-alpha-asc"></i></a>
                            <a  class="button button-flat button-tiny {if $sort=='nameDESC'} button-highlight{/if}" onclick="document.location.reload();" href="{url module=UserAdmin sort=nameDESC}"><i class="fa fa-sort-alpha-desc"></i></a>
                            <a  class="button button-flat button-tiny {if $sort=='position'} button-highlight{/if}" onclick="document.location.reload();" href="{url module=UserAdmin sort=position}"><i class="fa fa-sort-amount-desc"></i></a>
                            <a  class="button button-flat button-tiny" onclick="document.location.reload();" href="javascript:;"><i class="fa fa-refresh"></i></a>
                            </div>


                                                        <div style="float:right;margin-right: 30px;">

 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="javascript:;"><i class="fa fa-paper-plane"></i> Создать заявку</a>
 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="javascript:;"><i class="fa fa-paper-plane"></i> Отправить по email</a>
 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="javascript:;"><i class="fa fa-file-excel-o"></i> Сохранить в Excel</a>


 {if $smarty.cookies.view == 'beret'}
 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="{url view=print_beret id=$user->id page=all}"><i class="fa fa-print"></i> Распечатать все</a>
 {/if}

 {if $smarty.cookies.view == 'ispol'}
 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="{url view=print_interes id=$user->id page=all}"><i class="fa fa-print"></i> Распечатать все</a>
 {/if}

 {if $smarty.cookies.view == 'spros'}
 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="{url view=print_spros id=$user->id page=all}"><i class="fa fa-print"></i> Распечатать все</a>
 {/if}

 <a target="_blank" class="button button-flat button-tiny" onclick="document.location.reload();" href="{url view=print_selected id=$user->id page=all}"><i class="fa fa-print"></i> Распечатать выделенное</a>
 </div>

                            </div>

                            <!--*****************************************************************************************************************************************************************-->
                                   <!--Левый блок-->
                    <div class="main-left">
                     <span style="
    font-size: 31px;
">{$user->name|escape} {$user->rukovoditeltel|escape}</span>
                    <div class="test-menu">

                        {*<div id="jstree_demo_div"></div>*}
                    </div>
                    <!-- Фильтры -->
                        <div class="cmenu" style="display:block;">
                        <div style="margin-bottom: 13px;">
                        <div class="b-inputmargin-bottom: 13px;">
    <input id="search-box" placeholder="Поиск..." style="padding: 5px;width: 100%;">
    </div>
    </div>

                        <ul>                      <li {if !$filter}class="selectedfillter"{/if}><a href="{url brand_id=null category_id=null keyword=null page=null filter=null}"><i class="fa fa-filter"></i> Все товары</a></li>
        <li {if $filter=='featured'}class="selectedfillter"{/if}><a href="{url keyword=null brand_id=null category_id=null page=null filter='featured'}"><i class="fa fa-filter"></i> Рекомендуемые</a></li>

        <li class="divider"></li></ul>
        {function name=categories_tree} {if $categories}
                            <ul>
        {foreach $categories as $c1} {if $c1->visible}
                                <li id="m{$c1->id}">
                                <a {if $category->id == $c1->id}class="selected"{/if}" href="{url keyword=null brand_id=null page=null category_id={$c1->id}}">
                                {if $category->id == $c1->id}<i class="fa fa-angle-right"></i>{/if}
                                {$c1->name}</a>
                                {if in_array($category->id, $c1->children)}
                                {categories_tree categories=$c1->subcategories} {/if}</li>
                                {/if} {/foreach}</ul>{/if} {/function} {categories_tree categories=$categories}
                                </div>
                    </div>
                    <!--Правый блок-->
                    <div class="main-right">
                                                {* Поиск *}

{foreach $ssubcat as $c}

<span style="
  display: inline-block;
  width: 100%;
  background: linear-gradient(to bottom,#4EBA6F 0%,#3EA35D 100%);
  border-left: 1px solid #88c86d;
  border-right: 1px solid #88c86d;
  border-radius: 4px;
  font-size: 20px;
  padding: 5px 10px;
  color: white;
  box-sizing: border-box;
">{$c->name}</span>

<span style="
  width: 100%;
  display: inline-block;
  margin-bottom: 10px;
  padding-bottom: 10px;
  padding-top: 10px;
  box-sizing: border-box;
  background: whitesmoke;
">
{*<div class="user-price-cimage">
    <img src="{$config->root_url}/{$config->categories_images_dir}{$c->image}" style="width: 200px";>
</div>*}
{*  таблица *}
<table class="pure-table pure-table-bordered" style="width:auto;">
    <thead>
        <tr>
            <th>фото</th>
            <th>товар</th>
            <th>на складе</th>
            <th>арт</th>
            <th>закупка</th>
            <th style="width: 140px;">цена клиента</th>
            <th style="width: 140px;">цена утв.</th>
            {*<th style="width: 50px;">заказ</th>*}
             <th>заказ</th>
        </tr>
    </thead>
    <tbody>
    {foreach $c->products as $product}
        <tr>
            <td style="width: 50px;">
            {$image = $product->firstvariant->image}
                <div class="thumbbox35">{if $image} <a href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}"><img src="{$image->filename|escape|resize:50:50}"/></a>
{else} <a href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}">{*no photo*}</a>
{/if}</div>
            </td>
            <td style="width: 270px;"><a target="_blank" href="{url module=ProductAdmin id=$product->id return=$smarty.server.REQUEST_URI}">{$product->name}</a></td>
            <td>{$product->firstvariant->stock}</td>
            <td>{$product->firstvariant->sku}</td>
            <td>{$product->firstvariant->zakupka} р.</td>
            <td>
                <div class="megarcell">
    <label>{$product->firstvariant->kopt} р. | {$product->firstvariant->opt} р. | {$product->firstvariant->price} р.</label>
    <div id="{$product->id}per" class="userp-table-prblock" onkeyup="z (this.id,{$product->firstvariant->zakupka})">
        <input type="text" style="text-align:right;" class="userp-table-input" id="u{$product->id}" placeholder="{$product->firstvariant->cena_klienta->price}">р. {*<i style="border-right:1px solid grey;"></i>*}
        <input type="text" style="text-align:right;" readonly class="userp-table-input" placeholder="{$product->firstvariant->cena_klienta->per}">%</div> <i class="pointer fa fa-paper-plane" onclick="senduprice (this,{$product->id},{$user->id},'cena_klienta')"><span class="last-update">{*cena_klienta_date*}</span></i>
        </div>
            </td>
            <td>
                <div class="megarcell"><label>{$product->firstvariant->utverzhdennaja_cena->price} р. | {$product->firstvariant->utverzhdennaja_cena->per}%</label>
                <div id="cc{$product->id}" class="userp-table-prblock" onkeyup="summa_ot_procenta (this.id,{$product->firstvariant->zakupka})">
                <input type="text" style="text-align:right;" class="userp-table-input" readonly id="utv{$product->id}" placeholder="{$product->firstvariant->utverzhdennaja_cena->price}">р. {*<i style="border-right:1px solid grey;"></i>*}
                <input type="text" style="text-align:right;" class="userp-table-input" id="utvper{$product->id}" placeholder="{$product->firstvariant->utverzhdennaja_cena->per}">%</div>
                <i class="pointer fa fa-paper-plane" onclick="sendutvprice (this,{$product->id},{$user->id},'utverzhdennaja_cena')"></i>
                </div>
            </td>
            {*<td>
            {if $product->iorders}

                  {foreach $product->iorders as $item}
                  <ul style="  background-color: rgb(205, 255, 225);padding: 7px; margin-bottom: 5px;">
                  <li style="white-space: nowrap;margin-bottom: 5px;">Статус: {$item->status}</li>
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
                  {/foreach}

                {else}
                <span>не заказано</span>
            {/if}
            </td>*}
            <td>
            <ul id="tobasket{$product->id}" class="up-basket">
            <li><div class="b-input"><input placeholder="кол-во"/></div></li>
            <li><div class="b-input"><input  id="datepicker{$product->id}" itemid="{$product->id}" name="PrihodDate" placeholder="срок испол"/></div></li>
            <li><div class="b-input"><input placeholder="цена продажи"/></div></li>
            <li><div class="b-input"><input placeholder="комментарий"/></div></li>
            <li><a class="button button-rounded button-flat button-tiny" href="#" onclick="tobasket (this,{$product->id},'{$product->name}','z')">запрос цены</a></li>
            <li><a class="button button-rounded button-flat button-tiny" href="#" onclick="tobasket (this,{$product->id},'{$product->name}','new')">заказать</a></li>
            </ul>
            </td>
        </tr>
    {/foreach}
    </tbody>
</table>
{* таблица@ *}
</span>
{/foreach}
<!--*************************************************************************************************************************-->

                        <input id="session_id" type="hidden" value="{$smarty.session.id}">
                        <script src="design/js/products_united.js"></script>

         {literal}
        <script>

        //DatePicker
        $(function() {
    $('[name="PrihodDate"]').datepicker();
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
                dateFormat: 'yy-mm-dd',
                firstDay: 1,
                isRTL: false,
                showMonthAfterYear: false,
                yearSuffix: ''};
        $.datepicker.setDefaults($.datepicker.regional['ru']);
  });

    //end Datepicker

        $(document).ready(function(){


        });

            $(function() {

                // Раскраска строк
                function colorize() {
                    $("#list div.row:even").addClass('even');
                    $("#list div.row:odd").removeClass('even');
                }
                // Раскрасить строки сразу
                colorize();

                // Выделить все
                $("#check_all").click(function() {
                    $('#list input[type="checkbox"][name*="check"]').attr('checked', 1 - $('#list input[type="checkbox"][name*="check"]').attr('checked'));
                });

                // Удалить
                $("a.delete").click(function() {
                    $('#list input[type="checkbox"][name*="check"]').attr('checked', false);
                    $(this).closest(".row").find('input[type="checkbox"][name*="check"]').attr('checked', true);
                    $(this).closest("form#list").find('select[name="action"] option[value=delete]').attr('selected', true);
                    $(this).closest("form#list").submit();
                });

                // Подтверждение удаления
                //$("#list").submit(function() {
                    //if ($('select[name="action"]').val() == 'delete' && !confirm('Подтвердите удаление')) return false;
                //});
            });
        </script>{/literal}
{literal}
<script>
    $(function() {

        // Сортировка списка
        $("#list").sortable({
            items: ".row",
            tolerance: "pointer",
            handle: ".move_zone",
            scrollSensitivity: 40,
            opacity: 0.7,

            helper: function(event, ui) {
                if ($('input[type="checkbox"][name*="check"]:checked').size() < 1) return ui;
                var helper = $('<div/>');
                $('input[type="checkbox"][name*="check"]:checked').each(function() {
                    var item = $(this).closest('.row');
                    helper.height(helper.height() + item.innerHeight());
                    if (item[0] != ui[0]) {
                        helper.append(item.clone());
                        $(this).closest('.row').remove();
                    } else {
                        helper.append(ui.clone());
                        item.find('input[type="checkbox"][name*="check"]').attr('checked', false);
                    }
                });
                return helper;
            },
            start: function(event, ui) {
                if (ui.helper.children('.row').size() > 0) $('.ui-sortable-placeholder').height(ui.helper.height());
            },
            beforeStop: function(event, ui) {
                if (ui.helper.children('.row').size() > 0) {
                    ui.helper.children('.row').each(function() {
                        $(this).insertBefore(ui.item);
                    });
                    ui.item.remove();
                }
            },
            update: function(event, ui) {
                $("#list_form input[name*='check']").attr('checked', false);
                $("#list_form").ajaxSubmit(function() {
                    colorize();
                });
            }
        });


        // Перенос товара на другую страницу
        $("#action select[name=action]").change(function() {
            if ($(this).val() == 'move_to_page') $("span#move_to_page").show();
            else $("span#move_to_page").hide();
        });
        $("#pagination a.droppable").droppable({
            activeClass: "drop_active",
            hoverClass: "drop_hover",
            tolerance: "pointer",
            drop: function(event, ui) {
                $(ui.helper).find('input[type="checkbox"][name*="check"]').attr('checked', true);
                $(ui.draggable).closest("form").find('select[name="action"] option[value=move_to_page]').attr("selected", "selected");
                $(ui.draggable).closest("form").find('select[name=target_page] option[value=' + $(this).html() + ']').attr("selected", "selected");
                $(ui.draggable).closest("form").submit();
                return false;
            }
        });


        // Перенос товара в другую категорию
        $("#action select[name=action]").change(function() {
            if ($(this).val() == 'move_to_category') $("span#move_to_category").show();
            else $("span#move_to_category").hide();
        });
        $("#right_menu .droppable.category").droppable({
            activeClass: "drop_active",
            hoverClass: "drop_hover",
            tolerance: "pointer",
            drop: function(event, ui) {
                $(ui.helper).find('input[type="checkbox"][name*="check"]').attr('checked', true);
                $(ui.draggable).closest("form").find('select[name="action"] option[value=move_to_category]').attr("selected", "selected");
                $(ui.draggable).closest("form").find('select[name=target_category] option[value=' + $(this).attr('category_id') + ']').attr("selected", "selected");
                $(ui.draggable).closest("form").submit();
                return false;
            }
        });


        // Перенос товара в другой бренд
        $("#action select[name=action]").change(function() {
            if ($(this).val() == 'move_to_brand') $("span#move_to_brand").show();
            else $("span#move_to_brand").hide();
        });
        $("#right_menu .droppable.brand").droppable({
            activeClass: "drop_active",
            hoverClass: "drop_hover",
            tolerance: "pointer",
            drop: function(event, ui) {
                $(ui.helper).find('input[type="checkbox"][name*="check"]').attr('checked', true);
                $(ui.draggable).closest("form").find('select[name="action"] option[value=move_to_brand]').attr("selected", "selected");
                $(ui.draggable).closest("form").find('select[name=target_brand] option[value=' + $(this).attr('brand_id') + ']').attr("selected", "selected");
                $(ui.draggable).closest("form").submit();
                return false;
            }
        });


        // Если есть варианты, отображать ссылку на их разворачивание
        if ($("li.variant").size() > 0) $("#expand").show();


        // Раскраска строк
        function colorize() {
            $("#list div.row:even").addClass('even');
            $("#list div.row:odd").removeClass('even');
        }
        // Раскрасить строки сразу
        colorize();


        // Показать все варианты
        $("#expand_all").click(function() {
            $("a#expand_all").hide();
            $("a#roll_up_all").show();
            $("a.expand_variant").hide();
            $("a.roll_up_variant").show();
            $(".variants ul li.variant").fadeIn('fast');
            return false;
        });


        // Свернуть все варианты
        $("#roll_up_all").click(function() {
            $("a#roll_up_all").hide();
            $("a#expand_all").show();
            $("a.roll_up_variant").hide();
            $("a.expand_variant").show();
            $(".variants ul li.variant").fadeOut('fast');
            return false;
        });


        // Показать вариант
        $("a.expand_variant").click(function() {
            $(this).closest("div.cell").find("li.variant").fadeIn('fast');
            $(this).closest("div.cell").find("a.expand_variant").hide();
            $(this).closest("div.cell").find("a.roll_up_variant").show();
            return false;
        });

        // Свернуть вариант
        $("a.roll_up_variant").click(function() {
            $(this).closest("div.cell").find("li.variant").fadeOut('fast');
            $(this).closest("div.cell").find("a.roll_up_variant").hide();
            $(this).closest("div.cell").find("a.expand_variant").show();
            return false;
        });

        // Выделить все
        $("#check_all").click(function() {
            $('#list input[type="checkbox"][name*="check"]').attr('checked', $('#list input[type="checkbox"][name*="check"]:not(:checked)').length > 0);
        });

        // Удалить товар
        $("a.delete").click(function() {
            $('#list input[type="checkbox"][name*="check"]').attr('checked', false);
            $(this).closest("div.row").find('input[type="checkbox"][name*="check"]').attr('checked', true);
            $(this).closest("form").find('select[name="action"] option[value=delete]').attr('selected', true);
            $(this).closest("form").submit();
        });

        // Дублировать товар
        $("a.duplicate").click(function() {
            $('#list input[type="checkbox"][name*="check"]').attr('checked', false);
            $(this).closest("div.row").find('input[type="checkbox"][name*="check"]').attr('checked', true);
            $(this).closest("form").find('select[name="action"] option[value=duplicate]').attr('selected', true);
            $(this).closest("form").submit();
        });

        // Показать товар
        $("a.enable").click(function() {
            var icon = $(this);
            var line = icon.closest("div.row");
            var id = line.find('input[type="checkbox"][name*="check"]').val();
            var state = line.hasClass('invisible') ? 1 : 0;
            icon.addClass('loading_icon');
            $.ajax({
                type: 'POST',
                url: 'ajax/update_object.php',
                data: {
                    'object': 'product',
                    'id': id,
                    'values': {
                        'visible': state
                    },
                    'session_id': '{/literal}{$smarty.session.id}{literal}'
                },
                success: function(data) {
                    icon.removeClass('loading_icon');
                    if (state) line.removeClass('invisible');
                    else line.addClass('invisible');
                },
                dataType: 'json'
            });
            return false;
        });

        // Сделать хитом
        $("a.featured").click(function() {
            var icon = $(this);
            var line = icon.closest("div.row");
            var id = line.find('input[type="checkbox"][name*="check"]').val();
            var state = line.hasClass('featured') ? 0 : 1;
            icon.addClass('loading_icon');
            $.ajax({
                type: 'POST',
                url: 'ajax/update_object.php',
                data: {
                    'object': 'product',
                    'id': id,
                    'values': {
                        'featured': state
                    },
                    'session_id': '{/literal}{$smarty.session.id}{literal}'
                },
                success: function(data) {
                    icon.removeClass('loading_icon');
                    if (state) line.addClass('featured');
                    else line.removeClass('featured');
                },
                dataType: 'json'
            });
            return false;
        });


        // Сделать хитом
        $("a.featured1").click(function() {
            var inp = $('input[name=sitebg]');
            var icon = $(this);
            var line = icon.closest("div.row");
            var id = line.find('input[type="checkbox"][name*="check"]').val();
            var state = 5555;
            icon.addClass('loading_icon');

            $.ajax({
                type: 'POST',
                url: 'ajax/update_object.php',
                data: {
                    'object': 'user',
                    'id': id,
                    'values': {
                        'pricetype': '777'
                    },
                    'session_id': '{/literal}{$smarty.session.id}{literal}'
                },
                success: function(msg) {
                    alert("Прибыли данные: " + msg);
                },
                dataType: 'json'
            });

            $('input[name=sitebg]').val('000000');
            return false;
        });


        // утвержденная цена
        $("#sendu").click(function() {
            var inp = $('input[name=sitebg]');
            var icon = $(this);
            var line = icon.closest("div.row");
            var id = line.find('input[type="checkbox"][name*="utv"]').val();
            var state = 5555;
            icon.addClass('loading_icon');
            alert(utv);
            $.ajax({
                type: 'POST',
                url: 'ajax/update_object.php',
                data: {
                    'object': 'user',
                    'id': id,
                    'values': {
                        'pricetype': '777'
                    },
                    'session_id': '{/literal}{$smarty.session.id}{literal}'
                },
                success: function(msg) {
                    alert("Прибыли данные: " + msg);
                    icon.removeClass('loading_icon');
                },
                dataType: 'json'
            });

            $('input[name=sitebg]').val('000000');
            return false;

        });


        // Подтверждение удаления
        // Yandex.market
        $("a.yandex").click(function() {
            var icon = $(this);
            var line = icon.closest("div.row");
            var id = line.find('input[type="checkbox"][name*="check"]').val();
            var state = line.hasClass('yandex') ? 0 : 1;
            icon.addClass('loading_icon');
            $.ajax({
                type: 'POST',
                url: 'ajax/update_object.php',
                data: {
                    'object': 'product',
                    'id': id,
                    'values': {
                        'to_yandex': state
                    },
                    'session_id': '{/literal}{$smarty.session.id}{literal}'
                },
                success: function(data) {
                    icon.removeClass('loading_icon');
                    if (state) line.addClass('yandex');
                    else line.removeClass('yandex');
                },
                dataType: 'json'
            });
            return false;
        });
        //$("form").submit(function() {
           // if ($('select[name="action"]').val() == 'delete' && !confirm('Подтвердите удаление')) return false;
       // });


        // Бесконечность на складе
        $("input[name*=stock]").focus(function() {
            if ($(this).val() == '∞') $(this).val('');
            return false;
        });
        $("input[name*=stock]").blur(function() {
            if ($(this).val() == '') $(this).val('∞');
        });
    });




    function sendcomment(el, id, x, y, z) { // определяем функцию и ее механизм выполнения

        $(el).addClass('loading_icon');

        var prodcomment = document.getElementById(id + "last-comments").value;

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                'values': {
                    'productid': x,
                    'userid': y,
                    'rowtype': z,
                    'prodcomment': prodcomment,
                },
                'session_id': '{/literal}{$smarty.session.id}{literal}'
            },
            success: function(msg) {
                $(el).removeClass('loading_icon');

            },
            dataType: 'json'
        });

        //$('input[name=sitebg]').val('000000');
        return false;

    }




    function send_spec_cena(el, x, y, z) { // определяем функцию и ее механизм выполнения

        var input1 = "spec_cena" + x;
        var input2 = "spec_cena_colichestvo" + x;

        var spec_cena = document.getElementById(input1).value;
        var spec_cena_colichestvo = document.getElementById(input2).value;

        $(el).addClass('loading_icon');

        //alert(spec_cena);
        //alert(spec_cena_colichestvo);

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                'values': {
                    'productid': x,
                    'userid': y,
                    'rowtype': z,
                    'spec_cena': spec_cena,
                    'spec_cena_colichestvo': spec_cena_colichestvo,
                },
                'session_id': '{/literal}{$smarty.session.id}{literal}'
            },
            success: function(msg) {
                $(el).removeClass('loading_icon');

            },
            dataType: 'json'
        });

        //$('input[name=sitebg]').val('000000');
        return false;
    }

    function send_akcija(el, x, y, z) { // определяем функцию и ее механизм выполнения

        var input1 = "akcija" + x;
        var input2 = "akcija_colichestvo" + x;

        var akcija = document.getElementById(input1).value;
        var akcija_colichestvo = document.getElementById(input2).value;

        $(el).addClass('loading_icon');

        //alert(akcija);
        //alert(akcija_colichestvo);

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                'values': {
                    'productid': x,
                    'userid': y,
                    'rowtype': z,
                    'akcija': akcija,
                    'akcija_colichestvo': akcija_colichestvo,
                },
                'session_id': '{/literal}{$smarty.session.id}{literal}'
            },
            success: function(msg) {
                $(el).removeClass('loading_icon');

            },
            dataType: 'json'
        });

        //$('input[name=sitebg]').val('000000');
        return false;
    }
</script>
<script>
    function senduprice(el, x, y, z) { // определяем функцию и ее механизм выполнения

        var val = document.getElementById("u" + x).value;
        perinput = x + "per";

        var per = document.getElementById(perinput).getElementsByTagName('input')[1].value;

        $(el).addClass('loading_icon');

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                'values': {
                    'productid': x,
                    'userid': y,
                    'price': val,
                    'rowtype': z,
                    'per': per,
                },
                'session_id': '{/literal}{$smarty.session.id}{literal}'
            },
            success: function(msg) {
                $(el).removeClass('loading_icon');

                var n = noty({
                    text: 'Отлично! Новая цена установлена!'
                });
            },
            dataType: 'json'
        });

        //$('input[name=sitebg]').val('000000');
        return false;
    }

    function sendutvprice(el, x, y, z) { // определяем функцию и ее механизм выполнения

        var val = document.getElementById("utv" + x).value;
        //alert(val);
        var per = document.getElementById("utvper" + x).value;
        //alert(per);

        $(el).addClass('loading_icon');

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                'values': {
                    'productid': x,
                    'userid': y,
                    'price': val,
                    'rowtype': z,
                    'per': per,
                },
                'session_id': '{/literal}{$smarty.session.id}{literal}'
            },
            success: function(msg) {
                $(el).removeClass('loading_icon');
            },
            dataType: 'json'
        });

        //$('input[name=sitebg]').val('000000');
        return false;
    }
</script>{/literal} {literal}
<script>
    $.noty.defaults = {
        layout: 'top',
        theme: 'defaultTheme',
        type: 'alert',
        text: '', // can be html or string
        dismissQueue: true, // If you want to use queue feature set this true
        template: '<div class="noty_message"><span class="noty_text"></span><div class="noty_close"></div></div>',
        animation: {
            open: {
                height: 'toggle'
            },
            close: {
                height: 'toggle'
            },
            easing: 'swing',
            speed: 500 // opening & closing animation speed
        },
        timeout: 1000, // delay for closing event. Set false for sticky notifications
        force: false, // adds notification to the beginning of queue when set to true
        modal: false,
        maxVisible: 20, // you can set max visible notification for dismissQueue true option,
        killer: false, // for close all notifications before show
        closeWith: ['hover'], // ['click', 'button', 'hover']
        callback: {
            onShow: function() {},
            afterShow: function() {},
            onClose: function() {},
            afterClose: function() {}
        },
        buttons: false // an array of buttons
    };
</script>{/literal} {*подсветка объекта*} {literal}
<script>
    var preEl;
    var orgBColor;
    var orgTColor;

    function HighLightTR(el, backColor, textColor) {
        if (typeof(preEl) != 'undefined') {
            preEl.style.backgroundColor = orgBColor;
            //$(reEl).removeClass('iconfa-unlock');
            try {
                ChangeTextColor(preEl, orgTColor);
                //$(el).removeClass('iconfa-unlock');
            } catch (e) {;
            }
        }
        //orgBColor = el.bgColor;
        orgBColor = el.style.backgroundColor;
        orgTColor = el.style.color;
        //el.bgColor = backColor;
        el.style.backgroundColor = backColor;

        try {
            ChangeTextColor(el, textColor);
        } catch (e) {;
        }
        preEl = el;

    }


    function ChangeTextColor(a_obj, a_color) {;
        for (i = 0; i < a_obj.cells.length; i++)
        a_obj.cells(i).style.color = a_color;
    }
</script>{/literal}





{literal}
                                         <script>
function status(el, productid, userid, rowtype) {

//проверяем состояние чекбокса

    switch (el.getElementsByTagName('input')[0].checked) {
  case true:
    //alert("cheked");
    addstatus("on")
    break;
  case false:
    //alert("not cheked");
    addstatus("off")
    break;
}

//отправляем ajax запрос в базу

    function addstatus(chbstatus) {

        $(el).addClass('loading_icon');

        $.ajax({
            type: 'POST',
            url: 'ajax/update_object.php',
            data: {
                'object': 'user',
                    'values': {
                    'productid': productid,
                        'userid': userid,
                        'rowtype': rowtype,
                        'status': chbstatus,
                },
                    'session_id': '{/literal}{$smarty.session.id}{literal}'
            },
            success: function (msg) {
                $(el).removeClass('loading_icon');

            },
            dataType: 'json'
        });

        return false;
    }
}
</script>
 {/literal}


<!--Корзина-->
{literal}
<script>
    function tobasket(el, id, prodname, status) {

            var productid = id;
            var id = 'tobasket' + id;

            var amount = document.getElementById(id).getElementsByTagName('input')[0].value;

            var srokispol = document.getElementById(id).getElementsByTagName('input')[1].value;
            var tsenaprod = document.getElementById(id).getElementsByTagName('input')[2].value;
            var commentariy = document.getElementById(id).getElementsByTagName('input')[3].value;

            var author = '{/literal}{$m->login|escape}{literal}';

            var username = '{/literal}{$user->name}{literal}';

            //ajax запрос

            $(el).addClass('loading_icon');

            $.ajax({
                    type: 'POST',
                    url: 'ajax/update_object.php',
                    data: {
                        'object': 'user',
                        'values': {
                            'productid': productid,
                            'userid': {/literal}{$user->id}{literal},
                                'rowtype': 'supplys',
                                'supplys_amount': amount,
                                'srokispol': srokispol,
                                'tsenaprod': tsenaprod,
                                'commentariy': commentariy,
                                'status': status,
                                'author': author,
                            },
                            'session_id': '{/literal}{$smarty.session.id}{literal}'
                        },
                        success: function(msg) {

                            //$(el).removeClass('loading_icon');
                            alert('Заказ добавлен!');
                        },
                        dataType: 'json'
                    });

                return false;
            }

</script>
{/literal}

{literal}
<script>`
    function tozapros(el, id, prodname) {

            var productid = id;
            var id = 'tobasket' + id;

            var amount = document.getElementById(id).getElementsByTagName('input')[0].value;

            var x = document.getElementById(id).getElementsByTagName('select')[0].selectedIndex;
            var pr = document.getElementById(id).getElementsByTagName("option")[x].value;

            //ajax запрос

            $(el).addClass('loading_icon');

            $.ajax({
                    type: 'POST',
                    url: 'ajax/update_object.php',
                    data: {
                        'object': 'user',
                        'values': {
                            'productid': productid,
                            'userid': {/literal}{$user->id}{literal},
                                'rowtype': 'supplys',
                                'supplys_amount': amount,
                                'supplys_pr': pr,
                                'status': 'z',
                                'author': '{/literal}{$m->login|escape}{literal}',
                            },
                            'session_id': '{/literal}{$smarty.session.id}{literal}'
                        },
                        success: function(msg) {

                            $(el).removeClass('loading_icon');
                            //alert('Заказ добавлен!');
                        },
                        dataType: 'json'
                    });

            var comment = "{/literal}{$m->login|escape}{literal} запросил цену в отдел закупок: " + prodname + " (" + amount + "ед.)" + "{/literal} для {$user->name|escape}{literal}";

                    $.ajax({
                    type: 'POST',
                    url: 'ajax/update_object.php',
                    data: {
                        'object': 'user',
                        'values': {
                            'productid': productid,
                            'userid': {/literal}{$user->id}{literal},
                            'rowtype': 'prodcomment',
                            'prodcomment': comment,
                            'author': '{/literal}{$m->login|escape}{literal}',
                        },
                        'session_id': '{/literal}{$smarty.session.id}{literal}'
                    },
                    success: function(msg) {
                      //alert('Комментарий добавлен!');
                      location.reload();

                    },
                    dataType: 'json'
                });

                return false;

            }

</script>
{/literal}

                            {literal}
                            <script>
                                function basketshow() {

                                    var e = document.getElementById("upbasket");
                                    if (e.style.display == 'block') e.style.display = 'none';
                                    else e.style.display = 'block';

                                }
                            </script>{/literal} {literal}
                            <script>
                                function morecomments(id) {

                                    var id2 = id + "last-comments-hidden"

                                    var e = document.getElementById(id2);
                                    if (e.style.display == 'block') e.style.display = 'none';
                                    else e.style.display = 'block';

                                }
                            </script>{/literal}
                            {literal}
                            <script>
                                function z(id, zakupka) {
                                    var i0 = parseFloat(document.getElementById(id).getElementsByTagName('input')[0].value);
                                    var z = parseFloat(zakupka);
                                    var result = ((i0 - z) / z) * 100;
                                    document.getElementById(id).getElementsByTagName('input')[1].value = result;
                                }
                            </script>
                            <script>
                                function summa_ot_procenta(id, zakupka) {

                                    var i0 = parseFloat(document.getElementById(id).getElementsByTagName('input')[1].value);
                                    var z = parseFloat(zakupka);
                                    //var result = ((z / 100) * i0);
                                    var result = ((z / 100) * i0) + z;
                                    document.getElementById(id).getElementsByTagName('input')[0].value = result;
                                }
                            </script>
                            <script>
                                function s(id, zakupka) {
                                    var i0 = parseFloat(document.getElementById(id).getElementsByTagName('input')[0].value);
                                    //alert(i0);
                                    var z = parseFloat(zakupka);
                                    var result = ((i0 - z) / z) * 100;
                                    result = result.toPrecision(5)
                                    document.getElementById(id).getElementsByTagName('input')[1].value = result;
                                }
                            </script>{/literal}