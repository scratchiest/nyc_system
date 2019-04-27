<?php  
session_start();
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="resources/img/cescon.png">

    <title>NYC2018 | Registration</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/form-validation.css" rel="stylesheet">
</head>

<body class="bg-light">

    <div class="container">
        <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="resources/img/cescon.png" alt="Logo" width="200" height="200">
            <h2>NYC Registration</h2>
            <p class="lead">Welcome to National Youth Camp 2018.<br>Please fill up all the blanks below.</p>
            <?php 
                if (isset($_SESSION['success_msg'])) {
                    echo '<h2 style="color: green;" class="text-center">'.$_SESSION['success_msg'].'</h2>';
                    unset($_SESSION['success_msg']);
                }
            ?>
        </div>
        <div class="col-md-13">
            <form action="includes/action/register.php" method="POST">
                <h4 class="mb-3">Camper Details</h4>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Name</label>
                        <input type="text" class="form-control" name="name" placeholder="Enter your full name here" required>
                    </div>

                    <div class="col-md-2 mb-3">
                        <label>Age</label>
                        <div class="input-group">
                            <input type="number" class="form-control" name="age" required>
                        </div>
                    </div>

                    <div class="col-md-4 mb-3">
                        <label for="country">Gender</label>
                        <select class="custom-select d-block w-100" name="gender" required>
                            <option value="" selected disabled>Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Email <span class="text-muted">(Optional)</span></label>
                        <input type="email" class="form-control" name="email" placeholder="you@example.com">
                    </div>

                    <div class="col-md-4 mb-3">
                        <label>Contact Number <span class="text-muted">(Optional)</span></label>
                        <div class="input-group">
                            <input type="number" class="form-control" name="contactno" placeholder="09123456789"
                                >
                        </div>
                    </div>
                </div>

                <hr class="mb-4">

                <h4 class="mb-3">Church Details</h4>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Name of Church</label>
                        <input type="text" class="form-control" name="churchname"
                            required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Church Address</label>
                        <input type="text" class="form-control" name="churchaddress" required>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Church District</label>
                        <select class="custom-select d-block w-100" name="churchdistrict" required>
                            <option value="" selected disabled>Select District</option>
                            <option value="Agusan District">Agusan District</option>
                            <option value="Bukidnon">Bukidnon</option>
                            <option value="Cebu">Cebu</option>
                            <option value="CENODA District">CENODA District</option>
                            <option value="COMVAL District">COMVAL District</option>
                            <option value="Cotabato 1 (North)">Cotabato 1 (North)</option>
                            <option value="Cotabato 2">Cotabato 2</option>
                            <option value="Davao City">Davao City</option>
                            <option value="Davao Del Sur">Davao Del Sur</option>
                            <option value="Emmanuel District">Emmanuel District</option>
                            <option value="MANA District">MANA District</option>
                            <option value="Maranatha District">Maranatha District</option>
                            <option value="Monkayo District">Monkayo District</option>
                            <option value="NEDA District">NEDA District</option>
                            <option value="Samal (IGACOS) District">Samal (IGACOS) District</option>
                            <option value="Sarangani District">Sarangani District</option>
                            <option value="SOCSARGEN District">SOCSARGEN District</option>
                            <option value="Valenzuela City">Valenzuela City</option>
                            <option value="Zampen District">Zampen District</option>
                            <option value="Bohol">Bohol</option>
                            <option value="Zamboanga District">Zamboanga District</option>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Your church position</label>
                        <!-- <input type="text" class="form-control" name="churchposition" placeholder="Member|Non-member|Staff(only for camp staffs)"
                            required> -->
                        <select class="custom-select d-block w-100" name="churchposition" required>
                            <option value="" selected disabled>Member|Non-member|Staff(only for camp staffs)</option>
                            <option value="Member">Member</option>
                            <option value="Non-Member">Non-Member</option>
                            <option value="Staff">Staff</option>
                        </select>
                    </div>
                </div>

                <hr class="mb-4">

                <h4 class="mb-3">Pastor/Leader Details <span class="text-muted">(Optional)</span></h4>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Your pastor/leader name</label>
                        <input type="text" class="form-control" name="pastorname">
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Your pastor/leader contact number</label>
                        <div class="input-group">
                            <input type="number" class="form-control" name="pastorcontactno" placeholder="09123456789">
                        </div>
                    </div>
                </div>

                <hr class="mb-4">

                <h4 class="mb-3">Camp Attendance</h4>
                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label>No. of camps attended</label>
                        <div class="input-group">
                            <input type="number" class="form-control" min="0" name="campsattended" placeholder="If first time, put 0."
                                required>
                        </div>
                    </div>
                </div>

                <hr class="mb-4">

                <h4 class="mb-3">Allergies <span class="text-muted">(Please skip if you don't have any.)</span></h4>
                <div>
                    <input type="checkbox" id="chicken">
                    <label style="font-size: 20px; margin-left: 20px; color: red;">Chicken</label>
                </div>
                <div>
                    <input type="checkbox" id="shrimp">
                    <label style="font-size: 20px; margin-left: 20px; color: red;">Shrimp</label>
                </div>
                <div>
                    <input type="checkbox" id="pork">
                    <label style="font-size: 20px; margin-left: 20px; color: red;">Pork</label>
                </div>
                <div>
                    <input type="checkbox" id="fish">
                    <label style="font-size: 20px; margin-left: 20px; color: red;">Fish</label>
                </div>
                <input type="text" name="allergies" id="allergies" hidden>
                <!-- <input type="number" name="groupnumber" id="groupnumber" hidden> -->

                <hr class="mb-4">

                <button class="btn btn-primary btn-lg btn-block" type="submit" name="submit" value="register">Register
                    Now!</button>
            </form>
        </div>
    </div>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2017-2018 <img src="resources/img/cescon.png" alt="Logo" width="20" height="20">ESCon</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
    </footer>
    </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script>
        // $(document).ready(function () {
        //     setInterval(() => {
        //         var rand = Math.floor(Math.random() * 20) + 1;
        //         $('#groupnumber').attr('value', rand);
        //     }, 1000);
        // })
    </script>
    <script>
        $(document).ready(function () {
            var allergies = '';

            $('#chicken').click(function () {
                if ($(this).prop('checked')) {
                    allergies += 'Chicken ';
                    $('#allergies').attr('value', allergies);
                }
                else {
                    allergies = allergies.replace('Chicken ', '');
                    $('#allergies').attr('value', allergies);
                }
            })

            $('#shrimp').click(function () {
                if ($(this).prop('checked')) {
                    allergies += 'Shrimp ';
                    $('#allergies').attr('value', allergies);
                }
                else {
                    allergies = allergies.replace('Shrimp ', '');
                    $('#allergies').attr('value', allergies);
                }
            })

            $('#pork').click(function () {
                if ($(this).prop('checked')) {
                    allergies += 'Pork ';
                    $('#allergies').attr('value', allergies);
                }
                else {
                    allergies = allergies.replace('Pork ', '');
                    $('#allergies').attr('value', allergies);
                }
            })

            $('#fish').click(function () {
                if ($(this).prop('checked')) {
                    allergies += 'Fish ';
                    $('#allergies').attr('value', allergies);
                }
                else {
                    allergies = allergies.replace('Fish ', '');
                    $('#allergies').attr('value', allergies);
                }
            })

            if ($('#allergies').val() == '') {
                $('#allergies').attr('value', 'None');
            }
        })
    </script>
</body>

</html>