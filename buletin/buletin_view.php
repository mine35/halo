<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INTI CSIRT</title>
    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/images/ini-inti.png" />

    <style>
        .konten {
            width: auto;
            height: auto;
        }
    </style>

</head>

<body>
    <div class="konten">
        <h1 align="center">Buletin</h1>
        <div align="right">
            <a href="<?php echo base_url() ?>dashboard/tambahBuletin" class="tambah">Tambah Buletin</a>
        </div>
        <h3 align="center">Daftar Buletin</h3>

        <table align="center" width="80%" border="1px" cellspacing=" 1px" cellpadding="10px" class="myform">
            <tr>
                <th scope="col">Judul</th>
                <th scope="col">Ringkasan</th>
                <th scope="col">Image</th>
                <th scope="col">Aksi</th>
            </tr>
            <?php foreach ($buletin as $list) { ?>
                <tr>
                    <td><?php echo $list['judul']; ?></a></td>
                    <td><?php echo $list['ringkasan']; ?></a></td>
                    <td><?php echo $list['image']; ?></a></td>
                    <td>
                        <a href="<?php echo base_url() ?>dashboard/editBuletin/<?php echo $list['id_brt'] ?>">EDIT</a> | <a href="<?php echo base_url() ?>dashboard/deleteBuletin/<?php echo $list['id_brt'] ?>">DELETE</a>
                    </td>
                </tr>
            <?php } ?>
        </table>

    </div>
</body>

</html>