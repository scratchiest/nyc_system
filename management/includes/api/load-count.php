<?php 
require_once('../config/db.php');

if (isset($_GET)) {
    $count_query = "SELECT count(*) as campers_count from campers";
    $result = $conn->query($count_query);

    $count_row = $result->fetch_assoc();
    $count = $count_row['campers_count'];

    echo $count;
}
else {
    header('location: ../../index.php');
}
?>