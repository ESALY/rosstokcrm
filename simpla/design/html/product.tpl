{capture name=tabs}
	<li class="active"><a href="{url module=ProductsAdmin category_id=$product->category_id return=null brand_id=null id=null}">Товары</a></li>
	{if in_array('categories', $manager->permissions)}<li><a href="index.php?module=CategoriesAdmin">Категории</a></li>{/if}
	{if in_array('brands', $manager->permissions)}<li><a href="index.php?module=BrandsAdmin">Бренды</a></li>{/if}
	{if in_array('features', $manager->permissions)}<li><a href="index.php?module=FeaturesAdmin">Свойства</a></li>{/if}
{/capture}

{if $product->id}
{$meta_title = $product->name scope=parent}
{else}
{$meta_title = 'Новый товар' scope=parent}
{/if}

{* Подключаем Tiny MCE *}
{include file='tinymce_init.tpl'}

{* On document load *}
{literal}
<script> //Tab
$(function() {
    $(".tabs-menu a").click(function(event) {
        event.preventDefault();
        $(this).parent().addClass("current");
        $(this).parent().siblings().removeClass("current");
        var tab = $(this).attr("href");
        $(".tab-content").not(tab).css("display", "none");
        $(tab).fadeIn();
    });
});
</script>
{/literal}
{literal}
<script src="design/js/autocomplete/jquery.autocomplete-min.js"></script>

<script>
$(function() {

	// Добавление категории
	$('#product_categories .add').click(function() {
		$("#product_categories ul li:last").clone(false).appendTo('#product_categories ul').fadeIn('slow').find("select[name*=categories]:last").focus();
		$("#product_categories ul li:last span.add").hide();
		$("#product_categories ul li:last span.delete").show();
		return false;
	});

	// Удаление категории
	$("#product_categories .delete").live('click', function() {
		$(this).closest("li").fadeOut(200, function() { $(this).remove(); });
		return false;
	});

	// Сортировка вариантов
	$("#variants_block").sortable({ items: '#variants ul' , axis: 'y',  cancel: '#header', handle: '.move_zone' });
	// Сортировка вариантов
	$("table.related_products").sortable({ items: 'tr' , axis: 'y',  cancel: '#header', handle: '.move_zone' });


	// Сортировка связанных товаров
	$(".sortable").sortable({
		items: "div.row",
		tolerance:"pointer",
		scrollSensitivity:40,
		opacity:0.7,
		handle: '.move_zone'
	});


	// Сортировка изображений
	$(".images ul").sortable({ tolerance: 'pointer'});

	// Удаление изображений
	$(".images a.delete").live('click', function() {
		 $(this).closest("li").fadeOut(200, function() { $(this).remove(); });
		 return false;
	});
	// Загрузить изображение с компьютера
	$('#upload_image').click(function() {
		$("<input class='upload_image' name=images[] type=file multiple  accept='image/jpeg,image/png,image/gif'>").appendTo('div#add_image').focus().click();
	});
	// Или с URL
	$('#add_image_url').click(function() {
		$("<input class='remote_image' name=images_urls[] type=text value='http://'>").appendTo('div#add_image').focus().select();
	});
	// Или перетаскиванием
	if(window.File && window.FileReader && window.FileList)
	{
		$("#dropZone").show();
		$("#dropZone").on('dragover', function (e){
			$(this).css('border', '1px solid #8cbf32');
		});
		$(document).on('dragenter', function (e){
			$("#dropZone").css('border', '1px dotted #8cbf32').css('background-color', '#c5ff8d');
		});

		dropInput = $('.dropInput').last().clone();

		function handleFileSelect(evt){
			var files = evt.target.files; // FileList object
			// Loop through the FileList and render image files as thumbnails.
		    for (var i = 0, f; f = files[i]; i++) {
				// Only process image files.
				if (!f.type.match('image.*')) {
					continue;
				}
			var reader = new FileReader();
			// Closure to capture the file information.
			reader.onload = (function(theFile) {
				return function(e) {
					// Render thumbnail.
					$("<li class=wizard><a href='' class='delete'><img src='design/images/cross-circle-frame.png'></a><img onerror='$(this).closest(\"li\").remove();' src='"+e.target.result+"' /><input name=images_urls[] type=hidden value='"+theFile.name+"'></li>").appendTo('div .images ul');
					temp_input =  dropInput.clone();
					$('.dropInput').hide();
					$('#dropZone').append(temp_input);
					$("#dropZone").css('border', '1px solid #d0d0d0').css('background-color', '#ffffff');
					clone_input.show();
		        };
		      })(f);

		      // Read in the image file as a data URL.
		      reader.readAsDataURL(f);
		    }
		}
		$('.dropInput').live("change", handleFileSelect);
	};

	// Удаление варианта
	$('a.del_variant').click(function() {
		if($("#variants ul").size()>1)
		{
			$(this).closest("ul").fadeOut(200, function() { $(this).remove(); });
		}
		else
		{
			$('#variants_block .variant_name input[name*=variant][name*=name]').val('');
			$('#variants_block .variant_name').hide('slow');
			$('#variants_block').addClass('single_variant');
		}
		return false;
	});

	// Загрузить файл к варианту
	$('#variants_block a.add_attachment').click(function() {
		$(this).hide();
		$(this).closest('li').find('div.browse_attachment').show('fast');
		$(this).closest('li').find('input[name*=attachment]').attr('disabled', false);
		return false;
	});

	// Удалить файл к варианту
	$('#variants_block a.remove_attachment').click(function() {
		closest_li = $(this).closest('li');
		closest_li.find('.attachment_name').hide('fast');
		$(this).hide('fast');
		closest_li.find('input[name*=delete_attachment]').val('1');
		closest_li.find('a.add_attachment').show('fast');
		return false;
	});


	// Добавление варианта
	var variant = $('#new_variant').clone(true);
	$('#new_variant').remove().removeAttr('id');
	$('#variants_block span.add').click(function() {
		if(!$('#variants_block').is('.single_variant'))
		{
			$(variant).clone(true).appendTo('#variants').fadeIn('slow').find("input[name*=variant][name*=name]").focus();
		}
		else
		{
			$('#variants_block .variant_name').show('slow');
			$('#variants_block').removeClass('single_variant');
		}
		return false;
	});


	function show_category_features(category_id)
	{
		$('ul.prop_ul').empty();
		$.ajax({
			url: "ajax/get_features.php",
			data: {category_id: category_id, product_id: $("input[name=id]").val()},
			dataType: 'json',
			success: function(data){
				for(i=0; i<data.length; i++)
				{
					feature = data[i];

					line = $("<li><label class=property></label><input class='simpla_inp' type='text'/></li>");
					var new_line = line.clone(true);
					new_line.find("label.property").text(feature.name);
					new_line.find("input").attr('name', "options["+feature.id+"]").val(feature.value);
					new_line.appendTo('ul.prop_ul').find("input")
					.autocomplete({
						serviceUrl:'ajax/options_autocomplete.php',
						minChars:0,
						params: {feature_id:feature.id},
						noCache: false
					});
				}
			}
		});
		return false;
	}

	// Изменение набора свойств при изменении категории
	$('select[name="categories[]"]:first').change(function() {
		show_category_features($("option:selected",this).val());
	});

	// Автодополнение свойств
	$('ul.prop_ul input[name*=options]').each(function(index) {
		feature_id = $(this).closest('li').attr('feature_id');
		$(this).autocomplete({
			serviceUrl:'ajax/options_autocomplete.php',
			minChars:0,
			params: {feature_id:feature_id},
			noCache: false
		});
	});

	// Добавление нового свойства товара
	var new_feature = $('#new_feature').clone(true);
	$('#new_feature').remove().removeAttr('id');
	$('#add_new_feature').click(function() {
		$(new_feature).clone(true).appendTo('ul.new_features').fadeIn('slow').find("input[name*=new_feature_name]").focus();
		return false;
	});


	// Удаление связанного товара
	$(".related_products a.delete").live('click', function() {
		 $(this).closest("div.row").fadeOut(200, function() { $(this).remove(); });
		 return false;
	});


	// Добавление связанного товара
	var new_related_product = $('#new_related_product').clone(true);
	$('#new_related_product').remove().removeAttr('id');

	$("input#related_products").autocomplete({
		serviceUrl:'ajax/search_products.php',
		minChars:0,
		noCache: false,
		onSelect:
			function(suggestion){
				$("input#related_products").val('').focus().blur();
				new_item = new_related_product.clone().appendTo('.related_products');
				new_item.removeAttr('id');
				new_item.find('a.related_product_name').html(suggestion.data.name);
				new_item.find('a.related_product_name').attr('href', 'index.php?module=ProductAdmin&id='+suggestion.data.id);
				new_item.find('input[name*="related_products"]').val(suggestion.data.id);
				if(suggestion.data.image)
					new_item.find('img.product_icon').attr("src", suggestion.data.image);
				else
					new_item.find('img.product_icon').remove();
				new_item.show();
			},
		formatResult:
			function(suggestions, currentValue){
				var reEscape = new RegExp('(\\' + ['/', '.', '*', '+', '?', '|', '(', ')', '[', ']', '{', '}', '\\'].join('|\\') + ')', 'g');
				var pattern = '(' + currentValue.replace(reEscape, '\\$1') + ')';
  				return (suggestions.data.image?"<img align=absmiddle src='"+suggestions.data.image+"'> ":'') + suggestions.value.replace(new RegExp(pattern, 'gi'), '<strong>$1<\/strong>');
			}

	});


	// infinity
	$("input[name*=variant][name*=stock]").focus(function() {
		if($(this).val() == '∞')
			$(this).val('');
		return false;
	});

	$("input[name*=variant][name*=stock]").blur(function() {
		if($(this).val() == '')
			$(this).val('∞');
	});

	// Волшебные изображения
	name_changed = false;
	$("input[name=name]").change(function() {
		name_changed = true;
		images_loaded = 0;
	});
	images_num = 8;
	images_loaded = 0;
	old_wizar_dicon_src = $('#images_wizard img').attr('src');
	$('#images_wizard').click(function() {

		$('#images_wizard img').attr('src', 'design/images/loader.gif');
		if(name_changed)
			$('div.images ul li.wizard').remove();
		name_changed = false;
		key = $('input[name=name]').val();
		$.ajax({
 			 url: "ajax/get_images.php",
 			 	data: {keyword: key, start: images_loaded},
 			 	dataType: 'json',
  				success: function(data){
    				for(i=0; i<Math.min(data.length, images_num); i++)
    				{
	    				image_url = data[i];
						$("<li class=wizard><a href='' class='delete'><img src='design/images/cross-circle-frame.png'></a><a href='"+image_url+"' target=_blank><img onerror='$(this).closest(\"li\").remove();' src='"+image_url+"' /><input name=images_urls[] type=hidden value='"+image_url+"'></a></li>").appendTo('div .images ul');
    				}
					$('#images_wizard img').attr('src', old_wizar_dicon_src);
					images_loaded += images_num;
  				}
		});
		return false;
	});

	// Волшебное описание
	name_changed = false;
	$("input[name=name]").change(function() {
		name_changed = true;
	});
	old_prop_wizard_icon_src = $('#properties_wizard img').attr('src');
	$('#properties_wizard').click(function() {

		$('#properties_wizard img').attr('src', 'design/images/loader.gif');
		if(name_changed)
			$('div.images ul li.wizard').remove();
		name_changed = false;
		key = $('input[name=name]').val();
		$.ajax({
 			 url: "ajax/get_info.php",
 			 	data: {keyword: key},
 			 	dataType: 'json',
  				success: function(data){
					$('#properties_wizard img').attr('src', old_prop_wizard_icon_src);
  					if(data)
  					{
  						$('li#new_feature').remove();
	    				for(i=0; i<data.options.length; i++)
	    				{
	    					option_name = data.options[i].name;
	    					option_value = data.options[i].value;
							// Добавление нового свойства товара
							exists = false;

							if(!$('label.property:visible').filter(function(){ return $(this).text().toLowerCase() === option_name.toLowerCase();}).closest('li').find('input[name*=options]').val(option_value).length)
							{
								f = $(new_feature).clone(true);
								f.find('input[name*=new_features_names]').val(option_name);
								f.find('input[name*=new_features_values]').val(option_value);
								f.appendTo('ul.new_features').fadeIn('slow').find("input[name*=new_feature_name]");
							}
	   					}

   					}
				},
				error: function(xhr, textStatus, errorThrown){
                	alert("Error: " +textStatus);
           		}
		});
		return false;
	});


	// Автозаполнение мета-тегов
	meta_title_touched = true;
	meta_keywords_touched = true;
	meta_description_touched = true;
	url_touched = true;

	if($('input[name="meta_title"]').val() == generate_meta_title() || $('input[name="meta_title"]').val() == '')
		meta_title_touched = false;
	if($('input[name="meta_keywords"]').val() == generate_meta_keywords() || $('input[name="meta_keywords"]').val() == '')
		meta_keywords_touched = false;
	if($('textarea[name="meta_description"]').val() == generate_meta_description() || $('textarea[name="meta_description"]').val() == '')
		meta_description_touched = false;
	if($('input[name="url"]').val() == generate_url() || $('input[name="url"]').val() == '')
		url_touched = false;

	$('input[name="meta_title"]').change(function() { meta_title_touched = true; });
	$('input[name="meta_keywords"]').change(function() { meta_keywords_touched = true; });
	$('textarea[name="meta_description"]').change(function() { meta_description_touched = true; });
	$('input[name="url"]').change(function() { url_touched = true; });

	$('input[name="name"]').keyup(function() { set_meta(); });
	$('select[name="brand_id"]').change(function() { set_meta(); });
	$('select[name="categories[]"]').change(function() { set_meta(); });

});

function set_meta()
{
	if(!meta_title_touched)
		$('input[name="meta_title"]').val(generate_meta_title());
	if(!meta_keywords_touched)
		$('input[name="meta_keywords"]').val(generate_meta_keywords());
	if(!meta_description_touched)
		$('textarea[name="meta_description"]').val(generate_meta_description());
	if(!url_touched)
		$('input[name="url"]').val(generate_url());
}

function generate_meta_title()
{
	name = $('input[name="name"]').val();
	return name;
}

function generate_meta_keywords()
{
	name = $('input[name="name"]').val();
	result = name;
	brand = $('select[name="brand_id"] option:selected').attr('brand_name');
	if(typeof(brand) == 'string' && brand!='')
			result += ', '+brand;
	$('select[name="categories[]"]').each(function(index) {
		c = $(this).find('option:selected').attr('category_name');
		if(typeof(c) == 'string' && c != '')
    		result += ', '+c;
	});
	return result;
}

function generate_meta_description()
{
	if(typeof(tinyMCE.get("annotation")) =='object')
	{
		description = tinyMCE.get("annotation").getContent().replace(/(<([^>]+)>)/ig," ").replace(/(\&nbsp;)/ig," ").replace(/^\s+|\s+$/g, '').substr(0, 512);
		return description;
	}
	else
		return $('textarea[name=annotation]').val().replace(/(<([^>]+)>)/ig," ").replace(/(\&nbsp;)/ig," ").replace(/^\s+|\s+$/g, '').substr(0, 512);
}

function generate_url()
{
	url = $('input[name="name"]').val();
	url = url.replace(/[\s]+/gi, '-');
	url = translit(url);
	url = url.replace(/[^0-9a-z_\-]+/gi, '').toLowerCase();
	return url;
}

function translit(str)
{
	var ru=("А-а-Б-б-В-в-Ґ-ґ-Г-г-Д-д-Е-е-Ё-ё-Є-є-Ж-ж-З-з-И-и-І-і-Ї-ї-Й-й-К-к-Л-л-М-м-Н-н-О-о-П-п-Р-р-С-с-Т-т-У-у-Ф-ф-Х-х-Ц-ц-Ч-ч-Ш-ш-Щ-щ-Ъ-ъ-Ы-ы-Ь-ь-Э-э-Ю-ю-Я-я").split("-")
	var en=("A-a-B-b-V-v-G-g-G-g-D-d-E-e-E-e-E-e-ZH-zh-Z-z-I-i-I-i-I-i-J-j-K-k-L-l-M-m-N-n-O-o-P-p-R-r-S-s-T-t-U-u-F-f-H-h-TS-ts-CH-ch-SH-sh-SCH-sch-'-'-Y-y-'-'-E-e-YU-yu-YA-ya").split("-")
 	var res = '';
	for(var i=0, l=str.length; i<l; i++)
	{
		var s = str.charAt(i), n = ru.indexOf(s);
		if(n >= 0) { res += en[n]; }
		else { res += s; }
    }
    return res;
}

</script>

<style>
.autocomplete-suggestions{
background-color: #ffffff;
overflow: hidden;
border: 1px solid #e0e0e0;
overflow-y: auto;
}
.autocomplete-suggestions .autocomplete-suggestion{cursor: default;}
.autocomplete-suggestions .selected { background:#F0F0F0; }
.autocomplete-suggestions div { padding:2px 5px; white-space:nowrap; }
.autocomplete-suggestions strong { font-weight:normal; color:#3399FF; }
</style>
{/literal}

<div class="wrapper-main">

{if $message_success}
<!-- Системное сообщение -->
<div class="message message_success">
	<span class="text">{if $message_success=='added'}Товар добавлен{elseif $message_success=='updated'}Товар изменен{else}{$message_success|escape}{/if}</span>

	<a class="link" target="_blank" href="../products/{$product->url}">Открыть товар на сайте</a>
	{if $smarty.get.return}
	<a class="button" href="{$smarty.get.return}">Вернуться</a>
	{/if}

	<span class="share">
		<a href="#" onClick='window.open("http://vkontakte.ru/share.php?url={$config->root_url|urlencode}/products/{$product->url|urlencode}&title={$product->name|urlencode}&description={$product->annotation|urlencode}&image={$product_images.0->filename|resize:1000:1000|urlencode}&noparse=true","displayWindow","width=700,height=400,left=250,top=170,status=no,toolbar=no,menubar=no");return false;'>
  		<img src="{$config->root_url}/simpla/design/images/vk_icon.png" /></a>
		<a href="#" onClick='window.open("http://www.facebook.com/sharer.php?u={$config->root_url|urlencode}/products/{$product->url|urlencode}","displayWindow","width=700,height=400,left=250,top=170,status=no,toolbar=no,menubar=no");return false;'>
  		<img src="{$config->root_url}/simpla/design/images/facebook_icon.png" /></a>
		<a href="#" onClick='window.open("http://twitter.com/share?text={$product->name|urlencode}&url={$config->root_url|urlencode}/products/{$product->url|urlencode}&hashtags={$product->meta_keywords|replace:' ':''|urlencode}","displayWindow","width=700,height=400,left=250,top=170,status=no,toolbar=no,menubar=no");return false;'>
  		<img src="{$config->root_url}/simpla/design/images/twitter_icon.png" /></a>
	</span>

</div>
<!-- Системное сообщение (The End)-->
{/if}

{if $message_error}
<!-- Системное сообщение -->
<div class="message message_error">
	<span class="text">{if $message_error=='url_exists'}Товар с таким адресом уже существует{elseif $message_error=='empty_name'}Введите название{else}{$message_error|escape}{/if}</span>
	{if $smarty.get.return}
	<a class="button" href="{$smarty.get.return}">Вернуться</a>
	{/if}
</div>
<!-- Системное сообщение (The End)-->
{/if}


<!-- Основная форма -->
<form method=post id=product enctype="multipart/form-data">
<input type=hidden name="session_id" value="{$smarty.session.id}">

 	<div id="name">
		<input class="name" name=name type="text" value="{$product->name|escape}"/>
		<input name=id type="hidden" value="{$product->id|escape}"/>
		<div class="checkbox">
			<input name=visible value='1' type="checkbox" id="active_checkbox" {if $product->visible}checked{/if}/> <label for="active_checkbox">Активен</label>
		</div>
		<div class="checkbox">
			<input name=featured value="1" type="checkbox" id="featured_checkbox" {if $product->featured}checked{/if}/> <label for="featured_checkbox">Рекомендуемый</label>
		</div>
	</div>

	<div id="product_brand" {if !$brands}style='display:none;'{/if}>
		<label>Бренд</label>
		<select name="brand_id">
            <option value='0' {if !$product->brand_id}selected{/if} brand_name=''>Не указан</option>
       		{foreach from=$brands item=brand}
            	<option value='{$brand->id}' {if $product->brand_id == $brand->id}selected{/if} brand_name='{$brand->name|escape}'>{$brand->name|escape}</option>
        	{/foreach}
		</select>
	</div>


	<div id="product_categories" {if !$categories}style='display:none;'{/if}>
		<label>Категория</label>
		<div>
			<ul>
				{foreach name=categories from=$product_categories item=product_category}
				<li>
					<select name="categories[]">
						{function name=category_select level=0}
						{foreach from=$categories item=category}
								<option value='{$category->id}' {if $category->id == $selected_id}selected{/if} category_name='{$category->name|escape}'>{section name=sp loop=$level}&nbsp;&nbsp;&nbsp;&nbsp;{/section}{$category->name|escape}</option>
								{category_select categories=$category->subcategories selected_id=$selected_id  level=$level+1}
						{/foreach}
						{/function}
						{category_select categories=$categories selected_id=$product_category->id}
					</select>
					<span {if not $smarty.foreach.categories.first}style='display:none;'{/if} class="add"><i class="dash_link">Дополнительная категория</i></span>
					<span {if $smarty.foreach.categories.first}style='display:none;'{/if} class="delete"><i class="dash_link">Удалить</i></span>
				</li>
				{/foreach}
			</ul>
		</div>
	</div>

 	<!-- Варианты товара -->
	<div id="variants_block" class="vblock" {assign var=first_variant value=$product_variants|@first}{if $product_variants|@count <= 1 && !$first_variant->name}class=single_variant{/if}>
	<div class="left">
		<div id="variants">
		{foreach from=$product_variants item=variant}
		<ul>
			{*<li class="variant_move"><div class="move_zone"></div></li>*}

			<li class="variant_price" id="dinamic-calc"><label>закупка</label>      <input name="variants[zakupka][]" id="ZakupkaCorrentText"      type="text"   value="{$variant->zakupka|escape}" /></li>

			<li class="variant_price"><label>к опт</label>      <input name="variants[kopt][]"    id="KoptCorrentText"     type="text"   value="{$variant->kopt|escape}" /></li>
			<li class="variant_price"><label>опт</label>      <input name="variants[opt][]"   id="MoptCorrentText"       type="text"   value="{$variant->opt|escape}" /></li>
			<li class="variant_price"><label>розница</label>      <input name="variants[price][]"    id="RoznCorrentText"     type="text"   value="{$variant->price|escape}" /></li>

			<li class="variant_price">

			</li>

</ul><ul>
<li class="variant_price"><label>акция закупка</label>     <input name="variants[akcija_zakupka][]"    id=""     type="text"   value="{$variant->akcija_zakupka|escape}" /></li>
<li class="variant_price"><label>акция процент</label>     <input name="variants[akcija_procent][]"    id=""     type="text"   value="{$variant->akcija_procent|escape}" /></li>
<li class="variant_price"><label>акция цена</label>      <input name="variants[akcija_cena][]"    id=""     type="text"   value="{$variant->akcija_cena|escape}" /></li>
<li class="variant_price"><label>акция количество</label>      <input name="variants[akcija_kolichestvo][]"    id=""     type="text"   value="{$variant->akcija_kolichestvo|escape}" /></li>
</ul><ul>
<li class="variant_price"><label>спец закупка</label>     <input name=""    id="variants[spec_zakupka][]"     type="text"   value="{$variant->akcija_zakupka|escape}" /></li>
<li class="variant_price"><label>спец процент</label>     <input name="variants[spec_procent][]"    id=""     type="text"   value="{$variant->spec_procent|escape}" /></li>
<li class="variant_price"><label>спец цена</label>      <input name="variants[spec_cena][]"    id=""     type="text"   value="{$variant->spec_cena|escape}" /></li>
<li class="variant_price"><label>спец количество</label>      <input name="variants[spec_kolichestvo][]"    id=""     type="text"   value="{$variant->spec_kolichestvo|escape}" /></li>

</ul><ul>

           <li class="variant_sku"><label>код товара</label>        <input name="variants[sku][]"           type="text"   value="{$variant->sku|escape}" /></li>


			<li class="variant_amount"><label>на складе</label>     <input name="variants[stock][]"         type="text"   value="{if $variant->infinity || $variant->stock == ''}∞{else}{$variant->stock|escape}{/if}" />{$settings->units}</li>

</ul><ul>
		</ul>
		{/foreach}
		</div>

    {literal}
    <script>
//событие при загрузке страницы
$(document).ready(function(){
zzz();
})
//событие при загрузке страницы end

		//глобальные переменные
        	 function zzz() {
			 //заносим данные в переменные
			 var kopt = parseFloat($('#KoptText').val());
			 var mopt = parseFloat($('#MoptText').val());
			 var rozn = parseFloat($('#RoznText').val());

			 var koptInput = parseFloat($('#KoptInputText').val());
			 var moptInput = parseFloat($('#MoptInputText').val());
			 var roznInput = parseFloat($('#RoznInputText').val());

			 var zakupkaCorrent = parseFloat($('#ZakupkaCorrentText').val());
			 var koptCorrent =  parseFloat($('#KoptCorrentText').val());
			 var moptCorrent = parseFloat($('#MoptCorrentText').val());
			 var roznCorrent = parseFloat($('#RoznCorrentText').val());

			 //вычисляем процентую надбавку
			 var kopt = zakupkaCorrent * koptInput / 100 + zakupkaCorrent;
			 var mopt = zakupkaCorrent * moptInput / 100 + zakupkaCorrent;
			 var rozn = zakupkaCorrent * roznInput / 100 + zakupkaCorrent;

			 //заносим данные в поле
			 $('#KoptText').val(parseFloat(kopt).toFixed(2));
			 $('#MoptText').val(parseFloat(mopt).toFixed(2));
			 $('#RoznText').val(parseFloat(rozn).toFixed(2));

            }

             //функйия для переноса одной строки в другую
             function applyKopt() {

			 $('#KoptCorrentText').val($('#KoptText').val());
			 finalfill();
        }
		function applyMopt() {

			 $('#MoptCorrentText').val($('#MoptText').val());
			 finalfill();
        }
		function applyRozn() {

			 $('#RoznCorrentText').val($('#RoznText').val());
			 finalfill()
        }

		function applyAll() {

				 $('#KoptCorrentText').val($('#KoptText').val());
				 $('#MoptCorrentText').val($('#MoptText').val());
				 $('#RoznCorrentText').val($('#RoznText').val());

				 $('#RoznCorrentText').val($('#RoznText').val());

				 finalfill();
        }

$(document).ready(function() {
            $('#variants_block').keyup(function() {

            zzz();

            });
        });

$(document).ready(function() {
            $('#manual-calc').keyup(function() {

			finalfill();

            });
        });


function finalfill() {

				 $('#corprice').val($('#ZakupkaCorrentText').val());
				 $('#k_opt').val($('#KoptCorrentText').val());
				 $('#m_opt').val($('#MoptCorrentText').val());
				 $('#rozn').val($('#RoznCorrentText').val());
        }


</script>
    {/literal}


		</div>

			<!--Калькулятор-->

			<div class="">		<!--Калькулятор-->
		<fieldset  class="calc-prod">
      <legend style="font-size: large">Калькулятор</legend>
      <table width="auto" border="0" style="text-align: right;">
        <tbody><tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><label for="KoptText">К опт:</label>
            <input name="KoptText" type="text" class="right" id="KoptText" size="15" readonly=""></td>
          <td><input name="variants[koptper][]" type="text" class="bm-inputs" id="KoptInputText" value="{$variant->koptper|escape}" size="8">
            <span style="text-align: right">% </span></td>
          <td><input type="button" name="button" id="button" value="=>" onclick="applyKopt()"></td>
          <td rowspan="3"><input class="button_green" type="button" name="button4" id="button4" value="=>" onclick="applyAll()"></td>
        </tr>
        <tr>
          <td><label for="KoptText">М опт:</label>
            <input name="MoptText" type="text" class="right" id="MoptText" size="15" readonly=""></td>
          <td><input name="variants[optper][]" type="text" class="bm-inputs" id="MoptInputText" value="{$variant->optper|escape}" size="8">
            <span style="text-align: right">% </span></td>
          <td><input type="button" name="button2" id="button2" value="=>" onclick="applyMopt()"></td>
          </tr>
        <tr>
          <td><label for="KoptText">Розница:</label>
            <input name="RoznText" type="text" class="right" id="RoznText" size="15" readonly=""></td>
          <td><input name="variants[roznper][]" type="text" class="bm-inputs" id="RoznInputText" value="{$variant->roznper|escape}" size="8">
            <span style="text-align: right">% </span></td>
          <td><input type="button" name="button3" id="button3" value="=>" onclick="applyRozn()"></td>
          </tr>
      </tbody></table>
    </fieldset></div>

 	</div>
	<!-- Варианты товара (The End)-->

	<!--Табы-->

	<div class="tabs-block">
<div id="tabs-container">
    <ul class="tabs-menu">
        <li class="current"><a href="#tab-1">Изображения</a></li>
        <li><a href="#tab-2">Описание</a></li>
        <li><a href="#tab-3">Характеристики</a></li>
        <li><a href="#tab-4">Параметры страницы</a></li>
    </ul>
    <div class="tab">
        <div id="tab-1" class="tab-content">
           <!-- Изображения товара -->
		<div class="block layer images">
			<h2>Изображения товара
			<a href="#" id=images_wizard><img src="design/images/wand.png" alt="Подобрать автоматически" title="Подобрать автоматически"/></a>
			</h2>
			<ul>{foreach from=$product_images item=image}<li>
					<a href='#' class="delete"><img src='design/images/cross-circle-frame.png'></a>
					<img src="{$image->filename|resize:100:100}" alt="" />
					<input type=hidden name='images[]' value='{$image->id}'>
				</li>{/foreach}</ul>
			<div id=dropZone>
				<div id=dropMessage>Перетащите файлы сюда</div>
				<input type="file" name="dropped_images[]" multiple class="dropInput">
			</div>
			<div id="add_image"></div>
			<span class=upload_image><i class="dash_link" id="upload_image">Добавить изображение</i></span> или <span class=add_image_url><i class="dash_link" id="add_image_url">загрузить из интернета</i></span>
		</div>


        </div>
        <div id="tab-2" class="tab-content">
<h2>Анотация</h2>
        <textarea name="annotation" class="editor_small">{$product->annotation|escape}</textarea>
<h2>Описание товара</h2>
		<textarea name="body" class="editor_large">{$product->body|escape}</textarea>



        </div>


         <div id="tab-3" class="tab-content">
         <div class="inner">
            <div class="block" {if !$categories}style='display:none;'{/if}>
			<h2>Свойства товара
			<a href="#" id=properties_wizard><img src="design/images/wand.png" alt="Подобрать автоматически" title="Подобрать автоматически"/></a>
			</h2>

			<ul class="prop_ul">
				{foreach $features as $feature}
					{assign var=feature_id value=$feature->id}
					<li feature_id={$feature_id}><label class=property>{$feature->name}</label><input class="simpla_inp" type="text" name=options[{$feature_id}] value="{$options.$feature_id->value|escape}" /></li>
				{/foreach}
			</ul>
			<!-- Новые свойства -->
			<ul class=new_features>
				<li id=new_feature><label class=property><input type=text name=new_features_names[]></label><input class="simpla_inp" type="text" name=new_features_values[] /></li>
			</ul>
			<span class="add"><i class="dash_link" id="add_new_feature">Добавить новое свойство</i></span>
		</div>
		</div>

        <div id="tab-4" class="tab-content">
           <div class="inner">
			<!-- Параметры страницы -->

			<h2>Параметры страницы</h2>
			<ul>
				<li><label class=property>Адрес</label><div class="page_url"> /products/</div><input name="url" class="page_url" type="text" value="{$product->url|escape}" /></li>
				<li><label class=property>Заголовок</label><input name="meta_title" class="simpla_inp" type="text" value="{$product->meta_title|escape}" /></li>
				<li><label class=property>Ключевые слова</label><input name="meta_keywords" class="simpla_inp" type="text" value="{$product->meta_keywords|escape}" /></li>
				<li><label class=property>Описание</label><textarea name="meta_description" class="simpla_inp" />{$product->meta_description|escape}</textarea></li>
			</ul>
<div class="block layer">
			<h2>Связанные товары</h2>
			<div id=list class="sortable related_products">
				{foreach from=$related_products item=related_product}
				<div class="row">
					<div class="move cell">
						<div class="move_zone"></div>
					</div>
					<div class="image cell">
					<input type=hidden name=related_products[] value='{$related_product->id}'>
					<a href="{url id=$related_product->id}">
					<img class=product_icon src='{$related_product->images[0]->filename|resize:35:35}'>
					</a>
					</div>
					<div class="name cell">
					<a href="{url id=$related_product->id}">{$related_product->name}</a>
					</div>
					<div class="icons cell">
					<a href='#' class="delete"></a>
					</div>
					<div class="clear"></div>
				</div>
				{/foreach}
				<div id="new_related_product" class="row" style='display:none;'>
					<div class="move cell">
						<div class="move_zone"></div>
					</div>
					<div class="image cell">
					<input type=hidden name=related_products[] value=''>
					<img class=product_icon src=''>
					</div>
					<div class="name cell">
					<a class="related_product_name" href=""></a>
					</div>
					<div class="icons cell">
					<a href='#' class="delete"></a>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<input type=text name=related id='related_products' class="input_autocomplete" placeholder='Выберите товар чтобы добавить его'>
		</div>
		<!-- Параметры страницы (The End)-->
		</div>
        </div>



		<!-- Свойства товара (The End)-->
        </div>
    </div>
</div>
</div>

<!-- Описание товара (The End)-->

<!--Табы-->
		<div class="block layer">
			<h2>Поставщики товара
			</h2>

			<div class="postav">

<table width="100%" border="1">
<thead>
  <tr>
    <th>Поставщик</th>
    <th>Наименование</td>
    <th>Арт</th>
    <th>Цена</th>
    <th>А цена</th>
    <th>А кол-во</th>
    <th>С цена</th>
    <th>С кол-во</th>
    <th>Комм</th>
    <th>Ист</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td><textarea class="autosize-animated" name="supplier1">{$product->supplier1|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="prod1" >{$product->prod1|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="art1">{$product->art1|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="price1">{$product->price1|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="aprice1">{$product->aprice1|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="astock1">{$product->astock1|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="oprice1">{$product->oprice1|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="ostock1">{$product->ostock1|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="contacts1">{$product->contacts1|escape}</textarea></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td><textarea class="autosize-animated" name="supplier2">{$product->supplier2|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="prod2" >{$product->prod2|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="art2">{$product->art2|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="price2">{$product->price2|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="aprice2">{$product->aprice2|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="astock2">{$product->astock2|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="oprice2">{$product->oprice2|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="ostock2">{$product->ostock2|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="contacts2">{$product->contacts2|escape}</textarea></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td><textarea class="autosize-animated" name="supplier3">{$product->supplier3|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="prod3" >{$product->prod3|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="art3">{$product->art3|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="price3">{$product->price3|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="aprice3">{$product->aprice3|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="astock3">{$product->astock3|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="oprice3">{$product->oprice3|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="ostock3">{$product->ostock3|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="contacts3">{$product->contacts3|escape}</textarea></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td><textarea class="autosize-animated" name="supplier4">{$product->supplier4|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="prod4" >{$product->prod4|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="art4">{$product->art4|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="price4">{$product->price4|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="aprice4">{$product->aprice4|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="astock4">{$product->astock4|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="oprice4">{$product->oprice4|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="ostock4">{$product->ostock4|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="contacts4">{$product->contacts4|escape}</textarea></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td><textarea class="autosize-animated" name="supplier5">{$product->supplier5|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="prod5" >{$product->prod5|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="art5">{$product->art5|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="price5">{$product->price5|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="aprice5">{$product->aprice5|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="astock5">{$product->astock5|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="oprice5">{$product->oprice5|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="ostock5">{$product->ostock5|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="contacts5">{$product->contacts5|escape}</textarea></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td><textarea class="autosize-animated" name="supplier6">{$product->supplier6|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="prod6" >{$product->prod6|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="art6">{$product->art6|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="price6">{$product->price6|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="aprice6">{$product->aprice6|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="astock6">{$product->astock6|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="oprice6">{$product->oprice6|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="ostock6">{$product->ostock6|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="contacts6">{$product->contacts6|escape}</textarea></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td><textarea class="autosize-animated" name="supplier7">{$product->supplier7|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="prod7" >{$product->prod7|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="art7">{$product->art7|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="price7">{$product->price7|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="aprice7">{$product->aprice7|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="astock7">{$product->astock7|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="oprice7">{$product->oprice7|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="ostock7">{$product->ostock7|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="contacts7">{$product->contacts7|escape}</textarea></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td><textarea class="autosize-animated" name="supplier8">{$product->supplier8|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="prod8" >{$product->prod8|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="art8">{$product->art8|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="price8">{$product->price8|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="aprice8">{$product->aprice8|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="astock8">{$product->astock8|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="oprice8">{$product->oprice8|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="ostock8">{$product->ostock8|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="contacts8">{$product->contacts8|escape}</textarea></td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td><textarea class="autosize-animated" name="supplier9">{$product->supplier9|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="prod9" >{$product->prod9|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="art9">{$product->art9|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="price9">{$product->price9|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="aprice9">{$product->aprice9|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="astock9">{$product->astock9|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="oprice9">{$product->oprice9|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="ostock9">{$product->ostock9|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="contacts9">{$product->contacts9|escape}</textarea></td>
    <td>&nbsp;</td>
  </tr>
      <tr>
    <td><textarea class="autosize-animated" name="supplier10">{$product->supplier10|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="prod10" >{$product->prod10|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="art10">{$product->art10|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="price10">{$product->price10|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="aprice10">{$product->aprice10|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="astock10">{$product->astock10|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="oprice10">{$product->oprice10|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="ostock10">{$product->ostock10|escape}</textarea></td>
    <td><textarea class="autosize-animated" name="contacts10">{$product->contacts10|escape}</textarea></td>
    <td>&nbsp;</td>
  </tr>
</tbody>

</table>

</div>
			<input class="button_green button_save" type="submit" name="" value="Сохранить">
		</div>
</form>
<!-- Основная форма (The End) -->
</div>

