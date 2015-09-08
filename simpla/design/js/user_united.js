//Функция для отправки выделенных строк в заказ


//Добавляем заказ в таблицу internal orders
function makeiorder(el, id, prodname, status) {
    //alert  (777);
    var productid = id;
    var id = 'tobasket' + id;

    var amount = document.getElementById(id).getElementsByTagName('input')[0].value;

    var srokispol = document.getElementById(id).getElementsByTagName('input')[1].value;
    var tsenaprod = document.getElementById(id).getElementsByTagName('input')[2].value;
    var commentariy = document.getElementById(id).getElementsByTagName('input')[3].value;

    alert  (amount);
    alert  (srokispol);
    alert  (tsenaprod);
    alert  (commentariy);

    //var author = '{/literal}{$m->login|escape}{literal}';

    //var username = '{/literal}{$user->name}{literal}';
}

function getproduct() {
    alert  (777);
}

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

