function RSBSwitchGeneralPic(src,alt)
{
	var selector = ".catalog_detail-general_picture";
	$(selector+'_a').attr('href',src);
	$(selector+'_a').attr('title',alt);
	$(selector).attr('src',src);
	$(selector).attr('alt',alt);
	$(selector).attr('title',alt);
}

function RSPDescriptionSwitcher()
{
	var width = $('.catalog_detail-tabscontent-tab').width();
	if(width<1040)
	{
		$('.catalog_detail-botcenter_block').show();
		$('.catalog_detail-center_block').hide();
	} else {
		$('.catalog_detail-center_block').show();
		$('.catalog_detail-botcenter_block').hide();
	}
}

$(document).ready(function(){

	var window_size = $(window).width();
	
	/* slider - more photo */
	var pane = $('.around_catalog_detail-scroll-pane .catalog_detail-scroll-pane');
	pane.jScrollPane({
		animateScroll:true
	});
	var api = pane.data('jsp');
	$('.catalog_detail-scroll-pane-prev').on('click',function(){
		api.scrollBy(0,-80);
		return false;
	});
	$('.catalog_detail-scroll-pane-next').on('click',function(){
		api.scrollBy(0,80);
		return false;
	});
	
	/* init general_picture */
	var firs_pic = $('.catalog_detail-scroll-pane-image:first');
	var firs_pic_src = $(firs_pic).find('img').attr('src');
	var firs_pic_alt = $(firs_pic).find('img').attr('alt');
	RSBSwitchGeneralPic(firs_pic_src,firs_pic_alt);
	
	/* jqzoom */
	if(firs_pic_src)
	{
		var zoomW = 490;
		if(window_size<1050)
			zoomW = 250
		$('a#zoom_images').jqzoom({
			zoomWidth: zoomW,
			xOffset: 10,
		});
		setTimeout(function(){
			$('.like_zoomPad').append( $('.zoomWindow') );
			$('.zoomWindow').css('left','10px');
		},100);
	}
	
	/* fancybox - stores */
	$(".fancystore").fancybox({
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
		afterShow:function(){RSPHandlerFancyOnBefore();}
	});
	
	/* fancybox - buy1click */
	$(".fancybuy1click").fancybox({
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
		afterShow:function(){RSPHandlerFancyOnBefore();}
	});
	
	/* show/hide description */
	RSPDescriptionSwitcher();
	$(window).resize(function(){
		RSPDescriptionSwitcher();
	});
	
	/* tab switcher */
	$('.catalog_detail-tabsheader-tablink a').on('click',function(){
		$('.catalog_detail-tabsheader-tablink a').removeClass('tabbg').addClass('incative');
		var href = $(this).attr('href');
		$(this).removeClass('incative').addClass('tabbg');
		$('.catalog_detail-tabscontent-tab').hide();
		$(href).show();
		return false;
	});
	$('.false_tablink').on('click',function(){
		var href_ = $(this).attr('href');
		var href = "#"+href_;
		$('.catalog_detail-tabsheader-tablink a').removeClass('tabbg').addClass('incative');
		$('.catalog_detail-tabsheader-tablink').find('a[href="'+href+'"]').removeClass('incative').addClass('tabbg');
		$('.catalog_detail-tabscontent-tab').hide();
		$(href).show();
		return false;
	});
	if(getUrlVars()["result"]=="reply")
	{
		setTimeout(function(){
			$('.catalog_detail-tabsheader-tablink a').removeClass('tabbg').addClass('incative');
			var href = "#tab_review";
			$('a[href="'+href+'"]').removeClass('incative').addClass('tabbg');
			$('.catalog_detail-tabscontent-tab').hide();
			$(href).show();
		},10);
	}
	
	/* TAB grupped properties - tr light */
	$('.propertydata').on('mouseenter',function(){
		$(this).css('background-color','#f1f1f1');
	}).on('mouseleave',function(){
		$(this).css('background-color','');
	});
	
	/*-stikers-resize*/
	setTimeout(function(){
		var img_zoomPad=$('.zoomPad');
		if(img_zoomPad.width()>=390)
		{
			$('.around_stickers').css('left',0);
		}
		$('.stickers').animate({
			opacity:1
		},500);
	},500);
});