<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengaduan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_izin','izin',true);
		$this->load->model('M_wilayah','wil',true);
		$this->load->model('M_izin','izin',true);
	}


	public function index()
	{
            if($this->session->userdata('login')){
		$data = array(
			'konten'=>'pengaduan/Formpengaduan');
		$this->load->view('template/Template',$data);
            }
            else
                redirect('Login');
	
	}
	public function simpanpanduan(){
		date_default_timezone_set("Asia/Jakarta");
		$data = array(
			'pengaduan_ktp'=> $this->session->userdata('dp_ktp'),
			'pengaduan_nama' => $this->input->post('nama'),
			'pengaduan_desa' => $this->input->post('desa'),
			'pengaduan_tanggal'=>date("Y-m-d"),
			'pengaduan_pengaduan'=> $this->input->post('pengaduan'));

		$simpanpanduan = $this->izin->getDatapengaduan($data);

	}



	
	

}

/* End of file pengaduan.php */
/* Location: ./application/controllers/pengaduan.php */