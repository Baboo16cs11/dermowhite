<?php 


class Datatable_orders_model extends CI_Model {

  var $table = 'orders';
  var $column = array('name','email','phone','bottles','price','address','city','created_on');
  var $order = array('id' => 'desc');

  public function __construct()
  {
    parent::__construct();
    $this->load->database();
        $this->search = '';
  }
  private function _get_datatables_query()
  {
    
    $this->db->from($this->table);
    
    $i = 0;
  
    foreach ($this->column as $item) 
    {
      if($_POST['search']['value'])
        ($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
      $column[$i] = $item;
      $i++;
    }
    
    if(isset($_POST['order']))
    {
      $this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
    } 
    else if(isset($this->order))
    {
      $order = $this->order;
      $this->db->order_by(key($order), $order[key($order)]);
    }
    $this->db->where('is_deleted',0);
  }
  function get_datatables()
  {
    $this->_get_datatables_query();
    if($_POST['length'] != -1)
    $this->db->limit($_POST['length'], $_POST['start']);
    $query = $this->db->get();
    return $query->result();
  }
  function count_filtered()
  {
    $this->_get_datatables_query();
    $query = $this->db->get();
    return $query->num_rows();
  }
  public function count_all()
  {
    $this->db->from('form');
    return $this->db->count_all_results();
  }
  public function get_by_id($id)
  {
    $this->db->from($this->table);
    $this->db->where('id',$id);
    $query = $this->db->get();
    return $query->row();
  }
  public function getname($tablename,$colname,$id){
    $this->db->select($colname);
    $this->db->from($tablename);
    $this->db->where('id',$id);
    $query = $this->db->get();
    return $query->row();
  }
  public function save($data)
  {
    $this->db->insert($this->table, $data);
    return $this->db->insert_id();
  }
  public function update($where, $data)
  {
    $this->db->update($this->table, $data, $where);
    return $this->db->affected_rows();
  }
  public function delete_by_id($id)
  {
    $this->db->where('id', $id);
    $this->db->delete($this->table);
  }
    public function get_by_id_view($id)
  {
    $this->db->from($this->table);
    $this->db->where('id',$id);
    $query = $this->db->get();
    if($query->num_rows() > 0) {
      $results = $query->result();
    }
    return $results;
  }
  public function Insertdata($name,$email,$phone,$city,$address,$packages,$customProduct,$query,$amount)
  {
    $data = array('name' => $name,
            'email'=>$email,
            'phone'=>$phone,
            'city'=>$city,
            'address'=>$address,
            'packages'=>$payment,
            'customProduct'=>$customProduct,
            'query'=>$query,
            'amount'=>$amount
             );
    $query=$this->db->insert('form',$data);
    return $query;
  }
    function display(){
    $result=$this->db->select("*")->from('form')->get()->result();
    return $result;
  
  }
}