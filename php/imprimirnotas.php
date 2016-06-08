<?php

require_once('class.ezpdf.php');
$pdf =& new Cezpdf('letter','portrait');
$pdf->selectFont('../fonts/courier.afm');
$pdf->ezSetCmMargins(1.5,1.5,1.5,1.5);

include ('conexion.php');
$apro=0;
$eval=0;
$inas=0;
$rend=0;

$mat= $_GET['mat1'];
$sec= $_GET['sec1'];
$per= $_REQUEST['per1'];

$query = mysql_query("SELECT * FROM estudiantes WHERE materia='$mat' and seccion='$sec' and periodo='$per' ORDER BY apellido") or die (mysql_error());
$ixx = 0;
while($datatmp = mysql_fetch_assoc($query)){
	$nota1=$datatmp['nota1'];
	$nota2=$datatmp['nota2'];
	$nota3=$datatmp['nota3'];
	$nota4=$datatmp['nota4'];
	$nota5=$datatmp['nota5'];
	$nota6=$datatmp['nota6'];
	$nota7=$datatmp['nota7'];
	$nota8=$datatmp['nota8'];
	$nota9=$datatmp['nota9'];
	$datatmp['notafinal']=$nota1+$nota2+$nota3+$nota4+$nota5+$nota6+$nota7+$nota8+$nota9;
	$notaf=$datatmp['notafinal'];
	$datatmp['notafinal2']=round(($datatmp['notafinal']*20)/100);
	//$porcent=($suma*20)/100;
	if ($notaf>47){ 
		$apro+=1;}
	if ($notaf!=0){ 
		$eval+=1;}
	if ($notaf==0){ 
		$inas+=1;}
	$rend=round(($apro/$eval)*100);
	$ixx = $ixx+1;
	$data[] = array_merge($datatmp, array('num'=>$ixx));     
}

$titles = array( 
		'num'=>'<b>#</b>',                
                'nombre'=>'<b>NOMBRE</b>',
                'apellido'=>'<b>APELLIDO</b>',
                'cedula'=>'<b>CEDULA</b>',
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

//==========ENCABEZADO============
$pdf->addJpegFromFile("../images/escudo_de_luz_peq.jpg",30,690,50,60);
$pdf->addJpegFromFile("../images/escudo_de_luz_col.jpg",530,690,50,60);
$pdf->ezText("<b>LA UNIVERSIDAD DEL ZULIA</b>", 16, array ('justification' => 'center'));
$pdf->ezText("<b>NUCLEO COSTA ORIENTAL DEL LAGO</b>", 12, array ('justification' => 'center'));
$pdf->ezText("<b>PROGRAMA HUMANIDADES Y EDUCACION</b>", 12, array ('justification' => 'center'));
$pdf->ezText("<b>EDUCACION MENCION INFORMATICA</b>", 12, array ('justification' => 'center'));

$pdf->ezText("<b>\nREGISTRO DE NOTAS</b>\n", 12, array ('justification' => 'center'));

$pdf->ezText("<b>U.C.:   </b>".$mat, 11, array ('justification' => 'left'));
$pdf->ezText("<b>SECCION: </b>".$sec, 11, array ('justification' => 'left'));
$pdf->ezText("<b>PERIODO: </b>".$per, 11, array ('justification' => 'left'));
$pdf->ezText("\n", 10);

$pdf->addText(450,640,11,"<b>INASISTENTES: </b>".$inas);
$pdf->addText(450,630,11,"<b>EVALUADOS: </b>".$eval);
$pdf->addText(450,620,11,"<b>APROBADOS: </b>".$apro);
$pdf->addText(450,610,11,"<b>RENDIMIENTO: </b>".$rend." %");
//==========ENCABEZADO============

$pdf->ezTable($data, $titles, '', $options);
$pdf->ezText("\n", 10);

$pdf->ezText("<b>Fecha:</b> ".date("d/m/Y"), 9, array ('justification' => 'right'));
$pdf->ezText("<b>Hora:</b> ".date("H:i:s")."\n\n", 9, array ('justification' => 'right'));
ob_end_clean();
$pdf->ezStream();
?>
