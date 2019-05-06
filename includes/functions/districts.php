<?php 

$districts = array(
    "Agusan District",
    "Bukidnon",
    "Cebu",
    "CENODA District",
    "COMVAL District",
    "Cotabato 1 (North)",
    "Cotabato 2",
    "Davao City",
    "Davao Del Sur",
    "Emmanuel District",
    "MANA District",
    "Maranatha District",
    "Monkayo District",
    "NEDA District",
    "Samal (IGACOS) District",
    "Sarangani District",
    "SOCSARGEN District",
    "Valenzuela City",
    "Zampen District",
    "Bohol",
    "Zamboanga District"
);

function checkDistrict($district) {
    global $districts;
    return in_array($district, $districts);
}
?>