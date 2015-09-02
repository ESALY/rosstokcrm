<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
{foreach from=$category->path item=cat}
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a href="catalog/{$cat->url}">{$cat->name|escape}</a></li>
{/foreach}
{if $brand}
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a href="catalog/{$cat->url}/{$brand->url}">{$brand->name|escape}</a></li>
{/if}
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a class="last" href="products/{$product->url}">{$product->name|escape}</a></li>  
</ul>

<div id="content"><!-- content -->

<h1 class="pagetitle b1c_name" data-product="{$product->id}">{$product->name|escape}</h1>






<div class="catalog_detail">
	<div class="catalog_detail-tabsheader">
		<div class="catalog_detail-tabsheader-tablink"><a href="#tab_main" class="tabbg"><span class="tabbg-first"></span><span class="tabbg-center">Обзор</span><span class="tabbg-last"></span></a></div>
		<div class="catalog_detail-tabsheader-tablink"><a href="#tab_description" class="incative"><span class="tabbg-first"></span><span class="tabbg-center">Описание</span><span class="tabbg-last"></span></a></div>
		{if $product->features}<div class="catalog_detail-tabsheader-tablink"><a href="#tab_properties" class="incative"><span class="tabbg-first"></span><span class="tabbg-center">Характеристики</span><span class="tabbg-last"></span></a></div>{/if}
        {if $related_products}<div class="catalog_detail-tabsheader-tablink"><a href="#tab_accessories" class="incative"><span class="tabbg-first"></span><span class="tabbg-center">Аксессуары</span><span class="tabbg-last"></span></a></div>{/if}
		<div class="catalog_detail-tabsheader-tablink"><a href="#tab_review" class="incative"><span class="tabbg-first"></span><span class="tabbg-center">Отзывы</span><span class="tabbg-last"></span></a></div>
				<div class="clear"></div>
	</div>
	<div class="catalog_detail-tabscontent">
		<div id="tab_main" class="catalog_detail-tabscontent-tab">
						<!-- multiblock -->
			<div class="around_catalog_detail-multiblock">
				<div class="around_catalog_detail-price">
											<span class="old_price">{if $product->variant->compare_price > 0}{$product->variant->compare_price|convert} {$currency->sign|escape}{/if}</span><br>
										
<h3>Розница</h3>                                                                                
<span class="new_price">{$product->variant->price|convert} {$currency->sign|escape}</span>

<h3>Мелкий опт</h3>
<span class="new_price">
{* Руслан. Вывод цены для крупного опта. *}
      {foreach $product->features as $f}
      {if {$f->name} == 'm_opt'} 
      {$f->value} {$currency->sign|escape}
      {/if}
      {/foreach}
      {* Руслан. Вывод цены для крупного опта. Конец *}
</span>

<h3>Крупный опт</h3>
<span class="new_price">
{* Руслан. Вывод цены для крупного опта. *}
      {foreach $product->features as $f}
      {if {$f->name} == 'k_opt'} 
      {$f->value} {$currency->sign|escape}
      {/if}
      {/foreach}
      {* Руслан. Вывод цены для крупного опта. Конец *}
</span>


				</div>
				<form class="variants" action="/cart">
						{foreach $product->variants as $v}
			            <input id="featured_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} style="display:none;"/>
		                {/foreach}
				<div class="catalog_detail-multiblock">
					<div id="alreadyinbasketblock" style="display: none;" data-productid="{$product->id}" class="js-alreadyinbasketblock js-productid15">
						<div class="catalog_detail-aready_in_basket"></div>
						<a href="cart/" class="catalog_detail-go2basket btn2_240"><span class="bcenter">Перейти в корзину</span></a>
					</div>
						<div id="add2basketblock"  data-productid="{$product->id}" class="js-add2basketblock js-productid15">
							<a href="#" onclick="$(this).closest('form').submit(); basketblock(); return false;" class="catalog_detail-add2basket btn1_240"><span class="bicon"></span><span class="bcenter">В корзину</span></a>
							{*<a href="#fancybuy1click" class="catalog_detail-buy1click btn2_240  b1c"><span class="bcenter">Купить в 1 клик</span></a>*}
						</div>
																
									</div>
									</form>
									
			</div>
			<!-- /multiblock -->
			
			<div class="catalog_detail-pictures">
				<div class="around_catalog_detail-scroll-pane{if $product->images|count<4}-noneed{/if} ">
					<a class="catalog_detail-scroll-pane-prev" href="#"></a>
					<div class="catalog_detail-scroll-pane">
					{if $product->image}
									
							{* cut удаляет первую фотографию, если нужно начать 2-й - пишем cut:2 и тд *}
		                                            {foreach $product->images|cut:0 as $i=>$image}
													<div class="catalog_detail-scroll-pane-image">
								<a href="javascript:void(0);" rel="{literal}{{/literal}gallery: 'gal1', smallimage: '{$image->filename|resize:800:800}',largeimage: '{$image->filename|resize:800:800}'{literal}}{/literal}">
									<img src="{$image->filename|resize:800:800}"  width="25"  alt="" title="{$product->name|escape}" />
								</a>
							</div>
							{/foreach}
							{else}
							<h2>Нет фото!</h2>
							{/if}
											</div>
					<a class="catalog_detail-scroll-pane-next" href="#"></a>
				</div>
				<div class="catalog_detail-bigpic">
					<a rel="gal1" id="zoom_images" class="catalog_detail-general_picture_a" href="#">
						<img class="catalog_detail-general_picture" src="" alt="" title="" />
						<div class="around_stickers">
						<div class="stickers" style="opacity:0;">
						{if $product->image}
														{if $product->featured}
														<div class="sticker_top"></div>
														{/if}
														{if $product->variant->compare_price > 0}
														<div class="sticker_new"></div>
														{/if}
														{if $new_products}
														<div class="sticker_sale"></div>
														{/if}
							{/if}
													
						</div>
						</div>
						<div class="like_zoomPad"></div>
					</a>
				</div>
			</div>
			
			<div class="catalog_detail-center_block">
								<!-- description & compare & quantity -->
				<div class="catalog_detail-center_block-description">
					<span class="btitle"><a href="tab_description" class="false_tablink">Описание</a></span>
					<span class="bbody">{$product->annotation}</span>
					<div class="clear"></div>
											<div class="catalog_detail-center_block-around_compare">
							<div class="catalog_detail-center_block-compare compare_icon">
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
										<div class="catalog_detail-center_block-stores">
												{if $product->variants|count > 0}
															<span class="propuct_quantity global_stores_full"><a href="#fancystores" class="fancystore">Есть в наличии</a></span>
															{else}
															<span class="propuct_quantity global_stores_empty">Нет в наличии</span>
															{/if}
											</div>
				</div>
				<!-- /description & compare & quantity -->
				</div>
			<div class="clear"></div>
			<div class="catalog_detail-obzor_separator"></div>
			<div class="clear"></div>
			<!-- OBZOR - bot part -->
			<table width="100%"><tbody><tr><td width="499" valign="top">
			<div class="catalog_detail-botcenter_block none2" style="display: none;">
								<!-- description & compare & quantity -->
				<div class="catalog_detail-center_block-description">
					<span class="btitle"><a href="tab_description" class="false_tablink">Описание</a></span>
					<span class="bbody">{$product->annotation}</span>
					<div class="clear"></div>
											<div class="catalog_detail-center_block-around_compare">
							<div class="catalog_detail-center_block-compare compare_icon">
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
										<div class="catalog_detail-center_block-stores">
												{if $product->variants|count > 0}
															<span class="propuct_quantity global_stores_full"><a href="#fancystores" class="fancystore">Есть в наличии</a></span>
															{else}
															<span class="propuct_quantity global_stores_empty">Нет в наличии</span>
															{/if}
											</div>
				</div>
				<!-- /description & compare & quantity -->
				</div>
                                
                                {if $smarty.session.admin == 'admin'}          	
                                {*характеристики*}
                                                
                                                {if $product->features}
							<div class="catalog_detail-obzor_props">
					<div class="catalog_detail-obzor_props-title"><a href="tab_properties" class="false_tablink">Основные характеристики</a></div>
					<table class="catalog_detail-obzor_props-table">
											<tbody>
											{$n=0}
											{foreach $product->features as $f}
											{$n=$n+1}
											{if $n<9}
											<tr>
							<td class="frst">{$f->name}</td>
							<td class="scnd">{$f->value}</td>
						</tr>
						{/if}
						{/foreach}
											
										</tbody></table>
				</div>
				{/if}
                                
                                
				{*характеристики*}
                                {/if}
										<div style="display:none;" id="fancystores">
					<div class="fancybox-title fancybox-title-inside-wrap">Наличие в магазинах</div>
					<div class="fancystores_inner">
						<table>
													<tbody><tr>
								<td valign="top" align="left"><strong>Интернет-магазин</strong></td>
								<td valign="top" align="left">г. Москва, ул. Лилипутов дом 4</td>
								<td valign="top" align="right"><div class="store_quantity global_stores_empty"><div style="width:14px;" class="store_quantity_active global_stores_full"></div></div></td>
							</tr>
													<tr>
								<td valign="top" align="left"><strong>Розничный магазин</strong></td>
								<td valign="top" align="left">г. Москва, Можайское шоссе, ул. Василек, дом 143</td>
								<td valign="top" align="right"><div class="store_quantity global_stores_empty"><div style="width:14px;" class="store_quantity_active global_stores_full"></div></div></td>
							</tr>
												</tbody></table>
					</div>
				</div>
						</td><td valign="top">
						{* Связанные товары *}
                       {if $related_products}
						<!-- accessories -->
			<div class="around_accessories">
				<div class="around_accessories-title"><a href="tab_accessories" class="false_tablink">Аксессуары</a></div>

	<div class="cat_blck">
	                  {foreach $related_products as $prod}
					  <span class="product">
								<div id="bx_2647885750_{$prod->id}" class="cat_blck-item-simple">
				<div class="cat_blck-item_inner">
					<div class="cat_blck-item-name">
					<a title="{$prod->name|escape}" href="products/{$prod->url}">{$prod->name|escape}</a></div>
					<div class="cat_blck-item-article"></div>
					<div class="cat_blck-item-picture">
						<a href="products/{$prod->url}">
						{if $prod->image}
			            <img  alt="{$prod->name|escape}" src="{$prod->image->filename|resize:175:175}">
						<div class="around_stickers">
						<div class="stickers" style="opacity: 1;">
						
														{if $product->featured}
														<div class="sticker_top"></div>
														{/if}
														{if $product->variant->compare_price > 0}
														<div class="sticker_new"></div>
														{/if}
														{if $new_products}
														<div class="sticker_sale"></div>
														{/if}
													
						</div></div>
						{else}
						
			            <img alt="{$prod->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
						
						{/if}
						</a>
					</div>
					<div class="cat_blck-item-price">
													<div class="cat_blck-item-price-buybtn">
									<input type="button" class="add2basket_areadyin btn2_102_full js-alreadyinbasket js-productid82 none2" value="Добавлено" />
									<input  class="add2basket_baton btn1_102_full text_shadow js-add2basket js-productid82" type="submit" data-result-text="Добавлено" value="В корзину" />
								</div>
																			<br>
												<span class="new_price nowrap">{$prod->variant->price|convert} {$currency->sign|escape}</span>
						<div class="clear"></div>
					</div>	
				</div>
								<div style="display:none;" class="block_hidden box_shadow">
					<div class="cat_blck-item_inner">
					
					<div class="cat_blck-item-name"><a title="{$prod->name|escape}" href="products/{$prod->url}">{$prod->name|escape}</a></div>
					<div class="cat_blck-item-article"></div>
					
						<div class="cat_blck-item-picture">
							<a href="products/{$prod->url}">
							{if $prod->image}
							<span class="image">
											<img alt="{$prod->name|escape}" src="{$prod->image->filename|resize:175:175}">
											</span>
																<div class="around_stickers">
						<div class="stickers" style="opacity: 1;">
						
														{if $product->featured}
														<div class="sticker_top"></div>
														{/if}
														{if $product->variant->compare_price > 0}
														<div class="sticker_new"></div>
														{/if}
														{if $new_products}
														<div class="sticker_sale"></div>
														{/if}
													
						</div></div>
						{else}
						<span class="image">
			            <img alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
						</span>
						{/if}
							</a>
						</div>
						<form class="variants" action="/cart">
						{foreach $prod->variants as $v}
			            <input id="featured_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} style="display:none;"/>
		                {/foreach}
						<div class="cat_blck-item-price">
												<div class="cat_blck-item-price-buybtn">
									<input type="button" class="add2basket_areadyin btn2_102_full js-alreadyinbasket js-productid82 none2" value="Добавлено" />
									<input  class="add2basket_baton btn1_102_full text_shadow js-add2basket js-productid82" type="submit" data-result-text="Добавлено" value="В корзину" />
								</div>
																						<br>
														<span class="new_price nowrap">{$prod->variant->price|convert} {$currency->sign|escape}</span>
							<div class="clear"></div>
						</div>
                       </form>						
			
					</div>
					<div class="cat_blck-item_inner">
					<div class="cat_blck-item-description cat_blck-item-description_normal">{$prod->annotation}</div>
					<div class="clear"></div>
					<div class="cat_blck-item-botter">
						<div class="cat_blck-item-botter-compare compare_icon">
						<form action="/compare" class="compare">
{if $compare_informer->items_id[{$prod->id}]>0}
В <a href="/compare/">сравнения</a>
{else}
<input id="compare_{$prod->id}" name="compare" value="{$prod->id}" style="display:none;" type="checkbox" />
<label for="compare_{$prod->id}" style="border-bottom: 1px dashed #000; cursor: pointer"><a>Сравнить</a></label>
{/if}
</form>	
						</div>
						<div class="cat_blck-item-botter-quantity">
															{if $prod->variants|count > 0}
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
			<!-- /accessories -->
			{/if}
						</td></tr></tbody></table>
			<!-- /OBZOR - bot part -->
		</div>
		<div class="clear"></div>
		<div style="display:none;" id="tab_description" class="catalog_detail-tabscontent-tab">
						<!-- multiblock -->
			<div class="around_catalog_detail-multiblock">
				<div class="around_catalog_detail-price">
											<span class="old_price">{if $product->variant->compare_price > 0}{$product->variant->compare_price|convert} {$currency->sign|escape}{/if}</span><br>
										<span class="new_price">{$product->variant->price|convert} {$currency->sign|escape}</span>
				</div>
				<form class="variants" action="/cart">
						{foreach $product->variants as $v}
			            <input id="featured_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} style="display:none;"/>
		                {/foreach}
				<div class="catalog_detail-multiblock">
					<div id="alreadyinbasketblock2" style="display: none;" data-productid="{$product->id}" class="js-alreadyinbasketblock js-productid15">
						<div class="catalog_detail-aready_in_basket"></div>
						<a href="cart/" class="catalog_detail-go2basket btn2_240"><span class="bcenter">Перейти в корзину</span></a>
					</div>
						<div id="add2basketblock2"  data-productid="{$product->id}" class="js-add2basketblock js-productid15">
							<a href="#" onclick="$(this).closest('form').submit(); basketblock2(); return false;" class="catalog_detail-add2basket btn1_240"><span class="bicon"></span><span class="bcenter">В корзину</span></a>
<a href="#fancybuy1click" class="catalog_detail-buy1click btn2_240  b1c"><span class="bcenter">Купить в 1 клик</span></a>
						</div>
																
									</div>
									</form>
									
			</div>
			<!-- /multiblock -->
				<div class="catalog_detail-description_text">{$product->body}</div>
		</div>
		<div class="clear"></div>
		<div style="display:none;" id="tab_properties" class="catalog_detail-tabscontent-tab">
						<!-- multiblock -->
			<div class="around_catalog_detail-multiblock">
				<div class="around_catalog_detail-price">
											<span class="old_price">{if $product->variant->compare_price > 0}{$product->variant->compare_price|convert} {$currency->sign|escape}{/if}</span><br>
										<span class="new_price">{$product->variant->price|convert} {$currency->sign|escape}</span>
				</div>
				<form class="variants" action="/cart">
						{foreach $product->variants as $v}
			            <input id="featured_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} style="display:none;"/>
		                {/foreach}
				<div class="catalog_detail-multiblock">
					<div id="alreadyinbasketblock3" style="display: none;" data-productid="{$product->id}" class="js-alreadyinbasketblock js-productid15">
						<div class="catalog_detail-aready_in_basket"></div>
						<a href="cart/" class="catalog_detail-go2basket btn2_240"><span class="bcenter">Перейти в корзину</span></a>
					</div>
						<div id="add2basketblock3" data-productid="{$product->id}" class="js-add2basketblock js-productid15">
							<a href="#" onclick="$(this).closest('form').submit(); basketblock3(); return false;" class="catalog_detail-add2basket btn1_240"><span class="bicon"></span><span class="bcenter">В корзину</span></a>
							<a href="#fancybuy1click" class="catalog_detail-buy1click btn2_240  b1c"><span class="bcenter">Купить в 1 клик</span></a>
						</div>
																
									</div>
									</form>
									
			</div>
			<!-- /multiblock -->
				
<div class="catalog_detail_properties">
						<table class="gruptable">
				<thead>
					<tr>
						<td valign="top" colspan="2">Общие характеристики</td>
					</tr>
				</thead>
				<tbody>
				{foreach $product->features as $f}
										<tr class="propertydata">
						<td valign="top" class="first">{$f->name}</td>
						<td valign="top" class="second">{$f->value}</td>
					</tr>
					{/foreach}
									
			</table>
								
			
	
</div>		</div>
		
		<div class="clear"></div>		<div style="display:none;" id="tab_accessories" class="catalog_detail-tabscontent-tab">
						<!-- multiblock -->
			<div class="around_catalog_detail-multiblock">
				<div class="around_catalog_detail-price">
											<span class="old_price">{if $product->variant->compare_price > 0}{$product->variant->compare_price|convert} {$currency->sign|escape}{/if}</span><br>
										<span class="new_price">{$product->variant->price|convert} {$currency->sign|escape}</span>
				</div>
				<form class="variants" action="/cart">
						{foreach $product->variants as $v}
			            <input id="featured_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} style="display:none;"/>
		                {/foreach}
				<div class="catalog_detail-multiblock">
					<div id="alreadyinbasketblock4" style="display: none;" data-productid="{$product->id}" class="js-alreadyinbasketblock js-productid15">
						<div class="catalog_detail-aready_in_basket"></div>
						<a href="cart/" class="catalog_detail-go2basket btn2_240"><span class="bcenter">Перейти в корзину</span></a>
					</div>
						<div id="add2basketblock4" data-productid="{$product->id}" class="js-add2basketblock js-productid15">
							<a href="#" onclick="$(this).closest('form').submit(); basketblock4(); return false;" class="catalog_detail-add2basket btn1_240"><span class="bicon"></span><span class="bcenter">В корзину</span></a>
							<a href="#fancybuy1click" class="catalog_detail-buy1click btn2_240  b1c"><span class="bcenter">Купить в 1 клик</span></a>
						</div>
																
									</div>
									</form>
									
			</div>
			<!-- /multiblock -->
				<div class="around_content_tab_accessories">
			
	<div class="cat_blck">
								{foreach $related_products as $prod}
								<span class="product">
								<div id="bx_2647885750_{$prod->id}" class="cat_blck-item-simple">
				<div class="cat_blck-item_inner">
					<div class="cat_blck-item-name">
					<a title="{$prod->name|escape}" href="products/{$prod->url}">{$prod->name|escape}</a></div>
					<div class="cat_blck-item-article"></div>
					<div class="cat_blck-item-picture">
						<a href="products/{$prod->url}">
			            {if $prod->image}
						<img  alt="{$prod->name|escape}" src="{$prod->image->filename|resize:175:175}">
						<div class="around_stickers">
						<div class="stickers" style="opacity: 1;">
						
														{if $product->featured}
														<div class="sticker_top"></div>
														{/if}
														{if $product->variant->compare_price > 0}
														<div class="sticker_new"></div>
														{/if}
														{if $new_products}
														<div class="sticker_sale"></div>
														{/if}
													
						</div></div>
						{else}
	                  <img alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
					{/if}
						</a>
					</div>
					<div class="cat_blck-item-price">
													<div class="cat_blck-item-price-buybtn">
									<input type="button" class="add2basket_areadyin btn2_102_full js-alreadyinbasket js-productid82 none2" value="Добавлено" />
									<input  class="add2basket_baton btn1_102_full text_shadow js-add2basket js-productid82" type="submit" data-result-text="Добавлено" value="В корзину" />
								</div>
																			<br>
												<span class="new_price nowrap">{$prod->variant->price|convert} {$currency->sign|escape}</span>
						<div class="clear"></div>
					</div>	
				</div>
								<div style="display:none;" class="block_hidden box_shadow">
					<div class="cat_blck-item_inner">
					
					<div class="cat_blck-item-name"><a title="{$prod->name|escape}" href="products/{$prod->url}">{$prod->name|escape}</a></div>
					<div class="cat_blck-item-article"></div>
					
						<div class="cat_blck-item-picture">
							<a href="products/{$prod->url}">
							 {if $prod->image}
							<span class="image">
											<img alt="{$prod->name|escape}" src="{$prod->image->filename|resize:175:175}">
											</span>
																<div class="around_stickers">
						<div class="stickers" style="opacity: 1;">
						
														{if $product->featured}
														<div class="sticker_top"></div>
														{/if}
														{if $product->variant->compare_price > 0}
														<div class="sticker_new"></div>
														{/if}
														{if $new_products}
														<div class="sticker_sale"></div>
														{/if}
													
						</div></div>
						{else}
						<span class="image">
			            <img alt="{$product->name|escape}" src="design/{$settings->theme|escape}/images/no-image.png">
						</span>
						{/if}
							</a>
						</div>
						<form class="variants" action="/cart">
						{foreach $prod->variants as $v}
			            <input id="featured_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} style="display:none;"/>
		                {/foreach}
						<div class="cat_blck-item-price">
												<div class="cat_blck-item-price-buybtn">
									<input type="button" class="add2basket_areadyin btn2_102_full js-alreadyinbasket js-productid82 none2" value="Добавлено" />
									<input  class="add2basket_baton btn1_102_full text_shadow js-add2basket js-productid82" type="submit" data-result-text="Добавлено" value="В корзину" />
								</div>
																						<br>
														<span class="new_price nowrap">{$prod->variant->price|convert} {$currency->sign|escape}</span>
							<div class="clear"></div>
						</div>
                       </form>						
			
					</div>
					<div class="cat_blck-item_inner">
					<div class="cat_blck-item-description cat_blck-item-description_normal">{$prod->annotation}</div>
					<div class="clear"></div>
					<div class="cat_blck-item-botter">
						<div class="cat_blck-item-botter-compare compare_icon">
						<form action="/compare" class="compare">
{if $compare_informer->items_id[{$prod->id}]>0}
В <a href="/compare/">сравнения</a>
{else}
<input id="compare_{$prod->id}" name="compare" value="{$prod->id}" style="display:none;" type="checkbox" />
<label for="compare_{$prod->id}" style="border-bottom: 1px dashed #000; cursor: pointer"><a>Сравнить</a></label>
{/if}
</form>	
						</div>
						<div class="cat_blck-item-botter-quantity">
															{if $prod->variants|count > 0}
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
		</div>
		<div class="clear"></div>
		<div style="display:none;" id="tab_review" class="catalog_detail-tabscontent-tab">
						<!-- multiblock -->
			<div class="around_catalog_detail-multiblock">
				<div class="around_catalog_detail-price">
											<span class="old_price">{if $product->variant->compare_price > 0}{$product->variant->compare_price|convert} {$currency->sign|escape}{/if}</span><br>
										<span class="new_price">{$product->variant->price|convert} {$currency->sign|escape}</span>
				</div>
				<form class="variants" action="/cart">
						{foreach $product->variants as $v}
			            <input id="featured_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} style="display:none;"/>
		                {/foreach}
				<div class="catalog_detail-multiblock">
					<div id="alreadyinbasketblock5" style="display: none;" data-productid="{$product->id}" class="js-alreadyinbasketblock js-productid15">
						<div class="catalog_detail-aready_in_basket"></div>
						<a href="cart/" class="catalog_detail-go2basket btn2_240"><span class="bcenter">Перейти в корзину</span></a>
					</div>
						<div id="add2basketblock5"  data-productid="{$product->id}" class="js-add2basketblock js-productid15">
							<a href="#" onclick="$(this).closest('form').submit(); basketblock5(); return false;" class="catalog_detail-add2basket btn1_240"><span class="bicon"></span><span class="bcenter">В корзину</span></a>
							<a href="#fancybuy1click" class="catalog_detail-buy1click btn2_240  b1c"><span class="bcenter">Купить в 1 клик</span></a>
						</div>
																
									</div>
									</form>
									
			</div>
			<!-- /multiblock -->
			
				<div class="around_content_tab_review">
			
<div class="reviews-block-container reviews-reviews-block-container">
	<div class="reviews-block-outer">
		<div class="reviews-block-inner">
	
		</div>
	</div>
</div>

<!-- Комментарии -->
<div id="comments">

	<h2>Комментарии</h2>
	
	{if $comments}
	<!-- Список с комментариями -->
	<ul class="comment_list">
		{foreach $comments as $comment}
		<a name="comment_{$comment->id}"></a>
		<li>
			<!-- Имя и дата комментария-->
			<div class="comment_header">	
				{$comment->name|escape} <i>{$comment->date|date}, {$comment->date|time}</i>
				{if !$comment->approved}ожидает модерации</b>{/if}
			</div>
			<!-- Имя и дата комментария (The End)-->
			
			<!-- Комментарий -->
			{$comment->text|escape|nl2br}
			<!-- Комментарий (The End)-->
		</li>
		{/foreach}
	</ul>
	<!-- Список с комментариями (The End)-->
	{else}
	<p>
		Пока нет комментариев
	</p>
	{/if}
	
	<!--Форма отправления комментария-->	
	<form style="width: 450px;" class="comment_form" method="post">
		<h2>Написать комментарий</h2>
		{if $error}
		<div class="message_error">
			{if $error=='captcha'}
			Неверно введена капча
			{elseif $error=='empty_name'}
			Введите имя
			{elseif $error=='empty_comment'}
			Введите комментарий
			{/if}
		</div>
		{/if}
		<textarea  class="comment_textarea" id="comment_text" name="text" data-format=".+" data-notice="Введите комментарий">{$comment_text}</textarea><br />
		<div>
		<label for="comment_name">Имя</label>
		<input class="input_name" type="text" id="comment_name" name="name" value="{$comment_name}" data-format=".+" data-notice="Введите имя"/><br />

		
		
		<label for="comment_captcha">Число</label>
		<div class="captcha"><img src="captcha/image.php?{math equation='rand(10,10000)'}" alt='captcha'/></div> 
		<input class="input_captcha" id="comment_captcha" type="text" name="captcha_code" value="" data-format="\d\d\d\d" data-notice="Введите капчу"/>
		<input style="margin: 18px 0px 0px 131px;" class="btn2_220_full" type="submit" name="comment" value="Отправить" />
		</div>
	</form>
	<!--Форма отправления комментария (The End)-->
	
</div>
<!-- Комментарии (The End) -->

</div>
		</div>
	</div>
</div>


					
					<div class="clear"></div>
				</div>
				
	<script>			
				
	function basketblock()

	{

		if ($("#alreadyinbasketblock").css("display")=="block")

		{

			$("#alreadyinbasketblock").css("display", "none");

			$("#add2basketblock").css("display", "block");
                        
        }

		else

		{

			$("#alreadyinbasketblock").css("display", "block");

			$("#add2basketblock").css("display", "none");
                        
        }

	}
	
	
	function basketblock2()

	{

		if ($("#alreadyinbasketblock2").css("display")=="block")

		{

			$("#alreadyinbasketblock2").css("display", "none");

			$("#add2basketblock2").css("display", "block");
                        
        }

		else

		{

			$("#alreadyinbasketblock2").css("display", "block");

			$("#add2basketblock2").css("display", "none");
                        
        }

	}
	
	function basketblock3()

	{

		if ($("#alreadyinbasketblock3").css("display")=="block")

		{

			$("#alreadyinbasketblock3").css("display", "none");

			$("#add2basketblock3").css("display", "block");
                        
        
		}

		else

		{

			$("#alreadyinbasketblock3").css("display", "block");

			$("#add2basketblock3").css("display", "none");
                        
                        
        }

	}
	
	function basketblock4()

	{

		if ($("#alreadyinbasketblock4").css("display")=="block")

		{

			$("#alreadyinbasketblock4").css("display", "none");

			$("#add2basketblock4").css("display", "block");
                        
        
		}

		else

		{

			$("#alreadyinbasketblock4").css("display", "block");

			$("#add2basketblock4").css("display", "none");
                        
                        
        }

	}
	
	function basketblock5()

	{

		if ($("#alreadyinbasketblock5").css("display")=="block")

		{

			$("#alreadyinbasketblock5").css("display", "none");

			$("#add2basketblock5").css("display", "block");
                        
        
		}

		else

		{

			$("#alreadyinbasketblock5").css("display", "block");

			$("#add2basketblock5").css("display", "none");
                        
                        
        }

	}

</script>
		