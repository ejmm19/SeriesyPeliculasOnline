<?php 
include('model/Public.php');
$public0=new Publico();
if (isset($_GET['op'])) {
	switch ($_GET['op']) {
    case 'verpeli':
        include('php/vistas/verpelicula.php');
    break;
    case 'verseries':
    	include('php/vistas/verseries.php');
    break;
    case 'estrenos':
    	include('php/vistas/public/estrenos.php');
    break;
    case 'recomendadas':
    	include('php/vistas/public/recomendadas.php');
    break;
    case 'calidad':
    	include('php/vistas/public/calidad.php');
    break;
    case 'categorias':
    	include('php/vistas/public/categorias.php');
    	switch ($_GET['cat']) {
    		case 'action':
    			echo "action";
    			break;
    		case 'adventure':
    			echo "adventure";
    			break;
    		case 'comedy':
    			echo "comedy";
    			break;
    		case 'drama':
    			echo "drama";
    			break;
    		case 'belic':
    			echo "Belic";
    			break;
    		case 'fantastic':
    			echo "Fantastic";
    			break;
    		case 'kids':
    			echo "Kids";
    			break;
    		case 'musical':
    			echo "Musical";
    			break;
    		case 'romance':
    			echo "Romance";
    			break;
    		case 'terror':
    			echo "Terror";
    			break;
    		case 'suspenso':
    			echo "Suspenso";
    			break;
    		
    		default:
    			# code...
    			break;
    	}
    break;
    default:
    break;
}
}




?>