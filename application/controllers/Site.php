<?php
class Site extends CI_Controller {
	
	function __construct(){
		parent::__construct();
	}
	
	public function index(){

	$this->load->view('home');

	}
	
	public function _example_output($output=null){
		 $this->load->view('example.php',$output);   
	}
	
	function students()
	{
	$crud = new grocery_CRUD();
	$crud->set_theme('flexigrid');
	$crud->set_subject('Student');
    $crud->set_table('students');
	$crud->set_primary_key('id');
	$crud->columns('firstname','lastname','yearlevel','currentstatus');
	$crud->fields('firstname','lastname','yearlevel','syterm','currentstatus');
	$crud->display_as('firstname','First Name');
	$crud->display_as('lastname','Last Name');
	$crud->display_as('yearlevel','Year Level');
     $output = $crud->render();
     $this->_example_output($output);
	}
	
	
	  function offices()
    {
        $output = $this->grocery_crud->render();
 
        $this->_example_output($output);

    }
}
