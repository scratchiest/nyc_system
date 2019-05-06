<?php 
require_once('districts.php');
$errors = array();

function resetSession($new_errors) {
    $_SESSION['error_msg'] = $new_errors;
}

function validate_all($name, $age, $gender, $email, $contactno, $churchname, $churchaddress, $churchdistrict, $churchposition, $pastorname, $pastorcontactno, $campsattended, $allergies) {
    $v1 = validate_name($name);
    $v2 = validate_age($age);
    $v3 = validate_gender($gender);
    $v4 = validate_email($email);
    $v5 = validate_contactno($contactno);
    $v6 = validate_churchname($churchname);
    $v7 = validate_churchaddress($churchaddress);
    $v8 = validate_churchdistrict($churchdistrict);
    $v9 = validate_churchposition($churchposition);
    $v10 = validate_pastorname($pastorname);
    $v11 = validate_pastorcontactno($pastorcontactno);
    $v12 = validate_campsattended($campsattended);
    $v13 = validate_allergies($allergies);

    if ($v1 && $v2 && $v3 && $v4 && $v5 && $v6 && $v7 && $v8 && $v9 && $v10 && $v11 && $v12 && $v13) {
        return true;
    }
}

function validate_name($name) {
    global $errors;
    
    if ("" == trim($name)) {
        array_push($errors, "Name can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (strlen($name) <= 1) {
        array_push($errors, "Name can't be one letter only.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($name != strip_tags($name)) {
        array_push($errors, "Name contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_age($age) {
    global $errors;

    if ("" == trim($age)) {
        array_push($errors, "Age can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($age < 1) {
        array_push($errors, "Age is invalid (Error: Below Zero).");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($age != strip_tags($age)) {
        array_push($errors, "Age contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (!(is_numeric($age))) {
        array_push($errors, "Age must be a number format only.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_gender($gender) {
    global $errors;
    
    if ("" == trim($gender)) {
        array_push($errors, "Gender can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($gender != strip_tags($gender)) {
        array_push($errors, "Gender contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (!preg_match('/^(Male|Female)$/', $gender)) {
        array_push($errors, "Gender can only be Male or Female.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_email($email) {
    global $errors;

    if ("" == trim($email)) {
        array_push($errors, "Email can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($email != strip_tags($email)) {
        array_push($errors, "Email contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (!(filter_var($email, FILTER_VALIDATE_EMAIL))) {
        array_push($errors, "Email is not a valid email address.");
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

function validate_churchname($churchname) {
    global $errors;
    
    if ("" == trim($churchname)) {
        array_push($errors, "Name of Church can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (strlen($churchname) <= 1) {
        array_push($errors, "Name of Church can't be one letter only.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($churchname != strip_tags($churchname)) {
        array_push($errors, "Name of Church contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_churchaddress($churchaddress) {
    global $errors;
    
    if ("" == trim($churchaddress)) {
        array_push($errors, "Church Adress can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (strlen($churchaddress) <= 1) {
        array_push($errors, "Church Adress can't be one letter only.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($churchaddress != strip_tags($churchaddress)) {
        array_push($errors, "Church Adress contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_churchdistrict($churchdistrict) {
    global $errors;
    
    if ("" == trim($churchdistrict)) {
        array_push($errors, "Church District can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (strlen($churchdistrict) <= 1) {
        array_push($errors, "Church District can't be one letter only.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($churchdistrict != strip_tags($churchdistrict)) {
        array_push($errors, "Church District contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (checkDistrict($churchdistrict)) {
        return true;
    }
}

function validate_churchposition($churchposition) {
    global $errors;

     if (!preg_match('/^(Member|Non-Member|Staff)$/', $churchposition)) {
        array_push($errors, "Church position can only be Member, Non-Member or Staff.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_pastorname($pastorname) {
    global $errors;
    
    if ("" == trim($pastorname)) {
        array_push($errors, "Pastor's name can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (strlen($pastorname) <= 1) {
        array_push($errors, "Pastor's name can't be one letter only.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($pastorname != strip_tags($pastorname)) {
        array_push($errors, "Pastor's name contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_pastorcontactno($pastorcontactno) {
   global $errors;

    if ("" == trim($pastorcontactno)) {
        array_push($errors, "Pastor's Contact number can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (strlen((string) $pastorcontactno) < 10) {
        array_push($errors, "Pastor's Contact number must be 10 digits");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($pastorcontactno != strip_tags($pastorcontactno)) {
        array_push($errors, "Pastor's Contact number contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (!preg_match('/^(9)\d{9}$/', $pastorcontactno)) {
        array_push($errors, "Pastor's Contact number should start in 9 (Ex. \"9123456789\").");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_campsattended($campsattended) {
    global $errors;

    if ("" == trim($campsattended)) {
        array_push($errors, "Camps attended can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($campsattended < 0) {
        array_push($errors, "Camps attended is invalid (Error: Below Zero).");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($campsattended != strip_tags($campsattended)) {
        array_push($errors, "Camps attended contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (!(is_numeric($campsattended))) {
        array_push($errors, "Camps attended must be a number format only.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}

function validate_allergies($allergies) {
    global $errors;

    $allergies_list = array(
        "Pork",
        "Shrimp",
        "Chicken",
        "Fish",
        "None"
    );
    
    if ("" == trim($allergies)) {
        array_push($errors, "Allergies can't be empty.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if ($allergies != strip_tags($allergies)) {
        array_push($errors, "Allergies contains invalid characters.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else if (!preg_match('/'.implode('|',$allergies_list).'/i', $allergies)) {
        array_push($errors, "Allergies can only be Pork, Chicken, Fish, Shrimp or None.");
        resetSession($errors);
        header('location: ../../index.php');
    }
    else {
        return true;
    }
}
?>