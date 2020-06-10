$(document).ready(function() {
      table = $('#table').DataTable({ 
        
        "processing": true, //Feature control the processing indicator.
        "serverSide": true,
         // 
               //Feature control DataTables' server-side processing mode.
        /* "rowCallback": function( row, data ) {
            if ( $.inArray(data.DT_RowId, selected) !== -1 ) {
                $(row).addClass('selected');
            }
        },*/
        // Load data for the table's content from an Ajax source
        "ajax": {
          "url": "<?php echo base_admin_url();?>Orders/getorders",
          "type": "POST"
        },
        //Set column definition initialisation properties.
        "columnDefs": [
        { 
          "targets": [ -1 ], //last column
          "orderable": false,
         /* className: "overflow-wrap-hack", "targets": [ 12 ],*/ //all class to td
        },
        ],

      });
      
    });


function delete_order(id){



$.confirm({
    title: 'Confirm!',
    content: 'Are You Sure?',
    buttons: {
        confirm: function () {
       
    $.ajax({
        url:'<?php echo base_admin_url();?>Orders/delete_record',
        type: 'post',
        //onfocusout: false,
       data: { id:id, table: "orders" },
        dataType: 'json',
        success: function(responce){
          /*alert(1);
          console.log(responce);*/

            if (responce.status == true) {
                  new PNotify({
                      title: 'Success!',
                      text: 'Record successfully Deleted!!',
                      type: 'success',
                      styling: 'bootstrap3'
              });
             table.ajax.reload();
            }else{
                new PNotify({
                      title: 'Error!',
                      text: 'Internal Error!',
                      type: 'error',
                      styling: 'bootstrap3'
                  });   
            }
         

        }
    });
      },
        cancel: function () {
            
        }
    }
  }); 
}
