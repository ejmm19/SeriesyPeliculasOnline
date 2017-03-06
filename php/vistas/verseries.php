<div class="row">
<center><legend>Ver Serie</legend></center>
	<?php 
	if (!isset($_GET['cap'])) {
	if (!isset($_GET['ver'])) {
  		$public0->MostrarSeries();	
	}else{?>

	<div class="container" style="width: 100%;">
	<div class="row">  
	  <h2>Serie: <strong><?php print_r($public0->Ver($_GET['ver'],'series')['nombre']) ?></strong></h2>
	  <div class="col-md-4">
	    <img src="img/seriesportada/<?php print_r($public0->Ver($_GET['ver'],'series')['img']) ?>" title="<?php print_r($public0->Ver($_GET['ver'],'series')['nombre']) ?>" width="100%" >
	  </div>  
	  <div class="col-md-8">
	    <p align="justify"><?php print_r($public0->Ver($_GET['ver'],'series')['descripcion']) ?></p>
    
    
		    <b>Idioma:</b>
		    <span class="label label-success"><?php  ?></span></h4>
		    <h4><b>Categoría:</b>
		    <span class="label label-warning"><?php  ?></span>
		    <br><br><br>
		    <b>Estado:&nbsp;&nbsp;&nbsp;  </b>
		    <h4><?php  print_r($public0->Ver($_GET['ver'],'series')['estado'])?></h4>
		    <?php //$public0->View($public0->Ver($_GET['ver'],'series')['id']) ?>
		    
		  </div>

	<div class="col-md-12">
		    <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#home">Capitulos</a></li>
		  </ul>

		  <div class="tab-content">
		    <div id="home" class="tab-pane fade in active">
				    <table class="table table-striped table-hover ">
				  <thead>
				    <tr>
				      <th>#</th>
				      <th>Column heading</th>
				      <th>Column heading</th>
				      
				    </tr>
				  </thead>
				  <tbody>
				    <?php $public0->ListarCapSerie(strtolower("z_capitulos_".str_replace(' ', '',$public0->Ver($_GET['ver'],'series')['nombre'])),$_GET['ver']); ?>
				  </tbody>
				</table>      
    		</div>
  		</div>
  	</div>
</div>
</div>

	<?php }
}else{?>

		<div class="container" style="width: 100%;">
	<div class="row">  
	  <h2>Nombre: <strong><?php print_r($public0->Ver($_GET['ver'],'series')['nombre']) ?></strong></h2>
	  <div class="col-md-4">
	    <img src="img/seriesportada/<?php print_r($public0->Ver($_GET['ver'],'series')['img']) ?>" title="<?php print_r($public0->Ver($_GET['ver'],'series')['nombre']) ?>" width="100%" >
	  </div>  
	  <div class="col-md-8">
	    <p align="justify"><?php print_r($public0->Ver($_GET['ver'],'series')['descripcion']) ?></p>
    
    
		    <h4><b>Idioma:</b>
		    <span class="label label-success"><?php  ?></span></h4>
		    <h4><b>Genero:</b>
		    <span class="label label-warning"><?php echo $public0->ConvertTable('genero_series',$public0->Ver($_GET['ver'],'series')['genero_id']) ?></span>
		    <br><br><br>
		    <b>Estado:&nbsp;&nbsp;&nbsp;  </b>
		    <h4><?php  print_r($public0->Ver($_GET['ver'],'series')['estado'])?></h4>
		    <?php //$public0->View($public0->Ver($_GET['ver'],'series')['id']) ?>
		    
		  </div>
		
	<div class="col-md-12">
	<a href="ver.php?op=verseries&ver=<?php echo $_GET['ver'] ?>" class="btn btn-success">Ver Capitulos</a>
		    <ul class="nav nav-tabs"><br><br>
		    <li class="active">
		    	<legend><a data-toggle="tab" href="#home">Capitulo: <?php echo $_GET['cap'] ?></a></legend>

		    </li>
		  </ul>
		  <iframe src="<?php $public0->ReproducirCap(strtolower("z_capitulos_".str_replace(' ', '',$public0->Ver($_GET['ver'],'series')['nombre'])),$_GET['cap'])?>" frameborder="0" width="100%" height="400px"></iframe>
		
		  
  	</div>
</div>
</div>

<?php }

	    ?>
</div>