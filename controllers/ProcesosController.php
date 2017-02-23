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
if (isset($_POST['nombreedit'])) {
	$file = $_FILES['caratulapeliculaedit']['name'];
	if ($file!=="") {
		$admin->SubirImg($_FILES['caratulapeliculaedit'],'caratulas');
	}else{
		$file=$_POST['imgold'];	
	}	
	$admin->EditPeliculas($_POST['nombreedit'],$_POST['descripcionedit'],$_POST['urledit'],
		$file,$_POST['categoriaedit'],$_POST['idiomaedit'],$_POST['calidadedit'],$_POST['id']);
	echo "<script>window.location='../admin/panel/index.php?op=verdetalles&ver=".$_POST['id']."';</script>";
}




 ?>