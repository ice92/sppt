 <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Daftar Data Yang Belum Terverifikasi</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="#">Config option 1</a>
                                </li>
                                <li><a href="#">Config option 2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                <table class="table-responsive">
                DATA SIUP
    
    <table class="table table-striped table-bordered table-hover dataTables-example">
    <thead>
    <tr>
    <th>No</th>
    <th>No Identitas</th>
        <th>Nama Usaha</th>
        <th>Alamat</th>
        <th>Persyaratan</th>
        <th>Data Izin</th>
        <th>Keterangan</th>
        </thead>
        
    </tr>
    <tbody>

    <?php foreach ($dataverifikasi as $value) {$no++;?>
        <tr>
                                <td>
                                     <?php echo $no; ?>
                                </td>
                                <td>
                                     <?php echo $value['iup_ktp'] ?>
                                </td>
                                <td>
                                     <?php echo  $value['iup_perusahaan'] ?>
                                </td>
                                <td>
                                     <?php echo  $value['iup_alamatizin'] ?>
                                </td>
                                
                                
                                
                            </tr>
                            <?php } ?>
        
    </tbody>
</table>
Data TDP
<table class="table table-striped table-bordered table-hover dataTables-example">
    <thead>
    <tr>
    <th>No</th>
    <th>No Identitas</th>
        <th>Nama Usaha</th>
        <th>Alamat</th>
        <th>Persyaratan</th>
        <th>Data Izin</th>
        <th>Keterangan</th>
        </thead>
        
    </tr>
    <tbody>

    <?php foreach ($dataverifikasi2 as $value) {$no++;?>
        <tr>
                                <td>
                                     <?php echo $no; ?>
                                </td>
                                <td>
                                     <?php echo $value['tdp_ktp'] ?>
                                </td>
                                <td>
                                     <?php echo  $value['tdp_perusahaan'] ?>
                                </td>
                                <td>
                                     <?php echo  $value['tdp_alamat'] ?>
                                </td>
                                
                                
                                
                            </tr>
                            <?php } ?>
        
    </tbody>
</table>

                    </div>
                </div>
            </div>
            </div>