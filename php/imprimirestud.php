<?php

//DomPDF

require_once('class.ezpdf.php');
$pdf =& new Cezpdf('letter','portrait');
$pdf->selectFont('../fonts/courier.afm');
$pdf->ezSetCmMargins(1.5,1.5,1.5,1.5);

//==========ENCABEZADO============
$pdf->addJpegFromFile("../images/escudo_de_luz_peq.jpg",30,690,50,60);
$pdf->addJpegFromFile("../images/escudo_de_luz_col.jpg",530,690,50,60);
$pdf->ezText("<b>LA UNIVERSIDAD DEL ZULIA</b>", 16, array ('justification' => 'center'));
$pdf->ezText("<b>NUCLEO COSTA ORIENTAL DEL LAGO</b>", 12, array ('justification' => 'center'));
$pdf->ezText("<b>PROGRAMA HUMANIDADES Y EDUCACION</b>", 12, array ('justification' => 'center'));
$pdf->ezText("<b>EDUCACION MENCION INFORMATICA</b>", 12, array ('justification' => 'center'));
$pdf->ezText("\n", 12);
$pdf->ezText("<b>REGISTRO DE NOTAS</b>\n", 12, array ('justification' => 'center'));
//==========ENCABEZADO============

include ('conexion.php');

$ced=$_GET['ced'];
$per=$_GET['per'];
$query = mysql_query("SELECT * FROM estudiantes WHERE cedula='$ced' and periodo='$per' ORDER BY apellido") or die (mysql_error());
$filas= mysql_num_rows($query);
$data1=mysql_fetch_array($query);
$nom=$data1['nombre'];
$ape=$data1['apellido'];
$query = mysql_query("SELECT * FROM estudiantes WHERE cedula='$ced' and periodo='$per' ORDER BY apellido") or die (mysql_error());
$ixx = 0;
while($datatmp = mysql_fetch_assoc($query)){
    $ixx = $ixx+1;
    $datatmp['notafinal2']=round(($datatmp['notafinal']*20)/100);
    $data[] = array_merge($datatmp, array('num'=>$ixx));     
}

$titles = array( 
		'num'=>'<b>#</b>',
                'materia'=>'<b>Materia</b>',
		'seccion'=>'<b>Seccion</b>',
                'nota1'=>'<b>Nota1</b>',
                'nota2'=>'<b>Nota2</b>',
                'nota3'=>'<b>Nota3</b>',
                'nota4'=>'<b>Nota4</b>',
                'nota5'=>'<b>Nota5</b>',
                'nota6'=>'<b>Nota6</b>',
                'nota7'=>'<b>Nota7</b>',
                'nota8'=>'<b>Nota8</b>',
                'notafinal'=>'<b>%</b>',
                'notafinal2'=>'<b>DEF</b>',
            );
$options = array(
                'shadeCol'=>array(0.9,0.9,0.9),
                'xOrientation'=>'center',
                'width'=>580,            
            );

$pdf->ezText("<b>NOMBRE:   </b>".$nom, 11, array ('justification' => 'left'));
$pdf->ezText("<b>APELLIDO: </b>".$ape, 11, array ('justification' => 'left'));
$pdf->ezText("<b>CEDULA: </b>".$ced, 11, array ('justification' => 'left'));
$pdf->ezText("<b>PERIODO: </b>".$per, 11, array ('justification' => 'left'));
$pdf->ezText("\n", 10);
$pdf->ezTable($data,$titles, '', $options);
$pdf->ezText("\n\n\n", 10);

$pdf->ezText("<b>Fecha:</b> ".date("d/m/Y"), 9, array ('justification' => 'right'));
$pdf->ezText("<b>Hora:</b> ".date("H:i:s")."\n\n", 9, array ('justification' => 'right'));
//$pdf->utf8_decode($pdf);
ob_end_clean();
$pdf->ezStream();
?>
