<?php 
namespace models\conexion;

require_once '../../vendor/autoload.php';

$dotenv = \Dotenv\Dotenv::createImmutable('../../');
$dotenv->load();

function open()
{
	$con = mysqli_connect($_ENV['DB_HOST'], $_ENV['DB_USERNAME'], $_ENV['DB_PASSWORD'], $_ENV['DB_DATABASE']);
	return $con;
}