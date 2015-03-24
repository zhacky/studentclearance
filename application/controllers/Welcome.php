<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

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
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	 public function __construct(){
	 	session_start();
		parent::__construct();
		
		if(!isset($_SESSION['username'])){
			redirect('admin');
		}
	 }
	 
	 //ssc
	 public function ssc(){
	 	$this->load->view('offices/ssc_view');
	 }
	 //--end ssc
	 //property custodian
	 public function propertycustodian(){
	 	$this->load->view('offices/propertycustodian_view');
	 }
	 //--end property custodian
	public function index()
	{
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
    $this->load->view('welcome_message',$output);
	}
}
