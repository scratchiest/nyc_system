<?php 
date_default_timezone_set("Asia/Manila");
session_start();
require_once('../config/db.php');

$userData = array();

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = sha1(sha1($_POST['password']));

    $query = "SELECT * FROM users WHERE username = ? AND password = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('ss', $username, $password);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0) {        
        while ($row = $result->fetch_assoc()) {
            $userData[] = $row;
        }
        $_SESSION['user_session'] = $userData;
        if ($userData[0]['2FA'] == 'ENABLED') {
            header('location: authenticate.php');
        }
        else {
            header('location: ../../index.php');
        }
        // Check password date for expiry notification
        $time = strtotime($userData[0]['password_updated_at']);
        $date_now = date("Y-m-d H:i:s");
        $final = date("Y-m-d H:i:s", strtotime("+1 month", $time));

        if ($date_now >= $final) {
            $_SESSION['password_warning'] = 
            "Warning! Your password is a month old. You are required to change your password as soon possible.
            <br>
            To change your password, go to <strong>Settings</strong>, and click <strong>Change Password</strong>.";
        }
    }
    else {
        $_SESSION['error'] = "Account not found.";
        header('location: ../../login.php');
    }
}
else {
    header('location: ../../login.php');
}

?>