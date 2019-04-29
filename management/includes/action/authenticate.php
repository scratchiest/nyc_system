<?php 
declare(strict_types = 1);
session_start();
require_once('../../vendor/autoload.php');
require_once('../functions/GoogleAuthenticator.php');

if (!isset($_SESSION['user_session'])) {
    header('location: ../../login.php');
}

if (isset($_SESSION['authenticated'])) {
    header('location: ../../index.php');
}

$g = new \Sonata\GoogleAuthenticator\GoogleAuthenticator();
$secret = getSecret();

if (isset($_POST['authenticate'])) {
    $code = $_POST['code']; 

    if ($g->checkCode($secret, $code)) {
        $_SESSION['authenticated'] = true;
        header('Location: ../../index.php');
    }
    else {
        header('Location: authenticate.php');
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <title>Document</title>
</head>
<body>
    <div id="authenticate" class="modal" tabindex="-1" role="dialog" aria-labelledby="classInfo" aria-hidden="true">
        <div class="modal-dialog" style="width: 46%;" role="document">
        <div class="modal-content">
            <form action="" method="POST">
            <div class="modal-header">
                <h4 class="modal-title text-center" id="myModalLabel">Authenticate</h4>
            </div>
            <div class="modal-body">
                <p>
                    Two-Factor Authentication is enabled. Please enter the code provided by the Google Authenticator below.
                </p>
                </p>
                <div class="form-group">
                <input type="number" name="code" class="form-control" placeholder="Enter Google Authenticator Code Here..." required>
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary" name="authenticate" value="authenticate">Authenticate</button>
                <a class="btn btn-warning" href="logout.php">Cancel</a>
            </div>
            </form>
        </div>
        </div>
    </div>
    <script>
    $(document).ready(function() {
        $('#authenticate').modal({show: true, backdrop: 'static', keyboard: false})
    })
  </script>
</body>
</html>