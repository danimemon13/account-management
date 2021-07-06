<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	/*
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
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
		$this->load->helper('url');
        $this->load->helper('array');
        $this->load->model('Dashboard_Model');
    }

	public function index()
	{
		//$this->load->view('welcome_view');
		$id = 1;
        $data['opening_balance'] = $this->Dashboard_Model->account($id);
        $data['ledger'][] = $this->Dashboard_Model->account_statement($id);
        //$data['ledger'] = $data['credit'];
        //$data['ledger'] = $data['credit'];
        //$data['ledger'] = $data['account'];
        //$this->load->view('include/page_header');
        //$this->load->view('include/head-menu');
        //$this->load->view('include/menu');
        $this->load->view('dashboard_view',$data);
        //$this->load->view('include/page_footer');
	}

	public function logout()  
    {  
        //removing session  
        $this->session->unset_userdata('user');  
        redirect("Login");  
    }
    
}
