$(document).ready(function(){
	$('.catalog_blocks-item').bind('mouseenter',function(){
		$(this).addClass('box_shadow_z');
	}).bind('mouseleave',function(){
		$(this).removeClass('box_shadow_z');
	});
});