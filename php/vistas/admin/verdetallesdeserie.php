<?php 
      $admin=new Admin();
      $array=$admin->MostrarDetalles('series',$_GET['ver']);
     
      while ($array){
 ?>
<div class="row">
    <div class="col-lg-12">
       <h1 class="page-header">Ver detalles de Pelicula<small> <?php echo $array['nombre']; ?> </small></h1>
            <ol class="breadcrumb">
                <li class="active">
                  <i class="fa fa-fw fa-arrows-v"></i>  <a href="index.php?op=listaseries">Lista > Series</a> > Ver Detalles
                </li>
           </ol>
    </div>
</div>
                <!-- /.row -->
<div class="row" id="detalles" style="border-bottom: 1px solid gray; padding-bottom: 1%;">
    <div class="col-lg-12">
      <div class="col-md-3">
         <img src="../../img/seriesportada/<?php echo $array['img']; ?>" width="100%" height="350px">
       </div>
       <div class="col-md-8">
         <p align="justify"><?php echo $array['descripcion']; ?></p>
         <hr>
         <ul>
           <li><b>Estado:</b> <p><span class="label label-primary"><?php echo $array['estado'];?></span></p></li>
           <li><b>Idioma:</b> <p><?php echo $admin->ConvertTable('idioma',$array['id_idioma']) ?></p></li>
         </ul>
         <div class="col-md-4 col-md-offset-8">
          <a href="index.php?op=editarserie&edit=<?php echo $array['id']?>" class="btn btn-primary">Editar</a>
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
                     <input type="hidden" value="<?php echo $array['id']?>" name="eliminarserie" >
                     <h5><b>En Realidad Deseas Elimianr la Serie ?</b></h5>   
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




      

      <div id="myModal2" class="modal fade" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Agregar Capitulo deb  <b> <?php echo $array['nombre'] ?></b></h4>                    
                  </div>
                  <div class="modal-body">
                  <form action="../../controllers/ProcesosController.php" class="form-horizontal" method="post">
                    
                   
                  <input type="hidden" class="form-control" name="serieid" value="<?php echo $array['id']?>">
                  <input type="hidden" class="form-control" name="nombreserie" value="<?php echo $array['nombre']?>">

                    <div class="form-group">
                      <label for="inputEmail" class="col-lg-2 control-label">Nombre</label>
                      <div class="col-lg-10">
                        <input type="text" class="form-control" name="nombrecap" placeholder="Nombre del capitulo" required="">
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="inputEmail" class="col-lg-2 control-label">Capitulo Numero</label>
                      <div class="col-lg-10">
                        <input type="number" class="form-control" name="numerocap" min="1" placeholder="Capitulo Numero" required=""> 
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="inputEmail" class="col-lg-2 control-label">Url</label>
                      <div class="col-lg-10">
                        <input type="text" class="form-control" name="urlcap" placeholder="URL del Capitulo" required="">
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="inputEmail" class="col-lg-2 control-label">Temporada</label>
                      <div class="col-lg-10">
                        <input type="number" class="form-control" name="temporada" min="1" placeholder="Temporada Numero" required="">
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="inputEmail" class="col-lg-2 control-label">Fecha</label>
                      <div class="col-lg-10">
                        <input type="date" class="form-control" name="fecha" min="1" placeholder="Fecha" required="">
                      </div>
                    </div>
                  
                    
                   
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                    <input type="submit" value="Agregar" class="btn btn-success">
                  </div>
                </div>
             </form>
              </div>
            </div>






     <?php break;
   }
?>       
    </div>
</div>
<hr>
<div class="row">
    <div class="col-lg-12">
<table class="table table-striped table-hover ">
<legend>Lista de Capitulos <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2">Agregar Capitulo</button></legend>
  <thead>
    <tr>
      <th>#</th>
      <th>Nombre</th>
      <th>URL</th>
      <th>Temporada</th>
      <th>Fecha</th>
      <th>Ver</th>
    </tr>
  </thead>
  <tbody>
  <?php 
   
  $admin->ListarCapSerie('z_capitulos_dragonballsuper');

     
   ?>
  
  </tbody>
</table> 
    </div>
</div>



            