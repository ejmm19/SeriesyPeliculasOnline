$(document).ready(function(){

	$(window).on('scroll', function(){
		if ($(window).scrollTop()>10) {
			$('#nav').addClass('navb');
		}else{
			$('#nav').removeClass('navb');
		}
	});

		//AJAX PARA EL LOGIN DE ADMIN
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

	 //AJAX PARA EL ENVIO DE MENSAJE DESDE LA PAGINA
	 $("#formcontact").submit(function(){ 		
	    $.ajax({
	           type: "POST",
	           url: "controllers/PublicController.php",
	           data: $("#formcontact").serialize(), // Adjuntar los campos del formulario enviado.
	           success: function(data){
	               
	            $("#resultado").html("<div class='alert alert-dismissible alert-success'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>"+data+"!</strong>Pronto uno de Nuestros Administradores le responderá</div>");
	            $('#resultado').fadeOut(6000); 
	            document.getElementById('inputEmail').value = "";
	            document.getElementById('textArea').value = "";
	               //$("#inputEmail").empty();
	                // Mostrar la respuestas del script PHP.
	           },
	           beforeSend: function(){
	           	$("#resultado").html("<p align='center'><img src='img/loading1.gif' width='10%'></p>");
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



	 //MOSTRAR LA IMAGEN DEL ARCHIVO QUE SE CARGA DESDE EL FORMULARIO DE SERIES Y EN EL DE PELICULAS
  $('#caratulapeliculaedit').change(function(e) {
      addImage(e); 
    });
     function addImage(e){
      var file = e.target.files[0],
      imageType = /image.*/;  

      if (!file.type.match(imageType))
       return;  

      var reader = new FileReader();
      reader.onload = fileOnload;
      reader.readAsDataURL(file);
     }
  
     function fileOnload(e) {
      var result=e.target.result;
      $('#imgSalida').attr("src",result);
     }
    

	 //guardar datos de peliculas
	 
	 $('.zoomimg').hover(function(){
	 	
	 	$('.informacion').css('display','block');
	 	}, function(){
	 		
	 	$('.informacion').css('display','none');
	 });

	 
	
});