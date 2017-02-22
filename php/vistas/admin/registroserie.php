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
      <label for="inputnombre" class="col-lg-2 control-label">Url</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name="urlserie" placeholder="Url" required="">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Caratula <strong>200 x 300</strong></label>
      <div class="col-lg-10">
        <input type="file" name="caratulaserie" required="">
        <div class="checkbox">
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Categoría</label>
      <div class="col-lg-10">
        <select class="form-control" name="categoriaserie" required="">
        <?php 
         $contenidoadmin = new ContenidoAdmin();
        $contenidoadmin->Listarcategorias(); ?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Idioma</label>
      <div class="col-lg-10">
        <select class="form-control" name="idiomaserie">
           <?php 
            $contenidoadmin->Listaridiomas(); ?>
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
</div>