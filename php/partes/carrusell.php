<div class="col-md-12" style="height:60px;background:white;">              
</div>
  <div class="carousel slide" id="carousel-724995" style="background:white;">
     <div class="carousel-inner">
       <div class="item active">
         <img alt="Carousel Bootstrap First" src="img/quien-formara-parte-de-justice-league.jpg" />
       </div>
       <?php 
         include('model/Public.php');       
         $public = new Publico();
         $public->MostrarSlider();
       ?>                                 
    </div> 
  </div>
           