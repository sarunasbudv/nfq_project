<?php
class Authors extends MX_Controller {
	function __construct() {
		parent::__construct();
	}	function create() {		$this -> load -> library('session');		$this -> load -> library('form_validation');		$this -> form_validation -> set_rules('name', 'Vardas', 'required|max_length[250]');		if ($this -> form_validation -> run() == TRUE) {			$data = $this -> fetch_data_from_post();			$this -> _insert($data);			$flash_msg = "Autorius sėkmingai pridėtas.";			$value = '<div class="alert alert-success" role="alert"><strong>Pavyko! </strong>' . $flash_msg . '</div>';			$this -> session -> set_flashdata('item', $value);		}		$data['headline'] = "Pridėti Autorių";		$data['view_module'] = "authors";		$data['view_file'] = "create";		$data['flash'] = $this -> session -> flashdata('item');		$this -> load -> module('templates');		$this -> templates -> public_bootstrap($data);	}	function fetch_data_from_post() {		$data['name'] = $this -> input -> post('name', TRUE);		return $data;	}
	function _insert($data) {
		$this -> load -> model('mdl_authors');
		$query = $this -> mdl_authors -> _insert($data);
	}}