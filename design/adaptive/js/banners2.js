function ResizeBanner(){
	var maxW = 1300;
	var Width = $('body').outerWidth();
	if(Width<maxW)
	{
		$('.lastright').css("display","none");
	} else {
		$('.lastright').css("display","block");
	}
}
$(document).ready(function(){
	ResizeBanner();
	$(window).resize(function(){
		ResizeBanner();
	});
});