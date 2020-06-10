
<div class="right_col" role="main">
          <div class="">
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Profit And Loss Account<small></small></h2>
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
                <div class="col-xs-12">

                  <div class="list-group">
                  <table class="table">
                    
                  </table>

<a href="#" class="list-group-item">
<!-- <h4>These Boots Are Made For Walking</h4> -->
<p>
  <?php //print_r($data);?>
  <div class="table-responsive">
  <table class="table" cellpadding="6">
                   
                    <tbody>
                     
                       <thead>
                        <tr>
                            <th></th>
                            <th>2018</th>
                            <th>2017</th>
                        </tr>
                         </thead>
                          <tr class="clicker">
                            <td style="color:  blue;">Sales</td>
                            <td class="text-capitalize" ><b><?php echo $sumincome[0]->cb; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumincome[0]->ob; ?></b></td>
                           </tr>

                          <?php for ($i=0; $i < count($expense); $i++) { ?>
             
                            <?php if ($expense[$i]->account == 'material cost') { ?>
                           
                            <tr>
                              <td class="text-capitalize" style="color: blue;">
                               
                               <?php echo 'Cost Of Sale'; ?>
                                
                              </td>

                             <?php } ?>

                           <?php if ($expense[$i]->account == 'material cost') { ?>

                              <td class="text-capitalize" ><?php echo "(".$expense[$i]->closing_balance.")"; ?></td>
                              <td class="text-capitalize" ><?php echo "(".$expense[$i]->opening_balance.")"; ?></td>
                            </tr>

                          <?php } } ?>
                           

                         <?php for ($i=0; $i < count($expense); $i++) { ?>
             
                            <?php if ($expense[$i]->account == 'material cost') { ?>
                           
                            <tr>
                              <td class="text-capitalize" style="color: red;">
                               
                               <?php echo 'material cost'; ?>
                                
                              </td>

                             <?php } ?>

                           <?php if ($expense[$i]->account == 'material cost') { ?>

                              <td class="text-capitalize" ><?php $cbmc = $expense[$i]->closing_balance; echo "(".$cbmc.")"; ?></td>
                              <td class="text-capitalize" ><?php $obmc = $expense[$i]->opening_balance; echo "(".$obmc.")"; ?></td>
                            </tr>

                          <?php } } ?>
                          <tr class="clicker">
                            <td style="color:  blue;">Gross Profit</td>
                            <td class="text-capitalize" ><b><?php $gpcb = $sumincome[0]->cb-$cbmc; echo $gpcb; ?></b></td>
                            <td class="text-capitalize" ><b><?php $gpob = $sumincome[0]->ob-$obmc; echo $gpob; ?></b></td>
                           </tr>
<!--                       <?php for ($i=0; $i < count($expense); $i++) { ?>
                        
                          <tr>
                              <td  class="text-capitalize" style="color:  red;"><?php echo $expense[$i]->account; ?></td>
                              <td class="text-capitalize" ><?php echo $expense[$i]->opening_balance; ?></td>
                              <td class="text-capitalize" ><?php echo $expense[$i]->closing_balance; ?></td>  
                          </tr>

                        <?php } ?> -->
<!-- 
                       <?php for ($i=0; $i < count($expense); $i++) { ?>
                        
                          <tr>
                              <td  class="text-capitalize" style="color:  red;"><?php echo $expense[$i]->account; ?></td>
                              <td class="text-capitalize" ><?php echo $expense[$i]->opening_balance; ?></td>
                              <td class="text-capitalize" ><?php echo $expense[$i]->closing_balance; ?></td>  
                          </tr>

                        <?php } ?> -->

                         <?php for ($i=0; $i < count($expense); $i++) { ?>
                        
                            <?php if ($expense[$i]->account == 'admin expense') { ?>

                          <tr class="clicker">
                            <td style="color:  blue;">Admin Expense</td>
                            <td class="text-capitalize" ><b><?php $aecb = $expense[$i]->closing_balance; echo "(".$aecb.")"; ?></b></td>
                            <td class="text-capitalize" ><b><?php $aeob = $expense[$i]->opening_balance; echo "(".$aeob.")"; ?></b></td>
                           </tr>

                        <?php } } ?>
                        

                           <tr class="clicker">
                            <td style="color:  blue;">Interest & Tax</td>
                            <td class="text-capitalize" ><b><?php $intcb = 0; echo "(".$intcb.")"; ?></b></td>
                            <td class="text-capitalize" ><b><?php $intob = 0; echo "(".$intob.")"; ?></b></td>
                           </tr>
                            <tr class="clicker">
                            <td style="color:  blue;">Profit/(Loss)</td>
                            <td class="text-capitalize" ><b><?php $pnlcb = $gpcb - $aecb - $intcb;  echo $pnlcb; ?></b></td>
                            <td class="text-capitalize" ><b><?php $pnlob = $gpob - $aeob - $intob;  echo $pnlob; ?></b></td>
                           </tr>
                        


                     <!--  <tr>
                            <td class="text-capitalize" style="color:  red;"><?php echo $liabilities[1]->account; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[1]->opening_balance; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[1]->debit; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[1]->credit; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[1]->closing_balance; ?></td>
                           
                        </tr>
                        <tr>
                            <td class="text-capitalize" style="color:  red;"><?php echo $liabilities[2]->account; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[2]->opening_balance; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[2]->debit; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[2]->credit; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[2]->closing_balance; ?></td>
                           
                        </tr>
                        <tr>
                            <td class="text-capitalize" style="color:  red;"><?php echo $liabilities[3]->account; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[3]->opening_balance; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[3]->debit; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[3]->credit; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[3]->closing_balance; ?></td>
                           
                        </tr> -->
                    </tbody>
                </table>
              </div>
            </p>
</a>


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



<!--                <div class="container">
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



