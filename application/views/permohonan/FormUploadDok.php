<div id="formdokumen" class="modal fade" tabindex="-1" data-width="760">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">Upload Dokumen Syarat </h4>
								</div>
								<div class="modal-body">
									
									<form enctype="multipart/form-data" action="<?php echo base_url('permohonanizin/uploadDok') ?>" method="post" class="form-horizontal form-bordered">
								<div class="form-body">
								<div class="col-md-4">
									<div class="form-group ">
										
										<div class="col-md-4">
											<div class="fileinput fileinput-new" data-provides="fileinput">
												<div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;">
												</div>
												<div>
													<span class="btn default btn-file">
													<span class="fileinput-new">
													Pilih KTP </span>
													<span class="fileinput-exists">
													Ganti </span>
													<input type="file" name="ktp" id="ktp" accept="image/*">
													</span>
													<a href="javascript:;" class="btn red fileinput-exists" data-dismiss="fileinput">
													Hapus </a>
												</div>
											</div>
											
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group ">
									
										<div class="col-md-12">
											<div class="fileinput fileinput-new" data-provides="fileinput">
												<div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;">
												</div>
												<div>
													<span class="btn default btn-file">
													<span class="fileinput-new">
													Pilih NPWP </span>
													<span class="fileinput-exists">
													Ganti </span>
													<input type="file" name="npwp" id="npwp" accept="image/*">
													</span>
													<a href="javascript:;" class="btn red fileinput-exists" data-dismiss="fileinput">
													Hapus </a>
												</div>
											</div>
											
										</div>
									</div>
								</div>

								<div class="col-md-2">
									<div class="form-group ">
											<button type="submit" class="btn btn-primary col-md-12"><i class="fa fa-upload"></i> Upload</button>
									</div>
									<div class="form-group ">
											<button type="submit" data-dismiss="modal" class="btn btn-danger col-md-12"><i class="fa fa-close"></i> Cancel</button>
									</div>
									
									<div class="form-group ">
										<input type="hidden" id="idp" name="idp" value="<?php echo $id; ?>" >

									</div>
								</div>
								
								
									
									
								</div>
							</form>
							</div>
							</div>