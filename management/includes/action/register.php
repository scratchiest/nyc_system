<?php 
require_once('../config/db.php');

if(isset($_POST['register'])) {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $contactno = $_POST['contactno'];
    $username = $_POST['username'];
    $password = sha1(sha1($_POST['password']));
    $accesstype = $_POST['accesstype'];


    $query = "INSERT INTO users (firstname, lastname, contactno, username, password, accesstype) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('sssssi', $firstname, $lastname, $contactno, $username, $password, $accesstype);
    if ($stmt->execute()) {
        header('location: ../../index.php');
    }
    else {
        echo $conn->error();
    }
}
else {
    header('location: ../../index.php');
}
?>