<?php 
if (isset($_GET['ver'])) {
  $publico=new Publico();   
}
 ?>
<div class="container" style="width: 100%;">
<div class="row">
  
  <h2>Pelicula: <strong><?php print_r($publico->Ver($_GET['ver'],'peliculas')['nombre']) ?></strong></h2>
  <div class="col-md-4">
    <img src="img/caratulas/<?php print_r($publico->Ver($_GET['ver'],'peliculas')['img']) ?>" title="<?php print_r($publico->Ver($_GET['ver'],'peliculas')['nombre']) ?>" width="100%" >
  </div>  
  <div class="col-md-8">
    <p align="justify"><?php print_r($publico->Ver($_GET['ver'],'peliculas')['descripcion']) ?></p>
    
    <h4><b>Calidad:</b>
    <span class="label label-primary"><?php print_r($publico->Ver($_GET['ver'],'peliculas')['calidad']) ?></span>
    <b>Idioma:</b>
    <span class="label label-success"><?php print_r($publico->ConvertTable('idioma',$publico->Ver($_GET['ver'],'peliculas')['id_idioma'])) ?></span></h4>
    <h4><b>Categoría:</b>
    <span class="label label-warning"><?php print_r($publico->ConvertTable('categorias',$publico->Ver($_GET['ver'],'peliculas')['id_categoria'])) ?></span>
    <b>Vista:</b>
    <span class="label label-danger"><?php /*print_r($publico->Ver($_GET['ver'],'peliculas')['views'])*/echo rand(432,692) ?> Veces</span></h4>
    <br><br><br>
    <b>Puntuacion:&nbsp;&nbsp;&nbsp;  </b>
    <h4><?php $publico->Calificacion($publico->Ver($_GET['ver'],'peliculas')['calificacion']); ?></h4>
    <?php //$publico->View($publico->Ver($_GET['ver'],'peliculas')['id']) ?>
    
  </div>

  <div class="col-md-12">
    <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Opción 1</a></li>
    <li><a data-toggle="tab" href="#menu1">Opción 2</a></li>
    <!--<li><a data-toggle="tab" href="#menu2">Opción 3</a></li>
    <li><a data-toggle="tab" href="#menu3">Opción 4</a></li>-->
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3><?php print_r($publico->ConvertTable('idioma',$publico->Ver($_GET['ver'],'peliculas')['id_idioma'])) ?></h3>
      <iframe src="<?php print_r($publico->Ver($_GET['ver'],'peliculas')['url']) ?>" frameborder="0" width="100%" height="400px"></iframe>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Opcion 2</h3>
      <p>De momento solo tenemos una sola opción esperanos pronto y la subiremos</p>
    </div>
    <!--<div id="menu2" class="tab-pane fade">
      <h3>Opcion 3</h3>
      <p>De momento solo tenemos una sola opción esperanos pronto y la subiremos</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Opcion 4</h3>
      <p>De momento solo tenemos una sola opción esperanos pronto y la subiremos</p>
    </div>-->
  </div>
  </div>
</div>
</div>

<?php include('sliderpeq.php'); ?>