<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Permohonan extends CI_Controller {

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
					'konten'=>'permohonan/Permohonan',
					'listjenisizin'=>$this->izin->getjenisizin(),
					'no'=>0,
					'dataizinsiup'=>$this->izin->getDataizinsiup(),
					'dataizintdp'=>$this->izin->getDataizintdp()
					);
            $this->load->view('template/Template',$data);}
            else
                redirect('Login');
	}

	public function loadform(){
		
		$jenisizin=$_GET['id'];
		$data['kecamatan']=$this->wil->kecamatan();
		$data['jenisizin']=$jenisizin;
		if($jenisizin=='siup'){
			$this->load->view('permohonan/Formsiup',$data);
		}else{
			$this->load->view('permohonan/Formtdp',$data);
		}
	}

	public function simpan(){
		date_default_timezone_set("Asia/Jakarta");
		$ijin=$this->input->post('jenisizin');
		if ($ijin=='siup') {

			$data = array(
			'iup_ktp' => $this->session->userdata('dp_ktp'),
			'iup_jenisizin'=>$this->input->post('jenisizin'),
			'iup_jenispermohonan'=>$this->input->post('jp_id'),
			'iup_perusahaan'=>$this->input->post('iup_perusahaan'),
			'iup_pemilik'=>$this->input->post('iup_pemilik'),
			'iup_kelembagaan'=>$this->input->post('iup_kelembagaan'),
			'iup_barang'=>$this->input->post('iup_barang'),
			'iup_kekayaan'=>$this->input->post('iup_kekayaan'),
			'iup_tlp'=>$this->input->post('iup_tlp'),
			'iup_email'=>$this->input->post('iup_email'),
			'iup_website'=>$this->input->post('iup_website'),
			'iup_alamatizin'=>$this->input->post('iup_alamatizin'),
			'iup_kecamatan'=>$this->input->post('kecamatan'),
			'iup_desa'=>$this->input->post('desa'),
			'iup_keterangan'=>$this->input->post('iup_keterangan'),
			'iup_tanggal'=>date("Y-m-d"),
			);
		$simpan = $this->izin->ajukansiup($data);
		if ($simpan) {
			$iupkode = $this->AddiupKode();
			$data['iup_kode'] = $iupkode['iup_kode'];
			$this->SaveIzinSiup($data);
			redirect('permohonan');
		}else{
			echo 'gagal';
		}
		}
		else{

			$data = array(
			'tdp_ktp' =>$this->session->userdata('dp_ktp'),
			'tdp_jenisizin'=>$this->input->post('jenisizin'),
			'tdp_jenispermohonan'=>$this->input->post('jp_id'),
			'tdp_pemilik'=>$this->input->post('tdp_pemilik'),
			'tdp_perusahaan'=>$this->input->post('tdp_perusahaan'),
			'tdp_alamat'=>$this->input->post('tdp_alamat'),
			'tdp_status'=>$this->input->post('tdp_status'),
			'tdp_kegiatanusaha'=>$this->input->post('tdp_kegiatanusaha'),
			'tdp_kelembagaan'=>$this->input->post('tdp_kelembagaan'),
			'tdp_kecamatan'=>$this->input->post('kecamatan'),
			'tdp_tlp'=>$this->input->post('tdp_tlp'),
			'tdp_kbli'=>$this->input->post('tdp_kbli'),
			'tdp_tanggal'=>date("Y-m-d"),


			 );
		$simpan = $this->izin->ajukantdp($data);
		if ($simpan) {
			$tdpkode = $this->AddtdpKode();
			$data['tdp_kode'] = $tdpkode['tdp_kode'];
			$this->SaveIzinTdp($data);
			redirect('permohonan');
		}else{
			echo 'gagal';
		}

		}

		
	}

	function AddiupKode(){
		$iup = $this->izin->GetIupId();
		$data['iup_id']= $iup['iup_id'];
		$data['iup_kode'] = 'iup_'.$iup['iup_id'];
		$data['simpan'] = $this->izin->AddIupKode($data);
		return $data;
	}

	function SaveIzinSiup($data){
		$dataizin = array(
				'izin_kode_izin'=>$data['iup_kode'],
				'izin_kode_jenis'=>$data['iup_jenisizin'],
				'izin_kecamatan'=>$data['iup_kecamatan'],
		);
		$SaveIzinSiup = $this->izin->SaveIzinSiup($dataizin);


	}

function AddtdpKode(){
		$tdp = $this->izin->GetTdpId();
		$data['tdp_id']= $tdp['tdp_id'];
		$data['tdp_kode'] = 'tdp_'.$tdp['tdp_id'];
		$data['simpan'] = $this->izin->AddtdpKode($data);
		return $data;
	}

	function SaveIzinTdp($data){
		$dataizin = array(
				'izin_kode_izin'=>$data['tdp_kode'],
				'izin_kode_jenis'=>$data['tdp_jenisizin'],
				'izin_kecamatan'=>$data['tdp_kecamatan'],
		);
		$SaveIzinTdp = $this->izin->SaveIzinTdp($dataizin);


	}

	


	

	// function simpankeizin(){

	// 	$data = array(
	// 		'izin_ktp'=>$this->session->userdata('dp_ktp'),
	// 		'izin_kode_izin'=>


	// 		);
	// }

}

/* End of file Permohonan.php */
/* Location: ./application/controllers/permohonan/Permohonan.php */