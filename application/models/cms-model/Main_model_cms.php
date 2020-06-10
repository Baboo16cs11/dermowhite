<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Class Ion Auth Model
 * @property Bcrypt $bcrypt The Bcrypt library
 * @property Ion_auth $ion_auth The Ion_auth library
 */
class Main_model_cms extends CI_Model
{
	function add_record($data,$table_name){
		$this->db->insert($table_name,$data);
		return true;
	}
	function edit_record($id,$data,$table_name){
		$this->db->where('id',$id);
		$this->db->update($table_name,$data);
		return true;
	}

	function edit_record_where($colname,$id,$data,$table_name){
		$this->db->where($colname,$id);
		$this->db->update($table_name,$data);
		return true;
	}


	function get_singlerecord($id,$table_name){
		$this->db->select('*');
		$this->db->from($table_name);
		$this->db->where('id',$id);
		$data = $this->db->get()->result_array();
		return $data;
	}

	function custom_query($query1){
	    
	    $query = $this->db->query($query1);
    	return $query->result_array();

	}

	function get_distinct_records($table,$selcolname=null){

		if(empty($selcolname)){

			$this->db->distinct('*');

		}else{

			$this->db->distinct($selcolname);
			$this->db->select($selcolname);
		}

		$this->db->from($table);
	    $this->db->where('is_deleted',0);
		$data = $this->db->get()->result_array();
		return $data;
	
	}

	function get_singlerecord_viewer($id,$table_name){
		$this->db->select('*');
		$this->db->from($table_name);
		$this->db->where('id',$id);
		$this->db->where('is_deleted',0);
		$data = $this->db->get()->result_array();
		return $data;
	}
	function get_where_record($id,$colname,$table_name){
		$this->db->select('*');
		$this->db->from($table_name);
		$this->db->where($colname,$id);
		$this->db->where('is_deleted',0);
		$data = $this->db->get()->result_array();
		return $data;
	}
/*	function get_joined_where_record($table_name,$jointabname,$t1col,$j1colname,$jcolname){
		$this->db->select("t1.*,t2.$jcolname");
		$this->db->from("$table_name AS t1");
		$this->db->join("$jointabname AS t2","t1.$t1col = t2.$j1colname");
		$this->db->where('t1.is_deleted',0);
		$data = $this->db->get()->result_array();
		return $data;
	}*/
	function getrecords($table_name){
		$this->db->select('*');
		$this->db->from($table_name);
		$this->db->where('is_deleted',0);
		$data = $this->db->get()->result_array();
		return $data;
	}

	function getallrecords($table_name){
		$this->db->select('*');
		$this->db->from($table_name);
		$data = $this->db->get()->result_array();
		return $data;
	}

	function delete_record($id,$table_name){
	    
	    $data =  array('is_deleted' => 1);

	    $this->db->where('id',$id);
	    $this->db->update($table_name,$data);
	    
	    return true;
	}

	function delete_custom_record($id,$colname,$table_name){
	    
	    $data =  array('is_deleted' => 1);

	    $this->db->where($colname,$id);
	    $this->db->update($table_name,$data);
	    
	    return true;
	}

function perm_delete_record($id,$colname,$table_name){
	    

	    $this->db->where($colname,$id);
	    $this->db->delete($table_name);
	    
	    return true;
	}

	function delete_image($id,$table_name,$propid,$filename){
	    
	    $data =  array('is_deleted' => 1);
	    
	    if(!empty($id)){
	    
	    $this->db->where('id',$id);
		
		}
		if(!empty($propid)){

		$this->db->where('prop_id',$propid);

		}
		if(!empty($filename)){

		$this->db->where('filename',$filename);

		}


	    $this->db->update($table_name,$data);
	    
	    return true;
	}
	public function delete_floorplans($id){
		$data  = array('floorplans' => null);

		$this->db->where('id',$id);
		$this->db->update('properties',$data);
		return true;
	}
	
	public function get_pro_images($id){
		$this->db->select('*');
		$this->db->from('prop_images');
		$this->db->where('prop_id',$id);
		$this->db->where('is_deleted',0);
		$data = $this->db->get()->result_array();
		return $data;
	}
	public function delete_prop_total($id){

		$data = array('is_deleted' => 1);

		$this->db->where('id',$id);
		$this->db->update('properties',$data);

		$this->db->where('prop_id',$id);
		$this->db->update('price_range',$data);

		$this->db->where('prop_id',$id);
		$this->db->update('payment_plan',$data);

		$this->db->where('prop_id',$id);
		$this->db->update('prop_images',$data);

		return true;
	}
	function count_all()
 {
  $query = $this->db->get("projects");
  return $query->num_rows();
 }
}
?>