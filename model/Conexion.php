<?php
/**
* 
*/
class Conexion
{
	
	function __construct(){
		
	}

	function conexion(){
    	$usuario ="root";
	    $contrasena = ""; 
	    $con = new PDO('mysql:host=localhost;dbname=seriesypeliculas', $usuario, $contrasena,
	    				array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
	    				PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
	    
	    return $con;
    }

}
?>