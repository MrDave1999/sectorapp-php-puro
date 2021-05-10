<?php 
namespace controllers\sueldos_sector;

include "../models/sueldos_sector.php";
$getinfos = \models\sueldos_sector\get_sueldos_sector();
include "../views/sueldos_sector.php";
?>