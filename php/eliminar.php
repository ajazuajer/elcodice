<?php
include ("conexion.php");
$id= $_GET['id'];
	$res = mysql_query("DELETE FROM estudiantes WHERE id='$id'", $con) or die (mysql_error());
	if ($res){
		echo "<html><head></head><body><script type='text/javascript'>alert('Registro eliminado. Debe actualizar la pagina.');history.go(-1);</script></body></html>";
	}else{
		echo "<html><head></head><body><script type='text/javascript'>alert('Registro NO eliminado');history.go(-1);</script></body></html>";
	}
mysql_close($con);
?>