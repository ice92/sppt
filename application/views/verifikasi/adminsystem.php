 <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Daftar Verifikasi Dari Pegawai</h5>
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
    <table class="table table-striped table-bordered table-hover dataTables-example">
    <thead>
    <tr>
    <th>No</th>
    <th>Nomor Induk Pegawai</th>
        <th>Password</th>
        <th>Level</th>
        <th>Tindakan</th>
        </thead>
        
    </tr>
    <tbody>

    <?php foreach ($datapetugas as $value) {$no++;?>
        <tr>
                                <td>
                                     <?php echo $no; ?>
                                </td>
                                <td>
                                     <?php echo $value['ap_ktp'] ?>
                                </td>
                                <td>
                                     <?php echo  $value['password'] ?>
                                </td>
                                <td>
                                     <?php echo  $value['level'] ?>
                                </td>
                                <td><center>
                                                <a href= class="btn btn-outline btn-circle btn-sm red">
                                                <i class="fa fa-close"></i> Delete </a>
                                                <a href= class="btn btn-outline btn-circle btn-sm purple">
                                                <i class="fa fa-edit"></i> Edit </a>
                                                </center>
                                                </td>
                                        </tr>
                                        <?php } ?>
                                        </td>
        
    </tbody>
</table>

                    </div>
                </div>
            </div>
            </div>