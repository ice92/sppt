<?php
defined('BASEPATH') OR exit('No direct script access allowed');



class Daftar extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_DataPemohon','pemohon',true);
		$this->load->model('M_wilayah','wil',true);
	}

	public function index()
	{
		$data = array(
			'konten'=>'pendaftaran/Formktp',
		);

		$this->load->view('template/Template', $data);
	}

	//untuk memeriksa apakah ktp yang digunakan sudah terdaftar
	function cekktp(){

		$ktp=$_GET['ktp'];
		if($this->pemohon->cekktp($ktp)){
			if($this->cekverifikasi($ktp)){
				$data['verifikasi']=true;
				$data['cek']=true;
			}else{
				$data['verifikasi']=false;
				$data['cek']=true;
				$data['ktp']=$ktp;
			}
			
		}else{
			$data['cek']=false;

		}
		echo json_encode($data);
	}

	function formdaftar(){
		$data['kecamatan']=$this->wil->kecamatan();
		$data['provinsi']=$this->wil->provinsi();
		$this->load->view('pendaftaran/Formpemohon', $data);
	}

	//menyimpan ke database
	function simpan(){
		$ktp=$this->input->post('ktp');
		$data=array(
			'dp_ktp'=>$ktp,
			'dp_nama'=>$this->input->post('nama'),
			'dp_alamat'=>$this->input->post('alamat'),
			'provinsi'=>$this->input->post('provinsi'),
			'kabupaten'=>$this->input->post('kabupaten'),
			'kecamatan'=>$this->input->post('kecamatan'),
			'desa'=>$this->input->post('desa'),
			'dp_email'=>$this->input->post('email'),
			'dp_hp'=>$this->input->post('sms'),
		);

		$simpan = $this->pemohon->simpan($data);
		if ($simpan) {
			$data=array(
				'ktp'=>$ktp,
				);
			$this->session->set_userdata('ktp',$data['ktp']);//membuat session ktp
			redirect('daftar/verifikasi'); //setelah data disimpan, redirect ke fungsi verifikasi
		}
	}

	//menampilkan form verifikasi
	function verifikasi(){
		$data=array(
				'konten'=>'pendaftaran/Formverifikasi',
		);
		$this->load->view('template/Template', $data);
	}

	//menyimpan verifikasi
	function simpanverifikasi(){
		$data=array(
			'verifikasi'=>$this->input->post('kode_verifikasi'),
			);
		$simpan = $this->pemohon->kirimverifikasi($data);
		if ($simpan) {
			redirect('daftar/password');//setelah verifikasi, redirect ke fungsi password
		}
	}

	//menampilkan form password
	function password(){
		$data = array(
			'konten' => 'pendaftaran/Formpassword',
			);
		$this->load->view('template/Template', $data);
	}

	//menyimpan password
	function savepassword(){
		$password=$this->input->post('password');
		$ktp=$this->input->post('ktp');
		$data=array(
			'password'=>$password,
			'ap_ktp'=>$ktp,
		);
		if($this->pemohon->simpanpassword($data)){
			$ver['verifikasi']='y';
			$ver['dp_ktp']=$ktp;
			$this->pemohon->kirimverifikasi($ver);
			$simpan=true;
		}else{
			$simpan=false;
		}
		session_destroy();
		redirect('Login');//setelah password tersimpan dialihkan ke form login
	}


}

/* End of file Daftar.php */
/* Location: ./application/controllers/pendaftaran/Daftar.php */