<?php

//DomPDF

require_once('class.ezpdf.php');
$pdf =& new Cezpdf('letter','portrait');
$pdf->selectFont('../fonts/courier.afm');
$pdf->ezSetCmMargins(1.5,1.5,1.5,1.5);

$host = "mysql.hostinger.es";
$user = "u459825808_user";
$db = "u459825808_estud";
$pw = "14449706";

$con = mysql_connect ($host, $user, $pw) 
or die ("Pro_server");


mysql_select_db ($db,$con) 
or die ("pro_select_db");





$query = mysql_query("SELECT * FROM estudiantes") or die (mysql_error());
$filas= mysql_num_rows($query);

$ixx = 0;
while($datatmp = mysql_fetch_assoc($query)){
    $ixx = $ixx+1;
    $data[] = array_merge($datatmp, array('num'=>$ixx));     
}
$titles = array(                 
                'nombre'=>'<b>NOMBRE</b>',
                'apellido'=>'<b>APELLIDO</b>',
                'cedula'=>'<b>CEDULA</b>',
                'correo'=>'<b>CORREO</b>',
                'telefono'=>'<b>TELEFONO</b>',
                'nucleo'=>'<b>NUCLEO</b>',
                'carrera'=>'<b>CARRERA</b>',
		'materia'=>'<b>MATERIA</b>',
		'seccion'=>'<b>SECCION</b>',
		'periodo'=>'<b>PERIODO</b>',
            );
                       
$options = array(
                'shadeCol'=>array(0.9,0.9,0.9),
                'xOrientation'=>'center',
                'width'=>580,            
            );

$pdf->addJpegFromFile("../images/escudo_de_luz_peq.jpg",30,690,50,60);
$pdf->addJpegFromFile("../images/escudo_de_luz_col.jpg",530,690,50,60);

$pdf->ezText("<b>LA UNIVERSIDAD DEL ZULIA</b>", 18, array ('justification' => 'center'));
$pdf->ezText("<b>NUCLEO COSTA ORIENTAL DEL LAGO</b>", 12, array ('justification' => 'center'));
$pdf->ezText("<b>PROGRAMA HUMANIDADES Y EDUCACION</b>", 12, array ('justification' => 'center'));
$pdf->ezText("<b>EDUCACION MENCION INFORMATICA</b>", 12, array ('justification' => 'center'));
$pdf->ezText("\n\n\n", 12);
$pdf->ezText("<b>REGISTRO ESTUDIANTIL</b>\n", 12, array ('justification' => 'center'));

//$pdf->ezText($txttit, 12);
$pdf->ezTable($data, $titles, '', $options);

$pdf->ezText("\n\n\n", 10);
$pdf->ezText("<b>Fecha:</b> ".date("d/m/Y"), 9, array ('justification' => 'right'));
$pdf->ezText("<b>Hora:</b> ".date("H:i:s")."\n\n", 9, array ('justification' => 'right'));
ob_end_clean();
$pdf->ezStream();
?>
