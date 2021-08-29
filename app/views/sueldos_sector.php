<?php 
foreach($getinfos as $info)
{
	echo "<tr class=" . $info["cod_zona"] . ">";
	echo "<td>" . $info["nombre_sector"] . "</td>";
	echo "<td>" . $info["nombre_zona"] . "</td>";
	echo "<td>" . number_format($info["sueldo_total"], 2) . "</td>";
	echo "</tr>";
}