var tamautID = 0;
var positionTopFix = -7;
function RSP_addRemoveClasses(checkbox)
{
	var for_ = $(checkbox).attr('id');
	if(checkbox.checked)
	{
		$('label[for="'+for_+'"]').addClass('label_checked');
		$('label[for="'+for_+'"]').parent('.lvl2').addClass('li_checked');
	} else {
		$('label[for="'+for_+'"]').removeClass('label_checked');
		$('label[for="'+for_+'"]').parent('.lvl2').removeClass('li_checked');
	}
}
function JCSmartFilter(ajaxURL)
{
	this.ajaxURL = ajaxURL;
	this.form = null;
	this.timer = null;
}

JCSmartFilter.prototype.keyup = function(input)
{
	if(this.timer)
		clearTimeout(this.timer);
	this.timer = setTimeout(BX.delegate(function(){
		this.reload(input);
	}, this), 1000);
}

JCSmartFilter.prototype.click = function(checkbox)
{
	RSP_addRemoveClasses(checkbox);
	if(this.timer)
		clearTimeout(this.timer);
	this.timer = setTimeout(BX.delegate(function(){
		this.reload(checkbox);
	}, this), 10);
}

JCSmartFilter.prototype.reload = function(input)
{
	this.position = BX.pos(input, true);
	this.form = BX.findParent(input, {'tag':'form'});
	if(this.form)
	{
		var values = new Array;
		values[0] = {name: 'ajax', value: 'y'};
		this.gatherInputsValues(values, BX.findChildren(this.form, {'tag':'input'}, true));
		BX.ajax.loadJSON(
			this.ajaxURL,
			this.values2post(values),
			BX.delegate(this.postHandler, this)
		);
	}
}

JCSmartFilter.prototype.postHandler = function (result)
{
	clearInterval(tamautID);
	if(result.ITEMS)
	{
		for(var PID in result.ITEMS)
		{
			var arItem = result.ITEMS[PID];
			if(arItem.PROPERTY_TYPE == 'N' || arItem.PRICE)
			{
			}
			else if(arItem.VALUES)
			{
				for(var i in arItem.VALUES)
				{
					var ar = arItem.VALUES[i];
					var control = BX(ar.CONTROL_ID);
					if(control)
					{
						control.parentNode.className = ar.DISABLED? 'lvl2 lvl2_disabled': 'lvl2';
						control.disabled = ar.DISABLED ? true : false;
						RSP_addRemoveClasses(control);
					}
				}
			}
		}
		
		var modef = BX('modef');
		var modef_num = BX('modef_num');
		if(modef && modef_num)
		{
			modef_num.innerHTML = result.ELEMENT_COUNT;
			if(modef.style.display == 'none')
				modef.style.display = 'block';
			modef.style.top = (this.position.top+positionTopFix) + 'px';
			tamautID = setInterval(function(){
				modef.style.display = 'none';
				clearInterval(tamautID);
			},4000);
		}
		
	}
}

JCSmartFilter.prototype.gatherInputsValues = function (values, elements)
{
	if(elements)
	{
		for(var i = 0; i < elements.length; i++)
		{
			var el = elements[i];
			if (el.disabled || !el.type)
				continue;

			switch(el.type.toLowerCase())
			{
				case 'text':
				case 'textarea':
				case 'password':
				case 'hidden':
				case 'select-one':
					if(el.value.length)
						values[values.length] = {name : el.name, value : el.value};
					break;
				case 'radio':
				case 'checkbox':
					if(el.checked)
						values[values.length] = {name : el.name, value : el.value};
					break;
				case 'select-multiple':
					for (var j = 0; j < el.options.length; j++)
					{
						if (el.options[j].selected)
							values[values.length] = {name : el.name, value : el.options[j].value};
					}
					break;
				default:
					break;
			}
		}
	}
}

JCSmartFilter.prototype.values2post = function (values)
{
	var post = new Array;
	var current = post;
	var i = 0;
	while(i < values.length)
	{
		var p = values[i].name.indexOf('[');
		if(p == -1)
		{
			current[values[i].name] = values[i].value;
			current = post;
			i++;
		}
		else
		{
			var name = values[i].name.substring(0, p);
			var rest = values[i].name.substring(p+1);
			if(!current[name])
				current[name] = new Array;

			var pp = rest.indexOf(']');
			if(pp == -1)
			{
				//Error - not balanced brackets
				current = post;
				i++;
			}
			else if(pp == 0)
			{
				//No index specified - so take the next integer
				current = current[name];
				values[i].name = '' + current.length;
			}
			else
			{
				//Now index name becomes and name and we go deeper into the array
				current = current[name];
				values[i].name = rest.substring(0, pp) + rest.substring(pp+1);
			}
		}
	}
	return post;
}

$(document).ready(function(){
	// disable click on disabled property
	$('.lvl2_disabled input, .lvl2_disabled label').on('click',function(){
		return false;
	});
	
	// toggle properties
	$('.showchild').on('click',function(){
		var propID = $(this).data('propid');
		var subUlID = $(this).attr('href');
		var statusOLD = $(subUlID).css('display');
		if(statusOLD=="block")
		{
			$(this).next().addClass('bhfilter-prop-name-plus');
			$(this).next().removeClass('bhfilter-prop-name-minus');
		} else {
			$(this).next().addClass('bhfilter-prop-name-minus');
			$(this).next().removeClass('bhfilter-prop-name-plus');
		}
		$(subUlID).slideToggle('fast');
		rs_show_hide_prop(propID,statusOLD);
		return false;
	});
	
	// click link in little popup
	$('.littlepopup_link').on('click',function(){
		$('#set_filter').click();
		return false;
	});
	
	
});