<?php
include ("conexion.php");

$mat = $_POST['materia'];
$sec = $_POST['seccion'];
$per = $_POST['periodo'];
if ($mat=='') {
	echo "<html><head></head><body><script type='text/javascript'>alert('Debe Introducir todos los Datos');</script><script>history.go(-1);</script></body></html>";
}else{
	$query = mysql_query("SELECT * FROM estudiantes WHERE materia = '$mat' and seccion='$sec' and periodo='$per'") or die (mysql_error());
	$data=mysql_fetch_array($query);
	$rows=mysql_num_rows($query);
	if($data['materia'] != $mat) {
		echo "<html><head></head><body><script type='text/javascript'>alert('No se encontraron Datos');</script><script>history.go(-1);</script></body></html>";
	}else{
		$query = mysql_query("SELECT * FROM estudiantes WHERE materia = '$mat' and seccion='$sec' and periodo='$per'") or die (mysql_error());
		$data=mysql_fetch_array($query);
		$id=$data['id'];
		$nuc=$data['nucleo'];
		$car=$data['carrera'];
		$mat=$data['materia'];
		$sec=$data['seccion'];
		$per=$data['periodo'];
		$query = mysql_query("SELECT * FROM estudiantes WHERE materia = '$mat' and seccion='$sec' and periodo='$per'") or die (mysql_error());
		
    //<meta http-equiv='Content-Type' content='text/html; charset=ISO-8859-1' />
echo "<!DOCTYPE html>
<html lang='es'>
<head>
<title>Registro Academico</title>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <link rel='stylesheet' href='../css/reset.css' type='text/css' media='screen'>
    <link rel='stylesheet' href='../css/style.css' type='text/css' media='screen'>
    <link rel='stylesheet' href='../css/grid.css' type='text/css' media='screen'>   
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
                       	  <h3>Sesi&oacuten del Docente</h3>
                          <p><em class='text-1 margin-bot'>En este apartado, el docente introduce las notas de sus estudiantes por UC, Secci&oacuten y Periodo.</em></p>
                          <h2>Informaci&oacuten de la Unidad Curricular</h2>
<form action = 'actualizar.php' method='post'>        
<table>
            <tr>
		<td>
                    N&uacutecleo:
                </td>
                <td>
                    Carrera:
                </td>
                <td>
                    Materia: 
                </td>
                <td>
                    Secci&oacuten:
                </td>
                <td>
                    Periodo:
                </td>
	    </tr> 
	    <tr>
                <td>
                    <input type='text' name='nucleo' value=$nuc />
                </td>
                <td>
                    <input type='text' name='carrera' value=$car />
                </td>
                <td>
		    <input type='text' name='materia' value='$mat' />                    
                </td>
                <td>
                    <input type='text' name='seccion' value=$sec />
                </td>
                <td>
                    <input type='text' name='periodo' value=$per />
                </td>
            </tr>
        </table>
<br/><h2>Registro de Estudiantes</h2><br/>
        <table>
            <tr>
		<td>
                    Nombre:
                </td>
                <td>
                   Apellido:
                </td>
                <td>
                    Cedula: 
                </td>
                <td>
                    Nota1:
                </td>
                <td>
                    Nota2:
                </td>
                <td>
                    Nota3:
                </td>
                <td>
                    Nota4:
                </td>
                <td>
                    Nota5:
                </td>
                <td>
                    Nota6:
                </td>
                <td>
                    Nota7:
                </td>
                <td>
                    Nota8:
                </td>
                <td>
                    Nota9:
                </td>
                <td>
                    NotaFinal:
                </td>
	    </tr>";
while ($data=mysql_fetch_array($query)) {
	$id=$data['id'];
	$nom=$data['nombre'];
	$ape=$data['apellido'];
	$ced=$data['cedula'];
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
		echo "
           <tr>
                <td>
                    <input type='text' name='nombre' value=$nom />
                </td>
                <td>
                    <input type='text' name='apellido' value=$ape />
                </td>
                <td>
		    <input type='text' name='cedula' value=$ced />                    
                </td>
                <td>
                    <input type='text' name='nota1[]' value=$nota1 size=5 />
                </td>
                <td>
                    <input type='text' name='nota2[]' value=$nota2 size=5 />
                </td>
                <td>
                    <input type='text' name='nota3[]' value=$nota3 size=5 />
                </td>
                <td>
                    <input type='text' name='nota4[]' value=$nota4 size=5 />
                </td>
                <td>
                    <input type='text' name='nota5[]' value=$nota5 size=5 />
                </td>
                <td>
                    <input type='text' name='nota6[]' value=$nota6 size=5 />
                </td>
                <td>
                    <input type='text' name='nota7[]' value=$nota7 size=5 />
                </td>
                <td>
                    <input type='text' name='nota8[]' value=$nota8 size=5 />
                </td>
                <td>
                    <input type='text' name='nota9[]' value=$nota9 size=5 />
                </td>
                <td>
                    <input type='text' name='notaf[]' value=$porcent size=5/>
                </td>
		<td>
		    <input type='hidden' name='id[]' value=$id />
		</td>
		<td>
		    <input type='hidden' name='reg' value=$rows />
		</td>

            </tr>";}

echo "</table>
<br/><br/>
<input type='submit' name='act' value='Actualizar' onclick='this.form.action = '/php/actualizar.php''/>
<br/><br/></form>
Imprimir:<br/>
<a href='/php/imprimirnotas.php?mat1=$mat&sec1=$sec&per1=$per'>Notas</a><br/>
<a href='/php/imprimirlistas.php?mat1=$mat&sec1=$sec&per1=$per'>Asistencia</a>
<br/><br/><br/>

                       </article>
                        
                        </article>
            </div>
            <div class='block'></div>
        </section>
    </div>
	
	<!--==============================footer=================================-->
        
</body>
</html>";
}
}mysql_close($con);
?>