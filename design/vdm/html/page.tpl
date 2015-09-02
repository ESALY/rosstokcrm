{* Шаблон текстовой страницы *}

{include file='slider.tpl'}

<table style=" height: 140px; width: 765px; background: url(http://fusion.ru/sites/all/themes/a2basic/images/bg-footer-2.png); background-position-x: -20px; background-position-y: -5px; border-radius: 0px 0px 10px 10px;" border="0" cellpadding="5" cellspacing="5"><tbody><tr style="vertical-align: top;"><td><div style="  padding: 10px;  width: 230px;  word-wrap: break-word;"><img src="/files/uploads/fms_02.png" width="30" height="35" style="margin-right: 10px;"><a href="/prodazha-so-sklada">ПРОДАЖА СО СКЛАДА</a><br><p style="
    margin-top: 15px;
    margin-left: 15px;
    color: #CCCCCC;  font-size: 12px;  text-shadow: -1px -1px 0 rgba(0, 0, 0, 0.3);
">В разделе "Интернет-Магазин" можно быстро найти, подобрать, сравнить различные товары со склада.</p><div id="b002"><a href="/katalog/avtomobilnaya-tekhnika" <="" a=""></a></div></div></td><td><div style="  padding: 10px;  width: 230px;  word-wrap: break-word;"><img src="/files/uploads/fms_01.png" width="30" height="35" style="margin-right: 10px;"><a href="/proizvodstvo">ПРОИЗВОДСТВО</a><br><p style="margin-top: 15px;margin-left: 15px;color: #CCCCCC;  font-size: 12px;  text-shadow: -1px -1px 0 rgba(0, 0, 0, 0.3);">Мы оперативно и качественно изготовим коробки по вашим размер от 1 шт. за 1-24 часа</p></div></td><td><div style="width: 230px;  padding: 10px;word-wrap: break-word;"><img src="/files/uploads/fms_03.png" width="30" height="35" style="margin-right: 10px;"><a href="/uslugi">УСЛУГИ</a><br><p style="margin-top:15px;margin-left:15px;color: #CCCCCC;  font-size: 12px;  text-shadow: -1px -1px 0 rgba(0, 0, 0, 0.3);">Наши услуги помогут Вам решить различные задачи, экономя Ваше время и деньги</p></div></td></tr></tbody></table>

<!-- Заголовок страницы -->
<h1 data-page="{$page->id}">{$page->header|escape}</h1>

<!-- Тело страницы -->
{$page->body}
