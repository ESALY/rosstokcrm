$(document).ready(function(){
	$('.catalog_list_big-item').bind('mouseenter',function(){
		$(this).addClass('box_shadow_z');
	}).bind('mouseleave',function(){
		$(this).removeClass('box_shadow_z');
	});
});