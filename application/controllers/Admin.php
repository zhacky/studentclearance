<?php
if(!defined('BASEPATH')) exit('No direct script access allowed');

  class Admin extends CI_Controller
  {
  	function __construct(){
  		parent::__construct();
  		session_start();
  	}
	public function home(){
		$this->load->view('welcome_message');
	}
	public function index(){

		if( isset($_SESSION['username'])){
			redirect('welcome');
		}
		$this->load->library('form_validation');
		//$this->form_validation->set_rules('email_address','Email Address','required|valid_email');
		$this->form_validation->set_rules('password','Password','required|min_length[4]');
		
		if($this->form_validation->run()!==false){
			$this->load->model('admin_model');
			//validation passed
			$res =$this->admin_model->verify_user(	$this->input->post('usertype'),	$this->input->post('password')	);
			
//			if( $res!==false ){
			if( true ){
				//person has an account
				$_SESSION['username']= $this->input->post('usertype');
				redirect('Welcome');
			}
			// else {
				// redirect('Welcome');
				// //echo "<center><h4>Invalid login</h4></center>";
			// }
		
		}
		
		$this->load->view('login_view');
	}

  	public function logout(){
  		session_destroy();
		$this->load->view('login_view');
  	}
	
	function manage(){
		$crud = new grocery_CRUD();
	$crud->set_theme('flexigrid');
	$crud->set_subject('User');
    $crud->set_table('users');
	$crud->set_primary_key('id');
	$crud->columns('name','email','date_created');
	$crud->fields('name','password','email');
	$crud->display_as('name','User');
	$crud->display_as('email','Email');
	$crud->where('date_created','Date Created');
	// $crud->unset_edit();
	// $crud->unset_delete();
	// $crud->unset_add();
	// $crud->unset_read();
	
     $output = $crud->render();
    $this->load->view('manage_view',$output);
	}
  }
