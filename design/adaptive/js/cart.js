  $(document).ready(function(){
	  var cityes = $('#cityes');
	  var payment= $('#payments');
	  var form = $('#cart_form');

	  
	  
	  cityes.find('option').hide();
	  
	 
	  
	  
	  
	  
	  
	  form.submit(function(){
		  form.find('input').attr("disabled",false);
		  form.find('select').attr("disabled",false);
	  });
	  
	  
	  $(".minus").click(function(){
		  var div 	= $(this).parent("div");
		  var inp 	= div.find("input[type='text']");
		  var curent 	= inp.val();
		  var value	= parseInt(curent)-0;
		  if(value>0){
			  inp.val(value);
			  document.cart.submit();
		  }
		  return false;
	  });
	  $(".plus").click(function(){
		  var div 	= $(this).parent("div");
		  var inp 	= div.find("input[type='text']");
		  var curent 	= inp.val();
		  var value	= parseInt(curent)+0;
		  inp.val(value);
		  document.cart.submit();
		  return false;
	  });
  });