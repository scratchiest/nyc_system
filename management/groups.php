<?php
session_start();
require_once('includes/config/session.php');
require_once('../includes/config/db.php');

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

$query = "SELECT * FROM groups WHERE groupnumber != 0";
$result = $conn->query($query);

if (isset($_GET['grp_no'])) {
    $members = array();
    $groupnumber = $conn->real_escape_string($_GET['grp_no']);
    
    $new_query = "SELECT name, age, gender, churchdistrict FROM campers WHERE groupnumber = {$groupnumber}";
    $new_result = $conn->query($new_query);
    if ($new_result->num_rows > 0) {
        while ($new_row = $new_result->fetch_assoc()) {
            $members[] = $new_row;
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin Area | Groups</title>
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
          <li><a href="index.php">Dashboard</a></li>
          <li class="active"><a href="groups.php">Groups</a></li>
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
          <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Groups</h1>
        </div>
      </div>
    </div>
  </header>

  <section id="breadcrumb">
    <div class="container">
      <ol class="breadcrumb">
        <li class="active">Groups</li>
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
              <h3 class="panel-title" style="text-align: center">List of BS Leaders</h3>
            </div>
            <div class="panel-body">
              <table id="myTable" class="table table-striped table-hover">
                <tbody>
                  <tr>
                      <th>Group number</th>
                      <th>BS Leader</th>
                      <th></th>
                  </tr>
                  <?php 
                  if ($result->num_rows > 0) {
                      while ($row = $result->fetch_assoc()) {
                          echo     '<tr>
                                        <td>'.$row['groupnumber'].'</td>
                                        <td>'.$row['leader_name'].'</td>
                                        <td><a class=\'btn btn-primary\' href=\'groups.php?grp_no='.$row['groupnumber'].'\'>View Members</a></td>
                                    </tr>';
                      }
                  }
                  ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <div id="classModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="classInfo" aria-hidden="true">
      <div class="modal-dialog modal-lg">
          <div class="modal-content">
          <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
              ×
              </button>
              <h4 class="modal-title" id="classModalLabel">
                  Members

              </h4>
          </div>
          <div class="modal-body">
              <table class="table table-bordered">
              <tbody>
                  <tr>
                      <td><strong>Name</strong></td>
                      <td><strong>Age</strong></td>
                      <td><strong>Gender</strong></td>
                      <td><strong>District</strong></td>
                  </tr>
                  <?php 
                  foreach($members as $list) {
                      echo   '<tr>
                                  <td>'.$list['name'].'</td>
                                  <td>'.$list['age'].'</td>
                                  <td>'.$list['gender'].'</td>
                                  <td>'.$list['churchdistrict'].'</td>
                              </tr>';
                  }
                  ?>
              </tbody>
              </table>
          </div>
          <div class="modal-footer">
              <button type="button" class="btn btn-primary" data-dismiss="modal">
              Close
              </button>
          </div>
          </div>
      </div>
  </div>

  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script>
    $(document).ready(function() {
        $('#classModal').modal('hide')
    })
  </script>
  <?php 
    if (isset($_GET['grp_no'])) {
        echo   '<script>
                    $(document).ready(function() {
                        $("#classModal").modal({
                            show: true
                        });
                    });
                </script>';
    }
  ?>
</body>
</html>