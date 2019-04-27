<?php 
session_start();
require_once('../../includes/config/db.php');
require_once('../../vendor/autoload.php');

$userData = $_SESSION['user_session'];

if (isset($_POST['disable'])) {
    $query = "UPDATE users SET 2FA = 'DISABLED' WHERE user_id = {$userData[0]['user_id']}";
    if ($conn->query($query)) {
        $_SESSION['2fa_success'] = "Success! Two-Factor Authentication is now disabled. ✔️ " . "<br>" . "Click <a href='includes/action/logout.php'>Here</a> to re-login.";
        header('Location: ../../index.php');
    }
    else {
        echo $conn->error;
    }
}
else {
    header('Location: ../../index.php');
}
?>