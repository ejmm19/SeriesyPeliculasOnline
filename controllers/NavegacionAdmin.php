<?php 


class NavegacionAdmin{

	public function dashboard(){
		include('../../php/vistas/admin/dashboardadmin.php'); 
	}
	public function slider(){
		include('../../php/vistas/admin/slider.php'); 
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
	public function VerDetalles(){
		include('../../php/vistas/admin/verdetalles.php'); 	
	}
	public function Editar(){
		include('../../php/vistas/admin/editar.php'); 	
	}
	public function VerDetallesSerie(){
		include('../../php/vistas/admin/verdetallesdeserie.php'); 		
	}
	public function EditarSerie(){
		include('../../php/vistas/admin/editarserie.php'); 	
	}public function Mensajes(){
		include('../../php/vistas/admin/mensajes.php'); 	
	}

}
 ?>