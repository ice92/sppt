<div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Verifikasi</h5>
            </div>
            <div class="ibox-content">
                <form  class="form-horizontal" method="post" action="<?php echo base_url('daftar/simpanverifikasi') ?>" >
                    <div class="form-group"><label class="col-sm-2 control-label">Kode Verifikasi <?php echo $this->session->userdata('ktp') ?></label>

                        <div class="col-sm-10"><input type="text" class="form-control" name="kode_verifikasi" id="kode_verifikasi"></div>
                    </div>

                    <div class="form-group">
						<input type="hidden" class="form-control" name="ktp" id="ktp" value="<?php echo $this->session->userdata('ktp') ?>">
					</div>

                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-2">
                            <button  type="submit" class="btn btn-primary">verifikasi</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>