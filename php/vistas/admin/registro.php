<div class="row">
    <div class="col-lg-12">
       <h1 class="page-header">Registro <small>Registrar Pelicula</small></h1>
            <ol class="breadcrumb">
                <li class="active">
                  <i class="fa fa-fw fa-edit"></i> Registro Peliculas
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
        <input type="text" class="form-control" name="nombre" placeholder="Nombre de la Pelicula" autofocus="" required="">
        
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Descripción</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" name="descripcion" id="textArea" required=""></textarea>
        <div class="checkbox">
        </div>
      </div>
    </div>
     <div class="form-group">
      <label for="inputnombre" class="col-lg-2 control-label">Url</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="url" placeholder="Url" required="">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Caratula <strong>200 x 300</strong></label>
      <div class="col-lg-10">
        <input type="file" name="caratulapelicula" required="" id="caratulapeliculaedit"> 
        <div class="checkbox">
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Categoría</label>
      <div class="col-lg-10">
        <select class="form-control" name="categoria" required="">
        <?php 
         $contenidoadmin = new ContenidoAdmin();
        $contenidoadmin->Listarcategorias(); ?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Idioma</label>
      <div class="col-lg-10">
        <select class="form-control" name="idioma">
           <?php 
            $contenidoadmin->Listaridiomas(); ?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Calidad</label>
      <div class="col-lg-10">
        <select class="form-control" name="calidad" required="">
          <option value="Cam">Cam</option>
          <option value="SD 480p">SD 480p</option>
          <option value="HD 720p">HD 720p</option>
          <option value="HD 1080p">HD 1080p</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Calificación</label>
      <div class="col-lg-10">
        <select class="form-control" name="calificacion" required="">
          <option value="1">1 *</option>
          <option value="2">2 **</option>
          <option value="3">3 ***</option>
          <option value="4">4 ****</option>
          <option value="5">5 *****</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">De Estreno</label>
      <div class="col-lg-10">
        <select class="form-control" name="estreno" required="">
          <option value="Si">Sí</option>
          <option value="No">No</option>
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
    <div class="col-lg-3">
    <legend>Imagen de Carátula</legend>
      <img src="" id="imgSalida" width="100%" height="350px">
    </div>
</div>

