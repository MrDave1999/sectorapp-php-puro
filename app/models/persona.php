<?php
namespace models\persona;
include "../database/conexion.php";

function insert($id, $nom, $fech, $idsector, $idzona, $sueldo)
{
	$sql = "
	INSERT INTO tbl_persona(cod_persona, nom_persona, fec_nacimiento, cod_sector, cod_zona, sueldo) 
	VALUES(?,?,?,?,?,?)";
	$con = \models\conexion\open();
	$stmt = mysqli_prepare($con, $sql);
	mysqli_stmt_bind_param($stmt, "issiid", $id, $nom, $fech, $idsector, $idzona, $sueldo);
	mysqli_stmt_execute($stmt);
	mysqli_stmt_close($stmt);
	mysqli_close($con);
}

function delete($cod_persona)
{
	$sql = "DELETE FROM tbl_persona WHERE cod_persona = ?";
	$con = \models\conexion\open();
	$stmt = mysqli_prepare($con, $sql);
	mysqli_stmt_bind_param($stmt, "i", $cod_persona);
	mysqli_stmt_execute($stmt);
	mysqli_stmt_close($stmt);
	mysqli_close($con);
}