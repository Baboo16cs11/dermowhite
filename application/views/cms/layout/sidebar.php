  <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <!-- <img src="/assets/images/img.jpg" alt=".." class="img-circle profile_img"> -->
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2><?php echo $this->session->userdata('username');?></h2>
              </div>
            </div>
            <!-- /menu profile quick info -->


            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu" >
                  <li <?php if($tab == "1"){ echo 'class="active"'; }?>><a><i class="fa fa-home"></i> Users <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu" <?php if($tab == "1"){ echo 'style="display: block;"'; }?>>
                      <li <?php if($pagename == "users"){ echo 'class="current-page"';}?> ><a href="<?php echo base_admin_url();?>Users">Users Table</a></li>
                      
                    </ul>
                  </li>
                  <li <?php if($tab == "2"){ echo 'class="active"'; }?>><a><i class="fa fa-edit"></i>Orders<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu" <?php if($tab == "2"){ echo 'style="display: block;"'; }?>>
                      <li <?php if($pagename == "orders"){ echo 'class="current-page"';}?>><a href="<?php echo base_admin_url();?>Orders">List of orders</a></li>
                      
                      
                      
                    </ul>
                  </li>

                </ul>
              </div>
 

            </div>