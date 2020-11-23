<?php
require "config/MainClass.php";
if(isset($_POST['do']))
{
    $to = $use->clientLogin($_POST['email'],$_POST['pw']);
    if($to == FALSE){
        ?>
        <meta http-equiv="refresh" content="0; ./login.php?gagal">
    <?php } else {
        echo "<script>location='client.php'</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>C Portal - Login</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link rel="stylesheet" href="assets/css/my.css">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</head>
<body>
<?php include "template/nav.php"; ?>
<section class="pils">
    <h3>Register - Be a Member</h3>
</section>
<section id="market">
    <div class="container">
        <div class="form">
            <form method="post" action="">
                <?php if(isset($_POST['reg']))
                {
                    $use->registerClient($_POST['name'],$_POST['email'],$_POST['pw'],$_POST['hp'],$_POST['gender']);
                    echo "<script>alert('Successfully registered');location='login.php'</script>";
                }
                ?>
                <table class="table table-bordered">
                    <tr>
                        <th>Name</th>
                        <td><input class="form-control" required type="text" name="name"></td>
                    </tr><tr>
                        <th>Email</th>
                        <td><input class="form-control" required type="email" name="email"></td>
                    </tr><tr>
                        <th>Password</th>
                        <td><input class="form-control" required type="Password" name="pw"></td>
                    </tr><tr>
                        <th>Phone</th>
                        <td><input class="form-control" required type="number" name="hp"></td>
                    </tr>
                    <tr>
                        <th>Gender</th>
                        <td>
                            <select name="gender" class="form-control" id="">
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><button class="btn btn-warning" type="submit" name="reg">Register</button> <a href="login.php">Already have account? Login here</a></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</section>

<footer>
    &copy; C Portal 2020. All right reserved
</footer>

</body>
</html>
