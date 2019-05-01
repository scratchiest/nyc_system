<?php 
require_once('../config/db.php');

if (isset($_GET)) {
    $query = "SELECT * FROM campers WHERE churchposition != 'Staff' ORDER BY camper_id DESC";
    $result = $conn->query($query);

    echo   '<tr>
                <th>Name</th>
                <th>Age</th>
                <th>Gender</th>
                <th>District</th>
                <th>Group Number</th>
                <th>Status</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>';

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo   '<tr>
                        <td>'.$row['name'].'</td>
                        <td>'.$row['age'].'</td>
                        <td>'.$row['gender'].'</td>
                        <td>'.$row['churchdistrict'].'</td>
                        <td>'.$row['groupnumber'].'</td>
                        <td>'.$row['paid'].'</td>
                        <td><a class="btn btn-primary" href="index.php?paid='.$row['camper_id'].'">Set as Paid</a><td>
                        <td><a class="btn btn-warning" href="index.php?notpaid='.$row['camper_id'].'">Set as Not Paid</a><td>
                    </tr>';
        }
    }
}
else {
    header('location: ../../index.php');
}

?>