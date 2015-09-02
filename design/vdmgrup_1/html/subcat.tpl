{*Субкатегории*}
{if $category->subcategories}

{if $category->parent_id}
<ul class="subc">
     {foreach $categories as $b}
	  {if $b->id == $category->parent_id}
              {foreach $b->subcategories as $c}
{if $c->visible}<li>





{foreach $products as $p name=foo}

{if $smarty.foreach.foo.first}



<a id="categories" href="catalog/{$c->url}">
{*<img src="{$p->image->filename|resize:100:100:w}" alt="{$p->name|escape}"/>*}
{$c->name}</a>


{else}{$myId}{/if}


{/foreach}


</li>

{else}
123
                    {/if}								
              {/foreach}
          {/if}
     {/foreach}				
{/if}
<ul class="subc">
{if $category->subcategories}
      {foreach $category->subcategories as $c}
{if $c->visible}
<a id="categories" href="catalog/{$c->url}"><li>
{*<img height="100" width="100" src="{$config->categories_images_dir}100x100_{$c->image}" alt="{$c->name}">*}
{$c->name}</li></a>
{/if}
      {/foreach}
      
  </ul>    
   {else}

{foreach $categories as $c0}
{if in_array( $category->id, $c0->children)}
                        
{foreach $c0->subcategories as $c1}
{if in_array( $category->id, $c1->children)}

{foreach $c1->subcategories as $c}
<a {if $category->id == $c->id}class="selected"{/if} href="catalog/{$c->url}" data-category="{$c->id}">
<li><img height="90" width="90" src="{$config->categories_images_dir}{$c->image}" alt="{$c->name}">
{$c->name}</li>
 </a>
{/foreach}



{/if}


{/foreach}

{/if}
{/foreach}


{foreach item=c from=$subcategories}

<a href="catalog/{$c->url}" class="asub">
<li class="lisub"><img height="90" width="90" src="{$config->categories_images_dir}{$c->image}" alt="{$c->name}">
{$c->name}</li></a>{$c->name}</a>



{/foreach}

</ul>
 {/if} 

{/if}
{*Субкатегории*}