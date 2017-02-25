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
      				<td>".$this->ConvertTable('categorias',$datos[5])."</td>
      				<td>".$this->ConvertTable('idioma',$datos[6])."</td>
      				<td>".$datos[7]."</td>
      				<td>".$datos[8]."</td>
      				<td><a href='index.php?op=verdetalles&ver=".$datos[0]."'>Ver</a></td>
    			</tr>";
        	
        }
	}
	public function ListarSeries(){
		$sql = Conexion::conexion()->prepare("SELECT * FROM series");
        $sql->execute();
        $cont=1;
        while ($datos = $sql->fetch()) {
        	echo "<tr>
      				<td>".$cont++."</td>
      				<td>".$datos[1]."</td>
      				<td>".$this->ConvertTable('idioma',$datos[5])."</td>
      				<td>".$datos[6]."</td>
      				<td><a href='index.php?op=verdetallesdeserie&ver=".$datos[0]."'>Ver</a></td>
    			</tr>";
        	
        }
	}
	public function ConvertTable($tabla,$id){
		$sql = Conexion::conexion()->prepare("SELECT nombre FROM ".$tabla." WHERE id = ".$id);
        $sql->execute();
        $dat = $sql->fetch();
        return $dat[0];
	}
	public function MostrarDetalles($tabla,$id){
		$sql = Conexion::conexion()->prepare("SELECT * FROM ".$tabla." WHERE id = ".$id);
        $sql->execute();
        $datos = $sql->fetch();
        return $datos;
	}
	public function Eliminar($id,$tabla){
		$sql = Conexion::conexion()->prepare("DELETE FROM ".$tabla." WHERE id =".$id);
		$sql->execute();
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
	public function EditPeliculas($nombre,$descrip,$url,$img,$cat,$idioma,$calidad,$id){
		$sql = Conexion::conexion()->prepare("UPDATE peliculas SET nombre ='".$nombre."', descripcion='".$descrip."', url='".$url."',img='".$img."', id_categoria='".$cat."', id_idioma='".$idioma."', calidad='".$calidad."' WHERE id=".$id);
		$sql->execute();	
	}
	public function CreateSerie($nombre,$descripcion,$img,$idioma,$estado){
		$sql = Conexion::conexion()->prepare("INSERT INTO series (nombre, descripcion, img, id_idioma, estado)
											  VALUES ('".$nombre."','".$descripcion."','".$img."','".$idioma."','".$estado."')");
        $sql->execute();
	}
	public function CrearTableCapitulosSerie($nombretabla){
		$sql=Conexion::conexion()->prepare("CREATE TABLE ".$nombretabla." (
											id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
											serie_id INT(11) NOT NULL,
											cap_num INT(11) NOT NULL,
											nombre_cap VARCHAR(50) NOT NULL,
											url VARCHAR(100) NOT NULL,
											temporada INT(11) NOT NULL,
											fecha TIMESTAMP NOT NULL );

											ALTER TABLE ".$nombretabla."
  											ADD KEY serie_id (serie_id);

  											ALTER TABLE ".$nombretabla."
  											ADD CONSTRAINT ".$nombretabla."_ibfk_1
  											FOREIGN KEY (serie_id) REFERENCES series (id)
  											ON DELETE NO ACTION ON UPDATE CASCADE; ");
		$sql->execute();
	}
	public function EditSeries($nombre,$descripcion,$img,$idioma,$estado,$id){
		$sql = Conexion::conexion()->prepare("UPDATE series SET nombre ='".$nombre."', descripcion='".$descripcion."',img='".$img."',
		 id_idioma='".$idioma."', estado='".$estado."' WHERE id=".$id);
		$sql->execute();	
	}
  public function ListarCapSerie($tabla){
        $sql = Conexion::conexion()->prepare("SELECT * FROM ".$tabla);
        $sql->execute();
      
        while ($datos = $sql->fetch()) {
          echo "<tr>
              
              <td>".$datos[2]."</td>
              <td>".$datos[3]."</td>
              <td><a href='".$datos[4]."' target='_blank'>".$datos[4]."</a></td>
              <td>".$datos[5]."</td>
              <td>".$datos[6]."</td>
              <td><a href='index.php?op=verdetallesdeserie&ver=".$datos[0]."'>Ver</a></td>
          </tr>";
          
        }
  }
  public function AgregarCap($tabla,$idserie,$capnum,$nombrecap,$url,$temporada,$fecha){
    $sql=Conexion::conexion()->prepare("INSERT INTO ".$tabla." (serie_id, cap_num, nombre_cap, url, temporada, fecha)
                                       VALUES ('".$idserie."','".$capnum."','".$nombrecap."','".$url."','".$temporada."','".$fecha."')");
    $sql->execute();
  }
}
?>
