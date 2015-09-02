<?php /* Smarty version Smarty-3.1.18, created on 2014-11-12 14:58:04
         compiled from "simpla/design/html/iorder.tpl" */ ?>
<?php /*%%SmartyHeaderCode:205056155954522a42ef5938-16959505%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '481f6f87c601aa4f0aa2668213f2ba87fd5912b3' => 
    array (
      0 => 'simpla/design/html/iorder.tpl',
      1 => 1415364336,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '205056155954522a42ef5938-16959505',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_54522a430c2fd8_69693283',
  'variables' => 
  array (
    'item' => 0,
    'manager' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54522a430c2fd8_69693283')) {function content_54522a430c2fd8_69693283($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/home/v/vdmgrup/rostokgroup.ru/public_html/Smarty/libs/plugins/modifier.date_format.php';
?>
<?php $_smarty_tpl->tpl_vars['meta_title'] = new Smarty_variable('Оформление нового заказа', null, 1);
if ($_smarty_tpl->parent != null) $_smarty_tpl->parent->tpl_vars['meta_title'] = clone $_smarty_tpl->tpl_vars['meta_title'];?>

<ul class="pure-menu pure-menu-open pure-menu-horizontal hmenu2">
		<li class="active"><a href="index.php?module=IordersAdmin"><i class="fa fa-arrow-left"></i> Назад в заказы</a>
</li>
	</ul>
<form method=post>
<div class="pure-g">
    <div class="pure-u-1-1">

    	<div class="iorders-wrap">

<input type="hidden" name="session_id" value="<?php echo $_SESSION['id'];?>
">
<h1>Новая заявка</h1>

    	<table class="pure-table pure-table-striped">
    <thead>
        <tr>
            <th>Цвет</th>
            <th>Изделие</th>
            <th>Количество</th>
            <th>Примечание</th>
            <th></th>
        </tr>
    </thead>
    <tbody id="iorders-order-tbody">
        <tr class="clonedInput">
            <td><select id="color" class="rus-forms-elastic-input" name="purchases[variant_id][<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
]">
<option value="null">Не выбрано</option>
<option value="1011 Белый">1011 Белый</option>
<option value="1012 Ваниль">1012 Ваниль</option>
<option value="">1014 Серый</option>
<option value="">1015 Черный</option>
<option value="">3022 Гранит сардинский светлый</option>
<option value="">3014 Мрамор Каррара</option>
<option value="">3011 Оникс бежевый</option>
<option value="">3012 Оникс желтый</option>
<option value="">3041 Гранит Гойя</option>
<option value="">2021 Корень вяза</option>
<option value="">3026 Оникс серый</option>
<option value="">4025 Камешки</option>
<option value="">2011 Клен Медисона</option>
<option value="">2013 Техасская сосна</option>
<option value="">2016 Каза Стрип</option>
<option value="">2018 Дуб</option>
<option value="">2020 Ольха</option>
<option value="">2024 Орех</option>
<option value="">2025 Грецкий орех</option>
<option value="">2026 Бук розовый</option>
<option value="">2027 Бук Рейнланд</option>
<option value="">2029 Вишня Портофино</option>
<option value="">2043 Дуб солнечный</option>
<option value="">3019 Оникс синий</option>
<option value="">4012 Виндзор</option>
<option value="">4014 Монерон красный</option>
<option value="">4015 Монерон зеленый</option>
<option value="">3018 Мрамор Боттичино</option>
<option value="">2017 Венге</option>
<option value="">2040 Венге Цаво</option>
<option value="">2041 Венге Панга</option>
<option value="">2042 Бамбук</option>
<option value="">3033 Мрамор Аликанте</option>
<option value="">4013 Морской тростник</option>
<option value="">4018 Галактака</option>
<option value="">4019 Ракушки</option>
<option value="">4020 Мейсен ваниль</option>
<option value="">4021 Лукка</option>
<option value="">4042 Гренобль</option>
<option value="">4050 Луксор</option>
<option value="">2023 дуб волнистый</option>
<option value="">3017 Лазурит</option>
<option value="">4039 Таурус</option>
<option value="">2019 Бук</option>
<option value="">2028 Паркет светлый</option>
<option value="">3013 Марокканский камень</option>
<option value="">3016 Малахит</option>
<option value="">3020 Мрамор бежевый</option>
<option value="">3021 Травертин Римский</option>
<option value="">3023 Ниагара</option>
<option value="">3038 Мрамор бежевый светлый</option>
<option value="">4011 Мозаика</option>
<option value="">4027 модена</option>
<option value="">4028 Кафель</option>
<option value="">4030 Калакатта</option>
<option value="">4040 Антарес</option>
<option value="">2022 Дуб выбеленный</option>
<option value="">3028 Мрамор Марквина синий</option>
<option value="">4023 Аттика</option>
<option value="">4024 Джинс</option>
<option value="">4031 Лен</option>
<option value="">4033 Бисер светлый</option>
<option value="">4037 Тасмания</option>
<option value="">4044 Оазис</option>
<option value="">4047 Лен светлый</option>
<option value="">4048 Лен серый</option>
<option value="">2044 Древесный брус</option>
<option value="">2045 Лиственница</option>
<option value="">2046 Метрополитан</option>
<option value="">2047 Кантри</option>
<option value="">3042 Семолина бежевая</option>
<option value="">3043 Семолина серая</option>
<option value="">3044 Лабрадор</option>
<option value="">3045 Бетао</option>
<option value="">4052 Ардезия</option>
<option value="">4053 Перлино</option>
<option value="">4057 Терезина</option>
<option value="">4058 Карпинчо</option>
<option value="">4061 Лоза Серебрянная</option>
<option value="">4017 Колорадо</option>
<option value="">4041 Лунный метал</option>
<option value="">4051 Итальянская мозаика</option>
<option value="">4022 Валенсия</option>
<option value="">4049 Неаполитано</option>
<option value="">4038 Песок</option>
<option value="">4032 Порфир</option>
<option value="">3040 Сафага</option>
<option value="">2032 Риголетто светлый</option>
<option value="">2033 Риголетто темный</option>
<option value="">2034 Риголетто зеленый</option>
<option value="">3024 Мрамор зеленый</option>
<option value="">3025 Мрамор черный</option>
<option value="">3029 Мрамор Марквина черный</option>
<option value="">4026 Аламбра</option>
<option value="">4035 Аламбра темная</option>
<option value="">5011 Металлик</option>
<option value="">5012 Онда</option>
<option value="">5013 Платина</option>
<option value="">5014 Алюминиевая полоса</option>
<option value="">3037 Апатит</option>
<option value="">4045 Кастилло</option>
<option value="">4046 Кастилло темная</option>
<option value="">4059 Черная бронза</option>
<option value="">4060 Черное серебро</option>
<option value="">4054 Резонанс</option>
<option value="">4055 Перламутр</option>
<option value="">2030 Микадо</option>
<option value="">2031 Микадо светлый</option>
<option value="">3027 Мрамор белый</option>


</select></td>
            <td>
            <select id="product" class="rus-forms-elastic-input">
<option value="null">Не выбрано</option>
<option>Столешница 3050*600(25мм) матовая</option>
<option>Столешница 3050*600(25мм) глянец</option>
<option>Столешница 3050*600(38мм) матовая</option>
<option>Столешница 3050*600(38мм) глянец</option>
<option>Столешница (26мм) м2</option>
<option>Столешница (26мм) м2 глянец</option>
<option>Столешница (38мм) м2</option>
<option>Столешница (38мм) м2 глянец</option>
<option>Угол 800*800 (26мм) матовая</option>
<option>Угол 800*800 (26мм) глянец</option>
<option>Угол 850*850 (26мм) матовая</option>
<option>Угол 850*850 (26мм) глянец</option>
<option>Угол 800*800 (38мм) матовая</option>
<option>Угол 800*800 (38мм) глянец</option>
<option>Угол 850*850 (38мм) матовая</option>
<option>Угол 850*850 (38мм) глянец</option>
<option>Стеновая панель 3050*600 матовая</option>
<option>Стеновая панель 3050*600 глянец</option>
<option>Вставка 3050*32</option>
<option>Вставка 3050*40</option>
<option>Вставка с клеем 3050*32</option>
<option>Вставка с клеем 3050*40</option>
            </select>

            </td>
            <td>
            <input id="mount" class="rus-forms-elastic-input" type="text" value="" style="width: 70px;">
            </td>
            <td>
            	<input id="comment" class="rus-forms-elastic-input" type="text" value=""></input>
            </td>
            <td><span class="pure-button clone">Добавить еще</span><span class="pure-button remove">Удалить</span></td>
        </tr>
    </tbody>
</table>
<div class="table-under rus-forms-list">
<div class="group">
        <label for="text">Номер заказа</label>
        <input id="text" type="text" name="id" value="1">
</div>
<div class="group">
        <label for="text">Заказчик</label>
        <input id="text" type="text" name="name" value="">
        </div>
        <div class="group">
        <label for="text">Менеджер</label>
        <input id="text" type="text" name="manager" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['manager']->value->login, ENT_QUOTES, 'UTF-8', true);?>
">
        </div>
        <div class="group">
        <label for="email">Почта для заказов</label>
        <input id="email" type="email" name="iorders_email" value="stoleshka@rosstok.ru">
        </div>
        <div class="group">
        <label for="text">Дата</label>
        <input id="text" type="text" name="date_created" value="<?php echo smarty_modifier_date_format(time(),"%d %m %Y (%H:%M)",'',"rus");?>
">
        </div>
        <div class="group">
        <label for="text">Дата отгрузки</label>
        <input id="text" type="text" name="date_out" value="<?php echo smarty_modifier_date_format(time(),"%d %m %Y (%H:%M)",'',"rus");?>
">
        </div>

        <div class="rus-forms-list-underbtn">
        <button type="submit" class="button button-rounded button-flat">Отправить</button>
        </div>

</div>
    	</div>
    </div>
</div>
</form>

<script>

$( document ).ready(function() {

	});

var regex = /^(.*)(\d)+$/i;
var cloneIndex = $(".clonedInput").length;

$(".clone").live("click", function(){
    $(this).parents(".clonedInput").clone()
        .appendTo("#iorders-order-tbody")
        .attr("id", "clonedInput" +  cloneIndex)
        .find("*").each(function() {
            var id = this.id || "";
            var match = id.match(regex) || [];
            if (match.length == 3) {
                this.id = match[1] + (cloneIndex);
            }
    });
    cloneIndex++;
});

$(".remove").live("click", function(){
    $(this).parents(".clonedInput").remove();
});
</script>

<?php }} ?>
