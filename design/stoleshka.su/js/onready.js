$(document).ready(function(){
    $(".home-top-menu .corner").hide();
    $(".home-top-menu li").css("height","181px");
    $(".home-top-menu li .img").css("top","0").hide();
    $(".home-top-menu li .content").css("top",0);
        
    var mosaic_animation = function(){
        $(".home-top-menu li").animate({'height':'362px'},300);
        $(".home-top-menu li:odd .content").animate({'top':'181px'},300,function(){
            $(".home-top-menu li:even .img").show().animate({'top':'181px'});
            $(".home-top-menu li:odd .img").css("top","181px").show().animate({'top':'0'});
            $(".home-top-menu .corner").fadeIn();
        });
        return false;
    }
    setTimeout(mosaic_animation, 2000);

	$(".right-b li:first a").addClass('active');
	$(".right-b li a").click(function(e){
		e.preventDefault(); 
		var src = $(this).attr("href");
		$(".right-b li a").removeClass('active');
		$(".b-tovar-img img").animate({"opacity":"0"},400, function(){
			$(this).attr('src', src).animate({"opacity":"1"},400);
		});
		$(this).addClass('active');
	});
	
	$("#ca-container").contentcarousel();
	dinotest();
	function dinotest(){if ($("#wrapper").width() < '1240'){$(".dino").animate({'right':'0'});}else{$(".dino").animate({'right':'-103px'});}};
	$(window).resize(function(){dinotest();});
        
        
        $(".home-top-menu li:nth-child(odd)").addClass('odd');

        $(".fancybox").fancybox({
            openEffect  : 'elastic',
            closeEffect : 'elastic',
            prevEffect  : 'fade',
            nextEffect  : 'fade'
	});

});