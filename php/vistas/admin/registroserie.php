<div class="row">
    <div class="col-lg-12">
       <h1 class="page-header">Registro <small>Registrar Serie</small></h1>
            <ol class="breadcrumb">
                <li class="active">
                  <i class="fa fa-fw fa-edit"></i> Registro Serie
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
        <input type="text" class="form-control" name="nombreserie" placeholder="Nombre de la Serie" autofocus="" required="">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Descripción</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" name="descripcionserie" id="textArea" required=""></textarea>
        <div class="checkbox">
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Caratula <strong>200 x 300</strong></label>
      <div class="col-lg-10">
        <input type="file" name="caratulaserie" required="" id="caratulapeliculaedit">
        <div class="checkbox">
        </div>
      </div>
    </div>
    
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Idioma</label>
      <div class="col-lg-10">
        <select class="form-control" name="idiomaserie">
           <?php $contenidoadmin = new ContenidoAdmin();
            $contenidoadmin->Listaridiomas(); ?>
        </select>
      </div>
    </div>  
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Genero</label>
      <div class="col-lg-10">
        <select class="form-control" name="generoseries">
           <?php $contenidoadmin = new ContenidoAdmin();
            $contenidoadmin->ListarGeneroseries(); ?>
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