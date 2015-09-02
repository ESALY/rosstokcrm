<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Бренды" href="/compare" class="last">Сравнение товаров</a></li>
</ul>

<div id="content">

<script language="JavaScript">

function toggleCompareDiffProperties(objCheckbox)
{
var arrObj = $('table.compare > tbody > tr').not('.diff').not('.action');

  if( $(objCheckbox).attr('checked') )
  {
    arrObj.hide();
  }
  else
  {
    arrObj.show();
  }
}

// Скрываем/отображаем колонки
function showHideCompareColumn(objInTd, needShow)
{
  var td = $(objInTd).parents('td:first');
  var index = th.index();

  $('table.compare').find('tr.hideable').each(function(rowIndex)
  {
    var td = $(this).find('td').eq(index);
    if(td.length == 0) td = $(this).find('td').eq(index);

    var content = '';//$(td).find('div.hidden').html();
    if(! needShow) content = '<div class="hidden">' + $(td).html() + '</div>&nbsp;';
    else content = $(td).find('div.hidden').html();

    // Нв верхней строке будет кнопочка, чтобы можно было развернуть (это если мы скрываем колонку)
    if(! rowIndex && ! needShow)
    {
      content = '<center><div class="expand" title="Показать скрытый товар" onclick="showHideCompareColumn(this, true); return false"></div></center>' + content;
    }

    $(td).html(content);
  });
}

</script>

<h1 class="pagetitle">Сравнение товаров</h1>

{if $compare->total>0}

<table class="catalog_compare-table_head compare">
	<thead>
		<tr>
			<td valign="top" class="header_repeat_1">Товары</td>
		</tr>
		<tr>
			<td valign="top" class="catalog_compare-table_head-diffnodiff td_other_in_head">
				<!-- links = diff & not diff -->
				<noindex>
									Все характеристики								<br>
								{if $compare->total>1}
        <br />
           <label style="cursor: pointer"><input type="checkbox" onclick="toggleCompareDiffProperties(this)"><a> показать <b>только отличия</b></a></label><br />
        {/if}
				<!-- /links = diff & not diff -->
				 
			</td>
			
		</tr>
	</thead>
	
	<tbody>
					
														<tr class='diff hideable'>
						<td class="header_repeat_1"><span title="Общие характеристики" class="stop_wrap">Общие характеристики</span></td>
					</tr>
																		<tr class='diff hideable'>
								<td valign="top" class="td_other_in_head">
									<span title="Производитель" class="stop_wrap">Производитель</span>
								</td>
							</tr>
							{foreach from=$compare->features key=k item=i}
								<tr {if $i.diff}class='diff hideable'{/if}>
								<td valign="top" class="td_other_in_head {if $i.diff}diff{/if}">
									<span title="Платформа" class="stop_wrap">{$k|escape}</span>
								</td>
							</tr>
							{/foreach}
																
						
															</tbody>
</table>

<div class="around_catalog_compare-scroller">
	<div class="catalog_compare-scroller-aroundbtns">
		<div class="catalog_compare-scroller-aroundnext"><a href="#" class="catalog_compare-scroller-next" style="display: none; position: absolute;"></a></div>
		<div class="catalog_compare-scroller-aroundprev"><a href="#" class="catalog_compare-scroller-prev" style="display: none; position: absolute;"></a></div>
	</div>
	<div class="catalog_compare-scroller" style="width: 1000px;"><div class="catalog_compare-scrollerContainer" style="width: 1000px; height: 1485px;"><div class="catalog_compare-scrollerInner" style="width: 1000px; left: 0px;">
		<div>
		<table class="catalog_compare-table_items compare">
			<thead>
				<tr>
					{foreach $compare->products as $product}
					<span class="product">
					<!-- show elements -->
										<td valign="top" class="product">
						<div class="catalog_compare-item-delete">
							<input type="checkbox" value="12" name="ID[]" id="delete_checkbox_12" class="none2">
							<a href="compare/remove/{$product->id}" class="catalog_compare-item-delete-delete_link"></a>
							<div class="clear"></div>
						</div>
						<!---------------------------->
						<div class="catalog_compare-item-simple">
							<div class="catalog_compare-item_inner">
								<div class="catalog_compare-item-name">
								<a title="{$product->name|escape}" href="products/{$product->url}">{$product->name|escape}</a></div>
								<div class="catalog_compare-item-picture">
									<a href="products/{$product->url}">
								{if $product->image}
								<span class="image">
								<img  alt="{$product->name|escape}" src="{$product->image|resize:150:150}">
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
								<div class="catalog_compare-item-price">
								{if $product->variants|count > 0}
								<form class="variants" action="/cart">
						{foreach $product->variants as $v}
			            <input id="featured_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} style="display:none;"/>
		                {/foreach}
								<div style="float: right;" class="cat_blck-item-price-buybtn">
								<input type="button" style="margin-top: 0px;" class="add2basket_areadyin btn2_102_full js-alreadyinbasket js-productid82 none2" data-productid="82" value="Добавлено" />
								<input  style="margin-top: 0px;" class="add2basket_baton btn1_102_full text_shadow js-add2basket js-productid82" data-productid="82" type="submit" data-result-text="Добавлено" value="В корзину" />
							</div>
							</form>
										
           
					          
								<span class="new_price nowrap">{$product->variant->price|convert} {$currency->sign|escape}</span>
								{else}
								<span class="new_price nowrap">Нет в наличии</span>
								{/if}
								
							
									<div class="clear"></div>
								</div>	
							</div>
						</div>
						<!---------------------------->
					</td>
					</span>
										
										<!-- /show elements -->
										{/foreach}

				</tr>
				</thead>
			<tbody>
																						<tr class='diff hideable'>
								{foreach $compare->products as $product}
								<td valign="top" class="header_repeat_1" colspan="1">&nbsp;</td>
									{/foreach}
								

							</tr>
														<tr class="property_line {if $i.diff}diff hideable{/if}">
														{foreach $compare->products as $product}
									<td valign="top" data-intvalue="0" class="td_other_in_items property">
											{$product->brand|escape}									</td>
											{/foreach}
									
																								</tr>
											{foreach from=$compare->features key=k item=i}
											<tr class="property_line {if $i.diff}diff hideable{/if}">
											{foreach from=$i.items item=ii}
											<td valign="top" data-intvalue="{$ii}" class="td_other_in_items property">
											<span class="stop_wrap">{$ii}</span>
											</td>
											{/foreach}
										
												</tr>
												{/foreach}
														
																									</tbody>
		</table>
		</div>
	</div></div></div>
</div>

{else}
					Список сравнения пуст
					{/if}
<div class="clear"></div><br><br><br><br><br><br><br><br><br><br>








					
					<div class="clear"></div>
</div>
					
					
				