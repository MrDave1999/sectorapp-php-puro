<?php 
namespace controllers\sector;

include "../models/sector.php";
$getinfos = \models\sector\get_sectors();
include "../views/sector.php";
?>