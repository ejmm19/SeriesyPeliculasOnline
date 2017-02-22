<?php 
      $admin=new Admin();
      $array=$admin->MostrarDetalles('peliculas',$_GET['edit']);
      while ($array){
 ?>
<div class="row">
    <div class="col-lg-12">
       <h1 class="page-header">Editar Pelicula<small> <?php echo $array['nombre']; ?> </small></h1>
            <ol class="breadcrumb">
                <li class="active">
                  <i class="fa fa-fw fa-arrows-v"></i>  <a href="index.php?op=listapeliculas">Lista > Peliculas</a> > Ver Detalles
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
    <div class="form-group">
      <label for="inputnombre" class="col-lg-2 control-label">Nombre</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="nombreedit" value="<?php echo $array['nombre'] ?>" placeholder="Nombre de la Pelicula" autofocus="" required="">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Descripción</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="9" name="descripcionedit" id="textArea" required="" ><?php echo $array['descripcion'] ?></textarea>
        <div class="checkbox">
        </div>
      </div>
    </div>
     <div class="form-group">
      <label for="inputnombre" class="col-lg-2 control-label">Url</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="urledit" placeholder="Url" required="" value="<?php echo $array['url'] ?>">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Caratula <strong>200 x 300</strong></label>
      <div class="col-lg-10">
        <input type="file" name="caratulapeliculaedit" required="" value="<?php echo $array['img'] ?>">
        <div class="checkbox">
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Categoría</label>
      <div class="col-lg-10">
        <select class="form-control" name="categoriaedit" required="">
        <option value="<?php echo $array['id_categoria'] ?>"> <?php echo $admin->ConvertTable('categorias',$array['id_categoria']) ?></option>
        <?php 
         $contenidoadmin = new ContenidoAdmin();
        $contenidoadmin->Listarcategorias(); ?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Idioma</label>
      <div class="col-lg-10">
        <select class="form-control" name="idiomaedit">
        <option value="<?php echo $array['id_idioma'] ?>"> <?php echo $admin->ConvertTable('idioma',$array['id_idioma']) ?></option>
           <?php 
            $contenidoadmin->Listaridiomas(); ?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Calidad</label>
      <div class="col-lg-10">
        <select class="form-control" name="calidadedit" required="" value="<?php echo $array['calidad'] ?>">
          <option value="SD480">SD 480p</option>
          <option value="HD720">HD 720p</option>
          <option value="HD1080">HD 1080p</option>
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

     <?php break;
   }
?>       
    </div>
</div>
