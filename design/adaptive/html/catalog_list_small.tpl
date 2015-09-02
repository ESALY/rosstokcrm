<div class="catalog_list_small">
{foreach $products as $product name=products}
<span class="product">
<div id="bx_2647885750_{$product->id}" class="catalog_list_small-item catalog_list_small-item-simple catalog_list_small-topborder {if $smarty.foreach.products.last}catalog_list_small-bottomborder{/if}">
				<div class="catalog_list_small-item_inner">
					<!-- rightblock -->
					<div class="catalog_list_small-item-rblock">
						<div class="catalog_list_small-item-rblock_inner">
									<form class="variants" action="/cart">
						{foreach $product->variants as $v}
			            <input id="featured_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} style="display:none;"/>
		                {/foreach}
						{if $product->variants|count > 0}
							<div class="catalog_list_small-item-price">
																<span class="old_price">{if $product->variant->compare_price > 0}{$product->variant->compare_price|convert} {$currency->sign|escape}{/if}</span><br>
												<span class="new_price">{$product->variant->price|convert} {$currency->sign|escape}</span>
								    <div class="catalog_list_small-item-price-buybtn">
										<input type="button" value="Добавлено" data-productid="{$product->id}" class="add2basket_areadyin btn2_102_full js-alreadyinbasket js-productid{$product->id} none2">
										<input type="submit" data-result-text="Добавлено" value="В корзину" class="add2basket_baton btn1_102_full text_shadow js-add2basket js-productid{$product->id}">
									</div>
															</div>
															{/if}
															</form>
							<div class="catalog_list_small-item-botter-quantity">
																{if $product->variants|count > 0}
															<span class="propuct_quantity global_stores_full">Есть в наличии</span>
															{else}
															<span class="propuct_quantity global_stores_empty">Нет в наличии</span>
															{/if}
															</div>
							<div class="catalog_list_small-item-botter-compare compare_icon">
								<form action="/compare" class="compare">
{if $compare_informer->items_id[{$product->id}]>0}
В <a href="/compare/">сравнения</a>
{else}
<input id="compare_{$product->id}" name="compare" value="{$product->id}" style="display:none;" type="checkbox" />
<label for="compare_{$product->id}" style="border-bottom: 1px dashed #000; cursor: pointer"><a>Сравнить</a></label>
{/if}
</form>
							</div>
						</div>
					</div>
					<!-- /rightblock -->
					<div class="catalog_list_small-item-picture">
						<a href="products/{$product->url}">
						{if $product->image}
						<span class="image">
														<img  alt="" src="{$product->image->filename|resize:90:90}">
														</span>
														<div class="around_stickers_s">
														
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
			            <img width="80" alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
						</span>
						{/if}								
						</a>
						<div style="display:none;" class="catalog_list_small-litepopup">
						{if $product->image}
													<img  alt="" src="{$product->image->filename|resize:250:250}">
													{else}
					
			            <img alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
						
						{/if}
													</div>
					</div>
					<div class="catalog_list_small-item-body">
						<div class="catalog_list_small-item-name">
							<a data-product="{$product->id}" title="{$product->name|escape}" href="products/{$product->url}">{$product->name|escape}</a>
															{if $product->variant->sku}
                        <span> Артикул:  {$product->variant->sku}</span>
					{/if}
													</div>
													
							<div class="catalog_list_small-item-description catalog_list_small-item-description_normal">{$product->annotation}</div>
												<div class="catalog_list_small-item-rating">
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
</div>						</div>
					</div>
				</div>
				</span>
				{/foreach}
			</div>
			
</div>