<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_login extends CI_Model {

	public $db_tabel='dp_akun';

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_DataPemohon','pemohon',true);
	}

	public function cek(){
		$ktp = $this->input->post('ktp');
		$password = $this->input->post('password');

		$query = $this->db->where('ap_ktp',$ktp)
						  ->where('password',$password)
						  ->limit(1)
						  ->get($this->db_tabel);
		if($query->num_rows()==1){
			$user=$this->pemohon->getdata($ktp);
			
			$data = array(
					'dp_ktp'=>$user['dp_ktp'],
					'dp_nama'=>$user['dp_nama'],
					'login'	=>true,
					
				);
			$this->session->set_userdata($data);

			return true;

		}else{

			return false;
		}
	}

	public function logout()
    {
        $this->session->unset_userdata(	
        								array('dp_ktp' => '',
        									  'dp_nama'=>'',
        									  'login' => false,
        									  )
        								);
        session_destroy();
    }

}

/* End of file M_login.php */
/* Location: ./application/models/M_login.php */