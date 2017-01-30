  <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_DataPemohon extends CI_Model {

	public $db_tabel='dp_datapemohon';
	public $db_tabel1='dp_jenisizin';
	public $db_tabel2='dp_akun';
	public $db_tabel3='notifikasi';

	function getdata($ktp=false){
 
		if($ktp==false){

			$query=$this->db->query('SELECT dp_datapemohon.dp_ktp as dp_ktp,
				dp_datapemohon.dp_nama as dp_nama,
				dp_datapemohon.dp_alamat as dp_alamat,
				dp_datapemohon.dp_email as dp_email,
				dp_datapemohon.dp_hp as dp_hp,
				dp_datapemohon.dp_email as dp_email,
				dp_datapemohon.sms as sms,
				dp_datapemohon.email as email,
				dp_datapemohon.dp_poto as dp_poto,
				dp_datapemohon.verifikasi as verifikasi,
				provinces.name as provinsi,
				districts.name as kecamatan,
				regencies.name as kabupaten,
				villages.name as desa 
				from dp_datapemohon,provinces,regencies,districts,villages
				where 
				dp_datapemohon.provinsi=provinces.id 
				and dp_datapemohon.kabupaten=regencies.id 
				and dp_datapemohon.kecamatan=districts.id 
				and dp_datapemohon.desa=villages.id');
				return $query->result_array();
		}else{
			$query = $this->db->where('dp_ktp',$ktp)
								  ->get($this->db_tabel);
				return $query->row_array();
		}
	
	}


	function cekktp($ktp){
		$query = $this->db->where('dp_ktp',$ktp)
						  ->limit(1)
						  ->get($this->db_tabel);

		if($query->num_rows()==1){
			return true;
		}else{
			return false;
		}
	}

	function simpan($data){
		 $this->db->insert($this->db_tabel,$data);
		 return true;
	}

	function simpanpassword($data){
		 $this->db->insert($this->db_tabel2,$data);
		 return true;
	}

	function kirimverifikasi($data){
		$this->db->where('dp_ktp', $data['dp_ktp']);
		return $this->db->update($this->db_tabel, $data);
	}
	function inputnotif($data){
		 $this->db->insert($this->db_tabel3,$data);
		 return true;
	}
	
}
	

/* End of file M_DataPemohon.php */
/* Location: ./application/models/M_DataPemohon.php */