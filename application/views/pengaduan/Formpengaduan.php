     <div id="pendaftaran">
        <div class="portlet light ">
            <div class="portlet-title">
                <div class="caption">
                            </div>
                                </div>
                                    <div class="portlet-body form">
                                        <form class="form-horizontal" role="form" id="formdaftar">
                                            <div class="form-body">
                                            

                            <div class="form-group">
                                <label class="control-label col-md-3">Nama :</label>
                                            <div class="col-md-4">
                                                <input type="text" name="nama" id="nama" data-required="1" class="form-control"/>
                                                    </div>
                                                        </div>

                            <div class="form-group">
                                <label class="control-label col-md-3">Desa :</label>
                                            <div class="col-md-4">
                                                <input type="text" name="desa" id="desa" data-required="1" class="form-control"/>
                                                    </div>
                                                        </div>

                        
                        <div class="form-group last">
                            <label class="control-label col-md-3">Pengaduan :</label>
                                    <div class="col-md-9">
                                        <textarea class="ckeditor form-control" name="pengaduan" id="pengaduan" rows="6" data-error-container="#editor2_error"></textarea>
                                            <div id="editor2_error">
                                                </div>
                                                    </div>
                                                        </div>

                        <div class="form-group">
                            <div class="col-md-3">
                                </div>
                                    </div>

                        <div id="FormPemohon" >
                            </div>
                                <div class="form-actions">
                                    <div class="row">
                                        <div class="col-md-offset-3 col-md-9">
                                            <button class="btn btn-primary " type="submit" onclick=" return getDatapengaduan()"><i class="fa fa-check"></i>&nbsp;Kirim</button>
                                            <button class="btn btn-warning " type="button"><i class="fa fa-warning"></i> <span class="bold">Batal</span></button>                                       
                                            </div>
                                    </div>
                                </div>
                            
                            </form>

                    
                    <!-- END SAMPLE FORM PORTLET-->

<script type="text/javascript" src="<?php echo base_url('assets\js\plugins\ckeditor\ckeditor.js') ?>"></script>


                                

    