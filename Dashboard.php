<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 *        http://example.com/index.php/welcome
	 *    - or -
	 *        http://example.com/index.php/welcome/index
	 *    - or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	public function __construct()
	{
		parent::__construct();

		$this->load->library('tank_auth');

		if (!$this->tank_auth->is_logged_in()) {
			redirect('/auth/login/');
		} else {
			$this->data['dataUser'] = $this->session->userdata('data_ldap');

			$this->data['user_id'] = $this->tank_auth->get_user_id();
			$this->data['username'] = $this->tank_auth->get_username();
			$this->data['email'] = $this->tank_auth->get_email();

			$profile = $this->tank_auth->get_user_profile($this->data['user_id']);

			$this->data['profile_name'] = $profile['name'];
			$this->data['profile_foto'] = $profile['foto'];

			foreach ($this->tank_auth->get_roles($this->data['user_id']) as $val) {
				$this->data['role_id'] = $val['role_id'];
				$this->data['role'] = $val['role'];
				$this->data['full_name_role'] = $val['full'];
			}

			$this->data['link_active'] = 'Dashboard';

			//buat permission
			if (!$this->tank_auth->permit($this->data['link_active'])) {
				redirect('Home');
			}

			$this->load->model("Showmenu_model");
			$this->data['ShowMenu'] = $this->Showmenu_model->getShowMenu();

			$OpenShowMenu = $this->Showmenu_model->getOpenShowMenu($this->data);

			$this->data['openMenu'] = $this->Showmenu_model->getDataOpenMenu($OpenShowMenu->id_menu_parent);
			$this->load->model('admin/indok_model');
			$this->load->model('admin/kontak_model');
		}
	}

	public function index()
	{
		$this->data['title'] = 'Dashboard';

		$this->data['breadcrumbs'] = [];

		$this->data['breadcrumbs'][] = [
			'active' => FALSE,
			'text' => 'Dashboard',
			'class' => 'breadcrumb-item pe-3 text-gray-400',
			'href' => site_url('Dashboard')
		];

		$this->load->view('component/header', $this->data);
		$this->load->view('component/sidebar', $this->data);
		$this->load->view('welcome_message', $this->data);
		$this->load->view('component/footer');
	}


	public function indok()
	{
		$query = $this->indok_model->daftar_indok();
		$data = array('indok' => $query);
		$this->data['title'] = 'Informasi Dokument';

		$this->data['breadcrumbs'][] = [
			'active' => FALSE,
			'text' => 'Dashboard',
			'class' => 'breadcrumb-item pe-3 text-gray-400',
			'href' => site_url('Dashboard')
		];

		$this->load->view('component/header', $this->data);
		$this->load->view('component/sidebar', $this->data);
		$this->load->view('indok/indok_views', $data);
		$this->load->view('component/footer');
	}

	public function tambahIndok()
	{
		$this->form_validation->set_rules('judul', 'judul', 'required');
		$this->form_validation->set_rules('isi', 'isi', 'required');
		if ($this->form_validation->run() === FALSE) {
			$this->load->view('indok/tambah_indok');
		} else {
			$data = array(
				'judul' => $this->input->post('judul'),
				'isi' => $this->input->post('isi'),
			);
			$this->indok_model->tambah($data);
			redirect(base_url() . 'content/indok/');
		}
	}

	public function editIndok($id)
	{
		$this->form_validation->set_rules('judul', 'judul', 'required');
		$this->form_validation->set_rules('isi', 'isi', 'required');
		if ($this->form_validation->run() === FALSE) {
			$data['indok_csirt'] = $this->indok_model->detail_indok();
			$data['detail'] = $this->indok_model->detail_indok($id);
			$data = array(
				'indok_csirt' => $this->indok_model->detail_indok(),
				'detail' => $this->indok_model->detail_indok($id)
			);
			$this->load->view('indok/edit_indok', $data);
			// Kalau tidak ada error indok diupdate
		} else {
			$data = array(
				'id_indok' => $id,
				'judul' => $this->input->post('judul'),
				'isi' => $this->input->post('isi'),
			);
			$this->indok_model->edit_indok($data);
			redirect(base_url() . 'content/indok/');
		}
	}

	public function deleteIndok($id)
	{
		$this->indok_model->delete_indok($id);
		redirect(base_url() . 'content/indok/');
	}


	public function informasi()
	{
		$query = $this->kontak_model->daftar_kontak();
		$data = array('kontak' => $query);
		$this->data['title'] = 'Informasi Kontak';

		$this->data['breadcrumbs'][] = [
			'active' => FALSE,
			'text' => 'Dashboard',
			'class' => 'breadcrumb-item pe-3 text-gray-400',
			'href' => site_url('Dashboard')
		];

		$this->load->view('component/header', $this->data);
		$this->load->view('component/sidebar', $this->data);
		$this->load->view('admin/kontak/kontak_view', $data);
		$this->load->view('component/footer');
	}

	public function tambahInfo()
	{
		$this->form_validation->set_rules('judul', 'Judul', 'required');
		$this->form_validation->set_rules('isi', 'Isi kontak', 'required');
		if ($this->form_validation->run() === FALSE) {
			$this->load->view('admin./kontak/tambah_kontak');
		} else {
			$data = array(
				'icon' => $this->input->post('icon'),
				'nama' => $this->input->post('nama'),
				'status' => $this->input->post('status'),
				'jabatan' => $this->input->post('jabatan')
			);
			$this->kontak_model->tambah($data);
			redirect(base_url() . 'admin/kontak/');
		}
	}

	public function editInfo($id)
	{
		$this->form_validation->set_rules('icon', 'Icon', 'required');
		$this->form_validation->set_rules('nama', 'Nama', 'required');
		$this->form_validation->set_rules('status', 'Status', 'required');
		$this->form_validation->set_rules('jabatan', 'Jabatan', 'required');
		if ($this->form_validation->run() === FALSE) {
			$data['kontak_csirt'] = $this->kontak_model->detail_kontak();
			$data['detail'] = $this->kontak_model->detail_kontak($id);
			$data = array(
				'kontak_csirt' => $this->kontak_model->detail_kontak(),
				'detail' => $this->kontak_model->detail_kontak($id)
			);
			$this->load->view('admin/kontak/edit_kontak', $data);
			// Kalau tidak ada error kontak diupdate
		} else {
			$data = array(
				'id_kontak' => $this->input->post('id_kontak'),
				'icon' => $this->input->post('icon'),
				'nama' => $this->input->post('nama'),
				'status' => $this->input->post('status'),
				'jabatan' => $this->input->post('jabatan')
			);
			$this->kontak_model->edit_kontak($data);
			redirect(base_url() . 'admin/kontak/');
		}
	}

	public function deletIenfo($id)
	{
		$this->kontak_model->delete_kontak($id);
		redirect(base_url() . 'admin/kontak/');
	}
}
