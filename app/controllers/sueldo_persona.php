<?php 
namespace controllers\sueldo_persona;

include "../models/sueldo_persona.php";
$getinfos = \models\sueldo_persona\get_sueldo_personas($_POST["cod_zona"]);
include "../views/sueldo_persona.php";