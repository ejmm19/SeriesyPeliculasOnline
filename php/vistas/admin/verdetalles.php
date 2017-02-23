<?php 
      $admin=new Admin();
 ?>
<div class="row">
    <div class="col-lg-12">
       <h1 class="page-header">Ver detalles de Pelicula<small>(...) </small></h1>
            <ol class="breadcrumb">
                <li class="active">
                  <i class="fa fa-fw fa-arrows-v"></i>  <a href="index.php?op=listapeliculas">Lista > Peliculas</a> > Ver Detalles
                </li>
           </ol>
    </div>
</div>
                <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
    <?php 
 $array=$admin->MostrarDetalles('peliculas',$_GET['ver']);
  while ($array) {?>
      <div class="col-md-3">
         <img src="../../img/caratulas/<?php echo $array['img']; ?>" width="100%" height="350px">
       </div>
     <?php break;
   }
?>       
    </div>
</div>
