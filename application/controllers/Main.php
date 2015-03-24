<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {
	
function __construct(){
	parent::__construct();
	session_start();
}
	
function index(){
	//go to dashboard if logged in
	if(!isset($_SESSION['username'])){
	}
	else {
		redirect('main/dashboard');
	}
	
	
	//echo sha1('password');die();
	$this->load->library('form_validation');
	$this->form_validation->set_rules('email_address','Email Address','required|valid_email');
	$this->form_validation->set_rules('password','Password','required|min_length[4]');
	
	if($this->form_validation->run() !==false){
		//validation passed. get from the db.
		$this->load->model('main_model');
		$email = $this->input->post('email_address');
		$pass = $this->input->post('password');
		$res = $this->main_model->verify_user($email,$pass);
		//print_r($res); die();
	
	if($res !== false ) {
		//person has an account
		$_SESSION['username'] = $email;
		//echo $res;
		$_SESSION['office'] = $res;
		redirect('main/dashboard'); 
	}else {
		echo "<br/><center><em>Invalid username or password.</em></center>&nbsp;";
	}
		
		
	}//end validation
	
	$this->load->view('main/login_view');
		}


//logout
function logout(){
	session_destroy();
	echo "<br/><center><em>You have successfully logged out</em></center>";
	$this->load->view('main/login_view');
}
//enter feedback
function feedback(){
	
	$this->load->view('main/header2_view');
	$this->load->view('main/feedback_view');
	$this->load->view('main/footer_view');
}

//dashboard
function dashboard(){
	if(!isset($_SESSION['username'])){
		redirect('main');
	}else {
	//LIST
	$crud = new grocery_CRUD();
	$crud->set_theme('flexigrid');
	$crud->set_subject('Student');
    $crud->set_table('students');
	$crud->set_primary_key('id');
	$crud->columns('lastname','firstname','section');
	$crud->fields('firstname','lastname','yearlevel','syterm');
	$crud->display_as('firstname','First Name');
	$crud->display_as('lastname','Last Name');
	$crud->display_as('yearlevel','Year Level');
	$crud->where('currentstatus','Not Cleared');
	$crud->unset_edit();
	$crud->unset_delete();
	$crud->unset_add();
	$crud->unset_read();
	$output = $crud->render();
	//-----------
	//$data['office'] = $_SESSION['office'];
	$this->load->view('main/header_view');
	$this->load->view('main/welcome_view',$output);
	$this->load->view('main/footer_view');
	}
	
}

function ssc(){
	
}

function accounting(){
	
}

function hr(){
	
}

function clinic(){
	
}

function library(){
	
}

function dean(){
	
}

function director(){
	
}

function propertycustodian(){
	
}

function users(){
	
		if($_SESSION['office']=='hr'){
			//LIST
	$crud = new grocery_CRUD();
	$crud->set_theme('flexigrid');
	$crud->set_subject('User');
    $crud->set_table('users');
	$crud->set_primary_key('id');
	$crud->columns('office','email_address');
	$crud->add_fields('office','email_address','password');
	$crud->edit_fields('office','email_address','password');
	$crud->required_fields('office','email_address','password');
	$crud->display_as('office','Department');
	$crud->display_as('email_address','Email Address');
	$crud->display_as('password','Password');
	$crud->change_field_type('password', 'password');
	// $crud->unset_edit();
	// $crud->unset_delete();
	// $crud->unset_add();
	 $crud->unset_read();
	$output = $crud->render();
	//-----------
	//$data['office'] = $_SESSION['office'];
	$this->load->view('main/header2_view');
	$this->load->view('main/users_view',$output);
	$this->load->view('main/footer_view');
			
		} else {
			echo "You don't have access to this area";
		}
		}// --end users
		
	function managefeedback(){
		if(isset($_SESSION['username'])){
				$crud = new grocery_CRUD();
	$crud->set_theme('flexigrid');
	$crud->set_subject('Feedback');
    $crud->set_table('feedback');
	$crud->set_primary_key('id');
	$crud->columns('USN','content','date_entered');
	$crud->fields('USN','content','date_entered');
	$crud->display_as('content','Content');
	$crud->display_as('date_entered','Date Posted');
	// $crud->unset_edit();
	// $crud->unset_delete();
	// $crud->unset_add();
	// $crud->unset_read();
	$output = $crud->render();
	$this->load->view('main/header2_view');
	$this->load->view('main/readfeedback_view',$output);
	$this->load->view('main/footer_view');
			
			} else {
			echo "You don't have access to this area";
		}
		
	}












}//--end


