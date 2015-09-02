{$wrapper = 'index_cat.tpl' scope=parent}

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



{literal}

<div class="frame-inside page-product">
  <div class="container">
    <div class="clearfix item-product  to-cart">
      <div class="right-product" data-mq-max="1330|768" data-mq-min="767|0" data-mq-target="#similar1330|#similar768">
        <!--Start. Payments method form -->
        <div class="frame-delivery-payment">
          <dl>
            <dt class="title f-s_0">
              <span class="icon_delivery">
                &nbsp;
              </span>
              <span class="text-el">
                Доставка
              </span>
              <span class="icon_info_t" data-rel="tooltip" data-placement="left" data-other-class="info-patch" data-title="При желании Вы можете сами забрать купленный товар в наших офисах
<br>
</span>

Бесплатная доставка от 2000 руб.">
  &nbsp;
  </span>
  </dt>
  <dd class="frame-list-delivery">
    <ul>
      <li>
        Новая Почта
      </li>
      <li>
        Другие транспортные службы
      </li>
      <li>
        Курьером по Киеву
      </li>
      <li>
        Самовывоз
      </li>
    </ul>
  </dd>
  <dt class="title f-s_0">
    <span class="icon_payment">
      &nbsp;
    </span>
    <span class="text-el">
      Оплата
    </span>
    <span class="icon_info_t" data-placement="left" data-rel="tooltip" data-other-class="info-patch" data-title="Сервис решает задачи по организации процесса приема платежей с помощью подключения всех (из возможного множества) платежных систем.">
      &nbsp;
    </span>
  </dt>
  <dd class="frame-list-payment">
    <ul>
      <li>
        Наличными при получении
      </li>
      <li>
        Безналичный перевод
      </li>
      <li>
        Приват 24
      </li>
      <li>
        WebMoney
      </li>
    </ul>
  </dd>
                  </dl>
              </div>
              
              <!--End. Payments method form -->
              <!-- Start. Similar Products-->
              <div class="items-products vertical-carousel count-items1">
                <div class="title-proposition-v">
                  <div class="frame-title">
                    <div class="title">
                      Похожие товары
                    </div>
                  </div>
                </div>
                <div class="big-container">
                  <div class="items-carousel carousel-js-css">
                    <div class="content-carousel container" style="height: auto;">
                      <ul class="items items-default items-v-carousel items-product" style="height: 112px;">
                        
                      
                      
                      
                      <li class="globalFrameProduct to-cart" data-pos="top">
                        <!-- Start. Photo & Name product -->
                        <a href="http://fluid.imagecmsdemo.net/shop/product/mobilnyi-telefon-fly-e141-tv-dual-sim-white" class="frame-photo-title" title="Мобильный телефон Fly E141 TV Dual SIM White">
                          <span class="photo-block">
                            <span class="helper">
                            </span>
                            <img src="{/literal}{$product->image->filename|resize:300:300}{literal}" alt="Мобильный телефон Fly E141 TV Dual SIM White" class="vImg">
                          </span>
                          <span class="title">
                            Мобильный телефон Fly E141 TV Dual SIM White
                          </span>
                        </a>
                        <!-- End. Photo & Name product -->
                        <div class="description">
                          <!-- Start. article & variant name & brand name -->
                          <!-- End. article & variant name & brand name -->
                          <!-- Start. Prices-->
                          <div class="frame-prices f-s_0">
                            <!-- Start. Product price-->
                            <span class="current-prices f-s_0">
                              <span class="price-new">
                                <span>
                                  <span class="price priceVariant">
                                    {/literal}{$product->prprice|convert}{literal}
                                  </span>
                                  <span class="curr">
                                    руб
                                  </span>
                                </span>
                              </span>
                              <span class="price-add">
                                <span>
                                  <span class="price addCurrPrice">
                                    2
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
          <!-- End. Collect information about Variants, for future processing -->
                  </div>
                  <!-- Start. Remove buttons if compare-->
                  <!-- End. Remove buttons if compare-->
                  
                  <!-- Start. For wishlist page-->
                  <!-- End. For wishlist page-->
                      </li>
                                  </ul>
              </div>
              <div class="group-button-carousel">
                <button type="button" class="prev arrow" style="display: none;">
                  <span class="icon_arrow_p">
                  </span>
                </button>
                <button type="button" class="next arrow" style="display: none;">
                  <span class="icon_arrow_n">
                  </span>
                </button>
              </div>
          </div>
                      </div>
              </div>
              <!-- End. Similar Products-->
                          </div>
                          <div class="left-product leftProduct">
                            <div class="left-product-left is-add">
                              <div class="inside">

                              <!-- Дополнительные фото продукта -->
  {/literal}
                                <!-- Дополнительные фото продукта -->
  {if $product->images|count>1}
                                <!-- Start. дополнительные изображения-->
                                <div class="vertical-carousel">
                                  <div class="frame-thumbs carousel-js-css jcarousel-container jcarousel-container-vertical iscarousel" style="position: relative; display: block;">
                                    <div class="content-carousel">
                                      <div class="jcarousel-clip jcarousel-clip-vertical" style="position: relative;">
                                        <ul class="items-thumbs items jcarousel-list jcarousel-list-vertical" style="overflow: hidden; position: relative; top: 0px; margin: 0px; padding: 0px; left: 0px; height: 411px;">
                                          <!-- Start. main image-->
                                          <li class="active jcarousel-item jcarousel-item-vertical jcarousel-item-1 jcarousel-item-1-vertical" jcarouselindex="1" style="float: left; list-style: none; height: 309px;">
                                            <a onclick="return false;" rel="useZoom: 'photoProduct'" 
                                            href="{$product->
image->
filename|resize:300:300}" 
                                              title="{$product->name|escape}" class="cloud-zoom-gallery" id="mainThumb">
                                                <span class="photo-block">
                                                  <span class="helper">
                                                  </span>
                                                  <img src="{$product->
image->
filename|resize:300:300}" 
                                                      alt="{$product->name|escape}" title="{$product->name|escape}" class="vImgPr">
                                                  </span>
                                              </a>
  </li>
  <!-- End. main image-->
  <li class="jcarousel-item jcarousel-item-vertical jcarousel-item-2 jcarousel-item-2-vertical" jcarouselindex="2" style="float: left; list-style: none; height: 309px;">
    <a onclick="return false;" rel="useZoom: 'photoProduct'" href="http://fluid.imagecmsdemo.net/uploads/shop/products/additional/5623_2.jpg" title="{$product->name|escape}" class="cloud-zoom-gallery">
      <span class="photo-block">
        <span class="helper">
        </span>
        <img src="http://fluid.imagecmsdemo.net/uploads/shop/products/additional/thumb_5623_2.jpg" alt="{$product->name|escape} - 1" title="{$product->name|escape} - 2">
      </span>
    </a>
  </li>
  <li class="jcarousel-item jcarousel-item-vertical jcarousel-item-3 jcarousel-item-3-vertical" jcarouselindex="3" style="float: left; list-style: none; height: 309px;">
    <a onclick="return false;" rel="useZoom: 'photoProduct'" href="http://fluid.imagecmsdemo.net/uploads/shop/products/additional/5623_1.jpg" title="{$product->name|escape}" class="cloud-zoom-gallery">
      <span class="photo-block">
        <span class="helper">
        </span>
        <img src="http://fluid.imagecmsdemo.net/uploads/shop/products/additional/thumb_5623_1.jpg" alt="{$product->name|escape} - 2" title="{$product->name|escape} - 3">
      </span>
    </a>
  </li>
  <li class="jcarousel-item jcarousel-item-vertical jcarousel-item-4 jcarousel-item-4-vertical" jcarouselindex="4" style="float: left; list-style: none; height: 309px;">
    <a onclick="return false;" rel="useZoom: 'photoProduct'" href="http://fluid.imagecmsdemo.net/uploads/shop/products/additional/5623_0.jpg" title="{$product->name|escape}" class="cloud-zoom-gallery">
      <span class="photo-block">
        <span class="helper">
        </span>
        <img src="http://fluid.imagecmsdemo.net/uploads/shop/products/additional/thumb_5623_0.jpg" alt="{$product->name|escape} - 3" title="{$product->name|escape} - 4">
      </span>
    </a>
  </li>
                                          </ul>
                                                                          </div>
                                  </div>
                                  <div class="group-button-carousel">
                                    
                                    
                                    <button type="button" class="prev arrow jcarousel-prev jcarousel-prev-vertical jcarousel-prev-disabled jcarousel-prev-disabled-vertical" disabled="disabled" style="display: inline-block;">
                                      <span class="icon_arrow_p">
                                      </span>
                                      </button>
                                      <button type="button" class="next arrow jcarousel-next jcarousel-next-vertical" style="display: inline-block;">
                                        <span class="icon_arrow_n">
                                        </span>
                                      </button>
                                  </div>
                              </div>
                      </div>
                      <!-- End. дополнительные изображения-->
  {/if}
  
  <!-- Дополнительные фото продукта (The End)-->
  {literal}
  <!-- Дополнительные фото продукта (The End)-->

                      <!-- Start. Photo block-->
                      <div id="wrap" style="top:0px;z-index:9999;position:relative;">
                        <a rel="position: 'xBlock'" onclick="return false;" href="{/literal}{$product->
image->
filename|resize:300:300}{literal}"
                          class="frame-photo-title photoProduct cloud-zoom isDrop" id="photoProduct" title="{/literal}{$product->name|escape}{literal}" data-drop="#photo" data-start="Product.initDrop" data-scroll-content="false" style="position: relative; display: block;">
                            <span class="photo-block">
                              <span class="helper">
                              </span>
                              <img src="{/literal}{$product->
image->
filename|resize:300:300}{literal}" alt="{/literal}{$product->name|escape}{literal} - 5623" title="{/literal}{$product->name|escape}{literal} - 5623" class="vImgPr" style="display: block;">
                          </span>
                          </a>
                          <div class="mousetrap" style="z-index: 9999; position: absolute; width: 179px; height: 323px; left: 0px; top: 0px; cursor: move; background-image: url(data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7);">
                          </div>
                      </div>
                      <div class="horizontal-carousel photo-main-carousel">
                        <div class="group-button-carousel">
                          <button type="button" class="prev arrow" style="display: none;">
                            <span class="icon_arrow_p">
                            </span>
                          </button>
                          <button type="button" class="next arrow" style="display: none;">
                            <span class="icon_arrow_n">
                            </span>
                          </button>
                        </div>
                      </div>
                      <!-- End. Photo block-->
                  </div>
                  <div class="t-a_j">
                    <div class="btn-additional-s_c2 mq-w-480 mq-inline-block mq-min showComment" style="display: none;">
                      <button type="button">
                        <span class="text-el" data-hide="
<span class=&quot;d_l&quot;>
Скрыть отзывы
</span>

<span class=&quot;icon-show-part up&quot;>
</span>
" data-show="
<span class=&quot;d_l&quot;>
Смотреть отзывы
</span>

<span class=&quot;icon-show-part&quot;>
</span>
">
                              </span>
                          </button>
                      </div>
                      <div class="btn-additional-s_c2 mq-w-480 mq-inline-block mq-min showCommentForm" style="display: none;">
                        <button type="button">
                          <span class="text-el" data-hide="
<span class=&quot;d_l&quot;>
Скрыть форму
</span>

<span class=&quot;icon-show-part up&quot;>
</span>
" data-show="
<span class=&quot;d_l&quot;>
Оставить отзыв
</span>

<span class=&quot;icon-show-part&quot;>
</span>
">
                              </span>
                          </button>
                      </div>
                  </div>
                  <!--Start. Comments block-->
                  <div class="frame-form-comment">
                    <div class="forComments p_r">
                      <div class="comments" id="comments">
                        <div class="frame-frame-list-comments showHidePart">
                          <div class="title-comment">
                            Отзывы покупателей
                          </div>
                          <div class="frame-list-comments">
                            <ul class="sub-1 product-comment">
                              <li>
                                <input type="hidden" name="comment_item_id" value="96">
                                <div class=" global-frame-comment-sub1">
                                  <div class="clearfix">
                                    <div class="author-data-comment author-data-comment-sub1">
                                      <span class="f-s_0 frame-autor-comment">
                                        <span class="icon_comment">
                                        </span>
                                        <span class="author-comment">
                                          misha
                                        </span>
                                      </span>
                                      <span class="date-comment">
                                        <span class="day">
                                          12 
                                        </span>
                                        <span class="month">
                                          Мая 
                                        </span>
                                        <span class="year">
                                          2014 
                                        </span>
                                      </span>
                                  </div>
                                  <div class="frame-mark">
                                    <div class="mark-pr">
                                      <div class="star-small d_i-b">
                                        <div class="productRate star-small">
                                          <div style="width: 100%">
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                              </div>
                              <div class="frame-comment-sub1">
                                <div class="frame-comment">
                                  <p>
                                    крутой тел
                                  </p>
                                </div>
                                <div class="func-button-comment">
                                  <span class="btn like">
                                    <button type="button" class="usefullyes" data-comid="96">
                                      <span class="icon_like">
                                      </span>
                                      <span class="text-el d_l_1">
                                        Полезно 
                                        <span class="yesholder96">
                                          (1)
                                        </span>
                                      </span>
                                    </button>
                                  </span>
                                  <span class="btn dis-like">
                                    <button type="button" class="usefullno" data-comid="96">
                                      <span class="icon_dislike">
                                      </span>
                                      <span class="text-el d_l_1">
                                        Не полезно 
                                        <span class="noholder96">
                                          (3)
                                        </span>
                                      </span>
                                    </button>
                                  </span>
                                </div>
                              </div>
                                              </div>
                  </li>
                  <li>
                    <input type="hidden" name="comment_item_id" value="97">
                    <div class=" global-frame-comment-sub1">
                      <div class="clearfix">
                        <div class="author-data-comment author-data-comment-sub1">
                          <span class="f-s_0 frame-autor-comment">
                            <span class="icon_comment">
                            </span>
                            <span class="author-comment">
                              vanja
                            </span>
                          </span>
                          <span class="date-comment">
                            <span class="day">
                              12 
                            </span>
                            <span class="month">
                              Мая 
                            </span>
                            <span class="year">
                              2014 
                            </span>
                          </span>
                        </div>
                        <div class="frame-mark">
                        </div>
                      </div>
                      <div class="frame-comment-sub1">
                        <div class="frame-comment">
                          <p>
                            бобма а не телефон
                          </p>
                        </div>
                        <div class="func-button-comment">
                          <span class="btn like">
                            <button type="button" class="usefullyes" data-comid="97">
                              <span class="icon_like">
                              </span>
                              <span class="text-el d_l_1">
                                Полезно 
                                <span class="yesholder97">
                                  (2)
                                </span>
                              </span>
                            </button>
                          </span>
                          <span class="btn dis-like">
                            <button type="button" class="usefullno" data-comid="97">
                              <span class="icon_dislike">
                              </span>
                              <span class="text-el d_l_1">
                                Не полезно 
                                <span class="noholder97">
                                  (1)
                                </span>
                              </span>
                            </button>
                          </span>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <input type="hidden" name="comment_item_id" value="104">
                    <div class=" global-frame-comment-sub1">
                      <div class="clearfix">
                        <div class="author-data-comment author-data-comment-sub1">
                          <span class="f-s_0 frame-autor-comment">
                            <span class="icon_comment">
                            </span>
                            <span class="author-comment">
                              Олег
                            </span>
                          </span>
                          <span class="date-comment">
                            <span class="day">
                              06 
                            </span>
                            <span class="month">
                              Июня 
                            </span>
                            <span class="year">
                              2014 
                            </span>
                          </span>
                        </div>
                        <div class="frame-mark">
                        </div>
                      </div>
                      <div class="frame-comment-sub1">
                        <div class="frame-comment">
                          <p>
                            Крутой телефон)))))))))))))0
                          </p>
                        </div>
                        <div class="func-button-comment">
                          <span class="btn like">
                            <button type="button" class="usefullyes" data-comid="104">
                              <span class="icon_like">
                              </span>
                              <span class="text-el d_l_1">
                                Полезно 
                                <span class="yesholder104">
                                  (0)
                                </span>
                              </span>
                            </button>
                          </span>
                          <span class="btn dis-like">
                            <button type="button" class="usefullno" data-comid="104">
                              <span class="icon_dislike">
                              </span>
                              <span class="text-el d_l_1">
                                Не полезно 
                                <span class="noholder104">
                                  (1)
                                </span>
                              </span>
                            </button>
                          </span>
                        </div>
                      </div>
                    </div>
                  </li>
              </ul>
              <button class="t-d_n f-s_0 s-all-d ref d_n_" data-trigger="[data-href='#comment']" data-scroll="true">
                <span class="icon_arrow">
                </span>
                <span class="text-el">
                  Смотреть все ответы
                </span>
              </button>
              </div>
                              </div>
                              <div class="frame-comments-main-form showHidePart">
                                <div class="drop comments-main-form  active inherit" style="display: block;">
                                  <div class="frame-comments layout-highlight">
                                    <div class="title-comment">
                                      <div class="title">
                                        Ваш отзыв о товаре
                                      </div>
                                    </div>
                                    <!-- Start of new comment fild -->
                                    <div class="form-comment main-form-comments">
                                      <div class="inside-padd">
                                        <form method="post">
                                          <div class="mainPlace">
                                          </div>
                                          <!-- Start star reiting -->
                                          <div class="frame-label">
                                            <span class="title f_l t-a_l">
                                              Поставьте оценку
                                            </span>
                                            <div class="frame-form-field">
                                              <div class="star">
                                                <div class="productRate star-big clicktemprate">
                                                  <div class="for_comment" style="width: 0%">
                                                  </div>
                                                  <input class="ratec" name="ratec" type="hidden" value="">
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                          <!-- End star reiting -->
                                          <div class="clearfix">
                                            <label style="width: 45%;float: left;">
                                              <span class="frame-form-field">
                                                <input type="text" name="comment_author" value="" placeholder="Как вас зовут">
                                              </span>
                                            </label>
                                            <label style="width: 45%;margin-left: 10%;float: left;">
                                              <span class="frame-form-field">
                                                <input type="text" name="comment_email" id="comment_email" value="" placeholder="Какая у вас почта">
                                              </span>
                                            </label>
                                          </div>
                                          <label>
                                            <span class="frame-form-field">
                                              <textarea name="comment_text" class="comment_text">
                                              </textarea>
                                            </span>
                                          </label>
                                          
                                          <div class="frame-label">
                                            <span class="frame-form-field">
                                              <div class="btn-form">
                                                <input type="submit" value="Отправить" onclick="Comments.post(this,{'visibleMainForm': '1'}, '.mainPlace')">
                                              </div>
                                            </span>
                                          </div>
                                        </form>
                                      </div>
                                      <!-- End of new comment fild -->
                                    </div>
                                  </div>
                                </div>
                              </div>
                              
                              <div class="frame-drop-comment" data-rel="whoCloneAddPaste">
                                <div class="form-comment layout-highlight frame-comments">
                                  <div class="title-default title-comment">
                                    <div class="title">
                                      Ваш ответ
                                    </div>
                                  </div>
                                  <div class="inside-padd">
                                    <form>
                                      <label class="err-label">
                                        <span class="frame-form-field">
                                          <div class="frame-label error" name="error_text">
                                          </div>
                                        </span>
                                      </label>
                                      
                                      <label>
                                        <span class="title">
                                          Ваше имя:
                                        </span>
                                        <span class="frame-form-field">
                                          <input type="text" name="comment_author" value="">
                                        </span>
                                      </label>
                                      <label>
                                        <span class="title">
                                          Ваш email: 
                                        </span>
                                        <span class="frame-form-field">
                                          <input type="text" name="comment_email" value="">
                                        </span>
                                      </label>
                                      <label>
                                        <span class="title">
                                          Текст ответа:
                                        </span>
                                        <span class="frame-form-field">
                                          <textarea class="comment_text" name="comment_text">
                                          </textarea>
                                        </span>
                                      </label>
                                      <div class="frame-label">
                                        <span class="frame-form-field">
                                          <input type="hidden" id="parent" name="comment_parent" value="">
                                          <span class="btn-form">
                                            <input type="submit" value="Комментировать" onclick="Comments.post(this, {'visibleMainForm': '0'})">
                                          </span>
                                        </span>
                                      </div>
                                    </form>
                                  </div>
                                </div>
                              </div>
                          </div>
                          <div class="d_n" id="useModeration">
                            <div class="usemoderation">
                              <div class="msg">
                                <div class="success">
                                  Ваш комментарий будет опубликован после модерации администратором            
                                </div>
                              </div>
                            </div>
                          </div>
                          <script>
                            var _useModeration = 0;
                          </script>
                          
                                          </div>
                                          <!--End. Comments block-->
                  </div>
                  <div id="similar1330">
                  </div>
              </div>
              <div class="left-product-right">
                <div class="globalFrameProduct">
                  <div class="f-s_0 title-product">
                    <!-- Start. Name product -->
                    <div class="frame-title">
                      <h1 class="title">
                        {/literal}{$product->name|escape}{literal}
                      </h1>
                    </div>
                    <!-- End. Name product -->
                  </div>
                  <!-- Start. frame for cloudzoom -->
                  <div id="xBlock">
                  </div>
                  <!-- End. frame for cloudzoom -->
                  <div class="o_h">
                    <!-- Start. article & variant name & brand name -->
                    <div class="f_l">
                      <span class="frame-variant-name-code">
                        <span class="frame-variant-code frameVariantCode">
                          <span class="s-t">
                            Код:
                          </span>
                          <span class="code js-code">
                            200236                                                                                    
                          </span>
                        </span>
                      </span>
                    </div>
                    <!-- End. article & variant name & brand name -->
                    <!-- Start. Star rating -->
                    <div class="f_l">
                      <div class="frame-star">
                        <div class="star">
                          <div id="star_rating_5623" class="productRate star-small">
                            <div style="width: 100%">
                            </div>
                          </div>
                        </div>
                        <button data-trigger="[data-href='#comment']" data-scroll="true" class="count-response d_l">
                          3                                            отзыва                                        
                        </button>
                      </div>
                    </div>
                    <!-- End. Star rating-->
                  </div>
                  
                  <div class="f-s_0 buy-block">
                    <!-- Start. Check variant-->
                    <!-- End. Check variant-->
                    <div class="frame-prices-buy-wish-compare">
                      <div class="frame-for-photo-popup">
                        <div class="frame-prices-buy f-s_0">
                          <!-- Start. Prices-->
                          <div class="frame-prices f-s_0">
                            <!-- Start. Check for discount-->
                            <!-- End. Check for discount-->
                            <!-- Start. Check old price-->
                            <!-- End. Check old price-->
                            <!-- Start. Product price-->
                            <span class="current-prices f-s_0">
                              <span class="price-new">
                                <span>
                                  <span class="price priceVariant">
                                    {/literal}{$product->prprice|convert}{literal}
                                  </span>
                                  <span class="curr">
                                    руб
                                  </span>
                                </span>
                              </span>
                              <span class="price-add">
                                <span>
                                  <span class="price addCurrPrice">
                                    2
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
                          <div class="funcs-buttons">
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
                                <div class="btn-buy-p btn-buy">
                                  <button type="button" onclick="Shop.Cart.add($(this).closest(&quot;form&quot;).serialize(), &quot;5853&quot;)" class="btnBuy infoBut" data-id="5853" data-vname="{/literal}{$product->name|escape}{literal}" data-number="200236" data-price="{/literal}{$product->prprice|convert}{literal}" data-add-price="2" data-orig-price="" data-large-image="
{/literal}{$product->image->filename|resize:300:300}{literal}                                                                    " data-main-image="
{/literal}{$product->image->filename|resize:300:300}{literal}                                                                    " data-img="
{/literal}{$product->image->filename|resize:300:300}{literal}                                                                    " data-maxcount="1">
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
                          <!-- End. Collect information about Variants, for future processing -->
                        </div>
                      </div>
                      <!-- Start. Wish List & Compare List buttons -->
                      <div class="frame-wish-compare-list f-s_0 d_i-b v-a_m">
                        <div class="frame-btn-comp v-a_bl">
                          <div class="btn-compare">
                            <div class="toCompare btnCompare" data-id="5623" type="button" data-title="Cравнить" data-firtitle="Cравнить" data-sectitle="В сравнении" data-rel="tooltip">
                              <span class="niceCheck nstcheck">
                                <input type="checkbox">
                              </span>
                              <span class="text-el d_l">
                                Cравнить
                              </span>
                            </div>
                          </div>
                        </div>
                        <div class="frame-btn-wish v-a_bl js-variant-5853 js-variant" data-id="5853">
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
                      </div>
                      <!-- End. Wish List & Compare List buttons -->
                    </div>
                  </div>
                  <!-- Start. Description -->
                  <div class="short-desc">
                    <ul>
                      <li>
                        Дисплей TFT, 240 х 320 пикселей, 65 000 оттенков
                      </li>
                      <li>
                        WAP, GPRS, Bluetooth
                      </li>
                      <li>
                        Габариты 104 x 57 x 13.3 мм
                      </li>
                    </ul>
                    
                  </div>
                  <!--  End. Description -->
                  <!--Start .Share-->
                  <div class="social-product">
                    <div class="social-like d_i-b">
                      <ul class="items items-social">
                        <li>
                          
                          <div id="fb-root" class=" fb_reset">
                            <div style="position: absolute; top: -10000px; height: 0px; width: 0px;">
                              <div>
                                <iframe name="fb_xdm_frame_http" frameborder="0" allowtransparency="true" scrolling="no" id="fb_xdm_frame_http" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="http://static.ak.facebook.com/connect/xd_arbiter/bLBBWlYJp_w.js?version=41#channel=f20e7acfc&amp;origin=http%3A%2F%2Ffluid.imagecmsdemo.net" style="border: none;">
                                </iframe>
                                <iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" scrolling="no" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://s-static.ak.facebook.com/connect/xd_arbiter/bLBBWlYJp_w.js?version=41#channel=f20e7acfc&amp;origin=http%3A%2F%2Ffluid.imagecmsdemo.net" style="border: none;">
                                </iframe>
                              </div>
                            </div>
                            <div style="position: absolute; top: -10000px; height: 0px; width: 0px;">
                              <div>
                              </div>
                            </div>
                          </div>
                          <script async="async" defer="defer">
                            (function(d, s, id) {
                              var js, fjs = d.getElementsByTagName(s)[0];
                              if (d.getElementById(id)) return;
                              js = d.createElement(s);
                              js.id = id;
                              js.src = "//connect.facebook.net/en_EN/all.js#xfbml=1";
                              fjs.parentNode.insertBefore(js, fjs);
                            }
                             (document, "script", "facebook-jssdk"));
                          </script>
                          <div class="fb-like fb_iframe_widget" data-send="false" data-layout="button_count" data-width="60" data-show-faces="true" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=&amp;href=http%3A%2F%2Ffluid.imagecmsdemo.net%2Fshop%2Fproduct%2Fmobilnyi-telefon-fly-e141-tv-dual-sim-black&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;send=false&amp;show_faces=true&amp;width=60">
                            <span style="vertical-align: bottom; width: 76px; height: 20px;">
                              <iframe name="f2e2f77c1c" width="60px" height="1000px" frameborder="0" allowtransparency="true" scrolling="no" title="fb:like Facebook Social Plugin" src="http://www.facebook.com/plugins/like.php?app_id=&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2FbLBBWlYJp_w.js%3Fversion%3D41%23cb%3Df1d5d251b%26domain%3Dfluid.imagecmsdemo.net%26origin%3Dhttp%253A%252F%252Ffluid.imagecmsdemo.net%252Ff20e7acfc%26relation%3Dparent.parent&amp;href=http%3A%2F%2Ffluid.imagecmsdemo.net%2Fshop%2Fproduct%2Fmobilnyi-telefon-fly-e141-tv-dual-sim-black&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;send=false&amp;show_faces=true&amp;width=60" style="border: none; visibility: visible; width: 76px; height: 20px;" class="">
                              </iframe>
                            </span>
                          </div>
                        </li>
                        <li>
                          <!-- Place this tag in your head or just before your close body tag. -->
                          <script type="text/javascript" src="https://apis.google.com/js/plusone.js" gapi_processed="true">
                            {
                              lang: 'ru', parsetags: 'explicit'}
                          </script>
                          
                          <!-- Place this tag where you want the +1 button to render. -->
                          <div id="___plusone_0" style="text-indent: 0px; margin: 0px; padding: 0px; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 90px; height: 20px; background: transparent;">
                            <iframe frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position: static; top: 0px; width: 90px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;" tabindex="0" vspace="0" width="100%" id="I0_1405801190145" name="I0_1405801190145" src="https://apis.google.com/u/0/_/+1/fastbutton?usegapi=1&amp;size=medium&amp;hl=ru&amp;origin=http%3A%2F%2Ffluid.imagecmsdemo.net&amp;url=http%3A%2F%2Ffluid.imagecmsdemo.net%2Fshop%2Fproduct%2Fmobilnyi-telefon-fly-e141-tv-dual-sim-black&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.ru.5BKeCmBksgc.O%2Fm%3D__features__%2Fam%3DAQ%2Frt%3Dj%2Fd%3D1%2Ft%3Dzcms%2Frs%3DAItRSTNI2NeJt1UC3AW--dEhA-KOyuYNCw#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh&amp;id=I0_1405801190145&amp;parent=http%3A%2F%2Ffluid.imagecmsdemo.net&amp;pfname=&amp;rpctoken=17648803" data-gapiattached="true" title="+1">
                            </iframe>
                          </div>
                          
                          <!-- Place this render call where appropriate. -->
                          <script type="text/javascript">
                            gapi.plusone.go();
                          </script>
                        </li>
                        <li>
                          <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.1404859412.html#_=1405801190571&amp;count=horizontal&amp;id=twitter-widget-0&amp;lang=en&amp;original_referer=http%3A%2F%2Ffluid.imagecmsdemo.net%2Fshop%2Fproduct%2Fmobilnyi-telefon-fly-e141-tv-dual-sim-black&amp;size=m&amp;text=5623%20-%20%D0%9C%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%20Fly%20E141%20TV%20Dual%20SIM%20Black%20-%20%D0%9C%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D1%8B%20%2F%20ImageCMS&amp;url=http%3A%2F%2Ffluid.imagecmsdemo.net%2Fshop%2Fproduct%2Fmobilnyi-telefon-fly-e141-tv-dual-sim-black" class="twitter-share-button twitter-tweet-button twitter-share-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="width: 101px; height: 20px;">
                          </iframe>
                          <script async="async" defer="defer">
                            !function(d,s,id){
                              var js,fjs=d.getElementsByTagName(s)[0];
                              if(!d.getElementById(id))
                              {
                                js=d.createElement(s);
                                js.id=id;
                                js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
                          </script>
                        </li>
                      </ul>
                      
                    </div>
                    <div class="social-tell d_i-b">
                      <script type="text/javascript" src="//yandex.st/share/share.js" charset="utf-8">
                      </script>
                      <div class="yashare-auto-init" data-yasharel10n="ru" data-yasharelink="" data-yasharetype="none" data-yasharequickservices="vkontakte,facebook,twitter,">
                        <span class="b-share">
                          <a rel="nofollow" target="_blank" title="ВКонтакте" class="b-share__handle b-share__link b-share-btn__vkontakte" href="http://share.yandex.ru/go.xml?service=vkontakte&amp;url=http%3A%2F%2Ffluid.imagecmsdemo.net%2Fshop%2Fproduct%2Fmobilnyi-telefon-fly-e141-tv-dual-sim-black&amp;title=5623%20-%20%D0%9C%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%20Fly%20E141%20TV%20Dual%20SIM%20Black%20-%20%D0%9C%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D1%8B%20%2F%20ImageCMS" data-service="vkontakte">
                            <span class="b-share-icon b-share-icon_vkontakte">
                            </span>
                          </a>
                          <a rel="nofollow" target="_blank" title="Facebook" class="b-share__handle b-share__link b-share-btn__facebook" href="http://share.yandex.ru/go.xml?service=facebook&amp;url=http%3A%2F%2Ffluid.imagecmsdemo.net%2Fshop%2Fproduct%2Fmobilnyi-telefon-fly-e141-tv-dual-sim-black&amp;title=5623%20-%20%D0%9C%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%20Fly%20E141%20TV%20Dual%20SIM%20Black%20-%20%D0%9C%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D1%8B%20%2F%20ImageCMS" data-service="facebook">
                            <span class="b-share-icon b-share-icon_facebook">
                            </span>
                          </a>
                          <a rel="nofollow" target="_blank" title="Twitter" class="b-share__handle b-share__link b-share-btn__twitter" href="http://share.yandex.ru/go.xml?service=twitter&amp;url=http%3A%2F%2Ffluid.imagecmsdemo.net%2Fshop%2Fproduct%2Fmobilnyi-telefon-fly-e141-tv-dual-sim-black&amp;title=5623%20-%20%D0%9C%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%20Fly%20E141%20TV%20Dual%20SIM%20Black%20-%20%D0%9C%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%B5%20%D1%82%D0%B5%D0%BB%D0%B5%D1%84%D0%BE%D0%BD%D1%8B%20%2F%20ImageCMS" data-service="twitter">
                            <span class="b-share-icon b-share-icon_twitter">
                            </span>
                          </a>
                        </span>
                      </div>
                      
                    </div>
                  </div>
                  <!-- End. Share -->
                </div>
                <!-- Start. Kit-->
                <!-- End. Kits-->
                <div class="right-view-product">


                 <!--характеристики товара-->
                 {/literal}
                 {if $product->features}

                  <div class="inside-padd">
                    <div class="title-default">
                      <div class="frame-title">
                        <div class="title">
                          Характеристики
                        </div>
                      </div>
                    </div>
                    <div class="characteristic">
                      <table>
                        <tbody>

                        {foreach $product->features as $f}
  

                          <tr>
                            <th>
                              <span class="text-el">
                                {$f->name}
                              </span>
                            </th>
                            <td>
                              <span class="text-el">
                                {$f->value}
                              </span>
                            </td>
                          </tr>
{/foreach}                       
                        </tbody>
                      </table>
                    </div>
                  </div>
                 {/if}
{literal}
                  <!--характеристики товара-->
                  <div class="inside-padd">
                    <!--                        Start. Description block-->
                    <div class="product-descr patch-product-view showHidePart" style="max-height: none; height: 395px;">
                      <div class="text">
                        <div class="title-default">
                          <div class="frame-title">
                            <div class="title">
                              Описание
                            </div>
                          </div>
                        </div>
                        <h2>
                          {/literal}{$product->name|escape}{literal}
                        </h2>
                        <ul>
                          
                          <li>
                            Бюджетный класс
                          </li>
                          
                          <li>
                            Корпус моноблок
                          </li>
                          
                          <li>
                            Антенна встроенная
                          </li>
                          
                          <li>
                            Стандарты: GSM 900/1800/1900
                          </li>
                          
                          <li>
                            Основной дисплей: TFT, 2.8, сенсорный, 240x320 пикселей, 65000 цветов
                          </li>
                          
                          <li>
                            Внешний дисплей: нет
                          </li>
                          
                          <li>
                            Полифония: 64 тона
                          </li>
                          
                          <li>
                            Память: встроенная 45 КB, слот расширения для карт памяти microSDHC
                          </li>
                          
                          <li>
                            Телефонная книга
                          </li>
                          
                          <li>
                            Передача данных: GPRS, WAP, Bluetooth, USB
                          </li>
                          
                          <li>
                            Мобильный интернет WAP 2.0
                          </li>
                          
                          <li>
                            Фотокамера: 640x480, 0.3 мегапикселя, зум
                          </li>
                          
                          <li>
                            FM радио
                          </li>
                          &nbsp;
                        </ul>
                        
                      </div>
                    </div>
                    <!--                        End. Description block-->
                  </div>
                  
                </div>
                <div id="similar768">
                </div>
              </div>
                          </div>
      </div>
  </div>
</div>

{/literal}