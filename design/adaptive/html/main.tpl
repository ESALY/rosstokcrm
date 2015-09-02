<div id="content"><!-- content --> 

                  {* Слайдер *}
			{*include file='slider.tpl'*}

<!-- brands & quickbuy & daysarticle -->
<table>
	<tr>
		<td>
			<!-- brands -->
			{* Выбираем в переменную $all_brands все бренды *}
			{get_brands var=all_brands}
			{if $all_brands}
			<div class="brands_list_container">
<div class="brands-title header_repeat_1"><a href="/brands">Бренды</a></div>
<ul class="brand-list">
{foreach $all_brands as $b}	
	<li data-index="{$b->id}"><a class="filter" href="brands/{$b->url}">{$b->name}</a></li>
	{/foreach}
	<li id="more"><a href="/brands"></a><div class="more_block" style="display:none;"></div></li>																																																																																																																																																																																																																																																																																																	
</ul>
</div>
{/if}	
			<!-- /brands -->
		</td>
		<td>
			<!-- quickbuy -->
{* Акционные товары *}
{get_discounted_products var=discounted_products limit=3}
{if $discounted_products}
<div class="quickbuy">
	<div class="quickbuy-title header_repeat_1">Успей купить</div>
	<div class="quickbuy-body">{foreach $discounted_products as $product}<div class="quickbuy-item">
			<div class="quickbuy-item-name"><a href="products/{$product->url}">{$product->name|escape}</a></div>
			<div class="quickbuy-item-image">
									<a href="products/{$product->url}">
						{if $product->image}
									<img src="{$product->image->filename|resize:190:190}" border="" alt="{$product->name|escape}" />
									{else}
									<img alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
									{/if}
						
					</a>
							</div>
			<div class="quickbuy-item-price">
				<span class="quickbuy-item-price-old">{if $product->variant->compare_price > 0}{$product->variant->compare_price|convert} {$currency->sign|escape}{/if}</span> &nbsp; 
				<span class="quickbuy-item-price-new">{$product->variant->price|convert} {$currency->sign|escape}</span>
			</div>
			<div class="quickbuy-item-discount btn2_220">Выгода {floor(abs({$product->variant->price}-($product->variant->compare_price)))} {$currency->sign|escape}</div>
			
			<div class="quickbuy-js-item-data" data-date_to="1368598370" data-time_limit="0"></div>
		</div>{/foreach}</div>
</div>
{/if}
			<!-- /quickbuy -->
		</td>
		<td>
			<!-- daysarticle -->
{get_discounted_products var=discounted_products limit=4}
{if $discounted_products}
{foreach $discounted_products|cut:3 as $product}
	<div class="daysarticle2">
		<div class="daysarticle2-title header_repeat_2">Товар дня</div>
		<div class="daysarticle2-body">
							<div class="daysarticle2-item">
					<div class="daysarticle2-item_inner">
					<div class="daysarticle2-item-name"><a data-product="{$product->id}" href="products/{$product->url}">{$product->name|escape}</a></div>
						<div class="daysarticle2-item-image">
							<a href="products/{$product->url}">
								{if $product->image}
									<img src="{$product->image->filename|resize:190:190}" border="" alt="{$product->name|escape}" />
									{else}
									<img alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
									{/if}
								</a>
													</div>
						<div class="daysarticle2-item-price">
							<span class="daysarticle2-item-price-old">{$product->variant->compare_price|convert} {$currency->sign|escape}</span> &nbsp; 
							<span class="daysarticle2-item-price-new">{$product->variant->price|convert} {$currency->sign|escape}</span>
						</div>
						<div class="daysarticle2-item-discount btn1_220">Выгода {floor(abs({$product->variant->price}-($product->variant->compare_price)))} {$currency->sign|escape}</div>
					</div>
					
				</div>
				
					</div>
	</div>
	{/foreach}
	{/if}
	
			<!-- /daysarticle -->
		</td>
	</tr>
</table>
<!-- /brands & quickbuy & daysarticle -->


	{*<div class="long_main_banner">
			<div class="long_main_banner-item">
				<a class="long_main_banner-body" href="/" target="_blank">
					<img class="long_main_banner-pic" src="design/{$settings->theme|escape}/images/2defedbfd8293dac8014d63b42e3bd87.png" alt="Баннер" />
				</a>
			</div>
	</div>*}

<!-- sidebar & catalog -->
<table cellspacing="0" cellpadding="0">
	<tr>
		<td style="vertical-align:top;">
			<!-- sidebar -->

	{* Выбираем в переменную $last_posts последние записи *}
			{get_posts var=last_posts limit=5}
			{if $last_posts}
	<div class="news_on_main">
		<a class="news_on_main-icon" href="/blog"></a>
								{foreach $last_posts as $post}
								<div data-post="{$post->id}" class="news_on_main-news" id="bx_1914200112_{$post->id}">
				<a href="blog/{$post->url}">{$post->name|escape}</a>
			</div>
			{/foreach}
			
			<div class="news_on_main-line"></div>
				<a class="news_on_main-show_all" href="/blog">Все новости</a>
	</div>
	{/if}

	
{* Рекомендуемые товары *}
{get_featured_products var=featured_products limit=2 order='RAND()'}
{if $featured_products}
	<div class="we_recc">
		<div class="we_recc-title header_repeat_2">Мы рекомендуем</div>
								{foreach $featured_products as $product name=products}
								<div class="we_recc-item" id="bx_2647885750_20">
				<div class="we_recc-item_inner">
					<div class="we_recc-item-pic">
						<a href="products/{$product->url}">
						{if $product->image}
							<img src="{$product->image->filename|resize:90:90}" alt="{$product->name|escape}" />
							{else}
			            <img width="80" alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
						{/if}
													</a>
					</div>
					<div class="we_recc-item-body">
						<div class="we_recc-item-name">
							<a data-product="{$product->id}" href="products/{$product->url}">{$product->name|escape}</a>
						</div>
						<div class="we_recc-item-prices">
						{if $product->variants|count > 0}
						<span class="new_price">{$product->variant->price|convert} {$currency->sign|escape}</span>
						{else}
						<span class="new_price">Нет в наличии</span>
						{/if}
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
                              {if $smarty.foreach.products.first} 			
							<div class="we_recc-line"></div>
							{/if}
							{/foreach}
											
						</div>
						{/if}
                                                
                                                
                                            
			<!-- Просмотренные товары -->
			{get_browsed_products var=browsed_products limit=2}
			{if $browsed_products}
<div class="view-list">
	<div class="view-header header_repeat_1">Вы недавно смотрели</div>
				{foreach $browsed_products as $browsed_product name=products}
				<div class="view-item">
		<div class="view-item_inner">
						<div class="viewed-image">
				<a href="products/{$browsed_product->url}">
											</a><a href="products/{$browsed_product->url}">
							<img  border="0" alt="{$browsed_product->name}" src="{$browsed_product->image->filename|resize:90:90}">
						</a>
									
			</div>
						<div class="view-item-body">
							<div class="view-item-name"><a href="products/{$browsed_product->url}">{$browsed_product->name}</a></div>
										<div class="view-item-prices"><a href="products/{$browsed_product->url}"><span class="new_price">Подробнее...</span></a></div>
						</div>
		</div>
		<div class="clear"></div>
		</div>                          {if $smarty.foreach.products.first} 
						<div class="view-line"></div>
                                                 {/if}
						{/foreach}
					
			</div>
			{/if}
			<!-- Просмотренные товары (The End)-->    
                                                
                                                

			<!-- /sidebar -->
		</td>
		<td style="vertical-align:top;">
			<!-- catalog -->
			{* Новинки *}
			{get_new_products var=new_products limit=12}
			{if $new_products}
			<div class="blocks_catlg">
			
	
	<div class="cat_blck">
								{foreach $new_products as $product}
								<span class="product">
								
								<div class="cat_blck-item-simple" id="bx_2647885750_{$product->id}">
								
				<div class="cat_blck-item_inner">
				
					<div class="cat_blck-item-name"><a data-product="{$product->id}" href="products/{$product->url}" title="{$product->name|escape}">{$product->name|escape}</a></div>
					<div class="cat_blck-item-article"></div>
					<div class="cat_blck-item-picture">
						<a href="products/{$product->url}">
						{if $product->image}
						<img src="{$product->image->filename|resize:205:164}" alt="{$product->name|escape}" />
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
						
			            <img alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
						
						{/if}
						</a>
					</div>
					
					<div class="cat_blck-item-price">
					{if $product->variants|count > 0}
													<div class="cat_blck-item-price-buybtn">
								<input type="button" class="add2basket_areadyin btn2_102_full js-alreadyinbasket js-productid82 none2" data-productid="82" value="Добавлено" />
								<input  class="add2basket_baton btn1_102_full text_shadow js-add2basket js-productid82" data-productid="{$product->id}" type="submit" data-result-text="Добавлено" value="В корзину" />
							</div>
																			<br />
												<span class="new_price nowrap">{$product->variant->price|convert} {$currency->sign|escape}</span>
						<div class="clear"></div>
						{else}
							<span class="new_price nowrap">Нет в наличии</span>
							{/if}
					</div>	
					
				</div>
			
								
								<div class="block_hidden box_shadow" style="display:none;">
								
					<div class="cat_blck-item_inner">
					
					<div class="cat_blck-item-name"><a data-product="{$product->id}" href="products/{$product->url}" title="{$product->name|escape}">{$product->name|escape}</a></div>
					<div class="cat_blck-item-article"></div>
					
						<div class="cat_blck-item-picture">
							<a href="products/{$product->url}">
							{if $product->image}
							<span class="image">
							<img src="{$product->image->filename|resize:205:164}"  alt="{$product->name|escape}" />
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
						<form class="variants" action="/cart">
						{foreach $product->variants as $v}
			            <input id="featured_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} style="display:none;"/>
		                {/foreach}
						
						
						<div class="cat_blck-item-price">
						{if $product->variants|count > 0}
															<div class="cat_blck-item-price-buybtn">
									<input type="button" class="add2basket_areadyin btn2_102_full js-alreadyinbasket js-productid82 none2" value="Добавлено" />
									<input  class="add2basket_baton btn1_102_full text_shadow js-add2basket js-productid82" type="submit" data-result-text="Добавлено" value="В корзину" />
								</div>
																						<br/>
														<span class="new_price nowrap">{$product->variant->price|convert} {$currency->sign|escape}</span>
							<div class="clear"></div>
							{else}
							<span class="new_price nowrap">Нет в наличии</span>
							{/if}
						</div>
						</form>
                       						
			
					</div>
					<div class="cat_blck-item_inner">
					<div class="cat_blck-item-description cat_blck-item-description_normal">{$product->annotation}</div>
					<div class="clear"></div>
					<div class="cat_blck-item-botter">
						<div class="cat_blck-item-botter-compare compare_icon compare">
							
							<!-- Добавление товара к сравнению -->

<form action="/compare" class="compare">
{if $compare_informer->items_id[{$product->id}]>0}
В <a href="/compare/">сравнения</a>
{else}
<input id="compare_{$product->id}" name="compare" value="{$product->id}" style="display:none;" type="checkbox" />
<label for="compare_{$product->id}" style="border-bottom: 1px dashed #000; cursor: pointer"><a>Сравнить</a></label>
{/if}
</form>

						</div>
						<div class="cat_blck-item-botter-quantity">
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
			
			</div>
			
			</span>
			{/foreach}
								
				<div class="clear"></div>
	</div>
		</div>
          {/if}		
			<!-- /catalog -->
		</td>
	</tr>
</table>
<!-- /sidebar & catalog -->
<div class="clear"></div>


<table class="bottom_banners">
	<tbody>
		<tr>
					<td class="bottom_banners-item first" id="bx_1914200112_8">
				<a href="/catalog/">
					<div class="banner-arounditem">
						<table class="banner-item">
							<tr>
								<td>
									<div class="bottom_banners-divimage">
										<img class="bottom_banners-image" height="92" src="design/{$settings->theme|escape}/images/373f6fde5628b72.png" border="0" title="Накопительная программа" />
									</div>
								</td>
								<td>
									<div class="bottom_banners-text">
										<div class="bottom_banners-name" title="Накопительная программа">Накопительная программа</div>
										<div class="bottom_banners-previewtext">Копите бонусные баллы и покупайте со скидкой</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</a>
			</td>
					<td class="bottom_banners-item left" id="bx_1914200112_9">
				<a href="">
					<div class="banner-arounditem">
						<table class="banner-item">
							<tr>
								<td>
									<div class="bottom_banners-divimage">
										<img class="bottom_banners-image" height="92" src="design/{$settings->theme|escape}/images/ac9eca1cabe828449ff5481a757873ba.png" border="0" title="Любые товары на заказ" />
									</div>
								</td>
								<td>
									<div class="bottom_banners-text">
										<div class="bottom_banners-name" title="Любые товары на заказ">Любые товары на заказ</div>
										<div class="bottom_banners-previewtext">Привезем любой товар, необходимый вам</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</a>
			</td>
					<td class="bottom_banners-item left" id="bx_1914200112_10">
				<a href="">
					<div class="banner-arounditem">
						<table class="banner-item">
							<tr>
								<td>
									<div class="bottom_banners-divimage">
										<img class="bottom_banners-image" height="92" src="design/{$settings->theme|escape}/images/c63800bd6c5025f74b4d4177e3d5499f.png" border="0" title="Кредитные программы" />
									</div>
								</td>
								<td>
									<div class="bottom_banners-text">
										<div class="bottom_banners-name" title="Кредитные программы">Кредитные программы</div>
										<div class="bottom_banners-previewtext">Выберите подходящую вам программу</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</a>
			</td>
					<td class="bottom_banners-item left lastright" id="bx_1914200112_11">
				<a href="">
					<div class="banner-arounditem">
						<table class="banner-item">
							<tr>
								<td>
									<div class="bottom_banners-divimage">
										<img class="bottom_banners-image" height="92" src="design/{$settings->theme|escape}/images/0b99214672a612f1651eeb74a2d4cce8.png" border="0" title="Скидки с друзьями" />
									</div>
								</td>
								<td>
									<div class="bottom_banners-text">
										<div class="bottom_banners-name" title="Скидки с друзьями">Скидки с друзьями</div>
										<div class="bottom_banners-previewtext">Получайте скидки вместе с друзьями</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</a>
			</td>
				</tr>
	</tbody>
</table>

<div class="clear"></div>
				</div><!-- /content -->