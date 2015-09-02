{* Слайдер *}
<link href="design/{$settings->theme|escape}/css/flexslider.css" rel="stylesheet" type="text/css" media="screen"/>
<script src="design/{$settings->theme}/js/jquery.flexslider.js"></script>
<script>
{literal}
// Can also be used with $(document).ready()
$(window).load(function() {
	$('.flexslider').flexslider({
		animation: "slide"
	});
});
{/literal}
</script>

<!-- Слайдер -->
<div class="flexslider">
    <ul class="slides">
    
    
   
    <li class="b1c-good">
            <div class="homepage-slider-inner">
                
                
                <div class="title-proposition-h">
          <div class="frame-title">
            <div class="title">Похожие товары</div>
          </div>
</div>    
    
    
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
			<a href="products/{$product->url}"><img src="{$product->image->filename|resize:200:200}" alt="{$product->name|escape}"/></a>
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
    
</li>    
 

        <li class="b1c-good">
            <div class="homepage-slider-inner">
                
                
                <div class="title-proposition-h">
          <div class="frame-title">
            <div class="title">Рекомендуем посмотреть</div>
          </div>
</div>
                
                
                <ul class="products">
{get_products var=cat_products category_id=$c->id featured=1 limit=3}
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
			<a href="products/{$p->url}"><img src="{$p->image->filename|resize:200:200}" alt="{$p->name|escape}"/></a>
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
        </li>
       
    </ul>
</div>
<!-- end -->

{*
author: Noxter
link: http://forum.simplacms.ru/profile/347/Noxter
e-mail: simplacms@ukr.net
*}