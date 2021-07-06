<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

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
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
		$this->load->helper('url');
		$this->load->Model('Login_Model');

    }
	public function index()
	{
		if ($this->session->userdata('logged_in')) {
			redirect('/dashboard', 'refresh');
		// code statements My Account
		}
		else{
			$this->load->view('include/page_header');
			$this->load->view('login');
			$this->load->view('include/page_footer');
		}
	}

	public function process()  
    {  

        $user = $this->input->post('user');  
        $pass = $this->input->post('pass');  
        if ($this->Login_Model->login($user,$pass))   
        {  
            //declaring session  
            $this->session->set_userdata(array('user'=>$user));
            //$data['message'] = 'Your Account is Now Login';
            $company =  $this->session->userdata('company'); 
            $this->Login_Model->company($company);  
            //redirect("dashboard",$data);  
            echo '1';
        }  
        else{  
            //$data['error'] = 'Your Account is Invalid';
            echo 'Your Account is Invalid'; 
            //$this->load->view('include/page_header');
            //$this->load->view('login', $data);
            //$this->load->view('include/page_footer'); 
        }  
    } 

    public function logout()  
    {  
        //removing session  
        $this->session->unset_userdata('user'); 
        $this->session->unset_userdata('logged_in'); 
        $this->session->unset_userdata('company_name');  
        redirect("Login");  
    }
}
