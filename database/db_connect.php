<?php 

function conectar(){
//Conexion con base de datos
$mysqli = new mysqli("eu-cdbr-west-01.cleardb.com:3306", "b0c3668cd3f5e3","79f62f79", "heroku_6da6155765114ce");
if ($mysqli->connect_errno) {
    echo "Falló la conexión con MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
return $mysqli;
}
?>