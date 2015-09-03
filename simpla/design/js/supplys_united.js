
// Create the tooltips only when document ready
 $(document).ready(function()
 {
    //Дата
    //yesterdayString
    var todayTimeStamp = +new Date; // Unix timestamp in milliseconds
var oneDayTimeStamp = 1000 * 60 * 60 * 24; // Milliseconds in a day
var diff = todayTimeStamp - oneDayTimeStamp;
var yesterdayDate = new Date(diff);
window.yesterdayString = yesterdayDate.getFullYear() + '-' + (yesterdayDate.getMonth() + 1) + '-' + yesterdayDate.getDate();
    //Дата@

//Scrolling test
//Извлекаем параметр из ссылки
var prodId = getParameterByName('productid');
goToByScroll(prodId);

//Получаем валюты
//get_corrency();

 });


 //Popup menu

$("#popup").click(function () {
    var el = $("#bubble-top")[0];
    toggle(el);
        $(el).offset({
        top: 0,
        left: 0
    });
    var offset = $(this).offset();
    var width = $(this).innerWidth();
    var height = $(this).innerHeight();
    var elwidth = $(el).innerWidth();
    var elheight = $(el).innerHeight();
    var elleft = (offset.left) + (width / 2) - (elwidth / 2);
    var eltop = offset.top + height + 25;
    $(el).offset({
        top: eltop,
        left: elleft
    });
});


//Функция для поиска параметров url
//Usage:
//var prodId = getParameterByName('prodId');

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

//scroll
    function goToByScroll(id){
        //находим строку
        $(".supplys-content-scroll").mCustomScrollbar('scrollTo',$('.supplys-content-scroll').find('.mCSB_container').find('#'+id));
        //выделяем строку
        el = document.getElementById(id);
        HighLightTR(el,'rgb(255, 255, 204)','cc3333');
    }

//Правильные show/hide/toggle
//author
//source http://javascript.ru/ui/show-hide-toggle

function getRealDisplay(elem) {
    if (elem.currentStyle) {
        return elem.currentStyle.display
    } else if (window.getComputedStyle) {
        var computedStyle = window.getComputedStyle(elem, null)

        return computedStyle.getPropertyValue('display')
    }
}

function hide(el) {
    if (!el.getAttribute('displayOld')) {
        el.setAttribute("displayOld", el.style.display)
    }

    el.style.display = "none"
}

displayCache = {}

function isHidden(el) {
    var width = el.offsetWidth,
        height = el.offsetHeight,
        tr = el.nodeName.toLowerCase() === "tr"

    return width === 0 && height === 0 && !tr ? true : width > 0 && height > 0 && !tr ? false : getRealDisplay(el)
}

function toggle(el) {
    isHidden(el) ? show(el) : hide(el)
}


function show(el) {

    if (getRealDisplay(el) != 'none') return

    var old = el.getAttribute("displayOld");
    el.style.display = old || "";

    if (getRealDisplay(el) === "none") {
        var nodeName = el.nodeName,
            body = document.body,
            display

        if (displayCache[nodeName]) {
            display = displayCache[nodeName]
        } else {
            var testElem = document.createElement(nodeName)
            body.appendChild(testElem)
            display = getRealDisplay(testElem)

            if (display === "none") {
                display = "block"
            }

            body.removeChild(testElem)
            displayCache[nodeName] = display
        }

        el.setAttribute('displayOld', display)
        el.style.display = display
    }
}
//Правильные show/hide/toggle@

//Popupmenu@


function export_to_excel() {
    //var products_json = {document.getElementById("products_json").value};
    alert (JSON.stringify(products_json));
}



$( document ).ready(function() {
    get_cat_tree();

    });

    function get_product(el, status) {

         window.productid = ($(el).attr('id'));

        //выделяем строку
        HighLightTR(el,'rgb(255, 255, 204)','cc3333');

        //Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/get_supplys_product_in.php',
        data: {
            'status': status,
            'productid': productid,
        },
        //если все удачно возвращаем message
        success: function (data) {
            get_product_json_render(data);
            //alert (data);
        },

        dataType: 'json'
    });

    return false;

    }

    //отображаем json данные в таблице
function get_product_json_render(items){

$table  = "<h1>" + items[0].product + "</h1>";

$table  += "<table  class='pure-table pure-table-bordered'><thead><tr><th>Дата отправки</th><th>Отвественный</th><th>Покупатель</th><th>Количество</th><th>Утв. цена</th><th>Дата прихода</th><th>Внутр закупщик</th><th>Статус</th></tr></thead><tbody>"

for (var i = 0; i < items.length; i++) {

    var it = items[i];
$table += '<tr id="' + items[i].id + '"onclick="select_in_row(this);"> ';
$table += '<td>';
$table += items[i].date;
$table += '</td>';
$table += '<td>';
$table += items[i].manager;
$table += '</td>';
$table += '<td>';
$table += items[i].user;
$table += '</td>';
$table += '<td>';
$table += items[i].supplys_amount;
$table += '</td>';

$table += '<td>';
$table += items[i].utv_p + '(' + items[i].utv_per + '%)';
$table += '</td>';

$table += '<td>';
$table += "<input type='text' id='datepicker8437' itemid='8437' class='rus-forms-elastic-input hasDatepicker' name='PrihodDate' placeholder='Дата отгрузки' value='21.11.2014'>";
$table += '</td>';
$table += '<td>';

$table += '</td>';
$table += '<td>';
$table += "<select id='product' class='rus-forms-elastic-input' onchange='change_status(this,7777)'><option value='all' selected='selected'>Все</option><option value='new'>Новые</option><option value='on'>В заявке</option><option value='2'>На утверждение</option><option value='3'>Утверждено</option><option value='4'>Заказано</option><option value='5'>Отгружено у поставщика</option><option value='ok'>На складе</option><option value='7'>Отгружено покупателю</option><option value='del'>Удаленные</option></select>";
$table += '</td>';
$table += '</tr>';

}

$table += '</tbody></table>';

var div = '#supplys-in';
$(div).html($table);

//Поставщики
get_supplys();

}

    function get_supplys() {

        //Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/get_supplys_product_s.php',
        data: {
            'productid': productid,
        },
        //если все удачно возвращаем message
        success: function (data) {
            supplys_json_render(data);
        },

        dataType: 'json'
    });

    return false;

    }



//Поставщики
function supplys_json_render(items){

    $table  = "<h1>Поставщики</h1>";

    $table += '<table class="pure-table pure-table-bordered" style="width: 100%;">';

    $table += '<thead>';
    $table += '<tr>';

    $table += '<th>';
    $table += 'Поставщик';
    $table += '</th>';

    $table += '<th>';
    $table += 'Наименование';
    $table += '</th>';

    $table += '<th>';
    $table += 'Арт';
    $table += '</th>';

    $table += '<th>';
    $table += 'Цена';
    $table += '</th>';

    $table += '<th>';
    $table += 'Комм.';
    $table += '</th>';

    $table += '</tr>';
    $table += '</thead>';

    $table += '<tbody>';
    //----------------------------------------1------------------------------------------------
    $table += '<tr>';

    $table += '<td>';
    $table += '<div id="supplier1" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.supplier1 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="prod1" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.prod1 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="art1" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.art1 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="price1" contenteditable="true"  timestamp="1" onkeyup="update_product_supplier(this)">' + items.price1 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="contacts1" contenteditable="true" timestamp="1" onkeyup="update_product_supplier(this)">' + items.contacts1 + '</div>';
    $table += '</td>';


    $table += '</tr>';
    //----------------------------------------2------------------------------------------------
    $table += '<tr>';

    $table += '<td>';
    $table += '<div id="supplier2" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.supplier2 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="prod2" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.prod2 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="art2" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.art2 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="price2" contenteditable="true"  timestamp="1" onkeyup="update_product_supplier(this)">' + items.price2 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="contacts2" contenteditable="true" timestamp="1" onkeyup="update_product_supplier(this)">' + items.contacts2 + '</div>';
    $table += '</td>';


    $table += '</tr>';
    //----------------------------------------3------------------------------------------------
    $table += '<tr>';

    $table += '<td>';
    $table += '<div id="supplier3" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.supplier3 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="prod3" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.prod3 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="art3" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.art3 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="price3" contenteditable="true"  timestamp="1" onkeyup="update_product_supplier(this)">' + items.price3 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="contacts3" contenteditable="true" timestamp="1" onkeyup="update_product_supplier(this)">' + items.contacts3 + '</div>';
    $table += '</td>';


    $table += '</tr>';
    //----------------------------------------4------------------------------------------------
    $table += '<tr>';

    $table += '<td>';
    $table += '<div id="supplier4" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.supplier4 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="prod4" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.prod4 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="art4" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.art4 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="price4" contenteditable="true"  timestamp="1" onkeyup="update_product_supplier(this)">' + items.price4 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="contacts4" contenteditable="true" timestamp="1" onkeyup="update_product_supplier(this)">' + items.contacts4 + '</div>';
    $table += '</td>';


    $table += '</tr>';
    //----------------------------------------5------------------------------------------------
    $table += '<tr>';

    $table += '<td>';
    $table += '<div id="supplier5" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.supplier5 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="prod5" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.prod5 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="art5" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.art5 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="price5" contenteditable="true"  timestamp="1" onkeyup="update_product_supplier(this)">' + items.price5 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="contacts5" contenteditable="true" timestamp="1" onkeyup="update_product_supplier(this)">' + items.contacts5 + '</div>';
    $table += '</td>';


    $table += '</tr>';
    //----------------------------------------6------------------------------------------------
    $table += '<tr>';

    $table += '<td>';
    $table += '<div id="supplier6" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.supplier6 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="prod6" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.prod6 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="art6" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.art6 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="price6" contenteditable="true"  timestamp="1" onkeyup="update_product_supplier(this)">' + items.price6 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="contacts6" contenteditable="true" timestamp="1" onkeyup="update_product_supplier(this)">' + items.contacts6 + '</div>';
    $table += '</td>';


    $table += '</tr>';
    //----------------------------------------7------------------------------------------------
    $table += '<tr>';

    $table += '<td>';
    $table += '<div id="supplier7" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.supplier7 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="prod7" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.prod7 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="art7" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.art7 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="price7" contenteditable="true"  timestamp="1" onkeyup="update_product_supplier(this)">' + items.price7 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="contacts7" contenteditable="true" timestamp="1" onkeyup="update_product_supplier(this)">' + items.contacts7 + '</div>';
    $table += '</td>';


    $table += '</tr>';
    //----------------------------------------8------------------------------------------------
    $table += '<tr>';

    $table += '<td>';
    $table += '<div id="supplier8" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.supplier8 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="prod8" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.prod8 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="art8" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.art8 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="price8" contenteditable="true"  timestamp="1" onkeyup="update_product_supplier(this)">' + items.price8 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="contacts8" contenteditable="true" timestamp="1" onkeyup="update_product_supplier(this)">' + items.contacts8 + '</div>';
    $table += '</td>';


    $table += '</tr>';
    //----------------------------------------9------------------------------------------------
    $table += '<tr>';

    $table += '<td>';
    $table += '<div id="supplier9" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.supplier9 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="prod9" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.prod9 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="art9" contenteditable="true" onkeyup="update_product_supplier(this)">' + items.art9 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="price9" contenteditable="true"  timestamp="1" onkeyup="update_product_supplier(this)">' + items.price9 + '</div>';
    $table += '</td>';

    $table += '<td>';
    $table += '<div id="contacts9" contenteditable="true" timestamp="1" onkeyup="update_product_supplier(this)">' + items.contacts9 + '</div>';
    $table += '</td>';


    $table += '</tr>';
    $table += '</tbody>';

    $table += '</table>';

    $('#supplys-in').append($table);
}

function select_in_row(el){
    //alert ('test');
}

//Обновление ячеек поставщиков
function update_product_supplier(el){
    var cell = $(el).attr('id');
    var cellval = $(el).text();
    var session_id = $('#session_id').val();
    var timestamp = $(el).attr('timestamp');
    var productid = getParameterByName('productid');

    //Add timestamp
    if (!cellval){
        } else {
        if (timestamp ==1) {
        cellval = cellval + " (" + yesterdayString + ")";
        }
    }

    //alert(cell);
    //alert(cellval);
    //alert(productid);
    //alert(session_id);

     //Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/update_object.php',
        data: {
            'object': 'update_product_supplier',
            'id': productid,
            'cell': cell,
            'cellval': cellval,
            'session_id': session_id
        },
        //если все удачно возвращаем message
        success: function (msg) {
            //alert (msg);
            //location.reload();

        },
        dataType: 'json'
    });

    return false;
}

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
                dateFormat: 'dd.mm.yy',
                firstDay: 1,
                isRTL: false,
                showMonthAfterYear: false,
                yearSuffix: ''};
        $.datepicker.setDefaults($.datepicker.regional['ru']);
  });

    $('[name="PrihodDate"]').change(function () {

       var id = $(this).attr('itemid');
       var prihod = $(this).val();
       update_prihod(id, prihod)

   });

    function update_prihod(id, prihod) {

     var session_id = $('#session_id').val();

     //Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/update_object.php',
        data: {
            'object': 'change_supplys_status',
            'id': id,
                'values': {
                'prihod': prihod,
            },
                'session_id': session_id
        },
        //если все удачно возвращаем message
        success: function (msg) {

            //location.reload();

        },
        dataType: 'json'
    });

    return false;

    }


function get_cat_tree() {

//Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/get_cat_tree.php',
        data: {
            'object': 0,
                'values': {
                'id': 0,
            },
        },
        //если все удачно возвращаем message
        success: function (msg) {

        $('#tree1').tree({
        data: msg
        });

        },
        dataType: 'json'
    });

    return false;

}

//Меняем статус
function change_status(el, id) {

     var status = $(el).val();
     var session_id = $('#session_id').val();

     //Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/update_object.php',
        data: {
            'object': 'change_supplys_status',
            'id': id,
                'values': {
                'status': status,
            },
                'session_id': session_id
        },
        //если все удачно возвращаем message
        success: function (msg) {

            //удаляем строку
            $("#"+id).remove();
            location.reload();

        },
        dataType: 'json'
    });

    return false;

    }

//Внутреннего закупщика
function change_isupplier(el, id) {

     var isupplier = $(el).val();
     var session_id = $('#session_id').val();

     //Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/update_object.php',
        data: {
            'object': 'change_isupplier',
            'id': id,
                'values': {
                'isupplier': isupplier,
            },
                'session_id': session_id
        },
        //если все удачно возвращаем message
        success: function (msg) {
            location.reload();

        },
        dataType: 'json'
    });

    return false;

    }

    //Добавляем поставщика к заказу
function add_supplier(el, id) {

     var supplier = $(el).val();
     var session_id = $('#session_id').val();

     //Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/update_object.php',
        data: {
            'object': 'add_supplier',
                'values': {
                'rowtype': 'ssupplier',
                'ssupplier': supplier,
                'ssupplierid': id,
            },
                'session_id': session_id
        },
        //если все удачно возвращаем message
        success: function (msg) {
            location.reload();

        },
        dataType: 'json'
    });

    return false;

    }

    //Фильтр для Внутреннего закупщика
    function filter_isupplier(el) {

        window.location.href =  $(el).val();

    }

        //Фильтр для Внутреннего закупщика
    function filter_users(el) {

        window.location.href =  $(el).val();

    }

    //Работа с чекбоксами товаров
//-----------------------------------------------------------------

//Глобальная переменная для выделенных строк
ids = Array();
//Чекбоксы
checkboxes = $('#products :input[type=checkbox]');
//Контейнер для вывода инф о выделенных
selectedinf = $("#selected-products");

//Выделить все чекбоксы
function selectall(el) {
    //Отмечаем все чекбоксы
    $(checkboxes).each(function () {
        $(this).attr('checked', 'checked');
    })
    //Читаем чекбоксы
    select(this);
}

//Снять выделения
function unselectall(el) {
    //Снимаем галочки в чекбоксах
    $(checkboxes).each(function () {
        $(this).removeAttr('checked');
    })
    //Читаем чекбоксы
    select(this);
}

//Функция для пересчета всех чекбоксов и вывода атрибутов для отмечанных
function select(el) {
    //Очищаем массив
    ids = [];
    //переменная для списка
    $(checkboxes).each(function () {
        var sThisVal = (this.checked ? "1" : "0");
        //проверяем чекбокс, если отмечен то выводим атрибут
        if (this.checked) {
            //определяем атрибут
            var id = $(this).attr('id');
            //добавляем элементы в массив
            ids.push(id);
        }
    })

    //Считаем выделенные
    selectedcount(selectedinf, ids);

    //Проверяем есть ли что нибудь массиве
    if (ids.length > 0) {
        //Если в массиве что то есть
        //alert(JSON.stringify(ids));
    } else {
        //Массив пуст
    }
}

//Обработка события при нажатии на чекбокс
$(checkboxes).on("click", function () {
    //Читаем чекбоксы
    select(this);
});

//Подсчитываем и выводим выделенные
function selectedcount(container, arr) {
    //Считаем выделенные
    if (arr.length > 0) {
        //Подсчитываем количество выделенных
        var text = 'Выделено ' + arr.length;
    } else {
        var text = '';
    }
    //Текст
    $(container).text(text);
}

//Экспортируем список товаров в excel
    function test() {
        //alert (JSON.stringify(ids));
        //Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/test.php',
        data: {
            'ids': JSON.stringify(ids),
        },
        //если все удачно возвращаем message
        success: function (data) {
            //supplys_json_render(data);
            //alert (JSON.stringify(data));
            window.location.href = 'files/export/заявка.xls';
        },

        dataType: 'json'
    });

    return false;

    }


//Rendring json
//alert (jsonStr);

//Работа с чекбоксами товаров@
//-----------------------------------------------------------------

//* шаблоны
//****************************************************************************************************


//Функция для отправки выделенных строк в заказ

function selectrow(el, userid, vid, name, price, amount, session_id) {

//Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/update_object.php',
        data: {
            'object': 'add_user_basket',
                'values': {
                'price': price,
                'name': name,
                'vid': vid,
                'amount': amount,
                'userid': userid,
            },
                'session_id': session_id
        },
        //если все удачно возвращаем message
        success: function (msg) {

        },
        dataType: 'json'
    });

    return false;

}


//Функции для работы с cookie

//записываем
function setCookie(name, value, options) {
  options = options || {};

  var expires = options.expires;

  if (typeof expires == "number" && expires) {
    var d = new Date();
    d.setTime(d.getTime() + expires*1000);
    expires = options.expires = d;
  }
  if (expires && expires.toUTCString) {
    options.expires = expires.toUTCString();
  }

  value = encodeURIComponent(value);

  var updatedCookie = name + "=" + value;

  for(var propName in options) {
    updatedCookie += "; " + propName;
    var propValue = options[propName];
    if (propValue !== true) {
      updatedCookie += "=" + propValue;
     }
  }

  document.cookie = updatedCookie;
}

//читаем
function getCookie(name) {
  var matches = document.cookie.match(new RegExp(
    "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
  ));
  return matches ? decodeURIComponent(matches[1]) : undefined;
}

//удаляем
function deleteCookie(name) {
  setCookie(name, "", { expires: -1 })
}



//Функция для добавления покупателя
function adduserinfo() {

//var per = document.getElementById(perinput).getElementsByTagName('input')[1].value;


var session_id = document.getElementById("session_id").value;

var id = document.getElementById("id").value;
var manager = document.getElementById("manager").value;
var name = document.getElementById("name").value;
var rukovoditel = document.getElementById("rukovoditel").value;
var rukovoditeltel = document.getElementById("rukovoditeltel").value;
var snab = document.getElementById("snab").value;
var snabtel = document.getElementById("snabtel").value;
var email = document.getElementById("email").value;
var site = document.getElementById("site").value;
var gorod = document.getElementById("gorod").value;
var adress = document.getElementById("adress").value;

var btnel = document.getElementById("btnel");
var btnel_text = document.getElementById("btnel").innerHTML;
var el = document.getElementById("statusicon");
var el_default = 'fa fa-paper-plane';
var el_process = 'fa fa-spinner fa-spin';

//Анимация для кнопок
$(el).removeClass(el_default);//удаляем старую иконку
$(el).addClass(el_process);//добавляем индикатор процесса
btnel.innerHTML = "Обновляю";//отображем текст на кнопке

//Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/update_object.php',
        data: {
            'object': 'useradd',
                'values': {
                'manager': manager,
                'name': name,
                'rukovoditel': rukovoditel,
                'rukovoditeltel': rukovoditeltel,
                'snab': snab,
                'snabtel': snabtel,
                'email': email,
                'site': site,
                'gorod': gorod,
                'adress': adress,
            },
                'session_id': session_id
        },
        //если все удачно возвращаем message
        success: function (msg) {
            sleep(2000);
            $(el).removeClass(el_process);//удаляем индикатор процесса
            $(el).addClass(el_default);//добавляем индикатор процесса
            btnel.innerHTML = btnel_text;//возвращаем текст на место

        },
        dataType: 'json'
    });

    return false;
}

//Функция для обновления информации о покупателе
function updateuserinfo() {

var venueInputs = document.getElementsByName("categories[]");

//var key = 0;

for (var key in venueInputs) {
    //var val = some_array [key];
    alert (key);
}

alert(venueInputs.length);

//var per = document.getElementById(perinput).getElementsByTagName('input')[1].value;

var session_id = document.getElementById("session_id").value;
var id = document.getElementById("id").value;
//var group_id = document.getElementById("group_id").value;
var manager = document.getElementById("manager").value;
var name = document.getElementById("name").value;
var rukovoditel = document.getElementById("rukovoditel").value;
var rukovoditeltel = document.getElementById("rukovoditeltel").value;
var snab = document.getElementById("snab").value;
var snabtel = document.getElementById("snabtel").value;
var email = document.getElementById("email").value;
var site = document.getElementById("site").value;
var gorod = document.getElementById("gorod").value;
var adress = document.getElementById("adress").value;
var comment = document.getElementById("comment").value;

var btnel = document.getElementById("btnel");
var btnel_text = document.getElementById("btnel").innerHTML;
var el = document.getElementById("statusicon");
var el_default = 'fa fa-paper-plane';
var el_process = 'fa fa-spinner fa-spin';

//Анимация для кнопок
$(el).removeClass(el_default);//удаляем старую иконку
$(el).addClass(el_process);//добавляем индикатор процесса
btnel.innerHTML = "Обновляю";//отображем текст на кнопке

//Ajax запрос в базу данных
    $.ajax({
        type: 'POST',
        url: 'ajax/update_object.php',
        data: {
            'object': 'userinfo',
            'id': id,
                'values': {
                'manager': manager,
                'name': name,
                'rukovoditel': rukovoditel,
                'rukovoditeltel': rukovoditeltel,
                'snab': snab,
                'snabtel': snabtel,
                'email': email,
                'site': site,
                'gorod': gorod,
                'adress': adress,
                'comment': comment,
            },
                'session_id': session_id
        },
        //если все удачно возвращаем message
        success: function (msg) {
            sleep(2000);
            $(el).removeClass(el_process);//удаляем индикатор процесса
            $(el).addClass(el_default);//добавляем индикатор процесса
            btnel.innerHTML = btnel_text;//возвращаем текст на место
        },
        dataType: 'json'
    });

    return false;
}

//Animation functions
function sleep(ms) {
    ms += new Date().getTime();
    while (new Date() < ms) {}
}

