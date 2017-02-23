<div class="row">
    <div class="col-lg-12">
       <h1 class="page-header">Lista de Peliculas<small> Listado de peliculas actuales</small></h1>
            <ol class="breadcrumb">
                <li class="active">
                  <i class="fa fa-fw fa-arrows-v"></i> Lista
                </li>
           </ol>
    </div>
</div>
                <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
       <table class="table table-striped table-hover ">
  <thead>
    <tr>
      <th>#</th>
      <th>Nombre</th>
      <th>Categoria</th>
      <th>Idioma</th>
      <th>Vistas</th>
      <th>Calidad</th>
      <th>Ver</th>
    </tr>
  </thead>
  <tbody>
    
    <?php 
        $contenidoadmin = new ContenidoAdmin();
        $contenidoadmin->ListarPeliculas(); ?>    
  </tbody>
</table> 
    </div>
</div>
