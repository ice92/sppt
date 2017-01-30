<

                    <div class="form-group"><label class="col-sm-2 control-label">Nama Pemohon / Pemilik</label>

                        <div class="col-sm-10"><input type="text" class="form-control" name="nama" id="nama"></div>
                    </div>

                    <div class="form-group"><label class="col-sm-2 control-label" >Alamat Rumah Pemohon / Pemilik</label>

                        <div class="col-sm-10"><input type="text" class="form-control" id="alamat" name="alamat"></div>
                    </div>

                    <div class="form-group"><label class="col-sm-2 control-label">Provinsi</label>

                        <div class="col-sm-10">
                        <select class="form-control" name="provinsi" id="provinsi" onchange="loadKabupaten()">
                                            <option value=''>==Pilih Provinsi==</option>
                                            <?php foreach ($provinsi as $value) { ?>
                                                <option value="<?php echo $value->id ?>"><?php echo $value->name  ?></option>
                                            <?php }  ?>
                                        </select>
                        </div>
                    </div>

                     <div class="form-group"><label class="col-sm-2 control-label">Kabupaten</label>

                        <div class="col-sm-10">
                        <div id="opkabupaten">
							<select class="form-control">
							<option value=''>==Pilih Kabupaten==</option>
							</select>
						</div>
						<div id="optkabupaten"></div>
                        </div>
                    </div>

                    <div class="form-group"><label class="col-sm-2 control-label">Kecamatan</label>

                        <div class="col-sm-10">
                        <div id="opkecamatan">
							<select class="form-control" >
							<option value=''>==Pilih Kecamatan==</option>
							</select>
						</div>	
						<div id="optkecamatan">
                        </div>
                        </div>

                    </div>

                    <div class="form-group"><label class="col-sm-2 control-label">Desa</label>

                        <div class="col-sm-10">
                        <div id="opdesa">
							<select class="form-control" >
							<option value=''>==Pilih Desa==</option>
							</select>
						</div>	
						<div id="optdesa"></div>
						</div>
                    </div>

                    <div class="form-group"><label class="col-sm-2 control-label">Alamat Email Pribadi</label>

                        <div class="col-sm-10"><input type="email" class="form-control" name="email" id="email"></div>
                    </div>

                    <div class="form-group"><label class="col-sm-2 control-label">Nomor Handphone Pribadi</label>

                        <div class="col-sm-10"><input type="text" class="form-control" name="sms" id="sms"></div>
                    </div>


                    <div class="hr-line-dashed"></div>

                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-2">
                            <button class="btn btn-primary" type="submit" >Save changes</button>
                        </div>
                    </div>
         