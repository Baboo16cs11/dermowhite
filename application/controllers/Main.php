<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	 
	 public function __construct()
        {
            parent::__construct();
            $this->load->model('InsertFormData');
            $this->output->set_header('Access-Control-Allow-Origin: *');
            $this->output->set_header('Access-Control-Allow-Credentials: *');
            $this->output->set_header('Access-Control-Allow-Methods: *');
            $this->output->set_header('Access-Control-Allow-Headers: *');
            $this->output->set_header('Access-Control-Max-Age: 86400');

            /*header( 'Access-Control-Allow-Origin: *' );
            header( 'Access-Control-Allow-Credentials: true' );
            header( 'Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS' );
            header( 'Access-Control-Allow-Headers: ACCEPT, ORIGIN, X-REQUESTED-WITH, CONTENT-TYPE, AUTHORIZATION' );
            header( 'Access-Control-Max-Age: 86400' );*/

        }
	public function index()
	{
		/*$data = array(
		            'widget' => $this->recaptcha->getWidget(),
		            'script' => $this->recaptcha->getScriptTag(),
		        );*/
		$this->load->view('index');
	}

	public function addorder(){
		$responce['status']   = false;

		$name               = $this->input->post('name');
		$email              = $this->input->post('email');
		$phone              = $this->input->post('phone');
		$bottles            = $this->input->post('bottles');
		$address            = $this->input->post('address');
		$city               = $this->input->post('city');
		$question           = $this->input->post('question');

		if($bottles == 3){
			
			$price = 599;

		}else if($bottles == 2){
			
			$price = 399;
		
		}else{
			
			$price = 199;
		
		}

      $data = array('name'               => $name,
                    'email'              => $email,
                    'phone '             => $phone,
                    'bottles'            => $bottles,
                	'price'				 => $price,
                	'address'			 => $address,
                	'city'               => $city,
                	'question'           => $question);
      
      $responce['data'] = $data;

      $this->load->model('cms-model/Main_model_cms');
      $responce['status']   = $this->Main_model_cms->add_record($data,'orders');
		
		$config = Array(
        'mailtype'  => 'html',
        'charset'   => 'iso-8859-1'
    );
    $message = "<!DOCTYPE html>
<html>
<body>
    <div class='email-background' style='padding:20px;background:#f3f3f3'>
        <div class='email-header' style='max-width:580px;padding:5px 20px;margin:0 auto;background:#fce873;font-family:Open Sans,sans-serif;font-size:16px;color:#fff;'>
            <table class='about-items' style='width:100%;margin:0;padding:0;list-style:none;font-size:13px'>
                <tbody>

                </tbody>
            </table>
        </div>
        <div class='email-logo' style='max-width:580px;padding:10px 20px;margin:0 auto;background:#fce873;border-bottom: 3px solid #111111'>
            <div class='img-block'>
                <a href='https://dami.jadeedshopping.com'><img class='logo' src='https://dami.jadeedshopping.com/assets/front/assets/images/logo.png' width='200'></a>
            </div>
        </div>
        <div class='email-container' style='max-width:580px;padding:20px;margin:0 auto;background:#ffffff;font-family:Open Sans,sans-serif;font-size:16px;color:#626262'>
            <h1 style='margin-bottom:25px;font-family:sans-serif;font-size:18px;margin-bottom: 10px;'>Dear $name,</h1>
            <p style='line-height:25px;color:#626262'>Greetings,</p>
            <p style='line-height:25px;color:#626262'>Thanks for contacting us! We will get in touch with you shortly.</p>
            
            <p style='line-height:25px;color:#626262'>For any further queries, feel free to contact us via email, <span style='font-weight: bold;'><a href='#' style='color:#626262; text-decoration:none'>dami@jadeedshopping.com</a></span> or online chat.</p>

            <p style='line-height:25px;color:#626262'>Have a wonderful day.</p>
            <p style='line-height:25px;color:#626262'>Best Regards,
                <br> Customer Services,
                <br> Jadeed Shopping
            </p>
        </div>
        <div class='email-footer' style='max-width:580px;padding:20px;margin:0 auto 20px auto;background:#fce873;font-family:Open Sans,sans-serif;font-size:16px;color:#fff;margin-bottom:0'>
            <table class='about-items' style='width:100%;margin:0;padding:0;list-style:none;font-size:14px'>
                <tbody>

                </tbody>
            </table>
        </div>
    </div>
</body>
</html>";


     $message2 = "<!DOCTYPE html>
<html>
<body>
    <div class='email-background' style='padding:20px;background:#f3f3f3'>
        <div class='email-header' style='max-width:580px;padding:5px 20px;margin:0 auto;background:#fce873;font-family:Open Sans,sans-serif;font-size:16px;color:#fff;'>
            <table class='about-items' style='width:100%;margin:0;padding:0;list-style:none;font-size:13px'>
                <tbody>

                </tbody>
            </table>
        </div>
        <div class='email-logo' style='max-width:580px;padding:10px 20px;margin:0 auto;background:#fce873;border-bottom: 3px solid #111111'>
            <div class='img-block'>
                <a href='https://dami.jadeedshopping.com'><img class='logo' src='https://dami.jadeedshopping.com/assets/front/assets/images/logo.png' width='200'></a>
            </div>
        </div>
        <div class='email-container' style='max-width:580px;padding:20px;margin:0 auto;background:#ffffff;font-family:Open Sans,sans-serif;font-size:16px;color:#626262'>
            <h1 style='margin-bottom:25px;font-family:sans-serif;font-size:18px;margin-bottom: 10px;'>Dear,</h1>
            <p style='line-height:25px;color:#626262'>Greetings,</p>
            $name has placed an order of $bottles bottle(s).
            <br>
            Name:$name
            <br>
            Email:$email
            <br>
            Phone:$phone
            <br>
            Price:$price
            <br>
            Address:$address
            <br>
            City:$city
            <br>
            Question:$question
            </p>
            
        </div>
        <div class='email-footer' style='max-width:580px;padding:20px;margin:0 auto 20px auto;background:#fce873;font-family:Open Sans,sans-serif;font-size:16px;color:#fff;margin-bottom:0'>
            <table class='about-items' style='width:100%;margin:0;padding:0;list-style:none;font-size:14px'>
                <tbody>

                </tbody>
            </table>
        </div>
    </div>
</body>
</html>";

    $this->load->library('email', $config);
    $this->email->set_newline("\r\n");
    $this->email->from('noreply@dami.jadeedshopping.com','Jadeed Shopping'); // change it to yours
    $this->email->to($email);// change it to yours
    $this->email->subject('Thank you for placing your order');
    $this->email->message($message);
    $this->email->send();
    
    $this->email->clear();
     
    $this->email->set_newline("\r\n");
    $this->email->from('noreply@dami.jadeedshopping.com','Jadeed Shopping'); // change it to yours
    $this->email->to('dami@jadeedshopping.com');// change it to yours
    $this->email->subject('Order received');
    $this->email->message($message2);
    $this->email->send();
   
		
/*	$this->email->clear();
	
	$this->email->set_newline("\r\n");
    $this->email->from('noreply@jadeedshopping.com','Jadeed Shopping'); // change it to yours
    $this->email->to('jadeedshopping@gmail.com');// change it to yours
    $this->email->subject('Order received');
    $this->email->message($message2);
    $this->email->send();
		*/
		echo json_encode($responce);
	
	}

/*	function getcapachaimage()
	{
	$captchanumber = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz';
	$captchanumber = substr(str_shuffle($captchanumber), 0, 6);
	$_SESSION["code"] = $captchanumber;
	$path= front_asset_url().'assets/captcha/1.jpg';
	$image = imagecreatefromjpeg($path);
	$foreground = imagecolorallocate($image, 175, 199, 200); //font color
	imagestring($image, 5, 45, 8, $captchanumber, $foreground);
	header('Content-type: image/png');
	imagepng($image);
	}

	function checkcaptcha()
{	
	if ($_SESSION["code"] == $this->input->post('captcha')) {
		$json['success']  = true;
	} else {
		$json['error']  = true;
	}
	echo json_encode($json);
}*/
    public function Insertdata()
    {
$packages=$this->input->post('packages');
if ($packages=='1') {
            $amount=149;
        }
        if ($packages=='2') {
            $amount=283;
        }
         if ($packages=='3') {
            $amount=402;
        }
         if ($packages=='4') {
            $amount=550;
        }


        $data = array(
        'name' => $this->input->post('name'),
            'email'=>$this->input->post('email'),
            'phone'=>$this->input->post('telephone'),
            'city'=>$this->input->post('city'),
            'address'=>$this->input->post('address'),
            'packages'=>$this->input->post('packages'),
            'customProduct'=>$this->input->post('customProduct'),
            'query'=>$this->input->post('anyquestion'),
            'amount'=> $amount
             );
    $res = $this->db->insert('form',$data);

if ($res == true) {
    $data['package'] = $this->input->post('packages');
    $data['message'] = 'Order Recieved';

    echo json_encode($data);
}
else{
    echo json_encode('Failed !!!');
}
}
    public function thankyou(){
        $this->load->view('thankyou');
    }
    
   public function privacypolicy(){
        $this->load->view('privacypolicy');
    }
    
    public function returnpolicy(){
        $this->load->view('return-policy');
    }

    public function termsofuse(){
        $this->load->view('terms-of-use');
    }
}
