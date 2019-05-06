<?php 
session_start();
require_once('../config/db.php');

function checkIfExists($id) {
    global $conn;

    $query = "SELECT user_id FROM users WHERE user_id = {$id}";
    $result = $conn->query($query);
    if ($result->num_rows > 0) {
        return true;
    }
    else {
        return false;
    }
}

if (isset($_GET['id'])) {
    $id = $conn->real_escape_string($_GET['id']);

    if (is_numeric($id)) {
        if (checkIfExists($id)) {
            $query = "DELETE FROM users WHERE user_id = {$id}";
            if ($conn->query($query)) {
                $_SESSION['success'] = "User Deletion Successful.";
                header('location: ../../index.php');
            }
            else {
                echo $conn->error;
            }
        }
        else {
            $_SESSION['failed'] = 'User Deletion Failed (Error: The provided user ID does not exist.)';
            header('location: ../../index.php');
        }
    }
    else {
        $_SESSION['failed'] = 'User Deletion Failed (Error: The provided user ID is invalid.)';
        header('location: ../../index.php');
    }
}
else {
    header('location: ../../index.php');
}
?>