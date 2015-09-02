$(document).ready(function(){
	/* textinput */
	$('input[name="COUPON"]').bind('focus',function(){
		if( $(this).attr('value')==$(this).attr('title') )
			$(this).attr('value','');
	});
	$('input[name="COUPON"]').bind('blur',function(){
		if( $(this).attr('value')=="")
			$(this).attr('value',$(this).attr('title'));
	});
	
	
	
	//add basket ajax
	$('td.quantity .plus').bind('click', function(){
	    var id = $(this).parents('.cell').attr('id');
		var value = $(this).siblings('input');
		$('td.quantity #'+ id +'  input').val(parseInt(value.val()) + 1);
	});
	
	$('td.quantity .minus').bind('click', function(){
		var id = $(this).parents('.cell').attr('id');
		var value = $(this).siblings('input');
		if(value.val() > 1)
		{
			$('td.quantity #'+ id +'  input').val(parseInt(value.val()) - 1);
		}
	});
	
	// disable selection when we over +/-
	$('.js-basket-minus, .js-basket-plus').on('mouseover', function(){
		$('html').addClass("disableSelection");
	});
	$('.js-basket-minus, .js-basket-plus').on('mouseleave', function(){
		$('html').removeClass("disableSelection");
	});
	
	$('.fancy_by1clickbasket').fancybox({
		maxWidth	: 800,
		maxHeight	: 800,
		minHeight	: 10,
		//fitToView	: false,
		autoSize	: true,
		closeClick	: false,
		openEffect	: 'none',
		title:null,
		padding:0,
		beforeLoad:function(){RSPHandlerFancyOnBefore();},
		afterLoad:function(){RSPHandlerFancyOnBefore();},
		beforeShow:function(){RSPHandlerFancyOnBefore();},
		afterShow:function(){RSPHandlerFancyOnBefore();},
		afterClose:function(){RSPHandlerFancyOnAfterClose();}
	});
});