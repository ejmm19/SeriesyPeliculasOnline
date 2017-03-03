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
       <div class="col-md-8">
         <p align="justify"><?php echo $array['descripcion']; ?></p>
         <hr>
         <ul>
           <li><b>Calidad:</b> <p><?php echo $array['calidad'] ?></p></li>
           <li><b>Idioma:</b> <p><?php echo $admin->ConvertTable('idioma',$array['id_idioma']) ?></p></li>
           <li><b>Categoria:</b> <p><?php echo $admin->ConvertTable('categorias',$array['id_categoria']) ?></p></li>
           <li><b>Vista:</b> <p><?php echo $array['views'] ?> Veces</p></li>
           <li><b>Enlace:</b> <p><a href="<?php echo $array['url'] ?>" class="btn btn-primary" target="_blank" >Ver Pelicula</a></p></li>
         </ul>
         <div class="col-md-4 col-md-offset-8">
          <a href="index.php?op=editar&edit=<?php echo $array['id']?>" class="btn btn-primary">Editar</a>
          <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Eliminar</button>
            
            <div id="myModal" class="modal fade" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Atención!!</h4>
                    
                  </div>
                  <div class="modal-body">
                    <form action="../../controllers/ProcesosController.php" method="post">
                     <input type="hidden" value="<?php echo $array['id']?>" name="eliminar" >
                     <h5><b>En Realidad Deseas Elimianr la Pelicula ?</b></h5>   
                     <h5><?php echo $array['nombre']; ?></h5>
                   
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                    <input type="submit" value="Eliminar" class="btn btn-danger">
                  </div>
                </div>
              </form>
              </div>
            </div>
           

         </div>
       </div>

     <?php break;
   }
?>       
    </div>
</div>
