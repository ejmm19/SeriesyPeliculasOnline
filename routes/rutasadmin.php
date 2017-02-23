<?php

include('../../controllers/NavegacionAdmin.php');
//include('../../controllers/ContenidoAdmin.php');
//$contadmin= new ContenidoAdmin();
$navegacionadmin= new NavegacionAdmin();
if (!isset($_GET['op'])||$_GET['op']=='') {
    $navegacionadmin->dashboard();
}elseif ($_GET['op']=='estadisticas') {
	$navegacionadmin->estadisticas();
}elseif ($_GET['op']=='registro') {
	$navegacionadmin->registro();
}elseif ($_GET['op']=='registroserie') {
	$navegacionadmin->registroserie();
}elseif ($_GET['op']=='animes') {
	$navegacionadmin->animes();
}elseif ($_GET['op']=='config') {
	$navegacionadmin->config();
}elseif ($_GET['op']=='listapeliculas') {
	$navegacionadmin->listapeliculas();
}elseif ($_GET['op']=='listaseries') {
	$navegacionadmin->listaseries();
}elseif ($_GET['op']=='verdetalles') {
	$navegacionadmin->VerDetalles();
}


 ?>
