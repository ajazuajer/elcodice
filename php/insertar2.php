<?php


include ("conexion.php");

$nom = $_POST['nombre'];
$ape = $_POST['apellido'];
$ced = $_POST['cedula'];
$cla = $_POST['clave'];
if (($ced!="") or ($nom!="")  or ($ape!="")  or ($cla!="")){
	mysql_query("INSERT INTO usuarios (cedula,nombre,apellido,clave) 
	VALUES ('$ced','$nom','$ape','$cla')", $con) or die ("pro_insert_db");

	
echo "<html><head></head><body><script type='text/javascript'>alert('Registro Correcto');</script><script>history.go(-1);</script></body></html>";


}

else {
	echo "<html><head></head><body><script type='text/javascript'>alert('Debe Introducir todos los Datos');</script><script>history.go(-1);</script></body></html>";
}
   

mysql_close($con);
?>