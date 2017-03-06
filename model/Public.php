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
    $sql = Conexion::conexion()->prepare("SELECT * FROM peliculas WHERE calificacion > 3 ORDER BY RAND() LIMIT 16");
    $sql->execute();
    while ($datos=$sql->fetch()) {
      $url='img/caratulas/'.$datos['img'];
      echo "<div class='col-md-3'>
            <div class='panel panel-primary'>
            <div class='panel-body' id='box' style='background: url(".$url."); background-size:100%;'>
              <div id='overlay'>
                <span id='plus'>
                    <a href='ver.php?op=verpeli&ver=".$datos['id']."'>
                      <span title='Ver Pelicula' class='glyphicon glyphicon-play-circle icone' aria-hidden='true'></span>
                    </a>   
                    <h4>".$datos['nombre']."</h4>             
                    <p>".$this->ConvertTable('categorias',$datos['id_categoria'])."</p>
                </span>
              </div>
            </div>
          </div>
        </div>
            ";
    }
  }
  public function PelisEstrenos(){
    $sql = Conexion::conexion()->prepare("SELECT * FROM peliculas WHERE estreno = 'si' ORDER BY RAND() LIMIT 20");
    $sql->execute();
    while ($datos=$sql->fetch()) {
      $url='img/caratulas/'.$datos['img'];
      echo "
            <div class='col-md-3'>
            <div class='panel panel-primary'>
            <div class='panel-body' id='box' style='background: url(".$url."); background-size:100%;'>
              <div id='overlay'>
                <span id='plus'>
                    <a href='ver.php?op=verpeli&ver=".$datos['id']."'>
                      <span title='Ver Pelicula' class='glyphicon glyphicon-play-circle icone' aria-hidden='true'></span>
                    </a>   
                    <h4>".$datos['nombre']."</h4>             
                    <p>".$this->ConvertTable('categorias',$datos['id_categoria'])."</p>
                </span>
              </div>
            </div>
          </div>
        </div>";
    }
  }
  public function PelisRecomendadas(){
    $sql = Conexion::conexion()->prepare("SELECT * FROM peliculas ORDER BY views ASC LIMIT 20");
    $sql->execute();
    while ($datos=$sql->fetch()) {
      $url='img/caratulas/'.$datos['img'];
      echo "
            <div class='col-md-3'>
            <div class='panel panel-primary'>
            <div class='panel-body' id='box' style='background: url(".$url."); background-size:100%;'>
              <div id='overlay'>
                <span id='plus'>
                    <a href='ver.php?op=verpeli&ver=".$datos['id']."'>
                      <span title='Ver Pelicula' class='glyphicon glyphicon-play-circle icone' aria-hidden='true'></span>
                    </a>   
                    <h4>".$datos['nombre']."</h4>             
                    <p>".$this->ConvertTable('categorias',$datos['id_categoria'])."</p>
                </span>
              </div>
            </div>
          </div>
        </div>";
    }
  }
  public function PelisCalidad(){
    $sql = Conexion::conexion()->prepare("SELECT * FROM peliculas WHERE calidad <> 'SD 480p' ORDER BY RAND() LIMIT 20");
    $sql->execute();
    while ($datos=$sql->fetch()) {
      $url='img/caratulas/'.$datos['img'];
      echo "
            <div class='col-md-3'>
            <div class='panel panel-primary'>
            <div class='panel-body' id='box' style='background: url(".$url."); background-size:100%;'>
              <div id='overlay'>
                <span id='plus'>
                    <a href='ver.php?op=verpeli&ver=".$datos['id']."'>
                      <span title='Ver Pelicula' class='glyphicon glyphicon-play-circle icone' aria-hidden='true'></span>
                    </a>   
                    <h4>".$datos['nombre']."</h4>             
                    <strong style='color: #e4ce07;'>".$datos['calidad']."</strong>
                </span>
              </div>
            </div>
          </div>
        </div>";
    }
  }
  public function PelisCategoria($categoria){
    $sql = Conexion::conexion()->prepare("SELECT * FROM peliculas WHERE id_categoria = '".$categoria."' ORDER BY RAND() LIMIT 20");
    $sql->execute();
    while ($datos=$sql->fetch()) {
      $url='img/caratulas/'.$datos['img'];
      echo "
            <div class='col-md-3'>
            <div class='panel panel-primary'>
            <div class='panel-body' id='box' style='background: url(".$url."); background-size:100%;'>
              <div id='overlay'>
                <span id='plus'>
                    <a href='ver.php?op=verpeli&ver=".$datos['id']."'>
                      <span title='Ver Pelicula' class='glyphicon glyphicon-play-circle icone' aria-hidden='true'></span>
                    </a>   
                    <h4>".$datos['nombre']."</h4>             
                    <strong style='color: #e4ce07;'>".$datos['calidad']."</strong>
                </span>
              </div>
            </div>
          </div>
        </div>";
    }
  }
  public function MostrarSeries(){
    $sql = Conexion::conexion()->prepare("SELECT * FROM series ORDER BY RAND() LIMIT 20");
    $sql->execute();
    while ($datos=$sql->fetch()) {
      $url='img/seriesportada/'.$datos['img'];
      echo "
            <div class='col-md-3'>
            <div class='panel panel-primary'>
            <div class='panel-body' id='box' style='background: url(".$url."); background-size:100%;'>
              <div id='overlay'>
                <span id='plus'>
                    <a href='ver.php?op=verseries&ver=".$datos['id']."'>
                      <span title='Ver Pelicula' class='glyphicon glyphicon-play-circle icone' aria-hidden='true'></span>
                    </a>   
                    <h4>".$datos['nombre']."</h4>             
                    
                </span>
              </div>
            </div>
          </div>
        </div>";
    }
  }
 public function ListarCapSerie($tabla,$serie){
        $sql = Conexion::conexion()->prepare("SELECT * FROM ".$tabla);
        $sql->execute();
      
        while ($datos = $sql->fetch()) {
          echo "<tr>
              
              <td>".$datos[2]."</td>
              <td>".$datos[3]."</td>
              <td><a href=ver.php?op=verseries&ver=".$serie."&cap=".$datos[0].">Ver Capitulo</a></td>
              
          </tr>";
          
        }
  }
  public function ReproducirCap($tabla,$id){
    $sql = Conexion::conexion()->prepare("SELECT url FROM ".$tabla." WHERE id = ".$id."");
    $sql->execute();
    $dato=$sql->fetch();
    echo $dato[0];
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
  public function Ver($id,$tabla){
    $sql=Conexion::conexion()->prepare("SELECT * FROM ".$tabla." WHERE id = '".$id."'");
    $sql->execute();
    return $datos=$sql->fetch();
  }
  public function ConvertTable($tabla,$id){
    $sql = Conexion::conexion()->prepare("SELECT nombre FROM ".$tabla." WHERE id = ".$id);
        $sql->execute();
        $dat = $sql->fetch();
        return $dat[0];
  }
  public function Calificacion($puntuacion){
    switch ($puntuacion) {
      case 1:
        echo "<span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star-empty' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star-empty' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star-empty' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star-empty' aria-hidden='true'></span>";
        break;
      case 2:
        echo "<span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star-empty' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star-empty' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star-empty' aria-hidden='true'></span>";
      break;
      case 3:
        echo "<span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star-empty' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star-empty' aria-hidden='true'></span>";
      break;
      case 4:
        echo "<span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star-empty' aria-hidden='true'></span>";
      break;
      default:
        echo "<span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star' aria-hidden='true'></span>
              <span class='glyphicon glyphicon-star' aria-hidden='true'></span>";
        break;
    }
  }
  public function View($id){
    $sq=Conexion::conexion()->prepare("SELECT * FROM peliculas WHERE id = ".$id."");
    $sq->execute();
    $dat = $sq->fetch();
    $dat['views'];
    $suma=$dat['views']+1;
    $sql=Conexion::conexion()->prepare("UPDATE peliculas SET views = '".$suma."' WHERE id = ".$id."");
    $sql->execute();
  }
  public function MostrarRelacionadas($id_categoria){
    $slq=Conexion::conexion()->prepare("SELECT * FROM peliculas WHERE id_categoria = ".$id_categoria." ORDER BY RAND() LIMIT 4");
    $slq->execute();

    while ($array=$slq->fetch()) {
      echo "<div class='col-md-3'><a href='ver.php?op=verpeli&ver=".$array['id']."' ><img src='img/caratulas/".$array['img']."' alt='Image'  width='100%' height='200px'></a>
                            </div>";

      
    }
  }
  public function Dropdown($tabla){
        $sql = Conexion::conexion()->prepare("SELECT * FROM ".$tabla);
        $sql->execute();
        echo "<ul class='dropdown-menu' role='menu'>";
        while ($datos = $sql->fetch()) {
          echo "<li><a href='#'>".$datos[1]."</a></li>";
        }
         echo "</ul>";
  }


} ?>