<?php 
namespace models\conexion;

function open()
{
	$con = mysqli_connect($_ENV['DB_HOST'], $_ENV['DB_USERNAME'], $_ENV['DB_PASSWORD'], $_ENV['DB_DATABASE']);
	return $con;
}