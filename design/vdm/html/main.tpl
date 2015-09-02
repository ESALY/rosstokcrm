{* Главная страница магазина *}

{* Для того чтобы обернуть центральный блок в шаблон, отличный от index.tpl *}
{* Укажите нужный шаблон строкой ниже. Это работает и для других модулей *}
{$wrapper = 'index.tpl' scope=parent}
{include file='slider.tpl'}

<table style="height: 140px; width: 765px;    border-radius: 10px 10px 10px 10px;background: url(/files/uploads/lback.png)white;background-position-y: -57px;" border="0" cellpadding="5" cellspacing="5"><tbody><tr style="vertical-align: top;"><td><div style="padding: 10px; width: 230px; word-wrap: break-word;"><img src="/files/uploads/sh.jpg" width="230"></div><div style=" width: 230px; word-wrap: break-word; text-align: center; margin-top: 15px;"><a href="/prodazha-so-sklada" style="
    font-size: 16px;
    font-weight: bold;
">Магазин "ВСЕ ДЛЯ МЕБЕЛИ</a></div><div style="padding: 10px; width: 230px; word-wrap: break-word;"><p style="margin-top: 15px; margin-left: 15px;  font-size: 13px; margin-bottom: 10px;">Магазин мебельной фурнитуры, комплектующих и аксессуаров в г.Кузнецке. Гибкая ценовая политика, качественный сервис, сотрудничество с известными производителями - вот основные критерии нашего бизнеса.</p><div id="b002"></div></div></td><td><div style="padding: 10px; width: 230px; word-wrap: break-word;"><img src="/files/uploads/dek.jpg" width="230"></div><div style=" width: 230px; word-wrap: break-word; text-align: center; margin-top: 15px;"><a href="/proizvodstvo" style="
    font-size: 16px;  font-weight: bold;
">Производство столешниц</a></div><div style="padding: 10px; width: 244px; word-wrap: break-word;"><p style="margin-top: 15px; margin-left: 15px;  font-size: 13px; ">по технологии постформирования ( U / R9 ) с влагозащитным швом, обработанным полиуретановым клеем. Фронтальная сторона столешниц облицовывается специальным HPL- пластиком известных производителей, таких как "ARCOBALENO" и "ARPA".</p></div></td><td><div style="width: 230px; padding: 10px; word-wrap: break-word;"><img src="/files/uploads/meb.jpg" width="230"></div><div style="width: 230px;  word-wrap: break-word; text-align: center;margin-top: 15px;"><a href="/uslugi" style="
    font-size: 16px;  font-weight: bold;
">Мебельная фабрика "АDАШ"</a></div><div style="width: 230px; padding: 10px; word-wrap: break-word;"><p style="margin-top: 15px; margin-left: 15px;  font-size: 13px; ">Одно из крупных конкурентоспособных предприятий города Кузнецка с квалифицированным персоналом и новейшим высокотехнологичным производственным оборудованием.</p></div></td></tr></tbody></table>
{* Тело страницы *}
{$page->body}



{* Рекомендуемые товары *}
{get_featured_products var=featured_products}
{if $featured_products}
<!-- Список товаров-->


{/if}


