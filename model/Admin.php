<?php 

/**
* 
*/
include('Conexion.php');
class Admin extends Conexion{
	
	public function ListarSelect($tabla){
		$sql = Conexion::conexion()->prepare("SELECT * FROM ".$tabla);
        $sql->execute();
        
        while ($datos = $sql->fetch()) {
        	echo "<option value='".utf8_decode($datos[0])."'>".utf8_decode($datos[1])."</option>";
        }
	}
	public function ListarPeliculas(){
		$sql = Conexion::conexion()->prepare("SELECT * FROM peliculas");
        $sql->execute();
        $cont=1;
        while ($datos = $sql->fetch()) {
        	echo "<tr>
      				<td>".$cont++."</td>
      				<td>".$datos[1]."</td>
      				<td>".$datos[5]."</td>
      				<td>".$datos[6]."</td>
      				<td>".$datos[7]."</td>
      				<td>".$datos[8]."</td>
      				<td><a href='#'>Ver</a></td>
    			</tr>";
        	
        }
	}
	public function SubirImg($fil,$carpeta){
    	if ($fil['name']!=="") {
          $tmp_name = $fil["tmp_name"];
          $tamano = $fil['size'];
          $tipo = $fil['type'];
          $nombre = $fil["name"];
          $archivo_temporal = $fil['tmp_name'];
        if (is_uploaded_file($tmp_name)){
           $nombreDirectorio = "../img/".$carpeta."/";
           $nombreFichero = $nombre;
           $nombreCompleto = $nombreDirectorio . $nombreFichero;
        if (is_file($nombreCompleto)){
           $idUnico = time();
           $nombreFichero = $idUnico . "-" . $nombreFichero;
        }
          move_uploaded_file($tmp_name, $nombreDirectorio.$nombreFichero);
        }else{
             print ("No se ha podido subir el fichero");
        }
	    }else{
        echo "no hay archivos";
    	}
    	}
	public function CreatePelicula($nombre,$descrip,$url,$img,$cat,$idioma,$calidad){
		$sql = Conexion::conexion()->prepare("INSERT INTO peliculas(nombre, descripcion, url,img, id_categoria, id_idioma, calidad)
											  VALUES ('".$nombre."','".$descrip."','".$url."','".$img."','".$cat."','".$idioma."','".$calidad."')");
        $sql->execute();
	}
}
?>
