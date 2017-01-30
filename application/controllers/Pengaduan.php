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
		$data = array(
			'konten'=>'pengaduan/Formpengaduan');
		$this->load->view('template/Template',$data);
	}

	
	

}

/* End of file pengaduan.php */
/* Location: ./application/controllers/pengaduan.php */