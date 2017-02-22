<?php 
      $admin=new Admin();
      $array=$admin->MostrarDetalles('peliculas',$_GET['ver']);
      while ($array){
 ?>
<div class="row">
    <div class="col-lg-12">
       <h1 class="page-header">Ver detalles de Pelicula<small> <?php echo $array['nombre']; ?> </small></h1>
            <ol class="breadcrumb">
                <li class="active">
                  <i class="fa fa-fw fa-arrows-v"></i>  <a href="index.php?op=listapeliculas">Lista > Peliculas</a> > Ver Detalles
                </li>
           </ol>
    </div>
</div>
                <!-- /.row -->
<div class="row" id="detalles">
    <div class="col-lg-12">
      <div class="col-md-3">
         <img src="../../img/caratulas/<?php echo $array['img']; ?>" width="100%" height="350px">
       </div>
       <div class="col-md-9">
         <p align="justify"><?php echo $array['descripcion']; ?></p>
         <hr>
         <ul>
           <li><b>Calidad:</b> <p><?php echo $array['calidad'] ?></p></li>
           <li><b>Idioma:</b> <p><?php echo $admin->ConvertTable('idioma',$array['id_idioma']) ?></p></li>
           <li><b>Categoria:</b> <p><?php echo $admin->ConvertTable('categorias',$array['id_categoria']) ?></p></li>
           <li><b>Vista:</b> <p><?php echo $array['views'] ?> Veces</p></li>
         </ul>
         <div class="col-md-4 col-md-offset-8">
           <a href="index.php?op=editar&edit=<?php echo $array['id']?>" class="btn btn-primary">Editar</a>
           <a href="" class="btn btn-danger">Eliminar</a>
         </div>
       </div>

     <?php break;
   }
?>       
    </div>
</div>
