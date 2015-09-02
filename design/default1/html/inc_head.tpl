<base href="{$config->root_url}/"/>
<title>{$meta_title|escape}</title>

{* Метатеги *}
<meta charset="utf-8" />
<meta name="description" content="{$meta_description|escape}" />
<meta name="keywords"    content="{$meta_keywords|escape}" />
<meta name = "format-detection" content = "telephone=no" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />

{* Стили *}
<link rel="stylesheet" type="text/css" href="images/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="images/colorscheme.css" media="all" />
<link rel="stylesheet" type="text/css" href="images/color.css" media="all" />
<link rel="stylesheet" type="text/css" href="images/adaptive.css" media="all" />

{* Скрипты *}

{literal}
<script type="text/javascript">
            var locale = "";
        </script>
<script type="text/javascript" src="images/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="http://vdm-grup.ru/design/vdmgrup_2/js/jquery.lazyload.js"></script>
{/literal}

<!-- php vars to js -->
{literal}
<script type="text/javascript">
                    var curr = 'руб',
            cartItemsProductsId = null,
            nextCs = '$',
            nextCsCond = nextCs == '' ? false : true,
            pricePrecision = parseInt('0'),
            checkProdStock = "", //use in plugin plus minus
            inServerCompare = parseInt("0"),
            inServerWishList = parseInt("0"),
            countViewProd = parseInt("0"),
            theme = "",
            siteUrl = "",
            colorScheme = "css/color_scheme_1",
            isLogin = "0" === '1' ? true : false,
            typePage = "main",
            typeMenu = "col";
        text = {
            search: function(text) {
                return 'Введите более' + ' ' + text + ' символов';
                        },
                        error: {
                            notLogin: 'В список желаний могут добавлять только авторизированные пользователи',
                                        fewsize: function(text) {
                                            return 'Выберите размер меньше или равно' + ' ' + text + ' пикселей';
                                                        },
                                                        enterName: 'Введите название'
                                                                }
                                                            }
    
        text.inCart = 'В корзине';
        text.pc = 'шт.';
        text.quant = 'Кол-во:';
        text.sum = 'Сумма:';
        text.toCart = 'Купить';
        text.pcs = 'Количество:';
        text.kits = 'Комплектов:';
        text.captchaText = 'Код протекции';
        text.plurProd = ['товар', 'товара', 'товаров'];
        text.plurKits = ['набор', 'набора', 'наборов'];
        text.plurComments = ['отзыв', 'отзыва', 'отзывов'];
</script>{/literal}
<script type="text/javascript" src="images/settings.js"></script>
<!--[if lte IE 9]><script type="text/javascript" src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" type="text/css" href="http://fluid.imagecmsdemo.net/templates/fluid/css/lte_ie_8.css" /><![endif]-->
<!--[if IE 7]>
            <link rel="stylesheet" type="text/css" href="http://fluid.imagecmsdemo.net/templates/fluid/css/ie_7.css" />
            <script src="http://fluid.imagecmsdemo.net/templates/fluid/js/localStorageJSON.js"></script>
        <![endif]-->
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link data-arr="0" rel="stylesheet" type="text/css" href="images/style-2.css" />
<link data-arr="8" rel="stylesheet" type="text/css" href="style.html" />