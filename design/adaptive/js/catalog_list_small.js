function ShowHideQuickbuyDaysarticle2()
{
	var minwidth = 605;
	var minwidth_selector = ".catalog_list_small";
	if($(minwidth_selector).width()<minwidth)
	{
		$('.catalog_list_small-item-quickbuy').hide();
		$('.catalog_list_small-item-daysarticle2').hide();
	} else {
		$('.catalog_list_small-item-quickbuy').show();
		$('.catalog_list_small-item-daysarticle2').show();
	}
}

$(document).ready(function(){
	$('.catalog_list_small-item').bind('mouseenter',function(){
		$(this).addClass('box_shadow_z');
	}).bind('mouseleave',function(){
		$(this).removeClass('box_shadow_z');
	});
	
	/* lite popup */
	$('.catalog_list_small-item-picture').bind('mouseenter',function(){
		$(this).find('.catalog_list_small-litepopup').show();
	}).bind('mouseleave',function(){
		$(this).find('.catalog_list_small-litepopup').hide();
	});
	
	/* show hide quickbuy & daysarticle2 */
	ShowHideQuickbuyDaysarticle2();
	$(window).resize(function(){
		ShowHideQuickbuyDaysarticle2();
	});
});