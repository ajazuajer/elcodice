<?php
include ("listas.php");
    
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
                                <li class='active'></li>
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
                    <p><em class='text-1 margin-bot'>La informaci&oacuten suministrada es confidencial y no expresa validez ni legalidad en el ambito de la Universidad del Zulia.<br> En este apartado, el docente introduce las notas de sus estudiantes por UC, Secci&oacuten y Periodo.</em></p>
                </article>
                <br>                  
          <form name='form1' method='POST' action = 'actualizar.php'>                    
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
                            <input type='text' name='nucleo' value= $nuc >
                        </td>
                        <td>
                            <input type='text' name='carrera' value= $car >
                        </td>
                        <td>
                            <input type='text' name='materia' value= '$mat' >                    
                        </td>
                        <td>
                            <input type='text' name='seccion' value= $sec >
                        </td>
                        <td>
                            <input type='text' name='periodo' value= $per >
                        </td>
                    </tr>
                </table>
                <br>
                <h2>Registro de Notas </h2>
                <table>
                    <tr>
                        <td>
                            #
                        </td>
                        <td>
                            NOMBRE
                        </td>
                        <td>
                            APELLIDO
                        </td>
                        <td>
                            CEDULA
                        </td>
                        <td>
                            SEC
                        </td>
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
                            DEF
                        </td>
                        <td>                            
                        </td>
                    </tr>";
                $num=0;
                while ($data=mysql_fetch_array($query)) {
                    $num++;
                    $id=$data['id'];
                    $nom=$data['nombre'];
                    $ape=$data['apellido'];
                    $ced=$data['cedula'];
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
                    echo "  
                    <tr>
                                <td>
                                    $num
                                </td>
                                <td>
                                    <input type='text' name='nombre[]' size=15 value=$nom >
                                </td>
                                <td>
                                    <input type='text' name='apellido[]' size=15 value=$ape >
                                </td>
                                <td>
                                    <input type='text' name='cedula[]' size=7 value=$ced >
                                </td>
                                <td>
                                    <input type='text' name='secc[]' size=4 value=$sec >
                                </td>
                                <td>
                                    <input type='text' name='nota1[]' size=4 value=$nota1 >
                                </td>
                                <td>
                                    <input type='text' name='nota2[]' size=4 value=$nota2 >
                                </td>
                                <td>
                                    <input type='text' name='nota3[]' size=4 value=$nota3 >
                                </td>
                                <td>
                                    <input type='text' name='nota4[]' size=4 value=$nota4 >
                                </td>
                                <td>
                                    <input type='text' name='nota5[]' size=4 value=$nota5 >
                                </td>
                                <td>
                                    <input type='text' name='nota6[]' size=4 value=$nota6 >
                                </td>
                                <td>
                                    <input type='text' name='nota7[]' size=4 value=$nota7 >
                                </td>
                                <td>
                                    <input type='text' name='nota8[]' size=4 value=$nota8 >
                                </td>
                                <td>
                                    <input type='text' name='nota9[]' size=4 value=$nota9 >
                                </td>
                                <td>
                                    <input type='text' name='suma[]' size=4 value=$suma>
                                </td>
                                <td>
                                    <input type='text' name='porc[]' size=4 value=$final>
                                </td>                
                                <td>
                                    <a href='eliminar.php?id=$id'>Eliminar</a>
                                    <input type='hidden' name='ide[]' size=4 value=$id>
                                    <input type='hidden' name='nume' size=15 value=$num >
                                </td>
                            </tr>";
                        }
             echo "
            </table>
            <br><br>
            <input type='submit' value='Actualizar'>
            </form><br>
            Imprimir:<br>
            <a href='imprimirnotas.php?mat1=$mat&sec1=$sec&per1=$per' target='_blank'>Notas</a><br/>
            <a href='imprimirlistas.php?mat1=$mat&sec1=$sec&per1=$per' target='_blank'>Asistencia</a>
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
