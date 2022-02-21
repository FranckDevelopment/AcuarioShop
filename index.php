<?php
    include 'global/config.php';
    include 'global/conexion.php';
    //<!-- header -->
    include 'templates/header.php';

?>
<!-- Section-->

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">'Acuario-Shop'</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
        <div class="social-icons">
                <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
                    <div class="contenedor-icono"><a class="btn btn-primary m-1" href="#!"><i class="bi bi-facebook" ></i> @Acuario-Shop</a></div>
                    </br>
                    <div class="contenedor-icono"><a class="btn btn-success m-1" href="#!"><i class="bi bi-whatsapp" ></i> Whatsapp-Acuario</a></div>
                    </br>
                    <div class="contenedor-icono"><a class="btn btn-danger m-1" href="#!"><i class="bi bi-instagram" ></i> @Acuario</a></div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
        </div>
        </div>
    </div>
    </div>
    <section class="py-5">
        <div class="container px-12 px-lg-5 mt-5">
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <?php
                $sentencia=$pdo->prepare("SELECT * FROM Productos");
                $sentencia->execute();
                $lista = $sentencia->fetchAll(PDO::FETCH_ASSOC);
                ?>
                <?php 
                foreach($lista as $item){?>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->

                        <img 
                        class="card-img-top" 
                        src="assets/img/<?php echo $item['URL_Foto']?>" 
                        data-bs-toggle="popover" 
                        title="<?php echo $item['Nombre']?>" 
                        data-bs-trigger="hover"
                        data-bs-content="<?php echo $item['Descripcion']?>"
                        />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div clss="fw-bolder"><?php echo $item['Nombre']?></h5>
                                <!-- Product name-->
                                <h6>Catntidad:<?php echo $item['Unidades']?> </h6>
                                <h5 clauct price-->
                                $<?php echo $item['Precio']?>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                        </div>
                    </div>
                </div>
                <?php }?>
            </div>
        </div>
    </section>
    <!-- Footer-->
    <?php include 'templates/footer.php';?>
    </body>
</html>
