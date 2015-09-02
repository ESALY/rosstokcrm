function redsign_check_showhide_phone_in_head()
{
	setTimeout(function(){
		var min_width_for_center = 850;
		var table_in_head = $('.header_center').width();
		if(table_in_head<min_width_for_center)
		{
			$('.around_center_in_head').hide();
		} else {
			$('.around_center_in_head').show();
		}
	},5);
}

$(document).ready(function(){
	/*
	if(RSBAnimateCase=="flying")
	{
		$('.user_authorized').bind('mouseenter',function(){
			$('.logaut_popup').show();
			$('.logaut_popup').animate({
				opacity:1,
				left:'-28'
			}, 100, function() {//100
				// Animation complete.
			});
		}).bind('mouseleave',function(){
			$('.logaut_popup').animate({
				opacity:0,
				left:'102'
			}, 250, function() {//250
				$('.logaut_popup').hide();
				// Animation complete.
			});
		});
	} else if(RSBAnimateCase=="simple")
	{
		$('.logaut_popup').css({'opacity':'1','left':'-28px'});
		$('.user_authorized').bind('mouseenter',function(){
			$('.logaut_popup').show();
		}).bind('mouseleave',function(){
			$('.logaut_popup').hide();
		});
	}
	*/
	
	redsign_check_showhide_phone_in_head();
	
	$(window).resize(function(){
		redsign_check_showhide_phone_in_head();
	});
	
	/* fancy - auth */
	$('.fancy_auth_form').fancybox({
		maxWidth	: 800,
		maxHeight	: 600,
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
		afterShow:function(){RSPHandlerFancyOnBefore();RSP_AfterShowFancyAuth();},
		afterClose:function(){RSPHandlerFancyOnAfterClose();}
	});
});