<?php include('php/partes/carrusell.php');
      $publico = new Publico;
 ?>
   
    
    <hr style="margin-top: 1px;margin-bottom: 0px;border: 0;border-top: 30px solid #ffffff;">
    
    
    <div class="col-md-12" >
      <div class="container" id="vistainicial">
        <div class="row" style="background: #FFF">
          

        
         <div class="col-md-3" id="menulateral">
              <div class="list-group"><br>
              <a class="list-group-item active">Menu</a>
              <a href="ver.php?op=estrenos" class="list-group-item">Estrenos</a>
              <a href="ver.php?op=recomendadas" class="list-group-item">Recomendadas</a>
              <a href="ver.php?op=calidad" class="list-group-item">Calidad HD</a>
              <a href="ver.php?op=verseries" class="list-group-item">Series</a>
            </div>
            <div class="fb-like" data-href="https://www.facebook.com/Cine-y-Series-Online-1919933861569423/" data-width="200" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
            <br>
            <br>
            <br>
            <center><legend>Series En Emisión</legend></center>
            <div class="col-md-12">
              <?php $publico->SeriesEnEmision(); ?>

            </div>
          </div> 

        <div class="col-md-9" style="border-left: 1px solid #606060;"><br>
          <center><legend>Peliculas Mejor Calificadas</legend></center>
          <?php 
            $publico->MostrarPeliculas();
           ?>


        </div>
      </div>
      </div>
    </div>
