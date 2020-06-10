<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Class Ion Auth Model
 * @property Bcrypt $bcrypt The Bcrypt library
 * @property Ion_auth $ion_auth The Ion_auth library
 */
class Sales extends CI_Model
{
  public function insertsale($data){
     $this->db->insert('purchase',$data);
     return true;
  }

  public function getsales(){
  	$this->db->select('*');
  	$this->db->from('purchase');
    $this->db->order_by("id", "desc");
  	$result = $this->db->get()->result();
  	return $result;
  }

  public function getsumsales(){
    $this->db->select('item,SUM(value) as total');
    $this->db->from('purchase');
    $this->db->group_by('item'); 
    $result = $this->db->get()->result();
    return $result;
  }
  public function gett_balance(){
    $this->db->select('*');
    $this->db->from('trail_balance');
    $result = $this->db->get()->result();
    return $result; 
  }
  public function gett_balance_ob($asset){
    $this->db->select('opening_balance');
    $this->db->from('trail_balance');
    $this->db->where('account',$asset);
    $this->db->where('closing_year',date('Y'));
    $result = $this->db->get()->result();
    return $result; 
 
}
  public function trail_balance_expense($closing){
    $this->db->select('*');
    $this->db->from('trail_balance');
    $this->db->where('is_expense', 1);
    $this->db->where('closing_year',$closing);
    $result = $this->db->get()->result();
    return $result;
  }
  public function tb_sum_expense($closingyear){
    $this->db->select('SUM(opening_balance) as ob,SUM(debit) as debit,
                      SUM(credit) as credit,SUM(closing_balance) as cb');
    $this->db->from('trail_balance');
    $this->db->where('is_expense', 1);
    $this->db->where('closing_year',$closingyear);
    $result = $this->db->get()->result();
    return $result;
  }
    public function trail_balance_income($closing){
    $this->db->select('*');
    $this->db->from('trail_balance');
    $this->db->where('is_income', 1);
    $this->db->where('closing_year',$closing);
    $result = $this->db->get()->result();
    return $result;
  }
  public function tb_sum_income($closingyear){
    $this->db->select('SUM(opening_balance) as ob,SUM(debit) as debit,
                      SUM(credit) as credit,SUM(closing_balance) as cb');
    $this->db->from('trail_balance');
    $this->db->where('is_income', 1);
    $this->db->where('closing_year',$closingyear);
    $result = $this->db->get()->result();
    return $result;
  }

  public function getitems(){
    $this->db->select('*');
    $this->db->from('items');
    $result = $this->db->get()->result();
    return $result;
  }

  public function updateitems($data){
    $this->db->insert('trail_balance',$data);
    return true;
  }

  public function asset_delete_trail_balance($closingyear){
    $this->db->where('is_asset', 1);
    $this->db->where('is_cash', 0);
    $this->db->where('closing_year',$closingyear);
    $this->db->delete('trail_balance');
    return true;
  }
  public function insert_trail_balance($data){
    $this->db->insert('trail_balance',$data);
    return true;
  }
  public function update_trail_balance($item,$data){
    $this->db->where('account',$item);
    $this->db->update('trail_balance',$data);
    return true;
  }

  public function insert_cash($cashdetail){
    
    $this->db->select('*');
    $this->db->from('trail_balance');
    $this->db->where('account','cash');
    $this->db->where('closing_year',date('Y'));
    $result = $this->db->get()->result();
    
    if (empty($result)) {

    $this->db->insert('trail_balance',$cashdetail);
    
    }else{

    $this->db->where('closing_year',date('Y'));
    $this->db->where('account','cash');
    $this->db->update('trail_balance',$cashdetail);  

    }

    return true;

  }

  public function insert_payable($payabledetail){

    $this->db->select('*');
    $this->db->from('trail_balance');
    $this->db->where('account','payable');
    $this->db->where('closing_year',date('Y'));
    $result = $this->db->get()->result();
    
    if (empty($result)) {

    $this->db->insert('trail_balance',$payabledetail);
    
    }else{

    $this->db->where('closing_year',date('Y'));
    $this->db->where('account','payable');
    $this->db->update('trail_balance',$payabledetail);  

    }

    return true;


  }
  public function trailbalanceassets($closingyear){
    $this->db->select('*');
    $this->db->from('trail_balance');
    $this->db->where('is_asset', 1);
    $this->db->where('closing_year',$closingyear);
    $result = $this->db->get()->result();
    return $result;
  }


  public function getsumassets($closingyear){
    $this->db->select('SUM(opening_balance) as ob,SUM(debit) as debit,
                      SUM(credit) as credit,SUM(closing_balance) as cb');
    $this->db->from('trail_balance');
    $this->db->where('is_asset', 1);
    $this->db->where('closing_year',$closingyear);
    $result = $this->db->get()->result();
    return $result;
  }
    public function tb_sum_captial($closingyear){
    $this->db->select('SUM(opening_balance) as ob,SUM(debit) as debit,
                      SUM(credit) as credit,SUM(closing_balance) as cb');
    $this->db->from('trail_balance');
    $this->db->where('is_share_Cap', 1);
    $this->db->where('closing_year',$closingyear);
    $result = $this->db->get()->result();
    return $result;
  }
  public function nonasset_tb($closingyear){
    $this->db->select('*');
    $this->db->from('trail_balance');
    $this->db->where('is_asset', 0);
    $this->db->where('closing_year',$closingyear);
    $result = $this->db->get()->result();
    return $result;
  }

  public function tb_captial($closingyear){
    $this->db->select('*');
    $this->db->from('trail_balance');
    $this->db->where('is_share_Cap', 1);
    $this->db->where('closing_year',$closingyear);
    $result = $this->db->get()->result();
    return $result;
  }


    public function trailbalanceliab($closingyear){
    $this->db->select('*');
    $this->db->from('trail_balance');
    $this->db->where('is_liab', 1);
    $this->db->where('closing_year',$closingyear);
    $result = $this->db->get()->result();
    return $result;
  }


  public function getsumliab($closingyear){
    $this->db->select('SUM(opening_balance) as ob,SUM(debit) as debit,
                      SUM(credit) as credit,SUM(closing_balance) as cb');
    $this->db->from('trail_balance');
    $this->db->where('is_liab', 1);
    $this->db->where('closing_year',$closingyear);
    $result = $this->db->get()->result();
    return $result;
  }

}