<?php
require "config/MainClass.php";
$user_id = $_SESSION['user']['user_id'];
if (isset($_GET['logout'])){
    unset($_SESSION['user']);
    echo "<script>location='login.php'</script>";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>C Portal</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link rel="stylesheet" href="assets/css/my.css">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</head>
<body>
<?php include "template/nav.php"; ?>
<section class="pils">
    <h3> Client Area</h3>
</section>
<section id="market">
    <div class="container">
           <h3 class="text-center">Welcome <?= $_SESSION['user']['user_name'] ?> </h3>
    </div>
</section>

<footer>
    &copy; C Portal 2020. All right reserved
</footer>

</body>
</html>