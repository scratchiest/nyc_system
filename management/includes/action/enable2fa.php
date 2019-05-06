<?php 
declare(strict_types = 1);
session_start();
require_once('../../includes/config/db.php');
require_once('../../vendor/autoload.php');
require_once('../functions/GoogleAuthenticator.php');

$userData = $_SESSION['user_session'];

$g = new \Sonata\GoogleAuthenticator\GoogleAuthenticator();
$secret = getSecret();

$name = $userData[0]['firstname'].' '.$userData[0]['lastname'];

if (isset($_POST['enable'])) {
    $code = $_POST['code'];

    if ($g->checkCode($secret, $code)) {
        $query = "UPDATE users SET 2FA = 'ENABLED' WHERE user_id = {$userData[0]['user_id']}";
        if ($conn->query($query)) {
            $_SESSION['2fa_success'] = "Success! Two-Factor Authentication is now enabled. ✔️ " . "<br>" . "Click <a href='includes/action/logout.php'>Here</a> to re-login.";
            header('Location: ../../index.php');
        }
        else {
            echo $conn->error;
        }
    }
    else {
        $_SESSION['2fa_failed'] = "The code you entered was wrong";
        header('Location: ../../index.php');
    }
}
else {
    header('Location: ../../index.php');
}
?>