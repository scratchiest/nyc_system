<?php 
$time = $_SERVER['REQUEST_TIME'];

// 30 min na timeout
$timeout_duration = 1800;

// if nilampas nag 30min ang inactivity, then gubaon ang session tapos mag start nasad ug new session.
if (isset($_SESSION['LAST_ACTIVITY']) && 
   ($time - $_SESSION['LAST_ACTIVITY']) > $timeout_duration) {
    session_unset();
    session_destroy();
    session_start();
}

// And lastly, update LAST_ACTIVITY para ang timeout kay base sa time and dili atong 
// time nga nag login ang user.
$_SESSION['LAST_ACTIVITY'] = $time;
?>