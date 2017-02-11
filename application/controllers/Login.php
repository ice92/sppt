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


		$this->load->view('template/Template2',$data);           

               
	}

	public function ceklogin(){
                
        if($this->login->cek()=='1'){
               
       		redirect('permohonan');
        }
        else if($this->login->cek()=='2')

		{
			redirect('verifikasi/petugas');
		}

        else if($this->login->cek()=='3')
            echo 'anda login sebagai kasubid';
        else if($this->login->cek()=='4')
            echo 'anda login sebagai kabid';
        else if($this->login->cek()=='5')
            echo 'anda login sebagai kabad';
        else if($this->login->cek()=='6')
            echo 'anda login sebagai admin';
        else{   
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