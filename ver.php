<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/png" href="icono.jpg" />
    <meta name="description" content="Ver Peliculas Online HD Gratis, Estrenos del Cine en Español,
     Castellano, Latino, subtituladas, Youtube, en Linea, 2013 - 2014"/>
    <meta name="keywords" content="Pelicula, Movie, bajar, estrenos, ver, online, enlinea, en, linea, Gratis, Descargar."/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Series y Anime Online</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css"> 
    <link rel="stylesheet" href="css/styles.css"> 
  </head>
  <body id="body">
      <?php
        
       include('php/partes/nav.php');
       ?>

       <div class="col-md-12" style="margin-top: 70px;">
       
      <div class="container" id="vistainicial">
        <div class="row" style="background: #FFF">   
             <div class="col-md-12" id="bannerver"></div>
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
              <?php //$publico->SeriesEnEmision(); ?>

            </div>
          </div> 

        <div class="col-md-9" style="border-left: 1px solid #606060;"><br>
          <?php 
            include('controllers/VerController.php');  
          ?>
              </div>
            </div>
            </div>
        </div>
        <?php      
              include('php/partes/footer.php');
              ?>
          <div id="fb-root"></div>
          <script src="js/extra.js"></script>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
          <script src="js/bootstrap.min.js"></script>
          <script src="js/script.js"></script>
          <script>
         $('#myCarousel').carousel({
            interval: 10000
          })
    
        $('#myCarousel').on('slid.bs.carousel', function() {
      //alert("slid");
        });
        $('ul.nav li.dropdown').hover(function() {
        $(this).find('.dropdown-menu').stop(true, true).delay(50).fadeIn(500);
      }, function() {
        $(this).find('.dropdown-menu').stop(true, true).delay(50).fadeOut(500);
      });
    </script>

  </body>
</html>
