<?php /* Smarty version Smarty-3.1.18, created on 2015-07-20 09:41:50
         compiled from "simpla/design/html/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:792413905406d4bbc515f1-70290018%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ed9b81a965719284d5b47a929b4c7464c4e8baa7' => 
    array (
      0 => 'simpla/design/html/index.tpl',
      1 => 1436345158,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '792413905406d4bbc515f1-70290018',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5406d4bbda9353_73859337',
  'variables' => 
  array (
    'meta_title' => 0,
    'm' => 0,
    'config' => 0,
    'content' => 0,
    'settings' => 0,
    'manager' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5406d4bbda9353_73859337')) {function content_5406d4bbda9353_73859337($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">
<title><?php echo $_smarty_tpl->tpl_vars['meta_title']->value;?>
</title>
<link rel="icon" href="design/images/favicon.ico" type="image/x-icon">
<link href="design/css/style.css" rel="stylesheet" type="text/css" />
<link href="design/css/hmenu.css" rel="stylesheet" type="text/css" />
<link href="/css/rostokcrm.css" rel="stylesheet" type="text/css" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="design/js/jquery/jquery.form.js"></script>
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>


<link rel="stylesheet" href="http://mbraak.github.com/jqTree/jqtree.css">
<script src="//mbraak.github.io/jqTree/tree.jquery.js"></script>

<link rel="stylesheet" href="jstree/themes/default/style.min.css" />
<script src="jstree/jstree.min.js"></script>


<script data-jsfiddle="common" src="handsonetable/jquery.handsontable.full.js"></script>
<link data-jsfiddle="common" rel="stylesheet" media="screen" href="handsonetable/jquery.handsontable.full.css">


<!-- latest -->
<link rel="stylesheet" href="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.min.css" />
<script src="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>


<link rel="stylesheet" href="//cdn.jsdelivr.net/qtip2/2.2.1/jquery.qtip.min.css" />
<script src="//cdn.jsdelivr.net/qtip2/2.2.1/jquery.qtip.min.js"></script>

<link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="/css/buttons.css">
<script type="text/javascript" src="/js/buttons.js"></script>
<script type="text/javascript" src="/js/noty/packaged/jquery.noty.packaged.min.js"></script>


<link rel="stylesheet" href="/css/pure-min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">

<!--[if lte IE 8]>
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/grids-responsive-old-ie-min.css">
<![endif]-->
<!--[if gt IE 8]><!-->
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/grids-responsive-min.css">
<!--<![endif]-->


<script src="design/js/jquery.autosize.js"></script>

<script>
			$(function(){
				$('.autosize-normal').autosize();
				$('.autosize-animated').autosize();
			});
</script>



<script type="text/javascript">
$(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 200) $('#scrollup').fadeIn();
        else                           $('#scrollup').fadeOut(400);
    });
    $('#scrollup').click(function () {
        $('body,html').animate({
             scrollTop: 0
    }, 800);
        return false;
    });
});
</script>

</head>
<body>

<ul class="h-menu">



    <li><a href="index.php">ROSSTOK (<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['m']->value->login, ENT_QUOTES, 'UTF-8', true);?>
)</a></li>
    
    
    <li><a  href="index.php?module=UsersAdmin">Покупатели</a></li>
    <li><a  href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0][0]->url_modifier(array('module'=>'SupplysAdmin','status'=>'new','productid'=>null,'isupplier'=>null),$_smarty_tpl);?>
">Закупки</a></li>
    <li><a  href="index.php?module=DocsAdmin">Документы</a></li>
    
    
    
    
    
    <li><a  href="index.php?module=ThemeAdmin">Дизайн</a></li>
    <li><a  href="index.php?module=SettingsAdmin">Настройки</a></li>
    
    <li><a href="<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
?logout">Выйти из системы</a></li>
    
    
</ul>
<!--navigation@-->
<!--Боковое меню-->
<input type="checkbox" class="side-menu-handler" id="sideMenuHandler">


<div class='side-menu'>
    <label class='side-menu-separator'></label>

			<label class='side-menu-item' for="sideMenuHandler"><a href="index.php?module=ProductsAdmin"><img src="design/images/menu/catalog.png"><br>Каталог</a></label>

			<label class='side-menu-item' for="sideMenuHandler">
			<a href="index.php?module=OrdersAdmin"><img src="design/images/menu/orders.png"><br>Заказы</a>
			<div class="counter"><span>2</span></div>		</label>

			<label class='side-menu-item' for="sideMenuHandler"><a href="index.php?module=UsersAdmin"><img src="design/images/menu/users.png"><br>Покупатели</a></label>

			<label class='side-menu-item' for="sideMenuHandler"><a href="index.php?module=UsersAdmin"><img src="design/images/menu/users.png"><br>Поставщики</a></label>

			<label class='side-menu-item' for="sideMenuHandler"><a href="index.php?module=PagesAdmin"><img src="design/images/menu/pages.png"><br>Страницы</a></label>

			<label class='side-menu-item' for="sideMenuHandler"><a href="index.php?module=BlogAdmin"><img src="design/images/menu/blog.png"><br>Блог</a></label>

			<label class='side-menu-item' for="sideMenuHandler"><a href="index.php?module=CommentsAdmin"><img src="design/images/menu/comments.png"><br>Комментарии</a>
		</label>

			<label class='side-menu-item' for="sideMenuHandler"><a href="index.php?module=ImportAdmin"><img src="design/images/menu/wizards.png"><br>Автоматизация</a></label>

			<label class='side-menu-item' for="sideMenuHandler"><a href="index.php?module=ThemeAdmin"><img src="design/images/menu/design.png"><br>Дизайн</a></label>

			<label class='side-menu-item' for="sideMenuHandler"><a href="index.php?module=SettingsAdmin"><img src="design/images/menu/settings.png"><br>Настройки</a></label>

</div>
<script>$('.side-menu-item').on('click', function() {
    $('.result text').html($(this).html());
});
</script>





<!-- Верхняя-панель-поиск__скрипт-->

<script>
	$(document).ready(function() {
    $("#field").keyup(function() {
        $("#x").fadeIn();
        if ($.trim($("#field").val()) == "") {
            $("#x").fadeOut();
        }
    });

    $("#x").click(function() {
        $("#field").val("");
        $(this).hide();
    });
});
</script>


<a href='<?php echo $_smarty_tpl->tpl_vars['config']->value->root_url;?>
' class='admin_bookmark'></a>

<!-- Вся страница -->
<div id="main">
	<!-- Главное меню -->
	<div class="main-inner">


	<!-- Таб меню -->
	<?php if (Smarty::$_smarty_vars['capture']['tabs']) {?>
	<ul class="pure-menu pure-menu-open pure-menu-horizontal hmenu2">
		<?php echo Smarty::$_smarty_vars['capture']['tabs'];?>

	</ul>
	<?php }?>
	<!-- Таб меню (The End)-->



	<!-- Основная часть страницы -->
	<div id="middle">
	<div id="middle-inner-">

		<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

	</div>
	</div>
	<!-- Основная часть страницы (The End) -->

	<!-- Подвал сайта -->
	
	<!-- Подвал сайта (The End)-->
<div id="scrollup">
 <i class="fa fa-angle-up"></i>
</div>
</div></div>
<!-- Вся страница (The End)-->

</body>
</html>


<?php if ($_smarty_tpl->tpl_vars['settings']->value->pz_server&&$_smarty_tpl->tpl_vars['settings']->value->pz_phones[$_smarty_tpl->tpl_vars['manager']->value->login]) {?>
<script src="design/js/prostiezvonki/prostiezvonki.min.js"></script>
<script>
var pz_type = 'simpla';
var pz_password = '<?php echo $_smarty_tpl->tpl_vars['settings']->value->pz_password;?>
';
var pz_server = '<?php echo $_smarty_tpl->tpl_vars['settings']->value->pz_server;?>
';
var pz_phone = '<?php echo $_smarty_tpl->tpl_vars['settings']->value->pz_phones[$_smarty_tpl->tpl_vars['manager']->value->login];?>
';

function NotificationBar(message)
{
	ttop = $('body').height()-110;
	var HTMLmessage = "<div class='notification-message' style='  text-align:center; line-height: 40px;'> " + message + " </div>";
	if ($('#notification-bar').size() == 0)
	{
		$('body').prepend("<div id='notification-bar' style='-moz-border-radius: 5px 5px 5px 5px; -webkit-border-radius: 5px 5px 5px 5px; display:none;  height: 40px; padding: 20px; background-color: #fff; position: fixed; top:"+ttop+"px; right:30px; z-index: 100; color: #000;border: 1px solid #cccccc;'>" + HTMLmessage + "</div>");
	}
	else
    {
    	$('#notification-bar').html(HTMLmessage);
    }
    $('#notification-bar').slideDown();
}

$(window).on("blur focus", function (e) {
    if ($(this).data('prevType') !== e.type) {
        $(this).data('prevType', e.type);

        switch (e.type) {
        case 'focus':
            if (!pz.isConnected()) {
				pz.connect({
				            client_id: pz_password,
				            client_type: pz_type,
				            host: pz_server
				});
            }
            break;
        }
    }
});

$(function() {
	// Простые звонки
	pz.setUserPhone(pz_phone);
	pz.connect({
                client_id: pz_password,
                client_type: pz_type,
                host: pz_server
	});
    pz.onConnect(function () {
        $(".ip_call").addClass('phone');
    });
    pz.onDisconnect(function () {
        $(".ip_call").removeClass('phone');
    });

    $(".ip_call").click( function() {
        var phone = $(this).attr('data-phone').trim();
        pz.call(phone);
        return false;
    });

    pz.onEvent(function (event) {
        if (event.isIncoming()) {
			$.ajax({
				type: "GET",
				url: "ajax/search_orders.php",
				data: { keyword: event.from, limit:"1"},
				dataType: 'json'
			}).success(function(data){
				if(event.to == pz_phone)
				if(data.length>0)
				{
					NotificationBar('<img src="design/images/phone_sound.png" align=absmiddle> Звонит <a href="index.php?module=OrderAdmin&id='+data[0].id+'">'+data[0].name+'</a>');
				}
				else
				{
					NotificationBar('<img src="design/images/phone_sound.png" align=absmiddle> Звонок с '+event.from+'. <a href="index.php?module=OrderAdmin&phone='+event.from+'">Создать заказ</a>');
				}
			});
        }
    });

});
</script>
<?php }?>


<script>
$(function() {

	if($.browser.opera)
		$("#logout").hide();

	$("#logout").click( function(event) {
		event.preventDefault();

		if($.browser.msie)
		{
			try{document.execCommand("ClearAuthenticationCache");}
			catch (exception){}
			window.location.href='/';
		}
		else
		{
			$.ajax({
				url: $(this).attr('href'),
				username: '',
				password: '',
				complete: function () {
					window.location.href='/';
				},
				beforeSend : function(req) {
					req.setRequestHeader('Authorization', 'Basic');
				}
			});
		}
	});


});
</script>
<?php }} ?>
