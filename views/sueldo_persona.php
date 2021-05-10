<?php 
echo sprintf("%-25s %-25s %-25s\n", "Cod_persona", "Nombre", "Sueldo");
foreach($getinfos as $info)
	echo sprintf("%-25s %-25s %-25s\n", $info["cod_persona"], $info["nom_persona"], $info["sueldo"]);
?>