<?php
$userData = $_SESSION['user_session'];

$temp = '';

$data = array(
    'user_id' => $userData[0]['user_id'],
    'firstname' => $userData[0]['firstname'],
    'lastname' => $userData[0]['lastname'],
    'contactno' => $userData[0]['contactno'],
    'username' => $userData[0]['username'],
    'password' => $userData[0]['password'],
    'accesstype' => $userData[0]['accesstype']
);

foreach ($data as $d) {
    $temp = $temp . $d;
}

$salt = strtoupper(preg_replace("/[^a-zA-Z]/", "", md5($temp) . sha1($temp)));
$secret = substr($salt, 0, 16);

function getSecret() {
    global $secret;
    return $secret;
}

?>