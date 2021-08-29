<?php
namespace models\zona;
include "../database/conexion.php";

function get_zonas($cod_sector)
{
	$sql = "SELECT cod_zona, nombre_zona FROM tbl_zona WHERE cod_sector = ?";
	$con = \models\conexion\open();
	$stmt = mysqli_prepare($con, $sql);
	mysqli_stmt_bind_param($stmt, "i", $cod_sector);
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