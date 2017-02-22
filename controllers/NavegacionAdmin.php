<?php 


class NavegacionAdmin{

	public function dashboard(){
		include('../../php/vistas/admin/dashboardadmin.php'); 
	}
	public function estadisticas(){
		include('../../php/vistas/admin/estadisticas.php'); 
	}
	public function registro(){
		include('../../php/vistas/admin/registro.php'); 
	}
	public function registroserie(){
		include('../../php/vistas/admin/registroserie.php'); 	
	}	
	public function animes(){
		include('../../php/vistas/admin/animes.php'); 
	}
	public function config(){
		include('../../php/vistas/admin/config.php'); 
	}
	public function listapeliculas(){
		include('../../php/vistas/admin/listapeliculas.php'); 
	}
	public function listaseries(){
		include('../../php/vistas/admin/listaseries.php'); 
	}
	

}
 ?>