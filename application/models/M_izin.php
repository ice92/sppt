<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_izin extends CI_Model {
	public $db_tabel='dp_jenisizin';
	public $db_tabel2='dp_siup';
	public $db_tabel3='dp_tdp';
	public $db_tabel4='dp_izin';
	public $db_tabel5='dp_pengaduan';
 


	function getjenisizin(){

		$query = $this->db->get($this->db_tabel);
		return $query->result_array();
	}

	function ajukansiup($data){
		return $this->db->insert($this->db_tabel2,$data);
	}
	
	function ajukantdp($data){
		return $this->db->insert($this->db_tabel3,$data);
	}

	function GetIupId(){
		$getlastdata = $this->db->query('select iup_id from dp_siup order by iup_id desc limit 1');
		return $getlastdata->row_array();
	}

	function GetTdpId(){
		$getlastdata = $this->db->query('select tdp_id from dp_tdp order by tdp_id desc limit 1 ');
		return $getlastdata->row_array();
	}

	function AddIupKode($data){
		$this->db->where('iup_id', $data['iup_id']);
		return $this->db->update($this->db_tabel2, $data);
	}

	function AddtdpKode($data){
		$this->db->where('tdp_id', $data['tdp_id']);
		return $this->db->update($this->db_tabel3, $data);	
	}

	function SaveIzinSiup($data){
		return $this->db->insert($this->db_tabel4,$data);
	}

	function SaveIzinTdp($data){
		return $this->db->insert($this->db_tabel4,$data);
	}

	function getDataizinsiup($ktp=false){

			$sesi=$this->session->userdata('dp_ktp');
			$query=$this->db->query('SELECT * FROM dp_siup,dp_jenisizin,dp_jenispermohonan where dp_siup.iup_jenisizin = dp_jenisizin.ji_id  &&  dp_siup.iup_jenispermohonan = dp_jenispermohonan.jp_id && dp_siup.iup_ktp ="'.$sesi.'"');
			return $query->result_array();
		}

	function getDataizintdp($ktp=false){

			$sesi=$this->session->userdata('dp_ktp');
			$query=$this->db->query('SELECT * FROM dp_tdp,dp_jenisizin,dp_jenispermohonan where dp_tdp.tdp_jenisizin = dp_jenisizin.ji_id  &&  dp_tdp.tdp_jenispermohonan = dp_jenispermohonan.jp_id && dp_tdp.tdp_ktp ="'.$sesi.'"');
			return $query->result_array();
		}

		function getDataverifikasi($ktp=false){

			$query=$this->db->query('SELECT * FROM dp_siup where iup_approve1 = 0 ');
			return $query->result_array();
		}

		function getDataverifikasi2($ktp=false){

			$query=$this->db->query('SELECT * FROM dp_tdp where tdp_approve1 = 0');
			return $query->result_array();
		}

		function getDatapetugas(){
			$query=$this->db->query('SELECT * FROM dp_akun');
			return $query->result_array();
		
		}

		function getDatapengaduan($data){
			return $this->db->insert($this->db_tabel5,$data);

		}

	function getsiup(){

	}

	function gettdp(){

	}
}

/* End of file M_izin.php */
/* Location: ./application/models/M_izin.php */