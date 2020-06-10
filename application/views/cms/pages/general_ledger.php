
<div class="right_col" role="main">
          <div class="">
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>General ledger<small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                     
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        
                        
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>

                    </ul>
                    <div class="clearfix"></div>
                  </div>
             <div class="x_content">
              <div class="container">
                <div class="col-md-offset-4 col-xs-4">

                  <div class="list-group">
                  <table class="table">
                    
                  </table>
  <?php $count = 2; foreach($sales as $sale):?>

<a href="#" class="list-group-item <?php if($count % 2 == 0){ echo 'list-group-item-info'; } ?>">
<!-- <h4>These Boots Are Made For Walking</h4> -->
<p>
  <div class="table-responsive">
  <table class="table" cellpadding="6">
                   
                    <tbody>
                     
                       <thead>
                        <tr>
                            <th>ledger</th>
                            <th>Value</th>
                            <th>Debit/Credit</th>
                        </tr>
                         </thead>
             
                        <tr style="color:  red;">
                            <td><?php echo $sale->item; ?></td>
                            <td><?php echo $sale->value; ?></td>
                            <td>Debit</td>
                           
                        </tr>
                      
                        <tr>
                            <td><?php echo 'Cash'; ?></td>
                            <td><?php echo $sale->value*$sale->pmethod / 100; ?></td>
                            <td>Credit</td>
                           
                        </tr>
                        <tr>
                            <td><?php echo 'Payable'; ?></td>
                            <td><?php echo $sale->value * (1 - $sale->pmethod / 100); ?></td>
                            <td>Credit</td>
                           
                        </tr>
                    </tbody>
                </table>
              </div>
            </p>
</a>

<?php $count++; endforeach;?>

                  </div>
                </div>
                
              </div>

<!-- 
<table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Item</th>
                          <th>Item Value</th>
                          <th>Cash</th>
                          <th>Payable</th>
                        </tr>
                      </thead>


                      <tbody>
                        <?php $count = 1; foreach($sales as $sale):?>
                        <tr>
                          <td><?php echo $count++; ?></td>
                          <td><?php echo $sale->item; ?></td>
                          <td><?php echo $sale->value; ?></td>
                          <td><?php echo $sale->value*$sale->pmethod / 100; ?></td>
                          <td><?php echo $sale->value * (1 - $sale->pmethod / 100); ?></td>
                        </tr>
                        <?php endforeach;?>

                      </tbody>
                    </table> -->



<!--              	<div class="container">
             		<div class="row">
		              <div class="col-xs-6">
                <table class="table">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Balance in</th>
                            <th>Balance in</th>
                            <th>Difference</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                        <tr>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                        </tr>
                      
                        <tr>
                            <td>2</td>
                            <td>2</td>
                            <td>2</td>
                            <td>2</td>
                        </tr>
                    </tbody>
                </table>
                
                <h3>Non-Current Assets</h3>
                <p>There is no non-current assets for this financial year.</p>
                
                <h3>Total Assets</h3>
                <table class="table">
                    <thead>
                        <tr>
                            <th>1</th>
                            <th>1</th>
                            <th>1</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                        </tr>
                    </tbody>
                </table>
		              	</div>
  		              <div class="col-xs-6">

		              </div>
             		</div>
             	</div>


 -->




          </div>
        </div>
      </div>
    </div>
  </div>
</div>



