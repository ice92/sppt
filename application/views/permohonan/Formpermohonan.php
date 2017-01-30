<form class="form-horizontal" role="form"  method="post" action="<?php echo base_url('permohonan/simpan') ?>" >
	<div class="form-body">

	<div class="row">
		<div class="col-md-6">

			<div class="form-group">
			<div class="col-md-12">
			<span class="help-block">
				<label class="control-label">Jenis Izin :</label>
			</span>
				<div class="input-icon right">
					<select class="form-control" name="jenisizin" id="jenisizin" onchange="loadform()">
					<option value=''>==Pilih Jenis Izin==</option>
					<?php foreach ($listjenisizin as $value) { ?>
					<option value="<?php echo $value['ji_id'];?>"><?php echo $value['ji_keterangan'];  ?></option>
					<?php }  ?>
			</select>
				</div>
			</div>
			</div>	
		</div>
	</div>
</form>

<div id="loadform">
</div>

