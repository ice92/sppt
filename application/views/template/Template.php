<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <LINK REL="SHORTCUT ICON" href="<?php echo base_url('assets/img/lobar mini.jpg') ?>">
    <title>SPPT | Sistem Pelayanan Perizinan Terpadu</title>

    <link href="<?php echo base_url('assets/css/bootstrap.min.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/font-awesome/css/font-awesome.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/css/animate.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/css/bootstrap-datetimepicker.min.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/css/plugins/dataTables/dataTables.bootstrap.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/css/plugins/dataTables/dataTables.responsive.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/css/plugins/dataTables/dataTables.tableTools.min.css') ?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/css/style.css') ?>" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

        <?php if ($this->session->userdata('login')==true) {
            $this->load->view('template/Sidemenu');
        } ?>

       

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <?php $this->load->view('template/Header'); ?>
        </div>
            
        <div class="row">
            <div class="col-lg-12">
                <div class="wrapper wrapper-content">
                    
                <?php $this->load->view($konten); ?>


                </div>
            </div>
        </div>
            <div class="footer">
                <div class="pull-right">
                    Badan Penanaman Modal dan Pelayanan Perizinan Terpadu
                </div>
                <div>
                    <strong>Copyright</strong> Pemerintah Kabupaten Lombok Barat; 2016-2017
                </div>
            </div>

        </div>
        </div>

    <!-- Mainly scripts -->
    <script src="<?php echo base_url('assets/js/jquery-2.1.1.js') ?>"></script>
    <script src="<?php echo base_url('assets/js/bootstrap.min.js') ?>"></script>
	<script src="<?php echo base_url('assets/js/bootstrap-datetimepicker.min.js') ?>"></script>
    <script src="<?php echo base_url('assets/js/plugins/metisMenu/jquery.metisMenu.js') ?>"></script>
    <script src="<?php echo base_url('assets/js/plugins/slimscroll/jquery.slimscroll.min.js') ?>"></script>

     <!-- Data Tables -->
    <script src="<?php echo base_url('assets/js/plugins/dataTables/jquery.dataTables.js') ?>"></script>
    <script src="<?php echo base_url('assets/js/plugins/dataTables/dataTables.bootstrap.js') ?>"></script>
    <script src="<?php echo base_url('assets/js/plugins/dataTables/dataTables.responsive.js') ?>"></script>
    <script src="<?php echo base_url('assets/js/plugins/dataTables/dataTables.tableTools.min.js') ?>"></script>

    <!-- Custom and plugin javascript -->
    <script src="<?php echo base_url('assets/js/inspinia.js') ?>"></script>
    <script src="<?php echo base_url('assets/js/plugins/pace/pace.min.js') ?>"></script>
    
    
    
    <?php $this->load->view('template/Script'); ?>

    
	
	


</body>

</html>
