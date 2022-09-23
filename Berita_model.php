<?php
class Berita_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    // Menampilkand data berita
    public function daftar_berita()
    {
        $query = $this->db->query('SELECT berita_csirt.judul, berita_csirt.isi, berita_csirt.id_berita, berita_csirt.tanggal, berita_csirt.status_berita FROM berita_csirt, users WHERE berita_csirt.id_user = users.id ORDER BY id_berita DESC');
        return $query->result_array();
    }

    public function detail_berita($id = FALSE)
    {
        if ($id == FALSE) {
            $query = $this->db->get('berita_csirt');
            return $query->result_array();
        }
        $query = $this->db->get_where('berita_csirt', array('id_berita' => $id));
        return $query->row_array();
    }

    // Update berita
    public function edit_berita($data)
    {
        $this->db->where('id_berita', $data['id_berita']);
        return $this->db->update('berita_csirt', $data);
    }

    // Hapus berita
    public function delete_berita($id)
    {
        $this->db->where('id_berita', $id);
        return $this->db->delete('berita_csirt');
    }
    public function tambah($data)
    {
        return $this->db->insert('berita_csirt', $data);
    }
}
