$('.mouse1').on('ifChecked', function(event){
  $('.mouse').iCheck('enable');
  if ($("#purchase input:checkbox:checked").length > 0)
{
   $('.pmethod').prop('disabled', false);
}
else
{
   $('.pmethod').prop('disabled', true);
}

});

$('.mouse1').on('ifUnchecked', function(event){
  $('.mouse').iCheck('disable');
  if ($("#purchase input:checkbox:checked").length > 0)
{
   $('.pmethod').prop('disabled', false);
}
else
{
   $('.pmethod').prop('disabled', true);
}

});

$('.keyboard1').on('ifChecked', function(event){
  $('.keyboard').iCheck('enable');
  if ($("#purchase input:checkbox:checked").length > 0)
{
   $('.pmethod').prop('disabled', false);
}
else
{
   $('.pmethod').prop('disabled', true);
}

});

$('.keyboard1').on('ifUnchecked', function(event){
  $('.keyboard').iCheck('disable');
  if ($("#purchase input:checkbox:checked").length > 0)
{
   $('.pmethod').prop('disabled', false);
}
else
{
   $('.pmethod').prop('disabled', true);
}

});

$('.lcd1').on('ifChecked', function(event){
  $('.lcd').iCheck('enable');
  if ($("#purchase input:checkbox:checked").length > 0)
{
   $('.pmethod').prop('disabled', false);
}
else
{
   $('.pmethod').prop('disabled', true);
}

});

$('.lcd1').on('ifUnchecked', function(event){
  $('.lcd').iCheck('disable');
  if ($("#purchase input:checkbox:checked").length > 0)
{
   $('.pmethod').prop('disabled', false);
}
else
{
   $('.pmethod').prop('disabled', true);
}

});

$('.camera1').on('ifChecked', function(event){
  $('.camera').iCheck('enable');
  if ($("#purchase input:checkbox:checked").length > 0)
{
   $('.pmethod').prop('disabled', false);
}
else
{
   $('.pmethod').prop('disabled', true);
}

});

$('.camera1').on('ifUnchecked', function(event){
  $('.camera').iCheck('disable');
  if ($("#purchase input:checkbox:checked").length > 0)
{
   $('.pmethod').prop('disabled', false);
}
else
{
   $('.pmethod').prop('disabled', true);
}

});

$('.pmethod').on('change', function() {
  
  if(this.value > 0){
 
 	$('.submitbutton').prop('disabled', false); 	

  }else{
  
  	$('.submitbutton').prop('disabled', true);
	
 }

});

$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});

$('#purchase').submit(function(e){
    e.preventDefault(); 
	var me =  $(this);

	$.ajax({
        url:'<?php echo base_url();?>admin/Inventoryinsertion/addinventory',
        type: 'post',
        data: me.serialize(),      
        dataType: 'json',
        success: function(responce){
          if(responce.status == true){
            $.alert({
                title: 'Success!',
                content: 'You have successfully inserted the inventory!',
            });
          }

        }
    });

});