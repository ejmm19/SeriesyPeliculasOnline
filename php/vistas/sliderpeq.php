<style type="text/css">
    .carousel-control {
  padding-top:10%;
  width:5%;
}
</style>
<div class="container" style="width: 100%">
    <div class="col-md-12">
         <center><h5>Películas Sugeridas Para Ti</h5></center>

        <div class="well">
            <div id="myCarousel" class="carousel slide">
                
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="row">
                            <?php $publico->MostrarRelacionadas($publico->Ver($_GET['ver'],'peliculas')['id_categoria']) ?>
                        </div>
                        <!--/row-->
                    </div>
                    <!--/item-->
                    <div class="item">
                        <div class="row">
                            <?php $publico->MostrarRelacionadas($publico->Ver($_GET['ver'],'peliculas')['id_categoria']) ?>
                            </div>
                        </div>
                        <!--/row-->
                    </div>
                    <!--/item-->
                    <!--/item-->
                </div>
                <!--/carousel-inner
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>

                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>--> 
            </div>
            <!--/myCarousel-->
        </div>
        <!--/well-->
    </div>
</div>