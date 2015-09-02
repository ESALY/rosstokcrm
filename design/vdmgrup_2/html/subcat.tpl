{*Субкатегории*}

{if $category->subcategories}
<div class="text_3ColBlock">


{if $category->subcategories}
      {foreach $category->subcategories as $c}
{if $c->visible}
<span>
<a id="categories" href="catalog/{$c->url}">
{*<img height="100" width="100" src="{$config->categories_images_dir}100x100_{$c->image}" alt="{$c->name}">*}
{$c->name}</a>
</span>
{/if}
      {/foreach}
      
 
   {else}

{foreach $categories as $c0}
{if in_array( $category->id, $c0->children)}
                        
{foreach $c0->subcategories as $c1}
{if in_array( $category->id, $c1->children)}

{foreach $c1->subcategories as $c}<span>
<a {if $category->id == $c->id}class="selected"{/if} href="catalog/{$c->url}" data-category="{$c->id}">
<img height="90" width="90" src="{$config->categories_images_dir}{$c->image}" alt="{$c->name}">
{$c->name}
 </a></span>
{/foreach}



{/if}
{/foreach}

{/if}
{/foreach}


{foreach item=c from=$subcategories}
<span>
<a href="catalog/{$c->url}" class="asub">
<img height="90" width="90" src="{$config->categories_images_dir}{$c->image}" alt="{$c->name}">
{$c->name}</a>
</span>

{/foreach}

{/if} 
</div>
{/if}

{*Субкатегории*}