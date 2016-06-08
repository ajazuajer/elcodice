<?php

//DomPDF

require_once('class.ezpdf.php');
$pdf =& new Cezpdf('letter','portrait');
$pdf->selectFont('../fonts/courier.afm');
$pdf->ezSetCmMargins(1.5,1.5,1.5,1.5);
function puntos_cm ($medida, $resolucion=72){
   return ($medida/(2.54))*$resolucion; //2.54 cm/pulgada
}

include ('conexion.php');
$mat= $_GET['mat1'];
$sec= $_GET['sec1'];
$per= $_REQUEST['per1'];
$query = mysql_query("SELECT * FROM estudiantes WHERE materia='$mat' and seccion='$sec' and periodo='$per' ORDER BY apellido") or die (mysql_error());
$filas= mysql_num_rows($query);

$ixx = 0;
while($datatmp = mysql_fetch_assoc($query)){
    $ixx = $ixx+1;
    $data[] = array_merge($datatmp, array('num'=>$ixx));     
}

$titles = array( 
		'num'=>'<b>#</b>',                
                'nombre'=>'<b>NOMBRE</b>',
                'apellido'=>'<b>APELLIDO</b>',
                'cedula'=>'<b>CEDULA</b>',
                '<b>1</b>',
                '<b>2</b>',
                '<b>3</b>',
                '<b>4</b>',
                '<b>5</b>',
                '<b>6</b>',
                '<b>7</b>',
                '<b>8</b>',
                '<b>9</b>',
                '<b>10</b>',
                '<b>11</b>',
                '<b>12</b>',
                '<b>13</b>',
                '<b>14</b>',
                '<b>15</b>',
                '<b>16</b>',

            );
                       
$options = array(
                'shadeCol'=>array(0.9,0.9,0.9),
                'xOrientation'=>'center',
                'width'=>580,            
            );
//==========ENCABEZADO============
$pdf->addJpegFromFile("../images/escudo_de_luz_peq.jpg",30,690,50,60);
$pdf->addJpegFromFile("../images/escudo_de_luz_col.jpg",530,690,50,60);
$pdf->ezText("<b>LA UNIVERSIDAD DEL ZULIA</b>", 16, array ('justification' => 'center'));
$pdf->ezText("<b>NUCLEO COSTA ORIENTAL DEL LAGO</b>", 12, array ('justification' => 'center'));
$pdf->ezText("<b>PROGRAMA HUMANIDADES Y EDUCACION</b>", 12, array ('justification' => 'center'));
$pdf->ezText("<b>EDUCACION MENCION INFORMATICA</b>", 12, array ('justification' => 'center'));
$pdf->ezText("\n", 12);
$pdf->ezText("<b>REGISTRO DE ASISTENCIAS</b>\n", 12, array ('justification' => 'center'));
$pdf->ezText("<b>U.C.:   </b>".$mat, 11, array ('justification' => 'left'));
$pdf->ezText("<b>SECCION: </b>".$sec, 11, array ('justification' => 'left'));
$pdf->ezText("<b>PERIODO: </b>".$per, 11, array ('justification' => 'left'));
$pdf->ezText("\n", 10);
//==========ENCABEZADO============

$pdf->ezTable($data, $titles, '', $options);
$pdf->ezText("\n\n\n", 10);

$pdf->ezText("<b>Fecha:</b> ".date("d/m/Y"), 9, array ('justification' => 'right'));
$pdf->ezText("<b>Hora:</b> ".date("H:i:s")."\n\n", 9, array ('justification' => 'right'));
ob_end_clean();
$pdf->ezStream();
?>
