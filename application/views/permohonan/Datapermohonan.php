
<form></form>
<div class="table-responsive">
	
	<table class="table table-striped table-bordered table-hover dataTables-example" >
<thead>
	<tr>
	<th>No	</th>
	<th>Izin</th>
	<th>Permohonan</th>
	<th>Lokasi Izin</th>
	<th>Nama Usaha / Perusahaan</th>
	<th>Dokumen</th>
	<th>Data Lengkap</th>
	<th>Status</th>
	</tr>
</thead>
<tbody>
<form method="psot" action="<?php echo base_url('Permohonan/doksyarat') ?>">
	<?php foreach ($dataizinsiup as $value) {$no++;?>
								<tr>
									<td>
										<?php echo $no; ?>
									</td>
									<td>
										 <?php echo $value['ji_nama'] ?>
									</td>
									<td>
										 <?php echo $value['jp_jenis'] ?>
									</td>
									<td>
										 <?php echo $value['iup_alamatizin'] ?>
									</td>
									<td>
										 <?php echo $value['iup_perusahaan'] ?>
									</td>
									
									<td>
										<button class="btn btn-success " type="button"><i class="fa fa-upload"></i>&nbsp;&nbsp;<span class="bold">Upload</span></button>
									</td>
									<td>
									<button type="button" class="btn btn-w-m btn-info">Lihat Data Lengkap</button>					
									</td>
									<td>
										 <?php 
										 	if($value['iup_status']==0){
										 		echo '<div class="label label-sm label-warning">Sedang Diproses</div>';
										 	}else{
										 		echo '<div class="label label-sm label-success">Sudah Terbit</div>';
										 	}?>
										
									</td>
									
								
								
								<?php } ?>

	<?php foreach ($dataizintdp as $value) {$no++;?>
								<tr>
									<td>
										<?php echo $no; ?>
									</td>
									<td>
										 <?php echo $value['ji_nama'] ?>
									</td>
									<td>
										 <?php echo $value['jp_jenis'] ?>
									</td>
									<td>
										 <?php echo $value['tdp_alamat'] ?>
									</td>
									<td>
										 <?php echo $value['tdp_perusahaan'] ?>
									</td>
									
									<td>
										<button class="btn btn-success " type="button"><i class="fa fa-upload"></i>&nbsp;&nbsp;<span class="bold">Upload</span></button>
									
									</td>
									<td>
									<button type="button" class="btn btn-w-m btn-info">Lihat Data Lengkap</button>					
									</td>
									<td>
										<?php 
										 	if($value['tdp_status']==0){
										 		echo '<div class="label label-sm label-warning">Sedang Diproses</div>';
										 	}else{
										 		echo '<div class="label label-sm label-success">Sudah Terbit</div>';
										 	}?>
										
									</td>
									
								</tr>
								
								<?php } ?>
</form>



</tbody>
</table>

</div>

