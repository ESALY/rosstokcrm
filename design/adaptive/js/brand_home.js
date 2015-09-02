$(document).ready(function(){
	var brand_menu = $('.brand-list');
	var current = 0;
	brand_menu.children('li[id!=more]').each(function(){
		if(current + $(this).outerHeight() > brand_menu.outerHeight()){
			$(this).appendTo(brand_menu.find('li#more > div'));
		}
		else current += $(this).outerHeight();
	});
});


