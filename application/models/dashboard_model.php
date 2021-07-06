<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard_Model extends CI_Model {
     function __construct(){
        parent::__construct();
    }
    
    public function account_statement($id){
        $this->db->select('*');
        $this->db->from('et_journal_ledger');
        $this->db->where('account_id', $id); 
        $this->db->order_by('ondate','ASC');
        $query = $this->db->get();
        return $query->result(); 
    }
    public function account($acc_id){
        $this->db->select('*');
        $this->db->from('et_chart_of_account');
        $this->db->where('uid', $acc_id); 
        $this->db->order_by('created_at','ASC');
        $query = $this->db->get();
        return $query->result(); 
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