<?php
include ("conexion2.php");
echo "<!DOCTYPE html>
<html lang='es'>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
<title>Registro Academico</title>
<link rel='stylesheet' type='text/css' href='../r/estilo.css' />
<title>Listas de Estudiantes</title>
</head>
<body>
  <h1>Informaci&oacuten de la Unidad Curricular</h1>
	<form action='listas2.php' method='post'>
		<table>
			<tr>
			<td>
		Materia:</td>
			<td><SELECT NAME='materia' SIZE=1> 
				<OPTION VALUE='AyD de Algoritmos'>An&aacutelisis y Dise&ntildeo de Algoritmos</OPTION>
				<OPTION VALUE='Programacion I'>Programaci&oacuten I</OPTION>
				<OPTION VALUE='Programacion II'>Programaci&oacuten II</OPTION> 
				</SELECT>
						</td>
			</tr><tr><td>
		Secci&oacuten:</td>
			<td><SELECT NAME='seccion' SIZE=1> 
				<OPTION VALUE='S001'>S001</OPTION>
				<OPTION VALUE='S002'>S002</OPTION>
				<OPTION VALUE='S003'>S003</OPTION> 
				</SELECT>
						</td>
			</tr><tr><td>
		Periodo:</td>
			<td><SELECT NAME='periodo' SIZE=1> 
				<OPTION VALUE='2014-U'>2014-U</OPTION>
				<OPTION VALUE='2015-I'>2015-I</OPTION>
				<OPTION VALUE='2015-II'>2015-II</OPTION>
				<OPTION VALUE='2016-I'>2016-I</OPTION> 
				<OPTION VALUE='2016-II'>2016-II</OPTION>
				</SELECT>
						</td>
			</tr>
</table>
		<input type='submit' value='Entrar' />
		<input type='reset' name='reset' value='Limpiar' />
		<input type='submit' name='cancelar' value='Cancelar' onclick='this.form.action = 'php/cancelar.php'' />
	


</form>
	</body>
</html>";
?>
