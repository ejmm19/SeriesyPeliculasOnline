<?php 
include('../model/Admin.php');
$admin = new Admin();


if (isset($_FILES['caratulapelicula'])) {
	$admin->SubirImg($_FILES['caratulapelicula'],'caratulas');
	$admin->CreatePelicula($_POST['nombre'],$_POST['descripcion'],$_POST['url'],
		$_FILES['caratulapelicula']['name'],$_POST['categoria'],
		$_POST['idioma'],$_POST['calidad']);
	echo "<script>window.location='../admin/panel/index.php?op=listapeliculas';</script>";
}
if (isset($_FILES['caratulaserie'])) {
	$admin->SubirImg($_FILES['caratulaserie'],'seriesportada');
	$admin->CreateSerie($_POST['nombreserie'],$_POST['descripcionserie'],$_FILES['caratulaserie']['name'],$_POST['idiomaserie'],'Emision');
	$admin->CrearTableCapitulosSerie(strtolower("z_capitulos_".str_replace(' ', '', $_POST['nombreserie'])));
	echo "<script>window.location='../admin/panel/index.php?op=listaseries';</script>";
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
if (isset($_POST['nombreserieedit'])) {
	$file = $_FILES['portadaserieedit']['name'];
	if ($file!=="") {
		$admin->SubirImg($_FILES['portadaserieedit'],'seriesportada');
	}else{
		$file=$_POST['imgold'];	
	}	
	$admin->EditSeries($_POST['nombreserieedit'],$_POST['descripcionserieedit'],$file,$_POST['idiomaserieedit'],
		$_POST['estadoserieedit'],$_POST['id']);
	echo "<script>window.location='../admin/panel/index.php?op=verdetallesdeserie&ver=".$_POST['id']."';</script>";
}





if (isset($_POST['eliminar'])) {
	//echo $_POST['eliminar'];
	$admin->Eliminar($_POST['eliminar'],'peliculas');
	echo "<script>window.location='../admin/panel/index.php?op=listapeliculas';</script>";
}
if (isset($_POST['eliminarserie'])) {
	//echo $_POST['eliminar'];
	$admin->Eliminar($_POST['eliminarserie'],'series');
	echo "<script>window.location='../admin/panel/index.php?op=listaseries';</script>";
}

if (isset($_POST['nombrecap'])) {
	$admin->AgregarCap(strtolower("z_capitulos_".str_replace(' ', '', $_POST['nombreserie'])),$_POST['serieid'],
		$_POST['numerocap'],$_POST['nombrecap'],$_POST['urlcap'],$_POST['temporada'],$_POST['fecha']);
	
	echo "<script>window.location='../admin/panel/index.php?op=verdetallesdeserie&ver=".$_POST['serieid']."';</script>";
}




 ?>