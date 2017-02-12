<?php
class Books extends MX_Controller {
	function __construct() {
		parent::__construct();
	}	function create() {		$this -> load -> library('session');		$this -> load -> library('form_validation');		$this -> form_validation -> set_rules('title', 'Knygos Pavadinimas', 'required');		$this -> form_validation -> set_rules('year', 'Išleidimo Metai', 'required');		$this -> form_validation -> set_rules('description', 'Knygos Aprašymas', 'required');		$this -> form_validation -> set_rules('genres[]', 'Knygos Žanras', 'required');		$this -> form_validation -> set_rules('authors[]', 'Knygos Autorius', 'required');		if ($this -> form_validation -> run() == TRUE) {			$data_book = $this -> fetch_book_from_post();			$this -> _insert($data_book);			$book_id = $this -> get_max();			foreach ($this->input->post('genres') as $genre_id) {				$mysql_query = "insert into genres_books (genre_id, book_id) values ($genre_id, $book_id)";				$this -> _custom_query($mysql_query);			}			foreach ($this->input->post('authors') as $author_id) {				$mysql_query = "insert into authors_books (author_id, book_id) values ($author_id, $book_id)";				$this -> _custom_query($mysql_query);			}			$flash_msg = "Knyga sėkmingai pridėta.";			$value = '<div class="alert alert-success" role="alert"><strong>Pavyko! </strong>' . $flash_msg . '</div>';			$this -> session -> set_flashdata('item', $value);		}		$data['author_options'] = $this -> _get_dropdown_options("authors");		$data['genre_options'] = $this -> _get_dropdown_options("genres");		$data['headline'] = "Pridėti Knygą";		$data['view_module'] = "books";		$data['view_file'] = "create";		$data['flash'] = $this -> session -> flashdata('item');		$this -> load -> module('templates');		$this -> templates -> public_bootstrap($data);	}	function fetch_book_from_post() {		$data['title'] = $this -> input -> post('title', TRUE);		$data['year'] = $this -> input -> post('year', TRUE);		$data['description'] = $this -> input -> post('description', TRUE);		return $data;	}	function _get_dropdown_options($table) {		$mysql_query = "select * from $table order by id desc";		$query = $this -> _custom_query($mysql_query);		if ($table == "authors") {			foreach ($query->result() as $row) {				$options[$row -> id] = $row -> name;			}		} elseif ($table == "genres") {			foreach ($query->result() as $row) {				$options[$row -> id] = $row -> genre_title;			}		}		return $options;	}
	function _insert($data) {
		$this -> load -> model('mdl_books');
		$query = $this -> mdl_books -> _insert($data);
	}	function get_max() {
		$this -> load -> model('mdl_books');
		$query = $this -> mdl_books -> get_max();
		return $query;
	}	function _custom_query($mysql_query) {
		$this -> load -> model('mdl_books');
		$query = $this -> mdl_books -> _custom_query($mysql_query);
		return $query;
	}}