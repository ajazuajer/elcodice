<?php


include ("conexion.php");

$nom = $_POST['nombre'];
$ape = $_POST['apellido'];
$ced = $_POST['cedula'];
$cor = $_POST['correo'];
$tel = $_POST['telefono'];
//$nuc = $_POST['nucleo'];
$nuc = 'COL';
$car = $_POST['carrera'];
$mat = $_POST['materia'];
$sec = $_POST['seccion'];
$per = $_POST['periodo'];

if (($ced!="") or ($nom!="")  or ($ape!="")  or ($cor!="")  or ($tel!="")  or ($nuc!="")  or ($car!="") or ($mat!="")  or ($sec!="") or ($per!="")){
	mysql_query("INSERT INTO $table (nombre,apellido,cedula,correo,telefono,nucleo,carrera,materia,seccion,periodo) 
	VALUES ('$nom','$ape','$ced','$cor','$tel','$nuc','$car','$mat','$sec','$per')", $con) or die ("pro_insert_db");

	
echo "<html><head></head><body><script type='text/javascript'>alert('Registro Correcto');</script><script>history.go(-1);</script></body></html>";



	}

else {
		echo "<html><head></head><body><script type='text/javascript'>alert('Debe Introducir todos los Datos');</script><script>history.go(-1);</script></body></html>";
}
   

mysql_close($con);
?>