<?php
require "config/MainClass.php";
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
    <h3 style="color: #0A0A0A"> List College</h3>
</section>
<section id="market" class="college">
    <div class="container">
        <?php foreach ($use->getCollages() as $collage): ?>

        <div class="row" style="margin-bottom: 20px">
            <div class="col-md-4">
                <img src="assets/images/<?= $collage['college_image'] ?>" alt="">
            </div>
            <div class="col-md-8">
                <a href="detail.php?id=<?= $collage['id_college'] ?>">
                    <h3 style="color: #0b2e13" class="title"><?= $collage['college_name'] ?></h3>
                </a>
                <p>Est : <?= $collage['college_year'] ?></p>
            </div>
        </div>

        <?php endforeach; ?>
    </div>
</section>

<footer>
    &copy; C Portal 2020. All right reserved
</footer>

</body>
</html>