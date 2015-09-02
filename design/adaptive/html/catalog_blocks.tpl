<div class="catalog_blocks">
			{foreach $products as $product}
				<span class="product">
				    <div id="bx_2647885750_{$product->id}" class="catalog_blocks-item catalog_blocks-item-simple">
				        <div class="catalog_blocks-item_inner">
					<div class="catalog_blocks-item-name"><a data-product="{$product->id}" title="{$product->name|escape}" href="products/{$product->url}">{$product->name|escape}</a></div>
					{if $product->variant->sku}
                    <div class="catalog_blocks-item-article">Артикул  {$product->variant->sku}</div>
					{/if}
					<div class="catalog_blocks-item-picture">
						<a  href="products/{$product->url}">
											{if $product->image}
											<span class="image">
											<img  alt="{$product->name|escape}" src="{$product->image->filename|resize:175:175}">
											</span>
											<div class="around_stickers">
													<div class="stickers">
														{if $product->featured}
														<div class="sticker_top"></div>
														{/if}
														{if $product->variant->compare_price > 0}
														<div class="sticker_new"></div>
														{/if}
														{if $new_products}
														<div class="sticker_sale"></div>
														{/if}
													</div>
												</div>
												{else}
						<span class="image">
			            <img alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
						</span>
						{/if}
						</a>
					</div>
                                        
                                        
{*Цены*}

{* Руслан. Вывод цены для розницы. *}
{foreach $product->features as $f}
{if {$f->name} == 'rozn'}
{assign var=rozn value=$f->value}
{/if}
{/foreach}

{* Руслан. Вывод цены для розницы. *}
{foreach $product->features as $f}
{if {$f->name} == 'm_opt'}
{assign var=m_opt value=$f->value}
{/if}
{/foreach}

{* Руслан. Вывод цены для розницы. *}
{foreach $product->features as $f}
{if {$f->name} == 'k_opt'}
{assign var=k_opt value=$f->value}
{/if}
{/foreach}

{* Руслан. Вывод цены для розницы. *}
{foreach $product->features as $f}
{if {$f->name} == 'спец.цена'}
{assign var=spetstsena value=$f->value}
{/if}
{/foreach}

{* Руслан. Вывод цены для розницы. *}
{foreach $product->features as $f}
{if {$f->name} == 'резерв'}
{assign var=rezerv value=$f->value}
{/if}
{/foreach}

<span class="prices">
<table width="100%">
<tr class="dotted-bottom">
 <td>Розница:
   <div class="pull-right">{$rozn} {$currency->sign|escape}</div></td>
 </tr>
<tr class="dotted-bottom">
 <td>Мелкий опт:
   <div class="pull-right">{$m_opt} {$currency->sign|escape}</div></td>
 </tr>
<tr class="dotted-bottom">
 <td>Крупный опт:
   <div class="pull-right">{$k_opt} {$currency->sign|escape}</div></td>
 </tr>
{if $smarty.session.admin == 'admin'}
<tr class="dotted-bottom">
 <td>Спец. цена:
   <div class="pull-right">{$spetstsena} {$currency->sign|escape}</div></td>
 </tr>
<tr>
 <td>Резерв:
   <div class="pull-right">{$rezerv}</div></td>
 </tr>
{/if}
</table>
</span>

{*Цены*} 
                                        
                                        
				
				<form class="variants" action="/cart">
						{foreach $product->variants as $v}
			            <input id="featured_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} style="display:none;"/>
		                {/foreach}
					<div class="catalog_blocks-item-price">
					{if $product->variants|count > 0}
							<div class="catalog_blocks-item-price-buybtn">
								<input type="button" value="Добавлено" data-productid="{$product->id}" class="add2basket_areadyin btn2_102_full js-alreadyinbasket js-productid15 none2">
								<input type="submit" data-result-text="Добавлено" value="В корзину" class="add2basket_baton btn1_102_full text_shadow js-add2basket js-productid{$product->id}">
							</div>
							{*<span class="old_price">{if $product->variant->compare_price > 0}{$product->variant->compare_price|convert} {$currency->sign|escape}{/if}</span><br>*}
						    <span class="new_price" style="display:none;">{$product->variant->price|convert} {$currency->sign|escape}</span>
					{else}
							<span class="new_price">Нет в налиии</span>
					{/if}
					</div>
				</form>
				</div>
											
				<div class="catalog_blocks-item_inner">
<div class="catalog_blocks-item-description catalog_blocks-item-description_normal">
{$product->annotation}
</div>



 
 {*рейтинг*}                                                       
                                                        {*<div class="catalog_blocks-item-rating">
<div id="vote_{$product->id}" class="iblock-vote">
<!-- Ретинг -->
            <div class="testRater_{$product->id} clr" id="rating_{$product->id}" class="stat">
                      <div class="statVal">
                        <span class="rater">
						<span class="rating_name">Рейтинг:</span>
                          <span class="rater-starsOff" style="width:80px;">
                            <span class="rater-starsOn" style="width:{$product->rating*80/5|string_format:"%.0f"}px"></span>
                          </span>
                          <span class="rater-rating">{$product->rating|string_format:"%.1f"}</span>
                          &#160;(голосов <span class="rater-rateCount">{$product->votes|string_format:"%.0f"}</span>)
                        </span>
                      </div>
                </div>
      {literal}
    <script type="text/javascript">
      $(function() { $('.testRater_{/literal}{$product->id}{literal}').rater({ postHref: '/ajax/rating.php' }); });
    </script>
    {/literal}
<!-- Рейтинг (The End) -->

</div></div>*}
 {*рейтинг*} 


			<div class="clear"></div>
				<div class="catalog_blocks-item-botter">
					<div class="catalog_blocks-item-botter-compare compare_icon">
							<form action="/compare" class="compare">
								{if $compare_informer->items_id[{$product->id}]>0}
								В <a href="/compare/">сравнения</a>
								{else}
								<input id="compare_{$product->id}" name="compare" value="{$product->id}" style="display:none;" type="checkbox" />
								<label for="compare_{$product->id}" style="border-bottom: 1px dashed #000; cursor: pointer"><a>Сравнить</a></label>
								{/if}
							</form>
						</div>
						<div class="catalog_blocks-item-botter-quantity">
							{if $product->variants|count > 0}
							<span class="propuct_quantity global_stores_full">Есть в наличии</span>
							{else}
							<span class="propuct_quantity global_stores_empty">Нет в наличии</span>
							{/if}
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			</span>
			{/foreach}
	    <div class="clear"></div>
	</div>