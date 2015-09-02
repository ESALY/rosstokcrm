{include file='slider.tpl'}

<table style=" height: 140px; width: 765px; background: url(http://fusion.ru/sites/all/themes/a2basic/images/bg-footer-2.png); background-position-x: -20px; background-position-y: -5px; border-radius: 0px 0px 10px 10px;" border="0" cellpadding="5" cellspacing="5"><tbody><tr style="vertical-align: top;"><td><div style="  padding: 10px;  width: 230px;  word-wrap: break-word;"><img src="/files/uploads/fms_02.png" width="30" height="35" style="margin-right: 10px;"><a href="/prodazha-so-sklada">ПРОДАЖА СО СКЛАДА</a><br><p style="
    margin-top: 15px;
    margin-left: 15px;
    color: #CCCCCC;  font-size: 12px;  text-shadow: -1px -1px 0 rgba(0, 0, 0, 0.3);
">В разделе "Интернет-Магазин" можно быстро найти, подобрать, сравнить различные товары со склада.</p><div id="b002"><a href="/katalog/avtomobilnaya-tekhnika" <="" a=""></a></div></div></td><td><div style="  padding: 10px;  width: 230px;  word-wrap: break-word;"><img src="/files/uploads/fms_01.png" width="30" height="35" style="margin-right: 10px;"><a href="/proizvodstvo">ПРОИЗВОДСТВО</a><br><p style="margin-top: 15px;margin-left: 15px;color: #CCCCCC;  font-size: 12px;  text-shadow: -1px -1px 0 rgba(0, 0, 0, 0.3);">Мы оперативно и качественно изготовим коробки по вашим размер от 1 шт. за 1-24 часа</p></div></td><td><div style="width: 230px;  padding: 10px;word-wrap: break-word;"><img src="/files/uploads/fms_03.png" width="30" height="35" style="margin-right: 10px;"><a href="/uslugi">УСЛУГИ</a><br><p style="margin-top:15px;margin-left:15px;color: #CCCCCC;  font-size: 12px;  text-shadow: -1px -1px 0 rgba(0, 0, 0, 0.3);">Наши услуги помогут Вам решить различные задачи, экономя Ваше время и деньги</p></div></td></tr></tbody></table>
{* Страница товара *}

<!-- Хлебные крошки #End /-->



<div class="product2">


<table id="prdTable" border="0" ><tbody><tr><td>




        <!-- Большое фото -->
	{if $product->image}
	<div id="image4">
		<a href="{$product->image->filename|resize:800:600:w}" class="zoom" data-rel="group"><img src="{$product->image->filename|resize:300:300}" alt="{$product->product->name|escape}" /></a>
	</div>
	{/if}
	<!-- Большое фото (The End)-->






</td><td >



<h1 data-product="{$product->id}">{$product->name|escape}</h1>

 <div id="prodDesc">
 
 {$product->body}
 
 </div>


              <!-- Описание товара -->
	<div class="description">
	
				
		{if $product->variants|count > 0}
		<!-- Выбор варианта товара -->
		<form class="variants" action="/cart">
			<table>
			{foreach $product->variants as $v}
			<tr class="variant">
				<td>
					<input id="product_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton" {if $product->variant->id==$v->id}checked{/if} {if $product->variants|count<2}style="display:none;"{/if}/>
				</td>
				<td>
					{if $v->name}<label class="variant_name" for="product_{$v->id}">{$v->name}</label>{/if}
				</td>
				<td>
					{if $v->compare_price > 0}<span class="compare_price">{$v->compare_price|convert}</span>{/if}
					<span class="price">{$v->price|string_format:"%.2f"} <span class="currency">{$currency->sign|escape}</span></span>
				</td>
			</tr>
			{/foreach}
			</table>
			
                        
                        
                        
                        
                 <h3>Количество</h3>
                        
                        <input type="text" size="2" name="amount" value="1" style="
    width: 50px;    font-size: 12px;border: 1px solid #bdbdbd;  -webkit-box-shadow: inset 0px 2px 2px #ececec,0px 1px 1px #fff;  -moz-box-shadow: inset 0px 2px 2px #ececec,0px 1px 1px #fff;  box-shadow: inset 0px 2px 2px #ececec,0px 1px 1px #fff;  background-color: #fff;  
    padding: 2px 2px 2px 20px;  outline: none;  
    font-size: 18px;  font-family: 'Open Sans',arial,sans-serif;
">
                        
                        
                        
                        
                        
                        
                        <input type="submit" class="button2" value="в корзину" data-result-text="добавлено"/>
		</form>
		<!-- Выбор варианта товара (The End) -->
		{else}
			Нет в наличии
		{/if}
			
	</div>
	<!-- Описание товара (The End)-->




{$purchase->variant->stock}


</td>



</tr></tbody></table>




	
	

	<!-- Дополнительные фото продукта -->
	{if $product->images|count>1}
 <h2>Дополнительные фото</h2>
	<div class="imagesPrd">
		{* cut удаляет первую фотографию, если нужно начать 2-й - пишем cut:2 и тд *}
		{foreach $product->images|cut as $i=>$image}
			<a href="{$image->filename|resize:800:600:w}" class="zoom" data-rel="group"><img src="{$image->filename|resize:95:95}" alt="{$product->name|escape}" /></a>
		{/foreach}
	</div>
	{/if}
	<!-- Дополнительные фото продукта (The End)-->

	


	
	
</div>
<!-- Описание товара (The End)-->

{* Связанные товары *}
{if $related_products}
<h2>Так же советуем посмотреть</h2>
<!-- Список каталога товаров-->
<ul class="tiny_products">
	{foreach $related_products as $product}
	<!-- Товар-->
	<li class="product">
		
		<!-- Фото товара -->
		{if $product->image}
		<div class="image">
			<a href="products/{$product->url}"><img src="{$product->image->filename|resize:200:200}" alt="{$product->name|escape}"/></a>
		</div>
		{/if}
		<!-- Фото товара (The End) -->

		<!-- Название товара -->
		<h3><a data-product="{$product->id}" href="products/{$product->url}">{$product->name|escape}</a></h3>
		<!-- Название товара (The End) -->

		{if $product->variants|count > 0}
		<!-- Выбор варианта товара -->
		<form class="variants" action="/cart">
			<table>
			{foreach $product->variants as $v}
			<tr class="variant">
				<td>
					<input id="related_{$v->id}" name="variant" value="{$v->id}" type="radio" class="variant_radiobutton"  {if $v@first}checked{/if} {if $product->variants|count<2} style="display:none;"{/if}/>
				</td>
				<td>
					{if $v->name}<label class="variant_name" for="related_{$v->id}">{$v->name}</label>{/if}
				</td>
				<td>
					{if $v->compare_price > 0}<span class="compare_price">{$v->compare_price|convert}</span>{/if}
					<span class="price">{$v->price|convert} <span class="currency">{$currency->sign|escape}</span></span>
				</td>
			</tr>
			{/foreach}
			</table>
			<input type="submit" class="button" value="в корзину" data-result-text="добавлено"/>
		</form>
		<!-- Выбор варианта товара (The End) -->
		{else}
			Нет в наличии
		{/if}


	</li>
	<!-- Товар (The End)-->
	{/foreach}
</ul>
{/if}
<!-- Комментарии -->
<div id="comments">

	<h2>Есть вопросы? Напишите нам!</h2>
	
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
	<form class="comment_form" method="post">
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
		<textarea class="comment_textarea" id="comment_text" name="text" data-format=".+" data-notice="Введите комментарий">{$comment_text}</textarea><br />
		<div>
		<label for="comment_name">Имя</label>
		<input class="input_name" type="text" id="comment_name" name="name" value="{$comment_name}" data-format=".+" data-notice="Введите имя"/><br />

		<input class="button" type="submit" name="comment" value="Отправить" />
		
		<label for="comment_captcha">Число</label>
		<div class="captcha"><img src="captcha/image.php?{math equation='rand(10,10000)'}" alt='captcha'/></div> 
		<input class="input_captcha" id="comment_captcha" type="text" name="captcha_code" value="" data-format="\d\d\d\d" data-notice="Введите капчу"/>
		
		</div>
	</form>
	<!--Форма отправления комментария (The End)-->
	
</div>
<!-- Комментарии (The End) -->

{literal}
<script>
$(function() {
	// Раскраска строк характеристик
	$(".features li:even").addClass('even');

	// Зум картинок
	$("a.zoom").fancybox({ 'hideOnContentClick' : true });
});
</script>
{/literal}
