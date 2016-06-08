<?php
include ("conexion.php");

$ced = $_POST['cedula'];
$nom = $_POST['nombre'];
$ape = $_POST['apellido'];
$cla = $_POST['clave'];

if (($ced=="") or
 ($nom=="") or ($ape=="") or ($cla=="")) {
echo "<html><head></head><body><script type='text/javascript'>alert('Debe introducir todos los Datos');</script><script>history.go(-1);</script></body></html>";
}else{
	$query = mysql_query("SELECT * FROM usuarios WHERE cedula = '$ced'" ) or die (mysql_error());
	$data = mysql_fetch_array($query);
	
	if(($data['nombre']!=$nom) or ($data['apellido']!=$ape) or ($data['cedula']!=$ced) or ($data['clave']!=$cla)) {
		echo "<html><head></head><body><script type='text/javascript'>alert('No se encontraron Datos.');</script><script>history.go(-1);</script></body></html>";
	}else{
		$ced = $data['cedula'];
		$nom = $data['nombre'];
		$ape = $data['apellido'];
		$cla = $data['clave'];
	}
}
?>