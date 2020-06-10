<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Class Auth
 * @property Ion_auth|Ion_auth_model $ion_auth        The ION Auth spark
 * @property CI_Form_validation      $form_validation The form validation library
 */
class Orders extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->library(array('ion_auth', 'form_validation'));
		$this->load->helper(array('url', 'language'));
    $this->load->model('cms-model/Datatable_orders_model');
		$this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));

		$this->lang->load('auth');
	}

	/**
	 * Redirect if needed, otherwise display the user list
	 */
	public function index()
	{

		if (!$this->ion_auth->logged_in())
		{
			// redirect them to the login page
			redirect('admin/auth/login', 'refresh');
		}
		else if (!$this->ion_auth->is_admin()) // remove this elseif if you want to enable this for non-admins
		{
			// redirect them to the home page because they must be an administrator to view this
			return show_error('You must be an administrator to view this page.');
		}
		else
		{
			$this->data['tab'] = '2';
			$this->data['pagename'] = 'orders';
			$this->load->view('dashboard-cms', $this->data);
		}
	}

	public function getorders()
  {

    $this->load->model('cms-model/Datatable_orders_model');
    $list = $this->Datatable_orders_model->display();
    $data = array();
    $no = $_POST['start'];
    $count = 1;

    foreach ($list as $transaction) {
      $no++;
      $row = array();
      $row[] = $count++;
      $row[] = $transaction->name;
      $row[] = $transaction->email;
      $row[] = $transaction->phone;
      $row[] = $transaction->city;
      $row[] = $transaction->address;
      $row[] = $transaction->packages;
      $row[] = $transaction->customProduct;
      $row[] = $transaction->query;
      $row[] = $transaction->amount;
      $row[] = $transaction->is_paid;
      $row[] = $transaction->created_at;
      //add html for action
      // $row[] = '<button class="btn btn-sm btn-danger" title="delete" onclick="delete_order('.$transaction->id.')"><i class="glyphicon glyphicon-trash"></i> Delete</button>';
    
      $data[] = $row;
    }
    $output = array(
            "draw" => $_POST['draw'],
            // "query" => $this->db->last_query(),
            "recordsTotal" => $this->Datatable_orders_model->count_all(),
            "recordsFiltered" => $this->Datatable_orders_model->count_filtered(),
            "data" => $data,
        );
    //output to json format
    echo json_encode($output);
  }
   // public function displayorders()
   //      {
   //        //$data['pagename'] = 'orders';
            
   //          // echo "<pre>";
   //          // print_r($data);
   //          // exit();
   //          // $this->load->view('orders',$data);
   //    $this->data['tab'] = '2';
   //    $this->data['pagename'] = 'orders';
   //    $this->data['data']= $this->Datatable_orders_model->display();
   //    $this->load->view('dashboard-cms', $this->data);
   //      }
     public function delete_record(){

      $message['status']  = false;

    if(!empty($_POST['id']) && $_POST['table'])
    {
      $this->load->model('cms-model/Main_model_cms');

      $id                 = $this->input->post('id');
      $table              = $this->input->post('table');
      
      $resp = $this->Main_model_cms->delete_record($id,$table);      
        
        if($resp ==  true){

        $message['status'] = true;
        
        }


    }
      echo json_encode($message);
  } 
}