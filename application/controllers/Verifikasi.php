<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Verifikasi extends CI_Controller {


	function index()
	{
		$data = array(
			'konten'=>'verifikasi/Petugas');
		$this->load->view('template/Template3',$data);
            }
	

	public function Petugas(){
		if($this->session->userdata('login')){
		$data = array(
			'konten'=>'verifikasi/Petugas');
		$this->load->view('template/Template3',$data);
            }
            else
                redirect('Login');
	

	
	

}
}

/* End of file pengaduan.php */
/* Location: ./application/controllers/pengaduan.php */