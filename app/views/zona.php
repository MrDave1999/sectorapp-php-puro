<?php 
foreach($getinfos as $info)
	echo "<option value=" . $info["cod_zona"] . ">" . $info["nombre_zona"] . "</option>";