<?php
$aviso = "";
if ($_POST['email'] != "") {
	// email de destino
	$email = "ajazuajer@gmail.com";
	
	// Cuerpo del mensaje
	$mensaje = "----------------------------------- \n";
	$mensaje.= "  Informacion de Contacto       \n";
	$mensaje.= "----------------------------------- \n";
	$mensaje.= "NOMBRE:   ".$_POST['nombre']."\n";
	$mensaje.= "APELLIDO: ".$_POST['apellido']."\n";
	$mensaje.= "EMAIL:    ".$_POST['email']."\n";
	$mensaje.= "TELEFONO: ".$_POST['telefono']."\n";
	$mensaje.= "FECHA:    ".date("d/m/Y")."\n";
	$mensaje.= "HORA:     ".date("h:i:s a")."\n";
	$mensaje.= "---------------------------------- \n\n";
	$mensaje.= $_POST['mensaje']."\n\n";
	$mensaje.= "---------------------------------- \n";
	$mensaje.= "Enviado desde http://www.elcodice.hol.es \n";
	
	// headers del email
	$headers = "From: ".$_POST['email']."\r\n";

	// asunto del email
	$subject = "Mensaje de ".$_POST['nombre']." ".$_POST['apellido']."\r\n";	

	// Enviamos el mensaje
	if (mail($email, $subject, $mensaje, $headers)==true) {
		echo "<html><head></head><body><script type='text/javascript'>alert('Su mensaje fue enviado');history.go(-1);</script></body></html>";
	} else {
		echo "<html><head></head><body><script type='text/javascript'>alert('Error en el envio');history.go(-1);</script></body></html>";
	}
}
?>