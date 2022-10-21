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
        <h1>Dokumen Legal Pendukung</h1>
        <?php echo validation_errors(); ?>
        <form name="form1" method="post" enctype="multipart/form-data" action="<?php echo base_url() ?>dashboard/tambahDokpen" class="myform">
            <p>
                <label for="judul">Judul</label>
                <input name="judul" type="text" id="judul" size="70">
            </p>
            <p>
                <label for="isi">Isi </label>
                <input name="isi" type="file" id="isi" cols="45" rows="5">
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