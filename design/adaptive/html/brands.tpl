{* Страница все бренды *}

<ul class="breadcrumb-navigation">
<li><a title="Главная" href="/">Главная</a></li>
<li><span class="breadcrumb-navigation-next"> &nbsp; / &nbsp; </span></li>
<li><a title="Бренды" href="/brands/" class="last">Бренды</a></li>
</ul>

<h1 class="pagetitle">Бренды</h1>

<div id="content">
   <div class="brandlist">
		<ul class="brand-digital-list">
			<div class="clear"></div>
	    </ul>
{get_brands var=all_brands}
                {if $all_brands}
                    <ul class="brand-latin-list">
                       {assign var=letter value='A'}
                       <li>A<ul>
                       {foreach name=brands item=b from=$all_brands}
                       {assign var=firstletter value=$b->name|upper|mb_substr:0:1}
                       {if $firstletter != $letter}
                       {assign var=letter value=$firstletter}</ul></li><li>{$letter}<ul>
                       {/if}
                       <li><a href="brands/{$b->url}">{$b->name}</a></li>
                        {/foreach}
                        </ul></li>
                    </ul>
                {/if}
				<ul class="brand-latin-list">
		<div class="clear"></div>
	</ul>
</div>
<div class="clear"></div>
</div>