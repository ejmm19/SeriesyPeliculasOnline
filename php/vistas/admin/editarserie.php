<?php 
      $admin=new Admin();
      $array=$admin->MostrarDetalles('series',$_GET['edit']);
      while ($array){
 ?>
<div class="row">
    <div class="col-lg-12">
       <h1 class="page-header">Editar Serie<small> <?php echo $array['nombre']; ?> </small></h1>
            <ol class="breadcrumb">
                <li class="active">
                  <i class="fa fa-fw fa-arrows-v"></i>  <a href="index.php?op=listarseries">Lista > Peliculas</a> > <a href="index.php?op=verdetallesdeserie&ver=<?php echo $array['id'] ?>">Ver Detalles</a> > Editar
                </li>
           </ol>
    </div>
</div>
                <!-- /.row -->
<div class="row">
    <div class="col-lg-6">
<form class="form-horizontal" enctype="multipart/form-data" id="formpeliculas" method="post" action="../../controllers/ProcesosController.php">
  <fieldset>
    <legend>Formulario de Registro</legend>
    <input type="hidden" name="id" value="<?php echo $array['id'] ?>">
    <div class="form-group">
      <label for="inputnombre" class="col-lg-2 control-label">Nombre</label>
      <div class="col-lg-10">
      <br>
        <?php echo $array['nombre'] ?>
        <input type="hidden" class="form-control" name="nombreserieedit" value="<?php echo $array['nombre'] ?>" placeholder="Nombre de la Pelicula" >
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Descripción</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="9" name="descripcionserieedit" id="textArea" required="" ><?php echo $array['descripcion'] ?></textarea>
        <div class="checkbox">
        </div>
      </div>
    </div>
     
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Caratula <strong>200 x 300</strong></label>
      <div class="col-lg-10">
        <input type="file" name="portadaserieedit" id="caratulapeliculaedit">
        <input type="hidden" value="<?php echo $array['img']?>" name="imgold">
        <div class="checkbox">
        </div>
      </div>
    </div>
    
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Idioma</label>
      <div class="col-lg-10">
        <select class="form-control" name="idiomaserieedit">
        <option value="<?php echo $array['id_idioma'] ?>"> <?php echo $admin->ConvertTable('idioma',$array['id_idioma']) ?>*</option>
           <?php $contenidoadmin = new ContenidoAdmin();
            $contenidoadmin->Listaridiomas(); ?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Estado</label>
      <div class="col-lg-10">
        <select class="form-control" name="estadoserieedit" required="" value="<?php echo $array['estado'] ?>">
          <option value="<?php echo $array['estado'] ?>"> <?php echo $array['estado'] ?> *</option>
          <option value="En Emisión">En Emisión</option>
          <option value="Finalizado">Finalizado</option>
        </select>
      </div>
    </div>
    
    
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Guardar</button>
      </div>
    </div>
  </fieldset>
</form>
    </div>
<div class="col-lg-6">
  <div class="col-md-6">
    <legend>Imagen Acual</legend>
    <img src="../../img/seriesportada/<?php echo $array['img']; ?>" width="100%" height="350px">
  </div>
  <div class="col-md-6">
  <legend>Imagen Reemplazo</legend>
    <img src="" id="imgSalida" width="100%" height="350px">
  </div>

</div>
     <?php break;
   }
?>       

    </div>
</div>

