<link href="design/{$settings->theme|escape}/css/flexslider.css" rel="stylesheet" type="text/css" media="screen"/>
<script src="design/{$settings->theme}/js/jquery.flexslider.js"></script>
<script>
{literal}
// Can also be used with $(document).ready()
$(window).load(function() {
	$('.flexslider').flexslider({
		animation: "slide"
	});
});
{/literal}
</script>

<!-- Слайдер -->


<div class="flexslider">
<img id="slrib" src="/files/uploads/h9.png" width="73" height="71" />
	<ul class="slides">
		<li>
			<img src="/files/uploads/slide1.png" width="765" height="320" />
		</li>
		
	</ul>
</div>




<!-- end -->

{*
author: Noxter
link: http://forum.simplacms.ru/profile/347/Noxter
e-mail: simplacms@ukr.net
*}