<?php 
session_start();
require_once('../config/db.php');

$userData = $_SESSION['user_session'];

if (isset($_POST['changepass'])) {
    $curr_password = $conn->real_escape_string($_POST['curr_password']);
    $new_password = $conn->real_escape_string($_POST['new_password']);
    $conf_password = $conn->real_escape_string($_POST['conf_password']);

    if (strcmp(sha1(sha1($curr_password)), $userData[0]['password']) == 0) {
        if (strcmp($new_password, $conf_password) == 0) {
            $new_password = sha1(sha1($new_password));
            $query = "UPDATE users SET password = '{$new_password}' WHERE user_id = {$userData[0]['user_id']}";
            if ($conn->query($query)) {
                $_SESSION['changepass_success'] = "Password successfully changed. ✔️". "<br>" . "Click <a href='includes/action/logout.php'>Here</a> to re-login.";
                header('location: ../../index.php');
            }
            else {
                echo $conn->error;
            }
        }
        else {
            $_SESSION['changepass_failed'] = "Passwords doesn't match.";
            header('location: ../../index.php');
        }
    }
    else {
        $_SESSION['changepass_failed'] = "Current password is incorrect.";
    }
}
else {
    header("location: ../../index.php");
}
?>