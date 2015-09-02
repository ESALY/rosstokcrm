{* Список товаров *}

<!-- Хлебные крошки /-->
{include file='path.tpl'}	
<!-- Хлебные крошки #End /-->


<div class="title-proposition-h">
          <div class="frame-title">
            <div class="title">
            
            {* Заголовок страницы *}
{if $keyword}
Поиск {$keyword|escape}
{elseif $page}
{$page->name|escape}
{else}
{$category->name|escape} {$brand->name|escape} {$keyword|escape}
{/if}
            
            </div>
          </div>
</div>

{*Субкатегории*}
 
<div class="catalog-subcat">
{include file="subcat.tpl"}
</div>

{*Субкатегории*}


{* Описание страницы (если задана) *}
{$page->body}

{if $current_page_num==1}
{* Описание категории *}
{$category->description}
{/if}

{* Фильтр по брендам *}
{if $category->brands}
<div id="brands">
	<a href="catalog/{$category->url}" {if !$brand->id}class="selected"{/if}>Все бренды</a>
	{foreach name=brands item=b from=$category->brands}
		{if $b->image}
		<a data-brand="{$b->id}" href="catalog/{$category->url}/{$b->url}"><img src="{$config->brands_images_dir}{$b->image}" alt="{$b->name|escape}"></a>
		{else}
		<a data-brand="{$b->id}" href="catalog/{$category->url}/{$b->url}" {if $b->id == $brand->id}class="selected"{/if}>{$b->name|escape}</a>
		{/if}
	{/foreach}
</div>
{/if}

{* Описание бренда *}
{$brand->description}

{* Фильтр по свойствам *}
{if $features}
<table id="features">
	{foreach $features as $f}
	<tr>
	<td class="feature_name" data-feature="{$f->id}">
		{$f->name}:
	</td>
	<td class="feature_values">
		<a href="{url params=[$f->id=>null, page=>null]}" {if !$smarty.get.$f@key}class="selected"{/if}>Все</a>
		{foreach $f->options as $o}
		<a href="{url params=[$f->id=>$o->value, page=>null]}" {if $smarty.get.$f@key == $o->value}class="selected"{/if}>{$o->value|escape}</a>
		{/foreach}
	</td>
	</tr>
	{/foreach}
</table>
{/if}


<!--Каталог товаров-->
{if $products}

{* Сортировка *}
{if $products|count>0}
<div class="sort italic base-color">
	<span class="spacer-right"><a class="{if $sort=='position'} selected no-underline{/if} base-color" href="{url sort=position page=null}">По умолчанию</a> ▼</span>
	<span class="spacer-right"><a class="{if $sort=='price'} selected no-underline{/if} base-color" href="{url sort=price page=null}">По цене</a> ▼</span>
	<a class="{if $sort=='name'} selected no-underline{/if} base-color" href="{url sort=name page=null}">По алфавиту</a> ▼
</div>
{/if}

{* Вид каталога *}
<div class="view base-color">
<span class="spacer-right">Товары:</span>
{if $smarty.cookies.view == 'table'}
{* табличное отображение *}
<span class="spacer-right"><img src="design/{$settings->theme|escape}/img/icon-grid.png" width="15" height="15" alt=""/>&nbsp;
<a class="base-color active" onclick="document.cookie='view=table;path=/';document.location.reload();" href="javascript:;" data-toggle="tab">Плиткой</a> 
</span>
<span class="spacer-right"><img src="design/{$settings->theme|escape}/img/icon-table.png" width="15" height="15" alt=""/>&nbsp;
<a class="base-color" onclick="document.cookie='view=gallery;path=/';document.location.reload();" href="javascript:;" data-toggle="tab">Списком</a>
</span>
{else}
{* иначе отображение галереей *}
<span class="spacer-right"><img src="design/{$settings->theme|escape}/img/icon-grid.png" width="15" height="15" alt=""/>&nbsp;
<a class="base-color" onclick="document.cookie='view=table;path=/';document.location.reload();" href="javascript:;" data-toggle="tab">Плиткой</a>
</span> 
<span class="spacer-right"><img src="design/{$settings->theme|escape}/img/icon-table.png" width="15" height="15" alt=""/>&nbsp;
<a class="base-color active" onclick="document.cookie='view=gallery;path=/';document.location.reload();" href="javascript:;" data-toggle="tab">Списком</a>
</span>
{/if}
</div>



{* Список товаров *}
{if $smarty.cookies.view == 'table'}        
        
<!-- Список товаров галереей-->
<ul class="products">{foreach $products as $product}
    <li class="b1c-good"> <span class="product-status {if $product->featured}action{/if}"></span> 
     
        <div class="img-box"> <a href="products/{$product->url}"><img class="lazy" data-original="{$product->image->filename|resize:200:200}" alt="{$product->name|escape}" ></a>

        </div>
        <!-- Название товара -->
     <h3><a data-product="{$product->id}" href="products/{$product->url}"><span class="b1c-name">{$product->name|escape}</span>
     
     {if $smarty.session.admin == 'admin'}
   <span>
   ({$p->variant->stock} шт.)
   </span>
   {/if}
   
     </a></h3>
		<!-- Название товара (The End) -->
 
 
 <span class="price">
{if $smarty.session.admin == 'admin'}
Закупка: {$product->variant->price}
</br>
{/if}
{foreach $product->features as $f}
{if {$f->name} == 'k_opt'} 
Крупный опт: {$f->value}
{/if}
{/foreach} руб.
{foreach $product->features as $f}
{if {$f->name} == 'm_opt'} 
Мелкий опт: {$f->value}
{/if}
{/foreach} руб.
{foreach $product->features as $f}
{if {$f->name} == 'rozn'} 
Розница: {$f->value}
{/if}
{/foreach} руб.
</span>



 
        <div class="prod-tobasket">
        <form class="variants" action="/cart">
			<table>
			{foreach $product->variants as $v}
			<tr class="variant">
				<td>
					<input id="variants_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $v@first}checked{/if} {if $product->variants|count<2}style="display:none;"{/if}/>
				</td>
				<td>
					{if $v->name}<label class="variant_name" for="variants_{$v->id}">{$v->name}</label>{/if}
				</td>
			</tr>
			{/foreach}
			</table>
			<input type="submit" class="button" value="добавить в корзину" data-result-text="добавлено"/>
		</form>
</div>
        
  </li>{/foreach}</ul>
         
<!-- Список товаров галереей@-->

{else}{* иначе отображение галереей *}

<!-- Список товаров списком -->
<div class="datagrid">
<table width="100%">
  <thead>
    <tr>
      <th>Фото </th>
      <th>Наименование</th>
      {if $smarty.session.admin == 'admin'}
   <th>Ко-во</th>
   {/if}
      {if $smarty.session.admin == 'admin'}
   <th>Закупка</th>
   {/if}
      <th>Розница</th>
      <th>Опт</th>
      <th>Кр. опт</th>
  <tbody>
  
  {foreach $products as $p}
  <tr valign="middle">
    <td width="50" class="no-padding">
    <a data-product="{$p->id}" href="products/{$p->url}"> {if $p->image} 
    <div class="img-box"> 
    <img class="lazy" data-original="{$p->image->filename|resize:50:50}" alt="{$p->name|escape}"/> {else} <img style="width:50px;height:50px;" src="/files/uploads/vdm.jpg" alt="{$p->name|escape}">
    </div>
    {/if} </a></td>
    <td><a data-product="{$p->id}" href="products/{$p->url}">{$p->name|escape}</a> {*ribbon*}
      
      {* Руслан. Вывод значка. *}
      {foreach $p->features as $f}
      {if {$f->name} == 'label'} <span class="label label-success">{$f->value}</span> {/if}
      {/foreach}
      {* Руслан. Вывод значка. Конец *}
      
      {*ribbon*} </td>
       
   {if $smarty.session.admin == 'admin'}
   <td>
   {$p->variant->stock}
   </td>
   {/if}
   
   {if $smarty.session.admin == 'admin'}
   <td>
   {$p->variant->price}
   {assign var=zakupka value=$p->variant->price}
   </td>
   {/if}
      
    <td> {* Руслан. Вывод цены для розницы. *}
      {foreach $p->features as $f}
      {if {$f->name} == 'rozn'}
      {$f->value} руб.
      {assign var=rozn value=$f->value}
      {/if}
      {/foreach}
      {* Руслан. Вывод цены для крупного опта. Конец *} 
      
      <span class="pull right">
      {if $smarty.session.admin == 'admin'}
      (+{$rozn-$zakupka})
      {/if}
      </span>
      
      
      </td>
    <td> {* Руслан. Вывод цены для мелкого опта. *}
      {foreach $p->features as $f}
      {if {$f->name} == 'm_opt'} 
      {$f->value}&nbsp;руб.
      {assign var=m_opt value=$f->value}
      {/if}
      {/foreach}
      {* Руслан. Вывод цены для крупного опта. Конец *}
      
      <span class="pull right">
      {if $smarty.session.admin == 'admin'}
      (+{$m_opt-$zakupka})
      {/if}
      </span>
      
      </td>
      
    <td> {* Руслан. Вывод цены для крупного опта. *}
      {foreach $p->features as $f}
      {if {$f->name} == 'k_opt'} 
      {$f->value}&nbsp;руб.
      {assign var=k_opt value=$f->value}
      {/if}
      {/foreach}
      {* Руслан. Вывод цены для крупного опта. Конец *} 
      
      <span class="pull right">
      {if $smarty.session.admin == 'admin'}
      (+{$k_opt-$zakupka})
      {/if}
      </span>
      
      </td>
  </tr>
  {/foreach}
  </tbody>
  
</table>
</div>

{/if} 
{* Список товаров end*}



{include file='pagination.tpl'}	
<!-- Список товаров (The End)-->

{else}
Товары не найдены
{/if}	
<!--Каталог товаров (The End)-->