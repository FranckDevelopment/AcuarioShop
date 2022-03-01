<?php 
    require_once "../Global/conexion.php";
    require_once "../Classes/Metodos_Productos.php";

    $rfc=$_POST['txtRFC'];
    $nom=$_POST['txtNom'];
    $ape=$_POST['txtApe'];
    $mail=$_POST['txtmail'];
    $pass=$_POST['txtpass'];
    $tel=$_POST['numtel'];
    
    $datos=array(
        $rfc,$nom,$ape,$mail,$pass,$tel
    );

    $obj=new Metodos_USU();

    if($obj->insert_USU($datos)==1){
        header("location:../index.php");
    }
    else{
        echo "fallo al insertar";
    }

    echo $datos;
    

?>