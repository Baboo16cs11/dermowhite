<?php
/**
 * 
 */
class InsertFormData extends CI_Model
{
 public function Insertdata($name,$email,$phone,$city,$address,$packages,$customProduct,$query,$amount)
  {
    $data = array(
    	'name' => $name,
            'email'=>$email,
            'phone'=>$phone,
            'city'=>$city,
            'address'=>$address,
            'packages'=>$packages,
            'customProduct'=>$customProduct,
            'query'=>$query,
            'amount'=>$amount
             );
    $query=$this->db->insert('form',$data);
    return $query;
  }
 //  function display(){
	// 	$result=$this->db->select("*")->from('form')->get()->result();
	// 	return $result;
	
	// }
}
?>