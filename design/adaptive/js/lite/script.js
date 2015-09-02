$(document).ready(function(){
	// one value clear
	$('.smartfilterlite').find('.filter').on('click',function(){
		var CONTROL_ID = $(this).attr('href');
		$('.smartfilter').find('input#'+CONTROL_ID).attr('checked', false);
		$('.smartfilter').find('#set_filter').click();
		return false;
	});
	
	// full clear
	$('.full_clear').on('click',function(){
		$('.filtren').find('input[type="checkbox"]').attr('checked', false);
		$('.smartfilter').find('#set_filter').click();
		return false;
	});
});