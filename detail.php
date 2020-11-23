<?php
require "config/MainClass.php";
$collage = $use->getCollage($_GET['id']);
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
        <div class="row">
            <div class="col-md-6 text-left"><h3 style="color: #0b2e13"
                                                class="title"><?= $collage['college_name'] ?></h3></div>
            <div class="col-md-6 text-right">
                <a href="announcement.php?cid=<?= $_GET['id'] ?>" class="btn btn-outline-danger">Announcement</a>
            </div>
        </div>

        <div class="row" style="margin-bottom: 20px">
            <div class="col-md-4">
                <img src="assets/images/<?= $collage['college_image'] ?>" alt="">
            </div>
            <div class="col-md-8">
                <p><b>Year established :</b> <?= $collage['college_year'] ?></p>
                <p><b>Subject available :</b> <?= $collage['college_subject'] ?></p>
                <p><b>Our story:</b></p>
                <?= $collage['college_about'] ?>
            </div>
        </div>
        <div class="comments">
            <h3 style="margin-bottom: 10px;">Comments</h3>
            <?php $comments = $use->getCommentsByCollege($_GET['id']); ?>

            <?php if ($comments == []): ?>
                <div class="alert alert-info">
                    No comment for this college
                </div>
            <?php else: ?>


                <?php foreach ($comments as $item): ?>

                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-md-2 text-center">
                            <img src="assets/images/avatar.png" alt=""
                                 style="height: auto; width: 70px; margin: 0 auto">
                        </div>
                        <div class="col-md-10" style="background: #e7e7e7; padding: 20px;">
                            <h4><?= $item['user_name'] ?></h4>
                            <p>
                                <?= $item['comment_text'] ?>
                            </p>
                        </div>
                    </div>

                <?php endforeach; ?>
            <?php endif; ?>
        </div>
        <div class="comment-form" style="margin-top: 20px">
            <h3>Comment form</h3>
            <?php
            $comment = FALSE;
            if (isset($_SESSION['user']))
                $comment = TRUE;
            ?>
            <?php if ($comment == FALSE): ?>
                <div class="alert alert-warning">
                    Please login to fill te comment
                </div>
            <?php endif; ?>
            <div class="form">
                <form action="" method="post">
                    <div class="form-group">
                        <label for="">Comment</label>
                        <textarea name="text" id="" cols="30" rows="10" class="form-control"></textarea>
                    </div>
                    <button <?php if ($comment == FALSE) echo "disabled" ?> name="submit" class="btn btn-primary">
                        Comment
                    </button>
                </form>
                <?php
                if (isset($_POST['submit'])) {
                    $use->saveComment($_POST['text'], $_GET['id'], $_SESSION['user']['user_id']);
                    echo "<script>alert('Comment saved'); location='detail.php?id=" . $_GET['id'] . "'</script>";
                }
                ?>
            </div>
        </div>
    </div>
</section>

<footer>
    &copy; C Portal 2020. All right reserved
</footer>

</body>
</html>