<form method="get" action="{$config->root_url}/catalog/{$category->url}">

	<div class="price_filter">
		<h3>Цена:</h3>
		
		<div class="price_slider">
			<div class="input_price">
				<label for="min_price">от</label>
				<input type="text" class="keypress" id="min_price" data-min-price="{$max_min_price->min_price|convert:null:false|floor}" name="min_price" value="{if $smarty.get.min_price}{$smarty.get.min_price}{else}{/if}" autocomplete="off">
				<label for="max_price">до</label>
				<input type="text" class="keypress" id="max_price" data-max-price="{$max_min_price->max_price|convert:null:false|ceil}" name="max_price" value="{if $smarty.get.max_price}{$smarty.get.max_price}{else}{/if}" autocomplete="off">
				{$currency->sign|escape}{*<input id="price_submit" style="display: none;" type="submit" value="ОК">*}
            </div>
			<div id="slider_price" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content" data-slider-min-range="{$slider_max_min_price->min_price|convert:null:false|floor}" data-slider-max-range="{$slider_max_min_price->max_price|convert:null:false|ceil}">
			
				<div class="ui-slider-range ui-widget-header ui-widget-header-bar"></div>
				<div class="ui-slider-range ui-widget-header ui-widget-header-left ui-widget-header-hidden"></div>
				<div class="ui-slider-range ui-widget-header ui-widget-header-right ui-widget-header-hidden"></div>
			
			
                <div class="ui-slider-range ui-widget-header"></div>
                <a class="ui-slider-handle ui-state-default ui-state-left" href="#"></a>
                <a class="ui-slider-handle ui-state-default ui-state-right" href="#"></a>
            </div>
		</div>
	</div>
	<ul>
		<li{if $discounted->disabled} class="disabled"{/if}>
			<input id="discounted" type="checkbox" name="discounted" value="1"{if $discounted->checked} checked{elseif $discounted->disabled} disabled{/if}>
			<label for="discounted"><span>Акционные</span> <i>{if !$discounted->checked}({$discounted->count}){/if}</i></label>
		</li>
		<li{if $featured->disabled} class="disabled"{/if}>
			<input id="featured" type="checkbox" name="featured" value="1"{if $featured->checked} checked{elseif $featured->disabled} disabled{/if}>
			<label for="featured"><span>Рекомендуемые</span> <i>{if !$featured->checked}({$featured->count}){/if}</i></label>
		</li>
	</ul>
	{if $category->brands}
	<ul>
		<h3>Бренды:</h3>
		{foreach $category->brands as $b}
		<li{if $b->disabled} class="disabled"{/if}>
			<input id="brand_{$b->id}" type="checkbox" name="brand_id[]" value="{$b->id}"{if $b->checked} checked{elseif $b->disabled} disabled{/if}>
			<label for="brand_{$b->id}"><span>{$b->name|escape}</span> <i>{if !$b->checked}({$b->count}){/if}</i></label>
		</li>
		{/foreach}
	</ul>
	{/if}
	
	{if $features}
		{foreach $features as $f}
		<h3>{$f->name}</h3>
		<ul>
			{foreach $f->options as $k=>$o}
			<li{if $o->disabled} class="disabled"{/if}>
				<input id="option_{$f->id}_{$k}" type="checkbox" name="{$f->id}[]" value="{$o->value|escape}"{if $o->checked} checked{elseif $o->disabled} disabled{/if}>
				<label for="option_{$f->id}_{$k}"><span>{$o->value|escape}</span> <i>{if !$o->checked}({$o->count}){/if}</i></label>
			</li>
			{/foreach}
		</ul>
		{/foreach}
	{/if}
	<span class="count_products_search"></span>
	<a href="#" onclick="$('#filter form').submit();" class="button"><i></i>Подобрать<i></i></a>
	<link href="{$config->root_url}/design/{$settings->theme|escape}/css/filter.css" rel="stylesheet" type="text/css" media="screen"/>
</form>