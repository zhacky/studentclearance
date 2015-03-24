<?php

class Admin_model extends CI_Model {
	function __construct(){
	
	
	}
	function verify_user($usertype,$password) {
	$q = $this->db->where('office', $usertype)->where('password',$password)->limit(1)->get('users');
			if($q->num_rows>0){
			// echo '<pre>';
			// print_r($q->row());
			// echo '</pre>';
			
			return $q->row();
		}
		return false;						
								
	}
}