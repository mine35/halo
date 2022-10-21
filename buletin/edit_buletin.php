<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INTI CSIRT</title>

    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/images/ini-inti.png" />
</head>

<body>
    <div class="konten">
        <h1>Edit Buletin</h1>
        <form name="form1" method="post" enctype="multipart/form-data" action="<?php echo base_url(); ?>dashboard/editBuletin/<?php echo $detail['id_brt'] ?>" class="myform">
            <p><label for="judul">Judul berita</label>
                <input name="judul" type="text" id="judul" size="70" value="<?php echo $detail['judul'] ?>">
            </p>
            <p><label for="ringkasan">Ringkasan berita</label>
                <textarea name="ringkasan" id="ringkasan" cols="45" rows="5"><?php echo $detail['ringkasan'] ?></textarea>
            </p>
            <div class="row mb-3">
                <div class="col-sm-2">Picture</div>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="<?= base_url('assets/images/berita/') . $detail['image']; ?>" class="img-thumbnail">
                        </div>
                        <div class="col-sm-9">
                            <div class="costum-file">
                                <input type="file" class="custom-file-input" id="image" name="image">
                                <label class="custom-file-label" for="image">Choose file</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <p>
                <input type="submit" name="submit" id="submit" value="Submit">
                <input type="reset" name="submit2" id="submit2" value="Reset">
            </p>
        </form>
    </div>
</body>

</html>