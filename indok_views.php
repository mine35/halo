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
        <h1 align="center">Informasi Dokumen</h1>
        <div align="right">
            <a href="<?php echo base_url() ?>dashboard/tambah" class="tambah">Tambah informasi</a>
        </div>
        <h3 align="center">Daftar informasi</h3>

        <table align="center" width="80%" border="1px" cellspacing=" 1px" cellpadding="10px" class="myform">
            <tr>

                <th scope="col">Judul</th>
                <th scope="col">Isi</th>
                <th scope="col">&nbsp; Aksi</th>
                <th scope="col">No</th>
            </tr>
            <?php foreach ($indok as $list) { ?>
                <tr>
                    <td><?php echo $list['judul']; ?></a></td>
                    <td><?php echo $list['isi']; ?></a></td>
                    <td>
                        <a href="<?php echo base_url() ?>dashboard/edit/<?php echo $list['id_indok'] ?>">EDIT</a> | <a href="<?php echo base_url() ?>dashboard/delete/<?php echo $list['id_indok'] ?>">DELETE</a>
                    </td>
                </tr>
            <?php } ?>
        </table>

    </div>
</body>

</html>