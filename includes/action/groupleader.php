<?php 
require_once('../config/db.php');

$groupnumber = '';
$leader_name = '';
$leader_photo = '';

if (isset($_GET['grp_no'])) {
    $groupnumber = $conn->real_escape_string($_GET['grp_no']);

    $query = "SELECT * FROM groups WHERE groupnumber = {$groupnumber}";
    $result = $conn->query($query);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $leader_name = $row['leader_name'];
            $leader_photo = $row['leader_photo'];
        }
    }
}
else {
    header('location: ../../index.php');
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../../resources/css/bootstrap.css">
    <title>NYC2018 | Success</title>
</head>
<body>
    <div class="container">
        <div style="text-align: center; margin-top: 4%;">
            <h3>You have registered successfully!</h3>
        </div>
        
        <div class="row" style="margin-top: 4%;">
            <div class="col" style="margin-top: 10%; text-align: center;">
                <h4>Your BS Leader: <span class="lead"><?php echo $leader_name; ?></span></h4>
                <h4>Group Number: <span class="lead"><?php echo $groupnumber; ?></span></h4>
                <!-- <a class="btn btn-primary mt-5" href="#">Back to Registration</a> -->
                <div id="delayMsg" class="mt-5"></div>
            </div>
            <div class="col">
                <img src="../../<?php echo $leader_photo; ?>" alt="<?php echo $leader_name ?>" style="width:60%; height:90%;">
            </div>
        </div>
    </div>
</body>
<script>
function delayRedirect(){
    document.getElementById('delayMsg').innerHTML = 'Please wait. You\'ll be redirected after <span id="countDown">8</span> seconds....';
    var count = 8;

    var myTimer = setInterval(function(){
        count--;
        document.getElementById('countDown').innerHTML = count;
        if (count == 0) {
            window.location = '../../index.php'; 
        }
    },1000);

    if (count == 0) {
        clearInterval(myTimer);
    }
}

delayRedirect();
</script>
</html>