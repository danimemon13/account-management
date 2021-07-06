<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login_Model extends CI_Model {
     function __construct(){
        parent::__construct();
    }
    
    public function login($name, $password){
        $password = md5($password);
        $this->db->where('user_name',$name);
        $this->db->where('password',$password);
        $query = $this->db->get('users');
        if($query->num_rows()==1){
            foreach ($query->result() as $row){
                $data = array(
                            'username'=> $row->user_name,
                            'id'=> $row->id,
                            'company'=> $row->company,
                            'logged_in'=>TRUE
                        );
            }
            $this->session->set_userdata($data);
            return TRUE;
        }
        else{
            return FALSE;
      }    
    }
    
    public function company($company){
        $this->db->where('id',$company);
        $query = $this->db->get('companies');
        if($query->num_rows()==1){
            foreach ($query->result() as $row){
                $data = array(
                            'company_name'=> $row->Title,
                        );
            }
            $this->session->set_userdata($data);
            return TRUE;
        }
        else{
            return FALSE;
      }  
    }
    public function isLoggedIn(){
            header("cache-Control: no-store, no-cache, must-revalidate");
            header("cache-Control: post-check=0, pre-check=0", false);
            header("Pragma: no-cache");
            header("Expires: Sat, 26 Jul 1997 05:00:00 GMT");
            $is_logged_in = $this->session->userdata('logged_in');

            if(!isset($is_logged_in) || $is_logged_in!==TRUE)
            {
                redirect('/');
                exit;
            }
    }
    
}