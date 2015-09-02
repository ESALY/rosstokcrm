var intervalID = 0;
var prefix_selector = "slider-item-";
var activeIndex = 0;
var nextIndex = 0;
var elemActiveID = 0;
var elemNextID = 0;
var leftPosNow = 0;
var leftPosNext = 0;

function RSPSliderOnTime()
{
	activeIndex = 0;
	nextIndex = 0;
	elemActiveID = 0;
	elemNextID = 0;
	leftPosNow = 0;
	leftPosNext = 0;
	$('.mainbigbanner-slider-item').each(function(index){
		if($(this).hasClass('active'))
			activeIndex = index;
	});
	nextIndex = parseInt(activeIndex) + 1;
	elemActiveID = $('.mainbigbanner-slider-item:eq('+activeIndex+')').data('id');
	elemNextID = $('.mainbigbanner-slider-item:eq('+nextIndex+')').data('id');
	leftPosNow = activeIndex*100;
	leftPosNext = nextIndex*100;

	if(elemNextID>0)
	{
		$('.mainbigbanner-slider-list').animate({
			left:'-'+leftPosNext+'%',
		},slide_speed,function(){
			// Animation complete.
			$('.mainbigbanner-slider-item:eq('+nextIndex+')').addClass('active');
			$('.mainbigbanner-slider-item:eq('+activeIndex+')').removeClass('active');
			$('.mainbigbanner-slider-list-pointers').children('a[href="slider-item-'+elemNextID+'"]').addClass('active');
			$('.mainbigbanner-slider-list-pointers').children('a[href="slider-item-'+elemActiveID+'"]').removeClass('active');
		});
	} else {
		leftPosNext = 0;
		$('.mainbigbanner-slider-list').animate({
			left:'-'+leftPosNext+'%',
		},slide_speed,function(){
			// Animation complete.
			$('.mainbigbanner-slider-item:eq(0)').addClass('active');
			$('.mainbigbanner-slider-item:eq('+activeIndex+')').removeClass('active');
			$('.mainbigbanner-slider-list-pointers').children('a:eq(0)').addClass('active');
			$('.mainbigbanner-slider-list-pointers').children('a[href="slider-item-'+elemActiveID+'"]').removeClass('active');
		});
	}
}

function RSPSliderOnClick(elemNextClass)
{
	clearInterval(intervalID);
	
	activeIndex = 0;
	nextIndex = 0;
	$('.mainbigbanner-slider-item').each(function(index){
		if($(this).hasClass('active'))
			activeIndex = index;
		if($(this).hasClass(elemNextClass))
			nextIndex = index;
	});
	elemActiveID = $('.mainbigbanner-slider-item:eq('+activeIndex+')').data('id');
	elemNextID = $('.mainbigbanner-slider-item:eq('+nextIndex+')').data('id');
	leftPosNext = nextIndex*100;

	$('.mainbigbanner-slider-list').animate({
		left:'-'+leftPosNext+'%',
	},slide_speed,function(){
		// Animation complete.
		$('.'+elemNextClass).addClass('active');
		$('.mainbigbanner-slider-item:eq('+activeIndex+')').removeClass('active');
		$('.mainbigbanner-slider-list-pointers').children('a[href="'+elemNextClass+'"]').addClass('active');
		$('.mainbigbanner-slider-list-pointers').children('a[href="slider-item-'+elemActiveID+'"]').removeClass('active');
	});
	
	intervalID = setInterval(function(){
		RSPSliderOnTime();
	},slider_speed);
}

function ShowHideTDOnMainAroundBanner()
{
	var porog1_hide_left = 1250;
	var porog2_hide_right = 1010;
	var table_width = $('.main_banners').width();
	if(table_width>(porog1_hide_left-1))
	{
		if($('.main_banners').find('.main_banners_first_td').length>0)
			$('.main_banners').find('.main_banners_first_td').show();
		if($('.main_banners').find('.main_banners_last_td').length>0)
			$('.main_banners').find('.main_banners_last_td').show();
	} else if(table_width<porog1_hide_left && table_width>(porog2_hide_right-1))
	{
		if($('.main_banners').find('.main_banners_first_td').length>0)
			$('.main_banners').find('.main_banners_first_td').hide();
		if($('.main_banners').find('.main_banners_last_td').length>0)
			$('.main_banners').find('.main_banners_last_td').show();
	} else if(table_width<porog2_hide_right)
	{
		if($('.main_banners').find('.main_banners_first_td').length>0)
			$('.main_banners').find('.main_banners_first_td').hide();
		if($('.main_banners').find('.main_banners_last_td').length>0)
			$('.main_banners').find('.main_banners_last_td').hide();
	} 
}

$(document).ready(function(){
	if($('.mainbigbanner-slider-item').length>1)
	{
		intervalID = setInterval(function(){
			RSPSliderOnTime();
		},slider_speed);
	} else {
		$('.mainbigbanner-slider-list-pointers').hide();
	}
	
	$('.mainbigbanner-slider-list-pointers a').bind('click',function(){
		RSPSliderOnClick( $(this).attr('href') );
		return false;
	});
	
	ShowHideTDOnMainAroundBanner();
	
	$(window).resize(function(){
		ShowHideTDOnMainAroundBanner();
	});
});