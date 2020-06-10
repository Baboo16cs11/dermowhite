
<div class="right_col" role="main">
          <div class="">
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Trial Balance<small></small></h2>
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
                            <th>Opening Balance</th>
                            <th>Debit</th>
                            <th>Credit</th>
                            <th>Closing Balance</th>
                        </tr>
                         </thead>
                         <!--  <tr class="clicker ">
                            <td class="text-center" style="color:  blue;">Assets</td>
                            <td class="text-capitalize" ><b><?php echo $sumassets[0]->ob; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumassets[0]->debit;  ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumassets[0]->credit; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumassets[0]->cb; ?></b></td>
                           
                        </tr> -->
             <?php for ($i=0; $i < count($assets); $i++) { ?>
             
           
                        <tr>
                            <td class="text-capitalize" style="color:  red;"><?php echo $assets[$i]->account; ?></td>
                            <td class="text-capitalize" ><?php echo $assets[$i]->opening_balance; ?></td>
                            <td class="text-capitalize" ><?php echo $assets[$i]->debit;  ?></td>
                            <td class="text-capitalize" ><?php echo $assets[$i]->credit; ?></td>
                            <td class="text-capitalize" ><?php echo $assets[$i]->closing_balance; ?></td>
                           
                        </tr>
                       <?php } ?>




                       <!-- <tr class="clicker ">
                            <td class="text-center" style="color:  blue;">Captial</td>
                            <td class="text-capitalize" ><b><?php echo $s_captial[0]->opening_balance; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $s_captial[0]->debit; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $s_captial[0]->credit; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $s_captial[0]->closing_balance; ?></b></td>
                        </tr> -->

                      
                        <tr>
                            <td  class="text-capitalize" style="color:  red;">share capital</td>
                            <td class="text-capitalize" ><?php echo $s_captial[0]->opening_balance; ?></td>
                            <td class="text-capitalize" ><?php echo $s_captial[0]->debit; ?></td>
                            <td class="text-capitalize" ><?php echo $s_captial[0]->credit; ?></td>
                            <td class="text-capitalize" ><?php echo $s_captial[0]->opening_balance - $s_captial[0]->debit + $s_captial[0]->credit; ?></td>
                           
                        </tr>

                      <!--   <tr class="clicker ">
                            <td class="text-center" style="color:  blue;">Liabilities</td>
                            <td class="text-capitalize" ><b><?php echo $sumliab[0]->ob; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumliab[0]->debit;  ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumliab[0]->credit; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumliab[0]->cb; ?></b></td>
                           
                        </tr> -->
                       <?php for ($i=0; $i < count($liabilities); $i++) { ?>
             
                          <tr>
                            <td class="text-capitalize" style="color:  red;">
                              <?php if($liabilities[$i]->account == 'payable'){
                                echo 'Payable';
                              }elseif($liabilities[$i]->account == 'share_premium'){
                                echo 'Share Premium';
                              }elseif($liabilities[$i]->account == 'retained_earning'){
                                echo 'Retained Earning';
                              }elseif ($liabilities[$i]->account == 'non_current_liability') {
                                echo 'Non Current Liability';
                              } ?>
                                
                              </td>
                            <td class="text-capitalize" ><?php echo $liabilities[$i]->opening_balance; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[$i]->debit; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[$i]->credit; ?></td>
                            <td class="text-capitalize" ><?php echo $liabilities[$i]->closing_balance; ?></td>
                           
                        </tr>
                          <?php } ?>
                           <!-- <tr class="clicker ">
                            <td class="text-center" style="color:  blue;">Expense</td>
                            <td class="text-capitalize" ><b><?php echo $sumexpense[0]->ob; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumexpense[0]->debit;  ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumexpense[0]->credit; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumexpense[0]->cb; ?></b></td>
                           </tr>
 -->
                       <?php for ($i=0; $i < count($expense); $i++) { ?>
                        
                          <tr>
                              <td  class="text-capitalize" style="color:  red;"><?php echo $expense[$i]->account; ?></td>
                              <td class="text-capitalize" ><?php echo $expense[$i]->opening_balance; ?></td>
                              <td class="text-capitalize" ><?php echo $expense[$i]->debit; ?></td>
                              <td class="text-capitalize" ><?php echo $expense[$i]->credit; ?></td>
                              <td class="text-capitalize" ><?php echo $expense[$i]->closing_balance; ?></td>  
                          </tr>

                        <?php } ?>
                        
                          <!-- <tr class="clicker ">
                            <td class="text-center" style="color:  blue;">Sales</td>
                            <td class="text-capitalize" ><b><?php echo $sumincome[0]->ob; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumincome[0]->debit;  ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumincome[0]->credit; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumincome[0]->cb; ?></b></td>
                           </tr> -->

                      
                          <tr>
                              <td  class="text-capitalize" style="color:  red;">Income</td>
                              <td class="text-capitalize" ><?php echo $income[0]->opening_balance; ?></td>
                              <td class="text-capitalize" ><?php echo $income[0]->debit; ?></td>
                              <td class="text-capitalize" ><?php echo $income[0]->credit; ?></td>
                              <td class="text-capitalize" ><?php echo $income[0]->closing_balance; ?></td>  
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



