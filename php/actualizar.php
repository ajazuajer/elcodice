<?php
include ("conexion.php");

$mat= $_POST['materia'];
$sec= $_POST['seccion'];
$per= $_POST['periodo'];
$rows= $_POST['nume'];

if ($rows > 0) { 
for ($i=0; $i<$rows; $i++) { 
	$id = $_POST["ide"][$i];
	$n1 = $_POST['nota1'][$i];
	$n2 = $_POST['nota2'][$i];
	$n3 = $_POST['nota3'][$i];
	$n4 = $_POST['nota4'][$i];
	$n5 = $_POST['nota5'][$i];
	$n6 = $_POST['nota6'][$i];
	$n7 = $_POST['nota7'][$i];
	$n8 = $_POST['nota8'][$i];
	$n9 = $_POST['nota9'][$i];
	$ndef = $_POST['suma'][$i];
	$secc = $_POST['secc'][$i];

	$res = mysql_query("UPDATE estudiantes SET seccion='$secc', nota1='$n1', nota2='$n2', nota3='$n3', nota4='$n4', nota5='$n5', nota6='$n6', nota7='$n7', nota8='$n8', nota9='$n9', notafinal='$ndef' WHERE id='$id'") or die (mysql_error());
}
	if ($res){
		echo "<html><head></head><body><script type='text/javascript'>alert('Los datos han sido actualizados');history.go(-1);</script></body></html>";
	}else{
		echo "<html><head></head><body><script type='text/javascript'>alert('Los datos NO han sido actualizados');history.go(-1);</script></body></html>";
	}
}
mysql_close($con);
?>
