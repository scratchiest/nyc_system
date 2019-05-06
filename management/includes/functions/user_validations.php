<?php 
require_once('../config/db.php');

$errors = array();

function resetSession($new_errors) {
    $_SESSION['user_validation'] = $new_errors;
}

function checkIfExists($username) {
    global $conn;

    $query = "SELECT user_id FROM users WHERE username = '{$username}'";
    $result = $conn->query($query);
    if ($result->num_rows > 0) {
        return true;
    }
    else {
        return false;
    }
}


function validate_all($firstname, $lastname, $contactno, $username, $accesstype) {
    $first = validate_firstname($firstname);
    $second = validate_lastname($lastname);
    $third = validate_contactno($contactno);
    $fourth = validate_username($username);
    $sixth = validate_accesstype($accesstype);

    if ($first && $second && $third && $fourth && $sixth) {
        return true;
    }
}

function validate_firstname($firstname) {
    global $errors;
    
    if ("" == trim($firstname)) {
        array_push($errors, "Firstname can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (strlen($firstname) <= 1) {
        array_push($errors, "Firstname can't be one letter only.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($firstname != strip_tags($firstname)) {
        array_push($errors, "Firstname contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (preg_match('/[A-Za-z]/', $firstname) && preg_match('/[0-9]/', $firstname)) {
        array_push($errors, "Firstname contains numbers which is invalid.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_lastname($lastname) {
    global $errors;
    
    if ("" == trim($lastname)) {
        array_push($errors, "Lastname can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (strlen($lastname) <= 1) {
        array_push($errors, "Lastname can't be one letter only.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($lastname != strip_tags($lastname)) {
        array_push($errors, "Lastname contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (preg_match('/[A-Za-z]/', $lastname) && preg_match('/[0-9]/', $lastname)) {
        array_push($errors, "Lastname contains numbers which is invalid.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_contactno($contactno) {
    global $errors;

    if ("" == trim($contactno)) {
        array_push($errors, "Contact number can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (strlen((string) $contactno) < 10) {
        array_push($errors, "Contact number must be 10 digits");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($contactno != strip_tags($contactno)) {
        array_push($errors, "Contact number contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (!preg_match('/^(9)\d{9}$/', $contactno)) {
        array_push($errors, "Contact number should start in 9 (Ex. \"9123456789\").");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_username($username) {
    global $errors;

    if ("" == trim($username)) {
        array_push($errors, "Username can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (strlen($username) < 6) {
        array_push($errors, "Username must have a minimum of 6 characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (preg_match('/\\s/', $username)) {
        array_push($errors, "Username can't contain spaces.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($username != strip_tags($username)) {
        array_push($errors, "Username contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (checkIfExists($username)) {
        array_push($errors, "Username exists in the database.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (preg_match('/[0-9].*[A-Za-z]/', $username)) {
        array_push($errors, "Username must start with a letter.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_password($password) {
    global $errors;

    if ("" == trim($password)) {
        array_push($errors, "Password can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (strlen($password) < 8) {
        array_push($errors, "Password must have a minimum of 8 characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (preg_match('/\\s/', $password)) {
        array_push($errors, "Password can't contain spaces.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($password != strip_tags($password)) {
        array_push($errors, "Password contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (!preg_match('/(?=^.{8,}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s)[0-9a-zA-Z!@#$%^&*()]*$/', $password)) {
        array_push($errors, "Password must contain at least 1 uppercase, 1 lowercase, and 1 number.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_accesstype($accesstype) {
    global $errors;
    
    if ("" == trim($accesstype)) {
        array_push($errors, "Access type can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($accesstype != strip_tags($accesstype)) {
        array_push($errors, "Access type contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (!preg_match('/^(STAFF|ADMIN)$/', $accesstype)) {
        array_push($errors, "Access type can only be Staff or Admin.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}
?>