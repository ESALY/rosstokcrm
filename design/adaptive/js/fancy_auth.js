function RSP_AfterShowFancyAuth()
{
	if($('#fancyauth').children('.new_user_registration').length>0)
	{
		setTimeout(function(){
			$('#fancyauth').children('.new_user_registration').show();
			$('#fancyauth').children('.new_user_registration').clone().appendTo( $('.new_user_registration').parents('.fancybox-skin') );
			$('#fancyauth').children('.new_user_registration').hide();
			$('.fancybox-inner').css('margin-bottom','64px');
		},10);
	}
}