$(document).ready(function(){

	$(window).on('scroll', function(){
		if ($(window).scrollTop()>10) {
			$('#nav').addClass('navb');
		}else{
			$('#nav').removeClass('navb');
		}
	});

	 $("#entrar").click(function(){
 		var url = "../controllers/LoginController.php"; // El script a dónde se realizará la petición.
	    $.ajax({
	           type: "POST",
	           url: url,
	           data: $("#formulario").serialize(), // Adjuntar los campos del formulario enviado.
	           success: function(data){
	               
	               	document.write(data);
	               
	                // Mostrar la respuestas del script PHP.
	           },
	           beforeSend: function(){
	           	
	           },
	           error: function(data){
                /*
                * Se ejecuta si la peticón ha sido erronea
                * */
                alert("Problemas al tratar de enviar el formulario");
            }
	         });

	    return false; // Evitar ejecutar el submit del formulario.
	 });

	 $("#guardarpelicula").click(function(){
 		var url = "../controllers/ProcesosController.php"; // El script a dónde se realizará la petición.
	    $.ajax({
	           type: "POST",
	           url: url,
	           data: $("#formpeliculas").serialize(), // Adjuntar los campos del formulario enviado.
	           success: function(data){
	               
	               	alert(data);
	               
	                // Mostrar la respuestas del script PHP.
	           },
	           beforeSend: function(){
	           	
	           },
	           error: function(data){
                /*
                * Se ejecuta si la peticón ha sido erronea
                * */
                alert("Problemas al tratar de enviar el formulario");
            }
	         });

	    return false; // Evitar ejecutar el submit del formulario.
	 });

	 //guardar datos de peliculas
	 


	 
	
});