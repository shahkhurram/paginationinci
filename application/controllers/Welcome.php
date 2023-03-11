<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */
	public function index()
	{
		$this->load->model('my_model');
		//$this->data['users'] = $this->my_model->getusers();

		$this->load->library('pagination');

		$perPage=10;
		$config['base_url'] = base_url();
		$page=0;

		if($this->input->get('page'))
		{
			$page = $this->input->get('page');
		}

		$start_index=0;
		if($page != 0)
		{
			$start_index = $perPage * ($page - 1);
		}

		$total_rows = 0;
		
		if($this->input->get('search_text') != null) {
			$search_text = $this->input->get('search_text');
			$this->data['users'] = $this->my_model->getSearchUsers($perPage,$start_index,$search_text,$is_count=0);
			$total_rows = $this->my_model->getSearchUsers(null,null,$search_text,$is_count=1);
		}
		else 
		{
			$this->data['users'] = $this->my_model->getSearchUsers($perPage,$start_index,null,$is_count=0);
			$total_rows = $this->my_model->getSearchUsers(null,null,null,$is_count=1);
		}

		$config['total_rows'] = $total_rows;

		$config['per_page']= $perPage;
		$config['enable_query_strings']= true;
		$config['use_page_numbers']= true;
		$config['page_query_string'] = true;
		$config['query_string_segment'] = 'page';
		$config['reuse_query_string']= true;
		$config['full_tag_open']= '<ul  class="pagination">';
		$config['full_tag_close']= '</ul'>
		$config['first_link']= 'First';
		$config['last_link']= 'Last';
		$config['first_tag_open']=  '<li  class="page-item"><spann class="page-link">';
		$config['first_tag_close'] = '</span></li>';
		$config['prev_link']= '&laquo';
		$config['prev_tag_open'] = '<li class="page-item"><span class="page-link">';

		$config['prev_tag_close'] = '</span></li>';
		$config['next_link']= '&raquo';
		$config['next_tag_open'] = '<li class="page-item"><span class="page-link">';
		$config['next_tag_close'] = '</span></li>';
		$config['last_tag_open'] = '<li class="page-item"><span class="page-link">';
		$config['last_tag_close'] = '</span></li>';
		$config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';
		$config['cur_tag_close'] = '</a></li>';
		$config['num_tag_open'] = '<li class="page-item"><span class="page-link">';
		$config['num_tag_close'] = '</span></li>'; 

		$this->pagination->initialize($config);
		$this->data['page'] =$page;
		$this->data['links']= $this->pagination->create_links();
		$this->load->view('welcome_message',$this->data);
	}
}
