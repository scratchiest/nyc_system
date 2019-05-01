<?php
declare(strict_types = 1);
session_start();
require_once('includes/config/session.php');
require_once('../includes/config/db.php');
require_once('vendor/autoload.php');
require_once('includes/functions/GoogleAuthenticator.php');

$userData = '';

if (!isset($_SESSION['user_session'])) {
  header('location: login.php');
}
else {
  $userData = $_SESSION['user_session'];
}

if ($userData[0]['2FA'] == 'ENABLED') {
  if (!isset($_SESSION['authenticated'])) {
    header('location: includes/action/authenticate.php');
  }
}

if (isset($_GET['paid'])) {
  $camper_id = $conn->real_escape_string($_GET['paid']);

  $query = "UPDATE campers SET paid = 'Paid' WHERE camper_id = {$camper_id}";
  if ($conn->query($query)) {
    header("location: index.php");
  }
}

if (isset($_GET['notpaid'])) {
  $camper_id = $conn->real_escape_string($_GET['notpaid']);

  $query = "UPDATE campers SET paid = 'Not Paid' WHERE camper_id = {$camper_id}";
  if ($conn->query($query)) {
    header("location: index.php");
  }
}

// Google Authenticator Settings
$secret = getSecret();
$QRCode = \Sonata\GoogleAuthenticator\GoogleQrUrl::generate($userData[0]['username'], $secret, 'CESCon MS v2.0');
$g = new \Sonata\GoogleAuthenticator\GoogleAuthenticator();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin Area | Dashboard</title>
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link rel="icon" href="../resources/img/cescon.png">
</head>

<body>

  <nav class="navbar navbar-default">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
          aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">CESCon MS v2.0</a>
      </div>
      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="index.php">Dashboard</a></li>
          <li><a href="groups.php">Groups</a></li>
          <li><a href="districts.php">Districts</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#">Welcome, <?php echo $userData[0]['firstname']; ?>.</a></li>
          <li><a href="includes/action/logout.php">Logout</a></li>
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </nav>

  <header id="header">
    <div class="container">
      <div class="row">
        <div class="col-md-10">
          <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Dashboard</h1>
        </div>
        <div class="col-md-2">
          <div class="dropdown create">
            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="true">
              <span class="glyphicon glyphicon-wrench"></span>
                Settings
              <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
              <?php 
                if ($userData[0]['accesstype'] == 2) {
              ?>
              <li><a type="button" data-toggle="modal" data-target="#addUser">Add User</a></li>
              <?php } ?>
              <li><a type="button" data-toggle="modal" data-target="#changepass">Change Password</a></li>
              <?php 
                if ($userData[0]['2FA'] == 'ENABLED') {
              ?>
              <li><a type="button" data-toggle="modal" data-target="#disable2fa">Disable Two-Factor Authentication</a></li>
              <?php } ?>
              <?php 
                if ($userData[0]['2FA'] == 'DISABLED') {
              ?>
              <li><a type="button" data-toggle="modal" data-target="#enable2fa">Enable Two-Factor Authentication</a></li>
              <?php } ?>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </header>

  <section id="breadcrumb">
    <div class="container">
      <ol class="breadcrumb">
        <li class="active">Total Campers: <span id="total-count"></span></li>
      </ol>
    </div>
  </section>

  <section id="main">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <!-- Latest Users -->
          <div class="panel panel-default">
            <div class="panel-heading main-color-bg">
              <h3 class="panel-title" style="text-align: center">List of Campers</h3>
            </div>
            <div class="panel-body">
              <table id="myTable" class="table table-striped table-hover">
                <tbody id="campers-data">
                  <tr>
                      <th>Name</th>
                      <th>Age</th>
                      <th>Gender</th>
                      <th>District</th>
                      <th>Status</th>
                      <th></th>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Modals -->

  <!-- Add Page -->
  <div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <form action="includes/action/register.php" method="POST">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title text-center" id="myModalLabel">Add User</h4>
          </div>
          <div class="modal-body">
            <div class="form-group">
              <label>Firstname</label>
              <input type="text" name="firstname" class="form-control" placeholder="Enter Firstname" required>
            </div>
            <div class="form-group">
              <label>Lastname</label>
              <input type="text" name="lastname" class="form-control" placeholder="Enter Lastname" required>
            </div>
            <div class="form-group">
              <label>Contact number</label>
              <input type="number" name="contactno" class="form-control" placeholder="Enter Contact #" required>
            </div>
            <div class="form-group">
              <label>Username</label>
              <input type="text" name="username" class="form-control" placeholder="Enter Username" required>
            </div>
            <div class="form-group">
              <label>Password</label>
              <input type="password" name="password" class="form-control" placeholder="Enter Password" required>
            </div>
            <div class="form-group">
              <label>Access type</label>
              <select name="accesstype" class="form-control" required>
                <option value="1">Staff</option>
                <option value="2">Admin</option>
              </select>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary" name="register" value="register">Create User</button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <div id="enable2fa" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="classInfo" aria-hidden="true">
    <div class="modal-dialog" style="width: 46%;" role="document">
      <div class="modal-content">
        <form action="includes/action/enable2fa.php" method="POST">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title text-center" id="myModalLabel">Enable Two-Factor Authentication with Google Authenticator</h4>
          </div>
          <div class="modal-body">
            <h4 class="text-center">Few steps to enable 2FA:</h4>
            <div style="margin: 10px;"><center><img src="<?=$QRCode;?>"></center></div>
            <?php 
              if (isset($_SESSION['2fa_failed'])) {
                echo "<h5 class='alert alert-danger'>".$_SESSION['2fa_failed']."</h5>";
              }
            ?>
            <p>
              1. Open <strong>Google Authenticator</strong> app in your phone. (or download it <a href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en">here</a> if you don't have it yet) <br>
              2. Scan the QR Code above. <br>
              3. Enter the code below. <br>
              4. Click Enable.
            </p>
            <div class="form-group">
              <input type="number" name="code" class="form-control" placeholder="Enter Google Authenticator Code Here..." required>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary" name="enable" value="enable">Enable</button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <div class="modal" id="success" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title text-center" id="myModalLabel">Information</h4>
        </div>
        <div class="modal-body">
            <?php 
              if (isset($_SESSION['2fa_success'])) {
                echo "<h4 class='text-center' style='line-height: 25px;'>".$_SESSION['2fa_success']."</h4>";
              }

              if (isset($_SESSION['changepass_success'])) {
                echo "<h4 class='text-center' style='line-height: 25px;'>".$_SESSION['changepass_success']."</h4>";
              }
            ?>
        </div>
      </div>
    </div>
  </div>

  <div class="modal" id="disable2fa" tabindex="-1" role="dialog">
    <div class="modal-dialog" style="width: 30%;" role="document">
      <div class="modal-content">
        <div class="modal-header">
        <form action="includes/action/disable2fa.php" method="POST">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title text-center" id="myModalLabel">Disable Two-Factor Authentication</h4>
          </div>
          <div class="modal-body">
            <h5 class="text-center">Are you sure to disable 2FA?</h5>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-warning" name="disable" value="disable">Yes</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <div class="modal fade" id="changepass" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <form action="includes/action/changepass.php" id="change" method="POST">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title text-center" id="myModalLabel">Change Password</h4>
          </div>
          <div class="modal-body">
            <?php 
              if (isset($_SESSION['changepass_failed'])) {
                echo "<h5 class='alert alert-danger'>".$_SESSION['changepass_failed']."</h5>";
              }
            ?>
            <div id="curr_warning" class="alert alert-warning text-center">
              Current password is incorrect.
            </div>
            <div id="old_warning" class="alert alert-warning text-center">
              <span id="old_message"></span>
            </div>
            <div id="conf_warning" class="alert alert-warning text-center">
              <span id="conf_message"></span>
            </div>
            <div class="form-group">
              <label>Current Password</label>
              <input type="password" name="curr_password" id="curr_password" class="form-control" placeholder="Enter Current Password" required>
            </div>
            <div class="form-group">
              <label>New Password</label>
              <input type="password" name="new_password" id="new_password" class="form-control" placeholder="Enter New Password" required>
            </div>
            <div class="form-group">
              <label>Confirm Password</label>
              <input type="password" name="conf_password" id="conf_password" class="form-control" placeholder="Confirm Password" required>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary" name="changepass" id="allowsubmit" value="changepass">Change Password</button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/sha1.js"></script>
  <script>
    function loadCampers() {
      $.ajax({
        url: 'includes/api/load-campers.php',
        method: 'GET',
        success: function(data) {
          $('#campers-data').html(data);
        }
      })
    }

    function loadCount() {
      $.ajax({
        url: 'includes/api/load-count.php',
        method: 'GET',
        success: function(data) {
          $('#total-count').html(data);
        }
      })
    }

    $(document).ready(() => {
      setInterval(() => {
        loadCampers();
        loadCount();
      }, 1000);
    })

    loadCampers();
    loadCount();
  </script>
  <script>
    var conf_warning = $('#conf_warning');
    var conf_message = $('#conf_message');
    var curr_warning = $('#curr_warning');
    var old_warning = $('#old_warning');
    var old_message = $('#old_message');
    var allowsubmit = $('#allowsubmit');

    allowsubmit.prop('disabled', true);
    $('#new_password').prop('disabled', true);
    $('#conf_password').prop('disabled', true);
    conf_warning.hide();
    old_warning.hide();
    curr_warning.hide();

    $('#curr_password').on('input', function() {
      var curr_password = $('#curr_password').val();
      
      if (sha1(sha1(curr_password)) == '<?php echo $userData[0]['password']; ?>') {
        $('#new_password').prop('disabled', false);
        curr_warning.hide();
      }
      else {
        $('#new_password').prop('disabled', true);
        $('#conf_password').prop('disabled', true);
        $('#new_password').prop('value', "");
        $('#conf_password').prop('value', "");
        conf_warning.hide();
        old_warning.hide();
        curr_warning.show();
        allowsubmit.prop('disabled', true);
      }
    })

    $('#new_password').on('input', function() {
      var curr_password = $('#curr_password').val();
      var new_password = $('#new_password').val();
      var conf_password = $('#conf_password').val();

      $('#conf_password').prop('value', "");

      if (new_password == "") {
        $('#conf_password').prop('disabled', true);
        allowsubmit.prop('disabled', true);
      }
      else if (new_password == curr_password) {
        old_message.text("New password can't be a current password.");
        old_warning.show();
        $('#conf_password').prop('disabled', true);
        allowsubmit.prop('disabled', true);
      }
      else {
        old_message.text("");
        old_warning.hide();
        $('#conf_password').prop('disabled', false);
        allowsubmit.prop('disabled', true);
      }
    })

    $('#conf_password').on('input', function() {
      var curr_password = $('#curr_password').val();
      var new_password = $('#new_password').val();
      var conf_password = $('#conf_password').val();

      if (conf_password != new_password) {
        conf_message.text("Passwords doesn't match.");
        conf_warning.show();
        allowsubmit.prop('disabled', true);
      }
      else {
        conf_message.text("");
        conf_warning.hide();
        allowsubmit.prop('disabled', false);
      }
    })
  </script>
  <?php 
    if (isset($_SESSION['2fa_success'])) {
      echo   '<script>
                $("#success").modal({
                    show: true,
                    backdrop: "static", 
                    keyboard: false
                });
              </script>';
    }

    if (isset($_SESSION['changepass_success'])) {
      echo   '<script>
                $("#success").modal({
                    show: true,
                    backdrop: "static", 
                    keyboard: false
                });
              </script>';
    }

    if (isset($_SESSION['2fa_failed'])) {
      echo   '<script>
                $("#enable2fa").modal({
                    show: true
                });
              </script>';
    }
    unset($_SESSION['2fa_failed']);

    if (isset($_SESSION['changepass_failed'])) {
      echo   '<script>
                $("#changepass").modal({
                    show: true
                });
              </script>';
    }
    unset($_SESSION['changepass_failed']);
  ?>
</body>
</html>