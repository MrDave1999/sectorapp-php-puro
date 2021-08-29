<?php 
namespace controllers\persona;
include "../models/persona.php";

if($_POST["crud"] == "0")
{
	\models\persona\insert(
		$_POST["id"], 
		$_POST["nom"], 
		$_POST["fech"], 
		(int)$_POST["idsector"] + 1, 
		$_POST["idzona"], 
		$_POST["sueldo"]
	);
}
else 
	\models\persona\delete($_POST["id"]);

echo "1";