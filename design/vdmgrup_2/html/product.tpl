<style type="text/css">
@import url("../css/style.css");
</style>
{* Страница товара *}
{$wrapper = 'index.tpl' scope=parent}

<!-- Хлебные крошки /-->
<div class="path">
	<a href="./">Главная</a>
	{foreach from=$category->path item=cat}
	→ <a href="catalog/{$cat->url}">{$cat->name|escape}</a>
	{/foreach}
	{if $brand}
	→ <a href="catalog/{$cat->url}/{$brand->url}">{$brand->name|escape}</a>
	{/if}
	→  {$product->name|escape}                
</div>
<!-- Хлебные крошки #End /-->


<div class="product-block b1c-good">
  <table width="100%" border="1">
    <tr>
      <td ><!-- Большое фото --> 
        {if $product->image}

<div class="bimg">
<!--HoverZoom-->
<div class="js-hover-zoom" id="bounded_box">
<div class="js-orig-img">
<img src="{$product->image->filename|resize:300:300}"  />
</div>

<div class="js-large-img">
<div class="js-large-img-inner">
<img src="{$product->image->filename|resize:500:500}" />
</div>
</div>
</div>
</div>

<script type="text/javascript" src="design/{$settings->theme|escape}/js/hoverzoom.js" charset="utf-8"></script>


        {/if} 
        <!-- Большое фото (The End)--></td>
      <td class="valignt-top">
        
       <h1 data-product="{$product->id}"><span class='b1c-name'>{$product->name|escape}</span></h1>
        
        <div class="product-page-price">
        
          <div class="price">
          
          <div class="price-grad">
  <table width="100%" border="0">
    <tr>
      <td width="auto"><div class="left">Розница</div></td>
      <td width="100%"><div class="dots"></div></td>
      <td width="auto"><div class="right">
      
      {* Руслан. Вывод цены для крупного опта. *}
      {foreach $product->features as $f}
      {if {$f->name} == 'rozn'} 
      {$f->value}&nbsp;руб.
      {/if}
      {/foreach}
      {* Руслан. Вывод цены для крупного опта. Конец *}
      
      </div></td>
      
      

    </tr>
    
  </table>
  <table width="100%" border="0">
    <tr>
      <td width="auto"><div class="left">Опт.</div></td>
      <td width="100%"><div class="dots"></div></td>
      <td width="auto"><div class="right">
      
      {* Руслан. Вывод цены для крупного опта. *}
      {foreach $product->features as $f}
      {if {$f->name} == 'm_opt'} 
      {$f->value}&nbsp;руб.
      {/if}
      {/foreach}
      {* Руслан. Вывод цены для крупного опта. Конец *}
      
      </div></td>
    </tr>
    
  </table>
  <table width="100%" border="0">
    <tr>
      <td width="auto"><div class="left">Крупный&nbsp;опт.</div></td>
      <td width="100%"><div class="dots"></div></td>
      <td width="auto"><div class="right">
      
      {* Руслан. Вывод цены для крупного опта. *}
      {foreach $product->features as $f}
      {if {$f->name} == 'k_opt'} 
      {$f->value}&nbsp;руб.
      {/if}
      {/foreach}
      {* Руслан. Вывод цены для крупного опта. Конец *}
      
      
      </div></td>
    </tr>
    
  </table>
</div>
          
          </div>
 
          
        </div>
        
        <div class="svoystva">
        
        </div>
        <div class="ssylki">
        
        
        <div class="prod-tobasket">
        <form class="variants" action="/cart">
			<table>
			{foreach $product->variants as $v}
			<tr class="variant">
				<td>
					<input id="variants_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} {if $product->variants|count<2}style="display:none;"{/if}/>
				</td>
				<td>
					{if $v->name}<label class="variant_name" for="variants_{$v->id}">{$v->name}</label>{/if}
				</td>
				<td>
					{if $v->compare_price > 0}<span class="compare_price">{$v->compare_price|convert}</span>{/if}
					
				</td>
			</tr>
			{/foreach}
			</table>
			<input type="submit" class="button" value="добавить в корзину" data-result-text="в корзине.."/
                        style="
    font-size: 23px;
    padding: 10px;
    margin-right: 20px;
"
                        >
		</form>
</div>
        

         
        </div>
      
      {*<div class="share">
      <script type="text/javascript" src="//yandex.st/share/share.js"
charset="utf-8"></script>
<div class="yashare-auto-init" data-yashareL10n="ru"
 data-yashareType="button" data-yashareQuickServices="yaru,vkontakte,facebook,twitter,odnoklassniki,moimir,gplus"

></div>*}

      </div> 
     </td>
     
          <td>
     
{*  Подсказки для товара  *}

      <div class="product-inf-blocks">
               
<ul>
<h3>ДОСТАВКА</h3>
<li>Новая Почта</li>
<li>Другие транспортные службы</li>
<li>Курьером по Киеву</li>
<li>Самовывоз</li>
</ul>

<ul>
<h3>ОПЛАТА</h3> 
<li>Наличными при получении</li>
<li>Безналичный перевод</li>
<li>Приват 24</li>
<li>WebMoney</li>
</ul>

<ul>
<h3>ПРИМЕЧАНИЕ</h3>
<li>Розница от 0 р. до 15000 р.</li>
<li>Опт. от 15 000 р. до 100000 р.</li>
<li>Крупный опт. от 100000 р.</li>
</ul>

<ul>
<h3>Есть еще вопросы?</h3>
<li>Консультан:</li>
<li>8 (495) 134-07-27</li>
<li>info@vdm-grup.ru</li>
<li>icq: 229-623-773</li>
<li>skype: vdmgrup.ru</li>
</ul>
           
</div>     

{*  Подсказки для товара  *}

     </td>
     
     
     
    </tr>
  </table>
</div>


<!--Tabs-->

<div class="tabs-block">
<div id="tabs-container">
    <ul class="tabs-menu">
     {if $product->body}
        <li class="current"><a href="#tab-1">Описание</a></li>
        {/if}
        {if $product->features}
        <li><a href="#tab-2">Харктеристики</a></li>
        {/if}
        {if $related_products}
        <li><a href="#tab-3">Похожие товары</a></li>
        {/if}
        <li><a href="#tab-4">Рекомендуемые товары для вас</a></li>
    </ul>
    <div class="tab">
    
    {*Описание товара*}
         {if $product->body}
        <div id="tab-1" class="tab-content">
        <div class="tab-content-inner">
        {$product->body}
        </div>
        </div>
        {/if}
    {*Описание товара*}
    
        {if $product->features}
        <div id="tab-2" class="tab-content">
        <div class="tab-content-inner">
	<!-- Характеристики товара -->
	<ul class="features">
	{foreach $product->features as $f}
	<li>
		<label>{$f->name}</label>
		<span>{$f->value}</span>
	</li>
	{/foreach}
	</ul>
	<!-- Характеристики товара (The End)-->
        </div>
        </div>
	{/if}
           
        
        <div id="tab-3" class="tab-content">
        <div class="tab-content-inner">    
            {* Связанные товары *}
           
{if $related_products}
<!-- Список каталога товаров-->
<ul class="products">
	{foreach $related_products as $product}
	<!-- Товар-->
	 <li 
                    class="hack-prosl"
                    > 
        
        <span class="price">
              
             {* Руслан. Вывод цены для крупного опта. *}
      {foreach $p->features as $f}
      {if {$f->name} == 'k_opt'} 
               от</br>{$f->value}&nbsp;руб.
      {/if}
      {/foreach}
      {* Руслан. Вывод цены для крупного опта. Конец *}
              
              </span>               
		
		<!-- Фото товара -->
		{if $product->image}
		<div class="image">
			<a href="products/{$product->url}"><img src="{$product->image->filename|resize:150:150}" alt="{$product->name|escape}"/></a>
		</div>
		{/if}
		<!-- Фото товара (The End) -->

		<!-- Название товара -->
		<h3><a data-product="{$product->id}" href="products/{$product->url}">
                <span class="b1c-name">{$product->name|escape}</span>
                </a></h3>
		<!-- Название товара (The End) -->
                <a class="b1c" style="
    width: 110px;
cursor: pointer;
padding: 5px;color: white;">БЫСТРЫЙ ЗАКАЗ</a>                

		
		
	</li>
	<!-- Товар (The End)-->
	{/foreach}
</ul>
{/if}
 </div>
        </div>
        <div id="tab-4" class="tab-content">
        <div class="tab-content-inner">    
              <ul class="products">
{get_products var=cat_products category_id=$c->id featured=1 limit=4}
{if $cat_products} {foreach $cat_products as $p}
                    <li 
                    class="hack-prosl"
                    > 
                    
                     
                         <span class="price">
              
             {* Руслан. Вывод цены для крупного опта. *}
      {foreach $p->features as $f}
      {if {$f->name} == 'k_opt'} 
               от</br>{$f->value}&nbsp;руб.
      {/if}
      {/foreach}
      {* Руслан. Вывод цены для крупного опта. Конец *}
              
              </span>                         
                    <span class="product-status"></span>

                         <!-- Фото товара -->
		{if $p->image}
		<div class="image">
			<a href="products/{$p->url}"><img src="{$p->image->filename|resize:150:150}" alt="{$p->name|escape}"/></a>
		</div>
		{/if}
		<!-- Фото товара (The End) -->
                         <h3><a data-product="{$product->id}" href="products/{$product->url}"><span class="b1c-name">{$product->name|escape}</span></a></h3>
  <a class="b1c" style="
    width: 110px;
cursor: pointer;
padding: 5px;color: white;">БЫСТРЫЙ ЗАКАЗ</a>
                    </li>{/foreach}{/if}</ul>            

        </div>
        </div>
    </div>
</div>
</div>

{literal}
<script>
$(document).ready(function() {
    $(".tabs-menu a").click(function(event) {
        event.preventDefault();
        $(this).parent().addClass("current");
        $(this).parent().siblings().removeClass("current");
        var tab = $(this).attr("href");
        $(".tab-content").not(tab).css("display", "none");
        $(tab).fadeIn();
    });
});
</script>
{/literal}

<!--Tabs@-->

<!--увиличение картинки-->

{literal}
<script>
$(function() {
	// Раскраска строк характеристик
	$(".features li:even").addClass('even');

	// Зум картинок
	$("a.zoom").fancybox({ 'hideOnContentClick' : true });
});
</script>
{/literal}


