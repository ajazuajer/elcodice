<?php
include ("conexion.php");

$ced = $_POST['cedula'];
$mat = $_POST['materia'];
$per = $_POST['periodo'];
if ($ced=="") or ($mat=="") or ($per=="") {
	echo "<html><head></head><body><script type='text/javascript'>alert('Debe Introducir todos los Datos');</script><script>history.go(-1);</script></body></html>";
}else{
	$query = mysql_query("SELECT nombre,apellido,cedula,correo,telefono,nucleo,carrera,materia,seccion,periodo,nota1,nota2,nota3,nota4,nota5,nota6,nota7,nota8,nota9,notafinal FROM $table WHERE cedula = '$ced' and materia='$mat' and periodo='$per'" ) or die (mysql_error());
	$data=mysql_fetch_array($query);
	if($data['cedula'] != $ced) {
		echo "<html><head></head><body><script type='text/javascript'>alert('No se encontraron Datos');</script><script>history.go(-1);</script></body></html>";
	}else{		
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

	$nota1=$data['nota1'];
	$nota2=$data['nota2'];
	$nota3=$data['nota3'];
	$nota4=$data['nota4'];
	$nota5=$data['nota5'];
	$nota6=$data['nota6'];
	$nota7=$data['nota7'];
	$nota8=$data['nota8'];
	$nota9=$data['nota9'];
	$notaf=$data['notafinal'];
	$suma=$nota1+ $nota2+ $nota3+ $nota4+ $nota5+ $nota6+ $nota7+ $nota8+ $nota9;
	$porcent=($suma*20)/100;
	$query = mysql_query("SELECT nombre,apellido,cedula,correo,telefono,nucleo,carrera,materia,seccion,periodo,nota1,nota2,nota3,nota4,nota5,nota6,nota7,nota8,nota9,notafinal FROM $table WHERE cedula = '$ced' and materia='$mat' and periodo='$per'" ) or die (mysql_error());
	}
}
?>