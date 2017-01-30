 <div class="row">
                <div class="col-lg-12">
                    <div class="panel ">

                        <div class="panel-heading">
                            <div class="panel-title m-b-md"></div>
                            <div class="panel-options">

                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#tab-1">Data Permohonan</a></li>
                                    <li class=""><a data-toggle="tab" href="#tab-2">Form Permohonan</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="panel-body">

                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                <?php $this->load->view('permohonan/Datapermohonan'); ?>
                                </div>

                                <div id="tab-2" class="tab-pane">
                                    <?php $this->load->view('permohonan/Formpermohonan'); ?>

                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>