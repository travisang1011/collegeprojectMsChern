<?php
require "config/MainClass.php";
if(isset($_POST['do']))
{
    $to = $use->clientLogin($_POST['email'],$_POST['pw']);
    if($to == FALSE){
        ?>
        <meta http-equiv="refresh" content="0; ./login.php?gagal">
    <?php } else {
        echo "<script>location='profile.php'</script>";
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
    <h3>Login - Member Area</h3>
</section>
<section id="market">
    <div class="container">
        <form method="post" action="">
            <table class="table table-bordered">
                <?php if(isset($_GET['gagal'])){ ?>
                    <tr>
                        <td colspan="2"><p>Sorry user not found, seem wrong email or password</p></td>
                    </tr>
                <?php } ?>
                <tr>
                    <th>Email</th>
                    <td><input class="form-control" type="email" name="email"></td>
                </tr><tr>
                    <th>Password</th>
                    <td><input class="form-control" type="Password" name="pw"></td>
                </tr>
                <tr>
                    <td colspan="2"><button class="btn btn-warning" type="submit" name="do">Login</button> <a href="register.php">Don't have an account? Register here</a></td>
                </tr>
            </table>
        </form>
    </div>
</section>

<footer>
    &copy; C Portal 2020. All right reserved
</footer>

</body>
</html>