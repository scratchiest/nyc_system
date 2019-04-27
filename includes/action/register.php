<?php 
session_start();
require_once('../config/db.php');

if (isset($_POST['submit'])) {
    $name = $conn->real_escape_string($_POST['name']);
    $age = $conn->real_escape_string($_POST['age']);
    $gender = $conn->real_escape_string($_POST['gender']);
    $email = $conn->real_escape_string($_POST['email']);
    $contactno = $conn->real_escape_string($_POST['contactno']);
    $churchname = $conn->real_escape_string($_POST['churchname']);
    $churchaddress = $conn->real_escape_string($_POST['churchaddress']);
    $churchdistrict = $conn->real_escape_string($_POST['churchdistrict']);
    $churchposition = $conn->real_escape_string($_POST['churchposition']);
    $pastorname = $conn->real_escape_string($_POST['pastorname']);
    $pastorcontactno = $conn->real_escape_string($_POST['pastorcontactno']);
    $campsattended = $conn->real_escape_string($_POST['campsattended']);
    $allergies = $conn->real_escape_string($_POST['allergies']);
    $groupnumber = getGroupnumber($age);
    
    if ($churchposition == 'Staff') {
        $query = "INSERT INTO staff VALUES ";
        $query .= "(DEFAULT, '{$name}', {$age}, '{$gender}', '{$email}', '{$contactno}', '{$churchname}', '{$churchaddress}', '{$churchdistrict}', 
                    '{$churchposition}', '{$pastorname}', '{$pastorcontactno}', {$campsattended}, '{$allergies}')";
                    
        if ($conn->query($query)) {
            $_SESSION['success_msg'] = "You have successfully registered!";
            header('location: ../../index.php');
        }
        else {
            echo $query . '<br>' . $conn->error;
        }
    }
    else {
        $query = "INSERT INTO campers VALUES ";
        $query .= "(DEFAULT, '{$name}', {$age}, '{$gender}', '{$email}', '{$contactno}', '{$churchname}', '{$churchaddress}', '{$churchdistrict}', 
                    '{$churchposition}', '{$pastorname}', '{$pastorcontactno}', {$campsattended}, '{$allergies}', {$groupnumber}, 'Not Paid')";
                    
        if ($conn->query($query)) {
            $_SESSION['success_msg'] = "You have successfully registered!";
            header('location: groupleader.php?grp_no='.$groupnumber);
        }
        else {
            echo $query . '<br>' . $conn->error;
        }
    }
}

function getGroupnumber($age) {
    global $conn;
    
    if ($age <= 13) {
        $sel_query = "SELECT groupnumber FROM campers ORDER BY groupnumber DESC LIMIT 1";
        $sel_result = $conn->query($sel_query);

        if ($sel_result->num_rows > 0) {
            $row = $sel_result->fetch_assoc();
            $groupnumber = $row['groupnumber'];
            
            if ($groupnumber == 1) {
                return $groupnumber = $groupnumber + 1;
            }
            else if ($groupnumber == 2) {
                return $groupnumber = 1;
            }
            else if ($groupnumber != 1 || $groupnumber != 2) {
                $query = "SELECT groupnumber FROM campers WHERE groupnumber < 3 ORDER BY camper_id DESC LIMIT 1";
                $result = $conn->query($query);

                if ($result->num_rows > 0) {
                    $row = $result->fetch_assoc();
                    $groupnumber = $row['groupnumber'];

                    if ($groupnumber == 2) {
                        return $groupnumber = 1;
                    }
                    else {
                        return $groupnumber = $groupnumber + 1;
                    }
                }
                else {
                    return $groupnumber = 1;
                }
            } 
        }
        return $groupnumber = 1;
    }
    else {
        $sel_query = "SELECT groupnumber FROM campers ORDER BY camper_id DESC LIMIT 1";
        $sel_result = $conn->query($sel_query);

        if ($sel_result->num_rows > 0) {
            $row = $sel_result->fetch_assoc();
            $groupnumber = $row['groupnumber'];

            if ($groupnumber == 1 || $groupnumber == 2) {
                $query = "SELECT groupnumber FROM campers WHERE groupnumber > 2 ORDER BY camper_id DESC LIMIT 1";
                $result = $conn->query($query);

                if ($result->num_rows > 0) {
                    $row = $result->fetch_assoc();
                    $groupnumber = $row['groupnumber'];

                    if ($groupnumber == 21) {
                        return $groupnumber = 3;
                    }
                    else {
                        return $groupnumber = $groupnumber + 1;
                    }
                }
                else {
                    return $groupnumber = 3;
                }
            }
            else if ($groupnumber == 21) {
                return $groupnumber = 3;
            }
            else {
                return $groupnumber = $groupnumber + 1;
            }
        }
        else {
            return $groupnumber = 3;
        }
    }
}
?>