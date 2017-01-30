<script>
  $(document).ready(function(){
  	$("#cekktp").click(function(){ 
  	     $.ajax({
              url : "<?php echo base_url('daftar/formdaftar') ?>",
              type: "get",
              success:    function(html){
              				$("#FormPemohon").html(html);
                          }                
          });return false;
      });
  });
</script>
<script>
  function loadform(){
      var jenisizin=$('#jenisizin').val();
      $.ajax({
        url:"<?php echo base_url('permohonan/loadform') ?>",
        type:"get",
        data:"id=" + jenisizin, 
        success:function(html){
          $("#loadform").html(html);
        }
      });return false;
  }
</script>
<script type="text/javascript">
  function loadKabupaten()
  {
      var propinsi = $("#provinsi").val();
      $.ajax({
          type:'GET',
          url:"<?php echo base_url(); ?>wilayah/kabupaten",
          data:"id=" + propinsi,
          success: function(html)
          { 	$("#opkabupaten").hide();
             $("#optkabupaten").html(html);
          }
      }); 
  }
  function loadKecamatan()
  {
      var kabupaten = $("#kabupaten").val();
      $.ajax({
          type:'GET',
          url:"<?php echo base_url(); ?>wilayah/kecamatan",
          data:"id=" + kabupaten,
          success: function(html)
          { 
              $("#opkecamatan").hide();
              $("#optkecamatan").html(html);
          }
      }); 
  }
  function loadDesa()
  {
      var kecamatan = $("#kecamatan").val();
      $.ajax({
          type:'GET',
          url:"<?php echo base_url(); ?>wilayah/desa",
          data:"id=" + kecamatan,
          success: function(html)
          { 
             $("#opdesa").hide();
              $("#optdesa").html(html);
          }
      }); 
  }
</script>
