<?php 
session_start();
require_once('../config/db.php');
require_once('../functions/user_validations.php');

if(isset($_POST['register'])) {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $contactno = $_POST['contactno'];
    $username = $_POST['username'];
    $accesstype = $_POST['accesstype'];

    if (validate_all($firstname, $lastname, $contactno, $username, $accesstype)) {
        $query = "INSERT INTO users (firstname, lastname, contactno, username, accesstype) VALUES (?, ?, ?, ?, ?)";
        $stmt = $conn->prepare($query);
        $stmt->bind_param('sssss', $firstname, $lastname, $contactno, $username, $accesstype);
        if ($stmt->execute()) {
            $_SESSION['user_success'] = "User successfully added. ✔️";
            header('location: ../../index.php');
        }
        else {
            echo $conn->error;
        }
    }
}
else {
    header('location: ../../index.php');
}
?>