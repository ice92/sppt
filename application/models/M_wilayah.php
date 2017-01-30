<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_wilayah extends CI_Model {

	function provinsi(){
		$query = $this->db->get('provinces');
		return $query->result();
	}

	function kabupaten($idprov){
		$query = $this->db->get_where('regencies',array('province_id'=>$idprov));
		return $query->result();
	}

	function kecamatan($idkab=false){
		if($idkab==false){
			$query = $this->db->get('districts');
			return $query->result();
		}else{
			$query = $this->db->get_where('districts',array('regency_id'=>$idkab));
			return $query->result();
		}

		
	}

	function desa($idkec){
		$query = $this->db->get_where('villages',array('district_id'=>$idkec));
		return $query->result();
	}	

}

/* End of file M_wilayah.php */
/* Location: ./application/models/M_wilayah.php */