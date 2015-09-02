    <ul class="breadcrumb-navigation">
    <li><a title="Главная" href="/">Главная</a></li>
    {if $category}
    {foreach from=$category->path item=cat name=products}
    <li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
    <li><a {if $smarty.foreach.products.last}class="last"{/if} title="{$cat->name|escape}" href="catalog/{$cat->url}">{$cat->name|escape}</a></li>
    {/foreach}  
    {if $brand}
    <li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
    <li><a class="last" title="{$brand->name|escape}" href="catalog/{$cat->url}/{$brand->url}">{$brand->name|escape}</a></li>
    {/if}
    {elseif $brand}
    <li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
    <li><a class="last" title="{$brand->name|escape}" href="brands/{$brand->url}">{$brand->name|escape}</a></li>
    {elseif $keyword}
    <li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
    <li><a class="last">Поиск</a></li>
    {/if}
    </ul>	
				
				
				
<div id="content"><!-- content -->
<table cellspacing="0" cellpadding="0" border="0">
	<tbody><tr>
		<td valign="top">
			
			<!------------------------ sidebar ------------------------>
			<div class="around_sidebar">
			
	{foreach $categories as $c}
				{* Показываем только видимые категории *}
				{if $c->visible && in_array($category->id, $c->children)}			
	<div class="catalog_section_list">
		<div class="catalog_section_list-inner">
				
			{foreach $c->subcategories as $cat}
				{* Показываем только видимые категории *}
				{if $cat->visible}
					<div>
						<span class="tochka">• &nbsp; </span><a href="catalog/{$cat->url}" data-category="{$cat->id}" class="catalog_section_list-link">{$cat->name}</a>
					</div>
					<div class="clear"></div>
						{/if}
			{/foreach}
			
															
									</div>
	</div>
		{/if}
			{/foreach}
			

	{if !$keyword && $minCost<$maxCost}				
<div class="around_smartfilter">
<form class="smartfilter" method="get" action="{url page=null}" id="frm-price" name="_form">
		<div class="filtren">
		<ul>
		
		
		 <script>
{literal}
jQuery(document).ready(function(){
{/literal}
		minCost={$minCost}
		maxCost={$maxCost}
		minCurr={$minCurr}
		maxCurr={$maxCurr}
{literal}
})
{/literal}
	</script>		
<script type="text/javascript" src="priceslider/jquery.ui-slider.js"></script>
<script type="text/javascript" src="priceslider/priceslider.js"></script>
    
		
		<!-- prices -->
				<li class="lvl1"> <a class="prop_name showchild" data-propid="1"  onclick="return false" href="#ul_1">BASE</a>
				<span class="bhfilter-prop-name-minus">&nbsp;</span><div class="clear"></div>
				<ul id="ul_1" style="display: block;">
					<li class="lvl2">
						<div class="in_price_block_padding"></div>
						<span class="prs_text">От&nbsp; </span>
						<span class="prs"><input type="text" onkeyup="smartFilter.keyup(this)" size="6" value="{$minCurr}" name="minCurr" id="minCurr" class="min-price">
						</span>
						<span class="prs_text">&nbsp; До&nbsp; </span>
						<span class="prs"><input type="text" onkeyup="smartFilter.keyup(this)" size="6" value="{$maxCurr}" name="maxCurr"  id="maxCurr" class="max-price">
						</span>
					</li>
					<div class="clear"></div>
					<div class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" id="slider">
						<a href="#" class="ui-slider-handle ui-state-default ui-corner-all ui-cursor-left" ></a>
						<a href="#" class="ui-slider-handle ui-state-default ui-corner-all ui-cursor-right"></a>
						<div class="ui-slider-range ui-widget-header"></div>
					<div class="ui-slider-range ui-widget-header"></div></div>
				</ul>
			</li>
			<!-- /prices -->
			
			
		                    {* Фильтр по брендам *}
                            {if $category->brands}
							
		               <li class="lvl1"><a title="Производитель" class="prop_name showchild" data-propid="13" onclick="return false" href="#ul_13">Производитель</a> <span class="bhfilter-prop-name-minus">&nbsp;</span><div class="clear"></div>
				<ul class="lvl2" id="ul_13">
				        <li class="lvl2 {if !$brand->id}li_checked{/if}"><a style="text-decoration: none;" href="catalog/{$category->url}"><label {if !$brand->id}class="label_checked"{/if}  for="arrFilter_13_2760916253"><span>Все бренды</span></label></a><div class="clear"></div></li>
					<div class="clear"></div>
						                {foreach name=brands item=b from=$category->brands}
					<li class="lvl2 {if $b->id == $brand->id}li_checked{/if}"><a style="text-decoration: none;" data-brand="{$b->id}" onclick="smartFilter.click(this)" href="catalog/{$category->url}/{$b->url}"><label {if $b->id == $brand->id}class="label_checked"{/if}  for="arrFilter_13_2760916253"><span>{$b->name|escape}</span></label></a><div class="clear"></div></li>
					                    {/foreach}
			        <li class="clear_all"><a href="catalog/{$category->url}"><span>Очистить все</span></a></li>
				</ul>
				<div class="clear"></div>
			</li>
			{/if}
                    
                {* Фильтр по свойствам *}
                {if $features}					
	           {foreach $features as $f}		
				<li data-feature="{$f->id}" class="lvl1"><a title="{$f->name}" class="prop_name showchild" data-propid="{$f->id}" onclick="return false" href="#ul_{$f->id}">{$f->name}</a> <span class="bhfilter-prop-name-minus">&nbsp;</span><div class="clear"></div>
				<ul class="lvl2" id="ul_{$f->id}">
										 {foreach $f->options as $k=>$o name=products}
										<li class="lvl2 {if $filter_features.{$f->id} && in_array($o->value,$filter_features.{$f->id})}li_checked{/if}"><input type="checkbox" onchange="submit(this.form);"  onclick="smartFilter.click(this)" id="arrFilter_{$f->id}_{$smarty.foreach.products.iteration}" name="{$f->id}[]" {if $filter_features.{$f->id} && in_array($o->value,$filter_features.{$f->id})}checked="checked"{/if} value="{$o->value|escape}"  class="lvl2_checkbox"><label {if $filter_features.{$f->id} && in_array($o->value,$filter_features.{$f->id})}class="label_checked"{/if} for="arrFilter_{$f->id}_{$smarty.foreach.products.iteration}"><span>{$o->value|escape}</span></label><div class="clear"></div></li>
					                       <div class="clear"></div>
										{/foreach}
										<li class="clear_all"><a href="catalog/{$category->url}"><span>Очистить все</span></a></li>
				</ul>
				<div class="clear"></div>
			</li>
				{/foreach}
				{/if}
												</ul>
		
		
		<div class="smartbuttons">
			<input type="submit" value="Показать"  class="butt btn1_102_full text_shadow">
                 <a href="catalog/{$category->url}"><input type="button" value="Сбросить" id="del_filter" class="butt btn1_102_full text_shadow"></a>
		</div>
		

		
	</div>
</form>

</div>	
{/if}						</div>
			<!------------------------ /sidebar ------------------------>
		</td>
		<td valign="top" style="width:100%;">
			<!------------------------ catalog ------------------------>
			{* Заголовок страницы *}
			{if $keyword}
			<h1 class="pagetitle">Поиск {$keyword|escape}</h1>
			{elseif $page}
			<h1 class="pagetitle">{$page->name|escape}</h1>
			{else}
			<h1 class="pagetitle">{$category->name|escape} {$brand->name|escape} {$keyword|escape}</h1>
			{/if}
			
			{if $products}
			
			<div class="around_catalog">
				
								
<div class="catalog-section-sorter">
			<span class="sorter-title-vne">Сортировка по: </span>
		<div data-name="ctemplate" class="sorter-select sorter_select_130_div">
		<div class="title"><div class="text">по умолчанию</div></div>
														<div style="display:none;" class="select-values box_shadow">
															<div class="title"><div class="text">по умолчанию</div></div>
													            <div class="clear"></div>
									<a href="{url sort=position page=null}"><div class="text">по умолчанию</div><div class="clear"></div></a>
									<a href="{url sort=name_asc page=null}"><div class="text">алфавиту</div> <div class="up"></div><div class="clear"></div></a>
									<a href="{url sort=name_desc page=null}"><div class="text">алфавиту</div> <div class="down"></div><div class="clear"></div></a>
									<a href="{url sort=price_asc page=null}"><div class="text">цене</div> <div class="up"></div><div class="clear"></div></a>
									<a href="{url sort=price_desc page=null}"><div class="text">цене</div> <div class="down"></div><div class="clear"></div></a>
							</div>
		</div>
		
			<span class="sorter-title-vne">Показывать: </span>
		<div data-name="coutput" class="sorter-select sorter_select_35_div">
		<div class="title"><span class="text">15</span></div>
		<div style="display:none;" class="select-values box_shadow">
				        <div class="title">15</div>
				           <div class="clear"></div>
									<a href="{url on_page=15 page=null}">15</a>
									<a href="{url on_page=$on_pages page=null}">{$on_pages}</a>
									<a href="{url on_page=50 page=null}">50</a>
									<a href="{url on_page=100 page=null}">100</a>
						</div>
		</div>
		
      <div class="sorter-templates">
              <div class="sorter-template tmpl-catalog_blocks">
                      <a onclick="document.cookie='view=blocks;path=/';document.location.reload();" href="javascript:;" {if $smarty.cookies.view == 'list_big'}{elseif $smarty.cookies.view == 'list_small'} {else}class="active"{/if}></a>
              </div>
              
              <div class="sorter-template tmpl-catalog_list_small">
                      <a onclick="document.cookie='view=list_small;path=/';document.location.reload();" href="javascript:;" {if $smarty.cookies.view == 'list_small'}class="active"{/if} ></a>
              </div>
              
              <div class="sorter-template tmpl-catalog_list_big">
                      <a   onclick="document.cookie='view=list_big;path=/';document.location.reload();" href="javascript:;" {if $smarty.cookies.view == 'list_big'}class="active"{/if}></a>
              </div>
      </div>
	</div>									
	<div class="catalog_pn">
	{include file='pagination.tpl'}
	</div>
					<div class="clear"></div>
								
<div class="over_catalog_separator" style="height: 0px;"></div>

	 
 {if $smarty.cookies.view == 'list_big'}
 {include file='catalog_list_big.tpl'} 
 {elseif $smarty.cookies.view == 'list_small'} 
 {include file='catalog_list_small.tpl'} 
 {else} 
 {include file='catalog_blocks.tpl'}
 {/if}
	 
	
	
	
	
								
<div class="catalog-section-sorter">
			<span class="sorter-title-vne">Сортировка по: </span>
		<div data-name="ctemplate" class="sorter-select sorter_select_130_div">
		<div class="title"><div class="text">по умолчанию</div></div>
														<div style="display:none;" class="select-values box_shadow">
															<div class="title"><div class="text">по умолчанию</div></div>
													            <div class="clear"></div>
									<a href="{url sort=position page=null}"><div class="text">по умолчанию</div><div class="clear"></div></a>
									<a href="{url sort=name_asc page=null}"><div class="text">алфавиту</div> <div class="up"></div><div class="clear"></div></a>
									<a href="{url sort=name_desc page=null}"><div class="text">алфавиту</div> <div class="down"></div><div class="clear"></div></a>
									<a href="{url sort=price_asc page=null}"><div class="text">цене</div> <div class="up"></div><div class="clear"></div></a>
									<a href="{url sort=price_desc page=null}"><div class="text">цене</div> <div class="down"></div><div class="clear"></div></a>
							</div>
		</div>
		
			<span class="sorter-title-vne">Показывать: </span>
		<div data-name="coutput" class="sorter-select sorter_select_35_div">
		<div class="title"><span class="text">15</span></div>
		<div style="display:none;" class="select-values box_shadow">
				        <div class="title">15</div>
				           <div class="clear"></div>
									<a href="{url on_page=15 page=null}">15</a>
									<a href="{url on_page=$on_pages page=null}">{$on_pages}</a>
									<a href="{url on_page=50 page=null}">50</a>
									<a href="{url on_page=100 page=null}">100</a>
						</div>
		</div>
		
<div class="sorter-templates">
        <div class="sorter-template tmpl-catalog_blocks">
                <a onclick="document.cookie='view=blocks;path=/';document.location.reload();" href="javascript:;" {if $smarty.cookies.view == 'blocks'}class="active"{/if}></a>
        </div>
        
        <div class="sorter-template tmpl-catalog_list_small">
                <a onclick="document.cookie='view=list_small;path=/';document.location.reload();" href="javascript:;" {if $smarty.cookies.view == 'list_small'}class="active"{/if} ></a>
        </div>
        
        <div class="sorter-template tmpl-catalog_list_big">
                <a   onclick="document.cookie='view=list_big;path=/';document.location.reload();" href="javascript:;" {if $smarty.cookies.view == 'list_big'}class="active"{/if}></a>
        </div>
</div>
	</div>									
	<div class="catalog_pn">
	{include file='pagination.tpl'}
	</div>
					<div class="clear"></div>
                       <div class="description"> 
                         <span>
                         
                         {* Описание страницы (если задана) *}
                         {$page->body}
                         
                         {if $current_page_num==1}
                         {* Описание категории *}
                         {$category->description}
                         {/if}
                         
                         {* Описание бренда *}
                         {$brand->description}
                         
                         </span>
                             </div>

			</div>
			<!------------------------ /catalog ------------------------>
			
			
			{else}
				<p><font class="errortext">Товары не найдены</font></p>
				{/if}
			
		</td>
	</tr>
</tbody></table>


					
					<div class="clear"></div>
				</div>

					
					
	