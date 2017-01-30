<div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Verifikasi</h5>
            </div>
            <div class="ibox-content">
                <form  class="form-horizontal" method="post" action=" <?php echo base_url('daftar/savepassword') ?> ">
                    <div class="form-group"><label class="col-sm-2 control-label">Password</label>

                        <div class="col-sm-10"><input type="password" class="form-control" name="password" id="password" value=""></div>
                    </div>

                    <div class="form-group"><label class="col-sm-2 control-label">Ulangi Password</label>

                        <div class="col-sm-10"><input type="password" class="form-control" name="repassword" id="repassword"></div>
                    </div>

                    <div class="form-group">
                            <input type="hidden" class="form-control" name="ktp" id="ktp" value="<?php echo $this->session->userdata('ktp') ?>">
                    </div>

                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-2">
                            <button   class="btn btn-primary">Simpan</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div