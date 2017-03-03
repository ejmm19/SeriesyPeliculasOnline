<?php /**
* 
*/
include ('Conexion.php');
class Publico extends Conexion
{
	public function MostrarSlider(){
		$sql = Conexion::conexion()->prepare("SELECT * FROM slider");
		$sql->execute();
		while ($datos = $sql->fetch()) {
        	echo "
        	<div class='item'>
              <img alt='Carousel Bootstrap First' src='img/".$datos[2]."' />
                <div class='carousel-caption'>
                   <h4>".$datos[1]."</h4>
                <hr>
                 <p align='justify'>".$datos[3]."</p>
                 <a href='".$datos[4]."' class='btn btn-success'>Ver Pelicula</a>
               </div>
            </div>";
        	
        }
	}
	public function HolaMundo(){
		echo "<h1>hola perros hijos de puta</h1>";
	}
  public function EnviarMensaje($correo,$mensaje,$fecha){
    $sql= Conexion::conexion()->prepare("INSERT INTO mensajes (correo,mensaje,fecha,estado) VALUES ('".$correo ."','".$mensaje ."','".$fecha ."','sin leer' )");
    $sql->execute();
  }
  public function MostrarPeliculas(){
    $sql = Conexion::conexion()->prepare("SELECT * FROM peliculas WHERE calificacion >= 3 ORDER BY RAND() LIMIT 20");
    $sql->execute();
    while ($datos=$sql->fetch()) {
      $url='img/caratulas/'.$datos['img'];
      echo "
            <div class='col-md-3'>
            <div class='panel panel-primary'>
                <div class='panel-heading'>
                  <h3 class='panel-title'><center>".$datos['nombre']."</center></h3>
                </div>
            <div class='panel-body' id='box' style='background: url(".$url."); background-size:100%;'>
              <div id='overlay'>
                <span id='plus'>
                    <a href='#verpelicula'>
                      <span title='Ver Pelicula' class='glyphicon glyphicon-play-circle icone' aria-hidden='true'></span>
                    </a>                
                    <p>".substr($datos['descripcion'],0,100)."...</p>
                </span>
              </div>
            </div>
          </div>
        </div>";
    }
  }

  public function SeriesEnEmision(){
    $sql=Conexion::conexion()->prepare("SELECT * FROM series  WHERE estado = 'Emision' ORDER BY RAND() LIMIT 4");
    $sql->execute();
    while ($datos = $sql->fetch()) {
        echo "
              <div class='panel panel-default'>
                  <div class='panel-body'>
                    <a href='#'><img src='img/seriesportada/".$datos['img']."' width='100%' ></a>
                  </div>
                </div>
                  
              
        ";
    }
  }
} ?>