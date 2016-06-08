<?php
$host = "localhost";
$db = "elcodice";
$table = "estudiantes";
$user = "programa";
$pw = "14449706";
$con = mysql_connect ($host, $user, $pw) 
or die ("Pro_server");
mysql_select_db ($db,$con) 
or die ("pro_select_db");
?>