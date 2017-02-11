<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sppt extends CI_Controller {

	public function index()
	{
		$data = array(
			'konten' => 'halamanawal');
		$this->load->view('template/Template2', $data);
	}

}

/* End of file Sppt.php */
/* Location: ./application/controllers/Sppt.php */