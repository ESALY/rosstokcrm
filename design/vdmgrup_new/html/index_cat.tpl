<!DOCTYPE html>
<html>

<head>
<!--Содержимое head-->{include file='inc_head.tpl'}<!--Содержимое head-->
</head>
<body class="is not-js main">

{literal}
<script>
            if ('ontouchstart' in document.documentElement)
                document.body.className += ' isTouch';
            else
                document.body.className += ' notTouch';
        </script> 
<script>
    var langs = new Object();
        function lang(value) {
            return  langs[value];
        }
    
</script>{/literal}

<!--Шаблоны-->
<div class="main-body">
    <div class="fon-header">
        <!--Шапка-->{include file='block_header.tpl'}<!--Шапка-->
        <!--Меню-->{include file='block_menu.tpl'}<!--Меню-->
        <!-- Основная часть -->{$content}<!-- основная часть -->
        <div class="h-footer" data-mq-prop="height" data-mq-prop-pool="height" data-mq-elem-pool="footer" style="height: 134px;"></div>
    </div>
    <!-- низ для главной страницы -->{include file='block_footer.tpl'}<!-- низ для главной страницы -->
    <!-- тулбар -->{include file='block_toolbar.tpl'}<!-- тулбар -->
<!--Шаблоны-->


<!--Всякая хрень-->{include file='inc_bottom.tpl'}<!--Всякая хрень-->
</body>
</html>
