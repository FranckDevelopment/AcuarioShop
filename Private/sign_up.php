
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>Acuario - Shop </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
        <link rel="icon" type="image/x-icon" href="../assets/img/logo_black.png" />
        <link href="../css/styles2.css" rel="stylesheet" />
    </head>
    <body>
        <video class="bg-video" playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop"><source src="../assets/mp4/bg.mp4" type="video/mp4" /></video>
        <div class="masthead">
            <div class="masthead-content text-white">
                <div class="container-fluid px-4 px-lg-0">
                    <center><img src="../assets/img/logo_white.png" > </center> 
                    <center><h1 class="fst-italic lh-1 mb-4">Refaccionaria Acuario</h1></center>
                    <center><h2 class="fst-italic lh-1 mb-4">Registrate</h2></center>

                    <p class="mb-5"></p>
                    <form method="POST" action="../Temp/insertar_usu.php" >
                        <br>
                        <input type="txt" class="form-control" name="txtRFC" placeholder="Ingresa tu RFC" id="txtRFC">
                        <br>
                        <input type="txt" class="form-control" name="txtNom" placeholder="Ingresa tu nombre" id="txtNom">
                        <br>
                        <input type="txt" class="form-control" name="txtApe" placeholder="Ingresa tus apellidos" id="txtApe">
                        <br>
                        <input type="email" class="form-control" name="txtmail" placeholder="Ingresa tu Correo" id="txtmail">
                        <br>
                        <input type="password" class="form-control" name="txtpass" placeholder="Ingresa una contraseña" id="txtpass">
                        <br>
                        <input type="tel" class="form-control" name="numtel" placeholder="Ingresa un Telefono " id="numtel">
                        <br>
                       <center><input class="btn btn-warning " type="submit" value="Registrate"></center> 
                    </form>
                </div>
            </div>
        </div>
        <div class="social-icons">
            <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
                <div class="contenedor-icono"><a class="btn btn-dark m-3" href="#!"><i class="bi bi-facebook"></i></a></div>
                <div class="contenedor-icono"><a class="btn btn-dark m-3" href="#!"><i class="bi bi-whatsapp"></i></a></div>
                <div class="contenedor-icono"><a class="btn btn-dark m-3" href="#!"><i class="bi bi-instagram"></i></a></div>
            </div>
        </div>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
