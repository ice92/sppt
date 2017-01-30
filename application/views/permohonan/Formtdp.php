 <form  class="form-horizontal">
 <div class="row">
     <div class="col-md-6">

        <div class="form-group">
        <div class="col-md-12">
        <span class="help-block">
        <label class="control-label">Jenis Permohohonan :</label>
        </span>
            <div class="input-icon right">
                <select class="form-control" name="jp_id" id="jp_id">
                    <option value="">==Pilih Jenis Permohonan==</option>
                    <option value="1">Baru</option>
                    <option value="2">Perpanjang</option>
                    <option value="3">Perubahan</option>
                </select>
            </div>
        </div>
        </div>  

        <div class="form-group">
        <div class="col-md-12">
            <span class="help-block">
            <label class="control-label">Nama Pemilik :</label>
            </span>
            <div class="input-icon right">
            <input class="form-control" name="tdp_pemilik" id="tdp_pemilik"  type="text"/>
            </div>
        </div>
        </div> 

        <div class="form-group">
        <div class="col-md-12">
            <span class="help-block">
            <label class="control-label">Nomor Telepon :</label>
            </span>
            <div class="input-icon right">
            <input class="form-control" name="tdp_tlp" id="tdp_tlp"  type="text"/>
            </div>
        </div>
        </div>

        <div class="form-group">
        <div class="col-md-12">
            <span class="help-block">
            <label class="control-label">Alamat / Lokasi Kegiatan :</label>
            </span>
            <div class="input-icon right">
            <input class="form-control" name="tdp_alamat" id="tdp_alamat"  type="text"/>
            </div>
        </div>
        </div>

        <div class="form-group">
            <div class="col-md-12">
            <span class="help-block">
                    <label class="control-label">Kecamatan Lokasi Izin : </label>
            </span>
                <div class="input-icon right">
                    <select class="form-control" name="kecamatan" id="kecamatan" onchange="loadDesa()">
                        <option value=''>==Pilih Kecamatan==</option>
                        <?php foreach ($kecamatan as $value) { ?>
                        <option value="<?php echo $value->id;?>"><?php echo $value->name;  ?></option>
                        <?php }  ?>
                    </select>
                </div>

            </div>
        </div>

        <div class="form-group">
            <div class="col-md-12">
            <span class="help-block">
                    <label class="control-label">Desa Lokasi Izin :</label>
            </span>
                <div class="input-icon right">
                <div id="opdesa">
                    <select class="form-control" >
                    <option value=''>==Pilih Desa==</option>
                    </select>
                </div>  
                <div id="optdesa"></div>
                </div>
        </div>
    
        </div>

    </div><!-- col-md-6 -->
    <div class="col-md-6">

        <div class="form-group">
            <div class="col-md-12">
            <span class="help-block">
                    <label class="control-label">Nama Perusahaan :</label>
            </span>
                <div class="input-icon right">
                    <input class="form-control" name="tdp_perusahaan" id="tdp_perusahaan"  type="text"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-12">
            <span class="help-block">
                    <label class="control-label">Status Perusahaan :</label>
            </span>
                <div class="input-icon right">
                    <input class="form-control" name="tdp_status" id="tdp_status"  type="text"/>
                </div>
            </div>
        </div>



        <div class="form-group">
            <div class="col-md-12">
            <span class="help-block">
                    <label class="control-label">Kegiatan Usaha :</label>
            </span>
                <div class="input-icon right">
                    <input class="form-control" name="tdp_kegiatanusaha" id="tdp_kegiatanusaha"  type="text"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-12">
            <span class="help-block">
                    <label class="control-label">KBLI :</label>
            </span>
                <div class="input-icon right">
                    <input class="form-control" name="tdp_kbli" id="tdp_kbli"  type="text"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-12">
            <span class="help-block">
                    <label class="control-label">Kelembagaan :</label>
            </span>
                <div class="input-icon right">
                    <input class="form-control" name="tdp_kelembagaan" id="tdp_kelembagaan"  type="text"/>
                </div>
            </div>
        </div>
        
    </div><!-- col-md-6 -->
 </div><!-- row -->
 <div class="row">
    <div class="col-md-12">
       <div class="form-group">
                                        
            <div class="col-md-12">
            <span class="help-block">
                    <label class="control-label">Keterangan :</label>
            </span>
                <div class="input-icon right">
                    <textarea class="form-control" rows="4" name="tdp_keterangan" id="tdp_keterangan"></textarea>
                </div>
            </div>
        </div> 
        <div class="form-group">
            <div class="col-md-12">
                <button class="btn btn-primary" type="submit" >Ajukan Permohonan</button>
            </div>
        </div>  
    </div>
 </div>

</form>