{$wrapper = 'index_cat.tpl' scope=parent}

{* Список товаров *}

<!-- Хлебные крошки -->

<div class="frame-crumbs">
  <div class="crumbs" xmlns:v="http://rdf.data-vocabulary.org/#">
    <div class="container">
      <ul class="items items-crumbs">
        
        <li class="btn-crumb">
          <a href="/">
            <span class="text-el">
              Главная
            </span>
            <span class="divider">
              /
            </span>
          </a>
        </li>
        {if $category}
        {foreach from=$category->
        path item=cat}
        <li class="btn-crumb">
          <a href="catalog/{$cat->
url}">
  <span class="text-el">
    {$cat->
    name|escape}
  </span>
  <span class="divider">
    /
  </span>
      </a>
              </li>
              {/foreach}  
              {if $brand}
              <li class="btn-crumb">
                <a href="catalog/{$cat->
url}/{$brand->
url}">
  <span class="text-el">
    {$brand->
    name|escape}
  </span>
  <span class="divider">
    /
  </span>
      </a>
              </li>
              {/if}
              {elseif $brand}
              <li class="btn-crumb">
                <a href="brands/{$brand->
url}">
  <span class="text-el">
    {$brand->
    name|escape}
  </span>
  <span class="divider">
    /
  </span>
      </a>
              </li>
              {elseif $keyword}
              Поиск
              {/if}
              
          </ul>
      </div>
  </div>
</div>

<!-- Хлебные крошки #End /-->

<div class="frame-inside page-category">
  <div class="container">
  <!--Содержимое-->{include file='block_firstcat.tpl'}<!--Содержимое-->
  <!--Содержимое-->{include file='block_mf.tpl'}<!--Содержимое-->
  





      <div class="right-catalog">
        <!-- Start. Category name and count products in category-->
        <div class="f-s_0 title-category">
          <div class="frame-title">
            {* Заголовок страницы *}
            {if $keyword}
            <h1 class="title">
              Поиск {$keyword|escape}
            </h1>
            {elseif $page}
            <h1 class="title">
              {$page->
              name|escape}
            </h1>
            {else}
            <h1 class="title">
              {$category->
              name|escape} {$brand->
              name|escape} {$keyword|escape}
            </h1>
            {/if}
          </div>
          <span class="count">
            20
          </span>
        </div>
        <!-- End. Category name and count products in category-->
        <!--Start. Banners block-->
        
        <!--End. Banners-->
        <div class="frame-header-category">
          <div class="header-category f-s_0">
            <div class="inside-padd">
              <!-- Start. Order by block -->
              <div class="frame-sort d_i-b v-a_t">
                <div class="lineForm">
                  <div class="cusel sort " id="cuselFrame-sort" style="width:179px" tabindex="0">
                    <div class="cuselFrameRight">
                    </div>
                    <div class="cuselText">
                      Акции
                    </div>
                    <div class="cusel-scroll-wrap" style="display: none; visibility: visible;">
                      <div class="cusel-scroll-pane" id="cusel-scroll-sort">
                        <span val="action" class="cuselActive">
                          Акции
                        </span>
                        <span val="price">
                          От дешевых к дорогим
                        </span>
                        <span val="price_desc">
                          От дорогих к дешевым
                        </span>
                        <span val="hit">
                          Популярные
                        </span>
                        <span val="rating">
                          Рейтинг
                        </span>
                        <span val="hot">
                          Новинки
                        </span>
                        <span val="views">
                          По количеству просмотров
                        </span>
                        <span val="name">
                          По названию (А-Я)
                        </span>
                      </div>
                    </div>
                    <input type="hidden" id="sort" name="order" value="action">
                  </div>
                </div>
              </div>
              <!-- End. Order by block -->
              <!--         Start. Product per page  -->
              <div class="frame-count-onpage d_i-b v-a_t">
                <div class="lineForm">
                  <!--                Load settings-->
                  <div class="cusel  " id="cuselFrame-sort2" style="width:162px" tabindex="0">
                    <div class="cuselFrameRight">
                    </div>
                    <div class="cuselText">
                      12 товаров на странице
                    </div>
                    <div class="cusel-scroll-wrap" style="display: none; visibility: visible;">
                      <div class="cusel-scroll-pane" id="cusel-scroll-sort2">
                        <span selected="selected" val="12" class="cuselActive">
                          12 товаров на странице
                        </span>
                        <span val="24">
                          24 товара на странице
                        </span>
                        <span val="48">
                          48 товаров на странице
                        </span>
                      </div>
                    </div>
                    <input type="hidden" id="sort2" name="user_per_page" value="12">
                  </div>
                </div>
              </div>
              <!--         End. Product per page  -->
              <!--        Start. Show products as list or table-->
              <nav class="frame-catalog-view d_i-b v-a_t">
                <ul class="tabs tabs-list-table" data-elchange="#items-catalog-main" data-cookie="listtable">
                  <li class="">
                    <button type="button" data-href="list" data-title="Список" data-rel="tooltip">
                      <span class="icon_list_cat">
                      </span>
                      <span class="text-el">
                        Список
                      </span>
                    </button>
                  </li>
                  <li class="active">
                    <button type="button" data-href="tablemini" data-title="Мини таблица" data-rel="tooltip">
                      <span class="icon_tablemini_cat">
                      </span>
                      <span class="text-el">
                        Мини таблица
                      </span>
                    </button>
                  </li>
                  <li class="">
                    <button type="button" data-href="table" data-title="Таблица" data-rel="tooltip">
                      <span class="icon_table_cat">
                      </span>
                      <span class="text-el">
                        Таблица
                      </span>
                    </button>
                  </li>
                </ul>
              </nav>
              <!--        End. Show products as list or table-->
            </div>
            <!--                Start. if $CI->
uri->
segment(2) == "search" then show hidden field-->
            <!--                End. if $CI->
uri->
segment(2) == "search" then show hidden field-->
          </div>
        </div>
        
        <!--товар-->
        <ul class="animateListItems items items-catalog items-product table" id="items-catalog-main">
          {foreach $products as $product}
          <li class="globalFrameProduct to-cart" data-pos="top">
            <!-- Start. Photo & Name product -->
            <a href="products/{$product->url}" class="frame-photo-title" title="{$product->name|escape}">
              <span class="photo-block">
                <span class="helper">
                </span>
                <img src="
{$product->image->filename|resize:200:200}" alt="{$product->name|escape}">
              </span>
              <span class="title">
                {$product->
                name|escape}
              </span>
            </a>
            <!-- Start. Check variant-->
            <!-- End. Check variant-->
            <!-- End. Photo & Name product -->
            <div class="description">
              <!-- Start. article & variant name & brand name -->
              <div class="frame-variant-name-code">
                <span class="frame-variant-code frameVariantCode">
                  Артикул:
                  <span class="code js-code">
                    200236                                                    
                  </span>
                </span>
                <span class="frame-item-brand">
                  Бренд:
                  <span class="code js-code">
                    <a href="http://fluid.imagecmsdemo.net/shop/brand/fly">
                      Fly                                    
                    </a>
                  </span>
                </span>
              </div>
              <!-- End. article & variant name & brand name -->
              <div class="frame-star f-s_0">
                <div class="star">
                  <div id="star_rating_5623" class="productRate star-small">
                    <div style="width: 100%">
                    </div>
                  </div>
                </div>
                <a href="http://fluid.imagecmsdemo.net/shop/product/mobilnyi-telefon-fly-e141-tv-dual-sim-black#comment" class="count-response">
                  3                            отзыва                        
                </a>
              </div>
              <!-- Start. Prices-->
              <div class="frame-prices f-s_0">
                <!-- Start. Product price-->
                <span class="current-prices f-s_0">
                  <span class="price-new">
                    <span>
                      <span class="price priceVariant">
                        {$product->
                        variant->
                        price|convert:2}
                      </span>
                      <span class="curr">
                        руб
                      </span>
                    </span>
                  </span>
                  <span class="price-add">
                    <span>
                      <span class="price addCurrPrice">
                        {$product->
                        variant->
                        price|convert:1}
                      </span>
                      <span class="curr-add">
                        $
                      </span>
                    </span>
                  </span>
                </span>
                <!-- End. Product price-->
              </div>
              <!-- End. Prices-->
              <div class="funcs-buttons frame-without-top" style="position: relative; top: 0px;">
                <div class="no-vis-table">
                  <!-- Start. Collect information about Variants, for future processing -->
                  <div class="frame-count-buy js-variant-5853 js-variant">
                    <form method="POST" action="/shop/cart/addProductByVariantId/5853">
                      <div class="btn-buy btn-cart d_n">
                        <button type="button" data-id="5853" class="btnBuy">
                          <span class="icon_cleaner icon_cleaner_buy">
                          </span>
                          <span class="text-el">
                            В корзине
                          </span>
                        </button>
                      </div>
                      <div class="btn-buy">
                        <button type="button" onclick="Shop.Cart.add($(this).closest(&quot;form&quot;).serialize(), &quot;5853&quot;)" class="btnBuy infoBut" data-id="5853" data-name="Мобильный телефон Fly E141 TV Dual SIM Black" data-vname="Мобильный телефон Fly E141 TV Dual SIM Black" data-number="200236" data-price="55" data-add-price="2" data-orig-price="" data-medium-image="
/uploads/shop/products/medium/5623_main_origin.jpg                                                " data-img="
/uploads/shop/products/small/5623_main_origin.jpg                                                " data-url="http://fluid.imagecmsdemo.net/shop/product/mobilnyi-telefon-fly-e141-tv-dual-sim-black" data-maxcount="1">
  <span class="icon_cleaner icon_cleaner_buy">
  </span>
  <span class="text-el">
    Купить
  </span>
                        </button>
                      </div>
                      <input type="hidden" value="8c16c79f790684d4b227b84c2f19727c" name="cms_token">
                      
                    </form>
                  </div>
                </div>
              </div>
              <!-- End. Collect information about Variants, for future processing -->
              <div class="frame-without-top" style="position: relative; top: 35px;">
                <!-- Wish List & Compare List buttons -->
                <div class="frame-wish-compare-list no-vis-table t-a_j">
                  <div class="frame-btn-comp">
                    <!-- Start. Compare List button -->
                    <div class="btn-compare">
                      <div class="toCompare btnCompare" data-id="5623" type="button" data-title="Сравнить" data-firtitle="Сравнить" data-sectitle="В сравнении" data-rel="tooltip">
                        <span class="niceCheck nstcheck">
                          <input type="checkbox">
                        </span>
                        <span class="text-el d_l">
                          Сравнить
                        </span>
                      </div>
                    </div>
                    <!-- End. Compare List button -->
                  </div>
                  <!-- Start. Wish list buttons -->
                  <div class="frame-btn-wish js-variant-5853 js-variant d_i-b_">
                    <div class="btnWish btn-wish" data-id="5853">
                      <button class="toWishlist isDrop" type="button" data-rel="tooltip" data-title="В избранные" data-drop="#dropAuth">
                        <span class="icon_wish">
                        </span>
                        <span class="text-el d_l">
                          В избранные
                        </span>
                      </button>
                      <button class="inWishlist" type="button" data-rel="tooltip" data-title="В избранныx" style="display: none;">
                        <span class="icon_wish">
                        </span>
                        <span class="text-el d_l">
                          В избранныx
                        </span>
                      </button>
                    </div>
                    <script>
                      langs["Create list"] = 'Создать список';
                      langs["Wrong list name"] = 'Неверное имя списка';
                      langs["Already in Wish List"] = 'Уже в Списке Желаний';
                      langs["List does not chosen"] = 'Список не обран';
                      langs["Limit of Wish List finished "] = 'Лимит списков пожеланий исчерпан';
                    </script>
                    
                  </div>
                  <!-- End. wish list buttons -->
                </div>
                <!-- End. Wish List & Compare List buttons -->
              </div>
              <!-- End. Collect information about Variants, for future processing -->
              <div class="frame-without-top" style="position: relative; top: 56px;">
                <div class="no-vis-table">
                  <!--Start. Description-->
                  <div class="short-desc">
                    Дисплей TFT, 240 х 320 пикселей, 65 000 оттенков WAP, GPRS, Bluetooth Габариты 104 x 57 x 13.3 мм                            
                  </div>
                  <!-- End. Description-->
                </div>
              </div>
            </div>
            <!-- Start. Remove buttons if compare-->
            <!-- End. Remove buttons if compare-->
            
            <!-- Start. For wishlist page-->
            <!-- End. For wishlist page-->
            <div class="decor-element" style="height: 298px; width: 100%; position: absolute; right: auto; left: 0px; bottom: auto; top: 15px;">
            </div>
          </li>
          {/foreach}
        </ul>
        <!--товар-->
        
        <!-- render pagination-->
        
        {include file='pagination.tpl'}
        
        <!-- End.If count products in category >
0 then show products and pagination links -->
      </div>
  </div>
</div>