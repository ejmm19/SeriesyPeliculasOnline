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
    $sql= Conexion::conexion()->prepare("INSERT INTO mensajes (correo,mensaje,fecha) VALUES ('".$correo ."','".$mensaje ."','".$fecha ."' )");
    $sql->execute();
  }



}
 ?>