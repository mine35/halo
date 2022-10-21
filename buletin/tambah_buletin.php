<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INTI CSIRT</title>

    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/images/ini-inti.png" />

    <style>
        body {
            background-color: #150544;
        }

        .konten {
            color: white;
        }
    </style>

</head>

<body>
    <div class="konten">
        <h1>Buletin</h1>
        <?php echo validation_errors(); ?>
        <form name="form1" method="post" action="<?php echo base_url() ?>dashboard/tambahBuletin" class="myform" enctype="multipart/form-data">

            <p>
                <label for="judul">Judul Berita</label>
                <input name="judul" type="text" id="judul" size="70">
            </p>
            <p>
                <label for="ringkasan">Ringkasan Berita</label>
                <textarea name="ringkasan" id="ringkasan" cols="45" rows="5"></textarea>
            </p>
            <p>
                <label for="image ">Image:</label>
                <input type="file" name="image" id="image" accept="image/png, image/jpeg, image/jpg, image/gif">
            </p>
            <p>
                <input type="submit" name="submit" id="submit" value="Submit">
                <input type="reset" name="submit2" id="submit2" value="Reset">
            </p>
        </form>
        <p>&nbsp;</p>
    </div>
</body>

</html>