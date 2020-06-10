
<div class="right_col" role="main">
          <div class="">
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Balance Sheet<small></small></h2>
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
                          <tr class="clicker ">
                            <td style="color:  blue;"><b><h2>Assets</h2></b></td>
                            <td class="text-capitalize" ><b><h2><?php echo $sumassets[0]->cb; ?></h2></b></td>
                            <td class="text-capitalize" ><b><h2><?php echo $sumassets[0]->ob; ?></h2></b></td>
                           
                        </tr>
             <?php for ($i=0; $i < count($assets); $i++) { ?>
             
           
                        <tr>
                            <td class="text-capitalize" style="color:  red;"><?php echo $assets[$i]->account; ?></td>
                            <td class="text-capitalize" ><?php echo $assets[$i]->closing_balance; ?></td>
                            <td class="text-capitalize" ><?php echo $assets[$i]->opening_balance; ?></td>
                           
                        </tr>
                       <?php } ?>




                       <tr class="clicker ">
                            <td style="color:  blue;">Captial</td>
                            <td class="text-capitalize" ><b><?php echo $sum_captial[0]->cb; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sum_captial[0]->ob; ?></b></td>
                        </tr>

                       <?php for ($i=0; $i < count($s_captial); $i++) { ?>
                        <?php if ($s_captial[$i]->account == 'retained earnings') { ?>
                        <tr>
                            <td  class="text-capitalize" style="color:  red;"><?php echo $s_captial[$i]->account; ?></td>
                            <td class="text-capitalize" ><?php echo $s_captial[$i]->closing_balance; ?></td>
                            <td class="text-capitalize" ><?php echo $s_captial[$i]->opening_balance; ?></td>
                           
                        </tr>
                      <?php }else{ ?>
                        <tr>
                            <td  class="text-capitalize" style="color:  red;"><?php echo $s_captial[$i]->account; ?></td>
                            <td class="text-capitalize" ><?php echo $s_captial[$i]->closing_balance; ?></td>
                            <td class="text-capitalize" ><?php echo $s_captial[$i]->opening_balance; ?></td>
                           
                        </tr>
                      <?php } ?>
                        <?php } ?>

                        <tr class="clicker ">
                            <td style="color:  blue;">Liabilities</td>
                            <td class="text-capitalize" ><b><?php echo $sumliab[0]->cb; ?></b></td>
                            <td class="text-capitalize" ><b><?php echo $sumliab[0]->ob; ?></b></td>
                           
                        </tr>
                       <?php for ($i=0; $i < count($liabilities); $i++) { ?>
             
                            <?php if ($liabilities[$i]->account == 'non_current_liability') { ?>
                           
                            <tr>
                              <td class="text-capitalize" style="color: red;">
                               
                               <?php echo 'Non Current Liability'; ?>
                                
                              </td>

                             <?php } ?>

                           <?php if ($liabilities[$i]->account == 'non_current_liability') { ?>

                              <td class="text-capitalize" ><?php echo $liabilities[$i]->closing_balance; ?></td>
                              <td class="text-capitalize" ><?php echo $liabilities[$i]->opening_balance; ?></td>
                            </tr>

                          <?php } } ?>
                         
                         <?php for ($i=0; $i < count($liabilities); $i++) { ?>

                           <?php if ($liabilities[$i]->account != 'non_current_liability') { ?>
                          <tr>
                            <td class="text-capitalize" style="color:  red;">

                              <?php } if($liabilities[$i]->account == 'payable'){
                                echo 'Payable';
                              }elseif($liabilities[$i]->account == 'share_premium'){
                                echo 'Share Premium';
                              } ?>
                                
                              </td>
                              <?php if ($liabilities[$i]->account != 'non_current_liability') { ?>

                              <td class="text-capitalize" ><?php echo $liabilities[$i]->closing_balance; ?></td>
                              <td class="text-capitalize" ><?php echo $liabilities[$i]->opening_balance; ?></td>
                            </tr>
                          <?php } ?>
                           
                        </tr>
                          <?php } ?>
                          <tr class="clicker">
                            <td style="color:  blue;"><b><h2>Captial + Liabilities</h2></b></td>
                            <td class="text-capitalize" ><b><h2><?php echo $sumliab[0]->cb +  $sum_captial[0]->cb; ?></h2></b></td>
                            <td class="text-capitalize" ><b><h2><?php echo $sumliab[0]->ob +  $sum_captial[0]->ob; ?></h2></b></td>
                        </tr>
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



