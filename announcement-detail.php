<?php
require "config/MainClass.php";
$announcement = $use->getAnnouncement($_GET['aid']);
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
    <h3 style="color: #4f4f4f"> Announcement College </h3>
</section>
<section id="market" class="college">
    <div class="container">
        <div class="head">
            <h3 class="text-center"><?= $announcement['announcement_title'] ?></h3>
        </div>
        <div class="entry">
            <?= $announcement['announcement_text'] ?>
        </div>
    </div>
</section>

<footer>
    &copy; C Portal 2020. All right reserved
</footer>

</body>
</html>