<?php 
session_start();
require_once('../config/db.php');

$userData = array();

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = sha1(sha1($_POST['password'], true));

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
        
    }
    else {
        $_SESSION['error'] = "Account not found.";
        header('location: ../../login.php');
    }
}

?>