<?php 
	
/**
* 
*/
include('../model/Usuarios.php');

	if (isset($_POST['email'])) {
		$obj = new Usuarios();
		$obj->Login($_POST['email'],$_POST['password']);
	}
	if (isset($_POST['cerrarsession'])) {
		session_start();
		session_destroy();
	exit();
	}
	


?>