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
        <div class="prod-big-image"> 

        {*<div class="icon-prod">В НАЛИЧИИ</div>*}
<a href="{$product->image->filename|resize:800:600:w}" class="zoom" data-rel="group">
<div class="img-box">
<img class="lazy" data-original="{$product->image->filename|resize:300:300}" alt="" />
</div>
</a> </div>
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
			<input type="submit" class="button" value="добавить в корзину" data-result-text="добавлено"/
                        style="
    font-size: 23px;
    padding: 10px;
    margin-right: 20px;
"
                        >
		</form>
</div>
        
        <a href="/kak-kupit">Как купить?</a><a href="/contact">Контакты</a>
         
        </div>
        <div class="opisanie">
         <h1>Описание товара</h1>
        {$product->body}
        
        
        </div>
      {*<div class="share">
      <script type="text/javascript" src="//yandex.st/share/share.js"
charset="utf-8"></script>
<div class="yashare-auto-init" data-yashareL10n="ru"
 data-yashareType="button" data-yashareQuickServices="yaru,vkontakte,facebook,twitter,odnoklassniki,moimir,gplus"

></div>*}

      </div> 
     </td>
    </tr>
  </table>
</div>



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

