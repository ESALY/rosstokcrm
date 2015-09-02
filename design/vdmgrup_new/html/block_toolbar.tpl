<div class="frame-user-toolbar active">
  <div class="container inside-padd">
    <div class="content-user-toolbar">
      <ul class="items items-user-toolbar">
        <li class="box-1">
          <div class="wish-list-btn tinyWishList">
            <button data-href="http://fluid.imagecmsdemo.net/wishlist" data-drop=".drop-info-wishlist" data-place="inherit" data-overlay-opacity="0" data-inherit-close="true"> <span class="text-wish-list text-el"> <span class="icon_wish_list"></span> <span class="js-empty empty" style="display: inline"> <span class="text-el">Избранные </span>(<span class="wishListCount">0</span>) </span> <span class="js-no-empty no-empty" > <span class="text-el">Избранные </span>(<span class="wishListCount">0</span>) </span> </span> </button>
          </div>
          <div class="drop drop-info drop-info-wishlist"> <span class="helper"></span> <span class="text-el"> Ваш список<br/>
            “Список желаний” пуст</span> </div>
        </li>
        <li class="box-2">
          <div class="compare-list-btn tinyCompareList">
            <button data-href="http://fluid.imagecmsdemo.net/shop/compare" data-drop=".drop-info-compare" data-place="inherit" data-overlay-opacity="0" data-inherit-close="true"> <span class="text-compare-list text-el"> <span class="icon_compare_list"></span> <span class="js-empty empty" style="display: inline"> <span class="text-el">Сравниваем </span>(<span class="compareListCount">0</span>) </span> <span class="js-no-empty no-empty" > <span class="text-el">Сравниваем </span>(<span class="compareListCount"></span>) </span> </span> </button>
          </div>
          <div class="drop drop-info drop-info-compare"> <span class="helper"></span> <span class="text-el"> Ваш список <br/>
            “Список сравнения” пуст </span> </div>
        </li>
        <li class="box-3">
          <div class="btn-already-show">
            <button type="button" data-drop=".frame-already-show" data-effect-on="slideDown" data-effect-off="slideUp" data-place="inherit"> <span class="text-view-list text-el"> <span class="icon_view_product"></span> <span class="icon_arrow_down"></span> <span class="text-el">Уже видели</span><span>&nbsp;(0)</span> </span> </button>
          </div>
        </li>
        <!--Start. Top menu and authentication data block-->
        <li class="btn-enter">
          <button type="button"
                id="loginButton"
                data-drop=".drop-enter"
                data-source="auth.html"
                > <span class="text-el"><span class="icon_enter"></span>Вход</span> </button>
        </li>
        <!--Else show link for personal cabinet --> 
        <!--End. Top menu and authentication data block-->
      </ul>
    </div>
    <div class="btn-to-up">
      <button type="button"> <span class="text-el ref t-d_n"><span class="icon_arrow_p icon_arrow_p2"></span>Наверх</span> </button>
    </div>
  </div>
  <div class="drop frame-already-show">
    <div class="content-already-show">
      <div id="ViewedProducts">
        <div class="inside-padd">
          <div class="msg f-s_0">
            <div class="info"><span class="icon_info"></span><span class="text-el">Нет просмотренных товаров</span></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>