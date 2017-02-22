<?php

include('controllers/navegacion.php');
$navegacion= new Navegacion();
if (!isset($_GET['op'])||$_GET['op']=='') {
    $navegacion->inicio();
}elseif ($_GET['op']=='series') {
	$navegacion->series();
}elseif ($_GET['op']=='peliculas') {
	$navegacion->peliculas();
}elseif ($_GET['op']=='animes') {
	$navegacion->animes();
}


 








 ?>
