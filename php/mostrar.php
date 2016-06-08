<?php
include ("entrar2.php");

    //<meta http-equiv='Content-Type' content='text/html; charset=ISO-8859-1' />
echo "<!DOCTYPE html>
<html lang='es'>
<head>
    <title>Notas del Estudiante</title>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <link rel='stylesheet' href='../css/reset.css' type='text/css' media='screen'>
    <link rel='stylesheet' href='../css/style.css' type='text/css' media='screen'>
    <link rel='stylesheet' href='../css/grid.css' type='text/css' media='screen'>  
    <link rel='stylesheet' href='../css/estilo.css' type='text/css' media='screen'/>   
    <script src='js/jquery-1.6.3.min.js' type='text/javascript'></script>
    <script src='js/cufon-yui.js' type='text/javascript'></script>
    <script src='js/cufon-replace.js' type='text/javascript'></script>
    <script src='js/NewsGoth_400.font.js' type='text/javascript'></script>
	<script src='js/NewsGoth_700.font.js' type='text/javascript'></script>
    <script src='js/NewsGoth_Lt_BT_italic_400.font.js' type='text/javascript'></script>
    <script src='js/Vegur_400.font.js' type='text/javascript'></script> 
    <script src='js/FF-cash.js' type='text/javascript'></script>
    <script src='js/jquery.featureCarousel.js' type='text/javascript'></script>     
    <script type='text/javascript'>
      $(document).ready(function() {
        $('#carousel').featureCarousel({
			autoPlay:7000,
			trackerIndividual:false,
			trackerSummation:false,
			topPadding:50,
			smallFeatureWidth:.9,
			smallFeatureHeight:.9,
			sidePadding:0,
			smallFeatureOffset:0
		});
      });
    </script>
	<!--[if lt IE 7]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href='http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode'>
        	<img src='http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg' border='0' height='42' width='820' alt='You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.' />
        </a>
    </div>
	<![endif]-->
    <!--[if lt IE 9]>
   		<script type='text/javascript' src='js/html5.js'></script>
        <link rel='stylesheet' href='css/ie.css' type='text/css' media='screen'>
	<![endif]-->
</head>
<body id='page1'>
	<div class='extra'>
    	<!--==============================header=================================-->
        <header>
        	<div class='row-top'>
            	<div class='main'>
                	<div class='wrapper'>
                    	 
                    </div>
                </div>
            </div>
            <div class='menu-row'>
            	<div class='menu-bg'>
                    <div class='main'>
                        <nav class='indent-left'>
                            <ul class='menu wrapper'>
                                <li class='active'><a href='index.html'>Volver</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            
        </header>
        
        <!--==============================content================================-->
        <section id='content'><div class='ic'></div>
            <div class='main'>
                        <article class='grid_9'>
                       	  <h3>Registro de Notas</h3>
                          <p><em class='text-1 margin-bot'>La informaci&oacuten suministrada es confidencial y no expresa validez ni legalidad en el ambito de la Universidad del Zulia.</em></p>
                          
                </article>
        <h2>ESTUDIANTE</h2>				
        <form method='post' action='' />				
        <table>
            <tr>
                <td>
                    Nombre: 
                </td>
                <td>
		    <input type='text' name='nombre' value=$nom >
                    
                </td>
                <td>
                    Apellido:
                </td>
                <td>
                    <input type='text' name='apellido' value=$ape >
                </td>
                <td>
                    C&eacutedula:
                </td>
                <td>
                    <input type='text' name='cedula' value=$ced >
                </td>
                <td>
                    Correo:
                </td>
                <td>
                    <input type='text' name='correo' value=$cor >
                </td>
            </tr>
            <tr>
                <td>
                    Tel&eacutefono:
                </td>
                <td>
                    <input type='text' name='telefono' value=$tel >
                </td>
                <td>
                    N&uacutecleo:
                </td>
                <td>
                    <input type='text' name='nucleo' value=$nuc >
                </td>
                <td>
                    Carrera:
                </td>
                <td>
                    <input type='text' name='carrera' value=$car >
                </td>
                <td>
                    Periodo:
                </td>
                <td>
                    <input type='text' name='periodo' value=$per >
                </td>
            </tr>
        </table>
        <br/><h2>Registro de Notas </h2>";
while ($data=mysql_fetch_array($query)) {
	$mat=$data['materia'];
	$sec=$data['seccion'];
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
	$final=round(($suma*20)/100);
echo "	<table>
	<br/><h2>Materia:
            <input type='text' name='materia' value='$mat' >
            Secci&oacuten:
            <input type='text' name='seccion' value='$sec' >
        </h2>
            <tr>
                <td>
                    NOTA 1
                </td>
                <td>
                    NOTA 2
                </td>
                <td>
                    NOTA 3
                </td>
                <td>
                    NOTA 4
                </td>
                <td>
                    NOTA 5
                </td>
                <td>
                    NOTA 6
                </td>
                <td>
                    NOTA 7
                </td>
                <td>
                    NOTA 8
                </td>
                <td>
                    NOTA 9
                </td>
                <td>
                    ACUM
                </td>
                <td>
                    DEFINITIVA
                </td>
            </tr>
            <tr>
                <td>
                    <input type='text' name='nota1' size=5 value=$nota1 >
                </td>
                <td>
                    <input type='text' name='nota2' size=5 value=$nota2 >
                </td>
                <td>
                    <input type='text' name='nota3' size=5 value=$nota3 >
                </td>
                <td>
                    <input type='text' name='nota4' size=5 value=$nota4 >
                </td>
                <td>
                    <input type='text' name='nota5' size=5 value=$nota5 >
                </td>
                <td>
                    <input type='text' name='nota6' size=5 value=$nota6 >
                </td>
                <td>
                    <input type='text' name='nota7' size=5 value=$nota7 >
                </td>
                <td>
                    <input type='text' name='nota8' size=5 value=$nota8 >
                </td>
                <td>
                    <input type='text' name='nota9' size=5 value=$nota9 >
                </td>
                <td>
                    <input type='text' name='suma' size=5 value=$suma>
                </td>
		<td>
                    <input type='text' name='porc' size=5 value=$final>
                </td>
            </tr>";}
 echo "              </table>
<br/><br/></form>
Imprimir:<br/>
<a href='../php/imprimirestud.php?ced=$ced&per=$per' target='_blank'>Notas</a><br/>
            </div>
            <div class='block'></div>
        </section>
    </div>
    
    <!--==============================footer=================================-->
<footer>
        <div class='padding'>
            <div class='main'>
                <div class='wrapper'>                        
                    <article class='grid_4'>
                    </article>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>";
mysql_close($con);
?>
