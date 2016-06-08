<?php
    include ("conexion.php");
    $mat = $_POST['materia'];
    $sec = $_POST['seccion'];
    $per = $_POST['periodo'];
    if ($mat=='') {
    	echo "<html><head></head><body><script type='text/javascript'>alert('Debe Introducir todos los Datos');</script><script>history.go(-1);</script></body></html>";
    }else{
    	$query = mysql_query("SELECT * FROM estudiantes WHERE materia = '$mat' and seccion='$sec' and periodo='$per' ORDER BY apellido") or die (mysql_error());
    	$data=mysql_fetch_array($query);
    	$rows=mysql_num_rows($query);
    	if($data['materia'] != $mat) {
    		echo "<html><head></head><body><script type='text/javascript'>alert('No se encontraron Datos');</script><script>history.go(-1);</script></body></html>";
    	}else{
    		$query = mysql_query("SELECT * FROM estudiantes WHERE materia = '$mat' and seccion='$sec' and periodo='$per'ORDER BY apellido") or die (mysql_error());
    		$data=mysql_fetch_array($query);
    		$id=$data['id'];
    		$nuc=$data['nucleo'];
    		$car=$data['carrera'];
    		$mat=$data['materia'];
    		$sec=$data['seccion'];
    		$per=$data['periodo'];
    		$query = mysql_query("SELECT * FROM estudiantes WHERE materia = '$mat' and seccion='$sec' and periodo='$per'ORDER BY apellido") or die (mysql_error());
    	}
    }
    mysql_close($con);
?>