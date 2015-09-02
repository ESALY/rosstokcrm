// Аяксовая корзина
$('form.variants').live('submit', function(e) {
	e.preventDefault();
	button = $(this).find('input[type="submit"]');
	if($(this).find('input[name=variant]:checked').size()>0)
		variant = $(this).find('input[name=variant]:checked').val();
	if($(this).find('select[name=variant]').size()>0)
		variant = $(this).find('select').val();
	$.ajax({
		url: "ajax/cart.php",
		data: {variant: variant},
		dataType: 'json',
		success: function(data){
			$('#cart_informer').html(data);
			if(button.attr('data-result-text'))
			button.val(button.attr('data-result-text'));
			if(button.hasClass("btn1_102_full"))
				button.removeClass("btn1_102_full");
				button.addClass("btn2_102_full");
				toorder.show();	
		}
	});
	var o1 = $(this).offset();
	var o2 = $('#cart_informer').offset();
	var dx = o1.left - o2.left;
	var dy = o1.top - o2.top;
	var distance = Math.sqrt(dx * dx + dy * dy);
	$(this).closest('.product').find('.image img').effect("transfer", { to: $("#cart_informer"), className: "transfer_class" }, distance);	
	$('.transfer_class').html($(this).closest('.product').find('.image').html());
	$('.transfer_class').find('img').css('height', '100%');
	return false;
});


// Аяксовая корзина
$('a.compare').live('click', function(e) {
	e.preventDefault();

	
	link = $(this);
	$.ajax({
		url: $(this).attr('href'),
		success: function(data){
		var cartHTML = $('#compare_informer', $(data));
					$('#compare_informer').html(cartHTML[0].innerHTML);
		}
	});

	var o1 = $(this).offset();
	var o2 = $('#compare_informer').offset();
	var dx = o1.left - o2.left;
	var dy = o1.top - o2.top;
	var distance = Math.sqrt(dx * dx + dy * dy);

	$(this).closest('.product').find('.image img').effect("transfer", { to: $("#compare_informer"), className: "transfer_class" }, distance);	
	$('.transfer_class').html($(this).closest('.product').find('.image').html());
	$('.transfer_class').find('img').css('height', '100%');
	
object = {

   func: function() { document.getElementById('data2').style.display='block';return false; }

}

 

setTimeout( object.func , 1000)		
	return false;
});



/*
// Аяксовая корзина
$('a[href*="cart?variant"]').live('click', function(e) {
	e.preventDefault();
	//variant_id = $(this).attr('id');
	
	href = $(this).attr('href');
	pattern = /\/?cart\?variant=(\d+)$/;
	variant_id = pattern.exec(href)[1];
	
	link = $(this);
	$.ajax({
		url: "ajax/cart.php",
		data: {variant: variant_id},
		dataType: 'json',
		success: function(data){
			$('#cart_informer').html(data);
			//if(link.attr('added_text'))
			//	link.html(link.attr('added_text'));
			//link.attr('href', '/cart');
		}
	});

	var o1 = $(this).offset();
	var o2 = $('#cart_informer').offset();
	var dx = o1.left - o2.left;
	var dy = o1.top - o2.top;
	var distance = Math.sqrt(dx * dx + dy * dy);

	$(this).closest('.product').find('.image img').effect("transfer", { to: $("#cart_informer"), className: "transfer_class" }, distance);	
	$('.transfer_class').html($(this).closest('.product').find('.image').html());
	$('.transfer_class').find('img').css('height', '100%');
	return false;
});
*/