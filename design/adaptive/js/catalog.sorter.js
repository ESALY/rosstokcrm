function RSP_MOdifiedStyleSorter()
{
	var min_w = 900;
	var wrap_inner_w = $('.wrap_inner').width();
	if(wrap_inner_w<min_w)
	{
		$('.over_catalog_separator').css('height','15px');
	} else {
		$('.over_catalog_separator').css('height','0px');
	}
}

$(document).ready(function(){
	$('.sorter-select').bind('mouseenter',function(){
		$(this).children('.select-values').show();
	}).bind('mouseleave',function(){
		$(this).children('.select-values').hide();
	});
	
	RSP_MOdifiedStyleSorter();
	$(window).resize(function(){
		setTimeout(function(){
			RSP_MOdifiedStyleSorter();
		},5);
	});
});