<?php 
namespace models\conexion;

function open()
{
	$con = mysqli_connect("localhost", "root", "1234", "dbsector");
	return $con;
}

?>