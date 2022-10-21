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
        <h1 align="center">Dokumen Legal Pendukung</h1>
        <div align="right">
            <a href="<?php echo base_url() ?>dashboard/tambahDokpen" class="tambah">Tambah Dokumen</a>
        </div>
        <h3 align="center">Dokumen</h3>

        <table align="center" width="80%" border="1px" cellspacing=" 1px" cellpadding="10px" class="myform">
            <tr>
                <th scope="col">judul</th>
                <th scope="col">isi</th>
                <th scope="col">&nbsp; Aksi</th>
            </tr>
            <?php foreach ($dokpen as $list) { ?>
                <tr>
                    <td><?php echo $list['judul']; ?></a></td>
                    <td><?php echo $list['isi']; ?></a></td>
                    <td>
                        <a href="<?php echo base_url() ?>dashboard/editDokpen/<?php echo $list['id_dokpen'] ?>">EDIT</a> | <a href="<?php echo base_url() ?>dashboard/deleteDokpen/<?php echo $list['id_dokpen'] ?>">DELETE</a>
                    </td>
                </tr>
            <?php } ?>
        </table>

    </div>
</body>

</html>