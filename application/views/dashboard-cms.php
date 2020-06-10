<!DOCTYPE html>
<html lang="en">

      <!-- head menu -->
      <?php include_once APPPATH.'views/cms/layout/head.php';?>
      <!-- /head menu -->


<body class="nav-md">
<div class="container body">
<div class="main_container">
<div class="col-md-3 left_col">
<div class="left_col scroll-view">
<div class="navbar nav_title" style="border: 0;">
<a href="<?php echo base_url(); ?>" class="site_title"><i class="fa fa-paw"></i> <span>Jadeed Shopping</span></a>
</div>

<div class="clearfix"></div>



<br />

        <!-- sidebar menu -->
        <?php include_once APPPATH.'views/cms/layout/sidebar.php';?>
        <!-- /sidebar menu -->


</div>
</div>

        <!-- top navigation -->
        <?php include_once APPPATH.'views/cms/layout/topnavigation.php';?>
        <!-- /top navigation -->

        <!-- page content -->
        <?php include_once APPPATH.'views/cms/pages/'.$pagename.'.php';?>
        <!-- /page content -->





        <!-- footer content -->
        <?php include_once APPPATH.'views/cms/layout/footer.php';?>
        <!-- /footer content -->

</div>
</div>


        <!-- sources  -->
        <?php include_once APPPATH.'views/cms/layout/sources.php';?>
        <!-- /sources  -->

        <!-- pagejs  -->
<script type="text/javascript">
        <?php include_once './assets/pagejs/'.$pagename.'.js';?>
</script>
        <!-- /pagejs  -->

  </body>
</html>