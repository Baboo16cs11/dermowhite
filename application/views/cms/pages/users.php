

 <div class="right_col" role="main">
          <div class="">
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Users<small></small></h2>
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
                    <p class="text-muted font-13 m-b-30">
                     List Of all Users
                    </p>
            <table class="table table-striped usertable">
                      <thead>
                        <tr>
                         <th>#</th>
                          <th>First Name</th>
                          <th>Last Name</th>
                          <th>Email</th>
                          <th>Groups</th>
                          <th>Status</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                      <tbody>

                        <?php $count = 1; foreach ($users as $user):?>
                          <tr>
                                  <td><?php echo $count++; ?></td>
                                  <td><?php echo htmlspecialchars($user->first_name,ENT_QUOTES,'UTF-8');?></td>
                                  <td><?php echo htmlspecialchars($user->last_name,ENT_QUOTES,'UTF-8');?></td>
                                  <td><?php echo htmlspecialchars($user->email,ENT_QUOTES,'UTF-8');?></td>
                            <td>
                              <?php foreach ($user->groups as $group):?>
                                <?php echo anchor("admin/auth/edit_group/".$group->id, htmlspecialchars($group->name,ENT_QUOTES,'UTF-8')) ;?><br />
                                      <?php endforeach?>
                            </td>
                            <td><?php echo ($user->active) ? anchor("admin/auth/deactivate/".$user->id, lang('index_active_link')) : anchor("admin/auth/activate/". $user->id, lang('index_inactive_link'));?></td>
                            <td><?php echo anchor("admin/auth/edit_user/".$user->id, 'Edit') ;?>/<?php echo anchor("admin/auth/delete_user/".$user->id, 'Delete') ;?></td>
                          </tr>
                      <?php endforeach;?>
                        
                      </tbody>
                    </table>
 

<p><?php echo anchor('admin/auth/create_user', lang('index_create_user_link'))?> | <?php echo anchor('admin/auth/create_group', lang('index_create_group_link'))?></p>



      </br>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>



