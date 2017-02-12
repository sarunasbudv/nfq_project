<?php
class Genres extends MX_Controller {
	function __construct() {
		parent::__construct();
	}	function create() {		$this -> load -> library('session');		$this -> load -> library('form_validation');		$this -> form_validation -> set_rules('genre_title', 'Title', 'required|max_length[250]');		if ($this -> form_validation -> run() == TRUE) {			$data = $this -> fetch_data_from_post();			$this -> _insert($data);			$flash_msg = "Žanras sėkmingai pridėtas.";			$value = '<div class="alert alert-success" role="alert"><strong>Pavyko! </strong>' . $flash_msg . '</div>';			$this -> session -> set_flashdata('flash', $value);		}		$data['headline'] = "Pridėti Žanrą";		$data['view_module'] = "genres";		$data['view_file'] = "create";		$data['flash'] = $this -> session -> flashdata('flash');		$this -> load -> module('templates');		$this -> templates -> public_bootstrap($data);	}	function fetch_data_from_post() {		$data['genre_title'] = $this -> input -> post('genre_title', TRUE);		return $data;	}
	function _insert($data) {
		$this -> load -> model('mdl_genres');
		$query = $this -> mdl_genres -> _insert($data);
	}}