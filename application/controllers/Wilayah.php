<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Wilayah extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_wilayah','wil',true);
	}

	public function index()
	{
		  	
	}

	function kabupaten(){
        $propinsiID = $_GET['id'];
        $kabupaten   = $this->wil->kabupaten($propinsiID);
        echo '<select class="form-control" name="kabupaten" id="kabupaten" onchange="loadKecamatan()">';
		echo "<option value=''>==Pilih Kabupaten==</option>";
		
        foreach ($kabupaten as $value) {
			echo '<option value="'.$value->id.'">'.$value->name.'</option>';
		 }
		 echo '</select>';  
    }
    
    function kecamatan(){
        $kabupatenID = $_GET['id'];
        $kecamatan   = $this->wil->kecamatan($kabupatenID);
        echo '<select class="form-control" name="kecamatan" id="kecamatan" onchange="loadDesa()">';
		echo "<option value=''>==Pilih Kecamatan==</option>";
        foreach ($kecamatan as $value) {
			echo "<option value='$value->id'>$value->name</option>";
		 }
		 echo '</select>'; 
    }
    
    function desa(){
        $kecamatanID  = $_GET['id'];
        $desa         = $this->wil->desa($kecamatanID);
        echo '<select class="form-control" name="desa" id="desa" >';
		echo "<option value=''>==Pilih Desa==</option>";
        foreach ($desa as $value) {
			echo "<option value='$value->id'>$value->name</option>";
		 }
		 echo '</select>'; 
    }

}

/* End of file Wilayah.php */
/* Location: ./application/controllers/Wilayah.php */