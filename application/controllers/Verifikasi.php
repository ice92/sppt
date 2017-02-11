<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Verifikasi extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_izin','izin',true);
	}


	public function index()
	{
		$data = array(
			'konten'=>'verifikasi/Petugas');
		$this->load->view('template/Template3',$data);
            }
	

	public function Petugas(){
		if($this->session->userdata('login')){
		$data = array(
			'konten'=>'verifikasi/Petugas',
			'no'=>0,
			'dataverifikasi'=>$this->izin->getDataverifikasi(),
			'dataverifikasi2'=>$this->izin->getDataverifikasi2()
			);
		$this->load->view('template/Template3',$data);
            }
            else
                redirect('Login');

	}

	public function Kasubid(){
		if ( $this->session->userdata('login')){
			$data = array(
				'konten' => 'verifikasi/Kasubid' , );
			$this->load->view('template/Template3', $data);
		}
	}

	public function Kabid(){
		if ( $this->session->userdata('login')){
			$data = array(
			'konten' => 'verifikasi/Kabid' , );
			$this->load->view('template/Template3', $data);

	}
}

	public function Kabad(){
		if ( $this->session->userdata('login')){
			$data = array(
				'konten' => 'verifikasi/Kabad' , );
			$this->load->view('template/Template3', $data);

	}
}
	public function Admin(){
		if($this->session->userdata('login')){
		$data = array(
			'konten'=>'verifikasi/adminsystem',
			'no'=>0,
			'datapetugas'=>$this->izin->getDatapetugas()
			);
		$this->load->view('template/Template3',$data);
            }
            else
                redirect('Login');

	}

}

/* End of file pengaduan.php */
/* Location: ./application/controllers/pengaduan.php */