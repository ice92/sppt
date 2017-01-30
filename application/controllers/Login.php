<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_login','login',true);
	}

	public function index()
	{
		$data=array(
			'konten'=>'login/Login',
		);

		$this->load->view('template/Template',$data);           
               
	}

	public function ceklogin(){
                
        if($this->login->cek()){
               
       		redirect('permohonan');
        } else{   
            echo 'anda gagal login';
        }
	}

	public function logout()
	{
        $this->login->logout();
		redirect('Login');
	}

}

/* End of file Login.php */
/* Location: ./application/controllers/login/Login.php */