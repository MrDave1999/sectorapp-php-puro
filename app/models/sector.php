<?php
namespace models\sector;
include "../database/conexion.php";

function get_sectors()
{
	$sql = "SELECT nombre_sector FROM tbl_sector";
	$con = \models\conexion\open();
	$result = mysqli_query($con, $sql);
	$rows = [];
	if(mysqli_num_rows($result) > 0)
	{
		while($row = mysqli_fetch_assoc($result)) 
			$rows[] = $row;
	}
	mysqli_free_result($result);
	mysqli_close($con);
	return $rows;
}