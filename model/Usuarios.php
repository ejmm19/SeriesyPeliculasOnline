<?php 

/**
* 
*/
include('Conexion.php');
class Usuarios extends Conexion{

	public function Login($email,$password){			
		$sql = Conexion::conexion()->prepare("SELECT * FROM usuarios WHERE correo = '".$email."' AND password = '".$password."' ");
        $sql->execute();
        $datos = $sql->fetch();
        if (($datos[3] !== $email && $datos[4] === $password) or ($datos[3] == $password && $datos[4] !== $password) or ($datos[3] !== $email && $datos[4] !== $password)) {
              	echo "<script>alert('Los Valores No Coincidens');</script>";
              	echo "<script>window.location='./index.php';</script>";
        }else{
            session_start();
            $_SESSION['username'] = utf8_decode($datos[1])." ".utf8_decode($datos[2]);
            echo "<script>window.location='./panel/index.php';</script>";
            }
            
		}
		
	}
?>