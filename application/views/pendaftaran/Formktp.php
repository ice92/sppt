<div class="row">
    <div id="pendaftaran" >
    </div>
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Form Pendaftaran Pemohon</h5>
            </div>
            <div class="ibox-content">
                <form method="post" action="<?php echo base_url('daftar/simpan') ?>" class="form-horizontal"  >
                    <div class="form-group"><label class="col-sm-2 control-label">Nomor KTP</label>

                        <div class="col-sm-10"><input type="text" class="form-control" name="ktp" id="ktp"></div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-2">
                            <button  id="cekktp" class="btn btn-primary" >Cek Pernah Mendaftar </button>
                        </div>
                    </div>

                    <div id="FormPemohon" >
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>