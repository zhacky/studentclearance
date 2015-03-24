<?php

class Main_model extends CI_Model {
	public function __construct(){
	
	
	}
	public function verify_user($email, $password) {
	$q = $this->db->where('email_address', $email)->where('password',sha1($password))->limit(1)->get('users');
	// $q = $this->db->get_where('users',array('email_address'=>$email),1,null);
			if( $q->num_rows() > 0 )
			{
				//echo print_r($q);
				//return $q->row();
				$row = $q->row();
				return $row->office;
				// if($row->email_address === $email && $row->password===$password){
					// return true;
				// }else {
					// return false;
				// }
				//return true;
			}
		return false;						
								
	}
	
	function get_users(){
		$query = $this->db->get('users');
		return $query->result();
	}
	
	function add_user($data){
		$this->db->insert('users', $data	);
		return;
	}
	
	function update_user($id){
		$this->db->where('id',$id);
		$this->db->update('data',$id);
		
	}
	
	function delete_row(){
		$this->db->where('id',$this->uri->segment(3));
		$this->db->delete('data');
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}