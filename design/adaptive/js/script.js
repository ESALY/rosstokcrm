/* get url params */
function getUrlVars()
{
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}

/* set max width for site */
function RSPSiteWidth()
{
	var constSiteW1 = [800,1050,1300];
	var bodyW = $('body').width();
	var siteW = $('.wrap_inner').width();
	if(bodyW<constSiteW1[0])
	{
		$('.wrap_inner').css('maxWidth',constSiteW1[0]+'px');
		$('.top_panel_inner').css('maxWidth',constSiteW1[0]+'px');
	} else if(bodyW<constSiteW1[1])
	{
		$('.wrap_inner').css('maxWidth',constSiteW1[0]+'px');
		$('.top_panel_inner').css('maxWidth',constSiteW1[0]+'px');
	} else if(bodyW<constSiteW1[2])
	{
		$('.wrap_inner').css('maxWidth',constSiteW1[1]+'px');
		$('.top_panel_inner').css('maxWidth',constSiteW1[1]+'px');
	} else {
		$('.wrap_inner').css('maxWidth',constSiteW1[2]+'px');
		$('.top_panel_inner').css('maxWidth',constSiteW1[2]+'px');
	}
}

/* fancybox - full callback */
function RSPHandlerFancyOnBefore()
{
	if($('.fancybox-inner').find('.errortext').length>0)
		$('.fancybox-inner').find('.errortext').hide();
	if($('.fancybox-inner').find('.notetext').length>0)
		$('.fancybox-inner').find('.notetext').hide();
	setTimeout(function(){
		$('body').css('margin-right','0px');
	},5);
}
function RSPHandlerFancyGoodClose(delay)
{
	if(delay<1)
		delay = rsp_fancyclose_by_fancy_delay;
	setTimeout(function(){
		$.fancybox.close();
	},delay);
}

/* input[type=text] - notes */
function RSPInitCoolInputs()
{
	$('input, textarea').placeholder();
	$('.js_cool_input').on('keyup',function(){
		if($(this).val()=="")
		{
			$(this).css('opacity','0.8');
		}
	});
}

function RSPHandlerFancyOnAfterClose()
{
	if(rsp_fancyclose_reloadpage)
	{
		window.location.reload();
	}
}

var timedata;
$(document).ready(function(){
	RSPInitCoolInputs();
	RSPSiteWidth();
	
	$(window).resize(function(){
		RSPSiteWidth();
	});
	
	/* some ajax request/loading */
	$(document).on('click','.js_ajax_link',function(){
		var href = $(this).attr('href');
		var parentselector = $(this).data('parentselector');
		var newtitle = $(this).data('newtitle');
		if(href!="" && $(parentselector).length>0)
		{
			$.ajax({
				type:"GET",
				url:href,
				data:"js_ajax_call=Y"
			}).done(function( msg ){
				$(parentselector).html( msg );
				RSPInitCoolInputs();
				$.fancybox.reposition();
				if(newtitle!="")
					$('.fancybox-title').html( newtitle );
			});
			rsp_fancyclose_reloadpage = true;
		}
		return false;
	});
	$(document).on('submit','.js_ajax_form',function(){
		var action = $(this).attr('action');
		var parentselector = $(this).data('parentselector');
		var method = $(this).attr('method');
		var serialize_data;
		if(action!="" && $(parentselector).length>0)
		{
			serialize_data = $(this).serialize();
			serialize_data = serialize_data + "&js_ajax_call=Y";
			$.ajax({
				type:method,
				url:action,
				data:serialize_data
			}).done(function( msg ){
				$(parentselector).html( msg );
				RSPInitCoolInputs();
				$.fancybox.reposition();
			});
		}
		return false;
	});
	
	/* fancy feedback in Header */
	$('.feedback_in_head').fancybox({
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
		afterShow:function(){RSPHandlerFancyOnBefore();},
		afterClose:function(){RSPHandlerFancyOnAfterClose();}
	});
	/* fancy recall in Header */
	$('.recall_in_head').fancybox({
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
		afterShow:function(){RSPHandlerFancyOnBefore();},
		afterClose:function(){RSPHandlerFancyOnAfterClose();}
	});
	
	/* click add2basket aready_in_basket */
	$('.add2basket_areadyin').on('click',function(){
		alert( rsp_add2basket_alreadyin );
		return false;
	});
	
	/*checkbox */
	if($.browser.msie && $.browser.version=="8.0")
	{
		$('input[type=checkbox]').removeClass('check');
		$('input[type=checkbox]').addClass('jq-checkbox');
		console.log( 'msie' );
		$('input[type=checkbox]').each(function(){
			var $label = $('label[for=' + $(this).attr('id') + ']');
			if($label.length == 0) return;
			// on DOM ready
			if($(this).is(':checked')){
					$label.addClass('checked');
			}else{
					$label.removeClass('checked');
			}
			$(this).on('change inits', function(){
				if($(this).is(':checked'))
					$label.addClass('checked');
				else
					$label.removeClass('checked');
			});
			$(this).addClass('jq-checkbox').trigger('init');
			$label.addClass('jq-checkbox');
		});
		
		/*radio*/
		$('input[type=radio]').removeClass('rad');
		$('input[type=radio]').addClass('jq-radio');
		
		$('input[type=radio]').each(function(){
			var $label = $('label[for=' + $(this).attr('id') + ']');
			var name = $(this).attr('name');
			console.log( 'name = ' + name );
			if($label.length == 0) return;
			// on DOM ready
			if($(this).is(':checked')){
					$label.addClass('checked');
			}else{
					$label.removeClass('checked');
			}
			//обработка клика 
			$(this).on('click',function(){
				console.log( 'click' );
				if($(this).is(':checked'))
				{
					console.log( 'input[name='+name+']' );
					$('input[name="'+name+'"]').each(function(){
						$('label[for="'+$(this).attr("id")+'"]').removeClass('checked');
					});
					$label.addClass('checked');
				}
			});
			$label.addClass('jq-radio');
		});
	}
});