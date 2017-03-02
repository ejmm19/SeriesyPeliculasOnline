<?php 

include('../model/Public.php');
//include('../model/Public.php');
$publico = new Publico();

if (isset($_POST['correo'])) {
	$publico->EnviarMensaje($_POST['correo'],$_POST['mensaje'],$_POST['fecha']);
	echo 'Mensaje Recibido';
}else{
	echo "El Mensaje no se Ha podido recibir";
}


 ?>