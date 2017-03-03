<?php /**
* 
*/
include('../../model/Admin.php');
class ContenidoAdmin extends Admin{
	
	public function Listarcategorias(){
		return Admin::ListarSelect('categorias');
	}
	public function Listaridiomas(){
		return Admin::ListarSelect('idioma');
	}
	public function ListarGeneroseries(){
		return Admin::ListarSelect('genero_series');
	}
  	
} 
?>