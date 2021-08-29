<?php
namespace models\sueldo_persona;
include "../database/conexion.php";

function get_sueldo_personas($cod_zona)
{
	$sql = "SELECT cod_persona, nom_persona, sueldo FROM tbl_persona WHERE cod_zona = ?";
	$con = \models\conexion\open();
	$stmt = mysqli_prepare($con, $sql);
	mysqli_stmt_bind_param($stmt, "i", $cod_zona);
	mysqli_stmt_execute($stmt);
	$result = mysqli_stmt_get_result($stmt); 
	$rows = [];
	if(mysqli_num_rows($result) > 0)
	{
		while($row = mysqli_fetch_assoc($result)) 
			$rows[] = $row;
	}
	mysqli_free_result($result);
	mysqli_stmt_close($stmt);
	mysqli_close($con);
	return $rows;
}