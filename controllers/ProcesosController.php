<?php 
include('../model/Admin.php');
$admin = new Admin();
if (isset($_FILES['caratulapelicula'])) {
	$admin->SubirImg($_FILES['caratulapelicula'],'caratulas');
	$admin->CreatePelicula($_POST['nombre'],$_POST['descripcion'],$_POST['url'],
		$_FILES['caratulapelicula']['name'],$_POST['categoria'],
		$_POST['idioma'],$_POST['calidad']);
	echo "<script>window.location='../admin/panel/index.php?op=registro';</script>";
}



 ?>