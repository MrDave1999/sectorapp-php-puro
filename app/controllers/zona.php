<?php 
namespace controllers\zona;

include "../models/zona.php";
$getinfos = \models\zona\get_zonas((int)$_POST["idsector"] + 1);
include "../views/zona.php";