{* Хлебные крошки *}

<div class="path">
    <strong>
	<a href="/">Главная</a>
    </strong>
	{if $category}
	{foreach from=$category->path item=cat name="ll"}
    {if $smarty.foreach.ll.last}
     → <a class="no-underline" href="catalog/{$cat->url}">{$cat->name|escape}</a>
    {else}
    <strong>
     → <a href="catalog/{$cat->url}" {$cat->name|escape}</a> 
    </strong>
    {/if}
	{/foreach}  
	{if $brand}
	 → <a href="catalog/{$cat->url}/{$brand->url}">{$brand->name|escape}</a>
	{/if}
	{elseif $brand}
	 → <a href="brands/{$brand->url}" {$brand->name|escape}</a>
	{elseif $keyword}
	 → Поиск
	{/if}
</div>