<?php
include ("conexion.php");
$ced = $_POST['cedula'];

$per = $_POST['periodo'];
if (($ced=="") or ($per=="")) {
	echo "<html><head></head><body><script type='text/javascript'>alert('Debe Introducir todos los Datos');</script><script>history.go(-1);</script></body></html>";
}else{
	$query = mysql_query("SELECT * FROM estudiantes WHERE cedula='$ced' and periodo='$per'") or die (mysql_error());
	$data=mysql_fetch_array($query);
	
	if($data['cedula'] != $ced) {
		echo "<html><head></head><body><script type='text/javascript'>alert('No se encontraron Datos');</script><script>history.go(-1);</script></body></html>";
	}else{
		$query = mysql_query("SELECT * FROM estudiantes WHERE cedula='$ced' and periodo='$per'") or die (mysql_error());
	$data=mysql_fetch_array($query);
	$nom=$data['nombre'];
	$ape=$data['apellido'];
	$ced=$data['cedula'];
	$cor=$data['correo'];
	$tel=$data['telefono'];
	$nuc=$data['nucleo'];
	$car=$data['carrera'];
	$mat=$data['materia'];
	$sec=$data['seccion'];
	$per=$data['periodo'];
		$query = mysql_query("SELECT * FROM estudiantes WHERE cedula='$ced' and periodo='$per'") or die (mysql_error());
		
	}
}
?>