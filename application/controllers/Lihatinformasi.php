<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lihatinformasi extends CI_Controller {

	public function index()
	{
		$data = array(
			'konten' => 'informasi/Lihatinformasi' , );
		$this->load->view('template/Template', $data, FALSE);
	}

}

/* End of file Lihatinformasi.php */
/* Location: ./application/controllers/Lihatinformasi.php */