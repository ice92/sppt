<br><br><br><br><br>
  <div class="logo">
    <a href="index.html">
    <center><img src="<?php echo base_url('assets/img/lobar1.png') ?>" alt=""/></center>
    </a>
</div>
<center>
 <div class="ibox-content" style="width: 350px">


                    <form class="m-t" role="form" method="post" action=" <?php echo base_url('Login/ceklogin') ?>">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Nomor Identitas" id="ktp" name="ktp" required="">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" name="password" required="">
                        </div>
                        <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

                        <p class="text-muted text-center">
                            <small>Do not have an account?</small>
                        </p>
                        <a class="btn btn-sm btn-white btn-block" href="<?php echo base_url('Daftar') ?>">Create an account</a>
                    </form>
                    
                </div>
</center>