$(document).ready(function(){
	/*--------------------------main_catalog------------------------*/
	$('.cat_blck .cat_blck-item-simple').bind('mouseenter',function(){
		if($(this).children('.block_hidden').length>0)
			$(this).children('.block_hidden').show();
			$(this).children('.block_hidden').addClass('box_shadow');
	});
	$('.cat_blck .cat_blck-item-simple').bind('mouseleave',function(){
		if($(this).children('.block_hidden').length>0)
			$(this).children('.block_hidden').hide();	
			$(this).children('.block_hidden').removeClass('box_shadow');
	});
	/*--------------------------------------------------------------*/
});